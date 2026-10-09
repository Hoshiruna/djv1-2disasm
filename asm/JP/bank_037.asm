; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $037", ROMX[$4000], BANK[$37]

    dw GfxC1_G40 ; $00
    db LOW(GfxC1_G41) ; $01
Jump_037_4003:
    db HIGH(GfxC1_G41) ; $01
    dw GfxC1_G42 ; $02
    dw $4cde ; $03
    dw GfxC1_G44 ; $04
    dw $51e0 ; $05
    dw GfxC1_G46 ; $06
    dw $57f7 ; $07
    dw GfxC1_G48 ; $08
    dw GfxC1_G49 ; $09
    dw GfxC1_G4A ; $0a
    dw GfxC1_G4B ; $0b
    dw GfxC1_G4C ; $0c
    dw $70f0 ; $0d
    dw GfxC1_G4E ; $0e
    dw GfxC1_G4F ; $0f

GfxC1_G40:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $0, $22
jr_037_4042:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $22, $99
jr_037_40db:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $bb, $d
Call_037_40e8:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $c8, $d9
jr_037_41c1:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $1a1, $39
jr_037_41fa:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $1da, $1b
jr_037_4215:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $1f5, $5
jr_037_421a:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $1fa, $6d
jr_037_4287:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $267, $14
jr_037_429b:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $27b, $4c
jr_037_42e7:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $2c7, $76
jr_037_435d:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $33d, $1e
jr_037_437b:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $35b, $41
jr_037_43bc:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $39c, $10
jr_037_43cc:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $3ac, $21
jr_037_43ed:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $3cd, $97
jr_037_4484:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $464, $10
jr_037_4494:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $474, $2d
jr_037_44c1:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $4a1, $3
jr_037_44c4:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $4a4, $50
jr_037_4514:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $4f4, $26
jr_037_453a:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $51a, $26
jr_037_4560:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $540, $4a
jr_037_45aa:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $58a, $3d
jr_037_45e7:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $5c7, $19
jr_037_4600:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $5e0, $13
jr_037_4613:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $5f3, $22
jr_037_4635:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $615, $50
jr_037_4685:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $665, $1e
jr_037_46a3:
    INCBIN "../../res/scene/case1/common/JP/g40.bin", $683, $17

GfxC1_G41:
    INCBIN "../../res/scene/case1/common/JP/g41.bin", $0, $7f

GfxC1_G42:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $0, $21
jr_037_475a:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $21, $39
jr_037_4793:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $5a, $51
jr_037_47e4:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $ab, $7
jr_037_47eb:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $b2, $3
jr_037_47ee:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $b5, $17
jr_037_4805:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $cc, $1f
jr_037_4824:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $eb, $4
jr_037_4828:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $ef, $ea
jr_037_4912:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $1d9, $20
jr_037_4932:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $1f9, $28
jr_037_495a:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $221, $4c
jr_037_49a6:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $26d, $1
jr_037_49a7:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $26e, $2f
jr_037_49d6:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $29d, $29
jr_037_49ff:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $2c6, $2e
jr_037_4a2d:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $2f4, $6
jr_037_4a33:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $2fa, $10
jr_037_4a43:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $30a, $1
jr_037_4a44:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $30b, $3
jr_037_4a47:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $30e, $5b
jr_037_4aa2:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $369, $9
jr_037_4aab:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $372, $7
jr_037_4ab2:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $379, $22
jr_037_4ad4:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $39b, $11
jr_037_4ae5:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $3ac, $d
jr_037_4af2:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $3b9, $25
jr_037_4b17:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $3de, $6
jr_037_4b1d:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $3e4, $8a
jr_037_4ba7:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $46e, $61
jr_037_4c08:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $4cf, $5
jr_037_4c0d:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $4d4, $1b
jr_037_4c28:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $4ef, $b1
jr_037_4cd9:
    INCBIN "../../res/scene/case1/common/JP/g42.bin", $5a0, $5
    rst RST_38

GfxC1_G44:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $0, $13
jr_037_4cf2:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $13, $17
jr_037_4d09:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $2a, $23
jr_037_4d2c:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $4d, $25
jr_037_4d51:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $72, $9c
jr_037_4ded:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $10e, $66
jr_037_4e53:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $174, $29
jr_037_4e7c:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $19d, $2e
jr_037_4eaa:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $1cb, $27
jr_037_4ed1:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $1f2, $d
jr_037_4ede:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $1ff, $5
jr_037_4ee3:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $204, $f
jr_037_4ef2:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $213, $6
jr_037_4ef8:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $219, $49
jr_037_4f41:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $262, $22
jr_037_4f63:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $284, $1
jr_037_4f64:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $285, $25
jr_037_4f89:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $2aa, $9
jr_037_4f92:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $2b3, $10
jr_037_4fa2:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $2c3, $2
jr_037_4fa4:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $2c5, $3
jr_037_4fa7:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $2c8, $7
jr_037_4fae:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $2cf, $13
jr_037_4fc1:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $2e2, $23
jr_037_4fe4:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $305, $3e
Call_037_5022:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $343, $7
jr_037_5029:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $34a, $a
jr_037_5033:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $354, $1
jr_037_5034:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $355, $11
jr_037_5045:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $366, $30
jr_037_5075:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $396, $43
Call_037_50b8:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $3d9, $7
jr_037_50bf:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $3e0, $e
jr_037_50cd:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $3ee, $1
jr_037_50ce:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $3ef, $15
jr_037_50e3:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $404, $b
jr_037_50ee:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $40f, $19
jr_037_5107:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $428, $31
jr_037_5138:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $459, $1b
jr_037_5153:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $474, $36
jr_037_5189:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $4aa, $f
jr_037_5198:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $4b9, $5
jr_037_519d:
    INCBIN "../../res/scene/case1/common/JP/g44.bin", $4be, $43
    rst RST_38

GfxC1_G46:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $0, $13
jr_037_51f4:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $13, $17
jr_037_520b:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $2a, $23
jr_037_522e:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $4d, $25
jr_037_5253:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $72, $9c
jr_037_52ef:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $10e, $66
jr_037_5355:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $174, $29
jr_037_537e:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $19d, $3a
jr_037_53b8:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $1d7, $20
jr_037_53d8:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $1f7, $8
jr_037_53e0:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $1ff, $5
jr_037_53e5:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $204, $15
jr_037_53fa:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $219, $b
jr_037_5405:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $224, $2c
jr_037_5431:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $250, $8
jr_037_5439:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $258, $20
jr_037_5459:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $278, $2
jr_037_545b:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $27a, $36
jr_037_5491:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $2b0, $18
jr_037_54a9:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $2c8, $e
jr_037_54b7:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $2d6, $5
jr_037_54bc:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $2db, $e
jr_037_54ca:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $2e9, $99
jr_037_5563:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $382, $85
jr_037_55e8:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $407, $33
jr_037_561b:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $43a, $55
jr_037_5670:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $48f, $3d
jr_037_56ad:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $4cc, $1f
jr_037_56cc:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $4eb, $1b
jr_037_56e7:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $506, $33
jr_037_571a:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $539, $20
jr_037_573a:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $559, $5
jr_037_573f:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $55e, $70
jr_037_57af:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $5ce, $40
jr_037_57ef:
    INCBIN "../../res/scene/case1/common/JP/g46.bin", $60e, $8
    rst RST_38

GfxC1_G48:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $0, $5
jr_037_57fd:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $5, $ff
jr_037_58fc:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $104, $23
jr_037_591f:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $127, $3a
jr_037_5959:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $161, $14
jr_037_596d:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $175, $44
jr_037_59b1:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $1b9, $5
jr_037_59b6:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $1be, $62
Jump_037_5a18:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $220, $1d
Jump_037_5a35:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $23d, $7f
jr_037_5ab4:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $2bc, $1a
jr_037_5ace:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $2d6, $4d
jr_037_5b1b:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $323, $36
jr_037_5b51:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $359, $5b
jr_037_5bac:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $3b4, $1b
jr_037_5bc7:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $3cf, $3b
Call_037_5c02:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $40a, $1
Jump_037_5c03:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $40b, $1
Jump_037_5c04:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $40c, $3
jr_037_5c07:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $40f, $15
jr_037_5c1c:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $424, $38
jr_037_5c54:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $45c, $6
jr_037_5c5a:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $462, $1
jr_037_5c5b:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $463, $7b
jr_037_5cd6:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $4de, $60
jr_037_5d36:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $53e, $2c
jr_037_5d62:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $56a, $8
jr_037_5d6a:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $572, $20
jr_037_5d8a:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $592, $5
jr_037_5d8f:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $597, $2a
jr_037_5db9:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $5c1, $33
jr_037_5dec:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $5f4, $5
jr_037_5df1:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $5f9, $74
jr_037_5e65:
    INCBIN "../../res/scene/case1/common/JP/g48.bin", $66d, $6c

GfxC1_G49:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $0, $c5
jr_037_5f96:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $c5, $3
jr_037_5f99:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $c8, $2b
jr_037_5fc4:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $f3, $45
Jump_037_6009:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $138, $10
Jump_037_6019:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $148, $3d
jr_037_6056:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $185, $2e
jr_037_6084:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $1b3, $1e
jr_037_60a2:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $1d1, $1f
jr_037_60c1:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $1f0, $e
jr_037_60cf:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $1fe, $35
jr_037_6104:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $233, $6
jr_037_610a:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $239, $32
jr_037_613c:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $26b, $c
jr_037_6148:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $277, $37
jr_037_617f:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $2ae, $19
jr_037_6198:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $2c7, $24
jr_037_61bc:
    INCBIN "../../res/scene/case1/common/JP/g49.bin", $2eb, $1d

GfxC1_G4A:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $0, $d
jr_037_61e6:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $d, $39
jr_037_621f:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $46, $c6
jr_037_62e5:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $10c, $23
jr_037_6308:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $12f, $35
jr_037_633d:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $164, $81
jr_037_63be:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $1e5, $f
jr_037_63cd:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $1f4, $1a
jr_037_63e7:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $20e, $1a
jr_037_6401:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $228, $9
jr_037_640a:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $231, $80
jr_037_648a:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $2b1, $59
jr_037_64e3:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $30a, $69
jr_037_654c:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $373, $1e
jr_037_656a:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $391, $2
jr_037_656c:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $393, $6
jr_037_6572:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $399, $5
jr_037_6577:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $39e, $8
jr_037_657f:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $3a6, $c
jr_037_658b:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $3b2, $72
jr_037_65fd:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $424, $45
jr_037_6642:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $469, $b6
jr_037_66f8:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $51f, $10
jr_037_6708:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $52f, $10
jr_037_6718:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $53f, $3b
jr_037_6753:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $57a, $9
jr_037_675c:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $583, $5f
jr_037_67bb:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $5e2, $b
jr_037_67c6:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $5ed, $36
jr_037_67fc:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $623, $36
jr_037_6832:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $659, $4
jr_037_6836:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $65d, $1a
jr_037_6850:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $677, $17
jr_037_6867:
    INCBIN "../../res/scene/case1/common/JP/g4a.bin", $68e, $48

GfxC1_G4B:
    INCBIN "../../res/scene/case1/common/JP/g4b.bin", $0, $12
jr_037_68c1:
    INCBIN "../../res/scene/case1/common/JP/g4b.bin", $12, $3c
jr_037_68fd:
    INCBIN "../../res/scene/case1/common/JP/g4b.bin", $4e, $73
jr_037_6970:
    INCBIN "../../res/scene/case1/common/JP/g4b.bin", $c1, $36
jr_037_69a6:

GfxC1_G4C:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $0, $3
jr_037_69a9:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $3, $3b
jr_037_69e4:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $3e, $2
jr_037_69e6:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $40, $2
jr_037_69e8:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $42, $42
jr_037_6a2a:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $84, $1b
jr_037_6a45:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $9f, $4f
jr_037_6a94:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $ee, $48
jr_037_6adc:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $136, $49
jr_037_6b25:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $17f, $4a
jr_037_6b6f:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $1c9, $48
jr_037_6bb7:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $211, $1
jr_037_6bb8:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $212, $1f
jr_037_6bd7:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $231, $89
jr_037_6c60:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $2ba, $24
jr_037_6c84:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $2de, $6b
jr_037_6cef:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $349, $2a
jr_037_6d19:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $373, $8c
jr_037_6da5:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $3ff, $15
jr_037_6dba:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $414, $16
jr_037_6dd0:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $42a, $17
jr_037_6de7:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $441, $15
jr_037_6dfc:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $456, $3
jr_037_6dff:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $459, $e
jr_037_6e0d:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $467, $de
jr_037_6eeb:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $545, $c
jr_037_6ef7:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $551, $f
jr_037_6f06:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $560, $4d
jr_037_6f53:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $5ad, $2f
jr_037_6f82:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $5dc, $23
jr_037_6fa5:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $5ff, $14
jr_037_6fb9:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $613, $60
jr_037_7019:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $673, $1c
jr_037_7035:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $68f, $5
jr_037_703a:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $694, $1e
jr_037_7058:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $6b2, $38
jr_037_7090:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $6ea, $50
jr_037_70e0:
    INCBIN "../../res/scene/case1/common/JP/g4c.bin", $73a, $10
    rst RST_38

GfxC1_G4E:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $0, $9b
jr_037_718c:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $9b, $1
jr_037_718d:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $9c, $21
jr_037_71ae:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $bd, $65
jr_037_7213:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $122, $2a
jr_037_723d:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $14c, $39
jr_037_7276:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $185, $18
jr_037_728e:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $19d, $6e
jr_037_72fc:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $20b, $60
jr_037_735c:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $26b, $11
jr_037_736d:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $27c, $4e
Jump_037_73bb:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $2ca, $e
jr_037_73c9:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $2d8, $6a
jr_037_7433:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $342, $1f
jr_037_7452:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $361, $58
jr_037_74aa:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $3b9, $40
Call_037_74ea:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $3f9, $2
jr_037_74ec:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $3fb, $c4
jr_037_75b0:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $4bf, $4b
jr_037_75fb:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $50a, $79
Call_037_7674:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $583, $32
jr_037_76a6:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $5b5, $1c
jr_037_76c2:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $5d1, $17
jr_037_76d9:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $5e8, $5
Call_037_76de:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $5ed, $1
Call_037_76df:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $5ee, $29
Jump_037_7708:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $617, $33
jr_037_773b:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $64a, $a
jr_037_7745:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $654, $44
jr_037_7789:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $698, $93
jr_037_781c:
    INCBIN "../../res/scene/case1/common/JP/g4e.bin", $72b, $57

GfxC1_G4F:
    INCBIN "../../res/scene/case1/common/JP/g4f.bin", $0, $21
jr_037_7894:
    INCBIN "../../res/scene/case1/common/JP/g4f.bin", $21, $23
jr_037_78b7:
    INCBIN "../../res/scene/case1/common/JP/g4f.bin", $44, $1
    db $00

jr_037_78b9:
    nop
    nop

jr_037_78bb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_037_78f0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_037_790d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_037_7a00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_037_7a3a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_037_7d10:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_037_7ef0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
