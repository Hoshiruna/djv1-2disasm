; Bank-nine UI maps: $17 header followed by tile/attribute RLE.

; 20x18 cells, 172 stored bytes.
; Copyright BG map reached by the boot sequence's zero-index fallthrough.
UiMapCopyrightNotice:
UiMap0:
    db MapFormatRlePair, $14, $12, $01, $01, $fe, $15, $60, $61, $62, $63, $64, $65, $66, $67, $68
    db $69, $6a, $6b, $6c, $6d, $6e, $01, $fe, $18, $6f, $70, $71, $72
Call_009_402d:
    db $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $01, $fe, $17, $7f
    db $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f
    db $01, $fe, $16, $7f, $80, $81, $82, $83
Jump_009_4055:
    db $84, $90, $91, $92, $93, $94, $95, $96, $01, $fe, $1a, $6f, $70, $71, $72, $73
    db $74, $97, $98, $99, $9a, $8b, $8c, $8d, $8e, $8f, $01, $fe, $18, $7f, $80, $81
    db $82, $83, $9b, $9c, $9d, $9e, $01, $fe, $23, $9f, $a0, $a1, $a2, $a3, $a4, $01
    db $fe, $0b, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $01, $fe, $1c, $af
    db $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $01, $fe, $04, $bb, $bc
    db $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc
    db $cd, $01, $00, $ff, $01, $00, $67

; 20x18 cells, 465 stored bytes.
; Title BG map selected after the title graphics load.
UiMapTitle:
UiMap1:
MapTitle:
    INCBIN "../../res/ui/title/title.bin", $0, $4b
jr_009_4107:
    INCBIN "../../res/ui/title/title.bin", $4b, $23
jr_009_412a:
    INCBIN "../../res/ui/title/title.bin", $6e, $16
Call_009_4140:
    INCBIN "../../res/ui/title/title.bin", $84, $3c
jr_009_417c:
    INCBIN "../../res/ui/title/title.bin", $c0, $f
jr_009_418b:
    INCBIN "../../res/ui/title/title.bin", $cf, $24
jr_009_41af:
    INCBIN "../../res/ui/title/title.bin", $f3, $de

; 20x18 cells, 374 stored bytes.
; Save-selection background; native code adds the slots and cursor.
UiMapSaveSelection:
UiMap2:
    db MapFormatRlePair, $14, $12, $3b, $00, $01, $02, $03, $04, $8f, $8f, $8b, $8c, $8d, $8e, $8f
    db $8f, $47, $48, $49, $3b, $8f, $03, $10, $11, $12, $13, $14, $3b, $8f, $05, $46
    db $56, $57, $58, $59, $7a, $7b, $ad, $8f, $20, $21, $22, $23, $24, $2a, $3b, $8f
    db $02, $52, $62, $63, $66, $67, $68, $69, $4c, $4d, $4e, $8f, $05, $06, $07, $08
    db $09, $3a, $8f, $3e, $40, $41, $72, $73, $76, $77, $78
jr_009_42d8:
    db $79, $5c, $5d, $5e, $8f, $15, $16, $17, $18, $19, $0f, $2c, $2d, $50, $51, $44
    db $45, $64, $65, $4a, $4b, $4f, $5f, $3b, $8f, $02, $0a, $0b, $0c, $0d, $0e, $3c
    db $3d, $60, $61
jr_009_42fb:
    db $54, $55, $74, $75, $5a, $5b, $98, $99, $9a, $9b, $8b, $1a, $1b, $1c, $1d, $1e
    db $2e, $2f, $70, $71, $8f, $7c, $7d, $6a, $6b, $9c, $9d, $9e, $9f, $ae, $1f, $30
    db $31, $32, $33, $34, $3f, $42, $43, $53, $8d, $7e, $ac, $7e, $a8, $a9, $a7, $aa
    db $ab, $8d, $2b, $25, $26, $27, $28, $29, $3f, $3f, $6c, $6d, $6e, $6f, $7d, $7c
    db $8e, $80, $80, $af, $84
Jump_009_4340:
    db $88, $2b, $35, $36, $37, $38, $39, $3f, $3f, $6c, $6d, $6e, $6f
jr_009_434d:
    db $ac, $7e, $8a, $80, $80, $7f, $85, $89, $3b, $7f, $9f, $3b, $01, $02, $3b
jr_009_435c:
    db $02, $09, $3b, $05, $02, $3b, $02, $03, $3b, $01, $02, $3b, $02, $07, $3b, $05
    db $02, $04, $04, $03, $05, $05, $02, $3b, $01, $02, $02, $02, $03, $3b, $02, $02
    db $03, $05, $03, $3b
jr_009_4380:
    db $04, $02, $00, $00, $03, $03, $3b, $02, $05, $03, $02, $3b, $03, $02, $04, $00
    db $00, $04, $04, $03, $00, $03, $03, $3b, $02, $05, $00, $03, $03, $3b, $04, $02
    db $00, $03, $00, $00, $3b, $03, $02, $3b, $02, $02, $3b, $05, $03, $3b, $00, $02
    db $04, $04, $05, $03, $03, $00, $3b, $03, $05, $02, $00, $3b, $04, $03, $3b, $00
    db $03
Jump_009_43c1:
    db $3b, $02, $02, $00, $03, $03, $00, $00, $03, $03, $02, $00, $3b, $04, $02, $00
    db $02, $3b, $00, $02, $3b, $02, $02, $22, $03, $03, $02, $00, $03, $02, $02, $3b
    db $00, $04, $3b, $02, $06, $22, $02, $02, $22, $00, $02, $02, $42, $02, $3b, $00
    db $02, $3b, $02, $02, $3b, $42, $03, $02, $62, $02, $42, $62, $00, $02, $02, $3b
    db $07, $9f

; 20x32 cells, 225 stored bytes.
; Shared gameplay HUD map with 20 columns and 32 stored rows.
UiMapGameHud:
UiMap3:
Resource_US_009_4403:
    INCBIN "../../res/ui/hud/US/hud.bin", $0, $4
jr_009_4407:
    INCBIN "../../res/ui/hud/US/hud.bin", $4, $32
Jump_009_4439:
    INCBIN "../../res/ui/hud/US/hud.bin", $36, $ab

; 20x18 cells, 224 stored bytes.
; Developer-logo BG map with regional content differences.
UiMapDeveloperLogo:
UiMap4:
    db MapFormatRlePair, $14, $12, $3f, $3f, $fe, $54, $50, $51, $52, $53, $54, $55, $56, $57, $58
    db $59, $3f, $fe, $2f, $19, $05, $04, $03, $02, $01, $00, $00, $01, $02, $03, $04
    db $05, $3f, $fe, $05, $09, $1b, $1c, $06, $fe, $fe, $1d, $1e, $fe, $1f, $fe, $fe
    db $06, $07, $08, $09, $3e, $fe, $fe, $0b, $0a, $20, $21, $22, $23, $24, $25, $26
    db $27, $28, $29, $2a, $2b, $2c, $2d, $0a, $0b, $fe, $fe, $0c, $fe, $30, $31, $32
    db $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $fe, $0c, $fe, $fe, $0e
    db $0d, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a
jr_009_4550:
    db $4b, $4c, $4d, $0d, $0e, $3f, $fe, $02, $18, $4f, $1a, $3f, $fe, $04, $2e, $2f
    db $fe, $fe, $15, $16, $17, $18, $3f, $fe, $05, $14, $13, $12, $11, $10, $0f, $0f
    db $10, $11, $12, $13
jr_009_4574:
    db $14, $3f, $fe, $53, $3f, $00, $54, $3f, $01, $09, $3f, $00, $30, $3f, $20, $03
    db $3f, $00, $0d
jr_009_4587:
    db $20, $00
jr_009_4589:
    db $00, $20, $20, $00, $02, $02, $00, $02, $3f, $00, $08, $20, $20, $3f, $00, $04
    db $01, $3f, $02, $02, $3f, $00, $08, $20, $3f, $00, $06, $02, $02
jr_009_45a6:
    db $01, $3f, $00
jr_009_45a9:
    db $08, $20, $20
jr_009_45ac:
    db $3f, $00, $05, $02, $02, $03, $3f, $00, $09, $20, $3f, $00, $06, $02, $02, $3f
    db $00, $0b, $3f, $20, $03
jr_009_45c1:
    db $3f, $00, $5b

; 20x18 cells, 35 stored bytes.
; Bare blackjack table map selected through UI map index five.
UiMapBlackjackTable:
UiMap5:
jr_009_45c4:
    db MapFormatRlePair, $14, $12, $01, $01, $7f, $05, $b3, $b1, $c2, $b4, $c3, $7f, $bc, $b5, $b6
    db $c4, $01, $7f, $cb, $01, $77, $13, $01, $7f, $77, $01, $00, $03, $01, $06, $d7
    db $01, $07, $8b

; 20x18 cells, 16 stored bytes.
; Blank 20x18 text panel, filled with tile $7f and attribute seven.
UiMapBlankTextPanel:
UiMap6:
    db MapFormatRlePair, $14, $12, $00, $00, $7f, $ff, $00, $7f, $67, $00, $07, $ff, $00, $07
jr_009_45f6:
    db $67

; 20x18 cells, 197 stored bytes.
; US publisher-logo BG map.
UiMapPublisherLogo:
UiMap7:
    db MapFormatRlePair, $14, $12, $6d, $6d, $ff, $40, $63, $64, $65, $66, $67, $68, $69, $6a, $6b
    db $6c, $6d, $ff, $10, $00, $6d, $ff, $0d, $01, $02, $ff, $ff, $03, $04, $6d, $ff
    db $0d, $05, $06, $07, $ff, $08, $09, $6d, $ff, $0c, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $6d, $ff, $0e, $11, $12, $13, $14, $6d, $ff, $0f, $15, $16, $17, $6d, $ff
    db $10, $18, $19, $1a, $6d, $ff, $0a, $20, $21, $22, $23, $24, $25, $26, $27, $28
    db $29, $2a, $2b, $2c, $2d, $2e, $2f, $6d, $ff, $04, $31, $32, $33, $34, $35, $36
    db $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $6d
jr_009_4661:
    db $ff, $04, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e
jr_009_4671:
    db $4f, $6d, $ff, $05, $30, $40, $1b, $1c, $1d, $1e, $1f, $50, $51, $52, $53, $54
    db $6d, $ff, $1a
Call_009_4684:
    db $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $6d
jr_009_4693:
    db $ff, $16, $6d, $00, $40, $6d, $01, $09, $6d, $00, $92, $6d, $01, $0f, $6d, $00
    db $04, $6d, $01, $0e, $6d, $00, $04, $6d, $01, $0e, $6d, $00, $05, $6d, $01, $0b
    db $6d, $00, $1a, $6d
jr_009_46b7:
    db $01, $0d, $6d, $00, $16
