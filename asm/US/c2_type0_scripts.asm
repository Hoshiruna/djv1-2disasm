; Confirmed script commands; unrecognized command sequences remain raw bytes.

C2Sc0_00:
    ; Show message 0.
    db $00, $09
    ; End script.
    db $ff

C2Sc0_01:
    ; Set text name 0.
    db $30, $b2
    ; Show message 3.
    db $2c, $13
    ; End script.
    db $ff

C2Sc0_02:
    ; Set text name 0.
    db $30, $b1
    ; Show message 3.
    db $2c, $13
    ; End script.
    db $ff

C2Sc0_03:
    ; Test object visibility.
    db $28, $03
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_00

jr_007_46f2:
    ; Show message 0.
    db $00, $0e
    ; End script.
    db $ff

C2Loc0_00:
    ; Run scene effect.
    db $39, $01
    ; Play audio.
    db $3e, $0a
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $0d
    ; Wait sixty ticks.
    db $7e
    ; Restore saved Case II effect.
    db $3a
    ; End script.
    db $ff

C2Sc0_04:
    ; Show message 0.
    db $00, $0f
    ; End script.
    db $ff

C2Sc0_05:
    ; Test object flag and branch when set.
    db $08, $01
    dw C2Loc0_01
    ; Test object flag and branch when set.
    db $08, $02
    dw C2Loc0_02
    ; End script.
    db $ff

C2Loc0_01:
    ; Test object flag and branch when set.
    db $08, $02
    dw C2Loc0_03
    ; Show message 0.
    db $00, $10
    ; End script.
    db $ff

C2Loc0_02:
    ; Show message 0.
    db $00, $12
    ; End script.
    db $ff

C2Loc0_03:
    ; Show message 0.
    db $00, $11
    ; End script.
    db $ff

C2Sc0_06:
    ; Test object visibility.
    db $28, $07
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Show message 0.
    db $00, $35
    ; End script.
    db $ff

C2Loc0_04:
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $01
    ; End script.
    db $ff

C2Sc0_07:
    ; Show message 0.
    db $00, $36
    ; End script.
    db $ff

C2Sc0_08:
    ; Test object visibility.
    db $28, $05
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_00
    ; Show message 0.
    db $00, $0e
    ; End script.
    db $ff

C2Sc0_09:
    ; Show message 0.
    db $00, $37
    ; End script.
    db $ff

C2Sc0_0A:
    ; Show message 0.
    db $00, $38
    ; End script.
    db $ff

C2Sc0_0B:
    ; Show message 0.
    db $00, $49
    ; End script.
    db $ff

C2Sc0_0C:
    ; Show message 0.
    db $00, $4a
    ; End script.
    db $ff

C2Sc0_0D:
    ; Show message 0.
    db $00, $4b
    ; End script.
    db $ff

C2Sc0_0E:
    ; Show message 0.
    db $00, $4c
    ; End script.
    db $ff

C2Sc0_0F:
    ; Show message 0.
    db $00, $4d
    ; End script.
    db $ff

C2Sc0_10:
    ; Show message 0.
    db $00, $75
    ; End script.
    db $ff

C2Sc0_11:
    ; Show message 0.
    db $00, $76
    ; End script.
    db $ff

C2Sc0_12:
    ; Show message 0.
    db $00, $77

Call_007_474e:
Jump_007_474e:
    ; End script.
    db $ff

C2Sc0_13:
    ; Show message 0.
    db $00, $78
    ; End script.
    db $ff

C2Sc0_14:
    ; Show message 0.
    db $00, $7d
    ; End script.
    db $ff

C2Sc0_15:
    ; Show message 0.
    db $00, $7e
    ; End script.
    db $ff

C2Sc0_16:
    ; Show message 0.
    db $00, $7f
    ; End script.
    db $ff

C2Sc0_17:
    ; Show message 0.
    db $00, $80
    ; End script.
    db $ff

C2Sc0_18:
    ; Show message 0.
    db $00, $8a
    ; End script.
    db $ff

C2Sc0_19:
    ; Show message 0.
    db $00, $95
    ; End script.
    db $ff

C2Sc0_1A:
    ; Test object flag and branch when set.
    db $08, $0e
    dw C2Loc0_05
    ; Show message 0.
    db $00, $96
    ; End script.
    db $ff

C2Loc0_05:
    ; Show message 0.
    db $00, $97
    ; End script.
    db $ff

C2Sc0_1B:
Jump_007_476e:
    ; Show message 0.
    db $00, $9e
    ; End script.
    db $ff

C2Sc0_1C:
    ; Test object flag and branch when set.
    db $08, $0f
    dw C2Loc0_06
    ; Test object visibility.
    db $28, $0f
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_07
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $9f
    ; Show message 0.
    db $00, $a0
    ; End script.
    db $ff

C2Loc0_06:
    ; Show message 0.
    db $00, $9f
    ; End script.
    db $ff

C2Loc0_07:
    ; End script.
    db $ff

C2Sc0_1D:
    ; Set script value 0.
    db $49, $01
    ; Show message 3.
    db $2c, $07
    ; End script.
    db $ff

C2Sc0_1E:
    ; Set script value 0.
    db $49, $02
    ; Show message 3.
    db $2c, $07
    ; End script.
    db $ff

C2Sc0_1F:
    ; Set script value 0.
    db $49, $03
    ; Show message 3.
    db $2c, $07
    ; End script.
    db $ff

C2Sc0_20:
    ; Show message 0.
    db $00, $53
    ; End script.
    db $ff

C2Sc0_21:
    ; Show message 0.
    db $00, $58
    ; End script.
    db $ff

C2Sc0_22:
    ; Show message 0.
    db $00, $cd
    ; End script.
    db $ff

C2Sc0_23:
    ; Show message 0.
    db $00, $ce
    ; End script.
    db $ff

C2Sc0_24:
    ; Show message 0.
    db $00, $cf
    ; End script.
    db $ff

C2Sc0_25:
    ; Show message 0.
    db $00, $e0
    ; End script.
    db $ff

C2Sc0_26:
    ; Show message 0.
    db $00, $e2
    ; End script.
    db $ff

C2Sc0_27:
    ; Show message 0.
    db $00, $e4
    ; End script.
    db $ff

C2Sc0_28:
    ; Show message 0.
    db $00, $e6
    ; End script.
    db $ff

C2Sc0_29:
    ; Show message 0.
    db $00, $e7
    ; End script.
    db $ff

C2Sc0_2A:
    ; Show message 0.
    db $00, $e9
    ; End script.
    db $ff

C2Sc0_2B:
    ; Test object visibility.
    db $28, $22
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Show message 0.
    db $00, $f2
    ; End script.
    db $ff

C2Sc0_2C:
    ; Test object visibility.
    db $28, $23
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Show message 0.
    db $00, $f2
    ; End script.
    db $ff

C2Sc0_2D:
    ; Show message 0.
    db $00, $f4
    ; End script.
    db $ff

C2Sc0_2E:
    ; Show message 0.
    db $00, $f7
    ; End script.
    db $ff

C2Sc0_2F:
    ; Set script value 0.
    db $49, $06
    ; Show message 3.
    db $2c, $08
    ; End script.
    db $ff

C2Sc0_30:
    ; Set script value 0.
    db $49, $07
    ; Show message 3.
    db $2c, $08
    ; End script.
    db $ff

C2Sc0_31:
    ; Set script value 0.
    db $49, $08
    ; Show message 3.
    db $2c, $08

jr_007_47d8:
    ; End script.
    db $ff

C2Sc0_32:
    ; Set script value 0.
    db $49, $09
    ; Show message 3.
    db $2c, $08
    ; End script.
    db $ff

C2Sc0_33:
    ; Show message 0.
    db $00, $f8
    ; End script.
    db $ff

C2Sc0_34:
jr_007_47e1:
    ; Show message 0.
    db $00, $f9
    ; End script.
    db $ff

C2Sc0_35:
    ; Show trains six through nine.
    db $59
    ; End script.
    db $ff

C2Sc0_36:
    ; Show message 0.
    db $00, $0b
    ; End script.
    db $ff

C2Sc0_37:
    ; Show message 0.
    db $00, $0c
    ; End script.
    db $ff

C2Sc0_38:
    ; Show message 0.
    db $00, $16
    ; End script.
    db $ff

C2Sc0_39:
    ; Test room argument and branch on equality.
    db $25, $17
    dw C2Loc0_08
    ; Test room argument and branch on equality.
    db $25, $18
    dw C2Loc0_09
    ; Test room argument and branch on equality.
    db $25, $19
    dw C2Loc0_0A
    ; Test room argument and branch on equality.
    db $25, $1a
    dw C2Loc0_0B
    ; Test room argument and branch on equality.
    db $25, $2c
    dw C2Loc0_0C
    ; Test room argument and branch on equality.
    db $25, $2d
    dw C2Loc0_0D
    ; Test room argument and branch on equality.
    db $25, $2e
    dw C2Loc0_0E

jr_007_480b:
    ; Set script value 0.
    db $49, $05
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

C2Loc0_08:
    ; Set script value 0.
    db $49, $06
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

C2Loc0_09:
    ; Set script value 0.
    db $49, $07
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

C2Loc0_0A:
    ; Set script value 0.
    db $49, $08
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

C2Loc0_0B:
    ; Set script value 0.
    db $49, $09
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

C2Loc0_0C:
    ; Set script value 0.
    db $49, $02
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

C2Loc0_0D:
    ; Set script value 0.
    db $49, $03
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

C2Loc0_0E:
    ; Set script value 0.
    db $49, $04
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

C2Sc0_3A:
    ; Show message 0.
    db $00, $8b
    ; End script.
    db $ff

C2Sc0_3B:
    ; Show message 2.
    db $02, $23
    ; End script.
    db $ff

C2Sc0_3C:
    ; Show message 2.
    db $02, $24
    ; End script.
    db $ff

C2Sc0_3D:
    ; Show message 2.
    db $02, $25
    ; End script.
    db $ff

C2Sc0_3E:
    ; Select the current train fare.
    db $5e
    ; Show message 3.
    db $2c, $40
    ; End script.
    db $ff

C2Sc0_3F:
    ; Show message 2.
    db $02, $28
    ; End script.
    db $ff

C2Sc0_40:
    ; Show message 2.
    db $02, $29
    ; End script.
    db $ff

C2Sc0_41:
    ; Test object flag and branch when set.
    db $08, $18
    dw C2Loc0_0F
    ; Show message 2.
    db $02, $33
    ; End script.
    db $ff

C2Loc0_0F:
    ; Show message 2.
    db $02, $3a
    ; End script.
    db $ff

C2Sc0_42:
    ; Show message 2.
    db $02, $3b
    ; End script.
    db $ff

C2Sc0_43:
    ; Set script value 0.
    db $49, $02
    ; Show message 3.
    db $2c, $08
    ; End script.
    db $ff

C2Sc0_44:
    ; Set script value 0.
    db $49, $03
    ; Show message 3.
    db $2c, $08
    ; End script.
    db $ff

C2Sc0_45:
    ; Set script value 0.
    db $49, $04
    ; Show message 3.
    db $2c, $08
    ; End script.
    db $ff

C2Sc0_46:
    ; Set script value 0.
    db $49, $05
    ; Show message 3.
    db $2c, $08
    ; End script.
    db $ff

C2Sc0_47:
    ; Show message 1.
    db $01, $02
    ; End script.
    db $ff

C2Sc0_48:
    ; Show trains two through five.
    db $58
    ; End script.
    db $ff

C2Sc0_49:
    ; Test state bit.
    db $0e, $a0
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_10
    ; Show message 1.
    db $01, $04
    ; End script.
    db $ff

C2Loc0_10:
    ; Show message 1.
    db $01, $05
    ; End script.
    db $ff

C2Sc0_4A:
    ; Show message 1.
    db $01, $06
    ; End script.
    db $ff

C2Sc0_4B:
    ; Test object flag and branch when set.
    db $08, $3c
    dw C2Loc0_11
    ; Run scene effect.
    db $39, $04
    ; Play audio.
    db $3e, $0a
    ; Set object flag.
    db $09, $3c
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 1.
    db $01, $07
    ; Wait sixty ticks.
    db $7e
    ; Restore saved Case II effect.
    db $3a
    ; End script.
    db $ff

C2Loc0_11:
    ; Show message 1.
    db $01, $08
    ; End script.
    db $ff

C2Sc0_4C:
    ; Show message 1.
    db $01, $36
    ; End script.
    db $ff

C2Sc0_4D:
    ; Test state bit.
    db $0e, $b3
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Show message 0.
    db $00, $f2
    ; End script.
    db $ff

C2Sc0_4E:
    ; Test state bit.
    db $0e, $b2
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Show message 1.
    db $01, $38
    ; End script.
    db $ff

C2Sc0_4F:
    ; Show message 1.
    db $01, $3f
    ; End script.
    db $ff

C2Sc0_50:
    ; Show message 1.
    db $01, $40
    ; End script.
    db $ff

C2Sc0_51:
    ; Show message 1.
    db $01, $41
    ; End script.
    db $ff

C2Sc0_52:
    ; Show message 1.
    db $01, $42
    ; End script.
    db $ff

C2Sc0_53:
    ; Show message 1.
    db $01, $53
    ; End script.
    db $ff

C2Sc0_54:
    ; Show message 1.
    db $01, $58
    ; End script.
    db $ff

C2Sc0_55:
    ; Show message 1.
    db $01, $59
    ; End script.
    db $ff

C2Sc0_56:
    ; Show message 1.
    db $01, $6a
    ; End script.
    db $ff

C2Sc0_57:
    ; Show message 1.
    db $01, $6b
    ; End script.
    db $ff

C2Sc0_58:
    ; Show message 1.
    db $01, $6c
    ; End script.
    db $ff

C2Sc0_59:
    ; Show message 1.
    db $01, $6d
    ; End script.
    db $ff

C2Sc0_5A:
    ; Show message 1.
    db $01, $98
    ; End script.
    db $ff

C2Sc0_5B:
    ; Test state bit.
    db $0e, $a5
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Show message 1.
    db $01, $98
    ; End script.
    db $ff

C2Sc0_5C:
    ; Show message 1.
    db $01, $99
    ; End script.
    db $ff

C2Sc0_5D:
    ; Show message 1.
    db $01, $e1
    ; End script.
    db $ff

C2Sc0_5E:
    ; Show message 1.
    db $01, $e2
    ; End script.
    db $ff

C2Sc0_5F:
    ; Show message 1.
    db $01, $e3
    ; End script.
    db $ff

C2Sc0_60:
    ; Show message 1.
    db $01, $ee
    ; End script.
    db $ff

C2Sc0_61:
    ; Show message 1.
    db $01, $ef
    ; End script.
    db $ff

C2Sc0_62:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $fc
    ; Test object flag and branch when set.
    db $08, $61
    dw C2Sc0_B9
    ; Show message 1.
    db $01, $fb
    ; End script.
    db $ff

C2Sc0_63:
    ; Show message 1.
    db $01, $f6
    ; End script.
    db $ff

C2Sc0_64:
    ; Show message 1.
    db $01, $f5
    ; End script.
    db $ff

C2Sc0_65:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $f7
    ; Test state bit.
    db $0e, $61
    ; Branch if result bit 0 is set.
    db $03
    dw C2Sc0_B9
    ; Show message 1.
    db $01, $f8
    ; End script.
    db $ff

C2Sc0_66:
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C2Sc0_67:
    ; Show message 2.
    db $02, $06
    ; End script.
    db $ff

C2Sc0_68:
    ; Show message 1.
    db $01, $ac
    ; End script.
    db $ff

C2Sc0_69:
    ; Test state bit.
    db $0e, $58
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_12
    ; Show message 1.
    db $01, $aa
    ; End script.
    db $ff

C2Loc0_12:
    ; Show message 1.
    db $01, $ab
    ; End script.
    db $ff

C2Sc0_6A:
    ; Show message 1.
    db $01, $a5
    ; End script.
    db $ff

C2Sc0_6B:
    ; Show message 1.
    db $01, $ba
    ; End script.
    db $ff

C2Sc0_6C:
    ; Show message 1.
    db $01, $bb
    ; End script.
    db $ff

C2Sc0_6D:
    ; Show message 2.
    db $02, $14
    ; End script.
    db $ff

C2Sc0_6E:
    ; Show message 2.
    db $02, $15
    ; End script.
    db $ff

C2Sc0_6F:
    ; Show message 2.
    db $02, $16
    ; End script.
    db $ff

C2Sc0_70:
    ; Show message 2.
    db $02, $1a
    ; End script.
    db $ff

C2Sc0_71:
    ; Test object visibility.
    db $28, $45
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Show message 2.
    db $02, $2d
    ; End script.
    db $ff

C2Sc0_72:
    ; Show message 2.
    db $02, $2e
    ; End script.
    db $ff

C2Sc0_73:
    ; Show message 2.
    db $02, $2f
    ; End script.
    db $ff

C2Sc0_74:
    ; Show message 2.
    db $02, $3f
    ; End script.
    db $ff

C2Sc0_75:
    ; Show message 2.
    db $02, $40
    ; End script.
    db $ff

C2Sc0_76:
    ; Show message 2.
    db $02, $41
    ; End script.
    db $ff

C2Sc0_77:
jr_007_493d:
    ; Show message 2.
    db $02, $73
    ; End script.
    db $ff

C2Sc0_78:
    ; Show message 2.
    db $02, $76
    ; End script.
    db $ff

C2Sc0_79:
    ; Show message 0.
    db $00, $2d
    ; End script.
    db $ff

C2Sc0_7A:
    ; Show message 3.
    db $2c, $4f
    ; End script.
    db $ff

C2Sc0_7B:
    ; Set object flag.
    db $09, $88
    ; Choose alternate target; selected input runs the following script.
    db $2d

C2Loc0_13:
    ; Match alternate item against type, ID and script target rows.
    db $32, $00

jr_007_494e:
    db $a6
    dw C2Loc0_14
    db $03, $05
    dw C2Loc0_18
    db $fe, $fe
    dw C2Sc0_79

C2Loc0_14:
    ; Test object flag and branch when set.
    db $08, $01
    dw C2Loc0_15
    ; Test object flag and branch when set.
    db $08, $02
    dw C2Loc0_16
    ; End script.
    db $ff

C2Loc0_15:
    ; Test object flag and branch when set.
    db $08, $02
    dw C2Loc0_17
    ; Show message 0.
    db $00, $1f
    ; End script.
    db $ff

C2Loc0_16:
    ; Show message 0.
    db $00, $21
    ; End script.
    db $ff

C2Loc0_17:
    ; Show message 0.
    db $00

jr_007_496d:
    db $20
    ; End script.
    db $ff

C2Loc0_18:
    ; Show message 0.
    db $00, $22
    ; Set object flag.
    db $09, $04
    ; End script.
    db $ff

C2Sc0_7C:
    ; Set object flag.
    db $09, $88
    ; Choose alternate target; selected input runs the following script.
    db $2d

C2Loc0_19:
    ; Match alternate item against type, ID and script target rows.
    db $32, $00, $a6
    dw C2Loc0_1A
    db $fe, $fe
    dw C2Sc0_79

C2Loc0_1A:
    ; Show message 1.
    db $01, $20
    ; Jump to script.
    db $07
    dw C2Sc0_8B

C2Sc0_7D:
    ; Show message 0.
    db $00, $2c
    ; End script.
    db $ff

C2Sc0_7E:
    ; Show message 0.
    db $00, $2e
    ; End script.
    db $ff

C2Sc0_7F:
    ; Set text name 0.
    db $30, $b0
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $80
    ; Test state bit.
    db $0e, $04
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_2A
    ; Show message 3.
    db $2c, $22
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $04
    ; End script.
    db $ff

C2Sc0_80:
    ; Set text name 0.
    db $30, $b0
    ; Set script value 0.
    db $49, $01
    ; Show message 3.
    db $2c, $1f
    ; Show object.
    db $29, $10
    ; Refresh room objects.
    db $2b
    ; Test room argument and branch on equality.
    db $25, $07
    dw C2Loc0_71
    ; Test room argument and branch on equality.
    db $25, $08
    dw C2Loc0_72
    ; Test room argument and branch on equality.
    db $25, $09
    dw C2Loc0_73
    ; Test state bit.
    db $0e, $0e
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_76
    ; Show message 3.
    db $2c, $23
    ; Clear state and refresh.
    db $24, $0e
    ; Jump to script.
    db $07
    dw C2Loc0_76

C2Loc0_71:
    ; Test state bit.
    db $0e, $04
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_7B
    ; Clear state and refresh.
    db $24, $04
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    dw C2Loc0_7B

C2Loc0_72:
    ; Test state bit.
    db $0e, $09
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_77

jr_007_49d2:
    ; Clear state and refresh.
    db $24, $09
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    dw C2Loc0_77

C2Loc0_73:
    ; Test state bit.
    db $0e, $0c
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_78
    ; Clear state and refresh.
    db $24, $0c
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    dw C2Loc0_78

C2Loc0_74:
    ; Hide object.
    db $2a, $14
    ; Show object.
    db $29, $13
    ; Refresh room objects.
    db $2b

jr_007_49f2:
    ; Return to calling script.
    db $06

C2Loc0_75:
    ; Hide object.
    db $2a, $13
    ; Show object.
    db $29, $12
    ; Refresh room objects.
    db $2b
    ; Return to calling script.
    db $06

C2Loc0_76:
    ; Show message 0.
    db $00, $a5
    ; Call script.
    db $05
    dw C2Loc0_74
    ; Wait while rendering objects.
    db $47, $14
    ; Call script.
    db $05
    dw C2Loc0_75

jr_007_4a03:
    ; Wait while rendering objects.
    db $47, $14
    ; Hide object.
    db $2a, $12
    ; Show object.
    db $29, $11
    ; Refresh room objects.
    db $2b
    ; Set current room.
    db $50, $07
    ; Call script.
    db $05
    dw C2Loc0_7A
    ; Jump to script.
    db $07
    dw C2Loc0_79

C2Loc0_77:
    ; Show message 0.
    db $00

jr_007_4a13:
    db $a5
    ; Hide object.
    db $2a, $12
    ; Show object.
    db $29

jr_007_4a17:
    db $11
    ; Refresh room objects.
    db $2b
    ; Set current room.
    db $50, $07
    ; Call script.
    db $05
    dw C2Loc0_7A
    ; Jump to script.
    db $07
    dw C2Loc0_79

C2Loc0_78:
    ; Show message 0.
    db $00, $a5
    ; Call script.
    db $05
    dw C2Loc0_75
    ; Wait while rendering objects.
    db $47, $14
    ; Hide object.
    db $2a, $12
    ; Show object.
    db $29, $11
    ; Refresh room objects.
    db $2b
    ; Set current room.
    db $50, $07
    ; Call script.
    db $05
    dw C2Loc0_7A
    ; Jump to script.
    db $07
    dw C2Loc0_79

C2Loc0_79:
    ; Clear the casino guard timer.
    db $42, C2GuardIx
    ; Test object visibility.
    db $28, $0f
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Sc0_B9
    ; Run scene effect.
    db $39, $0e
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $f3
    ; Wait sixty ticks.
    db $7e
    ; Repeat audio cue $10.
    db $77
    ; Show message 0.
    db $00, $6d

jr_007_4a48:
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

C2Loc0_7A:
    ; Wait while rendering objects.
    db $47, $18
    ; Set script value 0.
    db $49, $01
    ; Show message 3.
    db $2c, $20
    ; Hide object.
    db $2a, $10
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $04
    ; Return to calling script.
    db $06

C2Loc0_7B:
    ; Hide object.
    db $2a, $10
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $04
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 1.
    db $01, $29

jr_007_4a64:
    ; End script.
    db $ff

C2Sc0_81:
    ; Set text name 0.
    db $30, $b0
    ; Set script value 0.
    db $49, $02
    ; Show message 3.
    db $2c, $1f
    ; Show object.
    db $29, $1e
    ; Refresh room objects.
    db $2b
    ; Test room argument and branch on equality.
    db $25, $07
    dw C2Loc0_7C
    ; Test room argument and branch on equality.
    db $25, $08
    dw C2Loc0_81
    ; Test room argument and branch on equality.
    db $25, $09
    dw C2Loc0_7D
    ; Test state bit.
    db $0e, $0e
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_7E
    ; Show message 3.
    db $2c, $23
    ; Clear state and refresh.
    db $24, $0e
    ; Jump to script.
    db $07
    dw C2Loc0_7E

C2Loc0_7C:
    ; Test state bit.
    db $0e, $04
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_7F
    ; Clear state and refresh.
    db $24, $04
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    dw C2Loc0_7F

C2Loc0_7D:
    ; Test state bit.
    db $0e, $0c
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_80

jr_007_4a9b:
    ; Clear state and refresh.
    db $24, $0c
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    ; Target C2Loc0_80; retain the interior label.
    db $c1

jr_007_4aa5:
    db $4a

C2Loc0_7E:
    ; Show message 0.
    db $00, $a5
    ; Call script.
    db $05
    dw C2Loc0_74

jr_007_4aab:
    ; Wait while rendering objects.
    db $47, $14
    ; Call script.
    db $05
    dw C2Loc0_75
    ; Set current room.
    db $50, $08
    ; Jump to script.
    db $07
    dw C2Loc0_82

C2Loc0_7F:
    ; Show message 0.
    db $00, $a5
    ; Hide object.
    db $2a, $11
    ; Show object.
    db $29, $12
    ; Refresh room objects.
    db $2b

jr_007_4abc:
    ; Set current room.
    db $50, $08
    ; Jump to script.
    db $07
    dw C2Loc0_82

C2Loc0_80:
    ; Show message 0.
    db $00, $a5
    ; Call script.
    db $05
    dw C2Loc0_75
    ; Set current room.
    db $50, $08
    ; Jump to script.
    db $07
    dw C2Loc0_82

C2Loc0_81:
    ; Test state bit.
    db $0e, $09
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_83
    ; Clear state and refresh.
    db $24, $09
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    dw C2Loc0_83

C2Loc0_82:
    ; Set script value 0.
    db $49, $02
    ; Show message 3.
    db $2c, $20
    ; Hide object.
    db $2a

jr_007_4ae0:
    db $1e
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $09
    ; End script.
    db $ff

C2Loc0_83:
    ; Hide object.
    db $2a, $1e
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $09
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 1.
    db $01, $29

jr_007_4af2:
    ; End script.
    db $ff

C2Sc0_82:
    ; Set text name 0.
    db $30, $b0
    ; Set script value 0.
    db $49, $03
    ; Show message 3.
    db $2c, $1f
    ; Show object.
    db $29, $1f
    ; Refresh room objects.
    db $2b
    ; Test room argument and branch on equality.
    db $25, $07
    dw C2Loc0_84
    ; Test room argument and branch on equality.
    db $25

jr_007_4b01:
    db $08
    dw C2Loc0_85
    ; Test room argument and branch on equality.
    db $25, $09
    dw C2Loc0_89
    ; Test state bit.
    db $0e, $0e

jr_007_4b0a:
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_86
    ; Show message 3.
    db $2c, $23
    ; Clear state and refresh.
    db $24, $0e
    ; Jump to script.
    db $07
    dw C2Loc0_86

C2Loc0_84:
    ; Test state bit.
    db $0e, $04
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_87
    ; Clear state and refresh.
    db $24, $04
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    dw C2Loc0_87

C2Loc0_85:
    ; Test state bit.
    db $0e, $09
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_88

jr_007_4b29:
    ; Clear state and refresh.
    db $24, $09
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    dw C2Loc0_88

C2Loc0_86:
    ; Show message 0.
    db $00, $a5
    ; Call script.
    db $05
    dw C2Loc0_74

jr_007_4b39:
    ; Set current room.
    db $50, $09
    ; Jump to script.
    db $07
    dw C2Loc0_8A

C2Loc0_87:
    ; Show message 0.
    db $00, $a5
    ; Hide object.
    db $2a, $11
    ; Show object.
    db $29, $12
    ; Refresh room objects.
    db $2b
    ; Wait while rendering objects.
    db $47, $14
    ; Hide object.
    db $2a, $12
    ; Show object.
    db $29

jr_007_4b4a:
    db $13
    ; Refresh room objects.
    db $2b
    ; Set current room.
    db $50, $09
    ; Jump to script.
    db $07
    dw C2Loc0_8A

C2Loc0_88:
    ; Show message 0.
    db $00, $a5
    ; Hide object.
    db $2a, $12
    ; Show object.
    db $29, $13
    ; Refresh room objects.
    db $2b
    ; Set current room.
    db $50, $09

jr_007_4b5a:
    ; Jump to script.
    db $07
    dw C2Loc0_8A

C2Loc0_89:
    ; Test state bit.
    db $0e, $0c
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_8B
    ; Clear state and refresh.
    db $24, $0c
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47

jr_007_4b69:
    db $18
    ; Jump to script.
    db $07
    dw C2Loc0_8B

C2Loc0_8A:
    ; Set script value 0.
    db $49, $03
    ; Show message 3.
    db $2c, $20
    ; Hide object.
    db $2a

jr_007_4b72:
    db $1f
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $0c
    ; End script.
    db $ff

C2Loc0_8B:
    ; Hide object.
    db $2a, $1f
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $0c
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 1.
    db $01, $29

jr_007_4b84:
    ; End script.
    db $ff

C2Sc0_83:
    ; Test object flag and branch when set.
    db $08, $9d
    ; Target C2Sc0_7D; retain the interior label.
    db $85

jr_007_4b88:
    db $49
    ; Play audio.
    db $3e, $16
    ; Show message 1.
    db $01, $ff
    ; Set object flag.
    db $09

jr_007_4b8e:
    db $9d
    ; Set object flag.
    db $09, $61
    ; Draw Case II panel and marks.
    db $3c
    ; Set state and refresh without cue.
    db $22

jr_007_4b93:
    db $61
    ; Hide object.
    db $2a, $91
    ; Hide object.
    db $2a, $92
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Sc0_84:
    ; Show message 1.
    db $01, $b4
    ; End script.
    db $ff

C2Sc0_85:
    ; Test object visibility.
    db $28, $3d
    ; Branch if result bit 0 is set.
    db $03
    dw C2Sc0_7D
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $16
    ; Show message 1.
    db $01, $b3
    ; Set state and refresh without cue.
    db $22, $58
    ; Show object.
    db $29, $3d
    ; Hide object.
    db $2a, $3c
    ; Refresh room objects.
    db $2b
    ; Show message 1.
    db $01, $af
    ; End script.
    db $ff

C2Sc0_86:
    ; Set text name 0.
    db $30, $b6
    ; Call script.
    db $05
    dw C2Loc3_7D
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_1B
    ; Set state and refresh without cue.
    db $22, $06

C2Loc0_1B:
    ; Prepare room move and read two room arguments.
    db $3b, $04, $11
    ; Show message 0.
    db $00, $83
    ; Play audio.
    db $3e, $12
    ; Clear state and refresh.
    db $24, $06
    ; End script.
    db $ff

C2Sc0_87:
    ; Test object flag and branch when set.
    db $08, $0e
    dw C2Loc0_1C
    ; Set text name 0.
    db $30, $bd
    ; Jump to script.
    db $07
    dw C2Loc0_1D

C2Loc0_1C:
    ; Set text name 0.
    db $30, $be

C2Loc0_1D:
    ; Call script.
    db $05
    dw C2Loc3_7D
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_1E
    ; Set state and refresh without cue.
    db $22, $06

C2Loc0_1E:
    ; Prepare room move and read two room arguments.
    db $3b, $05, $11
    ; Show message 0.
    db $00, $83
    ; Play audio.
    db $3e, $12
    ; Clear state and refresh.
    db $24, $06
    ; End script.
    db $ff

C2Sc0_88:
    ; Play audio.
    db $3e, $17
    ; Show message 0.
    db $00, $fb
    ; Run scene effect.
    db $39, $08
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $fc
    ; Wait sixty ticks.
    db $7e

C2Loc0_1F:
    ; Resume text.
    db $2f
    ; Run scene effect.
    db $39, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $fd
    ; Wait sixty ticks.
    db $7e
    ; Run scene effect.
    db $39

jr_007_4bf8:
    db FxStogie
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $fe
    ; Play audio.
    db $3e, $10
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

C2Sc0_89:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $4d
    ; Branch when the current train clearance flag is clear.
    db $5f
    dw C2Loc0_20
    ; Run the current passenger-room effect.
    db $63

C2Loc0_20:
    ; Show message 2.
    db $02, $50
    ; Show message 2.
    db $02, $51
    ; Resume text.
    db $2f

C2Loc0_90:
    ; Call script in bank $08.
    db $7c
    dw C2Loc5_3F
    db $08
    ; Call script in bank $08.
    db $7c
    dw C2Loc5_40

jr_007_4c15:
    db $08
    ; Leave the current train for its platform.
    db $60
    ; Show message 2.
    db $02, $52
    ; End script.
    db $ff

C2Sc0_8A:
    ; Play audio.
    db $3e, $17
    ; Show message 1.
    db $01, $1d

C2Sc0_8B:
    ; Run scene effect.
    db $39, $07
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 1.
    db $01, $1e
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

C2Sc0_8C:
    ; Show message 1.
    db $01, $3b
    ; End script.
    db $ff

C2Sc0_8D:
    ; Show message 2.
    db $02, $38
    ; End script.
    db $ff

C2Sc0_8E:
Case2BathroomMirrorBreak:
    ; Test object visibility.
    db $28, $03
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Play audio.
    db $3e, $13
    ; Show object.
    db $29, $03

C2Loc0_21:
    ; Refresh room objects.
    db $2b
    ; Set text name 0.
    db $30, $ae
    ; Show message 3.
    db $2c, $00
    ; End script.
    db $ff

C2Sc0_8F:
    ; Test object flag and branch when set.
    db $08, $05
    dw C2Loc0_04
    ; Play audio.
    db $3e, $13
    ; Hide object.
    db $2a, $89
    ; Show object.
    db $29, $07
    ; Refresh room objects.
    db $2b
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $00
    ; Set object flag.
    db $09, $05
    ; End script.
    db $ff

C2Sc0_90:
    ; Test object visibility.
    db $28, $05
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Play audio.
    db $3e, $13

jr_007_4c57:
    ; Show object.
    db $29, $05
    ; Jump to script.
    db $07
    dw C2Loc0_21

C2Sc0_91:
    ; Test object visibility.
    db $28, $22
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Play audio.
    db $3e, $13
    ; Show object.
    db $29, $22
    ; Refresh room objects.
    db $2b

C2Loc0_22:
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $00
    ; Test the low two random bits.
    db $43
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_8C
    ; End script.
    db $ff

C2Sc0_92:
    ; Test object visibility.
    db $28, $23
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Play audio.
    db $3e, $13
    ; Show object.
    db $29, $23
    ; Refresh room objects.
    db $2b
    ; Jump to script.
    db $07
    dw C2Loc0_22

C2Sc0_93:
    ; Test state bit.
    db $0e, $b3
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Play audio.
    db $3e, $13

jr_007_4c83:
    ; Set state and refresh without cue.
    db $22, $b3
    ; Jump to script.
    db $07
    dw C2Loc0_22

C2Loc0_8C:
    ; Run scene effect.
    db $39, $08
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 2.
    db $02, $2a

jr_007_4c90:
    ; Wait sixty ticks.
    db $7e
    ; Jump to script.
    db $07
    dw C2Loc0_1F

C2Sc0_94:
jr_007_4c94:
    ; Test state bit.
    db $0e, $b2
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $b2
    ; Jump to script.
    db $07
    dw C2Loc0_22

C2Sc0_95:
    ; Show message 0.
    db $00, $2c
    ; End script.
    db $ff

C2Sc0_96:
    ; Test state bit.
    db $0e, $a5
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $a5
    ; Show message 0.
    db $00, $62
    ; End script.
    db $ff

C2Sc0_97:
    ; Test object visibility.
    db $28, $45
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_04
    ; Play audio.
    db $3e, $13
    ; Show object.
    db $29, $45
    ; Refresh room objects.
    db $2b
    ; Jump to script.
    db $07
    dw C2Loc0_22

C2Sc0_98:
    ; Show message 0.
    db $00, $84
    ; End script.
    db $ff

C2Sc0_99:
    ; Hold text.
    db $2e
    ; Test object flag and branch when set.
    db $08, $0e
    dw C2Loc0_23
    ; Set text name 0.
    db $30, $bd
    ; Branch when chips are zero and Case II cash is below five dollars.
    db $79
    dw C2Loc0_8E

C2Loc0_8D:
    ; Run Case II choice prompt.
    db $7b
    ; End script.
    db $ff

C2Loc0_8E:
    ; Show message 3.
    db $2c, $3c
    ; Show message 3.
    db $2c, $3d
    ; End script.
    db $ff

C2Loc0_23:
    ; Set text name 0.
    db $30, $be
    ; Branch when chips are zero and Case II cash is below five dollars.
    db $79
    dw C2Loc0_8F
    ; Jump to script.
    db $07
    dw C2Loc0_8D

C2Loc0_8F:
    ; Show message 3.
    db $2c, $3c
    ; Show message 3.
    db $2c, $3e
    ; End script.
    db $ff

C2Sc0_9A:
    ; Test object flag and branch when set.
    db $08, $31
    dw C2Loc0_24
    ; Show message 0.
    db $00, $ff
    ; Set object flag.
    db $09, $32
    ; End script.
    db $ff

C2Loc0_24:
    ; Run Case II shop.
    db $6d
    ; End script.
    db $ff

C2Sc0_9B:
    ; Show message 1.
    db $01, $09
    ; End script.
    db $ff

C2Sc0_9C:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $77
    ; Select the current train fare.
    db $5e
    ; Show message 3.
    db $2c, $0b
    ; End script.
    db $ff

C2Sc0_9D:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $53
    ; Show message 2.
    db $02

jr_007_4cf6:
    db $59
    ; End script.
    db $ff

C2Sc0_9E:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $53
    ; Show message 2.
    db $02, $5f
    ; Set object flag.
    db $09, $18
    ; End script.
    db $ff

C2Sc0_9F:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $53
    ; Test object flag and branch when set.
    db $08, $17
    dw C2Loc0_25
    ; Show message 2.
    db $02, $66
    ; Test object flag and branch when set.
    db $08, $16
    dw C2Loc0_26
    ; Show message 2.
    db $02, $6b
    ; Set object flag.
    db $09, $16
    ; End script.
    db $ff

C2Loc0_25:
    ; Run scene effect.
    db $39, FxVegasNews2
    ; Show message 0.
    db $00, $ee
    ; Resume text.
    db $2f
    ; Restore saved Case II effect.
    db $3a
    ; End script.
    db $ff

C2Loc0_26:
    ; Set object flag.
    db $09, $17

jr_007_4d1b:
    ; End script.
    db $ff

C2Sc0_A0:
    ; Test object flag and branch when set.
    db $08, $7a
    dw C2Loc0_27
    ; Test object flag and branch when set.
    db $08, $79
    dw C2Loc0_27
    ; Show message 1.
    db $01, $1b
    ; End script.
    db $ff

C2Loc0_27:
    ; Show message 1.
    db $01, $1c
    ; End script.
    db $ff

C2Sc0_A1:
    ; Test object flag and branch when set.
    db $08, $3d
    ; Target C2Loc0_28; retain the interior label.
    db $33

jr_007_4d2d:
    db $4d
    ; Show message 1.
    db $01, $19
    ; Set object flag.
    db $09, $3d
    ; End script.
    db $ff

C2Loc0_28:
    ; Show message 1.
    db $01, $1a
    ; End script.
    db $ff

C2Sc0_A2:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $45
    ; Pick destination room from the item list.
    db $74
    ; End script.
    db $ff

C2Sc0_A3:
    ; Test object flag and branch when set.
    db $08, $6d
    dw C2Loc0_29
    ; Show message 2.
    db $02

jr_007_4d40:
    db $35
    ; Set object flag.
    db $09, $6d
    ; End script.
    db $ff

C2Loc0_29:
    ; Show message 2.
    db $02, $36
    ; End script.
    db $ff

C2Sc0_A4:
Case2BathroomColdTapOpen:
    ; Set text name 0.
    db $30, $d2
    ; Test object flag and branch when set.
    db $08, $01
    dw C2Loc0_2A
    ; Show message 3.
    db $2c, $02
    ; Show object.
    db $29, $04
    ; Refresh room objects.
    db $2b
    ; Set object flag.
    db $09, $01
    ; End script.
    db $ff

C2Loc0_2A:
    ; Show message 3.
    db $2c, $19
    ; End script.
    db $ff

C2Sc0_A5:
    ; Set text name 0.
    db $30, $d3
    ; Test object flag and branch when set.
    db $08, $02
    dw C2Loc0_2A
    ; Show message 3.
    db $2c, $02
    ; Show object.
    db $29, $04
    ; Refresh room objects.
    db $2b
    ; Set object flag.
    db $09

jr_007_4d64:
    db $02
    ; End script.
    db $ff

C2Sc0_A6:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $80
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_2A
    ; Test object flag and branch when set.
    db $08, $05
    dw C2Loc0_2B
    ; Show message 3.
    db $2c

jr_007_4d72:
    db $02
    ; Clear state and refresh.
    db $24, $77
    ; Show object.
    db $29, $80
    ; Hide object.
    db $2a, $81
    ; Show object.
    db $29, $89
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Loc0_2B:
    ; Show message 3.
    db $2c, $02
    ; Clear state and refresh.
    db $24, $77

jr_007_4d81:
    ; Show object.
    db $29, $80
    ; Hide object.
    db $2a, $81

jr_007_4d85:
    ; Show object.
    db $29, $07
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Sc0_A7:
    ; Show message 2.
    db $02, $83
    ; End script.
    db $ff

C2Sc0_A8:
jr_007_4d8c:
    ; Set text name 0.
    db $30, $d6
    ; Test state bit.
    db $0e, $a0
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_2A
    ; Show message 1.
    db $01, $16
    ; End script.
    db $ff

C2Sc0_A9:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $d3
    ; Show message 0.
    db $00, $d6
    ; End script.
    db $ff

C2Sc0_AA:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $8c
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_2A
    ; Set state and refresh without cue.
    db $22, $a3
    ; Hide object.
    db $2a, $8d

jr_007_4da7:
    ; Show object.
    db $29, $8c
    ; Show object.
    db $29, $8e
    ; Refresh room objects.
    db $2b
    ; Show message 1.
    db $01, $82
    ; End script.
    db $ff

C2Sc0_AB:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $8d
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_30
    ; Show message 3.
    db $2c, $03
    ; Clear state and refresh.
    db $24, $a3
    ; Hide object.
    db $2a, $8c
    ; Hide object.
    db $2a, $8e
    ; Show object.
    db $29, $8d
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Sc0_AC:
    ; Test object flag and branch when set.
    db $08, $5f
    ; Target C2Loc0_2C; retain the interior label.
    db $cb

jr_007_4dc5:
    db $4d
    ; Show message 1.
    db $01, $fd
    ; Set object flag.
    db $09, $5f
    ; End script.
    db $ff

C2Loc0_2C:
    ; Show message 1.
    db $01, $fe
    ; End script.
    db $ff

C2Sc0_AD:
    ; Set text name 0.
    db $30, $bc
    ; Jump to script.
    db $07
    ; Target C2Loc0_2A; retain the interior label.
    db $55

jr_007_4dd2:
    db $4d

C2Sc0_AE:
    ; Set text name 0.
    db $30, $d2
    ; Test object flag and branch when clear.
    db $54, $01
    dw C2Loc0_30
    ; Test object flag and branch when set.
    db $08, $02
    dw C2Loc0_2D
    ; Show message 3.
    db $2c, $03
    ; Hide object.
    db $2a

jr_007_4de0:
    db $04
    ; Refresh room objects.
    db $2b
    ; Clear object flag.
    db $0a, $01
    ; End script.
    db $ff

C2Loc0_2D:
    ; Show message 3.
    db $2c, $03
    ; Clear object flag.
    db $0a, $01
    ; End script.
    db $ff

C2Sc0_AF:
    ; Set text name 0.
    db $30, $d3
    ; Test object flag and branch when clear.
    db $54, $02
    dw C2Loc0_30
    ; Show message 3.
    db $2c, $03
    ; Clear object flag.
    db $0a, $02
    ; Test object flag and branch when set.
    db $08, $01
    dw C2Sc0_B9
    ; Hide object.
    db $2a, $04
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Sc0_B0:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $81
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_30
    ; Test object flag and branch when set.
    db $08, $05
    dw C2Loc0_2F
    ; Call script.
    db $05
    dw C2Loc0_2E
    ; Hide object.
    db $2a, $89
    ; Refresh room objects.
    db $2b

jr_007_4e0d:
    ; End script.
    db $ff

C2Loc0_2E:
    ; Show message 3.
    db $2c, $03
    ; Set state and refresh without cue.
    db $22, $77
    ; Show object.
    db $29, $81
    ; Hide object.
    db $2a, $80
    ; Refresh room objects.
    db $2b
    ; Return to calling script.
    db $06

C2Loc0_2F:
    ; Call script.
    db $05
    dw C2Loc0_2E
    ; Hide object.
    db $2a, $07
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Loc0_30:
    ; Show message 3.
    db $2c, $1a
    ; End script.
    db $ff

C2Sc0_B1:
    ; Set text name 0.
    db $30, $bc
    ; Jump to script.
    db $07
    dw C2Loc0_30

C2Sc0_B2:
    ; Set text name 0.
    db $30, $d6
    ; Test state bit.
    db $0e, $a0
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_30
    ; Jump to script.
    db $07
    dw C2Sc0_79

C2Sc0_B3:
    ; Set text name 0.
    db $30, $92
    ; Jump to script.
    db $07
    dw C2Loc0_30

C2Sc0_B4:
    ; Set text name 0.
    db $30, $d5
    ; Test object flag and branch when clear.
    db $54, $5f
    dw C2Loc0_30
    ; Show message 3.
    db $2c, $03
    ; Clear object flag.
    db $0a, $5f
    ; End script.
    db $ff

C2Sc0_B5:
    ; Set text name 0.
    db $30, $bc
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $2c
    ; Show message 3.
    db $2c, $1b
    ; End script.
    db $ff

C2Sc0_B6:
    ; Show message 0.
    db $00, $e5
    ; End script.
    db $ff

C2Sc0_B7:
    ; Show message 1.
    db $01, $17
    ; End script.
    db $ff

C2Sc0_B8:
    ; Show message 1.
    db $01, $b2
    ; End script.
    db $ff

C2Sc0_B9:
    ; End script.
    db $ff

C2Sc0_BA:
    ; Show message 2.
    db $02, $78
    ; End script.
    db $ff

C2Sc0_BB:
    ; Show message 2.
    db $02, $79
    ; End script.
    db $ff

C2Sc0_BC:
    ; Show message 2.
    db $02, $7a
    ; End script.
    db $ff

C2Sc0_BD:
    ; Show message 2.
    db $02, $7b
    ; End script.
    db $ff

C2Sc0_BE:
    ; Set script value 0.
    db $49, $01
    ; Show message 3.
    db $2c, $18
    ; End script.
    db $ff

C2Sc0_BF:
    ; Set script value 0.
    db $49, $02
    ; Show message 3.
    db $2c, $18
    ; End script.
    db $ff

C2Sc0_C0:
    ; Show message 2.
    db $02, $9b
    ; End script.
    db $ff

C2Sc0_C1:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $9c
    ; Test object flag and branch when clear.
    db $54, C2McMSeen
    dw C2Sc0_B9
    ; Play audio.
    db $3e, $08
    ; Show message 2.
    db $02, $9d
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

C2Sc0_C2:
    ; Show message 2.
    db $02, $9e
    ; End script.
    db $ff

C2Sc0_C3:
    ; Show message 2.
    db $02, $a0
    ; End script.
    db $ff

C2Sc0_C4:
    ; Show message 2.
    db $02, $a2
    ; End script.
    db $ff

C2Sc0_C5:
    ; Show message 2.
    db $02, $a7
    ; End script.
    db $ff

C2Sc0_C6:
    ; Show message 1.
    db $01, $e3
    ; End script.
    db $ff

C2Sc0_C7:
    ; Show message 1.
    db $01, $ef
    ; End script.
    db $ff

C2Sc0_C8:
    ; Show message 2.
    db $02, $b1
    ; End script.
    db $ff

C2Sc0_C9:
    ; Show message 2.
    db $02, $b2
    ; End script.
    db $ff

; Describe the crate before freeing the hands, or show its successful rope-cutting reminder afterward.
LookNailCrate:

C2Sc0_CA:
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw CrateAfterFree
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $b3
    ; Test object flag and branch when set.
    db $08, C2CrateSeen
    dw HintSharpNails
    ; Set object flag.
    db $09, C2CrateSeen
    ; End script.
    db $ff

; Show that the crate enabled the player to get untied.
CrateAfterFree:

C2Loc0_31:
    ; Show message 2.
    db $02, $b5
    ; End script.
    db $ff

; After the crate was already examined, show the sharp-nails hint.
HintSharpNails:

C2Loc0_32:
    ; Show message 2.
    db $02, $b4
    ; End script.
    db $ff

C2Sc0_CB:
    ; Show message 2.
    db $02, $ce
    ; End script.
    db $ff

C2Sc0_CC:
    ; Show message 2.
    db $02, $cf
    ; End script.
    db $ff

C2Sc0_CD:
    ; Show message 2.
    db $02, $d0
    ; End script.
    db $ff

C2Sc0_CE:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $d8
    ; Test object flag and branch when set.
    db $08, $86
    dw C2Sc0_B9
    ; Show message 2.
    db $02, $d9
    ; End script.
    db $ff

C2Sc0_CF:
    ; Show message 2.
    db $02, $da
    ; End script.
    db $ff

C2Sc0_D0:
    ; Show message 2.
    db $02, $db
    ; End script.
    db $ff

C2Sc0_D1:
    ; Show message 2.
    db $02, $dc
    ; End script.
    db $ff

C2Sc0_D2:
    ; Show message 0.
    db $00, $eb
    ; End script.
    db $ff

C2Sc0_D3:
    ; Show message 0.
    db $00, $ec
    ; End script.
    db $ff

C2Sc0_D4:
    ; Show message 0.
    db $00, $67
    ; End script.
    db $ff

C2Sc0_D5:
    ; Show message 0.
    db $00, $68
    ; End script.
    db $ff

C2Sc0_D6:
    ; Show message 0.
    db $00, $a8
    ; End script.
    db $ff

C2Sc0_D7:
    ; Show message 0.
    db $00, $a9
    ; End script.
    db $ff

C2Sc0_D8:
    ; Show message 0.
    db $00, $aa
    ; End script.
    db $ff

C2Sc0_D9:
    ; Show message 0.
    db $00, $ab
    ; End script.
    db $ff

C2Sc0_DA:
    ; Show message 0.
    db $00, $ac
    ; End script.
    db $ff

; Describe the leather chair and retain the alternate response after the recovered-belongings plan.
LookOfficeChair:

C2Sc0_DB:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $c5
    ; Test object flag and branch when set.
    db $08, C2LootPlan
    dw C2Sc0_B9
    ; Show message 0.
    db $00, $c6
    ; End script.
    db $ff

C2Sc0_DC:
    ; Show message 0.
    db $00, $c7
    ; End script.
    db $ff

; Show the Malone and Ventini banquet photo, then choose the response from the letter clue.
LookMobPhoto:

C2Sc0_DD:
    ; Hold text.
    db $2e
    ; Run scene effect.
    db $39, $00
    ; Play audio.
    db $3e, $0a
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $c1
    ; Test object flag and branch when set.
    db $08, C2BondHint
    dw HintPhotoPlot
    ; Show message 0.
    db $00, $c2
    ; Resume text.
    db $2f
    ; Wait sixty ticks.
    db $7e
    ; Restore saved Case II effect.
    db $3a
    ; End script.
    db $ff

; Restore the photo effect and question Ventini's secret Chicago dealings.
HintPhotoPlot:

C2Loc0_33:
    ; Resume text.
    db $2f
    ; Wait sixty ticks.
    db $7e
    ; Restore saved Case II effect.
    db $3a
    ; Play audio.
    db $3e, $08
    ; Show message 0.
    db $00, $c3
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

C2Sc0_DE:
jr_007_4f05:
    ; Show message 0.
    db $00, $c8
    ; End script.
    db $ff

C2Sc0_DF:
    ; Show message 2.
    db $02, $fa
    ; End script.
    db $ff

C2Sc0_E0:
    ; Hold text.
    db $2e
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw C2Loc0_39
    ; Test object flag and branch when set.
    db $08, $0d
    dw C2Loc0_34
    ; Test object flag and branch when set.
    db $08, $50
    dw C2Loc0_36
    ; Test object flag and branch when set.
    db $08, $0c
    dw C2Loc0_38
    ; Show message 0.
    db $00, $04
    ; End script.
    db $ff

C2Loc0_34:
    ; Set text name 0.
    db $30, $70

C2Loc0_35:
    ; Show message 3.
    db $2c, $45
    ; Test object flag and branch when set.
    db $08, $0c
    dw C2Loc0_37
    ; Set text name 0.
    db $30, $dc
    ; Show message 3.
    db $2c, $44
    ; End script.
    db $ff

C2Loc0_36:
    ; Set text name 0.
    db $30, $78
    ; Jump to script.
    db $07
    dw C2Loc0_35

C2Loc0_37:
    ; Show message 0.
    db $00, $05
    ; End script.
    db $ff

C2Loc0_38:
    ; Set text name 0.
    db $30, $db
    ; Show message 3.
    db $2c, $44
    ; Jump to script.
    db $07
    dw C2Loc0_37

C2Loc0_39:
    ; Show message 0.
    db $00, $06
    ; End script.
    db $ff

C2Sc0_E1:
    ; Show message 1.
    db $01, $00
    ; End script.
    db $ff

C2Sc0_E2:
    ; Show message 1.
    db $01, $87
    ; End script.
    db $ff

C2Sc0_E3:
    ; Show message 1.
    db $01, $38
    ; End script.
    db $ff

C2Sc0_E4:
    ; Show message 0.
    db $00, $2d
    ; End script.
    db $ff

C2Sc0_E5:
    ; Show message 0.
    db $00, $e3
    ; End script.
    db $ff

; Show the tied-hands refusal and end the action.
C2HandsTied:

C2Sc0_E6:
jr_007_4f4d:
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff

; Allow the original alternate-target selection for the binding rope.
UseC2Rope:

C2Sc0_E7:
    ; Set object flag.
    db $09, $88
    ; Choose alternate target; selected input runs the following script.
    db $2d

; Accept the nail-covered crate as the rope target; otherwise retain the tied-hands response.
MatchRopeCrate:

C2Loc0_3A:
    ; Match alternate item against type, ID and script target rows.
    db $32, $00, $8f
    dw FreeC2Hands
    db $fe, $fe
    dw C2HandsTied

; Work the rope over the nails, retain the original state/object updates, and set hands free.
FreeC2Hands:

C2Loc0_3B:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $bf
    ; Set state and refresh without cue.
    db $22, $95
    ; Hide object.
    db $2a, $9d
    ; Hide object.
    db $2a, $9e
    ; Refresh room objects.
    db $2b
    ; Show message 2.
    db $02, $c0
    ; Set object flag.
    db $09, C2HandsFree
    ; End script.
    db $ff

; Use the crate against the binding rope while the hands-free flag is clear.
UseNailCrate:

C2Sc0_E8:
    ; Set object flag.
    db $09, $88
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw C2Sc0_EA
    ; Choose alternate target; selected input runs the following script.
    db $2d

; Accept the binding rope as the crate target; otherwise retain the tied-hands response.
MatchCrateRope:

C2Loc0_3C:
    ; Match alternate item against type, ID and script target rows.
    db $32, $00, $8d
    dw FreeC2Hands
    db $fe, $fe
    dw C2HandsTied

C2Sc0_E9:
    ; Set object flag.
    db $09, $88
    ; Test object flag and branch when clear.
    db $54, $77
    dw C2Loc0_3D
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw C2Loc0_3D
    ; Jump to script.
    db $07
    dw C2HandsTied

C2Loc0_3D:
    ; Choose alternate target; selected input runs the following script.
    db $2d

C2Loc0_3E:
    ; Match alternate item against type, ID and script target rows.
    db $32, $00, $01
    dw C2Loc0_3F
    db $00, $02
    ; Target C2Loc0_43; retain the interior label.
    db $41

jr_007_4f91:
    db $50
    db $00, $05
    dw C2Loc0_14
    db $00, $09
    dw C2Loc0_46
    db $00, $0e
    dw C2Sc0_7F
    db $00, $11
    dw C2Loc0_46
    db $00, $12
    dw C2Loc0_46

jr_007_4fa6:
    db $00, $1c
    dw C2Loc0_47
    db $00, $1d
    dw C2Loc0_47
    db $00, $20
    dw C2Sc0_80
    db $00, $21
    dw C2Sc0_81
    db $00, $22
    dw C2Sc0_82
    db $03, $17
    dw C2Sc3_23
    db $00, $31
    dw C2Loc0_46
    db $00, $3f
    dw C2Loc0_46
    db $00, $4b
    dw C2Loc0_48
    db $00, $5e
    dw C2Loc0_46
    db $00, $63
    dw C2Loc0_49
    db $00, $69
    dw C2Sc0_83
    db $00, $6b
    dw C2Loc0_4A
    db $00, $6e
    dw C2Loc0_4C
    db $00, $70
    dw C2Loc0_4D
    db $00, $7c
    dw C2Loc0_4F
    db $00, $81
    dw C2Loc0_50
    db $02, $00
    dw C2Loc0_56
    db $00, $92
    dw C2Loc0_57
    db $00, $96
    dw C2Loc0_46

jr_007_4ff6:
    db $00, $9b
    dw C2Loc0_46
    db $00, $a0
    dw C2Loc0_46
    db $00, $a5
    dw C2Loc0_46
    db $03, $24
    dw C2Loc0_59
    db $03, $33
    dw C2Loc0_5B
    db $03, $35
    dw C2Loc0_5C
    db $03, $46
    dw C2Loc0_5D
    db $03, $4f
    dw PeelC2Banana
    db $04, $0a
    dw C2Loc0_5F
    db $04, $10
    dw C2Loc0_63
    db $fe, $fe
    dw C2Sc0_EA

C2Loc0_3F:
    ; Set text name 0.
    db $30, $d2
    ; Test object flag and branch when set.
    db $08, $01
    dw C2Loc0_40
    ; Show message 3.
    db $2c, $02
    ; Show object.
    db $29, $04
    ; Refresh room objects.
    db $2b
    ; Set object flag.
    db $09, $01
    ; End script.
    db $ff

C2Loc0_40:
    ; Test object flag and branch when set.
    db $08, $02
    dw C2Loc0_42
    ; Clear object flag.
    db $0a, $01

C2Loc0_41:
    ; Show message 3.
    db $2c, $03
    ; Hide object.
    db $2a, $04
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Loc0_42:
    ; Show message 3.
    db $2c, $03
    ; Clear object flag.
    db $0a, $01
    ; End script.
    db $ff

C2Loc0_43:
    ; Set text name 0.
    db $30, $d3
    ; Test object flag and branch when set.
    db $08, $02
    dw C2Loc0_44
    ; Show message 3.
    db $2c, $02
    ; Show object.
    db $29

jr_007_504a:
    db $04
    ; Refresh room objects.
    db $2b
    ; Set object flag.
    db $09, $02
    ; End script.
    db $ff

C2Loc0_44:
    ; Test object flag and branch when set.
    db $08, $01
    dw C2Loc0_45
    ; Clear object flag.
    db $0a, $02
    ; Jump to script.
    db $07
    dw C2Loc0_41

C2Loc0_45:
    ; Show message 3.
    db $2c, $03
    ; Clear object flag.
    db $0a, $02
    ; End script.
    db $ff

C2Loc0_46:
    ; Show message 0.
    db $00, $2e
    ; End script.
    db $ff

C2Loc0_47:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1b
    ; End script.
    db $ff

C2Loc0_48:
    ; Show message 1.
    db $01, $1f
    ; End script.
    db $ff

C2Loc0_49:
    ; Show message 1.
    db $01, $ea
    ; End script.
    db $ff

C2Loc0_4A:
jr_007_506a:
    ; Test object flag and branch when set.
    db $08, $5f
    dw C2Loc0_4B
    ; Show message 1.
    db $01, $fd
    ; Set object flag.
    db $09, $5f
    ; End script.
    db $ff

C2Loc0_4B:
    ; Set text name 0.
    db $30, $d5
    ; Show message 3.
    db $2c, $03
    ; Clear object flag.
    db $0a, $5f
    ; End script.
    db $ff

C2Loc0_4C:
    ; Show message 2.
    db $02, $11
    ; End script.
    db $ff

C2Loc0_4D:
    ; Test object visibility.
    db $28, $3d
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_4E
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $16
    ; Show message 1.
    db $01, $b5
    ; Set state and refresh without cue.
    db $22, $58
    ; Show object.
    db $29, $3d
    ; Hide object.
    db $2a, $3c
    ; Refresh room objects.
    db $2b
    ; Show message 1.
    db $01, $af
    ; End script.
    db $ff

C2Loc0_4E:
    ; Show message 1.
    db $01, $b6
    ; End script.
    db $ff

C2Loc0_4F:
    ; Show message 2.
    db $02, $63
    ; End script.
    db $ff

C2Loc0_50:
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw C2Loc0_53

C2Loc0_51:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $87
    ; Test object flag and branch when set.
    db $08, $7c
    dw C2Loc0_52
    ; Show message 2.
    db $02, $88
    ; Set object flag.
    db $09, $7c
    ; End script.
    db $ff

C2Loc0_52:
    ; Show message 2.
    db $02, $89
    ; End script.
    db $ff

C2Loc0_53:
    ; Set text name 0.
    db $30, $bf
    ; Test state bit.
    db $0e, $a9
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_55

C2Loc0_54:
    ; Show message 3.
    db $2c, $02
    ; Set state and refresh without cue.
    db $22, $a9
    ; Show object.
    db $29, $94
    ; Hide object.
    db $2a, $93
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Loc0_55:
    ; Show message 3.
    db $2c, $03
    ; Clear state and refresh.
    db $24, $a9
    ; Show object.
    db $29, $93
    ; Hide object.
    db $2a, $94
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Loc0_56:
    ; Show message 2.
    db $02, $c8
    ; End script.
    db $ff

C2Loc0_57:
    ; Test object visibility.
    db $28, $a0
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_6E

C2Loc0_58:
    ; Show message 2.
    db $02, $d6
    ; Clear state and refresh.
    db $24, $af
    ; Show object.
    db $29, $9f
    ; Hide object.
    db $2a, $a0
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Loc0_59:
    ; Test object flag and branch when set.
    db $08, $68
    dw C2Loc0_5A
    ; Show message 2.
    db $02, $8a
    ; Set object flag.
    db $09, $68
    ; End script.
    db $ff

C2Loc0_5A:
    ; Show message 1.
    db $01, $14
    ; Clear object flag.
    db $0a, $68
    ; End script.
    db $ff

C2Loc0_5B:
    ; Show message 2.
    db $02, $60
    ; Set object flag.
    db $09, $70
    ; End script.
    db $ff

C2Loc0_5C:
    ; Show message 2.
    db $02, $64
    ; End script.
    db $ff

C2Loc0_5D:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $bd
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw C2Loc0_5E
    ; Set text name 0.
    db $30, $48
    ; Show message 3.
    db $2c

jr_007_50f6:
    db $2d
    ; Clear attribute bit 0.
    db $19
    ; Set selected attribute bit 1.
    db $1b
    ; Set item flag.
    db $12, $47
    ; Drop selected list item.
    db $33
    ; Set item flag and append list value.
    db $4c, $47
    ; End script.
    db $ff

C2Loc0_5E:
    ; Hide object.
    db $2a, $1a
    ; Show object.
    db $29, $18
    ; Show object.
    db $29, $19
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Loc0_5F:
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw C2Loc0_60

C2Loc0_91:
    ; Test object flag and branch when set.
    db $08, C2LampFlag
    dw C2Loc0_61
    ; Test object flag and branch when set.
    db $08, $76
    dw C2Loc0_62
    ; Show message 1.
    db $01, $8b
    ; End script.
    db $ff

C2Loc0_60:
    ; Show message 3.
    db $2c, $47
    ; End script.
    db $ff

C2Loc0_61:
    ; Show message 1.
    db $01, $89
    ; Clear object flag.
    db $0a, C2LampFlag
    ; Load Case II palette and reload scene.
    db $73
    ; End script.
    db $ff

C2Loc0_62:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $85
    ; Set object flag.
    db $09, C2LampFlag
    ; Load Case II palette and reload scene.
    db $73
    ; Test object flag and branch when set.
    db $08, $a8
    dw C2Sc0_B9
    ; Show message 1.
    db $01, $7a
    ; End script.
    db $ff

C2Loc0_63:
    ; Show message 2.
    db $02, $67

jr_007_512d:
    ; End script.
    db $ff

C2Sc0_EA:
    ; Show message 0.
    db $00, $2c
    ; End script.
    db $ff

C2Sc0_EB:
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw C2Sc0_EA

C2Loc0_64:
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff

C2Sc0_EC:
    ; Test object flag and branch when clear.
    db $54, C2HandsFree
    dw C2Loc0_64
    ; Show message 1.
    db $01, $b4
    ; End script.
    db $ff

C2Sc0_ED:
    ; Show message 2.
    db $02, $e4
    ; End script.
    db $ff

C2Sc0_EE:
    ; Play audio.
    db $3e, $13
    ; Hide object.
    db $2a, $17
    ; Refresh room objects.
    db $2b

C2Loc0_65:
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $00
    ; Show message 0.
    db $00, $6b
    ; Run scene effect.
    db $39, $0e
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $6c
    ; Repeat audio cue $10.
    db $77
    ; Show message 0.
    db $00, $6d
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

C2Sc0_EF:
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $97
    ; Jump to script.
    db $07
    dw C2Loc0_65

C2Sc0_F0:
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $99
    ; Jump to script.
    db $07
    ; Target C2Loc0_65; retain the interior label.
    db $47

jr_007_5168:
    db $51

C2Sc0_F1:
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $9c
    ; Jump to script.
    db $07
    dw C2Loc0_65

C2Sc0_F2:
    ; Test state bit.
    db $0e, $ad
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_69
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $ad

C2Loc0_66:
    ; Hold text.
    db $2e
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $00
    ; Run scene effect.
    db $39, FxGoons
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 2.
    db $02, $9f
    ; Play audio.
    db $3e, $10
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

C2Sc0_F3:
    ; Test state bit.
    db $0e, $ad
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_69
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $ad
    ; Jump to script.
    db $07
    dw C2Loc0_22

C2Sc0_F4:
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $b0
    ; Jump to script.
    db $07
    dw C2Loc0_66

C2Sc0_F5:
    ; Play audio.
    db $3e, $13
    ; Show object.
    db $29, $43

C2Loc0_92:
    ; Refresh room objects.
    db $2b

C2Loc0_67:
    ; Test state bit.
    db $0e, $65
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_68
    ; Set state and refresh without cue.
    db $22, $65

C2Loc0_68:
    ; Play audio.
    db $3e, $09
    ; Show message 2.
    db $02, $1f
    ; Jump to script.
    db $07
    dw C2Loc0_1F

C2Sc0_F6:
    ; Play audio.
    db $3e, $13
    ; Show object.
    db $29, $42
    ; Refresh room objects.
    db $2b
    ; Jump to script.
    db $07
    dw C2Loc0_67

C2Loc0_69:
jr_007_51b9:
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $01
    ; End script.
    db $ff

C2Sc0_F7:
    ; Play audio.
    db $3e, $17
    ; Show message 2.
    db $02, $8c
    ; Run scene effect.
    db $39, $08
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 1.
    db $01, $8a
    ; Wait sixty ticks.
    db $7e
    ; Run scene effect.
    db $39, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $81
    ; Show message 0.
    db $00, $fd
    ; Resume text.
    db $2f
    ; Wait sixty ticks.
    db $7e
    ; Run scene effect.
    db $39, FxStogie
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $fe
    ; Wait sixty ticks.
    db $7e
    ; Play audio.
    db $3e, $10
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

C2Sc0_F8:
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw C2Loc0_6B

C2Loc0_6A:
    ; Show message 2.
    db $02, $96
    ; End script.
    db $ff

C2Loc0_6B:
    ; Test object flag and branch when clear.
    db $54, $80
    dw C2Loc0_6A

jr_007_51ec:
    ; Test object flag and branch when set.
    db $08, $7e
    dw C2Loc0_6A
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $93
    ; Show message 2.
    db $02

jr_007_51f4:
    db $97
    ; End script.
    db $ff

C2Sc0_F9:
    ; Show message 2.
    db $02, $86
    ; End script.
    db $ff

C2Sc0_FA:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw C2Loc0_51
    ; Set text name 0.
    db $30, $bf
    ; Test state bit.
    db $0e, $a9
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_6F
    ; Jump to script.
    db $07
    dw C2Loc0_54

C2Sc0_FB:
    ; Set text name 0.
    db $30, $b0
    ; Test state bit.
    db $0e, $aa
    ; Branch if result bit 0 is set.
    db $03

jr_007_520c:
    dw C2Loc0_6F
    ; Show message 3.
    db $2c, $02
    ; Set state and refresh without cue.
    db $22, $aa
    ; Test item flag.
    db $11, $51
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_6C
    ; Test object flag and branch when set.
    db $08, $7f
    ; Target C2Loc0_6C; retain the interior label.
    db $22

jr_007_521a:
    db $52
    ; Test item state.
    db $14, $51
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_6C
    ; Show object.
    db $29

jr_007_5221:
    db $4d

C2Loc0_6C:
    ; Show object.
    db $29, $96
    ; Show object.
    db $29, $97
    ; Hide object.
    db $2a, $95
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Sc0_FC:
jr_007_522a:
    ; Set text name 0.
    db $30, $b0
    ; Test state bit.
    db $0e, $ab
    ; Branch if result bit 0 is set.
    db $03

jr_007_522f:
    dw C2Loc0_6F
    ; Show message 3.
    db $2c, $02
    ; Set state and refresh without cue.
    db $22, $ab
    ; Test item flag.
    db $11, $52
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_6D
    ; Test object flag and branch when set.
    db $08, $7e
    dw C2Loc0_6D
    ; Show object.
    db $29, $4e

C2Loc0_6D:
jr_007_5240:
    ; Show object.
    db $29, $99
    ; Show object.
    db $29, $9a
    ; Hide object.
    db $2a, $98
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Sc0_FD:
    ; Set text name 0.
    db $30, $d0
    ; Test object visibility.
    db $28, $a0
    ; Branch if result bit 0 is set.
    db $03
    dw C2Sc0_E4

C2Loc0_6E:
    ; Show message 2.
    db $02, $d5
    ; Set state and refresh without cue.
    db $22, $af
    ; Show object.
    db $29, $a0
    ; Hide object.
    db $2a, $9f
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Sc0_FE:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $a3
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_6F
    ; Show message 3.
    db $2c, $02
    ; Set state and refresh without cue.
    db $22, $b1
    ; Show object.
    db $29

jr_007_5265:
    db $a3
    ; Hide object.
    db $2a, $a2
    ; Show object.
    db $29, $a1

jr_007_526a:
    ; Refresh room objects.
    db $2b

jr_007_526b:
    ; End script.
    db $ff

C2Sc0_FF:
    ; Set text name 0.
    db $30, $bc
    ; Test object visibility.
    db $28, $84
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_6F
    ; Show message 3.
    db $2c, $02
    ; Clear state and refresh.
    db $24, $96
    ; Show object.
    db $29, $84
    ; Hide object.
    db $2a

jr_007_527a:
    db $85
    ; Show object.
    db $29, $8a
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Loc0_6F:
    ; Show message 3.
    db $2c, $19

jr_007_5281:
    ; End script.
    db $ff

C2Sc0_100:
jr_007_5282:
    ; Set text name 0.
    db $30, $bc
    ; Test object visibility.
    db $28, $86
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc0_6F
    ; Show message 3.
    db $2c, $02
    ; Clear state and refresh.
    db $24, $98
    ; Show object.
    db $29, $86
    ; Hide object.
    db $2a, $87
    ; Show object.
    db $29, $8b
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Sc0_101:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $88
    ; Branch if result bit 0 is set.
    db $03

jr_007_529a:
    dw C2Loc0_6F
    ; Show message 3.
    db $2c, $02
    ; Clear state and refresh.
    db $24, $9b
    ; Show object.
    db $29, $88
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Sc0_102:
    ; Set text name 0.
    db $30, $95
    ; Jump to script.
    db $07
    dw C2Loc0_70

C2Sc0_103:
    ; Set text name 0.
    db $30, $bf
    ; Test state bit.
    db $0e, $a9
    ; Branch if result bit 0 is clear.
    db $04
    ; Target C2Loc0_70; retain the interior label.
    db $0d

jr_007_52af:
    db $53
    ; Jump to script.
    db $07
    dw C2Loc0_55

C2Sc0_104:
    ; Set text name 0.
    db $30, $b0
    ; Test state bit.
    db $0e, $aa
    ; Branch if result bit 0 is clear.
    db $04

jr_007_52b8:
    dw C2Loc0_70
    ; Show message 3.
    db $2c, $03
    ; Clear state and refresh.
    db $24, $aa
    ; Show object.
    db $29, $95
    ; Hide object.
    db $2a, $96
    ; Hide object.
    db $2a, $97
    ; Hide object.
    db $2a, $4d
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Sc0_105:
    ; Set text name 0.
    db $30, $b0
    ; Test state bit.
    db $0e, $ab
    ; Branch if result bit 0 is clear.
    db $04
    ; Target C2Loc0_70; retain the interior label.
    db $0d

jr_007_52ce:
    db $53
    ; Show message 3.
    db $2c, $03
    ; Clear state and refresh.
    db $24, $ab
    ; Show object.
    db $29, $98
    ; Hide object.
    db $2a, $99
    ; Hide object.
    db $2a, $9a
    ; Hide object.
    db $2a, $4e
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Sc0_106:
    ; Set text name 0.
    db $30, $d0
    ; Test object visibility.
    db $28, $a0
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Sc0_E4
    ; Jump to script.
    db $07
    dw C2Loc0_58

C2Sc0_107:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $a3
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_70
    ; Show message 3.
    db $2c, $03
    ; Clear state and refresh.
    db $24, $b1
    ; Show object.
    db $29, $a2
    ; Hide object.
    db $2a, $a3
    ; Hide object.
    db $2a, $a1
    ; Refresh room objects.
    db $2b

jr_007_52f9:
    ; End script.
    db $ff

C2Sc0_108:
    ; Set text name 0.
    db $30, $bc
    ; Test object visibility.
    db $28, $84
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_70
    ; Show message 3.
    db $2c, $03
    ; Set state and refresh without cue.
    db $22, $96
    ; Show object.
    db $29, $85
    ; Hide object.
    db $2a, $84
    ; Hide object.
    db $2a, $8a
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Loc0_70:
    ; Show message 3.
    db $2c, $1a
    ; End script.
    db $ff

C2Sc0_109:
    ; Set text name 0.
    db $30, $bc
    ; Test object visibility.
    db $28, $86
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_70
    ; Show message 3.
    db $2c, $03
    ; Set state and refresh without cue.
    db $22, $98
    ; Show object.
    db $29, $87
    ; Hide object.
    db $2a, $86
    ; Hide object.
    db $2a, $8b
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Sc0_10A:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $88
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_70
    ; Show message 3.
    db $2c, $03
    ; Set state and refresh without cue.
    db $22, $9b
    ; Hide object.
    db $2a, $88
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff
