# SPDX-License-Identifier: MIT
"""Checks for editable text, fixed slots, and bank resource writeback."""

from pathlib import Path
import re
import shutil
import sys
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

from game_text import BANK_SIZE, decode_message, rom_offset
from text_codec import editable_text, encode_text, flatten, rebuild_message, rebuild_name
from text_resources import bank_path, parse_blocks, prepare, read_json, rebuild


def load_charmap(region):
    return read_json(ROOT / "res" / "text" / region / "charmap.json")


def original_rom(region):
    """Use tracked resources; the tests do not need a local ROM or assembler."""
    folder = ROOT / "res" / "text" / region
    document = read_json(folder / "dialogue.json")
    rom = bytearray(0x19 * BANK_SIZE)
    for table in document["pointer_tables"]:
        start = int(table["bank"], 16) * BANK_SIZE
        rom[start:start + BANK_SIZE] = bank_path(folder, table["bank"]).read_bytes()
        pointers = bytes.fromhex(table["raw"])
        rom[start:start + len(pointers)] = pointers
    for message in document["messages"]:
        start = int(message["rom_offset"], 16)
        raw = bytes.fromhex(message["raw"])
        rom[start:start + len(raw)] = raw
    for table in document["name_tables"]:
        for entry in table["entries"]:
            start = rom_offset(int(table["bank"], 16), int(entry["address"], 16))
            raw = bytes.fromhex(entry["raw"])
            rom[start:start + len(raw)] = raw
    return bytes(rom)


def prepare_fixture(folder, region):
    folder.mkdir(parents=True)
    source = ROOT / "res" / "text" / region
    for name in ("dialogue.json", "charmap.json"):
        shutil.copyfile(str(source / name), str(folder / name))
    rom = original_rom(region)
    prepare(folder, region, rom)
    return rom


class CodecTests(unittest.TestCase):
    def test_every_exported_message_and_name_can_be_encoded(self):
        for region in ("US", "JP"):
            folder = ROOT / "res" / "text" / region
            document, charmap = read_json(folder / "dialogue.json"), load_charmap(region)
            for message in document["messages"]:
                with self.subTest(region=region, message=message["id"]):
                    raw = bytes.fromhex(message["raw"])
                    text = editable_text(raw, charmap, message["case"])
                    encoded = encode_text(text, charmap, message["case"])
                    self.assertEqual(decode_message(encoded, charmap, message["case"])["text"],
                                     decode_message(raw, charmap, message["case"])["text"])
                    self.assertEqual(rebuild_message(raw, text, charmap, message["case"]), raw)
            for table in document["name_tables"]:
                for entry in table["entries"]:
                    raw = bytes.fromhex(entry["raw"])
                    payload = raw[1:] if region == "US" else raw
                    text = editable_text(payload, charmap, table["case"], names=True)
                    self.assertEqual(rebuild_name(raw, text, charmap, table["case"]), raw)

    def test_physical_wraps_and_explicit_lines_differ(self):
        charmap = load_charmap("US")
        self.assertEqual(encode_text("AB\nCD[END]", charmap, 1), b"\x00\x01\x02\x03\x1f")
        self.assertEqual(encode_text("AB[LINE]\nCD[END]", charmap, 1),
                         b"\x00\x01\x1d\x02\x03\x1f")

    def test_jp_case_fonts_voiced_kana_and_normalization(self):
        charmap = load_charmap("JP")
        self.assertEqual(encode_text("J・S[END]", charmap, 1), bytes.fromhex("C7A5CDFF"))
        self.assertEqual(encode_text("M・Y[END]", charmap, 2), bytes.fromhex("C7A5CDFF"))
        self.assertEqual(encode_text("か\u3099[END]", charmap, 1), b"\x16\xff")
        self.assertEqual(encode_text("[NUM8_WRAM:FFC5]が[END]", charmap, 1),
                         bytes.fromhex("04FFC516FF"))

    def test_ambiguous_control_and_unknown_glyph_escape(self):
        charmap = load_charmap("JP")
        raw = bytes.fromhex("0316FEFF")
        text = editable_text(raw, charmap, 1)
        self.assertEqual(flatten(text), "[FINISH_STATE@03]が[BYTE:FE][END]")
        self.assertEqual(encode_text(text, charmap, 1), raw)

    def test_invalid_edits_are_rejected(self):
        charmap = load_charmap("US")
        for text in ("a[END]", "A[OBJECT_WRAM:C5][END]", "A[END]B", "A", "[BYTE:1F]"):
            with self.subTest(text=text), self.assertRaises(ValueError):
                encode_text(text, charmap, 1)
        with self.assertRaisesRegex(ValueError, "slot holds"):
            rebuild_message(b"\x00\x1f", "AB[END]", charmap, 1)
        with self.assertRaisesRegex(ValueError, "original message ending"):
            rebuild_message(b"\x00\x5f", "B[END]", charmap, 1)

    def test_name_width_prefix_and_full_jp_slot(self):
        us = load_charmap("US")
        original = b"\x1f\x00" + b"\x1f" * 14
        self.assertEqual(rebuild_name(original, "B", us, 1), b"\x1f\x01" + b"\x1f" * 14)
        with self.assertRaises(ValueError):
            rebuild_name(original, "A" * 15, us, 1)
        jp = load_charmap("JP")
        full = rebuild_name(b"\xff" * 8, "あいうえおかきく", jp, 1)
        self.assertEqual(full, bytes.fromhex("9192939495969798"))
        self.assertIsNone(decode_message(full, jp, 1, names=True)["terminator"])
        with self.assertRaises(ValueError):
            rebuild_name(b"\xff" * 8, "あ" * 9, jp, 1)


class ResourceTests(unittest.TestCase):
    def test_unchanged_banks_are_identical_and_prepare_preserves_edits(self):
        for region in ("US", "JP"):
            with self.subTest(region=region), tempfile.TemporaryDirectory() as directory:
                folder = Path(directory) / region
                rom = prepare_fixture(folder, region)
                self.assertEqual(rebuild(folder, region), (0, 0))
                document = read_json(folder / "dialogue.json")
                for table in document["pointer_tables"]:
                    start = int(table["bank"], 16) * BANK_SIZE
                    self.assertEqual(bank_path(folder, table["bank"]).read_bytes(),
                                     rom[start:start + BANK_SIZE])
                index = read_json(folder / "editor.json")
                self.assertTrue(all(len(group["messages"]) <= 16 for group in index["dialogue_files"]))
                with self.assertRaises(ValueError):
                    prepare(folder, region, rom)

    def test_edits_write_correct_bytes_preserve_pointers_and_can_be_reverted(self):
        for region, old, new in (("US", "YOU AWAKE", "YOU WAKE "), ("JP", "ふと", "そと")):
            with self.subTest(region=region), tempfile.TemporaryDirectory() as directory:
                folder = Path(directory) / region
                rom = prepare_fixture(folder, region)
                path = folder / "case1" / "dialogue_000.txt"
                source = path.read_text(encoding="utf-8")
                self.assertIn(old, source)
                path.write_text(source.replace(old, new, 1), encoding="utf-8")
                self.assertEqual(rebuild(folder, region), (1, 0))
                bank = bank_path(folder, "0C").read_bytes()
                self.assertEqual(bank[:0x100], rom[0x30000:0x30100])
                self.assertNotEqual(bank, rom[0x30000:0x34000])
                self.assertTrue(decode_message(bank[0x100:], load_charmap(region), 1)["text"].startswith(new))
                path.write_text(source, encoding="utf-8")
                self.assertEqual(rebuild(folder, region), (0, 0))
                self.assertEqual(bank_path(folder, "0C").read_bytes(), rom[0x30000:0x34000])

    def test_failure_in_later_file_leaves_all_banks_untouched(self):
        with tempfile.TemporaryDirectory() as directory:
            folder = Path(directory) / "US"
            rom = prepare_fixture(folder, "US")
            first = folder / "case1" / "dialogue_000.txt"
            first.write_text(first.read_text(encoding="utf-8").replace("YOU", "OUR", 1), encoding="utf-8")
            last = folder / "case2" / "dialogue_053.txt"
            source = last.read_text(encoding="utf-8")
            source = source.replace("[END]", "A" * 1000 + "[END]", 1)
            last.write_text(source, encoding="utf-8")
            with self.assertRaisesRegex(ValueError, "slot holds"):
                rebuild(folder, "US")
            for bank in ("0C", "18"):
                start = int(bank, 16) * BANK_SIZE
                self.assertEqual(bank_path(folder, bank).read_bytes(), rom[start:start + BANK_SIZE])

    def test_name_edits_and_missing_blocks(self):
        with tempfile.TemporaryDirectory() as directory:
            folder = Path(directory) / "US"
            prepare_fixture(folder, "US")
            path = folder / "case1" / "names_00.txt"
            source = path.read_text(encoding="utf-8")
            path.write_text(source.replace("COIN", "TOKEN", 1), encoding="utf-8")
            self.assertEqual(rebuild(folder, "US"), (0, 1))
            raw = bank_path(folder, "11").read_bytes()[0x18EC:0x18FC]
            self.assertEqual(decode_message(raw[1:], load_charmap("US"), 1, names=True)["text"], "TOKEN")
            path.write_text(source.replace("[NAME:00]", "[NAME:FF]", 1), encoding="utf-8")
            with self.assertRaisesRegex(ValueError, "missing blocks"):
                rebuild(folder, "US")

    def test_asm_includes_fill_each_bank_and_keep_label_addresses(self):
        for region in ("US", "JP"):
            document = read_json(ROOT / "res" / "text" / region / "dialogue.json")
            for table in document["pointer_tables"]:
                bank = int(table["bank"], 16)
                source = (ROOT / "asm" / region / ("bank_{:03x}.asm".format(bank))).read_text(encoding="utf-8")
                cursor = 0
                for line in source.splitlines():
                    include = re.match(r'\s*INCBIN "([^\"]+)", \$([0-9a-f]+), \$([0-9a-f]+)$', line)
                    label = re.match(r'^\w+_([0-9a-f]{4}):{1,2}$', line)
                    if include:
                        path, offset, length = include.groups()
                        self.assertEqual(int(offset, 16), cursor)
                        self.assertTrue((ROOT / "asm" / region / path).is_file())
                        cursor += int(length, 16)
                    elif label:
                        self.assertEqual(int(label.group(1), 16), 0x4000 + cursor)
                self.assertEqual(cursor, BANK_SIZE)


if __name__ == "__main__":
    unittest.main()
