# SPDX-License-Identifier: MIT
"""Encode editable dialogue with explicit controls and case-specific glyphs."""

from collections import defaultdict
import re
import unicodedata

from game_text import decode_message


def control_codes(charmap):
    tags = defaultdict(list)
    for code, control in charmap["controls"].items():
        tags[control["tag"]].append(code)
    return tags


def editable_text(raw, charmap, case, names=False):
    """Show all control codes explicitly; physical newlines are presentation."""
    glyphs = charmap["glyphs"]["case{}".format(case)]
    tags = control_codes(charmap)
    parts = []
    cursor, column = 0, 0
    while cursor < len(raw):
        code = "{:02X}".format(raw[cursor])
        cursor += 1
        if names and code == charmap["name_terminator"]:
            break
        control = None if names else charmap["controls"].get(code)
        if control is not None:
            tag = control["tag"]
            if len(tags[tag]) > 1:
                tag += "@" + code
            count = control["operand_bytes"]
            if cursor + count > len(raw):
                raise ValueError("Truncated control ${}".format(code))
            arguments = raw[cursor:cursor + count]
            cursor += count
            if arguments:
                tag += ":" + arguments.hex().upper()
            parts.append("[{}]".format(tag))
            if control["tag"] in ("LINE", "PAGE", "WAIT_LINE"):
                parts.append("\n")
                column = 0
            elif control["tag"] in ("OBJECT", "OBJECT_ALT", "OBJECT_WRAM",
                                    "NUM8_WRAM", "NUM16_WRAM"):
                column = None
            elif control["tag"] == "SET_X":
                column = arguments[0]
            if control.get("ends_message"):
                break
        else:
            parts.append(glyphs.get(code) or "[BYTE:{}]".format(code))
            if not names and column is not None:
                column += 1
                if column >= 18:
                    parts.append("\n")
                    column = 0
    return "".join(parts)


def flatten(text):
    """Ignore physical line endings while retaining every space and token."""
    return text.replace("\r", "").replace("\n", "")


def encode_text(text, charmap, case, names=False):
    """Encode a text block, rejecting unsupported glyphs and malformed tags."""
    text = unicodedata.normalize("NFC", flatten(text))
    glyphs = charmap["glyphs"]["case{}".format(case)]
    reverse = {}
    for code, glyph in sorted(glyphs.items()):
        if glyph is None or (not names and code in charmap["controls"]):
            continue
        if names and code == charmap["name_terminator"]:
            continue
        reverse.setdefault(unicodedata.normalize("NFC", glyph), int(code, 16))
    # Some voiced glyph readings consist of a base and a combining mark.
    readings = sorted(reverse, key=len, reverse=True)
    tags = control_codes(charmap)
    output = bytearray()
    cursor, ended = 0, False
    while cursor < len(text):
        if ended:
            raise ValueError("Text follows the message ending")
        if text[cursor] == "[":
            match = re.match(r"\[([A-Z0-9_]+)(?:@([0-9A-F]{2}))?(?::([0-9A-F]+))?\]",
                             text[cursor:])
            if match is None:
                raise ValueError("Malformed control tag at character {}".format(cursor))
            tag, explicit, argument_hex = match.groups()
            if tag == "BYTE":
                if explicit or argument_hex is None or len(argument_hex) != 2:
                    raise ValueError("Use [BYTE:XX] for one glyph byte")
                code = argument_hex
                if (not names and code in charmap["controls"]) or (
                        names and code == charmap["name_terminator"]):
                    raise ValueError("[BYTE:{}] is a control or ending, not a glyph".format(code))
                output.append(int(code, 16))
            else:
                if names:
                    raise ValueError("Object names cannot contain text controls")
                choices = tags.get(tag, [])
                code = explicit or (choices[0] if len(choices) == 1 else None)
                if code not in choices:
                    raise ValueError("Unknown or ambiguous tag [{}]".format(tag))
                control = charmap["controls"][code]
                argument_hex = argument_hex or ""
                if len(argument_hex) != control["operand_bytes"] * 2:
                    raise ValueError("[{}] needs {} operand bytes".format(
                        tag, control["operand_bytes"]))
                output.append(int(code, 16))
                output.extend(bytes.fromhex(argument_hex))
                ended = control.get("ends_message", False)
            cursor += match.end()
        else:
            reading = next((glyph for glyph in readings if text.startswith(glyph, cursor)), None)
            if reading is None:
                raise ValueError("Unsupported glyph {!r} in Case {}".format(text[cursor], case))
            output.append(reverse[reading])
            cursor += len(reading)
    if not names:
        if not ended:
            raise ValueError("Keep the final [END] or [WAIT_END] tag")
        decoded = decode_message(output, charmap, case)
        if decoded["consumed"] != len(output):
            raise ValueError("Encoded text ends before its final byte")
    return bytes(output)


def rebuild_message(original, text, charmap, case):
    """Keep a message in its original slot, including unused bytes after END."""
    if flatten(text) == flatten(editable_text(original, charmap, case)):
        return original
    encoded = encode_text(text, charmap, case)
    old_end = decode_message(original, charmap, case)["terminator"]
    new_end = decode_message(encoded, charmap, case)["terminator"]
    if old_end != new_end:
        raise ValueError("Keep the original message ending")
    if len(encoded) > len(original):
        raise ValueError("Text needs {} bytes; its original slot holds {}".format(
            len(encoded), len(original)))
    return encoded + original[len(encoded):]


def rebuild_name(original, text, charmap, case):
    """Preserve the US prefix; JP permits eight glyphs without a terminator."""
    prefix = original[:1] if charmap["region"] == "US" else b""
    payload = original[len(prefix):]
    if flatten(text) == flatten(editable_text(payload, charmap, case, names=True)):
        return original
    encoded = encode_text(text, charmap, case, names=True)
    maximum = len(payload) - 1 if prefix else len(payload)
    if len(encoded) > maximum:
        raise ValueError("Name needs {} glyph bytes; its slot holds {}".format(
            len(encoded), maximum))
    end = bytes([int(charmap["name_terminator"], 16)])
    return prefix + encoded + end * (len(payload) - len(encoded))
