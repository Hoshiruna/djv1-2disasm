# SPDX-License-Identifier: MIT
"""Checks for HUD tilemap compression, rendering, and fixed ROM slots."""

from pathlib import Path
import random
import struct
import sys
import tempfile
import unittest
import zlib

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from gb_rle import decode_resource, encode, rebuild_resource
from hud_tilemap import encode_png, load_tiles, palette_colors, process, render_pixels
from bathroom_preview import BATHROOM, apply_door, render as render_bathroom


class RleTests(unittest.TestCase):
    def test_run_count_and_plane_boundary(self):
        # A single run supplies two tile IDs and two attributes.
        self.assertEqual(decode_resource(b"\x17\x02\x01\x00\x00\x07\x03"),
                         (2, 1, b"\x07\x07", b"\x07\x07", 7))

    def test_marker_can_be_a_literal_value(self):
        resource = b"\x17\x01\x01\x00\x00\x00\x00X"
        self.assertEqual(decode_resource(resource), (1, 1, b"\x00", b"X", 8))

    def test_runs_longer_than_256(self):
        resource = b"\x17\x14\x20\x00" + encode(b"\x07" * 1280, 0)
        self.assertEqual(len(resource), 19)
        self.assertEqual(decode_resource(resource)[2:4], (b"\x07" * 640, b"\x07" * 640))

    def test_truncated_and_invalid_resources(self):
        for resource in (b"", b"\x18\x01\x01\x00", b"\x17\x00\x01\x00",
                         b"\x17\x01\x01\x00\x00X"):
            with self.subTest(resource=resource), self.assertRaises(ValueError):
                decode_resource(resource)

    def test_original_maps_and_unchanged_rebuild(self):
        for region, size in (("US", 225), ("JP", 233)):
            with self.subTest(region=region):
                folder = ROOT / "res" / "ui" / region
                template = (folder / "hud.bin").read_bytes()
                width, height, tiles, attributes, consumed = decode_resource(template)
                self.assertEqual((width, height, consumed, len(template)), (20, 32, size, size))
                self.assertEqual(tiles, (folder / "hud.tilemap").read_bytes())
                self.assertEqual(attributes, (folder / "hud.attrmap").read_bytes())
                self.assertEqual(attributes, b"\x07" * 640)
                self.assertEqual(rebuild_resource(template, tiles, attributes), template)

    def test_edits_fit_and_preserve_header_and_size(self):
        for region in ("US", "JP"):
            with self.subTest(region=region):
                template = (ROOT / "res" / "ui" / region / "hud.bin").read_bytes()
                _, _, tiles, attributes, _ = decode_resource(template)
                edited_tiles = bytearray(tiles)
                edited_attributes = bytearray(attributes)
                # Change an existing literal tile and recolor the whole map.
                edited_tiles[2 * 20 + 15] = 0x3B
                edited_attributes[:] = b"\x06" * len(attributes)
                rebuilt = rebuild_resource(template, bytes(edited_tiles), bytes(edited_attributes))
                self.assertEqual(rebuilt[:4], template[:4])
                self.assertEqual(len(rebuilt), len(template))
                self.assertEqual(decode_resource(rebuilt)[2:4], (edited_tiles, edited_attributes))

    def test_overflow_preserves_bin(self):
        template = (ROOT / "res" / "ui" / "US" / "hud.bin").read_bytes()
        rng = random.Random(9)
        with tempfile.TemporaryDirectory() as directory:
            folder = Path(directory)
            output = folder / "hud.bin"
            output.write_bytes(template)
            (folder / "hud.tilemap").write_bytes(bytes(rng.randrange(256) for _ in range(640)))
            (folder / "hud.attrmap").write_bytes(b"\x07" * 640)
            with self.assertRaisesRegex(ValueError, "ROM slot"):
                process("rebuild", Path(directory))
            self.assertEqual(output.read_bytes(), template)


class RendererTests(unittest.TestCase):
    def test_bank_one_tiles_require_matching_attributes(self):
        tiles = {0: b"\x80\x00" + bytes(14)}
        colors = [bytes((index, index, index)) for index in range(32)]
        pixels = render_pixels(1, 1, b"\x00", b"\x0A", tiles, colors, tile_bank=1)
        self.assertEqual(pixels[:3], colors[9])
        with self.assertRaisesRegex(ValueError, "VRAM bank 0"):
            render_pixels(1, 1, b"\x00", b"\x02", tiles, colors, tile_bank=1)

    def test_bathroom_preview_matches_both_regions(self):
        png = (ROOT / "res/scene/case2/previews/00-lucky-bath.png").read_bytes()
        self.assertEqual(struct.unpack_from(">II", png, 16), (112, 112))
        for region in ("US", "JP"):
            with self.subTest(region=region):
                self.assertEqual(render_bathroom(ROOT / "res" / BATHROOM / region), png)

    def test_door_patch_replaces_only_its_rectangle(self):
        resources = ROOT / "res"
        tiles = (resources / "scene/case2/00-lucky-bath/s00-bg.tilemap").read_bytes()
        attributes = (resources / "scene/case2/00-lucky-bath/s00-bg.attrmap").read_bytes()
        self.assertEqual(apply_door(tiles, attributes, resources, "closed"), (tiles, attributes))
        opened_tiles, opened_attributes = apply_door(tiles, attributes, resources, "open")
        rectangle = {(y + 2) * 14 + x + 5 for y in range(8) for x in range(4)}
        for index in range(196):
            if index not in rectangle:
                self.assertEqual(opened_tiles[index], tiles[index])
                self.assertEqual(opened_attributes[index], attributes[index])
        self.assertEqual(sum(a != b for a, b in zip(opened_tiles, tiles)), 32)
        self.assertEqual(sum(a != b for a, b in zip(opened_attributes, attributes)), 25)
        self.assertEqual(opened_tiles[2 * 14 + 6:2 * 14 + 8], b"\xFF\xFF")

    def test_open_door_preview_matches_both_regions(self):
        png = render_bathroom(ROOT / "res" / BATHROOM / "US", "open")
        self.assertEqual(render_bathroom(ROOT / "res" / BATHROOM / "JP", "open"), png)
        self.assertNotEqual(render_bathroom(ROOT / "res" / BATHROOM / "US", "closed"), png)

    def test_signed_tile_ids(self):
        tiles = load_tiles(ROOT / "res" / "ui" / "US")
        self.assertEqual(len(tiles), 240)
        self.assertIn(0xFF, tiles)
        self.assertIn(0x10, tiles)
        self.assertNotIn(0, tiles)

    def test_per_cell_palette_and_flips(self):
        # Color 1 at the top-left corner; the rest of the tile is color 0.
        tiles = {0x7F: b"\x80\x00" + b"\x00" * 14}
        colors = [bytes((index, index, index)) for index in range(32)]
        for attribute, x, y in ((7, 0, 0), (0x27, 7, 0), (0x47, 0, 7), (0x67, 7, 7)):
            with self.subTest(attribute=attribute):
                pixels = render_pixels(1, 1, b"\x7F", bytes((attribute,)), tiles, colors)
                offset = (y * 8 + x) * 3
                self.assertEqual(pixels[offset:offset + 3], colors[29])
                self.assertEqual(sum(pixels[index] == 29 for index in range(0, len(pixels), 3)), 1)

    def test_missing_tile_and_bank_are_reported(self):
        colors = [b"\x00\x00\x00"] * 32
        with self.assertRaisesRegex(ValueError, "unextracted tile"):
            render_pixels(1, 1, b"\x00", b"\x07", {}, colors)
        with self.assertRaisesRegex(ValueError, "VRAM bank 1"):
            render_pixels(1, 1, b"\x7F", b"\x0F", {}, colors)

    def test_rgb555_colors(self):
        palette = struct.pack("<4H", 0, 0x001F, 0x03E0, 0x7C00) * 8
        self.assertEqual(palette_colors(palette)[:4],
                         [b"\x00\x00\x00", b"\xFF\x00\x00", b"\x00\xFF\x00", b"\x00\x00\xFF"])

    def test_preview_png_contents(self):
        for region in ("US", "JP"):
            with self.subTest(region=region):
                folder = ROOT / "res" / "ui" / region
                width, height, tiles, attributes, _ = decode_resource((folder / "hud.bin").read_bytes())
                colors = palette_colors((folder / "hud.pal").read_bytes())
                pixels = render_pixels(width, height, tiles, attributes, load_tiles(folder), colors)
                png = (folder / "hud.png").read_bytes()
                self.assertEqual(encode_png(160, 256, pixels), png)
                self.assertEqual(struct.unpack_from(">II", png, 16), (160, 256))
                length = struct.unpack_from(">I", png, 33)[0]
                rows = zlib.decompress(png[41:41 + length])
                self.assertEqual(len(rows), 256 * (1 + 160 * 3))
                self.assertEqual(rows[1:481], pixels[:480])


if __name__ == "__main__":
    unittest.main()
