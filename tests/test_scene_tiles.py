# SPDX-License-Identifier: MIT
"""Colored scene atlases must keep pixel IDs independent of RGB values."""

from pathlib import Path
import sys
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from gb_lz import encode
from rebuild_gfx import rebuild_png
from scene_tiles import decode_atlas, encode_atlas, read_indices, select_palettes


class SceneAtlasTests(unittest.TestCase):
    def test_repeated_rgb_colors_preserve_pixel_ids_and_tile_order(self):
        # Even an all-black palette must retain four distinct pixel IDs.
        tiles = bytes(range(48))
        png = encode_atlas(tiles, 3, bytes(64), {0x80: 7, 0x81: 2}, first_tile=0x80)
        self.assertEqual(decode_atlas(png), tiles)
        width, height, indices = read_indices(png)
        self.assertEqual((width, height), (24, 8))
        self.assertEqual({value // 4 for value in indices[:8]}, {7})
        self.assertEqual({value // 4 for value in indices[8:16]}, {2})

    def test_palette_selection_tracks_usage_and_unused_tiles(self):
        selected, fallback = select_palettes([(5, 2), (5, 3), (5, 3), (6, 2)])
        self.assertEqual(selected, {5: 3, 6: 2})
        self.assertEqual(fallback, 2)

    def test_colored_bathroom_atlas_preserves_compressed_slot(self):
        folder = ROOT / "res/scene/case2/00-lucky-bath"
        for stem in ("s00-bg", "s00-bg-extra",
                     "s00-objects"):
            for region in ("US", "JP"):
                with self.subTest(stem=stem, region=region), tempfile.TemporaryDirectory() as directory:
                    template = (folder / region / (stem + ".bin")).read_bytes()
                    output = Path(directory) / "resource.bin"
                    output.write_bytes(template)
                    changed, size = rebuild_png(folder / (stem + ".png"), output, scene_atlas=True)
                    self.assertFalse(changed)
                    self.assertEqual(size, len(template))
                    self.assertEqual(output.read_bytes(), template)

    def test_edited_colored_pixel_changes_tile_data(self):
        palette = bytes(64)
        original = bytes(16)
        edited = b"\x80\x00" + bytes(14)
        with tempfile.TemporaryDirectory() as directory:
            folder = Path(directory)
            atlas, output = folder / "tile.png", folder / "tile.bin"
            output.write_bytes(b"\x1D\x00\x01" + encode(original) + bytes(32))
            atlas.write_bytes(encode_atlas(edited, 1, palette, {0: 6}))
            self.assertTrue(rebuild_png(atlas, output, scene_atlas=True)[0])
            self.assertEqual(output.with_suffix(".2bpp").read_bytes(), edited)


if __name__ == "__main__":
    unittest.main()
