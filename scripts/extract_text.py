#!/usr/bin/env python3
# SPDX-License-Identifier: MIT
"""Export US or JP dialogue and object names as UTF-8 and lossless raw records."""

import argparse
from collections import Counter
import json
from pathlib import Path

from game_text import decode_message, extract_dialogue, extract_names


ROOT = Path(__file__).resolve().parents[1]


def extract(region, rom_path, output):
    """Prepare both exports before replacing files in the resource directory."""
    charmap = json.loads((output / "charmap.json").read_text(encoding="utf-8"))
    if charmap["region"] != region:
        raise ValueError("Character map does not match the selected region")
    rom = rom_path.read_bytes()
    tables, messages = extract_dialogue(rom, region, charmap)
    names = extract_names(rom, region, charmap)
    unknown = Counter(item["code"] for message in messages
                      for item in message["unknown_codes"])
    unknown.update(item["code"] for table in names for entry in table["entries"]
                   for item in entry["unknown_codes"])
    summary = {"pointer_slots": sum(len(t["slots"]) for t in tables),
               "unique_messages": len(messages),
               "name_slots": sum(len(t["entries"]) for t in names),
               "unknown_code_occurrences": dict(sorted(unknown.items()))}
    document = {"format_version": 1, "region": region, "summary": summary,
                "pointer_tables": tables, "messages": messages, "name_tables": names}
    readable = ["{} dialogue and object names".format(region),
                "Addresses and arguments are hexadecimal; arguments retain ROM byte order.",
                "Static text wraps at 18 columns. Variable insertions remain as tags.",
                "[BYTE:XX] marks a glyph whose reading is not confirmed.", ""]
    for message in messages:
        preview = decode_message(bytes.fromhex(message["raw"]), charmap,
                                 message["case"], wrap_width=18)["text"]
        readable.extend(["=== Case {} | {} | ROM {} ===".format(
            message["case"], message["id"], message["rom_offset"]), preview, ""])
    for table in names:
        readable.extend(["=== Case {} object names | {}:{} ===".format(
            table["case"], table["bank"], table["address"]), ""])
        readable.extend("{}: {}".format(entry["index"], entry["text"])
                        for entry in table["entries"])
        readable.append("")
    json_text = json.dumps(document, ensure_ascii=False, indent=2) + "\n"
    (output / "dialogue.json").write_text(json_text, encoding="utf-8")
    (output / "dialogue.txt").write_text("\n".join(readable), encoding="utf-8")
    return summary


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("region", choices=("US", "JP"))
    parser.add_argument("rom", type=Path, help="Local ROM to read; no ROM build is run")
    parser.add_argument("--output", type=Path,
                        help="Resource directory containing the regional charmap.json")
    args = parser.parse_args()
    output = args.output or ROOT / "res" / args.region / "text"
    try:
        summary = extract(args.region, args.rom, output)
    except (OSError, ValueError) as error:
        parser.exit(1, "Text extraction failed: {}\n".format(error))
    print("{}: {} pointer slots, {} distinct messages, {} name slots".format(
        args.region, summary["pointer_slots"], summary["unique_messages"], summary["name_slots"]))
    if summary["unknown_code_occurrences"]:
        print("Unconfirmed glyphs: " + ", ".join("${}: {}".format(code, count)
              for code, count in summary["unknown_code_occurrences"].items()))


if __name__ == "__main__":
    main()
