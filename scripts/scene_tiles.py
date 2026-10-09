#!/usr/bin/env python3
# SPDX-License-Identifier: MIT
"""Color scene tile atlases while preserving their 2bpp pixel IDs."""

import argparse
from collections import Counter, defaultdict
from pathlib import Path
import struct
import zlib

from hud_tilemap import _png_chunk, palette_colors


def read_indices(png):
    """Read an 8-bit indexed PNG, including filters used by image editors."""
    if png[:8] != b"\x89PNG\r\n\x1a\n":
        raise ValueError("Expected a PNG tile atlas")
    compressed = bytearray()
    offset = 8
    while offset < len(png):
        size = struct.unpack_from(">I", png, offset)[0]
        kind = png[offset + 4:offset + 8]
        data = png[offset + 8:offset + 8 + size]
        if kind == b"IHDR":
            width, height, depth, color, compression, filtering, interlace = struct.unpack(">IIBBBBB", data)
            if (depth, color, compression, filtering, interlace) != (8, 3, 0, 0, 0):
                raise ValueError("Keep the scene atlas as an 8-bit, non-interlaced indexed PNG")
        elif kind == b"IDAT":
            compressed.extend(data)
        offset += size + 12
    rows = zlib.decompress(compressed)
    if width % 8 or height % 8 or len(rows) != (width + 1) * height:
        raise ValueError("Atlas dimensions must contain complete 8x8 tiles")
    pixels = bytearray(width * height)
    for y in range(height):
        row = rows[y * (width + 1):(y + 1) * (width + 1)]
        for x, value in enumerate(row[1:]):
            target = y * width + x
            left = pixels[target - 1] if x else 0
            above = pixels[target - width] if y else 0
            upper_left = pixels[target - width - 1] if x and y else 0
            if row[0] == 0:
                predictor = 0
            elif row[0] == 1:
                predictor = left
            elif row[0] == 2:
                predictor = above
            elif row[0] == 3:
                predictor = (left + above) // 2
            elif row[0] == 4:
                estimate = left + above - upper_left
                predictor = min((left, above, upper_left), key=lambda v: abs(estimate - v))
            else:
                raise ValueError("Unknown PNG row filter")
            pixels[target] = (value + predictor) & 255
    if any(value > 31 for value in pixels):
        raise ValueError("Scene pixel indices must be palette * 4 + color ID (0-31)")
    return width, height, bytes(pixels)


def decode_atlas(png):
    """Recover tile bytes from indices, even when palette RGB colors repeat."""
    width, height, pixels = read_indices(png)
    tiles = bytearray()
    for tile_y in range(0, height, 8):
        for tile_x in range(0, width, 8):
            for y in range(8):
                low = high = 0
                start = (tile_y + y) * width + tile_x
                for x, index in enumerate(pixels[start:start + 8]):
                    low |= (index & 1) << (7 - x)
                    high |= ((index >> 1) & 1) << (7 - x)
                tiles.extend((low, high))
    return bytes(tiles)


def select_palettes(references):
    """Use each tile's most frequent palette; unused tiles use the overall mode."""
    usage = defaultdict(Counter)
    totals = Counter()
    for tile, palette in references:
        usage[tile][palette] += 1
        totals[palette] += 1
    selected = {tile: counts.most_common(1)[0][0] for tile, counts in usage.items()}
    fallback = totals.most_common(1)[0][0] if totals else 0
    return selected, fallback


def encode_atlas(tiles, columns, palette, selected, first_tile=0, fallback=0):
    """Write one colored tile per source tile, without flipping or padding."""
    count = len(tiles) // 16
    if not count or len(tiles) % 16 or columns <= 0 or count % columns:
        raise ValueError("Choose columns that divide the complete tile count")
    width, height = columns * 8, count // columns * 8
    pixels = bytearray(width * height)
    for tile in range(count):
        palette_id = selected.get(first_tile + tile, fallback)
        if not 0 <= palette_id < 8:
            raise ValueError("Palette ID must be between zero and seven")
        for y in range(8):
            low, high = tiles[tile * 16 + y * 2:tile * 16 + y * 2 + 2]
            start = (tile // columns * 8 + y) * width + tile % columns * 8
            for x in range(8):
                bit = 7 - x
                index = ((low >> bit) & 1) | (((high >> bit) & 1) << 1)
                pixels[start + x] = palette_id * 4 + index
    rows = b"".join(b"\x00" + pixels[y * width:(y + 1) * width] for y in range(height))
    header = struct.pack(">IIBBBBB", width, height, 8, 3, 0, 0, 0)
    return (b"\x89PNG\r\n\x1a\n" + _png_chunk(b"IHDR", header)
            + _png_chunk(b"PLTE", b"".join(palette_colors(palette)))
            + _png_chunk(b"IDAT", zlib.compress(rows)) + _png_chunk(b"IEND", b""))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("atlas", type=Path)
    parser.add_argument("palette", type=Path)
    parser.add_argument("tilemap", type=Path)
    parser.add_argument("attrmap", type=Path)
    parser.add_argument("--first-tile", type=lambda value: int(value, 0), default=0)
    parser.add_argument("--bank", type=int, choices=(0, 1), default=1)
    args = parser.parse_args()
    try:
        tilemap, attributes = args.tilemap.read_bytes(), args.attrmap.read_bytes()
        if len(tilemap) != len(attributes):
            raise ValueError("Map planes must contain the same number of cells")
        references = [(tile, attribute & 7) for tile, attribute in zip(tilemap, attributes)
                      if ((attribute >> 3) & 1) == args.bank]
        selected, fallback = select_palettes(references)
        original = args.atlas.read_bytes()
        width, _, _ = read_indices(original)
        colored = encode_atlas(decode_atlas(original), width // 8,
                               args.palette.read_bytes(), selected, args.first_tile, fallback)
        args.atlas.write_bytes(colored)
    except (OSError, ValueError) as error:
        parser.exit(1, "error: {}\n".format(error))
    print("Colored {}".format(args.atlas))


if __name__ == "__main__":
    main()
