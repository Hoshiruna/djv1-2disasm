; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03f", ROMX[$4000], BANK[$3f]

C1ObjGfxRefs:
    dw GfxC1_GC0
    dw GfxC1_GC1
    dw GfxC1_GC2
    dw GfxC1_GC3
    dw GfxC1_GC4
    dw GfxC1_GC5
    dw GfxC1_GC6
    dw GfxC1_GC7
    dw GfxC1_GC8
    dw GfxC1_GC9
    dw GfxC1_GCA
    dw GfxC1_GCB
    dw GfxC1_GCC
    dw GfxC1_GCD
    dw GfxC1_GCE
    dw GfxC1_GCF

GfxC1_GC0:
    db $10, $40, $17, $40, $0c, $02, $01, $5d, $1f, $b7, $a6, $46, $17, $00, $05, $32
    db $80, $17, $00, $03, $01, $11, $63, $01, $00, $40, $00, $80, $c8, $c0, $e0, $c0
    db $30, $10
jr_03f_4042:
    db $18, $1b, $0f, $0b, $08, $08, $17, $00, $02, $0e, $9f, $0e, $04, $02, $1c, $0c
jr_03f_4052:
    db $14, $0c, $06, $06, $0a, $3b, $6a, $61, $7f, $6a, $30, $20, $00
jr_03f_405f:
    db $00, $fc
jr_03f_4061:
    db $fe, $fc, $bc, $1f, $07, $00, $00, $0d, $17, $00, $02, $60, $f0, $20, $17, $00
    db $09, $01, $0f, $18, $1f, $37, $2f, $3b, $3f, $df, $3f, $f0, $c7
jr_03f_407e:
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
jr_03f_4126:
    db $f7, $ef, $df, $bf, $7f, $ff
jr_03f_412c:
    db $ff, $01, $01, $00, $03, $03, $06, $1d, $db, $17, $00, $03, $01, $01, $02, $0d
    db $17, $00, $05, $03, $02, $00, $00, $fe, $fd, $df, $a1, $fe, $17, $00, $18, $10
    db $3c, $7e, $22, $e0, $40, $41, $01, $17, $00, $05, $0d, $7f, $00, $01, $03, $07
jr_03f_415c:
    db $0e, $0a, $94, $7e, $00, $80, $e0, $70, $30, $38, $18, $10, $0e, $0f, $07, $04
    db $01, $04, $07, $07, $b0, $5d, $ff, $f1, $62, $91, $0a, $5d
jr_03f_4178:
    db $e0, $30, $a8, $f2, $f8, $38, $35, $44, $01, $1e, $00, $15, $0f, $1a, $28, $02
    db $73, $31, $03, $43, $e0, $f8, $5f, $89, $f2, $ff, $ff, $fb, $95, $0a, $d8, $34
    db $80, $e0, $c0, $68, $c0, $20, $40, $90, $00, $00, $01, $0f, $00, $19, $16, $04
    db $00, $31, $c6, $1f, $78, $c3, $7f, $0e, $17, $00, $02, $f0, $70, $f8, $0e, $66
    db $04, $06, $03, $03, $01, $08, $08, $0a, $cf, $58, $50, $1f, $18, $97, $98, $dc
    db $fc, $7c, $1e, $fe, $f8, $76, $a1, $33, $80, $00, $30, $30, $10, $50, $40, $40
    db $0f, $0f, $1f, $16, $16, $12, $13
jr_03f_41df:
    db $10, $df, $93, $8b, $df, $5f, $4f, $67, $2b, $fe, $fe, $be, $fe, $fc, $fc, $bc
    db $f8, $90, $90, $80, $a0, $60, $40, $c0, $c0, $38, $0d, $0f, $07, $26, $3c, $07
    db $00, $95, $86, $03, $61
jr_03f_4204:
    db $60, $f2, $c6, $15, $f0, $02, $e6, $f6, $f7, $fb, $fc, $54, $e8, $f8, $30, $10
    db $d0, $40, $17, $00, $b2, $17, $10, $03, $14, $1e, $5f, $5f, $7f, $3f, $3f, $1f
jr_03f_4224:
    db $0e, $0e, $00, $00, $17, $80, $02, $17, $00, $06, $17, $01, $03, $02, $17, $00
    db $05, $01, $1e, $03, $05, $3b, $23, $27, $4f, $bf, $ff, $17, $01, $02, $03, $02
    db $0d, $f9, $f3, $17, $03, $03, $02, $04, $19, $f7, $07, $0f, $1f, $3f, $7f, $17
    db $ff, $02, $17, $01, $02, $02, $0c, $09, $13, $e7, $17, $00, $03, $01, $01, $03
    db $0f, $17, $00, $05, $03, $03, $17, $00, $02, $5e, $7e, $5e, $17, $00, $19

GfxC1_GC1:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $0, $6d
jr_03f_42e0:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $6d, $5e
Jump_03f_433e:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $cb, $16
jr_03f_4354:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $e1, $5
jr_03f_4359:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $e6, $63
jr_03f_43bc:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $149, $1d
jr_03f_43d9:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $166, $3b
jr_03f_4414:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $1a1, $4
jr_03f_4418:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $1a5, $1e
jr_03f_4436:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $1c3, $18
jr_03f_444e:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $1db, $13
jr_03f_4461:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $1ee, $69
jr_03f_44ca:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $257, $4
jr_03f_44ce:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $25b, $47
jr_03f_4515:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $2a2, $3
jr_03f_4518:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $2a5, $2d
jr_03f_4545:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $2d2, $22
jr_03f_4567:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $2f4, $e
jr_03f_4575:
    INCBIN "../../res/scene/case1/common/JP/gc1.bin", $302, $8
jr_03f_457d:

GfxC1_GC2:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $0, $16
jr_03f_4593:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $16, $27
jr_03f_45ba:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $3d, $6
jr_03f_45c0:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $43, $1d
jr_03f_45dd:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $60, $15
jr_03f_45f2:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $75, $f
jr_03f_4601:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $84, $f
jr_03f_4610:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $93, $14
jr_03f_4624:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $a7, $6a
jr_03f_468e:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $111, $1
jr_03f_468f:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $112, $10
jr_03f_469f:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $122, $38
jr_03f_46d7:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $15a, $39
jr_03f_4710:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $193, $4a
jr_03f_475a:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $1dd, $a
jr_03f_4764:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $1e7, $2b
jr_03f_478f:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $212, $17
jr_03f_47a6:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $229, $8
jr_03f_47ae:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $231, $28
jr_03f_47d6:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $259, $22
jr_03f_47f8:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $27b, $9
jr_03f_4801:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $284, $6
jr_03f_4807:
    INCBIN "../../res/scene/case1/common/JP/gc2.bin", $28a, $3b

GfxC1_GC3:
    INCBIN "../../res/scene/case1/common/JP/gc3.bin", $0, $1d
jr_03f_485f:
    INCBIN "../../res/scene/case1/common/JP/gc3.bin", $1d, $29
jr_03f_4888:
    INCBIN "../../res/scene/case1/common/JP/gc3.bin", $46, $15
jr_03f_489d:
    INCBIN "../../res/scene/case1/common/JP/gc3.bin", $5b, $e
jr_03f_48ab:
    INCBIN "../../res/scene/case1/common/JP/gc3.bin", $69, $4e
jr_03f_48f9:
    INCBIN "../../res/scene/case1/common/JP/gc3.bin", $b7, $19
jr_03f_4912:
    INCBIN "../../res/scene/case1/common/JP/gc3.bin", $d0, $87
jr_03f_4999:
    INCBIN "../../res/scene/case1/common/JP/gc3.bin", $157, $79
jr_03f_4a12:
    INCBIN "../../res/scene/case1/common/JP/gc3.bin", $1d0, $21
jr_03f_4a33:
    INCBIN "../../res/scene/case1/common/JP/gc3.bin", $1f1, $12
jr_03f_4a45:
    INCBIN "../../res/scene/case1/common/JP/gc3.bin", $203, $1c
jr_03f_4a61:
    INCBIN "../../res/scene/case1/common/JP/gc3.bin", $21f, $1d

GfxC1_GC4:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $0, $10
jr_03f_4a8e:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $10, $3
jr_03f_4a91:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $13, $3c
jr_03f_4acd:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $4f, $34
jr_03f_4b01:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $83, $14
jr_03f_4b15:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $97, $24
jr_03f_4b39:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $bb, $45
jr_03f_4b7e:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $100, $11
jr_03f_4b8f:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $111, $4
jr_03f_4b93:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $115, $b
jr_03f_4b9e:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $120, $4a
jr_03f_4be8:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $16a, $22
jr_03f_4c0a:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $18c, $1c
jr_03f_4c26:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $1a8, $2
jr_03f_4c28:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $1aa, $21
jr_03f_4c49:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $1cb, $2b
jr_03f_4c74:
    INCBIN "../../res/scene/case1/common/JP/gc4.bin", $1f6, $12

GfxC1_GC5:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $0, $d
jr_03f_4c93:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $d, $1a
jr_03f_4cad:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $27, $1e
jr_03f_4ccb:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $45, $36
jr_03f_4d01:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $7b, $b
jr_03f_4d0c:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $86, $3a
jr_03f_4d46:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $c0, $e
jr_03f_4d54:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $ce, $28
jr_03f_4d7c:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $f6, $1b
jr_03f_4d97:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $111, $41
jr_03f_4dd8:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $152, $a
jr_03f_4de2:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $15c, $58
jr_03f_4e3a:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $1b4, $1b
jr_03f_4e55:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $1cf, $4f
jr_03f_4ea4:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $21e, $1f
jr_03f_4ec3:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $23d, $35
jr_03f_4ef8:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $272, $42
jr_03f_4f3a:
    INCBIN "../../res/scene/case1/common/JP/gc5.bin", $2b4, $1a

GfxC1_GC6:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $0, $a
jr_03f_4f5e:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $a, $5
jr_03f_4f63:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $f, $13
jr_03f_4f76:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $22, $6b
jr_03f_4fe1:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $8d, $39
jr_03f_501a:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $c6, $a
jr_03f_5024:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $d0, $c
jr_03f_5030:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $dc, $10
jr_03f_5040:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $ec, $b
jr_03f_504b:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $f7, $14
jr_03f_505f:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $10b, $b
jr_03f_506a:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $116, $e
jr_03f_5078:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $124, $14
jr_03f_508c:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $138, $13
jr_03f_509f:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $14b, $2a
jr_03f_50c9:
    INCBIN "../../res/scene/case1/common/JP/gc6.bin", $175, $67

GfxC1_GC7:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $0, $58
jr_03f_5188:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $58, $8
jr_03f_5190:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $60, $23
jr_03f_51b3:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $83, $17
jr_03f_51ca:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $9a, $21
jr_03f_51eb:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $bb, $d
jr_03f_51f8:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $c8, $5d
jr_03f_5255:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $125, $29
jr_03f_527e:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $14e, $13
jr_03f_5291:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $161, $f
jr_03f_52a0:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $170, $3c
jr_03f_52dc:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $1ac, $70
jr_03f_534c:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $21c, $5
jr_03f_5351:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $221, $2b
jr_03f_537c:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $24c, $63
jr_03f_53df:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $2af, $3e
jr_03f_541d:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $2ed, $7
jr_03f_5424:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $2f4, $1e
jr_03f_5442:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $312, $9
jr_03f_544b:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $31b, $11
jr_03f_545c:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $32c, $47
jr_03f_54a3:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $373, $3e
jr_03f_54e1:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $3b1, $2
jr_03f_54e3:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $3b3, $e
jr_03f_54f1:
    INCBIN "../../res/scene/case1/common/JP/gc7.bin", $3c1, $a

GfxC1_GC8:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $0, $4
jr_03f_54ff:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $4, $6
jr_03f_5505:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $a, $1e
jr_03f_5523:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $28, $57
jr_03f_557a:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $7f, $62
jr_03f_55dc:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $e1, $2c
jr_03f_5608:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $10d, $1
jr_03f_5609:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $10e, $37
jr_03f_5640:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $145, $18
jr_03f_5658:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $15d, $92
jr_03f_56ea:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $1ef, $e
jr_03f_56f8:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $1fd, $17
jr_03f_570f:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $214, $4
jr_03f_5713:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $218, $38
jr_03f_574b:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $250, $40
jr_03f_578b:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $290, $25
jr_03f_57b0:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $2b5, $3d
jr_03f_57ed:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $2f2, $3a
jr_03f_5827:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $32c, $2
jr_03f_5829:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $32e, $10
jr_03f_5839:
    INCBIN "../../res/scene/case1/common/JP/gc8.bin", $33e, $4
jr_03f_583d:

GfxC1_GC9:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $0, $12
jr_03f_584f:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $12, $28
jr_03f_5877:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $3a, $d
jr_03f_5884:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $47, $50
jr_03f_58d4:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $97, $d
jr_03f_58e1:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $a4, $12
jr_03f_58f3:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $b6, $1c
jr_03f_590f:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $d2, $24
jr_03f_5933:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $f6, $1b
jr_03f_594e:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $111, $14
jr_03f_5962:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $125, $54
jr_03f_59b6:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $179, $1b
jr_03f_59d1:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $194, $31
jr_03f_5a02:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $1c5, $14
jr_03f_5a16:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $1d9, $8
jr_03f_5a1e:
    INCBIN "../../res/scene/case1/common/JP/gc9.bin", $1e1, $32

GfxC1_GCA:
    INCBIN "../../res/scene/case1/common/JP/gca.bin", $0, $30
jr_03f_5a80:
    INCBIN "../../res/scene/case1/common/JP/gca.bin", $30, $56
jr_03f_5ad6:
    INCBIN "../../res/scene/case1/common/JP/gca.bin", $86, $10
jr_03f_5ae6:
    INCBIN "../../res/scene/case1/common/JP/gca.bin", $96, $3b
jr_03f_5b21:
    INCBIN "../../res/scene/case1/common/JP/gca.bin", $d1, $e
jr_03f_5b2f:
    INCBIN "../../res/scene/case1/common/JP/gca.bin", $df, $12
jr_03f_5b41:
    INCBIN "../../res/scene/case1/common/JP/gca.bin", $f1, $40
jr_03f_5b81:
    INCBIN "../../res/scene/case1/common/JP/gca.bin", $131, $32

GfxC1_GCB:
    db $ff

GfxC1_GCC:
    db $ff

GfxC1_GCD:
    db $ff

GfxC1_GCE:
    db $ff

GfxC1_GCF:
    db $ff

Bank3FPad:
    ds $0008, $00
jr_03f_5bc0:
    ds $0a65, $00
Jump_03f_6625:
    ds $0613, $00
Call_03f_6c38:
    ds $0444, $00
Jump_03f_707c:
    ds $0272, $00
Call_03f_72ee:
    ds $098a, $00
Call_03f_7c78:
    ds $0084, $00
Call_03f_7cfc:
    ds $013a, $00
Call_03f_7e36:
    ds $01bd, $00
Call_03f_7ff3:
    ds $000d, $00

; End of bank.
