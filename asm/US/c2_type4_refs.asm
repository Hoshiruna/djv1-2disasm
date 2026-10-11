; Type 4 action rows retain their original pointer counts.

C2Type4Refs:
    dw C2Act4_00
    dw C2Act4_01
    dw C2Act4_02
    dw C2Act4_03
    dw C2Act4_04
    dw C2Act4_05
    dw C2Act4_06
    dw C2Act4_07
    dw C2Act4_08
    dw C2Act4_09
    dw C2Act4_0A
    dw C2Act4_0B
    dw C2Act4_0C
    dw C2Act4_0D
    dw C2Act4_0E
    dw C2Act4_0F
    dw C2Act4_10
    dw C2Act4_11
    dw C2Act4_12
    dw C2Act4_13
    dw C2Act4_14
    dw C2Act4_15
    dw C2Act4_16
    dw C2Act4_17

C2Act4_00:
    dw C2Sc4_00
    dw C2Sc4_01
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_03
    dw C2Sc4_04

C2Act4_01:
    dw C2Sc4_05
    dw C2Sc4_01
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_06
    dw C2Sc4_04

C2Act4_02:
    dw C2Sc4_07
    dw C2Sc4_2D
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_2F
    dw C2Sc4_2E

C2Act4_03:
    dw C2Sc4_08
    dw C2Sc4_09
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_2F
    dw C2Sc4_2E

C2Act4_04:
    dw C2Sc4_0A
    dw C2Sc4_0B
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_0C
    dw C2Sc4_0D

C2Act4_05:
    dw C2Sc4_0E
    dw C2Sc4_0F
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_2F
    dw C2Sc4_2E

C2Act4_06:
    dw C2Sc4_10
    dw C2Sc4_2D
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_2F
    dw C2Sc4_2E

C2Act4_07:
    dw C2Sc4_11
    dw C2Sc4_2D
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_2F
    dw C2Sc4_2E

C2Act4_08:
    dw C2Sc4_12
    dw C2Sc4_13
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_14
    dw C2Sc4_04

C2Act4_09:
    dw C2Sc4_15
    dw C2Sc4_2D
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_2F
    dw C2Sc4_2E

C2Act4_0A:
    dw C2Sc4_16
    ; Pointer to $686b; split bytes retain the interior label.
    db $6b
jr_007_67bc:
    db $68
    dw C2Sc4_2C
    dw C2Sc4_17

C2Act4_0B:
    dw C2Sc4_18
    dw C2Sc4_2D
    dw C2Sc4_02
    ; Pointer to $6ea4; split bytes retain the interior label.
    db $a4
jr_007_67c8:
    db $6e
    dw C2Sc4_19
    dw C2Sc4_2E

C2Act4_0C:
    dw C2Sc4_1A
    dw C2Sc4_2D
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_2F
    dw C2Sc4_2E

C2Act4_0D:
    dw C2Sc4_00
    dw C2Sc4_00
    dw C2Sc4_00
    dw C2Sc4_00
    dw C2Sc4_00
    dw C2Sc4_00

C2Act4_0E:
    dw C2Sc4_1B
    dw C2Sc4_2D
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_1C
    dw C2Sc4_2E

C2Act4_0F:
    dw C2Sc4_00
    dw C2Sc4_00
    dw C2Sc4_00
    dw C2Sc4_00
    dw C2Sc4_00
    dw C2Sc4_00

C2Act4_10:
    dw C2Sc4_1E
    dw C2Sc4_1F
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_2F
    dw C2Sc4_2E

C2Act4_11:
    dw C2Sc4_20
    dw C2Sc4_21
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_2F
    dw C2Sc4_30

C2Act4_12:
    dw C2Sc4_22
    dw C2Sc4_2D
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_2F
    dw C2Sc4_2E

C2Act4_13:
    dw C2Sc4_23
    dw C2Sc4_24
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_25
    dw C2Sc4_26

C2Act4_14:
    dw C2Sc4_27
    dw C2Sc4_2D
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_2F
    dw C2Sc4_2E

C2Act4_15:
    dw C2Sc4_28
    dw C2Sc4_29
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_2A
    dw C2Sc4_2E

C2Act4_16:
    dw C2Sc4_1D
    dw C2Sc4_2D
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_2F
    dw C2Sc4_2E

C2Act4_17:
    dw C2Sc4_2B
    dw C2Sc4_2D
    dw C2Sc4_02
    dw C2Sc4_2C
    dw C2Sc4_2F
    dw C2Sc4_2E
