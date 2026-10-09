.PHONY: all clean hud-preview text-resources

PYTHON ?= python3
RGBGFX ?= rgbgfx

BATHROOM_OBJECT_DATA := ../../res/shared/case2/scenes/00-bathroom/objects.sprites \
    ../../res/shared/case2/scenes/00-bathroom/objects.animations \
    ../../res/shared/case2/scenes/00-bathroom/objects.positions \
    ../../res/shared/case2/scenes/00-bathroom/objects.hitboxes \
    ../../res/shared/case2/common/initial-visibility.bin

TEXT_BANKS := $(wildcard ../../res/JP/text/banks/*.bin)
TEXT_FILES := $(wildcard ../../res/JP/text/case1/*.txt ../../res/JP/text/case2/*.txt)
TEXT_STAMP := ../../res/JP/text/.rebuild-stamp

all: game.gbc

text-resources: $(TEXT_STAMP)

$(TEXT_STAMP): $(TEXT_FILES) ../../res/JP/text/editor.json \
    ../../res/JP/text/dialogue.json ../../res/JP/text/charmap.json \
    ../../scripts/text_resources.py ../../scripts/text_codec.py ../../scripts/game_text.py
	$(PYTHON) ../../scripts/text_resources.py rebuild JP
	touch "$@"

../../res/JP/gfx/%.bin: ../../res/JP/gfx/%.png ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/JP/case2/scenes/00-bathroom/background.bin: ../../res/shared/case2/scenes/00-bathroom/background.png \
    ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/JP/case2/scenes/00-bathroom/background-extra.bin: ../../res/shared/case2/scenes/00-bathroom/background-extra.png \
    ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/JP/case2/scenes/00-bathroom/objects.bin: ../../res/shared/case2/scenes/00-bathroom/objects.png \
    ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/JP/tilemaps/hud.bin: ../../res/JP/tilemaps/hud.tilemap \
    ../../res/JP/tilemaps/hud.attrmap ../../scripts/hud_tilemap.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/hud_tilemap.py rebuild ../../res/JP

hud-preview: ../../res/JP/tilemaps/hud.png

../../res/JP/tilemaps/hud.png: ../../res/JP/tilemaps/hud.bin \
    ../../res/JP/gfx/case1_font.bin ../../res/JP/gfx/hud_tiles.bin ../../res/JP/palettes/hud.pal \
    ../../scripts/hud_tilemap.py ../../scripts/gb_lz.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/hud_tilemap.py preview ../../res/JP

%.2bpp: %.png
	"$(RGBGFX)" --colors embedded -o $@ $<

%.1bpp: %.png
	"$(RGBGFX)" -d 1 -o $@ $<

game.o: game.asm hardware.inc bank_*.asm ../../res/JP/gfx/case1_font.bin \
    ../../res/JP/gfx/hud_tiles.bin ../../res/JP/palettes/hud.pal ../../res/JP/tilemaps/hud.bin \
    ../../res/JP/gfx/case2_font.bin ../../res/JP/gfx/case2_hud_tiles.bin \
    ../../res/JP/case2/scenes/00-bathroom/background.bin \
    ../../res/JP/case2/scenes/00-bathroom/background-extra.bin \
    ../../res/shared/case2/scenes/00-bathroom/layout.tilemap \
    ../../res/shared/case2/scenes/00-bathroom/layout.attrmap ../../res/shared/case2/scenes/00-bathroom/background.pal \
    ../../res/shared/case2/scenes/00-bathroom/door-closed.tilemap \
    ../../res/shared/case2/scenes/00-bathroom/door-closed.attrmap \
    ../../res/shared/case2/scenes/00-bathroom/door-open.tilemap \
    ../../res/shared/case2/scenes/00-bathroom/door-open.attrmap \
    ../../res/JP/case2/scenes/00-bathroom/objects.bin ../../res/shared/case2/scenes/00-bathroom/objects.pal \
    ../../res/JP/case2/scenes/00-bathroom/towel-take.bin \
    ../../res/shared/case2/scenes/00-bathroom/mirror-break.bin \
    ../../res/JP/case2/scenes/00-bathroom/cold-tap-open.bin \
    $(BATHROOM_OBJECT_DATA) $(TEXT_BANKS) $(TEXT_STAMP)
	rgbasm -o game.o game.asm

game.gbc: game.o
	rgblink -n game.sym -m game.map -o $@ $<
	rgbfix -v -p 255 $@

	@if which md5sum &>/dev/null; then md5sum $@; else md5 $@; fi

clean:
	rm -f game.o game.gbc game.sym game.map
	rm -f "$(TEXT_STAMP)"
	rm -f ../../res/JP/gfx/case1_font.2bpp ../../res/JP/gfx/hud_tiles.2bpp
	rm -f ../../res/JP/gfx/case2_font.2bpp ../../res/JP/gfx/case2_hud_tiles.2bpp
	rm -f ../../res/JP/case2/scenes/00-bathroom/background.2bpp
	rm -f ../../res/JP/case2/scenes/00-bathroom/background-extra.2bpp
	rm -f ../../res/JP/case2/scenes/00-bathroom/objects.2bpp
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +
