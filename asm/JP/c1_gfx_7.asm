; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03a", ROMX[$4000], BANK[$3a]

    dw GfxC1_G70 ; $00
    dw GfxC1_G71 ; $01
    dw GfxC1_G72 ; $02
    dw GfxC1_G73 ; $03
    dw GfxC1_G74 ; $04
    dw GfxC1_G75 ; $05
    dw GfxC1_G76 ; $06
    dw $5b72 ; $07
    dw GfxC1_G78 ; $08
    dw GfxC1_G79 ; $09
    dw GfxC1_G7A ; $0a
    dw GfxC1_G7B ; $0b
    dw GfxC1_G7C ; $0c
    dw GfxC1_G7D ; $0d
    dw GfxC1_G7E ; $0e
    dw GfxC1_G7F ; $0f

GfxC1_G70:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $0, $22
jr_03a_4042:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $22, $18
jr_03a_405a:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $3a, $e
jr_03a_4068:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $48, $17
jr_03a_407f:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $5f, $15
jr_03a_4094:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $74, $a4
jr_03a_4138:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $118, $19
jr_03a_4151:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $131, $21
jr_03a_4172:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $152, $18
jr_03a_418a:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $16a, $1c
jr_03a_41a6:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $186, $9
jr_03a_41af:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $18f, $30
jr_03a_41df:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $1bf, $29
jr_03a_4208:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $1e8, $6
jr_03a_420e:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $1ee, $1
jr_03a_420f:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $1ef, $40
jr_03a_424f:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $22f, $28
jr_03a_4277:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $257, $6
jr_03a_427d:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $25d, $2
jr_03a_427f:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $25f, $20
jr_03a_429f:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $27f, $35
jr_03a_42d4:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $2b4, $75
jr_03a_4349:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $329, $2f
jr_03a_4378:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $358, $3b
jr_03a_43b3:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $393, $31
jr_03a_43e4:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $3c4, $19
jr_03a_43fd:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $3dd, $c0
jr_03a_44bd:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $49d, $6
jr_03a_44c3:
    INCBIN "../../res/scene/case1/common/JP/g70.bin", $4a3, $1c

GfxC1_G71:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $0, $20
Jump_03a_44ff:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $20, $3f
jr_03a_453e:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $5f, $2b
jr_03a_4569:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $8a, $8a
jr_03a_45f3:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $114, $d
Jump_03a_4600:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $121, $34
jr_03a_4634:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $155, $22
jr_03a_4656:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $177, $11
jr_03a_4667:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $188, $20
jr_03a_4687:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $1a8, $16
jr_03a_469d:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $1be, $5
Jump_03a_46a2:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $1c3, $13
Call_03a_46b5:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $1d6, $1c
jr_03a_46d1:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $1f2, $15
jr_03a_46e6:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $207, $4c
jr_03a_4732:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $253, $23
jr_03a_4755:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $276, $1c
jr_03a_4771:
    INCBIN "../../res/scene/case1/common/JP/g71.bin", $292, $e

GfxC1_G72:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $0, $4
jr_03a_4783:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $4, $33
jr_03a_47b6:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $37, $2a
jr_03a_47e0:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $61, $c5
jr_03a_48a5:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $126, $1f
jr_03a_48c4:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $145, $a4
jr_03a_4968:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $1e9, $32
jr_03a_499a:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $21b, $6
jr_03a_49a0:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $221, $d
jr_03a_49ad:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $22e, $76
jr_03a_4a23:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $2a4, $26
jr_03a_4a49:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $2ca, $1
jr_03a_4a4a:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $2cb, $6
jr_03a_4a50:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $2d1, $7
jr_03a_4a57:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $2d8, $68
jr_03a_4abf:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $340, $19
jr_03a_4ad8:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $359, $47
jr_03a_4b1f:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $3a0, $27
jr_03a_4b46:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $3c7, $34
jr_03a_4b7a:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $3fb, $61
jr_03a_4bdb:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $45c, $39
jr_03a_4c14:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $495, $24
jr_03a_4c38:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $4b9, $16
jr_03a_4c4e:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $4cf, $13
jr_03a_4c61:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $4e2, $58
jr_03a_4cb9:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $53a, $35
jr_03a_4cee:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $56f, $14
jr_03a_4d02:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $583, $24
jr_03a_4d26:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $5a7, $8b
jr_03a_4db1:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $632, $3
jr_03a_4db4:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $635, $5
jr_03a_4db9:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $63a, $3
jr_03a_4dbc:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $63d, $2
jr_03a_4dbe:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $63f, $5
jr_03a_4dc3:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $644, $3
jr_03a_4dc6:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $647, $b
jr_03a_4dd1:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $652, $10
jr_03a_4de1:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $662, $1f
Jump_03a_4e00:
    INCBIN "../../res/scene/case1/common/JP/g72.bin", $681, $3f

GfxC1_G73:
    INCBIN "../../res/scene/case1/common/JP/g73.bin", $0, $2
jr_03a_4e41:
    INCBIN "../../res/scene/case1/common/JP/g73.bin", $2, $16
jr_03a_4e57:
    INCBIN "../../res/scene/case1/common/JP/g73.bin", $18, $5
jr_03a_4e5c:
    INCBIN "../../res/scene/case1/common/JP/g73.bin", $1d, $53
jr_03a_4eaf:
    INCBIN "../../res/scene/case1/common/JP/g73.bin", $70, $6
jr_03a_4eb5:
    INCBIN "../../res/scene/case1/common/JP/g73.bin", $76, $22
jr_03a_4ed7:
    INCBIN "../../res/scene/case1/common/JP/g73.bin", $98, $21
jr_03a_4ef8:
    INCBIN "../../res/scene/case1/common/JP/g73.bin", $b9, $6b
jr_03a_4f63:
    INCBIN "../../res/scene/case1/common/JP/g73.bin", $124, $14
jr_03a_4f77:
    INCBIN "../../res/scene/case1/common/JP/g73.bin", $138, $1
jr_03a_4f78:
    INCBIN "../../res/scene/case1/common/JP/g73.bin", $139, $6
jr_03a_4f7e:
    INCBIN "../../res/scene/case1/common/JP/g73.bin", $13f, $9a

GfxC1_G74:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $0, $37
jr_03a_504f:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $37, $2a
jr_03a_5079:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $61, $c5
jr_03a_513e:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $126, $1f
jr_03a_515d:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $145, $a4
jr_03a_5201:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $1e9, $32
jr_03a_5233:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $21b, $6
jr_03a_5239:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $221, $d
jr_03a_5246:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $22e, $76
jr_03a_52bc:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $2a4, $26
jr_03a_52e2:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $2ca, $1
jr_03a_52e3:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $2cb, $6
jr_03a_52e9:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $2d1, $7
jr_03a_52f0:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $2d8, $68
jr_03a_5358:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $340, $19
jr_03a_5371:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $359, $47
jr_03a_53b8:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $3a0, $27
jr_03a_53df:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $3c7, $34
jr_03a_5413:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $3fb, $61
jr_03a_5474:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $45c, $39
jr_03a_54ad:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $495, $24
jr_03a_54d1:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $4b9, $16
jr_03a_54e7:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $4cf, $13
jr_03a_54fa:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $4e2, $58
jr_03a_5552:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $53a, $35
jr_03a_5587:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $56f, $14
jr_03a_559b:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $583, $24
jr_03a_55bf:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $5a7, $8b
jr_03a_564a:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $632, $3
jr_03a_564d:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $635, $5
jr_03a_5652:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $63a, $3
jr_03a_5655:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $63d, $2
jr_03a_5657:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $63f, $5
jr_03a_565c:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $644, $3
jr_03a_565f:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $647, $b
jr_03a_566a:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $652, $10
jr_03a_567a:
    INCBIN "../../res/scene/case1/common/JP/g74.bin", $662, $5e

GfxC1_G75:
    INCBIN "../../res/scene/case1/common/JP/g75.bin", $0, $2
jr_03a_56da:
    INCBIN "../../res/scene/case1/common/JP/g75.bin", $2, $16
jr_03a_56f0:
    INCBIN "../../res/scene/case1/common/JP/g75.bin", $18, $5
jr_03a_56f5:
    INCBIN "../../res/scene/case1/common/JP/g75.bin", $1d, $53
jr_03a_5748:
    INCBIN "../../res/scene/case1/common/JP/g75.bin", $70, $6
jr_03a_574e:
    INCBIN "../../res/scene/case1/common/JP/g75.bin", $76, $22
jr_03a_5770:
    INCBIN "../../res/scene/case1/common/JP/g75.bin", $98, $21
jr_03a_5791:
    INCBIN "../../res/scene/case1/common/JP/g75.bin", $b9, $6b
jr_03a_57fc:
    INCBIN "../../res/scene/case1/common/JP/g75.bin", $124, $14
jr_03a_5810:
    INCBIN "../../res/scene/case1/common/JP/g75.bin", $138, $1
jr_03a_5811:
    INCBIN "../../res/scene/case1/common/JP/g75.bin", $139, $6
jr_03a_5817:
    INCBIN "../../res/scene/case1/common/JP/g75.bin", $13f, $9a

GfxC1_G76:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $0, $15
jr_03a_58c6:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $15, $89
jr_03a_594f:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $9e, $1b
jr_03a_596a:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $b9, $14
jr_03a_597e:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $cd, $29
jr_03a_59a7:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $f6, $13
jr_03a_59ba:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $109, $5f
jr_03a_5a19:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $168, $18
jr_03a_5a31:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $180, $55
jr_03a_5a86:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $1d5, $c
jr_03a_5a92:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $1e1, $f
jr_03a_5aa1:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $1f0, $31
jr_03a_5ad2:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $221, $1d
jr_03a_5aef:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $23e, $56
jr_03a_5b45:
    INCBIN "../../res/scene/case1/common/JP/g76.bin", $294, $2d
    db $ff

GfxC1_G78:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $0, $34
jr_03a_5ba7:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $34, $2
jr_03a_5ba9:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $36, $67
jr_03a_5c10:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $9d, $23
jr_03a_5c33:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $c0, $5
jr_03a_5c38:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $c5, $cf
jr_03a_5d07:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $194, $52
jr_03a_5d59:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $1e6, $134
jr_03a_5e8d:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $31a, $30
jr_03a_5ebd:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $34a, $1
jr_03a_5ebe:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $34b, $4f
jr_03a_5f0d:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $39a, $d3
jr_03a_5fe0:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $46d, $8b
jr_03a_606b:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $4f8, $7
jr_03a_6072:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $4ff, $89
jr_03a_60fb:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $588, $45
jr_03a_6140:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $5cd, $b
jr_03a_614b:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $5d8, $4
jr_03a_614f:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $5dc, $8e
jr_03a_61dd:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $66a, $2a
jr_03a_6207:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $694, $1e
jr_03a_6225:
    INCBIN "../../res/scene/case1/common/JP/g78.bin", $6b2, $32

GfxC1_G79:
    INCBIN "../../res/scene/case1/common/JP/g79.bin", $0, $3d
jr_03a_6294:
    INCBIN "../../res/scene/case1/common/JP/g79.bin", $3d, $1a
jr_03a_62ae:
    INCBIN "../../res/scene/case1/common/JP/g79.bin", $57, $74
jr_03a_6322:
    INCBIN "../../res/scene/case1/common/JP/g79.bin", $cb, $1d
jr_03a_633f:
    INCBIN "../../res/scene/case1/common/JP/g79.bin", $e8, $19
jr_03a_6358:
    INCBIN "../../res/scene/case1/common/JP/g79.bin", $101, $36
jr_03a_638e:
    INCBIN "../../res/scene/case1/common/JP/g79.bin", $137, $21
jr_03a_63af:
    INCBIN "../../res/scene/case1/common/JP/g79.bin", $158, $d
jr_03a_63bc:
    INCBIN "../../res/scene/case1/common/JP/g79.bin", $165, $37
jr_03a_63f3:
    INCBIN "../../res/scene/case1/common/JP/g79.bin", $19c, $43
jr_03a_6436:
    INCBIN "../../res/scene/case1/common/JP/g79.bin", $1df, $c2
jr_03a_64f8:
    INCBIN "../../res/scene/case1/common/JP/g79.bin", $2a1, $2e

GfxC1_G7A:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $0, $67
jr_03a_658d:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $67, $48
jr_03a_65d5:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $af, $3f
jr_03a_6614:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $ee, $99
jr_03a_66ad:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $187, $1f
jr_03a_66cc:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $1a6, $2
jr_03a_66ce:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $1a8, $2b
jr_03a_66f9:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $1d3, $48
jr_03a_6741:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $21b, $26
jr_03a_6767:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $241, $2e
jr_03a_6795:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $26f, $73
jr_03a_6808:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $2e2, $e
jr_03a_6816:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $2f0, $2c
jr_03a_6842:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $31c, $16
jr_03a_6858:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $332, $3
jr_03a_685b:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $335, $6
jr_03a_6861:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $33b, $11
jr_03a_6872:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $34c, $2
jr_03a_6874:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $34e, $9
jr_03a_687d:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $357, $54
jr_03a_68d1:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $3ab, $71
jr_03a_6942:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $41c, $10
Jump_03a_6952:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $42c, $2b
jr_03a_697d:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $457, $d
jr_03a_698a:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $464, $40
jr_03a_69ca:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $4a4, $3c
jr_03a_6a06:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $4e0, $7
jr_03a_6a0d:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $4e7, $9
jr_03a_6a16:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $4f0, $5
jr_03a_6a1b:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $4f5, $a
jr_03a_6a25:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $4ff, $7
jr_03a_6a2c:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $506, $1a
jr_03a_6a46:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $520, $1a
jr_03a_6a60:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $53a, $2b
jr_03a_6a8b:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $565, $46
jr_03a_6ad1:
    INCBIN "../../res/scene/case1/common/JP/g7a.bin", $5ab, $a

GfxC1_G7B:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $0, $29
jr_03a_6b04:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $29, $3d
jr_03a_6b41:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $66, $a4
jr_03a_6be5:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $10a, $2a
Call_03a_6c0f:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $134, $23
jr_03a_6c32:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $157, $24
jr_03a_6c56:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $17b, $f6
jr_03a_6d4c:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $271, $1f
jr_03a_6d6b:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $290, $7
jr_03a_6d72:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $297, $3
jr_03a_6d75:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $29a, $11
jr_03a_6d86:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $2ab, $f
jr_03a_6d95:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $2ba, $5c
jr_03a_6df1:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $316, $c
jr_03a_6dfd:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $322, $1f
jr_03a_6e1c:
    INCBIN "../../res/scene/case1/common/JP/g7b.bin", $341, $4d

GfxC1_G7C:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $0, $13
jr_03a_6e7c:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $13, $16
jr_03a_6e92:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $29, $6
jr_03a_6e98:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $2f, $1a
jr_03a_6eb2:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $49, $ac
Jump_03a_6f5e:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $f5, $2d
jr_03a_6f8b:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $122, $2c
jr_03a_6fb7:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $14e, $19
jr_03a_6fd0:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $167, $3
jr_03a_6fd3:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $16a, $a
jr_03a_6fdd:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $174, $10
jr_03a_6fed:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $184, $1e
jr_03a_700b:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $1a2, $7
jr_03a_7012:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $1a9, $1c
jr_03a_702e:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $1c5, $a
Jump_03a_7038:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $1cf, $11
jr_03a_7049:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $1e0, $6
jr_03a_704f:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $1e6, $5
jr_03a_7054:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $1eb, $35
jr_03a_7089:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $220, $e
jr_03a_7097:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $22e, $29
jr_03a_70c0:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $257, $f
jr_03a_70cf:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $266, $3d
jr_03a_710c:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $2a3, $38
jr_03a_7144:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $2db, $1e
jr_03a_7162:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $2f9, $6
jr_03a_7168:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $2ff, $1f
jr_03a_7187:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $31e, $57
jr_03a_71de:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $375, $14
jr_03a_71f2:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $389, $3f
jr_03a_7231:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $3c8, $84
jr_03a_72b5:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $44c, $e
jr_03a_72c3:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $45a, $c
jr_03a_72cf:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $466, $e
jr_03a_72dd:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $474, $12
jr_03a_72ef:
    INCBIN "../../res/scene/case1/common/JP/g7c.bin", $486, $3b

GfxC1_G7D:
    INCBIN "../../res/scene/case1/common/JP/g7d.bin", $0, $8
jr_03a_7332:
    INCBIN "../../res/scene/case1/common/JP/g7d.bin", $8, $b
jr_03a_733d:
    INCBIN "../../res/scene/case1/common/JP/g7d.bin", $13, $20
jr_03a_735d:
    INCBIN "../../res/scene/case1/common/JP/g7d.bin", $33, $2
jr_03a_735f:
    INCBIN "../../res/scene/case1/common/JP/g7d.bin", $35, $2c
jr_03a_738b:
    INCBIN "../../res/scene/case1/common/JP/g7d.bin", $61, $4f
jr_03a_73da:
    INCBIN "../../res/scene/case1/common/JP/g7d.bin", $b0, $58

GfxC1_G7E:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $0, $5a
jr_03a_748c:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $5a, $12
jr_03a_749e:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $6c, $25
jr_03a_74c3:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $91, $1
jr_03a_74c4:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $92, $1d
jr_03a_74e1:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $af, $8
jr_03a_74e9:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $b7, $3
jr_03a_74ec:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $ba, $57
jr_03a_7543:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $111, $28
jr_03a_756b:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $139, $d
jr_03a_7578:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $146, $15
jr_03a_758d:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $15b, $1e
jr_03a_75ab:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $179, $3
jr_03a_75ae:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $17c, $ce
jr_03a_767c:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $24a, $21
jr_03a_769d:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $26b, $13
jr_03a_76b0:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $27e, $8e
jr_03a_773e:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $30c, $5d
jr_03a_779b:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $369, $5f
jr_03a_77fa:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $3c8, $19
jr_03a_7813:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $3e1, $13
jr_03a_7826:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $3f4, $15
jr_03a_783b:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $409, $36
jr_03a_7871:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $43f, $52
Jump_03a_78c3:
    INCBIN "../../res/scene/case1/common/JP/g7e.bin", $491, $15

GfxC1_G7F:
    INCBIN "../../res/scene/case1/common/JP/g7f.bin", $0, $b2
jr_03a_798a:
    INCBIN "../../res/scene/case1/common/JP/g7f.bin", $b2, $5d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03a_7a07:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03a_7c01:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03a_7c74:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03a_7f04:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03a_7f21:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03a_7f3e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03a_7f66:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
