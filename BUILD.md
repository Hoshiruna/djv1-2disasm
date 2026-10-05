# Building djv1-2disasm

## Dependencies

Install these tools outside the repository and add their executable directories to the build terminal's `PATH`:

- [RGBDS](https://github.com/gbdev/rgbds): the build uses `rgbasm`, `rgblink`, `rgbfix`, and `rgbgfx`. See the [installation instructions](https://rgbds.gbdev.io/install) or download a prebuilt package from the [releases page](https://github.com/gbdev/rgbds/releases).
- Python 3.7 or later. The resource scripts use only the standard library.
- GNU Make and Bash.
- `rm`, `find`, `which`, and either `md5sum` or `md5`. The version-specific Makefiles use these commands for cleanup and checksum output.

Both versions of `hardware.inc` require RGBDS 0.5.0 or later. The project has not pinned a verified RGBDS version.

On Windows, build in MSYS2 Bash or another terminal environment that provides the commands above. The `tools/` directory is reserved for local tools and is ignored by Git.

## Build both versions

Run these commands in a Bash terminal:

```sh
git clone https://github.com/Hoshiruna/djv1-2disasm.git
cd djv1-2disasm
make SHELL=bash
```

The root Makefile delegates to `asm/JP/` and `asm/US/`. It selects Bash by default because the version-specific checksum commands use Bash redirection syntax; the explicit `SHELL=bash` option also works when building either version directly.

## Build one version

From the repository root, select a version:

```sh
make JP SHELL=bash
make US SHELL=bash
```

You can also invoke either version's Makefile directly:

```sh
make -C asm/JP SHELL=bash
make -C asm/US SHELL=bash
```

Each version writes its outputs to its own source directory:

| Output | Japanese version | US version |
| --- | --- | --- |
| ROM | `asm/JP/game.gbc` | `asm/US/game.gbc` |
| Object file | `asm/JP/game.o` | `asm/US/game.o` |
| Symbol table | `asm/JP/game.sym` | `asm/US/game.sym` |
| Linker map | `asm/JP/game.map` | `asm/US/game.map` |

The outputs are ignored by Git. Development tools and installation packages are kept outside version control.

## Build tool options

Make defaults to `python3` and `rgbgfx`. If your Windows Python installation provides the `py` launcher, select it when building:

```sh
make US SHELL=bash PYTHON="py -3"
make JP SHELL=bash PYTHON="py -3"
```

Use `RGBGFX="/path/to/rgbgfx"` with Make if the executable is outside `PATH`.

## Clean and rebuild

To remove generated files from both versions:

```sh
make SHELL=bash clean
```

To clean only one version:

```sh
make clean-JP SHELL=bash
make clean-US SHELL=bash
```

## Comparing ROMs

[rom-info-JP.txt](notes/rom-info-JP.txt) and [rom-info-US.txt](notes/rom-info-US.txt) record the SHA-1 and SHA-256 of the original Japanese and US ROMs, respectively. To check a rebuilt ROM, calculate its SHA-256 and compare it with the matching version's record. These commands require `sha256sum`:

```sh
sha256sum asm/JP/game.gbc
sha256sum asm/US/game.gbc
```

The recorded checksums identify the original ROM. The project has not confirmed that the rebuilt ROM matches the original byte for byte.
