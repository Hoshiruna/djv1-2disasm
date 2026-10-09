# Scene files used by both regional assemblies. Paths are relative to asm/US or asm/JP.
SCENE_GFX_TOOLS := ../../scripts/rebuild_gfx.py ../../scripts/scene_tiles.py \
    ../../scripts/hud_tilemap.py ../../scripts/gb_lz.py \
    ../../scripts/gb_tile_rle.py ../../scripts/gb_rle.py

define scene_gfx
$(1): $(2) $$(SCENE_GFX_TOOLS)
	$$(PYTHON) ../../scripts/rebuild_gfx.py --scene-atlas "$$<" "$$@"
endef

# case1
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g02.bin,../../res/scene/case1/common/bg-02.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g04.bin,../../res/scene/case1/02-joes-washroom/s02-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g06.bin,../../res/scene/case1/03-joes-washroom/s03-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g08.bin,../../res/scene/case1/common/bg-08.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g0a.bin,../../res/scene/case1/common/bg-0a.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g0c.bin,../../res/scene/case1/common/bg-0c.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g0e.bin,../../res/scene/case1/common/bg-0e.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g10.bin,../../res/scene/case1/common/bg-10.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g11.bin,../../res/scene/case1/common/bg-11.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g12.bin,../../res/scene/case1/common/bg-12.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g13.bin,../../res/scene/case1/common/bg-13.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g14.bin,../../res/scene/case1/common/bg-14.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g16.bin,../../res/scene/case1/common/bg-16.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g17.bin,../../res/scene/case1/common/bg-17.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g18.bin,../../res/scene/case1/common/bg-18.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g1a.bin,../../res/scene/case1/common/bg-1a.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g1b.bin,../../res/scene/case1/common/bg-1b.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g1c.bin,../../res/scene/case1/common/bg-1c.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g1d.bin,../../res/scene/case1/common/bg-1d.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g1e.bin,../../res/scene/case1/common/bg-1e.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g1f.bin,../../res/scene/case1/common/bg-1f.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g20.bin,../../res/scene/case1/common/bg-20.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g22.bin,../../res/scene/case1/common/bg-22.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g23.bin,../../res/scene/case1/common/bg-23.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g24.bin,../../res/scene/case1/common/bg-24.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g25.bin,../../res/scene/case1/common/bg-25.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g26.bin,../../res/scene/case1/common/bg-26.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g28.bin,../../res/scene/case1/common/bg-28.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g29.bin,../../res/scene/case1/common/bg-29.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g2a.bin,../../res/scene/case1/common/bg-2a.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g2b.bin,../../res/scene/case1/common/bg-2b.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g2c.bin,../../res/scene/case1/40-joes-street/s40-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g2d.bin,../../res/scene/case1/40-joes-street/s40-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g2e.bin,../../res/scene/case1/common/bg-2e.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g2f.bin,../../res/scene/case1/common/bg-2f.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g30.bin,../../res/scene/case1/43-mercedes-trunk/s43-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g31.bin,../../res/scene/case1/43-mercedes-trunk/s43-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g32.bin,../../res/scene/case1/44-sternwood-trunk/s44-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g33.bin,../../res/scene/case1/44-sternwood-trunk/s44-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g34.bin,../../res/scene/case1/45-newsstand/s45-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g36.bin,../../res/scene/case1/46-newsstand/s46-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g37.bin,../../res/scene/case1/46-newsstand/s46-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g38.bin,../../res/scene/case1/common/bg-38.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g3a.bin,../../res/scene/case1/49-petes-gun-palace/s49-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g3b.bin,../../res/scene/case1/49-petes-gun-palace/s49-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g3c.bin,../../res/scene/case1/4a-petes-counter/s4a-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g3d.bin,../../res/scene/case1/4a-petes-counter/s4a-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g3e.bin,../../res/scene/case1/4b-peoria-blue-cab/s4b-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g40.bin,../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g41.bin,../../res/scene/case1/4c-peoria-blue-cab/s4c-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g42.bin,../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g44.bin,../../res/scene/case1/4e-police-station/s4e-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g46.bin,../../res/scene/case1/4f-police-station/s4f-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g48.bin,../../res/scene/case1/50-peoria-alley/s50-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g49.bin,../../res/scene/case1/50-peoria-alley/s50-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g4a.bin,../../res/scene/case1/common/bg-4a.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g4b.bin,../../res/scene/case1/common/bg-4b.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g4c.bin,../../res/scene/case1/53-drunkard/s53-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g4e.bin,../../res/scene/case1/54-mugger/s54-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g4f.bin,../../res/scene/case1/54-mugger/s54-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g50.bin,../../res/scene/case1/55-sugar-shack/s55-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g52.bin,../../res/scene/case1/56-sugar-shack/s56-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g53.bin,../../res/scene/case1/56-sugar-shack/s56-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g54.bin,../../res/scene/case1/57-sugar-portrait/s57-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g56.bin,../../res/scene/case1/common/bg-56.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g57.bin,../../res/scene/case1/common/bg-57.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g58.bin,../../res/scene/case1/common/bg-58.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g59.bin,../../res/scene/case1/common/bg-59.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g5a.bin,../../res/scene/case1/common/bg-5a.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g5c.bin,../../res/scene/case1/common/bg-5c.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g5d.bin,../../res/scene/case1/common/bg-5d.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g5e.bin,../../res/scene/case1/65-siegel-penthouse/s65-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g5f.bin,../../res/scene/case1/65-siegel-penthouse/s65-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g60.bin,../../res/scene/case1/common/bg-60.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g61.bin,../../res/scene/case1/common/bg-61.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g62.bin,../../res/scene/case1/common/bg-62.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g63.bin,../../res/scene/case1/common/bg-63.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g64.bin,../../res/scene/case1/6a-vickers-bedroom/s6a-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g65.bin,../../res/scene/case1/6a-vickers-bedroom/s6a-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g66.bin,../../res/scene/case1/common/bg-66.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g67.bin,../../res/scene/case1/common/bg-67.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g68.bin,../../res/scene/case1/common/bg-68.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g69.bin,../../res/scene/case1/common/bg-69.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g6a.bin,../../res/scene/case1/common/bg-6a.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g6c.bin,../../res/scene/case1/72-brody-office/s72-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g6d.bin,../../res/scene/case1/72-brody-office/s72-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g6e.bin,../../res/scene/case1/common/bg-6e.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g6f.bin,../../res/scene/case1/common/bg-6f.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g70.bin,../../res/scene/case1/common/bg-70.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g71.bin,../../res/scene/case1/common/bg-71.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g72.bin,../../res/scene/case1/77-sternwood-gate/s77-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g73.bin,../../res/scene/case1/77-sternwood-gate/s77-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g74.bin,../../res/scene/case1/77-sternwood-gate/s77-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g75.bin,../../res/scene/case1/78-sternwood-gate/s78-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g76.bin,../../res/scene/case1/79-sternwood-door/s79-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g78.bin,../../res/scene/case1/7a-sternwood-foyer/s7a-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g79.bin,../../res/scene/case1/7a-sternwood-foyer/s7a-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g7a.bin,../../res/scene/case1/common/bg-7a.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g7b.bin,../../res/scene/case1/common/bg-7b.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g7c.bin,../../res/scene/case1/7d-sternwood-kitchen/s7d-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g7d.bin,../../res/scene/case1/7d-sternwood-kitchen/s7d-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g7e.bin,../../res/scene/case1/common/bg-7e.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g7f.bin,../../res/scene/case1/common/bg-7f.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g80.bin,../../res/scene/case1/common/bg-80.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g82.bin,../../res/scene/case1/common/bg-82.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g83.bin,../../res/scene/case1/common/bg-83.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g84.bin,../../res/scene/case1/common/bg-84.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g85.bin,../../res/scene/case1/common/bg-85.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g86.bin,../../res/scene/case1/common/bg-86.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g87.bin,../../res/scene/case1/common/bg-87.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g88.bin,../../res/scene/case1/8a-sewer-whirlpool/s8a-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g89.bin,../../res/scene/case1/8a-sewer-whirlpool/s8a-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g8a.bin,../../res/scene/case1/common/bg-8a.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g8b.bin,../../res/scene/case1/common/bg-8b.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g8c.bin,../../res/scene/case1/8d-alligator/s8d-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g8e.bin,../../res/scene/case1/8e-alligator/s8e-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g90.bin,../../res/scene/case1/common/bg-90.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g92.bin,../../res/scene/case1/90-ace-cleared/s90-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g93.bin,../../res/scene/case1/90-ace-cleared/s90-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g94.bin,../../res/scene/case1/91-ace-certificate/s91-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g95.bin,../../res/scene/case1/91-ace-certificate/s91-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g96.bin,../../res/scene/case1/92-handcuffs/s92-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g98.bin,../../res/scene/case1/93-ace-grave/s93-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g9a.bin,../../res/scene/case1/94-socko/s94-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g9c.bin,../../res/scene/case1/95-blam/s95-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/g9e.bin,../../res/scene/case1/96-boom/s96-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/ga0.bin,../../res/scene/case1/97-slot-machine/s97-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/ga2.bin,../../res/scene/case1/6f-sherman-lobby/s6f-bg.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/ga3.bin,../../res/scene/case1/6f-sherman-lobby/s6f-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/gc1.bin,../../res/scene/case1/common/objects-c1.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/gc2.bin,../../res/scene/case1/common/objects-c2.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/gc3.bin,../../res/scene/case1/common/objects-c3.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/gc4.bin,../../res/scene/case1/common/objects-c4.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/gc5.bin,../../res/scene/case1/common/objects-c5.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/gc6.bin,../../res/scene/case1/common/objects-c6.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/gc7.bin,../../res/scene/case1/8f-hitman/s8f-objects.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/gc8.bin,../../res/scene/case1/98-hitman/s98-objects.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/gc9.bin,../../res/scene/case1/common/objects-c9.png))
$(eval $(call scene_gfx,../../res/scene/case1/common/$(REGION)/gca.bin,../../res/scene/case1/common/objects-ca.png))

# case2
$(eval $(call scene_gfx,../../res/scene/case2/00-lucky-bath/$(REGION)/s00-bg.bin,../../res/scene/case2/00-lucky-bath/s00-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/00-lucky-bath/$(REGION)/s00-bg-extra.bin,../../res/scene/case2/00-lucky-bath/s00-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g04.bin,../../res/scene/case2/01-lucky-room/s01-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g06.bin,../../res/scene/case2/02-lucky-casino-hall/s02-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g07.bin,../../res/scene/case2/02-lucky-casino-hall/s02-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g08.bin,../../res/scene/case2/03-lucky-lobby/s03-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g0a.bin,../../res/scene/case2/04-lucky-cashier/s04-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g0c.bin,../../res/scene/case2/05-rudy-blackjack/s05-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g0e.bin,../../res/scene/case2/06-stogie-martin/s06-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g0f.bin,../../res/scene/case2/06-stogie-martin/s06-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g10.bin,../../res/scene/case2/07-lucky-1f/s07-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g11.bin,../../res/scene/case2/07-lucky-1f/s07-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g12.bin,../../res/scene/case2/common/bg-12.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g13.bin,../../res/scene/case2/common/bg-13.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g16.bin,../../res/scene/case2/0a-lucky-4f/s0a-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g17.bin,../../res/scene/case2/0a-lucky-4f/s0a-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g18.bin,../../res/scene/case2/0b-ventini-office/s0b-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g19.bin,../../res/scene/case2/0b-ventini-office/s0b-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g1a.bin,../../res/scene/case2/0c-malone-office/s0c-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g1b.bin,../../res/scene/case2/0c-malone-office/s0c-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g1c.bin,../../res/scene/case2/0d-lucky-entrance/s0d-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g1d.bin,../../res/scene/case2/0d-lucky-entrance/s0d-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g1e.bin,../../res/scene/case2/common/bg-1e.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g1f.bin,../../res/scene/case2/common/bg-1f.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g20.bin,../../res/scene/case2/11-vegas-station/s11-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g21.bin,../../res/scene/case2/11-vegas-station/s11-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g22.bin,../../res/scene/case2/12-vegas-waiting-hall/s12-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g24.bin,../../res/scene/case2/13-vegas-baggage/s13-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g25.bin,../../res/scene/case2/13-vegas-baggage/s13-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g26.bin,../../res/scene/case2/common/bg-26.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g27.bin,../../res/scene/case2/common/bg-27.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g28.bin,../../res/scene/case2/16-train-passengers/s16-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g29.bin,../../res/scene/case2/16-train-passengers/s16-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g2a.bin,../../res/scene/case2/common/bg-2a.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g2b.bin,../../res/scene/case2/common/bg-2b.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g2c.bin,../../res/scene/case2/18-train-interior/s18-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g2d.bin,../../res/scene/case2/18-train-interior/s18-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g2e.bin,../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g30.bin,../../res/scene/case2/1d-chicago-station/s1d-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g31.bin,../../res/scene/case2/1d-chicago-station/s1d-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g32.bin,../../res/scene/case2/1e-gabby-cab/s1e-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g33.bin,../../res/scene/case2/1e-gabby-cab/s1e-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g34.bin,../../res/scene/case2/1f-ace-street/s1f-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g35.bin,../../res/scene/case2/1f-ace-street/s1f-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g36.bin,../../res/scene/case2/20-ace-apartment-door/s20-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g37.bin,../../res/scene/case2/20-ace-apartment-door/s20-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g38.bin,../../res/scene/case2/21-ace-apartment/s21-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g39.bin,../../res/scene/case2/21-ace-apartment/s21-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g3a.bin,../../res/scene/case2/22-joes-place/s22-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g3b.bin,../../res/scene/case2/22-joes-place/s22-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g3c.bin,../../res/scene/case2/23-joes-back-alley/s23-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g3d.bin,../../res/scene/case2/23-joes-back-alley/s23-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g3e.bin,../../res/scene/case2/24-joes-hall/s24-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g40.bin,../../res/scene/case2/25-secretary-office/s25-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g41.bin,../../res/scene/case2/25-secretary-office/s25-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g42.bin,../../res/scene/case2/26-joes-bar/s26-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g43.bin,../../res/scene/case2/26-joes-bar/s26-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g44.bin,../../res/scene/case2/27-joes-manhole/s27-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g46.bin,../../res/scene/case2/28-joes-casino/s28-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g47.bin,../../res/scene/case2/28-joes-casino/s28-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g48.bin,../../res/scene/case2/29-joes-upper-hall/s29-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g49.bin,../../res/scene/case2/29-joes-upper-hall/s29-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g4a.bin,../../res/scene/case2/2a-siegel-office/s2a-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g4b.bin,../../res/scene/case2/2a-siegel-office/s2a-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g4c.bin,../../res/scene/case2/2b-joes-private-door/s2b-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g4e.bin,../../res/scene/case2/2c-joes-side-alley/s2c-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g4f.bin,../../res/scene/case2/2c-joes-side-alley/s2c-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g50.bin,../../res/scene/case2/2d-police-station/s2d-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g51.bin,../../res/scene/case2/2d-police-station/s2d-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g52.bin,../../res/scene/case2/2e-sugar-street/s2e-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g53.bin,../../res/scene/case2/2e-sugar-street/s2e-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g54.bin,../../res/scene/case2/2f-sugar-apartment/s2f-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g55.bin,../../res/scene/case2/2f-sugar-apartment/s2f-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g56.bin,../../res/scene/case2/30-city-morgue/s30-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g57.bin,../../res/scene/case2/30-city-morgue/s30-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g58.bin,../../res/scene/case2/31-morgue-clerk/s31-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g59.bin,../../res/scene/case2/31-morgue-clerk/s31-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g5a.bin,../../res/scene/case2/32-morgue-drawers/s32-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g5b.bin,../../res/scene/case2/32-morgue-drawers/s32-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g5c.bin,../../res/scene/case2/33-laundry-hamper/s33-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g5e.bin,../../res/scene/case2/34-reliant-cleaners/s34-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g5f.bin,../../res/scene/case2/34-reliant-cleaners/s34-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g60.bin,../../res/scene/case2/35-reliant-laundry/s35-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g61.bin,../../res/scene/case2/35-reliant-laundry/s35-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g62.bin,../../res/scene/case2/36-reliant-hall/s36-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g63.bin,../../res/scene/case2/36-reliant-hall/s36-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g64.bin,../../res/scene/case2/37-reliant-office/s37-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g65.bin,../../res/scene/case2/37-reliant-office/s37-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g66.bin,../../res/scene/case2/38-ventini-secret/s38-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g68.bin,../../res/scene/case2/39-hitman/s39-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g6a.bin,../../res/scene/case2/3a-moose-spike/s3a-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g6b.bin,../../res/scene/case2/3a-moose-spike/s3a-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g6c.bin,../../res/scene/case2/3b-dog/s3b-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g6e.bin,../../res/scene/case2/3c-policeman/s3c-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g70.bin,../../res/scene/case2/3d-handcuffs/s3d-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g72.bin,../../res/scene/case2/3e-ace-grave/s3e-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g74.bin,../../res/scene/case2/3f-casino-bouncer/s3f-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g76.bin,../../res/scene/case2/40-lemonade-stand/s40-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g78.bin,../../res/scene/case2/common/bg-78.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g79.bin,../../res/scene/case2/common/bg-79.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g7a.bin,../../res/scene/case2/43-card-tiles/s43-bg.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g7b.bin,../../res/scene/case2/43-card-tiles/s43-bg-extra.png))
$(eval $(call scene_gfx,../../res/scene/case2/00-lucky-bath/$(REGION)/s00-objects.bin,../../res/scene/case2/00-lucky-bath/s00-objects.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g82.bin,../../res/scene/case2/common/objects-82.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g83.bin,../../res/scene/case2/common/objects-83.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g84.bin,../../res/scene/case2/common/objects-84.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g85.bin,../../res/scene/case2/39-hitman/s39-objects.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g86.bin,../../res/scene/case2/common/objects-86.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g87.bin,../../res/scene/case2/common/objects-87.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g88.bin,../../res/scene/case2/1e-gabby-cab/s1e-objects.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g89.bin,../../res/scene/case2/common/objects-89.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g8a.bin,../../res/scene/case2/common/objects-8a.png))
$(eval $(call scene_gfx,../../res/scene/case2/common/$(REGION)/g8b.bin,../../res/scene/case2/34-reliant-cleaners/s34-objects.png))

SCENE_DATA := \
    ../../res/scene/case1/00-joes-stall/s00-bg.attrmap \
    ../../res/scene/case1/00-joes-stall/s00-bg.tilemap \
    ../../res/scene/case1/01-joes-stall/s01-bg.attrmap \
    ../../res/scene/case1/01-joes-stall/s01-bg.tilemap \
    ../../res/scene/case1/02-joes-washroom/s02-bg.attrmap \
    ../../res/scene/case1/02-joes-washroom/s02-bg.pal \
    ../../res/scene/case1/02-joes-washroom/s02-bg.tilemap \
    ../../res/scene/case1/02-joes-washroom/s02-objects.pal \
    ../../res/scene/case1/03-joes-washroom/s03-bg.attrmap \
    ../../res/scene/case1/03-joes-washroom/s03-bg.pal \
    ../../res/scene/case1/03-joes-washroom/s03-bg.tilemap \
    ../../res/scene/case1/03-joes-washroom/s03-objects.pal \
    ../../res/scene/case1/04-joes-hall/s04-bg.attrmap \
    ../../res/scene/case1/04-joes-hall/s04-bg.tilemap \
    ../../res/scene/case1/05-joes-hall/s05-bg.attrmap \
    ../../res/scene/case1/05-joes-hall/s05-bg.tilemap \
    ../../res/scene/case1/06-joes-hall/s06-bg.attrmap \
    ../../res/scene/case1/06-joes-hall/s06-bg.tilemap \
    ../../res/scene/case1/07-joes-hall/s07-bg.attrmap \
    ../../res/scene/case1/07-joes-hall/s07-bg.tilemap \
    ../../res/scene/case1/08-joes-washroom/s08-bg.attrmap \
    ../../res/scene/case1/08-joes-washroom/s08-bg.tilemap \
    ../../res/scene/case1/09-joes-washroom/s09-bg.attrmap \
    ../../res/scene/case1/09-joes-washroom/s09-bg.tilemap \
    ../../res/scene/case1/0a-joes-washroom/s0a-bg.attrmap \
    ../../res/scene/case1/0a-joes-washroom/s0a-bg.tilemap \
    ../../res/scene/case1/0b-joes-washroom/s0b-bg.attrmap \
    ../../res/scene/case1/0b-joes-washroom/s0b-bg.tilemap \
    ../../res/scene/case1/0c-joes-toilet/s0c-bg.attrmap \
    ../../res/scene/case1/0c-joes-toilet/s0c-bg.tilemap \
    ../../res/scene/case1/0d-joes-toilet/s0d-bg.attrmap \
    ../../res/scene/case1/0d-joes-toilet/s0d-bg.tilemap \
    ../../res/scene/case1/0e-joes-bar/s0e-bg.attrmap \
    ../../res/scene/case1/0e-joes-bar/s0e-bg.tilemap \
    ../../res/scene/case1/0f-joes-bar/s0f-bg.attrmap \
    ../../res/scene/case1/0f-joes-bar/s0f-bg.tilemap \
    ../../res/scene/case1/10-joes-bar/s10-bg.attrmap \
    ../../res/scene/case1/10-joes-bar/s10-bg.tilemap \
    ../../res/scene/case1/11-joes-bar/s11-bg.attrmap \
    ../../res/scene/case1/11-joes-bar/s11-bg.tilemap \
    ../../res/scene/case1/12-joes-cellar/s12-bg.attrmap \
    ../../res/scene/case1/12-joes-cellar/s12-bg.tilemap \
    ../../res/scene/case1/13-joes-cellar/s13-bg.attrmap \
    ../../res/scene/case1/13-joes-cellar/s13-bg.tilemap \
    ../../res/scene/case1/14-joes-manhole/s14-bg.attrmap \
    ../../res/scene/case1/14-joes-manhole/s14-bg.tilemap \
    ../../res/scene/case1/15-joes-manhole/s15-bg.attrmap \
    ../../res/scene/case1/15-joes-manhole/s15-bg.tilemap \
    ../../res/scene/case1/16-joes-manhole/s16-bg.attrmap \
    ../../res/scene/case1/16-joes-manhole/s16-bg.tilemap \
    ../../res/scene/case1/17-joes-manhole/s17-bg.attrmap \
    ../../res/scene/case1/17-joes-manhole/s17-bg.tilemap \
    ../../res/scene/case1/18-joes-casino/s18-bg.attrmap \
    ../../res/scene/case1/18-joes-casino/s18-bg.tilemap \
    ../../res/scene/case1/19-joes-casino/s19-bg.attrmap \
    ../../res/scene/case1/19-joes-casino/s19-bg.tilemap \
    ../../res/scene/case1/1a-joes-elevator/s1a-bg.attrmap \
    ../../res/scene/case1/1a-joes-elevator/s1a-bg.tilemap \
    ../../res/scene/case1/1b-joes-elevator/s1b-bg.attrmap \
    ../../res/scene/case1/1b-joes-elevator/s1b-bg.tilemap \
    ../../res/scene/case1/1c-joes-elevator/s1c-bg.attrmap \
    ../../res/scene/case1/1c-joes-elevator/s1c-bg.tilemap \
    ../../res/scene/case1/1d-joes-elevator/s1d-bg.attrmap \
    ../../res/scene/case1/1d-joes-elevator/s1d-bg.tilemap \
    ../../res/scene/case1/1e-joes-elevator/s1e-bg.attrmap \
    ../../res/scene/case1/1e-joes-elevator/s1e-bg.tilemap \
    ../../res/scene/case1/1f-joes-elevator/s1f-bg.attrmap \
    ../../res/scene/case1/1f-joes-elevator/s1f-bg.tilemap \
    ../../res/scene/case1/20-restraint-room/s20-bg.attrmap \
    ../../res/scene/case1/20-restraint-room/s20-bg.tilemap \
    ../../res/scene/case1/21-restraint-room/s21-bg.attrmap \
    ../../res/scene/case1/21-restraint-room/s21-bg.tilemap \
    ../../res/scene/case1/22-restraint-room/s22-bg.attrmap \
    ../../res/scene/case1/22-restraint-room/s22-bg.tilemap \
    ../../res/scene/case1/23-restraint-room/s23-bg.attrmap \
    ../../res/scene/case1/23-restraint-room/s23-bg.tilemap \
    ../../res/scene/case1/24-joes-upper-hall/s24-bg.attrmap \
    ../../res/scene/case1/24-joes-upper-hall/s24-bg.tilemap \
    ../../res/scene/case1/25-joes-upper-hall/s25-bg.attrmap \
    ../../res/scene/case1/25-joes-upper-hall/s25-bg.tilemap \
    ../../res/scene/case1/26-joes-upper-hall/s26-bg.attrmap \
    ../../res/scene/case1/26-joes-upper-hall/s26-bg.tilemap \
    ../../res/scene/case1/27-joes-upper-hall/s27-bg.attrmap \
    ../../res/scene/case1/27-joes-upper-hall/s27-bg.tilemap \
    ../../res/scene/case1/28-siegel-office/s28-bg.attrmap \
    ../../res/scene/case1/28-siegel-office/s28-bg.tilemap \
    ../../res/scene/case1/29-siegel-office/s29-bg.attrmap \
    ../../res/scene/case1/29-siegel-office/s29-bg.tilemap \
    ../../res/scene/case1/2a-siegel-office/s2a-bg.attrmap \
    ../../res/scene/case1/2a-siegel-office/s2a-bg.tilemap \
    ../../res/scene/case1/2b-siegel-office/s2b-bg.attrmap \
    ../../res/scene/case1/2b-siegel-office/s2b-bg.tilemap \
    ../../res/scene/case1/2c-secretary-office/s2c-bg.attrmap \
    ../../res/scene/case1/2c-secretary-office/s2c-bg.tilemap \
    ../../res/scene/case1/2d-secretary-office/s2d-bg.attrmap \
    ../../res/scene/case1/2d-secretary-office/s2d-bg.tilemap \
    ../../res/scene/case1/2e-joes-private-door/s2e-bg.attrmap \
    ../../res/scene/case1/2e-joes-private-door/s2e-bg.tilemap \
    ../../res/scene/case1/2f-joes-private-door/s2f-bg.attrmap \
    ../../res/scene/case1/2f-joes-private-door/s2f-bg.tilemap \
    ../../res/scene/case1/30-joes-street/s30-bg.attrmap \
    ../../res/scene/case1/30-joes-street/s30-bg.tilemap \
    ../../res/scene/case1/31-joes-street/s31-bg.attrmap \
    ../../res/scene/case1/31-joes-street/s31-bg.tilemap \
    ../../res/scene/case1/32-joes-street/s32-bg.attrmap \
    ../../res/scene/case1/32-joes-street/s32-bg.tilemap \
    ../../res/scene/case1/33-joes-street/s33-bg.attrmap \
    ../../res/scene/case1/33-joes-street/s33-bg.tilemap \
    ../../res/scene/case1/34-joes-street/s34-bg.attrmap \
    ../../res/scene/case1/34-joes-street/s34-bg.tilemap \
    ../../res/scene/case1/35-joes-street/s35-bg.attrmap \
    ../../res/scene/case1/35-joes-street/s35-bg.tilemap \
    ../../res/scene/case1/36-joes-street/s36-bg.attrmap \
    ../../res/scene/case1/36-joes-street/s36-bg.tilemap \
    ../../res/scene/case1/37-joes-street/s37-bg.attrmap \
    ../../res/scene/case1/37-joes-street/s37-bg.tilemap \
    ../../res/scene/case1/38-joes-street/s38-bg.attrmap \
    ../../res/scene/case1/38-joes-street/s38-bg.tilemap \
    ../../res/scene/case1/39-joes-street/s39-bg.attrmap \
    ../../res/scene/case1/39-joes-street/s39-bg.tilemap \
    ../../res/scene/case1/3a-joes-street/s3a-bg.attrmap \
    ../../res/scene/case1/3a-joes-street/s3a-bg.tilemap \
    ../../res/scene/case1/3b-joes-street/s3b-bg.attrmap \
    ../../res/scene/case1/3b-joes-street/s3b-bg.tilemap \
    ../../res/scene/case1/3c-joes-street/s3c-bg.attrmap \
    ../../res/scene/case1/3c-joes-street/s3c-bg.tilemap \
    ../../res/scene/case1/3d-joes-street/s3d-bg.attrmap \
    ../../res/scene/case1/3d-joes-street/s3d-bg.tilemap \
    ../../res/scene/case1/3e-joes-street/s3e-bg.attrmap \
    ../../res/scene/case1/3e-joes-street/s3e-bg.tilemap \
    ../../res/scene/case1/3f-joes-street/s3f-bg.attrmap \
    ../../res/scene/case1/3f-joes-street/s3f-bg.tilemap \
    ../../res/scene/case1/40-joes-street/s40-bg.attrmap \
    ../../res/scene/case1/40-joes-street/s40-bg.pal \
    ../../res/scene/case1/40-joes-street/s40-bg.tilemap \
    ../../res/scene/case1/40-joes-street/s40-objects.pal \
    ../../res/scene/case1/41-mercedes-interior/s41-bg.attrmap \
    ../../res/scene/case1/41-mercedes-interior/s41-bg.tilemap \
    ../../res/scene/case1/42-mercedes-interior/s42-bg.attrmap \
    ../../res/scene/case1/42-mercedes-interior/s42-bg.tilemap \
    ../../res/scene/case1/43-mercedes-trunk/s43-bg.attrmap \
    ../../res/scene/case1/43-mercedes-trunk/s43-bg.pal \
    ../../res/scene/case1/43-mercedes-trunk/s43-bg.tilemap \
    ../../res/scene/case1/43-mercedes-trunk/s43-objects.pal \
    ../../res/scene/case1/44-sternwood-trunk/s44-bg.attrmap \
    ../../res/scene/case1/44-sternwood-trunk/s44-bg.pal \
    ../../res/scene/case1/44-sternwood-trunk/s44-bg.tilemap \
    ../../res/scene/case1/44-sternwood-trunk/s44-objects.pal \
    ../../res/scene/case1/45-newsstand/s45-bg.attrmap \
    ../../res/scene/case1/45-newsstand/s45-bg.pal \
    ../../res/scene/case1/45-newsstand/s45-bg.tilemap \
    ../../res/scene/case1/45-newsstand/s45-objects.pal \
    ../../res/scene/case1/46-newsstand/s46-bg.attrmap \
    ../../res/scene/case1/46-newsstand/s46-bg.pal \
    ../../res/scene/case1/46-newsstand/s46-bg.tilemap \
    ../../res/scene/case1/46-newsstand/s46-objects.pal \
    ../../res/scene/case1/47-petes-gun-palace/s47-bg.attrmap \
    ../../res/scene/case1/47-petes-gun-palace/s47-bg.tilemap \
    ../../res/scene/case1/48-petes-gun-palace/s48-bg.attrmap \
    ../../res/scene/case1/48-petes-gun-palace/s48-bg.tilemap \
    ../../res/scene/case1/49-petes-gun-palace/s49-bg.attrmap \
    ../../res/scene/case1/49-petes-gun-palace/s49-bg.pal \
    ../../res/scene/case1/49-petes-gun-palace/s49-bg.tilemap \
    ../../res/scene/case1/49-petes-gun-palace/s49-objects.pal \
    ../../res/scene/case1/4a-petes-counter/s4a-bg.attrmap \
    ../../res/scene/case1/4a-petes-counter/s4a-bg.pal \
    ../../res/scene/case1/4a-petes-counter/s4a-bg.tilemap \
    ../../res/scene/case1/4a-petes-counter/s4a-objects.pal \
    ../../res/scene/case1/4b-peoria-blue-cab/s4b-bg.attrmap \
    ../../res/scene/case1/4b-peoria-blue-cab/s4b-bg.pal \
    ../../res/scene/case1/4b-peoria-blue-cab/s4b-bg.tilemap \
    ../../res/scene/case1/4b-peoria-blue-cab/s4b-objects.pal \
    ../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.attrmap \
    ../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.pal \
    ../../res/scene/case1/4c-peoria-blue-cab/s4c-bg.tilemap \
    ../../res/scene/case1/4c-peoria-blue-cab/s4c-objects.pal \
    ../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.attrmap \
    ../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.pal \
    ../../res/scene/case1/4d-peoria-yellow-cab/s4d-bg.tilemap \
    ../../res/scene/case1/4d-peoria-yellow-cab/s4d-objects.pal \
    ../../res/scene/case1/4e-police-station/s4e-bg.attrmap \
    ../../res/scene/case1/4e-police-station/s4e-bg.pal \
    ../../res/scene/case1/4e-police-station/s4e-bg.tilemap \
    ../../res/scene/case1/4e-police-station/s4e-objects.pal \
    ../../res/scene/case1/4f-police-station/s4f-bg.attrmap \
    ../../res/scene/case1/4f-police-station/s4f-bg.pal \
    ../../res/scene/case1/4f-police-station/s4f-bg.tilemap \
    ../../res/scene/case1/4f-police-station/s4f-objects.pal \
    ../../res/scene/case1/50-peoria-alley/s50-bg.attrmap \
    ../../res/scene/case1/50-peoria-alley/s50-bg.pal \
    ../../res/scene/case1/50-peoria-alley/s50-bg.tilemap \
    ../../res/scene/case1/50-peoria-alley/s50-objects.pal \
    ../../res/scene/case1/51-joes-back-alley/s51-bg.attrmap \
    ../../res/scene/case1/51-joes-back-alley/s51-bg.tilemap \
    ../../res/scene/case1/52-joes-back-alley/s52-bg.attrmap \
    ../../res/scene/case1/52-joes-back-alley/s52-bg.tilemap \
    ../../res/scene/case1/53-drunkard/s53-bg.attrmap \
    ../../res/scene/case1/53-drunkard/s53-bg.pal \
    ../../res/scene/case1/53-drunkard/s53-bg.tilemap \
    ../../res/scene/case1/53-drunkard/s53-objects.pal \
    ../../res/scene/case1/54-mugger/s54-bg.attrmap \
    ../../res/scene/case1/54-mugger/s54-bg.pal \
    ../../res/scene/case1/54-mugger/s54-bg.tilemap \
    ../../res/scene/case1/54-mugger/s54-objects.pal \
    ../../res/scene/case1/55-sugar-shack/s55-bg.attrmap \
    ../../res/scene/case1/55-sugar-shack/s55-bg.pal \
    ../../res/scene/case1/55-sugar-shack/s55-bg.tilemap \
    ../../res/scene/case1/55-sugar-shack/s55-objects.pal \
    ../../res/scene/case1/56-sugar-shack/s56-bg.attrmap \
    ../../res/scene/case1/56-sugar-shack/s56-bg.pal \
    ../../res/scene/case1/56-sugar-shack/s56-bg.tilemap \
    ../../res/scene/case1/56-sugar-shack/s56-objects.pal \
    ../../res/scene/case1/57-sugar-portrait/s57-bg.attrmap \
    ../../res/scene/case1/57-sugar-portrait/s57-bg.pal \
    ../../res/scene/case1/57-sugar-portrait/s57-bg.tilemap \
    ../../res/scene/case1/57-sugar-portrait/s57-objects.pal \
    ../../res/scene/case1/58-cab-interior/s58-bg.attrmap \
    ../../res/scene/case1/58-cab-interior/s58-bg.tilemap \
    ../../res/scene/case1/59-cab-interior/s59-bg.attrmap \
    ../../res/scene/case1/59-cab-interior/s59-bg.tilemap \
    ../../res/scene/case1/5a-cab-interior/s5a-bg.attrmap \
    ../../res/scene/case1/5a-cab-interior/s5a-bg.tilemap \
    ../../res/scene/case1/5b-cab-interior/s5b-bg.attrmap \
    ../../res/scene/case1/5b-cab-interior/s5b-bg.tilemap \
    ../../res/scene/case1/5c-stanford-arms/s5c-bg.attrmap \
    ../../res/scene/case1/5c-stanford-arms/s5c-bg.tilemap \
    ../../res/scene/case1/5d-stanford-arms/s5d-bg.attrmap \
    ../../res/scene/case1/5d-stanford-arms/s5d-bg.tilemap \
    ../../res/scene/case1/5e-stanford-arms/s5e-bg.attrmap \
    ../../res/scene/case1/5e-stanford-arms/s5e-bg.tilemap \
    ../../res/scene/case1/5f-stanford-arms/s5f-bg.attrmap \
    ../../res/scene/case1/5f-stanford-arms/s5f-bg.tilemap \
    ../../res/scene/case1/60-stanford-lobby/s60-bg.attrmap \
    ../../res/scene/case1/60-stanford-lobby/s60-bg.tilemap \
    ../../res/scene/case1/61-stanford-lobby/s61-bg.attrmap \
    ../../res/scene/case1/61-stanford-lobby/s61-bg.tilemap \
    ../../res/scene/case1/62-stanford-elevator/s62-bg.attrmap \
    ../../res/scene/case1/62-stanford-elevator/s62-bg.tilemap \
    ../../res/scene/case1/63-stanford-elevator/s63-bg.attrmap \
    ../../res/scene/case1/63-stanford-elevator/s63-bg.tilemap \
    ../../res/scene/case1/64-stanford-elevator/s64-bg.attrmap \
    ../../res/scene/case1/64-stanford-elevator/s64-bg.tilemap \
    ../../res/scene/case1/65-siegel-penthouse/s65-bg.attrmap \
    ../../res/scene/case1/65-siegel-penthouse/s65-bg.pal \
    ../../res/scene/case1/65-siegel-penthouse/s65-bg.tilemap \
    ../../res/scene/case1/65-siegel-penthouse/s65-objects.pal \
    ../../res/scene/case1/66-vickers-bungalow/s66-bg.attrmap \
    ../../res/scene/case1/66-vickers-bungalow/s66-bg.tilemap \
    ../../res/scene/case1/67-vickers-bungalow/s67-bg.attrmap \
    ../../res/scene/case1/67-vickers-bungalow/s67-bg.tilemap \
    ../../res/scene/case1/68-vickers-bungalow/s68-bg.attrmap \
    ../../res/scene/case1/68-vickers-bungalow/s68-bg.tilemap \
    ../../res/scene/case1/69-vickers-bungalow/s69-bg.attrmap \
    ../../res/scene/case1/69-vickers-bungalow/s69-bg.tilemap \
    ../../res/scene/case1/6a-vickers-bedroom/s6a-bg.attrmap \
    ../../res/scene/case1/6a-vickers-bedroom/s6a-bg.pal \
    ../../res/scene/case1/6a-vickers-bedroom/s6a-bg.tilemap \
    ../../res/scene/case1/6a-vickers-bedroom/s6a-objects.pal \
    ../../res/scene/case1/6b-sherman-offices/s6b-bg.attrmap \
    ../../res/scene/case1/6b-sherman-offices/s6b-bg.tilemap \
    ../../res/scene/case1/6c-sherman-offices/s6c-bg.attrmap \
    ../../res/scene/case1/6c-sherman-offices/s6c-bg.tilemap \
    ../../res/scene/case1/6d-sherman-offices/s6d-bg.attrmap \
    ../../res/scene/case1/6d-sherman-offices/s6d-bg.tilemap \
    ../../res/scene/case1/6e-sherman-offices/s6e-bg.attrmap \
    ../../res/scene/case1/6e-sherman-offices/s6e-bg.tilemap \
    ../../res/scene/case1/6f-sherman-lobby/s6f-bg.attrmap \
    ../../res/scene/case1/6f-sherman-lobby/s6f-bg.pal \
    ../../res/scene/case1/6f-sherman-lobby/s6f-bg.tilemap \
    ../../res/scene/case1/6f-sherman-lobby/s6f-objects.pal \
    ../../res/scene/case1/70-brody-door/s70-bg.attrmap \
    ../../res/scene/case1/70-brody-door/s70-bg.tilemap \
    ../../res/scene/case1/71-brody-door/s71-bg.attrmap \
    ../../res/scene/case1/71-brody-door/s71-bg.tilemap \
    ../../res/scene/case1/72-brody-office/s72-bg.attrmap \
    ../../res/scene/case1/72-brody-office/s72-bg.pal \
    ../../res/scene/case1/72-brody-office/s72-bg.tilemap \
    ../../res/scene/case1/72-brody-office/s72-objects.pal \
    ../../res/scene/case1/73-ace-door/s73-bg.attrmap \
    ../../res/scene/case1/73-ace-door/s73-bg.tilemap \
    ../../res/scene/case1/74-ace-door/s74-bg.attrmap \
    ../../res/scene/case1/74-ace-door/s74-bg.tilemap \
    ../../res/scene/case1/75-ace-office/s75-bg.attrmap \
    ../../res/scene/case1/75-ace-office/s75-bg.tilemap \
    ../../res/scene/case1/76-ace-office/s76-bg.attrmap \
    ../../res/scene/case1/76-ace-office/s76-bg.tilemap \
    ../../res/scene/case1/77-sternwood-gate/s77-bg.attrmap \
    ../../res/scene/case1/77-sternwood-gate/s77-bg.pal \
    ../../res/scene/case1/77-sternwood-gate/s77-bg.tilemap \
    ../../res/scene/case1/77-sternwood-gate/s77-objects.pal \
    ../../res/scene/case1/78-sternwood-gate/s78-bg.attrmap \
    ../../res/scene/case1/78-sternwood-gate/s78-bg.pal \
    ../../res/scene/case1/78-sternwood-gate/s78-bg.tilemap \
    ../../res/scene/case1/78-sternwood-gate/s78-objects.pal \
    ../../res/scene/case1/79-sternwood-door/s79-bg.attrmap \
    ../../res/scene/case1/79-sternwood-door/s79-bg.pal \
    ../../res/scene/case1/79-sternwood-door/s79-bg.tilemap \
    ../../res/scene/case1/79-sternwood-door/s79-objects.pal \
    ../../res/scene/case1/7a-sternwood-foyer/s7a-bg.attrmap \
    ../../res/scene/case1/7a-sternwood-foyer/s7a-bg.pal \
    ../../res/scene/case1/7a-sternwood-foyer/s7a-bg.tilemap \
    ../../res/scene/case1/7a-sternwood-foyer/s7a-objects.pal \
    ../../res/scene/case1/7b-sternwood-foyer/s7b-bg.attrmap \
    ../../res/scene/case1/7b-sternwood-foyer/s7b-bg.tilemap \
    ../../res/scene/case1/7c-sternwood-foyer/s7c-bg.attrmap \
    ../../res/scene/case1/7c-sternwood-foyer/s7c-bg.tilemap \
    ../../res/scene/case1/7d-sternwood-kitchen/s7d-bg.attrmap \
    ../../res/scene/case1/7d-sternwood-kitchen/s7d-bg.pal \
    ../../res/scene/case1/7d-sternwood-kitchen/s7d-bg.tilemap \
    ../../res/scene/case1/7d-sternwood-kitchen/s7d-objects.pal \
    ../../res/scene/case1/7e-sternwood-hall/s7e-bg.attrmap \
    ../../res/scene/case1/7e-sternwood-hall/s7e-bg.tilemap \
    ../../res/scene/case1/7f-sternwood-hall/s7f-bg.attrmap \
    ../../res/scene/case1/7f-sternwood-hall/s7f-bg.tilemap \
    ../../res/scene/case1/80-sternwood-hall/s80-bg.attrmap \
    ../../res/scene/case1/80-sternwood-hall/s80-bg.tilemap \
    ../../res/scene/case1/81-sternwood-hall/s81-bg.attrmap \
    ../../res/scene/case1/81-sternwood-hall/s81-bg.tilemap \
    ../../res/scene/case1/82-vickers-bed/s82-bg.attrmap \
    ../../res/scene/case1/82-vickers-bed/s82-bg.tilemap \
    ../../res/scene/case1/83-vickers-bed/s83-bg.attrmap \
    ../../res/scene/case1/83-vickers-bed/s83-bg.tilemap \
    ../../res/scene/case1/84-sternwood-bed/s84-bg.attrmap \
    ../../res/scene/case1/84-sternwood-bed/s84-bg.tilemap \
    ../../res/scene/case1/85-sternwood-bed/s85-bg.attrmap \
    ../../res/scene/case1/85-sternwood-bed/s85-bg.tilemap \
    ../../res/scene/case1/86-sewer-tunnel/s86-bg.attrmap \
    ../../res/scene/case1/86-sewer-tunnel/s86-bg.pal \
    ../../res/scene/case1/86-sewer-tunnel/s86-bg.tilemap \
    ../../res/scene/case1/86-sewer-tunnel/s86-objects.pal \
    ../../res/scene/case1/87-sewer-junction/s87-bg.attrmap \
    ../../res/scene/case1/87-sewer-junction/s87-bg.pal \
    ../../res/scene/case1/87-sewer-junction/s87-bg.tilemap \
    ../../res/scene/case1/87-sewer-junction/s87-objects.pal \
    ../../res/scene/case1/88-sewer-junction/s88-bg.attrmap \
    ../../res/scene/case1/88-sewer-junction/s88-bg.pal \
    ../../res/scene/case1/88-sewer-junction/s88-bg.tilemap \
    ../../res/scene/case1/88-sewer-junction/s88-objects.pal \
    ../../res/scene/case1/89-sewer-tunnel/s89-bg.attrmap \
    ../../res/scene/case1/89-sewer-tunnel/s89-bg.pal \
    ../../res/scene/case1/89-sewer-tunnel/s89-bg.tilemap \
    ../../res/scene/case1/89-sewer-tunnel/s89-objects.pal \
    ../../res/scene/case1/8a-sewer-whirlpool/s8a-bg.attrmap \
    ../../res/scene/case1/8a-sewer-whirlpool/s8a-bg.pal \
    ../../res/scene/case1/8a-sewer-whirlpool/s8a-bg.tilemap \
    ../../res/scene/case1/8a-sewer-whirlpool/s8a-objects.pal \
    ../../res/scene/case1/8b-sewer-ladder/s8b-bg.attrmap \
    ../../res/scene/case1/8b-sewer-ladder/s8b-bg.tilemap \
    ../../res/scene/case1/8c-sewer-ladder/s8c-bg.attrmap \
    ../../res/scene/case1/8c-sewer-ladder/s8c-bg.tilemap \
    ../../res/scene/case1/8d-alligator/s8d-bg.attrmap \
    ../../res/scene/case1/8d-alligator/s8d-bg.pal \
    ../../res/scene/case1/8d-alligator/s8d-bg.tilemap \
    ../../res/scene/case1/8d-alligator/s8d-objects.pal \
    ../../res/scene/case1/8e-alligator/s8e-bg.attrmap \
    ../../res/scene/case1/8e-alligator/s8e-bg.pal \
    ../../res/scene/case1/8e-alligator/s8e-bg.tilemap \
    ../../res/scene/case1/8e-alligator/s8e-objects.pal \
    ../../res/scene/case1/8f-hitman/s8f-bg.attrmap \
    ../../res/scene/case1/8f-hitman/s8f-bg.pal \
    ../../res/scene/case1/8f-hitman/s8f-bg.tilemap \
    ../../res/scene/case1/8f-hitman/s8f-objects.pal \
    ../../res/scene/case1/90-ace-cleared/s90-bg.attrmap \
    ../../res/scene/case1/90-ace-cleared/s90-bg.pal \
    ../../res/scene/case1/90-ace-cleared/s90-bg.tilemap \
    ../../res/scene/case1/90-ace-cleared/s90-objects.pal \
    ../../res/scene/case1/91-ace-certificate/s91-bg.attrmap \
    ../../res/scene/case1/91-ace-certificate/s91-bg.pal \
    ../../res/scene/case1/91-ace-certificate/s91-bg.tilemap \
    ../../res/scene/case1/91-ace-certificate/s91-objects.pal \
    ../../res/scene/case1/92-handcuffs/s92-bg.attrmap \
    ../../res/scene/case1/92-handcuffs/s92-bg.pal \
    ../../res/scene/case1/92-handcuffs/s92-bg.tilemap \
    ../../res/scene/case1/92-handcuffs/s92-objects.pal \
    ../../res/scene/case1/93-ace-grave/s93-bg.attrmap \
    ../../res/scene/case1/93-ace-grave/s93-bg.pal \
    ../../res/scene/case1/93-ace-grave/s93-bg.tilemap \
    ../../res/scene/case1/93-ace-grave/s93-objects.pal \
    ../../res/scene/case1/94-socko/s94-bg.attrmap \
    ../../res/scene/case1/94-socko/s94-bg.pal \
    ../../res/scene/case1/94-socko/s94-bg.tilemap \
    ../../res/scene/case1/94-socko/s94-objects.pal \
    ../../res/scene/case1/95-blam/s95-bg.attrmap \
    ../../res/scene/case1/95-blam/s95-bg.pal \
    ../../res/scene/case1/95-blam/s95-bg.tilemap \
    ../../res/scene/case1/95-blam/s95-objects.pal \
    ../../res/scene/case1/96-boom/s96-bg.attrmap \
    ../../res/scene/case1/96-boom/s96-bg.pal \
    ../../res/scene/case1/96-boom/s96-bg.tilemap \
    ../../res/scene/case1/96-boom/s96-objects.pal \
    ../../res/scene/case1/97-slot-machine/s97-bg.attrmap \
    ../../res/scene/case1/97-slot-machine/s97-bg.pal \
    ../../res/scene/case1/97-slot-machine/s97-bg.tilemap \
    ../../res/scene/case1/97-slot-machine/s97-objects.pal \
    ../../res/scene/case1/98-hitman/s98-bg.attrmap \
    ../../res/scene/case1/98-hitman/s98-bg.pal \
    ../../res/scene/case1/98-hitman/s98-bg.tilemap \
    ../../res/scene/case1/98-hitman/s98-objects.pal \
    ../../res/scene/case1/common/$(REGION)/g02.bin \
    ../../res/scene/case1/common/$(REGION)/g04.bin \
    ../../res/scene/case1/common/$(REGION)/g06.bin \
    ../../res/scene/case1/common/$(REGION)/g08.bin \
    ../../res/scene/case1/common/$(REGION)/g0a.bin \
    ../../res/scene/case1/common/$(REGION)/g0c.bin \
    ../../res/scene/case1/common/$(REGION)/g0e.bin \
    ../../res/scene/case1/common/$(REGION)/g10.bin \
    ../../res/scene/case1/common/$(REGION)/g11.bin \
    ../../res/scene/case1/common/$(REGION)/g12.bin \
    ../../res/scene/case1/common/$(REGION)/g13.bin \
    ../../res/scene/case1/common/$(REGION)/g14.bin \
    ../../res/scene/case1/common/$(REGION)/g16.bin \
    ../../res/scene/case1/common/$(REGION)/g17.bin \
    ../../res/scene/case1/common/$(REGION)/g18.bin \
    ../../res/scene/case1/common/$(REGION)/g1a.bin \
    ../../res/scene/case1/common/$(REGION)/g1b.bin \
    ../../res/scene/case1/common/$(REGION)/g1c.bin \
    ../../res/scene/case1/common/$(REGION)/g1d.bin \
    ../../res/scene/case1/common/$(REGION)/g1e.bin \
    ../../res/scene/case1/common/$(REGION)/g1f.bin \
    ../../res/scene/case1/common/$(REGION)/g20.bin \
    ../../res/scene/case1/common/$(REGION)/g22.bin \
    ../../res/scene/case1/common/$(REGION)/g23.bin \
    ../../res/scene/case1/common/$(REGION)/g24.bin \
    ../../res/scene/case1/common/$(REGION)/g25.bin \
    ../../res/scene/case1/common/$(REGION)/g26.bin \
    ../../res/scene/case1/common/$(REGION)/g28.bin \
    ../../res/scene/case1/common/$(REGION)/g29.bin \
    ../../res/scene/case1/common/$(REGION)/g2a.bin \
    ../../res/scene/case1/common/$(REGION)/g2b.bin \
    ../../res/scene/case1/common/$(REGION)/g2c.bin \
    ../../res/scene/case1/common/$(REGION)/g2d.bin \
    ../../res/scene/case1/common/$(REGION)/g2e.bin \
    ../../res/scene/case1/common/$(REGION)/g2f.bin \
    ../../res/scene/case1/common/$(REGION)/g30.bin \
    ../../res/scene/case1/common/$(REGION)/g31.bin \
    ../../res/scene/case1/common/$(REGION)/g32.bin \
    ../../res/scene/case1/common/$(REGION)/g33.bin \
    ../../res/scene/case1/common/$(REGION)/g34.bin \
    ../../res/scene/case1/common/$(REGION)/g36.bin \
    ../../res/scene/case1/common/$(REGION)/g37.bin \
    ../../res/scene/case1/common/$(REGION)/g38.bin \
    ../../res/scene/case1/common/$(REGION)/g3a.bin \
    ../../res/scene/case1/common/$(REGION)/g3b.bin \
    ../../res/scene/case1/common/$(REGION)/g3c.bin \
    ../../res/scene/case1/common/$(REGION)/g3d.bin \
    ../../res/scene/case1/common/$(REGION)/g3e.bin \
    ../../res/scene/case1/common/$(REGION)/g40.bin \
    ../../res/scene/case1/common/$(REGION)/g41.bin \
    ../../res/scene/case1/common/$(REGION)/g42.bin \
    ../../res/scene/case1/common/$(REGION)/g44.bin \
    ../../res/scene/case1/common/$(REGION)/g46.bin \
    ../../res/scene/case1/common/$(REGION)/g48.bin \
    ../../res/scene/case1/common/$(REGION)/g49.bin \
    ../../res/scene/case1/common/$(REGION)/g4a.bin \
    ../../res/scene/case1/common/$(REGION)/g4b.bin \
    ../../res/scene/case1/common/$(REGION)/g4c.bin \
    ../../res/scene/case1/common/$(REGION)/g4e.bin \
    ../../res/scene/case1/common/$(REGION)/g4f.bin \
    ../../res/scene/case1/common/$(REGION)/g50.bin \
    ../../res/scene/case1/common/$(REGION)/g52.bin \
    ../../res/scene/case1/common/$(REGION)/g53.bin \
    ../../res/scene/case1/common/$(REGION)/g54.bin \
    ../../res/scene/case1/common/$(REGION)/g56.bin \
    ../../res/scene/case1/common/$(REGION)/g57.bin \
    ../../res/scene/case1/common/$(REGION)/g58.bin \
    ../../res/scene/case1/common/$(REGION)/g59.bin \
    ../../res/scene/case1/common/$(REGION)/g5a.bin \
    ../../res/scene/case1/common/$(REGION)/g5c.bin \
    ../../res/scene/case1/common/$(REGION)/g5d.bin \
    ../../res/scene/case1/common/$(REGION)/g5e.bin \
    ../../res/scene/case1/common/$(REGION)/g5f.bin \
    ../../res/scene/case1/common/$(REGION)/g60.bin \
    ../../res/scene/case1/common/$(REGION)/g61.bin \
    ../../res/scene/case1/common/$(REGION)/g62.bin \
    ../../res/scene/case1/common/$(REGION)/g63.bin \
    ../../res/scene/case1/common/$(REGION)/g64.bin \
    ../../res/scene/case1/common/$(REGION)/g65.bin \
    ../../res/scene/case1/common/$(REGION)/g66.bin \
    ../../res/scene/case1/common/$(REGION)/g67.bin \
    ../../res/scene/case1/common/$(REGION)/g68.bin \
    ../../res/scene/case1/common/$(REGION)/g69.bin \
    ../../res/scene/case1/common/$(REGION)/g6a.bin \
    ../../res/scene/case1/common/$(REGION)/g6c.bin \
    ../../res/scene/case1/common/$(REGION)/g6d.bin \
    ../../res/scene/case1/common/$(REGION)/g6e.bin \
    ../../res/scene/case1/common/$(REGION)/g6f.bin \
    ../../res/scene/case1/common/$(REGION)/g70.bin \
    ../../res/scene/case1/common/$(REGION)/g71.bin \
    ../../res/scene/case1/common/$(REGION)/g72.bin \
    ../../res/scene/case1/common/$(REGION)/g73.bin \
    ../../res/scene/case1/common/$(REGION)/g74.bin \
    ../../res/scene/case1/common/$(REGION)/g75.bin \
    ../../res/scene/case1/common/$(REGION)/g76.bin \
    ../../res/scene/case1/common/$(REGION)/g78.bin \
    ../../res/scene/case1/common/$(REGION)/g79.bin \
    ../../res/scene/case1/common/$(REGION)/g7a.bin \
    ../../res/scene/case1/common/$(REGION)/g7b.bin \
    ../../res/scene/case1/common/$(REGION)/g7c.bin \
    ../../res/scene/case1/common/$(REGION)/g7d.bin \
    ../../res/scene/case1/common/$(REGION)/g7e.bin \
    ../../res/scene/case1/common/$(REGION)/g7f.bin \
    ../../res/scene/case1/common/$(REGION)/g80.bin \
    ../../res/scene/case1/common/$(REGION)/g82.bin \
    ../../res/scene/case1/common/$(REGION)/g83.bin \
    ../../res/scene/case1/common/$(REGION)/g84.bin \
    ../../res/scene/case1/common/$(REGION)/g85.bin \
    ../../res/scene/case1/common/$(REGION)/g86.bin \
    ../../res/scene/case1/common/$(REGION)/g87.bin \
    ../../res/scene/case1/common/$(REGION)/g88.bin \
    ../../res/scene/case1/common/$(REGION)/g89.bin \
    ../../res/scene/case1/common/$(REGION)/g8a.bin \
    ../../res/scene/case1/common/$(REGION)/g8b.bin \
    ../../res/scene/case1/common/$(REGION)/g8c.bin \
    ../../res/scene/case1/common/$(REGION)/g8e.bin \
    ../../res/scene/case1/common/$(REGION)/g90.bin \
    ../../res/scene/case1/common/$(REGION)/g92.bin \
    ../../res/scene/case1/common/$(REGION)/g93.bin \
    ../../res/scene/case1/common/$(REGION)/g94.bin \
    ../../res/scene/case1/common/$(REGION)/g95.bin \
    ../../res/scene/case1/common/$(REGION)/g96.bin \
    ../../res/scene/case1/common/$(REGION)/g98.bin \
    ../../res/scene/case1/common/$(REGION)/g9a.bin \
    ../../res/scene/case1/common/$(REGION)/g9c.bin \
    ../../res/scene/case1/common/$(REGION)/g9e.bin \
    ../../res/scene/case1/common/$(REGION)/ga0.bin \
    ../../res/scene/case1/common/$(REGION)/ga2.bin \
    ../../res/scene/case1/common/$(REGION)/ga3.bin \
    ../../res/scene/case1/common/$(REGION)/gc1.bin \
    ../../res/scene/case1/common/$(REGION)/gc2.bin \
    ../../res/scene/case1/common/$(REGION)/gc3.bin \
    ../../res/scene/case1/common/$(REGION)/gc4.bin \
    ../../res/scene/case1/common/$(REGION)/gc5.bin \
    ../../res/scene/case1/common/$(REGION)/gc6.bin \
    ../../res/scene/case1/common/$(REGION)/gc7.bin \
    ../../res/scene/case1/common/$(REGION)/gc8.bin \
    ../../res/scene/case1/common/$(REGION)/gc9.bin \
    ../../res/scene/case1/common/$(REGION)/gca.bin \
    ../../res/scene/case1/common/pb00.pal \
    ../../res/scene/case1/common/pb03.pal \
    ../../res/scene/case1/common/pb04.pal \
    ../../res/scene/case1/common/pb05.pal \
    ../../res/scene/case1/common/pb06.pal \
    ../../res/scene/case1/common/pb07.pal \
    ../../res/scene/case1/common/pb08.pal \
    ../../res/scene/case1/common/pb09.pal \
    ../../res/scene/case1/common/pb0a.pal \
    ../../res/scene/case1/common/pb0b.pal \
    ../../res/scene/case1/common/pb0c.pal \
    ../../res/scene/case1/common/pb0d.pal \
    ../../res/scene/case1/common/pb0e.pal \
    ../../res/scene/case1/common/pb0f.pal \
    ../../res/scene/case1/common/pb10.pal \
    ../../res/scene/case1/common/pb11.pal \
    ../../res/scene/case1/common/pb12.pal \
    ../../res/scene/case1/common/pb13.pal \
    ../../res/scene/case1/common/pb15.pal \
    ../../res/scene/case1/common/pb1a.pal \
    ../../res/scene/case1/common/pb23.pal \
    ../../res/scene/case1/common/pb29.pal \
    ../../res/scene/case1/common/pb2a.pal \
    ../../res/scene/case1/common/pb2b.pal \
    ../../res/scene/case1/common/pb2c.pal \
    ../../res/scene/case1/common/pb2d.pal \
    ../../res/scene/case1/common/pb2e.pal \
    ../../res/scene/case1/common/pb30.pal \
    ../../res/scene/case1/common/pb31.pal \
    ../../res/scene/case1/common/pb33.pal \
    ../../res/scene/case1/common/pb34.pal \
    ../../res/scene/case1/common/pb36.pal \
    ../../res/scene/case1/common/pb38.pal \
    ../../res/scene/case1/common/pb39.pal \
    ../../res/scene/case1/common/pb3e.pal \
    ../../res/scene/case1/common/pb40.pal \
    ../../res/scene/case1/common/pb41.pal \
    ../../res/scene/case1/common/pb42.pal \
    ../../res/scene/case1/common/pb43.pal \
    ../../res/scene/case1/common/pb49.pal \
    ../../res/scene/case1/common/po00.pal \
    ../../res/scene/case1/common/po03.pal \
    ../../res/scene/case1/common/po04.pal \
    ../../res/scene/case1/common/po05.pal \
    ../../res/scene/case1/common/po06.pal \
    ../../res/scene/case1/common/po07.pal \
    ../../res/scene/case1/common/po08.pal \
    ../../res/scene/case1/common/po09.pal \
    ../../res/scene/case1/common/po0a.pal \
    ../../res/scene/case1/common/po0b.pal \
    ../../res/scene/case1/common/po0c.pal \
    ../../res/scene/case1/common/po0d.pal \
    ../../res/scene/case1/common/po0e.pal \
    ../../res/scene/case1/common/po0f.pal \
    ../../res/scene/case1/common/po10.pal \
    ../../res/scene/case1/common/po11.pal \
    ../../res/scene/case1/common/po12.pal \
    ../../res/scene/case1/common/po13.pal \
    ../../res/scene/case1/common/po15.pal \
    ../../res/scene/case1/common/po1a.pal \
    ../../res/scene/case1/common/po23.pal \
    ../../res/scene/case1/common/po29.pal \
    ../../res/scene/case1/common/po2a.pal \
    ../../res/scene/case1/common/po2b.pal \
    ../../res/scene/case1/common/po2c.pal \
    ../../res/scene/case1/common/po2d.pal \
    ../../res/scene/case1/common/po2e.pal \
    ../../res/scene/case1/common/po30.pal \
    ../../res/scene/case1/common/po31.pal \
    ../../res/scene/case1/common/po33.pal \
    ../../res/scene/case1/common/po34.pal \
    ../../res/scene/case1/common/po36.pal \
    ../../res/scene/case1/common/po38.pal \
    ../../res/scene/case1/common/po39.pal \
    ../../res/scene/case1/common/po3e.pal \
    ../../res/scene/case1/common/po40.pal \
    ../../res/scene/case1/common/po41.pal \
    ../../res/scene/case1/common/po42.pal \
    ../../res/scene/case1/common/po43.pal \
    ../../res/scene/case1/common/po49.pal \
    ../../res/scene/case2/00-lucky-bath/$(REGION)/s00-bg-extra.bin \
    ../../res/scene/case2/00-lucky-bath/$(REGION)/s00-bg.bin \
    ../../res/scene/case2/00-lucky-bath/$(REGION)/s00-objects.bin \
    ../../res/scene/case2/00-lucky-bath/s00-bg.attrmap \
    ../../res/scene/case2/00-lucky-bath/s00-bg.pal \
    ../../res/scene/case2/00-lucky-bath/s00-bg.tilemap \
    ../../res/scene/case2/00-lucky-bath/s00-objects.pal \
    ../../res/scene/case2/01-lucky-room/s01-bg.attrmap \
    ../../res/scene/case2/01-lucky-room/s01-bg.pal \
    ../../res/scene/case2/01-lucky-room/s01-bg.tilemap \
    ../../res/scene/case2/01-lucky-room/s01-objects.pal \
    ../../res/scene/case2/02-lucky-casino-hall/s02-bg.attrmap \
    ../../res/scene/case2/02-lucky-casino-hall/s02-bg.pal \
    ../../res/scene/case2/02-lucky-casino-hall/s02-bg.tilemap \
    ../../res/scene/case2/02-lucky-casino-hall/s02-objects.pal \
    ../../res/scene/case2/03-lucky-lobby/s03-bg.attrmap \
    ../../res/scene/case2/03-lucky-lobby/s03-bg.pal \
    ../../res/scene/case2/03-lucky-lobby/s03-bg.tilemap \
    ../../res/scene/case2/03-lucky-lobby/s03-objects.pal \
    ../../res/scene/case2/04-lucky-cashier/s04-bg.attrmap \
    ../../res/scene/case2/04-lucky-cashier/s04-bg.pal \
    ../../res/scene/case2/04-lucky-cashier/s04-bg.tilemap \
    ../../res/scene/case2/04-lucky-cashier/s04-objects.pal \
    ../../res/scene/case2/05-rudy-blackjack/s05-bg.attrmap \
    ../../res/scene/case2/05-rudy-blackjack/s05-bg.pal \
    ../../res/scene/case2/05-rudy-blackjack/s05-bg.tilemap \
    ../../res/scene/case2/05-rudy-blackjack/s05-objects.pal \
    ../../res/scene/case2/06-stogie-martin/s06-bg.attrmap \
    ../../res/scene/case2/06-stogie-martin/s06-bg.pal \
    ../../res/scene/case2/06-stogie-martin/s06-bg.tilemap \
    ../../res/scene/case2/06-stogie-martin/s06-objects.pal \
    ../../res/scene/case2/07-lucky-1f/s07-bg.attrmap \
    ../../res/scene/case2/07-lucky-1f/s07-bg.pal \
    ../../res/scene/case2/07-lucky-1f/s07-bg.tilemap \
    ../../res/scene/case2/07-lucky-1f/s07-objects.pal \
    ../../res/scene/case2/08-lucky-2f/s08-bg.attrmap \
    ../../res/scene/case2/08-lucky-2f/s08-bg.pal \
    ../../res/scene/case2/08-lucky-2f/s08-bg.tilemap \
    ../../res/scene/case2/08-lucky-2f/s08-objects.pal \
    ../../res/scene/case2/09-lucky-3f/s09-bg.attrmap \
    ../../res/scene/case2/09-lucky-3f/s09-bg.pal \
    ../../res/scene/case2/09-lucky-3f/s09-bg.tilemap \
    ../../res/scene/case2/09-lucky-3f/s09-objects.pal \
    ../../res/scene/case2/0a-lucky-4f/s0a-bg.attrmap \
    ../../res/scene/case2/0a-lucky-4f/s0a-bg.pal \
    ../../res/scene/case2/0a-lucky-4f/s0a-bg.tilemap \
    ../../res/scene/case2/0a-lucky-4f/s0a-objects.pal \
    ../../res/scene/case2/0b-ventini-office/s0b-bg.attrmap \
    ../../res/scene/case2/0b-ventini-office/s0b-bg.pal \
    ../../res/scene/case2/0b-ventini-office/s0b-bg.tilemap \
    ../../res/scene/case2/0b-ventini-office/s0b-objects.pal \
    ../../res/scene/case2/0c-malone-office/s0c-bg.attrmap \
    ../../res/scene/case2/0c-malone-office/s0c-bg.pal \
    ../../res/scene/case2/0c-malone-office/s0c-bg.tilemap \
    ../../res/scene/case2/0c-malone-office/s0c-objects.pal \
    ../../res/scene/case2/0d-lucky-entrance/s0d-bg.attrmap \
    ../../res/scene/case2/0d-lucky-entrance/s0d-bg.pal \
    ../../res/scene/case2/0d-lucky-entrance/s0d-bg.tilemap \
    ../../res/scene/case2/0d-lucky-entrance/s0d-objects.pal \
    ../../res/scene/case2/0e-desert/s0e-bg.attrmap \
    ../../res/scene/case2/0e-desert/s0e-bg.pal \
    ../../res/scene/case2/0e-desert/s0e-bg.tilemap \
    ../../res/scene/case2/0e-desert/s0e-objects.pal \
    ../../res/scene/case2/0f-desert/s0f-bg.attrmap \
    ../../res/scene/case2/0f-desert/s0f-bg.pal \
    ../../res/scene/case2/0f-desert/s0f-bg.tilemap \
    ../../res/scene/case2/0f-desert/s0f-objects.pal \
    ../../res/scene/case2/10-desert/s10-bg.attrmap \
    ../../res/scene/case2/10-desert/s10-bg.pal \
    ../../res/scene/case2/10-desert/s10-bg.tilemap \
    ../../res/scene/case2/10-desert/s10-objects.pal \
    ../../res/scene/case2/11-vegas-station/s11-bg.attrmap \
    ../../res/scene/case2/11-vegas-station/s11-bg.pal \
    ../../res/scene/case2/11-vegas-station/s11-bg.tilemap \
    ../../res/scene/case2/11-vegas-station/s11-objects.pal \
    ../../res/scene/case2/12-vegas-waiting-hall/s12-bg.attrmap \
    ../../res/scene/case2/12-vegas-waiting-hall/s12-bg.pal \
    ../../res/scene/case2/12-vegas-waiting-hall/s12-bg.tilemap \
    ../../res/scene/case2/12-vegas-waiting-hall/s12-objects.pal \
    ../../res/scene/case2/13-vegas-baggage/s13-bg.attrmap \
    ../../res/scene/case2/13-vegas-baggage/s13-bg.pal \
    ../../res/scene/case2/13-vegas-baggage/s13-bg.tilemap \
    ../../res/scene/case2/13-vegas-baggage/s13-objects.pal \
    ../../res/scene/case2/14-train-platform/s14-bg.attrmap \
    ../../res/scene/case2/14-train-platform/s14-bg.pal \
    ../../res/scene/case2/14-train-platform/s14-bg.tilemap \
    ../../res/scene/case2/14-train-platform/s14-objects.pal \
    ../../res/scene/case2/15-train-platform/s15-bg.attrmap \
    ../../res/scene/case2/15-train-platform/s15-bg.pal \
    ../../res/scene/case2/15-train-platform/s15-bg.tilemap \
    ../../res/scene/case2/15-train-platform/s15-objects.pal \
    ../../res/scene/case2/16-train-passengers/s16-bg.attrmap \
    ../../res/scene/case2/16-train-passengers/s16-bg.pal \
    ../../res/scene/case2/16-train-passengers/s16-bg.tilemap \
    ../../res/scene/case2/16-train-passengers/s16-objects.pal \
    ../../res/scene/case2/17-conductor/s17-bg.attrmap \
    ../../res/scene/case2/17-conductor/s17-bg.pal \
    ../../res/scene/case2/17-conductor/s17-bg.tilemap \
    ../../res/scene/case2/17-conductor/s17-objects.pal \
    ../../res/scene/case2/18-train-interior/s18-bg.attrmap \
    ../../res/scene/case2/18-train-interior/s18-bg.pal \
    ../../res/scene/case2/18-train-interior/s18-bg.tilemap \
    ../../res/scene/case2/18-train-interior/s18-objects.pal \
    ../../res/scene/case2/19-conductor/s19-bg.attrmap \
    ../../res/scene/case2/19-conductor/s19-bg.pal \
    ../../res/scene/case2/19-conductor/s19-bg.tilemap \
    ../../res/scene/case2/19-conductor/s19-objects.pal \
    ../../res/scene/case2/1a-train-platform/s1a-bg.attrmap \
    ../../res/scene/case2/1a-train-platform/s1a-bg.pal \
    ../../res/scene/case2/1a-train-platform/s1a-bg.tilemap \
    ../../res/scene/case2/1a-train-platform/s1a-objects.pal \
    ../../res/scene/case2/1b-train-platform/s1b-bg.attrmap \
    ../../res/scene/case2/1b-train-platform/s1b-bg.pal \
    ../../res/scene/case2/1b-train-platform/s1b-bg.tilemap \
    ../../res/scene/case2/1b-train-platform/s1b-objects.pal \
    ../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.attrmap \
    ../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.pal \
    ../../res/scene/case2/1c-chicago-waiting-hall/s1c-bg.tilemap \
    ../../res/scene/case2/1c-chicago-waiting-hall/s1c-objects.pal \
    ../../res/scene/case2/1d-chicago-station/s1d-bg.attrmap \
    ../../res/scene/case2/1d-chicago-station/s1d-bg.pal \
    ../../res/scene/case2/1d-chicago-station/s1d-bg.tilemap \
    ../../res/scene/case2/1d-chicago-station/s1d-objects.pal \
    ../../res/scene/case2/1e-gabby-cab/s1e-bg.attrmap \
    ../../res/scene/case2/1e-gabby-cab/s1e-bg.pal \
    ../../res/scene/case2/1e-gabby-cab/s1e-bg.tilemap \
    ../../res/scene/case2/1e-gabby-cab/s1e-objects.pal \
    ../../res/scene/case2/1f-ace-street/s1f-bg.attrmap \
    ../../res/scene/case2/1f-ace-street/s1f-bg.pal \
    ../../res/scene/case2/1f-ace-street/s1f-bg.tilemap \
    ../../res/scene/case2/1f-ace-street/s1f-objects.pal \
    ../../res/scene/case2/20-ace-apartment-door/s20-bg.attrmap \
    ../../res/scene/case2/20-ace-apartment-door/s20-bg.pal \
    ../../res/scene/case2/20-ace-apartment-door/s20-bg.tilemap \
    ../../res/scene/case2/20-ace-apartment-door/s20-objects.pal \
    ../../res/scene/case2/21-ace-apartment/s21-bg.attrmap \
    ../../res/scene/case2/21-ace-apartment/s21-bg.pal \
    ../../res/scene/case2/21-ace-apartment/s21-bg.tilemap \
    ../../res/scene/case2/21-ace-apartment/s21-objects.pal \
    ../../res/scene/case2/22-joes-place/s22-bg.attrmap \
    ../../res/scene/case2/22-joes-place/s22-bg.pal \
    ../../res/scene/case2/22-joes-place/s22-bg.tilemap \
    ../../res/scene/case2/22-joes-place/s22-objects.pal \
    ../../res/scene/case2/23-joes-back-alley/s23-bg.attrmap \
    ../../res/scene/case2/23-joes-back-alley/s23-bg.pal \
    ../../res/scene/case2/23-joes-back-alley/s23-bg.tilemap \
    ../../res/scene/case2/23-joes-back-alley/s23-objects.pal \
    ../../res/scene/case2/24-joes-hall/s24-bg.attrmap \
    ../../res/scene/case2/24-joes-hall/s24-bg.pal \
    ../../res/scene/case2/24-joes-hall/s24-bg.tilemap \
    ../../res/scene/case2/24-joes-hall/s24-objects.pal \
    ../../res/scene/case2/25-secretary-office/s25-bg.attrmap \
    ../../res/scene/case2/25-secretary-office/s25-bg.pal \
    ../../res/scene/case2/25-secretary-office/s25-bg.tilemap \
    ../../res/scene/case2/25-secretary-office/s25-objects.pal \
    ../../res/scene/case2/26-joes-bar/s26-bg.attrmap \
    ../../res/scene/case2/26-joes-bar/s26-bg.pal \
    ../../res/scene/case2/26-joes-bar/s26-bg.tilemap \
    ../../res/scene/case2/26-joes-bar/s26-objects.pal \
    ../../res/scene/case2/27-joes-manhole/s27-bg.attrmap \
    ../../res/scene/case2/27-joes-manhole/s27-bg.pal \
    ../../res/scene/case2/27-joes-manhole/s27-bg.tilemap \
    ../../res/scene/case2/27-joes-manhole/s27-objects.pal \
    ../../res/scene/case2/28-joes-casino/s28-bg.attrmap \
    ../../res/scene/case2/28-joes-casino/s28-bg.pal \
    ../../res/scene/case2/28-joes-casino/s28-bg.tilemap \
    ../../res/scene/case2/28-joes-casino/s28-objects.pal \
    ../../res/scene/case2/29-joes-upper-hall/s29-bg.attrmap \
    ../../res/scene/case2/29-joes-upper-hall/s29-bg.pal \
    ../../res/scene/case2/29-joes-upper-hall/s29-bg.tilemap \
    ../../res/scene/case2/29-joes-upper-hall/s29-objects.pal \
    ../../res/scene/case2/2a-siegel-office/s2a-bg.attrmap \
    ../../res/scene/case2/2a-siegel-office/s2a-bg.pal \
    ../../res/scene/case2/2a-siegel-office/s2a-bg.tilemap \
    ../../res/scene/case2/2a-siegel-office/s2a-objects.pal \
    ../../res/scene/case2/2b-joes-private-door/s2b-bg.attrmap \
    ../../res/scene/case2/2b-joes-private-door/s2b-bg.pal \
    ../../res/scene/case2/2b-joes-private-door/s2b-bg.tilemap \
    ../../res/scene/case2/2b-joes-private-door/s2b-objects.pal \
    ../../res/scene/case2/2c-joes-side-alley/s2c-bg.attrmap \
    ../../res/scene/case2/2c-joes-side-alley/s2c-bg.pal \
    ../../res/scene/case2/2c-joes-side-alley/s2c-bg.tilemap \
    ../../res/scene/case2/2c-joes-side-alley/s2c-objects.pal \
    ../../res/scene/case2/2d-police-station/s2d-bg.attrmap \
    ../../res/scene/case2/2d-police-station/s2d-bg.pal \
    ../../res/scene/case2/2d-police-station/s2d-bg.tilemap \
    ../../res/scene/case2/2d-police-station/s2d-objects.pal \
    ../../res/scene/case2/2e-sugar-street/s2e-bg.attrmap \
    ../../res/scene/case2/2e-sugar-street/s2e-bg.pal \
    ../../res/scene/case2/2e-sugar-street/s2e-bg.tilemap \
    ../../res/scene/case2/2e-sugar-street/s2e-objects.pal \
    ../../res/scene/case2/2f-sugar-apartment/s2f-bg.attrmap \
    ../../res/scene/case2/2f-sugar-apartment/s2f-bg.pal \
    ../../res/scene/case2/2f-sugar-apartment/s2f-bg.tilemap \
    ../../res/scene/case2/2f-sugar-apartment/s2f-objects.pal \
    ../../res/scene/case2/30-city-morgue/s30-bg.attrmap \
    ../../res/scene/case2/30-city-morgue/s30-bg.pal \
    ../../res/scene/case2/30-city-morgue/s30-bg.tilemap \
    ../../res/scene/case2/30-city-morgue/s30-objects.pal \
    ../../res/scene/case2/31-morgue-clerk/s31-bg.attrmap \
    ../../res/scene/case2/31-morgue-clerk/s31-bg.pal \
    ../../res/scene/case2/31-morgue-clerk/s31-bg.tilemap \
    ../../res/scene/case2/31-morgue-clerk/s31-objects.pal \
    ../../res/scene/case2/32-morgue-drawers/s32-bg.attrmap \
    ../../res/scene/case2/32-morgue-drawers/s32-bg.pal \
    ../../res/scene/case2/32-morgue-drawers/s32-bg.tilemap \
    ../../res/scene/case2/32-morgue-drawers/s32-objects.pal \
    ../../res/scene/case2/33-laundry-hamper/s33-bg.attrmap \
    ../../res/scene/case2/33-laundry-hamper/s33-bg.pal \
    ../../res/scene/case2/33-laundry-hamper/s33-bg.tilemap \
    ../../res/scene/case2/33-laundry-hamper/s33-objects.pal \
    ../../res/scene/case2/34-reliant-cleaners/s34-bg.attrmap \
    ../../res/scene/case2/34-reliant-cleaners/s34-bg.pal \
    ../../res/scene/case2/34-reliant-cleaners/s34-bg.tilemap \
    ../../res/scene/case2/34-reliant-cleaners/s34-objects.pal \
    ../../res/scene/case2/35-reliant-laundry/s35-bg.attrmap \
    ../../res/scene/case2/35-reliant-laundry/s35-bg.pal \
    ../../res/scene/case2/35-reliant-laundry/s35-bg.tilemap \
    ../../res/scene/case2/35-reliant-laundry/s35-objects.pal \
    ../../res/scene/case2/36-reliant-hall/s36-bg.attrmap \
    ../../res/scene/case2/36-reliant-hall/s36-bg.pal \
    ../../res/scene/case2/36-reliant-hall/s36-bg.tilemap \
    ../../res/scene/case2/36-reliant-hall/s36-objects.pal \
    ../../res/scene/case2/37-reliant-office/s37-bg.attrmap \
    ../../res/scene/case2/37-reliant-office/s37-bg.pal \
    ../../res/scene/case2/37-reliant-office/s37-bg.tilemap \
    ../../res/scene/case2/37-reliant-office/s37-objects.pal \
    ../../res/scene/case2/38-ventini-secret/s38-bg.attrmap \
    ../../res/scene/case2/38-ventini-secret/s38-bg.pal \
    ../../res/scene/case2/38-ventini-secret/s38-bg.tilemap \
    ../../res/scene/case2/38-ventini-secret/s38-objects.pal \
    ../../res/scene/case2/39-hitman/s39-bg.attrmap \
    ../../res/scene/case2/39-hitman/s39-bg.pal \
    ../../res/scene/case2/39-hitman/s39-bg.tilemap \
    ../../res/scene/case2/39-hitman/s39-objects.pal \
    ../../res/scene/case2/3a-moose-spike/s3a-bg.attrmap \
    ../../res/scene/case2/3a-moose-spike/s3a-bg.pal \
    ../../res/scene/case2/3a-moose-spike/s3a-bg.tilemap \
    ../../res/scene/case2/3a-moose-spike/s3a-objects.pal \
    ../../res/scene/case2/3b-dog/s3b-bg.attrmap \
    ../../res/scene/case2/3b-dog/s3b-bg.pal \
    ../../res/scene/case2/3b-dog/s3b-bg.tilemap \
    ../../res/scene/case2/3b-dog/s3b-objects.pal \
    ../../res/scene/case2/3c-policeman/s3c-bg.attrmap \
    ../../res/scene/case2/3c-policeman/s3c-bg.pal \
    ../../res/scene/case2/3c-policeman/s3c-bg.tilemap \
    ../../res/scene/case2/3c-policeman/s3c-objects.pal \
    ../../res/scene/case2/3d-handcuffs/s3d-bg.attrmap \
    ../../res/scene/case2/3d-handcuffs/s3d-bg.pal \
    ../../res/scene/case2/3d-handcuffs/s3d-bg.tilemap \
    ../../res/scene/case2/3d-handcuffs/s3d-objects.pal \
    ../../res/scene/case2/3e-ace-grave/s3e-bg.attrmap \
    ../../res/scene/case2/3e-ace-grave/s3e-bg.pal \
    ../../res/scene/case2/3e-ace-grave/s3e-bg.tilemap \
    ../../res/scene/case2/3e-ace-grave/s3e-objects.pal \
    ../../res/scene/case2/3f-casino-bouncer/s3f-bg.attrmap \
    ../../res/scene/case2/3f-casino-bouncer/s3f-bg.pal \
    ../../res/scene/case2/3f-casino-bouncer/s3f-bg.tilemap \
    ../../res/scene/case2/3f-casino-bouncer/s3f-objects.pal \
    ../../res/scene/case2/40-lemonade-stand/s40-bg.attrmap \
    ../../res/scene/case2/40-lemonade-stand/s40-bg.pal \
    ../../res/scene/case2/40-lemonade-stand/s40-bg.tilemap \
    ../../res/scene/case2/40-lemonade-stand/s40-objects.pal \
    ../../res/scene/case2/41-vegas-times/s41-bg.attrmap \
    ../../res/scene/case2/41-vegas-times/s41-bg.pal \
    ../../res/scene/case2/41-vegas-times/s41-bg.tilemap \
    ../../res/scene/case2/41-vegas-times/s41-objects.pal \
    ../../res/scene/case2/42-vegas-times/s42-bg.attrmap \
    ../../res/scene/case2/42-vegas-times/s42-bg.pal \
    ../../res/scene/case2/42-vegas-times/s42-bg.tilemap \
    ../../res/scene/case2/42-vegas-times/s42-objects.pal \
    ../../res/scene/case2/43-card-tiles/s43-bg.pal \
    ../../res/scene/case2/43-card-tiles/s43-objects.pal \
    ../../res/scene/case2/common/$(REGION)/g04.bin \
    ../../res/scene/case2/common/$(REGION)/g06.bin \
    ../../res/scene/case2/common/$(REGION)/g07.bin \
    ../../res/scene/case2/common/$(REGION)/g08.bin \
    ../../res/scene/case2/common/$(REGION)/g0a.bin \
    ../../res/scene/case2/common/$(REGION)/g0c.bin \
    ../../res/scene/case2/common/$(REGION)/g0e.bin \
    ../../res/scene/case2/common/$(REGION)/g0f.bin \
    ../../res/scene/case2/common/$(REGION)/g10.bin \
    ../../res/scene/case2/common/$(REGION)/g11.bin \
    ../../res/scene/case2/common/$(REGION)/g12.bin \
    ../../res/scene/case2/common/$(REGION)/g13.bin \
    ../../res/scene/case2/common/$(REGION)/g16.bin \
    ../../res/scene/case2/common/$(REGION)/g17.bin \
    ../../res/scene/case2/common/$(REGION)/g18.bin \
    ../../res/scene/case2/common/$(REGION)/g19.bin \
    ../../res/scene/case2/common/$(REGION)/g1a.bin \
    ../../res/scene/case2/common/$(REGION)/g1b.bin \
    ../../res/scene/case2/common/$(REGION)/g1c.bin \
    ../../res/scene/case2/common/$(REGION)/g1d.bin \
    ../../res/scene/case2/common/$(REGION)/g1e.bin \
    ../../res/scene/case2/common/$(REGION)/g1f.bin \
    ../../res/scene/case2/common/$(REGION)/g20.bin \
    ../../res/scene/case2/common/$(REGION)/g21.bin \
    ../../res/scene/case2/common/$(REGION)/g22.bin \
    ../../res/scene/case2/common/$(REGION)/g24.bin \
    ../../res/scene/case2/common/$(REGION)/g25.bin \
    ../../res/scene/case2/common/$(REGION)/g26.bin \
    ../../res/scene/case2/common/$(REGION)/g27.bin \
    ../../res/scene/case2/common/$(REGION)/g28.bin \
    ../../res/scene/case2/common/$(REGION)/g29.bin \
    ../../res/scene/case2/common/$(REGION)/g2a.bin \
    ../../res/scene/case2/common/$(REGION)/g2b.bin \
    ../../res/scene/case2/common/$(REGION)/g2c.bin \
    ../../res/scene/case2/common/$(REGION)/g2d.bin \
    ../../res/scene/case2/common/$(REGION)/g2e.bin \
    ../../res/scene/case2/common/$(REGION)/g30.bin \
    ../../res/scene/case2/common/$(REGION)/g31.bin \
    ../../res/scene/case2/common/$(REGION)/g32.bin \
    ../../res/scene/case2/common/$(REGION)/g33.bin \
    ../../res/scene/case2/common/$(REGION)/g34.bin \
    ../../res/scene/case2/common/$(REGION)/g35.bin \
    ../../res/scene/case2/common/$(REGION)/g36.bin \
    ../../res/scene/case2/common/$(REGION)/g37.bin \
    ../../res/scene/case2/common/$(REGION)/g38.bin \
    ../../res/scene/case2/common/$(REGION)/g39.bin \
    ../../res/scene/case2/common/$(REGION)/g3a.bin \
    ../../res/scene/case2/common/$(REGION)/g3b.bin \
    ../../res/scene/case2/common/$(REGION)/g3c.bin \
    ../../res/scene/case2/common/$(REGION)/g3d.bin \
    ../../res/scene/case2/common/$(REGION)/g3e.bin \
    ../../res/scene/case2/common/$(REGION)/g40.bin \
    ../../res/scene/case2/common/$(REGION)/g41.bin \
    ../../res/scene/case2/common/$(REGION)/g42.bin \
    ../../res/scene/case2/common/$(REGION)/g43.bin \
    ../../res/scene/case2/common/$(REGION)/g44.bin \
    ../../res/scene/case2/common/$(REGION)/g46.bin \
    ../../res/scene/case2/common/$(REGION)/g47.bin \
    ../../res/scene/case2/common/$(REGION)/g48.bin \
    ../../res/scene/case2/common/$(REGION)/g49.bin \
    ../../res/scene/case2/common/$(REGION)/g4a.bin \
    ../../res/scene/case2/common/$(REGION)/g4b.bin \
    ../../res/scene/case2/common/$(REGION)/g4c.bin \
    ../../res/scene/case2/common/$(REGION)/g4e.bin \
    ../../res/scene/case2/common/$(REGION)/g4f.bin \
    ../../res/scene/case2/common/$(REGION)/g50.bin \
    ../../res/scene/case2/common/$(REGION)/g51.bin \
    ../../res/scene/case2/common/$(REGION)/g52.bin \
    ../../res/scene/case2/common/$(REGION)/g53.bin \
    ../../res/scene/case2/common/$(REGION)/g54.bin \
    ../../res/scene/case2/common/$(REGION)/g55.bin \
    ../../res/scene/case2/common/$(REGION)/g56.bin \
    ../../res/scene/case2/common/$(REGION)/g57.bin \
    ../../res/scene/case2/common/$(REGION)/g58.bin \
    ../../res/scene/case2/common/$(REGION)/g59.bin \
    ../../res/scene/case2/common/$(REGION)/g5a.bin \
    ../../res/scene/case2/common/$(REGION)/g5b.bin \
    ../../res/scene/case2/common/$(REGION)/g5c.bin \
    ../../res/scene/case2/common/$(REGION)/g5e.bin \
    ../../res/scene/case2/common/$(REGION)/g5f.bin \
    ../../res/scene/case2/common/$(REGION)/g60.bin \
    ../../res/scene/case2/common/$(REGION)/g61.bin \
    ../../res/scene/case2/common/$(REGION)/g62.bin \
    ../../res/scene/case2/common/$(REGION)/g63.bin \
    ../../res/scene/case2/common/$(REGION)/g64.bin \
    ../../res/scene/case2/common/$(REGION)/g65.bin \
    ../../res/scene/case2/common/$(REGION)/g66.bin \
    ../../res/scene/case2/common/$(REGION)/g68.bin \
    ../../res/scene/case2/common/$(REGION)/g6a.bin \
    ../../res/scene/case2/common/$(REGION)/g6b.bin \
    ../../res/scene/case2/common/$(REGION)/g6c.bin \
    ../../res/scene/case2/common/$(REGION)/g6e.bin \
    ../../res/scene/case2/common/$(REGION)/g70.bin \
    ../../res/scene/case2/common/$(REGION)/g72.bin \
    ../../res/scene/case2/common/$(REGION)/g74.bin \
    ../../res/scene/case2/common/$(REGION)/g76.bin \
    ../../res/scene/case2/common/$(REGION)/g78.bin \
    ../../res/scene/case2/common/$(REGION)/g79.bin \
    ../../res/scene/case2/common/$(REGION)/g7a.bin \
    ../../res/scene/case2/common/$(REGION)/g7b.bin \
    ../../res/scene/case2/common/$(REGION)/g82.bin \
    ../../res/scene/case2/common/$(REGION)/g83.bin \
    ../../res/scene/case2/common/$(REGION)/g84.bin \
    ../../res/scene/case2/common/$(REGION)/g85.bin \
    ../../res/scene/case2/common/$(REGION)/g86.bin \
    ../../res/scene/case2/common/$(REGION)/g87.bin \
    ../../res/scene/case2/common/$(REGION)/g88.bin \
    ../../res/scene/case2/common/$(REGION)/g89.bin \
    ../../res/scene/case2/common/$(REGION)/g8a.bin \
    ../../res/scene/case2/common/$(REGION)/g8b.bin
