; Change type/value selects a group and a terminated list.
; CASE2 group 2 points to the original writable lists in WRAM.

C1ChangeRefs:
    db $a5
jr_005_5853:
    db $58
    dw C1Changes1

C1Changes1:
    dw C1Ch1_00
    dw C1Ch1_01
    dw C1Ch1_02
    dw C1Ch1_03
    dw C1Ch1_04
    dw C1Ch1_05
    dw C1Ch1_06
    dw C1Ch1_07
    dw C1Ch1_08
    dw C1Ch1_09
    dw C1Ch1_0A
    dw C1Ch1_0B
    dw C1Ch1_0C
    dw C1Ch1_0D
    dw C1Ch1_0E
    db $a1
jr_005_5875:
    db $58
    dw C1Ch1_10
    dw C1Ch1_11

C1Ch1_00:
    db $00, $01, $02, $03, $04, $61, $ff

C1Ch1_01:
    db $05, $06, $07, $ff

C1Ch1_02:
    db $08, $ff

C1Ch1_03:
    db $0e, $ff

C1Ch1_04:
    db $0f, $ff

C1Ch1_05:
    db $10, $ff

C1Ch1_06:
    db $14, $54, $67, $ff

C1Ch1_07:
    db $43, $ff

C1Ch1_08:
    db $16, $ff

C1Ch1_09:
    db $49, $ff

C1Ch1_0A:
    db $1e, $ff

C1Ch1_0B:
    db $1f, $ff

C1Ch1_0C:
    db $20, $ff

C1Ch1_0D:
    db $22, $ff

C1Ch1_0E:
    db $23, $ff

C1Ch1_0F:
    db $ff

C1Ch1_10:
    db $ff

C1Ch1_11:
    db $2d, $ff

C1Changes0:
    dw C1Ch0_00
    dw C1Ch0_01
    dw C1Ch0_02
    dw C1Ch0_03
    dw C1Ch0_04
    dw C1Ch0_05
    dw C1Ch0_06
    dw C1Ch0_07
    dw C1Ch0_08
    dw C1Ch0_09
    dw C1Ch0_0A
    dw C1Ch0_0B
    dw C1Ch0_0C

C1Ch0_00:
    db $0b, $ff

C1Ch0_01:
    db $0c, $0d, $ff

C1Ch0_02:
    db $63, $64, $ff

C1Ch0_03:
    db $65, $ff

C1Ch0_04:
    db $11, $12, $13, $ff

C1Ch0_05:
    db $15, $68, $ff

C1Ch0_06:
    db $17, $18, $19, $1a, $ff

C1Ch0_07:
    db $69, $ff

C1Ch0_08:
    db $1b, $1c, $1d, $ff

C1Ch0_09:
    db $6a, $ff

C1Ch0_0A:
    db $21, $6e, $6d, $ff

C1Ch0_0B:
    db $24, $25, $26, $ff

C1Ch0_0C:
    db $ff

C2ChangeRefs:
    dw C2Changes0
    dw C2Changes1
    dw C2Changes2

C2Changes2:
jr_005_58ec:
    dw wGroupData+1
    dw wGroupData+9
    dw wGroupData+17
    dw wGroupData+25

C2Changes0:
    dw C2Ch0_00
    db $0f
jr_005_58f7:
    db $59
    dw C2Ch0_02
    dw C2Ch0_03
    dw C2Ch0_00
    dw C2Ch0_05
    dw C2Ch0_00
    dw C2Ch0_07
    dw C2Ch0_08
    dw C2Ch0_09
    dw C2Ch0_0A
    dw C2Ch0_0B
    dw C2Ch0_0C

C2Ch0_00:
    db $ff

C2Ch0_01:
    db $10, $ff

C2Ch0_02:
    db $87, $ff

C2Ch0_03:
    db $30, $2f, $ff

C2Ch0_05:
    db $31, $ff

C2Ch0_07:
    db $32, $ff

C2Ch0_08:
    db $3b, $ff

C2Ch0_09:
    db $3a, $37, $38, $90, $ff

C2Ch0_0A:
    db $96, $ff

C2Ch0_0B:
    db $41, $44, $49, $97, $ff

C2Ch0_0C:
    db $4c, $4d, $4e, $50, $4f, $53, $ff

C2Changes1:
    dw C2Ch1_00
    dw C2Ch1_01
    dw C2Ch1_02
    dw C2Ch1_03
    dw C2Ch1_04
    dw C2Ch1_05
    dw C2Ch1_06
    dw C2Ch1_07
    dw C2Ch1_08
    dw C2Ch1_09
    db $83
jr_005_5944:
    db $59
    dw C2Ch1_0B
    dw C2Ch1_0C
    dw C2Ch1_0D
    dw C2Ch1_0E
    dw C2Ch1_0F
    dw C2Ch1_10
    dw C2Ch1_11
    dw C2Ch1_12
    dw C2Ch1_13
    dw C2Ch1_14
    dw C2Ch1_15
    dw C2Ch1_16
jr_005_595d:
    dw C2Ch1_17

C2Ch1_00:
    db $0d, $ff

C2Ch1_01:
    db $82, $06, $ff

C2Ch1_02:
    db $83, $08, $09, $0a, $0b, $0c, $ff

C2Ch1_03:
    db $07, $ff

C2Ch1_04:
    db $85, $ff

C2Ch1_05:
    db $18, $86, $ff

C2Ch1_06:
    db $19, $ff

C2Ch1_07:
    db $1d, $ff

C2Ch1_08:
    db $89, $20, $21, $22, $ff

C2Ch1_09:
    db $55, $56, $57, $58, $59, $5a, $ff

C2Ch1_0F:
    db $ff

C2Ch1_0A:
    db $23, $ff

C2Ch1_0B:
    db $8c, $24, $25, $ff

C2Ch1_0C:
    db $26, $27, $28, $29, $2a, $2b, $ff

C2Ch1_0D:
    db $ff

C2Ch1_0E:
    db $2e, $2d, $ff

C2Ch1_10:
    db $91, $ff

C2Ch1_11:
    db $92, $ff

C2Ch1_12:
    db $39, $ff

C2Ch1_13:
jr_005_599a:
    db $94, $3c, $ff

C2Ch1_14:
    db $3d, $3e, $3f, $ff

C2Ch1_15:
    db $40, $ff

C2Ch1_16:
    db $42, $ff

C2Ch1_17:
    db $4a, $ff
