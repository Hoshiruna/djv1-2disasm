# SPDX-License-Identifier: MIT
"""Checks for sprite transparency, priority, clipping, and bathroom selection."""

from pathlib import Path
import sys
import unittest

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from bathroom_preview import render, scene_objects
from gb_sprites import decode_metasprites, emit_oam, overlay


class SpriteTests(unittest.TestCase):
    def setUp(self):
        self.background = b"\x10\x20\x30" * 64
        self.indices = bytes(64)
        self.priority = bytes(64)
        self.colors = [bytes((index, index, index)) for index in range(32)]

    def draw(self, oam, tiles, indices=None, priority=None):
        return overlay(8, 8, self.background,
                       self.indices if indices is None else indices,
                       self.priority if priority is None else priority,
                       oam, tiles, self.colors)

    def test_transparency_flips_and_palette(self):
        tile = b"\x80\x00" + bytes(14)
        pixels = self.draw([(16, 8, 0, 2)], {0: tile})
        self.assertEqual(pixels[:3], self.colors[9])
        self.assertEqual(pixels[3:], self.background[3:])
        flipped = self.draw([(16, 8, 0, 0x60)], {0: tile})
        self.assertEqual(flipped[:-3], self.background[:-3])
        self.assertEqual(flipped[-3:], self.colors[1])

    def test_oam_order_includes_background_hidden_sprite(self):
        tiles = {0: b"\xff\x00" * 8, 1: b"\x00\xff" * 8}
        front = [(16, 8, 0, 0), (16, 8, 1, 0)]
        self.assertEqual(self.draw(front, tiles), self.colors[1] * 64)
        front[0] = (16, 8, 0, 0x80)
        self.assertEqual(self.draw(front, tiles, bytes([1]) * 64), self.background)
        self.assertEqual(self.draw(front, tiles), self.colors[1] * 64)
        self.assertEqual(self.draw(front, tiles, bytes([1]) * 64, bytes([0x80]) * 64),
                         self.background)

    def test_transparent_front_sprite_allows_later_sprite(self):
        tiles = {0: bytes(16), 1: b"\x00\xff" * 8}
        pixels = self.draw([(16, 8, 0, 0), (16, 8, 1, 0)], tiles)
        self.assertEqual(pixels, self.colors[2] * 64)

    def test_scanline_limit_counts_offscreen_and_transparent_sprites(self):
        tiles = {0: bytes(16), 1: b"\xff\x00" * 8}
        oam = [(16, 0, 0, 0)] * 10 + [(16, 8, 1, 0)]
        self.assertEqual(self.draw(oam, tiles), self.background)
        oam[0] = (24, 0, 0, 0)
        self.assertEqual(self.draw(oam, tiles), self.colors[1] * 64)

    def test_writer_wraps_offsets_and_skips_clipped_parts(self):
        parts = [(0, 0, 0, 0), (0xFF, 0xFE, 1, 0), (0, 0, 0xFF, 0),
                 (0xA0, 0, 2, 0), (0, 0xA8, 2, 0)]
        self.assertEqual(emit_oam([(0, 0, parts)]), [(16, 8, 0, 0), (15, 6, 1, 0)])
        self.assertEqual(len(emit_oam([(0, 0, [(0, 0, 0, 0)] * 41)])), 40)
        self.assertEqual(emit_oam([(0, 8, [(0, 0, 0, 0)])], scroll_y=8),
                         [(16, 8, 0, 0)])

    def test_partial_sprite_is_clipped_to_image(self):
        tiles = {0: b"\xff\x00" * 8}
        pixels = self.draw([(12, 4, 0, 0)], tiles)
        for y in range(8):
            for x in range(8):
                offset = (y * 8 + x) * 3
                expected = self.colors[1] if x < 4 and y < 4 else b"\x10\x20\x30"
                self.assertEqual(pixels[offset:offset + 3], expected)

    def test_truncated_definitions_and_missing_graphics(self):
        with self.assertRaises(ValueError):
            decode_metasprites(b"\x01\x00")
        with self.assertRaises(ValueError):
            self.draw([(16, 8, 0, 0)], {})
        with self.assertRaises(ValueError):
            self.draw([(16, 8, 0, 8)], {0: bytes(16)})

    def test_bathroom_initial_selection_and_regional_previews(self):
        objects = scene_objects(ROOT / "res" / "shared")
        self.assertEqual([(x, y, len(parts)) for x, y, parts in objects],
                         [(78, 45, 4), (41, 23, 10), (57, 23, 8)])
        oam = emit_oam(objects)
        self.assertEqual(len(oam), 22)
        self.assertEqual({part[2] for part in oam}, set(range(0x16)))
        for door in ("base", "closed", "open"):
            with self.subTest(door=door):
                us = render(ROOT / "res" / "US", door, objects=True)
                jp = render(ROOT / "res" / "JP", door, objects=True)
                self.assertEqual(us, jp)
                self.assertNotEqual(us, render(ROOT / "res" / "US", door))

    def test_presence_and_visibility_are_independent(self):
        shared = ROOT / "res" / "shared"
        # An enabled visibility flag cannot resurrect an absent object.
        present = scene_objects(shared, visible={0, 1, 2, 3, 4}, present={1, 2})
        self.assertEqual([(x, y) for x, y, _ in present], [(41, 23), (57, 23)])
        hidden = scene_objects(shared, visible=set(), present={0, 1, 2})
        self.assertEqual(hidden, [])


if __name__ == "__main__":
    unittest.main()
