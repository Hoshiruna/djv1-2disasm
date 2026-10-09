# SPDX-License-Identifier: MIT
"""Read the game's planar RLE tile resources (bank zero, $0588/$0598)."""

from gb_rle import decode_runs


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
