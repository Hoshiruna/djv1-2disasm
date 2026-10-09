; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02d", ROMX[$4000], BANK[$2d]

Jump_02d_4000:
    dw GfxC2_G30 ; $00
    dw GfxC2_G31 ; $01
    dw GfxC2_G32 ; $02
    dw GfxC2_G33 ; $03
    dw GfxC2_G34 ; $04
    dw GfxC2_G35 ; $05
    dw GfxC2_G36 ; $06
    dw GfxC2_G37 ; $07
    dw GfxC2_G38 ; $08
    dw GfxC2_G39 ; $09
    dw GfxC2_G3A ; $0a
    dw GfxC2_G3B ; $0b
    dw GfxC2_G3C ; $0c
    dw GfxC2_G3D ; $0d
    dw GfxC2_G3E ; $0e
    dw $7c34 ; $0f

GfxC2_G30:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $0, $1
Jump_02d_4021:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $1, $20
jr_02d_4041:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $21, $1
jr_02d_4042:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $22, $5
Call_02d_4047:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $27, $1
jr_02d_4048:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $28, $17
jr_02d_405f:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $3f, $58
jr_02d_40b7:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $97, $b
jr_02d_40c2:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $a2, $5f
Jump_02d_4121:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $101, $26
jr_02d_4147:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $127, $70
jr_02d_41b7:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $197, $8
jr_02d_41bf:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $19f, $10
jr_02d_41cf:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $1af, $2
jr_02d_41d1:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $1b1, $2
jr_02d_41d3:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $1b3, $31
jr_02d_4204:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $1e4, $10
jr_02d_4214:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $1f4, $8
jr_02d_421c:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $1fc, $5
jr_02d_4221:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $201, $22
jr_02d_4243:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $223, $a
jr_02d_424d:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $22d, $1
jr_02d_424e:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $22e, $2d
jr_02d_427b:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $25b, $80
jr_02d_42fb:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $2db, $6
Jump_02d_4301:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $2e1, $38
jr_02d_4339:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $319, $d
jr_02d_4346:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $326, $29
jr_02d_436f:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $34f, $60
jr_02d_43cf:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $3af, $41
jr_02d_4410:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $3f0, $2
jr_02d_4412:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $3f2, $3
jr_02d_4415:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $3f5, $3
jr_02d_4418:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $3f8, $10
jr_02d_4428:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $408, $b
jr_02d_4433:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $413, $6a
jr_02d_449d:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $47d, $24
jr_02d_44c1:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $4a1, $8
jr_02d_44c9:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $4a9, $a
jr_02d_44d3:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $4b3, $1f
jr_02d_44f2:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $4d2, $3
jr_02d_44f5:
    INCBIN "../../res/scene/case2/common/JP/g30.bin", $4d5, $c3

GfxC2_G31:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $0, $35
jr_02d_45ed:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $35, $8f
jr_02d_467c:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $c4, $18
jr_02d_4694:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $dc, $2
jr_02d_4696:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $de, $1c
jr_02d_46b2:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $fa, $e
jr_02d_46c0:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $108, $3
jr_02d_46c3:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $10b, $8
jr_02d_46cb:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $113, $d
jr_02d_46d8:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $120, $7
jr_02d_46df:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $127, $6
jr_02d_46e5:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $12d, $d
jr_02d_46f2:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $13a, $a
jr_02d_46fc:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $144, $2d
jr_02d_4729:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $171, $6
jr_02d_472f:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $177, $14
jr_02d_4743:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $18b, $6
jr_02d_4749:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $191, $17
jr_02d_4760:
    INCBIN "../../res/scene/case2/common/JP/g31.bin", $1a8, $19

GfxC2_G32:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $0, $11
jr_02d_478a:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $11, $2
jr_02d_478c:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $13, $16
jr_02d_47a2:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $29, $a
jr_02d_47ac:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $33, $6e
jr_02d_481a:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $a1, $23
jr_02d_483d:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $c4, $a
jr_02d_4847:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $ce, $37
jr_02d_487e:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $105, $10
jr_02d_488e:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $115, $e
jr_02d_489c:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $123, $27
jr_02d_48c3:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $14a, $bb
jr_02d_497e:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $205, $2d
jr_02d_49ab:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $232, $3c
jr_02d_49e7:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $26e, $3
jr_02d_49ea:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $271, $1d
jr_02d_4a07:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $28e, $46
jr_02d_4a4d:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $2d4, $1
jr_02d_4a4e:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $2d5, $1
jr_02d_4a4f:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $2d6, $4
jr_02d_4a53:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $2da, $28
jr_02d_4a7b:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $302, $1
jr_02d_4a7c:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $303, $53
jr_02d_4acf:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $356, $1f
jr_02d_4aee:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $375, $8
jr_02d_4af6:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $37d, $47
jr_02d_4b3d:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $3c4, $2
jr_02d_4b3f:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $3c6, $87
jr_02d_4bc6:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $44d, $3
jr_02d_4bc9:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $450, $49
Call_02d_4c12:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $499, $1c
jr_02d_4c2e:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $4b5, $67
jr_02d_4c95:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $51c, $1d
jr_02d_4cb2:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $539, $1f
jr_02d_4cd1:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $558, $5
jr_02d_4cd6:
    INCBIN "../../res/scene/case2/common/JP/g32.bin", $55d, $10

GfxC2_G33:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $0, $2d
jr_02d_4d13:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $2d, $1f
jr_02d_4d32:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $4c, $10
jr_02d_4d42:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $5c, $18
jr_02d_4d5a:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $74, $28
jr_02d_4d82:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $9c, $4
jr_02d_4d86:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $a0, $3a
jr_02d_4dc0:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $da, $16
jr_02d_4dd6:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $f0, $34
jr_02d_4e0a:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $124, $3c
jr_02d_4e46:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $160, $c
jr_02d_4e52:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $16c, $1
jr_02d_4e53:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $16d, $36
jr_02d_4e89:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $1a3, $13
jr_02d_4e9c:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $1b6, $2
jr_02d_4e9e:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $1b8, $1c
jr_02d_4eba:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $1d4, $5
jr_02d_4ebf:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $1d9, $5
jr_02d_4ec4:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $1de, $30
jr_02d_4ef4:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $20e, $56
jr_02d_4f4a:
    INCBIN "../../res/scene/case2/common/JP/g33.bin", $264, $1b

GfxC2_G34:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $0, $2a
jr_02d_4f8f:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $2a, $e
jr_02d_4f9d:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $38, $6c
jr_02d_5009:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $a4, $6d
jr_02d_5076:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $111, $12
jr_02d_5088:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $123, $86
Jump_02d_510e:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $1a9, $15
jr_02d_5123:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $1be, $88
jr_02d_51ab:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $246, $17
Jump_02d_51c2:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $25d, $34
jr_02d_51f6:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $291, $2e
jr_02d_5224:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $2bf, $8
jr_02d_522c:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $2c7, $58
jr_02d_5284:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $31f, $42
jr_02d_52c6:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $361, $2c
jr_02d_52f2:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $38d, $ac
jr_02d_539e:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $439, $13
jr_02d_53b1:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $44c, $f
jr_02d_53c0:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $45b, $c8
Call_02d_5488:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $523, $19
jr_02d_54a1:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $53c, $1e
jr_02d_54bf:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $55a, $29
jr_02d_54e8:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $583, $2
jr_02d_54ea:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $585, $6d
jr_02d_5557:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $5f2, $6
jr_02d_555d:
    INCBIN "../../res/scene/case2/common/JP/g34.bin", $5f8, $24

GfxC2_G35:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $0, $f
jr_02d_5590:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $f, $9
jr_02d_5599:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $18, $14
jr_02d_55ad:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $2c, $11
jr_02d_55be:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $3d, $4
jr_02d_55c2:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $41, $1b
jr_02d_55dd:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $5c, $62
jr_02d_563f:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $be, $81
Call_02d_56c0:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $13f, $61
jr_02d_5721:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $1a0, $6
jr_02d_5727:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $1a6, $14
jr_02d_573b:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $1ba, $21
jr_02d_575c:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $1db, $8
jr_02d_5764:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $1e3, $9
jr_02d_576d:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $1ec, $45
jr_02d_57b2:
    INCBIN "../../res/scene/case2/common/JP/g35.bin", $231, $8

GfxC2_G36:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $0, $7
jr_02d_57c1:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $7, $7
jr_02d_57c8:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $e, $143
jr_02d_590b:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $151, $27
jr_02d_5932:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $178, $14
jr_02d_5946:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $18c, $8
jr_02d_594e:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $194, $25
jr_02d_5973:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $1b9, $45
jr_02d_59b8:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $1fe, $5
jr_02d_59bd:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $203, $a
jr_02d_59c7:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $20d, $9
jr_02d_59d0:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $216, $23
jr_02d_59f3:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $239, $48
jr_02d_5a3b:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $281, $1c
jr_02d_5a57:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $29d, $1d
jr_02d_5a74:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $2ba, $a
jr_02d_5a7e:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $2c4, $f
jr_02d_5a8d:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $2d3, $1a
jr_02d_5aa7:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $2ed, $23
jr_02d_5aca:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $310, $1a
jr_02d_5ae4:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $32a, $9
jr_02d_5aed:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $333, $22
jr_02d_5b0f:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $355, $b
jr_02d_5b1a:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $360, $d
jr_02d_5b27:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $36d, $2
jr_02d_5b29:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $36f, $17
jr_02d_5b40:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $386, $24
jr_02d_5b64:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $3aa, $1
jr_02d_5b65:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $3ab, $8
jr_02d_5b6d:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $3b3, $14
jr_02d_5b81:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $3c7, $10
jr_02d_5b91:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $3d7, $f
jr_02d_5ba0:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $3e6, $5
jr_02d_5ba5:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $3eb, $23
jr_02d_5bc8:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $40e, $2
jr_02d_5bca:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $410, $30
jr_02d_5bfa:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $440, $e
jr_02d_5c08:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $44e, $e
jr_02d_5c16:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $45c, $9
jr_02d_5c1f:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $465, $3c
jr_02d_5c5b:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $4a1, $4
jr_02d_5c5f:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $4a5, $1
jr_02d_5c60:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $4a6, $37
jr_02d_5c97:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $4dd, $11
jr_02d_5ca8:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $4ee, $29
jr_02d_5cd1:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $517, $4
jr_02d_5cd5:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $51b, $2
jr_02d_5cd7:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $51d, $10
jr_02d_5ce7:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $52d, $29
jr_02d_5d10:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $556, $1b
jr_02d_5d2b:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $571, $18
jr_02d_5d43:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $589, $3
jr_02d_5d46:
    INCBIN "../../res/scene/case2/common/JP/g36.bin", $58c, $2b

GfxC2_G37:
    INCBIN "../../res/scene/case2/common/JP/g37.bin", $0, $90
jr_02d_5e01:
    INCBIN "../../res/scene/case2/common/JP/g37.bin", $90, $13
jr_02d_5e14:
    INCBIN "../../res/scene/case2/common/JP/g37.bin", $a3, $f
jr_02d_5e23:
    INCBIN "../../res/scene/case2/common/JP/g37.bin", $b2, $1c
jr_02d_5e3f:
    INCBIN "../../res/scene/case2/common/JP/g37.bin", $ce, $1
Call_02d_5e40:
    INCBIN "../../res/scene/case2/common/JP/g37.bin", $cf, $e
jr_02d_5e4e:
    INCBIN "../../res/scene/case2/common/JP/g37.bin", $dd, $d4
jr_02d_5f22:
    INCBIN "../../res/scene/case2/common/JP/g37.bin", $1b1, $5b

GfxC2_G38:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $0, $8
jr_02d_5f85:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $8, $31
jr_02d_5fb6:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $39, $3f
jr_02d_5ff5:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $78, $d
Jump_02d_6002:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $85, $26
jr_02d_6028:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $ab, $b
jr_02d_6033:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $b6, $6
jr_02d_6039:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $bc, $32
jr_02d_606b:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $ee, $25
Jump_02d_6090:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $113, $5
jr_02d_6095:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $118, $1c
Call_02d_60b1:
jr_02d_60b1:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $134, $3a
jr_02d_60eb:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $16e, $9e
jr_02d_6189:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $20c, $18
jr_02d_61a1:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $224, $10
jr_02d_61b1:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $234, $f
jr_02d_61c0:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $243, $6
jr_02d_61c6:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $249, $5a
Jump_02d_6220:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $2a3, $45
jr_02d_6265:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $2e8, $7
jr_02d_626c:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $2ef, $10
jr_02d_627c:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $2ff, $22
jr_02d_629e:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $321, $c
jr_02d_62aa:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $32d, $3
jr_02d_62ad:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $330, $a
jr_02d_62b7:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $33a, $e
jr_02d_62c5:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $348, $2d
jr_02d_62f2:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $375, $5
jr_02d_62f7:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $37a, $1
jr_02d_62f8:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $37b, $12
jr_02d_630a:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $38d, $8
jr_02d_6312:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $395, $14
jr_02d_6326:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $3a9, $5d
jr_02d_6383:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $406, $4
jr_02d_6387:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $40a, $9
jr_02d_6390:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $413, $3b
jr_02d_63cb:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $44e, $1
jr_02d_63cc:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $44f, $17
jr_02d_63e3:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $466, $2
jr_02d_63e5:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $468, $23
jr_02d_6408:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $48b, $e
jr_02d_6416:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $499, $17
jr_02d_642d:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $4b0, $4e
jr_02d_647b:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $4fe, $4a
jr_02d_64c5:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $548, $21
jr_02d_64e6:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $569, $4
jr_02d_64ea:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $56d, $16
jr_02d_6500:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $583, $35
jr_02d_6535:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $5b8, $ad
Call_02d_65e2:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $665, $6
jr_02d_65e8:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $66b, $12
jr_02d_65fa:
    INCBIN "../../res/scene/case2/common/JP/g38.bin", $67d, $1d

GfxC2_G39:
    INCBIN "../../res/scene/case2/common/JP/g39.bin", $0, $1a
jr_02d_6631:
    INCBIN "../../res/scene/case2/common/JP/g39.bin", $1a, $68
Call_02d_6699:
    INCBIN "../../res/scene/case2/common/JP/g39.bin", $82, $9
jr_02d_66a2:
    INCBIN "../../res/scene/case2/common/JP/g39.bin", $8b, $3b
jr_02d_66dd:
    INCBIN "../../res/scene/case2/common/JP/g39.bin", $c6, $7
jr_02d_66e4:
    INCBIN "../../res/scene/case2/common/JP/g39.bin", $cd, $4d
Call_02d_6731:
    INCBIN "../../res/scene/case2/common/JP/g39.bin", $11a, $14
jr_02d_6745:
    INCBIN "../../res/scene/case2/common/JP/g39.bin", $12e, $17
jr_02d_675c:
    INCBIN "../../res/scene/case2/common/JP/g39.bin", $145, $4d
jr_02d_67a9:
    INCBIN "../../res/scene/case2/common/JP/g39.bin", $192, $12
Call_02d_67bb:
    INCBIN "../../res/scene/case2/common/JP/g39.bin", $1a4, $3

GfxC2_G3A:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $0, $1c
jr_02d_67da:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $1c, $3e
jr_02d_6818:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $5a, $34
jr_02d_684c:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $8e, $82
jr_02d_68ce:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $110, $1e
jr_02d_68ec:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $12e, $13
jr_02d_68ff:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $141, $1c
jr_02d_691b:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $15d, $3b
jr_02d_6956:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $198, $2b
jr_02d_6981:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $1c3, $14
jr_02d_6995:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $1d7, $1a
jr_02d_69af:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $1f1, $1
jr_02d_69b0:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $1f2, $7
jr_02d_69b7:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $1f9, $a
jr_02d_69c1:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $203, $2c
jr_02d_69ed:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $22f, $d
jr_02d_69fa:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $23c, $f
jr_02d_6a09:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $24b, $30
jr_02d_6a39:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $27b, $59
jr_02d_6a92:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $2d4, $4a
jr_02d_6adc:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $31e, $2
jr_02d_6ade:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $320, $17
jr_02d_6af5:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $337, $16
jr_02d_6b0b:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $34d, $f
jr_02d_6b1a:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $35c, $20
jr_02d_6b3a:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $37c, $55
jr_02d_6b8f:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $3d1, $36
jr_02d_6bc5:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $407, $2
jr_02d_6bc7:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $409, $14
jr_02d_6bdb:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $41d, $15
jr_02d_6bf0:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $432, $3
jr_02d_6bf3:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $435, $1c
jr_02d_6c0f:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $451, $25
jr_02d_6c34:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $476, $46
jr_02d_6c7a:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $4bc, $6
jr_02d_6c80:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $4c2, $2
jr_02d_6c82:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $4c4, $3c
jr_02d_6cbe:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $500, $15
jr_02d_6cd3:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $515, $37
jr_02d_6d0a:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $54c, $10
jr_02d_6d1a:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $55c, $8
Jump_02d_6d22:
    INCBIN "../../res/scene/case2/common/JP/g3a.bin", $564, $43
jr_02d_6d65:

GfxC2_G3B:
    INCBIN "../../res/scene/case2/common/JP/g3b.bin", $0, $12
jr_02d_6d77:
    INCBIN "../../res/scene/case2/common/JP/g3b.bin", $12, $24
jr_02d_6d9b:
    INCBIN "../../res/scene/case2/common/JP/g3b.bin", $36, $5
jr_02d_6da0:
    INCBIN "../../res/scene/case2/common/JP/g3b.bin", $3b, $22
jr_02d_6dc2:
    INCBIN "../../res/scene/case2/common/JP/g3b.bin", $5d, $10
jr_02d_6dd2:
    INCBIN "../../res/scene/case2/common/JP/g3b.bin", $6d, $2b
jr_02d_6dfd:
    INCBIN "../../res/scene/case2/common/JP/g3b.bin", $98, $16
jr_02d_6e13:
    INCBIN "../../res/scene/case2/common/JP/g3b.bin", $ae, $19
jr_02d_6e2c:
    INCBIN "../../res/scene/case2/common/JP/g3b.bin", $c7, $23
jr_02d_6e4f:
    INCBIN "../../res/scene/case2/common/JP/g3b.bin", $ea, $1
jr_02d_6e50:
    INCBIN "../../res/scene/case2/common/JP/g3b.bin", $eb, $3d

GfxC2_G3C:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $0, $d
jr_02d_6e9a:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $d, $39
jr_02d_6ed3:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $46, $ca
jr_02d_6f9d:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $110, $16
jr_02d_6fb3:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $126, $f
jr_02d_6fc2:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $135, $35
jr_02d_6ff7:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $16a, $7
Jump_02d_6ffe:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $171, $53
jr_02d_7051:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $1c4, $24
jr_02d_7075:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $1e8, $10
jr_02d_7085:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $1f8, $1a
jr_02d_709f:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $212, $23
jr_02d_70c2:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $235, $61
jr_02d_7123:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $296, $d5
Call_02d_71f8:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $36b, $2c
jr_02d_7224:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $397, $2
jr_02d_7226:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $399, $6
jr_02d_722c:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $39f, $5
jr_02d_7231:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $3a4, $3
jr_02d_7234:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $3a7, $a
jr_02d_723e:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $3b1, $2
jr_02d_7240:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $3b3, $7e
jr_02d_72be:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $431, $1a
jr_02d_72d8:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $44b, $2a
jr_02d_7302:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $475, $f0
jr_02d_73f2:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $565, $22
jr_02d_7414:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $587, $7
jr_02d_741b:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $58e, $11
jr_02d_742c:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $59f, $47
jr_02d_7473:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $5e6, $7
jr_02d_747a:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $5ed, $41
jr_02d_74bb:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $62e, $37
jr_02d_74f2:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $665, $3
jr_02d_74f5:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $668, $53
jr_02d_7548:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $6bb, $13
jr_02d_755b:
    INCBIN "../../res/scene/case2/common/JP/g3c.bin", $6ce, $13

GfxC2_G3D:
    INCBIN "../../res/scene/case2/common/JP/g3d.bin", $0, $12
jr_02d_7580:
    INCBIN "../../res/scene/case2/common/JP/g3d.bin", $12, $3c
jr_02d_75bc:
    INCBIN "../../res/scene/case2/common/JP/g3d.bin", $4e, $c2
jr_02d_767e:
    INCBIN "../../res/scene/case2/common/JP/g3d.bin", $110, $15
jr_02d_7693:
    INCBIN "../../res/scene/case2/common/JP/g3d.bin", $125, $6d
Jump_02d_7700:
    INCBIN "../../res/scene/case2/common/JP/g3d.bin", $192, $9

GfxC2_G3E:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $0, $a
Call_02d_7713:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $a, $6f
jr_02d_7782:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $79, $83
jr_02d_7805:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $fc, $3c
Call_02d_7841:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $138, $58
jr_02d_7899:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $190, $26
jr_02d_78bf:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $1b6, $42
jr_02d_7901:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $1f8, $e
jr_02d_790f:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $206, $2
jr_02d_7911:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $208, $5
jr_02d_7916:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $20d, $2b
jr_02d_7941:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $238, $4a
jr_02d_798b:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $282, $1a
jr_02d_79a5:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $29c, $2
jr_02d_79a7:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $29e, $53
jr_02d_79fa:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $2f1, $40
Jump_02d_7a3a:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $331, $5c
jr_02d_7a96:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $38d, $22
jr_02d_7ab8:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $3af, $18
jr_02d_7ad0:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $3c7, $15
jr_02d_7ae5:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $3dc, $21
jr_02d_7b06:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $3fd, $4
jr_02d_7b0a:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $401, $17
jr_02d_7b21:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $418, $2e
jr_02d_7b4f:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $446, $2d
jr_02d_7b7c:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $473, $40
jr_02d_7bbc:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $4b3, $67
jr_02d_7c23:
    INCBIN "../../res/scene/case2/common/JP/g3e.bin", $51a, $11
    db $ff, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02d_7c61:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02d_7e21:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02d_7f0f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
