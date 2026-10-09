; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $030", ROMX[$4000], BANK[$30]

    dw GfxC2_G60 ; $00
    dw GfxC2_G61 ; $01
    dw GfxC2_G62 ; $02
    dw GfxC2_G63 ; $03
    dw GfxC2_G64 ; $04
    dw GfxC2_G65 ; $05
    dw GfxC2_G66 ; $06
    dw $5893 ; $07
    dw GfxC2_G68 ; $08
    dw $5ef4 ; $09
    dw GfxC2_G6A ; $0a
    dw GfxC2_G6B ; $0b
    dw GfxC2_G6C ; $0c
    dw $6eaf ; $0d
    dw GfxC2_G6E ; $0e
    dw $756c ; $0f

GfxC2_G60:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $0, $5b
jr_030_407b:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $5b, $2
jr_030_407d:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $5d, $5
jr_030_4082:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $62, $48
jr_030_40ca:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $aa, $3e
jr_030_4108:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $e8, $62
jr_030_416a:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $14a, $13
jr_030_417d:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $15d, $26
jr_030_41a3:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $183, $6
jr_030_41a9:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $189, $1
jr_030_41aa:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $18a, $7
jr_030_41b1:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $191, $5
jr_030_41b6:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $196, $4
jr_030_41ba:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $19a, $e
jr_030_41c8:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $1a8, $5
jr_030_41cd:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $1ad, $a
jr_030_41d7:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $1b7, $38
jr_030_420f:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $1ef, $8
jr_030_4217:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $1f7, $1
jr_030_4218:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $1f8, $a
jr_030_4222:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $202, $3
jr_030_4225:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $205, $a
jr_030_422f:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $20f, $44
jr_030_4273:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $253, $4
jr_030_4277:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $257, $52
jr_030_42c9:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $2a9, $16
jr_030_42df:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $2bf, $1
jr_030_42e0:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $2c0, $12
jr_030_42f2:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $2d2, $1d
jr_030_430f:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $2ef, $a
jr_030_4319:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $2f9, $21
jr_030_433a:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $31a, $29
jr_030_4363:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $343, $28
jr_030_438b:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $36b, $1
jr_030_438c:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $36c, $95
jr_030_4421:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $401, $1a
jr_030_443b:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $41b, $65
jr_030_44a0:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $480, $6
jr_030_44a6:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $486, $3
jr_030_44a9:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $489, $1
jr_030_44aa:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $48a, $5f
jr_030_4509:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $4e9, $c
jr_030_4515:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $4f5, $3d
jr_030_4552:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $532, $3f
jr_030_4591:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $571, $6
jr_030_4597:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $577, $15
jr_030_45ac:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $58c, $17
jr_030_45c3:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $5a3, $a
jr_030_45cd:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $5ad, $4c
jr_030_4619:
    INCBIN "../../res/scene/case2/common/JP/g60.bin", $5f9, $1d

GfxC2_G61:
    INCBIN "../../res/scene/case2/common/JP/g61.bin", $0, $39
jr_030_466f:
    INCBIN "../../res/scene/case2/common/JP/g61.bin", $39, $19
jr_030_4688:
    INCBIN "../../res/scene/case2/common/JP/g61.bin", $52, $9
jr_030_4691:
    INCBIN "../../res/scene/case2/common/JP/g61.bin", $5b, $11
jr_030_46a2:
    INCBIN "../../res/scene/case2/common/JP/g61.bin", $6c, $2c
jr_030_46ce:
    INCBIN "../../res/scene/case2/common/JP/g61.bin", $98, $37
jr_030_4705:
    INCBIN "../../res/scene/case2/common/JP/g61.bin", $cf, $44
jr_030_4749:
    INCBIN "../../res/scene/case2/common/JP/g61.bin", $113, $14
jr_030_475d:
    INCBIN "../../res/scene/case2/common/JP/g61.bin", $127, $2d
jr_030_478a:
    INCBIN "../../res/scene/case2/common/JP/g61.bin", $154, $19
jr_030_47a3:
    INCBIN "../../res/scene/case2/common/JP/g61.bin", $16d, $2c

GfxC2_G62:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $0, $18
Jump_030_47e7:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $18, $3
jr_030_47ea:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $1b, $1
Call_030_47eb:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $1c, $e
jr_030_47f9:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $2a, $17
jr_030_4810:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $41, $7
jr_030_4817:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $48, $14
jr_030_482b:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $5c, $13
jr_030_483e:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $6f, $34
jr_030_4872:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $a3, $5f
jr_030_48d1:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $102, $5c
jr_030_492d:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $15e, $d
jr_030_493a:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $16b, $59
jr_030_4993:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $1c4, $4c
jr_030_49df:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $210, $3c
jr_030_4a1b:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $24c, $4e
jr_030_4a69:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $29a, $3c
jr_030_4aa5:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $2d6, $2
jr_030_4aa7:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $2d8, $1d
jr_030_4ac4:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $2f5, $8
jr_030_4acc:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $2fd, $2c
jr_030_4af8:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $329, $46
jr_030_4b3e:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $36f, $b
jr_030_4b49:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $37a, $4d
jr_030_4b96:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $3c7, $e
jr_030_4ba4:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $3d5, $42
jr_030_4be6:
    INCBIN "../../res/scene/case2/common/JP/g62.bin", $417, $22

GfxC2_G63:
    INCBIN "../../res/scene/case2/common/JP/g63.bin", $0, $1a
jr_030_4c22:
    INCBIN "../../res/scene/case2/common/JP/g63.bin", $1a, $28
jr_030_4c4a:
    INCBIN "../../res/scene/case2/common/JP/g63.bin", $42, $62
jr_030_4cac:
    INCBIN "../../res/scene/case2/common/JP/g63.bin", $a4, $3e
jr_030_4cea:
    INCBIN "../../res/scene/case2/common/JP/g63.bin", $e2, $2d
jr_030_4d17:
    INCBIN "../../res/scene/case2/common/JP/g63.bin", $10f, $12
jr_030_4d29:
    INCBIN "../../res/scene/case2/common/JP/g63.bin", $121, $78
jr_030_4da1:
    INCBIN "../../res/scene/case2/common/JP/g63.bin", $199, $41
jr_030_4de2:
    INCBIN "../../res/scene/case2/common/JP/g63.bin", $1da, $3b
jr_030_4e1d:
    INCBIN "../../res/scene/case2/common/JP/g63.bin", $215, $4
jr_030_4e21:
    INCBIN "../../res/scene/case2/common/JP/g63.bin", $219, $91

GfxC2_G64:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $0, $20
jr_030_4ed2:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $20, $4
jr_030_4ed6:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $24, $1b
jr_030_4ef1:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $3f, $37
jr_030_4f28:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $76, $65
jr_030_4f8d:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $db, $5
jr_030_4f92:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $e0, $82
jr_030_5014:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $162, $56
jr_030_506a:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $1b8, $19
jr_030_5083:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $1d1, $4d
Call_030_50d0:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $21e, $1
Call_030_50d1:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $21f, $f
jr_030_50e0:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $22e, $18
jr_030_50f8:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $246, $2d
jr_030_5125:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $273, $21
jr_030_5146:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $294, $45
jr_030_518b:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $2d9, $11
jr_030_519c:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $2ea, $51
jr_030_51ed:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $33b, $18
jr_030_5205:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $353, $a4
jr_030_52a9:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $3f7, $2f
jr_030_52d8:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $426, $f
jr_030_52e7:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $435, $5
jr_030_52ec:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $43a, $6f
jr_030_535b:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $4a9, $1
jr_030_535c:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $4aa, $24
jr_030_5380:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $4ce, $16
jr_030_5396:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $4e4, $3
jr_030_5399:
    INCBIN "../../res/scene/case2/common/JP/g64.bin", $4e7, $66

GfxC2_G65:
    INCBIN "../../res/scene/case2/common/JP/g65.bin", $0, $19
jr_030_5418:
    INCBIN "../../res/scene/case2/common/JP/g65.bin", $19, $11
jr_030_5429:
    INCBIN "../../res/scene/case2/common/JP/g65.bin", $2a, $6
jr_030_542f:
    INCBIN "../../res/scene/case2/common/JP/g65.bin", $30, $24
jr_030_5453:
    INCBIN "../../res/scene/case2/common/JP/g65.bin", $54, $bc
jr_030_550f:
    INCBIN "../../res/scene/case2/common/JP/g65.bin", $110, $d
jr_030_551c:
    INCBIN "../../res/scene/case2/common/JP/g65.bin", $11d, $51
jr_030_556d:
    INCBIN "../../res/scene/case2/common/JP/g65.bin", $16e, $42

GfxC2_G66:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $0, $1e
jr_030_55cd:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $1e, $7e
jr_030_564b:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $9c, $6b
jr_030_56b6:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $107, $1
jr_030_56b7:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $108, $2b
jr_030_56e2:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $133, $7
jr_030_56e9:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $13a, $1d
jr_030_5706:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $157, $10
jr_030_5716:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $167, $1
jr_030_5717:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $168, $d
jr_030_5724:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $175, $46
jr_030_576a:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $1bb, $25
jr_030_578f:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $1e0, $6
jr_030_5795:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $1e6, $19
jr_030_57ae:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $1ff, $24
Jump_030_57d2:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $223, $10
jr_030_57e2:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $233, $3
jr_030_57e5:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $236, $32
jr_030_5817:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $268, $5
jr_030_581c:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $26d, $1
jr_030_581d:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $26e, $2
jr_030_581f:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $270, $c
jr_030_582b:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $27c, $c
jr_030_5837:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $288, $21
jr_030_5858:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $2a9, $12
jr_030_586a:
    INCBIN "../../res/scene/case2/common/JP/g66.bin", $2bb, $29
    rst RST_38

GfxC2_G68:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $0, $15
jr_030_58a9:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $15, $1f
jr_030_58c8:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $34, $98
jr_030_5960:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $cc, $13
jr_030_5973:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $df, $18
jr_030_598b:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $f7, $6
jr_030_5991:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $fd, $2e
jr_030_59bf:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $12b, $22
jr_030_59e1:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $14d, $2c
jr_030_5a0d:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $179, $4d
Jump_030_5a5a:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $1c6, $6a
jr_030_5ac4:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $230, $8
jr_030_5acc:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $238, $5e
jr_030_5b2a:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $296, $3
Jump_030_5b2d:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $299, $68
jr_030_5b95:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $301, $37
jr_030_5bcc:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $338, $3
jr_030_5bcf:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $33b, $58
Jump_030_5c27:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $393, $64
jr_030_5c8b:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $3f7, $5
jr_030_5c90:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $3fc, $28
jr_030_5cb8:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $424, $1e
jr_030_5cd6:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $442, $1e
jr_030_5cf4:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $460, $a9
jr_030_5d9d:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $509, $e
jr_030_5dab:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $517, $19
jr_030_5dc4:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $530, $20
jr_030_5de4:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $550, $1
jr_030_5de5:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $551, $1f
jr_030_5e04:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $570, $1d
jr_030_5e21:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $58d, $21
jr_030_5e42:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $5ae, $5f
jr_030_5ea1:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $60d, $18
jr_030_5eb9:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $625, $24
jr_030_5edd:
    INCBIN "../../res/scene/case2/common/JP/g68.bin", $649, $17
    rst RST_38

GfxC2_G6A:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $0, $7f
jr_030_5f74:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $7f, $11
jr_030_5f85:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $90, $29
jr_030_5fae:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $b9, $6
jr_030_5fb4:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $bf, $18
Call_030_5fcc:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $d7, $18
jr_030_5fe4:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $ef, $76
jr_030_605a:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $165, $7
jr_030_6061:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $16c, $9
jr_030_606a:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $175, $19
jr_030_6083:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $18e, $9
jr_030_608c:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $197, $22
jr_030_60ae:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $1b9, $4
jr_030_60b2:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $1bd, $d
jr_030_60bf:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $1ca, $15
jr_030_60d4:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $1df, $15
jr_030_60e9:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $1f4, $4b
jr_030_6134:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $23f, $13
jr_030_6147:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $252, $79
jr_030_61c0:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $2cb, $2
Call_030_61c2:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $2cd, $8d
jr_030_624f:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $35a, $81
jr_030_62d0:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $3db, $39
jr_030_6309:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $414, $c
jr_030_6315:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $420, $a
jr_030_631f:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $42a, $4a
jr_030_6369:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $474, $1
jr_030_636a:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $475, $41
jr_030_63ab:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $4b6, $e
Call_030_63b9:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $4c4, $5
jr_030_63be:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $4c9, $5f
jr_030_641d:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $528, $d
jr_030_642a:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $535, $2
jr_030_642c:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $537, $1d
Jump_030_6449:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $554, $36
jr_030_647f:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $58a, $36
jr_030_64b5:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $5c0, $2e
jr_030_64e3:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $5ee, $5
jr_030_64e8:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $5f3, $2d
jr_030_6515:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $620, $14
Call_030_6529:
jr_030_6529:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $634, $1c
jr_030_6545:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $650, $c
jr_030_6551:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $65c, $4
jr_030_6555:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $660, $e
jr_030_6563:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $66e, $4
jr_030_6567:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $672, $e
jr_030_6575:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $680, $c
jr_030_6581:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $68c, $21
jr_030_65a2:
    INCBIN "../../res/scene/case2/common/JP/g6a.bin", $6ad, $4

GfxC2_G6B:
    INCBIN "../../res/scene/case2/common/JP/g6b.bin", $0, $bb
jr_030_6661:
    INCBIN "../../res/scene/case2/common/JP/g6b.bin", $bb, $6e
jr_030_66cf:
    INCBIN "../../res/scene/case2/common/JP/g6b.bin", $129, $1a
jr_030_66e9:
    INCBIN "../../res/scene/case2/common/JP/g6b.bin", $143, $54
Call_030_673d:
jr_030_673d:
    INCBIN "../../res/scene/case2/common/JP/g6b.bin", $197, $c5
jr_030_6802:
    INCBIN "../../res/scene/case2/common/JP/g6b.bin", $25c, $1
Call_030_6803:
    INCBIN "../../res/scene/case2/common/JP/g6b.bin", $25d, $5d
jr_030_6860:
    INCBIN "../../res/scene/case2/common/JP/g6b.bin", $2ba, $1c
jr_030_687c:
    INCBIN "../../res/scene/case2/common/JP/g6b.bin", $2d6, $12
jr_030_688e:
    INCBIN "../../res/scene/case2/common/JP/g6b.bin", $2e8, $8
jr_030_6896:
    INCBIN "../../res/scene/case2/common/JP/g6b.bin", $2f0, $8b

GfxC2_G6C:
    INCBIN "../../res/scene/case2/common/JP/g6c.bin", $0, $141
jr_030_6a62:
    INCBIN "../../res/scene/case2/common/JP/g6c.bin", $141, $61
jr_030_6ac3:
    INCBIN "../../res/scene/case2/common/JP/g6c.bin", $1a2, $e
jr_030_6ad1:
    INCBIN "../../res/scene/case2/common/JP/g6c.bin", $1b0, $12
jr_030_6ae3:
    INCBIN "../../res/scene/case2/common/JP/g6c.bin", $1c2, $1c
Jump_030_6aff:
    INCBIN "../../res/scene/case2/common/JP/g6c.bin", $1de, $d6
jr_030_6bd5:
    INCBIN "../../res/scene/case2/common/JP/g6c.bin", $2b4, $f8
jr_030_6ccd:
    INCBIN "../../res/scene/case2/common/JP/g6c.bin", $3ac, $25
jr_030_6cf2:
    INCBIN "../../res/scene/case2/common/JP/g6c.bin", $3d1, $4a
jr_030_6d3c:
    INCBIN "../../res/scene/case2/common/JP/g6c.bin", $41b, $7
jr_030_6d43:
    INCBIN "../../res/scene/case2/common/JP/g6c.bin", $422, $37
jr_030_6d7a:
    INCBIN "../../res/scene/case2/common/JP/g6c.bin", $459, $6e
jr_030_6de8:
    INCBIN "../../res/scene/case2/common/JP/g6c.bin", $4c7, $3c
jr_030_6e24:
    INCBIN "../../res/scene/case2/common/JP/g6c.bin", $503, $8b
    rst RST_38

GfxC2_G6E:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $0, $b
jr_030_6ebb:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $b, $9e
jr_030_6f59:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $a9, $2b
jr_030_6f84:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $d4, $3b
jr_030_6fbf:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $10f, $37
jr_030_6ff6:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $146, $4a
jr_030_7040:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $190, $11
jr_030_7051:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $1a1, $b
jr_030_705c:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $1ac, $86
jr_030_70e2:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $232, $14
jr_030_70f6:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $246, $10
jr_030_7106:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $256, $89
jr_030_718f:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $2df, $39
jr_030_71c8:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $318, $7
jr_030_71cf:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $31f, $12
Jump_030_71e1:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $331, $30
jr_030_7211:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $361, $ac
jr_030_72bd:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $40d, $1e
jr_030_72db:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $42b, $1d
jr_030_72f8:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $448, $6d
jr_030_7365:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $4b5, $36
jr_030_739b:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $4eb, $10
jr_030_73ab:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $4fb, $3b
Call_030_73e6:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $536, $9a
jr_030_7480:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $5d0, $25
jr_030_74a5:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $5f5, $2f
jr_030_74d4:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $624, $14
jr_030_74e8:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $638, $38
jr_030_7520:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $670, $6
jr_030_7526:
    INCBIN "../../res/scene/case2/common/JP/g6e.bin", $676, $46
    rst RST_38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_030_759e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_030_75d8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_030_76e4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_030_7b33:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_030_7cb3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_030_7d00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
