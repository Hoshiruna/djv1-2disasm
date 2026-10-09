; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $034", ROMX[$4000], BANK[$34]

    dw GfxC1_G10 ; $00
    dw GfxC1_G11 ; $01
    dw GfxC1_G12 ; $02
    dw GfxC1_G13 ; $03
    dw GfxC1_G14 ; $04
    dw $5587 ; $05
    dw GfxC1_G16 ; $06
    dw GfxC1_G17 ; $07
    dw GfxC1_G18 ; $08
    dw $5fb9 ; $09
    dw GfxC1_G1A ; $0a
    dw GfxC1_G1B ; $0b
    dw GfxC1_G1C ; $0c
    dw GfxC1_G1D ; $0d
    dw GfxC1_G1E ; $0e
    dw GfxC1_G1F ; $0f

GfxC1_G10:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $0, $3f
jr_034_405f:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $3f, $60
jr_034_40bf:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $9f, $40
Jump_034_40ff:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $df, $7
jr_034_4106:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $e6, $8a
Call_034_4190:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $170, $4a
jr_034_41da:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $1ba, $3c
jr_034_4216:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $1f6, $c
jr_034_4222:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $202, $8
jr_034_422a:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $20a, $9
jr_034_4233:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $213, $4
jr_034_4237:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $217, $32
jr_034_4269:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $249, $10
jr_034_4279:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $259, $7
jr_034_4280:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $260, $44
jr_034_42c4:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $2a4, $27
Jump_034_42eb:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $2cb, $f
jr_034_42fa:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $2da, $33
jr_034_432d:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $30d, $1
jr_034_432e:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $30e, $18
jr_034_4346:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $326, $1b
jr_034_4361:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $341, $4d
jr_034_43ae:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $38e, $4d
jr_034_43fb:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $3db, $6e
jr_034_4469:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $449, $9e
jr_034_4507:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $4e7, $39
jr_034_4540:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $520, $7
jr_034_4547:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $527, $d
jr_034_4554:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $534, $f
jr_034_4563:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $543, $d
jr_034_4570:
    INCBIN "../../res/scene/case1/common/JP/g10.bin", $550, $12

GfxC1_G11:
    INCBIN "../../res/scene/case1/common/JP/g11.bin", $0, $40
jr_034_45c2:
    INCBIN "../../res/scene/case1/common/JP/g11.bin", $40, $12
jr_034_45d4:
    INCBIN "../../res/scene/case1/common/JP/g11.bin", $52, $11
jr_034_45e5:
    INCBIN "../../res/scene/case1/common/JP/g11.bin", $63, $1b
jr_034_4600:
    INCBIN "../../res/scene/case1/common/JP/g11.bin", $7e, $8
Call_034_4608:
    INCBIN "../../res/scene/case1/common/JP/g11.bin", $86, $11
Jump_034_4619:
    INCBIN "../../res/scene/case1/common/JP/g11.bin", $97, $a
jr_034_4623:
    INCBIN "../../res/scene/case1/common/JP/g11.bin", $a1, $b
jr_034_462e:
    INCBIN "../../res/scene/case1/common/JP/g11.bin", $ac, $1d
jr_034_464b:
    INCBIN "../../res/scene/case1/common/JP/g11.bin", $c9, $a6
jr_034_46f1:
    INCBIN "../../res/scene/case1/common/JP/g11.bin", $16f, $12
jr_034_4703:
    INCBIN "../../res/scene/case1/common/JP/g11.bin", $181, $1
jr_034_4704:
    INCBIN "../../res/scene/case1/common/JP/g11.bin", $182, $9
jr_034_470d:
    INCBIN "../../res/scene/case1/common/JP/g11.bin", $18b, $12

GfxC1_G12:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $0, $18
jr_034_4737:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $18, $a
Call_034_4741:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $22, $b
jr_034_474c:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $2d, $3
jr_034_474f:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $30, $27
jr_034_4776:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $57, $1
jr_034_4777:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $58, $1
jr_034_4778:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $59, $2e
Jump_034_47a6:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $87, $1e
jr_034_47c4:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $a5, $e
jr_034_47d2:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $b3, $9
jr_034_47db:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $bc, $5d
jr_034_4838:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $119, $4
jr_034_483c:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $11d, $14
jr_034_4850:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $131, $d
jr_034_485d:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $13e, $25
jr_034_4882:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $163, $f
jr_034_4891:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $172, $43
jr_034_48d4:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $1b5, $8
jr_034_48dc:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $1bd, $19
jr_034_48f5:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $1d6, $1f
jr_034_4914:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $1f5, $61
jr_034_4975:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $256, $7c
jr_034_49f1:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $2d2, $32
jr_034_4a23:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $304, $2a
jr_034_4a4d:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $32e, $e
jr_034_4a5b:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $33c, $6d
jr_034_4ac8:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $3a9, $c
jr_034_4ad4:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $3b5, $1a
jr_034_4aee:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $3cf, $2e
Jump_034_4b1c:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $3fd, $45
jr_034_4b61:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $442, $a
jr_034_4b6b:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $44c, $8
jr_034_4b73:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $454, $14
jr_034_4b87:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $468, $38
jr_034_4bbf:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $4a0, $1b
jr_034_4bda:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $4bb, $13
jr_034_4bed:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $4ce, $6
jr_034_4bf3:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $4d4, $16
jr_034_4c09:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $4ea, $1
jr_034_4c0a:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $4eb, $b
jr_034_4c15:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $4f6, $14
jr_034_4c29:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $50a, $70
jr_034_4c99:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $57a, $3
jr_034_4c9c:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $57d, $2
jr_034_4c9e:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $57f, $2
jr_034_4ca0:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $581, $5
jr_034_4ca5:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $586, $18
jr_034_4cbd:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $59e, $1
jr_034_4cbe:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $59f, $47
jr_034_4d05:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $5e6, $b2
jr_034_4db7:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $698, $10
jr_034_4dc7:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $6a8, $32
jr_034_4df9:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $6da, $1b
jr_034_4e14:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $6f5, $2d
jr_034_4e41:
    INCBIN "../../res/scene/case1/common/JP/g12.bin", $722, $1a

GfxC1_G13:
    INCBIN "../../res/scene/case1/common/JP/g13.bin", $0, $5a
jr_034_4eb5:
    INCBIN "../../res/scene/case1/common/JP/g13.bin", $5a, $ac
jr_034_4f61:
    INCBIN "../../res/scene/case1/common/JP/g13.bin", $106, $5
jr_034_4f66:
    INCBIN "../../res/scene/case1/common/JP/g13.bin", $10b, $8

GfxC1_G14:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $0, $13
jr_034_4f81:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $13, $e
jr_034_4f8f:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $21, $28
jr_034_4fb7:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $49, $45
jr_034_4ffc:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $8e, $5
jr_034_5001:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $93, $76
jr_034_5077:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $109, $25
jr_034_509c:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $12e, $37
jr_034_50d3:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $165, $7e
jr_034_5151:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $1e3, $54
jr_034_51a5:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $237, $94
Call_034_5239:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $2cb, $f
jr_034_5248:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $2da, $43
jr_034_528b:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $31d, $20
jr_034_52ab:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $33d, $9
jr_034_52b4:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $346, $4d
jr_034_5301:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $393, $92
jr_034_5393:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $425, $97
jr_034_542a:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $4bc, $3f
jr_034_5469:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $4fb, $c
jr_034_5475:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $507, $8
jr_034_547d:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $50f, $9
jr_034_5486:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $518, $4a
jr_034_54d0:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $562, $20
jr_034_54f0:
    INCBIN "../../res/scene/case1/common/JP/g14.bin", $582, $97
    rst RST_38

GfxC1_G16:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $0, $30
jr_034_55b8:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $30, $3
jr_034_55bb:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $33, $b6
jr_034_5671:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $e9, $2d
jr_034_569e:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $116, $d
jr_034_56ab:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $123, $3e
jr_034_56e9:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $161, $3c
jr_034_5725:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $19d, $5c
jr_034_5781:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $1f9, $2
jr_034_5783:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $1fb, $5
jr_034_5788:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $200, $50
jr_034_57d8:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $250, $53
jr_034_582b:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $2a3, $10
jr_034_583b:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $2b3, $15
jr_034_5850:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $2c8, $e
jr_034_585e:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $2d6, $80
Call_034_58de:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $356, $1b
jr_034_58f9:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $371, $20
jr_034_5919:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $391, $2
jr_034_591b:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $393, $3
jr_034_591e:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $396, $4f
jr_034_596d:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $3e5, $73
jr_034_59e0:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $458, $6
jr_034_59e6:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $45e, $14
jr_034_59fa:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $472, $16
jr_034_5a10:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $488, $ab
jr_034_5abb:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $533, $4c
jr_034_5b07:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $57f, $13
jr_034_5b1a:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $592, $74
jr_034_5b8e:
    INCBIN "../../res/scene/case1/common/JP/g16.bin", $606, $16

GfxC1_G17:
    INCBIN "../../res/scene/case1/common/JP/g17.bin", $0, $29
jr_034_5bcd:
    INCBIN "../../res/scene/case1/common/JP/g17.bin", $29, $48
jr_034_5c15:
    INCBIN "../../res/scene/case1/common/JP/g17.bin", $71, $2e

GfxC1_G18:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $0, $9d
Call_034_5ce0:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $9d, $91
jr_034_5d71:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $12e, $7e
jr_034_5def:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $1ac, $5
jr_034_5df4:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $1b1, $36
jr_034_5e2a:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $1e7, $c
jr_034_5e36:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $1f3, $3
jr_034_5e39:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $1f6, $2a
jr_034_5e63:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $220, $4e
jr_034_5eb1:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $26e, $27
jr_034_5ed8:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $295, $42
jr_034_5f1a:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $2d7, $13
jr_034_5f2d:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $2ea, $1
jr_034_5f2e:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $2eb, $40
jr_034_5f6e:
    INCBIN "../../res/scene/case1/common/JP/g18.bin", $32b, $4b
    rst RST_38

GfxC1_G1A:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $0, $46
Jump_034_6000:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $46, $41
jr_034_6041:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $87, $5b
jr_034_609c:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $e2, $5b
jr_034_60f7:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $13d, $60
jr_034_6157:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $19d, $19
jr_034_6170:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $1b6, $6b
jr_034_61db:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $221, $1a
jr_034_61f5:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $23b, $a
jr_034_61ff:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $245, $b0
Call_034_62af:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $2f5, $1
jr_034_62b0:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $2f6, $13
jr_034_62c3:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $309, $6
jr_034_62c9:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $30f, $62
jr_034_632b:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $371, $5f
jr_034_638a:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $3d0, $6
jr_034_6390:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $3d6, $40
jr_034_63d0:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $416, $6
jr_034_63d6:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $41c, $13
jr_034_63e9:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $42f, $37
jr_034_6420:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $466, $25
jr_034_6445:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $48b, $21
jr_034_6466:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $4ac, $11
jr_034_6477:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $4bd, $94
jr_034_650b:
    INCBIN "../../res/scene/case1/common/JP/g1a.bin", $551, $13

GfxC1_G1B:
    INCBIN "../../res/scene/case1/common/JP/g1b.bin", $0, $2d

GfxC1_G1C:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $0, $1c
jr_034_6567:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $1c, $d
Call_034_6574:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $29, $19
jr_034_658d:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $42, $95
jr_034_6622:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $d7, $30
jr_034_6652:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $107, $35
jr_034_6687:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $13c, $16
jr_034_669d:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $152, $19
jr_034_66b6:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $16b, $1a
jr_034_66d0:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $185, $2d
jr_034_66fd:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $1b2, $3c
jr_034_6739:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $1ee, $31
jr_034_676a:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $21f, $1a
jr_034_6784:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $239, $a
jr_034_678e:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $243, $2f
jr_034_67bd:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $272, $2d
jr_034_67ea:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $29f, $4
jr_034_67ee:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $2a3, $11
jr_034_67ff:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $2b4, $7
jr_034_6806:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $2bb, $3
jr_034_6809:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $2be, $a2
jr_034_68ab:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $360, $6
jr_034_68b1:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $366, $a
jr_034_68bb:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $370, $63
jr_034_691e:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $3d3, $3
jr_034_6921:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $3d6, $7
jr_034_6928:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $3dd, $17
jr_034_693f:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $3f4, $2
jr_034_6941:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $3f6, $18
jr_034_6959:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $40e, $39
jr_034_6992:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $447, $2
jr_034_6994:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $449, $f
jr_034_69a3:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $458, $28
jr_034_69cb:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $480, $13
jr_034_69de:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $493, $4f
jr_034_6a2d:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $4e2, $f
jr_034_6a3c:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $4f1, $e
jr_034_6a4a:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $4ff, $12
jr_034_6a5c:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $511, $3b
jr_034_6a97:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $54c, $1a
jr_034_6ab1:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $566, $4e
jr_034_6aff:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $5b4, $6
jr_034_6b05:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $5ba, $c
jr_034_6b11:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $5c6, $17
jr_034_6b28:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $5dd, $26
jr_034_6b4e:
    INCBIN "../../res/scene/case1/common/JP/g1c.bin", $603, $2e

GfxC1_G1D:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $0, $9b
jr_034_6c17:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $9b, $47
jr_034_6c5e:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $e2, $c
jr_034_6c6a:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $ee, $5
jr_034_6c6f:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $f3, $a8
jr_034_6d17:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $19b, $2
jr_034_6d19:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $19d, $2
jr_034_6d1b:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $19f, $6
jr_034_6d21:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $1a5, $14
jr_034_6d35:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $1b9, $b
jr_034_6d40:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $1c4, $5c
jr_034_6d9c:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $220, $c
jr_034_6da8:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $22c, $d
jr_034_6db5:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $239, $13
jr_034_6dc8:
    INCBIN "../../res/scene/case1/common/JP/g1d.bin", $24c, $7

GfxC1_G1E:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $0, $20
jr_034_6def:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $20, $1
jr_034_6df0:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $21, $a9
jr_034_6e99:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $ca, $55
jr_034_6eee:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $11f, $6
jr_034_6ef4:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $125, $37
jr_034_6f2b:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $15c, $ee
jr_034_7019:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $24a, $50
jr_034_7069:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $29a, $1
jr_034_706a:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $29b, $32
jr_034_709c:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $2cd, $e
jr_034_70aa:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $2db, $f
jr_034_70b9:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $2ea, $29
jr_034_70e2:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $313, $4
jr_034_70e6:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $317, $6
jr_034_70ec:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $31d, $12
jr_034_70fe:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $32f, $25
jr_034_7123:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $354, $4
jr_034_7127:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $358, $8
jr_034_712f:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $360, $6
jr_034_7135:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $366, $53
jr_034_7188:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $3b9, $d4
jr_034_725c:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $48d, $50
jr_034_72ac:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $4dd, $18
jr_034_72c4:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $4f5, $35
jr_034_72f9:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $52a, $c8
jr_034_73c1:
    INCBIN "../../res/scene/case1/common/JP/g1e.bin", $5f2, $49

GfxC1_G1F:
    INCBIN "../../res/scene/case1/common/JP/g1f.bin", $0, $3e
jr_034_7448:
    INCBIN "../../res/scene/case1/common/JP/g1f.bin", $3e, $a
jr_034_7452:
    INCBIN "../../res/scene/case1/common/JP/g1f.bin", $48, $10
Call_034_7462:
    INCBIN "../../res/scene/case1/common/JP/g1f.bin", $58, $16
jr_034_7478:
    INCBIN "../../res/scene/case1/common/JP/g1f.bin", $6e, $63
jr_034_74db:
    INCBIN "../../res/scene/case1/common/JP/g1f.bin", $d1, $1b
jr_034_74f6:
    INCBIN "../../res/scene/case1/common/JP/g1f.bin", $ec, $24
jr_034_751a:
    INCBIN "../../res/scene/case1/common/JP/g1f.bin", $110, $3e
jr_034_7558:
    INCBIN "../../res/scene/case1/common/JP/g1f.bin", $14e, $26
    db $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_034_7a07:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_034_7a84:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_034_7c11:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_034_7ead:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
