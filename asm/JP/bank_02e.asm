; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

    dw GfxC2_G40 ; $00
    dw GfxC2_G41 ; $01
    dw GfxC2_G42 ; $02
    dw GfxC2_G43 ; $03
    dw GfxC2_G44 ; $04
    dw $580d ; $05
    dw GfxC2_G46 ; $06
    dw GfxC2_G47 ; $07
    dw GfxC2_G48 ; $08
    dw GfxC2_G49 ; $09
    dw GfxC2_G4A ; $0a
    dw GfxC2_G4B ; $0b
    dw GfxC2_G4C ; $0c
    dw $72f9 ; $0d
    dw GfxC2_G4E ; $0e
    dw GfxC2_G4F ; $0f

GfxC2_G40:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $0, $22
jr_02e_4042:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $22, $d
Jump_02e_404f:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $2f, $137
jr_02e_4186:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $166, $42
jr_02e_41c8:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $1a8, $14
jr_02e_41dc:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $1bc, $c
jr_02e_41e8:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $1c8, $4
jr_02e_41ec:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $1cc, $20
jr_02e_420c:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $1ec, $41
Jump_02e_424d:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $22d, $1e
jr_02e_426b:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $24b, $a
jr_02e_4275:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $255, $1e
jr_02e_4293:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $273, $3
jr_02e_4296:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $276, $28
jr_02e_42be:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $29e, $12
jr_02e_42d0:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $2b0, $6
jr_02e_42d6:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $2b6, $17
jr_02e_42ed:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $2cd, $8
jr_02e_42f5:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $2d5, $a
jr_02e_42ff:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $2df, $72
jr_02e_4371:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $351, $fa
jr_02e_446b:
    INCBIN "../../res/scene/case2/common/JP/g40.bin", $44b, $62

GfxC2_G41:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $0, $8
jr_02e_44d5:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $8, $34
jr_02e_4509:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $3c, $49
jr_02e_4552:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $85, $5
jr_02e_4557:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $8a, $d
Call_02e_4564:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $97, $6
jr_02e_456a:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $9d, $73
jr_02e_45dd:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $110, $2b
Call_02e_4608:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $13b, $48
jr_02e_4650:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $183, $f
jr_02e_465f:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $192, $d
jr_02e_466c:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $19f, $4
jr_02e_4670:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $1a3, $16
jr_02e_4686:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $1b9, $2
jr_02e_4688:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $1bb, $8f
Call_02e_4717:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $24a, $3
jr_02e_471a:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $24d, $20
jr_02e_473a:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $26d, $12
jr_02e_474c:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $27f, $2d
jr_02e_4779:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $2ac, $49
jr_02e_47c2:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $2f5, $14
jr_02e_47d6:
    INCBIN "../../res/scene/case2/common/JP/g41.bin", $309, $8f

GfxC2_G42:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $0, $44
jr_02e_48a9:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $44, $5
jr_02e_48ae:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $49, $15
jr_02e_48c3:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $5e, $a
jr_02e_48cd:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $68, $2a
jr_02e_48f7:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $92, $e
jr_02e_4905:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $a0, $4
jr_02e_4909:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $a4, $23
jr_02e_492c:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $c7, $3
jr_02e_492f:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $ca, $12
jr_02e_4941:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $dc, $9
jr_02e_494a:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $e5, $20
jr_02e_496a:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $105, $5d
jr_02e_49c7:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $162, $17
jr_02e_49de:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $179, $13
jr_02e_49f1:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $18c, $8
jr_02e_49f9:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $194, $9b
jr_02e_4a94:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $22f, $2
jr_02e_4a96:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $231, $1d
jr_02e_4ab3:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $24e, $5d
jr_02e_4b10:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $2ab, $8
jr_02e_4b18:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $2b3, $1
jr_02e_4b19:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $2b4, $f
jr_02e_4b28:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $2c3, $6d
jr_02e_4b95:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $330, $10
jr_02e_4ba5:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $340, $3
jr_02e_4ba8:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $343, $26
jr_02e_4bce:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $369, $29
jr_02e_4bf7:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $392, $11
jr_02e_4c08:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $3a3, $1d
jr_02e_4c25:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $3c0, $2d
jr_02e_4c52:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $3ed, $1
jr_02e_4c53:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $3ee, $2a
jr_02e_4c7d:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $418, $1b
jr_02e_4c98:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $433, $2b
jr_02e_4cc3:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $45e, $29
jr_02e_4cec:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $487, $3
jr_02e_4cef:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $48a, $2
jr_02e_4cf1:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $48c, $55
jr_02e_4d46:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $4e1, $8
jr_02e_4d4e:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $4e9, $73
jr_02e_4dc1:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $55c, $21
jr_02e_4de2:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $57d, $5
jr_02e_4de7:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $582, $d
jr_02e_4df4:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $58f, $41
jr_02e_4e35:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $5d0, $5a
jr_02e_4e8f:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $62a, $52
jr_02e_4ee1:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $67c, $42
jr_02e_4f23:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $6be, $30
jr_02e_4f53:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $6ee, $2c
jr_02e_4f7f:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $71a, $c
jr_02e_4f8b:
    INCBIN "../../res/scene/case2/common/JP/g42.bin", $726, $1e

GfxC2_G43:
    INCBIN "../../res/scene/case2/common/JP/g43.bin", $0, $33
jr_02e_4fdc:
    INCBIN "../../res/scene/case2/common/JP/g43.bin", $33, $86
jr_02e_5062:
    INCBIN "../../res/scene/case2/common/JP/g43.bin", $b9, $3b
jr_02e_509d:
    INCBIN "../../res/scene/case2/common/JP/g43.bin", $f4, $26
Call_02e_50c3:
    INCBIN "../../res/scene/case2/common/JP/g43.bin", $11a, $d
jr_02e_50d0:
    INCBIN "../../res/scene/case2/common/JP/g43.bin", $127, $7
jr_02e_50d7:
    INCBIN "../../res/scene/case2/common/JP/g43.bin", $12e, $6
jr_02e_50dd:
    INCBIN "../../res/scene/case2/common/JP/g43.bin", $134, $e
jr_02e_50eb:
    INCBIN "../../res/scene/case2/common/JP/g43.bin", $142, $2f
jr_02e_511a:
    INCBIN "../../res/scene/case2/common/JP/g43.bin", $171, $42
jr_02e_515c:
    INCBIN "../../res/scene/case2/common/JP/g43.bin", $1b3, $11
jr_02e_516d:
    INCBIN "../../res/scene/case2/common/JP/g43.bin", $1c4, $2
jr_02e_516f:
    INCBIN "../../res/scene/case2/common/JP/g43.bin", $1c6, $26
jr_02e_5195:
    INCBIN "../../res/scene/case2/common/JP/g43.bin", $1ec, $10

GfxC2_G44:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $0, $18
jr_02e_51bd:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $18, $15
jr_02e_51d2:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $2d, $e
jr_02e_51e0:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $3b, $9
jr_02e_51e9:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $44, $56
jr_02e_523f:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $9a, $54
jr_02e_5293:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $ee, $76
jr_02e_5309:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $164, $10
jr_02e_5319:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $174, $d
jr_02e_5326:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $181, $4
jr_02e_532a:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $185, $13
jr_02e_533d:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $198, $e
jr_02e_534b:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $1a6, $7
jr_02e_5352:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $1ad, $21
jr_02e_5373:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $1ce, $4a
jr_02e_53bd:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $218, $53
Jump_02e_5410:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $26b, $6
jr_02e_5416:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $271, $5
jr_02e_541b:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $276, $2c
jr_02e_5447:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $2a2, $44
jr_02e_548b:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $2e6, $47
jr_02e_54d2:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $32d, $1
jr_02e_54d3:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $32e, $19
jr_02e_54ec:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $347, $5a
jr_02e_5546:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $3a1, $68
jr_02e_55ae:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $409, $1c
jr_02e_55ca:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $425, $70
jr_02e_563a:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $495, $fd
jr_02e_5737:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $592, $56
jr_02e_578d:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $5e8, $3f
Call_02e_57cc:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $627, $11
jr_02e_57dd:
    INCBIN "../../res/scene/case2/common/JP/g44.bin", $638, $30
    db $ff

GfxC2_G46:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $0, $14
jr_02e_5822:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $14, $3
jr_02e_5825:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $17, $c
jr_02e_5831:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $23, $17
jr_02e_5848:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $3a, $96
Call_02e_58de:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $d0, $36
jr_02e_5914:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $106, $41
jr_02e_5955:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $147, $ee
jr_02e_5a43:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $235, $f
jr_02e_5a52:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $244, $11
jr_02e_5a63:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $255, $72
jr_02e_5ad5:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $2c7, $1e
jr_02e_5af3:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $2e5, $4f
jr_02e_5b42:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $334, $4d
jr_02e_5b8f:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $381, $9a
jr_02e_5c29:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $41b, $2
jr_02e_5c2b:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $41d, $4
jr_02e_5c2f:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $421, $10
jr_02e_5c3f:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $431, $43
jr_02e_5c82:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $474, $e
jr_02e_5c90:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $482, $30
jr_02e_5cc0:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $4b2, $26
jr_02e_5ce6:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $4d8, $16
jr_02e_5cfc:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $4ee, $25
jr_02e_5d21:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $513, $54
jr_02e_5d75:
    INCBIN "../../res/scene/case2/common/JP/g46.bin", $567, $81

GfxC2_G47:
    INCBIN "../../res/scene/case2/common/JP/g47.bin", $0, $b
jr_02e_5e01:
    INCBIN "../../res/scene/case2/common/JP/g47.bin", $b, $4
jr_02e_5e05:
    INCBIN "../../res/scene/case2/common/JP/g47.bin", $f, $2c
jr_02e_5e31:
    INCBIN "../../res/scene/case2/common/JP/g47.bin", $3b, $e
jr_02e_5e3f:
    INCBIN "../../res/scene/case2/common/JP/g47.bin", $49, $20
jr_02e_5e5f:
    INCBIN "../../res/scene/case2/common/JP/g47.bin", $69, $d
jr_02e_5e6c:
    INCBIN "../../res/scene/case2/common/JP/g47.bin", $76, $3e
jr_02e_5eaa:
    INCBIN "../../res/scene/case2/common/JP/g47.bin", $b4, $8
jr_02e_5eb2:
    INCBIN "../../res/scene/case2/common/JP/g47.bin", $bc, $87
jr_02e_5f39:
    INCBIN "../../res/scene/case2/common/JP/g47.bin", $143, $23
jr_02e_5f5c:
    INCBIN "../../res/scene/case2/common/JP/g47.bin", $166, $93

GfxC2_G48:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $0, $2c
jr_02e_601b:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $2c, $28
Jump_02e_6043:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $54, $e
Jump_02e_6051:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $62, $2
Call_02e_6053:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $64, $16
jr_02e_6069:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $7a, $a4
jr_02e_610d:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $11e, $fa
jr_02e_6207:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $218, $b
jr_02e_6212:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $223, $68
jr_02e_627a:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $28b, $5
jr_02e_627f:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $290, $37
jr_02e_62b6:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $2c7, $11
jr_02e_62c7:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $2d8, $7b
jr_02e_6342:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $353, $8
jr_02e_634a:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $35b, $1e
jr_02e_6368:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $379, $97
jr_02e_63ff:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $410, $b8
jr_02e_64b7:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $4c8, $6d
Jump_02e_6524:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $535, $20
Call_02e_6544:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $555, $7
jr_02e_654b:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $55c, $33
jr_02e_657e:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $58f, $30
jr_02e_65ae:
    INCBIN "../../res/scene/case2/common/JP/g48.bin", $5bf, $36

GfxC2_G49:
    INCBIN "../../res/scene/case2/common/JP/g49.bin", $0, $24
jr_02e_6608:
    INCBIN "../../res/scene/case2/common/JP/g49.bin", $24, $98

GfxC2_G4A:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $0, $6
jr_02e_66a6:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $6, $63
jr_02e_6709:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $69, $26
jr_02e_672f:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $8f, $37
jr_02e_6766:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $c6, $3
jr_02e_6769:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $c9, $b2
jr_02e_681b:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $17b, $1a
jr_02e_6835:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $195, $1e
jr_02e_6853:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $1b3, $1b
jr_02e_686e:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $1ce, $26
jr_02e_6894:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $1f4, $37
jr_02e_68cb:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $22b, $4
jr_02e_68cf:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $22f, $30
jr_02e_68ff:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $25f, $7
jr_02e_6906:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $266, $53
jr_02e_6959:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $2b9, $4a
jr_02e_69a3:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $303, $4
jr_02e_69a7:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $307, $27
jr_02e_69ce:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $32e, $78
jr_02e_6a46:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $3a6, $1
jr_02e_6a47:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $3a7, $19
jr_02e_6a60:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $3c0, $12
jr_02e_6a72:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $3d2, $49
jr_02e_6abb:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $41b, $13
jr_02e_6ace:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $42e, $31
Call_02e_6aff:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $45f, $45
jr_02e_6b44:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $4a4, $21
jr_02e_6b65:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $4c5, $2b
jr_02e_6b90:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $4f0, $2
jr_02e_6b92:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $4f2, $62
jr_02e_6bf4:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $554, $44
jr_02e_6c38:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $598, $6
jr_02e_6c3e:
    INCBIN "../../res/scene/case2/common/JP/g4a.bin", $59e, $2a

GfxC2_G4B:
    INCBIN "../../res/scene/case2/common/JP/g4b.bin", $0, $1d
jr_02e_6c85:
    INCBIN "../../res/scene/case2/common/JP/g4b.bin", $1d, $9
jr_02e_6c8e:
    INCBIN "../../res/scene/case2/common/JP/g4b.bin", $26, $1b
jr_02e_6ca9:
    INCBIN "../../res/scene/case2/common/JP/g4b.bin", $41, $3
jr_02e_6cac:
    INCBIN "../../res/scene/case2/common/JP/g4b.bin", $44, $31
jr_02e_6cdd:
    INCBIN "../../res/scene/case2/common/JP/g4b.bin", $75, $42
jr_02e_6d1f:
    INCBIN "../../res/scene/case2/common/JP/g4b.bin", $b7, $1f
jr_02e_6d3e:
    INCBIN "../../res/scene/case2/common/JP/g4b.bin", $d6, $97

GfxC2_G4C:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $0, $3c
jr_02e_6e11:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $3c, $22
Call_02e_6e33:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $5e, $23
jr_02e_6e56:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $81, $2
jr_02e_6e58:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $83, $20
jr_02e_6e78:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $a3, $65
jr_02e_6edd:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $108, $15
jr_02e_6ef2:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $11d, $8c
jr_02e_6f7e:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $1a9, $b8
jr_02e_7036:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $261, $9
jr_02e_703f:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $26a, $3d
jr_02e_707c:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $2a7, $2f
jr_02e_70ab:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $2d6, $3
jr_02e_70ae:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $2d9, $3
jr_02e_70b1:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $2dc, $25
jr_02e_70d6:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $301, $29
jr_02e_70ff:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $32a, $36
jr_02e_7135:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $360, $12
jr_02e_7147:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $372, $2e
jr_02e_7175:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $3a0, $3d
jr_02e_71b2:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $3dd, $68
jr_02e_721a:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $445, $8d
jr_02e_72a7:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $4d2, $3a
jr_02e_72e1:
    INCBIN "../../res/scene/case2/common/JP/g4c.bin", $50c, $18
    rst RST_38

GfxC2_G4E:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $0, $25
jr_02e_731f:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $25, $4c
jr_02e_736b:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $71, $64
jr_02e_73cf:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $d5, $18
Call_02e_73e7:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $ed, $e
jr_02e_73f5:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $fb, $b9
jr_02e_74ae:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $1b4, $4c
jr_02e_74fa:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $200, $26
jr_02e_7520:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $226, $24
jr_02e_7544:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $24a, $18
jr_02e_755c:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $262, $4
jr_02e_7560:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $266, $2
Jump_02e_7562:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $268, $15
jr_02e_7577:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $27d, $23
jr_02e_759a:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $2a0, $f
jr_02e_75a9:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $2af, $93
jr_02e_763c:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $342, $23
jr_02e_765f:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $365, $4
jr_02e_7663:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $369, $2
jr_02e_7665:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $36b, $25
jr_02e_768a:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $390, $2
jr_02e_768c:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $392, $38
jr_02e_76c4:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $3ca, $a5
jr_02e_7769:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $46f, $10
jr_02e_7779:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $47f, $70
jr_02e_77e9:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $4ef, $1a
Jump_02e_7803:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $509, $29
jr_02e_782c:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $532, $15
jr_02e_7841:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $547, $25
jr_02e_7866:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $56c, $b
jr_02e_7871:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $577, $f
jr_02e_7880:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $586, $7
jr_02e_7887:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $58d, $3
jr_02e_788a:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $590, $24
jr_02e_78ae:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $5b4, $29
jr_02e_78d7:
    INCBIN "../../res/scene/case2/common/JP/g4e.bin", $5dd, $46

GfxC2_G4F:
    INCBIN "../../res/scene/case2/common/JP/g4f.bin", $0, $4
jr_02e_7921:
    INCBIN "../../res/scene/case2/common/JP/g4f.bin", $4, $93
jr_02e_79b4:
    INCBIN "../../res/scene/case2/common/JP/g4f.bin", $97, $4f
jr_02e_7a03:
    INCBIN "../../res/scene/case2/common/JP/g4f.bin", $e6, $24
jr_02e_7a27:
    INCBIN "../../res/scene/case2/common/JP/g4f.bin", $10a, $1b
jr_02e_7a42:
    INCBIN "../../res/scene/case2/common/JP/g4f.bin", $125, $9a
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

Jump_02e_7c00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02e_7c18:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02e_7d82:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02e_7e00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02e_7f0a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02e_7fff:
    nop
