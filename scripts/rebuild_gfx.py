#!/usr/bin/env python3
# SPDX-License-Identifier: MIT
"""Convert an indexed PNG into an existing compressed graphics resource."""

import argparse
from pathlib import Path
import subprocess

from gb_lz import rebuild_resource


def rebuild_png(png, output, rgbgfx="rgbgfx"):
    """Write local 2bpp tiles, then replace the .bin only if compression fits."""
    template = output.read_bytes()
    tiles_path = png.with_suffix(".2bpp")
    subprocess.run([
        rgbgfx, "--colors", "embedded", "-d", "2",
        "-o", str(tiles_path), str(png),
    ], check=True)
    rebuilt = rebuild_resource(template, tiles_path.read_bytes())
    changed = rebuilt != template
    if changed:
        output.write_bytes(rebuilt)
    else:
        # Mark an unchanged conversion as current for Make's timestamp checks.
        output.touch()
    return changed, len(rebuilt)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("png", type=Path, help="Indexed PNG using color IDs 0-3")
    parser.add_argument("output", type=Path, help="Existing .bin used as the header/size template")
    parser.add_argument("--rgbgfx", default="rgbgfx", help="Path to the RGBDS rgbgfx executable")
    args = parser.parse_args()
    try:
        changed, size = rebuild_png(args.png, args.output, args.rgbgfx)
    except (OSError, ValueError, subprocess.CalledProcessError) as error:
        parser.exit(1, "error: {}\n".format(error))
    action = "Updated" if changed else "Kept unchanged"
    print("{} {} ({} bytes)".format(action, args.output, size))


if __name__ == "__main__":
    main()
