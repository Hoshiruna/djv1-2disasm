#!/usr/bin/env python3
# SPDX-License-Identifier: MIT
"""Decode, rebuild, or preview a region's extracted HUD tilemap."""

import argparse
from pathlib import Path
import struct
import zlib

from gb_lz import decode as decode_tiles
from gb_rle import decode_resource, rebuild_resource


def load_tiles(region):
    """Map signed BG tile IDs to the font and HUD data loaded into VRAM bank 0."""
    tiles = {}
    font = "case1_font" if region.name == "JP" else "font"
    for name in (font, "hud_tiles"):
        resource = (region / "gfx" / (name + ".bin")).read_bytes()
        raw, _ = decode_tiles(resource[3:], resource[2] * 16)
        address = 0x8000 + resource[1] * 16
        if resource[0] & 1 and address < 0x8800:
            address |= 0x1000
        first_id = ((address - 0x9000) // 16) & 0xFF
        for index in range(len(raw) // 16):
            tiles[(first_id + index) & 0xFF] = raw[index * 16:(index + 1) * 16]
    return tiles


def palette_colors(palette):
    """Expand the HUD set's 32 little-endian RGB555 entries to RGB888."""
    if len(palette) != 64:
        raise ValueError("Expected the complete 64-byte hud.pal")
    colors = []
    for word in struct.unpack("<32H", palette):
        components = [(word >> shift) & 31 for shift in (0, 5, 10)]
        colors.append(bytes((value << 3) | (value >> 2) for value in components))
    return colors


def render_pixels(width, height, tilemap, attributes, tiles, colors, tile_bank=0):
    """Render all map rows with per-cell palettes and horizontal/vertical flips."""
    if len(tilemap) != width * height or len(attributes) != width * height:
        raise ValueError("Tilemap planes do not match the header dimensions")
    pixels = bytearray(width * height * 64 * 3)
    pixel_width = width * 8
    for cell, tile_id in enumerate(tilemap):
        attribute = attributes[cell]
        bank = (attribute >> 3) & 1
        if bank != tile_bank:
            raise ValueError("Cell {} uses VRAM bank {}, whose tiles are not extracted".format(cell, bank))
        if tile_id not in tiles:
            raise ValueError("Cell {} uses unextracted tile ${:02X}".format(cell, tile_id))
        tile = tiles[tile_id]
        palette = (attribute & 7) * 4
        cell_x, cell_y = cell % width, cell // width
        for y in range(8):
            source_y = 7 - y if attribute & 0x40 else y
            low, high = tile[source_y * 2:source_y * 2 + 2]
            for x in range(8):
                bit = x if attribute & 0x20 else 7 - x
                color_id = ((low >> bit) & 1) | (((high >> bit) & 1) << 1)
                offset = ((cell_y * 8 + y) * pixel_width + cell_x * 8 + x) * 3
                pixels[offset:offset + 3] = colors[palette + color_id]
    return bytes(pixels)


def _png_chunk(kind, data):
    checksum = zlib.crc32(kind + data) & 0xFFFFFFFF
    return struct.pack(">I", len(data)) + kind + data + struct.pack(">I", checksum)


def encode_png(width, height, pixels):
    """Write an RGB PNG using only the Python standard library."""
    stride = width * 3
    rows = b"".join(b"\x00" + pixels[y * stride:(y + 1) * stride] for y in range(height))
    header = struct.pack(">IIBBBBB", width, height, 8, 2, 0, 0, 0)
    return (b"\x89PNG\r\n\x1a\n" + _png_chunk(b"IHDR", header)
            + _png_chunk(b"IDAT", zlib.compress(rows)) + _png_chunk(b"IEND", b""))


def process(action, region):
    folder = region / "tilemaps"
    resource_path = folder / "hud.bin"
    tiles_path = folder / "hud.tilemap"
    attributes_path = folder / "hud.attrmap"
    template = resource_path.read_bytes()
    width, height, original_tiles, original_attributes, _ = decode_resource(template)
    if action == "decode":
        tiles_path.write_bytes(original_tiles)
        attributes_path.write_bytes(original_attributes)
        print("Decoded {} cells into {} and {}".format(width * height, tiles_path, attributes_path))
        return

    tiles = tiles_path.read_bytes()
    attributes = attributes_path.read_bytes()
    if action == "rebuild":
        rebuilt = rebuild_resource(template, tiles, attributes)
        if rebuilt == template:
            resource_path.touch()
        else:
            resource_path.write_bytes(rebuilt)
        print("Rebuilt {} ({} bytes)".format(resource_path, len(rebuilt)))
        return

    palette = (region / "palettes" / "hud.pal").read_bytes()
    pixels = render_pixels(width, height, tiles, attributes, load_tiles(region), palette_colors(palette))
    preview = folder / "hud.png"
    preview.write_bytes(encode_png(width * 8, height * 8, pixels))
    print("Rendered {} ({}x{})".format(preview, width * 8, height * 8))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("action", choices=("decode", "rebuild", "preview"))
    parser.add_argument("region", type=Path, help="Regional resource directory, e.g. res/US")
    args = parser.parse_args()
    try:
        process(args.action, args.region)
    except (OSError, ValueError) as error:
        parser.exit(1, "error: {}\n".format(error))


if __name__ == "__main__":
    main()
