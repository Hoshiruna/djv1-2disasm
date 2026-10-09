#!/usr/bin/env python3
# SPDX-License-Identifier: MIT
"""Render the Case II bathroom and its initial objects."""

import argparse
from pathlib import Path
from tempfile import gettempdir

from gb_lz import decode
from gb_sprites import color_index, decode_metasprites, emit_oam, overlay
from hud_tilemap import encode_png, palette_colors, render_pixels


BATHROOM = Path("scene/case2/00-lucky-bath")
PREFIX = "s00-"


def apply_door(tilemap, attributes, resources, state):
    """Replace the 4x8 door rectangle at tile position (5, 2)."""
    folder = resources / BATHROOM
    name = PREFIX + "door-" + state
    patch_tiles = (folder / (name + ".tilemap")).read_bytes()
    patch_attributes = (folder / (name + ".attrmap")).read_bytes()
    if len(patch_tiles) != 32 or len(patch_attributes) != 32:
        raise ValueError("Door patches must contain 4x8 cells in each plane")
    tilemap, attributes = bytearray(tilemap), bytearray(attributes)
    for row in range(8):
        target = (row + 2) * 14 + 5
        source = row * 4
        tilemap[target:target + 4] = patch_tiles[source:source + 4]
        attributes[target:target + 4] = patch_attributes[source:source + 4]
    return bytes(tilemap), bytes(attributes)


def initial_visibility(resources):
    """Read the object IDs enabled by Case II initialization."""
    flags = (resources / "scene/case2/common/initial-visibility.bin").read_bytes()
    if not flags or flags[-1] != 0xFF:
        raise ValueError("Initial visibility flags must end with $FF")
    return set(flags[:-1])


def scene_objects(resources, visible=None, present=None):
    """Select room-zero sprites whose presence and visibility flags are both set."""
    folder = resources / BATHROOM
    definitions = decode_metasprites((folder / (PREFIX + "objects.sprites")).read_bytes())
    positions = (folder / (PREFIX + "objects.positions")).read_bytes()
    animations = (folder / (PREFIX + "objects.animations")).read_bytes()
    hitboxes = (folder / (PREFIX + "objects.hitboxes")).read_bytes()
    if len(positions) != len(definitions) * 2 or len(animations) != len(definitions) * 5:
        raise ValueError("Bathroom positions and animations must match the sprite records")
    if len(hitboxes) % 7 != 1 or hitboxes[-1] != 0xFF:
        raise ValueError("Room hitboxes must end with $FF")
    if visible is None:
        visible = initial_visibility(resources)
    objects = []
    for offset in range(0, len(hitboxes) - 1, 7):
        record = hitboxes[offset:offset + 7]
        object_id = record[6]
        if not record[4] & 0x80 or object_id not in visible:
            continue
        # No presence override represents the initial all-set $C420 bitmap.
        if present is not None and object_id not in present:
            continue
        if object_id >= len(definitions):
            raise ValueError("Room references an unextracted object")
        animation = animations[object_id * 5:object_id * 5 + 5]
        if animation[0] != 0xFE or animation[2:] != b"\xff\xff\x00":
            raise ValueError("Bathroom preview requires static object animations")
        sprite = animation[1]
        if sprite >= len(definitions):
            raise ValueError("Animation references an unextracted sprite")
        x, y = positions[object_id * 2:object_id * 2 + 2]
        objects.append((x, y, definitions[sprite]))
    return objects


def overlay_objects(region, pixels, tilemap, attributes, background_tiles):
    """Add the initial room objects using their tiles and palette."""
    resources = region.parents[len(BATHROOM.parts)]
    resource = (region / (PREFIX + "objects.bin")).read_bytes()
    raw, _ = decode(resource[3:], resource[2] * 16)
    sprite_tiles = {resource[1] + index: raw[index * 16:(index + 1) * 16]
                    for index in range(resource[2])}
    indices = bytearray(112 * 112)
    priorities = bytearray(112 * 112)
    for cell, tile_id in enumerate(tilemap):
        attribute = attributes[cell]
        for y in range(8):
            for x in range(8):
                offset = (cell // 14 * 8 + y) * 112 + cell % 14 * 8 + x
                indices[offset] = color_index(background_tiles[tile_id], x, y, attribute)
                priorities[offset] = attribute & 0x80
    colors = palette_colors((resources / BATHROOM / (PREFIX + "objects.pal")).read_bytes())
    oam = emit_oam(scene_objects(resources))
    return overlay(112, 112, pixels, indices, priorities, oam, sprite_tiles, colors)


def render(region, door="closed", objects=False):
    """Use shared map/palette data and one region's compressed graphics."""
    resources = region.parents[len(BATHROOM.parts)]
    tiles = {}
    for name in ("bg", "bg-extra"):
        resource = (region / (PREFIX + name + ".bin")).read_bytes()
        raw, _ = decode(resource[3:], resource[2] * 16)
        for index in range(resource[2]):
            tiles[resource[1] + index] = raw[index * 16:(index + 1) * 16]
    tilemap = (resources / BATHROOM / (PREFIX + "bg.tilemap")).read_bytes()
    attributes = (resources / BATHROOM / (PREFIX + "bg.attrmap")).read_bytes()
    if door != "base":
        if door not in ("closed", "open"):
            raise ValueError("Door state must be base, closed, or open")
        tilemap, attributes = apply_door(tilemap, attributes, resources, door)
        # Startup graphics leave a blank $FF tile in the background staging bank.
        tiles[0xFF] = bytes(16)
    palette = (resources / BATHROOM / (PREFIX + "bg.pal")).read_bytes()
    pixels = render_pixels(14, 14, tilemap, attributes, tiles,
                           palette_colors(palette), tile_bank=1)
    if objects:
        pixels = overlay_objects(region, pixels, tilemap, attributes, tiles)
    return encode_png(112, 112, pixels)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("region", type=Path,
                        help="Regional bathroom directory, e.g. res/scene/case2/00-lucky-bath/US")
    parser.add_argument("--door", choices=("base", "closed", "open"), default="closed")
    parser.add_argument("--objects", action="store_true", help="Overlay the scene objects")
    parser.add_argument("--output", type=Path,
                        help="Output PNG path; variants default to the system temporary directory")
    args = parser.parse_args()
    try:
        objects = args.objects
        png = render(args.region, args.door, objects)
        name = "00-lucky-bath" + ("-objects" if objects else "")
        if args.door != "closed":
            name += "-" + args.door
        folder = (Path(gettempdir()) if objects or args.door != "closed"
                  else args.region.parent.parent / "previews")
        output = args.output or folder / (name + ".png")
        output.write_bytes(png)
    except (OSError, ValueError) as error:
        parser.exit(1, "error: {}\n".format(error))
    layer = "initial objects" if objects else "background"
    print("Rendered {} (112x112, door {}, {})".format(output, args.door, layer))


if __name__ == "__main__":
    main()
