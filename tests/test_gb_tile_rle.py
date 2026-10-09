# SPDX-License-Identifier: MIT
"""Checks for planar tile ordering, cross-plane runs, and truncation."""

from pathlib import Path
import sys
import unittest

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from gb_tile_rle import decode_resource


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


if __name__ == "__main__":
    unittest.main()
