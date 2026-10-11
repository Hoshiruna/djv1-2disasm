; Confirmed script commands; unrecognized command sequences remain raw bytes.

C1Sc5_00:
    ; Test current room.
    db $19, $00
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_01
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $30
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_00
    ; Show message 0.
    db $00, $1e
    ; Set object flag.
    db $17, $30
    ; End script.
    db $ff

C1Loc5_00:
    ; Show message 1.
    db $01, $c7

C1Loc5_01:
    ; End script.
    db $ff

C1Sc5_01:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02

C1Loc5_02:
    ; Set selected state and refresh.
    db $1a
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $00
    ; End script.
    db $ff

C1Sc5_02:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc5_03:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $27
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_03
    ; Set selected state and refresh.
    db $1a
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $00
    ; End script.
    db $ff

C1Loc5_03:
    ; Set first item type and ID.
    db $5c, $05, $49
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $31
    ; Show message 1.
    db $01, $aa
    ; End script.
    db $ff

C1Sc5_04:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $5a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_2C
    ; Jump to script.
    db $1c
    dw C1Loc5_02

C1Sc5_05:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $5b
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_2C
    ; Jump to script.
    db $1c
    dw C1Loc5_02

C1Sc5_06:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $5c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_2C
    ; Jump to script.
    db $1c
    dw C1Loc5_02

C1Sc5_07:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $5e
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_2C
    ; Set selected state and refresh.
    db $1a
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $00
    ; Test object flag.
    db $16, $16
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_04
    ; Set object flag.
    db $17, $b0
    ; Set state bit.
    db $2f, $3a
    ; Move to the room argument if the selected state permits.
    db $06, $30
    ; Wait sixty ticks.
    db $68
    ; Wait sixty ticks.
    db $68
    ; Show message 2.
    db $02, $25
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $88
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48

C1Loc5_04:
    ; End script.
    db $ff

C1Sc5_08:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $5f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_2C
    ; Jump to script.
    db $1c
    dw C1Loc5_02

C1Sc5_09:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $60
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_2C
    ; Jump to script.
    db $1c
    dw C1Loc5_02

C1Sc5_0A:
    ; Test current room.
    db $19, $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_01
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Show message 0.
    db $00, $68
    ; End script.
    db $ff

C1Sc5_0B:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_05
    ; Clear selected state and refresh.
    db $1b
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $02
    ; End script.
    db $ff

C1Loc5_05:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc5_0C:
    ; Test current room.
    db $19, $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_0B
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_05
    ; Clear selected state and refresh.
    db $37
    ; Clear attribute bit 0.
    db $09
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $02
    ; End script.
    db $ff

C1Sc5_0D:
    ; Test current room.
    db $19, $00
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_06
    ; Move to the room argument if the selected state permits.
    db $06, $00
    ; Show message 0.
    db $00, $12
    ; End script.
    db $ff

C1Loc5_06:
    ; Move to the room argument if the selected state permits.
    db $06, $01
    ; Test object flag.
    db $16, $30
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_7C
    ; Show message 0.
    db $00, $1d
    ; Set object flag.
    db $17, $30
    ; End script.
    db $ff

C1Loc5_7C:
    ; Show message 0.
    db $00, $23
    ; End script.
    db $ff

C1Sc5_0E:
    ; Test current room.
    db $19, $01
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_07
    ; End script.
    db $ff

C1Loc5_07:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $31
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_08
    ; Show message 0.
    db $00, $1e
    ; End script.
    db $ff

C1Loc5_08:
    ; Show message 0.
    db $00, $24
    ; End script.
    db $ff

C1Sc5_0F:
    ; Show message 0.
    db $00, $13
    ; End script.
    db $ff

C1Sc5_10:
    ; Test current room.
    db $19, $01
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_06

C1Loc5_09:
    ; Test object flag.
    db $16, $17
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_0A
    ; Move to the room argument if the selected state permits.
    db $06, $02
    ; Test object flag.
    db $16, $31
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_7D
    ; Show message 0.
    db $00, $26
    ; Set object flag.
    db $17, $31
    ; End script.
    db $ff

C1Loc5_7D:
    ; Show message 0.
    db $00, $2b
    ; End script.
    db $ff

C1Loc5_0A:
    ; Show message 1.
    db $01, $5e
    ; End script.
    db $ff

C1Sc5_11:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test current room.
    db $19, $02
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_08
    ; Show message 0.
    db $00, $28
    ; End script.
    db $ff

C1Sc5_12:
    ; Test current room.
    db $19, $02
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_09

C1Loc5_0B:
    ; Move to the room argument if the selected state permits.
    db $06, $03
    ; Test object flag.
    db $16, $32
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_7E
    ; Show message 0.
    db $00, $2c
    ; Set object flag.
    db $17, $32
    ; End script.
    db $ff

C1Loc5_7E:
    ; Show message 0.
    db $00, $32
    ; End script.
    db $ff

C1Sc5_13:
    ; Test current room.
    db $19, $05
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_0C
    ; End script.
    db $ff

C1Loc5_0C:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $33
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_0D
    ; Show message 0.
    db $00, $29
    ; End script.
    db $ff

C1Loc5_0D:
    ; Show message 2.
    db $02, $b2
    ; End script.
    db $ff

C1Sc5_14:
    ; Test current room.
    db $19, $02
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_09

C1Loc5_0E:
    ; Move to the room argument if the selected state permits.
    db $06, $05
    ; Test object flag.
    db $16, $33
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_7F
    ; Show message 0.
    db $00, $3b
    ; Set object flag.
    db $17, $33
    ; End script.
    db $ff

C1Loc5_7F:
    ; Show message 0.
    db $00, $42
    ; End script.
    db $ff

C1Sc5_15:
    ; Test current room.
    db $19, $03
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_0F
    ; End script.
    db $ff

C1Loc5_0F:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_10
    ; Show message 0.
    db $00, $31
    ; End script.
    db $ff

C1Loc5_10:
    ; Show message 1.
    db $01, $c7
    ; End script.
    db $ff

C1Sc5_16:
    ; Test current room.
    db $19, $03
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_0B
    ; Move to the room argument if the selected state permits.
    db $06, $04
    ; Test object flag.
    db $16, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_80
    ; Show message 0.
    db $00, $33
    ; Set object flag.
    db $17, $34
    ; End script.
    db $ff

C1Loc5_80:
    ; Show message 0.
    db $00, $39
    ; End script.
    db $ff

C1Sc5_17:
    ; Test current room.
    db $19, $05
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_11
    ; End script.
    db $ff

C1Loc5_11:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Show message 0.
    db $00, $3e
    ; End script.
    db $ff

C1Sc5_18:
    ; Test current room.
    db $19, $05
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_0E

C1Loc5_12:
    ; Test object flag.
    db $16, $04
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_13
    ; Set object flag.
    db $17, $03

C1Loc5_13:
    ; Move to the room argument if the selected state permits.
    db $06, $06
    ; Test object flag.
    db $16, $35
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_81
    ; Show message 0.
    db $00, $49
    ; Set object flag.
    db $17, $35
    ; End script.
    db $ff

C1Loc5_81:
    ; Show message 0.
    db $00, $52
    ; End script.
    db $ff

C1Sc5_19:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test current room.
    db $19, $05
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_14
    ; Show message 2.
    db $02, $b2
    ; End script.
    db $ff

C1Loc5_14:
    ; Show message 0.
    db $00, $3f
    ; End script.
    db $ff

C1Sc5_1A:
    ; Test current room.
    db $19, $05
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_0E

C1Loc5_15:
    ; Check Case I room event for the room argument.
    db $5e, $4a
    ; Move to the room argument if the selected state permits.
    db $06, $11
    ; Test object flag.
    db $16, $36
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_82
    ; Show message 2.
    db $02, $b9
    ; End script.
    db $ff

C1Loc5_82:
    ; Show message 2.
    db $02, $b1
    ; Set object flag.
    db $17, $36
    ; End script.
    db $ff

C1Sc5_1B:
    ; Test current room.
    db $19, $05
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_01
    ; Test object flag.
    db $16, $37
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_5F
    ; Show message 0.
    db $00, $3d
    ; End script.
    db $ff

C1Sc5_1C:
    ; Test current room.
    db $19, $05
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_0E

C1Loc5_16:
    ; Test current room.
    db $19, $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_17
    ; Test object flag.
    db $16, $25
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_18

C1Loc5_17:
    ; Move to the room argument if the selected state permits.
    db $06, $0e
    ; Test object flag.
    db $16, $37
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_83
    ; Show message 2.
    db $02, $aa
    ; End script.
    db $ff

C1Loc5_83:
    ; Show message 2.
    db $02, $a3
    ; Set object flag.
    db $17, $37
    ; End script.
    db $ff

C1Loc5_18:
    ; Move to the room argument if the selected state permits.
    db $06, $0e
    ; Show message 2.
    db $02, $a3
    ; Run scene effect.
    db $46, $18
    ; End script.
    db $ff

C1Sc5_1D:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_1A
    ; Test current room.
    db $19, $06
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_19
    ; Show message 0.
    db $00, $52
    ; End script.
    db $ff

C1Loc5_19:
    ; Show message 0.
    db $00, $4e
    ; End script.
    db $ff

C1Loc5_1A:
    ; Set text name 0.
    db $1e, $67
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc5_1E:
    ; Test current room.
    db $19, $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_01
    ; Show message 0.
    db $00, $14
    ; End script.
    db $ff

C1Sc5_1F:
    ; Test current room.
    db $19, $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_0B
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_1B
    ; Set text name 0.
    db $1e, $67
    ; Show message 2.
    db $02, $02
    ; Clear selected state and refresh.
    db $37
    ; Set selected attribute bit 0.
    db $08
    ; End script.
    db $ff

C1Loc5_1B:
    ; Set text name 0.
    db $1e, $67
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc5_20:
    ; Test current room.
    db $19, $06
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_12

C1Loc5_1C:
    ; Move to the room argument if the selected state permits.
    db $06, $07
    ; Test object flag.
    db $16, $38
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_84
    ; Show message 0.
    db $00, $58
    ; End script.
    db $ff

C1Loc5_84:
    ; Show message 0.
    db $00, $54
    ; Set object flag.
    db $17, $38
    ; End script.
    db $ff

C1Sc5_21:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test current room.
    db $19, $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_1D
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Loc5_1D:
    ; Test object flag.
    db $16, $3a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_1E
    ; Show message 0.
    db $00, $56
    ; End script.
    db $ff

C1Loc5_1E:
    ; Show message 0.
    db $00, $59
    ; End script.
    db $ff

C1Sc5_22:
    ; Test current room.
    db $19, $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_1C

C1Loc5_1F:
    ; Move to the room argument if the selected state permits.
    db $06, $08
    ; Test object flag.
    db $16, $3a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_85
    ; Show message 0.
    db $00, $65
    ; End script.
    db $ff

C1Loc5_85:
    ; Show message 0.
    db $00, $5a
    ; Set object flag.
    db $17, $3a
    ; End script.
    db $ff

C1Sc5_23:
    ; Test current room.
    db $19, $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_20
    ; Show message 0.
    db $00, $55
    ; End script.
    db $ff

C1Loc5_20:
    ; Show message 1.
    db $01, $21
    ; End script.
    db $ff

C1Sc5_24:
    ; Test current room.
    db $19, $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_1C

C1Loc5_21:
    ; Move to the room argument if the selected state permits.
    db $06, $3a
    ; Test object flag.
    db $16, $39
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_87

C1Loc5_86:
    ; Show message 1.
    db $01, $24
    ; End script.
    db $ff

C1Loc5_87:
    ; Show message 1.
    db $01, $28
    ; Set object flag.
    db $17, $39

C1Sc5_25:
    ; End script.
    db $ff

C1Sc5_26:
    ; Test current room.
    db $19, $08
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_1F

C1Loc5_22:
    ; Move to the room argument if the selected state permits.
    db $06, $09
    ; Show message 0.
    db $00, $69
    ; End script.
    db $ff

C1Sc5_27:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc5_28:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02

C1Sc5_29:
    ; Show message 2.
    db $02, $a1
    ; End script.
    db $ff

C1Sc5_2A:
    ; Show message 2.
    db $02, $a2
    ; End script.
    db $ff

C1Sc5_2B:
    ; Test current room.
    db $19, $09
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_22
    ; Move to the room argument if the selected state permits.
    db $06, $0a
    ; Test object flag.
    db $16, $3b
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_88
    ; Show message 0.
    db $00, $6f
    ; End script.
    db $ff

C1Loc5_88:
    ; Show message 0.
    db $00, $6b
    ; Set object flag.
    db $17, $3b
    ; End script.
    db $ff

C1Sc5_2C:
    ; Test current room.
    db $19, $3f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_23
    ; Move to the room argument if the selected state permits.
    db $06, $0c
    ; Test object flag.
    db $16, $57
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_89
    ; Test object flag.
    db $16, $3c
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_89
    ; Show message 2.
    db $02, $81
    ; Set object flag.
    db $17, $57
    ; End script.
    db $ff

C1Loc5_89:
    ; Show message 2.
    db $02, $93
    ; End script.
    db $ff

C1Loc5_23:
    ; Move to the room argument if the selected state permits.
    db $06, $0c
    ; Test object flag.
    db $16, $3c
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_8A
    ; Test object flag.
    db $16, $57
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_8B
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $81
    ; Show message 1.
    db $01, $02
    ; Set object flag.
    db $17, $3c
    ; End script.
    db $ff

C1Loc5_8A:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $93
    ; Show message 2.
    db $02, $a9
    ; End script.
    db $ff

C1Loc5_8B:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $93
    ; Show message 1.
    db $01, $02
    ; Set object flag.
    db $17, $3c
    ; End script.
    db $ff

C1Sc5_2D:
    ; Test current room.
    db $19, $40
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_25

C1Loc5_24:
    ; Move to the room argument if the selected state permits.
    db $06, $0b
    ; Test object flag.
    db $16, $3d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_8C
    ; Show message 0.
    db $00, $7c
    ; End script.
    db $ff

C1Loc5_8C:
    ; Show message 0.
    db $00, $72
    ; Set object flag.
    db $17, $3d
    ; End script.
    db $ff

C1Loc5_25:
    ; Move to the room argument if the selected state permits.
    db $06, $40
    ; Test object flag.
    db $16, $3b
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_88
    ; Show message 0.
    db $00, $6f
    ; End script.
    db $ff

C1Sc5_2E:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_27
    ; Test current room.
    db $19, $0b
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_26
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $ac
    ; Show message 2.
    db $02, $4e
    ; End script.
    db $ff

C1Loc5_26:
    ; Show message 2.
    db $02, $87
    ; End script.
    db $ff

C1Sc5_2F:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_27
    ; Set selected state and refresh.
    db $1a
    ; Set text name 0.
    db $1e, $66
    ; Show message 2.
    db $02, $00
    ; End script.
    db $ff

C1Loc5_27:
    ; Set text name 0.
    db $1e, $66
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc5_30:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_28
    ; Clear selected state and refresh.
    db $1b
    ; Set text name 0.
    db $1e, $66
    ; Show message 2.
    db $02, $02
    ; End script.
    db $ff

C1Loc5_28:
    ; Set text name 0.
    db $1e, $66
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc5_31:
    ; Test current room.
    db $19, $0b
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_24

C1Loc5_29:
    ; Move to the room argument if the selected state permits.
    db $06, $0f
    ; Show message 2.
    db $02, $ab

C1Sc5_32:
    ; End script.
    db $ff

C1Sc5_33:
    ; Test current room.
    db $19, $0f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_29
    ; Move to the room argument if the selected state permits.
    db $06, $10
    ; Show message 2.
    db $02, $ae
    ; End script.
    db $ff

C1Sc5_34:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_27
    ; Test current room.
    db $19, $0c
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_26
    ; Show message 2.
    db $02, $b0
    ; End script.
    db $ff

C1Sc5_35:
    ; Test current room.
    db $19, $0c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc5_2C
    ; Move to the room argument if the selected state permits.
    db $06, $10
    ; Show message 2.
    db $02, $ae

C1Loc5_2A:
    ; End script.
    db $ff

C1Sc5_36:
    ; Test current room.
    db $19, $16
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_2A
    ; Show message 2.
    db $02, $d3
    ; End script.
    db $ff

C1Sc5_37:
    ; Test current room.
    db $19, $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_2B
    ; Show message 2.
    db $02, $d3
    ; End script.
    db $ff

C1Loc5_2B:
    ; Check Case I room event for the room argument.
    db $5e, $1e
    ; Move to the room argument if the selected state permits.
    db $06, $16
    ; Show message 2.
    db $02, $d1
    ; End script.
    db $ff

C1Sc5_38:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $5b
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_05

C1Loc5_2C:
    ; Show message 0.
    db $00, $43
    ; End script.
    db $ff

C1Sc5_39:
    ; Test current room.
    db $19, $0c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc5_2C

C1Loc5_2D:
    ; Move to the room argument if the selected state permits.
    db $06, $0d
    ; Test object flag.
    db $16, $3e
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_8D
    ; Show message 2.
    db $02, $a0
    ; End script.
    db $ff

C1Loc5_8D:
    ; Show message 2.
    db $02, $97
    ; Set object flag.
    db $17, $3e
    ; End script.
    db $ff

C1Sc5_3A:
    ; Test current room.
    db $19, $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_01
    ; Jump to script.
    db $1c
    dw C1Sc5_27

C1Sc5_3B:
    ; Test current room.
    db $19, $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_2D
    ; Jump to script.
    db $1c
    dw C1Loc5_16

C1Sc5_3C:
    ; Test current room.
    db $19, $11
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_15
    ; Jump to script.
    db $1c
    dw C1Loc5_2B

C1Sc5_3D:
    ; Test current room.
    db $19, $11
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_15

C1Loc5_2E:
    ; Check Case I room event for the room argument.
    db $5e, $4b
    ; Move to the room argument if the selected state permits.
    db $06, $12
    ; Test object flag.
    db $16, $3f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_8E
    ; Show message 2.
    db $02, $c2
    ; End script.
    db $ff

C1Loc5_8E:
    ; Show message 2.
    db $02, $bd
    ; Set object flag.
    db $17, $3f

C1Sc5_3E:
    ; End script.
    db $ff

C1Sc5_3F:
    ; Test current room.
    db $19, $16
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_2F
    ; Show message 2.
    db $02, $d4
    ; End script.
    db $ff

C1Loc5_2F:
    ; Show message 2.
    db $02, $d1
    ; End script.
    db $ff

C1Sc5_40:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_31
    ; Test current room.
    db $19, $11
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_30
    ; Show message 1.
    db $01, $32
    ; End script.
    db $ff

C1Loc5_30:
    ; Show message 2.
    db $02, $bc
    ; End script.
    db $ff

C1Sc5_41:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_31
    ; Set selected state and refresh.
    db $1a
    ; Set text name 0.
    db $1e, $ba
    ; Show message 2.
    db $02, $00
    ; End script.
    db $ff

C1Loc5_31:
    ; Set text name 0.
    db $1e, $ba
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc5_42:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_32
    ; Clear selected state and refresh.
    db $1b
    ; Set text name 0.
    db $1e, $ba
    ; Show message 2.
    db $02, $02
    ; End script.
    db $ff

C1Loc5_32:
    ; Set text name 0.
    db $1e, $ba
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc5_43:
    ; Test current room.
    db $19, $11
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_15

C1Loc5_33:
    ; Move to the room argument if the selected state permits.
    db $06, $1d

C1Loc5_8F:
    ; Test object flag.
    db $16, $40
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_86
    ; Show message 1.
    db $01, $31
    ; Set object flag.
    db $17, $40

C1Sc5_44:
    ; End script.
    db $ff

C1Sc5_45:
    ; Test current room.
    db $19, $17
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_34
    ; Jump to script.
    db $1c
    dw C1Loc5_15

C1Loc5_34:
    ; Check Case I room event for the room argument.
    db $5e, $20
    ; Move to the room argument if the selected state permits.
    db $06, $17
    ; Show message 2.
    db $02, $d6

C1Sc5_46:
    ; End script.
    db $ff

C1Sc5_47:
    ; Test current room.
    db $19, $11
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_15
    ; Move to the room argument if the selected state permits.
    db $06, $22
    ; Test object flag.
    db $16, $41
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_90
    ; Show message 2.
    db $02, $f6
    ; End script.
    db $ff

C1Loc5_90:
    ; Show message 2.
    db $02, $f1
    ; Set object flag.
    db $17, $41
    ; End script.
    db $ff

C1Sc5_48:
    ; Test current room.
    db $19, $11
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_35
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Show message 2.
    db $02, $b5

C1Loc5_35:
    ; End script.
    db $ff

C1Sc5_49:
    ; Test current room.
    db $19, $11
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_15
    ; Move to the room argument if the selected state permits.
    db $06, $23
    ; Test object flag.
    db $16, $42
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_91
    ; Show message 2.
    db $02, $82
    ; End script.
    db $ff

C1Loc5_91:
    ; Show message 1.
    db $01, $00
    ; Set object flag.
    db $17, $42

C1Sc5_4A:
    ; End script.
    db $ff

C1Sc5_4B:
    ; Test current room.
    db $19, $12
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_2E

C1Loc5_36:
    ; Test object flag.
    db $16, $a8
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_37
    ; Check Case I room event for the room argument.
    db $5e, $4c
    ; Check Case I room event for the room argument.
    db $5e, $1f

C1Loc5_37:
    ; Move to the room argument if the selected state permits.
    db $06, $13
    ; Clear object flag.
    db $18, $a8
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_92
    ; Show message 2.
    db $02, $cf
    ; End script.
    db $ff

C1Loc5_92:
    ; Show message 2.
    db $02, $cb
    ; Set object flag.
    db $17, $43

C1Sc5_4C:
    ; End script.
    db $ff

C1Sc5_4D:
    ; Test current room.
    db $19, $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_36

C1Loc5_38:
    ; Check Case I room event for the room argument.
    db $5e, $4d
    ; Move to the room argument if the selected state permits.
    db $06, $14
    ; Test object flag.
    db $16, $7a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_94

C1Loc5_93:
    ; Show message 2.
    db $02, $d0
    ; End script.
    db $ff

C1Loc5_94:
    ; Set text name 0.
    db $1e, $b1
    ; Show message 2.
    db $02, $0b
    ; Add quick-list value.
    db $42, $a3
    ; Set object flag.
    db $17, $7a
    ; Set object flag.
    db $17, $44
    ; End script.
    db $ff

C1Sc5_4E:
jr_006_77a4:
    ; Test current room.
    db $19, $25
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_01
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Show message 2.
    db $02, $cd
    ; End script.
    db $ff

C1Sc5_4F:
    ; Test current room.
    db $19, $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_36
    ; Move to the room argument if the selected state permits.
    db $06, $25
    ; Test object flag.
    db $16, $45
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_95
    ; Show message 2.
    db $02, $26
    ; End script.
    db $ff

C1Loc5_95:
    ; Show message 1.
    db $01, $10
    ; Set object flag.
    db $17, $45

C1Sc5_50:
    ; End script.
    db $ff

C1Sc5_51:
    ; Test current room.
    db $19, $14
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_38

C1Loc5_39:
    ; Move to the room argument if the selected state permits.
    db $06, $15
    ; Test object flag.
    db $16, $46
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_93
    ; Set text name 0.
    db $1e, $b2
    ; Show message 2.
    db $02, $0b
    ; End script.
    db $ff

C1Sc5_52:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Show message 2.
    db $02, $d8

C1Sc5_53:
    ; End script.
    db $ff

C1Sc5_54:
    ; Set selected state and refresh.
    db $1a
    ; Wait sixty ticks.
    db $68
    ; Set text name 0.
    db $1e, $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_0B
    ; Test object flag.
    db $16, $25
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_3B
    ; Test object flag.
    db $16, $a1
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_3A
    ; Test item flag.
    db $52, $24
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_97
    ; Test property 4 bit 0.
    db $5d, $08
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_96
    ; Test item flag.
    db $52, $1e
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_96
    ; Test object flag.
    db $16, $a2
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_9A
    ; Test object flag.
    db $16, $a3
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_9A
    ; Test object flag.
    db $16, $a4
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_9A
    ; Finish Case I scene effect.
    db $5a, $17
    ; End script.
    db $ff
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Show message 2.
    db $02, $63
    ; End script.
    db $ff

C1Loc5_96:
    ; Test object flag.
    db $16, $a2
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_99
    ; Test object flag.
    db $16, $a3
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_99
    ; Test object flag.
    db $16, $a4
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_99
    ; Jump to script.
    db $1c
    dw C1Loc5_98

C1Loc5_97:
    ; Test property 4 bit 0.
    db $5d, $08
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_96
    ; Test item flag.
    db $52, $1e
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_96
    ; Test item flag.
    db $52, $12
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_99
    ; Test item flag.
    db $52, $1b
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_99
    ; Test item flag.
    db $52, $0e
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_99

C1Loc5_98:
    ; Finish Case I scene effect.
    db $5a, $14
    ; Hold text; consume the Case I extra argument.
    db $3f, $03
    ; Show message 0.
    db $00, $2a
    ; Show message 0.
    db $00, $5c
    ; Show message 1.
    db $01, $fd
    ; Show message 1.
    db $01, $fc
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc5_3A:
    ; Finish Case I scene effect.
    db $5a, $14
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 1.
    db $01, $fa
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc5_99:
    ; Finish Case I scene effect.
    db $5a, $14
    ; Hold text; consume the Case I extra argument.
    db $3f, $03
    ; Show message 0.
    db $00, $2a
    ; Show message 0.
    db $00, $5c
    ; Show message 0.
    db $00, $5b
    ; Show message 1.
    db $01, $fe
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc5_9A:
    ; Finish Case I scene effect.
    db $5a, $14
    ; Hold text; consume the Case I extra argument.
    db $3f, $03
    ; Show message 0.
    db $00, $2a
    ; Show message 0.
    db $00, $3a
    ; Show message 0.
    db $00, $5b
    ; Show message 1.
    db $01, $fc
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc5_3B:
    ; Finish Case I scene effect.
    db $5a, $14
    ; Show message 1.
    db $01, $fb
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Sc5_55:
    ; Move to the room argument if the selected state permits.
    db $06, $18
    ; Show message 2.
    db $02, $da
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Sc5_56:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_31
    ; Test current room.
    db $19, $16
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_30
    ; Show message 1.
    db $01, $32
    ; End script.
    db $ff

C1Sc5_57:
    ; Test current room.
    db $19, $16
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_2B

C1Loc5_3C:
    ; Move to the room argument if the selected state permits.
    db $06, $3d
    ; Jump to script.
    db $1c
    dw C1Loc5_8F

C1Sc5_58:
    ; Test current room.
    db $19, $26
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_3D
    ; End script.
    db $ff

C1Loc5_3D:
    ; Set text name 0.
    db $1e, $b1
    ; Show message 2.
    db $02, $0c
    ; End script.
    db $ff

C1Sc5_59:
    ; Test current room.
    db $19, $26
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_3E
    ; Clear state bit.
    db $30, $0d
    ; Move to the room argument if the selected state permits.
    db $06, $26
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $39
    ; Test object flag.
    db $16, $81
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_9B
    ; Resume text.
    db $45
    ; End script.
    db $ff

C1Loc5_9B:
jr_006_78b3:
    ; Show message 2.
    db $02, $6e
    ; End script.
    db $ff

C1Loc5_3E:
    ; Test object flag.
    db $16, $83
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_38
    ; Test object flag.
    db $16, $82
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_40
    ; Test object flag.
    db $16, $84

jr_006_78c2:
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_3F
    ; Show message 2.
    db $02, $5d
    ; Set object flag.
    db $17

jr_006_78c8:
    db $84
    ; End script.
    db $ff

C1Loc5_3F:
    ; Test Case I coins against limit.
    db $4a, $02
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_52
    ; Show message 2.
    db $02, $6c

C1Loc5_40:
    ; Move to the room argument if the selected state permits.
    db $06, $14
    ; Show message 2.
    db $02, $d0
    ; Jump to script.
    db $1c
    dw C1Loc5_A1

C1Sc5_5A:
    ; Test current room.
    db $19, $42
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_3D
    ; End script.
    db $ff

C1Sc5_5B:
    ; Test current room.
    db $19, $42
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_42
    ; Move to the room argument if the selected state permits.
    db $06, $42
    ; Show message 1.
    db $01, $39
    ; End script.
    db $ff

C1Loc5_41:
    ; Move to the room argument if the selected state permits.
    db $06, $19
    ; Test object flag.
    db $16, $48
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_9C
    ; Show message 1.
    db $01, $47
    ; Set object flag.
    db $17, $48
    ; End script.
    db $ff

C1Loc5_9C:
    ; Show message 1.
    db $01, $49
    ; End script.
    db $ff

C1Loc5_42:
    ; Test object flag.
    db $16, $83
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_41
    ; Test object flag.
    db $16, $82

jr_006_78fe:
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_51

jr_006_7901:
    ; Test object flag.
    db $16, $84
    ; Branch if result bit 0 is set.
    db $04

jr_006_7904:
    dw C1Loc5_52
    ; Show message 2.
    db $02, $5d
    ; Set object flag.
    db $17, $84
    ; End script.
    db $ff

C1Sc5_5C:
    ; Test current room.
    db $19, $44
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_3D
    ; End script.
    db $ff

C1Sc5_5D:
    ; Test current room.
    db $19, $44
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_44
    ; Move to the room argument if the selected state permits.
    db $06, $44
    ; Show message 1.
    db $01, $39
    ; End script.
    db $ff

C1Loc5_43:
    ; Move to the room argument if the selected state permits.
    db $06, $1a
    ; Test object flag.
    db $16, $49
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_9D
    ; Show message 1.
    db $01, $5f
    ; Set object flag.
    db $17, $49
    ; End script.
    db $ff

C1Loc5_9D:
    ; Show message 1.
    db $01, $66
    ; End script.
    db $ff

C1Loc5_44:
    ; Test object flag.
    db $16, $83
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_43
    ; Test object flag.
    db $16, $82
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_45
    ; Test object flag.
    db $16, $84
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_52
    ; Show message 2.
    db $02

jr_006_793a:
    db $5d
    ; Set object flag.
    db $17, $84

jr_006_793d:
    ; End script.
    db $ff

C1Loc5_45:
    ; Clear object flag.
    db $18, $82

jr_006_7940:
    ; Clear object flag.
    db $18, $83
    ; Clear object flag.
    db $18, $84
    ; Jump to script.
    db $1c
    dw C1Loc5_43

C1Sc5_5E:
    ; Test current room.
    db $19, $46
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_3D
    ; End script.
    db $ff

C1Sc5_5F:
    ; Test current room.
    db $19, $46
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_47
    ; Move to the room argument if the selected state permits.
    db $06, $46
    ; Show message 1.
    db $01, $39
    ; End script.
    db $ff

C1Loc5_46:
    ; Move to the room argument if the selected state permits.
    db $06, $1b
    ; Test object flag.
    db $16, $4a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_9E
    ; Show message 1.
    db $01, $75
    ; End script.
    db $ff

C1Loc5_9E:
    ; Show message 1.
    db $01, $73
    ; Set object flag.
    db $17, $4a
    ; End script.
    db $ff

C1Loc5_47:
    ; Test object flag.
    db $16, $83
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_46
    ; Test object flag.
    db $16, $82
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_48
    ; Test object flag.
    db $16, $84
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_52
    ; Show message 2.
    db $02, $5d
    ; Set object flag.
    db $17, $84
    ; End script.
    db $ff

C1Loc5_48:
    ; Clear object flag.
    db $18, $82
    ; Clear object flag.
    db $18, $83
    ; Clear object flag.
    db $18, $84
    ; Jump to script.
    db $1c
    dw C1Loc5_46

C1Sc5_60:
    ; Test current room.
    db $19

jr_006_7984:
    db $48
    ; Branch if result bit 0 is clear.
    db $05
    ; Target C1Loc5_3D; retain the interior label.
    db $9a

jr_006_7987:
    db $78
    ; End script.
    db $ff

C1Sc5_61:
    ; Test current room.
    db $19

jr_006_798a:
    db $48
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_4A
    ; Move to the room argument if the selected state permits.
    db $06, $48
    ; Show message 1.
    db $01, $39
    ; End script.
    db $ff

C1Loc5_49:
    ; Move to the room argument if the selected state permits.
    db $06, $1c
    ; Test object flag.
    db $16, $4b
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_9F
    ; Show message 1.
    db $01, $9a
    ; Set object flag.
    db $17, $4b
    ; End script.
    db $ff

C1Loc5_9F:
    ; Show message 1.
    db $01, $9f
    ; End script.
    db $ff

C1Loc5_4A:
    ; Test object flag.
    db $16, $83
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_49
    ; Test object flag.
    db $16, $82
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_4B
    ; Test object flag.
    db $16, $84
    ; Branch if result bit 0 is set.
    db $04

jr_006_79af:
    dw C1Loc5_52
    ; Show message 2.
    db $02

jr_006_79b2:
    db $5d
    ; Set object flag.
    db $17, $84

jr_006_79b5:
    ; End script.
    db $ff

C1Loc5_4B:
    ; Clear object flag.
    db $18, $82
    ; Clear object flag.
    db $18, $83
    ; Clear object flag.
    db $18, $84
    ; Jump to script.
    db $1c
    dw C1Loc5_49

C1Sc5_62:
    ; Test current room.
    db $19, $27
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_4C
    ; End script.
    db $ff

C1Loc5_4C:
    ; Set text name 0.
    db $1e, $b2
    ; Show message 2.
    db $02, $0c
    ; End script.
    db $ff

C1Sc5_63:
    ; Test current room.
    db $19, $27
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_4D
    ; Set state bit.
    db $2f, $0d
    ; Move to the room argument if the selected state permits.
    db $06, $27
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $42
    ; Test object flag.
    db $16, $a0
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_A0
    ; Resume text.
    db $45
    ; End script.
    db $ff

C1Loc5_A0:
    ; Show message 2.
    db $02, $6f
    ; End script.
    db $ff

C1Loc5_4D:
    ; Test object flag.
    db $16, $83
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_39
    ; Test object flag.
    db $16, $82
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_4F
    ; Test object flag.
    db $16, $84
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_4E
    ; Show message 2.
    db $02, $5e
    ; Set object flag.
    db $17, $84
    ; End script.
    db $ff

C1Loc5_4E:
    ; Test Case I coins against limit.
    db $4a, $02
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_52
    ; Show message 2.
    db $02, $6d

C1Loc5_4F:
    ; Move to the room argument if the selected state permits.
    db $06, $15
    ; Show message 2.
    db $02, $d0

C1Loc5_A1:
    ; Clear object flag.
    db $18, $82
    ; Clear object flag.
    db $18, $83
    ; Clear object flag.
    db $18, $84
    ; End script.
    db $ff

C1Sc5_64:
    ; Test current room.
    db $19, $43
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_4C
    ; End script.
    db $ff

C1Sc5_65:
    ; Test current room.
    db $19, $43
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_50
    ; Move to the room argument if the selected state permits.
    db $06, $43
    ; Show message 1.
    db $01, $42
    ; End script.
    db $ff

C1Loc5_50:
    ; Test object flag.
    db $16, $83
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_41
    ; Test object flag.
    db $16, $82
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_51
    ; Test object flag.
    db $16, $84
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_52
    ; Show message 2.
    db $02, $5e
    ; Set object flag.
    db $17, $84
    ; End script.
    db $ff

C1Loc5_51:
    ; Clear object flag.
    db $18, $82
    ; Clear object flag.
    db $18, $83
    ; Clear object flag.
    db $18, $84
    ; Jump to script.
    db $1c
    dw C1Loc5_41

C1Loc5_52:
    ; Finish Case I scene effect.
    db $5a, $14
    ; Show message 1.
    db $01, $b2
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Sc5_66:
    ; Test current room.
    db $19, $45
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_4C
    ; End script.
    db $ff

C1Sc5_67:
    ; Test current room.
    db $19, $45
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_53
    ; Move to the room argument if the selected state permits.
    db $06, $45
    ; Show message 1.
    db $01, $42
    ; End script.
    db $ff

C1Loc5_53:
    ; Test object flag.
    db $16, $83
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_43
    ; Test object flag.
    db $16, $82
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_45
    ; Test object flag.
    db $16, $84
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_52
    ; Show message 2.
    db $02, $5e
    ; Set object flag.
    db $17, $84
    ; End script.
    db $ff

C1Sc5_68:
    ; Test current room.
    db $19, $47
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_4C
    ; End script.
    db $ff

C1Sc5_69:
    ; Test current room.
    db $19, $47
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_54
    ; Move to the room argument if the selected state permits.
    db $06, $47
    ; Show message 1.
    db $01, $42
    ; End script.
    db $ff

C1Loc5_54:
    ; Test object flag.
    db $16, $83
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_46
    ; Test object flag.
    db $16, $82
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_48
    ; Test object flag.
    db $16, $84
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_52
    ; Show message 2.
    db $02, $5e
    ; Set object flag.
    db $17, $84
    ; End script.
    db $ff

C1Sc5_6A:
    ; Test current room.
    db $19, $49
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_4C
    ; End script.
    db $ff

C1Sc5_6B:
    ; Test current room.
    db $19, $49
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_55
    ; Move to the room argument if the selected state permits.
    db $06, $49
    ; Show message 1.
    db $01, $42
    ; End script.
    db $ff

C1Loc5_55:
    ; Test object flag.
    db $16, $83
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_49
    ; Test object flag.
    db $16, $82
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_4B
    ; Test object flag.
    db $16, $84
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_52
    ; Show message 2.
    db $02, $5e
    ; Set object flag.
    db $17, $84
    ; End script.
    db $ff

C1Sc5_6C:
    ; Test current room.
    db $19, $19
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_56
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $03

C1Loc5_56:
    ; End script.
    db $ff

C1Sc5_6D:
    ; Test current room.
    db $19, $19
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_41

C1Loc5_57:
    ; Move to the room argument if the selected state permits.
    db $06, $28
    ; Test object flag.
    db $16, $4c
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_A2
    ; Show message 1.
    db $01, $4a
    ; Set object flag.
    db $17, $4c
    ; End script.
    db $ff

C1Loc5_A2:
    ; Show message 1.
    db $01, $4d
    ; End script.
    db $ff

C1Sc5_6E:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test current room.
    db $19, $28
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_58
    ; Show message 1.
    db $01, $51

jr_006_7ad3:
    ; End script.
    db $ff

C1Loc5_58:
    ; Show message 1.
    db $01, $4b
    ; End script.
    db $ff

C1Sc5_6F:
    ; Test current room.
    db $19, $28
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_57
    ; Move to the room argument if the selected state permits.
    db $06, $29
    ; Show message 0.
    db $00

jr_006_7adf:
    db $6f
    ; End script.
    db $ff

C1Sc5_70:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test current room.
    db $19, $2a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_58
    ; Show message 1.
    db $01, $51
    ; End script.
    db $ff

C1Sc5_71:
    ; Test current room.
    db $19, $2a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_59
    ; Move to the room argument if the selected state permits.
    db $06, $41
    ; Show message 0.
    db $00, $6f
    ; End script.
    db $ff

C1Loc5_59:
    ; Move to the room argument if the selected state permits.
    db $06, $2a
    ; Test object flag.
    db $16, $ad
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_A3
    ; Show message 1.
    db $01, $53
    ; Set object flag.
    db $17, $ad
    ; End script.
    db $ff

C1Loc5_A3:
    ; Show message 2.
    db $02, $27
    ; End script.
    db $ff

C1Sc5_72:
    ; Test current room.
    db $19, $2b
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_5A
    ; End script.
    db $ff

C1Loc5_5A:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $60
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_05
    ; Test object flag.
    db $16, $2d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_5B
    ; Show message 1.
    db $01, $61
    ; Set object flag.
    db $17, $2d
    ; End script.
    db $ff

C1Loc5_5B:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $61
    ; Show message 1.
    db $01, $62
    ; End script.
    db $ff

C1Sc5_73:
    ; Test current room.
    db $19, $1a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_43
    ; Move to the room argument if the selected state permits.
    db $06, $2b
    ; Test object flag.
    db $16, $4d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_A4
    ; Show message 1.
    db $01, $67
    ; Set object flag.
    db $17, $4d
    ; End script.
    db $ff

C1Loc5_A4:
    ; Show message 1.
    db $01, $6f

C1Loc5_5C:
    ; End script.
    db $ff

C1Sc5_74:
    ; Test current room.
    db $19, $2c
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_5C
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Show message 1.
    db $01, $c7
    ; End script.
    db $ff

C1Sc5_75:
    ; Test current room.
    db $19, $1b
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_46

C1Loc5_5D:
    ; Move to the room argument if the selected state permits.
    db $06, $2c
    ; Show message 1.
    db $01, $76

C1Loc5_5E:
    ; End script.
    db $ff

C1Sc5_76:
    ; End script.
    db $ff

C1Sc5_77:
    ; Test current room.
    db $19, $2c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_5E

C1Loc5_5F:
    ; Show message 0.
    db $00, $48
    ; End script.
    db $ff

C1Sc5_78:
    ; Test current room.
    db $19, $2c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_5D

C1Loc5_60:
    ; Test object flag.
    db $16, $16
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_61
    ; Set object flag.
    db $17, $0a

C1Loc5_61:
    ; Move to the room argument if the selected state permits.
    db $06, $2f
    ; Test object flag.
    db $16, $4e
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_A6
    ; Play audio.
    db $5f, $0d
    ; Test object flag.
    db $16, $25
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_A5
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $86
    ; Show message 1.
    db $01, $ac
    ; Resume text.
    db $45
    ; Run scene effect.
    db $46, $19
    ; Set object flag.
    db $17, $4e
    ; End script.
    db $ff

C1Loc5_A5:
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $86
    ; Show message 2.
    db $02, $28
    ; Show message 1.
    db $01, $ac

jr_006_7b87:
    ; Set object flag.
    db $17, $4e
    ; End script.
    db $ff

C1Loc5_A6:
    ; Test object flag.
    db $16, $25
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_A7
    ; Show message 1.
    db $01, $82
    ; Run scene effect.
    db $46, $19
    ; End script.
    db $ff

C1Loc5_A7:
    ; Show message 1.
    db $01, $82
    ; End script.
    db $ff

C1Sc5_79:
    ; Test current room.
    db $19, $2d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_62
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $5f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_63
    ; Show message 0.
    db $00, $43

C1Loc5_62:
    ; End script.
    db $ff

C1Loc5_63:
    ; Show message 1.
    db $01, $78
    ; End script.
    db $ff

C1Sc5_7A:
    ; Test current room.
    db $19, $2d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_64
    ; Move to the room argument if the selected state permits.
    db $06, $2e
    ; Test object flag.
    db $16, $4f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_A8
    ; Show message 1.
    db $01, $7a
    ; Set object flag.
    db $17, $4f
    ; End script.
    db $ff

C1Loc5_64:
    ; Move to the room argument if the selected state permits.
    db $06, $2d
    ; Show message 1.
    db $01, $78
    ; End script.
    db $ff

C1Loc5_A8:
    ; Show message 1.
    db $01, $84
    ; End script.
    db $ff

C1Sc5_7B:
    ; Test current room.
    db $19, $2c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_65
    ; Show message 1.
    db $01, $77

C1Loc5_65:
    ; End script.
    db $ff

C1Sc5_7C:
    ; Test current room.
    db $19, $2c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_5D
    ; Jump to script.
    db $1c
    dw C1Loc5_64

C1Sc5_7D:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_02
    ; Test object flag.
    db $16, $16
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_66
    ; Show message 1.
    db $01, $89
    ; End script.
    db $ff

C1Loc5_66:
    ; Test object flag.
    db $16, $50
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_05
    ; Show message 1.
    db $01, $8a
    ; End script.
    db $ff

C1Sc5_7E:
    ; Test current room.
    db $19, $2f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_60
    ; Test object flag.
    db $16, $16
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_67
    ; Set object flag.
    db $17, $b0
    ; Set state bit.
    db $2f, $3a
    ; Move to the room argument if the selected state permits.
    db $06, $30
    ; Wait sixty ticks.
    db $68
    ; Wait sixty ticks.
    db $68
    ; Show message 2.
    db $02, $25
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $88
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc5_67:
    ; Clear state bit.
    db $30, $3a
    ; Move to the room argument if the selected state permits.
    db $06, $30
    ; Test object flag.
    db $16, $25
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_AA
    ; Test object flag.
    db $16, $50
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_A9
    ; Show message 1.
    db $01, $8b
    ; Set object flag.
    db $17, $50
    ; End script.
    db $ff

C1Loc5_A9:
    ; Show message 1.
    db $01, $92
    ; End script.
    db $ff

C1Loc5_AA:
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $85
    ; Show message 2.
    db $02, $5a
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $5b
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Sc5_7F:
    ; Test current room.
    db $19, $1c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_68
    ; Show message 1.
    db $01, $9e

C1Loc5_68:
    ; End script.
    db $ff

C1Sc5_80:
    ; Test current room.
    db $19, $1c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_49
    ; Test object flag.
    db $16, $27
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_69
    ; Move to the room argument if the selected state permits.
    db $06, $31
    ; Show message 1.
    db $01, $a0
    ; End script.
    db $ff

C1Loc5_69:
    ; Move to the room argument if the selected state permits.
    db $06, $32
    ; Show message 1.
    db $01, $a9
    ; End script.
    db $ff

C1Sc5_81:
    ; End script.
    db $ff

C1Sc5_82:
    ; Test current room.
    db $19, $32
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_27
    ; End script.
    db $ff

C1Sc5_83:
    ; Test object flag.
    db $16, $27
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_03
    ; Test current room.
    db $19, $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_6A
    ; Move to the room argument if the selected state permits.
    db $06, $34
    ; Show message 1.
    db $01, $ae
    ; End script.
    db $ff

C1Loc5_6A:
    ; Move to the room argument if the selected state permits.
    db $06, $32
    ; Show message 1.
    db $01, $a9
    ; End script.
    db $ff

C1Sc5_84:
    ; Test current room.
    db $19, $32
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_5F
    ; End script.
    db $ff

C1Sc5_85:
    ; Test object flag.
    db $16, $27
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_03
    ; Test current room.
    db $19, $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_6A

C1Loc5_6B:
    ; Move to the room argument if the selected state permits.
    db $06, $35
    ; Show message 1.
    db $01, $ba
    ; End script.
    db $ff

C1Sc5_86:
    ; Test current room.
    db $19, $35
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_6B

C1Loc5_6C:
    ; Move to the room argument if the selected state permits.
    db $06, $36
    ; Test object flag.
    db $16, $51
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_AB
    ; Show message 1.
    db $01, $bc
    ; Set object flag.
    db $17, $51
    ; End script.
    db $ff

C1Loc5_AB:
    ; Show message 1.
    db $01, $c9
    ; End script.
    db $ff

C1Sc5_87:
    ; Test current room.
    db $19, $35
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_6B

C1Loc5_6D:
    ; Move to the room argument if the selected state permits.
    db $06, $37
    ; Test object flag.
    db $16, $52
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_AC
    ; Show message 1.
    db $01, $cb
    ; Set object flag.
    db $17, $52
    ; End script.
    db $ff

C1Loc5_AC:
    ; Show message 1.
    db $01, $d7
    ; End script.
    db $ff

C1Sc5_88:
    ; Test current room.
    db $19, $36
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_6C
    ; Jump to script.
    db $1c
    dw C1Loc5_6D

C1Sc5_89:
    ; Test current room.
    db $19, $1d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_6E
    ; Show message 1.
    db $01, $21
    ; End script.
    db $ff

C1Loc5_6E:
    ; Show message 1.
    db $01, $29
    ; End script.
    db $ff

C1Sc5_8A:
    ; Test current room.
    db $19, $1d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_33

C1Loc5_6F:
    ; Move to the room argument if the selected state permits.
    db $06, $3b
    ; Test object flag.
    db $16, $53
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_AD
    ; Show message 1.
    db $01, $20
    ; Set object flag.
    db $17, $53
    ; End script.
    db $ff

C1Loc5_AD:
    ; Show message 1.
    db $01, $24
    ; End script.
    db $ff

C1Sc5_8B:
    ; Test current room.
    db $19, $39
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_70
    ; Show message 1.
    db $01, $21
    ; End script.
    db $ff

C1Loc5_70:
    ; Show message 1.
    db $01, $29
    ; End script.
    db $ff

C1Sc5_8C:
    ; Test current room.
    db $19, $3d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_3C

C1Loc5_71:
    ; Move to the room argument if the selected state permits.
    db $06, $39
    ; Test object flag.
    db $16, $54
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_AD
    ; Show message 1.
    db $01, $25
    ; Set object flag.
    db $17, $54
    ; End script.
    db $ff

C1Sc5_8D:
    ; Test current room.
    db $19, $39
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_72
    ; Show message 1.
    db $01, $22
    ; End script.
    db $ff

C1Loc5_72:
    ; Show message 1.
    db $01, $27
    ; End script.
    db $ff

C1Sc5_8E:
    ; Test current room.
    db $19, $39
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_71
    ; Jump to script.
    db $1c
    dw C1Loc5_6F

C1Sc5_8F:
    ; Test current room.
    db $19, $39
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_73
    ; Show message 1.
    db $01, $26
    ; End script.
    db $ff

C1Loc5_73:
    ; Show message 1.
    db $01, $27
    ; End script.
    db $ff

C1Sc5_90:
    ; Test current room.
    db $19, $39
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_71
    ; Jump to script.
    db $1c
    dw C1Loc5_21

C1Sc5_91:
    ; Test current room.
    db $19, $3a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_74
    ; Show message 1.
    db $01, $23
    ; End script.
    db $ff

C1Loc5_74:
    ; Show message 1.
    db $01, $26
    ; End script.
    db $ff

C1Sc5_92:
    ; Test current room.
    db $19, $38
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_21
    ; Check Case I room event for the room argument.
    db $5e, $24

jr_006_7d17:
    ; Move to the room argument if the selected state permits.
    db $06, $38
    ; Test object flag.
    db $16, $55
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_AD
    ; Show message 1.
    db $01, $20
    ; Set object flag.
    db $17, $55
    ; End script.
    db $ff

C1Sc5_93:
    ; Show message 1.
    db $01, $26
    ; End script.
    db $ff

C1Sc5_94:
    ; Test current room.
    db $19, $39
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_71
    ; Move to the room argument if the selected state permits.
    db $06, $3c
    ; Test object flag.
    db $16, $56
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_AD
    ; Show message 1.
    db $01, $2b
    ; Set object flag.
    db $17, $56
    ; End script.
    db $ff

C1Sc5_95:
    ; Show message 2.
    db $02, $f2
    ; End script.
    db $ff

C1Sc5_96:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_76
    ; Test object flag.
    db $16, $b4
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc5_75
    ; Play audio.
    db $5f, $0d

C1Loc5_75:
    ; Test object flag.
    db $16, $5d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_77
    ; Show message 0.
    db $00, $47
    ; End script.
    db $ff

C1Loc5_76:
    ; Set text name 0.
    db $1e, $7c
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Loc5_77:
    ; Set selected state and refresh.
    db $1a
    ; Set text name 0.
    db $1e, $7c
    ; Show message 2.
    db $02, $00
    ; Set object flag.
    db $17, $b4
    ; End script.
    db $ff

C1Sc5_97:
    ; End script.
    db $ff

C1Sc5_98:
    ; Show message 1.
    db $01, $a0
    ; End script.
    db $ff

C1Sc5_99:
    ; Test current room.
    db $19, $31
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_79
    ; Test object flag.
    db $16, $27
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_01

C1Loc5_78:
    ; Move to the room argument if the selected state permits.
    db $06, $31
    ; Show message 1.
    db $01, $aa
    ; End script.
    db $ff

C1Loc5_79:
    ; Show message 1.
    db $01, $a1
    ; End script.
    db $ff

C1Sc5_9A:
    ; Test current room.
    db $19, $31
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_05
    ; Test object flag.
    db $16, $27
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc5_0B
    ; Jump to script.
    db $1c
    dw C1Loc5_78
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Sc5_9B:
    ; Test object flag.
    db $16, $27
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_7B
    ; Test current room.
    db $19, $31
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc5_7A
    ; Move to the room argument if the selected state permits.
    db $06, $31

C1Loc5_7A:
    ; Show message 1.
    db $01, $a0
    ; End script.
    db $ff

C1Loc5_7B:
    ; Move to the room argument if the selected state permits.
    db $06, $1c
    ; Show message 1.
    db $01, $9f
    ; End script.
    db $ff

C1Sc5_9C:
    ; End script.
    db $ff
