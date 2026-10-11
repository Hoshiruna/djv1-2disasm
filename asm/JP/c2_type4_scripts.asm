; Confirmed script commands; unrecognized command sequences remain raw bytes.

C2Sc4_00:
    ; Show message 0.
    db $00, $13
    ; End script.
    db $ff

C2Sc4_01:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc4_00

Jump_007_6866:
    ; Show message 3.
    db $2c, $25
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

C2Loc4_00:
    ; Show message 3.
    db $2c, $27
    ; End script.
    db $ff

C2Sc4_02:
    ; Choose alternate target; selected input runs the following script.
    db $2d

C2Loc4_01:
    ; Match alternate item against type, ID and script target rows.
    db $32, $02, $00
    dw C2Loc4_02
    db $00, $a6
    dw C2Loc4_07
    db $00, $a7
    dw C2Loc4_1B

jr_007_687b:
    db $00, $83
    dw C2Loc4_1F
    db $00, $43
    dw C2Loc4_22
    db $00, $46
    dw C2Loc4_24
    db $00, $44
    dw C2Loc4_24
    db $00, $7a
    dw C2Loc4_26
    db $00, $45
    dw C2Loc4_1E
    db $00, $17
    dw C2Loc4_28
    db $00, $37
    dw C2Loc4_1E
    db $00, $3c
    dw C2Loc4_29
    db $00, $4f
    dw C2Loc4_2A
    db $00, $50
    dw C2Loc4_2D
    db $00, $55
    dw C2Loc4_2F
    db $07, $46
    dw C2Loc4_32
    db $07, $48
    dw C2Loc4_32
    db $05, $49
    dw C2Loc4_32
    db $05, $4a
    dw C2Loc4_32
    db $05, $4b
    dw C2Loc4_32
    db $00, $2e
    dw C2Loc4_36
    db $00, $2f
    dw C2Loc4_38
    db $00, $52
    dw C2Loc4_3A
    db $00, $53
    dw C2Loc4_3C
    db $00, $60
    dw C2Loc4_3E
    db $00, $68
    dw C2Loc4_40
    db $00, $78
    dw C2Loc4_42
    db $00, $90
    dw C2Loc4_44
    db $00, $98
    dw C2Loc4_46
    db $00, $ab
    dw C2Loc4_48
    db $00, $ac
    dw C2Loc4_4A
    db $01, $06
    dw C2Loc4_4C
    db $03, $1e
    dw C2Loc4_4E
    db $05, $06
    dw C2Loc4_50
    db $05, $15
    dw C2Loc4_52
    db $05, $19
    dw C2Loc4_54
    db $05, $39
    dw C2Loc4_56
    db $05, $4c
    dw C2Loc4_58
    db $05, $53
    dw C2Loc4_5A
    db $05, $65
    dw C2Loc4_5C
    db $05, $68
    dw C2Loc4_5E
    db $01, $09
    dw C2Loc4_60
    db $05, $5b
    dw C2Loc4_62
    db $05, $66
    dw C2Loc4_64
    db $02, $03
    dw C2Loc3_D2
    db $fe, $fe
    dw C2Loc4_66

C2Loc4_02:
    ; Test packed item argument and branch on equality.
    db $46, $85
    dw C2Loc4_78
    ; Test packed item argument and branch on equality.
    db $46, $80
    dw C2Loc4_03
    ; Test packed item argument and branch on equality.
    db $46, $81
    dw C2Loc4_05
    ; Test packed item argument and branch on equality.
    db $46, $88
    dw C2Loc4_06
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_03:
    ; Test object flag and branch when clear.
    db $54, $0d
    dw C2Loc4_78

C2Loc4_04:
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

C2Loc4_05:
    ; Test object flag and branch when clear.
    db $54, $0c
    dw C2Loc4_78
    ; Jump to script.
    db $07
    dw C2Loc4_04

C2Loc4_06:
    ; Test object flag and branch when clear.
    db $54, $50
    dw C2Loc4_78
    ; Jump to script.
    db $07
    dw C2Loc4_04

C2Loc4_07:
    ; Test packed item argument and branch on equality.
    db $46, $80
    dw C2Loc4_08
    ; Test packed item argument and branch on equality.
    db $46, $81
    dw C2Loc4_14
    ; Test packed item argument and branch on equality.
    db $46, $88
    dw C2Loc4_16
    ; Test packed item argument and branch on equality.
    db $46, $8a
    dw C2Loc4_19
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_18
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_08:
    ; Test object flag and branch when set.
    db $08, $0d
    dw C2Loc4_0C
    ; Test object flag and branch when set.
    db $08, $50
    dw C2Loc3_38
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw C2Loc3_39
    ; Show message 0.
    db $00, $27
    ; Set object flag.
    db $09, $0d
    ; End script.
    db $ff

C2Loc4_09:
    ; Jump to script in bank $08.
    db $7d
    dw C2Loc5_B2
    db $08

C2Loc4_0A:
    ; Jump to script in bank $08.
    db $7d
    dw C2Loc5_1B
    db $08

C2Loc4_0B:
    ; Jump to script in bank $08.
    db $7d
    dw C2Loc5_11
    db $08

C2Loc4_0C:
    ; Clear object flag.
    db $0a, $0d

C2Loc4_0D:
    ; Hold text.
    db $2e
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $12

C2Loc4_86:
    ; Test room argument and branch on equality.
    db $25, $04
    dw C2Loc4_0B
    ; Test room argument and branch on equality.
    db $25, $05
    dw C2Loc4_0A
    ; Test room argument and branch on equality.
    db $25, $15
    dw C2Loc4_0F
    ; Test room argument and branch on equality.
    db $25, $16
    dw C2Loc4_0F
    ; Test room argument and branch on equality.
    db $25, $17
    dw C2Loc4_0E
    ; Test room argument and branch on equality.
    db $25, $18
    dw C2Loc4_0E
    ; Test room argument and branch on equality.
    db $25

jr_007_69a2:
    db $19
    dw C2Loc4_0E
    ; Test room argument and branch on equality.
    db $25, $1a
    dw C2Loc4_0E
    ; Test room argument and branch on equality.
    db $25, $2c
    dw C2Loc4_0E
    ; Test room argument and branch on equality.
    db $25, $2d
    dw C2Loc4_0E
    ; Test room argument and branch on equality.
    db $25, $2e
    dw C2Loc4_0E
    ; Test room argument and branch on equality.
    db $25, $2f
    dw C2Loc4_0E
    ; Test room argument and branch on equality.
    db $25, $2b
    dw C2Loc4_13
    ; Test room argument and branch on equality.
    db $25, $44
    dw C2Loc4_09
    ; Test room argument and branch on equality.
    db $25, $1b
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25, $1c
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25, $1d
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25, $1e
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25, $1f
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25, $20
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25, $21
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25, $22
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25, $23
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25

jr_007_69e6:
    db $24
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25, $25
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25

jr_007_69ee:
    db $26
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25, $27
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25, $28
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25, $29
    dw C2Loc4_11
    ; Test room argument and branch on equality.
    db $25, $2a
    dw C2Loc4_11
    ; End script.
    db $ff

C2Loc4_0E:
    ; Jump to script in bank $08.
    db $7d
    dw C2Loc5_35
    db $08

C2Loc4_0F:
    ; Set text name 0.
    db $30, $b5
    ; Hold text.
    db $2e

C2Loc4_10:
    ; Show message 3.
    db $2c, $29
    ; Jump to script.
    db $07
    dw C2Loc4_0E

C2Loc4_11:
    ; Hold text.
    db $2e
    ; Branch when the current train clearance flag is clear.
    db $5f
    dw C2Loc4_12
    ; Run the current passenger-room effect.
    db $63

C2Loc4_12:
    ; Set text name 0.
    db $30, $d9
    ; Jump to script.
    db $07
    dw C2Loc4_10

C2Loc4_13:
    ; Test object flag and branch when set.
    db $08, $a1
    dw C2Loc4_7C
    ; Hold text.
    db $2e
    ; Set text name 0.
    db $30, $b8
    ; Jump to script.
    db $07
    dw C2Loc4_10

C2Loc4_14:
    ; Test object flag and branch when set.
    db $08, $0c
    dw C2Loc4_15
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw C2Loc3_39
    ; Show message 0.
    db $00, $28
    ; Set object flag.
    db $09, $0c
    ; End script.
    db $ff

C2Loc4_15:
    ; Clear object flag.
    db $0a, $0c
    ; Jump to script.
    db $07
    dw C2Loc4_0D

C2Loc4_16:
    ; Test object flag and branch when set.
    db $08, $50
    dw C2Loc4_17
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw C2Loc3_39
    ; Test object flag and branch when set.
    db $08, $0d
    dw C2Loc3_37
    ; Show message 1.
    db $01, $95
    ; Set object flag.
    db $09, $50
    ; End script.
    db $ff

C2Loc4_17:
    ; Clear object flag.
    db $0a, $50
    ; Jump to script.
    db $07
    dw C2Loc4_0D

C2Loc4_18:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Hold text.
    db $2e

jr_007_6a4f:
    ; Show message 1.
    db $01, $91
    ; Show message 1.
    db $01, $92
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

C2Loc4_19:
    ; Select operation slot 0.
    db $35
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw C2Loc4_1A
    ; Select operation slot 1.
    db $36
    ; Jump to script.
    db $07
    dw C2Loc0_91

C2Loc4_1A:
    ; Select operation slot 1.
    db $36
    ; Show message 3.
    db $2c, $47
    ; End script.
    db $ff

C2Loc4_1B:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_1D
    ; Test room argument and branch on inequality.
    db $55, $42
    dw C2Sc4_30
    ; Test packed item argument and branch on equality.
    db $46, $90
    dw C2Loc4_1C
    ; Jump to script.
    db $07
    dw C2Loc3_98

C2Loc4_1C:
    ; Show message 2.
    db $02, $67
    ; End script.
    db $ff

C2Loc4_1D:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C

C2Loc4_85:
    ; Show message 0.
    db $00

jr_007_6a78:
    db $45
    ; End script.
    db $ff

C2Loc4_1E:
    ; Test packed item argument and branch on equality.
    db $46, $8a
    dw C2Loc4_21
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_35
    ; Show message 0.
    db $00, $07
    ; End script.
    db $ff

C2Loc4_1F:
    ; Test packed item argument and branch on equality.
    db $46, $8a

jr_007_6a87:
    dw C2Loc4_21

C2Loc4_20:
jr_007_6a89:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_35
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_21:
    ; Test object flag and branch when clear.
    db $54, $76
    dw C2Sc4_30
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw C2Sc4_30
    ; Set text name 0.
    db $30, $b5
    ; Show message 3.
    db $2c, $10
    ; End script.
    db $ff

C2Loc4_22:
    ; Test packed item argument and branch on equality.
    db $46, $8a
    dw C2Loc4_23
    ; Jump to script.
    db $07
    dw C2Loc4_20

C2Loc4_23:
    ; Test object flag and branch when clear.
    db $54, $76
    dw C2Sc4_30
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw C2Sc4_30
    ; Set text name 0.
    db $30, $d9
    ; Show message 3.
    db $2c, $10
    ; End script.
    db $ff

C2Loc4_24:
    ; Test packed item argument and branch on equality.
    db $46, $8a
    dw C2Loc4_25
    ; Jump to script.
    db $07
    dw C2Loc4_20

C2Loc4_25:
    ; Test object flag and branch when clear.
    db $54, $76
    dw C2Sc4_30
    ; Test object flag and branch when clear.
    db $54

jr_007_6abd:
    db C2LampFlag
    dw C2Sc4_30
    ; Set text name 0.
    db $30, $b6
    ; Show message 3.
    db $2c, $10
    ; End script.
    db $ff

C2Loc4_26:
    ; Test packed item argument and branch on equality.
    db $46, $8a
    dw C2Loc4_27
    ; Jump to script.
    db $07
    dw C2Loc4_20

C2Loc4_27:
    ; Test object flag and branch when clear.
    db $54, $76
    dw C2Sc4_30
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw C2Sc4_30
    ; Set text name 0.
    db $30, $b3
    ; Show message 3.
    db $2c, $10
    ; End script.
    db $ff

C2Loc4_28:
    ; Test packed item argument and branch on equality.
    db $46, $8a
    dw C2Loc4_25
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_35
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $05
    ; End script.
    db $ff

C2Loc4_29:
    ; Test packed item argument and branch on equality.
    db $46, $8a
    dw C2Loc4_21
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_35
    ; Show message 2.
    db $02, $e5
    ; End script.
    db $ff

C2Loc4_2A:
    ; Test packed item argument and branch on equality.
    db $46, $8a
    dw C2Loc4_2B
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_2C
    ; Show message 1.
    db $01, $26
    ; End script.
    db $ff

C2Loc4_2B:
    ; Test object flag and branch when clear.
    db $54, $76
    dw C2Sc4_30
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw C2Sc4_30
    ; Set text name 0.
    db $30, $b8
    ; Show message 3.
    db $2c, $10
    ; End script.
    db $ff

C2Loc4_2C:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Show message 1.
    db $01, $28
    ; Jump to script.
    db $07
    dw C2Sc0_8B

C2Loc4_2D:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_2E
    ; Jump to script.
    db $07

jr_007_6b16:
    dw C2Sc4_30

C2Loc4_2E:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Show message 1.
    db $01, $27
    ; End script.
    db $ff

C2Loc4_2F:
    ; Test packed item argument and branch on equality.
    db $46, $8a
    dw C2Loc4_30
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_31
    ; Show message 1.
    db $01, $50
    ; End script.
    db $ff

C2Loc4_30:
    ; Test object flag and branch when clear.
    db $54, $76
    dw C2Sc4_30
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw C2Sc4_30
    ; Set text name 0.
    db $30, $da
    ; Show message 3.
    db $2c, $10
    ; End script.
    db $ff

C2Loc4_31:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $4b
    ; Set text name 0.
    db $30, $ba
    ; Play audio.
    db $3e, $11
    ; Show message 3.
    db $2c, $15
    ; End script.
    db $ff

C2Loc4_32:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_33
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_33:
    ; Test object flag and branch when set.
    db $08, $43
    dw C2Loc4_34
    ; Show message 1.
    db $01, $3b
    ; End script.
    db $ff

C2Loc4_34:
    ; Show message 1.
    db $01, $3c
    ; End script.
    db $ff

C2Loc4_35:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Run scene effect.
    db $39, $08
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $2b
    ; Wait sixty ticks.
    db $7e
    ; Run scene effect.
    db $39, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 2.
    db $02, $9a
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

C2Sc4_03:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw C2Loc4_7F
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Hide object.
    db $2a, $01
    ; Set object flag.
    db $09, $28
    ; Jump to script.
    db $07
    dw C2Loc4_7E

C2Sc4_04:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Loc4_81
    ; Show message 3.
    db $2c, $26
    ; Jump to script.
    db $07

jr_007_6b80:
    dw C2Loc4_83

C2Loc4_81:
    ; Show message 3.
    db $2c, $28
    ; End script.
    db $ff

C2Loc4_36:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_37
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_37:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script.
    db $07
    dw C2Sc0_91

C2Loc4_38:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_39
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_39:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script.
    db $07
    dw C2Sc0_92

C2Loc4_3A:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_3B
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_3B:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script.
    db $07
    dw C2Sc0_93

C2Loc4_3C:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_3D
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_3D:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script.
    db $07
    dw C2Sc0_94

C2Loc4_3E:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_3F
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_3F:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script.
    db $07
    dw C2Sc0_95

C2Loc4_40:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_41
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_41:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script.
    db $07
    dw C2Sc0_96

C2Loc4_42:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_43
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_43:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script.
    db $07
    dw C2Sc0_97

C2Loc4_44:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_45
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_45:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script.
    db $07
    dw C2Sc0_F2

C2Loc4_46:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_47
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_47:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script.
    db $07
    dw C2Sc0_F3

C2Loc4_48:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_49
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_49:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script.
    db $07
    dw C2Sc0_F5

C2Loc4_4A:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_4B
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_4B:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script.
    db $07
    dw C2Sc0_F6

C2Loc4_4C:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_4D
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_4D:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Wait while rendering objects.
    db $47, $10
    ; Play audio.
    db $3e, $11
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $15
    ; End script.
    db $ff

C2Loc4_4E:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_4F
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_4F:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script.
    db $07
    dw C2Sc3_33

C2Loc4_50:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_51
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_51:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script in bank $08.
    db $7d
    dw C2Sc5_18
    db $08

C2Loc4_52:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_53
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_53:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script in bank $08.
    db $7d
    dw C2Sc5_3B
    db $08

C2Loc4_54:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_55
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_55:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script in bank $08.
    db $7d
    dw C2Sc5_3F
    db $08

C2Loc4_56:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_57
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_57:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script in bank $08.
    db $7d
    dw C2Sc5_6B
    db $08

C2Loc4_58:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_59
    ; Jump to script.
    db $07

jr_007_6c81:
    dw C2Sc4_30

C2Loc4_59:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script in bank $08.
    db $7d
    dw C2Sc5_85
    db $08

C2Loc4_5A:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_5B
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_5B:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script in bank $08.
    db $7d
    dw C2Sc5_BD
    db $08

C2Loc4_5C:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_5D
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_5D:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script in bank $08.
    db $7d
    dw C2Sc5_B6
    db $08

C2Loc4_5E:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_5F
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_5F:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script in bank $08.
    db $7d
    dw C2Sc5_C1
    db $08

C2Loc4_60:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_61
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_61:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Jump to script.
    db $07
    dw C2Sc1_16

C2Loc4_62:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_63
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_63:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc4_85
    ; Test object flag and branch when set.
    db $08, $5d
    dw C2Sc4_30
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $dc
    ; Set selected state and refresh.
    db $21
    ; Show message 1.
    db $01, $dd
    ; Set object flag.
    db $09, $5d
    ; End script.
    db $ff

C2Loc4_64:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_65
    ; Jump to script.
    db $07
    dw C2Sc4_30

C2Loc4_65:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc4_85
    ; Test object flag and branch when set.
    db $08, $6b
    dw C2Sc4_30
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $dc
    ; Show object.
    db $29, $46
    ; Refresh room objects.
    db $2b
    ; Set state and refresh without cue.
    db $22, $66
    ; Set selected attribute bit 2.
    db $1e
    ; Show message 1.
    db $01, $dd
    ; Set object flag.
    db $09, $6b
    ; End script.
    db $ff

C2Loc4_66:
    ; Test packed item argument and branch on equality.
    db $46, $89
    dw C2Loc4_67
    ; Jump to script.
    db $07
    dw C2Loc3_98

C2Loc4_67:
    ; Test room argument and branch on equality.
    db $25, RoomLaundry
    dw C2Loc4_69

C2Loc4_68:
    ; Load a Case II bullet slot.
    db $53
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc4_7C
    ; Show message 0.
    db $00, $45
    ; End script.
    db $ff

C2Loc4_69:
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw C2Loc4_68
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff

C2Sc4_05:
    ; Show message 0.
    db $00, $14
    ; End script.
    db $ff

C2Sc4_06:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw C2Loc4_7F
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Hide object.
    db $2a, $02
    ; Set object flag.
    db $09, $29
    ; Jump to script.
    db $07
    dw C2Loc4_7E

C2Sc4_07:
    ; Show message 0.
    db $00, $15
    ; End script.
    db $ff

C2Sc4_08:
    ; Show message 0.
    db $00, $1b
    ; Test object flag and branch when set.
    db $08, $36
    dw C2Loc4_7C
    ; Add quick-list value.
    db $44, $e2
    ; Set object flag.
    db $09, $36
    ; End script.
    db $ff

C2Sc4_09:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc4_7D
    ; Hold text.
    db $2e
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Keep selected change.
    db $27
    ; Test object flag and branch when set.
    db $08, $42
    dw C2Loc4_7C
    ; Show message 0.
    db $00, $29
    ; Set object flag.
    db $09, $42
    ; End script.
    db $ff

C2Sc4_0A:
    ; Show message 0.
    db $00, $17
    ; End script.
    db $ff

C2Sc4_0B:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc4_7D
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Test object flag and branch when set.
    db $08, $a4
    dw C2Loc4_6A
    ; Hide object.
    db $2a, $1d
    ; Show object.
    db $29, $21
    ; Refresh room objects.
    db $2b

C2Loc4_6A:
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

C2Sc4_0C:
    ; Test selected attribute bit 1.
    db $1a
    ; Branch if result bit 0 is set.
    db $03
    dw C2Sc4_2F
    ; Test attribute bit 0 and branch when set.
    db $17
    dw C2Loc4_7F
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c

Jump_007_6d66:
    db $1c
    ; Set object flag.
    db $09, $a4
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc4_6B
    ; Hide object.
    db $2a, $1d

Call_007_6d6e:
    ; Jump to script.
    db $07
    dw C2Loc4_7E

C2Loc4_6B:
    ; Hide object.
    db $2a, $21
    ; Jump to script.
    db $07
    dw C2Loc4_7E

C2Sc4_0D:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Loc4_84
    ; Show message 3.
    db $2c, $03
    ; Test object flag and branch when set.
    db $08, $a4
    dw C2Loc4_82
    ; Hide object.
    db $2a, $21
    ; Show object.
    db $29, $1d
    ; Refresh room objects.
    db $2b

C2Loc4_82:
    ; Clear selected attribute bit 2.
    db $1f
    ; Remove selected change.
    db $38
    ; End script.
    db $ff

C2Sc4_0E:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $1e
    ; Test object flag and branch when set.
    db $08, $13
    dw C2Loc4_7C
    ; Show message 0.
    db $00, $24
    ; End script.
    db $ff

C2Sc4_0F:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc4_7D
    ; Test object flag and branch when set.
    db $08, $13
    dw C2Loc4_80
    ; Set object flag.
    db $09, $13
    ; Hold text.
    db $2e
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Keep selected change.
    db $27
    ; Play audio.
    db $3e, $08
    ; Show message 1.
    db $01, $5a
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

C2Sc4_10:
    ; Show message 0.
    db $00, $25
    ; End script.
    db $ff

C2Sc4_11:
    ; Show message 1.
    db $01, $5b
    ; End script.
    db $ff

C2Sc4_12:
    ; Test object flag and branch when set.
    db $08, $5a
    dw C2Loc4_6C
    ; Show message 1.
    db $01, $6e
    ; End script.
    db $ff

C2Loc4_6C:
    ; Show message 1.
    db $01, $6f
    ; End script.
    db $ff

C2Sc4_13:
    ; Set object flag.
    db $09, $5a
    ; Jump to script.
    db $07
    dw C2Sc4_01

C2Sc4_14:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw C2Loc4_7F
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Hide object.
    db $2a, $33
    ; Jump to script.
    db $07
    dw C2Loc4_7E

C2Sc4_15:
    ; Test object flag and branch when set.
    db $08, $4b
    dw C2Loc4_6D
    ; Show message 1.
    db $01, $70
    ; End script.
    db $ff

C2Loc4_6D:
    ; Show message 1.
    db $01, $71
    ; End script.
    db $ff

C2Sc4_16:
    ; Show message 1.
    db $01, $72
    ; End script.
    db $ff

C2Sc4_17:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw C2Loc4_7F
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Hide object.
    db $2a, $34
    ; Jump to script.
    db $07
    dw C2Loc4_7E

C2Sc4_18:
    ; Show message 1.
    db $01, $73
    ; End script.
    db $ff

C2Sc4_19:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw C2Loc4_7F
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Hide object.
    db $2a, $35
    ; Jump to script.
    db $07
    dw C2Loc4_7E

C2Sc4_1A:
    ; Show message 1.
    db $01, $74
    ; End script.
    db $ff

C2Sc4_1B:
    ; Show message 1.
    db $01, $cd
    ; End script.
    db $ff

C2Sc4_1C:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw C2Loc4_7F
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Hide object.
    db $2a, $3e
    ; Jump to script.
    db $07
    dw C2Loc4_7E

C2Sc4_1D:
    ; Show message 1.
    db $01, $cf
    ; End script.
    db $ff

C2Sc4_1E:
    ; Test object flag and branch when set.
    db $08, $72
    dw C2Loc4_6E
    ; Test object flag and branch when set.
    db $08, $73
    dw C2Loc4_6F
    ; Show message 2.
    db $02, $57
    ; Set object flag.
    db $09, $73
    ; End script.
    db $ff

C2Loc4_6E:
    ; Show message 2.
    db $02, $5a
    ; End script.
    db $ff

C2Loc4_6F:
    ; Show message 2.
    db $02, $58
    ; End script.
    db $ff

C2Sc4_1F:
    ; Set object flag.
    db $09, $72
    ; Jump to script.
    db $07
    dw C2Sc4_2D

C2Sc4_20:
    ; Test object flag and branch when set.
    db $08, $75
    dw C2Loc4_70
    ; Show message 2.
    db $02, $5b
    ; End script.
    db $ff

C2Loc4_70:
    ; Show message 2.
    db $02, $5c
    ; End script.
    db $ff

C2Sc4_21:
    ; Test object flag and branch when set.
    db $08, $75
    dw C2Sc4_2D
    ; Show message 2.
    db $02, $5e
    ; End script.
    db $ff

C2Sc4_22:
    ; Show message 2.
    db $02, $5d
    ; End script.
    db $ff

C2Sc4_23:
    ; Show message 2.
    db $02, $81
    ; End script.
    db $ff

C2Sc4_24:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc4_7D
    ; Test attribute bit 0 and branch when set.
    db $17
    dw C2Loc4_80
    ; Test room argument and branch on inequality.
    db $55, $44
    dw C2Loc4_71
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw C2Loc4_73

C2Loc4_71:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Test object flag and branch when set.
    db $08, $a5
    dw C2Loc4_72
    ; Hide object.
    db $2a, $4b
    ; Show object.
    db $29, $4c
    ; Refresh room objects.
    db $2b

C2Loc4_72:
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

C2Loc4_73:
    ; Show message 3.
    db $2c, $41
    ; End script.
    db $ff

C2Sc4_25:
    ; Test selected attribute bit 1.
    db $1a
    ; Branch if result bit 0 is set.
    db $03
    dw C2Sc4_2F
    ; Test attribute bit 0 and branch when set.
    db $17
    dw C2Loc4_7F
    ; Test room argument and branch on inequality.
    db $55, $44
    dw C2Loc4_74
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw C2Loc4_73

C2Loc4_74:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Set object flag.
    db $09, $a5
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc4_75
    ; Hide object.
    db $2a, $4b
    ; Jump to script.
    db $07
    dw C2Loc4_7E

C2Loc4_75:
    ; Hide object.
    db $2a, $4c
    ; Jump to script.
    db $07
    dw C2Loc4_7E

C2Sc4_26:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Loc4_84
    ; Show message 3.
    db $2c, $03
    ; Test object flag and branch when set.
    db $08, $a5
    dw C2Loc4_83
    ; Hide object.
    db $2a, $4c
    ; Show object.
    db $29, $4b
    ; Refresh room objects.
    db $2b
    ; Jump to script.
    db $07
    dw C2Loc4_83

C2Sc4_27:
    ; Show message 2.
    db $02, $82
    ; End script.
    db $ff

C2Sc4_28:
    ; Show message 2.
    db $02, $ba
    ; End script.
    db $ff

C2Sc4_29:
    ; Test room argument and branch on inequality.
    db $55, RoomLaundry
    dw C2Loc4_76
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw C2Loc4_76
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff

C2Loc4_76:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc4_7D
    ; Jump to script.
    db $07
    dw C2Loc4_80

C2Sc4_2A:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw C2Loc4_7F
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Hide object.
    db $2a, $50
    ; Jump to script.
    db $07
    dw C2Loc4_7E

C2Sc4_2B:
    ; Show message 0.
    db $00, $ae
    ; End script.
    db $ff

C2Sc4_2C:
    ; Choose alternate target; selected input runs the following script.
    db $2d

C2Loc4_77:
    ; Match alternate item against type, ID and script target rows.
    db $32, $02, $00
    dw C2Loc4_78
    db $02, $01
    dw C2Loc4_79
    db $02, $02
    dw C2Loc4_7A
    db $02, $03
    dw C2Loc3_D2
    db $00, $a7
    dw C2Loc4_7B
    db $fe, $fe
    dw C2Sc4_30

C2Loc4_78:
    ; Place the item in the washer.
    db $65, GrpWasher
    ; End script.
    db $ff

C2Loc4_79:
    ; Place the item in the first trash can.
    db $65, GrpTrash1
    ; End script.
    db $ff

C2Loc4_7A:
    ; Place the item in the second trash can.
    db $65, GrpTrash2
    ; End script.
    db $ff

C2Loc4_7B:
    ; Confirm direct placement without a group record.
    db $65, PutDirect
    ; End script.
    db $ff

C2Loc4_7C:
    ; End script.
    db $ff

C2Sc4_2D:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc4_7D
    ; Jump to script.
    db $07
    dw C2Loc4_80

C2Sc4_2E:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Loc4_84
    ; Show message 3.
    db $2c, $03

C2Loc4_83:
    ; Clear selected attribute bit 2.
    db $1f
    ; Remove selected change.
    db $38
    ; End script.
    db $ff

C2Sc4_2F:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw C2Loc4_7F
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Jump to script.
    db $07
    dw C2Loc4_7E

C2Loc4_7D:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $19
    ; End script.
    db $ff

C2Loc4_84:
    ; Show message 3.
    db $2c, $1a
    ; End script.
    db $ff

C2Loc4_7E:
    ; Append selected item to list.
    db $26
    ; End script.
    db $ff

C2Sc4_30:
    ; Show message 0.
    db $00, $2c
    ; End script.
    db $ff

C2Loc4_7F:
    ; Show message 0.
    db $00, $2d
    ; End script.
    db $ff

C2Loc4_80:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Keep selected change.
    db $27
    ; End script.
    db $ff
