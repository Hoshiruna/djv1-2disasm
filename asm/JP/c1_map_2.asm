; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $025", ROMX[$4000], BANK[$25]

    dw MapC1_S50 ; $00
    dw MapC1_S51 ; $01
    dw MapC1_S52 ; $02
    dw MapC1_S53 ; $03
    dw MapC1_S54 ; $04
    dw MapC1_S55 ; $05
    dw MapC1_S56 ; $06
    dw MapC1_S57 ; $07
    dw MapC1_S58 ; $08
    dw MapC1_S59 ; $09
    dw MapC1_S5A ; $0a
    dw MapC1_S5B ; $0b
    dw MapC1_S5C ; $0c
    dw MapC1_S5D ; $0d
    dw MapC1_S5E ; $0e
    dw MapC1_S5F ; $0f
    dw MapC1_S60 ; $10
    dw MapC1_S61 ; $11
    dw MapC1_S62 ; $12
    dw MapC1_S63 ; $13
    dw MapC1_S64 ; $14
    dw MapC1_S65 ; $15
    dw MapC1_S66 ; $16
    dw MapC1_S67 ; $17
    dw MapC1_S68 ; $18
    dw MapC1_S69 ; $19
    dw MapC1_S6A ; $1a
    dw MapC1_S6B ; $1b
    dw MapC1_S6C ; $1c
    dw MapC1_S6D ; $1d
    dw MapC1_S6E ; $1e
    dw MapC1_S6F ; $1f
    dw MapC1_S70 ; $20
    dw MapC1_S71 ; $21
    dw MapC1_S72 ; $22
    dw MapC1_S73 ; $23
    dw MapC1_S74 ; $24
    dw MapC1_S75 ; $25
    dw MapC1_S76 ; $26
    dw MapC1_S77 ; $27

MapC1_S50:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.tilemap", $0, $12
jr_025_4062:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.tilemap", $12, $7
jr_025_4069:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.tilemap", $19, $7
jr_025_4070:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.tilemap", $20, $20
jr_025_4090:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.tilemap", $40, $e
jr_025_409e:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.tilemap", $4e, $6
jr_025_40a4:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.tilemap", $54, $1
jr_025_40a5:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.tilemap", $55, $9
jr_025_40ae:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.tilemap", $5e, $19
jr_025_40c7:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.tilemap", $77, $1e
jr_025_40e5:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.tilemap", $95, $2f

AttrC1_S50:
    INCBIN "../../res/scene/case1/50-peoria-alley/s50-bg.attrmap", $0, $c4

MapC1_S51:
    INCBIN "../../res/scene/case1/51-joes-back-alley/s51-bg.tilemap", $0, $c4

AttrC1_S51:
    INCBIN "../../res/scene/case1/51-joes-back-alley/s51-bg.attrmap", $0, $a
jr_025_42a6:
    INCBIN "../../res/scene/case1/51-joes-back-alley/s51-bg.attrmap", $a, $d
jr_025_42b3:
    INCBIN "../../res/scene/case1/51-joes-back-alley/s51-bg.attrmap", $17, $2a
jr_025_42dd:
    INCBIN "../../res/scene/case1/51-joes-back-alley/s51-bg.attrmap", $41, $e
jr_025_42eb:
    INCBIN "../../res/scene/case1/51-joes-back-alley/s51-bg.attrmap", $4f, $e
jr_025_42f9:
    INCBIN "../../res/scene/case1/51-joes-back-alley/s51-bg.attrmap", $5d, $e
jr_025_4307:
    INCBIN "../../res/scene/case1/51-joes-back-alley/s51-bg.attrmap", $6b, $e
jr_025_4315:
    INCBIN "../../res/scene/case1/51-joes-back-alley/s51-bg.attrmap", $79, $e
jr_025_4323:
    INCBIN "../../res/scene/case1/51-joes-back-alley/s51-bg.attrmap", $87, $3d

MapC1_S52:
    INCBIN "../../res/scene/case1/52-joes-back-alley/s52-bg.tilemap", $0, $c4

AttrC1_S52:
    INCBIN "../../res/scene/case1/52-joes-back-alley/s52-bg.attrmap", $0, $41
jr_025_4465:
    INCBIN "../../res/scene/case1/52-joes-back-alley/s52-bg.attrmap", $41, $e
jr_025_4473:
    INCBIN "../../res/scene/case1/52-joes-back-alley/s52-bg.attrmap", $4f, $e
jr_025_4481:
    INCBIN "../../res/scene/case1/52-joes-back-alley/s52-bg.attrmap", $5d, $e
jr_025_448f:
    INCBIN "../../res/scene/case1/52-joes-back-alley/s52-bg.attrmap", $6b, $e
jr_025_449d:
    INCBIN "../../res/scene/case1/52-joes-back-alley/s52-bg.attrmap", $79, $e
jr_025_44ab:
    INCBIN "../../res/scene/case1/52-joes-back-alley/s52-bg.attrmap", $87, $3d

MapC1_S53:
    INCBIN "../../res/scene/case1/53-drunkard/s53-bg.tilemap", $0, $68
jr_025_4550:
    INCBIN "../../res/scene/case1/53-drunkard/s53-bg.tilemap", $68, $14
jr_025_4564:
    INCBIN "../../res/scene/case1/53-drunkard/s53-bg.tilemap", $7c, $14
jr_025_4578:
    INCBIN "../../res/scene/case1/53-drunkard/s53-bg.tilemap", $90, $14
jr_025_458c:
    INCBIN "../../res/scene/case1/53-drunkard/s53-bg.tilemap", $a4, $20

AttrC1_S53:
    INCBIN "../../res/scene/case1/53-drunkard/s53-bg.attrmap", $0, $c4

MapC1_S54:
    INCBIN "../../res/scene/case1/54-mugger/s54-bg.tilemap", $0, $70
jr_025_46e0:
    INCBIN "../../res/scene/case1/54-mugger/s54-bg.tilemap", $70, $7
jr_025_46e7:
    INCBIN "../../res/scene/case1/54-mugger/s54-bg.tilemap", $77, $10
jr_025_46f7:
    INCBIN "../../res/scene/case1/54-mugger/s54-bg.tilemap", $87, $12
jr_025_4709:
    INCBIN "../../res/scene/case1/54-mugger/s54-bg.tilemap", $99, $2b

AttrC1_S54:
    INCBIN "../../res/scene/case1/54-mugger/s54-bg.attrmap", $0, $c4

MapC1_S55:
    INCBIN "../../res/scene/case1/55-sugar-shack/s55-bg.tilemap", $0, $69
jr_025_4861:
    INCBIN "../../res/scene/case1/55-sugar-shack/s55-bg.tilemap", $69, $8
jr_025_4869:
    INCBIN "../../res/scene/case1/55-sugar-shack/s55-bg.tilemap", $71, $21
jr_025_488a:
    INCBIN "../../res/scene/case1/55-sugar-shack/s55-bg.tilemap", $92, $22
jr_025_48ac:
    INCBIN "../../res/scene/case1/55-sugar-shack/s55-bg.tilemap", $b4, $10

AttrC1_S55:
    INCBIN "../../res/scene/case1/55-sugar-shack/s55-bg.attrmap", $0, $c4

MapC1_S56:
    INCBIN "../../res/scene/case1/56-sugar-shack/s56-bg.tilemap", $0, $3e
jr_025_49be:
    INCBIN "../../res/scene/case1/56-sugar-shack/s56-bg.tilemap", $3e, $12
jr_025_49d0:
    INCBIN "../../res/scene/case1/56-sugar-shack/s56-bg.tilemap", $50, $14
jr_025_49e4:
    INCBIN "../../res/scene/case1/56-sugar-shack/s56-bg.tilemap", $64, $10
jr_025_49f4:
    INCBIN "../../res/scene/case1/56-sugar-shack/s56-bg.tilemap", $74, $13
jr_025_4a07:
    INCBIN "../../res/scene/case1/56-sugar-shack/s56-bg.tilemap", $87, $3d

AttrC1_S56:
    INCBIN "../../res/scene/case1/56-sugar-shack/s56-bg.attrmap", $0, $c4

MapC1_S57:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.tilemap", $0, $67
jr_025_4b6f:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.tilemap", $67, $16
jr_025_4b85:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.tilemap", $7d, $29
jr_025_4bae:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.tilemap", $a6, $1e

AttrC1_S57:
    INCBIN "../../res/scene/case1/57-sugar-portrait/s57-bg.attrmap", $0, $c4

MapC1_S58:
    INCBIN "../../res/scene/case1/58-cab-interior/s58-bg.tilemap", $0, $4f
jr_025_4cdf:
    INCBIN "../../res/scene/case1/58-cab-interior/s58-bg.tilemap", $4f, $12
jr_025_4cf1:
    INCBIN "../../res/scene/case1/58-cab-interior/s58-bg.tilemap", $61, $13
jr_025_4d04:
    INCBIN "../../res/scene/case1/58-cab-interior/s58-bg.tilemap", $74, $11
jr_025_4d15:
    INCBIN "../../res/scene/case1/58-cab-interior/s58-bg.tilemap", $85, $10
jr_025_4d25:
    INCBIN "../../res/scene/case1/58-cab-interior/s58-bg.tilemap", $95, $2f

AttrC1_S58:
    INCBIN "../../res/scene/case1/58-cab-interior/s58-bg.attrmap", $0, $c4

MapC1_S59:
    INCBIN "../../res/scene/case1/59-cab-interior/s59-bg.tilemap", $0, $4f
jr_025_4e67:
    INCBIN "../../res/scene/case1/59-cab-interior/s59-bg.tilemap", $4f, $12
jr_025_4e79:
    INCBIN "../../res/scene/case1/59-cab-interior/s59-bg.tilemap", $61, $24
jr_025_4e9d:
    INCBIN "../../res/scene/case1/59-cab-interior/s59-bg.tilemap", $85, $10
jr_025_4ead:
    INCBIN "../../res/scene/case1/59-cab-interior/s59-bg.tilemap", $95, $2f

AttrC1_S59:
    INCBIN "../../res/scene/case1/59-cab-interior/s59-bg.attrmap", $0, $c4

MapC1_S5A:
    INCBIN "../../res/scene/case1/5a-cab-interior/s5a-bg.tilemap", $0, $61
jr_025_5001:
    INCBIN "../../res/scene/case1/5a-cab-interior/s5a-bg.tilemap", $61, $24
jr_025_5025:
    INCBIN "../../res/scene/case1/5a-cab-interior/s5a-bg.tilemap", $85, $10
jr_025_5035:
    INCBIN "../../res/scene/case1/5a-cab-interior/s5a-bg.tilemap", $95, $2f

AttrC1_S5A:
    INCBIN "../../res/scene/case1/5a-cab-interior/s5a-bg.attrmap", $0, $c4

MapC1_S5B:
    INCBIN "../../res/scene/case1/5b-cab-interior/s5b-bg.tilemap", $0, $61
jr_025_5189:
    INCBIN "../../res/scene/case1/5b-cab-interior/s5b-bg.tilemap", $61, $24
jr_025_51ad:
    INCBIN "../../res/scene/case1/5b-cab-interior/s5b-bg.tilemap", $85, $10
jr_025_51bd:
    INCBIN "../../res/scene/case1/5b-cab-interior/s5b-bg.tilemap", $95, $2f

AttrC1_S5B:
    INCBIN "../../res/scene/case1/5b-cab-interior/s5b-bg.attrmap", $0, $c4

MapC1_S5C:
    INCBIN "../../res/scene/case1/5c-stanford-arms/s5c-bg.tilemap", $0, $2e
jr_025_52de:
    INCBIN "../../res/scene/case1/5c-stanford-arms/s5c-bg.tilemap", $2e, $1e
jr_025_52fc:
    INCBIN "../../res/scene/case1/5c-stanford-arms/s5c-bg.tilemap", $4c, $d
jr_025_5309:
    INCBIN "../../res/scene/case1/5c-stanford-arms/s5c-bg.tilemap", $59, $4
jr_025_530d:
    INCBIN "../../res/scene/case1/5c-stanford-arms/s5c-bg.tilemap", $5d, $1
jr_025_530e:
    INCBIN "../../res/scene/case1/5c-stanford-arms/s5c-bg.tilemap", $5e, $66

AttrC1_S5C:
    INCBIN "../../res/scene/case1/5c-stanford-arms/s5c-bg.attrmap", $0, $c4

MapC1_S5D:
    INCBIN "../../res/scene/case1/5d-stanford-arms/s5d-bg.tilemap", $0, $2e
jr_025_5466:
    INCBIN "../../res/scene/case1/5d-stanford-arms/s5d-bg.tilemap", $2e, $1e
jr_025_5484:
    INCBIN "../../res/scene/case1/5d-stanford-arms/s5d-bg.tilemap", $4c, $d
jr_025_5491:
    INCBIN "../../res/scene/case1/5d-stanford-arms/s5d-bg.tilemap", $59, $4
jr_025_5495:
    INCBIN "../../res/scene/case1/5d-stanford-arms/s5d-bg.tilemap", $5d, $1
jr_025_5496:
    INCBIN "../../res/scene/case1/5d-stanford-arms/s5d-bg.tilemap", $5e, $66

AttrC1_S5D:
    INCBIN "../../res/scene/case1/5d-stanford-arms/s5d-bg.attrmap", $0, $c4

MapC1_S5E:
    INCBIN "../../res/scene/case1/5e-stanford-arms/s5e-bg.tilemap", $0, $2e
jr_025_55ee:
    INCBIN "../../res/scene/case1/5e-stanford-arms/s5e-bg.tilemap", $2e, $1e
jr_025_560c:
    INCBIN "../../res/scene/case1/5e-stanford-arms/s5e-bg.tilemap", $4c, $d
jr_025_5619:
    INCBIN "../../res/scene/case1/5e-stanford-arms/s5e-bg.tilemap", $59, $4
jr_025_561d:
    INCBIN "../../res/scene/case1/5e-stanford-arms/s5e-bg.tilemap", $5d, $1
jr_025_561e:
    INCBIN "../../res/scene/case1/5e-stanford-arms/s5e-bg.tilemap", $5e, $66

AttrC1_S5E:
    INCBIN "../../res/scene/case1/5e-stanford-arms/s5e-bg.attrmap", $0, $c4

MapC1_S5F:
    INCBIN "../../res/scene/case1/5f-stanford-arms/s5f-bg.tilemap", $0, $2e
jr_025_5776:
    INCBIN "../../res/scene/case1/5f-stanford-arms/s5f-bg.tilemap", $2e, $1e
jr_025_5794:
    INCBIN "../../res/scene/case1/5f-stanford-arms/s5f-bg.tilemap", $4c, $d
jr_025_57a1:
    INCBIN "../../res/scene/case1/5f-stanford-arms/s5f-bg.tilemap", $59, $4
jr_025_57a5:
    INCBIN "../../res/scene/case1/5f-stanford-arms/s5f-bg.tilemap", $5d, $1
jr_025_57a6:
    INCBIN "../../res/scene/case1/5f-stanford-arms/s5f-bg.tilemap", $5e, $66

AttrC1_S5F:
    INCBIN "../../res/scene/case1/5f-stanford-arms/s5f-bg.attrmap", $0, $c4

MapC1_S60:
    INCBIN "../../res/scene/case1/60-stanford-lobby/s60-bg.tilemap", $0, $4a
jr_025_591a:
    INCBIN "../../res/scene/case1/60-stanford-lobby/s60-bg.tilemap", $4a, $d
jr_025_5927:
    INCBIN "../../res/scene/case1/60-stanford-lobby/s60-bg.tilemap", $57, $36
jr_025_595d:
    INCBIN "../../res/scene/case1/60-stanford-lobby/s60-bg.tilemap", $8d, $4
jr_025_5961:
    INCBIN "../../res/scene/case1/60-stanford-lobby/s60-bg.tilemap", $91, $8
jr_025_5969:
    INCBIN "../../res/scene/case1/60-stanford-lobby/s60-bg.tilemap", $99, $e
jr_025_5977:
    INCBIN "../../res/scene/case1/60-stanford-lobby/s60-bg.tilemap", $a7, $16
jr_025_598d:
    INCBIN "../../res/scene/case1/60-stanford-lobby/s60-bg.tilemap", $bd, $7

AttrC1_S60:
    INCBIN "../../res/scene/case1/60-stanford-lobby/s60-bg.attrmap", $0, $c4

MapC1_S61:
    INCBIN "../../res/scene/case1/61-stanford-lobby/s61-bg.tilemap", $0, $57
jr_025_5aaf:
    INCBIN "../../res/scene/case1/61-stanford-lobby/s61-bg.tilemap", $57, $36
jr_025_5ae5:
    INCBIN "../../res/scene/case1/61-stanford-lobby/s61-bg.tilemap", $8d, $4
jr_025_5ae9:
    INCBIN "../../res/scene/case1/61-stanford-lobby/s61-bg.tilemap", $91, $8
jr_025_5af1:
    INCBIN "../../res/scene/case1/61-stanford-lobby/s61-bg.tilemap", $99, $24
jr_025_5b15:
    INCBIN "../../res/scene/case1/61-stanford-lobby/s61-bg.tilemap", $bd, $7

AttrC1_S61:
    INCBIN "../../res/scene/case1/61-stanford-lobby/s61-bg.attrmap", $0, $6
jr_025_5b22:
    INCBIN "../../res/scene/case1/61-stanford-lobby/s61-bg.attrmap", $6, $be

MapC1_S62:
    INCBIN "../../res/scene/case1/62-stanford-elevator/s62-bg.tilemap", $0, $32
jr_025_5c12:
    INCBIN "../../res/scene/case1/62-stanford-elevator/s62-bg.tilemap", $32, $1c
jr_025_5c2e:
    INCBIN "../../res/scene/case1/62-stanford-elevator/s62-bg.tilemap", $4e, $2a
jr_025_5c58:
    INCBIN "../../res/scene/case1/62-stanford-elevator/s62-bg.tilemap", $78, $1c
jr_025_5c74:
    INCBIN "../../res/scene/case1/62-stanford-elevator/s62-bg.tilemap", $94, $8
jr_025_5c7c:
    INCBIN "../../res/scene/case1/62-stanford-elevator/s62-bg.tilemap", $9c, $6
jr_025_5c82:
    INCBIN "../../res/scene/case1/62-stanford-elevator/s62-bg.tilemap", $a2, $22

AttrC1_S62:
    INCBIN "../../res/scene/case1/62-stanford-elevator/s62-bg.attrmap", $0, $7
jr_025_5cab:
    INCBIN "../../res/scene/case1/62-stanford-elevator/s62-bg.attrmap", $7, $1
jr_025_5cac:
    INCBIN "../../res/scene/case1/62-stanford-elevator/s62-bg.attrmap", $8, $bc

MapC1_S63:
    INCBIN "../../res/scene/case1/63-stanford-elevator/s63-bg.tilemap", $0, $91
jr_025_5df9:
    INCBIN "../../res/scene/case1/63-stanford-elevator/s63-bg.tilemap", $91, $b
jr_025_5e04:
    INCBIN "../../res/scene/case1/63-stanford-elevator/s63-bg.tilemap", $9c, $3
jr_025_5e07:
    INCBIN "../../res/scene/case1/63-stanford-elevator/s63-bg.tilemap", $9f, $e
jr_025_5e15:
    INCBIN "../../res/scene/case1/63-stanford-elevator/s63-bg.tilemap", $ad, $17

AttrC1_S63:
    INCBIN "../../res/scene/case1/63-stanford-elevator/s63-bg.attrmap", $0, $6
jr_025_5e32:
    INCBIN "../../res/scene/case1/63-stanford-elevator/s63-bg.attrmap", $6, $3c
jr_025_5e6e:
    INCBIN "../../res/scene/case1/63-stanford-elevator/s63-bg.attrmap", $42, $82

MapC1_S64:
    INCBIN "../../res/scene/case1/64-stanford-elevator/s64-bg.tilemap", $0, $9c
jr_025_5f8c:
    INCBIN "../../res/scene/case1/64-stanford-elevator/s64-bg.tilemap", $9c, $28

AttrC1_S64:
    INCBIN "../../res/scene/case1/64-stanford-elevator/s64-bg.attrmap", $0, $12
jr_025_5fc6:
    INCBIN "../../res/scene/case1/64-stanford-elevator/s64-bg.attrmap", $12, $e
jr_025_5fd4:
    INCBIN "../../res/scene/case1/64-stanford-elevator/s64-bg.attrmap", $20, $e
jr_025_5fe2:
    INCBIN "../../res/scene/case1/64-stanford-elevator/s64-bg.attrmap", $2e, $e
jr_025_5ff0:
    INCBIN "../../res/scene/case1/64-stanford-elevator/s64-bg.attrmap", $3c, $e
jr_025_5ffe:
    INCBIN "../../res/scene/case1/64-stanford-elevator/s64-bg.attrmap", $4a, $e
jr_025_600c:
    INCBIN "../../res/scene/case1/64-stanford-elevator/s64-bg.attrmap", $58, $6c

MapC1_S65:
    INCBIN "../../res/scene/case1/65-siegel-penthouse/s65-bg.tilemap", $0, $2e
jr_025_60a6:
    INCBIN "../../res/scene/case1/65-siegel-penthouse/s65-bg.tilemap", $2e, $11
jr_025_60b7:
    INCBIN "../../res/scene/case1/65-siegel-penthouse/s65-bg.tilemap", $3f, $d
jr_025_60c4:
    INCBIN "../../res/scene/case1/65-siegel-penthouse/s65-bg.tilemap", $4c, $11
jr_025_60d5:
    INCBIN "../../res/scene/case1/65-siegel-penthouse/s65-bg.tilemap", $5d, $10
jr_025_60e5:
    INCBIN "../../res/scene/case1/65-siegel-penthouse/s65-bg.tilemap", $6d, $57

AttrC1_S65:
    INCBIN "../../res/scene/case1/65-siegel-penthouse/s65-bg.attrmap", $0, $c4

MapC1_S66:
    INCBIN "../../res/scene/case1/66-vickers-bungalow/s66-bg.tilemap", $0, $47
jr_025_6247:
    INCBIN "../../res/scene/case1/66-vickers-bungalow/s66-bg.tilemap", $47, $18
jr_025_625f:
    INCBIN "../../res/scene/case1/66-vickers-bungalow/s66-bg.tilemap", $5f, $1e
jr_025_627d:
    INCBIN "../../res/scene/case1/66-vickers-bungalow/s66-bg.tilemap", $7d, $3c
jr_025_62b9:
    INCBIN "../../res/scene/case1/66-vickers-bungalow/s66-bg.tilemap", $b9, $b

AttrC1_S66:
    INCBIN "../../res/scene/case1/66-vickers-bungalow/s66-bg.attrmap", $0, $17
jr_025_62db:
    INCBIN "../../res/scene/case1/66-vickers-bungalow/s66-bg.attrmap", $17, $e
jr_025_62e9:
    INCBIN "../../res/scene/case1/66-vickers-bungalow/s66-bg.attrmap", $25, $9f

MapC1_S67:
    INCBIN "../../res/scene/case1/67-vickers-bungalow/s67-bg.tilemap", $0, $47
jr_025_63cf:
    INCBIN "../../res/scene/case1/67-vickers-bungalow/s67-bg.tilemap", $47, $18
jr_025_63e7:
    INCBIN "../../res/scene/case1/67-vickers-bungalow/s67-bg.tilemap", $5f, $1e
jr_025_6405:
    INCBIN "../../res/scene/case1/67-vickers-bungalow/s67-bg.tilemap", $7d, $3c
jr_025_6441:
    INCBIN "../../res/scene/case1/67-vickers-bungalow/s67-bg.tilemap", $b9, $b

AttrC1_S67:
    INCBIN "../../res/scene/case1/67-vickers-bungalow/s67-bg.attrmap", $0, $17
jr_025_6463:
    INCBIN "../../res/scene/case1/67-vickers-bungalow/s67-bg.attrmap", $17, $e
jr_025_6471:
    INCBIN "../../res/scene/case1/67-vickers-bungalow/s67-bg.attrmap", $25, $9f

MapC1_S68:
    INCBIN "../../res/scene/case1/68-vickers-bungalow/s68-bg.tilemap", $0, $47
jr_025_6557:
    INCBIN "../../res/scene/case1/68-vickers-bungalow/s68-bg.tilemap", $47, $18
jr_025_656f:
    INCBIN "../../res/scene/case1/68-vickers-bungalow/s68-bg.tilemap", $5f, $1e
jr_025_658d:
    INCBIN "../../res/scene/case1/68-vickers-bungalow/s68-bg.tilemap", $7d, $3c
jr_025_65c9:
    INCBIN "../../res/scene/case1/68-vickers-bungalow/s68-bg.tilemap", $b9, $b

AttrC1_S68:
    INCBIN "../../res/scene/case1/68-vickers-bungalow/s68-bg.attrmap", $0, $17
jr_025_65eb:
    INCBIN "../../res/scene/case1/68-vickers-bungalow/s68-bg.attrmap", $17, $e
jr_025_65f9:
    INCBIN "../../res/scene/case1/68-vickers-bungalow/s68-bg.attrmap", $25, $9f

MapC1_S69:
    INCBIN "../../res/scene/case1/69-vickers-bungalow/s69-bg.tilemap", $0, $47
jr_025_66df:
    INCBIN "../../res/scene/case1/69-vickers-bungalow/s69-bg.tilemap", $47, $18
jr_025_66f7:
    INCBIN "../../res/scene/case1/69-vickers-bungalow/s69-bg.tilemap", $5f, $1e
jr_025_6715:
    INCBIN "../../res/scene/case1/69-vickers-bungalow/s69-bg.tilemap", $7d, $3c
jr_025_6751:
    INCBIN "../../res/scene/case1/69-vickers-bungalow/s69-bg.tilemap", $b9, $b

AttrC1_S69:
    INCBIN "../../res/scene/case1/69-vickers-bungalow/s69-bg.attrmap", $0, $17
jr_025_6773:
    INCBIN "../../res/scene/case1/69-vickers-bungalow/s69-bg.attrmap", $17, $e
jr_025_6781:
    INCBIN "../../res/scene/case1/69-vickers-bungalow/s69-bg.attrmap", $25, $9f

MapC1_S6A:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.tilemap", $0, $39
jr_025_6859:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.tilemap", $39, $1b
jr_025_6874:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.tilemap", $54, $19
jr_025_688d:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.tilemap", $6d, $30
jr_025_68bd:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.tilemap", $9d, $22
jr_025_68df:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.tilemap", $bf, $5

AttrC1_S6A:
    INCBIN "../../res/scene/case1/6a-vickers-bedroom/s6a-bg.attrmap", $0, $c4

MapC1_S6B:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.tilemap", $0, $e
jr_025_69b6:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.tilemap", $e, $6
jr_025_69bc:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.tilemap", $14, $e
jr_025_69ca:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.tilemap", $22, $14
jr_025_69de:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.tilemap", $36, $5
jr_025_69e3:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.tilemap", $3b, $7
jr_025_69ea:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.tilemap", $42, $2
jr_025_69ec:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.tilemap", $44, $5
jr_025_69f1:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.tilemap", $49, $17
jr_025_6a08:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.tilemap", $60, $20
jr_025_6a28:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.tilemap", $80, $e
jr_025_6a36:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.tilemap", $8e, $e
jr_025_6a44:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.tilemap", $9c, $28

AttrC1_S6B:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.attrmap", $0, $a
jr_025_6a76:
    INCBIN "../../res/scene/case1/6b-sherman-offices/s6b-bg.attrmap", $a, $ba

MapC1_S6C:
    INCBIN "../../res/scene/case1/6c-sherman-offices/s6c-bg.tilemap", $0, $e
jr_025_6b3e:
    INCBIN "../../res/scene/case1/6c-sherman-offices/s6c-bg.tilemap", $e, $28
jr_025_6b66:
    INCBIN "../../res/scene/case1/6c-sherman-offices/s6c-bg.tilemap", $36, $5
jr_025_6b6b:
    INCBIN "../../res/scene/case1/6c-sherman-offices/s6c-bg.tilemap", $3b, $7
jr_025_6b72:
    INCBIN "../../res/scene/case1/6c-sherman-offices/s6c-bg.tilemap", $42, $2
jr_025_6b74:
    INCBIN "../../res/scene/case1/6c-sherman-offices/s6c-bg.tilemap", $44, $5
jr_025_6b79:
    INCBIN "../../res/scene/case1/6c-sherman-offices/s6c-bg.tilemap", $49, $17
jr_025_6b90:
    INCBIN "../../res/scene/case1/6c-sherman-offices/s6c-bg.tilemap", $60, $20
jr_025_6bb0:
    INCBIN "../../res/scene/case1/6c-sherman-offices/s6c-bg.tilemap", $80, $e
jr_025_6bbe:
    INCBIN "../../res/scene/case1/6c-sherman-offices/s6c-bg.tilemap", $8e, $e
jr_025_6bcc:
    INCBIN "../../res/scene/case1/6c-sherman-offices/s6c-bg.tilemap", $9c, $28

AttrC1_S6C:
    INCBIN "../../res/scene/case1/6c-sherman-offices/s6c-bg.attrmap", $0, $a
jr_025_6bfe:
    INCBIN "../../res/scene/case1/6c-sherman-offices/s6c-bg.attrmap", $a, $ba

MapC1_S6D:
    INCBIN "../../res/scene/case1/6d-sherman-offices/s6d-bg.tilemap", $0, $27
jr_025_6cdf:
    INCBIN "../../res/scene/case1/6d-sherman-offices/s6d-bg.tilemap", $27, $1e
jr_025_6cfd:
    INCBIN "../../res/scene/case1/6d-sherman-offices/s6d-bg.tilemap", $45, $8
jr_025_6d05:
    INCBIN "../../res/scene/case1/6d-sherman-offices/s6d-bg.tilemap", $4d, $1e
jr_025_6d23:
    INCBIN "../../res/scene/case1/6d-sherman-offices/s6d-bg.tilemap", $6b, $4d
jr_025_6d70:
    INCBIN "../../res/scene/case1/6d-sherman-offices/s6d-bg.tilemap", $b8, $c

AttrC1_S6D:
    INCBIN "../../res/scene/case1/6d-sherman-offices/s6d-bg.attrmap", $0, $c4

MapC1_S6E:
    INCBIN "../../res/scene/case1/6e-sherman-offices/s6e-bg.tilemap", $0, $27
jr_025_6e67:
    INCBIN "../../res/scene/case1/6e-sherman-offices/s6e-bg.tilemap", $27, $1e
jr_025_6e85:
    INCBIN "../../res/scene/case1/6e-sherman-offices/s6e-bg.tilemap", $45, $8
jr_025_6e8d:
    INCBIN "../../res/scene/case1/6e-sherman-offices/s6e-bg.tilemap", $4d, $1e
jr_025_6eab:
    INCBIN "../../res/scene/case1/6e-sherman-offices/s6e-bg.tilemap", $6b, $4d
jr_025_6ef8:
    INCBIN "../../res/scene/case1/6e-sherman-offices/s6e-bg.tilemap", $b8, $c

AttrC1_S6E:
    INCBIN "../../res/scene/case1/6e-sherman-offices/s6e-bg.attrmap", $0, $c4

MapC1_S6F:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.tilemap", $0, $55
jr_025_701d:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.tilemap", $55, $30
jr_025_704d:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.tilemap", $85, $1
jr_025_704e:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.tilemap", $86, $19
jr_025_7067:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.tilemap", $9f, $4
jr_025_706b:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.tilemap", $a3, $21

AttrC1_S6F:
    INCBIN "../../res/scene/case1/6f-sherman-lobby/s6f-bg.attrmap", $0, $c4

MapC1_S70:
    INCBIN "../../res/scene/case1/70-brody-door/s70-bg.tilemap", $0, $c4

AttrC1_S70:
    INCBIN "../../res/scene/case1/70-brody-door/s70-bg.attrmap", $0, $c4

MapC1_S71:
    INCBIN "../../res/scene/case1/71-brody-door/s71-bg.tilemap", $0, $c4

AttrC1_S71:
    INCBIN "../../res/scene/case1/71-brody-door/s71-bg.attrmap", $0, $90
jr_025_742c:
    INCBIN "../../res/scene/case1/71-brody-door/s71-bg.attrmap", $90, $12
jr_025_743e:
    INCBIN "../../res/scene/case1/71-brody-door/s71-bg.attrmap", $a2, $e
jr_025_744c:
    INCBIN "../../res/scene/case1/71-brody-door/s71-bg.attrmap", $b0, $14

MapC1_S72:
    INCBIN "../../res/scene/case1/72-brody-office/s72-bg.tilemap", $0, $5b
jr_025_74bb:
    INCBIN "../../res/scene/case1/72-brody-office/s72-bg.tilemap", $5b, $1e
jr_025_74d9:
    INCBIN "../../res/scene/case1/72-brody-office/s72-bg.tilemap", $79, $4b

AttrC1_S72:
    INCBIN "../../res/scene/case1/72-brody-office/s72-bg.attrmap", $0, $c4

MapC1_S73:
    INCBIN "../../res/scene/case1/73-ace-door/s73-bg.tilemap", $0, $6c
jr_025_7654:
    INCBIN "../../res/scene/case1/73-ace-door/s73-bg.tilemap", $6c, $3e
jr_025_7692:
    INCBIN "../../res/scene/case1/73-ace-door/s73-bg.tilemap", $aa, $1a

AttrC1_S73:
    INCBIN "../../res/scene/case1/73-ace-door/s73-bg.attrmap", $0, $c4

MapC1_S74:
    INCBIN "../../res/scene/case1/74-ace-door/s74-bg.tilemap", $0, $c4

AttrC1_S74:
    INCBIN "../../res/scene/case1/74-ace-door/s74-bg.attrmap", $0, $c4

MapC1_S75:
    INCBIN "../../res/scene/case1/75-ace-office/s75-bg.tilemap", $0, $61
jr_025_7959:
    INCBIN "../../res/scene/case1/75-ace-office/s75-bg.tilemap", $61, $40
jr_025_7999:
    INCBIN "../../res/scene/case1/75-ace-office/s75-bg.tilemap", $a1, $1e
jr_025_79b7:
    INCBIN "../../res/scene/case1/75-ace-office/s75-bg.tilemap", $bf, $5

AttrC1_S75:
    INCBIN "../../res/scene/case1/75-ace-office/s75-bg.attrmap", $0, $4
jr_025_79c0:
    INCBIN "../../res/scene/case1/75-ace-office/s75-bg.attrmap", $4, $1e
jr_025_79de:
    INCBIN "../../res/scene/case1/75-ace-office/s75-bg.attrmap", $22, $a2

MapC1_S76:
    INCBIN "../../res/scene/case1/76-ace-office/s76-bg.tilemap", $0, $61
jr_025_7ae1:
    INCBIN "../../res/scene/case1/76-ace-office/s76-bg.tilemap", $61, $40
jr_025_7b21:
    INCBIN "../../res/scene/case1/76-ace-office/s76-bg.tilemap", $a1, $1e
jr_025_7b3f:
    INCBIN "../../res/scene/case1/76-ace-office/s76-bg.tilemap", $bf, $5

AttrC1_S76:
    INCBIN "../../res/scene/case1/76-ace-office/s76-bg.attrmap", $0, $4
jr_025_7b48:
    INCBIN "../../res/scene/case1/76-ace-office/s76-bg.attrmap", $4, $1e
jr_025_7b66:
    INCBIN "../../res/scene/case1/76-ace-office/s76-bg.attrmap", $22, $a2

MapC1_S77:
    INCBIN "../../res/scene/case1/77-sternwood-gate/s77-bg.tilemap", $0, $33
jr_025_7c3b:
    INCBIN "../../res/scene/case1/77-sternwood-gate/s77-bg.tilemap", $33, $10
jr_025_7c4b:
    INCBIN "../../res/scene/case1/77-sternwood-gate/s77-bg.tilemap", $43, $10
jr_025_7c5b:
    INCBIN "../../res/scene/case1/77-sternwood-gate/s77-bg.tilemap", $53, $e
jr_025_7c69:
    INCBIN "../../res/scene/case1/77-sternwood-gate/s77-bg.tilemap", $61, $10
jr_025_7c79:
    INCBIN "../../res/scene/case1/77-sternwood-gate/s77-bg.tilemap", $71, $53

AttrC1_S77:
    INCBIN "../../res/scene/case1/77-sternwood-gate/s77-bg.attrmap", $0, $c4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
