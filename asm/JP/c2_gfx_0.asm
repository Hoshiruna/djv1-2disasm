; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02a", ROMX[$4000], BANK[$2a]

; Bank-local resource pointers; entries $00/$01 load the Case II font/HUD.
ResourcePointers_02a:
    dw Resource_JP_02a_4020 ; $00
    dw Resource_JP_02a_453f ; $01
    dw GfxC2_G02 ; $02
    dw GfxC2_G03 ; $03
    dw GfxC2_G04 ; $04
    dw $572a ; $05
    dw GfxC2_G06 ; $06
    dw GfxC2_G07 ; $07
    dw GfxC2_G08 ; $08
    dw $6404 ; $09
    dw GfxC2_G0A ; $0a
    dw $6901 ; $0b
    dw GfxC2_G0C ; $0c
    dw $6d51 ; $0d
    dw GfxC2_G0E ; $0e
    dw GfxC2_G0F ; $0f

; Case II font: 128 tiles (2048 decoded bytes).
Resource_JP_02a_4020:
    INCBIN "../../res/ui/font/JP/case2_font.bin", $0, $22
jr_02a_4042:
    INCBIN "../../res/ui/font/JP/case2_font.bin", $22, $a
jr_02a_404c:
    INCBIN "../../res/ui/font/JP/case2_font.bin", $2c, $24
jr_02a_4070:
    INCBIN "../../res/ui/font/JP/case2_font.bin", $50, $ee
Call_02a_415e:
    INCBIN "../../res/ui/font/JP/case2_font.bin", $13e, $c0
jr_02a_421e:
    INCBIN "../../res/ui/font/JP/case2_font.bin", $1fe, $f
jr_02a_422d:
    INCBIN "../../res/ui/font/JP/case2_font.bin", $20d, $39
jr_02a_4266:
    INCBIN "../../res/ui/font/JP/case2_font.bin", $246, $25
jr_02a_428b:
    INCBIN "../../res/ui/font/JP/case2_font.bin", $26b, $ee
jr_02a_4379:
    INCBIN "../../res/ui/font/JP/case2_font.bin", $359, $5c
jr_02a_43d5:
    INCBIN "../../res/ui/font/JP/case2_font.bin", $3b5, $3f
jr_02a_4414:
    INCBIN "../../res/ui/font/JP/case2_font.bin", $3f4, $116
jr_02a_452a:
    INCBIN "../../res/ui/font/JP/case2_font.bin", $50a, $15

; Case II HUD graphics: 128 tiles (2048 decoded bytes).
Resource_JP_02a_453f:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $0, $7
jr_02a_4546:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $7, $37
jr_02a_457d:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $3e, $d
jr_02a_458a:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $4b, $10
jr_02a_459a:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $5b, $65
Call_02a_45ff:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $c0, $82
jr_02a_4681:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $142, $18
jr_02a_4699:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $15a, $11
jr_02a_46aa:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $16b, $17
jr_02a_46c1:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $182, $26
jr_02a_46e7:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $1a8, $25
jr_02a_470c:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $1cd, $6
jr_02a_4712:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $1d3, $2a
jr_02a_473c:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $1fd, $12
jr_02a_474e:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $20f, $7
jr_02a_4755:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $216, $48
jr_02a_479d:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $25e, $c
jr_02a_47a9:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $26a, $37
jr_02a_47e0:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $2a1, $3b
jr_02a_481b:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $2dc, $e
jr_02a_4829:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $2ea, $4
jr_02a_482d:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $2ee, $5
jr_02a_4832:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $2f3, $22
jr_02a_4854:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $315, $2f
jr_02a_4883:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $344, $1b
jr_02a_489e:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $35f, $39
jr_02a_48d7:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $398, $3a
jr_02a_4911:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $3d2, $1c
jr_02a_492d:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $3ee, $29
jr_02a_4956:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $417, $7c
jr_02a_49d2:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $493, $28
jr_02a_49fa:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $4bb, $15
jr_02a_4a0f:
    INCBIN "../../res/ui/hud/JP/case2_hud_tiles.bin", $4d0, $4b
Case2BathroomTiles:

GfxC2_G02:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $0, $69
Jump_02a_4ac3:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $69, $12
jr_02a_4ad5:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $7b, $7f
jr_02a_4b54:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $fa, $6
jr_02a_4b5a:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $100, $14
jr_02a_4b6e:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $114, $44
jr_02a_4bb2:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $158, $4d
jr_02a_4bff:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $1a5, $2
Jump_02a_4c01:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $1a7, $16
jr_02a_4c17:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $1bd, $9
jr_02a_4c20:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $1c6, $23
jr_02a_4c43:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $1e9, $4
jr_02a_4c47:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $1ed, $54
jr_02a_4c9b:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $241, $44
jr_02a_4cdf:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $285, $21
jr_02a_4d00:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $2a6, $5
jr_02a_4d05:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $2ab, $3
jr_02a_4d08:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $2ae, $9
jr_02a_4d11:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $2b7, $63
jr_02a_4d74:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $31a, $d
jr_02a_4d81:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $327, $2d
jr_02a_4dae:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $354, $e
jr_02a_4dbc:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $362, $19
jr_02a_4dd5:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $37b, $22
jr_02a_4df7:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $39d, $3
jr_02a_4dfa:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $3a0, $11
jr_02a_4e0b:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $3b1, $2c
jr_02a_4e37:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $3dd, $d
jr_02a_4e44:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $3ea, $7
jr_02a_4e4b:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $3f1, $10
jr_02a_4e5b:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $401, $20
jr_02a_4e7b:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $421, $16
jr_02a_4e91:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $437, $33
jr_02a_4ec4:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $46a, $50
jr_02a_4f14:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $4ba, $18
jr_02a_4f2c:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $4d2, $9
jr_02a_4f35:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $4db, $1
jr_02a_4f36:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $4dc, $32
jr_02a_4f68:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $50e, $9
jr_02a_4f71:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $517, $1c
jr_02a_4f8d:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $533, $31
jr_02a_4fbe:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $564, $c
jr_02a_4fca:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $570, $39
Jump_02a_5003:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $5a9, $8
jr_02a_500b:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $5b1, $14
jr_02a_501f:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg.bin", $5c5, $44
Case2BathroomExtraTiles:

GfxC2_G03:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg-extra.bin", $0, $16
jr_02a_5079:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg-extra.bin", $16, $25
jr_02a_509e:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg-extra.bin", $3b, $b
jr_02a_50a9:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg-extra.bin", $46, $16
jr_02a_50bf:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg-extra.bin", $5c, $c
jr_02a_50cb:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg-extra.bin", $68, $15
jr_02a_50e0:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg-extra.bin", $7d, $7d
jr_02a_515d:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg-extra.bin", $fa, $5
jr_02a_5162:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg-extra.bin", $ff, $16
jr_02a_5178:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg-extra.bin", $115, $a
jr_02a_5182:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg-extra.bin", $11f, $1e
Call_02a_51a0:
    INCBIN "../../res/scene/case2/00-lucky-bath/JP/s00-bg-extra.bin", $13d, $20

GfxC2_G04:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $0, $59
jr_02a_5219:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $59, $41
jr_02a_525a:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $9a, $46
jr_02a_52a0:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $e0, $41
jr_02a_52e1:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $121, $5c
jr_02a_533d:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $17d, $2c
jr_02a_5369:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $1a9, $17
jr_02a_5380:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $1c0, $a
jr_02a_538a:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $1ca, $1b
Call_02a_53a5:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $1e5, $8b
jr_02a_5430:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $270, $19
jr_02a_5449:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $289, $4
jr_02a_544d:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $28d, $1
jr_02a_544e:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $28e, $13
jr_02a_5461:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $2a1, $9
jr_02a_546a:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $2aa, $27
jr_02a_5491:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $2d1, $45
jr_02a_54d6:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $316, $84
jr_02a_555a:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $39a, $79
jr_02a_55d3:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $413, $29
jr_02a_55fc:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $43c, $33
jr_02a_562f:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $46f, $14
jr_02a_5643:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $483, $6a
jr_02a_56ad:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $4ed, $f
jr_02a_56bc:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $4fc, $64
jr_02a_5720:
    INCBIN "../../res/scene/case2/common/JP/g04.bin", $560, $a
    db $ff

GfxC2_G06:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $0, $c
jr_02a_5737:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $c, $60
Jump_02a_5797:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $6c, $1a
jr_02a_57b1:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $86, $38
jr_02a_57e9:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $be, $26
jr_02a_580f:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $e4, $5c
jr_02a_586b:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $140, $32
jr_02a_589d:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $172, $135
jr_02a_59d2:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $2a7, $8c
jr_02a_5a5e:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $333, $45
jr_02a_5aa3:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $378, $3a
jr_02a_5add:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $3b2, $33
jr_02a_5b10:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $3e5, $34
jr_02a_5b44:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $419, $4
jr_02a_5b48:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $41d, $43
jr_02a_5b8b:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $460, $23
jr_02a_5bae:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $483, $b4
jr_02a_5c62:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $537, $1f
jr_02a_5c81:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $556, $16
jr_02a_5c97:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $56c, $40
jr_02a_5cd7:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $5ac, $1
jr_02a_5cd8:
    INCBIN "../../res/scene/case2/common/JP/g06.bin", $5ad, $16

GfxC2_G07:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $0, $9
jr_02a_5cf7:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $9, $24
jr_02a_5d1b:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $2d, $c
jr_02a_5d27:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $39, $30
jr_02a_5d57:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $69, $b
jr_02a_5d62:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $74, $2f
jr_02a_5d91:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $a3, $7
jr_02a_5d98:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $aa, $6
jr_02a_5d9e:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $b0, $18
jr_02a_5db6:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $c8, $24
jr_02a_5dda:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $ec, $d
jr_02a_5de7:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $f9, $1
jr_02a_5de8:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $fa, $26
jr_02a_5e0e:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $120, $d
jr_02a_5e1b:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $12d, $1
jr_02a_5e1c:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $12e, $10
jr_02a_5e2c:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $13e, $2
jr_02a_5e2e:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $140, $2d
jr_02a_5e5b:
    INCBIN "../../res/scene/case2/common/JP/g07.bin", $16d, $3c

GfxC2_G08:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $0, $26
jr_02a_5ebd:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $26, $a
jr_02a_5ec7:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $30, $f
jr_02a_5ed6:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $3f, $be
jr_02a_5f94:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $fd, $4c
Call_02a_5fe0:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $149, $97
jr_02a_6077:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $1e0, $18
jr_02a_608f:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $1f8, $b
jr_02a_609a:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $203, $15
jr_02a_60af:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $218, $f
jr_02a_60be:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $227, $1
jr_02a_60bf:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $228, $59
jr_02a_6118:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $281, $8
jr_02a_6120:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $289, $19
jr_02a_6139:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $2a2, $2d
jr_02a_6166:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $2cf, $c
jr_02a_6172:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $2db, $9
jr_02a_617b:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $2e4, $2
jr_02a_617d:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $2e6, $5a
jr_02a_61d7:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $340, $26
jr_02a_61fd:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $366, $28
jr_02a_6225:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $38e, $8a
jr_02a_62af:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $418, $35
jr_02a_62e4:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $44d, $b
jr_02a_62ef:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $458, $b
jr_02a_62fa:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $463, $13
jr_02a_630d:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $476, $28
jr_02a_6335:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $49e, $4
jr_02a_6339:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $4a2, $15
jr_02a_634e:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $4b7, $18
jr_02a_6366:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $4cf, $24
Call_02a_638a:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $4f3, $25
jr_02a_63af:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $518, $30
jr_02a_63df:
    INCBIN "../../res/scene/case2/common/JP/g08.bin", $548, $25
    rst RST_38

GfxC2_G0A:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $0, $41
jr_02a_6446:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $41, $10
jr_02a_6456:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $51, $1
jr_02a_6457:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $52, $64
jr_02a_64bb:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $b6, $2d
jr_02a_64e8:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $e3, $35
jr_02a_651d:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $118, $c
jr_02a_6529:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $124, $10
jr_02a_6539:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $134, $2d
jr_02a_6566:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $161, $87
jr_02a_65ed:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $1e8, $3
jr_02a_65f0:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $1eb, $9b
jr_02a_668b:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $286, $4c
jr_02a_66d7:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $2d2, $54
jr_02a_672b:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $326, $2
jr_02a_672d:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $328, $34
jr_02a_6761:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $35c, $7
jr_02a_6768:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $363, $38
jr_02a_67a0:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $39b, $c3
jr_02a_6863:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $45e, $5b
jr_02a_68be:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $4b9, $21
jr_02a_68df:
    INCBIN "../../res/scene/case2/common/JP/g0a.bin", $4da, $22
    rst RST_38

GfxC2_G0C:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $0, $43
jr_02a_6945:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $43, $b
jr_02a_6950:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $4e, $32
jr_02a_6982:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $80, $5c
jr_02a_69de:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $dc, $c
jr_02a_69ea:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $e8, $2c
jr_02a_6a16:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $114, $18
jr_02a_6a2e:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $12c, $10
jr_02a_6a3e:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $13c, $32
jr_02a_6a70:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $16e, $b
jr_02a_6a7b:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $179, $64
jr_02a_6adf:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $1dd, $10e
jr_02a_6bed:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $2eb, $1a
jr_02a_6c07:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $305, $11
jr_02a_6c18:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $316, $28
jr_02a_6c40:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $33e, $1a
jr_02a_6c5a:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $358, $5b
jr_02a_6cb5:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $3b3, $2
jr_02a_6cb7:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $3b5, $b
jr_02a_6cc2:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $3c0, $f
jr_02a_6cd1:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $3cf, $29
jr_02a_6cfa:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $3f8, $11
jr_02a_6d0b:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $409, $10
jr_02a_6d1b:
    INCBIN "../../res/scene/case2/common/JP/g0c.bin", $419, $36
    rst RST_38

GfxC2_G0E:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $0, $10
jr_02a_6d62:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $10, $4
jr_02a_6d66:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $14, $19
jr_02a_6d7f:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $2d, $7c
jr_02a_6dfb:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $a9, $20
jr_02a_6e1b:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $c9, $a
jr_02a_6e25:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $d3, $3d
jr_02a_6e62:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $110, $12d
jr_02a_6f8f:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $23d, $25
jr_02a_6fb4:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $262, $18
jr_02a_6fcc:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $27a, $29
jr_02a_6ff5:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $2a3, $8
jr_02a_6ffd:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $2ab, $e
jr_02a_700b:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $2b9, $5e
jr_02a_7069:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $317, $134
jr_02a_719d:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $44b, $23
jr_02a_71c0:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $46e, $d
jr_02a_71cd:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $47b, $4
jr_02a_71d1:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $47f, $1
jr_02a_71d2:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $480, $63
jr_02a_7235:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $4e3, $50
jr_02a_7285:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $533, $9d
jr_02a_7322:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $5d0, $58
jr_02a_737a:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $628, $12
jr_02a_738c:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $63a, $fd
jr_02a_7489:
    INCBIN "../../res/scene/case2/common/JP/g0e.bin", $737, $b

GfxC2_G0F:
    INCBIN "../../res/scene/case2/common/JP/g0f.bin", $0, $1b
jr_02a_74af:
    INCBIN "../../res/scene/case2/common/JP/g0f.bin", $1b, $11
Call_02a_74c0:
    INCBIN "../../res/scene/case2/common/JP/g0f.bin", $2c, $d
jr_02a_74cd:
    INCBIN "../../res/scene/case2/common/JP/g0f.bin", $39, $50
jr_02a_751d:
    INCBIN "../../res/scene/case2/common/JP/g0f.bin", $89, $15
jr_02a_7532:
    INCBIN "../../res/scene/case2/common/JP/g0f.bin", $9e, $43
jr_02a_7575:
    INCBIN "../../res/scene/case2/common/JP/g0f.bin", $e1, $76
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02a_7d61:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
