; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $038", ROMX[$4000], BANK[$38]

    dw GfxC1_G50 ; $00
Call_038_4002:
    dw $4628 ; $01
    dw GfxC1_G52 ; $02
    dw GfxC1_G53 ; $03
    dw GfxC1_G54 ; $04
    dw $546f ; $05
    dw GfxC1_G56 ; $06
    dw GfxC1_G57 ; $07
Jump_038_4010:
    dw GfxC1_G58 ; $08
    dw GfxC1_G59 ; $09
    dw GfxC1_G5A ; $0a
    dw $6aab ; $0b
    dw GfxC1_G5C ; $0c
    dw GfxC1_G5D ; $0d
    dw GfxC1_G5E ; $0e
    dw GfxC1_G5F ; $0f

GfxC1_G50:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $0, $10
Jump_038_4030:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $10, $2
jr_038_4032:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $12, $10
jr_038_4042:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $22, $8
jr_038_404a:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $2a, $a
Jump_038_4054:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $34, $24
jr_038_4078:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $58, $1b
jr_038_4093:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $73, $23
jr_038_40b6:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $96, $52
jr_038_4108:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $e8, $29
jr_038_4131:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $111, $89
Call_038_41ba:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $19a, $69
Call_038_4223:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $203, $48
jr_038_426b:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $24b, $83
jr_038_42ee:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $2ce, $4
jr_038_42f2:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $2d2, $6a
jr_038_435c:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $33c, $4
jr_038_4360:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $340, $10
jr_038_4370:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $350, $3f
jr_038_43af:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $38f, $e
jr_038_43bd:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $39d, $44
Jump_038_4401:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $3e1, $3
jr_038_4404:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $3e4, $2f
jr_038_4433:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $413, $b
jr_038_443e:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $41e, $2
jr_038_4440:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $420, $17
jr_038_4457:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $437, $14
jr_038_446b:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $44b, $2
jr_038_446d:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $44d, $a
jr_038_4477:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $457, $2f
jr_038_44a6:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $486, $27
jr_038_44cd:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $4ad, $2
jr_038_44cf:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $4af, $13
jr_038_44e2:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $4c2, $aa
jr_038_458c:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $56c, $1e
jr_038_45aa:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $58a, $14
jr_038_45be:
    INCBIN "../../res/scene/case1/common/US/g50.bin", $59e, $6a
    rst RST_38

GfxC1_G52:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $0, $21
jr_038_464a:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $21, $2
jr_038_464c:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $23, $14
jr_038_4660:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $37, $e
jr_038_466e:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $45, $81
jr_038_46ef:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $c6, $64
jr_038_4753:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $12a, $12
jr_038_4765:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $13c, $16
jr_038_477b:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $152, $9
jr_038_4784:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $15b, $44
Jump_038_47c8:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $19f, $2c
jr_038_47f4:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $1cb, $c
Call_038_4800:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $1d7, $21
jr_038_4821:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $1f8, $2
jr_038_4823:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $1fa, $5
jr_038_4828:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $1ff, $46
jr_038_486e:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $245, $b
jr_038_4879:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $250, $2e
jr_038_48a7:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $27e, $7e
jr_038_4925:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $2fc, $4b
jr_038_4970:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $347, $b
jr_038_497b:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $352, $60
jr_038_49db:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $3b2, $12
jr_038_49ed:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $3c4, $46
jr_038_4a33:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $40a, $26
jr_038_4a59:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $430, $15
jr_038_4a6e:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $445, $52
jr_038_4ac0:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $497, $6e
jr_038_4b2e:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $505, $42
jr_038_4b70:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $547, $8d
jr_038_4bfd:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $5d4, $14
jr_038_4c11:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $5e8, $c
jr_038_4c1d:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $5f4, $37
jr_038_4c54:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $62b, $c
jr_038_4c60:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $637, $10
jr_038_4c70:
    INCBIN "../../res/scene/case1/common/US/g52.bin", $647, $18

GfxC1_G53:
    INCBIN "../../res/scene/case1/common/US/g53.bin", $0, $4a
jr_038_4cd2:
    INCBIN "../../res/scene/case1/common/US/g53.bin", $4a, $11
Call_038_4ce3:
    INCBIN "../../res/scene/case1/common/US/g53.bin", $5b, $4
jr_038_4ce7:
    INCBIN "../../res/scene/case1/common/US/g53.bin", $5f, $27
jr_038_4d0e:
    INCBIN "../../res/scene/case1/common/US/g53.bin", $86, $99
jr_038_4da7:
    INCBIN "../../res/scene/case1/common/US/g53.bin", $11f, $13

GfxC1_G54:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $0, $9
jr_038_4dc3:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $9, $37
jr_038_4dfa:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $40, $10
jr_038_4e0a:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $50, $f
jr_038_4e19:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $5f, $1f
jr_038_4e38:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $7e, $19
jr_038_4e51:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $97, $10
jr_038_4e61:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $a7, $18
jr_038_4e79:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $bf, $3f
jr_038_4eb8:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $fe, $b
jr_038_4ec3:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $109, $2d
jr_038_4ef0:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $136, $8
jr_038_4ef8:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $13e, $e
jr_038_4f06:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $14c, $2a
jr_038_4f30:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $176, $3
jr_038_4f33:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $179, $f
jr_038_4f42:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $188, $24
jr_038_4f66:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $1ac, $20
jr_038_4f86:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $1cc, $4
jr_038_4f8a:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $1d0, $4e
jr_038_4fd8:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $21e, $4
jr_038_4fdc:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $222, $5e
jr_038_503a:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $280, $7
jr_038_5041:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $287, $3
jr_038_5044:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $28a, $6
jr_038_504a:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $290, $a1
Call_038_50eb:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $331, $5e
jr_038_5149:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $38f, $9
jr_038_5152:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $398, $35
jr_038_5187:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $3cd, $a
jr_038_5191:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $3d7, $f8
jr_038_5289:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $4cf, $b
jr_038_5294:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $4da, $d
jr_038_52a1:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $4e7, $55
jr_038_52f6:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $53c, $57
jr_038_534d:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $593, $67
jr_038_53b4:
    INCBIN "../../res/scene/case1/common/US/g54.bin", $5fa, $bb
    rst RST_38

GfxC1_G56:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $0, $11
jr_038_5481:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $11, $59
jr_038_54da:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $6a, $4c
jr_038_5526:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $b6, $4f
jr_038_5575:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $105, $3
jr_038_5578:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $108, $11
jr_038_5589:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $119, $71
jr_038_55fa:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $18a, $1e
jr_038_5618:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $1a8, $1
jr_038_5619:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $1a9, $a
jr_038_5623:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $1b3, $2
jr_038_5625:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $1b5, $a
jr_038_562f:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $1bf, $5d
jr_038_568c:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $21c, $1
jr_038_568d:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $21d, $30
jr_038_56bd:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $24d, $2e
jr_038_56eb:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $27b, $b
jr_038_56f6:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $286, $25
jr_038_571b:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $2ab, $32
jr_038_574d:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $2dd, $3
jr_038_5750:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $2e0, $1d
jr_038_576d:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $2fd, $40
jr_038_57ad:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $33d, $6c
jr_038_5819:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $3a9, $a
Jump_038_5823:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $3b3, $3a
jr_038_585d:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $3ed, $1
jr_038_585e:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $3ee, $1b
jr_038_5879:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $409, $a
jr_038_5883:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $413, $3
jr_038_5886:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $416, $2a
jr_038_58b0:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $440, $34
jr_038_58e4:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $474, $12
jr_038_58f6:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $486, $ea
jr_038_59e0:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $570, $26
jr_038_5a06:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $596, $16
jr_038_5a1c:
    INCBIN "../../res/scene/case1/common/US/g56.bin", $5ac, $24

GfxC1_G57:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $0, $15
jr_038_5a55:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $15, $14
jr_038_5a69:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $29, $9
jr_038_5a72:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $32, $9f
jr_038_5b11:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $d1, $8a
jr_038_5b9b:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $15b, $4
jr_038_5b9f:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $15f, $e
jr_038_5bad:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $16d, $108
jr_038_5cb5:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $275, $52
jr_038_5d07:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $2c7, $b
jr_038_5d12:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $2d2, $8
jr_038_5d1a:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $2da, $36
jr_038_5d50:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $310, $11
jr_038_5d61:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $321, $8
jr_038_5d69:
    INCBIN "../../res/scene/case1/common/US/g57.bin", $329, $54

GfxC1_G58:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $0, $4e
jr_038_5e0b:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $4e, $33
jr_038_5e3e:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $81, $5b
jr_038_5e99:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $dc, $3
jr_038_5e9c:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $df, $75
Jump_038_5f11:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $154, $7f
jr_038_5f90:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $1d3, $17
jr_038_5fa7:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $1ea, $e
jr_038_5fb5:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $1f8, $53
jr_038_6008:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $24b, $9
jr_038_6011:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $254, $11
jr_038_6022:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $265, $32
jr_038_6054:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $297, $3
jr_038_6057:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $29a, $28
Jump_038_607f:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $2c2, $12
jr_038_6091:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $2d4, $25
jr_038_60b6:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $2f9, $20
jr_038_60d6:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $319, $26
jr_038_60fc:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $33f, $7
jr_038_6103:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $346, $9
jr_038_610c:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $34f, $1a
jr_038_6126:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $369, $7
jr_038_612d:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $370, $47
jr_038_6174:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $3b7, $e
jr_038_6182:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $3c5, $32
jr_038_61b4:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $3f7, $d
jr_038_61c1:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $404, $24
jr_038_61e5:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $428, $40
Call_038_6225:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $468, $6
jr_038_622b:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $46e, $27
jr_038_6252:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $495, $1c
jr_038_626e:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $4b1, $d
jr_038_627b:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $4be, $28
jr_038_62a3:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $4e6, $4b
jr_038_62ee:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $531, $3f
jr_038_632d:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $570, $10
jr_038_633d:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $580, $b
jr_038_6348:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $58b, $6
jr_038_634e:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $591, $b
jr_038_6359:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $59c, $8
jr_038_6361:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $5a4, $40
jr_038_63a1:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $5e4, $15
jr_038_63b6:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $5f9, $2
jr_038_63b8:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $5fb, $36
jr_038_63ee:
    INCBIN "../../res/scene/case1/common/US/g58.bin", $631, $32

GfxC1_G59:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $0, $c
jr_038_642c:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $c, $1
jr_038_642d:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $d, $2c
jr_038_6459:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $39, $1c
jr_038_6475:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $55, $3e
jr_038_64b3:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $93, $7
jr_038_64ba:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $9a, $e
jr_038_64c8:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $a8, $1c
jr_038_64e4:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $c4, $46
jr_038_652a:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $10a, $6
jr_038_6530:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $110, $24
jr_038_6554:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $134, $36
jr_038_658a:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $16a, $7
jr_038_6591:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $171, $1e
jr_038_65af:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $18f, $3a
jr_038_65e9:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $1c9, $3
jr_038_65ec:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $1cc, $46
jr_038_6632:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $212, $1f
jr_038_6651:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $231, $3
jr_038_6654:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $234, $c
jr_038_6660:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $240, $17
jr_038_6677:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $257, $3
jr_038_667a:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $25a, $3
jr_038_667d:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $25d, $e
jr_038_668b:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $26b, $d
jr_038_6698:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $278, $1
Call_038_6699:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $279, $26
jr_038_66bf:
    INCBIN "../../res/scene/case1/common/US/g59.bin", $29f, $65

GfxC1_G5A:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $0, $28
jr_038_674c:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $28, $8
jr_038_6754:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $30, $2f
jr_038_6783:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $5f, $20
jr_038_67a3:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $7f, $8
jr_038_67ab:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $87, $6f
jr_038_681a:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $f6, $2f
jr_038_6849:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $125, $25
jr_038_686e:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $14a, $6
jr_038_6874:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $150, $f
jr_038_6883:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $15f, $3a
jr_038_68bd:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $199, $5
jr_038_68c2:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $19e, $18
jr_038_68da:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $1b6, $38
jr_038_6912:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $1ee, $2
jr_038_6914:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $1f0, $c
jr_038_6920:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $1fc, $10
jr_038_6930:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $20c, $2
jr_038_6932:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $20e, $15
jr_038_6947:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $223, $10
jr_038_6957:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $233, $3
jr_038_695a:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $236, $4e
jr_038_69a8:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $284, $64
jr_038_6a0c:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $2e8, $79
jr_038_6a85:
    INCBIN "../../res/scene/case1/common/US/g5a.bin", $361, $26
    rst RST_38

GfxC1_G5C:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $0, $3d
jr_038_6ae9:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $3d, $16
Call_038_6aff:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $53, $4d
jr_038_6b4c:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $a0, $1
jr_038_6b4d:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $a1, $12
jr_038_6b5f:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $b3, $2b
jr_038_6b8a:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $de, $26
jr_038_6bb0:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $104, $3
jr_038_6bb3:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $107, $1
jr_038_6bb4:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $108, $11
jr_038_6bc5:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $119, $52
jr_038_6c17:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $16b, $2d
jr_038_6c44:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $198, $d
jr_038_6c51:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $1a5, $9
jr_038_6c5a:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $1ae, $4c
jr_038_6ca6:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $1fa, $37
jr_038_6cdd:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $231, $1
jr_038_6cde:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $232, $6d
jr_038_6d4b:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $29f, $26
jr_038_6d71:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $2c5, $1c
jr_038_6d8d:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $2e1, $b
jr_038_6d98:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $2ec, $29
jr_038_6dc1:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $315, $6
jr_038_6dc7:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $31b, $15
jr_038_6ddc:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $330, $6
jr_038_6de2:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $336, $57
jr_038_6e39:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $38d, $2e
jr_038_6e67:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $3bb, $23
jr_038_6e8a:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $3de, $10
jr_038_6e9a:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $3ee, $3a
jr_038_6ed4:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $428, $4
jr_038_6ed8:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $42c, $16
jr_038_6eee:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $442, $2d
jr_038_6f1b:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $46f, $c
jr_038_6f27:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $47b, $b
jr_038_6f32:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $486, $d
jr_038_6f3f:
    INCBIN "../../res/scene/case1/common/US/g5c.bin", $493, $21

GfxC1_G5D:
    INCBIN "../../res/scene/case1/common/US/g5d.bin", $0, $13

GfxC1_G5E:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $0, $26
jr_038_6f99:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $26, $11
jr_038_6faa:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $37, $8b
jr_038_7035:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $c2, $9
jr_038_703e:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $cb, $24
jr_038_7062:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $ef, $39
jr_038_709b:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $128, $2
jr_038_709d:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $12a, $5
jr_038_70a2:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $12f, $7d
jr_038_711f:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $1ac, $17
jr_038_7136:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $1c3, $5
jr_038_713b:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $1c8, $10
jr_038_714b:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $1d8, $e
jr_038_7159:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $1e6, $5
jr_038_715e:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $1eb, $29
jr_038_7187:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $214, $6
jr_038_718d:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $21a, $64
jr_038_71f1:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $27e, $2
jr_038_71f3:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $280, $11
jr_038_7204:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $291, $4
jr_038_7208:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $295, $14
jr_038_721c:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $2a9, $6
jr_038_7222:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $2af, $2a
jr_038_724c:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $2d9, $a
jr_038_7256:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $2e3, $23
jr_038_7279:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $306, $3
jr_038_727c:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $309, $1da
jr_038_7456:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $4e3, $6
jr_038_745c:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $4e9, $6e
jr_038_74ca:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $557, $26
jr_038_74f0:
    INCBIN "../../res/scene/case1/common/US/g5e.bin", $57d, $36

GfxC1_G5F:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $0, $6
jr_038_752c:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $6, $6
jr_038_7532:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $c, $30
jr_038_7562:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $3c, $6f
jr_038_75d1:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $ab, $e
jr_038_75df:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $b9, $20
jr_038_75ff:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $d9, $d
jr_038_760c:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $e6, $8c
jr_038_7698:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $172, $16
jr_038_76ae:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $188, $1
jr_038_76af:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $189, $22
jr_038_76d1:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $1ab, $1
jr_038_76d2:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $1ac, $e
jr_038_76e0:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $1ba, $50
jr_038_7730:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $20a, $1e
jr_038_774e:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $228, $1b
jr_038_7769:
    INCBIN "../../res/scene/case1/common/US/g5f.bin", $243, $a
    db $00, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_038_777d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_038_7dff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_038_7f11:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_038_7f37:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
