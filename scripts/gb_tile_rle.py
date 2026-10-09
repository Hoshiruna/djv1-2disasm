# SPDX-License-Identifier: MIT
"""Read and rebuild the game's planar RLE tile resources."""

from gb_rle import decode_runs, encode


def decode_resource(resource):
    """Return interleaved 2bpp tiles and the stored byte count consumed."""
    if len(resource) < 4 or resource[0] not in (0x00, 0x01, 0x10, 0x11):
        raise ValueError("Expected a four-byte planar RLE tile header")
    marker, tile_count = resource[2:4]
    if tile_count == 0:
        raise ValueError("Tile count must be nonzero")
    plane_size = tile_count * 8
    planes, consumed = decode_runs(resource[4:], plane_size * 2, marker)
    # The loader writes all low bitplanes first, then all high bitplanes.
    tiles = bytearray(plane_size * 2)
    tiles[0::2] = planes[:plane_size]
    tiles[1::2] = planes[plane_size:]
    return bytes(tiles), consumed + 4


def rebuild_resource(template, tiles):
    """Keep the header and slot size, preserving unchanged streams verbatim."""
    original, _ = decode_resource(template)
    if len(tiles) != len(original):
        raise ValueError("Expected {} decoded bytes, got {}; keep the tile count".format(
            len(original), len(tiles)))
    if tiles == original:
        return template

    planes = tiles[0::2] + tiles[1::2]
    rebuilt = template[:4] + encode(planes, template[2])
    if len(rebuilt) > len(template):
        raise ValueError("Compressed resource needs {} bytes; its ROM slot holds {}".format(
            len(rebuilt), len(template)))
    return rebuilt + b"\xFF" * (len(template) - len(rebuilt))
