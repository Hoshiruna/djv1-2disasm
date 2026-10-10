#!/usr/bin/env python3
# SPDX-License-Identifier: MIT
"""Export, preview, or rebuild the title screen's background resources."""

import argparse
import json
from pathlib import Path

from gb_lz import decode as decode_tiles
from gb_rle import decode_resource as decode_map, rebuild_resource as rebuild_map
from hud_tilemap import encode_png, palette_colors, render_pixels
from scene_tiles import decode_atlas, encode_atlas, select_palettes


ROOT = Path(__file__).resolve().parents[1]
TABLES = {"US": {"graphics": 0x46BC, "maps": 0x4000},
          "JP": {"graphics": 0x4613, "maps": 0x401D}}
TILE_NAMES = ("title_tiles", "title_tiles_extra")
TITLE_DIR = ROOT / "res/ui/title"


def bank_offset(bank, address):
    return bank * 0x4000 + address - 0x4000


def table_address(rom, bank, table, index):
    offset = bank_offset(bank, table) + index * 2
    return int.from_bytes(rom[offset:offset + 2], "little")


def read_tiles(resource):
    """Return tile bytes, stored length, and the signed BG tile ID at the start."""
    if resource[0] not in (0x0D, 0x1D):
        raise ValueError("Expected the title's signed-address LZ tile format")
    raw, consumed = decode_tiles(resource[3:], resource[2] * 16)
    address = 0x8000 + resource[1] * 16
    if address < 0x8800:
        address |= 0x1000
    first = ((address - 0x9000) // 16) & 0xFF
    return raw, consumed + 3, first


def preview(folder):
    """Render the 160x144 background with its map attributes and CGB palettes."""
    width, height, _, _, _ = decode_map((folder / "title.bin").read_bytes())
    tiles = {}
    for name in TILE_NAMES:
        original, _, first = read_tiles((folder / (name + ".bin")).read_bytes())
        raw = decode_atlas((folder / (name + ".png")).read_bytes())
        if len(raw) != len(original):
            raise ValueError("Keep the title atlas's original tile count")
        tiles.update({(first + index) & 0xFF: raw[index * 16:(index + 1) * 16]
                      for index in range(len(raw) // 16)})
    pixels = render_pixels(width, height, (folder / "title.tilemap").read_bytes(),
                           (folder / "title.attrmap").read_bytes(), tiles,
                           palette_colors((folder / "title.pal").read_bytes()))
    (folder / "title.png").write_bytes(encode_png(width * 8, height * 8, pixels))


def export(region, rom_path, folder):
    """Copy the original compressed slots and export editable maps and atlases."""
    rom = rom_path.read_bytes()
    tables = TABLES[region]
    map_address = table_address(rom, 9, tables["maps"], 1)
    offset = bank_offset(9, map_address)
    width, height, tilemap, attrmap, stored = decode_map(rom[offset:0x28000])
    folder.mkdir(parents=True, exist_ok=True)
    (folder / "title.bin").write_bytes(rom[offset:offset + stored])
    (folder / "title.tilemap").write_bytes(tilemap)
    (folder / "title.attrmap").write_bytes(attrmap)
    manifest = {"region": region, "map": {"id": 1, "bank": 9,
                "table": tables["maps"], "address": map_address, "stored": stored,
                "width": width, "height": height}, "palettes": {}, "graphics": {}}

    # ReadUiMap stages BG palette entry 1; startup stages object palette entry 2.
    for name, table, index in (("title.pal", 0x4210, 1),
                               ("title_objects.pal", 0x4000, 2)):
        address = table_address(rom, 10, table, index)
        offset = bank_offset(10, address)
        (folder / name).write_bytes(rom[offset:offset + 64])
        manifest["palettes"][name] = {"bank": 10, "table": table, "id": index,
                                      "address": address, "stored": 64}

    palette = (folder / "title.pal").read_bytes()
    selected, fallback = select_palettes(zip(tilemap, (attr & 7 for attr in attrmap)))
    for index, name in enumerate(TILE_NAMES, 2):
        address = table_address(rom, 9, tables["graphics"], index)
        offset = bank_offset(9, address)
        raw, stored, first = read_tiles(rom[offset:0x28000])
        png = encode_atlas(raw, 16, palette, selected, first, fallback)
        if decode_atlas(png) != raw:
            raise ValueError("Title atlas does not preserve the ROM's tile bytes")
        (folder / (name + ".bin")).write_bytes(rom[offset:offset + stored])
        (folder / (name + ".png")).write_bytes(png)
        manifest["graphics"][name] = {"id": index, "bank": 9,
            "table": tables["graphics"], "address": address, "stored": stored,
            "first_tile": first, "count": len(raw) // 16}
    (folder / (region + ".json")).write_text(json.dumps(manifest, indent=2) + "\n",
                                            encoding="utf-8")
    preview(folder)
    return manifest


def rebuild_tilemap(folder):
    path = folder / "title.bin"
    template = path.read_bytes()
    rebuilt = rebuild_map(template, (folder / "title.tilemap").read_bytes(),
                          (folder / "title.attrmap").read_bytes())
    if rebuilt == template:
        path.touch()
    else:
        path.write_bytes(rebuilt)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("action", choices=("export", "preview", "rebuild-map"))
    parser.add_argument("region", choices=TABLES)
    parser.add_argument("--rom", type=Path, help="Source ROM for export")
    parser.add_argument("--output", type=Path, help="Override the shared title directory")
    args = parser.parse_args()
    folder = args.output or TITLE_DIR
    try:
        if args.action == "export":
            rom = args.rom or ROOT / "asm" / args.region / "game.gbc"
            export(args.region, rom, folder)
        elif args.action == "rebuild-map":
            rebuild_tilemap(folder)
        else:
            preview(folder)
    except (OSError, ValueError) as error:
        parser.exit(1, "error: {}\n".format(error))
    print("{} title resources: {}".format(args.region, folder))


if __name__ == "__main__":
    main()
