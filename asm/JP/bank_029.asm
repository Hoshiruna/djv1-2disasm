; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $029", ROMX[$4000], BANK[$29]

    dw Case2BathroomDoorClosed
    dw Case2BathroomDoorOpen
    db $9a, $41, $ad, $41, $c0, $41, $eb, $41, $16, $42, $3d, $42, $64, $42, $77, $42
    db $8a, $42, $95, $42, $a0, $42, $0b, $43, $76, $43, $99, $43, $bc, $43, $cf, $43
    db $e2, $43, $f5, $43, $08, $44, $5f, $44, $b6, $44, $0d, $45, $64, $45, $77, $45
    db $8a, $45, $9d, $45, $b0, $45, $e3, $45, $16, $46, $4d, $46, $84, $46, $db, $46
    db $32, $47, $89, $47, $e0, $47, $13, $48, $46, $48, $79, $48, $ac, $48, $e7, $48
    db $22, $49, $5d, $49, $98, $49, $af, $49, $c6, $49, $d5, $49, $e4, $49, $07, $4a
    db $2a, $4a, $5f, $4a, $94, $4a, $cd, $4a, $06, $4b, $3f, $4b, $78, $4b, $97, $4b
    db $b6, $4b, $27, $4c, $98, $4c, $09, $4d, $7a, $4d, $9b, $4d, $bc, $4d, $fb, $4d
    db $3a, $4e, $55, $4e, $70, $4e, $a9, $4e, $e2, $4e, $05, $4f, $28, $4f, $3b, $4f
    db $4e, $4f, $8d, $4f, $cc, $4f, $3f, $50, $b2, $50, $c7, $50, $dc, $50, $0f, $51
    db $42, $51, $69, $51, $90, $51, $a3, $51, $b6, $51, $0d, $52, $64, $52, $91, $52
    db $be, $52, $eb, $52, $18, $53, $4b, $53, $7e, $53, $b1, $53, $e4, $53, $f7, $53
    db $0a, $54, $55, $54, $a0, $54, $cb, $54, $f6, $54, $65, $55, $d4, $55, $0f, $56
    db $4a, $56, $6b, $56, $8c, $56, $a7, $56, $c2, $56, $e1, $56, $00
jr_029_40e1:
    db $57, $1f, $57, $3e, $57, $7d, $57, $bc, $57, $f5, $57, $2e, $58, $67, $58, $a0
    db $58, $af, $58, $be, $58, $df, $58, $00, $59, $21, $59, $42, $59, $b5, $59, $28
    db $5a, $67, $5a, $a6, $5a, $e5, $5a, $24, $5b, $33, $5b, $42
jr_029_410d:
    db $5b, $51, $5b, $60, $5b, $73, $5b
Case2BathroomDoorClosed: ; $2F, width 4, height 8
    db $2f, $04, $08
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.tilemap", $0, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.attrmap", $0, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.tilemap", $4, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.attrmap", $4, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.tilemap", $8, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.attrmap", $8, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.tilemap", $c, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.attrmap", $c, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.tilemap", $10, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.attrmap", $10, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.tilemap", $14, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.attrmap", $14, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.tilemap", $18, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.attrmap", $18, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.tilemap", $1c, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_closed.attrmap", $1c, $4
Case2BathroomDoorOpen: ; $2F, width 4, height 8
    db $2f, $04, $08
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.tilemap", $0, $2
jr_029_415c:
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.tilemap", $2, $2
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.attrmap", $0, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.tilemap", $4, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.attrmap", $4, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.tilemap", $8, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.attrmap", $8, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.tilemap", $c, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.attrmap", $c, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.tilemap", $10, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.attrmap", $10, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.tilemap", $14, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.attrmap", $14, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.tilemap", $18, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.attrmap", $18, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.tilemap", $1c, $4
    INCBIN "../../res/shared/tilemaps/case2_bathroom_door_open.attrmap", $1c, $4
    db $2f, $01, $08, $6c, $0d, $6d, $0d, $6d, $0d, $6e, $0d, $6d, $0d, $6d, $0d, $6f
    db $0d, $70, $0a, $2f, $01, $08, $71, $08, $71, $08, $71, $08, $71, $08, $71, $08
    db $71, $08, $71, $08, $72, $08, $2f, $04, $05, $96, $97, $98, $99, $0c, $0c, $0c
    db $0c, $9a, $9b, $9c, $9d, $0c, $0c, $0c, $0c, $9e, $9f, $a0, $a1, $0c, $0c, $0c
    db $0c, $9a, $a2, $a3, $9d, $0c, $0c, $0c, $0c, $a4, $a5, $a6, $a7, $0c, $0c, $0c
    db $0c, $2f, $04, $05, $a8, $a9, $a9, $a8, $09, $09, $09, $29, $aa, $ff, $ff, $aa
    db $09, $00, $00, $29, $aa, $ff, $ff, $aa, $09, $00, $00, $29, $aa, $ff, $ff, $aa
    db $09, $00, $00, $29, $ab, $ac, $ad, $ae, $09, $09, $09, $09, $2f, $02, $09, $6a
    db $6b, $09, $09, $7a, $7b, $09, $09, $6c, $6d, $09, $09, $7c, $7d, $09, $09, $6e
    db $6f, $09, $09, $7e, $7f, $09, $09, $80, $81, $09, $09, $82, $83, $09, $09, $84
    db $85, $09, $0e, $2f, $02, $09, $86, $87, $0d, $0d, $88, $89, $0d, $0d, $8a, $89
    db $0d, $0d, $8b, $8c, $0d, $0d, $8d, $8e, $0d, $0d, $95, $89, $0d, $0d, $8f, $90
    db $0d, $0d, $91, $92, $0d, $0d, $93, $94, $0d, $0d, $2f, $01, $08, $70, $08, $71
    db $08, $71, $08, $72, $08, $73, $08, $71, $08, $71, $08, $74, $08, $2f, $01, $08
    db $75, $08, $76, $08, $76, $08, $76, $08, $76, $08, $77, $08, $78, $0d, $79, $0d
    db $2f, $02, $02, $43, $44, $08, $08, $45, $46, $08, $08, $2f, $02, $02, $47, $48
    db $08, $08, $49, $4a, $08, $08, $2f, $04, $0d, $19, $1a, $88, $89, $0c, $09, $09
    db $09, $84, $85, $86, $87, $09, $09, $09, $09, $4c, $4d, $4e, $4f, $09, $09, $09
    db $09, $5c, $5d, $5e, $5f, $09, $09, $09, $09, $60, $61, $62, $63, $09, $09, $09
    db $09, $70, $71, $72, $73, $09, $09, $09, $09, $64, $65, $66, $67, $09, $09, $09
    db $09, $74, $75, $76, $77, $09, $09, $09, $09, $68, $69, $6a, $6b, $09, $09, $09
    db $09, $78, $79, $7a, $7b, $09, $09, $09, $09, $6c, $6d, $6e, $6f, $09, $09, $09
    db $09, $7c, $7d, $7e, $7f, $09, $09, $09, $09, $80, $81, $82, $83, $09, $09, $09
    db $09, $2f, $04, $0d, $19, $1a, $8a, $8b, $0c, $09, $09, $0e, $8c, $8d, $8e, $8f
    db $09, $0e, $0e, $0e, $90, $a7, $a7, $a7, $09, $0e, $0e, $0e, $91, $a7, $a7, $a7
    db $09, $0e, $0e, $0e, $92, $a7, $a7, $a7, $09, $0e, $0e, $0e, $93, $a7, $a7, $a7
    db $09, $0e, $0e, $0e, $94, $a7, $a7, $a7, $09, $0e, $0e, $0e, $95, $a7, $a7, $a7
    db $09, $0e, $0e, $0e, $96, $a7, $a7, $a7, $09, $0e, $0e, $0e, $97, $98, $99, $9a
    db $09, $0e, $0e, $0e, $9b, $9c, $9d, $9e, $09, $09, $09, $09, $9f, $a0, $a1, $a2
    db $09, $0a, $0a, $0a, $a3, $a4, $a5, $a6, $09, $0a, $0a, $0a, $2f, $04, $04, $b4
    db $b7, $2f, $39, $0e, $0d, $0d, $0d, $a0, $a9, $92, $93, $2e, $0a, $0a, $0a, $b9
    db $83, $84, $a8, $0a, $0d, $0d, $0a, $85, $86, $87, $88, $0c, $0c, $0c, $0a, $2f
    db $04, $04, $a5, $a6, $2f, $39, $0d, $0d, $0d, $0d, $a4, $aa, $ab, $ac, $0d, $0a
    db $0a, $0a, $ad, $ae, $af, $a7, $0a, $0a, $0a, $0a, $95, $96, $97, $98, $0c, $0c
    db $0c, $0a, $2f, $01, $08, $97, $09, $98, $09, $98, $09, $99, $09, $9a, $09, $98
    db $09, $9b, $09, $9c, $09, $2f, $01, $08, $a3, $0c, $a4, $0c, $a4, $0c, $a4, $0c
    db $a4, $0c, $a4, $0c, $a5, $0c, $a6, $09, $2f, $01, $08, $9d, $09, $9e, $09, $9e
    db $09, $9f, $09, $a0, $09, $9e, $09, $a1, $09, $a2, $09, $2f, $01, $08, $a7, $0c
    db $a8, $0c, $a8, $0c, $a8, $0c, $a8, $0c, $a8, $0c, $a9, $0c, $aa, $09, $2f, $07
    db $06, $40, $41, $41, $41, $41, $41, $40, $0b, $0b, $0b, $0b, $0b, $0b, $2b, $42
    db $43, $44, $45, $46, $47, $48, $09, $09, $09, $09, $09, $09, $09, $49, $4a, $4b
    db $4c, $4d, $4e, $4f, $09, $09, $09, $09, $09, $09, $09, $50, $51, $52, $53, $54
    db $55, $56, $09, $09, $09, $09, $09, $09, $09, $57, $58, $59, $5a, $5b, $5c, $5d
    db $0c, $0c, $0c, $0c, $0c, $0c, $0c, $5e, $5f, $60, $61, $62, $63, $64, $0c, $0c
    db $0c, $0c, $0c, $0c, $0c, $2f, $07, $06, $65, $66, $67, $68, $69, $6a, $65, $0b
    db $0b, $0b, $0b, $0b, $0b, $2b, $6b, $6c, $6d, $6e, $6d, $6c, $6b, $0b, $0b, $0b
    db $0b, $6b, $6b, $2b, $6f, $70, $71, $72, $73, $74, $75, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $76, $77, $78, $79, $7a, $7b, $7c, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $7d, $7e, $7f, $80, $81, $82, $7d, $0b, $0b, $0b, $0b, $0b, $0b, $2b, $83, $84
    db $85, $86, $87, $88, $89, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $2f, $07, $06, $40
    db $41, $41, $41, $41, $41, $40, $0b, $0b, $0b, $0b, $0b, $0b, $2b, $8a, $8b, $8c
    db $8d, $8e, $8f, $90, $09, $09, $09, $09, $09, $09, $09, $91, $92, $93, $94, $95
    db $96, $97, $09, $09, $09, $09, $09, $09, $09, $98, $99, $9a, $9b, $9c, $9d, $9e
    db $09, $09, $09, $09, $09, $09, $09, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $0c, $0c
    db $0c, $0c, $0c, $0c, $0c, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $0c, $0c, $0c, $0c
    db $0c, $0c, $0c, $2f, $07, $06, $65, $66, $67, $68, $69, $6a, $65, $0b, $0b, $0b
    db $0b, $0b, $0b, $2b, $6b, $6c, $6d, $6e, $6d, $6c, $6b, $0b, $0b, $0b, $0b, $6b
    db $6b, $2b, $6f, $70, $71, $72, $73, $74, $75, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $76, $77, $78, $79, $7a, $7b, $7c, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $7d, $7e
    db $7f, $80, $81, $82, $7d, $0b, $0b, $0b, $0b, $0b, $0b, $2b, $83, $84, $85, $86
    db $87, $88, $89, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $2f, $01, $08, $b4, $0d, $b5
    db $09, $b6, $09, $b7, $09, $b8, $0c, $b9, $0c, $ba, $08, $bb, $0c, $2f, $01, $08
    db $bc, $0d, $bd, $0d, $bd, $0d, $bd, $0d, $be, $0d, $b9, $0c, $ba, $08, $bb, $0c
    db $2f, $01, $08, $b4, $0d, $bf, $09, $c0, $09, $c1, $09, $c2, $0c, $c3, $0c, $ba
    db $08, $bb, $0c, $2f, $01, $08, $bc, $0d, $bd, $0d, $bd, $0d, $bd, $0d, $be, $0d
    db $c3, $0c, $ba, $08, $bb, $0c, $2f, $02, $0c, $c4, $c5, $0e, $0e, $c6, $c7, $0e
    db $0e, $c8, $c9, $0a, $0a, $ca, $cb, $0a, $0a, $cc, $cd, $0a, $0a, $cc, $cd, $0a
    db $0a, $cc, $cd, $0a, $0a, $cc, $cd, $0a, $0a, $cc, $ce, $0a, $0c, $cf, $d0, $0c
    db $0c, $d1, $d2, $08, $08, $d3, $d4, $0c, $08, $2f, $02, $0c, $00, $00, $0a, $0a
    db $00, $00, $0a, $0a, $01, $01, $0a, $0a, $02, $02, $0a, $0a, $03, $03, $0a, $0a
    db $03, $03, $0a, $0a, $03, $03, $0a, $0a, $03, $03, $0a, $0a, $03, $d5, $0a, $0c
    db $d6, $d7, $0c, $0c, $d8, $d9, $08, $08, $da, $db, $0c, $08, $2f, $02, $0d, $af
    db $b0, $08, $08, $b1, $b2, $08, $08, $b1, $b2, $08, $08, $b3, $b4, $08, $08, $b5
    db $b6, $08, $08, $b1, $b2, $08, $08, $b1, $b2, $08, $08, $b7, $b8, $08, $08, $b9
    db $ba, $0d, $0d, $bb, $bc, $0d, $0d, $bd, $be, $0d, $0d, $bf, $c0, $0d, $0d, $c1
    db $c2, $0d, $0d, $2f, $02, $0d, $c3, $c4, $0e, $0e, $c5, $c6, $0e, $0e, $c7, $c8
    db $0e, $0e, $c9, $ca, $0d, $0d, $cb, $cc, $0d, $0d, $cd, $ce, $0d, $0d, $cf, $d0
    db $0d, $0d, $d1, $d2, $0d, $0d, $d3, $d4, $0d, $0d, $d5, $d5, $0d, $2d, $d6, $d6
    db $0d, $2d, $d7, $d7, $0d, $2d, $d8, $d8, $0d, $2d, $2f, $07, $06, $62, $64, $65
    db $66, $67, $64, $7f, $0a, $09, $09, $09, $09, $29, $0a, $80, $68, $69, $6a, $6b
    db $6c, $80, $2a, $09, $09, $09, $09, $09, $0a, $81, $6d, $6e, $6f, $6a, $70, $81
    db $2a, $0b, $0b, $0b, $09, $09, $0a, $81, $71, $72, $73, $74, $75, $81, $2a, $0c
    db $0c, $0c, $0c, $0c, $0a, $81, $76, $77, $7b, $7c, $78, $81, $2a, $0c, $0c, $08
    db $08, $0c, $0a, $63, $79, $79, $7d, $7e, $7a, $82, $0a, $08, $28, $08, $08, $08
    db $0a, $2f, $07, $06, $99, $9a, $99, $9b, $9d, $9c, $9d, $0a, $0a, $0a, $0a, $0a
    db $0a, $0a, $9e, $9f, $9e, $a0, $a2, $a1, $a2, $0a, $0a, $0a, $0a, $0a, $0a, $0a
    db $a3, $a4, $a3, $a5, $a7, $a6, $a7, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $a3, $a4
    db $a3, $a5, $a7, $a6, $a7, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $a3, $a4, $a8, $7b
    db $7c, $a9, $a7, $0a, $0a, $0a, $08, $08, $0a, $0a, $aa, $ab, $ac, $7d, $7e, $ad
    db $ae, $0a, $0a, $0a, $08, $08, $0a, $0a, $2f, $07, $06, $62, $64, $88, $89, $8a
    db $64, $7f, $0a, $09, $09, $09, $09, $29, $0a, $80, $8b, $8c, $8d, $8e, $8f, $80
    db $2a, $09, $09, $09, $09, $09, $0a, $81, $6d, $6e, $6f, $90, $91, $81, $2a, $0b
    db $0b, $0b, $09, $09, $0a, $81, $92, $93, $73, $94, $95, $81, $2a, $0c, $0c, $0c
    db $0c, $0c, $0a, $81, $96, $97, $7b, $7c, $98, $81, $2a, $0c, $0c, $08, $08, $0c
    db $0a, $63, $79, $79, $7d, $7e, $7a, $82, $0a, $08, $28, $08, $08, $08, $0a, $2f
    db $07, $06, $99, $9a, $99, $9b, $9d, $9c, $9d, $0a, $0a, $0a, $0a, $0a, $0a, $0a
    db $9e, $9f, $9e, $a0, $a2, $a1, $a2, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $a3, $a4
    db $a3, $a5, $a7, $a6, $a7, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $a3, $a4, $a3, $a5
    db $a7, $a6, $a7, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $a3, $a4, $a8, $7b, $7c, $a9
    db $a7, $0a, $0a, $0a, $08, $08, $0a, $0a, $aa, $ab, $ac, $7d, $7e, $ad, $ae, $0a
    db $0a, $0a, $08, $08, $0a, $0a, $2f, $04, $06, $76, $77, $78, $79, $0a, $0a, $0a
    db $0a, $7a, $7b, $7c, $7d, $0a, $0a, $0a, $0a, $7e, $7f, $80, $81, $0a, $0a, $0a
    db $0a, $82, $83, $84, $85, $0a, $0a, $0a, $0a, $7a, $86, $87, $7d, $0a, $0a, $0a
    db $0a, $88, $89, $8a, $8b, $0a, $0a, $0a, $0a, $2f, $04, $06, $a0, $a1, $a1, $a0
    db $0a, $0a, $0a, $2a, $a2, $ff, $ff, $a2, $0a, $02, $02, $2a, $a2, $ff, $ff, $a2
    db $0a, $02, $02, $2a, $a2, $ff, $ff, $a2, $0a, $02, $02, $2a, $a2, $ff, $ff, $a2
    db $0a, $02, $02, $2a, $a3, $a4, $a5, $a6, $0a, $0a, $0a, $0a, $2f, $04, $06, $8c
    db $8d, $8e, $8f, $0a, $0a, $0a, $0a, $90, $91, $92, $93, $0a, $0a, $0a, $0a, $94
    db $95, $96, $97, $0a, $0a, $0a, $0a, $98, $99, $9a, $9b, $0a, $0a, $0a, $0a, $90
    db $91, $92, $93, $0a, $0a, $0a, $0a, $9c, $9d, $9e, $9f, $0a, $0a, $0a, $0a, $2f
    db $04, $06, $a0, $a1, $a1, $a0, $0a, $0a, $0a, $2a, $a2, $ff, $ff, $a2, $0a, $02
    db $02, $2a, $a2, $ff, $ff, $a2, $0a, $02, $02, $2a, $a2, $ff, $ff, $a2, $0a, $02
    db $02, $2a, $a2, $ff, $ff, $a2, $0a, $02, $02, $2a, $a3, $a4, $a5, $a6, $0a, $0a
    db $0a, $0a, $2f, $04, $07, $56, $57, $57, $56, $08, $08, $28, $28, $58, $59, $5a
    db $5b, $0b, $0b, $0b, $0b, $5c, $5d, $5e, $5f, $0b, $0b, $0b, $0b, $60, $61, $62
    db $63, $0b, $0b, $0b, $0b, $64, $65, $66, $67, $0b, $0b, $0b, $0b, $68, $69, $6a
    db $6b, $0b, $0b, $0b, $0b, $6c, $6d, $6e, $6f, $0b, $0b, $0b, $0b, $2f, $04, $07
    db $88, $88, $88, $88, $08, $08, $08, $08, $ff, $ff, $ff, $ff, $00, $00, $00, $00
    db $ff, $ff, $ff, $ff, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $00
    db $ff, $ff, $ff, $ff, $00, $00

jr_029_4910:
    nop
    nop
    adc c
    adc d
    adc d
    adc c
    dec bc
    dec bc
    dec hl
    dec hl
    adc e
    adc h
    adc h
    adc e
    inc c
    inc c
    inc l
    inc l
    cpl
    inc b
    rlca
    ld d, [hl]
    ld d, a
    ld d, a
    ld d, [hl]
    ld [$2808], sp
    jr z, jr_029_499e

    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec bc
    dec bc
    dec bc
    dec bc
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    dec bc
    dec bc
    dec bc
    dec bc
    add b
    add c
    add d
    add e
    dec bc
    dec bc
    dec bc
    dec bc
    add h
    add l
    add [hl]
    add a
    dec bc
    dec bc
    dec bc
    dec bc
    cpl
    inc b
    rlca
    adc b
    adc b
    adc b
    adc b
    ld [$0808], sp
    ld [$ffff], sp
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    adc c
    adc d
    adc d
    adc c
    dec bc
    dec bc
    dec hl
    dec hl
    adc e
    adc h
    adc h
    adc e
    inc c
    inc c
    inc l
    inc l
    cpl
    ld [bc], a
    dec b
    ld a, e
    ld a, h
    dec c

jr_029_499e:
    dec c
    ld a, l
    ld a, [hl]
    dec c
    dec c
    ld a, a
    add b
    dec c
    dec c
    add c
    add d
    dec c
    ld [$8483], sp
    ld [$2f08], sp
    ld [bc], a
    dec b
    add l
    add [hl]
    ld [$8708], sp
    adc b
    ld [$8708], sp
    adc b
    ld [$8908], sp
    add d
    ld [$8308], sp
    add h
    ld [$2f08], sp
    ld [bc], a
    inc bc
    ld l, e
    ld l, h
    dec bc
    dec bc
    ld l, l
    ld l, [hl]
    dec bc
    dec bc
    ld l, l
    ld l, [hl]
    dec bc
    dec bc
    cpl
    ld [bc], a
    inc bc
    ld h, l
    ld h, [hl]
    dec bc
    dec bc
    ld h, a
    ld l, b
    dec bc
    dec bc
    ld l, c
    ld l, d
    dec bc
    dec bc
    cpl
    inc b
    inc b
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    dec bc
    dec bc
    dec bc
    dec bc
    add c
    add d
    add e
    add h
    dec bc
    dec bc
    dec bc
    dec bc
    add l
    add [hl]
    add a
    adc b
    dec bc
    dec bc
    dec bc
    dec bc
    adc c
    adc d
    adc e
    adc h
    dec bc
    dec bc
    dec bc
    dec bc
    cpl
    inc b
    inc b
    adc l
    rst RST_38
    rst RST_38
    adc l
    dec bc
    nop
    nop
    dec hl
    adc l
    rst RST_38
    rst RST_38
    adc l
    dec bc
    nop
    nop
    dec hl
    adc l
    adc [hl]
    adc [hl]
    adc l
    dec bc
    add hl, bc
    add hl, hl
    dec hl
    adc a
    sub b
    sub b
    adc a
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    cpl
    dec b
    dec b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld [$0808], sp
    ld [$7c0b], sp
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    ld [$0808], sp
    ld [$810b], sp
    add d
    add e
    add h
    add l
    dec bc
    dec bc
    dec bc
    dec c
    inc c
    add [hl]
    add a
    adc b
    adc c
    adc d
    dec bc
    dec bc
    dec bc
    dec c
    inc c
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    dec c
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    cpl
    dec b
    dec b
    sub b
    sub c
    sub d
    sub e
    ld a, e
    ld [$0808], sp
    ld [$940b], sp
    sub l
    sub [hl]
    sub a
    sbc b
    ld [$0808], sp
    ld [$990b], sp
    sbc d
    sbc e
    sbc h
    sbc l
    dec bc
    dec c
    ld c, $0e
    inc c
    sbc [hl]
    sbc a
    and b
    and c
    and d
    dec bc
    ld a, [bc]
    ld c, $0e
    inc c
    and e
    and h
    and l
    and [hl]
    and a
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    inc c
    cpl
    inc bc
    add hl, bc
    adc l
    sub h
    sub l
    ld [$0b0d], sp
    adc l
    sub h
    sub [hl]
    ld [$0b0d], sp
    adc l
    sub a
    sbc b
    ld [$0b0d], sp
    adc [hl]
    sbc c
    sbc d
    ld [$0e0e], sp
    adc a
    sbc e
    sbc h
    ld [$0e0e], sp
    sub b
    sbc l
    sbc [hl]
    ld [$0e0e], sp
    sub c
    sbc a
    and b
    ld [$0e0e], sp
    sub d
    and c
    and d
    ld [$0e0e], sp
    sub e
    and e
    and h
    ld [$0808], sp
    cpl
    inc bc
    add hl, bc
    xor e
    xor h
    xor l
    ld [$0808], sp
    xor e
    xor h
    xor l
    ld [$0808], sp
    xor e
    xor [hl]
    xor a
    ld [$0808], sp
    or b
    or c
    or d
    ld [$0e0e], sp
    or e
    or h
    or l
    ld [$0e0e], sp
    or [hl]
    or a
    cp b
    ld [$0e0e], sp
    cp c
    cp d
    cp e
    ld [$0e0e], sp
    cp h
    cp l
    cp [hl]
    ld [$0808], sp
    sub e
    and e
    cp a
    ld [$0808], sp
    cpl
    inc bc
    add hl, bc
    adc l
    and l
    and [hl]
    ld [$0b0d], sp
    adc l
    and a
    xor b
    ld [$0b0d], sp
    adc l
    xor c
    xor d
    ld [$0b0d], sp
    adc [hl]
    sbc c
    sbc d
    ld [$0e0e], sp
    adc a
    sbc e
    sbc h
    ld [$0e0e], sp
    sub b
    sbc l
    sbc [hl]
    ld [$0e0e], sp
    sub c
    sbc a
    and b
    ld [$0e0e], sp
    sub d
    and c
    and d
    ld [$0e0e], sp
    sub e
    and e
    and h
    ld [$0808], sp
    cpl
    inc bc
    add hl, bc
    xor e
    xor h
    xor l
    ld [$0808], sp
    xor e
    xor h
    xor l
    ld [$0808], sp
    xor e
    xor [hl]
    xor a
    ld [$0808], sp
    or b
    or c
    or d
    ld [$0e0e], sp
    or e
    or h
    or l
    ld [$0e0e], sp
    or [hl]
    or a
    cp b
    ld [$0e0e], sp
    cp c
    cp d
    cp e
    ld [$0e0e], sp
    cp h
    cp l
    cp [hl]
    ld [$0808], sp
    sub e
    and e
    cp a
    ld [$0808], sp
    cpl
    ld [bc], a
    rlca
    sbc e
    sbc e
    add hl, bc
    add hl, hl
    sbc h
    sbc l
    add hl, bc
    add hl, bc
    sbc [hl]
    sbc a
    add hl, bc
    add hl, bc
    and b
    and c
    add hl, bc
    ld c, $a2
    and e
    add hl, bc
    add hl, bc
    and h
    and l
    add hl, bc
    add hl, bc
    and [hl]
    and a
    add hl, bc
    ld a, [bc]
    cpl
    ld [bc], a
    rlca
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    xor b
    xor b
    add hl, bc
    add hl, hl
    cpl
    dec b
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    xor h
    xor l
    xor [hl]
    xor a
    or b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    or c
    or d
    or e
    or h
    or l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cpl
    dec b
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and a
    xor b
    xor c
    xor d
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    xor h
    xor l
    xor [hl]
    xor a
    or b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    or c
    or d
    or e
    or h
    or l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cpl
    dec b
    dec bc
    and d
    add h
    add l
    add [hl]
    and e
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    and d
    add a
    adc b
    adc b
    and e
    dec bc
    ld [$0c0c], sp
    dec bc
    and d
    adc c
    adc d
    adc e
    and e
    dec bc
    ld [$0c0c], sp
    dec bc
    and d
    adc c
    adc h
    adc l
    and e
    dec bc
    ld [$0c0c], sp
    dec bc
    and d
    adc c
    adc [hl]
    adc a
    and e
    dec bc
    ld [$0c0a], sp
    dec bc
    and d
    adc c
    sub b
    sub c
    and e
    dec bc
    ld [$0c0a], sp
    dec bc
    and d
    adc c
    adc h
    adc l
    and e
    dec bc
    ld [$0c0c], sp
    dec bc
    and d
    adc c
    sub d
    sub e
    and e
    dec bc
    ld [$0a0a], sp
    dec bc
    and d
    sub l
    sub [hl]
    sub a
    and e
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cpl
    dec b
    dec bc
    and d
    add h
    add l
    add [hl]
    and e
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    and d
    add a
    and h
    and h
    and e
    dec bc
    ld [$0808], sp
    dec bc
    and d
    adc c
    rst RST_38
    rst RST_38
    and e
    dec bc
    ld [$0000], sp
    dec bc
    and d
    adc c
    rst RST_38
    rst RST_38
    and e
    dec bc
    ld [$0000], sp
    dec bc
    and d
    adc c
    rst RST_38
    rst RST_38
    and e
    dec bc
    ld [$0000], sp
    dec bc
    and d
    adc c
    rst RST_38
    rst RST_38
    and e
    dec bc
    ld [$0000], sp
    dec bc
    and d
    adc c
    rst RST_38
    rst RST_38
    and e
    dec bc
    ld [$0000], sp
    dec bc
    and d
    adc c
    and l
    and [hl]
    and e
    dec bc
    ld [$0808], sp
    dec bc
    and d
    sub l
    sub [hl]
    sub a
    and e
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cpl
    inc bc
    dec b
    ld c, d
    ld c, e
    ld c, h
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    ld c, a
    dec bc
    dec bc
    dec bc
    ld d, b
    ld d, c
    ld d, d
    dec c
    dec c
    dec c
    ld d, e
    ld d, h
    ld d, l
    dec bc
    dec bc
    dec bc
    ld d, [hl]
    ld d, a
    ld e, b
    dec bc
    dec bc
    dec bc
    cpl
    inc bc
    dec b
    rst RST_38
    ld e, c
    ld e, d
    nop
    dec bc
    dec bc
    ld e, e
    rst RST_38
    rst RST_38
    dec bc
    nop
    nop
    ld e, h
    rst RST_38
    ld e, l
    dec c
    nop
    dec c
    ld e, a
    rst RST_38
    ld e, [hl]
    dec bc
    nop
    dec bc
    ld h, b
    ld h, c
    rst RST_38
    dec bc
    dec bc
    nop
    cpl
    ld b, $05
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld h, d
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    ld b, $05
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld h, d
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    inc b
    inc bc
    ld a, a
    add b
    add c
    add d
    ld [$0808], sp
    ld [$8483], sp
    add l
    add [hl]
    ld [$0808], sp
    ld [$8887], sp
    adc c
    adc d
    ld [$0808], sp
    ld [$042f], sp
    inc bc
    adc e
    adc h
    adc l
    adc [hl]
    ld [$0808], sp
    ld [$908f], sp
    sub c
    sub d
    ld [$0808], sp
    ld [$9493], sp
    sub l
    sub [hl]
    ld [$0808], sp
    ld [$032f], sp
    add hl, bc
    ld d, a
    ld e, b
    ld e, b
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, c
    ld e, d
    ld e, e
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, c
    ld e, h
    ld e, l
    add hl, bc
    add hl, bc
    dec bc
    ld e, c
    ld e, [hl]
    ld e, a
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, b
    ld e, l
    ld e, l
    dec c
    dec bc
    dec bc
    ld h, c
    ld e, d
    ld e, e
    dec c
    add hl, bc
    add hl, bc
    ld e, c
    ld e, h
    ld e, l
    add hl, bc
    add hl, bc
    dec bc
    ld e, c
    ld e, [hl]
    ld e, a
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, a
    ld e, b
    ld e, b
    ld c, c
    ld c, c
    ld c, c
    cpl
    inc bc
    add hl, bc
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    ld h, d
    ld h, e
    rst RST_38
    ld [$0008], sp
    ld h, h
    ld h, l
    rst RST_38
    ld [$0008], sp
    ld h, h
    ld h, l
    rst RST_38
    ld [$0008], sp
    ld h, [hl]
    ld h, a
    rst RST_38
    dec c
    dec c
    nop
    ld l, b
    ld l, c
    rst RST_38
    add hl, bc
    add hl, bc
    nop
    ld l, b
    ld l, c
    rst RST_38
    add hl, bc
    add hl, bc
    nop
    ld l, d
    ld l, e
    ld l, h
    add hl, bc
    dec c
    ld [$6e6d], sp
    ld l, a
    inc c
    inc c
    inc c
    cpl
    ld [bc], a
    ld [$beb8], sp
    inc c
    add hl, bc
    cp c
    cp a
    inc c
    add hl, bc
    cp c
    ret nz

    inc c
    add hl, bc
    cp c
    pop bc
    inc c
    add hl, bc
    cp d
    cp e
    inc c
    ld [$c2bc], sp
    inc c
    ld [$c3bc], sp
    inc c
    ld [$c4bd], sp
    inc c
    dec bc
    cpl
    ld [bc], a
    ld [$beff], sp
    nop
    add hl, bc
    rst RST_38
    cp a
    nop
    add hl, bc
    rst RST_38
    ret nz

    nop
    add hl, bc
    rst RST_38
    pop bc
    nop
    add hl, bc
    add $c5
    inc c
    ld [$c2c7], sp
    inc c
    ld [$c3c8], sp
    inc c
    ld [$c4c9], sp
    dec bc
    dec bc
    cpl
    ld [bc], a
    inc b
    xor c
    xor d
    add hl, bc
    inc c
    xor e
    xor h
    add hl, bc
    inc c
    xor l
    xor [hl]
    ld a, [bc]
    inc c
    xor a
    xor a
    add hl, bc
    add hl, bc
    cpl
    ld [bc], a
    inc b
    or b
    or c
    add hl, bc
    ld [$b3b2], sp
    add hl, bc
    ld [$b5b4], sp
    add hl, bc
    ld [$b7b6], sp
    add hl, bc
    add hl, bc
    cpl
    ld b, $05
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    ld a, c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [hl]
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, a
    add b
    add c
    add d
    add e
    add h
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    adc e
    adc h
    adc l
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    cpl
    ld b, $05
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    ld [$0808], sp
    ld [$0808], sp
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    ld [$0808], sp
    ld [$0808], sp
    sbc c
    sbc d
    sbc e
    sbc e
    sbc e
    sbc h
    ld [$0808], sp
    ld [$0808], sp
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    ld [$0808], sp
    ld [$0808], sp
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    ld [$0808], sp
    ld [$0808], sp
    cpl
    inc b
    ld c, $78
    ld a, c
    ld a, d
    sub a
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$7c7b], sp
    ld a, l
    sbc b
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$7f7e], sp
    add b
    sbc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8281], sp
    add e
    sub a
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8584], sp
    add [hl]
    sbc b
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8887], sp
    adc c
    sbc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$828a], sp
    add e
    sub a
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8c8b], sp
    adc l
    sbc b
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8e87], sp
    adc a
    sbc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8290], sp
    sub c
    sub a
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$9392], sp
    sub h
    sbc b
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$9695], sp
    adc c
    sbc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8278], sp
    ld a, d
    sub a
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$7c7b], sp
    ld a, l
    sbc b
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$042f], sp
    ld c, $9e
    sbc d
    sbc e
    sbc h
    ld [$0a08], sp
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    and c
    ld [$0808], sp
    ld a, [bc]
    sbc [hl]
    sbc l
    and b
    and d
    ld [$0808], sp
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    and e
    ld [$0808], sp
    ld a, [bc]
    sbc [hl]
    sbc l
    and b
    and h
    ld [$0808], sp
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    and l
    ld [$0808], sp
    ld a, [bc]
    sbc [hl]
    sbc l
    and b
    and [hl]
    ld [$0808], sp
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    and a
    ld [$0808], sp
    ld a, [bc]
    sbc [hl]
    sbc l
    and b
    xor b
    ld [$0808], sp
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    xor c
    ld [$0808], sp
    ld a, [bc]
    sbc [hl]
    sbc l
    and b
    xor d
    ld [$0808], sp
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    xor e
    ld [$0808], sp
    ld a, [bc]
    sbc [hl]
    sbc l
    and b
    xor h
    ld [$0808], sp
    ld a, [bc]
    sbc l
    sbc [hl]
    sbc a
    xor l
    ld [$0808], sp
    ld a, [bc]
    cpl
    ld bc, $6c09
    dec c
    ld l, l
    dec c
    ld l, [hl]
    dec c
    ld l, a
    dec c
    ld [hl], b
    dec c
    ld [hl], c
    dec c
    ld [hl], d
    dec c
    ld [hl], e
    dec c
    ld [hl], h
    dec c
    cpl
    ld bc, $7509
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    halt
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    halt
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    ld [hl], a
    ld a, [bc]
    cpl
    inc bc
    ld [$4948], sp
    ld c, d
    inc c
    inc c
    dec bc
    ld c, e
    ld c, h
    ld c, l
    inc c
    inc c
    dec bc
    ld c, [hl]
    ld c, a
    ld d, b
    inc c
    inc c
    dec bc
    ld c, [hl]
    ld c, a
    ld d, c
    inc c
    inc c
    dec bc
    ld c, [hl]
    ld c, a
    ld d, d
    inc c
    inc c
    dec bc
    ld c, [hl]
    ld c, a
    ld d, e
    inc c
    inc c
    dec bc
    ld d, l
    ld d, [hl]
    ld d, h
    inc c
    inc c
    dec bc
    ld d, a
    ld e, b
    ld e, c
    inc c
    inc c
    dec bc
    cpl
    inc bc
    ld [$5b5a], sp
    ld e, h
    dec bc
    dec bc
    dec bc
    rst RST_38
    ld e, l
    ld e, [hl]
    nop
    dec bc
    dec bc
    rst RST_38
    ld e, a
    ld h, b
    nop
    dec bc
    dec bc
    rst RST_38
    ld h, c
    ld h, d
    nop
    dec bc
    dec bc
    rst RST_38
    ld h, e
    ld h, h
    nop
    dec bc
    dec bc
    rst RST_38
    ld h, l
    ld h, [hl]
    nop
    dec bc
    dec bc
    rst RST_38
    ld h, a
    ld l, b
    nop
    dec bc
    dec bc
    ld l, c
    ld l, d
    ld l, e
    dec bc
    dec bc
    dec bc
    cpl
    inc bc
    ld b, $99
    sbc d
    rst RST_38
    ld [$0008], sp
    sbc e
    sbc h
    sbc l
    ld [$0808], sp
    sbc [hl]
    sbc a
    and b
    ld [$0808], sp
    and c
    and d
    and e
    ld [$0808], sp
    and h
    and l
    and [hl]
    inc c
    ld [$9608], sp
    sub a
    add c
    ld [$0808], sp
    cpl
    inc bc
    ld b, $8e
    rst RST_38
    rst RST_38
    ld [$0000], sp
    adc a
    rst RST_38
    rst RST_38
    ld [$0000], sp
    sub b
    rst RST_38
    rst RST_38
    ld [$0000], sp
    sub c
    sub d
    rst RST_38
    ld [$0008], sp
    sub e
    sub h
    sub l
    inc c
    ld [$9608], sp
    sub a
    sbc b
    ld [$0808], sp
    cpl
    ld bc, $9a08
    ld c, $9b
    inc c
    sbc h
    inc c
    sbc h
    inc c
    sbc l
    inc c
    sbc h
    inc c
    sbc h
    inc c
    sbc [hl]
    dec c
    cpl
    ld bc, $9f08
    ld c, $a0
    add hl, bc
    and c
    add hl, bc
    and d
    add hl, bc
    and d
    add hl, bc
    and d
    add hl, bc
    and d
    add hl, bc
    and e
    ld a, [bc]
    cpl
    ld b, $07
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, b
    ld e, e
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    inc c
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, b
    ld e, e
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    inc c
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    ld b, $07
    rst RST_38
    ld [hl], h
    ld [hl], l
    ld [hl], l
    rst RST_38
    rst RST_38
    nop
    dec bc
    dec bc
    dec hl
    nop
    nop
    halt
    ld [hl], a
    ld a, b
    ld a, b
    rst RST_38
    rst RST_38
    ld c, $0e
    ld c, $2e
    nop
    nop
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    dec bc
    ld c, $0e
    ld c, $0e
    dec bc
    ld a, a
    add b
    add c
    add d
    add e
    add h
    dec bc
    ld c, $0e
    ld c, $0e
    dec bc
    rst RST_38
    add l
    add [hl]
    add a
    adc b
    rst RST_38
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    adc c
    adc d
    adc e
    adc h
    adc l
    rst RST_38
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    rst RST_38
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    cpl
    inc bc
    rlca
    add h
    add l
    add [hl]
    ld c, $0e
    ld c, $87
    adc b
    adc c
    ld a, [bc]
    ld a, [bc]
    ld c, $8a
    adc e
    adc c
    ld a, [bc]
    dec bc
    ld c, $8c
    adc l
    adc c
    ld a, [bc]
    dec bc
    ld c, $8e
    adc a
    sub b
    ld a, [bc]
    dec bc
    ld c, $91
    sub d
    sub e
    ld a, [bc]
    ld a, [bc]
    ld c, $94
    sub l
    sub [hl]
    ld c, $0e
    ld c, $2f
    inc bc
    rlca
    sub a
    sbc b
    sbc c
    ld c, $0e
    ld c, $9a
    rst RST_38
    sbc e
    ld a, [bc]
    nop
    ld c, $9a
    rst RST_38
    sbc e
    ld a, [bc]
    nop
    ld c, $9a
    rst RST_38
    sbc e
    ld a, [bc]
    nop
    ld c, $9a
    rst RST_38
    sbc h
    ld a, [bc]
    nop
    ld c, $9d
    sbc [hl]
    sbc a
    ld c, $0e
    ld c, $94
    sub l
    and b
    ld c, $0e
    ld c, $2f
    inc bc
    rlca
    add h
    add l
    add [hl]
    ld c, $0e
    ld c, $a1
    and d
    adc c
    ld a, [bc]
    ld a, [bc]
    ld c, $a3
    and h
    adc c
    ld a, [bc]
    dec bc
    ld c, $a5
    and [hl]
    adc c
    ld a, [bc]
    dec bc
    ld c, $a7
    xor b
    sub b
    ld a, [bc]
    dec bc
    ld c, $a9
    xor d
    sub e
    ld a, [bc]
    ld a, [bc]
    ld c, $94
    sub l
    and b
    ld c, $0e
    ld c, $2f
    inc bc
    rlca
    sub a
    sbc b
    sbc c
    ld c, $0e
    ld c, $9a
    rst RST_38
    sbc e
    ld a, [bc]
    nop
    ld c, $9a
    rst RST_38
    sbc e
    ld a, [bc]
    nop
    ld c, $9a
    rst RST_38
    sbc e
    ld a, [bc]
    nop
    ld c, $9a
    rst RST_38
    sbc h
    ld a, [bc]
    nop
    ld c, $9d
    sbc [hl]
    sbc a
    ld c, $0e
    ld c, $94
    sub l
    and b
    ld c, $0e
    ld c, $2f
    inc b
    ld b, $7c
    ld a, l
    ld a, [hl]
    ld a, a
    dec bc
    dec bc
    dec bc
    dec bc
    add b
    add c
    add d
    add e
    dec bc
    dec bc
    dec bc
    dec bc
    add h
    add l
    add [hl]
    add a
    dec bc
    dec bc
    dec bc
    dec bc
    adc b
    adc c
    adc d
    adc e
    dec bc
    dec bc
    dec bc
    dec bc
    adc h
    adc l
    adc [hl]
    adc a
    dec bc
    dec bc
    dec bc
    dec bc
    sub b
    sub c
    sub d
    sub e
    dec bc
    dec bc
    dec bc
    dec bc
    cpl
    inc b
    ld b, $ff
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    and b
    and c
    and d
    and e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    inc b
    ld b, $94
    sub l
    sub [hl]
    sub a
    dec bc
    dec bc
    dec bc
    dec bc
    sbc b
    sbc c
    sbc d
    sbc e
    dec bc
    dec bc
    dec bc
    dec bc
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec bc
    dec bc
    dec bc
    dec bc
    adc b
    adc c
    adc d
    adc e
    dec bc
    dec bc
    dec bc
    dec bc
    adc h
    adc l
    adc [hl]
    adc a
    dec bc
    dec bc
    dec bc
    dec bc
    sub b
    sub c
    sub d
    sub e
    dec bc
    dec bc
    dec bc
    dec bc
    cpl
    inc b
    ld b, $ff
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    and b
    and c
    and d
    and e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    ld [bc], a
    inc b
    sbc c
    sbc d
    dec bc
    dec bc
    sbc e
    sbc h
    dec bc
    dec bc
    sbc l
    sbc [hl]
    dec bc
    dec bc
    sbc a
    and b
    dec bc
    dec bc
    cpl
    ld [bc], a
    inc b
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    and c
    and d
    dec bc
    dec bc
    cpl
    ld b, $06
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$6261], sp
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$6867], sp
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$6e6d], sp
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$7473], sp
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cpl
    ld b, $06
    ld d, l
    ld a, c
    ld d, a
    ld a, d
    ld e, c
    ld e, d
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8281], sp
    add e
    add h
    add l
    add [hl]
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8887], sp
    adc c
    adc d
    adc e
    adc h
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$8e8d], sp
    adc a
    sub b
    sub c
    sub d
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$9493], sp
    sub l
    sub [hl]
    sub a
    sbc b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$042f], sp
    dec b
    and h
    and l
    and [hl]
    and a
    ld [$0808], sp
    ld [$60a8], sp
    ld h, b
    xor c
    ld [$0808], sp
    ld [$60aa], sp
    xor e
    xor h
    ld [$0808], sp
    ld [$aead], sp
    xor [hl]
    xor a
    ld [$0808], sp
    ld [$b1b0], sp
    or d
    or e
    ld [$0808], sp
    ld [$042f], sp
    dec b
    or h
    or l
    or [hl]
    or e
    ld [$0808], sp
    ld [$ffb7], sp
    cp b
    or e
    ld [$0800], sp
    ld [$bab9], sp
    cp e
    or e
    ld [$0909], sp
    ld [$bdbc], sp
    cp [hl]
    cp a
    ld [$0909], sp
    ld [$c1c0], sp
    pop bc
    jp nz, $0808

    ld [$2f08], sp
    add hl, bc
    ld b, $60
    ld h, c
    ld h, d
    ld h, e
    ld h, b
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, b
    ld l, b
    ld h, b
    ld h, b
    ld l, c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, b
    ld l, h
    ld h, b
    ld h, b
    ld l, c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, b
    ld l, l
    ld h, b
    ld l, d
    ld l, e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, b
    ld l, [hl]
    ld h, b
    ld h, b
    ld l, c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld h, e
    ld h, b
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    cpl
    add hl, bc
    ld b, $60
    ld h, c
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld h, b
    ld h, c
    ld a, l
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, a
    add b
    add c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld h, b
    add d
    add e
    ld h, b
    add h
    add l
    add [hl]
    add a
    adc b
    ld [$0909], sp
    ld [$0808], sp
    ld [$0808], sp
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    ld [$0909], sp
    ld [$0808], sp
    ld [$0808], sp
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    ld [$0908], sp
    ld [$0808], sp
    ld [$0808], sp
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    cpl
    ld c, $02
    ld l, b
    ld l, c
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld d, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, c
    ld l, b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec l
    dec l
    ld l, d
    ld l, e
    ld l, h
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, h
    ld l, e
    ld l, d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec l
    dec l
    dec l
    cpl
    ld c, $02
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, h
    ld e, e
    ld e, d
    ld e, c
    ld e, b
    ld h, h
    ld h, l
    dec c
    dec c
    ld c, $08
    ld [$0808], sp
    jr z, jr_029_5651

    jr z, jr_029_5653

    ld l, $0e
    ld c, $5d
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, e
    ld h, d
    ld h, c
    ld h, b
    ld e, a
    ld h, [hl]
    ld h, a
    dec c
    dec c
    ld c, $0e
    ld [$0808], sp
    jr z, jr_029_566d

    jr z, jr_029_5675

    ld l, $0d
    dec c
    cpl
    dec b
    inc bc
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_029_5651:
    ld c, h
    ld a, [bc]

jr_029_5653:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    dec b

jr_029_566d:
    inc bc
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, [bc]
    ld a, [bc]

jr_029_5675:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    ld [bc], a
    ld b, $0e
    rrca
    dec bc
    inc c
    ld h, e
    ld h, h
    dec bc
    inc c
    ld h, l
    ld h, [hl]
    dec bc
    inc c
    ld h, a
    ld l, b
    dec bc
    inc c
    ld l, c
    ld l, d
    dec bc
    inc c
    ld l, e
    ld l, h
    dec bc
    inc c
    cpl
    ld [bc], a
    ld b, $6d
    rrca
    ld [$6e0c], sp
    ld l, a
    ld [$700c], sp
    ld [hl], c
    ld [$700c], sp
    ld [hl], e
    ld [$740c], sp
    ld [hl], l
    ld [$760c], sp
    ld [hl], a
    dec bc
    inc c
    cpl
    ld [bc], a
    rlca
    jr nz, jr_029_56f4

    inc c
    inc c
    ld hl, $0c2e
    ld a, [bc]
    ld [hl+], a
    cpl
    inc c
    ld a, [bc]
    inc hl
    jr nc, jr_029_56e1

    ld a, [bc]
    ld hl, $0c31
    ld a, [bc]
    inc h
    dec hl
    inc c
    inc c
    dec h
    inc l
    inc c
    inc c

jr_029_56e1:
    cpl
    ld [bc], a
    rlca
    ld e, l
    ld e, [hl]
    inc c
    inc c
    ld e, a
    rst RST_38
    inc c
    inc b
    ld e, a
    rst RST_38
    inc c
    inc b
    ld e, a
    rst RST_38
    inc c
    inc b

jr_029_56f4:
    ld e, a
    rst RST_38
    inc c
    inc b
    ld e, a
    rst RST_38
    inc c
    inc b
    ld h, b
    ld h, c
    inc c
    inc c
    cpl
    ld [bc], a
    rlca
    jr nz, jr_029_572b

    inc c
    inc c
    ld hl, $0c27
    ld a, [bc]
    ld [hl+], a
    jr z, jr_029_571a

    ld a, [bc]
    inc hl
    add hl, hl
    dec c
    ld a, [bc]
    ld hl, $0c2a
    ld a, [bc]
    inc h
    dec hl
    inc c

jr_029_571a:
    inc c
    dec h
    inc l
    inc c
    inc c
    cpl
    ld [bc], a
    rlca
    ld e, l
    ld e, [hl]
    inc c
    inc c
    ld e, a
    rst RST_38
    inc c
    inc b
    ld e, a

jr_029_572b:
    rst RST_38
    inc c
    inc b
    ld e, a
    rst RST_38
    inc c
    inc b
    ld e, a
    rst RST_38
    inc c
    inc b
    ld e, a
    rst RST_38
    inc c
    inc b
    ld h, b
    ld h, c
    inc c
    inc c
    cpl
    dec b
    ld b, $7e
    ld a, a
    add b
    add c
    add d
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add e
    add h
    add l
    add [hl]
    add a
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    adc b
    adc c
    adc d
    adc e
    adc h
    dec bc
    ld c, $0e
    ld c, $0a
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    ld c, $0e
    ld c, $0e
    ld c, $92
    sub e
    sub h
    sub l
    sub [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    dec b
    ld b, $69
    ld l, d
    ld l, d
    ld l, d
    ld l, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld l, e
    ld l, h
    ld l, h
    ld l, h
    ld l, e
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    inc l
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, l
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    inc l
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cpl
    inc bc
    add hl, bc
    ld [hl], e
    ld [hl], h
    ld l, a
    dec c
    dec c
    ld [$7675], sp
    ld [hl], b
    dec c
    dec c
    ld [$7877], sp
    ld [hl], b
    dec c
    dec c
    ld [$7a79], sp
    ld [hl], c
    dec c
    dec c
    ld [$7b79], sp
    ld [hl], d
    dec c
    dec c
    ld [$7d7c], sp
    ld c, b
    dec bc
    dec bc
    ld [$8180], sp
    ccf
    dec bc
    dec bc
    ld [$8382], sp
    dec [hl]
    dec bc
    dec bc
    ld [$2984], sp
    ld a, [hl+]
    dec bc
    ld [$2f08], sp
    inc bc
    add hl, bc
    sbc a
    and b
    ld l, a
    dec c
    dec c
    ld [$a17e], sp
    ld [hl], b
    inc c
    dec c
    ld [$a3a2], sp
    ld [hl], b
    dec c
    dec c
    ld [$a47f], sp
    sub l
    ld [$0809], sp
    and l
    and [hl]
    sub [hl]
    add hl, bc
    add hl, bc
    ld [$a17e], sp
    ld c, b
    add hl, bc
    add hl, bc
    ld [$a8a7], sp
    ccf
    add hl, bc
    add hl, bc
    ld [$aaa9], sp
    dec [hl]
    add hl, bc
    add hl, bc
    ld [$29ab], sp
    ld a, [hl+]
    add hl, bc
    ld [$2f08], sp
    inc bc
    add hl, bc
    ld [hl], e
    ld [hl], h
    ld l, a
    dec c
    dec c
    ld [$7675], sp
    ld [hl], b
    dec c
    dec c
    ld [$7877], sp
    ld [hl], b
    dec c
    dec c
    ld [$9897], sp
    ld [hl], c
    dec bc
    dec bc
    ld [$9a99], sp
    ld [hl], d
    dec bc
    dec bc
    ld [$9c9b], sp
    ld c, b
    dec bc
    dec bc
    ld [$8180], sp
    ccf
    dec bc
    dec bc
    ld [$8382], sp
    dec [hl]
    dec bc
    dec bc
    ld [$2984], sp
    ld a, [hl+]
    dec bc
    ld [$2f08], sp
    inc bc
    add hl, bc
    sbc a
    and b
    ld l, a
    dec c
    dec c
    ld [$a17e], sp
    ld [hl], b
    inc c
    dec c
    ld [$a3a2], sp
    ld [hl], b
    dec c
    dec c
    ld [$a47f], sp
    sub l
    ld [$0809], sp
    and l
    and [hl]
    sub [hl]
    add hl, bc
    add hl, bc
    ld [$a17e], sp
    ld c, b
    add hl, bc
    add hl, bc
    ld [$a8a7], sp
    ccf
    add hl, bc
    add hl, bc
    ld [$aaa9], sp
    dec [hl]
    add hl, bc
    add hl, bc
    ld [$29ab], sp
    ld a, [hl+]
    add hl, bc
    ld [$2f08], sp
    ld [bc], a
    inc bc
    add l
    add [hl]
    ld c, $0e
    add a
    adc b
    inc c
    inc c
    adc c
    adc d
    ld c, $0e
    cpl
    ld [bc], a
    inc bc
    xor h
    xor l
    ld c, $0e
    xor [hl]
    xor a
    inc c
    inc c
    or b
    or c
    ld c, $0e
    cpl
    inc bc
    dec b
    ld a, a
    ld e, a
    adc h
    ld a, [bc]
    ld a, [bc]
    ld [$6160], sp
    adc l
    ld a, [bc]
    ld a, [bc]
    ld [$6362], sp
    adc [hl]
    ld a, [bc]
    ld a, [bc]
    ld [$9291], sp
    adc a
    ld a, [bc]
    ld a, [bc]
    ld [$9493], sp
    sub b
    ld a, [bc]
    ld a, [bc]
    ld [$032f], sp
    dec b
    ld a, a
    ld e, a
    rst RST_38
    ld a, [bc]
    ld a, [bc]
    nop
    ld h, b
    ld h, c
    rst RST_38
    ld a, [bc]
    ld a, [bc]
    nop
    ld h, d
    ld h, e
    rst RST_38
    ld a, [bc]
    ld a, [bc]
    nop
    sub c
    sub d
    rst RST_38
    ld a, [bc]
    ld a, [bc]
    nop
    sub e
    sub h
    or d
    ld a, [bc]
    ld a, [bc]
    ld [$032f], sp
    dec b
    ld a, a
    ld e, a
    adc h
    ld a, [bc]
    ld a, [bc]
    ld [$6160], sp
    adc l
    ld a, [bc]
    ld a, [bc]
    ld [$6362], sp
    adc [hl]
    ld a, [bc]
    ld a, [bc]
    ld [$b4b3], sp
    or l
    ld a, [bc]
    ld [$b608], sp
    or a
    cp b
    ld a, [bc]
    ld [$2f08], sp
    inc bc
    dec b
    ld a, a
    ld e, a
    rst RST_38
    ld a, [bc]
    ld a, [bc]
    nop
    ld h, b
    ld h, c
    rst RST_38
    ld a, [bc]
    ld a, [bc]
    nop
    ld h, d
    ld h, e
    rst RST_38
    ld a, [bc]
    ld a, [bc]
    nop
    or e
    or h
    cp c
    ld a, [bc]
    ld [$b608], sp
    or a
    cp d
    ld a, [bc]
    ld [$2f08], sp
    rlca
    ld [$0100], sp
    ld bc, $0201
    inc bc
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    ld b, $07
    ld [$1312], sp
    inc d
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    jr nz, jr_029_5979

    rla
    jr jr_029_5988

    inc hl
    inc h
    add hl, bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    jr nc, jr_029_5997

    daa
    jr z, jr_029_59a6

    inc sp
    inc [hl]
    add hl, bc
    dec bc
    dec bc

jr_029_5979:
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add b
    ld [hl], $37
    jr c, jr_029_5984

    inc bc
    inc b

jr_029_5984:
    add hl, bc
    dec bc
    dec bc
    dec bc

jr_029_5988:
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, b
    ld b, [hl]
    ld b, a
    ld c, b
    ld b, d
    ld b, e
    ld b, h
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc

jr_029_5997:
    add hl, bc
    add hl, bc
    ld d, b
    ld d, [hl]
    ld d, a
    ld e, b
    ld de, $0921
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc

jr_029_59a6:
    add hl, bc
    rst RST_38
    ld sp, $5141
    rst RST_38
    rst RST_38
    add hl, de
    ld b, $0e
    ld c, $0e
    ld b, $06
    add hl, bc
    cpl
    rlca
    ld [$7f7b], sp
    ld a, a
    ld a, a
    ld e, e
    ld e, h
    ld e, l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, h
    ld l, e
    ld l, h
    ld l, l
    ld b, $07
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, l
    ld e, [hl]
    rst RST_38
    rst RST_38
    ld d, $17
    jr jr_029_59e5

    add hl, bc
    ld b, $06
    dec bc
    dec bc
    dec bc
    ld a, [hl]
    ld e, [hl]
    rst RST_38

jr_029_59e5:
    rst RST_38
    ld h, $27
    jr z, jr_029_59f3

    add hl, bc
    ld b, $06
    dec bc
    dec bc
    dec bc
    ld a, e
    ld e, [hl]
    rst RST_38

jr_029_59f3:
    rst RST_38
    ld [hl], $37
    jr c, jr_029_5a01

    add hl, bc
    ld b, $06
    dec bc
    dec bc
    dec bc
    ld l, a
    ld e, [hl]
    rst RST_38

jr_029_5a01:
    rst RST_38
    ld b, [hl]
    ld b, a
    ld c, b
    add hl, bc
    add hl, bc
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, c
    ld l, [hl]
    rst RST_38
    rst RST_38
    ld d, [hl]
    ld d, a
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld sp, $1941
    ld b, $06
    ld b, $06
    ld c, $0e
    add hl, bc
    cpl
    dec b
    ld b, $81
    add d
    add e
    add h
    add l
    inc c
    inc c
    inc c
    inc c
    inc c
    add [hl]
    add a
    adc b
    adc c
    adc d
    inc c
    inc c
    inc c
    inc c
    inc c
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    inc c
    inc c
    inc c
    inc c
    inc c
    adc e
    add a
    adc l
    adc [hl]
    adc a
    inc c
    inc c
    inc c
    inc c
    inc c
    sub b
    sub c
    sub d
    sub e
    adc a
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    inc c
    dec c
    sub h
    sub l
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    cpl
    dec b
    ld b, $81
    add d
    add e
    add h
    add l
    inc c
    inc c
    inc c
    inc c
    inc c
    add [hl]
    add a
    adc b
    adc c
    adc d
    inc c
    inc c
    inc c
    inc c
    inc c
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    inc c
    inc c
    inc c
    inc c
    inc c
    adc e
    add a
    adc l
    adc [hl]
    adc a
    inc c
    inc c
    inc c
    inc c
    inc c
    sub b
    sub c
    sub d
    sub e
    adc a
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    inc c
    dec c
    sub h
    sub l
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    cpl
    dec b
    ld b, $60
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    inc c
    inc c
    dec c
    dec c
    inc c
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc c
    dec c
    dec c
    dec c
    inc c
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    inc c
    dec c
    dec c
    dec c
    inc c
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld l, c
    inc c
    dec c
    dec c
    dec c
    inc c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld l, c
    inc c
    dec c
    dec c
    dec c
    inc c
    dec bc
    inc c
    dec c
    ld c, $59
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    cpl
    dec b
    ld b, $60
    sub [hl]
    sub a
    ld h, e
    ld h, h
    inc c
    inc c
    dec c
    dec c
    inc c
    ld [hl], b
    sbc b
    sbc c
    sbc d
    ld [hl], h
    inc c
    dec c
    dec c
    dec c
    inc c
    ld h, l
    sbc e
    sbc h
    sbc l
    ld l, c
    inc c
    dec c
    dec c
    dec c
    inc c
    ld [hl], l
    sbc [hl]
    sbc a
    and b
    ld l, c
    inc c
    dec c
    dec c
    dec c
    inc c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld l, c
    inc c
    dec c
    dec c
    dec c
    inc c
    dec bc
    inc c
    dec c
    ld c, $59
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    cpl
    ld [bc], a
    inc bc
    sub c
    sub d
    inc c
    inc c
    sub e
    sub h
    inc c
    inc c
    sub l
    sub [hl]
    inc c
    inc c
    cpl
    ld [bc], a
    inc bc
    sub a
    sbc b
    inc c
    inc c
    sbc c
    sbc d
    inc c
    inc c
    sbc e
    sbc h
    inc c
    inc c
    cpl
    ld [bc], a
    inc bc
    sbc l
    sbc [hl]
    inc c
    inc c
    sbc a
    and b
    inc c
    inc c
    and c
    and d
    inc c
    inc c
    cpl
    ld [bc], a
    inc bc
    and e
    and h
    inc c
    inc c
    and l
    and [hl]
    inc c
    inc c
    and a
    xor b
    inc c
    inc c
    cpl
    ld [bc], a
    inc b
    ld e, b
    ld e, c
    dec c
    dec c
    ld l, b
    ld l, c
    dec c
    dec c
    ld [hl], d
    ld [hl], e
    dec c
    dec c
    ld a, h
    ld a, l
    dec c
    dec c
    cpl
    ld [bc], a
    inc b
    adc e
    adc e
    dec c
    dec l
    adc h
    adc l
    dec c
    dec c
    adc [hl]
    adc a
    dec c
    dec c
    sub b
    sub c
    dec c
    dec c
    and b
    ld e, e
    or c
    ld e, e
    ret nc

    ld e, e
    db $fd
    ld e, e
    jr c, jr_029_5bec

    add c
    ld e, h
    ret c

    ld e, h
    dec a
    ld e, l
    or b
    ld e, l
    ld sp, $c05e
    ld e, [hl]
    ld c, a
    ld e, a
    sbc $5f
    cpl
    ld bc, $0807
    dec bc
    ld [de], a
    jr z, jr_029_5bb1

    ld a, [hl+]
    jr @+$2c

    rrca
    ld [$081f], sp
    jr z, jr_029_5bd9

jr_029_5bb1:
    cpl
    ld [bc], a
    rlca
    rla
    ld [$0b2a], sp
    daa
    ld [de], a
    ld a, [hl+]
    jr z, jr_029_5bf4

    add hl, bc
    ld a, [hl+]
    ld a, [hl+]
    add hl, de
    jr jr_029_5bed

    ld a, [hl+]
    rrca
    rrca
    ld [$1f08], sp
    ld c, [hl]
    ld [$2908], sp
    add b
    ld [$2f0c], sp
    inc bc
    rlca
    ld [$5017], sp
    dec bc
    ld a, [hl+]
    inc c

jr_029_5bd9:
    inc d
    daa
    ld h, b
    ld [$0c2a], sp
    ld a, [bc]
    scf
    ld d, [hl]
    ld a, [hl+]
    ld a, [hl+]
    dec c
    ld a, [de]
    add hl, de
    ld h, [hl]
    ld a, [hl+]
    ld a, [hl+]
    dec c
    rrca

jr_029_5bec:
    rrca

jr_029_5bed:
    ld [hl], b
    ld [$0d08], sp
    rra
    ld c, [hl]
    ld a, d

jr_029_5bf4:
    ld [$0d08], sp
    add hl, hl
    add b
    add c
    ld [$0e0c], sp
    cpl
    inc b
    rlca
    ld [hl], $08
    ld d, b
    ld d, c
    dec bc
    dec bc
    inc c
    inc c
    inc de
    inc d
    ld h, b
    ld h, c
    ld [$0c08], sp
    inc c
    dec bc
    ld a, [bc]
    ld d, [hl]
    ld d, a
    ld a, [hl+]
    ld a, [hl+]
    dec c
    dec c
    dec de
    ld a, [de]
    ld h, [hl]
    ld h, a
    ld a, [hl+]
    ld a, [hl+]
    dec c
    dec c
    rrca
    rrca
    ld [hl], b
    ld [hl], c
    ld [$0d08], sp
    dec c
    rra
    ld c, [hl]
    ld a, d
    ld a, e
    ld [$0d08], sp
    dec c
    add hl, hl
    add b
    add c
    add d
    ld [$0e0c], sp
    inc c
    cpl
    dec b
    rlca
    ld [hl-], a
    ld [hl], $50
    ld d, c
    ld d, d
    ld a, [hl+]
    dec bc
    inc c
    inc c
    inc c
    ld d, $13
    ld h, b
    ld h, c
    ld h, d
    ld a, [bc]
    ld [$0c0c], sp
    inc c
    dec c
    dec bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld a, [bc]
    ld a, [hl+]
    dec c
    dec c
    dec c
    dec e
    dec de
    ld h, [hl]
    ld h, a
    ld l, b
    ld a, [bc]
    ld a, [hl+]
    dec c
    dec c
    dec c
    rrca
    rrca
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [$0d08], sp
    dec c
    dec c
    rra
    rra
    ld a, d
    ld a, e
    ld a, h
    ld [$0d08], sp
    dec c
    dec c
    add hl, hl
    add b
    add c
    add d
    add e
    ld [$0e0c], sp
    inc c
    inc c
    cpl
    ld b, $07
    ld [hl-], a
    ld [hl-], a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld a, [bc]
    ld a, [hl+]
    inc c
    inc c
    inc c
    inc c
    dec d
    ld d, $60
    ld h, c
    ld h, d
    ld h, e
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    inc e
    dec e
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    rrca
    rrca
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [$0d08], sp
    dec c
    dec c
    dec c
    rra
    ld c, [hl]
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld [$0d08], sp
    dec c
    dec c
    dec c
    add hl, hl
    add b
    add c
    add d
    add e
    add h
    ld [$0e0c], sp
    inc c
    inc c
    inc c
    cpl
    rlca
    rlca
    inc [hl]
    ld [hl-], a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    dec bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc d
    dec d
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld [$0c0a], sp
    inc c
    inc c
    inc c
    inc c
    dec bc
    inc c
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec de
    inc e
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    rrca
    rrca
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    rra
    ld c, [hl]
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    add hl, hl
    add b
    add c
    add d
    add e
    add h
    add l
    ld [$0e0c], sp
    inc c
    inc c
    inc c
    inc c
    cpl
    ld [$3307], sp
    inc [hl]
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc de
    inc d
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    dec bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [de]
    dec de
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, a
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    rrca
    rrca
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    rra
    ld c, [hl]
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld l, a
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, hl
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    ld [$0e0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    add hl, bc
    rlca
    rla
    inc sp
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld a, [bc]
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    daa
    inc de
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld c, h
    ld a, [bc]
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    scf
    ld a, [bc]
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, de
    ld a, [de]
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, a
    ld l, e
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    rrca
    rrca
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    rra
    rra
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld l, a
    ld c, a
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, hl
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    ld [$0e0c], sp
    inc c
    inc c
    inc c

jr_029_5e2e:
    inc c
    inc c
    inc c
    cpl
    ld a, [bc]
    rlca
    inc sp
    rla
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    dec bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    daa
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld c, h
    ld c, h
    ld [$0c0a], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    scf
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    jr jr_029_5e8b

    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, a
    ld l, e
    ld l, h
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0f
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_029_5e8b:
    ld [hl], l
    halt
    ld [hl], a
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld e, $4e
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld l, a
    ld c, a
    ld c, a
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    jr z, jr_029_5e2e

    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    ld [$0e0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    ld a, [bc]
    rlca
    inc sp
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld c, h
    ld c, h
    ld c, h
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    jr jr_029_5f67

    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, a
    ld l, e
    ld l, h
    ld l, l
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, l
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld l, a
    ld c, a
    ld c, a
    ld c, a
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    inc c
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    cpl
    ld a, [bc]
    rlca
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld h, b

jr_029_5f67:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, a
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld l, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc b
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc l
    cpl
    ld a, [bc]
    rlca
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, h
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, a
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    halt
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld l, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc b
    add a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc l
    inc l
    reti


    ld h, b
    db $f4
    ld h, b
    rrca
    ld h, c
    ld a, [hl+]
    ld h, c
    ld b, l
    ld h, c
    ld h, b
    ld h, c
    ld a, e
    ld h, c
    sub [hl]
    ld h, c
    or c
    ld h, c
    call z, $e761
    ld h, c
    ld [bc], a
    ld h, d
    dec e
    ld h, d
    jr c, jr_029_60eb

    ld d, e
    ld h, d
    ld l, [hl]
    ld h, d
    adc c
    ld h, d
    and h
    ld h, d
    cp a
    ld h, d
    jp c, $f562

    ld h, d
    db $10
    ld h, e
    dec hl
    ld h, e
    ld b, [hl]
    ld h, e
    ld h, c
    ld h, e
    ld a, h
    ld h, e
    sub a
    ld h, e
    or d
    ld h, e
    call $e863
    ld h, e
    inc bc
    ld h, h
    ld e, $64
    add hl, sp
    ld h, h
    ld d, h
    ld h, h
    ld l, a
    ld h, h
    adc d
    ld h, h
    and l
    ld h, h
    ret nz

    ld h, h
    db $db
    ld h, h
    or $64
    ld de, $2c65
    ld h, l
    ld b, a
    ld h, l
    ld h, d
    ld h, l
    ld a, l
    ld h, l
    sbc b
    ld h, l
    or e
    ld h, l
    adc $65
    jp hl


    ld h, l
    inc b
    ld h, [hl]
    rra
    ld h, [hl]
    ld a, [hl-]
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld [hl], b
    ld h, [hl]
    cpl
    inc bc
    inc b
    nop
    ld bc, $0d02
    dec c
    dec c
    inc bc
    inc b
    dec b
    dec c
    dec c
    dec c
    inc bc
    inc b
    dec b

jr_029_60eb:
    ld c, l
    ld c, l
    ld c, l
    nop
    ld bc, $4d02
    ld c, l
    ld c, l
    cpl
    inc bc
    inc b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    xor h
    xor l
    xor [hl]
    dec bc
    dec bc
    dec bc
    xor h
    xor l
    xor [hl]
    ld c, e
    ld c, e
    ld c, e
    rrca
    ld bc, $0910
    ld c, h
    add hl, bc
    cpl
    inc bc
    inc b
    ld b, $07
    ld [$0b0b], sp
    dec bc
    ld a, a
    add b
    add c
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    dec bc
    ld c, e
    ld c, e
    ld c, e
    rrca
    rlca
    db $10
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, a
    ld h, b
    ld h, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rlca
    db $10
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    dec c
    ld c, $09
    add hl, bc
    add hl, bc
    rrca
    rlca
    db $10
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    ld de, $08af
    dec bc
    dec bc
    dec bc
    inc de
    or b
    dec d
    dec bc
    dec bc
    dec bc
    inc de
    or b
    dec d
    dec bc
    ld c, e
    dec bc
    rrca
    xor a
    ld d, $0b
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    ld de, $0882
    dec bc
    dec bc
    dec bc
    inc de
    ld a, a
    dec d
    dec bc
    inc bc
    dec bc
    inc de
    ld a, a
    dec d
    dec bc
    inc bc
    dec bc
    rrca
    add d
    ld d, $0b
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    ld de, $0862
    add hl, bc
    ld a, [bc]
    add hl, bc
    inc de
    inc d
    dec d
    add hl, bc
    add hl, bc
    add hl, bc
    inc de
    inc d
    dec d
    add hl, bc
    ld c, c
    add hl, bc
    rrca
    ld h, d
    ld d, $09
    ld c, d
    add hl, bc
    cpl
    inc bc
    inc b
    ld de, $0812
    add hl, bc
    add hl, bc
    add hl, bc
    inc de
    inc d
    dec d
    add hl, bc
    add hl, bc
    add hl, bc
    inc de
    inc d
    dec d
    add hl, bc
    ld c, c
    add hl, bc
    rrca
    ld [de], a
    ld d, $09
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    rla
    xor a
    ld [$0b0b], sp
    dec bc
    inc de
    or c
    dec d
    dec bc
    dec bc
    dec bc
    inc de
    or c
    dec d
    dec bc
    ld c, e
    dec bc
    rrca
    xor a
    ld a, [de]
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    rla
    add d
    ld [$0b0b], sp
    dec bc
    inc de
    add e
    dec d
    dec bc
    dec bc
    dec bc
    inc de
    add h
    dec d
    dec bc
    dec bc
    dec bc
    rrca
    add d
    ld a, [de]
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    rla
    ld h, d
    ld [$0a09], sp
    add hl, bc
    inc de
    ld h, e
    dec d
    add hl, bc
    ld a, [bc]
    add hl, bc
    inc de
    add hl, de
    dec d
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    ld h, d
    ld a, [de]
    add hl, bc
    ld c, d
    add hl, bc
    cpl
    inc bc
    inc b
    rla
    ld [de], a
    ld [$0909], sp
    add hl, bc
    inc de
    jr jr_029_623e

    add hl, bc
    add hl, bc
    add hl, bc
    inc de
    add hl, de
    dec d
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    ld [de], a
    ld a, [de]
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    or d
    rlca
    or e

jr_029_623e:
    dec bc
    add hl, bc
    dec bc
    or h
    ld a, a
    or l
    dec bc
    inc bc
    dec bc
    or h
    ld a, a
    or l
    ld c, e
    inc bc
    ld c, e
    or [hl]
    rlca
    or a
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    add l
    rlca
    add [hl]
    dec bc
    dec bc
    dec bc
    inc de
    ld a, a
    dec d
    dec bc
    inc bc
    dec bc
    inc de
    ld a, a
    dec d
    dec bc
    inc bc
    dec bc
    add a
    rlca
    adc b
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    ld h, h
    rlca
    ld h, l
    add hl, bc
    add hl, bc
    add hl, bc
    dec e
    ld a, a
    ld e, $09
    ld [bc], a
    add hl, bc
    rra
    ld a, a
    jr nz, jr_029_628a

    ld [bc], a
    add hl, bc
    ld h, [hl]
    rlca
    ld h, a
    ld a, [bc]
    ld c, c
    add hl, bc
    cpl

jr_029_628a:
    inc bc
    inc b
    dec de
    rlca
    inc e
    add hl, bc
    add hl, bc
    add hl, bc
    dec e
    ld a, a
    ld e, $09
    ld bc, $1f09
    ld a, a
    jr nz, jr_029_62a5

    ld bc, $2109
    rlca
    ld [hl+], a
    add hl, bc
    ld c, c
    add hl, bc
    cpl

jr_029_62a5:
    inc bc
    inc b
    cp b
    rlca
    or e
    dec bc
    add hl, bc
    dec bc
    or h
    inc h
    or l
    dec bc
    dec bc
    dec bc
    or h
    inc h
    or l
    ld c, e
    ld c, e
    ld c, e
    or [hl]
    rlca
    cp c
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    adc c
    rlca
    add [hl]
    dec bc
    dec bc
    dec bc
    inc de
    add e
    dec d
    dec bc
    dec bc
    dec bc
    inc de
    add h
    dec d
    dec bc
    dec bc
    dec bc
    add a
    rlca
    adc d
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    ld l, b
    rlca
    ld h, l
    add hl, bc
    add hl, bc
    add hl, bc
    dec e
    ld l, c
    ld e, $09
    ld a, [bc]
    add hl, bc
    rra
    dec h
    jr nz, jr_029_62f6

    add hl, bc
    add hl, bc
    ld h, [hl]
    rlca
    ld l, d
    ld a, [bc]
    ld c, c
    add hl, bc
    cpl

jr_029_62f6:
    inc bc
    inc b
    inc hl
    rlca
    inc e
    add hl, bc
    add hl, bc
    add hl, bc
    dec e
    inc h
    ld e, $09
    ld a, [bc]
    add hl, bc
    rra
    dec h
    jr nz, jr_029_6311

    ld a, [bc]
    add hl, bc
    ld hl, $2607
    add hl, bc
    ld c, c
    add hl, bc
    cpl

jr_029_6311:
    inc bc
    inc b
    cp d
    rlca
    or e
    dec bc
    add hl, bc
    dec bc
    cp e
    ld a, a
    cp h
    dec bc
    ld b, e
    dec bc
    cp e
    ld a, a
    cp h
    ld c, e
    inc bc
    ld c, e
    or [hl]
    rlca
    cp l
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    adc e
    rlca
    add [hl]
    dec bc
    dec bc
    dec bc
    adc h
    ld a, a
    adc l
    dec bc
    inc bc
    dec bc
    adc [hl]
    ld a, a
    adc a
    dec bc
    ld b, e
    dec bc
    add a
    rlca
    sub b
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    ld l, e
    rlca
    ld h, l
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, h
    ld a, a
    ld l, l
    add hl, bc
    ld [bc], a
    ld a, [bc]
    ld a, [hl+]
    ld a, a
    dec hl
    add hl, bc
    ld [bc], a
    add hl, bc
    ld h, [hl]
    rlca
    ld l, [hl]
    ld a, [bc]
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    daa
    rlca
    inc e
    add hl, bc
    add hl, bc
    add hl, bc
    jr z, jr_029_63eb

    add hl, hl
    add hl, bc
    ld bc, $2a09
    ld a, a
    dec hl
    add hl, bc
    ld bc, $2109
    rlca
    inc l
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    cp [hl]
    rlca
    or e
    dec bc
    add hl, bc
    dec bc
    cp e
    cp a
    cp h
    dec bc
    dec bc
    dec bc
    cp e
    ld a, a
    cp h
    ld c, e
    inc b
    ld c, e
    or [hl]
    ld bc, $0bc0
    ld c, h
    dec bc
    cpl
    inc bc
    inc b
    sub c
    rlca
    add [hl]
    dec bc
    add hl, bc
    dec bc
    adc h
    sub d
    adc l
    dec bc
    dec bc
    dec bc
    adc [hl]
    ld a, a
    adc a
    dec bc
    inc bc
    dec bc
    add a
    rlca
    sub e
    dec bc
    ld c, c
    dec bc
    cpl
    inc bc
    inc b
    ld l, a
    rlca
    ld h, l
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, h
    ld [hl], b
    ld l, l
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, a
    dec hl
    add hl, bc
    ld [bc], a
    add hl, bc
    ld h, [hl]
    rlca
    ld [hl], c
    ld a, [bc]
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    dec l
    rlca
    inc e
    add hl, bc
    add hl, bc
    add hl, bc
    jr z, jr_029_6406

    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld a, a
    dec hl
    add hl, bc
    ld bc, $2109
    rlca
    cpl
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b

jr_029_63eb:
    pop bc
    ld bc, $0bc2
    inc c
    dec bc
    jp $c47f


    dec bc
    inc bc
    dec bc
    jp $c47f


    ld c, e
    inc bc
    ld c, e
    push bc
    ld bc, $0bc6
    ld c, h
    dec bc
    cpl
    inc bc
    inc b

jr_029_6406:
    sub h
    rlca
    add [hl]
    dec bc
    dec bc
    dec bc
    sub l
    ld a, a
    sub [hl]
    dec bc
    inc bc
    dec bc
    sub l
    ld a, a
    sub [hl]
    ld c, e
    inc bc
    ld c, e
    add a
    rlca
    sub a
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    ld [hl], d
    rlca
    ld [hl], e
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [hl], h
    ld a, a
    ld [hl], l
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld [hl], h
    ld a, a
    ld [hl], l
    ld c, d
    ld [bc], a
    ld c, d
    halt
    rlca
    ld [hl], a
    ld a, [bc]
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    jr nc, jr_029_6445

    ld sp, $0909
    add hl, bc
    ld [hl-], a
    ld a, a
    inc sp

jr_029_6445:
    add hl, bc
    ld bc, $3209
    ld a, a
    inc sp
    ld c, c
    ld bc, $3449
    rlca
    dec [hl]
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    rst RST_00
    rlca
    jp nz, $090b

    dec bc
    jp $c424


    dec bc
    dec bc
    dec bc
    jp $c424


    ld c, e
    ld c, e
    ld c, e
    push bc
    rlca
    ret z

    dec bc
    ld c, c
    dec bc
    cpl
    inc bc
    inc b
    sbc b
    rlca
    add [hl]
    dec bc
    add hl, bc
    dec bc
    sub l
    add e
    sub [hl]
    dec bc
    dec bc
    dec bc
    sub l
    add h
    sub [hl]
    ld c, e
    dec bc
    ld c, e
    add a
    rlca
    sbc c
    dec bc
    ld c, c
    dec bc
    cpl
    inc bc
    inc b
    ld a, b
    rlca
    ld [hl], e
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [hl], h
    ld l, c
    ld [hl], l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    dec h
    ld [hl], l
    ld c, d
    add hl, bc
    ld c, d
    halt
    rlca
    ld a, c
    ld a, [bc]
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    ld [hl], $07
    ld sp, $0909
    add hl, bc
    ld [hl-], a
    inc h
    inc sp
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld [hl-], a
    dec h
    inc sp
    ld c, c
    add hl, bc
    ld c, c
    inc [hl]
    rlca
    scf
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    ret


    rlca
    jp nz, $090b

    dec bc
    jp $c4bf


    dec bc
    dec bc
    dec bc
    jp $c4bf


    ld c, e
    ld c, e
    ld c, e
    push bc
    ld bc, $0bca
    ld c, h
    dec bc
    cpl
    inc bc
    inc b
    sbc d
    rlca
    add [hl]
    dec bc
    dec bc
    dec bc
    sub l
    sub d
    sub [hl]
    dec bc
    dec bc
    dec bc
    sub l
    sub d
    sub [hl]
    ld c, e
    ld c, e
    ld c, e
    add a
    rlca
    sbc e
    dec bc
    ld c, e
    dec bc
    cpl
    inc bc
    inc b
    jr c, jr_029_6575

    ld [hl], e
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [hl], h
    ld a, [hl-]
    ld [hl], l
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld [hl], h
    ld a, [hl-]
    ld [hl], l
    ld c, d
    ld c, c
    ld c, d
    halt
    ld a, d
    dec sp
    ld a, [bc]
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    jr c, jr_029_654f

    ld sp, $0909
    add hl, bc
    ld [hl-], a
    ld a, [hl-]
    inc sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl-], a
    ld a, [hl-]
    inc sp
    ld c, c
    ld c, c
    ld c, c
    inc [hl]
    add hl, sp
    dec sp
    add hl, bc
    ld c, c
    add hl, bc
    cpl
    inc bc
    inc b
    srl l
    or e
    dec bc
    dec bc
    dec bc
    call z, $cd3f
    dec bc
    dec bc
    dec bc
    adc $42
    rst RST_08
    dec bc
    dec bc
    dec bc
    or [hl]
    ld b, h
    ret nc

    dec bc
    dec bc
    dec bc
    cpl
    inc bc
    inc b
    sbc h
    dec a
    add [hl]
    dec bc
    dec bc

jr_029_654f:
    dec bc
    sbc l
    ccf
    sbc [hl]
    dec bc
    dec bc
    dec bc
    sbc a
    ld b, d
    and b
    dec bc
    dec bc
    dec bc
    add a
    ld b, h
    and c
    dec bc
    dec bc
    dec bc
    cpl
    inc bc
    inc b
    inc a
    dec a
    ld h, l
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, $3f
    ld b, b
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld b, c
    ld b, d
    ld b, e
    ld a, [bc]

jr_029_6575:
    ld a, [bc]
    add hl, bc
    ld h, [hl]
    ld b, h
    ld b, l
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    cpl
    inc bc
    inc b
    inc a
    dec a
    inc e
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, $3f
    ld b, b
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld b, c
    ld b, d
    ld b, e
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld hl, $4544
    add hl, bc
    ld a, [bc]
    add hl, bc
    cpl
    inc bc
    inc b
    pop de
    ld b, a
    or e
    dec bc
    dec bc
    dec bc
    and e
    ld c, c
    jp nc, $0b0b

    dec bc
    db $d3
    ld c, h
    and [hl]
    dec bc
    dec bc
    dec bc
    or [hl]
    ld c, [hl]
    call nc, $0b0b
    dec bc
    cpl
    inc bc
    inc b
    and d
    ld b, a
    add [hl]
    dec bc
    dec bc
    dec bc
    and e
    ld c, c
    and h
    dec bc
    dec bc
    dec bc
    and l
    ld c, h
    and [hl]
    dec bc
    dec bc
    dec bc
    add a
    ld c, [hl]
    and a
    dec bc
    dec bc
    dec bc
    cpl
    inc bc
    inc b
    ld a, e
    ld b, a
    ld h, l
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld c, b
    ld c, c
    ld c, d
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld c, e
    ld c, h
    ld c, l
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld h, [hl]
    ld c, [hl]
    ld a, h
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    cpl
    inc bc
    inc b
    ld b, [hl]
    ld b, a
    inc e
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld c, b
    ld c, c
    ld c, d
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld c, e
    ld c, h
    ld c, l
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld hl, $4f4e
    add hl, bc
    ld a, [bc]
    add hl, bc
    cpl
    inc bc
    inc b
    push de
    ld d, c
    ld d, d
    dec bc
    dec bc
    dec bc
    sub $54
    rst RST_10
    dec bc
    dec bc
    dec bc
    ld d, [hl]
    ld d, a
    rst RST_10
    dec bc
    dec bc
    dec bc
    ld e, c
    ld e, d
    ret c

    dec bc
    dec bc
    dec bc
    cpl
    inc bc
    inc b
    xor b
    ld d, c
    ld d, d
    dec bc
    dec bc
    dec bc
    xor c
    ld d, h
    ld d, l
    dec bc
    dec bc
    dec bc
    ld d, [hl]
    ld d, a
    xor d
    dec bc
    dec bc
    dec bc
    ld e, c
    ld e, d
    xor e
    dec bc
    dec bc
    dec bc
    cpl
    inc bc
    inc b
    ld a, l
    ld d, c
    ld d, d
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld d, e
    ld d, h
    ld d, l
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld d, [hl]
    ld d, a
    ld e, b
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld e, c
    ld e, d
    ld a, [hl]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    cpl
    inc bc
    inc b
    ld d, b
    ld d, c
    ld d, d
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld d, e
    ld d, h
    ld d, l
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld d, [hl]
    ld d, a
    ld e, b
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld e, c
    ld e, d
    ld e, e
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    cpl
    inc bc
    inc b
    ld a, a
    ld a, a
    ld a, a
    ld b, $06
    ld b, $7f
    ld a, a
    ld a, a
    ld b, $06
    ld b, $7f
    ld a, a
    ld a, a
    ld b, $06
    ld b, $7f
    ld a, a
    ld a, a
    ld b, $06
    ld b, $fa
    sbc c
    push bc
    cp $00
    ret z

    ld a, [$c522]
    cp $14
    ret z

    cp $1a
    ret z

    cp $19
    ret z

    ld a, [$c5c9]
    bit 7, a
    ret nz

    ld de, $c869

jr_029_66a6:
    xor a
    ld [$c874], a
    ld a, [de]
    cp $fe
    ret z

    cp $f0
    jr c, jr_029_66b5

    inc de
    jr jr_029_66a6

jr_029_66b5:
    call Call_029_66bb
    inc de
    jr jr_029_66a6

Call_029_66bb:
    push de
    ld l, a
    ld h, $00
    add hl, hl
    push hl
    ld bc, $6758
    add hl, bc
    ld a, [hl+]
    ld l, [hl]
    ld h, $00
    add hl, hl
    ld bc, $673c
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $c902
    add hl, bc
    add l
    ld [$c5c3], a
    ld a, $00
    adc h
    add hl, bc
    ld [$c5c4], a
    pop hl
    ld de, $4000
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, [hl+]
    ld [$c5c5], a
    ld a, [hl+]
    ld [$c5c6], a
    ld a, [$c5c3]
    ld c, a
    ld a, [$c5c4]
    ld b, a

jr_029_66f9:
    ld a, [$c5c5]
    ld e, a

jr_029_66fd:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec e
    jr nz, jr_029_66fd

    ld a, [$c5c3]
    add $0e
    ld [$c5c3], a
    ld c, a
    ld a, [$c5c4]
    adc $00
    ld [$c5c4], a
    ld b, a
    ld a, [$c5c5]
    ld e, a

jr_029_6719:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec e
    jr nz, jr_029_6719

    ld a, [$c5c3]
    add $0e
    ld [$c5c3], a
    ld c, a
    ld a, [$c5c4]
    adc $00
    ld [$c5c4], a
    ld b, a
    ld a, [$c5c6]
    dec a
    ld [$c5c6], a
    jr nz, jr_029_66f9

    pop de
    ret


    nop
    nop
    inc e
    nop
    jr c, jr_029_6742

jr_029_6742:
    ld d, h
    nop
    ld [hl], b
    nop
    adc h
    nop
    xor b
    nop
    call nz, $e000
    nop
    db $fc
    nop
    jr jr_029_6753

    inc [hl]

jr_029_6753:
    ld bc, $0150
    ld l, h
    ld bc, $0205
    dec b
    ld [bc], a
    dec c
    nop
    dec c
    nop
    dec b
    ld bc, $0105
    ld bc, $0100
    nop
    dec c
    ld bc, $010d
    ld b, $02
    ld b, $02
    add hl, bc
    ld bc, $0109
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    dec bc
    nop
    dec bc
    nop
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    dec c
    ld bc, $010d
    dec c
    ld bc, $010d
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0006
    ld b, $00
    ld b, $00
    ld b, $00
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    ld b, $00
    ld b, $00
    inc c
    inc b
    inc c
    inc b
    dec b
    inc b
    dec b
    inc b
    nop
    inc bc
    nop
    inc bc
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    inc b
    nop
    inc b
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    ld bc, $0103
    inc bc
    dec bc
    ld bc, $010b
    ld bc, $0101
    ld bc, $020c
    inc c
    ld [bc], a
    inc b
    ld bc, HeaderLogo
    nop
    nop
    nop
    nop
    inc c
    dec b
    inc c
    dec b
    nop
    inc b
    nop
    inc b
    dec bc
    nop
    dec bc
    nop
    dec bc
    ld bc, $010b
    inc b
    inc bc
    inc b
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld [$0808], sp
    ld [$0400], sp
    nop
    inc b
    dec b
    inc b
    dec b
    inc b
    nop
    nop
    nop
    nop
    ld b, $03
    ld b, $03
    nop
    ld [bc], a
    nop
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc b
    ld [$0804], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld bc, HeaderLogo
    dec bc
    ld bc, $010b
    dec bc
    ld bc, $010b
    nop
    nop
    nop
    nop
    ld [$0801], sp
    ld bc, $0108
    ld [$0001], sp
    inc bc
    nop
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    ld bc, $010a
    add hl, bc
    ld bc, $0108
    rlca
    ld bc, $0106
    dec b
    ld bc, HeaderLogo
    inc bc
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $011e

jr_029_6888:
    ld a, e
    push de
    call Call_029_68b4
    call Call_000_03d3
    ld a, $08
    call Call_000_0753
    pop de
    inc e
    ld a, $0d
    cp e
    jr nz, jr_029_6888

    ret


    ld e, $0c

jr_029_689f:
    ld a, e
    push de
    call Call_029_68b4
    call Call_000_03d3
    ld a, $08
    call Call_000_0753
    pop de
    dec e
    ld a, $ff
    cp e
    jr nz, jr_029_689f

    ret


Call_029_68b4:
    ld l, a
    ld h, $00
    add hl, hl
    push hl
    ld bc, $68cf
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop hl
    push bc
    ld bc, $5b86
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    pop bc
    call Call_000_02a5
    ret


    dec hl
    sbc b
    ld a, [hl+]
    sbc b
    add hl, hl
    sbc b
    jr z, @-$66

    daa
    sbc b
    ld h, $98
    dec h
    sbc b
    inc h
    sbc b
    inc hl
    sbc b
    ld [hl+], a
    sbc b
    ld [hl+], a
    sbc b
    ld [hl+], a
    sbc b
    ld [hl+], a
    sbc b
    ld a, $01
    call Call_029_690d
    ld a, $3c
    call Call_000_0753
    xor a
    call Call_029_690d
    ret


    ld a, $02
    call Call_029_690d
    ld a, $28
    call Call_000_0753
    ld a, $03
    call Call_029_690d
    ld a, $14
    call Call_000_0753
    ret


Call_029_690d:
    ld l, a
    ld h, $00
    add hl, hl
    push hl
    ld bc, $692b
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop hl
    ld de, $6933
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_02a5
    call Call_000_03d3
    call Call_000_01b7
    ret


    ld h, b
    sbc b
    ld h, b
    sbc b
    ld b, [hl]
    sbc b
    ld b, [hl]
    sbc b
    dec hl
    ld c, d
    ld h, b
    ld c, d
    adc e
    ld b, d
    sub [hl]
    ld b, d
    ld a, [$c522]
    ld [$c539], a
    call Call_000_38dd
    call Call_000_16b9
    call Call_000_0416
    call Call_029_6fd0
    call Call_029_70fc
    call Call_029_6986
    call Call_000_38dd
    ld a, $ff
    ldh [$ffa6], a
    ldh [$ffa7], a
    ld a, [$c539]
    ld [$c522], a
    call Call_000_38f9
    ld a, [$c5e1]
    cp $ff
    ret nz

    ld a, $4e
    call Call_000_1c77
    ret


Call_029_6971:
    call Call_000_0722
    call Call_000_0420
    call $09c1
    ld a, $05
    call Call_000_1b39
    call Call_000_072a
    call Call_000_044b
    ret


Call_029_6986:
    xor a
    ld [$c5e1], a
    ld a, $0a
    ld [$c872], a

jr_029_698f:
    call Call_029_6fd0

Jump_029_6992:
    ld a, [$c58c]
    cp $00
    jr nz, jr_029_69a6

    ld a, $0f
    call Call_029_7129
    ld a, $8c
    call Call_000_0753
    jp Jump_029_6a35


jr_029_69a6:
    call $6f7e
    ld a, [$c871]
    cp $10
    jr nc, jr_029_69c9

    ld a, $0d
    call Call_029_7129
    ld a, $0e
    call Call_029_7129
    ld a, $27
    call Call_000_080e
    ld a, $8c
    call Call_000_0753
    call Call_029_6a36
    jr jr_029_698f

jr_029_69c9:
    call Call_029_70e1
    call Call_029_6fb3
    call Call_029_6a71
    ld a, $07
    call Call_029_6d68
    call Call_029_6b29
    ld a, $01
    call Call_029_6d68
    ld a, $06
    call Call_029_6d68
    call Call_029_6a36
    call Call_029_6ca4
    ld a, $3c
    call Call_000_0753
    call Call_029_6bc1
    call Call_029_6a36
    ld a, [$c5e1]
    cp $ff
    ret z

    ld a, $15
    call Call_029_7129
    call Call_029_70e1
    ld a, $03
    call Call_029_7129
    ld a, $00
    ld [$c875], a
    ld a, $10
    ld [$c876], a
    call Call_029_6d23
    call Call_000_03fe
    ld a, [$c875]
    cp $00
    jr nz, jr_029_6a25

    call Call_029_70fc
    jp Jump_029_6992


jr_029_6a25:
    call Call_000_03fe
    call Call_029_6a36
    ld a, $04
    call Call_029_7129
    ld a, $3c
    call Call_000_0753

Jump_029_6a35:
    ret


Call_029_6a36:
    ld a, $11
    ld [$c8e6], a
    ld a, $00
    ld [$c668], a
    ld a, $0d
    ld [$c669], a
    call Call_000_107a
    call Call_000_03d3
    ld a, $00
    ld [$c668], a
    ld a, $0f
    ld [$c669], a
    call Call_000_107a
    call Call_000_03d3
    ld a, $00
    ld [$c668], a
    ld a, $11
    ld [$c669], a
    call Call_000_107a
    call Call_000_03d3
    ld a, $1e
    call Call_000_0753
    ret


Call_029_6a71:
    ld d, a
    ld a, $03
    ldh [$ffa0], a
    ld a, $00
    ldh [$ffa1], a
    ld a, d

jr_029_6a7b:
    ld bc, $6aa8
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_029_6d68
    ld bc, $6aa8
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ldh [$ff9e], a
    call Call_029_6d8a
    ld a, $20
    call Call_000_0753
    ldh a, [$ffa0]
    dec a
    ldh [$ffa0], a
    bit 7, a
    jr z, jr_029_6a7b

    ret


    rlca
    ld b, $01
    nop

Call_029_6aac:
    xor a
    ld [$c875], a
    ld [$c876], a
    ld [$c877], a
    ld de, $0005

jr_029_6ab9:
    ld a, [$c5d9]
    ld l, a
    ld a, [$c5da]
    ld h, a
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_029_6ad0

    push af
    ld a, [$c877]
    inc a
    ld [$c877], a
    pop af

jr_029_6ad0:
    ld l, a
    ld h, $00
    ld bc, $71b3
    add hl, bc
    ld a, [hl]
    and $0f
    cp $0b
    jr nz, jr_029_6ae7

    push af
    ld a, [$c876]
    inc a
    ld [$c876], a
    pop af

jr_029_6ae7:
    ld hl, $c875
    add [hl]
    ld [hl], a
    dec de
    bit 7, d
    jr z, jr_029_6ab9

jr_029_6af1:
    cp $15
    jr nz, jr_029_6b08

    ld a, [$c877]
    cp $02
    jr nz, jr_029_6b02

    ld a, $ff
    ld [$c875], a
    ret


jr_029_6b02:
    ld a, $95
    ld [$c875], a
    ret


jr_029_6b08:
    cp $16
    jr c, jr_029_6b25

    ld a, [$c876]
    cp $00
    jr z, jr_029_6b24

    ld a, [$c876]
    dec a
    ld [$c876], a
    ld a, [$c875]
    sub $0a
    ld [$c875], a
    jr jr_029_6af1

jr_029_6b24:
    xor a

jr_029_6b25:
    ld [$c875], a
    ret


Call_029_6b29:
    ld a, [$c58c]
    ld [$c875], a
    xor a
    call Call_029_7129
    ld a, [$c872]
    ld hl, $c58c
    cp [hl]
    jr nc, jr_029_6b3f

    ld [$c58c], a

jr_029_6b3f:
    ld a, $00
    ld [$c668], a
    ld a, $0f
    ld [$c669], a
    ld a, $1f
    ld [$c8e6], a
    call Call_000_107a
    call Call_000_03d3

jr_029_6b54:
    call Call_000_0b99
    call Call_000_0456
    ld a, [$c188]
    and $f1
    jr z, jr_029_6b54

    bit 0, a
    jr nz, jr_029_6b8f

    and $90
    jr z, jr_029_6b7f

    ld a, [$c58c]
    cp $0a
    jr z, jr_029_6b54

    ld hl, $c875
    cp [hl]
    jr z, jr_029_6b54

    ld a, [$c58c]
    inc a
    ld [$c58c], a
    jr jr_029_6b3f

jr_029_6b7f:
    ld a, [$c58c]
    cp $01
    jr z, jr_029_6b54

    ld a, [$c58c]
    dec a
    ld [$c58c], a
    jr jr_029_6b3f

jr_029_6b8f:
    ld a, $00
    ld [$c668], a
    ld a, $11
    ld [$c669], a
    ld a, $1f
    ld [$c8e6], a
    call Call_000_107a
    call Call_000_03d3
    ld a, $01
    call Call_029_7129
    ld a, [$c58c]
    ld [$c872], a
    ld a, [$c875]
    ld hl, $c872
    sub [hl]
    ld [$c58c], a
    ld a, $1e
    call Call_000_0753
    jp Jump_029_70e1


Call_029_6bc1:
    ld a, [$c864]
    cp $ff
    jr nz, jr_029_6bcd

Jump_029_6bc8:
jr_029_6bc8:
    ld a, $02
    jp Jump_029_6c5e


jr_029_6bcd:
    cp $00
    jr nz, jr_029_6bd6

Jump_029_6bd1:
jr_029_6bd1:
    ld a, $01
    jp Jump_029_6c5e


jr_029_6bd6:
    xor a
    call Call_029_6d68
    xor a
    call Call_029_6fe7
    ld [$c863], a

jr_029_6be1:
    ld a, $20
    call Call_000_0753
    ld a, [$c863]
    cp $11
    jr nc, jr_029_6c4e

    ld a, [$c863]
    ld hl, $c864
    cp [hl]
    jr nz, jr_029_6bfd

    ld a, [$c884]
    cp $00
    jr nz, jr_029_6c06

jr_029_6bfd:
    jr nc, jr_029_6bd1

    ld a, [$c884]
    cp $00
    jr z, jr_029_6c22

jr_029_6c06:
    ld a, [$c863]
    ld [$c87a], a
    ld a, [$c873]
    ldh [$ff9e], a
    ld a, [$c884]
    cp $01
    jr nz, jr_029_6c1d

    call $6e21
    jr jr_029_6c2a

jr_029_6c1d:
    call Call_029_6e55
    jr jr_029_6c2a

jr_029_6c22:
    ld a, [$c873]
    ldh [$ff9e], a
    call Call_029_6d8a

jr_029_6c2a:
    ld a, [$c873]
    call Call_029_6d68
    xor a
    call Call_029_6fe7
    ld [$c863], a
    cp $00
    jr z, jr_029_6bc8

    cp $ff
    jr z, jr_029_6bd1

    bit 7, a
    jr nz, jr_029_6c4e

    ld a, [$c873]
    inc a
    ld [$c873], a
    cp $06
    jr nz, jr_029_6be1

jr_029_6c4e:
    ld a, [$c863]
    ld hl, $c864
    cp [hl]
    jr z, jr_029_6c5d

    jp nc, Jump_029_6bd1

    jp Jump_029_6bc8


jr_029_6c5d:
    xor a

Jump_029_6c5e:
    ld [$c876], a
    add $0a
    call Call_029_7129
    ld a, [$c876]
    and $02
    add $24
    call Call_000_080e
    ld a, $20
    call Call_000_0753
    xor a
    ld [$c875], a
    ld a, [$c876]
    cp $00
    jr z, jr_029_6c9b

    cp $01
    jr z, jr_029_6ca1

    ld a, [$c872]
    add a
    ld [$c875], a
    ld a, [$c864]
    cp $ff
    jr nz, jr_029_6ca1

    ld a, [$c875]
    add a
    ld [$c875], a
    jr jr_029_6ca1

jr_029_6c9b:
    ld a, [$c872]
    ld [$c875], a

jr_029_6ca1:
    jp Jump_029_70a2


Call_029_6ca4:
    ld a, $01
    call Call_029_6fe7
    ld [$c864], a
    cp $00
    jr z, jr_029_6cb3

    bit 7, a
    ret nz

jr_029_6cb3:
    ld a, $02
    call Call_029_7129
    xor a
    ld [$c875], a
    ld [$c876], a
    call Call_029_6d23
    ld a, [$c875]
    cp $00
    jr nz, jr_029_6d1c

    ld a, [$c884]
    cp $00
    jr z, jr_029_6cec

    ld a, [$c864]
    ld [$c87a], a
    ld a, [$c874]
    ldh [$ff9e], a
    ld a, [$c884]
    cp $01
    jr nz, jr_029_6ce7

    call Call_029_6e55
    jr jr_029_6cf4

jr_029_6ce7:
    call $6e21
    jr jr_029_6cf4

jr_029_6cec:
    ld a, [$c874]
    ldh [$ff9e], a
    call Call_029_6d8a

jr_029_6cf4:
    ld a, [$c874]
    call Call_029_6d68
    call Call_000_03fe
    call Call_029_6a36
    ld a, $01
    call Call_029_6fe7
    ld [$c864], a
    cp $00
    jr z, jr_029_6d1b

    bit 7, a
    jr nz, jr_029_6d1b

    ld a, [$c874]
    inc a
    ld [$c874], a
    cp $0c
    jr nz, jr_029_6cb3

jr_029_6d1b:
    ret


jr_029_6d1c:
    call Call_000_03fe
    call Call_029_6a36
    ret


Call_029_6d23:
jr_029_6d23:
    ld a, [$c875]
    add $70
    ld [$c8ab], a
    ld a, $7d
    ld [$c8ac], a
    call Call_000_3a00
    call Call_000_03fe

jr_029_6d36:
    call Call_000_0b99
    call Call_000_0456
    ld a, [$c188]
    and $31
    jr z, jr_029_6d36

    bit 0, a
    jr nz, jr_029_6d62

    and $20
    jr z, jr_029_6d56

    ld a, $19
    call Call_000_080e
    xor a
    ld [$c875], a
    jr jr_029_6d23

jr_029_6d56:
    ld a, $19
    call Call_000_080e
    ld a, $1c
    ld [$c875], a
    jr jr_029_6d23

jr_029_6d62:
    ld a, $19
    call Call_000_080e
    ret


Call_029_6d68:
    ld [$c875], a
    ld l, a
    ld h, $00
    ld bc, $c865
    add hl, bc
    ld a, [hl]
    ld [$c876], a
    ld l, a
    ld h, $00
    ld bc, $71b3
    add hl, bc
    ld a, [hl]
    ld [$c877], a
    ld a, $25
    call Call_000_080e
    call Call_029_714b
    ret


Call_029_6d8a:
Jump_029_6d8a:
jr_029_6d8a:
    call Call_000_0b99
    ldh a, [$ffa2]
    cp $00
    jr z, jr_029_6d8a

    cp $35
    jr nc, jr_029_6d8a

    ld [$c875], a
    ld [$c878], a
    ldh a, [$ffa0]
    ld [$c876], a
    ldh a, [$ff9e]
    ld [$c877], a

Jump_029_6da7:
    ld a, [$c878]
    dec a
    ld [$c878], a
    srl a
    srl a
    srl a
    ldh [$ffa0], a
    ld a, [$c878]
    and $07
    ldh [$ff9e], a
    ldh a, [$ffa0]
    ld l, a
    ld h, $00
    ld bc, $c87d
    add hl, bc
    ld a, [hl]
    push af
    ldh a, [$ff9e]
    ld l, a
    ld h, $00
    ld bc, $6e19
    add hl, bc
    pop af
    and [hl]
    jr z, jr_029_6de1

    ld a, [$c876]
    ldh [$ffa0], a
    ld a, [$c877]
    ldh [$ff9e], a
    jr jr_029_6d8a

jr_029_6de1:
    ldh a, [$ffa0]
    ld l, a
    ld h, $00
    ld bc, $c87d
    add hl, bc
    ld a, [hl]
    push hl
    push af
    ldh a, [$ff9e]
    ld l, a
    ld h, $00
    ld bc, $6e19
    add hl, bc
    pop af
    or [hl]
    pop hl
    ld [hl], a
    ld a, [$c876]
    ldh [$ffa0], a
    ld a, [$c877]
    ldh [$ff9e], a
    ld l, a
    ld h, $00
    ld bc, $c865
    add hl, bc
    ld a, [$c875]
    ld [hl], a
    ld a, [$c871]
    dec a
    ld [$c871], a
    jp Jump_029_704c


    add b
    ld b, b
    jr nz, jr_029_6e2d

    ld [$0204], sp
    ld bc, $a0f0
    ld [$c876], a
    ldh a, [$ff9e]
    ld [$c877], a
    ld a, $15

jr_029_6e2d:
    ld hl, $c87a
    sub [hl]
    ld [hl], a
    jr z, jr_029_6e48

    cp $0c
    jr nc, jr_029_6e48

jr_029_6e38:
    call Call_029_6e91
    bit 7, a
    jr nz, jr_029_6e48

    ld [$c875], a
    ld [$c878], a
    jp Jump_029_6da7


jr_029_6e48:
    ld a, [$c876]
    ldh [$ffa0], a
    ld a, [$c877]
    ldh [$ff9e], a
    jp Jump_029_6d8a


Call_029_6e55:
    ldh a, [$ffa0]
    ld [$c876], a
    ldh a, [$ff9e]
    ld [$c877], a
    ld a, $15
    ld hl, $c87a
    sub [hl]
    ld [hl], a
    cp $09
    jr nc, jr_029_6e71

    ld a, $0a
    ld [$c87a], a
    jr jr_029_6e38

jr_029_6e71:
    ld a, [$c864]
    ld hl, $c863
    sub [hl]
    dec a
    ld [$c87a], a
    cp $00
    jr z, jr_029_6e84

    bit 7, a
    jr z, jr_029_6e38

jr_029_6e84:
    ld a, [$c876]
    ldh [$ffa0], a
    ld a, [$c877]
    ldh [$ff9e], a
    jp Jump_029_6d8a


Call_029_6e91:
    ld a, [$c87a]
    cp $0a
    jp z, Jump_029_6f26

    cp $0b
    jr z, jr_029_6f0f

Jump_029_6e9d:
jr_029_6e9d:
    ld a, [$c87a]
    dec a
    ld [$c87a], a
    bit 7, a
    jr z, jr_029_6eab

    ld a, $ff
    ret


jr_029_6eab:
    srl a
    ldh [$ffa0], a
    ld a, [$c87a]
    and $01
    ldh [$ff9e], a
    ldh a, [$ffa0]
    ld l, a
    ld h, $00
    ld bc, $c87d
    add hl, bc
    ld a, [hl]
    ld [$c855], a
    push af
    ldh a, [$ff9e]
    ld l, a
    ld h, $00
    ld bc, $6f73
    add hl, bc
    pop af
    and [hl]
    cp [hl]
    jr z, jr_029_6e9d

    ld a, [$c87a]
    and $01
    jr z, jr_029_6eea

    ldh a, [$ffa0]
    ld l, a
    ld h, $00
    ld bc, $c87d
    add hl, bc
    ld a, [hl]
    add a
    add a
    add a
    add a
    ld [$c855], a

jr_029_6eea:
    ld a, [$c87a]
    ldh [$ffa0], a
    ld l, a
    ld h, $00
    ld bc, $6f75
    add hl, bc
    ld a, [hl]
    ld [$c856], a

jr_029_6efa:
    ld a, [$c856]
    inc a
    ld [$c856], a
    ld a, [$c855]
    sla a
    ld [$c855], a
    jr c, jr_029_6efa

    ld a, [$c856]
    ret


jr_029_6f0f:
    xor a
    ld [$c856], a
    ld a, [$c87d]
    ld [$c855], a
    and $f0
    cp $f0
    jr nz, jr_029_6efa

    ld a, [$c87a]
    dec a
    ld [$c87a], a

Jump_029_6f26:
    ld a, $24
    ld [$c855], a
    ld a, $04
    ldh [$ffa0], a
    ldh [$ff9e], a

jr_029_6f31:
    ld a, [$c855]
    inc a
    ld [$c855], a
    ldh a, [$ffa0]
    ld l, a
    ld h, $00
    ld bc, $c87d
    add hl, bc
    ld a, [hl]
    push af
    ldh a, [$ff9e]
    ld l, a
    ld h, $00
    ld bc, $6e19
    add hl, bc
    pop af
    and [hl]
    jr z, jr_029_6f6f

    ldh a, [$ff9e]
    inc a
    ldh [$ff9e], a
    cp $08
    jr nz, jr_029_6f31

    xor a
    ldh [$ff9e], a
    ldh a, [$ffa0]
    inc a
    ldh [$ffa0], a
    cp $07
    jr nz, jr_029_6f31

    ld a, [$c87a]
    dec a
    ld [$c87a], a
    jp Jump_029_6e9d


jr_029_6f6f:
    ld a, [$c855]
    ret


    ldh a, [rIF]
    nop
    inc b
    ld [$100c], sp
    ld [de], a
    jr @+$1e

    jr nz, @-$04

    adc e
    push bc
    cp $10
    jr nc, jr_029_6f8c

    ld a, [$c58c]
    cp $c8
    jr c, jr_029_6fa1

jr_029_6f8c:
    ld a, $0e
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_029_6f9d

    ld a, $ff
    ld [$c5e1], a

jr_029_6f9d:
    ld a, $01
    jr jr_029_6faf

jr_029_6fa1:
    ld a, $0e
    call Call_000_1dac
    ld a, [$c523]
    and $01
    jr z, jr_029_6faf

    ld a, $02

jr_029_6faf:
    ld [$c884], a
    ret


Call_029_6fb3:
    xor a
    ld [$c863], a
    ld [$c864], a
    ld c, $0b
    ld hl, $c865

jr_029_6fbf:
    ld [hl+], a
    dec c
    bit 7, c
    jr z, jr_029_6fbf

    ld a, $02
    ld [$c873], a
    ld a, $08
    ld [$c874], a
    ret


Call_029_6fd0:
    xor a
    ld c, $05
    ld hl, $c87d

jr_029_6fd6:
    ld [hl+], a
    dec c
    bit 7, c
    jr z, jr_029_6fd6

    ld a, $0f
    ld [$c883], a
    ld a, $34
    ld [$c871], a
    ret


Call_029_6fe7:
    push af
    cp $00
    jr nz, jr_029_6ff8

    ld a, $65
    ld [$c5d9], a
    ld a, $c8
    ld [$c5da], a
    jr jr_029_7002

jr_029_6ff8:
    ld a, $6b
    ld [$c5d9], a
    ld a, $c8
    ld [$c5da], a

jr_029_7002:
    call Call_029_6aac
    ld a, [$c875]
    bit 7, a
    jr z, jr_029_701a

    cp $ff
    jr nz, jr_029_7028

    pop af
    or $06
    call Call_029_7129
    ld a, [$c875]
    ret


jr_029_701a:
    cp $00
    jr nz, jr_029_7028

    pop af
    or $08
    call Call_029_7129
    ld a, [$c875]
    ret


jr_029_7028:
    ld [$c876], a
    and $7f
    ld [$c875], a
    pop af
    xor a
    ld [$c668], a
    ld a, $0d
    ld [$c669], a
    ld a, $09
    ld [$c8e6], a
    call Call_000_107a
    call Call_000_03d3
    ld a, [$c876]
    ld [$c875], a
    ret


Call_029_704c:
Jump_029_704c:
    ld a, [$c871]
    call Call_029_7082
    ld a, $02
    ld [$c855], a
    ld a, $01
    ld [$c856], a
    ld a, [$c857]
    cp $00
    jr nz, jr_029_7067

    ld a, $7f
    jr jr_029_7069

jr_029_7067:
    or $80

jr_029_7069:
    ld [$c857], a
    ld a, [$c858]
    or $80
    ld [$c858], a
    ld l, $55
    ld h, $c8
    ld bc, $9811
    call Call_000_01d8
    call Call_000_03d3
    ret


Call_029_7082:
    ld [$c858], a
    xor a
    ld [$c857], a

jr_029_7089:
    ld a, [$c858]
    cp $0a
    jr c, jr_029_70a1

    ld a, [$c858]
    sub $0a
    ld [$c858], a
    ld a, [$c857]
    inc a
    ld [$c857], a
    jr jr_029_7089

jr_029_70a1:
    ret


Jump_029_70a2:
    ld a, $15
    call Call_029_7129
    ld a, [$c875]
    cp $00
    jr z, jr_029_70d8

jr_029_70ae:
    ld a, [$c58c]
    inc a
    ld [$c58c], a
    call Call_029_70e1
    ld a, $23
    call Call_000_080e
    ld a, $08
    call Call_000_0753
    ld a, [$c58c]
    cp $ff
    jr z, jr_029_70d2

    ld a, [$c875]
    dec a
    ld [$c875], a
    jr nz, jr_029_70ae

jr_029_70d2:
    ld a, $28
    call Call_000_0753
    ret


jr_029_70d8:
    call Call_029_70e1
    ld a, $3c
    call Call_000_0753
    ret


Call_029_70e1:
Jump_029_70e1:
    ld a, $0c
    ld [$c668], a
    ld a, $0d
    ld [$c669], a
    ld a, $04
    ld [$c8b6], a
    ld a, $06
    ld [$c8e6], a
    call Call_000_107a
    call Call_000_03d3
    ret


Call_029_70fc:
    call Call_000_38dd
    call Call_029_6971
    ld a, $10
    call Call_029_7129
    ld a, $11
    call Call_029_7129
    call Call_029_704c
    ld a, [$c58c]
    cp $00
    jr z, jr_029_7125

    ld a, [$c871]
    cp $10
    jr c, jr_029_7125

    ld a, $15
    call Call_029_7129
    call Call_029_70e1

jr_029_7125:
    call Call_000_38cf
    ret


Call_029_7129:
    push de
    push bc
    push af
    add $0c
    ld [$c8e6], a
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $7187
    add hl, bc
    ld a, [hl+]
    ld [$c668], a
    ld a, [hl]
    ld [$c669], a
    call Call_000_107a
    call Call_000_03d3
    pop bc
    pop de
    ret


Call_029_714b:
    ld a, [$c875]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $716f
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$c876]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $606d
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    call Call_000_02a5
    call Call_000_03d3
    ret


    ld b, c
    sbc b
    ld b, h
    sbc b
    ld b, a
    sbc b
    ld c, d
    sbc b
    ld c, l
    sbc b
    ld d, b
    sbc b
    pop hl
    sbc b
    db $e4
    sbc b
    rst RST_20
    sbc b
    ld [$ed98], a
    sbc b
    ldh a, [$ff98]
    nop
    dec c
    inc b
    ld de, $0f00
    nop
    rrca
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    dec c
    nop
    rrca
    nop
    dec c
    nop
    ld bc, $0600
    ld [$0100], sp
    ld bc, $0101
    inc c
    dec c
    nop
    dec bc
    dec de
    dec hl
    dec sp
    ld [bc], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    inc bc
    inc de
    inc hl
    inc sp
    inc b
    inc d
    inc h
    inc [hl]
    dec b
    dec d
    dec h
    dec [hl]
    ld b, $16
    ld h, $36
    rlca
    rla
    daa
    scf
    ld [$2818], sp
    jr c, jr_029_71de

    add hl, de
    add hl, hl
    add hl, sp
    ld a, [bc]
    ld a, [de]
    ld a, [hl+]
    ld a, [hl-]
    ld a, [bc]
    ld a, [de]

jr_029_71de:
    ld a, [hl+]
    ld a, [hl-]
    ld a, [bc]
    ld a, [de]
    ld a, [hl+]
    ld a, [hl-]
    ld a, [bc]
    ld a, [de]
    ld a, [hl+]
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
