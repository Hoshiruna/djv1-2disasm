# SPDX-License-Identifier: MIT
"""Codec for the game's $0C/$0D compressed tile resources (bank 0, $0680)."""

from collections import defaultdict


MAX_TILE_BYTES = 0xFF * 16
MAX_MATCH = 18


def decode(stream, output_size):
    """Return decoded bytes and the number of compressed bytes consumed."""
    if not 0 <= output_size <= MAX_TILE_BYTES:
        raise ValueError("Decoded size must be between 0 and 4080 bytes")

    output = bytearray()
    cursor = 0
    while len(output) < output_size:
        if cursor >= len(stream):
            raise ValueError("Missing control byte")
        flags = stream[cursor]
        cursor += 1
        for bit in range(8):
            if flags & (1 << bit):
                if cursor >= len(stream):
                    raise ValueError("Truncated literal")
                output.append(stream[cursor])
                cursor += 1
            else:
                if cursor + 2 > len(stream):
                    raise ValueError("Truncated reference")
                low, high = stream[cursor:cursor + 2]
                cursor += 2
                source = (len(output) & 0xF800) | ((high & 0xF0) << 4) | low
                if source > len(output):
                    source -= 0x400
                if not 0 <= source < len(output):
                    raise ValueError("Reference does not point to decoded data")
                for _ in range((high & 0x0F) + 3):
                    output.append(output[source])
                    source += 1
                    if len(output) == output_size:
                        break
            if len(output) == output_size:
                break
    return bytes(output), cursor


def _reference_offset(position, source):
    """Find a 12-bit offset that the game's page/wrap logic resolves correctly."""
    page = position & 0xF800
    candidate = source if source >= page else source + 0x400
    offset = candidate & 0x0FFF
    resolved = page | offset
    if resolved > position:
        resolved -= 0x400
    return offset if resolved == source and source < position else None


def _find_matches(data):
    matches = [(0, None)] * len(data)
    previous = defaultdict(list)
    for position in range(len(data) - 2):
        key = data[position:position + 3]
        limit = min(MAX_MATCH, len(data) - position)
        best_length, best_offset = 0, None
        for source in reversed(previous[key]):
            offset = _reference_offset(position, source)
            if offset is None:
                continue
            length = 3
            # Comparing the desired bytes also covers overlapping references.
            while length < limit and data[source + length] == data[position + length]:
                length += 1
            if length > best_length:
                best_length, best_offset = length, offset
                if length == limit:
                    break
        matches[position] = best_length, best_offset
        previous[key].append(position)
    return matches


def encode(data):
    """Choose the smallest stream, including one control byte per eight tokens."""
    if len(data) > MAX_TILE_BYTES:
        raise ValueError("Tile data exceeds the header's 4080-byte limit")
    matches = _find_matches(data)
    costs = [[0] * 8 for _ in range(len(data) + 1)]
    lengths = [[1] * 8 for _ in range(len(data))]

    # Token position within the flag byte affects the best compression choice.
    for position in range(len(data) - 1, -1, -1):
        longest, _ = matches[position]
        for slot in range(8):
            next_slot = (slot + 1) % 8
            flag_cost = 1 if slot == 0 else 0
            best_cost = flag_cost + 1 + costs[position + 1][next_slot]
            for length in range(longest, 2, -1):
                cost = flag_cost + 2 + costs[position + length][next_slot]
                if cost < best_cost:
                    best_cost = cost
                    lengths[position][slot] = length
            costs[position][slot] = best_cost

    output = bytearray()
    position = 0
    while position < len(data):
        flag_position = len(output)
        output.append(0)
        for slot in range(8):
            length = lengths[position][slot]
            if length == 1:
                output[flag_position] |= 1 << slot
                output.append(data[position])
            else:
                _, offset = matches[position]
                output.extend((offset & 0xFF, ((offset >> 4) & 0xF0) | (length - 3)))
            position += length
            if position == len(data):
                break
    return bytes(output)


def rebuild_resource(template, tiles):
    """Preserve the header and fixed ROM slot; keep unchanged resources verbatim."""
    if len(template) < 3 or template[0] not in (0x0C, 0x0D, 0x1C, 0x1D) or template[2] == 0:
        raise ValueError("Expected a three-byte $0C/$0D compressed tile header")
    output_size = template[2] * 16
    if len(tiles) != output_size:
        raise ValueError("Expected {} decoded bytes, got {}; keep the tile count".format(
            output_size, len(tiles)))
    original_tiles, _ = decode(template[3:], output_size)
    if tiles == original_tiles:
        return template

    rebuilt = template[:3] + encode(tiles)
    if len(rebuilt) > len(template):
        raise ValueError("Compressed resource needs {} bytes; its ROM slot holds {}".format(
            len(rebuilt), len(template)))
    # The decoder stops at the header's tile count, before this padding.
    return rebuilt + b"\xFF" * (len(template) - len(rebuilt))
