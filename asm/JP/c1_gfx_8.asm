; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03b", ROMX[$4000], BANK[$3b]

    dw GfxC1_G80 ; $00
    dw $4661 ; $01
    dw GfxC1_G82 ; $02
    dw GfxC1_G83 ; $03
    dw GfxC1_G84 ; $04
    dw GfxC1_G85 ; $05
    dw GfxC1_G86 ; $06
    dw GfxC1_G87 ; $07
    dw GfxC1_G88 ; $08
    dw GfxC1_G89 ; $09
    dw GfxC1_G8A ; $0a
    dw GfxC1_G8B ; $0b
    dw GfxC1_G8C ; $0c
    dw $76a1 ; $0d
    dw GfxC1_G8E ; $0e
    dw $7c93 ; $0f

GfxC1_G80:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $0, $22
jr_03b_4042:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $22, $29
jr_03b_406b:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $4b, $36
jr_03b_40a1:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $81, $31
jr_03b_40d2:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $b2, $2b
jr_03b_40fd:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $dd, $36
jr_03b_4133:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $113, $1e
jr_03b_4151:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $131, $53
jr_03b_41a4:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $184, $27
jr_03b_41cb:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $1ab, $14
jr_03b_41df:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $1bf, $2b
jr_03b_420a:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $1ea, $82
jr_03b_428c:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $26c, $e
jr_03b_429a:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $27a, $9
jr_03b_42a3:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $283, $16
jr_03b_42b9:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $299, $2
jr_03b_42bb:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $29b, $2
jr_03b_42bd:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $29d, $45
jr_03b_4302:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $2e2, $7
jr_03b_4309:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $2e9, $16
jr_03b_431f:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $2ff, $2
jr_03b_4321:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $301, $11
jr_03b_4332:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $312, $24
jr_03b_4356:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $336, $b
jr_03b_4361:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $341, $22
Jump_03b_4383:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $363, $38
jr_03b_43bb:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $39b, $26
jr_03b_43e1:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $3c1, $1a
jr_03b_43fb:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $3db, $6d
jr_03b_4468:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $448, $a
jr_03b_4472:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $452, $4a
jr_03b_44bc:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $49c, $1e
jr_03b_44da:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $4ba, $58
jr_03b_4532:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $512, $26
jr_03b_4558:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $538, $36
jr_03b_458e:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $56e, $1f
jr_03b_45ad:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $58d, $6e
jr_03b_461b:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $5fb, $7
jr_03b_4622:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $602, $3b
jr_03b_465d:
    INCBIN "../../res/scene/case1/common/JP/g80.bin", $63d, $4
    db $ff

GfxC1_G82:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $0, $118
jr_03b_477a:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $118, $a0
jr_03b_481a:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $1b8, $14
jr_03b_482e:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $1cc, $a0
jr_03b_48ce:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $26c, $12
jr_03b_48e0:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $27e, $7d
jr_03b_495d:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $2fb, $8
jr_03b_4965:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $303, $26
jr_03b_498b:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $329, $32
jr_03b_49bd:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $35b, $2c
jr_03b_49e9:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $387, $9e
jr_03b_4a87:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $425, $af
jr_03b_4b36:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $4d4, $76
jr_03b_4bac:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $54a, $5
jr_03b_4bb1:
    INCBIN "../../res/scene/case1/common/JP/g82.bin", $54f, $99

GfxC1_G83:
    INCBIN "../../res/scene/case1/common/JP/g83.bin", $0, $32
jr_03b_4c7c:
    INCBIN "../../res/scene/case1/common/JP/g83.bin", $32, $3c

GfxC1_G84:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $0, $2e
jr_03b_4ce6:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $2e, $5
jr_03b_4ceb:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $33, $6d
jr_03b_4d58:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $a0, $28
jr_03b_4d80:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $c8, $2
jr_03b_4d82:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $ca, $a
jr_03b_4d8c:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $d4, $d
jr_03b_4d99:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $e1, $81
jr_03b_4e1a:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $162, $e
jr_03b_4e28:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $170, $85
jr_03b_4ead:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $1f5, $45
jr_03b_4ef2:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $23a, $5b
jr_03b_4f4d:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $295, $1c
jr_03b_4f69:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $2b1, $b
jr_03b_4f74:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $2bc, $3d
jr_03b_4fb1:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $2f9, $38
jr_03b_4fe9:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $331, $30
jr_03b_5019:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $361, $29
jr_03b_5042:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $38a, $3d
jr_03b_507f:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $3c7, $28
jr_03b_50a7:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $3ef, $2
jr_03b_50a9:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $3f1, $17
jr_03b_50c0:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $408, $4
Call_03b_50c4:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $40c, $1b
jr_03b_50df:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $427, $16
jr_03b_50f5:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $43d, $16
jr_03b_510b:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $453, $4a
jr_03b_5155:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $49d, $28
jr_03b_517d:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $4c5, $28
jr_03b_51a5:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $4ed, $2
jr_03b_51a7:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $4ef, $1
jr_03b_51a8:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $4f0, $12
jr_03b_51ba:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $502, $15
jr_03b_51cf:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $517, $5
jr_03b_51d4:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $51c, $9
jr_03b_51dd:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $525, $3
jr_03b_51e0:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $528, $55
jr_03b_5235:
    INCBIN "../../res/scene/case1/common/JP/g84.bin", $57d, $23

GfxC1_G85:
    INCBIN "../../res/scene/case1/common/JP/g85.bin", $0, $26
jr_03b_527e:
    INCBIN "../../res/scene/case1/common/JP/g85.bin", $26, $80
jr_03b_52fe:
    INCBIN "../../res/scene/case1/common/JP/g85.bin", $a6, $1
jr_03b_52ff:
    INCBIN "../../res/scene/case1/common/JP/g85.bin", $a7, $d9

GfxC1_G86:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $0, $22
jr_03b_53fa:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $22, $25
jr_03b_541f:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $47, $91
jr_03b_54b0:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $d8, $16
jr_03b_54c6:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $ee, $8f
Call_03b_5555:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $17d, $7e
jr_03b_55d3:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $1fb, $1e
jr_03b_55f1:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $219, $58
jr_03b_5649:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $271, $33
jr_03b_567c:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $2a4, $28
jr_03b_56a4:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $2cc, $2a
jr_03b_56ce:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $2f6, $ad
jr_03b_577b:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $3a3, $3d
jr_03b_57b8:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $3e0, $48
jr_03b_5800:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $428, $63
jr_03b_5863:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $48b, $8
jr_03b_586b:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $493, $2e
jr_03b_5899:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $4c1, $84
jr_03b_591d:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $545, $26
jr_03b_5943:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $56b, $18
jr_03b_595b:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $583, $2d
jr_03b_5988:
    INCBIN "../../res/scene/case1/common/JP/g86.bin", $5b0, $4

GfxC1_G87:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $0, $2a
jr_03b_59b6:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $2a, $16
jr_03b_59cc:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $40, $4c
jr_03b_5a18:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $8c, $57
jr_03b_5a6f:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $e3, $10
jr_03b_5a7f:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $f3, $17a
jr_03b_5bf9:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $26d, $1e
jr_03b_5c17:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $28b, $16
jr_03b_5c2d:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $2a1, $c
jr_03b_5c39:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $2ad, $16
jr_03b_5c4f:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $2c3, $56
jr_03b_5ca5:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $319, $29
jr_03b_5cce:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $342, $24
jr_03b_5cf2:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $366, $17
jr_03b_5d09:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $37d, $16
jr_03b_5d1f:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $393, $1a
jr_03b_5d39:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $3ad, $4
jr_03b_5d3d:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $3b1, $10
jr_03b_5d4d:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $3c1, $22
jr_03b_5d6f:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $3e3, $8
jr_03b_5d77:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $3eb, $5a
jr_03b_5dd1:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $445, $21
jr_03b_5df2:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $466, $a
jr_03b_5dfc:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $470, $7
jr_03b_5e03:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $477, $21
jr_03b_5e24:
    INCBIN "../../res/scene/case1/common/JP/g87.bin", $498, $5

GfxC1_G88:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $0, $19
jr_03b_5e42:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $19, $141
jr_03b_5f83:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $15a, $61
jr_03b_5fe4:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $1bb, $13
jr_03b_5ff7:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $1ce, $9
jr_03b_6000:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $1d7, $1d
jr_03b_601d:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $1f4, $43
Call_03b_6060:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $237, $38
jr_03b_6098:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $26f, $12
jr_03b_60aa:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $281, $4d
jr_03b_60f7:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $2ce, $7b
jr_03b_6172:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $349, $51
Jump_03b_61c3:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $39a, $2f
jr_03b_61f2:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $3c9, $76
jr_03b_6268:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $43f, $45
jr_03b_62ad:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $484, $1b
jr_03b_62c8:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $49f, $4
jr_03b_62cc:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $4a3, $24
jr_03b_62f0:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $4c7, $33
jr_03b_6323:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $4fa, $26
jr_03b_6349:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $520, $38
jr_03b_6381:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $558, $18
jr_03b_6399:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $570, $2
jr_03b_639b:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $572, $7
jr_03b_63a2:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $579, $122
jr_03b_64c4:
    INCBIN "../../res/scene/case1/common/JP/g88.bin", $69b, $8e

GfxC1_G89:
    INCBIN "../../res/scene/case1/common/JP/g89.bin", $0, $46
jr_03b_6598:
    INCBIN "../../res/scene/case1/common/JP/g89.bin", $46, $2a
jr_03b_65c2:
    INCBIN "../../res/scene/case1/common/JP/g89.bin", $70, $63
Jump_03b_6625:
    INCBIN "../../res/scene/case1/common/JP/g89.bin", $d3, $69
jr_03b_668e:
    INCBIN "../../res/scene/case1/common/JP/g89.bin", $13c, $8e
jr_03b_671c:
    INCBIN "../../res/scene/case1/common/JP/g89.bin", $1ca, $7c
jr_03b_6798:
    INCBIN "../../res/scene/case1/common/JP/g89.bin", $246, $23
jr_03b_67bb:
    INCBIN "../../res/scene/case1/common/JP/g89.bin", $269, $1f
jr_03b_67da:
    INCBIN "../../res/scene/case1/common/JP/g89.bin", $288, $46
jr_03b_6820:
    INCBIN "../../res/scene/case1/common/JP/g89.bin", $2ce, $43

GfxC1_G8A:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $0, $23
jr_03b_6886:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $23, $8
jr_03b_688e:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $2b, $a
jr_03b_6898:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $35, $25
jr_03b_68bd:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $5a, $e
jr_03b_68cb:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $68, $50
jr_03b_691b:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $b8, $58
jr_03b_6973:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $110, $12
jr_03b_6985:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $122, $1e
jr_03b_69a3:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $140, $4
jr_03b_69a7:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $144, $e
jr_03b_69b5:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $152, $4a
jr_03b_69ff:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $19c, $4a
jr_03b_6a49:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $1e6, $9
jr_03b_6a52:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $1ef, $21
jr_03b_6a73:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $210, $5a
jr_03b_6acd:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $26a, $24
Jump_03b_6af1:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $28e, $14
jr_03b_6b05:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $2a2, $1c
jr_03b_6b21:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $2be, $29
jr_03b_6b4a:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $2e7, $6
jr_03b_6b50:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $2ed, $40
jr_03b_6b90:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $32d, $16
jr_03b_6ba6:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $343, $17
jr_03b_6bbd:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $35a, $1b
jr_03b_6bd8:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $375, $a
jr_03b_6be2:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $37f, $2f
jr_03b_6c11:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $3ae, $23
jr_03b_6c34:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $3d1, $25
jr_03b_6c59:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $3f6, $ab
jr_03b_6d04:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $4a1, $4f
jr_03b_6d53:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $4f0, $11
jr_03b_6d64:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $501, $a
jr_03b_6d6e:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $50b, $4
jr_03b_6d72:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $50f, $13
jr_03b_6d85:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $522, $5
jr_03b_6d8a:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $527, $c
jr_03b_6d96:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $533, $22
jr_03b_6db8:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $555, $f
jr_03b_6dc7:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $564, $2d
jr_03b_6df4:
    INCBIN "../../res/scene/case1/common/JP/g8a.bin", $591, $2

GfxC1_G8B:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $0, $6
jr_03b_6dfc:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $6, $1e
jr_03b_6e1a:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $24, $b
jr_03b_6e25:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $2f, $8
jr_03b_6e2d:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $37, $24
jr_03b_6e51:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $5b, $20
jr_03b_6e71:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $7b, $31
jr_03b_6ea2:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $ac, $c2
jr_03b_6f64:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $16e, $1
jr_03b_6f65:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $16f, $f
jr_03b_6f74:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $17e, $26
jr_03b_6f9a:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $1a4, $1a
jr_03b_6fb4:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $1be, $24
jr_03b_6fd8:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $1e2, $23
jr_03b_6ffb:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $205, $2
jr_03b_6ffd:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $207, $4
Call_03b_7001:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $20b, $20
jr_03b_7021:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $22b, $e
jr_03b_702f:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $239, $d
jr_03b_703c:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $246, $1
jr_03b_703d:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $247, $29
jr_03b_7066:
    INCBIN "../../res/scene/case1/common/JP/g8b.bin", $270, $2c

GfxC1_G8C:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $0, $53
jr_03b_70e5:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $53, $3e
jr_03b_7123:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $91, $40
jr_03b_7163:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $d1, $12
jr_03b_7175:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $e3, $3
jr_03b_7178:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $e6, $6
jr_03b_717e:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $ec, $1
jr_03b_717f:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $ed, $33
jr_03b_71b2:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $120, $96
jr_03b_7248:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $1b6, $f
jr_03b_7257:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $1c5, $50
jr_03b_72a7:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $215, $1c
jr_03b_72c3:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $231, $b5
jr_03b_7378:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $2e6, $26
jr_03b_739e:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $30c, $1a
jr_03b_73b8:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $326, $14
jr_03b_73cc:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $33a, $34
jr_03b_7400:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $36e, $2a
jr_03b_742a:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $398, $2
jr_03b_742c:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $39a, $2
jr_03b_742e:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $39c, $f
jr_03b_743d:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $3ab, $4
jr_03b_7441:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $3af, $36
jr_03b_7477:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $3e5, $2
Jump_03b_7479:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $3e7, $6e
jr_03b_74e7:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $455, $4
jr_03b_74eb:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $459, $2
jr_03b_74ed:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $45b, $57
jr_03b_7544:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $4b2, $11
jr_03b_7555:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $4c3, $22
jr_03b_7577:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $4e5, $13
jr_03b_758a:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $4f8, $27
Jump_03b_75b1:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $51f, $4
jr_03b_75b5:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $523, $75
jr_03b_762a:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $598, $7
jr_03b_7631:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $59f, $f
jr_03b_7640:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $5ae, $2b
jr_03b_766b:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $5d9, $25
jr_03b_7690:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $5fe, $10
jr_03b_76a0:
    INCBIN "../../res/scene/case1/common/JP/g8c.bin", $60e, $1
    rst RST_38

GfxC1_G8E:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $0, $10
jr_03b_76b2:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $10, $43
jr_03b_76f5:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $53, $27
jr_03b_771c:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $7a, $26
jr_03b_7742:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $a0, $25
jr_03b_7767:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $c5, $10
jr_03b_7777:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $d5, $1
jr_03b_7778:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $d6, $bf
jr_03b_7837:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $195, $30
jr_03b_7867:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $1c5, $2f
jr_03b_7896:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $1f4, $5
jr_03b_789b:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $1f9, $22
jr_03b_78bd:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $21b, $9f
jr_03b_795c:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $2ba, $26
jr_03b_7982:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $2e0, $1a
jr_03b_799c:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $2fa, $14
jr_03b_79b0:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $30e, $34
jr_03b_79e4:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $342, $e
jr_03b_79f2:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $350, $1c
jr_03b_7a0e:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $36c, $2
jr_03b_7a10:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $36e, $2
jr_03b_7a12:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $370, $13
jr_03b_7a25:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $383, $a9
jr_03b_7ace:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $42c, $3
jr_03b_7ad1:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $42f, $3
jr_03b_7ad4:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $432, $12
jr_03b_7ae6:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $444, $44
jr_03b_7b2a:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $488, $11
jr_03b_7b3b:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $499, $8
jr_03b_7b43:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $4a1, $22
jr_03b_7b65:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $4c3, $3f
jr_03b_7ba4:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $502, $10
jr_03b_7bb4:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $512, $1c
jr_03b_7bd0:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $52e, $4c
jr_03b_7c1c:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $57a, $19
jr_03b_7c35:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $593, $b
jr_03b_7c40:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $59e, $42
jr_03b_7c82:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $5e0, $10
jr_03b_7c92:
    INCBIN "../../res/scene/case1/common/JP/g8e.bin", $5f0, $1
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

jr_03b_7ca4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03b_7f23:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03b_7f70:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03b_7f8f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
