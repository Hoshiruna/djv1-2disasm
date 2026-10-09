# SPDX-License-Identifier: MIT
"""Codec for $17 tilemaps loaded by bank 0, $05CE/$065C."""


def decode_runs(stream, output_size, marker):
    """Expand literal bytes and marker/value/repeat runs to the requested size."""
    output = bytearray()
    cursor = 0
    while len(output) < output_size:
        if cursor >= len(stream):
            raise ValueError("Truncated RLE stream")
        value = stream[cursor]
        cursor += 1
        count = 1
        if value == marker:
            if cursor + 2 > len(stream):
                raise ValueError("Truncated RLE run")
            value, repeats = stream[cursor:cursor + 2]
            cursor += 2
            count += repeats
        # The engine keeps run state across rows and plane boundaries.
        count = min(count, output_size - len(output))
        output.extend([value] * count)
    return bytes(output), cursor


def decode_resource(resource):
    """Return width, height, tile IDs, attributes, and bytes consumed."""
    if len(resource) < 4 or resource[0] != 0x17:
        raise ValueError("Expected a four-byte $17 tilemap header")
    width, height, marker = resource[1:4]
    if not 1 <= width <= 32 or not 1 <= height <= 32:
        raise ValueError("Tilemap dimensions must be between 1 and 32")
    plane_size = width * height
    output, cursor = decode_runs(resource[4:], plane_size * 2, marker)
    return width, height, output[:plane_size], output[plane_size:], cursor + 4


def encode(data, marker):
    """Encode runs as marker, value, count minus one (up to 256 bytes)."""
    output = bytearray()
    position = 0
    while position < len(data):
        value = data[position]
        end = position + 1
        while end < len(data) and end - position < 256 and data[end] == value:
            end += 1
        count = end - position
        if value == marker or count > 3:
            output.extend((marker, value, count - 1))
        else:
            output.extend([value] * count)
        position = end
    return bytes(output)


def rebuild_resource(template, tiles, attributes):
    """Keep an unchanged stream verbatim and retain the original ROM slot size."""
    width, height, original_tiles, original_attributes, _ = decode_resource(template)
    plane_size = width * height
    if len(tiles) != plane_size or len(attributes) != plane_size:
        raise ValueError("Expected {} bytes in each tilemap plane".format(plane_size))
    if tiles == original_tiles and attributes == original_attributes:
        return template
    rebuilt = template[:4] + encode(tiles + attributes, template[3])
    if len(rebuilt) > len(template):
        raise ValueError("Compressed tilemap needs {} bytes; its ROM slot holds {}".format(
            len(rebuilt), len(template)))
    return rebuilt + b"\xFF" * (len(template) - len(rebuilt))
