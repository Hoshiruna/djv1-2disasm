; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02b", ROMX[$4000], BANK[$2b]

    dw GfxC2_G10 ; $00
    dw GfxC2_G11 ; $01
    dw GfxC2_G12 ; $02
    dw GfxC2_G13 ; $03
    dw $4f90 ; $04
    dw $4f91 ; $05
    dw GfxC2_G16 ; $06
    dw GfxC2_G17 ; $07
    dw GfxC2_G18 ; $08
    dw GfxC2_G19 ; $09
    dw GfxC2_G1A ; $0a
    dw GfxC2_G1B ; $0b
    dw GfxC2_G1C ; $0c
    dw GfxC2_G1D ; $0d
    dw GfxC2_G1E ; $0e
    dw GfxC2_G1F ; $0f

GfxC2_G10:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $0, $22
jr_02b_4042:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $22, $4f
jr_02b_4091:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $71, $f
jr_02b_40a0:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $80, $e2
jr_02b_4182:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $162, $1c
jr_02b_419e:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $17e, $a
jr_02b_41a8:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $188, $3a
jr_02b_41e2:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $1c2, $10
jr_02b_41f2:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $1d2, $d
Jump_02b_41ff:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $1df, $c
jr_02b_420b:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $1eb, $2
jr_02b_420d:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $1ed, $2
jr_02b_420f:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $1ef, $1a
jr_02b_4229:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $209, $53
jr_02b_427c:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $25c, $47
jr_02b_42c3:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $2a3, $8f
jr_02b_4352:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $332, $4
jr_02b_4356:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $336, $80
jr_02b_43d6:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $3b6, $5
jr_02b_43db:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $3bb, $2b
jr_02b_4406:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $3e6, $4
jr_02b_440a:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $3ea, $3
jr_02b_440d:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $3ed, $1a
jr_02b_4427:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $407, $3
jr_02b_442a:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $40a, $10
jr_02b_443a:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $41a, $43
jr_02b_447d:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $45d, $4c
jr_02b_44c9:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $4a9, $2
jr_02b_44cb:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $4ab, $3a
jr_02b_4505:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $4e5, $9
jr_02b_450e:
    INCBIN "../../res/scene/case2/common/US/g10.bin", $4ee, $26

GfxC2_G11:
    INCBIN "../../res/scene/case2/common/US/g11.bin", $0, $2e
jr_02b_4562:
    INCBIN "../../res/scene/case2/common/US/g11.bin", $2e, $41
jr_02b_45a3:
    INCBIN "../../res/scene/case2/common/US/g11.bin", $6f, $2b
jr_02b_45ce:
    INCBIN "../../res/scene/case2/common/US/g11.bin", $9a, $76
jr_02b_4644:
    INCBIN "../../res/scene/case2/common/US/g11.bin", $110, $b
jr_02b_464f:
    INCBIN "../../res/scene/case2/common/US/g11.bin", $11b, $75

GfxC2_G12:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $0, $7
jr_02b_46cb:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $7, $c1
jr_02b_478c:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $c8, $46
Jump_02b_47d2:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $10e, $2d
Jump_02b_47ff:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $13b, $9
jr_02b_4808:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $144, $a
jr_02b_4812:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $14e, $6b
jr_02b_487d:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $1b9, $30
jr_02b_48ad:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $1e9, $10
jr_02b_48bd:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $1f9, $7
jr_02b_48c4:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $200, $20
jr_02b_48e4:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $220, $3a
jr_02b_491e:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $25a, $13
jr_02b_4931:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $26d, $25
jr_02b_4956:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $292, $f
jr_02b_4965:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $2a1, $43
jr_02b_49a8:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $2e4, $56
jr_02b_49fe:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $33a, $10
jr_02b_4a0e:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $34a, $2
jr_02b_4a10:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $34c, $2
jr_02b_4a12:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $34e, $1d
jr_02b_4a2f:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $36b, $1
jr_02b_4a30:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $36c, $2d
jr_02b_4a5d:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $399, $6
jr_02b_4a63:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $39f, $82
jr_02b_4ae5:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $421, $87
jr_02b_4b6c:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $4a8, $5a
jr_02b_4bc6:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $502, $80
jr_02b_4c46:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $582, $3d
jr_02b_4c83:
    INCBIN "../../res/scene/case2/common/US/g12.bin", $5bf, $19

GfxC2_G13:
    INCBIN "../../res/scene/case2/common/US/g13.bin", $0, $1e
jr_02b_4cba:
    INCBIN "../../res/scene/case2/common/US/g13.bin", $1e, $2a
jr_02b_4ce4:
    INCBIN "../../res/scene/case2/common/US/g13.bin", $48, $5
jr_02b_4ce9:
    INCBIN "../../res/scene/case2/common/US/g13.bin", $4d, $15
jr_02b_4cfe:
    INCBIN "../../res/scene/case2/common/US/g13.bin", $62, $6
jr_02b_4d04:
    INCBIN "../../res/scene/case2/common/US/g13.bin", $68, $a3
jr_02b_4da7:
    INCBIN "../../res/scene/case2/common/US/g13.bin", $10b, $14
jr_02b_4dbb:
    INCBIN "../../res/scene/case2/common/US/g13.bin", $11f, $56
jr_02b_4e11:
    INCBIN "../../res/scene/case2/common/US/g13.bin", $175, $89
jr_02b_4e9a:
    INCBIN "../../res/scene/case2/common/US/g13.bin", $1fe, $d
jr_02b_4ea7:
    INCBIN "../../res/scene/case2/common/US/g13.bin", $20b, $b5
jr_02b_4f5c:
    INCBIN "../../res/scene/case2/common/US/g13.bin", $2c0, $5
jr_02b_4f61:
    INCBIN "../../res/scene/case2/common/US/g13.bin", $2c5, $24
jr_02b_4f85:
    INCBIN "../../res/scene/case2/common/US/g13.bin", $2e9, $b
    db $ff, $ff

GfxC2_G16:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $0, $3
jr_02b_4f95:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $3, $16
jr_02b_4fab:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $19, $4c
jr_02b_4ff7:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $65, $b
Jump_02b_5002:
jr_02b_5002:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $70, $20
Call_02b_5022:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $90, $38
jr_02b_505a:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $c8, $28
jr_02b_5082:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $f0, $be
jr_02b_5140:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $1ae, $10
jr_02b_5150:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $1be, $22
jr_02b_5172:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $1e0, $8
jr_02b_517a:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $1e8, $eb
jr_02b_5265:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $2d3, $16
jr_02b_527b:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $2e9, $66
jr_02b_52e1:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $34f, $1e
Call_02b_52ff:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $36d, $1e
jr_02b_531d:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $38b, $c1
jr_02b_53de:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $44c, $34
jr_02b_5412:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $480, $26
jr_02b_5438:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $4a6, $38
jr_02b_5470:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $4de, $62
jr_02b_54d2:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $540, $2
jr_02b_54d4:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $542, $15
jr_02b_54e9:
    INCBIN "../../res/scene/case2/common/US/g16.bin", $557, $81

GfxC2_G17:
    INCBIN "../../res/scene/case2/common/US/g17.bin", $0, $ca
jr_02b_5634:
    INCBIN "../../res/scene/case2/common/US/g17.bin", $ca, $24
jr_02b_5658:
    INCBIN "../../res/scene/case2/common/US/g17.bin", $ee, $17
jr_02b_566f:
    INCBIN "../../res/scene/case2/common/US/g17.bin", $105, $12
jr_02b_5681:
    INCBIN "../../res/scene/case2/common/US/g17.bin", $117, $6
jr_02b_5687:
    INCBIN "../../res/scene/case2/common/US/g17.bin", $11d, $6
jr_02b_568d:
    INCBIN "../../res/scene/case2/common/US/g17.bin", $123, $12
jr_02b_569f:
    INCBIN "../../res/scene/case2/common/US/g17.bin", $135, $5
jr_02b_56a4:
    INCBIN "../../res/scene/case2/common/US/g17.bin", $13a, $8
jr_02b_56ac:
    INCBIN "../../res/scene/case2/common/US/g17.bin", $142, $3
jr_02b_56af:
    INCBIN "../../res/scene/case2/common/US/g17.bin", $145, $b
jr_02b_56ba:
    INCBIN "../../res/scene/case2/common/US/g17.bin", $150, $2a

GfxC2_G18:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $0, $1
jr_02b_56e5:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $1, $12
jr_02b_56f7:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $13, $17
jr_02b_570e:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $2a, $22
jr_02b_5730:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $4c, $4
jr_02b_5734:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $50, $5
jr_02b_5739:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $55, $b
jr_02b_5744:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $60, $6
jr_02b_574a:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $66, $1c
jr_02b_5766:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $82, $3b
jr_02b_57a1:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $bd, $3
jr_02b_57a4:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $c0, $171
jr_02b_5915:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $231, $97
Call_02b_59ac:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $2c8, $89
jr_02b_5a35:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $351, $1f
Jump_02b_5a54:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $370, $a4
Jump_02b_5af8:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $414, $28
Call_02b_5b20:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $43c, $3
jr_02b_5b23:
    INCBIN "../../res/scene/case2/common/US/g18.bin", $43f, $60

GfxC2_G19:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $0, $e
jr_02b_5b91:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $e, $1
jr_02b_5b92:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $f, $e
jr_02b_5ba0:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $1d, $c
jr_02b_5bac:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $29, $9f
jr_02b_5c4b:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $c8, $76
Call_02b_5cc1:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $13e, $b1
jr_02b_5d72:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $1ef, $51
jr_02b_5dc3:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $240, $52
jr_02b_5e15:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $292, $3
jr_02b_5e18:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $295, $1
jr_02b_5e19:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $296, $68
jr_02b_5e81:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $2fe, $9
jr_02b_5e8a:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $307, $17
jr_02b_5ea1:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $31e, $15
jr_02b_5eb6:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $333, $e
jr_02b_5ec4:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $341, $9
jr_02b_5ecd:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $34a, $74
jr_02b_5f41:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $3be, $a
jr_02b_5f4b:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $3c8, $53
jr_02b_5f9e:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $41b, $3d
jr_02b_5fdb:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $458, $7
jr_02b_5fe2:
    INCBIN "../../res/scene/case2/common/US/g19.bin", $45f, $29

GfxC2_G1A:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $0, $38
jr_02b_6043:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $38, $4f
jr_02b_6092:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $87, $12
jr_02b_60a4:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $99, $77
jr_02b_611b:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $110, $d
Jump_02b_6128:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $11d, $4a
jr_02b_6172:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $167, $1
jr_02b_6173:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $168, $f
jr_02b_6182:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $177, $53
jr_02b_61d5:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $1ca, $2f
jr_02b_6204:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $1f9, $38
jr_02b_623c:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $231, $9
jr_02b_6245:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $23a, $2c
jr_02b_6271:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $266, $10
jr_02b_6281:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $276, $5d
jr_02b_62de:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $2d3, $1c
jr_02b_62fa:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $2ef, $2
jr_02b_62fc:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $2f1, $c3
jr_02b_63bf:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $3b4, $f
jr_02b_63ce:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $3c3, $55
Jump_02b_6423:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $418, $24
jr_02b_6447:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $43c, $94
jr_02b_64db:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $4d0, $a
jr_02b_64e5:
    INCBIN "../../res/scene/case2/common/US/g1a.bin", $4da, $44

GfxC2_G1B:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $0, $2b
jr_02b_6554:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $2b, $da
Jump_02b_662e:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $105, $4e
jr_02b_667c:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $153, $7c
jr_02b_66f8:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $1cf, $7
jr_02b_66ff:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $1d6, $48
jr_02b_6747:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $21e, $1e
jr_02b_6765:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $23c, $b
jr_02b_6770:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $247, $3
jr_02b_6773:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $24a, $11
jr_02b_6784:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $25b, $11
jr_02b_6795:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $26c, $3
jr_02b_6798:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $26f, $1d
jr_02b_67b5:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $28c, $a1
jr_02b_6856:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $32d, $a
jr_02b_6860:
    INCBIN "../../res/scene/case2/common/US/g1b.bin", $337, $38

GfxC2_G1C:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $0, $47
jr_02b_68df:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $47, $75
jr_02b_6954:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $bc, $28
jr_02b_697c:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $e4, $af
jr_02b_6a2b:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $193, $2e
jr_02b_6a59:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $1c1, $6f
jr_02b_6ac8:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $230, $9
jr_02b_6ad1:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $239, $42
Call_02b_6b13:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $27b, $47
jr_02b_6b5a:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $2c2, $5
jr_02b_6b5f:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $2c7, $37
jr_02b_6b96:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $2fe, $2e
jr_02b_6bc4:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $32c, $18
jr_02b_6bdc:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $344, $6
jr_02b_6be2:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $34a, $30
jr_02b_6c12:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $37a, $c
jr_02b_6c1e:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $386, $9
jr_02b_6c27:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $38f, $4
jr_02b_6c2b:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $393, $4
jr_02b_6c2f:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $397, $1b
jr_02b_6c4a:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $3b2, $49
Call_02b_6c93:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $3fb, $2a
jr_02b_6cbd:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $425, $5
jr_02b_6cc2:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $42a, $16
jr_02b_6cd8:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $440, $68
jr_02b_6d40:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $4a8, $5d
jr_02b_6d9d:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $505, $32
jr_02b_6dcf:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $537, $18
jr_02b_6de7:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $54f, $10a
jr_02b_6ef1:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $659, $56
jr_02b_6f47:
    INCBIN "../../res/scene/case2/common/US/g1c.bin", $6af, $14

GfxC2_G1D:
    INCBIN "../../res/scene/case2/common/US/g1d.bin", $0, $36
jr_02b_6f91:
    INCBIN "../../res/scene/case2/common/US/g1d.bin", $36, $a3
jr_02b_7034:
    INCBIN "../../res/scene/case2/common/US/g1d.bin", $d9, $23
jr_02b_7057:
    INCBIN "../../res/scene/case2/common/US/g1d.bin", $fc, $4a
jr_02b_70a1:
    INCBIN "../../res/scene/case2/common/US/g1d.bin", $146, $16
jr_02b_70b7:
    INCBIN "../../res/scene/case2/common/US/g1d.bin", $15c, $2a
Jump_02b_70e1:
    INCBIN "../../res/scene/case2/common/US/g1d.bin", $186, $4

GfxC2_G1E:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $0, $5
jr_02b_70ea:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $5, $d
jr_02b_70f7:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $12, $1a
jr_02b_7111:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $2c, $30
jr_02b_7141:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $5c, $3
jr_02b_7144:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $5f, $62
jr_02b_71a6:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $c1, $8
jr_02b_71ae:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $c9, $53
jr_02b_7201:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $11c, $1
jr_02b_7202:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $11d, $c
jr_02b_720e:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $129, $3
jr_02b_7211:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $12c, $e
jr_02b_721f:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $13a, $a
jr_02b_7229:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $144, $c
Call_02b_7235:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $150, $b
jr_02b_7240:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $15b, $23
jr_02b_7263:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $17e, $33
jr_02b_7296:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $1b1, $16a
jr_02b_7400:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $31b, $2
jr_02b_7402:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $31d, $e
jr_02b_7410:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $32b, $8
jr_02b_7418:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $333, $1
jr_02b_7419:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $334, $57
jr_02b_7470:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $38b, $21
jr_02b_7491:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $3ac, $2f
jr_02b_74c0:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $3db, $2c
jr_02b_74ec:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $407, $1c
jr_02b_7508:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $423, $19
jr_02b_7521:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $43c, $9
jr_02b_752a:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $445, $12
jr_02b_753c:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $457, $9
jr_02b_7545:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $460, $24
jr_02b_7569:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $484, $2
jr_02b_756b:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $486, $1e
jr_02b_7589:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $4a4, $4d
jr_02b_75d6:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $4f1, $24
jr_02b_75fa:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $515, $23
jr_02b_761d:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $538, $55
jr_02b_7672:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $58d, $a
jr_02b_767c:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $597, $12
jr_02b_768e:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $5a9, $2e
jr_02b_76bc:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $5d7, $30
jr_02b_76ec:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $607, $12
jr_02b_76fe:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $619, $11
jr_02b_770f:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $62a, $3b
jr_02b_774a:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $665, $14
jr_02b_775e:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $679, $1d
jr_02b_777b:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $696, $a
jr_02b_7785:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $6a0, $40
jr_02b_77c5:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $6e0, $26
jr_02b_77eb:
    INCBIN "../../res/scene/case2/common/US/g1e.bin", $706, $1e

GfxC2_G1F:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $0, $44
jr_02b_784d:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $44, $58
jr_02b_78a5:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $9c, $36
jr_02b_78db:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $d2, $85
jr_02b_7960:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $157, $8
jr_02b_7968:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $15f, $4e
jr_02b_79b6:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $1ad, $b
Jump_02b_79c1:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $1b8, $2
jr_02b_79c3:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $1ba, $54
Jump_02b_7a17:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $20e, $68
jr_02b_7a7f:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $276, $4f
jr_02b_7ace:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $2c5, $53
jr_02b_7b21:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $318, $e
jr_02b_7b2f:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $326, $41
jr_02b_7b70:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $367, $40
jr_02b_7bb0:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $3a7, $26
jr_02b_7bd6:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $3cd, $26
jr_02b_7bfc:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $3f3, $3
jr_02b_7bff:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $3f6, $3f
Call_02b_7c3e:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $435, $35
jr_02b_7c73:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $46a, $23
jr_02b_7c96:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $48d, $52
jr_02b_7ce8:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $4df, $25
jr_02b_7d0d:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $504, $2b
jr_02b_7d38:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $52f, $1a
jr_02b_7d52:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $549, $2d
jr_02b_7d7f:
    INCBIN "../../res/scene/case2/common/US/g1f.bin", $576, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02b_7de5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02b_7ef2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02b_7f33:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02b_7f40:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02b_7fe0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
