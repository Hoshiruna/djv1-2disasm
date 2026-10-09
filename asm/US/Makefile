.PHONY: all clean hud-preview bathroom-preview bathroom-door-open-preview bathroom-objects-preview text-resources

PYTHON ?= python3
RGBGFX ?= rgbgfx

BATHROOM_OBJECT_DATA := ../../res/scene/case2/00-lucky-bath/s00-objects.sprites \
    ../../res/scene/case2/00-lucky-bath/s00-objects.animations \
    ../../res/scene/case2/00-lucky-bath/s00-objects.positions \
    ../../res/scene/case2/00-lucky-bath/s00-objects.hitboxes \
    ../../res/scene/case2/common/initial-visibility.bin

TEXT_BANKS := $(wildcard ../../res/text/US/banks/*.bin)
TEXT_FILES := $(wildcard ../../res/text/US/case1/*.txt ../../res/text/US/case2/*.txt)
TEXT_STAMP := ../../res/text/US/.rebuild-stamp

REGION := US
all: game.gbc

include ../scene-resources.mk

text-resources: $(TEXT_STAMP)

$(TEXT_STAMP): $(TEXT_FILES) ../../res/text/US/editor.json \
    ../../res/text/US/dialogue.json ../../res/text/US/charmap.json \
    ../../scripts/text_resources.py ../../scripts/text_codec.py ../../scripts/game_text.py
	$(PYTHON) ../../scripts/text_resources.py rebuild US
	touch "$@"

../../res/ui/US/%.bin: ../../res/ui/US/%.png ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

# Both cases share font.png and keep separate compressed ROM slots.
../../res/ui/US/case2_font.bin: ../../res/ui/US/font.png \
    ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/ui/US/hud.bin: ../../res/ui/US/hud.tilemap \
    ../../res/ui/US/hud.attrmap ../../scripts/hud_tilemap.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/hud_tilemap.py rebuild ../../res/ui/US

hud-preview: ../../res/ui/US/hud.png

bathroom-preview: ../../res/scene/case2/previews/00-lucky-bath.png

../../res/scene/case2/previews/00-lucky-bath.png: ../../res/scene/case2/00-lucky-bath/US/s00-bg.bin \
    ../../res/scene/case2/00-lucky-bath/US/s00-bg-extra.bin \
    ../../res/scene/case2/00-lucky-bath/s00-bg.tilemap \
    ../../res/scene/case2/00-lucky-bath/s00-bg.attrmap ../../res/scene/case2/00-lucky-bath/s00-bg.pal \
    ../../res/scene/case2/00-lucky-bath/s00-door-closed.tilemap \
    ../../res/scene/case2/00-lucky-bath/s00-door-closed.attrmap \
    ../../scripts/bathroom_preview.py ../../scripts/hud_tilemap.py ../../scripts/gb_lz.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/bathroom_preview.py ../../res/scene/case2/00-lucky-bath/US

bathroom-objects-preview: ../../res/scene/case2/previews/00-lucky-bath.png \
    ../../res/scene/case2/00-lucky-bath/US/s00-objects.bin \
    ../../res/scene/case2/00-lucky-bath/s00-objects.pal $(BATHROOM_OBJECT_DATA) \
    ../../scripts/gb_sprites.py

bathroom-objects-preview:
	$(PYTHON) ../../scripts/bathroom_preview.py ../../res/scene/case2/00-lucky-bath/US --objects

bathroom-door-open-preview: ../../res/scene/case2/previews/00-lucky-bath.png \
    ../../res/scene/case2/00-lucky-bath/s00-door-open.tilemap \
    ../../res/scene/case2/00-lucky-bath/s00-door-open.attrmap
	$(PYTHON) ../../scripts/bathroom_preview.py ../../res/scene/case2/00-lucky-bath/US --door open

../../res/ui/US/hud.png: ../../res/ui/US/hud.bin \
    ../../res/ui/US/font.bin ../../res/ui/US/hud_tiles.bin ../../res/ui/US/hud.pal \
    ../../scripts/hud_tilemap.py ../../scripts/gb_lz.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/hud_tilemap.py preview ../../res/ui/US

%.2bpp: %.png
	"$(RGBGFX)" --colors embedded -o $@ $<

%.1bpp: %.png
	"$(RGBGFX)" -d 1 -o $@ $<

game.o: game.asm hardware.inc ../scene.inc bank_*.asm ../../res/ui/US/font.bin \
    ../../res/ui/US/hud_tiles.bin ../../res/ui/US/hud.pal ../../res/ui/US/hud.bin \
    ../../res/ui/US/case2_font.bin ../../res/ui/US/case2_hud_tiles.bin \
    ../../res/scene/case2/00-lucky-bath/US/s00-bg.bin \
    ../../res/scene/case2/00-lucky-bath/US/s00-bg-extra.bin \
    ../../res/scene/case2/00-lucky-bath/s00-bg.tilemap \
    ../../res/scene/case2/00-lucky-bath/s00-bg.attrmap ../../res/scene/case2/00-lucky-bath/s00-bg.pal \
    ../../res/scene/case2/00-lucky-bath/s00-door-closed.tilemap \
    ../../res/scene/case2/00-lucky-bath/s00-door-closed.attrmap \
    ../../res/scene/case2/00-lucky-bath/s00-door-open.tilemap \
    ../../res/scene/case2/00-lucky-bath/s00-door-open.attrmap \
    ../../res/scene/case2/00-lucky-bath/US/s00-objects.bin ../../res/scene/case2/00-lucky-bath/s00-objects.pal \
    ../../res/scene/case2/00-lucky-bath/US/s00-towel-take.bin \
    ../../res/scene/case2/00-lucky-bath/s00-mirror-break.bin \
    ../../res/scene/case2/00-lucky-bath/US/s00-cold-tap-open.bin \
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
	rm -f ../../res/ui/US/font.2bpp ../../res/ui/US/hud_tiles.2bpp
	rm -f ../../res/ui/US/case2_hud_tiles.2bpp
	rm -f ../../res/ui/US/case2_font.2bpp ../../res/scene/case2/00-lucky-bath/US/s00-bg.2bpp
	rm -f ../../res/scene/case2/00-lucky-bath/US/s00-bg-extra.2bpp
	rm -f ../../res/scene/case2/00-lucky-bath/US/s00-objects.2bpp
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +
