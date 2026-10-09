; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $039", ROMX[$4000], BANK[$39]

    dw GfxC1_G60 ; $00
    dw GfxC1_G61 ; $01
    dw GfxC1_G62 ; $02
    dw GfxC1_G63 ; $03
    dw GfxC1_G64 ; $04
    dw GfxC1_G65 ; $05
    dw GfxC1_G66 ; $06
    dw GfxC1_G67 ; $07
    dw GfxC1_G68 ; $08
    dw GfxC1_G69 ; $09
    dw GfxC1_G6A ; $0a
    dw $6a95 ; $0b
    dw GfxC1_G6C ; $0c
    dw GfxC1_G6D ; $0d
    dw GfxC1_G6E ; $0e
    dw GfxC1_G6F ; $0f

GfxC1_G60:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $0, $c
Jump_039_402c:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $c, $16
jr_039_4042:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $22, $1d
jr_039_405f:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $3f, $76
jr_039_40d5:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $b5, $1e
jr_039_40f3:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $d3, $c
jr_039_40ff:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $df, $b
jr_039_410a:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $ea, $6d
jr_039_4177:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $157, $2
jr_039_4179:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $159, $3
jr_039_417c:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $15c, $1d
jr_039_4199:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $179, $27
Call_039_41c0:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $1a0, $7b
jr_039_423b:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $21b, $2
jr_039_423d:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $21d, $3
jr_039_4240:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $220, $9
jr_039_4249:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $229, $4
jr_039_424d:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $22d, $4
jr_039_4251:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $231, $54
jr_039_42a5:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $285, $4
jr_039_42a9:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $289, $27
jr_039_42d0:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $2b0, $47
jr_039_4317:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $2f7, $15
jr_039_432c:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $30c, $9
jr_039_4335:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $315, $b
jr_039_4340:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $320, $2a
jr_039_436a:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $34a, $6c
jr_039_43d6:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $3b6, $2f
jr_039_4405:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $3e5, $31
jr_039_4436:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $416, $71
jr_039_44a7:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $487, $23
jr_039_44ca:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $4aa, $2b
jr_039_44f5:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $4d5, $5
jr_039_44fa:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $4da, $1c
jr_039_4516:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $4f6, $8
jr_039_451e:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $4fe, $5b
jr_039_4579:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $559, $30
jr_039_45a9:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $589, $13
jr_039_45bc:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $59c, $1
jr_039_45bd:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $59d, $b
jr_039_45c8:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $5a8, $20
jr_039_45e8:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $5c8, $15
jr_039_45fd:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $5dd, $57
jr_039_4654:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $634, $1
jr_039_4655:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $635, $19
jr_039_466e:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $64e, $c
jr_039_467a:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $65a, $30
jr_039_46aa:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $68a, $2
jr_039_46ac:
    INCBIN "../../res/scene/case1/common/US/g60.bin", $68c, $4f

GfxC1_G61:
    INCBIN "../../res/scene/case1/common/US/g61.bin", $0, $49
jr_039_4744:
    INCBIN "../../res/scene/case1/common/US/g61.bin", $49, $22
jr_039_4766:
    INCBIN "../../res/scene/case1/common/US/g61.bin", $6b, $5a
jr_039_47c0:
    INCBIN "../../res/scene/case1/common/US/g61.bin", $c5, $6
jr_039_47c6:
    INCBIN "../../res/scene/case1/common/US/g61.bin", $cb, $60
jr_039_4826:
    INCBIN "../../res/scene/case1/common/US/g61.bin", $12b, $11
jr_039_4837:
    INCBIN "../../res/scene/case1/common/US/g61.bin", $13c, $46
jr_039_487d:
    INCBIN "../../res/scene/case1/common/US/g61.bin", $182, $b
jr_039_4888:
    INCBIN "../../res/scene/case1/common/US/g61.bin", $18d, $1a

GfxC1_G62:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $0, $f
jr_039_48b1:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $f, $9
jr_039_48ba:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $18, $27
jr_039_48e1:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $3f, $76
jr_039_4957:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $b5, $1e
jr_039_4975:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $d3, $c
jr_039_4981:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $df, $b
jr_039_498c:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $ea, $6d
jr_039_49f9:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $157, $2
jr_039_49fb:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $159, $3
jr_039_49fe:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $15c, $1d
jr_039_4a1b:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $179, $b0
jr_039_4acb:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $229, $8
jr_039_4ad3:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $231, $54
jr_039_4b27:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $285, $56
jr_039_4b7d:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $2db, $1a
jr_039_4b97:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $2f5, $16
jr_039_4bad:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $30b, $11
jr_039_4bbe:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $31c, $2d
jr_039_4beb:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $349, $72
jr_039_4c5d:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $3bb, $11
jr_039_4c6e:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $3cc, $33
jr_039_4ca1:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $3ff, $39
jr_039_4cda:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $438, $21
jr_039_4cfb:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $459, $6a
jr_039_4d65:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $4c3, $2
jr_039_4d67:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $4c5, $4
Call_039_4d6b:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $4c9, $4c
jr_039_4db7:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $515, $4
jr_039_4dbb:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $519, $6
jr_039_4dc1:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $51f, $16
jr_039_4dd7:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $535, $1f
jr_039_4df6:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $554, $4c
jr_039_4e42:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $5a0, $14
jr_039_4e56:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $5b4, $18
jr_039_4e6e:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $5cc, $1e
jr_039_4e8c:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $5ea, $13
jr_039_4e9f:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $5fd, $7
jr_039_4ea6:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $604, $c
jr_039_4eb2:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $610, $65
jr_039_4f17:
    INCBIN "../../res/scene/case1/common/US/g62.bin", $675, $48

GfxC1_G63:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $0, $1e
jr_039_4f7d:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $1e, $1e
jr_039_4f9b:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $3c, $7
jr_039_4fa2:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $43, $1
jr_039_4fa3:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $44, $40
jr_039_4fe3:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $84, $3e
Jump_039_5021:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $c2, $f
jr_039_5030:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $d1, $3e
Jump_039_506e:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $10f, $50
jr_039_50be:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $15f, $1
jr_039_50bf:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $160, $47
jr_039_5106:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $1a7, $a
jr_039_5110:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $1b1, $5
jr_039_5115:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $1b6, $9
jr_039_511e:
    INCBIN "../../res/scene/case1/common/US/g63.bin", $1bf, $c

GfxC1_G64:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $0, $18
jr_039_5142:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $18, $1
jr_039_5143:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $19, $11
jr_039_5154:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $2a, $48
jr_039_519c:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $72, $4
jr_039_51a0:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $76, $d
jr_039_51ad:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $83, $4
jr_039_51b1:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $87, $61
jr_039_5212:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $e8, $2d
jr_039_523f:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $115, $11
jr_039_5250:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $126, $20
jr_039_5270:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $146, $17
jr_039_5287:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $15d, $11
jr_039_5298:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $16e, $4
jr_039_529c:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $172, $33
jr_039_52cf:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $1a5, $2f
jr_039_52fe:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $1d4, $2c
jr_039_532a:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $200, $4
jr_039_532e:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $204, $6
jr_039_5334:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $20a, $20
jr_039_5354:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $22a, $d
jr_039_5361:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $237, $d
jr_039_536e:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $244, $21
jr_039_538f:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $265, $21
jr_039_53b0:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $286, $7
jr_039_53b7:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $28d, $1e
jr_039_53d5:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $2ab, $6d
jr_039_5442:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $318, $59
jr_039_549b:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $371, $25
jr_039_54c0:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $396, $fd
jr_039_55bd:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $493, $7
jr_039_55c4:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $49a, $7
jr_039_55cb:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $4a1, $f
jr_039_55da:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $4b0, $9b
jr_039_5675:
    INCBIN "../../res/scene/case1/common/US/g64.bin", $54b, $a5

GfxC1_G65:
    INCBIN "../../res/scene/case1/common/US/g65.bin", $0, $d9
jr_039_57f3:
    INCBIN "../../res/scene/case1/common/US/g65.bin", $d9, $25
jr_039_5818:
    INCBIN "../../res/scene/case1/common/US/g65.bin", $fe, $6d

GfxC1_G66:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $0, $1f
jr_039_58a4:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $1f, $17
jr_039_58bb:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $36, $73
jr_039_592e:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $a9, $49
jr_039_5977:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $f2, $17
jr_039_598e:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $109, $19
jr_039_59a7:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $122, $59
Jump_039_5a00:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $17b, $69
jr_039_5a69:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $1e4, $4
jr_039_5a6d:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $1e8, $1a
jr_039_5a87:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $202, $1f
jr_039_5aa6:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $221, $4b
jr_039_5af1:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $26c, $41
jr_039_5b32:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $2ad, $4
jr_039_5b36:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $2b1, $57
jr_039_5b8d:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $308, $66
jr_039_5bf3:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $36e, $1c
jr_039_5c0f:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $38a, $1e
jr_039_5c2d:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $3a8, $6
jr_039_5c33:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $3ae, $27
jr_039_5c5a:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $3d5, $c
jr_039_5c66:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $3e1, $3
jr_039_5c69:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $3e4, $67
jr_039_5cd0:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $44b, $76
jr_039_5d46:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $4c1, $12
jr_039_5d58:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $4d3, $13
jr_039_5d6b:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $4e6, $44
jr_039_5daf:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $52a, $a2
jr_039_5e51:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $5cc, $5
jr_039_5e56:
    INCBIN "../../res/scene/case1/common/US/g66.bin", $5d1, $40

GfxC1_G67:
    INCBIN "../../res/scene/case1/common/US/g67.bin", $0, $1e
jr_039_5eb4:
    INCBIN "../../res/scene/case1/common/US/g67.bin", $1e, $14
jr_039_5ec8:
    INCBIN "../../res/scene/case1/common/US/g67.bin", $32, $4b
jr_039_5f13:
    INCBIN "../../res/scene/case1/common/US/g67.bin", $7d, $45
jr_039_5f58:
    INCBIN "../../res/scene/case1/common/US/g67.bin", $c2, $43
jr_039_5f9b:
    INCBIN "../../res/scene/case1/common/US/g67.bin", $105, $1f
jr_039_5fba:
    INCBIN "../../res/scene/case1/common/US/g67.bin", $124, $49
jr_039_6003:
    INCBIN "../../res/scene/case1/common/US/g67.bin", $16d, $b
jr_039_600e:
    INCBIN "../../res/scene/case1/common/US/g67.bin", $178, $a
jr_039_6018:
    INCBIN "../../res/scene/case1/common/US/g67.bin", $182, $3e
Call_039_6056:
    INCBIN "../../res/scene/case1/common/US/g67.bin", $1c0, $9
jr_039_605f:
    INCBIN "../../res/scene/case1/common/US/g67.bin", $1c9, $4
jr_039_6063:
    INCBIN "../../res/scene/case1/common/US/g67.bin", $1cd, $9

GfxC1_G68:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $0, $1f
jr_039_608b:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $1f, $17
jr_039_60a2:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $36, $45
jr_039_60e7:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $7b, $37
jr_039_611e:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $b2, $17
jr_039_6135:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $c9, $16
jr_039_614b:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $df, $1a
jr_039_6165:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $f9, $9
jr_039_616e:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $102, $2
jr_039_6170:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $104, $b0
Jump_039_6220:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $1b4, $1
jr_039_6221:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $1b5, $1c
jr_039_623d:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $1d1, $35
jr_039_6272:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $206, $9b
jr_039_630d:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $2a1, $7
jr_039_6314:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $2a8, $4
jr_039_6318:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $2ac, $34
jr_039_634c:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $2e0, $5
jr_039_6351:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $2e5, $e
Jump_039_635f:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $2f3, $11
jr_039_6370:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $304, $54
jr_039_63c4:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $358, $15
jr_039_63d9:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $36d, $3b
jr_039_6414:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $3a8, $6
jr_039_641a:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $3ae, $1f
jr_039_6439:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $3cd, $49
jr_039_6482:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $416, $17
jr_039_6499:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $42d, $11
jr_039_64aa:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $43e, $9
jr_039_64b3:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $447, $3e
jr_039_64f1:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $485, $49
jr_039_653a:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $4ce, $44
jr_039_657e:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $512, $47
jr_039_65c5:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $559, $1b
jr_039_65e0:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $574, $44
jr_039_6624:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $5b8, $27
jr_039_664b:
    INCBIN "../../res/scene/case1/common/US/g68.bin", $5df, $2

GfxC1_G69:
    INCBIN "../../res/scene/case1/common/US/g69.bin", $0, $12
jr_039_665f:
    INCBIN "../../res/scene/case1/common/US/g69.bin", $12, $3c
jr_039_669b:
    INCBIN "../../res/scene/case1/common/US/g69.bin", $4e, $b
jr_039_66a6:
    INCBIN "../../res/scene/case1/common/US/g69.bin", $59, $8
jr_039_66ae:
    INCBIN "../../res/scene/case1/common/US/g69.bin", $61, $10
jr_039_66be:
    INCBIN "../../res/scene/case1/common/US/g69.bin", $71, $89
jr_039_6747:
    INCBIN "../../res/scene/case1/common/US/g69.bin", $fa, $45
jr_039_678c:
    INCBIN "../../res/scene/case1/common/US/g69.bin", $13f, $a
jr_039_6796:
    INCBIN "../../res/scene/case1/common/US/g69.bin", $149, $34
jr_039_67ca:
    INCBIN "../../res/scene/case1/common/US/g69.bin", $17d, $d

GfxC1_G6A:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $0, $68
jr_039_683f:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $68, $22
jr_039_6861:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $8a, $3d
jr_039_689e:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $c7, $49
jr_039_68e7:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $110, $26
jr_039_690d:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $136, $d
jr_039_691a:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $143, $1d
jr_039_6937:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $160, $2a
jr_039_6961:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $18a, $10
jr_039_6971:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $19a, $f
jr_039_6980:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $1a9, $19
jr_039_6999:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $1c2, $2a
jr_039_69c3:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $1ec, $c4
jr_039_6a87:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $2b0, $8
jr_039_6a8f:
    INCBIN "../../res/scene/case1/common/US/g6a.bin", $2b8, $6
    rst RST_38

GfxC1_G6C:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $0, $4a
jr_039_6ae0:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $4a, $26
jr_039_6b06:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $70, $5
jr_039_6b0b:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $75, $66
jr_039_6b71:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $db, $e
jr_039_6b7f:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $e9, $1b
jr_039_6b9a:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $104, $3
jr_039_6b9d:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $107, $94
jr_039_6c31:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $19b, $6
jr_039_6c37:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $1a1, $1
jr_039_6c38:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $1a2, $25
jr_039_6c5d:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $1c7, $1c
jr_039_6c79:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $1e3, $2f
jr_039_6ca8:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $212, $1
jr_039_6ca9:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $213, $5c
jr_039_6d05:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $26f, $3a
jr_039_6d3f:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $2a9, $4f
jr_039_6d8e:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $2f8, $df
jr_039_6e6d:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $3d7, $47
jr_039_6eb4:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $41e, $48
jr_039_6efc:
    INCBIN "../../res/scene/case1/common/US/g6c.bin", $466, $18

GfxC1_G6D:
    INCBIN "../../res/scene/case1/common/US/g6d.bin", $0, $24
jr_039_6f38:
    INCBIN "../../res/scene/case1/common/US/g6d.bin", $24, $4a
jr_039_6f82:
    INCBIN "../../res/scene/case1/common/US/g6d.bin", $6e, $4a
jr_039_6fcc:
    INCBIN "../../res/scene/case1/common/US/g6d.bin", $b8, $1
jr_039_6fcd:
    INCBIN "../../res/scene/case1/common/US/g6d.bin", $b9, $3
jr_039_6fd0:
    INCBIN "../../res/scene/case1/common/US/g6d.bin", $bc, $5
jr_039_6fd5:
    INCBIN "../../res/scene/case1/common/US/g6d.bin", $c1, $5f
jr_039_7034:
    INCBIN "../../res/scene/case1/common/US/g6d.bin", $120, $2e
jr_039_7062:
    INCBIN "../../res/scene/case1/common/US/g6d.bin", $14e, $38
jr_039_709a:
    INCBIN "../../res/scene/case1/common/US/g6d.bin", $186, $20

GfxC1_G6E:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $0, $1d
jr_039_70d7:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $1d, $44
jr_039_711b:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $61, $58
jr_039_7173:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $b9, $8
jr_039_717b:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $c1, $df
jr_039_725a:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $1a0, $28
jr_039_7282:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $1c8, $12
jr_039_7294:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $1da, $5
jr_039_7299:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $1df, $47
jr_039_72e0:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $226, $8
jr_039_72e8:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $22e, $3c
jr_039_7324:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $26a, $17
jr_039_733b:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $281, $53
jr_039_738e:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $2d4, $2
jr_039_7390:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $2d6, $c
jr_039_739c:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $2e2, $10
jr_039_73ac:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $2f2, $10
jr_039_73bc:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $302, $10
jr_039_73cc:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $312, $29
jr_039_73f5:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $33b, $1d
jr_039_7412:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $358, $2b
jr_039_743d:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $383, $10
jr_039_744d:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $393, $8
jr_039_7455:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $39b, $55
jr_039_74aa:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $3f0, $2
jr_039_74ac:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $3f2, $10
jr_039_74bc:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $402, $63
jr_039_751f:
    INCBIN "../../res/scene/case1/common/US/g6e.bin", $465, $46

GfxC1_G6F:
    INCBIN "../../res/scene/case1/common/US/g6f.bin", $0, $12
jr_039_7577:
    INCBIN "../../res/scene/case1/common/US/g6f.bin", $12, $4b
jr_039_75c2:
    INCBIN "../../res/scene/case1/common/US/g6f.bin", $5d, $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_760d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_039_7700:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_039_7c75:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_039_7ca4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_039_7d38:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
