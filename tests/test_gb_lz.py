# SPDX-License-Identifier: MIT
"""Compression checks using known streams and the extracted US/JP resources."""

from pathlib import Path
import random
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from gb_lz import decode, encode, rebuild_resource
from rebuild_gfx import rebuild_png


class CodecTests(unittest.TestCase):
    def test_literal_flags_are_lsb_first(self):
        stream = b"\x0F\xAA\xBB\xCC\xDD"
        self.assertEqual(decode(stream, 4), (b"\xAA\xBB\xCC\xDD", 5))

    def test_overlapping_reference(self):
        self.assertEqual(decode(b"\x03AB\x00\x03", 8), (b"ABABABAB", 5))

    def test_reference_stops_at_output_size(self):
        self.assertEqual(decode(b"\x01A\x00\x0F", 4), (b"AAAA", 4))

    def test_reference_wrap_at_2048(self):
        data = bytes(range(256)) * 8
        stream = b"".join(b"\xFF" + data[i:i + 8] for i in range(0, len(data), 8))
        # At position $800, $801 resolves to $401 after the $400 wrap.
        stream += b"\x00\x01\x80"
        self.assertEqual(decode(stream, 2051), (data + data[1025:1028], len(stream)))

    def test_invalid_streams(self):
        for stream in (b"", b"\x01", b"\x00\x00", b"\x00\x00\x00"):
            with self.subTest(stream=stream), self.assertRaises(ValueError):
                decode(stream, 16)

    def test_round_trips_across_flag_and_page_boundaries(self):
        rng = random.Random(33)
        samples = [b"", b"A", b"AB" * 2040, bytes(range(256)) * 15]
        samples.extend(bytes(rng.randrange(256) for _ in range(size))
                       for size in (7, 8, 9, 17, 18, 19, 1792, 2048, 4080))
        for data in samples:
            with self.subTest(size=len(data)):
                compressed = encode(data)
                self.assertEqual(decode(compressed, len(data)), (data, len(compressed)))

    def test_original_resources_stay_byte_exact(self):
        for region in ("US", "JP"):
            font = "case1_font" if region == "JP" else "font"
            graphics = region + "/gfx/"
            bathroom = "scene/case2/00-bathroom/" + region + "/"
            for name, expected_size in ((graphics + font, 2048), (graphics + "hud_tiles", 1792),
                                        (graphics + "case2_font", 2048), (graphics + "case2_hud_tiles", 2048),
                                        (bathroom + "s00-bg", 2048),
                                        (bathroom + "s00-bg-extra", 544),
                                        (bathroom + "s00-objects", 1024)):
                with self.subTest(region=region, name=name):
                    path = ROOT / "res" / (name + ".bin")
                    template = path.read_bytes()
                    tiles, _ = decode(template[3:], expected_size)
                    self.assertEqual(template[2] * 16, expected_size)
                    self.assertEqual(rebuild_resource(template, tiles), template)

    def test_edited_resources_keep_header_size_and_pixels(self):
        for region in ("US", "JP"):
            font = "case1_font" if region == "JP" else "font"
            graphics = region + "/gfx/"
            bathroom = "scene/case2/00-bathroom/" + region + "/"
            for name in (graphics + font, graphics + "hud_tiles", graphics + "case2_font", graphics + "case2_hud_tiles",
                         bathroom + "s00-bg",
                         bathroom + "s00-bg-extra",
                         bathroom + "s00-objects"):
                with self.subTest(region=region, name=name):
                    path = ROOT / "res" / (name + ".bin")
                    template = path.read_bytes()
                    tiles, _ = decode(template[3:], template[2] * 16)
                    edited = bytearray(tiles)
                    edited[0] ^= 0x80
                    rebuilt = rebuild_resource(template, bytes(edited))
                    self.assertEqual(rebuilt[:3], template[:3])
                    self.assertEqual(len(rebuilt), len(template))
                    self.assertEqual(decode(rebuilt[3:], len(edited))[0], edited)

    def test_tile_count_and_slot_limit(self):
        template = b"\x1D\x10\x01" + encode(b"A" * 16)
        with self.assertRaisesRegex(ValueError, "tile count"):
            rebuild_resource(template, b"A" * 32)
        with self.assertRaisesRegex(ValueError, "ROM slot"):
            rebuild_resource(template, bytes(range(16)))


class ConversionTests(unittest.TestCase):
    def test_shared_png_uses_separate_output_tiles(self):
        with tempfile.TemporaryDirectory() as directory:
            folder = Path(directory)
            png = folder / "shared.png"
            tiles = bytes(16)
            template = b"\x1D\x00\x01" + encode(tiles)

            def write_tiles(command, **kwargs):
                Path(command[command.index("-o") + 1]).write_bytes(tiles)

            with patch("rebuild_gfx.subprocess.run", side_effect=write_tiles):
                for region in ("US", "JP"):
                    output = folder / region / "scene.bin"
                    output.parent.mkdir()
                    output.write_bytes(template)
                    rebuild_png(png, output)
                    self.assertEqual(output.with_suffix(".2bpp").read_bytes(), tiles)
                    self.assertEqual(output.read_bytes(), template)
            self.assertFalse(png.with_suffix(".2bpp").exists())

    def test_overflow_keeps_existing_bin(self):
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory) / "hud_tiles.bin"
            png = Path(directory) / "hud_tiles.png"
            template = b"\x1D\x10\x01" + encode(b"A" * 16)
            output.write_bytes(template)

            def write_tiles(*args, **kwargs):
                png.with_suffix(".2bpp").write_bytes(bytes(range(16)))

            with patch("rebuild_gfx.subprocess.run") as convert:
                convert.side_effect = write_tiles
                with self.assertRaisesRegex(ValueError, "ROM slot"):
                    rebuild_png(png, output)
            self.assertEqual(output.read_bytes(), template)

    def test_rgbgfx_failure_keeps_existing_bin(self):
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory) / "font.bin"
            template = b"original resource"
            output.write_bytes(template)
            failure = subprocess.CalledProcessError(1, "rgbgfx")
            with patch("rebuild_gfx.subprocess.run", side_effect=failure):
                with self.assertRaises(subprocess.CalledProcessError):
                    rebuild_png(Path(directory) / "font.png", output)
            self.assertEqual(output.read_bytes(), template)


if __name__ == "__main__":
    unittest.main()
