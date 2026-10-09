.PHONY: all clean hud-preview bathroom-preview bathroom-door-open-preview bathroom-objects-preview text-resources

PYTHON ?= python3
RGBGFX ?= rgbgfx

BATHROOM_OBJECT_DATA := ../../res/shared/objects/case2_bathroom.sprites \
    ../../res/shared/objects/case2_bathroom.animations \
    ../../res/shared/objects/case2_bathroom.positions \
    ../../res/shared/objects/case2_bathroom.hitboxes \
    ../../res/shared/objects/case2_initial_flags.bin

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

../../res/US/gfx/case2_bathroom_tiles.bin: ../../res/shared/gfx/case2_bathroom_tiles.png \
    ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/US/gfx/case2_bathroom_extra_tiles.bin: ../../res/shared/gfx/case2_bathroom_extra_tiles.png \
    ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/US/gfx/case2_bathroom_object_tiles.bin: ../../res/shared/gfx/case2_bathroom_object_tiles.png \
    ../../scripts/rebuild_gfx.py ../../scripts/gb_lz.py
	$(PYTHON) ../../scripts/rebuild_gfx.py --rgbgfx "$(RGBGFX)" "$<" "$@"

../../res/US/tilemaps/hud.bin: ../../res/US/tilemaps/hud.tilemap \
    ../../res/US/tilemaps/hud.attrmap ../../scripts/hud_tilemap.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/hud_tilemap.py rebuild ../../res/US

hud-preview: ../../res/US/tilemaps/hud.png

bathroom-preview: ../../res/shared/tilemaps/case2_bathroom.png

../../res/shared/tilemaps/case2_bathroom.png: ../../res/US/gfx/case2_bathroom_tiles.bin \
    ../../res/US/gfx/case2_bathroom_extra_tiles.bin \
    ../../res/shared/tilemaps/case2_bathroom.tilemap \
    ../../res/shared/tilemaps/case2_bathroom.attrmap ../../res/shared/palettes/case2_bathroom.pal \
    ../../res/shared/tilemaps/case2_bathroom_door_closed.tilemap \
    ../../res/shared/tilemaps/case2_bathroom_door_closed.attrmap \
    ../../scripts/bathroom_preview.py ../../scripts/hud_tilemap.py ../../scripts/gb_lz.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/bathroom_preview.py ../../res/US

bathroom-objects-preview: ../../res/shared/tilemaps/case2_bathroom.png \
    ../../res/US/gfx/case2_bathroom_object_tiles.bin \
    ../../res/shared/palettes/case2_bathroom_objects.pal $(BATHROOM_OBJECT_DATA) \
    ../../scripts/gb_sprites.py

bathroom-objects-preview:
	$(PYTHON) ../../scripts/bathroom_preview.py ../../res/US --objects

bathroom-door-open-preview: ../../res/shared/tilemaps/case2_bathroom.png \
    ../../res/shared/tilemaps/case2_bathroom_door_open.tilemap \
    ../../res/shared/tilemaps/case2_bathroom_door_open.attrmap
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
    ../../res/US/gfx/case2_bathroom_tiles.bin \
    ../../res/US/gfx/case2_bathroom_extra_tiles.bin \
    ../../res/shared/tilemaps/case2_bathroom.tilemap \
    ../../res/shared/tilemaps/case2_bathroom.attrmap ../../res/shared/palettes/case2_bathroom.pal \
    ../../res/shared/tilemaps/case2_bathroom_door_closed.tilemap \
    ../../res/shared/tilemaps/case2_bathroom_door_closed.attrmap \
    ../../res/shared/tilemaps/case2_bathroom_door_open.tilemap \
    ../../res/shared/tilemaps/case2_bathroom_door_open.attrmap \
    ../../res/US/gfx/case2_bathroom_object_tiles.bin ../../res/shared/palettes/case2_bathroom_objects.pal \
    ../../res/US/scripts/case2_bathroom_towel_take.bin \
    ../../res/shared/scripts/case2_bathroom_mirror_break.bin \
    ../../res/US/scripts/case2_bathroom_cold_tap_open.bin \
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
	rm -f ../../res/US/gfx/case2_font.2bpp ../../res/US/gfx/case2_bathroom_tiles.2bpp
	rm -f ../../res/US/gfx/case2_bathroom_extra_tiles.2bpp
	rm -f ../../res/US/gfx/case2_bathroom_object_tiles.2bpp
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +
