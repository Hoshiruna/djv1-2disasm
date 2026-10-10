# SPDX-License-Identifier: MIT
"""Check title exports and the editable PNG/map round trips without assembling."""

from pathlib import Path
import shutil
import struct
import sys
import tempfile
import unittest
import zlib

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from gb_lz import rebuild_resource
from gb_rle import decode_resource
from rebuild_gfx import rebuild_png
from scene_tiles import decode_atlas, encode_atlas
from title_resources import TITLE_DIR, TILE_NAMES, export, preview, read_tiles, rebuild_tilemap


def png_content(png):
    """Compare the header, palette, and decoded rows without zlib version differences."""
    chunks = {}
    offset = 8
    while offset < len(png):
        size = struct.unpack_from(">I", png, offset)[0]
        kind = png[offset + 4:offset + 8]
        chunks.setdefault(kind, bytearray()).extend(png[offset + 8:offset + 8 + size])
        offset += size + 12
    return (bytes(chunks[b"IHDR"]), bytes(chunks.get(b"PLTE", b"")),
            zlib.decompress(chunks[b"IDAT"]))


def copy_title(folder):
    folder.mkdir(parents=True)
    for path in TITLE_DIR.iterdir():
        shutil.copy2(path, folder / path.name)


class TitleResourcesTests(unittest.TestCase):
    def test_unchanged_atlases_and_map_keep_compressed_bytes(self):
        with tempfile.TemporaryDirectory() as directory:
            folder = Path(directory) / "title"
            copy_title(folder)
            for name in TILE_NAMES:
                path = folder / (name + ".bin")
                original = path.read_bytes()
                changed, size = rebuild_png(folder / (name + ".png"), path,
                                            scene_atlas=True)
                self.assertFalse(changed)
                self.assertEqual(size, len(original))
                self.assertEqual(path.read_bytes(), original)
            original = (folder / "title.bin").read_bytes()
            rebuild_tilemap(folder)
            self.assertEqual((folder / "title.bin").read_bytes(), original)
            original_preview = (folder / "title.png").read_bytes()
            preview(folder)
            self.assertEqual(png_content((folder / "title.png").read_bytes()),
                             png_content(original_preview))

    def test_edited_atlas_reaches_the_compressed_slot_and_preview(self):
        folder = TITLE_DIR
        template = (folder / "title_tiles.bin").read_bytes()
        raw, _, first = read_tiles(template)
        # A blank replacement makes a visible edit while fitting the original slot.
        edited = b"\x00" * 16 + raw[16:]
        with tempfile.TemporaryDirectory() as directory:
            edited_folder = Path(directory) / "title"
            copy_title(edited_folder)
            png = edited_folder / "title_tiles.png"
            output = edited_folder / "title_tiles.bin"
            png.write_bytes(encode_atlas(edited, 16, (folder / "title.pal").read_bytes(),
                                        {}, first))
            preview(edited_folder)
            self.assertNotEqual(png_content((edited_folder / "title.png").read_bytes()),
                                png_content((folder / "title.png").read_bytes()))
            changed, _ = rebuild_png(png, output, scene_atlas=True)
            self.assertTrue(changed)
            self.assertEqual(read_tiles(output.read_bytes())[0], edited)
            self.assertEqual(len(output.read_bytes()), len(template))

    def test_edited_map_reaches_the_compressed_slot(self):
        with tempfile.TemporaryDirectory() as directory:
            folder = Path(directory) / "title"
            copy_title(folder)
            path = folder / "title.bin"
            original_size = path.stat().st_size
            # Use one tile throughout to exercise recompression within the ROM slot.
            edited = b"\x00" * 360
            (folder / "title.tilemap").write_bytes(edited)
            rebuild_tilemap(folder)
            width, height, tiles, attributes, _ = decode_resource(path.read_bytes())
            self.assertEqual((width, height), (20, 18))
            self.assertEqual(tiles, edited)
            self.assertEqual(attributes, (folder / "title.attrmap").read_bytes())
            self.assertEqual(path.stat().st_size, original_size)

    def test_exports_match_the_source_rom(self):
        for region in ("US", "JP"):
            rom_path = ROOT / "asm" / region / "game.gbc"
            if not rom_path.exists():
                self.skipTest("Regional source ROMs are needed to check export")
            with self.subTest(region=region), tempfile.TemporaryDirectory() as directory:
                folder = Path(directory)
                export(region, rom_path, folder)
                expected = TITLE_DIR
                for path in folder.iterdir():
                    actual = path.read_bytes()
                    original = (expected / path.name).read_bytes()
                    if path.suffix == ".png":
                        actual, original = png_content(actual), png_content(original)
                    self.assertEqual(actual, original, "{} {}".format(region, path.name))
                for name in TILE_NAMES:
                    template = (folder / (name + ".bin")).read_bytes()
                    tiles = decode_atlas((folder / (name + ".png")).read_bytes())
                    self.assertEqual(rebuild_resource(template, tiles), template)


if __name__ == "__main__":
    unittest.main()
