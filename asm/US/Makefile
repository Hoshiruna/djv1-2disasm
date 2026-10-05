.PHONY: all clean hud-preview

PYTHON ?= python3
RGBGFX ?= rgbgfx

all: game.gbc

../../res/US/gfx/%.bin: ../../res/US/gfx/%.png ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/US/tilemaps/hud.bin: ../../res/US/tilemaps/hud.tilemap \
    ../../res/US/tilemaps/hud.attrmap ../../scripts/hud_tilemap.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/hud_tilemap.py rebuild ../../res/US

hud-preview: ../../res/US/tilemaps/hud.png

../../res/US/tilemaps/hud.png: ../../res/US/tilemaps/hud.bin \
    ../../res/US/gfx/font.bin ../../res/US/gfx/hud_tiles.bin ../../res/US/palettes/hud.pal \
    ../../scripts/hud_tilemap.py ../../scripts/gb_lz.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/hud_tilemap.py preview ../../res/US

%.2bpp: %.png
	"$(RGBGFX)" --colors embedded -o $@ $<

%.1bpp: %.png
	"$(RGBGFX)" -d 1 -o $@ $<

game.o: game.asm hardware.inc bank_*.asm ../../res/US/gfx/font.bin \
    ../../res/US/gfx/hud_tiles.bin ../../res/US/palettes/hud.pal ../../res/US/tilemaps/hud.bin
	rgbasm -o game.o game.asm

game.gbc: game.o
	rgblink -n game.sym -m game.map -o $@ $<
	rgbfix -v -p 255 $@

	@if which md5sum &>/dev/null; then md5sum $@; else md5 $@; fi

clean:
	rm -f game.o game.gbc game.sym game.map
	rm -f ../../res/US/gfx/font.2bpp ../../res/US/gfx/hud_tiles.2bpp
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +
