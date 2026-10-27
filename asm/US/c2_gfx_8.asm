; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $032", ROMX[$4000], BANK[$32]

; Bank-local resource pointers; Case II ID $81 selects entry $01.
ResourcePointers_032:
C2ObjGfxRefs:
    dw C2BaseObjGfx
    dw GfxC2_G81
    dw GfxC2_G82
    dw GfxC2_G83
    dw GfxC2_G84
    dw GfxC2_G85
    dw GfxC2_G86
    dw GfxC2_G87
    dw GfxC2_G88
    dw GfxC2_G89
    dw GfxC2_G8A
    dw GfxC2_G8B
    dw GfxC2_G8C
    dw GfxC2_G8D
    dw GfxC2_G8E
    dw GfxC2_G8F

; Case II base objects: 64 unsigned tiles at $8400-$87ff, loaded by LoadBaseGfx.
C2BaseObjGfx:
GfxC2_G80:
    db $10, $40, $17, $40, $0c, $02, $01, $5d, $1f, $b7, $a6, $46, $17, $00, $05, $32
    db $80, $17, $00, $03, $01, $11, $63, $01, $00, $40, $00, $80, $c8, $c0, $e0, $c0
    db $30, $10
jr_032_4042:
    db $18, $1b, $0f, $0b, $08, $08, $17, $00, $02, $0e, $9f, $0e, $04, $02, $1c, $0c
jr_032_4052:
    db $14, $0c, $06, $06, $0a, $3b, $6a, $61, $7f, $6a, $30, $20, $00
jr_032_405f:
    db $00, $fc, $fe, $fc, $bc, $1f
jr_032_4065:
    db $07, $00, $00, $0d, $17, $00, $02, $60, $f0, $20, $17, $00, $09, $01, $0f, $18
    db $1f, $37, $2f, $3b, $3f, $df, $3f, $f0, $c7
jr_032_407e:
    db $bc, $f0, $ff, $00, $e0, $f8, $18, $e8, $86, $fb, $99, $0f, $0d, $0c, $0e, $0e
    db $1f, $1f, $15, $33, $a8, $b0, $ff, $f7, $6e, $77, $36, $fb, $7b, $1d, $fd, $77
    db $ed, $3e, $a8, $f0, $f0, $e8, $e8, $f8, $b8, $f8, $f8, $15, $11, $39, $39, $2d
    db $17, $2f, $02, $3e, $60, $73, $2b, $af, $b6, $9b, $d5, $65, $ef, $67, $99, $fe
    db $0e, $0b, $ff, $68, $78, $f0, $d0, $b0, $e0, $a4, $2c, $77, $73, $b9, $bd, $7f
    db $47, $fc, $07, $ea, $f9, $fc, $9c, $bc, $3c, $78, $e0, $ef, $fd, $19, $69, $68
    db $84, $d3, $51, $14, $84, $fc, $e9, $af, $fc, $e0, $17, $00, $b0, $10, $28, $38
    db $38, $3c, $3a, $71, $ba, $ff, $ff, $7f, $7e, $3e, $1d, $1d, $1f, $80, $17, $40
    db $02, $80, $80, $17, $00, $04, $17, $01, $02, $00, $03, $17, $00, $05, $01, $1d
    db $00, $07, $05, $1f, $1b, $77, $5f, $7f, $17, $01, $02, $02, $01, $0a, $f7, $0d
    db $17, $02, $03, $01, $07, $1e, $eb, $fb
jr_032_4126:
    db $f7, $ef, $df, $bf, $7f, $ff
jr_032_412c:
    db $ff, $01, $01, $00, $03, $03, $06, $1d, $db, $17, $00, $03, $01, $01, $02, $0d
    db $17, $00, $05, $03, $02, $00, $00, $fe, $fd, $df, $a1, $fe, $17, $00, $18, $10
    db $3c, $7e, $22, $e0, $40, $41, $01, $17, $00, $05, $0d, $7f, $00, $01, $03, $07
jr_032_415c:
    db $0e, $0a, $94, $7e, $00, $80, $e0, $70, $30, $38, $18, $10, $0e, $0f, $07, $04
    db $01, $04, $07, $07, $b0, $5d, $ff, $f1, $62, $91, $0a, $5d
jr_032_4178:
    db $e0, $30, $a8, $f2, $f8, $38, $35, $44, $01, $1e, $00, $15, $0f, $1a, $28, $02
    db $73, $31, $03, $43, $e0, $f8, $5f, $89, $f2, $ff, $ff, $fb, $95, $0a, $d8, $34
    db $80, $e0, $c0, $68, $c0, $20, $40, $90, $00, $00, $01, $0f, $00, $19, $16, $04
    db $00, $31, $c6, $1f, $78, $c3, $7f, $0e, $17, $00, $02, $f0, $70, $f8, $0e, $66
    db $04, $06, $03, $03, $01, $08, $08, $0a, $cf, $58, $50, $1f, $18, $97, $98, $dc
    db $fc, $7c, $1e, $fe, $f8, $76, $a1, $33, $80, $00, $30, $30, $10, $50, $40, $40
    db $0f, $0f, $1f, $16, $16, $12, $13
jr_032_41df:
    db $10, $df, $93, $8b, $df, $5f, $4f, $67, $2b, $fe, $fe, $be, $fe, $fc, $fc, $bc
    db $f8, $90, $90, $80, $a0, $60, $40, $c0, $c0, $38, $0d, $0f, $07, $26, $3c, $07
    db $00, $95, $86, $03, $61
jr_032_4204:
    db $60, $f2, $c6, $15, $f0, $02, $e6, $f6, $f7, $fb, $fc, $54, $e8, $f8, $30, $10
    db $d0, $40, $17, $00, $b2, $17, $10, $03, $14, $1e, $5f, $5f, $7f, $3f, $3f, $1f
jr_032_4224:
    db $0e, $0e, $00, $00, $17, $80, $02, $17, $00, $06, $17, $01, $03, $02, $17, $00
    db $05, $01, $1e, $03, $05, $3b, $23, $27, $4f, $bf, $ff, $17, $01, $02, $03, $02
    db $0d, $f9, $f3, $17, $03, $03, $02, $04, $19, $f7, $07, $0f, $1f, $3f, $7f, $17
    db $ff, $02, $17, $01, $02, $02, $0c, $09, $13, $e7, $17, $00, $03, $01, $01, $03
    db $0f, $17, $00, $05, $03, $03, $17, $00, $02, $5e, $7e, $5e, $17, $00, $19
Case2BathroomObjectTiles:

GfxC2_G81:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $0, $74
jr_032_42e7:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $74, $12b
jr_032_4412:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $19f, $1c
jr_032_442e:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $1bb, $8
jr_032_4436:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $1c3, $d
jr_032_4443:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $1d0, $5e
jr_032_44a1:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $22e, $1
jr_032_44a2:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $22f, $9
jr_032_44ab:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $238, $11
jr_032_44bc:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $249, $2f
jr_032_44eb:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $278, $6
jr_032_44f1:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $27e, $2a
jr_032_451b:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $2a8, $14
jr_032_452f:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $2bc, $3b
jr_032_456a:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $2f7, $2
jr_032_456c:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $2f9, $1a
jr_032_4586:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $313, $4
jr_032_458a:
    INCBIN "../../res/scene/case2/00-lucky-bath/US/s00-objects.bin", $317, $f

GfxC2_G82:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $0, $98
jr_032_4631:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $98, $b
jr_032_463c:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $a3, $23
jr_032_465f:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $c6, $4a
jr_032_46a9:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $110, $8f
jr_032_4738:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $19f, $11
jr_032_4749:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $1b0, $1f
jr_032_4768:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $1cf, $15
jr_032_477d:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $1e4, $1c
jr_032_4799:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $200, $8
jr_032_47a1:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $208, $58
jr_032_47f9:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $260, $12
jr_032_480b:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $272, $4
jr_032_480f:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $276, $f
jr_032_481e:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $285, $18
jr_032_4836:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $29d, $2d
jr_032_4863:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $2ca, $b
jr_032_486e:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $2d5, $13
jr_032_4881:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $2e8, $9
jr_032_488a:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $2f1, $2c
jr_032_48b6:
    INCBIN "../../res/scene/case2/common/US/g82.bin", $31d, $1d

GfxC2_G83:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $0, $4f
jr_032_4922:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $4f, $45
jr_032_4967:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $94, $af
jr_032_4a16:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $143, $14
jr_032_4a2a:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $157, $5
jr_032_4a2f:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $15c, $6
jr_032_4a35:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $162, $23
jr_032_4a58:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $185, $d
jr_032_4a65:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $192, $5
jr_032_4a6a:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $197, $12
jr_032_4a7c:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $1a9, $16
jr_032_4a92:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $1bf, $2
jr_032_4a94:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $1c1, $7
jr_032_4a9b:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $1c8, $9
jr_032_4aa4:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $1d1, $c
jr_032_4ab0:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $1dd, $1b
jr_032_4acb:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $1f8, $71
jr_032_4b3c:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $269, $9
jr_032_4b45:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $272, $19
jr_032_4b5e:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $28b, $9
jr_032_4b67:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $294, $17
jr_032_4b7e:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $2ab, $16
jr_032_4b94:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $2c1, $a
jr_032_4b9e:
    INCBIN "../../res/scene/case2/common/US/g83.bin", $2cb, $1d

GfxC2_G84:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $0, $3
jr_032_4bbe:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $3, $5
jr_032_4bc3:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $8, $8
jr_032_4bcb:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $10, $33
jr_032_4bfe:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $43, $51
jr_032_4c4f:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $94, $7
jr_032_4c56:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $9b, $42
jr_032_4c98:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $dd, $4e
jr_032_4ce6:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $12b, $20
jr_032_4d06:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $14b, $a
jr_032_4d10:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $155, $78
jr_032_4d88:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $1cd, $39
jr_032_4dc1:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $206, $78
jr_032_4e39:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $27e, $10
jr_032_4e49:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $28e, $8
jr_032_4e51:
    INCBIN "../../res/scene/case2/common/US/g84.bin", $296, $b

GfxC2_G85:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $0, $5
jr_032_4e61:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $5, $e
jr_032_4e6f:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $13, $5d
jr_032_4ecc:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $70, $ad
jr_032_4f79:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $11d, $9a
jr_032_5013:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $1b7, $84
jr_032_5097:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $23b, $3
jr_032_509a:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $23e, $2a
jr_032_50c4:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $268, $4
jr_032_50c8:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $26c, $6d
jr_032_5135:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $2d9, $6
jr_032_513b:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $2df, $a
jr_032_5145:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $2e9, $14
jr_032_5159:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $2fd, $21
jr_032_517a:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $31e, $11
jr_032_518b:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $32f, $32
jr_032_51bd:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $361, $22
jr_032_51df:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $383, $6
jr_032_51e5:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $389, $a
jr_032_51ef:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $393, $20
jr_032_520f:
    INCBIN "../../res/scene/case2/common/US/g85.bin", $3b3, $1b

GfxC2_G86:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $0, $27
jr_032_5251:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $27, $13
jr_032_5264:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $3a, $39
jr_032_529d:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $73, $3c
jr_032_52d9:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $af, $a2
jr_032_537b:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $151, $38
jr_032_53b3:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $189, $e
jr_032_53c1:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $197, $12
jr_032_53d3:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $1a9, $5
jr_032_53d8:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $1ae, $2e
jr_032_5406:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $1dc, $11
jr_032_5417:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $1ed, $2
jr_032_5419:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $1ef, $8
jr_032_5421:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $1f7, $a
jr_032_542b:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $201, $40
jr_032_546b:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $241, $d
jr_032_5478:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $24e, $16
jr_032_548e:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $264, $38
jr_032_54c6:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $29c, $19
jr_032_54df:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $2b5, $1d
jr_032_54fc:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $2d2, $1
jr_032_54fd:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $2d3, $31
jr_032_552e:
    INCBIN "../../res/scene/case2/common/US/g86.bin", $304, $2

GfxC2_G87:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $0, $16
jr_032_5546:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $16, $c
jr_032_5552:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $22, $6
jr_032_5558:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $28, $13
jr_032_556b:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $3b, $3
jr_032_556e:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $3e, $7
jr_032_5575:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $45, $1
jr_032_5576:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $46, $19
jr_032_558f:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $5f, $2
jr_032_5591:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $61, $87
jr_032_5618:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $e8, $15
jr_032_562d:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $fd, $3b
jr_032_5668:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $138, $2
jr_032_566a:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $13a, $15
jr_032_567f:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $14f, $4f
jr_032_56ce:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $19e, $12
jr_032_56e0:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $1b0, $5
jr_032_56e5:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $1b5, $67
jr_032_574c:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $21c, $1f
jr_032_576b:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $23b, $16
jr_032_5781:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $251, $36
jr_032_57b7:
    INCBIN "../../res/scene/case2/common/US/g87.bin", $287, $19

GfxC2_G88:
    INCBIN "../../res/scene/case2/common/US/g88.bin", $0, $6
jr_032_57d6:
    INCBIN "../../res/scene/case2/common/US/g88.bin", $6, $12
jr_032_57e8:
    INCBIN "../../res/scene/case2/common/US/g88.bin", $18, $32
jr_032_581a:
    INCBIN "../../res/scene/case2/common/US/g88.bin", $4a, $c
jr_032_5826:
    INCBIN "../../res/scene/case2/common/US/g88.bin", $56, $36
jr_032_585c:
    INCBIN "../../res/scene/case2/common/US/g88.bin", $8c, $32
jr_032_588e:
    INCBIN "../../res/scene/case2/common/US/g88.bin", $be, $66
jr_032_58f4:
    INCBIN "../../res/scene/case2/common/US/g88.bin", $124, $6
jr_032_58fa:
    INCBIN "../../res/scene/case2/common/US/g88.bin", $12a, $13
jr_032_590d:
    INCBIN "../../res/scene/case2/common/US/g88.bin", $13d, $38
jr_032_5945:
    INCBIN "../../res/scene/case2/common/US/g88.bin", $175, $43
jr_032_5988:
    INCBIN "../../res/scene/case2/common/US/g88.bin", $1b8, $35
jr_032_59bd:

GfxC2_G89:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $0, $20
jr_032_59dd:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $20, $32
jr_032_5a0f:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $52, $22
jr_032_5a31:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $74, $16
jr_032_5a47:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $8a, $55
jr_032_5a9c:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $df, $a
jr_032_5aa6:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $e9, $2
Call_032_5aa8:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $eb, $34
jr_032_5adc:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $11f, $58
jr_032_5b34:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $177, $8
jr_032_5b3c:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $17f, $44
jr_032_5b80:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $1c3, $45
jr_032_5bc5:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $208, $22
jr_032_5be7:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $22a, $39
jr_032_5c20:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $263, $41
jr_032_5c61:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $2a4, $60
jr_032_5cc1:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $304, $7e
jr_032_5d3f:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $382, $14
jr_032_5d53:
    INCBIN "../../res/scene/case2/common/US/g89.bin", $396, $2
jr_032_5d55:

GfxC2_G8A:
    INCBIN "../../res/scene/case2/common/US/g8a.bin", $0, $1
jr_032_5d56:
    INCBIN "../../res/scene/case2/common/US/g8a.bin", $1, $1b
jr_032_5d71:
    INCBIN "../../res/scene/case2/common/US/g8a.bin", $1c, $3
jr_032_5d74:
    INCBIN "../../res/scene/case2/common/US/g8a.bin", $1f, $21
jr_032_5d95:
    INCBIN "../../res/scene/case2/common/US/g8a.bin", $40, $1
jr_032_5d96:
    INCBIN "../../res/scene/case2/common/US/g8a.bin", $41, $11
jr_032_5da7:
    INCBIN "../../res/scene/case2/common/US/g8a.bin", $52, $b9
jr_032_5e60:
    INCBIN "../../res/scene/case2/common/US/g8a.bin", $10b, $d
jr_032_5e6d:
    INCBIN "../../res/scene/case2/common/US/g8a.bin", $118, $20
jr_032_5e8d:
    INCBIN "../../res/scene/case2/common/US/g8a.bin", $138, $c
jr_032_5e99:
    INCBIN "../../res/scene/case2/common/US/g8a.bin", $144, $99
jr_032_5f32:
    INCBIN "../../res/scene/case2/common/US/g8a.bin", $1dd, $2
jr_032_5f34:
    INCBIN "../../res/scene/case2/common/US/g8a.bin", $1df, $1d

GfxC2_G8B:
    INCBIN "../../res/scene/case2/common/US/g8b.bin", $0, $5d
Call_032_5fae:
jr_032_5fae:
    INCBIN "../../res/scene/case2/common/US/g8b.bin", $5d, $c
jr_032_5fba:
    INCBIN "../../res/scene/case2/common/US/g8b.bin", $69, $5
jr_032_5fbf:
    INCBIN "../../res/scene/case2/common/US/g8b.bin", $6e, $18
jr_032_5fd7:
    INCBIN "../../res/scene/case2/common/US/g8b.bin", $86, $137
jr_032_610e:
    INCBIN "../../res/scene/case2/common/US/g8b.bin", $1bd, $a6
jr_032_61b4:
    INCBIN "../../res/scene/case2/common/US/g8b.bin", $263, $f
jr_032_61c3:
    INCBIN "../../res/scene/case2/common/US/g8b.bin", $272, $a
jr_032_61cd:
    INCBIN "../../res/scene/case2/common/US/g8b.bin", $27c, $35
jr_032_6202:
    INCBIN "../../res/scene/case2/common/US/g8b.bin", $2b1, $47

GfxC2_G8C:
    db $ff

GfxC2_G8D:
    db $ff

GfxC2_G8E:
    db $ff

GfxC2_G8F:
    db $ff

Bank32Pad:
    ds $0016, $00
jr_032_6263:
    ds $0007, $00
jr_032_626a:
    ds $000b, $00
jr_032_6275:
    ds $01fe, $00
Call_032_6473:
    ds $02cc, $00
Call_032_673f:
    ds $04e1, $00
Jump_032_6c20:
    ds $02e0, $00
Call_032_6f00:
    ds $01dc, $00
Call_032_70dc:
    ds $0047, $00
Call_032_7123:
    ds $0389, $00
Call_032_74ac:
    ds $05ba, $00
Jump_032_7a66:
    ds $0296, $00
Call_032_7cfc:
    ds $0140, $00
Jump_032_7e3c:
    ds $0063, $00
Jump_032_7e9f:
    ds $0060, $00
Jump_032_7eff:
    ds $003d, $00
Jump_032_7f3c:
    ds $007b, $00
Jump_032_7fb7:
    ds $0048, $00
Jump_032_7fff:
    ds $0001, $00

; End of bank.
