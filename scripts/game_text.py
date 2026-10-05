# SPDX-License-Identifier: MIT
"""Read the regional dialogue pointer tables and fixed-width object names."""

import struct


BANK_SIZE = 0x4000
NAME_LAYOUTS = {
    "US": ((0x11, 0x58EC, 240, 16), (0x18, 0x54F0, 256, 16)),
    "JP": ((0x10, 0x5018, 240, 8), (0x18, 0x4D03, 256, 8)),
}


def rom_offset(bank, address):
    """Convert a switchable-bank CPU address to a file offset."""
    if not 0x4000 <= address < 0x8000:
        raise ValueError("Address ${:04X} is outside ROMX".format(address))
    return bank * BANK_SIZE + address - 0x4000


def decode_message(data, charmap, case, names=False, wrap_width=None):
    """Return text, controls, unknown codes, and the consumed byte count.

    Control arguments are read before checking the next terminator. Object
    names use the glyph map directly and may fill their entire fixed slot.
    A preview can reproduce automatic wrapping until a variable-width insertion
    makes the column unknown; an explicit line or page restores that column.
    """
    glyphs = charmap["glyphs"]["case{}".format(case)]
    controls = charmap["controls"]
    pieces, events, unknown = [], [], []
    cursor = 0
    column = 0
    terminator = None
    while cursor < len(data):
        offset = cursor
        code = "{:02X}".format(data[cursor])
        cursor += 1
        if names:
            is_end = code == charmap["name_terminator"]
            control = None
        else:
            control = controls.get(code)
            is_end = control is not None and control.get("ends_message", False)
        if names and is_end:
            terminator = code
            break
        if control is not None:
            count = control["operand_bytes"]
            if cursor + count > len(data):
                raise ValueError("Truncated ${} control at byte {}".format(code, offset))
            arguments = data[cursor:cursor + count]
            cursor += count
            tag = control["tag"]
            if arguments:
                tag += ":" + arguments.hex().upper()
            rendered = "[{}]".format(tag)
            if control["tag"] == "LINE":
                rendered = "\n"
            elif control["tag"] in ("PAGE", "WAIT_LINE"):
                rendered += "\n"
            pieces.append(rendered)
            if control["tag"] in ("LINE", "PAGE", "WAIT_LINE"):
                column = 0
            elif control["tag"] == "SET_X":
                column = arguments[0]
            elif control["tag"] in ("OBJECT", "OBJECT_ALT", "OBJECT_WRAM",
                                    "NUM8_WRAM", "NUM16_WRAM"):
                column = None
            events.append({"offset": offset, "code": code, "tag": control["tag"],
                           "arguments": arguments.hex().upper()})
            if is_end:
                terminator = code
                break
        else:
            glyph = glyphs.get(code)
            if glyph is None:
                pieces.append("[BYTE:{}]".format(code))
                unknown.append({"offset": offset, "code": code})
            else:
                pieces.append(glyph)
            if wrap_width is not None and column is not None:
                column += 1
                if column >= wrap_width:
                    pieces.append("\n")
                    column = 0
    if not names and terminator is None:
        raise ValueError("Message has no terminator before the next pointer")
    return {"text": "".join(pieces), "controls": events, "unknown_codes": unknown,
            "terminator": terminator, "consumed": cursor}


def extract_dialogue(rom, region, charmap):
    """Keep every pointer slot, including aliases, and decode each address once."""
    if region not in NAME_LAYOUTS:
        raise ValueError("Region must be US or JP")
    tables, messages = [], []
    banks = list(range(0x0C, 0x19))
    if region == "JP":
        banks.remove(0x11)
    for bank in banks:
        case = 1 if bank < 0x12 else 2
        count = 64 if region == "US" and bank in (0x0F, 0x10) else 128
        start = bank * BANK_SIZE
        bank_data = rom[start:start + BANK_SIZE]
        if len(bank_data) != BANK_SIZE:
            raise ValueError("ROM is missing bank ${:02X}".format(bank))
        pointers = struct.unpack_from("<{}H".format(count), bank_data)
        minimum = 0x4000 + count * 2
        if any(not minimum <= pointer < 0x8000 for pointer in pointers):
            raise ValueError("Invalid text pointer in bank ${:02X}".format(bank))
        addresses = sorted(set(pointers))
        table = {"bank": "{:02X}".format(bank), "case": case,
                 "address": "4000", "raw": bank_data[:count * 2].hex().upper(),
                 "slots": ["{:02X}:{:04X}".format(bank, p) for p in pointers]}
        tables.append(table)
        for index, address in enumerate(addresses):
            limit = addresses[index + 1] if index + 1 < len(addresses) else 0x8000
            data = bank_data[address - 0x4000:limit - 0x4000]
            decoded = decode_message(data, charmap, case)
            consumed = decoded.pop("consumed")
            record = {"id": "{:02X}:{:04X}".format(bank, address), "case": case,
                      "rom_offset": "{:06X}".format(rom_offset(bank, address)),
                      "raw": data[:consumed].hex().upper()}
            record.update(decoded)
            messages.append(record)
    return tables, messages


def extract_names(rom, region, charmap):
    """Read the 240 Case I and 256 Case II slots used by name insertion."""
    tables = []
    for case, (bank, address, count, width) in enumerate(NAME_LAYOUTS[region], 1):
        start = rom_offset(bank, address)
        data = rom[start:start + count * width]
        if len(data) != count * width:
            raise ValueError("Truncated Case {} name table".format(case))
        entries = []
        for index in range(count):
            raw = data[index * width:(index + 1) * width]
            # The US reader skips the first byte of each 16-byte record.
            payload = raw[1:] if region == "US" else raw
            decoded = decode_message(payload, charmap, case, names=True)
            decoded.pop("consumed")
            decoded.pop("controls")
            entry = {"index": "{:02X}".format(index),
                     "address": "{:04X}".format(address + index * width),
                     "raw": raw.hex().upper()}
            entry.update(decoded)
            entries.append(entry)
        tables.append({"case": case, "bank": "{:02X}".format(bank),
                       "address": "{:04X}".format(address), "record_bytes": width,
                       "entries": entries})
    return tables
