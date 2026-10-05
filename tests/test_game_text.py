# SPDX-License-Identifier: MIT
"""Checks for text controls, regional glyphs, and shared pointer slots."""

import json
from pathlib import Path
import struct
import sys
import unittest

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from game_text import BANK_SIZE, decode_message, extract_dialogue, extract_names


def charmap(region):
    path = ROOT / "res" / region / "text" / "charmap.json"
    return json.loads(path.read_text(encoding="utf-8"))


class TextTests(unittest.TestCase):
    def test_us_control_arguments_can_contain_terminators(self):
        decoded = decode_message(b"\x00\x3e\x1f\xc5\x1d\x19\x1f", charmap("US"), 1)
        self.assertEqual(decoded["text"], "A[OBJECT_WRAM:1FC5]\nZ[END]")
        self.assertEqual(decoded["consumed"], 7)
        self.assertEqual(decoded["controls"][0]["arguments"], "1FC5")

    def test_jp_control_arguments_can_contain_terminators(self):
        decoded = decode_message(b"\x04\xff\xc5\x16\xff", charmap("JP"), 1)
        self.assertEqual(decoded["text"], "[NUM8_WRAM:FFC5]が[END]")
        self.assertEqual(decoded["consumed"], 5)

    def test_jp_opening_kana_and_diacritics(self):
        raw = bytes.fromhex("ECE47FF2167F9BF2E0A1FF")
        self.assertEqual(decode_message(raw, charmap("JP"), 1)["text"],
                         "ふと めが さめた。[END]")
        self.assertEqual(decode_message(bytes.fromhex("7D5A60FF"), charmap("JP"), 1)["text"],
                         "ぺパだ[END]")

    def test_case_specific_jp_letters(self):
        raw = bytes.fromhex("C7A5CDFF")
        self.assertEqual(decode_message(raw, charmap("JP"), 1)["text"], "J・S[END]")
        self.assertEqual(decode_message(raw, charmap("JP"), 2)["text"], "M・Y[END]")
        self.assertEqual(decode_message(bytes.fromhex("0102A6A7A9FEFF"), charmap("JP"), 2)["text"],
                         "&TABD/[END]")

    def test_names_do_not_dispatch_controls(self):
        decoded = decode_message(b"\x16\xff\xff", charmap("JP"), 1, names=True)
        self.assertEqual(decoded["text"], "が")
        self.assertEqual(decoded["consumed"], 2)
        decoded = decode_message(bytes.fromhex("7F7F7FD7BD6D36BD"), charmap("JP"), 2, names=True)
        # This name uses the hiragana glyph for "be" in the ROM.
        self.assertEqual(decoded["text"], "   ラスべガス")
        self.assertIsNone(decoded["terminator"])

    def test_wait_ends_reader_and_unknown_glyphs_are_kept(self):
        decoded = decode_message(b"\x00\x5f\x01\x1f", charmap("US"), 1)
        self.assertEqual(decoded["text"], "A[WAIT_END]")
        self.assertEqual(decoded["consumed"], 2)
        decoded = decode_message(b"\xfe\xff", charmap("JP"), 1)
        self.assertEqual(decoded["text"], "[BYTE:FE][END]")
        self.assertEqual(decoded["unknown_codes"], [{"offset": 0, "code": "FE"}])

    def test_truncated_control_and_missing_end_are_errors(self):
        for raw, region in ((b"\x3e\xc5", "US"), (b"\x00", "US"),
                            (b"\x04\xff", "JP"), (b"\x91", "JP")):
            with self.subTest(raw=raw, region=region), self.assertRaises(ValueError):
                decode_message(raw, charmap(region), 1)

    def test_preview_wraps_without_counting_tags_as_glyphs(self):
        decoded = decode_message(b"\x00" * 19 + b"\x1f", charmap("US"), 1, wrap_width=18)
        self.assertEqual(decoded["text"], "A" * 18 + "\nA[END]")
        raw = b"\x3e\x37\xc5" + b"\x00" * 19 + b"\x1d" + b"\x01" * 19 + b"\x1f"
        decoded = decode_message(raw, charmap("US"), 1, wrap_width=18)
        self.assertEqual(decoded["text"], "[OBJECT_WRAM:37C5]" + "A" * 19 + "\n" +
                         "B" * 18 + "\nB[END]")

    def test_alias_slots_and_invalid_pointer(self):
        rom = bytearray(0x19 * BANK_SIZE)
        for bank in range(0x0C, 0x19):
            count = 64 if bank in (0x0F, 0x10) else 128
            address = 0x4000 + count * 2
            start = bank * BANK_SIZE
            struct.pack_into("<{}H".format(count), rom, start, *([address] * count))
            rom[start + count * 2:start + count * 2 + 2] = b"\x00\x1f"
        tables, messages = extract_dialogue(rom, "US", charmap("US"))
        self.assertEqual(sum(len(table["slots"]) for table in tables), 1536)
        self.assertEqual(len(messages), 13)
        self.assertEqual(tables[0]["slots"], ["0C:4100"] * 128)
        struct.pack_into("<H", rom, 0x0C * BANK_SIZE, 0x4001)
        with self.assertRaisesRegex(ValueError, "Invalid text pointer"):
            extract_dialogue(rom, "US", charmap("US"))

    def test_us_name_prefix_is_preserved_and_skipped(self):
        rom = bytearray(0x19 * BANK_SIZE)
        for bank, address, count in ((0x11, 0x58EC, 240), (0x18, 0x54F0, 256)):
            start = bank * BANK_SIZE + address - 0x4000
            rom[start:start + count * 16] = b"\x1f" * (count * 16)
            rom[start:start + 16] = b"\x1f\x00\x01\x02" + b"\x1f" * 12
        tables = extract_names(rom, "US", charmap("US"))
        self.assertEqual([len(table["entries"]) for table in tables], [240, 256])
        self.assertEqual(tables[0]["entries"][0]["text"], "ABC")
        self.assertTrue(tables[0]["entries"][0]["raw"].startswith("1F000102"))


if __name__ == "__main__":
    unittest.main()
