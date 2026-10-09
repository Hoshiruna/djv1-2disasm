.PHONY: all clean hud-preview text-resources

PYTHON ?= python3
RGBGFX ?= rgbgfx

BATHROOM_OBJECT_DATA := ../../res/scene/case2/00-lucky-bath/s00-objects.sprites \
    ../../res/scene/case2/00-lucky-bath/s00-objects.animations \
    ../../res/scene/case2/00-lucky-bath/s00-objects.positions \
    ../../res/scene/case2/00-lucky-bath/s00-objects.hitboxes \
    ../../res/scene/case2/common/initial-visibility.bin

TEXT_BANKS := $(wildcard ../../res/text/JP/banks/*.bin)
TEXT_FILES := $(wildcard ../../res/text/JP/case1/*.txt ../../res/text/JP/case2/*.txt)
TEXT_STAMP := ../../res/text/JP/.rebuild-stamp

REGION := JP
all: game.gbc

include ../scene-resources.mk

text-resources: $(TEXT_STAMP)

$(TEXT_STAMP): $(TEXT_FILES) ../../res/text/JP/editor.json \
    ../../res/text/JP/dialogue.json ../../res/text/JP/charmap.json \
    ../../scripts/text_resources.py ../../scripts/text_codec.py ../../scripts/game_text.py
	$(PYTHON) ../../scripts/text_resources.py rebuild JP
	touch "$@"

../../res/ui/JP/%.bin: ../../res/ui/JP/%.png ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/ui/JP/hud.bin: ../../res/ui/JP/hud.tilemap \
    ../../res/ui/JP/hud.attrmap ../../scripts/hud_tilemap.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/hud_tilemap.py rebuild ../../res/ui/JP

hud-preview: ../../res/ui/JP/hud.png

../../res/ui/JP/hud.png: ../../res/ui/JP/hud.bin \
    ../../res/ui/JP/case1_font.bin ../../res/ui/JP/hud_tiles.bin ../../res/ui/JP/hud.pal \
    ../../scripts/hud_tilemap.py ../../scripts/gb_lz.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/hud_tilemap.py preview ../../res/ui/JP

%.2bpp: %.png
	"$(RGBGFX)" --colors embedded -o $@ $<

%.1bpp: %.png
	"$(RGBGFX)" -d 1 -o $@ $<

game.o: $(wildcard *.asm) hardware.inc ../scene.inc ../../res/ui/JP/case1_font.bin \
    ../../res/ui/JP/hud_tiles.bin ../../res/ui/JP/hud.pal ../../res/ui/JP/hud.bin \
    ../../res/ui/JP/case2_font.bin ../../res/ui/JP/case2_hud_tiles.bin \
    ../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin \
    ../../res/scene/case2/00-lucky-bath/JP/s00-bg-extra.bin \
    ../../res/scene/case2/00-lucky-bath/s00-bg.tilemap \
    ../../res/scene/case2/00-lucky-bath/s00-bg.attrmap ../../res/scene/case2/00-lucky-bath/s00-bg.pal \
    ../../res/scene/case2/00-lucky-bath/s00-door-closed.tilemap \
    ../../res/scene/case2/00-lucky-bath/s00-door-closed.attrmap \
    ../../res/scene/case2/00-lucky-bath/s00-door-open.tilemap \
    ../../res/scene/case2/00-lucky-bath/s00-door-open.attrmap \
    ../../res/scene/case2/00-lucky-bath/JP/s00-objects.bin ../../res/scene/case2/00-lucky-bath/s00-objects.pal \
    ../../res/scene/case2/00-lucky-bath/JP/s00-towel-take.bin \
    ../../res/scene/case2/00-lucky-bath/s00-mirror-break.bin \
    ../../res/scene/case2/00-lucky-bath/JP/s00-cold-tap-open.bin \
    $(BATHROOM_OBJECT_DATA) $(TEXT_BANKS) $(TEXT_STAMP) $(SCENE_DATA)
	rgbasm -o game.o game.asm

game.gbc: game.o
	rgblink -n game.sym -m game.map -o $@ $<
	rgbfix -v -p 255 $@

	@if which md5sum &>/dev/null; then md5sum $@; else md5 $@; fi

clean:
	rm -f ../../res/scene/case*/common/$(REGION)/*.2bpp
	rm -f game.o game.gbc game.sym game.map
	rm -f "$(TEXT_STAMP)"
	rm -f ../../res/ui/JP/case1_font.2bpp ../../res/ui/JP/hud_tiles.2bpp
	rm -f ../../res/ui/JP/case2_font.2bpp ../../res/ui/JP/case2_hud_tiles.2bpp
	rm -f ../../res/scene/case2/00-lucky-bath/JP/s00-bg.2bpp
	rm -f ../../res/scene/case2/00-lucky-bath/JP/s00-bg-extra.2bpp
	rm -f ../../res/scene/case2/00-lucky-bath/JP/s00-objects.2bpp
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +
