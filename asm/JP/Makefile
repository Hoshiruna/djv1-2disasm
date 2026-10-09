.PHONY: all clean hud-preview text-resources

PYTHON ?= python3
RGBGFX ?= rgbgfx

BATHROOM_OBJECT_DATA := ../../res/scene/case2/00-bathroom/s00-objects.sprites \
    ../../res/scene/case2/00-bathroom/s00-objects.animations \
    ../../res/scene/case2/00-bathroom/s00-objects.positions \
    ../../res/scene/case2/00-bathroom/s00-objects.hitboxes \
    ../../res/scene/case2/common/initial-visibility.bin

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

../../res/scene/case2/00-bathroom/JP/s00-bg.bin: ../../res/scene/case2/00-bathroom/s00-bg.png \
    ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py ../../scripts/scene_tiles.py ../../scripts/hud_tilemap.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --scene-atlas --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/scene/case2/00-bathroom/JP/s00-bg-extra.bin: ../../res/scene/case2/00-bathroom/s00-bg-extra.png \
    ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py ../../scripts/scene_tiles.py ../../scripts/hud_tilemap.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --scene-atlas --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/scene/case2/00-bathroom/JP/s00-objects.bin: ../../res/scene/case2/00-bathroom/s00-objects.png \
    ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py ../../scripts/scene_tiles.py ../../scripts/hud_tilemap.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --scene-atlas --rgbgfx "$(RGBGFX)" "$<" "$@"

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
    ../../res/scene/case2/00-bathroom/JP/s00-bg.bin \
    ../../res/scene/case2/00-bathroom/JP/s00-bg-extra.bin \
    ../../res/scene/case2/00-bathroom/s00-bg.tilemap \
    ../../res/scene/case2/00-bathroom/s00-bg.attrmap ../../res/scene/case2/00-bathroom/s00-bg.pal \
    ../../res/scene/case2/00-bathroom/s00-door-closed.tilemap \
    ../../res/scene/case2/00-bathroom/s00-door-closed.attrmap \
    ../../res/scene/case2/00-bathroom/s00-door-open.tilemap \
    ../../res/scene/case2/00-bathroom/s00-door-open.attrmap \
    ../../res/scene/case2/00-bathroom/JP/s00-objects.bin ../../res/scene/case2/00-bathroom/s00-objects.pal \
    ../../res/scene/case2/00-bathroom/JP/s00-towel-take.bin \
    ../../res/scene/case2/00-bathroom/s00-mirror-break.bin \
    ../../res/scene/case2/00-bathroom/JP/s00-cold-tap-open.bin \
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
	rm -f ../../res/scene/case2/00-bathroom/JP/s00-bg.2bpp
	rm -f ../../res/scene/case2/00-bathroom/JP/s00-bg-extra.2bpp
	rm -f ../../res/scene/case2/00-bathroom/JP/s00-objects.2bpp
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +
