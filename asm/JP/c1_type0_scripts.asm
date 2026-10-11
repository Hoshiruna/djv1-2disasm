; Confirmed script commands; unrecognized command sequences remain raw bytes.

C1Sc0_00:
    ; Show message 0.
    db $00, $03
    ; End script.
    db $ff

C1Sc0_01:
    ; Show message 0.
    db $00, $1b
    ; End script.
    db $ff

C1Sc0_02:
    ; End script.
    db $ff

C1Sc0_03:
    ; Show message 0.
    db $00, $1a
    ; End script.
    db $ff

C1Sc0_04:
    ; Show message 0.
    db $00, $13
    ; End script.
    db $ff

C1Sc0_05:
    ; Show message 0.
    db $00, $04
    ; End script.
    db $ff

C1Sc0_06:
    ; Show message 0.
    db $00, $20
    ; End script.
    db $ff

C1Sc0_07:
    ; Show message 0.
    db $00, $14
    ; End script.
    db $ff

C1Sc0_08:
    ; Test object flag.
    db $16, $17
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_00
    ; Test object flag.
    db $16, $00
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_01
    ; Run scene effect.
    db $46, $05
    ; Set object flag.
    db $17, $17
    ; End script.
    db $ff

C1Loc0_00:
    ; Test object flag.
    db $16, $00
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_01
    ; Show message 0.
    db $00, $25
    ; End script.
    db $ff

C1Loc0_01:
    ; Show message 2.
    db $02, $6a
    ; End script.
    db $ff

C1Sc0_09:
    ; Show message 0.
    db $00, $21
    ; End script.
    db $ff

C1Sc0_0A:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 0.
    db $00, $27
    ; Test object flag.
    db $16, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_17
    ; Show message 2.
    db $02, $38
    ; End script.
    db $ff

C1Loc0_17:
    ; Resume text.
    db $45
    ; End script.
    db $ff

C1Sc0_0B:
    ; Show message 2.
    db $02, $3c
    ; End script.
    db $ff

C1Sc0_0C:
    ; Show message 0.
    db $00, $2f
    ; End script.
    db $ff

C1Sc0_0D:
    ; Test object flag.
    db $16, $01
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_01
    ; Show message 0.
    db $00, $2d
    ; End script.
    db $ff

C1Sc0_0E:
    ; Show message 0.
    db $00, $30
    ; End script.
    db $ff

C1Sc0_0F:
    ; Show message 0.
    db $00, $35
    ; End script.
    db $ff

C1Sc0_10:
    ; Show message 0.
    db $00, $34
    ; End script.
    db $ff

C1Sc0_11:
    ; Show message 0.
    db $00, $41
    ; End script.
    db $ff

C1Sc0_12:
    ; Test object flag.
    db $16, $02
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_01
    ; Show message 0.
    db $00, $3c
    ; End script.
    db $ff

C1Sc0_13:
    ; Show message 0.
    db $00, $4d
    ; End script.
    db $ff

C1Sc0_14:
    ; Show message 0.
    db $00, $4a
    ; End script.
    db $ff

C1Sc0_15:
    ; Test object flag.
    db $16, $2e
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_02
    ; Show message 0.
    db $00, $4b
    ; Set object flag.
    db $17, $2e
    ; End script.
    db $ff

C1Loc0_02:
    ; Show message 0.
    db $00, $53
    ; End script.
    db $ff

C1Sc0_16:
    ; Show message 0.
    db $00, $4c
    ; End script.
    db $ff

C1Sc0_17:
    ; Test object flag.
    db $16, $6f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_03
    ; Show message 0.
    db $00, $4f
    ; End script.
    db $ff

C1Loc0_03:
    ; Show message 2.
    db $02, $3e
    ; End script.
    db $ff

C1Sc0_18:
    ; Test object flag.
    db $16, $6f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_04
    ; Finish Case I scene effect.
    db $5a, $06
    ; Set state and refresh.
    db $36, $08
    ; Show message 0.
    db $00, $51
    ; Set object flag.
    db $17, $6f
    ; End script.
    db $ff

C1Loc0_04:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Set state and refresh.
    db $36, $08
    ; Show message 2.
    db $02, $3f
    ; End script.
    db $ff

C1Sc0_19:
    ; Show message 0.
    db $00, $57
    ; End script.
    db $ff

C1Sc0_1A:
    ; Test object flag.
    db $16, $25
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_05
    ; Show message 0.
    db $00, $5f
    ; End script.
    db $ff

C1Loc0_05:
    ; Show message 0.
    db $00, $66
    ; End script.
    db $ff

C1Sc0_1B:
    ; Test object flag.
    db $16, $8c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc0_06
    ; Test Case I coins against limit.
    db $4a, $00
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc0_06
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 0.
    db $00, $60
    ; Show message 2.
    db $02, $5f
    ; Set text name 1.
    db $38, $01
    ; Show message 2.
    db $02

jr_006_468f:
    db $15
    ; Add coins, find list value zero and refresh.
    db $62, $01
    ; End script.
    db $ff

C1Loc0_06:
    ; Show message 0.
    db $00, $60
    ; End script.
    db $ff

C1Sc0_1C:
    ; Show message 2.
    db $02, $64
    ; End script.
    db $ff

C1Sc0_1D:
    ; Test state bit.
    db $2e, $0c
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_18
    ; Show message 2.
    db $02, $67
    ; Set state and refresh.
    db $33, $0c
    ; End script.
    db $ff

C1Loc0_18:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc0_1E:
    ; Show message 0.
    db $00, $6c
    ; End script.
    db $ff

C1Sc0_1F:
    ; Test current room.
    db $19, $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_19
    ; Test current room.
    db $19, $3f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_1B
    ; Clear state and refresh.
    db $34, $0f
    ; Show message 0.
    db $00, $71
    ; Set state and refresh.
    db $33, $0f
    ; End script.
    db $ff

C1Loc0_19:
    ; Clear state and refresh.
    db $34, $0c

C1Loc0_1A:
    ; Set current room.
    db $35, $40
    ; Show message 0.
    db $00, $70
    ; Set state and refresh.
    db $33, $0f
    ; End script.
    db $ff

C1Loc0_1B:
    ; Clear state and refresh.
    db $34, $0e
    ; Jump to script.
    db $1c
    dw C1Loc0_1A

C1Sc0_20:
    ; Show message 0.
    db $00, $6d
    ; End script.
    db $ff

C1Sc0_21:
    ; Test current room.
    db $19, $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_1D
    ; Test current room.
    db $19, $3f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_1E
    ; Clear state and refresh.
    db $34, $0f

C1Loc0_1C:
    ; Set current room.
    db $35, $3f
    ; Show message 0.
    db $00, $70
    ; Set state and refresh.
    db $33, $0e
    ; End script.
    db $ff

C1Loc0_1D:
    ; Clear state and refresh.
    db $34, $0c
    ; Jump to script.
    db $1c
    dw C1Loc0_1C

C1Loc0_1E:
    ; Clear state and refresh.
    db $34, $0e
    ; Show message 0.
    db $00, $71
    ; Set state and refresh.
    db $33, $0e
    ; End script.
    db $ff

C1Sc0_22:
    ; Test current room.
    db $19, $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_1F
    ; Test current room.
    db $19, $3f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_20
    ; Clear state and refresh.
    db $34, $0f
    ; Jump to script.
    db $1c
    dw C1Loc0_21

C1Loc0_1F:
    ; Clear state and refresh.
    db $34, $0c
    ; Show message 0.
    db $00, $71
    ; Set state and refresh.
    db $33, $0c
    ; End script.
    db $ff

C1Loc0_20:
    ; Clear state and refresh.
    db $34, $0e

C1Loc0_21:
    ; Set current room.
    db $35, $0a
    ; Show message 0.
    db $00, $70
    ; Set state and refresh.
    db $33, $0c
    ; End script.
    db $ff

C1Sc0_23:
    ; Show message 0.
    db $00, $6e
    ; End script.
    db $ff

C1Sc0_24:
    ; Test current room.
    db $19, $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_23
    ; Test current room.
    db $19, $3f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_24
    ; Clear state and refresh.
    db $34, $0f

C1Loc0_22:
    ; Show message 0.
    db $00, $70
    ; Set first item type and ID.
    db $5c, $05, $4c
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $38
    ; Show message 2.
    db $02, $bb
    ; End script.
    db $ff

C1Loc0_23:
    ; Clear state and refresh.
    db $34, $0c
    ; Jump to script.
    db $1c
    dw C1Loc0_22

C1Loc0_24:
    ; Clear state and refresh.
    db $34, $0e
    ; Jump to script.
    db $1c
    dw C1Loc0_22

C1Sc0_25:
    ; Show message 0.
    db $00, $79
    ; End script.
    db $ff

C1Sc0_26:
    ; Test state bit.
    db $2e, $0f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_25
    ; Show message 2.
    db $02, $67
    ; Set state and refresh.
    db $33, $0f
    ; End script.
    db $ff

C1Loc0_25:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc0_27:
    ; Test object flag.
    db $16, $25
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_07
    ; Show message 0.
    db $00, $73
    ; End script.
    db $ff

C1Loc0_07:
    ; Show message 2.
    db $02, $4d
    ; End script.
    db $ff

C1Sc0_28:
    ; Show message 2.
    db $02, $83
    ; End script.
    db $ff

C1Sc0_29:
    ; Show message 2.
    db $02, $86
    ; End script.
    db $ff

C1Sc0_2A:
    ; Show message 2.
    db $02, $98
    ; End script.
    db $ff

C1Sc0_2B:
    ; Show message 2.
    db $02, $9a
    ; End script.
    db $ff

C1Sc0_2C:
    ; Show message 2.
    db $02, $9b
    ; End script.
    db $ff

C1Sc0_2D:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $9c
    ; Show message 2.
    db $02, $70
    ; End script.
    db $ff

C1Sc0_2E:
    ; Show message 2.
    db $02, $a4
    ; End script.
    db $ff

C1Sc0_2F:
    ; Show message 2.
    db $02, $a5
    ; End script.
    db $ff

C1Sc0_30:
    ; Test object flag.
    db $16, $25
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_08
    ; Test object flag.
    db $16, $17
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_09
    ; Show message 2.
    db $02, $a6
    ; End script.
    db $ff

C1Loc0_08:
    ; Run scene effect.
    db $46, $0b
    ; End script.
    db $ff

C1Loc0_09:
    ; Run scene effect.
    db $46, $0a
    ; End script.
    db $ff

C1Sc0_31:
    ; Show message 2.
    db $02, $98
    ; End script.
    db $ff

C1Sc0_32:
    ; Show message 2.
    db $02, $b4
    ; End script.
    db $ff

C1Sc0_33:
    ; Show message 2.
    db $02, $c1
    ; End script.
    db $ff

C1Sc0_34:
    ; Show message 2.
    db $02, $c0
    ; End script.
    db $ff

C1Sc0_35:
    ; Test object flag.
    db $16, $28
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_0A
    ; Show message 2.
    db $02, $c3
    ; End script.
    db $ff

C1Loc0_0A:
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

C1Sc0_36:
    ; Show message 2.
    db $02, $c9
    ; End script.
    db $ff

C1Sc0_37:
    ; Test object flag.
    db $16, $15
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_01
    ; Show message 2.
    db $02, $cc
    ; End script.
    db $ff

C1Sc0_38:
    ; Show message 2.
    db $02, $d7
    ; End script.
    db $ff

C1Sc0_39:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $f0
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Test object flag.
    db $16, $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_26
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc0_26:
    ; Set object flag.
    db $17, $95
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Sc0_3A:
    ; Test object flag.
    db $16, $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_0B
    ; Test object flag.
    db $16, $06
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_0C
    ; Test object flag.
    db $16, $05
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_0D
    ; Finish Case I scene effect.
    db $5a, $06
    ; Show message 1.
    db $01, $ef
    ; Set first item type and ID.
    db $5c, $05, $19
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $11
    ; Show message 2.
    db $02, $b9
    ; Set object flag.
    db $17, $05
    ; End script.
    db $ff

C1Loc0_0B:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $f7
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set object flag.
    db $17, $95
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc0_0C:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Show message 1.
    db $01, $f5
    ; Set first item type and ID.
    db $5c, $05, $17
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $12
    ; Show message 2.
    db $02, $c2
    ; Set object flag.
    db $17, $07
    ; End script.
    db $ff

C1Loc0_0D:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Show message 1.
    db $01, $f2
    ; Set first item type and ID.
    db $5c, $05, $1d
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $14
    ; Set object flag.
    db $17, $06
    ; Test object flag.
    db $16, $7a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc0_29
    ; Show message 2.
    db $02, $d0
    ; End script.
    db $ff

C1Loc0_29:
    ; Set text name 0.
    db $1e, $b1
    ; Show message 2.
    db $02, $0b
    ; Add quick-list value.
    db $42, $a3
    ; Set object flag.
    db $17, $7a
    ; End script.
    db $ff

C1Sc0_3B:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Show message 1.
    db $01, $e4
    ; Clear Case I cash and draw room $16.
    db $63
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $e5
    ; Show message 1.
    db $01, $e7
    ; End script.
    db $ff

C1Sc0_3C:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Show message 1.
    db $01, $e2
    ; Clear Case I cash and draw room $16.
    db $63
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $e5
    ; Show message 1.
    db $01, $e7
    ; End script.
    db $ff

C1Sc0_3D:
    ; Show message 2.
    db $02, $d3
    ; End script.
    db $ff

C1Sc0_3E:
    ; Show message 2.
    db $02, $ad
    ; End script.
    db $ff

C1Sc0_3F:
    ; Show message 2.
    db $02, $af
    ; End script.
    db $ff

C1Sc0_40:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Finish Case I scene effect.
    db $5a, $16
    ; Show message 2.
    db $02, $e6
    ; Wait sixty ticks.
    db $68
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Sc0_41:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Show message 2.
    db $02, $e7
    ; Set object flag.
    db $17, $92
    ; Set first item type and ID.
    db $5c, $05, $19
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $21
    ; Show message 2.
    db $02, $e8
    ; End script.
    db $ff

C1Sc0_42:
    ; Show message 2.
    db $02, $e9
    ; End script.
    db $ff

C1Sc0_43:
    ; Show message 2.
    db $02, $37
    ; End script.
    db $ff

C1Sc0_44:
    ; Show message 2.
    db $02, $dc
    ; End script.
    db $ff

C1Sc0_45:
    ; Show message 2.
    db $02, $e0
    ; End script.
    db $ff

C1Sc0_46:
    ; Run scene effect.
    db $46, $06
    ; Show message 2.
    db $02, $df
    ; End script.
    db $ff

C1Sc0_47:
    ; Show message 1.
    db $01, $01
    ; End script.
    db $ff

C1Sc0_48:
    ; Show message 2.
    db $02, $51
    ; End script.
    db $ff

C1Sc0_49:
    ; Show message 2.
    db $02, $5c
    ; End script.
    db $ff

C1Sc0_4A:
    ; Show message 1.
    db $01, $04
    ; End script.
    db $ff

C1Sc0_4B:
    ; Show message 1.
    db $01, $05
    ; End script.
    db $ff

C1Sc0_4C:
    ; Show message 2.
    db $02, $f3
    ; End script.
    db $ff

C1Sc0_4D:
    ; Show message 1.
    db $01, $08
    ; End script.
    db $ff

C1Sc0_4E:
    ; Finish Case I scene effect.
    db $5a, $08
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $0d
    ; Show message 1.
    db $01, $0e
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Sc0_4F:
    ; Test object flag.
    db $16, $1a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_0E
    ; Test object flag.
    db $16, $87
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_0F
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $f4
    ; Show message 2.
    db $02, $21
    ; Set object flag.
    db $17, $70
    ; Set object flag.
    db $17, $b2
    ; End script.
    db $ff

C1Loc0_0E:
    ; Show message 2.
    db $02, $fc
    ; End script.
    db $ff

C1Loc0_0F:
    ; Show message 2.
    db $02, $21
    ; Set object flag.
    db $17, $b2
    ; End script.
    db $ff

C1Sc0_50:
    ; Test object flag.
    db $16, $85
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_10
    ; Show message 2.
    db $02, $fb
    ; End script.
    db $ff

C1Loc0_10:
    ; Show message 0.
    db $00, $14
    ; End script.
    db $ff

C1Sc0_51:
    ; Show message 2.
    db $02, $ff
    ; End script.
    db $ff

C1Sc0_52:
    ; Show message 1.
    db $01, $11
    ; End script.
    db $ff

C1Sc0_53:
    ; Show message 1.
    db $01, $1e
    ; End script.
    db $ff

C1Sc0_54:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $1d
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Sc0_55:
    ; Show message 1.
    db $01, $14
    ; End script.
    db $ff

C1Sc0_56:
    ; Show message 1.
    db $01, $3d
    ; End script.
    db $ff

C1Sc0_57:
    ; Test object flag.
    db $16, $81
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_11
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $3a
    ; Choose room from list.
    db $41
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_2A
    ; Use room from argument 3.
    db $43
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_2B
    ; Set object flag.
    db $17, $a9
    ; Show message 0.
    db $00, $64
    ; Play pick effect.
    db $6a
    ; Show message 1.
    db $01, $3b
    ; Restore text lists and resume text.
    db $44

C1Loc0_2A:
    ; End script.
    db $ff

C1Loc0_2B:
    ; Show message 2.
    db $02, $c8
    ; Restore text lists and resume text.
    db $44
    ; End script.
    db $ff

C1Loc0_11:
    ; Show message 2.
    db $02, $6e
    ; End script.
    db $ff

C1Sc0_58:
    ; Show message 2.
    db $02, $34
    ; End script.
    db $ff

C1Sc0_59:
    ; Show message 2.
    db $02, $33
    ; End script.
    db $ff

C1Sc0_5A:
    ; Show message 1.
    db $01, $3e
    ; End script.
    db $ff

C1Sc0_5B:
    ; Show message 2.
    db $02, $0d
    ; End script.
    db $ff

C1Sc0_5C:
    ; Show message 1.
    db $01, $43
    ; End script.
    db $ff

C1Sc0_5D:
    ; Test object flag.
    db $16, $a0
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_12
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $46
    ; Choose room from list.
    db $41
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_2C
    ; Use room from argument 3.
    db $43
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_2D
    ; Set object flag.
    db $17, $a9
    ; Show message 0.
    db $00, $67
    ; Play pick effect.
    db $6a
    ; Show message 1.
    db $01, $45
    ; Restore text lists and resume text.
    db $44

C1Loc0_2C:
    ; End script.
    db $ff

C1Loc0_2D:
    ; Show message 2.
    db $02, $d2
    ; Restore text lists and resume text.
    db $44
    ; End script.
    db $ff

C1Loc0_12:
    ; Show message 2.
    db $02, $6f
    ; End script.
    db $ff

C1Sc0_5E:
    ; Show message 1.
    db $01, $3e
    ; End script.
    db $ff

C1Sc0_5F:
    ; Show message 1.
    db $01, $48
    ; End script.
    db $ff

C1Sc0_60:
    ; Test object flag.
    db $16, $ac
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_13
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $4c
    ; Show message 2.
    db $02, $40
    ; End script.
    db $ff

C1Loc0_13:
    ; Show message 1.
    db $01, $4c
    ; End script.
    db $ff

C1Sc0_61:
    ; Show message 1.
    db $01, $50
    ; End script.
    db $ff

C1Sc0_62:
    ; Show message 1.
    db $01, $54
    ; End script.
    db $ff

C1Sc0_63:
    ; Show message 1.
    db $01, $56
    ; End script.
    db $ff

C1Sc0_64:
    ; Show message 1.
    db $01, $55
    ; End script.
    db $ff

C1Sc0_65:
    ; Show message 1.
    db $01, $58
    ; End script.
    db $ff

C1Sc0_66:
    ; Show message 1.
    db $01, $5d
    ; End script.
    db $ff

C1Sc0_67:
    ; Show message 1.
    db $01, $57
    ; End script.
    db $ff

C1Sc0_68:
    ; Show message 1.
    db $01, $59
    ; End script.
    db $ff

C1Sc0_69:
    ; Test object flag.
    db $16, $09
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_01
    ; Show message 1.
    db $01, $5b
    ; End script.
    db $ff

C1Sc0_6A:
    ; Show message 1.
    db $01, $6b
    ; End script.
    db $ff

C1Sc0_6B:
    ; Show message 1.
    db $01, $91
    ; End script.
    db $ff

C1Sc0_6C:
    ; Show message 2.
    db $02, $2c
    ; End script.
    db $ff

C1Sc0_6D:
    ; Show message 1.
    db $01, $74
    ; End script.
    db $ff

C1Sc0_6E:
    ; Show message 1.
    db $01, $7d
    ; End script.
    db $ff

C1Sc0_6F:
    ; Show message 1.
    db $01, $7b
    ; End script.
    db $ff

C1Sc0_70:
    ; Show message 1.
    db $01, $91
    ; End script.
    db $ff

C1Sc0_71:
    ; Test object flag.
    db $16, $91
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_14
    ; Show message 1.
    db $01, $8e
    ; End script.
    db $ff

C1Loc0_14:
    ; Show message 1.
    db $01, $94
    ; End script.
    db $ff

C1Sc0_72:
    ; End script.
    db $ff

C1Sc0_73:
    ; Show message 1.
    db $01, $a0
    ; End script.
    db $ff

C1Sc0_74:
    ; Show message 1.
    db $01, $a3
    ; Set first item type and ID.
    db $5c, $05, $49
    ; Set object flag.
    db $17, $b0
    ; Set state bit.
    db $2f, $3b
    ; Move to the room argument if the selected state permits.
    db $06, $32
    ; Wait sixty ticks.
    db $68
    ; Wait sixty ticks.
    db $68
    ; Show message 1.
    db $01, $a4
    ; End script.
    db $ff

C1Sc0_75:
    ; Show message 1.
    db $01, $a5
    ; End script.
    db $ff

C1Sc0_76:
    ; Show message 2.
    db $02, $35
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

C1Sc0_77:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Show message 1.
    db $01, $ad
    ; Set object flag.
    db $17, $27
    ; Clear state and refresh.
    db $34, $3b
    ; End script.
    db $ff

C1Sc0_78:
    ; Show message 1.
    db $01, $a8
    ; End script.
    db $ff

C1Sc0_79:
    ; Show message 1.
    db $01, $b7
    ; End script.
    db $ff

C1Sc0_7A:
    ; Show message 1.
    db $01, $be
    ; End script.
    db $ff

C1Sc0_7B:
    ; Show message 1.
    db $01, $bd
    ; End script.
    db $ff

C1Sc0_7C:
    ; Test object flag.
    db $16, $72
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_15
    ; Show message 1.
    db $01, $c1
    ; End script.
    db $ff

C1Loc0_15:
    ; Show message 2.
    db $02, $47
    ; End script.
    db $ff

C1Sc0_7D:
    ; Show message 1.
    db $01, $ca
    ; End script.
    db $ff

C1Sc0_7E:
    ; Show message 2.
    db $02, $36
    ; End script.
    db $ff

C1Sc0_7F:
    ; Test object flag.
    db $16, $14
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_01
    ; Show message 1.
    db $01, $cc
    ; End script.
    db $ff

C1Sc0_80:
    ; Show message 1.
    db $01, $cd
    ; End script.
    db $ff

C1Sc0_81:
    ; Show message 1.
    db $01, $ce
    ; End script.
    db $ff

C1Sc0_82:
    ; Show message 1.
    db $01, $cf
    ; Set object flag.
    db $17, $74
    ; End script.
    db $ff

C1Sc0_83:
    ; Show message 1.
    db $01, $ca
    ; End script.
    db $ff

C1Sc0_84:
    ; Show message 1.
    db $01, $23
    ; End script.
    db $ff

C1Sc0_85:
    ; Show message 1.
    db $01, $34
    ; End script.
    db $ff

C1Sc0_86:
    ; Show message 1.
    db $01, $37
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Sc0_87:
    ; Test object flag.
    db $16, $16
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_16
    ; Show message 1.
    db $01, $89
    ; End script.
    db $ff

C1Loc0_16:
    ; Test state bit.
    db $2e, $38
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_28
    ; Test object flag.
    db $16, $50
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc0_27
    ; Show message 1.
    db $01, $8a
    ; End script.
    db $ff

C1Loc0_27:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Loc0_28:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc0_88:
    ; Show message 2.
    db $02, $65
    ; End script.
    db $ff

C1Sc0_89:
    ; Show message 2.
    db $02, $66
    ; End script.
    db $ff

C1Sc0_8A:
    ; Show message 2.
    db $02, $70
    ; End script.
    db $ff

C1Sc0_8B:
    ; Show message 1.
    db $01, $90
    ; End script.
    db $ff

C1Sc0_8C:
    ; Show message 2.
    db $02, $60
    ; End script.
    db $ff

C1Sc0_8D:
    ; Show message 2.
    db $02, $79
    ; End script.
    db $ff

C1Sc0_8E:
    ; Show message 2.
    db $02, $7a
    ; End script.
    db $ff

C1Sc0_8F:
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff
