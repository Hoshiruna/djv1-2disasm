.PHONY: all clean hud-preview bathroom-preview bathroom-door-open-preview bathroom-objects-preview text-resources

PYTHON ?= python3
RGBGFX ?= rgbgfx

BATHROOM_OBJECT_DATA := ../../res/shared/case2/scenes/00-bathroom/objects.sprites \
    ../../res/shared/case2/scenes/00-bathroom/objects.animations \
    ../../res/shared/case2/scenes/00-bathroom/objects.positions \
    ../../res/shared/case2/scenes/00-bathroom/objects.hitboxes \
    ../../res/shared/case2/common/initial-visibility.bin

TEXT_BANKS := $(wildcard ../../res/US/text/banks/*.bin)
TEXT_FILES := $(wildcard ../../res/US/text/case1/*.txt ../../res/US/text/case2/*.txt)
TEXT_STAMP := ../../res/US/text/.rebuild-stamp

all: game.gbc

text-resources: $(TEXT_STAMP)

$(TEXT_STAMP): $(TEXT_FILES) ../../res/US/text/editor.json \
    ../../res/US/text/dialogue.json ../../res/US/text/charmap.json \
    ../../scripts/text_resources.py ../../scripts/text_codec.py ../../scripts/game_text.py
	$(PYTHON) ../../scripts/text_resources.py rebuild US
	touch "$@"

../../res/US/gfx/%.bin: ../../res/US/gfx/%.png ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

# Both cases share font.png and keep separate compressed ROM slots.
../../res/US/gfx/case2_font.bin: ../../res/US/gfx/font.png \
    ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/US/case2/scenes/00-bathroom/background.bin: ../../res/shared/case2/scenes/00-bathroom/background.png \
    ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/US/case2/scenes/00-bathroom/background-extra.bin: ../../res/shared/case2/scenes/00-bathroom/background-extra.png \
    ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/US/case2/scenes/00-bathroom/objects.bin: ../../res/shared/case2/scenes/00-bathroom/objects.png \
    ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/US/tilemaps/hud.bin: ../../res/US/tilemaps/hud.tilemap \
    ../../res/US/tilemaps/hud.attrmap ../../scripts/hud_tilemap.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/hud_tilemap.py rebuild ../../res/US

hud-preview: ../../res/US/tilemaps/hud.png

bathroom-preview: ../../res/shared/case2/previews/00-bathroom.png

../../res/shared/case2/previews/00-bathroom.png: ../../res/US/case2/scenes/00-bathroom/background.bin \
    ../../res/US/case2/scenes/00-bathroom/background-extra.bin \
    ../../res/shared/case2/scenes/00-bathroom/layout.tilemap \
    ../../res/shared/case2/scenes/00-bathroom/layout.attrmap ../../res/shared/case2/scenes/00-bathroom/background.pal \
    ../../res/shared/case2/scenes/00-bathroom/door-closed.tilemap \
    ../../res/shared/case2/scenes/00-bathroom/door-closed.attrmap \
    ../../scripts/bathroom_preview.py ../../scripts/hud_tilemap.py ../../scripts/gb_lz.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/bathroom_preview.py ../../res/US

bathroom-objects-preview: ../../res/shared/case2/previews/00-bathroom.png \
    ../../res/US/case2/scenes/00-bathroom/objects.bin \
    ../../res/shared/case2/scenes/00-bathroom/objects.pal $(BATHROOM_OBJECT_DATA) \
    ../../scripts/gb_sprites.py

bathroom-objects-preview:
	$(PYTHON) ../../scripts/bathroom_preview.py ../../res/US --objects

bathroom-door-open-preview: ../../res/shared/case2/previews/00-bathroom.png \
    ../../res/shared/case2/scenes/00-bathroom/door-open.tilemap \
    ../../res/shared/case2/scenes/00-bathroom/door-open.attrmap
	$(PYTHON) ../../scripts/bathroom_preview.py ../../res/US --door open

../../res/US/tilemaps/hud.png: ../../res/US/tilemaps/hud.bin \
    ../../res/US/gfx/font.bin ../../res/US/gfx/hud_tiles.bin ../../res/US/palettes/hud.pal \
    ../../scripts/hud_tilemap.py ../../scripts/gb_lz.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/hud_tilemap.py preview ../../res/US

%.2bpp: %.png
	"$(RGBGFX)" --colors embedded -o $@ $<

%.1bpp: %.png
	"$(RGBGFX)" -d 1 -o $@ $<

game.o: game.asm hardware.inc bank_*.asm ../../res/US/gfx/font.bin \
    ../../res/US/gfx/hud_tiles.bin ../../res/US/palettes/hud.pal ../../res/US/tilemaps/hud.bin \
    ../../res/US/gfx/case2_font.bin ../../res/US/gfx/case2_hud_tiles.bin \
    ../../res/US/case2/scenes/00-bathroom/background.bin \
    ../../res/US/case2/scenes/00-bathroom/background-extra.bin \
    ../../res/shared/case2/scenes/00-bathroom/layout.tilemap \
    ../../res/shared/case2/scenes/00-bathroom/layout.attrmap ../../res/shared/case2/scenes/00-bathroom/background.pal \
    ../../res/shared/case2/scenes/00-bathroom/door-closed.tilemap \
    ../../res/shared/case2/scenes/00-bathroom/door-closed.attrmap \
    ../../res/shared/case2/scenes/00-bathroom/door-open.tilemap \
    ../../res/shared/case2/scenes/00-bathroom/door-open.attrmap \
    ../../res/US/case2/scenes/00-bathroom/objects.bin ../../res/shared/case2/scenes/00-bathroom/objects.pal \
    ../../res/US/case2/scenes/00-bathroom/towel-take.bin \
    ../../res/shared/case2/scenes/00-bathroom/mirror-break.bin \
    ../../res/US/case2/scenes/00-bathroom/cold-tap-open.bin \
    $(BATHROOM_OBJECT_DATA) $(TEXT_BANKS) $(TEXT_STAMP)
	rgbasm -o game.o game.asm

game.gbc: game.o
	rgblink -n game.sym -m game.map -o $@ $<
	rgbfix -v -p 255 $@

	@if which md5sum &>/dev/null; then md5sum $@; else md5 $@; fi

clean:
	rm -f game.o game.gbc game.sym game.map
	rm -f "$(TEXT_STAMP)"
	rm -f ../../res/US/gfx/font.2bpp ../../res/US/gfx/hud_tiles.2bpp
	rm -f ../../res/US/gfx/case2_hud_tiles.2bpp
	rm -f ../../res/US/gfx/case2_font.2bpp ../../res/US/case2/scenes/00-bathroom/background.2bpp
	rm -f ../../res/US/case2/scenes/00-bathroom/background-extra.2bpp
	rm -f ../../res/US/case2/scenes/00-bathroom/objects.2bpp
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +
