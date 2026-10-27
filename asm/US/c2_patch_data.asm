; 138 indexed Case II map patches: $2f, width, height, then tile/attribute rows.
C2PatchRefs:
    dw Case2BathroomDoorClosed
    dw Case2BathroomDoorOpen
    dw C2PatchBedroomCurtainOpen
    dw C2PatchBedroomCurtainClosed
    dw C2Patch04
    dw C2Patch05
    dw C2Patch06
    dw C2Patch07
    dw C2Patch08
    dw C2Patch09
    dw C2Patch0A
    dw C2Patch0B
    dw C2PatchLiftDoorClosed
    dw C2PatchLiftDoorOpen
    dw C2Patch0E
    dw C2Patch0F
    dw C2Patch10
    dw C2Patch11
    dw C2Patch12
    dw C2Patch13
    dw C2Patch14
    dw C2Patch15
    dw C2Patch16
    dw C2Patch17
    dw C2Patch18
    dw C2Patch19
    dw C2Patch1A
    dw C2Patch1B
    dw C2Patch1C
    dw C2Patch1D
    dw C2Patch1E
    dw C2Patch1F
    dw C2Patch20
    dw C2Patch21
    dw C2Patch22
    dw C2Patch23
    dw C2Patch24
    dw C2Patch25
    dw C2Patch26
    dw C2Patch27
    dw C2Patch28
    dw C2Patch29
    dw C2Patch2A
    dw C2Patch2B
    dw C2Patch2C
    dw C2Patch2D
    dw C2Patch2E
    dw C2Patch2F
    dw C2Patch30
    dw C2Patch31
    dw C2Patch32
    dw C2Patch33
    dw C2Patch34
    dw C2Patch35
    dw C2Patch36
    dw C2Patch37
    dw C2Patch38
    dw C2Patch39
    dw C2Patch3A
    dw C2Patch3B
    dw C2Patch3C
    dw C2Patch3D
    dw C2Patch3E
    dw C2Patch3F
    dw C2Patch40
    dw C2Patch41
    dw C2Patch42
    dw C2Patch43
    dw C2Patch44
    dw C2Patch45
    dw C2Patch46
    dw C2Patch47
    dw C2Patch48
    dw C2Patch49
    dw C2Patch4A
    dw C2Patch4B
    dw C2Patch4C
    dw C2Patch4D
    dw C2Patch4E
    dw C2Patch4F
    dw C2Patch50
    dw C2Patch51
    dw C2Patch52
    dw C2Patch53
    dw C2Patch54
    dw C2Patch55
    dw C2Patch56
    dw C2Patch57
    dw C2PatchSugarWardrobeClosedIntact
    dw C2PatchSugarWardrobeOpenIntact
    dw C2PatchSugarWardrobeClosedBroken
    dw C2PatchSugarWardrobeOpenBroken
    dw C2Patch5C
    dw C2Patch5D
    dw C2Patch5E
    dw C2Patch5F
    dw C2Patch60
    dw C2Patch61
    dw C2Patch62
    dw C2Patch63
    dw C2Patch64
    dw C2Patch65
    dw C2Patch66
    dw C2Patch67
    dw C2Patch68
    dw C2Patch69
    dw C2Patch6A
    dw C2Patch6B
    dw C2Patch6C
    dw C2Patch6D
    dw C2Patch6E
    dw C2Patch6F
    ; Pointer to C2Patch70; split bytes retain the interior label.
    db LOW(C2Patch70)
jr_029_40e1:
    db HIGH(C2Patch70)
    dw C2Patch71
    dw C2PatchLaundryBound
    dw C2PatchLaundryUntied
    dw C2Patch74
    dw C2Patch75
    dw C2Patch76
    dw C2Patch77
    dw C2Patch78
    dw C2Patch79
    dw C2Patch7A
    dw C2Patch7B
    dw C2Patch7C
    dw C2Patch7D
    dw C2Patch7E
    dw C2Patch7F
    dw C2Patch80
    dw C2Patch81
    dw C2Patch82
    dw C2Patch83
    dw C2Patch84
    dw C2Patch85
    ; Pointer to C2Patch86; split bytes retain the interior label.
    db LOW(C2Patch86)
jr_029_410d:
    db HIGH(C2Patch86)
    dw C2Patch87
    dw C2Patch88
    dw C2Patch89

; 4x8 cells.
C2Patch00:
Case2BathroomDoorClosed:
    db $2f, $04, $08
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.tilemap", $0, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.attrmap", $0, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.tilemap", $4, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.attrmap", $4, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.tilemap", $8, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.attrmap", $8, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.tilemap", $c, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.attrmap", $c, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.tilemap", $10, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.attrmap", $10, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.tilemap", $14, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.attrmap", $14, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.tilemap", $18, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.attrmap", $18, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.tilemap", $1c, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-closed.attrmap", $1c, $4

; 4x8 cells.
C2Patch01:
Case2BathroomDoorOpen:
    db $2f, $04, $08
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.tilemap", $0, $2
jr_029_415c:
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.tilemap", $2, $2
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.attrmap", $0, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.tilemap", $4, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.attrmap", $4, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.tilemap", $8, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.attrmap", $8, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.tilemap", $c, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.attrmap", $c, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.tilemap", $10, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.attrmap", $10, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.tilemap", $14, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.attrmap", $14, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.tilemap", $18, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.attrmap", $18, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.tilemap", $1c, $4
    INCBIN "../../res/scene/case2/00-lucky-bath/s00-door-open.attrmap", $1c, $4

; 1x8 cells.
; Bedroom curtain map patch while C2StateBedroomCurtainClosed is clear.
C2PatchBedroomCurtainOpen:
C2Patch02:
    db $2f, $01, $08, $6c, $0d, $6d, $0d, $6d, $0d, $6e, $0d, $6d, $0d, $6d, $0d, $6f
    db $0d, $70, $0a

; 1x8 cells.
; Bedroom curtain map patch while C2StateBedroomCurtainClosed is set.
C2PatchBedroomCurtainClosed:
C2Patch03:
    db $2f, $01, $08, $71, $08, $71, $08, $71, $08, $71, $08, $71, $08, $71, $08, $71
    db $08, $72, $08

; 4x5 cells.
C2Patch04:
    db $2f, $04, $05, $96, $97, $98, $99, $0c, $0c, $0c, $0c, $9a, $9b, $9c, $9d, $0c
    db $0c, $0c, $0c, $9e, $9f, $a0, $a1, $0c, $0c, $0c, $0c, $9a, $a2, $a3, $9d, $0c
    db $0c, $0c, $0c, $a4, $a5, $a6, $a7, $0c, $0c, $0c, $0c

; 4x5 cells.
C2Patch05:
    db $2f, $04, $05, $a8, $a9, $a9, $a8, $09, $09, $09, $29, $aa, $ff, $ff, $aa, $09
    db $00, $00, $29, $aa, $ff, $ff, $aa, $09, $00, $00, $29, $aa, $ff, $ff, $aa, $09
    db $00, $00, $29, $ab, $ac, $ad, $ae, $09, $09, $09, $09

; 2x9 cells.
C2Patch06:
    db $2f, $02, $09, $6a, $6b, $09, $09, $7a, $7b, $09, $09, $6c, $6d, $09, $09, $7c
    db $7d, $09, $09, $6e, $6f, $09, $09, $7e, $7f, $09, $09, $80, $81, $09, $09, $82
    db $83, $09, $09, $84, $85, $09, $0e

; 2x9 cells.
C2Patch07:
    db $2f, $02, $09, $86, $87, $0d, $0d, $88, $89, $0d, $0d, $8a, $89, $0d, $0d, $8b
    db $8c, $0d, $0d, $8d, $8e, $0d, $0d, $95, $89, $0d, $0d, $8f, $90, $0d, $0d, $91
    db $92, $0d, $0d, $93, $94, $0d, $0d

; 1x8 cells.
C2Patch08:
    db $2f, $01, $08, $70, $08, $71, $08, $71, $08, $72, $08, $73, $08, $71, $08, $71
    db $08, $74, $08

; 1x8 cells.
C2Patch09:
    db $2f, $01, $08, $75, $08, $76, $08, $76, $08, $76, $08, $76, $08, $77, $08, $78
    db $0d, $79, $0d

; 2x2 cells.
C2Patch0A:
    db $2f, $02, $02, $43, $44, $08, $08, $45, $46, $08, $08

; 2x2 cells.
C2Patch0B:
    db $2f, $02, $02, $47, $48, $08, $08, $49, $4a, $08, $08

; 4x13 cells.
; Shared lift-door map patch while the floor door-open state is clear.
C2PatchLiftDoorClosed:
C2Patch0C:
    db $2f, $04, $0d, $19, $1a, $88, $89, $0c, $09, $09, $09, $84, $85, $86, $87, $09
    db $09, $09, $09, $4c, $4d, $4e, $4f, $09, $09, $09, $09, $5c, $5d, $5e, $5f, $09
    db $09, $09, $09, $60, $61, $62, $63, $09, $09, $09, $09, $70, $71, $72, $73, $09
    db $09, $09, $09, $64, $65, $66, $67, $09, $09, $09, $09, $74, $75, $76, $77, $09
    db $09, $09, $09, $68, $69, $6a, $6b, $09, $09, $09, $09, $78, $79, $7a, $7b, $09
    db $09, $09, $09, $6c, $6d, $6e, $6f, $09, $09, $09, $09, $7c, $7d, $7e, $7f, $09
    db $09, $09, $09, $80, $81, $82, $83, $09, $09, $09, $09

; 4x13 cells.
; Shared lift-door map patch while the floor door-open state is set.
C2PatchLiftDoorOpen:
C2Patch0D:
    db $2f, $04, $0d, $19, $1a, $8a, $8b, $0c, $09, $09, $0e, $8c, $8d, $8e, $8f, $09
    db $0e, $0e, $0e, $90, $a7, $a7, $a7, $09, $0e, $0e, $0e, $91, $a7, $a7, $a7, $09
    db $0e, $0e, $0e, $92, $a7, $a7, $a7, $09, $0e, $0e, $0e, $93, $a7, $a7, $a7, $09
    db $0e, $0e, $0e, $94, $a7, $a7, $a7, $09, $0e, $0e, $0e, $95, $a7, $a7, $a7, $09
    db $0e, $0e, $0e, $96, $a7, $a7, $a7, $09, $0e, $0e, $0e, $97, $98, $99, $9a, $09
    db $0e, $0e, $0e, $9b, $9c, $9d, $9e, $09, $09, $09, $09, $9f, $a0, $a1, $a2, $09
    db $0a, $0a, $0a, $a3, $a4, $a5, $a6, $09, $0a, $0a, $0a

; 4x4 cells.
C2Patch0E:
    db $2f, $04, $04, $b4, $b7, $2f, $39, $0e, $0d, $0d, $0d, $a0, $a9, $92, $93, $2e
    db $0a, $0a, $0a, $b9, $83, $84, $a8, $0a, $0d, $0d, $0a, $85, $86, $87, $88, $0c
    db $0c, $0c, $0a

; 4x4 cells.
C2Patch0F:
    db $2f, $04, $04, $a5, $a6, $2f, $39, $0d, $0d, $0d, $0d, $a4, $aa, $ab, $ac, $0d
    db $0a, $0a, $0a, $ad, $ae, $af, $a7, $0a, $0a, $0a, $0a, $95, $96, $97, $98, $0c
    db $0c, $0c, $0a

; 1x8 cells.
C2Patch10:
    db $2f, $01, $08, $97, $09, $98, $09, $98, $09, $99, $09, $9a, $09, $98, $09, $9b
    db $09, $9c, $09

; 1x8 cells.
C2Patch11:
    db $2f, $01, $08, $a3, $0c, $a4, $0c, $a4, $0c, $a4, $0c, $a4, $0c, $a4, $0c, $a5
    db $0c, $a6, $09

; 1x8 cells.
C2Patch12:
    db $2f, $01, $08, $9d, $09, $9e, $09, $9e, $09, $9f, $09, $a0, $09, $9e, $09, $a1
    db $09, $a2, $09

; 1x8 cells.
C2Patch13:
    db $2f, $01, $08, $a7, $0c, $a8, $0c, $a8, $0c, $a8, $0c, $a8, $0c, $a8, $0c, $a9
    db $0c, $aa, $09

; 7x6 cells.
C2Patch14:
    db $2f, $07, $06, $40, $41, $41, $41, $41, $41, $40, $0b, $0b, $0b, $0b, $0b, $0b
    db $2b, $42, $43, $44, $45, $46, $47, $48, $09, $09, $09, $09, $09, $09, $09, $49
    db $4a, $4b, $4c, $4d, $4e, $4f, $09, $09, $09, $09, $09, $09, $09, $50, $51, $52
    db $53, $54, $55, $56, $09, $09, $09, $09, $09, $09, $09, $57, $58, $59, $5a, $5b
    db $5c, $5d, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $5e, $5f, $60, $61, $62, $63, $64
    db $0c, $0c, $0c, $0c, $0c, $0c, $0c

; 7x6 cells.
C2Patch15:
    db $2f, $07, $06, $65, $66, $67, $68, $69, $6a, $65, $0b, $0b, $0b, $0b, $0b, $0b
    db $2b, $6b, $6c, $6d, $6e, $6d, $6c, $6b, $0b, $0b, $0b, $0b, $6b, $6b, $2b, $6f
    db $70, $71, $72, $73, $74, $75, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $76, $77, $78
    db $79, $7a, $7b, $7c, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $7d, $7e, $7f, $80, $81
    db $82, $7d, $0b, $0b, $0b, $0b, $0b, $0b, $2b, $83, $84, $85, $86, $87, $88, $89
    db $0c, $0c, $0c, $0c, $0c, $0c, $0c

; 7x6 cells.
C2Patch16:
    db $2f, $07, $06, $40, $41, $41, $41, $41, $41, $40, $0b, $0b, $0b, $0b, $0b, $0b
    db $2b, $8a, $8b, $8c, $8d, $8e, $8f, $90, $09, $09, $09, $09, $09, $09, $09, $91
    db $92, $93, $94, $95, $96, $97, $09, $09, $09, $09, $09, $09, $09, $98, $99, $9a
    db $9b, $9c, $9d, $9e, $09, $09, $09, $09, $09, $09, $09, $9f, $a0, $a1, $a2, $a3
    db $a4, $a5, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $a6, $a7, $a8, $a9, $aa, $ab, $ac
    db $0c, $0c, $0c, $0c, $0c, $0c, $0c

; 7x6 cells.
C2Patch17:
    db $2f, $07, $06, $65, $66, $67, $68, $69, $6a, $65, $0b, $0b, $0b, $0b, $0b, $0b
    db $2b, $6b, $6c, $6d, $6e, $6d, $6c, $6b, $0b, $0b, $0b, $0b, $6b, $6b, $2b, $6f
    db $70, $71, $72, $73, $74, $75, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $76, $77, $78
    db $79, $7a, $7b, $7c, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $7d, $7e, $7f, $80, $81
    db $82, $7d, $0b, $0b, $0b, $0b, $0b, $0b, $2b, $83, $84, $85, $86, $87, $88, $89
    db $0c, $0c, $0c, $0c, $0c, $0c, $0c

; 1x8 cells.
C2Patch18:
    db $2f, $01, $08, $b4, $0d, $b5, $09, $b6, $09, $b7, $09, $b8, $0c, $b9, $0c, $ba
    db $08, $bb, $0c

; 1x8 cells.
C2Patch19:
    db $2f, $01, $08, $bc, $0d, $bd, $0d, $bd, $0d, $bd, $0d, $be, $0d, $b9, $0c, $ba
    db $08, $bb, $0c

; 1x8 cells.
C2Patch1A:
    db $2f, $01, $08, $b4, $0d, $bf, $09, $c0, $09, $c1, $09, $c2, $0c, $c3, $0c, $ba
    db $08, $bb, $0c

; 1x8 cells.
C2Patch1B:
    db $2f, $01, $08, $bc, $0d, $bd, $0d, $bd, $0d, $bd, $0d, $be, $0d, $c3, $0c, $ba
    db $08, $bb, $0c

; 2x12 cells.
C2Patch1C:
    db $2f, $02, $0c, $c4, $c5, $0e, $0e, $c6, $c7, $0e, $0e, $c8, $c9, $0a, $0a, $ca
    db $cb, $0a, $0a, $cc, $cd, $0a, $0a, $cc, $cd, $0a, $0a, $cc, $cd, $0a, $0a, $cc
    db $cd, $0a, $0a, $cc, $ce, $0a, $0c, $cf, $d0, $0c, $0c, $d1, $d2, $08, $08, $d3
    db $d4, $0c, $08

; 2x12 cells.
C2Patch1D:
    db $2f, $02, $0c, $00, $00, $0a, $0a, $00, $00, $0a, $0a, $01, $01, $0a, $0a, $02
    db $02, $0a, $0a, $03, $03, $0a, $0a, $03, $03, $0a, $0a, $03, $03, $0a, $0a, $03
    db $03, $0a, $0a, $03, $d5, $0a, $0c, $d6, $d7, $0c, $0c, $d8, $d9, $08, $08, $da
    db $db, $0c, $08

; 2x13 cells.
C2Patch1E:
    db $2f, $02, $0d, $af, $b0, $08, $08, $b1, $b2, $08, $08, $b1, $b2, $08, $08, $b3
    db $b4, $08, $08, $b5, $b6, $08, $08, $b1, $b2, $08, $08, $b1, $b2, $08, $08, $b7
    db $b8, $08, $08, $b9, $ba, $0d, $0d, $bb, $bc, $0d, $0d, $bd, $be, $0d, $0d, $bf
    db $c0, $0d, $0d, $c1, $c2, $0d, $0d

; 2x13 cells.
C2Patch1F:
    db $2f, $02, $0d, $c3, $c4, $0e, $0e, $c5, $c6, $0e, $0e, $c7, $c8, $0e, $0e, $c9
    db $ca, $0d, $0d, $cb, $cc, $0d, $0d, $cd, $ce, $0d, $0d, $cf, $d0, $0d, $0d, $d1
    db $d2, $0d, $0d, $d3, $d4, $0d, $0d, $d5, $d5, $0d, $2d, $d6, $d6, $0d, $2d, $d7
    db $d7, $0d, $2d, $d8, $d8, $0d, $2d

; 7x6 cells.
C2Patch20:
    db $2f, $07, $06, $62, $64, $65, $66, $67, $64, $7f, $0a, $09, $09, $09, $09, $29
    db $0a, $80, $68, $69, $6a, $6b, $6c, $80, $2a, $09, $09, $09, $09, $09, $0a, $81
    db $6d, $6e, $6f, $6a, $70, $81, $2a, $0b, $0b, $0b, $09, $09, $0a, $81, $71, $72
    db $73, $74, $75, $81, $2a, $0c, $0c, $0c, $0c, $0c, $0a, $81, $76, $77, $7b, $7c
    db $78, $81, $2a, $0c, $0c, $08, $08, $0c, $0a, $63, $79, $79, $7d, $7e, $7a, $82
    db $0a, $08, $28, $08, $08, $08, $0a

; 7x6 cells.
C2Patch21:
    db $2f, $07, $06, $99, $9a, $99, $9b, $9d, $9c, $9d, $0a, $0a, $0a, $0a, $0a, $0a
    db $0a, $9e, $9f, $9e, $a0, $a2, $a1, $a2, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $a3
    db $a4, $a3, $a5, $a7, $a6, $a7, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $a3, $a4, $a3
    db $a5, $a7, $a6, $a7, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $a3, $a4, $a8, $7b, $7c
    db $a9, $a7, $0a, $0a, $0a, $08, $08, $0a, $0a, $aa, $ab, $ac, $7d, $7e, $ad, $ae
    db $0a, $0a, $0a, $08, $08, $0a, $0a

; 7x6 cells.
C2Patch22:
    db $2f, $07, $06, $62, $64, $88, $89, $8a, $64, $7f, $0a, $09, $09, $09, $09, $29
    db $0a, $80, $8b, $8c, $8d, $8e, $8f, $80, $2a, $09, $09, $09, $09, $09, $0a, $81
    db $6d, $6e, $6f, $90, $91, $81, $2a, $0b, $0b, $0b, $09, $09, $0a, $81, $92, $93
    db $73, $94, $95, $81, $2a, $0c, $0c, $0c, $0c, $0c, $0a, $81, $96, $97, $7b, $7c
    db $98, $81, $2a, $0c, $0c, $08, $08, $0c, $0a, $63, $79, $79, $7d, $7e, $7a, $82
    db $0a, $08, $28, $08, $08, $08, $0a

; 7x6 cells.
C2Patch23:
    db $2f, $07, $06, $99, $9a, $99, $9b, $9d, $9c, $9d, $0a, $0a, $0a, $0a, $0a, $0a
    db $0a, $9e, $9f, $9e, $a0, $a2, $a1, $a2, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $a3
    db $a4, $a3, $a5, $a7, $a6, $a7, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $a3, $a4, $a3
    db $a5, $a7, $a6, $a7, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $a3, $a4, $a8, $7b, $7c
    db $a9, $a7, $0a, $0a, $0a, $08, $08, $0a, $0a, $aa, $ab, $ac, $7d, $7e, $ad, $ae
    db $0a, $0a, $0a, $08, $08, $0a, $0a

; 4x6 cells.
C2Patch24:
    db $2f, $04, $06, $76, $77, $78, $79, $0a, $0a, $0a, $0a, $7a, $7b, $7c, $7d, $0a
    db $0a, $0a, $0a, $7e, $7f, $80, $81, $0a, $0a, $0a, $0a, $82, $83, $84, $85, $0a
    db $0a, $0a, $0a, $7a, $86, $87, $7d, $0a, $0a, $0a, $0a, $88, $89, $8a, $8b, $0a
    db $0a, $0a, $0a

; 4x6 cells.
C2Patch25:
    db $2f, $04, $06, $a0, $a1, $a1, $a0, $0a, $0a, $0a, $2a, $a2, $ff, $ff, $a2, $0a
    db $02, $02, $2a, $a2, $ff, $ff, $a2, $0a, $02, $02, $2a, $a2, $ff, $ff, $a2, $0a
    db $02, $02, $2a, $a2, $ff, $ff, $a2, $0a, $02, $02, $2a, $a3, $a4, $a5, $a6, $0a
    db $0a, $0a, $0a

; 4x6 cells.
C2Patch26:
    db $2f, $04, $06, $8c, $8d, $8e, $8f, $0a, $0a, $0a, $0a, $90, $91, $92, $93, $0a
    db $0a, $0a, $0a, $94, $95, $96, $97, $0a, $0a, $0a, $0a, $98, $99, $9a, $9b, $0a
    db $0a, $0a, $0a, $90, $91, $92, $93, $0a, $0a, $0a, $0a, $9c, $9d, $9e, $9f, $0a
    db $0a, $0a, $0a

; 4x6 cells.
C2Patch27:
    db $2f, $04, $06, $a0, $a1, $a1, $a0, $0a, $0a, $0a, $2a, $a2, $ff, $ff, $a2, $0a
    db $02, $02, $2a, $a2, $ff, $ff, $a2, $0a, $02, $02, $2a, $a2, $ff, $ff, $a2, $0a
    db $02, $02, $2a, $a2, $ff, $ff, $a2, $0a, $02, $02, $2a, $a3, $a4, $a5, $a6, $0a
    db $0a, $0a, $0a

; 4x7 cells.
C2Patch28:
    db $2f, $04, $07, $56, $57, $57, $56, $08, $08, $28, $28, $58, $59, $5a, $5b, $0b
    db $0b, $0b, $0b, $5c, $5d, $5e, $5f, $0b, $0b, $0b, $0b, $60, $61, $62, $63, $0b
    db $0b, $0b, $0b, $64, $65, $66, $67, $0b, $0b, $0b, $0b, $68, $69, $6a, $6b, $0b
    db $0b, $0b, $0b, $6c, $6d, $6e, $6f, $0b, $0b, $0b, $0b

; 4x7 cells.
C2Patch29:
    db $2f, $04, $07, $88, $88, $88, $88, $08, $08, $08, $08, $ff, $ff, $ff, $ff, $00
    db $00, $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $00
    db $00, $00, $00, $ff, $ff, $ff, $ff, $00, $00
jr_029_4910:
    db $00, $00, $89, $8a, $8a, $89, $0b, $0b, $2b, $2b, $8b, $8c, $8c, $8b, $0c, $0c
    db $2c, $2c

; 4x7 cells.
C2Patch2A:
    db $2f, $04, $07, $56, $57, $57, $56, $08, $08, $28, $28, $70, $71, $72, $73, $0b
    db $0b, $0b, $0b, $74, $75, $76, $77, $0b, $0b, $0b, $0b, $78, $79, $7a, $7b, $0b
    db $0b, $0b, $0b, $7c, $7d, $7e, $7f, $0b, $0b, $0b, $0b, $80, $81, $82, $83, $0b
    db $0b, $0b, $0b, $84, $85, $86, $87, $0b, $0b, $0b, $0b

; 4x7 cells.
C2Patch2B:
    db $2f, $04, $07, $88, $88, $88, $88, $08, $08, $08, $08, $ff, $ff, $ff, $ff, $00
    db $00, $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $00
    db $00, $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $89, $8a, $8a, $89, $0b
    db $0b, $2b, $2b, $8b, $8c, $8c, $8b, $0c, $0c, $2c, $2c

; 2x5 cells.
C2Patch2C:
    db $2f, $02, $05, $7b, $7c, $0d
jr_029_499e:
    db $0d, $7d, $7e, $0d, $0d, $7f, $80, $0d, $0d, $81, $82, $0d, $08, $83, $84, $08
    db $08

; 2x5 cells.
C2Patch2D:
    db $2f, $02, $05, $85, $86, $08, $08, $87, $88, $08, $08, $87, $88, $08, $08, $89
    db $82, $08, $08, $83, $84, $08, $08

; 2x3 cells.
C2Patch2E:
    db $2f, $02, $03, $6b, $6c, $0b, $0b, $6d, $6e, $0b, $0b, $6d, $6e, $0b, $0b

; 2x3 cells.
C2Patch2F:
    db $2f, $02, $03, $65, $66, $0b, $0b, $67, $68, $0b, $0b, $69, $6a, $0b, $0b

; 4x4 cells.
C2Patch30:
    db $2f, $04, $04, $7d, $7e, $7f, $80, $0b, $0b, $0b, $0b, $81, $82, $83, $84, $0b
    db $0b, $0b, $0b, $85, $86, $87, $88, $0b, $0b, $0b, $0b, $89, $8a, $8b, $8c, $0b
    db $0b, $0b, $0b

; 4x4 cells.
C2Patch31:
    db $2f, $04, $04, $8d, $ff, $ff, $8d, $0b, $00, $00, $2b, $8d, $ff, $ff, $8d, $0b
    db $00, $00, $2b, $8d, $8e, $8e, $8d, $0b, $09, $29, $2b, $8f, $90, $90, $8f, $09
    db $09, $29, $29

; 5x5 cells.
C2Patch32:
    db $2f, $05, $05, $77, $78, $79, $7a, $7b, $08, $08, $08, $08, $0b, $7c, $7d, $7e
    db $7f, $80, $08, $08, $08, $08, $0b, $81, $82, $83, $84, $85, $0b, $0b, $0b, $0d
    db $0c, $86, $87, $88, $89, $8a, $0b, $0b, $0b, $0d, $0c, $8b, $8c, $8d, $8e, $8f
    db $0d, $09, $09, $0a, $0c

; 5x5 cells.
C2Patch33:
    db $2f, $05, $05, $90, $91, $92, $93, $7b, $08, $08, $08, $08, $0b, $94, $95, $96
    db $97, $98, $08, $08, $08, $08, $0b, $99, $9a, $9b, $9c, $9d, $0b, $0d, $0e, $0e
    db $0c, $9e, $9f, $a0, $a1, $a2, $0b, $0a, $0e, $0e, $0c, $a3, $a4, $a5, $a6, $a7
    db $0a, $0a, $0e, $0e, $0c

; 3x9 cells.
C2Patch34:
    db $2f, $03, $09, $8d, $94, $95, $08, $0d, $0b, $8d, $94, $96, $08, $0d, $0b, $8d
    db $97, $98, $08, $0d, $0b, $8e, $99, $9a, $08, $0e, $0e, $8f, $9b, $9c, $08, $0e
    db $0e, $90, $9d, $9e, $08, $0e, $0e, $91, $9f, $a0, $08, $0e, $0e, $92, $a1, $a2
    db $08, $0e, $0e, $93, $a3, $a4, $08, $08, $08

; 3x9 cells.
C2Patch35:
    db $2f, $03, $09, $ab, $ac, $ad, $08, $08, $08, $ab, $ac, $ad, $08, $08, $08, $ab
    db $ae, $af, $08, $08, $08, $b0, $b1, $b2, $08, $0e, $0e, $b3, $b4, $b5, $08, $0e
    db $0e, $b6, $b7, $b8, $08, $0e, $0e, $b9, $ba, $bb, $08, $0e, $0e, $bc, $bd, $be
    db $08, $08, $08, $93, $a3, $bf, $08, $08, $08

; 3x9 cells.
C2Patch36:
    db $2f, $03, $09, $8d, $a5, $a6, $08, $0d, $0b, $8d, $a7, $a8, $08, $0d, $0b, $8d
    db $a9, $aa, $08, $0d, $0b, $8e, $99, $9a, $08, $0e, $0e, $8f, $9b, $9c, $08, $0e
    db $0e, $90, $9d, $9e, $08, $0e, $0e, $91, $9f, $a0, $08, $0e, $0e, $92, $a1, $a2
    db $08, $0e, $0e, $93, $a3, $a4, $08, $08, $08

; 3x9 cells.
C2Patch37:
    db $2f, $03, $09, $ab, $ac, $ad, $08, $08, $08, $ab, $ac, $ad, $08, $08, $08, $ab
    db $ae, $af, $08, $08, $08, $b0, $b1, $b2, $08, $0e, $0e, $b3, $b4, $b5, $08, $0e
    db $0e, $b6, $b7, $b8, $08, $0e, $0e, $b9, $ba, $bb, $08, $0e, $0e, $bc, $bd, $be
    db $08, $08, $08, $93, $a3, $bf, $08, $08, $08

; 2x7 cells.
C2Patch38:
    db $2f, $02, $07, $9b, $9b, $09, $29, $9c, $9d, $09, $09, $9e, $9f, $09, $09, $a0
    db $a1, $09, $0e, $a2, $a3, $09, $09, $a4, $a5, $09, $09, $a6, $a7, $09, $0a

; 2x7 cells.
C2Patch39:
    db $2f, $02, $07, $ff, $ff, $00, $00, $ff, $ff, $00, $00, $ff, $ff, $00, $00, $ff
    db $ff, $00, $00, $ff, $ff, $00, $00, $ff, $ff, $00, $00, $a8, $a8, $09, $29

; 5x11 cells.
C2Patch3A:
    db $2f, $05, $0b, $a7, $a8, $a9, $aa, $ab, $0b, $0b, $0b, $0b, $0b, $a7, $a8, $a9
    db $aa, $ab, $0b, $0b, $0b, $0b, $0b, $a7, $a8, $a9, $aa, $ab, $0b, $0b, $0b, $0b
    db $0b, $a7, $a8, $a9, $aa, $ab, $0b, $0b, $0b, $0b, $0b, $a7, $a8, $a9, $aa, $ab
    db $0b, $0b, $0b, $0b, $0b, $a7, $a8, $a9, $aa, $ab, $0b, $0b, $0b, $0b, $0b, $a7
    db $a8, $a9, $aa, $ab, $0b, $0b, $0b, $0b, $0b, $a7, $a8, $a9, $aa, $ab, $0b, $0b
    db $0b, $0b, $0b, $a7, $a8, $a9, $aa, $ab, $0b, $0b, $0b, $0b, $0b, $ac, $ad, $ae
    db $af, $b0, $0b, $0b, $0b, $0b, $0b, $b1, $b2, $b3, $b4, $b5, $09, $09, $09, $09
    db $09

; 5x11 cells.
C2Patch3B:
    db $2f, $05, $0b, $a7, $a8, $a9, $aa, $ab, $0b, $0b, $0b, $0b, $0b, $a7, $a8, $a9
    db $aa, $ab, $0b, $0b, $0b, $0b, $0b, $a7, $a8, $a9, $aa, $ab, $0b, $0b, $0b, $0b
    db $0b, $a7, $a8, $a9, $aa, $ab, $0b, $0b, $0b, $0b, $0b, $a7, $a8, $a9, $aa, $ab
    db $0b, $0b, $0b, $0b, $0b, $a7, $a8, $a9, $aa, $ab, $0b, $0b, $0b, $0b, $0b, $a7
    db $a8, $a9, $aa, $ab, $0b, $0b, $0b, $0b, $0b, $a7, $a8, $a9, $aa, $ab, $0b, $0b
    db $0b, $0b, $0b, $a7, $a8, $a9, $aa, $ab, $0b, $0b, $0b, $0b, $0b, $ac, $ad, $ae
    db $af, $b0, $0b, $0b, $0b, $0b, $0b, $b1, $b2, $b3, $b4, $b5, $09, $09, $09, $09
    db $09

; 5x11 cells.
C2Patch3C:
    db $2f, $05, $0b, $a2, $84, $85, $86, $a3, $0b, $0a, $0a, $0a, $0b, $a2, $87, $88
    db $88, $a3, $0b, $08, $0c, $0c, $0b, $a2, $89, $8a, $8b, $a3, $0b, $08, $0c, $0c
    db $0b, $a2, $89, $8c, $8d, $a3, $0b, $08, $0c, $0c, $0b, $a2, $89, $8e, $8f, $a3
    db $0b, $08, $0a, $0c, $0b, $a2, $89, $90, $91, $a3, $0b, $08, $0a, $0c, $0b, $a2
    db $89, $8c, $8d, $a3, $0b, $08, $0c, $0c, $0b, $a2, $89, $92, $93, $a3, $0b, $08
    db $0a, $0a, $0b, $a2, $95, $96, $97, $a3, $0b, $09, $09, $09, $0b, $98, $99, $9a
    db $9b, $9c, $0b, $09, $09, $09, $0b, $9d, $9e, $9f, $a0, $a1, $09, $09, $09, $09
    db $09

; 5x11 cells.
C2Patch3D:
    db $2f, $05, $0b, $a2, $84, $85, $86, $a3, $0b, $0a, $0a, $0a, $0b, $a2, $87, $a4
    db $a4, $a3, $0b, $08, $08, $08, $0b, $a2, $89, $ff, $ff, $a3, $0b, $08, $00, $00
    db $0b, $a2, $89, $ff, $ff, $a3, $0b, $08, $00, $00, $0b, $a2, $89, $ff, $ff, $a3
    db $0b, $08, $00, $00, $0b, $a2, $89, $ff, $ff, $a3, $0b, $08, $00, $00, $0b, $a2
    db $89, $ff, $ff, $a3, $0b, $08, $00, $00, $0b, $a2, $89, $a5, $a6, $a3, $0b, $08
    db $08, $08, $0b, $a2, $95, $96, $97, $a3, $0b, $09, $09, $09, $0b, $98, $99, $9a
    db $9b, $9c, $0b, $09, $09, $09, $0b, $9d, $9e, $9f, $a0, $a1, $09, $09, $09, $09
    db $09

; 3x5 cells.
C2Patch3E:
    db $2f, $03, $05, $4a, $4b, $4c, $0b, $0b, $0b, $4d, $4e, $4f, $0b, $0b, $0b, $50
    db $51, $52, $0d, $0d, $0d, $53, $54, $55, $0b, $0b, $0b, $56, $57, $58, $0b, $0b
    db $0b

; 3x5 cells.
C2Patch3F:
    db $2f, $03, $05, $ff, $59, $5a, $00, $0b, $0b, $5b, $ff, $ff, $0b, $00, $00, $5c
    db $ff, $5d, $0d, $00, $0d, $5f, $ff, $5e, $0b, $00, $0b, $60, $61, $ff, $0b, $0b
    db $00

; 6x5 cells.
C2Patch40:
    db $2f, $06, $05, $62, $63, $64, $65, $66, $67, $0c, $0c, $0c, $0c, $0c, $0c, $62
    db $68, $69, $6a, $6b, $6c, $0c, $0c, $0c, $0c, $0c, $0c, $6d, $6e, $6f, $70, $71
    db $72, $0c, $0c, $0c, $0c, $0c, $0c, $73, $74, $75, $76, $77, $78, $0c, $0c, $0c
    db $0c, $0c, $0c, $79, $7a, $7b, $7c, $7d, $7e, $0c, $0c, $0c, $0c, $0c, $0c

; 6x5 cells.
C2Patch41:
    db $2f, $06, $05, $62, $63, $64, $65, $66, $67, $0c, $0c, $0c, $0c, $0c, $0c, $62
    db $68, $69, $6a, $6b, $6c, $0c, $0c, $0c, $0c, $0c, $0c, $6d, $6e, $6f, $70, $71
    db $72, $0c, $0c, $0c, $0c, $0c, $0c, $73, $74, $75, $76, $77, $78, $0c, $0c, $0c
    db $0c, $0c, $0c, $79, $7a, $7b, $7c, $7d, $7e, $0c, $0c, $0c, $0c, $0c, $0c

; 4x3 cells.
C2Patch42:
    db $2f, $04, $03, $7f, $80, $81, $82, $08, $08, $08, $08, $83, $84, $85, $86, $08
    db $08, $08, $08, $87, $88, $89, $8a, $08, $08, $08, $08

; 4x3 cells.
C2Patch43:
    db $2f, $04, $03, $8b, $8c, $8d, $8e, $08, $08, $08, $08, $8f, $90, $91, $92, $08
    db $08, $08, $08, $93, $94, $95, $96, $08, $08, $08, $08

; 3x9 cells.
C2Patch44:
    db $2f, $03, $09, $57, $58, $58, $09, $09, $09, $59, $5a, $5b, $09, $09, $09, $59
    db $5c, $5d, $09, $09, $0b, $59, $5e, $5f, $09, $09, $09, $60, $5d, $5d, $0d, $0b
    db $0b, $61, $5a, $5b, $0d, $09, $09, $59, $5c, $5d, $09, $09, $0b, $59, $5e, $5f
    db $09, $09, $09, $57, $58, $58, $49, $49, $49

; 3x9 cells.
C2Patch45:
    db $2f, $03, $09, $ff, $ff, $ff, $00, $00, $00, $62, $63, $ff, $08, $08, $00, $64
    db $65, $ff, $08, $08, $00, $64, $65, $ff, $08, $08, $00, $66, $67, $ff, $0d, $0d
    db $00, $68, $69, $ff, $09, $09, $00, $68, $69, $ff, $09, $09, $00, $6a, $6b, $6c
    db $09, $0d, $08, $6d, $6e, $6f, $0c, $0c, $0c

; 2x8 cells.
C2Patch46:
    db $2f, $02, $08, $b8, $be, $0c, $09, $b9, $bf, $0c, $09, $b9, $c0, $0c, $09, $b9
    db $c1, $0c, $09, $ba, $bb, $0c, $08, $bc, $c2, $0c, $08, $bc, $c3, $0c, $08, $bd
    db $c4, $0c, $0b

; 2x8 cells.
C2Patch47:
    db $2f, $02, $08, $ff, $be, $00, $09, $ff, $bf, $00, $09, $ff, $c0, $00, $09, $ff
    db $c1, $00, $09, $c6, $c5, $0c, $08, $c7, $c2, $0c, $08, $c8, $c3, $0c, $08, $c9
    db $c4, $0b, $0b

; 2x4 cells.
C2Patch48:
    db $2f, $02, $04, $a9, $aa, $09, $0c, $ab, $ac, $09, $0c, $ad, $ae, $0a, $0c, $af
    db $af, $09, $09

; 2x4 cells.
C2Patch49:
    db $2f, $02, $04, $b0, $b1, $09, $08, $b2, $b3, $09, $08, $b4, $b5, $09, $08, $b6
    db $b7, $09, $09

; 6x5 cells.
C2Patch4A:
    db $2f, $06, $05, $77, $78, $79, $77, $78, $79, $0d, $0d, $0d, $0d, $0d, $0d, $7e
    db $7a, $7b, $7c, $7d, $7e, $0d, $0d, $0d, $0d, $0d, $0d, $7f, $80, $81, $82, $83
    db $84, $0d, $0d, $0d, $0d, $0d, $0d, $85, $86, $87, $88, $89, $8a, $0d, $0d, $0d
    db $0d, $0d, $0d, $8b, $8c, $8d, $7e, $7e, $7e, $0d, $0d, $0d, $0d, $0d, $0d

; 6x5 cells.
C2Patch4B:
    db $2f, $06, $05, $8e, $8f, $90, $91, $92, $93, $08, $08, $08, $08, $08, $08, $94
    db $95, $96, $97, $98, $99, $08, $08, $08, $08, $08, $08, $99, $9a, $9b, $9b, $9b
    db $9c, $08, $08, $08, $08, $08, $08, $9d, $9e, $9f, $a0, $a1, $a2, $08, $08, $08
    db $08, $08, $08, $a3, $a4, $a5, $a6, $a7, $a8, $08, $08, $08, $08, $08, $08

; 4x14 cells.
C2Patch4C:
    db $2f, $04, $0e, $78, $79, $7a, $97, $09, $09, $09, $08, $7b, $7c, $7d, $98, $09
    db $09, $09, $08, $7e, $7f, $80, $99, $09, $09, $09, $08, $81, $82, $83, $97, $09
    db $09, $09, $08, $84, $85, $86, $98, $09, $09, $09, $08, $87, $88, $89, $99, $09
    db $09, $09, $08, $8a, $82, $83, $97, $09, $09, $09, $08, $8b, $8c, $8d, $98, $09
    db $09, $09, $08, $87, $8e, $8f, $99, $09, $09, $09, $08, $90, $82, $91, $97, $09
    db $09, $09, $08, $92, $93, $94, $98, $09, $09, $09, $08, $95, $96, $89, $99, $09
    db $09, $09, $08, $78, $82, $7a, $97, $09, $09, $09, $08, $7b, $7c, $7d, $98, $09
    db $09, $09, $08

; 4x14 cells.
C2Patch4D:
    db $2f, $04, $0e, $9e, $9a, $9b, $9c, $08, $08, $0a, $0a, $9d, $9e, $9f, $a1, $08
    db $08, $08, $0a, $9e, $9d, $a0, $a2, $08, $08, $08, $0a, $9d, $9e, $9f, $a3, $08
    db $08, $08, $0a, $9e, $9d, $a0, $a4, $08, $08, $08, $0a, $9d, $9e, $9f, $a5, $08
    db $08, $08, $0a, $9e, $9d, $a0, $a6, $08, $08, $08, $0a, $9d, $9e, $9f, $a7, $08
    db $08, $08, $0a, $9e, $9d, $a0, $a8, $08, $08, $08, $0a, $9d, $9e, $9f, $a9, $08
    db $08, $08, $0a, $9e, $9d, $a0, $aa, $08, $08, $08, $0a, $9d, $9e, $9f, $ab, $08
    db $08, $08, $0a, $9e, $9d, $a0, $ac, $08, $08, $08, $0a, $9d, $9e, $9f, $ad, $08
    db $08, $08, $0a

; 1x9 cells.
C2Patch4E:
    db $2f, $01, $09, $6c, $0d, $6d, $0d, $6e, $0d, $6f, $0d, $70, $0d, $71, $0d, $72
    db $0d, $73, $0d, $74, $0d

; 1x9 cells.
C2Patch4F:
    db $2f, $01, $09, $75, $0a, $75, $0a, $76, $0a, $75, $0a, $75, $0a, $76, $0a, $75
    db $0a, $75, $0a, $77, $0a

; 3x8 cells.
C2Patch50:
    db $2f, $03, $08, $48, $49, $4a, $0c, $0c, $0b, $4b, $4c, $4d, $0c, $0c, $0b, $4e
    db $4f, $50, $0c, $0c, $0b, $4e, $4f, $51, $0c, $0c, $0b, $4e, $4f, $52, $0c, $0c
    db $0b, $4e, $4f, $53, $0c, $0c, $0b, $55, $56, $54, $0c, $0c, $0b, $57, $58, $59
    db $0c, $0c, $0b

; 3x8 cells.
C2Patch51:
    db $2f, $03, $08, $5a, $5b, $5c, $0b, $0b, $0b, $ff, $5d, $5e, $00, $0b, $0b, $ff
    db $5f, $60, $00, $0b, $0b, $ff, $61, $62, $00, $0b, $0b, $ff, $63, $64, $00, $0b
    db $0b, $ff, $65, $66, $00, $0b, $0b, $ff, $67, $68, $00, $0b, $0b, $69, $6a, $6b
    db $0b, $0b, $0b

; 3x6 cells.
C2Patch52:
    db $2f, $03, $06, $99, $9a, $ff, $08, $08, $00, $9b, $9c, $9d, $08, $08, $08, $9e
    db $9f, $a0, $08, $08, $08, $a1, $a2, $a3, $08, $08, $08, $a4, $a5, $a6, $0c, $08
    db $08, $96, $97, $81, $08, $08, $08

; 3x6 cells.
C2Patch53:
    db $2f, $03, $06, $8e, $ff, $ff, $08, $00, $00, $8f, $ff, $ff, $08, $00, $00, $90
    db $ff, $ff, $08, $00, $00, $91, $92, $ff, $08, $08, $00, $93, $94, $95, $0c, $08
    db $08, $96, $97, $98, $08, $08, $08

; 1x8 cells.
C2Patch54:
    db $2f, $01, $08, $9a, $0e, $9b, $0c, $9c, $0c, $9c, $0c, $9d, $0c, $9c, $0c, $9c
    db $0c, $9e, $0d

; 1x8 cells.
C2Patch55:
    db $2f, $01, $08, $9f, $0e, $a0, $09, $a1, $09, $a2, $09, $a2, $09, $a2, $09, $a2
    db $09, $a3, $0a

; 6x7 cells.
C2Patch56:
    db $2f, $06, $07, $51, $52, $53, $54, $55, $56, $0c, $0c, $0c, $0c, $0c, $0c, $57
    db $58, $59, $5a, $58, $5b, $0c, $0a, $0c, $0c, $0a, $0c, $57, $58, $59, $5a, $58
    db $5b, $0c, $0a, $0c, $0c, $0a, $0c, $5c, $5d, $5e, $5f, $60, $61, $0c, $0c, $0c
    db $0c, $0c, $0c, $62, $63, $64, $65, $66, $67, $0c, $0c, $0c, $0c, $0c, $0c, $68
    db $69, $6a, $6b, $6c, $6d, $0c, $0c, $0c, $0c, $0c, $0c, $6e, $6f, $70, $71, $72
    db $73, $0c, $0c, $0c, $0c, $0c, $0c

; 6x7 cells.
C2Patch57:
    db $2f, $06, $07, $ff, $74, $75, $75, $ff, $ff, $00, $0b, $0b, $2b, $00, $00, $76
    db $77, $78, $78, $ff, $ff, $0e, $0e, $0e, $2e, $00, $00, $79, $7a, $7b, $7c, $7d
    db $7e, $0b, $0e, $0e, $0e, $0e, $0b, $7f, $80, $81, $82, $83, $84, $0b, $0e, $0e
    db $0e, $0e, $0b, $ff, $85, $86, $87, $88, $ff, $00, $0b, $0b, $0b, $0b, $00, $89
    db $8a, $8b, $8c, $8d, $ff, $0b, $0b, $0b, $0b, $0b, $00, $8e, $8f, $90, $91, $92
    db $ff, $0b, $0b, $0b, $0b, $0b, $00

; 3x7 cells.
; Sugar wardrobe patch: closed, mirror intact.
C2PatchSugarWardrobeClosedIntact:
C2Patch58:
    db $2f, $03, $07, $84, $85, $86, $0e, $0e, $0e, $87, $88, $89, $0a, $0a, $0e, $8a
    db $8b, $89, $0a, $0b, $0e, $8c, $8d, $89, $0a, $0b, $0e, $8e, $8f, $90, $0a, $0b
    db $0e, $91, $92, $93, $0a, $0a, $0e, $94, $95, $96, $0e, $0e, $0e

; 3x7 cells.
; Sugar wardrobe patch: open, mirror intact.
C2PatchSugarWardrobeOpenIntact:
C2Patch59:
    db $2f, $03, $07, $97, $98, $99, $0e, $0e, $0e, $9a, $ff, $9b, $0a, $00, $0e, $9a
    db $ff, $9b, $0a, $00, $0e, $9a, $ff, $9b, $0a, $00, $0e, $9a, $ff, $9c, $0a, $00
    db $0e, $9d, $9e, $9f, $0e, $0e, $0e, $94, $95, $a0, $0e, $0e, $0e

; 3x7 cells.
; Sugar wardrobe patch: closed, mirror broken.
C2PatchSugarWardrobeClosedBroken:
C2Patch5A:
    db $2f, $03, $07, $84, $85, $86, $0e, $0e, $0e, $a1, $a2, $89, $0a, $0a, $0e, $a3
    db $a4, $89, $0a, $0b, $0e, $a5, $a6, $89, $0a, $0b, $0e, $a7, $a8, $90, $0a, $0b
    db $0e, $a9, $aa, $93, $0a, $0a, $0e, $94, $95, $a0, $0e, $0e, $0e

; 3x7 cells.
; Sugar wardrobe patch: open, mirror broken.
C2PatchSugarWardrobeOpenBroken:
C2Patch5B:
    db $2f, $03, $07, $97, $98, $99, $0e, $0e, $0e, $9a, $ff, $9b, $0a, $00, $0e, $9a
    db $ff, $9b, $0a, $00, $0e, $9a, $ff, $9b, $0a, $00, $0e, $9a, $ff, $9c, $0a, $00
    db $0e, $9d, $9e, $9f, $0e, $0e, $0e, $94, $95, $a0, $0e, $0e, $0e

; 4x6 cells.
C2Patch5C:
    db $2f, $04, $06, $7c, $7d, $7e, $7f, $0b, $0b, $0b, $0b, $80, $81, $82, $83, $0b
    db $0b, $0b, $0b, $84, $85, $86, $87, $0b, $0b, $0b, $0b, $88, $89, $8a, $8b, $0b
    db $0b, $0b, $0b, $8c, $8d, $8e, $8f, $0b, $0b, $0b, $0b, $90, $91, $92, $93, $0b
    db $0b, $0b, $0b

; 4x6 cells.
C2Patch5D:
    db $2f, $04, $06, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $00
    db $00, $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $00
    db $00, $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $a0, $a1, $a2, $a3, $0a
    db $0a, $0a, $0a

; 4x6 cells.
C2Patch5E:
    db $2f, $04, $06, $94, $95, $96, $97, $0b, $0b, $0b, $0b, $98, $99, $9a, $9b, $0b
    db $0b, $0b, $0b, $9c, $9d, $9e, $9f, $0b, $0b, $0b, $0b, $88, $89, $8a, $8b, $0b
    db $0b, $0b, $0b, $8c, $8d, $8e, $8f, $0b, $0b, $0b, $0b, $90, $91, $92, $93, $0b
    db $0b, $0b, $0b

; 4x6 cells.
C2Patch5F:
    db $2f, $04, $06, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $00
    db $00, $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $00
    db $00, $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $a0, $a1, $a2, $a3, $0a
    db $0a, $0a, $0a

; 2x4 cells.
C2Patch60:
    db $2f, $02, $04, $99, $9a, $0b, $0b, $9b, $9c, $0b, $0b, $9d, $9e, $0b, $0b, $9f
    db $a0, $0b, $0b

; 2x4 cells.
C2Patch61:
    db $2f, $02, $04, $ff, $ff, $00, $00, $ff, $ff, $00, $00, $ff, $ff, $00, $00, $a1
    db $a2, $0b, $0b

; 6x6 cells.
C2Patch62:
    db $2f, $06, $06, $55, $56, $57, $58, $59, $5a, $0b, $0b, $0a, $0a, $0a, $0a, $5b
    db $5c, $5d, $5e, $5f, $60, $0b, $0b, $0a, $0a, $0a, $08, $61, $62, $63, $64, $65
    db $66, $0c, $0c, $09, $09, $09, $08, $67, $68, $69, $6a, $6b, $6c, $09, $09, $09
    db $09, $09, $08, $6d, $6e, $6f, $70, $71, $72, $09, $09, $09, $09, $09, $08, $73
    db $74, $75, $76, $77, $78, $09, $09, $09, $09, $09, $09

; 6x6 cells.
C2Patch63:
    db $2f, $06, $06, $55, $79, $57, $7a, $59, $5a, $0b, $0a, $0a, $0a, $0a, $0a, $7b
    db $7c, $7d, $7e, $7f, $80, $0c, $0c, $09, $09, $09, $08, $81, $82, $83, $84, $85
    db $86, $0c, $0c, $09, $09, $09, $08, $87, $88, $89, $8a, $8b, $8c, $09, $09, $09
    db $09, $09, $08, $8d, $8e, $8f, $90, $91, $92, $09, $09, $09, $09, $09, $08, $93
    db $94, $95, $96, $97, $98, $09, $09, $09, $09, $09, $08

; 4x5 cells.
C2Patch64:
    db $2f, $04, $05, $a4, $a5, $a6, $a7, $08, $08, $08, $08, $a8, $60, $60, $a9, $08
    db $08, $08, $08, $aa, $60, $ab, $ac, $08, $08, $08, $08, $ad, $ae, $ae, $af, $08
    db $08, $08, $08, $b0, $b1, $b2, $b3, $08, $08, $08, $08

; 4x5 cells.
C2Patch65:
    db $2f, $04, $05, $b4, $b5, $b6, $b3, $08, $08, $08, $08, $b7, $ff, $b8, $b3, $08
    db $00, $08, $08, $b9, $ba, $bb, $b3, $08, $09, $09, $08, $bc, $bd, $be, $bf, $08
    db $09, $09, $08, $c0, $c1, $c1, $c2, $08, $08, $08, $08

; 9x6 cells.
C2Patch66:
    db $2f, $09, $06, $60, $61, $62, $63, $60, $64, $65, $66, $67, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $60, $61, $62, $63, $60, $68, $60, $60, $69, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $60, $61, $62, $63, $60, $6c, $60, $60, $69
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $60, $61, $62, $63, $60, $6d, $60
    db $6a, $6b, $08, $08, $08, $08, $08, $08, $08, $08, $08, $60, $61, $62, $63, $60
    db $6e, $60, $60, $69, $08, $08, $08, $08, $08, $08, $08, $08, $08, $73, $74, $75
    db $63, $60, $6f, $70, $71, $72, $08, $08, $08, $08, $08, $08, $08, $08, $08

; 9x6 cells.
C2Patch67:
    db $2f, $09, $06, $60, $61, $76, $77, $78, $79, $7a, $7b, $7c, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $60, $61, $7d, $60, $60, $7e, $7f, $80, $81, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $60, $82, $83, $60, $84, $85, $86, $87, $88
    db $08, $09, $09, $08, $08, $08, $08, $08, $08, $89, $8a, $8b, $8c, $8d, $8e, $8f
    db $90, $91, $08, $09, $09, $08, $08, $08, $08, $08, $08, $92, $93, $94, $95, $96
    db $97, $98, $99, $9a, $08, $08, $09, $08, $08, $08, $08, $08, $08, $9b, $9c, $9d
    db $9e, $9f, $a0, $a1, $a2, $a3, $08, $08, $08, $08, $08, $08, $08, $08, $08

; 14x2 cells.
C2Patch68:
    db $2f, $0e, $02, $68, $69, $6d, $6d, $6d, $6d, $6d, $55, $6d, $6d, $6d, $6d, $69
    db $68, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $2d, $2d, $6a
    db $6b, $6c, $6e, $6e, $6e, $6e, $6e, $6e, $6e, $6e, $6c, $6b, $6a, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $2d, $2d, $2d

; 14x2 cells.
C2Patch69:
    db $2f, $0e, $02, $56, $57, $58, $59, $5a, $5b, $5c, $5c, $5b, $5a, $59, $58, $64
    db $65, $0d, $0d, $0e, $08, $08, $08, $08, $28, $28, $28, $28, $2e, $0e, $0e, $5d
    db $5e, $5f, $60, $61, $62, $63, $63, $62, $61, $60, $5f, $66, $67, $0d, $0d, $0e
    db $0e, $08, $08, $08, $28, $28, $28, $2e, $2e, $0d, $0d

; 5x3 cells.
C2Patch6A:
    db $2f, $05, $03, $48, $49, $4a, $4b
jr_029_5651:
    db $4c, $0a
jr_029_5653:
    db $0a, $0a, $0a, $0a, $4d, $4e, $4f, $50, $51, $0a, $0a, $0a, $0a, $0a, $52, $53
    db $54, $55, $56, $0a, $0a, $0a, $0a, $0a

; 5x3 cells.
C2Patch6B:
    db $2f, $05
jr_029_566d:
    db $03, $39, $3a, $3b, $3c, $3d, $0a, $0a
jr_029_5675:
    db $0a, $0a, $0a, $3e, $3f, $40, $41, $42, $0a, $0a, $0a, $0a, $0a, $43, $44, $45
    db $46, $47, $0a, $0a, $0a, $0a, $0a

; 2x6 cells.
C2Patch6C:
    db $2f, $02, $06, $0e, $0f, $0b, $0c, $63, $64, $0b, $0c, $65, $66, $0b, $0c, $67
    db $68, $0b, $0c, $69, $6a, $0b, $0c, $6b, $6c, $0b, $0c

; 2x6 cells.
C2Patch6D:
    db $2f, $02, $06, $6d, $0f, $08, $0c, $6e, $6f, $08, $0c, $70, $71, $08, $0c, $70
    db $73, $08, $0c, $74, $75, $08, $0c, $76, $77, $0b, $0c

; 2x7 cells.
C2Patch6E:
    db $2f, $02, $07, $20, $2d, $0c, $0c, $21, $2e, $0c, $0a, $22, $2f, $0c, $0a, $23
    db $30, $0d, $0a, $21, $31, $0c, $0a, $24, $2b, $0c, $0c, $25, $2c, $0c, $0c

; 2x7 cells.
C2Patch6F:
jr_029_56e1:
    db $2f, $02, $07, $5d, $5e, $0c, $0c, $5f, $ff, $0c, $04, $5f, $ff, $0c, $04, $5f
    db $ff, $0c, $04
jr_029_56f4:
    db $5f, $ff, $0c, $04, $5f, $ff, $0c, $04, $60, $61, $0c, $0c

; 2x7 cells.
C2Patch70:
    db $2f, $02, $07, $20, $26, $0c, $0c, $21, $27, $0c, $0a, $22, $28, $0c, $0a, $23
    db $29, $0d, $0a, $21, $2a, $0c, $0a, $24, $2b, $0c
jr_029_571a:
    db $0c, $25, $2c, $0c, $0c

; 2x7 cells.
C2Patch71:
    db $2f, $02, $07, $5d, $5e, $0c, $0c, $5f, $ff, $0c, $04, $5f
jr_029_572b:
    db $ff, $0c, $04, $5f, $ff, $0c, $04, $5f, $ff, $0c, $04, $5f, $ff, $0c, $04, $60
    db $61, $0c, $0c

; 5x6 cells.
; Laundry map patch while C2StateLaundryUntied is clear.
C2PatchLaundryBound:
C2Patch72:
    db $2f, $05, $06, $7e, $7f, $80, $81, $82, $0b, $0b, $0b, $0b, $0b, $83, $84, $85
    db $86, $87, $0b, $0a, $0a, $0a, $0b, $88, $89, $8a, $8b, $8c, $0b, $0e, $0e, $0e
    db $0a, $8d, $8e, $8f, $90, $91, $0e, $0e, $0e, $0e, $0e, $92, $93, $94, $95, $96
    db $0a, $0a, $0a, $0a, $0a, $97, $98, $99, $9a, $9b, $0a, $0a, $0a, $0a, $0a

; 5x6 cells.
; Laundry map patch while C2StateLaundryUntied is set.
C2PatchLaundryUntied:
C2Patch73:
    db $2f, $05, $06, $69, $6a, $6a, $6a, $69, $09, $09, $09, $09, $29, $6b, $6c, $6c
    db $6c, $6b, $0c, $09, $09, $09, $2c, $6d, $6e, $6e, $6e, $6d, $0c, $09, $09, $09
    db $2c, $6f, $70, $71, $72, $73, $0d, $0a, $0a, $0d, $0d, $74, $75, $76, $77, $78
    db $0a, $0a, $0a, $0a, $0a, $79, $7a, $7b, $7c, $7d, $0a, $0a, $0a, $0a, $0a

; 3x9 cells.
C2Patch74:
    db $2f, $03, $09, $73, $74, $6f, $0d, $0d, $08, $75, $76, $70, $0d, $0d, $08, $77
    db $78, $70, $0d, $0d, $08, $79, $7a, $71, $0d, $0d, $08, $79, $7b, $72, $0d, $0d
    db $08, $7c, $7d, $48, $0b, $0b, $08, $80, $81, $3f, $0b, $0b, $08, $82, $83, $35
    db $0b, $0b, $08, $84, $29, $2a, $0b, $08, $08

; 3x9 cells.
C2Patch75:
    db $2f, $03, $09, $9f, $a0, $6f, $0d, $0d, $08, $7e, $a1, $70, $0c, $0d, $08, $a2
    db $a3, $70, $0d, $0d, $08, $7f, $a4, $95, $08, $09, $08, $a5, $a6, $96, $09, $09
    db $08, $7e, $a1, $48, $09, $09, $08, $a7, $a8, $3f, $09, $09, $08, $a9, $aa, $35
    db $09, $09, $08, $ab, $29, $2a, $09, $08, $08

; 3x9 cells.
C2Patch76:
    db $2f, $03, $09, $73, $74, $6f, $0d, $0d, $08, $75, $76, $70, $0d, $0d, $08, $77
    db $78, $70, $0d, $0d, $08, $97, $98, $71, $0b, $0b, $08, $99, $9a, $72, $0b, $0b
    db $08, $9b, $9c, $48, $0b, $0b, $08, $80, $81, $3f, $0b, $0b, $08, $82, $83, $35
    db $0b, $0b, $08, $84, $29, $2a, $0b, $08, $08

; 3x9 cells.
C2Patch77:
    db $2f, $03, $09, $9f, $a0, $6f, $0d, $0d, $08, $7e, $a1, $70, $0c, $0d, $08, $a2
    db $a3, $70, $0d, $0d, $08, $7f, $a4, $95, $08, $09, $08, $a5, $a6, $96, $09, $09
    db $08, $7e, $a1, $48, $09, $09, $08, $a7, $a8, $3f, $09, $09, $08, $a9, $aa, $35
    db $09, $09, $08, $ab, $29, $2a, $09, $08, $08

; 2x3 cells.
C2Patch78:
    db $2f, $02, $03, $85, $86, $0e, $0e, $87, $88, $0c, $0c, $89, $8a, $0e, $0e

; 2x3 cells.
C2Patch79:
    db $2f, $02, $03, $ac, $ad, $0e, $0e, $ae, $af, $0c, $0c, $b0, $b1, $0e, $0e

; 3x5 cells.
C2Patch7A:
    db $2f, $03, $05, $7f, $5f, $8c, $0a, $0a, $08, $60, $61, $8d, $0a, $0a, $08, $62
    db $63, $8e, $0a, $0a, $08, $91, $92, $8f, $0a, $0a, $08, $93, $94, $90, $0a, $0a
    db $08

; 3x5 cells.
C2Patch7B:
    db $2f, $03, $05, $7f, $5f, $ff, $0a, $0a, $00, $60, $61, $ff, $0a, $0a, $00, $62
    db $63, $ff, $0a, $0a, $00, $91, $92, $ff, $0a, $0a, $00, $93, $94, $b2, $0a, $0a
    db $08

; 3x5 cells.
C2Patch7C:
    db $2f, $03, $05, $7f, $5f, $8c, $0a, $0a, $08, $60, $61, $8d, $0a, $0a, $08, $62
    db $63, $8e, $0a, $0a, $08, $b3, $b4, $b5, $0a, $08, $08, $b6, $b7, $b8, $0a, $08
    db $08

; 3x5 cells.
C2Patch7D:
    db $2f, $03, $05, $7f, $5f, $ff, $0a, $0a, $00, $60, $61, $ff, $0a, $0a, $00, $62
    db $63, $ff, $0a, $0a, $00, $b3, $b4, $b9, $0a, $08, $08, $b6, $b7, $ba, $0a, $08
    db $08

; 7x8 cells.
C2Patch7E:
    db $2f, $07, $08, $00, $01, $01, $01, $02, $03, $04, $09, $09, $09, $09, $09, $09
    db $09, $10, $06, $07, $08, $12, $13, $14, $09, $0a, $0a, $0a, $09, $09, $09, $20
    db $16, $17, $18, $22, $23, $24, $09, $0b, $0b, $0b, $09, $09, $09, $30, $26, $27
    db $28, $32, $33, $34, $09, $0b, $0b
jr_029_5979:
    db $0b, $09, $09, $09, $80, $36, $37, $38, $02, $03, $04
jr_029_5984:
    db $09, $0b, $0b, $0b
jr_029_5988:
    db $09, $09, $09, $40, $46, $47, $48, $42, $43, $44, $09, $0a, $0a, $0a, $09
jr_029_5997:
    db $09, $09, $50, $56, $57, $58, $11, $21, $09, $09, $0a, $0a, $0a, $09, $09
jr_029_59a6:
    db $09, $ff, $31, $41, $51, $ff, $ff, $19, $06, $0e, $0e, $0e, $06, $06, $09

; 7x8 cells.
C2Patch7F:
    db $2f, $07, $08, $7b, $7f, $7f, $7f, $5b, $5c, $5d, $09, $09, $09, $09, $09, $09
    db $09, $7c, $6b, $6c, $6d, $06, $07, $08, $09, $09, $09, $09, $0a, $0a, $0a, $7d
    db $5e, $ff, $ff, $16, $17, $18, $09, $09, $06, $06, $0b, $0b, $0b, $7e, $5e, $ff
jr_029_59e5:
    db $ff, $26, $27, $28, $09, $09, $06, $06, $0b, $0b, $0b, $7b, $5e, $ff
jr_029_59f3:
    db $ff, $36, $37, $38, $09, $09, $06, $06, $0b, $0b, $0b, $6f, $5e, $ff
jr_029_5a01:
    db $ff, $46, $47, $48, $09, $09, $06, $06, $0a, $0a, $0a, $79, $6e, $ff, $ff, $56
    db $57, $09, $09, $09, $06, $06, $0a, $0a, $09, $ff, $ff, $ff, $ff, $31, $41, $19
    db $06, $06, $06, $06, $0e, $0e, $09

; 5x6 cells.
C2Patch80:
    db $2f, $05, $06, $81, $82, $83, $84, $85, $0c, $0c, $0c, $0c, $0c, $86, $87, $88
    db $89, $8a, $0c, $0c, $0c, $0c, $0c, $8b, $8c, $8d, $8e, $8f, $0c, $0c, $0c, $0c
    db $0c, $8b, $87, $8d, $8e, $8f, $0c, $0c, $0c, $0c, $0c, $90, $91, $92, $93, $8f
    db $0c, $0c, $0c, $0c, $0c, $0b, $0c, $0d, $94, $95, $09, $09, $09, $0c, $0c

; 5x6 cells.
C2Patch81:
    db $2f, $05, $06, $81, $82, $83, $84, $85, $0c, $0c, $0c, $0c, $0c, $86, $87, $88
    db $89, $8a, $0c, $0c, $0c, $0c, $0c, $8b, $8c, $8d, $8e, $8f, $0c, $0c, $0c, $0c
    db $0c, $8b, $87, $8d, $8e, $8f, $0c, $0c, $0c, $0c, $0c, $90, $91, $92, $93, $8f
    db $0c, $0c, $0c, $0c, $0c, $0b, $0c, $0d, $94, $95, $09, $09, $09, $0c, $0c

; 5x6 cells.
C2Patch82:
    db $2f, $05, $06, $60, $61, $62, $63, $64, $0c, $0c, $0d, $0d, $0c, $70, $71, $72
    db $73, $74, $0c, $0d, $0d, $0d, $0c, $65, $66, $67, $68, $69, $0c, $0d, $0d, $0d
    db $0c, $75, $76, $77, $78, $69, $0c, $0d, $0d, $0d, $0c, $52, $53, $54, $55, $69
    db $0c, $0d, $0d, $0d, $0c, $0b, $0c, $0d, $0e, $59, $09, $09, $09, $09, $0c

; 5x6 cells.
C2Patch83:
    db $2f, $05, $06, $60, $96, $97, $63, $64, $0c, $0c, $0d, $0d, $0c, $70, $98, $99
    db $9a, $74, $0c, $0d, $0d, $0d, $0c, $65, $9b, $9c, $9d, $69, $0c, $0d, $0d, $0d
    db $0c, $75, $9e, $9f, $a0, $69, $0c, $0d, $0d, $0d, $0c, $52, $53, $54, $55, $69
    db $0c, $0d, $0d, $0d, $0c, $0b, $0c, $0d, $0e, $59, $09, $09, $09, $09, $0c

; 2x3 cells.
C2Patch84:
    db $2f, $02, $03, $91, $92, $0c, $0c, $93, $94, $0c, $0c, $95, $96, $0c, $0c

; 2x3 cells.
C2Patch85:
    db $2f, $02, $03, $97, $98, $0c, $0c, $99, $9a, $0c, $0c, $9b, $9c, $0c, $0c

; 2x3 cells.
C2Patch86:
    db $2f, $02, $03, $9d, $9e, $0c, $0c, $9f, $a0, $0c, $0c, $a1, $a2, $0c, $0c

; 2x3 cells.
C2Patch87:
    db $2f, $02, $03, $a3, $a4, $0c, $0c, $a5, $a6, $0c, $0c, $a7, $a8, $0c, $0c

; 2x4 cells.
C2Patch88:
    db $2f, $02, $04, $58, $59, $0d, $0d, $68, $69, $0d, $0d, $72, $73, $0d, $0d, $7c
    db $7d, $0d, $0d

; 2x4 cells.
C2Patch89:
    db $2f, $02, $04, $8b, $8b, $0d, $2d, $8c, $8d, $0d, $0d, $8e, $8f, $0d, $0d, $90
    db $91, $0d, $0d
