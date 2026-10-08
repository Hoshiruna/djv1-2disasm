#!/usr/bin/env python3
# SPDX-License-Identifier: MIT
"""Decode sprite parts, emit OAM, and composite 8x8 CGB sprites."""


def color_index(tile, x, y, attributes=0):
    """Read a 2bpp pixel after applying the sprite or background flips."""
    row = 7 - y if attributes & 0x40 else y
    bit = x if attributes & 0x20 else 7 - x
    low, high = tile[row * 2:row * 2 + 2]
    return ((low >> bit) & 1) | (((high >> bit) & 1) << 1)


def decode_metasprites(data):
    """Read count-prefixed records containing Y, X, tile, and attributes."""
    records = []
    offset = 0
    while offset < len(data):
        count = data[offset]
        end = offset + 1 + count * 4
        if end > len(data):
            raise ValueError("Truncated sprite definition")
        records.append([tuple(data[part:part + 4])
                        for part in range(offset + 1, end, 4)])
        offset = end
    return records


def emit_oam(objects, scroll_y=0):
    """Follow the game's sprite writer, including wrapping and its 40-part limit."""
    oam = []
    for x, y, parts in objects:
        for relative_y, relative_x, tile, attributes in parts:
            hardware_y = (y - scroll_y + relative_y + 16) & 0xFF
            hardware_x = (x + relative_x + 8) & 0xFF
            if hardware_y >= 0xA8 or hardware_x >= 0xB0 or tile == 0xFF:
                continue
            oam.append((hardware_y, hardware_x, tile, attributes))
            if len(oam) == 40:
                return oam
    return oam


def overlay(width, height, background, background_indices,
            background_priority, oam, tiles, colors):
    """Composite bank-zero sprites with CGB palette and OAM priority rules."""
    if (len(background) != width * height * 3
            or len(background_indices) != width * height
            or len(background_priority) != width * height):
        raise ValueError("Background planes do not match the image dimensions")
    pixels = bytearray(background)
    for y in range(height):
        # Hardware selects at most ten OAM entries on each scanline.
        visible = [part for part in oam[:40] if part[0] - 16 <= y < part[0] - 8][:10]
        claimed = set()
        for hardware_y, hardware_x, tile_id, attributes in visible:
            if attributes & 8:
                raise ValueError("Sprite uses unextracted VRAM bank 1")
            if tile_id not in tiles:
                raise ValueError("Sprite uses unextracted tile ${:02X}".format(tile_id))
            tile = tiles[tile_id]
            for relative_x in range(8):
                x = hardware_x - 8 + relative_x
                if not 0 <= x < width or x in claimed:
                    continue
                index = color_index(tile, relative_x, y - hardware_y + 16, attributes)
                if index == 0:
                    continue
                claimed.add(x)
                cell = y * width + x
                if background_indices[cell] and (attributes & 0x80 or background_priority[cell]):
                    continue
                offset = cell * 3
                pixels[offset:offset + 3] = colors[(attributes & 7) * 4 + index]
    return bytes(pixels)
