; Confirmed script commands; unrecognized command sequences remain raw bytes.

C1Sc3_00:
    ; Show message 0.
    db $00, $07
    ; End script.
    db $ff

C1Sc3_01:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Set text name 1.
    db $38, $07
    ; Show message 2.
    db $02, $15
    ; Add to Case I coins.
    db $39, $07
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17

jr_006_5114:
    db $8c
    ; End script.
    db $ff

C1Sc3_02:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_1D:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $16
    dw C1Loc3_1E
    db $00, $17
    dw C1Loc3_20
    db $00, $2b
    dw C1Loc3_23
    db $00, $2e
    dw C1Loc3_24
    db $00, $75
    ; Target C1Loc3_24; retain the interior label.
    db $78

jr_006_5131:
    db $51
    db $00, $76
    dw C1Loc3_24
    db $00, $77
    dw C1Loc3_24
    db $00, $2f
    dw C1Loc3_B7
    db $00, $36
    dw C1Loc3_26
    db $00, $40
    dw C1Loc3_22
    db $00, $42
    dw C1Loc3_27
    db $00, $44
    dw C1Loc3_28
    db $00, $46
    dw C1Loc3_27
    db $00, $48
    dw C1Loc3_2A
    db $00, $5f
    dw C1Loc3_B2
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_1E:
    ; Use one Case I coin.
    db $40
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_1F
    ; End script.
    db $ff

C1Loc3_1F:
    ; Run scene effect.
    db $46, $00
    ; End script.
    db $ff

C1Loc3_20:
    ; Use one Case I coin.
    db $40
    ; Branch if result bit 0 is clear.
    db $05
    ; Target C1Loc3_21; retain the interior label.
    db $6c

jr_006_5169:
    db $51
    ; Show message 0.
    db $00, $61

C1Loc3_21:
    ; End script.
    db $ff

C1Loc3_22:
    ; Show message 1.
    db $01, $e6
    ; End script.
    db $ff

C1Loc3_23:
    ; Test object flag.
    db $16, $28
    ; Branch if result bit 0 is clear.
    db $05
    ; Target C1Loc3_22; retain the interior label.
    db $6d

jr_006_5174:
    db $51
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

C1Loc3_24:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $ed
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Test object flag.
    db $16, $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_25
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc3_25:
    ; Set object flag.
    db $17, $95
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc3_26:
    ; Spend two Case I coins.
    db $67
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_E8
    ; Show message 2.
    db $02, $e3
    ; Set object flag.
    db $17, $91
    ; End script.
    db $ff

C1Loc3_E8:
    ; Show message 1.
    db $01, $63
    ; End script.
    db $ff

C1Loc3_27:
    ; Show message 1.
    db $01, $03
    ; End script.
    db $ff

C1Loc3_28:
    ; Test object flag.
    db $16, $81
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_29
    ; Test object flag.
    db $16, $a9
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_29
    ; Show message 2.
    db $02, $6b
    ; End script.
    db $ff

C1Loc3_29:
    ; Spend Case I coins.
    db $3c, $03
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_2C
    ; Show message 1.
    db $01, $3c
    ; Clear object flag.
    db $18, $81
    ; Clear object flag.
    db $18, $a9
    ; End script.
    db $ff

C1Loc3_2A:
    ; Test object flag.
    db $16, $a0
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_2B
    ; Test object flag.
    db $16, $a9
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_2B
    ; Show message 2.
    db $02, $6b
    ; End script.
    db $ff

C1Loc3_2B:
    ; Spend Case I coins.
    db $3c, $03
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_2C
    ; Show message 1.
    db $01, $44
    ; Clear object flag.
    db $18, $a0
    ; Clear object flag.
    db $18, $a9
    ; End script.
    db $ff

C1Loc3_2C:
    ; Show message 2.
    db $02, $20
    ; End script.
    db $ff

C1Sc3_03:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_2D:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1Loc3_B6
    db $00, $75
    dw C1Loc3_B6
    db $00, $76
    dw C1Loc3_B6
    db $00, $77
    dw C1Loc3_B6
    db $00, $2f
    dw C1Loc3_B8
    db $00, $34
    dw C1Loc3_AC
    db $00, $5f
    dw C1Loc3_B2
    db $00, $73
    dw C1Loc3_8E
    db $fe, $fe
    dw C1Sc3_53

C1Sc3_04:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_2E:
    ; Match alternate item against type, ID and script target rows.
    db $29, $05, $47
    dw C1Loc3_2F
    db $01, $02
    dw C1Loc3_30
    db $01, $06
    dw C1Loc3_2F
    db $01, $08
    dw C1Loc3_2F
    db $05, $06
    dw C1Loc3_2F
    db $05, $14
    dw C1Loc3_31
    db $05, $1b
    dw C1Loc3_2F
    db $05, $31
    dw C1Loc3_2F
    db $05, $36
    dw C1Loc3_2F
    db $05, $38
    dw C1Loc3_2F
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_2F:
    ; Show message 1.
    db $01, $a7
    ; End script.
    db $ff

C1Loc3_30:
    ; Show message 2.
    db $02, $8e
    ; End script.
    db $ff

C1Loc3_31:
    ; Test object flag.
    db $16, $5b
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_32
    ; Show message 2.
    db $02, $91
    ; Set state and refresh.
    db $33, $14
    ; Set object flag.
    db $17, $5b
    ; End script.
    db $ff

C1Loc3_32:
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bc
    ; Show message 2.
    db $02, $12
    ; Clear state and refresh.
    db $34, $14
    ; Clear object flag.
    db $18, $5b
    ; End script.
    db $ff

C1Sc3_05:
    ; Test object flag.
    db $16, $aa
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_33:
    ; Match alternate item against type, ID and script target rows.
    db $29, $04, $02
    dw C1Loc3_34

jr_006_5259:
    db $04, $07
    dw C1Loc3_35
    db $04, $11
    dw C1Loc3_37
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_34:
    ; Increment gun 1 ammunition.
    db $4e
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EA
    ; Use one BULLET1.
    db $3d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_E9
    ; Show message 1.
    db $01, $17

C1Loc3_E9:
    ; End script.
    db $ff

C1Loc3_35:
    ; Increment gun 2 ammunition.
    db $58
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EA
    ; Use one BULLET1.
    db $3d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_E9
    ; Show message 1.
    db $01, $17
    ; End script.
    db $ff

C1Loc3_EA:
    ; Show message 1.
    db $01, $18
    ; End script.
    db $ff

C1Loc3_36:
    ; Increment gun 3 ammunition.
    db $50
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EA
    ; Use one BULLET2.
    db $3e
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_E9
    ; Show message 1.
    db $01, $17
    ; End script.
    db $ff

C1Loc3_37:
    ; Show message 1.
    db $01, $19
    ; End script.
    db $ff

C1Sc3_06:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_38:
    ; Match alternate item against type, ID and script target rows.
    db $29, $05, $47
    dw C1Loc3_2F
    db $01, $02
    dw C1Loc3_30
    db $01, $06
    dw C1Loc3_2F
    db $01, $08
    dw C1Loc3_2F
    db $05, $06
    dw C1Loc3_2F
    db $05, $14
    dw C1Loc3_2F
    db $05, $1b
    dw C1Loc3_3A
    db $05, $31
    dw C1Loc3_2F
    db $05, $36
    dw C1Loc3_2F
    db $05, $38
    dw C1Loc3_2F
    db $00, $3b
    dw C1Loc3_39
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_39:
    ; Finish Case I scene effect.
    db $5a, $08
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $0f
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

C1Loc3_3A:
    ; Test object flag.
    db $16, $79
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_3B
    ; Test object flag.
    db $16, $5c
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_3C
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bb
    ; Show message 2.
    db $02, $12
    ; Set state and refresh.
    db $33, $1b
    ; Set object flag.
    db $17, $5c
    ; End script.
    db $ff

C1Loc3_3B:
    ; Show message 2.
    db $02, $ba
    ; Set state and refresh.
    db $33

jr_006_52ea:
    db $1b
    ; Set object flag.
    db $17, $79
    ; Set object flag.
    db $17, $5c
    ; End script.
    db $ff

C1Loc3_3C:
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bc
    ; Show message 2.
    db $02, $12
    ; Clear state and refresh.
    db $34, $1b
    ; Clear object flag.
    db $18, $5c
    ; End script.
    db $ff

C1Sc3_07:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_3D:
    ; Match alternate item against type, ID and script target rows.
    db $29, $05, $47
    dw C1Loc3_3E
    db $01, $02
    dw C1Loc3_30
    db $01, $06
    dw C1Loc3_2F
    db $01, $08
    dw C1Loc3_2F
    db $05, $06
    dw C1Loc3_2F
    db $05, $14
    dw C1Loc3_2F
    db $05, $1b
    dw C1Loc3_2F
    db $05, $31
    dw C1Loc3_2F
    db $05, $36
    dw C1Loc3_2F
    db $05, $38
    dw C1Loc3_2F
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_3E:
    ; Test object flag.
    db $16, $5d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_3F
    ; Test object flag.
    db $16, $75
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_40
    ; Show message 2.
    db $02, $f7
    ; Set state and refresh.
    db $33, $47
    ; Set object flag.
    db $17, $5d
    ; Set object flag.
    db $17, $75
    ; End script.
    db $ff

C1Loc3_3F:
    ; Set text name 0.
    db $1e, $7c
    ; Set text name 1.
    db $1f, $bc
    ; Show message 2.
    db $02, $12
    ; Clear state and refresh.
    db $34, $47
    ; Clear object flag.
    db $18, $5d
    ; End script.
    db $ff

C1Loc3_40:
    ; Set text name 0.
    db $1e, $7c
    ; Set text name 1.
    db $1f, $bb
    ; Show message 2.
    db $02, $12
    ; Set state and refresh.
    db $33, $47
    ; Set object flag.
    db $17

jr_006_5356:
    db $5d
    ; End script.
    db $ff

C1Sc3_08:
    ; Test selected attribute bit 0.
    db $07

jr_006_5359:
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_41:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1Loc3_B6
    db $00, $75
    dw C1Loc3_B6
    db $00, $76
    dw C1Loc3_B6
    db $00, $77
    dw C1Loc3_B6
    db $00, $2f
    dw C1Loc3_B8
    db $00, $34
    dw C1Loc3_AC
    db $00, $5f
    dw C1Loc3_B2
    db $fe, $fe
    dw C1Sc3_53

C1Sc3_09:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_42:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1Loc3_B6
    db $00, $75
    dw C1Loc3_B6
    db $00, $76
    dw C1Loc3_B6
    db $00, $77
    dw C1Loc3_B6
    db $00, $2f
    dw C1Loc3_B8
    db $00, $34
    dw C1Loc3_AC
    db $00, $5f
    dw C1Loc3_B2
    db $00, $73
    dw C1Loc3_43
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_43:
    ; Show message 1.
    db $01, $b1
    ; End script.
    db $ff

C1Sc3_0A:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_44:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1Loc3_45
    db $fe, $fe
    dw C1Sc3_53
    ; Unreferenced byte pattern: swap operation slots.
    db $60

C1Loc3_45:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_98
    ; Set text name 0.
    db $1e, $b6
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $33
    ; End script.
    db $ff

C1Sc3_0B:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_46:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1Loc3_47
    db $fe, $fe
    dw C1Sc3_53
    ; Unreferenced byte pattern: swap operation slots.
    db $60

C1Loc3_47:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_98
    ; Set text name 0.
    db $1e, $b6
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $5a
    ; End script.
    db $ff

C1Sc3_0C:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_48:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1Loc3_49
    db $fe, $fe
    dw C1Sc3_53
    ; Unreferenced byte pattern: swap operation slots.
    db $60

C1Loc3_49:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_98
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $35
    ; End script.
    db $ff

C1Sc3_0D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_4A:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1Loc3_4B
    db $fe, $fe
    dw C1Sc3_53
    ; Unreferenced byte pattern: swap operation slots.
    db $60

C1Loc3_4B:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_98
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $5b
    ; End script.
    db $ff

C1Sc3_0E:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_4C:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1Loc3_4D
    db $fe, $fe
    dw C1Sc3_53
    ; Unreferenced byte pattern: swap operation slots.
    db $60

C1Loc3_4D:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_98
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $5c
    ; End script.
    db $ff

C1Sc3_0F:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_4E:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1Loc3_B6
    db $00, $75
    dw C1Loc3_B6
    db $00, $76
    dw C1Loc3_B6
    db $00, $77
    dw C1Loc3_B6
    db $00, $2f
    dw C1Loc3_B8
    db $00, $34
    dw C1Loc3_AC
    db $00, $5f
    dw C1Loc3_B2
    db $00, $73
    dw C1Loc3_4F
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_4F:
    ; Show message 2.
    db $02, $d9
    ; End script.
    db $ff

C1Sc3_10:
    ; Show message 0.
    db $00, $06
    ; End script.
    db $ff

C1Sc3_11:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $01
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d

C1Loc3_50:
    ; End script.
    db $ff

C1Sc3_12:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $02
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_13:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $03
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_14:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $04
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_15:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $05
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_16:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $06
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_17:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $07
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_18:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $07
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, $99
    ; End script.
    db $ff

C1Sc3_19:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Use one Case I coin.
    db $40
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_52
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 1.
    db $38, $01
    ; Show message 2.
    db $02, $16
    ; Set text name 0.
    db $1e, $c6
    ; Show message 2.
    db $02, $1a
    ; Clear scene object for current item.
    db $6c
    ; Test object flag.
    db $16, $8d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_51
    ; Add BULLET1 amount.
    db $56, $01
    ; Set object flag.
    db $17, $aa
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, $8d
    ; End script.
    db $ff

C1Loc3_51:
    ; Pick BULLET1 amount.
    db $3a, $01
    ; Set selected attribute bit 0.
    db $08

C1Loc3_52:
    ; End script.
    db $ff

C1Sc3_1A:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Use one Case I coin.
    db $40
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_54
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 1.
    db $38, $01
    ; Show message 2.
    db $02, $16
    ; Set text name 0.
    db $1e, $c6
    ; Show message 2.
    db $02, $1a
    ; Clear scene object for current item.
    db $6c
    ; Test object flag.
    db $16, $8e
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_53
    ; Add one BULLET2.
    db $57
    ; Set object flag.
    db $17, $ab
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, $8e
    ; End script.
    db $ff

C1Loc3_53:
    ; Pick BULLET2.
    db $3b
    ; Set selected attribute bit 0.
    db $08

C1Loc3_54:
    ; End script.
    db $ff

C1Sc3_1B:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Show message 2.
    db $02, $1e
    ; Test object flag.
    db $16, $8d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_00
    ; Add BULLET1 amount.
    db $56, $06
    ; Set object flag.
    db $17, $aa
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, $8d
    ; Set object flag.
    db $17, $96
    ; End script.
    db $ff

C1Loc3_00:
    ; Pick BULLET1 amount.
    db $3a, $06
    ; Set selected attribute bit 0.
    db $08
    ; Set object flag.
    db $17, $96
    ; End script.
    db $ff

C1Sc3_1C:
    ; End script.
    db $ff

C1Sc3_1D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $0b
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_1E:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $0c
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_1F:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $0d
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_20:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $0e
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, $90
    ; End script.
    db $ff

C1Sc3_21:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $0f
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, $9d
    ; End script.
    db $ff

C1Sc3_22:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $10
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_23:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $11
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_24:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $12
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_25:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $13
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_26:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $14
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_27:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $15
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_28:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $16
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, $8f
    ; End script.
    db $ff

C1Sc3_29:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $17
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_2A:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $18
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_2B:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $19
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_2C:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $1a
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_2D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $1b
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_2E:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $1c
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_2F:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $1d
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_30:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $1e
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, $97
    ; End script.
    db $ff

C1Sc3_31:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $1f
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_32:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $20
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_33:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $21
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_34:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $22
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, $98
    ; End script.
    db $ff

C1Sc3_35:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $23
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_36:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $24
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_37:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $25
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_38:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $26
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_39:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $27
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_3A:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $29
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_3B:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $2c
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, $87
    ; End script.
    db $ff

C1Sc3_3C:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $2e
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_3D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $2f
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_3E:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $30
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_3F:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $31
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_40:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $32
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_41:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $34
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_42:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $36
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_43:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $37
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_44:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $38
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_45:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $39
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_46:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $3a
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_47:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_4B
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_55:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EB
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EF

C1Loc3_EE:
    ; Show message 2.
    db $02, $7d

C1Loc3_EF:
    ; End script.
    db $ff

C1Sc3_48:
    ; Test object flag.
    db $16, $aa
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_4B
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_56:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EB
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EF
    ; Show message 2.
    db $02, $7d
    ; End script.
    db $ff

C1Sc3_49:
    ; Test object flag.
    db $16, $ab
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_4B
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_57:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EB
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EF
    ; Show message 2.
    db $02, $7d
    ; End script.
    db $ff

C1Sc3_4A:
    ; Test selected attribute bit 0.
    db $07

jr_006_580c:
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_4B
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_58:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EB
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EF
    ; Test object flag.
    db $16, $a5
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_C7

jr_006_581f:
    ; Finish Case I item placement.
    db $5b
    ; Set object flag.
    db $17, $a3
    ; End script.
    db $ff

C1Sc3_4B:
    ; Show message 2.
    db $02, $56
    ; End script.
    db $ff

C1Loc3_EB:
    ; Show message 2.
    db $02, $57
    ; End script.
    db $ff

C1Sc3_4C:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_4B
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_59:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05

jr_006_5832:
    dw C1Loc3_EB
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_F0
    ; Finish Case I item placement.
    db $5b

C1Loc3_F0:
    ; End script.
    db $ff

C1Sc3_4D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_4B
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_5A:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EB
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_F0
    ; Test object flag.
    db $16, $a7
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_C7
    ; Finish Case I item placement.
    db $5b
    ; Set object flag.
    db $17, $a4
    ; End script.
    db $ff

C1Sc3_4E:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_4B
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_5B:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EB
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_F0
    ; Test object flag.
    db $16, $7d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EE
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

C1Sc3_4F:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_4B
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_5C:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EB

jr_006_5873:
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_F0
    ; Test object flag.
    db $16, $7b
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EE
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

C1Sc3_50:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_4B
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_5D:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EB
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05

jr_006_588b:
    dw C1Loc3_F0

jr_006_588d:
    ; Test object flag.
    db $16, $a6
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_C7
    ; Finish Case I item placement.
    db $5b
    ; Set object flag.
    db $17, $a2
    ; End script.
    db $ff

C1Sc3_51:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_4B
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_5E:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EB

jr_006_58a1:
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_F0
    ; Test object flag.
    db $16, $7c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_EE
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

C1Sc3_52:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_5F:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $03
    ; Target C1Loc3_61; retain the interior label.
    db $2d

jr_006_58b7:
    db $59
    db $03, $0e
    dw C1Loc3_63
    db $03, $10
    dw C1Loc3_64
    db $03, $11
    dw C1Loc3_65
    db $03, $12
    dw C1Loc3_66
    db $03, $13
    dw C1Loc3_67
    db $03, $16
    ; Target C1Loc3_68; retain the interior label.
    db $9c

jr_006_58cf:
    db $59
    db $03, $17
    dw C1Loc3_69
    db $03, $18
    dw C1Loc3_6A
    db $03, $19
    dw C1Loc3_6B
    db $03, $1a
    dw C1Loc3_6C
    db $03, $1b
    dw C1Loc3_6D
    db $03, $1c
    dw C1Loc3_6E
    db $03, $1d
    dw C1Loc3_6F
    db $03, $1e
    dw C1Loc3_62
    db $03, $21
    dw C1Loc3_70
    db $03, $22
    dw C1Loc3_71
    db $03, $24
    dw C1Loc3_62
    db $03, $2b
    dw C1Loc3_72
    db $03, $2c
    dw C1Loc3_73
    db $03, $2e
    dw C1Loc3_74
    db $03, $2f
    dw C1Loc3_75
    db $03, $31
    dw C1Loc3_62
    db $03, $32
    dw C1Loc3_76
    db $04, $05
    dw C1Loc3_77
    db $04, $08
    dw C1Loc3_62
    db $04, $0a
    dw C1Loc3_78
    db $04, $0d
    dw C1Loc3_79
    db $fe, $fe
    dw C1Sc3_53
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Resume text.
    db $45
    ; End script.
    db $ff

C1Loc3_60:
    ; Show message 2.
    db $02, $2a
    ; End script.
    db $ff

C1Loc3_61:
    ; Test item flag.
    db $52, $03
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $03
    ; Set text name 0.
    db $1e, $03
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Sc3_53:
    ; Show message 2.
    db $02, $37
    ; End script.
    db $ff

C1Sc3_54:
    ; Show message 1.
    db $01, $93
    ; End script.
    db $ff

C1Loc3_62:
    ; Show message 2.
    db $02, $50
    ; End script.
    db $ff

C1Loc3_63:
    ; Test item flag.
    db $52, $0e
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Test object flag.
    db $16, $a7
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_C7
    ; Set item state.
    db $53, $0e
    ; Set text name 0.
    db $1e, $0e
    ; Show message 2.
    db $02

jr_006_5952:
    db $10
    ; Drop selected list item.
    db $49
    ; Set object flag.
    db $17, $a4
    ; End script.
    db $ff

C1Loc3_64:
    ; Test item flag.
    db $52, $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Test object flag.
    db $16, $7d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_C7
    ; Set item state.
    db $53, $10
    ; Set text name 0.
    db $1e, $10
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_65:
    ; Test item flag.
    db $52, $11
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Test object flag.
    db $16, $7b
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_C7
    ; Set item state.
    db $53, $11
    ; Set text name 0.
    db $1e, $11
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_66:
    ; Test item flag.
    db $52, $12
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Test object flag.
    db $16, $a6
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_C7
    ; Set item state.
    db $53, $12
    ; Set text name 0.
    db $1e, $12
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; Set object flag.
    db $17, $a2
    ; End script.
    db $ff

C1Loc3_67:
    ; Test item flag.
    db $52, $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $13
    ; Set text name 0.
    db $1e, $13
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_68:
    ; Test item flag.
    db $52, $16
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $16
    ; Set text name 0.
    db $1e, $16
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_69:
    ; Test item flag.
    db $52, $17
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $17
    ; Set text name 0.
    db $1e, $17
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_6A:
    ; Test item flag.
    db $52, $18
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $18
    ; Set text name 0.
    db $1e

jr_006_59be:
    db $18
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49

jr_006_59c2:
    ; End script.
    db $ff

C1Loc3_6B:
    ; Test item flag.
    db $52, $19
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $19
    ; Set text name 0.
    db $1e, $19
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_6C:
    ; Test item flag.
    db $52, $1a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $1a
    ; Set text name 0.
    db $1e, $1a
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49

jr_006_59dc:
    ; End script.
    db $ff

C1Loc3_6D:
    ; Test item flag.
    db $52, $1b
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Test object flag.
    db $16, $a5
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_C7
    ; Set item state.
    db $53, $1b
    ; Set text name 0.
    db $1e, $1b
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; Set object flag.
    db $17, $a3
    ; End script.
    db $ff

C1Loc3_6E:
    ; Test item flag.
    db $52, $1c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $1c
    ; Set text name 0.
    db $1e, $1c
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_6F:
    ; Test item flag.
    db $52, $1d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $1d
    ; Set text name 0.
    db $1e, $1d
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_70:
    ; Test item flag.
    db $52, $21
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $21
    ; Set text name 0.
    db $1e, $21
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_71:
    ; Test item flag.
    db $52, $22
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $22
    ; Set text name 0.
    db $1e, $22
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_72:
    ; Test item flag.
    db $52, $2b
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $2b
    ; Set text name 0.
    db $1e, $2b
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_73:
    ; Test item flag.
    db $52, $2c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $2c
    ; Set text name 0.
    db $1e, $2c
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_74:
    ; Test item flag.
    db $52, $2e
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $2e
    ; Set text name 0.
    db $1e, $2e
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_75:
    ; Test item flag.
    db $52, $2f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Test object flag.
    db $16, $7c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_C7
    ; Set item state.
    db $53, $2f
    ; Set text name 0.
    db $1e, $2f
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_76:
    ; Test item flag.
    db $52, $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Set item state.
    db $53, $32
    ; Set text name 0.
    db $1e, $32
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_77:
    ; Test property 4 bit 0.
    db $5d, $05
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Test object flag.
    db $16, $7d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_C7
    ; Set property 4 bit 1.
    db $54, $05
    ; Set text name 0.
    db $1e, $45
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_78:
    ; Test property 4 bit 0.
    db $5d, $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Test object flag.
    db $16, $97
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_C7
    ; Set property 4 bit 1.
    db $54, $0a
    ; Set text name 0.
    db $1e, $4a
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Loc3_79:
    ; Test property 4 bit 0.
    db $5d, $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_60
    ; Test object flag.
    db $16, $98
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_C7
    ; Set property 4 bit 1.
    db $54, $0d
    ; Set text name 0.
    db $1e, $4d
    ; Show message 2.
    db $02, $10
    ; Drop selected list item.
    db $49
    ; End script.
    db $ff

C1Sc3_55:
    ; Show message 2.
    db $02, $52
    ; End script.
    db $ff

C1Sc3_56:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_7A:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $4b
    dw C1Loc3_7B
    db $00, $4c
    dw C1Loc3_7D
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_7B:
    ; Test state bit.
    db $2e, $2f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_7C
    ; Show message 1.
    db $01, $4e
    ; Set state and refresh.
    db $33, $2f
    ; Set object flag.
    db $17, $59
    ; Set object flag.
    db $17, $ac
    ; End script.
    db $ff

C1Loc3_7C:
    ; Show message 1.
    db $01, $4f
    ; Clear state and refresh.
    db $34, $2f
    ; Clear object flag.
    db $18, $59
    ; End script.
    db $ff

C1Loc3_7D:
    ; Test current room.
    db $19, $29
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_7E
    ; Clear state and refresh.
    db $34, $30
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $52
    ; Show message 2.
    db $02, $42
    ; Set current room.
    db $35, $29
    ; Set state and refresh.
    db $33, $2f
    ; End script.
    db $ff

C1Loc3_7E:
    ; Clear state and refresh.
    db $34, $2f
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $52
    ; Show message 2.
    db $02, $41
    ; Show message 2.
    db $02, $42
    ; Set current room.
    db $35, $41
    ; Set state and refresh.
    db $33, $30
    ; End script.
    db $ff

C1Sc3_57:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_7F:
    ; Match alternate item against type, ID and script target rows.
    db $29, $05

jr_006_5af7:
    db $47
    dw C1Loc3_2F
    db $01, $02
    dw C1Loc3_30
    db $01, $06
    dw C1Loc3_2F
    db $01, $08
    dw C1Loc3_2F
    db $05, $06
    dw C1Loc3_80
    db $05, $14
    dw C1Loc3_2F
    db $05, $1b
    dw C1Loc3_2F
    db $05, $31
    dw C1Loc3_2F
    db $05, $36
    dw C1Loc3_2F
    db $05, $38
    dw C1Loc3_2F
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_80:
    ; Test object flag.
    db $16, $5a
    ; Branch if result bit 0 is set.
    db $04

jr_006_5b25:
    dw C1Loc3_81
    ; Show message 0.
    db $00, $45
    ; Set state and refresh.
    db $33, $06
    ; Set object flag.
    db $17, $5a
    ; End script.
    db $ff

C1Loc3_81:
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bc
    ; Show message 2.
    db $02, $12
    ; Clear state and refresh.
    db $34, $06
    ; Clear object flag.
    db $18, $5a
    ; End script.
    db $ff

C1Sc3_58:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_82:
    ; Match alternate item against type, ID and script target rows.
    db $29, $05, $47
    dw C1Loc3_2F
    db $01, $02
    dw C1Loc3_30
    db $01, $06
    ; Target C1Loc3_2F; retain the interior label.
    db $2f

jr_006_5b4c:
    db $52
    db $01, $08
    dw C1Loc3_2F
    db $05, $06
    dw C1Loc3_2F
    db $05, $14
    dw C1Loc3_2F
    db $05, $1b
    dw C1Loc3_2F
    db $05, $31
    dw C1Loc3_2F
    db $05, $36
    dw C1Loc3_83
    db $05, $38
    dw C1Loc3_86
    db $00, $6b
    dw C1Loc3_85
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_83:
    ; Test object flag.
    db $16, $5f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_84
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bb
    ; Show message 2.
    db $02, $91
    ; Set state and refresh.
    db $33, $36
    ; Set object flag.
    db $17, $5f
    ; End script.
    db $ff

C1Loc3_84:
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bc
    ; Show message 2.
    db $02, $12
    ; Clear state and refresh.
    db $34, $36
    ; Clear object flag.
    db $18, $5f
    ; End script.
    db $ff

C1Loc3_85:
    ; Set alternate item type and ID.
    db $6b, $05, $38

C1Loc3_86:
    ; Test object flag.
    db $16, $5e
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_88
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bb
    ; Show message 2.
    db $02, $91
    ; Set state and refresh.
    db $33, $38
    ; Set object flag.
    db $17, $5e
    ; Test object flag.
    db $16, $16
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_87
    ; Set object flag.
    db $17, $b0
    ; Set state bit.
    db $2f

jr_006_5ba6:
    db $3a
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
    db $02

jr_006_5bb4:
    db $62
    ; Set exit flag and end this action.
    db $48

C1Loc3_87:
    ; End script.
    db $ff

C1Loc3_88:
    ; Set text name 0.
    db $1e, $b0
    ; Set text name 1.
    db $1f, $bc
    ; Show message 2.
    db $02, $12
    ; Clear state and refresh.
    db $34, $38
    ; Clear object flag.
    db $18, $5e
    ; End script.
    db $ff

C1Sc3_59:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_89:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1Loc3_B6
    db $00, $75
    dw C1Loc3_B6
    db $00, $76
    dw C1Loc3_B6
    db $00, $77

jr_006_5bd8:
    dw C1Loc3_B6
    db $00, $2f
    dw C1Loc3_B8
    db $00, $34
    dw C1Loc3_AC
    db $00, $5f
    dw C1Loc3_B2
    db $00, $73
    dw C1Loc3_8A
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_8A:
    ; Show message 1.
    db $01, $b0
    ; End script.
    db $ff

C1Sc3_5A:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_8B:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1Loc3_B6
    db $00, $75
    dw C1Loc3_B6
    db $00, $76
    dw C1Loc3_B6
    db $00, $77
    dw C1Loc3_B6
    db $00, $2f
    dw C1Loc3_B8
    db $00, $34
    dw C1Loc3_AC
    db $00, $5f
    dw C1Loc3_B2
    db $00, $73
    dw C1Loc3_8C
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_8C:
    ; Show message 2.
    db $02, $53
    ; Drop list value.
    db $55, $23
    ; End script.
    db $ff

C1Sc3_5B:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_8D:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1Loc3_B6
    db $00, $75
    dw C1Loc3_B6
    db $00, $76
    dw C1Loc3_B6
    db $00, $77
    dw C1Loc3_B6
    db $00, $2f
    dw C1Loc3_B8
    db $00, $34
    dw C1Loc3_AC
    db $00, $5f
    dw C1Loc3_B2
    db $00, $73
    dw C1Loc3_8E
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_8E:
    ; Show message 0.
    db $00, $0c
    ; End script.
    db $ff

C1Sc3_5C:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_8F:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1Loc3_B6
    db $00, $75
    dw C1Loc3_B6
    db $00, $76
    dw C1Loc3_B6
    db $00, $77
    dw C1Loc3_B6
    db $00, $2f
    dw C1Loc3_B8
    db $00, $34
    dw C1Loc3_AC
    db $00, $5f
    dw C1Loc3_B2
    db $00, $73
    dw C1Loc3_90
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_90:
    ; Test object flag.
    db $16, $b6
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_91
    ; Set object flag.
    db $17, $b6
    ; Show message 0.
    db $00, $44
    ; End script.
    db $ff

C1Loc3_91:
    ; Show message 0.
    db $00, $05
    ; End script.
    db $ff

C1Sc3_5D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_92:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1Loc3_93
    db $fe, $fe
    dw C1Sc3_53
    ; Unreferenced byte pattern: swap operation slots.
    db $60

C1Loc3_93:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_98
    ; Set text name 0.
    db $1e, $b4
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $29
    ; End script.
    db $ff

C1Sc3_5E:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_94:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1Loc3_95
    db $fe, $fe
    dw C1Sc3_53
    ; Unreferenced byte pattern: swap operation slots.
    db $60

C1Loc3_95:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_98
    ; Set text name 0.
    db $1e, $b4
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $58
    ; End script.
    db $ff

C1Sc3_5F:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_96:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1Loc3_97
    db $fe, $fe
    dw C1Sc3_53
    ; Unreferenced byte pattern: swap operation slots.
    db $60

C1Loc3_97:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_98
    ; Set text name 0.
    db $1e, $b4
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $59
    ; End script.
    db $ff

C1Loc3_98:
    ; Show message 0.
    db $00, $7e
    ; End script.
    db $ff

C1Sc3_60:
    ; Test object flag.
    db $16, $ab
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_99:
    ; Match alternate item against type, ID and script target rows.
    db $29, $04, $02
    dw C1Loc3_37
    db $04, $07
    dw C1Loc3_37
    db $04, $11
    dw C1Loc3_36
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_01:
    ; Show message 0.
    db $00, $13
    ; End script.
    db $ff

C1Sc3_61:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_9A:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1Loc3_9B
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_9B:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_98
    ; Set text name 0.
    db $1e, $b9
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $36
    ; End script.
    db $ff

C1Sc3_62:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_9C:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1Loc3_9D
    db $fe, $fe
    dw C1Sc3_53
    ; Unreferenced byte pattern: swap operation slots.
    db $60

C1Loc3_9D:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_98
    ; Set text name 0.
    db $1e, $b7
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $34
    ; End script.
    db $ff

C1Sc3_63:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 0.
    db $00, $0e
    ; Resume text.
    db $45
    ; End script.
    db $ff

C1Sc3_64:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_9E:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2e
    dw C1Loc3_B6
    db $00, $75
    dw C1Loc3_B6
    db $00, $76
    dw C1Loc3_B6
    db $00, $77
    dw C1Loc3_B6
    db $00, $2f
    dw C1Loc3_B8
    db $00, $34
    dw C1Loc3_AC
    db $00, $5f
    dw C1Loc3_B2
    db $00, $73
    dw C1Loc3_9F
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_9F:
    ; Show message 0.
    db $00, $15
    ; Drop list value.
    db $55, $02
    ; End script.
    db $ff

C1Sc3_65:
    ; Show message 0.
    db $00, $0f
    ; End script.
    db $ff

C1Sc3_66:
    ; Show message 0.
    db $00, $10
    ; End script.
    db $ff

C1Sc3_67:
    ; Show message 0.
    db $00, $11
    ; End script.
    db $ff

C1Sc3_68:
    ; Test object flag.
    db $16, $ac
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_02
    ; Show message 0.
    db $00, $0b
    ; End script.
    db $ff

C1Loc3_02:
    ; Show message 2.
    db $02, $24
    ; End script.
    db $ff

C1Sc3_69:
    ; Show message 2.
    db $02, $ed
    ; End script.
    db $ff

C1Sc3_6A:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_A0:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2b
    dw C1Loc3_23
    db $00, $2e
    dw C1Loc3_A1
    db $00, $75
    dw C1Loc3_A1
    db $00, $76
    dw C1Loc3_A1
    db $00, $77
    dw C1Loc3_A1
    db $00, $2f
    dw C1Loc3_A5
    db $00, $34
    dw C1Loc3_AC
    db $00, $36
    dw C1Loc3_AD
    db $00, $40
    dw C1Loc3_22
    db $00, $42
    dw C1Loc3_27
    db $00, $44
    dw C1Loc3_AE
    db $00, $46
    dw C1Loc3_27
    db $00, $48
    dw C1Loc3_B1
    db $00, $5f
    dw C1Loc3_B2
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_A1:
    ; Test object flag.
    db $16, $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_A4
    ; Test object flag.
    db $16, $06
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_A3
    ; Test object flag.
    db $16, $05
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_A2
    ; Show message 1.
    db $01, $ec
    ; Set item state.
    db $53, $54
    ; Drop list value.
    db $55, $54
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, $2a
    ; Set first item type and ID.
    db $5c, $05, $19
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $11
    ; Show message 2.
    db $02, $b9
    ; End script.
    db $ff

C1Loc3_A2:
    ; Show message 1.
    db $01, $f3
    ; Set item state.
    db $53, $54
    ; Drop list value.
    db $55, $54
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, $2a
    ; Set first item type and ID.
    db $5c, $05, $1d
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $14
    ; Show message 2.
    db $02, $d0
    ; End script.
    db $ff

C1Loc3_A3:
    ; Show message 1.
    db $01, $f3
    ; Set item state.
    db $53, $54
    ; Drop list value.
    db $55, $54
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, $2a
    ; Set first item type and ID.
    db $5c, $05, $17
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $12
    ; Show message 2.
    db $02, $c2
    ; End script.
    db $ff

C1Loc3_A4:
    ; Show message 1.
    db $01, $f3
    ; Set item state.
    db $53, $54
    ; Drop list value.
    db $55, $54
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, $2a
    ; Set first item type and ID.
    db $5c, $05, $1c
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $13
    ; Show message 2.
    db $02, $cf
    ; End script.
    db $ff

C1Loc3_A5:
    ; Show message 1.
    db $01, $e1
    ; Set item state.
    db $53, $54
    ; Drop list value.
    db $55, $54
    ; Clear attribute bit 0.
    db $09

C1Loc3_EC:
    ; Set object flag.
    db $17, $2b
    ; Set first item type and ID.
    db $5c, $05, $16
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $16
    ; Show message 2.
    db $02, $d1
    ; End script.
    db $ff

C1Sc3_6B:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_A6:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2b
    dw C1Loc3_23
    db $00, $2e
    dw C1Loc3_A7
    db $00, $75
    dw C1Loc3_A7
    db $00, $76
    dw C1Loc3_A7
    db $00, $77
    dw C1Loc3_A7
    db $00, $2f
    dw C1Loc3_AB
    db $00, $34
    dw C1Loc3_AC
    db $00, $36
    dw C1Loc3_AD
    db $00, $40
    dw C1Loc3_22
    db $00, $42
    dw C1Loc3_27
    db $00, $44
    dw C1Loc3_AE
    db $00, $46
    dw C1Loc3_27
    db $00, $48
    dw C1Loc3_B1
    db $00, $5f
    dw C1Loc3_B2
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_A7:
    ; Test object flag.
    db $16, $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_AA
    ; Test object flag.
    db $16, $06
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_A9
    ; Test object flag.
    db $16, $05
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_A8
    ; Show message 1.
    db $01, $ec
    ; Set item state.
    db $53, $07
    ; Drop list value.
    db $55, $07
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, $2a
    ; Set first item type and ID.
    db $5c, $05, $19
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $11
    ; Show message 2.
    db $02

jr_006_5e9d:
    db $b9
    ; End script.
    db $ff

C1Loc3_A8:
    ; Show message 1.
    db $01, $f3
    ; Set item state.
    db $53, $07
    ; Drop list value.
    db $55, $07
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, $2a
    ; Set first item type and ID.
    db $5c, $05, $1d
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $14
    ; Test object flag.
    db $16, $7a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_ED
    ; Show message 2.
    db $02, $d0
    ; End script.
    db $ff

C1Loc3_A9:
    ; Show message 1.
    db $01, $f3
    ; Set item state.
    db $53, $07
    ; Drop list value.
    db $55, $07
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, $2a
    ; Set first item type and ID.
    db $5c, $05, $17
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $12

jr_006_5ec7:
    ; Show message 2.
    db $02, $c2
    ; End script.
    db $ff

C1Loc3_AA:
    ; Show message 1.
    db $01, $f3
    ; Set item state.
    db $53, $07
    ; Drop list value.
    db $55, $07
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, $2a
    ; Set first item type and ID.
    db $5c, $05, $1c
    ; Set object flag.
    db $17, $b0
    ; Move to the room argument if the selected state permits.
    db $06, $13
    ; Show message 2.
    db $02, $cf
    ; End script.
    db $ff

C1Loc3_ED:
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

C1Loc3_AB:
    ; Show message 1.
    db $01, $e1
    ; Set item state.
    db $53, $07
    ; Drop list value.
    db $55, $07
    ; Clear attribute bit 0.
    db $09
    ; Jump to script.
    db $1c
    dw C1Loc3_EC
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc3_AC:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 2.
    db $02, $e6
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc3_AD:
    ; Show message 2.
    db $02, $e1
    ; End script.
    db $ff

C1Loc3_AE:
    ; Test object flag.
    db $16, $a9
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_AF
    ; Show message 2.
    db $02, $6b
    ; End script.
    db $ff

C1Loc3_AF:
    ; Test Case I coins against limit.
    db $4a, $00
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_B0
    ; Test Case I coins against limit.
    db $4a, $01
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_B0
    ; Test Case I coins against limit.
    db $4a, $02
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_B0
    ; Show message 0.
    db $00, $18
    ; End script.
    db $ff

C1Loc3_B0:
    ; Show message 0.
    db $00, $0a
    ; Clear object flag.
    db $18, $81
    ; Clear object flag.
    db $18, $a9
    ; Set object flag.
    db $17, $82
    ; End script.
    db $ff

C1Loc3_B1:
    ; Test object flag.
    db $16, $a9
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_AF
    ; Show message 2.
    db $02, $6b
    ; End script.
    db $ff

C1Loc3_B2:
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

C1Sc3_6C:
    ; Show message 0.
    db $00, $09
    ; End script.
    db $ff

C1Sc3_6D:
    ; End script.
    db $ff

C1Sc3_6E:
    ; Test held item.
    db $4b, $29
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_16
    ; Test held item.
    db $4b, $33
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_17
    ; Test held item.
    db $4b, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_18
    ; Test held item.
    db $4b, $35
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_19
    ; Test held item.
    db $4b, $36
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_1A
    ; Test held item.
    db $4b, $55
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_1B
    ; Test held item.
    db $4b, $56
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_1B
    ; Test held item.
    db $4b, $57
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_1B
    ; Test held item.
    db $4b, $58
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_16
    ; Test held item.
    db $4b, $59
    ; Branch if result bit 0 is set.
    db $04
    ; Target C1Loc3_16; retain the interior label.
    db $87

jr_006_5f6a:
    db $5f
    ; Test held item.
    db $4b, $5a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_17
    ; Test held item.
    db $4b, $5b
    ; Branch if result bit 0 is set.
    db $04
    ; Target C1Loc3_19; retain the interior label.
    db $96

jr_006_5f74:
    db $5f
    ; Test held item.
    db $4b, $5c
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_19
    ; Test object flag.
    db $16, $7e
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_1C
    ; Test object flag.
    db $16, $26
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_1C
    ; Show message 0.
    db $00, $78
    ; End script.
    db $ff

C1Loc3_16:
    ; Set text name 0.
    db $1e, $b4
    ; Show message 2.
    db $02, $09
    ; End script.
    db $ff

C1Loc3_17:
    ; Set text name 0.
    db $1e, $b6
    ; Show message 2.
    db $02, $09
    ; End script.
    db $ff

C1Loc3_18:
    ; Set text name 0.
    db $1e, $b7
    ; Show message 2.
    db $02, $09
    ; End script.
    db $ff

C1Loc3_19:
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $09
    ; End script.
    db $ff

C1Loc3_1A:
    ; Set text name 0.
    db $1e, $b9
    ; Show message 2.
    db $02, $09
    ; End script.
    db $ff

C1Loc3_1B:
    ; Set text name 0.
    db $1e, $b3
    ; Show message 2.
    db $02, $09
    ; End script.
    db $ff

C1Loc3_1C:
    ; Show message 2.
    db $02, $80
    ; End script.
    db $ff

C1Sc3_6F:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_04
    ; Test object flag.
    db $16, $24
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_03
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Show message 0.
    db $00, $7b
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; Set object flag.
    db $17, $24
    ; End script.
    db $ff

C1Loc3_03:
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $0a
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Loc3_04:
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Return held item to list.
    db $61
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_B3
    ; Show message 2.
    db $02, $22
    ; End script.
    db $ff

C1Loc3_B3:
    ; Show message 2.
    db $02, $23
    ; End script.
    db $ff

C1Sc3_70:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_B4:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $2b
    dw C1Loc3_B5
    db $00, $2e
    dw C1Loc3_B6
    db $00, $75
    dw C1Loc3_B6
    db $00, $76
    dw C1Loc3_B6
    db $00, $77
    dw C1Loc3_B6
    db $00, $2f
    dw C1Loc3_B8
    db $00, $34
    dw C1Loc3_AC
    db $00, $35
    dw C1Loc3_B9
    db $00, $36
    dw C1Loc3_C3
    db $00, $3f
    dw C1Loc3_BF
    db $00, $40
    dw C1Loc3_B5
    db $00, $42
    dw C1Loc3_C4
    db $00, $46
    dw C1Loc3_C4
    db $00, $5f
    dw C1Loc3_B2
    db $00, $64
    dw C1Loc3_C5
    db $00, $68
    dw C1Loc3_CC
    db $00, $73
    dw C1Loc3_CF
    db $03, $28
    dw C1Sc3_53
    db $03, $29
    dw C1Sc3_53
    db $03, $2a
    dw C1Sc3_53
    db $03, $33
    dw C1Sc3_53
    db $03, $34
    dw C1Sc3_53
    db $03, $35
    dw C1Sc3_53
    db $03, $55
    dw C1Sc3_53
    db $03, $56
    dw C1Sc3_53
    db $03, $57
    dw C1Sc3_53
    db $03, $58
    dw C1Sc3_53
    db $03, $59
    dw C1Sc3_53
    db $03, $5a
    dw C1Sc3_53
    db $03, $5b
    dw C1Sc3_53
    db $03, $5c
    dw C1Sc3_53
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_B5:
    ; Show message 2.
    db $02

jr_006_605e:
    db $ca
    ; End script.
    db $ff

C1Loc3_B6:
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
    dw C1Loc3_25
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc3_B7:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Show message 1.
    db $01, $e3
    ; Draw room directly.
    db $69, $16
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $e5
    ; Show message 1.
    db $01, $e9
    ; End script.
    db $ff

C1Loc3_B8:
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

C1Loc3_B9:
    ; Test held item.
    db $4b, $29
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BA
    ; Test held item.
    db $4b, $33
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BB
    ; Test held item.
    db $4b, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BC
    ; Test held item.
    db $4b, $35
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Test held item.
    db $4b, $36
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BE
    ; Test held item.
    db $4b, $55
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Test held item.
    db $4b, $56
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Test held item.
    db $4b, $57
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Test held item.
    db $4b, $58
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BA
    ; Test held item.
    db $4b, $59
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BA
    ; Test held item.
    db $4b, $5a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BB
    ; Test held item.
    db $4b, $5b
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Test held item.
    db $4b, $5c
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Show message 2.
    db $02, $7b
    ; End script.
    db $ff

C1Loc3_BA:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b4
    ; Show message 2.
    db $02, $19
    ; Show message 2.
    db $02, $0e
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

C1Loc3_BB:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b6
    ; Show message 2.
    db $02, $19
    ; Show message 2.
    db $02, $0e
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

C1Loc3_BC:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b7
    ; Show message 2.
    db $02, $19
    ; Show message 2.
    db $02, $0e
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

C1Loc3_BD:
    ; Show message 2.
    db $02, $7c
    ; End script.
    db $ff

C1Loc3_BE:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b9
    ; Show message 2.
    db $02, $19
    ; Show message 2.
    db $02, $0e
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

C1Loc3_BF:
    ; Test held item.
    db $4b, $29
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C0
    ; Test held item.
    db $4b, $33
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BB
    ; Test held item.
    db $4b, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BC
    ; Test held item.
    db $4b, $35
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Test held item.
    db $4b, $36
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BE
    ; Test held item.
    db $4b, $55
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C1
    ; Test held item.
    db $4b, $56
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C1
    ; Test held item.
    db $4b, $57
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C1
    ; Test held item.
    db $4b, $58
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C0
    ; Test held item.
    db $4b, $59
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C0
    ; Test held item.
    db $4b, $5a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BB
    ; Test held item.
    db $4b, $5b
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Test held item.
    db $4b, $5c
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Show message 2.
    db $02, $7b
    ; End script.
    db $ff

C1Loc3_C0:
    ; Show message 2.
    db $02, $fd
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, $86
    ; End script.
    db $ff

C1Loc3_C1:
    ; Test object flag.
    db $16, $87
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_C2
    ; Test object flag.
    db $16, $85
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Show message 2.
    db $02, $f8
    ; Add quick-list value.
    db $42, $a4
    ; Set object flag.
    db $17, $85
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

C1Loc3_C2:
    ; Show message 2.
    db $02, $f9
    ; End script.
    db $ff

C1Loc3_C3:
    ; Show message 2.
    db $02, $e2
    ; End script.
    db $ff

C1Loc3_C4:
    ; Show message 1.
    db $01, $40
    ; End script.
    db $ff

C1Loc3_C5:
    ; Test held item.
    db $4b, $29
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C6
    ; Test held item.
    db $4b, $33
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C8
    ; Test held item.
    db $4b, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C9
    ; Test held item.
    db $4b, $35
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Test held item.
    db $4b, $36
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_CA
    ; Test held item.
    db $4b, $55
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_CB
    ; Test held item.
    db $4b, $56
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_CB
    ; Test held item.
    db $4b, $57
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_CB
    ; Test held item.
    db $4b, $58
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C6
    ; Test held item.
    db $4b, $59
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C6
    ; Test held item.
    db $4b, $5a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C8
    ; Test held item.
    db $4b, $5b
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Test held item.
    db $4b, $5c
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Show message 2.
    db $02, $7b
    ; End script.
    db $ff

C1Loc3_C6:
    ; Show message 1.
    db $01, $c8
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, $88
    ; End script.
    db $ff

C1Loc3_C7:
    ; Show message 2.
    db $02, $7d
    ; End script.
    db $ff

C1Loc3_C8:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b6
    ; Show message 2.
    db $02, $19
    ; Show message 1.
    db $01, $79
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

C1Loc3_C9:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b7
    ; Show message 2.
    db $02, $19
    ; Show message 0.
    db $00, $7d
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

C1Loc3_CA:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b9
    ; Show message 2.
    db $02, $19
    ; Show message 0.
    db $00, $7d
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

C1Loc3_CB:
    ; Test object flag.
    db $16, $89
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Show message 1.
    db $01, $c6
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, $89
    ; End script.
    db $ff

C1Loc3_CC:
    ; Test held item.
    db $4b, $29
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_CD
    ; Test held item.
    db $4b, $33
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C8
    ; Test held item.
    db $4b, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C9
    ; Test held item.
    db $4b, $35
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Test held item.
    db $4b, $36
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_CA
    ; Test held item.
    db $4b, $55
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_CE
    ; Test held item.
    db $4b, $56
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_CE
    ; Test held item.
    db $4b, $57
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_CE
    ; Test held item.
    db $4b, $58
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_CD
    ; Test held item.
    db $4b, $59
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_CD
    ; Test held item.
    db $4b, $5a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_C8
    ; Test held item.
    db $4b, $5b
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Test held item.
    db $4b, $5c
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Show message 2.
    db $02, $7b
    ; End script.
    db $ff

C1Loc3_CD:
    ; Show message 1.
    db $01, $da
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, $8a
    ; End script.
    db $ff

C1Loc3_CE:
    ; Test object flag.
    db $16, $8b
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Show message 1.
    db $01, $d6
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, $8b
    ; End script.
    db $ff

C1Loc3_CF:
    ; Test held item.
    db $4b, $29
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_D0
    ; Test held item.
    db $4b, $33
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_D1
    ; Test held item.
    db $4b, $34
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_D2
    ; Test held item.
    db $4b, $35
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_D4
    ; Test held item.
    db $4b, $36
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_D3
    ; Test held item.
    db $4b, $55
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Test held item.
    db $4b, $56
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Test held item.
    db $4b, $57
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_BD
    ; Test held item.
    db $4b, $58
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_D0
    ; Test held item.
    db $4b, $59
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_D0
    ; Test held item.
    db $4b, $5a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_D1
    ; Test held item.
    db $4b, $5b
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_D4
    ; Test held item.
    db $4b, $5c
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_D4
    ; Show message 2.
    db $02, $7b
    ; End script.
    db $ff

C1Loc3_D0:
    ; Show message 0.
    db $00, $7f
    ; Clear held item.
    db $4d
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc3_D1:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b6
    ; Show message 2.
    db $02, $19
    ; Show message 2.
    db $02, $b6
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

C1Loc3_D2:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b7
    ; Show message 2.
    db $02, $19
    ; Show message 2.
    db $02, $b7
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

C1Loc3_D3:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $b9
    ; Show message 2.
    db $02, $19
    ; Show message 1.
    db $01, $07
    ; Clear held item.
    db $4d
    ; End script.
    db $ff

C1Loc3_D4:
    ; Test object flag.
    db $16, $71
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_D5
    ; Test object flag.
    db $16, $2c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_D6
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $19
    ; Run scene effect.
    db $46, $04
    ; Show message 1.
    db $01, $8c
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, $25
    ; End script.
    db $ff

C1Loc3_D5:
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $19
    ; Run scene effect.
    db $46, $03
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, $71
    ; End script.
    db $ff

C1Loc3_D6:
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $19
    ; Run scene effect.
    db $46, $01
    ; Clear held item.
    db $4d
    ; Set object flag.
    db $17, $2c
    ; End script.
    db $ff

C1Sc3_71:
    ; Show message 2.
    db $02, $d5
    ; End script.
    db $ff

C1Sc3_72:
    ; Show message 2.
    db $02, $88
    ; End script.
    db $ff

C1Sc3_73:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_D7:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $24
    dw C1Loc3_D8
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_D8:
    ; Show message 1.
    db $01, $d4
    ; Set object flag.
    db $17, $78
    ; End script.
    db $ff

C1Sc3_74:
    ; Show message 2.
    db $02, $89
    ; End script.
    db $ff

C1Sc3_75:
    ; Show message 2.
    db $02, $31
    ; End script.
    db $ff

C1Sc3_76:
    ; Set object flag.
    db $17, $a7
    ; Test object flag.
    db $16, $a5
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_05
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $8d
    ; Show message 1.
    db $01, $df
    ; End script.
    db $ff

C1Loc3_05:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $8d
    ; Show message 1.
    db $01, $de
    ; End script.
    db $ff

C1Sc3_77:
    ; Test object flag.
    db $16, $25
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_07
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $9e
    ; Test object flag.
    db $16, $7d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_06
    ; Resume text.
    db $45
    ; End script.
    db $ff

C1Loc3_06:
    ; Show message 2.
    db $02, $9f
    ; Add quick-list value.
    db $42, $a2
    ; Set object flag.
    db $17, $7d
    ; End script.
    db $ff

C1Loc3_07:
    ; Show message 2.
    db $02, $9e
    ; End script.
    db $ff

C1Sc3_78:
    ; Show message 1.
    db $01, $09
    ; Test object flag.
    db $16, $7b
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_08
    ; Add quick-list value.
    db $42, $a0
    ; Set object flag.
    db $17, $7b

C1Loc3_08:
    ; End script.
    db $ff

C1Sc3_79:
    ; Set object flag.
    db $17, $a6
    ; Test object flag.
    db $16, $9f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_0A
    ; Test object flag.
    db $16, $25
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_0B
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $0b
    ; Show message 1.
    db $01, $3f
    ; Test object flag.
    db $16, $7a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_09
    ; Add quick-list value.
    db $42, $a3
    ; Set object flag.
    db $17, $7a

C1Loc3_09:
    ; End script.
    db $ff

C1Loc3_0A:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $0b
    ; Show message 1.
    db $01, $65
    ; End script.
    db $ff

C1Loc3_0B:
    ; Show message 1.
    db $01, $0b
    ; End script.
    db $ff

C1Sc3_7A:
    ; Run scene effect.
    db $46, $09
    ; End script.
    db $ff

C1Sc3_7B:
    ; Show message 2.
    db $02, $ec
    ; End script.
    db $ff

C1Sc3_7C:
    ; Show message 1.
    db $01, $6d
    ; End script.
    db $ff

C1Sc3_7D:
    ; Show message 1.
    db $01, $70
    ; End script.
    db $ff

C1Sc3_7E:
    ; Show message 1.
    db $01, $7e
    ; End script.
    db $ff

C1Sc3_7F:
    ; Show message 1.
    db $01, $7f
    ; End script.
    db $ff

C1Sc3_80:
    ; Show message 1.
    db $01, $80
    ; End script.
    db $ff

C1Sc3_81:
    ; Test object flag.
    db $16, $71
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_0C
    ; Test object flag.
    db $16, $26
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_0C
    ; Show message 1.
    db $01, $81
    ; Set object flag.
    db $17, $26
    ; End script.
    db $ff

C1Loc3_0C:
    ; Show message 2.
    db $02, $46
    ; End script.
    db $ff

C1Sc3_82:
    ; Show message 1.
    db $01, $99
    ; Set object flag.
    db $17, $1b
    ; Set object flag.
    db $17, $a5
    ; End script.
    db $ff

C1Sc3_83:
    ; Show message 1.
    db $01, $97
    ; End script.
    db $ff

C1Sc3_84:
    ; Show message 1.
    db $01, $98
    ; End script.
    db $ff

C1Sc3_85:
    ; Show message 1.
    db $01, $9d
    ; End script.
    db $ff

C1Sc3_86:
    ; Show message 1.
    db $01, $b0
    ; End script.
    db $ff

C1Sc3_87:
    ; Show message 1.
    db $01, $b1
    ; End script.
    db $ff

C1Sc3_88:
    ; Show message 1.
    db $01, $c2
    ; End script.
    db $ff

C1Sc3_89:
    ; Show message 1.
    db $01, $c4
    ; End script.
    db $ff

C1Sc3_8A:
    ; Show message 1.
    db $01, $c5
    ; End script.
    db $ff

C1Sc3_8B:
    ; Test object flag.
    db $16, $78
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_0D
    ; Show message 1.
    db $01, $d2
    ; End script.
    db $ff

C1Loc3_0D:
    ; Show message 1.
    db $01, $d5
    ; Set object flag.
    db $17, $1a
    ; Set object flag.
    db $17, $9f
    ; End script.
    db $ff

C1Sc3_8C:
    ; Show message 1.
    db $01, $d1
    ; End script.
    db $ff

C1Sc3_8D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_D9:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $24
    dw C1Loc3_DA
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_DA:
    ; Test object flag.
    db $16, $78
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc3_53
    ; Show message 1.
    db $01, $d3
    ; End script.
    db $ff

C1Sc3_8E:
    ; Show message 1.
    db $01, $d0
    ; End script.
    db $ff

C1Sc3_8F:
    ; Test object flag.
    db $16, $b6
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_0E
    ; Show message 0.
    db $00, $40
    ; End script.
    db $ff

C1Loc3_0E:
    ; Show message 0.
    db $00, $05
    ; End script.
    db $ff

C1Sc3_90:
    ; Test object flag.
    db $16, $26
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_0F
    ; Show message 0.
    db $00, $75
    ; End script.
    db $ff

C1Loc3_0F:
    ; Set text name 0.
    db $1e, $b3
    ; Show message 2.
    db $02, $07
    ; End script.
    db $ff

C1Sc3_91:
    ; Test object flag.
    db $16, $26
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_10
    ; Show message 0.
    db $00, $76
    ; End script.
    db $ff

C1Loc3_10:
    ; Set text name 0.
    db $1e, $b4
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff

C1Sc3_92:
    ; Test object flag.
    db $16, $26
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_11
    ; Show message 0.
    db $00, $77
    ; End script.
    db $ff

C1Loc3_11:
    ; Set text name 0.
    db $1e, $2a
    ; Show message 2.
    db $02, $07
    ; End script.
    db $ff

C1Sc3_93:
    ; Test object flag.
    db $16, $28
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_12
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff

C1Loc3_12:
    ; Show message 2.
    db $02, $bf
    ; End script.
    db $ff

C1Sc3_94:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test object flag.
    db $16, $28
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_13
    ; Use one Case I coin.
    db $40
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_DB
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Set text name 0.
    db $1e, $2b
    ; Show message 2.
    db $02, $04
    ; Append selected item to list.
    db $1d
    ; Show message 2.
    db $02, $c4
    ; Show message 2.
    db $02, $c5
    ; Set object flag.
    db $17, $28

C1Loc3_DB:
    ; End script.
    db $ff

C1Loc3_13:
    ; Set text name 0.
    db $1e, $2b
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_95:
    ; Show message 2.
    db $02, $f5
    ; End script.
    db $ff

C1Sc3_96:
    ; Show message 1.
    db $01, $13
    ; End script.
    db $ff

C1Sc3_97:
    ; Show message 1.
    db $01, $5a
    ; End script.
    db $ff

C1Sc3_98:
    ; Test object flag.
    db $16, $74
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_14
    ; Show message 1.
    db $01, $5c
    ; Test object flag.
    db $16, $7c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_15
    ; End script.
    db $ff

C1Loc3_14:
    ; Show message 2.
    db $02, $44
    ; Test object flag.
    db $16, $7c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_15
    ; End script.
    db $ff

C1Loc3_15:
    ; Add quick-list value.
    db $42, $a1
    ; Set object flag.
    db $17, $7c
    ; End script.
    db $ff

C1Sc3_99:
    ; Show message 1.
    db $01, $6c
    ; End script.
    db $ff

C1Sc3_9A:
    ; Show message 1.
    db $01, $6a
    ; End script.
    db $ff

C1Sc3_9B:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_DC:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $24
    dw C1Loc3_DD
    db $01, $02
    dw C1Loc3_DE
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_DD:
    ; Show message 2.
    db $02, $61
    ; End script.
    db $ff

C1Loc3_DE:
    ; Swap operation slots.
    db $60
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_DF
    ; Show message 2.
    db $02, $8f
    ; Set state and refresh.
    db $33, $4a
    ; Set property 1 bit 2.
    db $2c, $02
    ; Keep selected change.
    db $26
    ; Set object flag.
    db $17, $1c
    ; End script.
    db $ff

C1Loc3_DF:
    ; Set text name 0.
    db $1e, $d2
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc3_9C:
    ; Show message 1.
    db $01, $69
    ; End script.
    db $ff

C1Sc3_9D:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_E0:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $24
    dw C1Loc3_DD
    db $01, $02
    dw C1Loc3_E1
    db $fe, $fe
    dw C1Sc3_53

C1Loc3_E1:
    ; Show message 2.
    db $02, $90
    ; End script.
    db $ff

C1Sc3_9E:
    ; Show message 1.
    db $01, $b6
    ; End script.
    db $ff

C1Sc3_9F:
    ; Show message 1.
    db $01, $b4
    ; End script.
    db $ff

C1Sc3_A0:
    ; Show message 1.
    db $01, $b3
    ; Run scene effect.
    db $46, $02
    ; End script.
    db $ff

C1Sc3_A1:
    ; Show message 1.
    db $01, $b5
    ; End script.
    db $ff

C1Sc3_A2:
    ; Set text name 0.
    db $1e, $b3
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff

C1Sc3_A3:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $28
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_A4:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_E2:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1Loc3_E3
    db $fe, $fe
    dw C1Sc3_53
    ; Unreferenced byte pattern: swap operation slots.
    db $60

C1Loc3_E3:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_98
    ; Set text name 0.
    db $1e, $b3
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $55
    ; End script.
    db $ff

C1Sc3_A5:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_E4:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1Loc3_E5
    db $fe, $fe
    dw C1Sc3_53
    ; Unreferenced byte pattern: swap operation slots.
    db $60

C1Loc3_E5:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_98
    ; Set text name 0.
    db $1e, $b3
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $56
    ; End script.
    db $ff

C1Sc3_A6:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Sc3_55
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc3_E6:
    ; Match alternate item against type, ID and script target rows.
    db $29, $03, $0a
    dw C1Loc3_E7
    db $fe, $fe
    dw C1Sc3_53
    ; Unreferenced byte pattern: swap operation slots.
    db $60

C1Loc3_E7:
    ; Hold first item.
    db $4c
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc3_98
    ; Set text name 0.
    db $1e, $b3
    ; Show message 2.
    db $02, $06
    ; Set first item state.
    db $21
    ; Drop list value.
    db $55, $57
    ; End script.
    db $ff

C1Sc3_A7:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $33
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_A8:
    ; Set text name 0.
    db $1e, $b6
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff

C1Sc3_A9:
    ; Test selected attribute bit 0.
    db $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_01
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc3_50
    ; Set text name 0.
    db $1e, $35
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $08
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc3_AA:
    ; Set text name 0.
    db $1e, $b7
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff

C1Sc3_AB:
    ; Set text name 0.
    db $1e, $b8
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff

C1Sc3_AC:
    ; Set text name 0.
    db $1e, $b9
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff
