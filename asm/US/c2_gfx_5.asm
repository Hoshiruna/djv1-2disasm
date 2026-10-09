; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02f", ROMX[$4000], BANK[$2f]

    dw GfxC2_G50 ; $00
    dw GfxC2_G51 ; $01
    dw GfxC2_G52 ; $02
    dw GfxC2_G53 ; $03
    dw GfxC2_G54 ; $04
    dw GfxC2_G55 ; $05
    dw GfxC2_G56 ; $06
    dw GfxC2_G57 ; $07
    dw GfxC2_G58 ; $08
    dw GfxC2_G59 ; $09
    dw GfxC2_G5A ; $0a
    dw GfxC2_G5B ; $0b
    dw GfxC2_G5C ; $0c
    dw $7439 ; $0d
    dw GfxC2_G5E ; $0e
    dw GfxC2_G5F ; $0f

GfxC2_G50:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $0, $22
jr_02f_4042:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $22, $5
jr_02f_4047:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $27, $c
jr_02f_4053:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $33, $b0
jr_02f_4103:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $e3, $18
jr_02f_411b:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $fb, $62
jr_02f_417d:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $15d, $28
jr_02f_41a5:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $185, $48
jr_02f_41ed:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $1cd, $14
jr_02f_4201:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $1e1, $20
jr_02f_4221:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $201, $36
jr_02f_4257:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $237, $1a
jr_02f_4271:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $251, $27
jr_02f_4298:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $278, $15
jr_02f_42ad:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $28d, $3
jr_02f_42b0:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $290, $1d
jr_02f_42cd:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $2ad, $1f
jr_02f_42ec:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $2cc, $3
jr_02f_42ef:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $2cf, $16
jr_02f_4305:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $2e5, $9
jr_02f_430e:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $2ee, $22
jr_02f_4330:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $310, $2
jr_02f_4332:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $312, $11
jr_02f_4343:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $323, $5
jr_02f_4348:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $328, $1a
jr_02f_4362:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $342, $3
jr_02f_4365:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $345, $17
jr_02f_437c:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $35c, $10
jr_02f_438c:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $36c, $7
jr_02f_4393:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $373, $20
jr_02f_43b3:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $393, $47
Jump_02f_43fa:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $3da, $29
jr_02f_4423:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $403, $6
jr_02f_4429:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $409, $9
jr_02f_4432:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $412, $13
jr_02f_4445:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $425, $29
jr_02f_446e:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $44e, $b
jr_02f_4479:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $459, $24
jr_02f_449d:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $47d, $27
jr_02f_44c4:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $4a4, $26
jr_02f_44ea:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $4ca, $f
jr_02f_44f9:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $4d9, $1b
jr_02f_4514:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $4f4, $1a
jr_02f_452e:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $50e, $4
jr_02f_4532:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $512, $1c
jr_02f_454e:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $52e, $e
jr_02f_455c:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $53c, $3
jr_02f_455f:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $53f, $9
jr_02f_4568:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $548, $3
jr_02f_456b:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $54b, $22
jr_02f_458d:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $56d, $e
jr_02f_459b:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $57b, $b
jr_02f_45a6:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $586, $19
jr_02f_45bf:
    INCBIN "../../res/scene/case2/common/US/g50.bin", $59f, $3d

GfxC2_G51:
    INCBIN "../../res/scene/case2/common/US/g51.bin", $0, $67
jr_02f_4663:
    INCBIN "../../res/scene/case2/common/US/g51.bin", $67, $45
jr_02f_46a8:
    INCBIN "../../res/scene/case2/common/US/g51.bin", $ac, $7
jr_02f_46af:
    INCBIN "../../res/scene/case2/common/US/g51.bin", $b3, $21
jr_02f_46d0:
    INCBIN "../../res/scene/case2/common/US/g51.bin", $d4, $41
jr_02f_4711:
    INCBIN "../../res/scene/case2/common/US/g51.bin", $115, $6

GfxC2_G52:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $0, $23
jr_02f_473a:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $23, $3
jr_02f_473d:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $26, $9a
jr_02f_47d7:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $c0, $fb
jr_02f_48d2:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $1bb, $2d
Jump_02f_48ff:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $1e8, $1
jr_02f_4900:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $1e9, $2e
jr_02f_492e:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $217, $b1
jr_02f_49df:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $2c8, $8
jr_02f_49e7:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $2d0, $40
jr_02f_4a27:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $310, $1b
jr_02f_4a42:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $32b, $14
jr_02f_4a56:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $33f, $2a
jr_02f_4a80:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $369, $5
jr_02f_4a85:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $36e, $14
jr_02f_4a99:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $382, $2
jr_02f_4a9b:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $384, $15
jr_02f_4ab0:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $399, $12
jr_02f_4ac2:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $3ab, $6e
Call_02f_4b30:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $419, $8a
jr_02f_4bba:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $4a3, $40
jr_02f_4bfa:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $4e3, $5
Jump_02f_4bff:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $4e8, $19
Jump_02f_4c18:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $501, $6
jr_02f_4c1e:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $507, $2e
jr_02f_4c4c:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $535, $2
jr_02f_4c4e:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $537, $41
jr_02f_4c8f:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $578, $41
jr_02f_4cd0:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $5b9, $b
jr_02f_4cdb:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $5c4, $20
jr_02f_4cfb:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $5e4, $58
jr_02f_4d53:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $63c, $35
jr_02f_4d88:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $671, $4
jr_02f_4d8c:
    INCBIN "../../res/scene/case2/common/US/g52.bin", $675, $21

GfxC2_G53:
    INCBIN "../../res/scene/case2/common/US/g53.bin", $0, $4f
jr_02f_4dfc:
    INCBIN "../../res/scene/case2/common/US/g53.bin", $4f, $39
jr_02f_4e35:
    INCBIN "../../res/scene/case2/common/US/g53.bin", $88, $34
jr_02f_4e69:
    INCBIN "../../res/scene/case2/common/US/g53.bin", $bc, $b8
jr_02f_4f21:
    INCBIN "../../res/scene/case2/common/US/g53.bin", $174, $a
Call_02f_4f2b:
    INCBIN "../../res/scene/case2/common/US/g53.bin", $17e, $36
Call_02f_4f61:
    INCBIN "../../res/scene/case2/common/US/g53.bin", $1b4, $b
jr_02f_4f6c:
    INCBIN "../../res/scene/case2/common/US/g53.bin", $1bf, $64
jr_02f_4fd0:
    INCBIN "../../res/scene/case2/common/US/g53.bin", $223, $42
jr_02f_5012:
    INCBIN "../../res/scene/case2/common/US/g53.bin", $265, $4c
jr_02f_505e:
    INCBIN "../../res/scene/case2/common/US/g53.bin", $2b1, $71

GfxC2_G54:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $0, $53
Call_02f_5122:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $53, $66
jr_02f_5188:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $b9, $39
Call_02f_51c1:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $f2, $40
jr_02f_5201:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $132, $41
jr_02f_5242:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $173, $2
jr_02f_5244:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $175, $13
jr_02f_5257:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $188, $8
jr_02f_525f:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $190, $41
jr_02f_52a0:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $1d1, $15
jr_02f_52b5:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $1e6, $30
jr_02f_52e5:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $216, $71
jr_02f_5356:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $287, $5
jr_02f_535b:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $28c, $37
jr_02f_5392:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $2c3, $25
jr_02f_53b7:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $2e8, $1a
jr_02f_53d1:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $302, $20
jr_02f_53f1:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $322, $6
jr_02f_53f7:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $328, $3
jr_02f_53fa:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $32b, $28
jr_02f_5422:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $353, $25
jr_02f_5447:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $378, $2f
jr_02f_5476:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $3a7, $44
jr_02f_54ba:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $3eb, $f
jr_02f_54c9:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $3fa, $2e
jr_02f_54f7:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $428, $12
jr_02f_5509:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $43a, $4
jr_02f_550d:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $43e, $23
jr_02f_5530:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $461, $10
jr_02f_5540:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $471, $2a
jr_02f_556a:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $49b, $20
jr_02f_558a:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $4bb, $1e
jr_02f_55a8:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $4d9, $43
jr_02f_55eb:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $51c, $30
jr_02f_561b:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $54c, $b
jr_02f_5626:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $557, $2e
jr_02f_5654:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $585, $17
jr_02f_566b:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $59c, $e
jr_02f_5679:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $5aa, $49
jr_02f_56c2:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $5f3, $15
jr_02f_56d7:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $608, $28
jr_02f_56ff:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $630, $1c
jr_02f_571b:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $64c, $6
jr_02f_5721:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $652, $1
jr_02f_5722:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $653, $b
jr_02f_572d:
    INCBIN "../../res/scene/case2/common/US/g54.bin", $65e, $3c

GfxC2_G55:
    INCBIN "../../res/scene/case2/common/US/g55.bin", $0, $c
jr_02f_5775:
    INCBIN "../../res/scene/case2/common/US/g55.bin", $c, $6e
jr_02f_57e3:
    INCBIN "../../res/scene/case2/common/US/g55.bin", $7a, $21
jr_02f_5804:
    INCBIN "../../res/scene/case2/common/US/g55.bin", $9b, $c
jr_02f_5810:
    INCBIN "../../res/scene/case2/common/US/g55.bin", $a7, $f
jr_02f_581f:
    INCBIN "../../res/scene/case2/common/US/g55.bin", $b6, $2
Call_02f_5821:
    INCBIN "../../res/scene/case2/common/US/g55.bin", $b8, $64
jr_02f_5885:
    INCBIN "../../res/scene/case2/common/US/g55.bin", $11c, $13
jr_02f_5898:
    INCBIN "../../res/scene/case2/common/US/g55.bin", $12f, $47

GfxC2_G56:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $0, $3
jr_02f_58e2:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $3, $1c
jr_02f_58fe:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $1f, $17
jr_02f_5915:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $36, $4
jr_02f_5919:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $3a, $af
jr_02f_59c8:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $e9, $17
jr_02f_59df:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $100, $f
jr_02f_59ee:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $10f, $b
jr_02f_59f9:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $11a, $9
jr_02f_5a02:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $123, $3e
jr_02f_5a40:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $161, $4f
jr_02f_5a8f:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $1b0, $28
jr_02f_5ab7:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $1d8, $10
jr_02f_5ac7:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $1e8, $1c
jr_02f_5ae3:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $204, $2c
jr_02f_5b0f:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $230, $5
jr_02f_5b14:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $235, $1b
jr_02f_5b2f:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $250, $77
jr_02f_5ba6:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $2c7, $16
jr_02f_5bbc:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $2dd, $29
jr_02f_5be5:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $306, $5e
jr_02f_5c43:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $364, $37
jr_02f_5c7a:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $39b, $37
jr_02f_5cb1:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $3d2, $10
jr_02f_5cc1:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $3e2, $c
jr_02f_5ccd:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $3ee, $7
jr_02f_5cd4:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $3f5, $f
jr_02f_5ce3:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $404, $15
jr_02f_5cf8:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $419, $23
jr_02f_5d1b:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $43c, $c
jr_02f_5d27:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $448, $3a
jr_02f_5d61:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $482, $7
jr_02f_5d68:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $489, $f
jr_02f_5d77:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $498, $2a
jr_02f_5da1:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $4c2, $107
jr_02f_5ea8:
    INCBIN "../../res/scene/case2/common/US/g56.bin", $5c9, $7

GfxC2_G57:
    INCBIN "../../res/scene/case2/common/US/g57.bin", $0, $19
jr_02f_5ec8:
    INCBIN "../../res/scene/case2/common/US/g57.bin", $19, $b
jr_02f_5ed3:
    INCBIN "../../res/scene/case2/common/US/g57.bin", $24, $35
jr_02f_5f08:
    INCBIN "../../res/scene/case2/common/US/g57.bin", $59, $15
jr_02f_5f1d:
    INCBIN "../../res/scene/case2/common/US/g57.bin", $6e, $1
jr_02f_5f1e:
    INCBIN "../../res/scene/case2/common/US/g57.bin", $6f, $82
jr_02f_5fa0:
    INCBIN "../../res/scene/case2/common/US/g57.bin", $f1, $d
jr_02f_5fad:
    INCBIN "../../res/scene/case2/common/US/g57.bin", $fe, $50
jr_02f_5ffd:
    INCBIN "../../res/scene/case2/common/US/g57.bin", $14e, $6d

GfxC2_G58:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $0, $33
jr_02f_609d:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $33, $43
jr_02f_60e0:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $76, $10
jr_02f_60f0:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $86, $12
jr_02f_6102:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $98, $28
jr_02f_612a:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $c0, $26
jr_02f_6150:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $e6, $24
jr_02f_6174:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $10a, $2
jr_02f_6176:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $10c, $18
jr_02f_618e:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $124, $20
jr_02f_61ae:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $144, $12
jr_02f_61c0:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $156, $8
jr_02f_61c8:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $15e, $4
jr_02f_61cc:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $162, $29
Jump_02f_61f5:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $18b, $c
jr_02f_6201:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $197, $d
jr_02f_620e:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $1a4, $12
Jump_02f_6220:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $1b6, $46
jr_02f_6266:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $1fc, $12
jr_02f_6278:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $20e, $17
jr_02f_628f:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $225, $15
jr_02f_62a4:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $23a, $2
jr_02f_62a6:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $23c, $5
jr_02f_62ab:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $241, $1c
jr_02f_62c7:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $25d, $2b
jr_02f_62f2:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $288, $10
jr_02f_6302:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $298, $4
jr_02f_6306:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $29c, $1
jr_02f_6307:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $29d, $18
jr_02f_631f:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $2b5, $48
jr_02f_6367:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $2fd, $21
jr_02f_6388:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $31e, $67
jr_02f_63ef:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $385, $d
jr_02f_63fc:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $392, $43
jr_02f_643f:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $3d5, $3a
jr_02f_6479:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $40f, $3c
jr_02f_64b5:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $44b, $31
jr_02f_64e6:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $47c, $33
jr_02f_6519:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $4af, $17
jr_02f_6530:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $4c6, $17
jr_02f_6547:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $4dd, $11
jr_02f_6558:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $4ee, $a
jr_02f_6562:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $4f8, $48
jr_02f_65aa:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $540, $1b
jr_02f_65c5:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $55b, $f
jr_02f_65d4:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $56a, $24
jr_02f_65f8:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $58e, $2
jr_02f_65fa:
    INCBIN "../../res/scene/case2/common/US/g58.bin", $590, $4

GfxC2_G59:
    INCBIN "../../res/scene/case2/common/US/g59.bin", $0, $31
jr_02f_662f:
    INCBIN "../../res/scene/case2/common/US/g59.bin", $31, $12
jr_02f_6641:
    INCBIN "../../res/scene/case2/common/US/g59.bin", $43, $13
jr_02f_6654:
    INCBIN "../../res/scene/case2/common/US/g59.bin", $56, $32
jr_02f_6686:
    INCBIN "../../res/scene/case2/common/US/g59.bin", $88, $41
jr_02f_66c7:
    INCBIN "../../res/scene/case2/common/US/g59.bin", $c9, $e
jr_02f_66d5:
    INCBIN "../../res/scene/case2/common/US/g59.bin", $d7, $46
jr_02f_671b:
    INCBIN "../../res/scene/case2/common/US/g59.bin", $11d, $a
jr_02f_6725:
    INCBIN "../../res/scene/case2/common/US/g59.bin", $127, $34
jr_02f_6759:
    INCBIN "../../res/scene/case2/common/US/g59.bin", $15b, $69
jr_02f_67c2:
    INCBIN "../../res/scene/case2/common/US/g59.bin", $1c4, $4

GfxC2_G5A:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $0, $2d
jr_02f_67f3:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $2d, $5
jr_02f_67f8:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $32, $2a
jr_02f_6822:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $5c, $74
jr_02f_6896:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $d0, $2b
jr_02f_68c1:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $fb, $16
jr_02f_68d7:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $111, $65
jr_02f_693c:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $176, $2
jr_02f_693e:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $178, $e
jr_02f_694c:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $186, $7c
jr_02f_69c8:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $202, $1d
jr_02f_69e5:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $21f, $4
jr_02f_69e9:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $223, $2
jr_02f_69eb:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $225, $7
jr_02f_69f2:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $22c, $38
jr_02f_6a2a:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $264, $a
jr_02f_6a34:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $26e, $7
jr_02f_6a3b:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $275, $26
jr_02f_6a61:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $29b, $b
jr_02f_6a6c:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $2a6, $27
jr_02f_6a93:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $2cd, $c
jr_02f_6a9f:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $2d9, $2
Jump_02f_6aa1:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $2db, $5
jr_02f_6aa6:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $2e0, $11
jr_02f_6ab7:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $2f1, $17
jr_02f_6ace:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $308, $e
jr_02f_6adc:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $316, $b
jr_02f_6ae7:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $321, $36
jr_02f_6b1d:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $357, $21
jr_02f_6b3e:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $378, $36
jr_02f_6b74:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $3ae, $78
jr_02f_6bec:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $426, $3f
jr_02f_6c2b:
    INCBIN "../../res/scene/case2/common/US/g5a.bin", $465, $31

GfxC2_G5B:
    INCBIN "../../res/scene/case2/common/US/g5b.bin", $0, $3
jr_02f_6c5f:
    INCBIN "../../res/scene/case2/common/US/g5b.bin", $3, $a
jr_02f_6c69:
    INCBIN "../../res/scene/case2/common/US/g5b.bin", $d, $6
jr_02f_6c6f:
    INCBIN "../../res/scene/case2/common/US/g5b.bin", $13, $7
jr_02f_6c76:
    INCBIN "../../res/scene/case2/common/US/g5b.bin", $1a, $b
jr_02f_6c81:
    INCBIN "../../res/scene/case2/common/US/g5b.bin", $25, $10
jr_02f_6c91:
    INCBIN "../../res/scene/case2/common/US/g5b.bin", $35, $40
jr_02f_6cd1:
    INCBIN "../../res/scene/case2/common/US/g5b.bin", $75, $14a
jr_02f_6e1b:
    INCBIN "../../res/scene/case2/common/US/g5b.bin", $1bf, $21
jr_02f_6e3c:
    INCBIN "../../res/scene/case2/common/US/g5b.bin", $1e0, $5c
jr_02f_6e98:
    INCBIN "../../res/scene/case2/common/US/g5b.bin", $23c, $5e
jr_02f_6ef6:
    INCBIN "../../res/scene/case2/common/US/g5b.bin", $29a, $4
jr_02f_6efa:
    INCBIN "../../res/scene/case2/common/US/g5b.bin", $29e, $5b

GfxC2_G5C:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $0, $21
jr_02f_6f76:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $21, $29
jr_02f_6f9f:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $4a, $27
jr_02f_6fc6:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $71, $4b
jr_02f_7011:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $bc, $1
Call_02f_7012:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $bd, $8e
jr_02f_70a0:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $14b, $60
jr_02f_7100:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $1ab, $2b
jr_02f_712b:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $1d6, $6b
jr_02f_7196:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $241, $34
jr_02f_71ca:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $275, $20
Jump_02f_71ea:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $295, $13
jr_02f_71fd:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $2a8, $b
jr_02f_7208:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $2b3, $b
jr_02f_7213:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $2be, $20
jr_02f_7233:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $2de, $6
jr_02f_7239:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $2e4, $15
jr_02f_724e:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $2f9, $7
jr_02f_7255:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $300, $48
jr_02f_729d:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $348, $44
jr_02f_72e1:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $38c, $6
jr_02f_72e7:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $392, $2
jr_02f_72e9:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $394, $32
jr_02f_731b:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $3c6, $3
jr_02f_731e:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $3c9, $9
jr_02f_7327:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $3d2, $5
jr_02f_732c:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $3d7, $17
jr_02f_7343:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $3ee, $9
jr_02f_734c:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $3f7, $a
jr_02f_7356:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $401, $9
jr_02f_735f:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $40a, $29
jr_02f_7388:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $433, $13
jr_02f_739b:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $446, $2e
jr_02f_73c9:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $474, $5c
jr_02f_7425:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $4d0, $5
jr_02f_742a:
    INCBIN "../../res/scene/case2/common/US/g5c.bin", $4d5, $f
    rst RST_38

GfxC2_G5E:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $0, $100
jr_02f_753a:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $100, $4e
jr_02f_7588:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $14e, $40
jr_02f_75c8:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $18e, $41
jr_02f_7609:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $1cf, $a7
jr_02f_76b0:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $276, $13
jr_02f_76c3:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $289, $9
jr_02f_76cc:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $292, $21
jr_02f_76ed:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $2b3, $45
jr_02f_7732:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $2f8, $2d
jr_02f_775f:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $325, $3b
jr_02f_779a:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $360, $2c
jr_02f_77c6:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $38c, $5
jr_02f_77cb:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $391, $13
jr_02f_77de:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $3a4, $16
jr_02f_77f4:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $3ba, $18
jr_02f_780c:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $3d2, $15
Call_02f_7821:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $3e7, $3e
jr_02f_785f:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $425, $9
jr_02f_7868:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $42e, $43
jr_02f_78ab:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $471, $11
jr_02f_78bc:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $482, $4
jr_02f_78c0:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $486, $51
jr_02f_7911:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $4d7, $1e
jr_02f_792f:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $4f5, $35
jr_02f_7964:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $52a, $25
jr_02f_7989:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $54f, $2b
jr_02f_79b4:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $57a, $3
jr_02f_79b7:
    INCBIN "../../res/scene/case2/common/US/g5e.bin", $57d, $19

GfxC2_G5F:
    INCBIN "../../res/scene/case2/common/US/g5f.bin", $0, $18
jr_02f_79e8:
    INCBIN "../../res/scene/case2/common/US/g5f.bin", $18, $8b
jr_02f_7a73:
    INCBIN "../../res/scene/case2/common/US/g5f.bin", $a3, $1a
jr_02f_7a8d:
    INCBIN "../../res/scene/case2/common/US/g5f.bin", $bd, $30
jr_02f_7abd:
    INCBIN "../../res/scene/case2/common/US/g5f.bin", $ed, $15
jr_02f_7ad2:
    INCBIN "../../res/scene/case2/common/US/g5f.bin", $102, $5c
jr_02f_7b2e:
    INCBIN "../../res/scene/case2/common/US/g5f.bin", $15e, $99
jr_02f_7bc7:
    INCBIN "../../res/scene/case2/common/US/g5f.bin", $1f7, $9
jr_02f_7bd0:
    INCBIN "../../res/scene/case2/common/US/g5f.bin", $200, $32
jr_02f_7c02:
    INCBIN "../../res/scene/case2/common/US/g5f.bin", $232, $2
jr_02f_7c04:
    INCBIN "../../res/scene/case2/common/US/g5f.bin", $234, $86
jr_02f_7c8a:
    INCBIN "../../res/scene/case2/common/US/g5f.bin", $2ba, $5a
jr_02f_7ce4:
    INCBIN "../../res/scene/case2/common/US/g5f.bin", $314, $47
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02f_7d57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02f_7f13:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02f_7f30:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02f_7f7f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02f_7feb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
