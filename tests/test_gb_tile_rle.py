# SPDX-License-Identifier: MIT
"""Checks for planar tile ordering, cross-plane runs, and truncation."""

from pathlib import Path
import sys
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from gb_tile_rle import decode_resource, rebuild_resource
from rebuild_gfx import rebuild_png
from scene_tiles import encode_atlas


class TileRleTests(unittest.TestCase):
    def test_planes_are_interleaved_into_tile_rows(self):
        resource = b"\x11\x00\xff\x01" + bytes(range(16))
        tiles, consumed = decode_resource(resource)
        self.assertEqual(tiles, bytes(value for row in range(8) for value in (row, row + 8)))
        self.assertEqual(consumed, len(resource))

    def test_run_can_cross_the_plane_boundary(self):
        resource = b"\x11\x00\x15\x01\x15\x15\x0f"
        self.assertEqual(decode_resource(resource), (b"\x15" * 16, 7))

    def test_truncated_stream_and_run_are_rejected(self):
        for stream in (b"", b"\x15", b"\x15\x00"):
            with self.subTest(stream=stream), self.assertRaisesRegex(ValueError, "Truncated"):
                decode_resource(b"\x11\x00\x15\x01" + stream)

    def test_unchanged_noncanonical_stream_is_preserved(self):
        template = b"\x10\x80\xff\x01" + b"\x00" * 16 + b"\xff\xff"
        self.assertEqual(rebuild_resource(template, bytes(16)), template)

    def test_edit_preserves_planes_marker_and_slot_size(self):
        template = b"\x11\x80\x15\x01" + bytes(16)
        tiles = bytes(value for row in range(8) for value in (0x15, row))
        rebuilt = rebuild_resource(template, tiles)
        self.assertEqual(rebuilt[:4], template[:4])
        self.assertEqual(len(rebuilt), len(template))
        self.assertEqual(decode_resource(rebuilt)[0], tiles)

    def test_tile_count_cannot_change(self):
        template = b"\x11\x00\xff\x01" + bytes(16)
        with self.assertRaisesRegex(ValueError, "keep the tile count"):
            rebuild_resource(template, bytes(32))

    def test_colored_png_rebuild_uses_planar_codec(self):
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory) / "g80.bin"
            png = Path(directory) / "objects.png"
            output.write_bytes(b"\x10\x00\xff\x01" + bytes(16))
            tiles = b"\x55\xaa" * 8
            png.write_bytes(encode_atlas(tiles, 1, bytes(64), {0: 7}))
            self.assertTrue(rebuild_png(png, output, scene_atlas=True)[0])
            self.assertEqual(decode_resource(output.read_bytes())[0], tiles)

    def test_overflow_does_not_replace_resource(self):
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory) / "g80.bin"
            png = Path(directory) / "objects.png"
            template = b"\x10\x00\xff\x01\xff\x00\x0f"
            output.write_bytes(template)
            png.write_bytes(encode_atlas(bytes(range(16)), 1, bytes(64), {}))
            with self.assertRaisesRegex(ValueError, "ROM slot"):
                rebuild_png(png, output, scene_atlas=True)
            self.assertEqual(output.read_bytes(), template)


if __name__ == "__main__":
    unittest.main()
