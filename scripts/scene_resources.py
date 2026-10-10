#!/usr/bin/env python3
# SPDX-License-Identifier: MIT
"""Export scene resources without assembling or modifying a ROM."""

import argparse
from collections import Counter
import json
from pathlib import Path

from gb_lz import decode, rebuild_resource
from gb_tile_rle import decode_resource as decode_planar
from hud_tilemap import encode_png, palette_colors, render_pixels
from scene_tiles import decode_atlas, encode_atlas, select_palettes


ROOT = Path(__file__).resolve().parents[1]
CASES = {"case1": {"index": 0, "count": 0x99, "gfx_bank": 0x33, "map_bank": 0x23},
         "case2": {"index": 1, "count": 0x43, "gfx_bank": 0x2A, "map_bank": 0x27}}

# These scene IDs use separate ROM graphics for changes within the same setting.
PREVIEW_BASES = {"case1": {0x03: 0x02, 0x08: 0x02, 0x0A: 0x02,
                           0x1C: 0x1A, 0x26: 0x24, 0x31: 0x30,
                           0x40: 0x30, 0x46: 0x45, 0x49: 0x47,
                           0x4C: 0x4B, 0x4F: 0x4E, 0x56: 0x55,
                           0x68: 0x66, 0x6D: 0x6B, 0x78: 0x77,
                           0x7A: 0x7B, 0x8E: 0x8D}, "case2": {}}


def rom_offset(bank, address):
    return bank * 0x4000 + address - 0x4000


def table_data(rom, bank, table, index, size):
    pointer_offset = rom_offset(bank, table) + index * 2
    address = int.from_bytes(rom[pointer_offset:pointer_offset + 2], "little")
    offset = rom_offset(bank, address)
    return rom[offset:offset + size], address


def graphics(rom, resource_id, base_bank=0x2A):
    bank = base_bank + (resource_id >> 4)
    entry = resource_id & 15
    _, address = table_data(rom, bank, 0x4000, entry, 0)
    offset = rom_offset(bank, address)
    if rom[offset] == 0xFF:
        return None
    available = rom[offset:(bank + 1) * 0x4000]
    if available[0] in (0x0C, 0x0D, 0x1C, 0x1D):
        tiles, consumed = decode(available[3:], available[2] * 16)
        consumed += 3
        block = available[:consumed]
        if rebuild_resource(block, tiles) != block:
            raise ValueError("LZ readback mismatch")
        header_size = 3
    else:
        tiles, consumed = decode_planar(available)
        block = available[:consumed]
        header_size = 4
    if entry < 15:
        _, next_address = table_data(rom, bank, 0x4000, entry + 1, 0)
        if address + consumed > next_address:
            raise ValueError("Graphics stream overlaps the next resource")
    return {"bank": bank, "address": address, "offset": offset,
            "stored": consumed, "header": block[:header_size].hex(),
            "first": block[1], "tiles": tiles, "block": block}


def scene_data(rom, region, scene, case="case2"):
    settings = CASES[case]
    case_index = settings["index"]
    pair_table = (0x46AF if region == "US" else 0x46A4) + case_index * 2
    pair_offset = int.from_bytes(rom[pair_table:pair_table + 2], "little") + scene * 2
    background, objects = rom[pair_offset:pair_offset + 2]
    map_bank = settings["map_bank"] + scene // 0x28
    layout, map_address = table_data(rom, map_bank, 0x4000, scene % 0x28, 392)
    palette_id = (rom[(0x487F if region == "US" else 0x4874) + scene]
                  if case == "case1" else scene)
    constants = 0x1A0B if region == "US" else 0x1B5B
    bg_bank = rom[constants + case_index]
    obj_bank = rom[constants + 6 + case_index]
    bg_entry, obj_entry = constants + 2 + case_index * 2, constants + 8 + case_index * 2
    bg_table = int.from_bytes(rom[bg_entry:bg_entry + 2], "little")
    obj_table = int.from_bytes(rom[obj_entry:obj_entry + 2], "little")
    bg_palette, bg_address = table_data(rom, bg_bank, bg_table, palette_id, 64)
    obj_palette, obj_address = table_data(rom, obj_bank, obj_table, palette_id, 64)
    return {"background": background, "objects": objects, "tilemap": layout[:196],
            "attrmap": layout[196:], "bg_palette": bg_palette, "obj_palette": obj_palette,
            "map_bank": map_bank, "map_address": map_address, "bg_palette_address": bg_address,
            "obj_palette_address": obj_address, "palette_id": palette_id,
            "palette_bank": bg_bank}


def write_export(path, data):
    if path.exists() and path.read_bytes() != data:
        raise ValueError("Export would replace different data: {}".format(path))
    if not path.exists():
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(data)
    if path.read_bytes() != data:
        raise ValueError("Saved resource mismatch: {}".format(path))


def palette_paths(case_folder, scene, scene_folder):
    """Resolve palette files shared by scenes that use the same ROM slot."""
    index = case_folder / "resources.json"
    entry = {}
    if index.exists():
        entry = json.loads(index.read_text(encoding="utf-8"))["scenes"]["{:02x}".format(scene)]
    paths = {}
    for key, role in (("bg_palette", "bg"), ("obj_palette", "objects")):
        paths[key] = (case_folder / entry[key] if key in entry else
                      scene_folder / ("s{:02x}-{}.pal".format(scene, role)))
    return paths


def atlas_columns(count):
    return next(columns for columns in range(min(16, count), 0, -1) if count % columns == 0)


def metadata(resource):
    return {key: value for key, value in resource.items() if key not in ("tiles", "block")}


def render_scene(data, backgrounds, hud_tiles):
    colors = palette_colors(data["bg_palette"])
    pixels = bytearray(112 * 112 * 3)
    for cell, (tile, attributes) in enumerate(zip(data["tilemap"], data["attrmap"])):
        bank = (attributes >> 3) & 1
        tiles = backgrounds if bank else hud_tiles
        rendered = render_pixels(1, 1, bytes([tile]), bytes([attributes]),
                                 tiles, colors, tile_bank=bank)
        for row in range(8):
            target = ((cell // 14 * 8 + row) * 112 + cell % 14 * 8) * 3
            pixels[target:target + 24] = rendered[row * 24:(row + 1) * 24]
    return encode_png(112, 112, pixels)


class Exporter:
    def __init__(self, case="case2"):
        self.case = case
        self.settings = CASES[case]
        self.roms = {region: (ROOT / "asm" / region / "game.gbc").read_bytes()
                     for region in ("US", "JP")}
        self.folder = ROOT / "res/scene" / case
        self.atlases = {}
        for path in self.folder.rglob("*.png"):
            if path.parent.name != "previews":
                self.atlases[decode_atlas(path.read_bytes())] = path
        scenes = [scene_data(self.roms["US"], "US", scene, case)
                  for scene in range(self.settings["count"])]
        self.usage = Counter(resource_id for data in scenes
                             for resource_id in (data["background"], data["background"] + 1,
                                                 data["objects"]))
        self.preview_aliases = {scenes[scene]["background"]: scenes[base]["background"]
                               for scene, base in PREVIEW_BASES[case].items()}
        self.preview_groups = {self.preview_aliases.get(scenes[int(path.stem[:2], 16)]["background"],
                                                       scenes[int(path.stem[:2], 16)]["background"])
                               for path in (self.folder / "previews").glob("*.png")}
        self.hud = {}
        for region in self.roms:
            tiles = {}
            names = (("case2_font", "case2_hud_tiles") if case == "case2"
                     else ("font" if region == "US" else "case1_font", "hud_tiles"))
            for category, name in zip(("font", "hud"), names):
                block = (ROOT / "res" / "ui" / category / region / (name + ".bin")).read_bytes()
                raw, _ = decode(block[3:], block[2] * 16)
                tiles.update({block[1] + index: raw[index * 16:(index + 1) * 16]
                              for index in range(block[2])})
            self.hud[region] = tiles

    def export(self, scene):
        regional = {region: scene_data(rom, region, scene, self.case)
                    for region, rom in self.roms.items()}
        data = regional["US"]
        if any(data[key] != regional["JP"][key] for key in
               ("background", "objects", "tilemap", "attrmap", "bg_palette", "obj_palette")):
            raise ValueError("Regional scene data differs at ${:02X}".format(scene))
        prefix = "s{:02x}".format(scene)
        existing = list(self.folder.glob("{:02x}*".format(scene)))
        folder = existing[0] if len(existing) == 1 else self.folder / "{:02x}".format(scene)
        note = {"scene": scene, "folder": str(folder.relative_to(ROOT)),
                "map_bank": data["map_bank"], "map_address": data["map_address"],
                "bg_palette_address": data["bg_palette_address"],
                "obj_palette_address": data["obj_palette_address"],
                "palette_id": data["palette_id"], "palette_bank": data["palette_bank"],
                "regional_addresses": {region: {key: item[key] for key in
                    ("map_bank", "map_address", "bg_palette_address", "obj_palette_address")}
                    for region, item in regional.items()}, "resources": {}}
        for suffix, key in (("bg.tilemap", "tilemap"), ("bg.attrmap", "attrmap")):
            write_export(folder / (prefix + "-" + suffix), data[key])
        for key, path in palette_paths(self.folder, scene, folder).items():
            write_export(path, data[key])
        selected, fallback = select_palettes((tile, attr & 7)
            for tile, attr in zip(data["tilemap"], data["attrmap"]) if attr & 8)
        background_tiles = {}
        for resource_id, role in ((data["background"], "bg"),
                                  (data["background"] + 1, "bg-extra"),
                                  (data["objects"], "objects")):
            resources = [graphics(rom, resource_id, self.settings["gfx_bank"])
                         for rom in self.roms.values()]
            if self.case == "case1" and role == "objects" and resource_id == 0:
                # This ID loads the existing regional font, whose JP glyphs differ.
                font_paths = {region: ROOT / "res" / "ui" / "font" / region /
                    (("font" if region == "US" else "case1_font") + ".png") for region in self.roms}
                for region, item in zip(self.roms, resources):
                    if decode_atlas(font_paths[region].read_bytes()) != item["tiles"]:
                        raise ValueError("Regional font atlas mismatch")
                note["resources"][role] = {"id": 0, "font_reuse": True,
                    "regions": {region: dict(metadata(item), path=str(font_paths[region].relative_to(ROOT)))
                                for region, item in zip(self.roms, resources)}}
                continue
            if ((resources[0] is None) != (resources[1] is None)
                    or resources[0] is not None and any(
                        resources[0][key] != resources[1][key] for key in ("tiles", "first"))):
                raise ValueError("Regional tile data differs at ${:02X}".format(resource_id))
            resource = resources[0]
            if resource is None:
                note["resources"][role] = {"id": resource_id, "empty": True}
                continue
            raw = resource["tiles"]
            path = self.atlases.get(raw)
            if path is None:
                path = (self.folder / "common" / ("{}-{:02x}.png".format(
                    "objects" if role == "objects" else "bg", resource_id))
                    if self.usage[resource_id] > 1 else folder / (prefix + "-" + role + ".png"))
                palette = data["obj_palette"] if role == "objects" else data["bg_palette"]
                png = encode_atlas(raw, atlas_columns(len(raw) // 16), palette,
                                   {} if role == "objects" else selected,
                                   resource["first"], 0 if role == "objects" else fallback)
                if decode_atlas(png) != raw:
                    raise ValueError("Colored atlas readback mismatch")
                write_export(path, png)
                self.atlases[raw] = path
            if decode_atlas(path.read_bytes()) != raw:
                raise ValueError("Saved atlas differs from ROM tile bytes")
            note["resources"][role] = dict(metadata(resource), id=resource_id,
                path=str(path.relative_to(ROOT)), count=len(raw) // 16)
            if metadata(resources[0]) != metadata(resources[1]):
                note["resources"][role]["regions"] = {
                    region: metadata(item) for region, item in zip(self.roms, resources)}
            if role != "objects":
                background_tiles.update({resource["first"] + index: raw[index * 16:(index + 1) * 16]
                                         for index in range(len(raw) // 16)})
        if any(tile == 0xFF and attr & 8 for tile, attr in zip(data["tilemap"], data["attrmap"])):
            if 0xFF not in background_tiles:
                # The unused final staging slot supplies the scene's blank tile.
                blank = self.hud["US"][0xFF]
                if blank != bytes(16) or blank != self.hud["JP"][0xFF]:
                    raise ValueError("Expected the shared blank tile at $FF")
                background_tiles[0xFF] = blank
                note["reserved_blank_tile"] = 0xFF
        previews = [render_scene(regional[region], background_tiles, self.hud[region])
                    for region in ("US", "JP")]
        if previews[0] != previews[1]:
            raise ValueError("Regional background renders differ")
        existing_previews = list((self.folder / "previews").glob("{:02x}*.png".format(scene)))
        preview_group = self.preview_aliases.get(data["background"], data["background"])
        if existing_previews or (data["background"] not in self.preview_aliases
                                 and preview_group not in self.preview_groups):
            preview = (existing_previews[0] if existing_previews
                       else self.folder / "previews" / (folder.name + ".png"))
            write_export(preview, previews[0])
            note["preview"] = str(preview.relative_to(ROOT))
            self.preview_groups.add(preview_group)
        else:
            note["preview"] = None
        note_path = ROOT / "locate_notes" / ("scene-{}-{:02x}.json".format(self.case, scene))
        note_path.write_bytes((json.dumps(note, indent=2) + "\n").encode())
        print("Scene ${:02X}: exported; {}".format(scene,
            "main preview" if note["preview"] else "shared-background variation, no preview"))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--case", choices=tuple(CASES), default="case2")
    parser.add_argument("start", type=lambda value: int(value, 16))
    parser.add_argument("stop", type=lambda value: int(value, 16), help="Inclusive last scene ID")
    args = parser.parse_args()
    if not 0 <= args.start <= args.stop < CASES[args.case]["count"]:
        parser.error("Scene range is outside this case's ordinary map table")
    exporter = Exporter(args.case)
    for scene in range(args.start, args.stop + 1):
        exporter.export(scene)


if __name__ == "__main__":
    main()
