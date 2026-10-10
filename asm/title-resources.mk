# SPDX-License-Identifier: MIT
# Paths are relative to the regional assembly directory.
TITLE_DIR := ../../res/ui/title
TITLE_GFX := $(TITLE_DIR)/title_tiles.bin $(TITLE_DIR)/title_tiles_extra.bin
TITLE_DATA := $(TITLE_GFX) $(TITLE_DIR)/title.bin \
    $(TITLE_DIR)/title.pal $(TITLE_DIR)/title_objects.pal
TITLE_GFX_TOOLS := ../../scripts/rebuild_gfx.py ../../scripts/scene_tiles.py \
    ../../scripts/hud_tilemap.py ../../scripts/gb_lz.py ../../scripts/gb_tile_rle.py \
    ../../scripts/gb_rle.py

$(TITLE_GFX): $(TITLE_DIR)/%.bin: $(TITLE_DIR)/%.png $(TITLE_GFX_TOOLS)
	$(PYTHON) ../../scripts/rebuild_gfx.py --scene-atlas "$<" "$@"

$(TITLE_DIR)/title.bin: $(TITLE_DIR)/title.tilemap $(TITLE_DIR)/title.attrmap \
    ../../scripts/title_resources.py ../../scripts/gb_rle.py
	$(PYTHON) ../../scripts/title_resources.py rebuild-map $(REGION)

game.o: $(TITLE_DATA) ../title-resources.mk

.PHONY: title-preview title-clean
title-preview: $(TITLE_DIR)/title.png

$(TITLE_DIR)/title.png: $(TITLE_DATA) $(TITLE_DIR)/title.tilemap \
    $(TITLE_DIR)/title.attrmap ../../scripts/title_resources.py $(TITLE_GFX_TOOLS)
	$(PYTHON) ../../scripts/title_resources.py preview $(REGION)

clean: title-clean
title-clean:
	rm -f $(TITLE_DIR)/title_tiles.2bpp $(TITLE_DIR)/title_tiles_extra.2bpp
