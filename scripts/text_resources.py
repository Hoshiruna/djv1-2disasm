#!/usr/bin/env python3
# SPDX-License-Identifier: MIT
"""Split dialogue into editable files or encode edits into fixed text banks."""

import argparse
from collections import defaultdict
import json
from pathlib import Path
import re

from game_text import BANK_SIZE, rom_offset
from text_codec import editable_text, rebuild_message, rebuild_name


ROOT = Path(__file__).resolve().parents[1]
HEADER = re.compile(r"^\[([0-9A-F]{2}:[0-9A-F]{4}|NAME:[0-9A-F]{2})\]$", re.MULTILINE)


def read_json(path):
    return json.loads(path.read_text(encoding="utf-8"))


def write_json(path, value):
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def load_sources(folder, region):
    document = read_json(folder / "dialogue.json")
    charmap = read_json(folder / "charmap.json")
    if document["region"] != region or charmap["region"] != region:
        raise ValueError("Text resources do not match the selected region")
    return document, charmap


def bank_path(folder, bank):
    return folder / "banks" / (bank.lower() + ".bin")


def parse_blocks(path, expected):
    source = path.read_text(encoding="utf-8-sig").replace("\r", "")
    matches = list(HEADER.finditer(source))
    blocks = {}
    for index, match in enumerate(matches):
        key = match.group(1)
        if key in blocks:
            raise ValueError("{}: duplicate block {}".format(path.name, key))
        end = matches[index + 1].start() if index + 1 < len(matches) else len(source)
        blocks[key] = source[match.end():end]
    if set(blocks) != set(expected):
        missing = sorted(set(expected) - set(blocks))
        extra = sorted(set(blocks) - set(expected))
        raise ValueError("{}: missing blocks {}; unexpected blocks {}".format(
            path.name, missing, extra))
    return blocks


def prepare(folder, region, rom):
    """Create 16-message files and 32-name files without replacing edits."""
    if (folder / "editor.json").exists():
        raise ValueError("Editable files already exist; use rebuild to encode them")
    document, charmap = load_sources(folder, region)
    pending, grouped = {}, defaultdict(list)
    index = {"format_version": 1, "region": region, "dialogue_files": [], "name_files": []}
    banks = {}
    for table in document["pointer_tables"]:
        bank = table["bank"]
        start = int(bank, 16) * BANK_SIZE
        data = rom[start:start + BANK_SIZE]
        if len(data) != BANK_SIZE or not data.startswith(bytes.fromhex(table["raw"])):
            raise ValueError("Source ROM does not match text bank ${}".format(bank))
        banks[bank] = data
    for message in document["messages"]:
        start = int(message["rom_offset"], 16)
        raw = bytes.fromhex(message["raw"])
        if rom[start:start + len(raw)] != raw:
            raise ValueError("Source ROM does not match message {}".format(message["id"]))
        grouped[message["case"]].append(message)
    for case, messages in sorted(grouped.items()):
        for offset in range(0, len(messages), 16):
            group = messages[offset:offset + 16]
            path = "case{}/dialogue_{:03d}.txt".format(case, offset // 16)
            lines = ["; Case {} dialogue. Keep block IDs and control tags.".format(case),
                     "; Physical newlines are visual. Use [LINE] for a game line break.", ""]
            for message in group:
                lines.extend(["[{}]".format(message["id"]), editable_text(
                    bytes.fromhex(message["raw"]), charmap, case), ""])
            pending[path] = "\n".join(lines) + "\n"
            index["dialogue_files"].append({"path": path,
                                          "messages": [m["id"] for m in group]})
    for table in document["name_tables"]:
        case, bank = table["case"], int(table["bank"], 16)
        for entry in table["entries"]:
            start = rom_offset(bank, int(entry["address"], 16))
            raw = bytes.fromhex(entry["raw"])
            if rom[start:start + len(raw)] != raw:
                raise ValueError("Source ROM does not match Case {} name {}".format(case, entry["index"]))
        for offset in range(0, len(table["entries"]), 32):
            group = table["entries"][offset:offset + 32]
            path = "case{}/names_{:02d}.txt".format(case, offset // 32)
            lines = ["; Case {} object names. Keep block IDs and spaces.".format(case),
                     "; Text controls are not allowed in names.", ""]
            for entry in group:
                raw = bytes.fromhex(entry["raw"])
                payload = raw[1:] if region == "US" else raw
                lines.extend(["[NAME:{}]".format(entry["index"]),
                              editable_text(payload, charmap, case, names=True), ""])
            pending[path] = "\n".join(lines) + "\n"
            index["name_files"].append({"path": path, "case": case,
                                      "names": ["NAME:" + e["index"] for e in group]})
    for path in pending:
        if (folder / path).exists():
            raise ValueError("Refusing to replace existing editable file {}".format(path))
    for bank, data in banks.items():
        path = bank_path(folder, bank)
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(data)
    for name, text in pending.items():
        path = folder / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text, encoding="utf-8")
    write_json(folder / "editor.json", index)
    return len(index["dialogue_files"]), len(index["name_files"])


def rebuild(folder, region):
    """Validate all edits before writing any bank; addresses stay unchanged."""
    document, charmap = load_sources(folder, region)
    index = read_json(folder / "editor.json")
    if index["region"] != region:
        raise ValueError("Editable file index does not match the selected region")
    banks = {}
    for table in document["pointer_tables"]:
        bank = table["bank"]
        data = bank_path(folder, bank).read_bytes()
        if len(data) != BANK_SIZE:
            raise ValueError("Text bank ${} must contain 16384 bytes".format(bank))
        banks[bank] = bytearray(data)
        pointers = bytes.fromhex(table["raw"])
        banks[bank][:len(pointers)] = pointers
    edits = {}
    for group in index["dialogue_files"]:
        blocks = parse_blocks(folder / group["path"], group["messages"])
        if set(blocks) & set(edits):
            raise ValueError("A dialogue ID occurs in multiple files")
        edits.update(blocks)
    if set(edits) != {message["id"] for message in document["messages"]}:
        raise ValueError("Editable files do not cover every original message")
    changed_messages = 0
    for message in document["messages"]:
        key = message["id"]
        original = bytes.fromhex(message["raw"])
        try:
            encoded = rebuild_message(original, edits[key], charmap, message["case"])
        except ValueError as error:
            raise ValueError("{}: {}".format(key, error)) from error
        bank, address = key.split(":")
        offset = int(address, 16) - 0x4000
        banks[bank][offset:offset + len(original)] = encoded
        changed_messages += encoded != original
    name_edits = {}
    for group in index["name_files"]:
        blocks = parse_blocks(folder / group["path"], group["names"])
        for key, text in blocks.items():
            identifier = (group["case"], key[5:])
            if identifier in name_edits:
                raise ValueError("A name ID occurs in multiple files")
            name_edits[identifier] = text
    expected = {(table["case"], e["index"]) for table in document["name_tables"]
                for e in table["entries"]}
    if set(name_edits) != expected:
        raise ValueError("Editable files do not cover every original name")
    changed_names = 0
    for table in document["name_tables"]:
        for entry in table["entries"]:
            original = bytes.fromhex(entry["raw"])
            try:
                encoded = rebuild_name(original, name_edits[(table["case"], entry["index"])],
                                       charmap, table["case"])
            except ValueError as error:
                raise ValueError("Case {} name {}: {}".format(table["case"], entry["index"], error)) from error
            offset = int(entry["address"], 16) - 0x4000
            banks[table["bank"]][offset:offset + len(original)] = encoded
            changed_names += encoded != original
    for bank, data in banks.items():
        path = bank_path(folder, bank)
        if path.read_bytes() != data:
            path.write_bytes(data)
    return changed_messages, changed_names


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    commands = parser.add_subparsers(dest="command", required=True)
    for command in ("prepare", "rebuild"):
        subparser = commands.add_parser(command)
        subparser.add_argument("region", choices=("US", "JP"))
        subparser.add_argument("--folder", type=Path, help="Regional text resource directory")
        if command == "prepare":
            subparser.add_argument("rom", type=Path)
    args = parser.parse_args()
    folder = args.folder or ROOT / "res" / "text" / args.region
    try:
        if args.command == "prepare":
            dialogue, names = prepare(folder, args.region, args.rom.read_bytes())
            print("{}: prepared {} dialogue files and {} name files".format(args.region, dialogue, names))
        else:
            messages, names = rebuild(folder, args.region)
            print("{}: encoded {} changed messages and {} changed names".format(args.region, messages, names))
    except (OSError, ValueError) as error:
        parser.exit(1, "Text resource conversion failed: {}\n".format(error))


if __name__ == "__main__":
    main()
