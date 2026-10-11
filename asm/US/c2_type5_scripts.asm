; Confirmed script commands; unrecognized command sequences remain raw bytes.

C2Sc5_00:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3

C2Loc5_00:
    ; Show message 0.
    db $00, $2a
    ; End script.
    db $ff

C2Sc5_01:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on inequality.
    db $55, $00
    dw C2Loc5_03
    ; Call script.
    db $05
    dw C2Loc5_A2
    ; Test object flag and branch when set.
    db $08, $28
    dw C2Loc5_01
    ; Hide object.
    db $2a, $01
    ; Refresh room objects.
    db $2b

C2Loc5_01:
    ; Test object flag and branch when set.
    db $08, $29
    dw C2Loc5_02
    ; Hide object.
    db $2a, $02
    ; Refresh room objects.
    db $2b

C2Loc5_02:
    ; Set selected state and refresh.
    db $21
    ; End script.
    db $ff

C2Loc5_03:
    ; Test object flag and branch when set.
    db $08, $28
    dw C2Loc5_04
    ; Hide object.
    db $2a, $01

C2Loc5_04:
    ; Test object flag and branch when set.
    db $08, $29
    dw C2Loc5_A3
    ; Hide object.
    db $2a, $02
    ; Jump to script.
    db $07
    dw C2Loc5_A3

C2Sc5_02:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test room argument and branch on equality.
    db $25, $01
    dw C2Loc5_A5
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $03
    ; Clear selected state and refresh.
    db $23
    ; Test object flag and branch when set.
    db $08, $28
    dw C2Loc5_A4
    ; Show object.
    db $29, $01
    ; Refresh room objects.
    db $2b

C2Loc5_A4:
    ; Test object flag and branch when set.
    db $08, $29
    dw C2Sc5_E1
    ; Show object.
    db $29, $02
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Loc5_A5:
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $03
    ; Clear selected attribute bit 2.
    db $1f
    ; Test object flag and branch when set.
    db $08, $28
    dw C2Loc5_A6
    ; Show object.
    db $29, $01

C2Loc5_A6:
    ; Test object flag and branch when set.
    db $08, $29
    dw C2Sc5_E1
    ; Show object.
    db $29, $02
    ; End script.
    db $ff

C2Sc5_03:
    ; Move using two room arguments if the selected state permits.
    db $20, $00

jr_008_45b8:
    db $01
    ; Test room argument and branch on inequality.
    db $55, $00
    dw C2Loc5_05
    ; Show message 0.
    db $00, $08
    ; End script.
    db $ff

C2Loc5_05:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $30
    ; Test object flag and branch when set.
    db $08, $08
    dw C2Sc5_E1
    ; Show message 0.
    db $00, $32
    ; Run scene effect.
    db $39, FxStogie
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $33
    ; Resume text.
    db $2f
    ; Wait sixty ticks.
    db $7e
    ; Restore saved Case II effect.
    db $3a
    ; Show object.
    db $29, $06
    ; Refresh room objects.
    db $2b
    ; Play audio.
    db $3e, $12
    ; Set object flag.
    db $09, $08
    ; Show message 0.
    db $00, $34
    ; End script.
    db $ff

C2Sc5_04:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $2a
    ; Test room argument and branch on equality.
    db $25, $01
    dw C2Sc5_E1

C2Loc5_06:
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff

C2Sc5_05:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $02
    dw C2Sc5_E6
    ; Jump to script.
    db $07
    dw C2Loc5_A3

C2Sc5_06:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test room argument and branch on equality.
    db $25, $02
    dw C2Sc5_E1
    ; Jump to script.
    db $07
    dw C2Loc5_B1

C2Sc5_07:
    ; Move using two room arguments if the selected state permits.
    db $20, $01, $02

jr_008_4602:
    ; Test room argument and branch on equality.
    db $25, $01
    dw C2Loc5_05
    ; Test object flag and branch when set.
    db $08, $09
    dw C2Loc5_08
    ; Clear the bedroom-door timer.
    db $42, C2BedIx
    ; Test object flag and branch when clear.
    db $54, $0c
    dw C2Loc5_07
    ; Show message 0.
    db $00, $47
    ; Set object flag.
    db $09, $09
    ; End script.
    db $ff

C2Loc5_07:
    ; Show message 0.
    db $00, $81
    ; Run scene effect.
    db $39, $0e
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $ef
    ; Wait sixty ticks.
    db $7e
    ; Prepare room move and read two room arguments.
    db $3b, $02, $01
    ; Show message 0.
    db $00, $82
    ; End script.
    db $ff

C2Loc5_08:
    ; Test object flag and branch when clear.
    db $54, $0c
    dw C2Loc5_07

C2Loc5_09:
    ; Show message 0.
    db $00, $48
    ; End script.
    db $ff

C2Sc5_08:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Jump to script.
    db $07
    dw C2Loc5_A1

C2Sc5_09:
    ; Move using two room arguments if the selected state permits.
    db $20, $02, $03
    ; Test room argument and branch on equality.
    db $25

jr_008_4637:
    db $02
    dw C2Loc5_09

C2Loc5_0A:
    ; Show message 0.
    db $00, $6e
    ; End script.
    db $ff

C2Sc5_0A:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $50
    ; Jump to script.
    db $07
    dw C2Loc5_06

C2Sc5_0B:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $02
    dw C2Loc5_0B
    ; Show message 0.
    db $00, $a4
    ; End script.
    db $ff

C2Loc5_0B:
    ; Show message 0.
    db $00, $51
    ; End script.
    db $ff

C2Sc5_0C:
    ; Test attribute bit 2 and branch when set.
    db $1d
    ; Target C2Sc5_E5; retain the interior label.
    db $63

jr_008_4652:
    db $53
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Jump to script.
    db $07
    dw C2Loc5_A1

C2Sc5_0D:
    ; Jump to script.
    db $07
    dw C2Sc5_0F

C2Sc5_0E:
    ; Jump to script.
    db $07
    dw C2Sc5_0F

C2Sc5_0F:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E5
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Jump to script.
    db $07
    dw C2Loc5_A1

C2Sc5_10:
    ; Show message 0.
    db $00, $d3
    ; End script.
    db $ff

C2Sc5_11:
    ; Move using two room arguments if the selected state permits.
    db $20, $02, $07
    ; Test room argument and branch on equality.
    db $25

jr_008_466d:
    db $02
    dw C2Loc5_09
    ; Hide object.
    db $2a, $13
    ; Show object.
    db $29, $11

C2Loc5_0C:
    ; Refresh room objects.
    db $2b
    ; Show message 0.
    db $00, $9d
    ; End script.
    db $ff

C2Sc5_12:
    ; Test room argument and branch on inequality.
    db $55, $03
    dw C2Sc5_13

C2Loc5_0D:
    ; Show message 0.
    db $00, $73
    ; End script.
    db $ff

C2Sc5_13:
    ; Show message 0.
    db $00, $88
    ; End script.
    db $ff

C2Sc5_14:
    ; Move using two room arguments if the selected state permits.
    db $20, $03, $04
    ; Test room argument and branch on equality.
    db $25, $03

jr_008_4687:
    dw C2Loc5_0A

C2Loc5_0E:
    ; Test object flag and branch when clear.
    db $54, $0c
    dw C2Loc5_10

C2Loc5_0F:
    ; Show message 0.
    db $00, $7c
    ; End script.
    db $ff

C2Loc5_10:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw C2Loc5_11
    ; Jump to script.
    db $07
    dw C2Loc5_0F
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Jump to script.
    db $07
    dw C2Loc5_0F

C2Loc5_11:
    ; Set text name 0.
    db $30, $b6
    ; Call script.
    db $05
    dw C2Loc5_14
    ; Test state bit.
    db $0e, $06
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_12
    ; Set state bit.
    db $0f, $06

C2Loc5_12:
    ; Play room audio cue.
    db $5a
    ; Prepare room move and read two room arguments.
    db $3b, $04, $11

C2Loc5_13:
    ; Show message 0.
    db $00, $70
    ; Play audio.
    db $3e, $12
    ; Clear state and refresh.
    db $24, $06
    ; End script.
    db $ff

C2Loc5_14:
    ; Show message 3.
    db $2c

jr_008_46b2:
    db $1e
    ; Resume text.
    db $2f
    ; Run scene effect.
    db $39, $0e
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $6f
    ; Wait sixty ticks.
    db $7e
    ; Reset item slots.
    db $7f
    ; Return to calling script.
    db $06

C2Sc5_15:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Show message 0.
    db $00, $74
    ; End script.
    db $ff

C2Sc5_16:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $11
    dw C2Loc5_A1
    ; Jump to script.
    db $07
    dw C2Loc5_A3

C2Sc5_17:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test room argument and branch on equality.
    db $25, $03
    dw C2Loc5_B1
    ; Jump to script.
    db $07
    dw C2Loc5_AF

C2Sc5_18:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E5
    ; Test state bit.
    db $0e, $9d
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_17
    ; Play audio.
    db $3e, $13
    ; Test room argument and branch on equality.
    db $25, $11
    dw C2Loc5_16
    ; Set state bit.
    db $0f, $9d
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $7a
    ; Run scene effect.
    db $39, $0e
    ; Play audio.
    db $3e, $09
    ; Show message 0.
    db $00, $7b
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc5_15
    ; Set state bit.
    db $0f, $06

C2Loc5_15:
    ; Prepare room move and read two room arguments.
    db $3b, $03, $11
    ; Jump to script.
    db $07
    dw C2Loc5_13

C2Loc5_16:
    ; Set state and refresh without cue.
    db $22, $9d

jr_008_46ff:
    ; Jump to script in bank $07.
    db $7d
    dw C2Loc0_22
    db $07

C2Loc5_17:
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $01
    ; End script.
    db $ff

C2Sc5_19:
    ; Move using two room arguments if the selected state permits.
    db $20, $03, $11
    ; Test room argument and branch on equality.
    db $25, $03
    dw C2Loc5_0A
    ; Show message 0.
    db $00, $cc
    ; End script.
    db $ff

C2Sc5_1A:
    ; Test room argument and branch on inequality.
    db $55

jr_008_4713:
    db $04
    dw C2Sc5_13
    ; Show message 0.
    db $00, $89
    ; End script.
    db $ff

C2Sc5_1B:
    ; Move using two room arguments if the selected state permits.
    db $20, $04, $05
    ; Test room argument and branch on inequality.
    db $55, $04
    ; Target C2Loc5_18; retain the interior label.
    db $23

jr_008_471f:
    db $47
    ; Jump to script.
    db $07
    dw C2Loc5_0E

C2Loc5_18:
    ; Test object flag and branch when clear.
    db $54, $0c
    dw C2Loc5_1A

C2Loc5_19:
    ; Test object flag and branch when set.
    db $08, $0e
    dw C2Loc5_1F
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $86
    ; Show message 0.
    db $00, $87
    ; End script.
    db $ff

C2Loc5_1A:
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw C2Loc5_19
    ; Jump to script.
    db $07
    dw C2Loc5_1B
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Test object flag and branch when set.
    db $08, $50
    dw C2Loc5_19

C2Loc5_1B:
    ; Test object flag and branch when set.
    db $08, $0e
    dw C2Loc5_1E
    ; Set text name 0.
    db $30, $bd

C2Loc5_1C:
    ; Call script.
    db $05
    dw C2Loc5_14
    ; Test state bit.
    db $0e, $06
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_1D
    ; Set state bit.
    db $0f, $06

C2Loc5_1D:
    ; Play room audio cue.
    db $5a
    ; Prepare room move and read two room arguments.
    db $3b, $05, $11
    ; Jump to script.
    db $07
    dw C2Loc5_13

C2Loc5_1E:
    ; Set text name 0.
    db $30, $be
    ; Jump to script.
    db $07
    dw C2Loc5_1C

C2Loc5_1F:
    ; Show message 0.
    db $00, $94
    ; End script.
    db $ff

C2Sc5_1C:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on inequality.
    db $55, $08
    dw C2Loc5_0B

C2Sc5_1D:
    ; Show message 0.
    db $00, $5a
    ; End script.
    db $ff

C2Sc5_1E:
    ; Move using two room arguments if the selected state permits.
    db $20, $0b, $08
    ; Test room argument and branch on equality.
    db $25, $08
    dw C2Loc5_20
    ; Show message 0.
    db $00, $52
    ; End script.
    db $ff

C2Loc5_20:
    ; Show object.
    db $29, $12
    ; Jump to script.
    db $07

jr_008_4772:
    dw C2Loc5_0C

C2Sc5_1F:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $55
    ; Jump to script.
    db $07
    dw C2Loc5_06

C2Sc5_20:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $56
    ; Jump to script.
    db $07
    dw C2Loc5_06

C2Sc5_21:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $09
    dw C2Sc5_1D
    ; Jump to script.
    db $07
    dw C2Loc5_0B

C2Sc5_22:
    ; Move using two room arguments if the selected state permits.
    db $20, $0c, $09
    ; Test room argument and branch on equality.
    db $25, $09
    dw C2Loc5_22

C2Loc5_21:
    ; Show message 0.
    db $00, $57
    ; End script.
    db $ff

C2Loc5_22:
    ; Show object.
    db $29, $13
    ; Jump to script.
    db $07

jr_008_4797:
    ; Target C2Loc5_0C; retain the interior label.
    db $74

jr_008_4798:
    db $46

C2Sc5_23:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc5_27
    ; Test room argument and branch on inequality.
    db $55, $0c
    ; Target C2Loc5_26; retain the interior label.
    db $bb

jr_008_479f:
    db $47

C2Loc5_23:
    ; Test object flag and branch when clear.
    db $54, $0a
    dw C2Loc5_25
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $5c
    ; Test object flag and branch when clear.
    db $54, $39
    dw C2Loc5_24
    ; Play audio.
    db $3e, $08
    ; Show message 0.
    db $00, $5e
    ; Set object flag.
    db $09, $1c
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

C2Loc5_24:
    ; Show message 0.
    db $00, $5d
    ; End script.
    db $ff

C2Loc5_25:
    ; Show message 0.
    db $00, $5b
    ; Set object flag.
    db $09, $0a
    ; End script.
    db $ff

C2Loc5_26:
    ; Show message 0.
    db $00, $e8
    ; End script.
    db $ff

C2Loc5_27:
    ; Hold text.
    db $2e
    ; Set text name 0.
    db $30, $bb
    ; Show message 3.
    db $2c, $19
    ; Test room argument and branch on inequality.
    db $55, $0c
    dw C2Sc5_E1
    ; Jump to script.
    db $07
    dw C2Loc5_23

C2Sc5_24:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc5_28
    ; Set text name 0.
    db $30, $bb
    ; Show message 3.
    db $2c, $02
    ; Set object flag.
    db $09, $1d
    ; Draw Case II panel and marks.
    db $3c
    ; Set selected state and refresh.
    db $21
    ; Hide object.
    db $2a, $82
    ; Show object.
    db $29, $83
    ; End script.
    db $ff

C2Loc5_28:
    ; Set text name 0.
    db $30, $bb
    ; Show message 3.
    db $2c, $19
    ; End script.
    db $ff

C2Sc5_25:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Loc5_A7
    ; Set text name 0.
    db $30, $bb
    ; Show message 3.
    db $2c, $03
    ; Clear object flag.
    db $0a, $9c
    ; Draw Case II panel and marks.
    db $3c
    ; Clear selected state and refresh.
    db $23
    ; Hide object.
    db $2a, $83
    ; Show object.
    db $29, $82
    ; End script.
    db $ff

C2Loc5_A7:
    ; Set text name 0.
    db $30, $bb
    ; Show message 3.
    db $2c, $1a
    ; End script.
    db $ff

C2Sc5_26:
    ; Move using two room arguments if the selected state permits.
    db $20, $0c, $0d
    ; Test room argument and branch on inequality.
    db $55, $0d
    dw C2Loc5_21
    ; Show message 0.
    db $00, $5f
    ; End script.
    db $ff

C2Sc5_27:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25

jr_008_4802:
    db $0a
    dw C2Sc5_1D
    ; Jump to script.
    db $07
    dw C2Loc5_0B

C2Sc5_28:
    ; Move using two room arguments if the selected state permits.
    db $20, $0e, $0a
    ; Test room argument and branch on equality.
    db $25, $0a
    dw C2Loc5_2A
    ; Test object flag and branch when set.
    db $08, $0b
    dw C2Loc5_29
    ; Show message 0.
    db $00, $65
    ; Run scene effect.
    db $39, $02
    ; Play audio.
    db $3e, $0a
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $63
    ; Wait sixty ticks.
    db $7e
    ; Show Case II effect without saving it again.
    db $66, $0d
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $64
    ; Wait sixty ticks.
    db $7e
    ; Restore saved Case II effect.
    db $3a
    ; Set object flag.
    db $09, $0b
    ; End script.
    db $ff

C2Loc5_29:
    ; Show message 0.
    db $00, $66
    ; End script.
    db $ff

C2Loc5_2A:
    ; Show object.
    db $29, $14
    ; Jump to script.
    db $07
    dw C2Loc5_0C

C2Sc5_29:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on inequality.
    db $55, $0e
    dw C2Loc5_00
    ; Show message 0.
    db $00, $69
    ; End script.
    db $ff

C2Sc5_2A:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $0e
    dw C2Loc5_A1
    ; Jump to script.
    db $07
    dw C2Loc5_A3

C2Sc5_2B:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test room argument and branch on equality.
    db $25, $0e
    dw C2Loc5_AF
    ; Jump to script.
    db $07
    dw C2Loc5_B1

C2Sc5_2C:
    ; Move using two room arguments if the selected state permits.
    db $20, $0e, $0f
    ; Test room argument and branch on equality.
    db $25, $0e
    dw C2Loc5_29
    ; Show message 0.
    db $00, $a7
    ; End script.
    db $ff

C2Sc5_2D:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on inequality.
    db $55, $0e
    ; Target C2Loc5_00; retain the interior label.
    db $5d

jr_008_485f:
    db $45
    ; Show message 0.
    db $00, $6a
    ; End script.
    db $ff

C2Sc5_2E:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Jump to script.
    db $07
    dw C2Loc5_AF

C2Sc5_2F:
    ; Move using two room arguments if the selected state permits.
    db $20, $0e, $10
    ; Test room argument and branch on equality.
    db $25, $0e
    dw C2Loc5_29
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $c4
    ; Test object flag and branch when set.
    db $08, $00
    dw C2Sc5_E1
    ; Show message 1.
    db $01, $5f
    ; Set object flag.
    db $09, $00
    ; End script.
    db $ff

C2Sc5_30:
    ; Test room argument and branch on inequality.
    db $55, $11
    dw LookDesert

C2Sc5_31:
    ; Show message 0.
    db $00, $d2
    ; End script.
    db $ff

; Describe the barren desert when looking at a grid direction object.
LookDesert:

C2Sc5_32:
    ; Show message 0.
    db $00, $d0
    ; End script.
    db $ff

C2Sc5_33:
    ; Move using two room arguments if the selected state permits.
    db $20, $11, $14
    ; Test room argument and branch on equality.
    db $25, $11
    dw C2HotelFront

; Describe the Las Vegas station front and clear desert exposure.
C2StationFront:

C2Loc5_2B:
    ; Show message 0.
    db $00, $f1
    ; Clear the desert exposure timer.
    db $42, C2HeatIx
    ; End script.
    db $ff

C2Sc5_34:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on inequality.
    db $55, $13
    dw C2Loc5_2C

jr_008_4899:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $ed
    ; Jump to script.
    db $07
    dw C2Loc5_06

C2Loc5_2C:
    ; Show message 2.
    db $02, $af
    ; End script.
    db $ff

C2Sc5_35:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on inequality.
    db $55, $13
    dw C2Loc5_2D
    ; Test object flag and branch when clear.
    db $54, $26
    dw C2Sc5_E6
    ; Hide object.
    db $2a, $9b
    ; Show object.
    db $29, $9c
    ; Jump to script.
    db $07
    dw C2Loc5_A1

C2Loc5_2D:
    ; Show message 2.
    db $02, $ca
    ; End script.
    db $ff

C2Sc5_36:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test room argument and branch on inequality.
    db $55, $13
    dw C2Loc5_2D
    ; Show object.
    db $29, $9b
    ; Hide object.
    db $2a, $9c
    ; Jump to script.
    db $07
    dw C2Loc5_AF

C2Sc5_37:
    ; Test room argument and branch on inequality.
    db $55, $13
    dw C2Loc5_2D
    ; Move using two room arguments if the selected state permits.
    db $20, $13, RoomLaundry
    ; Show message 2.
    db $02, $ae
    ; End script.
    db $ff

C2Sc5_38:
    ; Hold text.
    db $2e
    ; Test room argument and branch on equality.
    db $25, $13
    dw C2Loc5_2E
    ; Show message 1.
    db $01, $43
    ; Test object flag and branch when set.
    db $08, C2GoonsFooled
    dw C2Sc5_E1
    ; Play audio.
    db $3e, $08
    ; Show message 2.
    db $02, $d2
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

C2Loc5_2E:
    ; Show message 0.
    db $00, $74
    ; Jump to script.
    db $07
    dw C2Loc5_06

C2Sc5_39:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test object flag and branch when clear.
    db $54, C2HandsFree
    dw C2Sc5_E6
    ; Test room argument and branch on equality.
    db $25, $13
    dw C2Loc5_2F
    ; Jump to script.
    db $07
    dw C2Loc5_A1

C2Loc5_2F:
    ; Test object flag and branch when set.
    db $08, $3b
    dw C2Sc5_E6
    ; Jump to script.
    db $07
    dw C2Loc5_A1

C2Sc5_3A:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Clear object flag.
    db $0a, $3b
    ; Jump to script.
    db $07
    dw C2Loc5_AF

C2Sc5_3B:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E5
    ; Test state bit.
    db $0e, $ae
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_17
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $ae
    ; Test room argument and branch on equality.
    db $25, $13
    dw C2Loc5_31
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $62
    ; Jump to script.
    db $07
    dw C2Loc5_30

C2Sc5_3C:
    ; Move using two room arguments if the selected state permits.
    db $20, $13, $48
    ; Test room argument and branch on equality.
    db $25, $48
    dw C2Loc5_32
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $ea
    ; Test object flag and branch when set.
    db $08, C2GoonsFooled
    dw C2Sc5_E1

C2Loc5_30:
    ; Run scene effect.
    db $39, FxGoons
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 2.
    db $02

jr_008_492d:
    db $9f

jr_008_492e:
    ; Resume text.
    db $2f
    ; Play audio.
    db $3e, $10
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

C2Loc5_31:
    ; Jump to script in bank $07.
    db $7d
    dw C2Loc0_22
    db $07

C2Loc5_32:
    ; Show message 2.
    db $02, $cd
    ; End script.
    db $ff

C2Sc5_3D:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $14
    dw C2Loc5_A1
    ; Jump to script.
    db $07
    dw C2Loc5_A3

C2Sc5_3E:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test room argument and branch on equality.
    db $25, $14
    dw C2Loc5_AF
    ; Jump to script.
    db $07
    dw C2Loc5_B1

C2Sc5_3F:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E5
    ; Test state bit.
    db $0e, $9e
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_17
    ; Play audio.
    db $3e, $13
    ; Set state bit.
    db $0f, $9e
    ; Test room argument and branch on equality.
    db $25, $15
    dw C2Loc5_31
    ; Set state and refresh without cue.
    db $22, $9e
    ; Jump to script.
    db $07
    dw C2Loc5_31

C2Sc5_40:
    ; Test room argument and branch on inequality.
    db $55, $14
    dw C2Loc5_37

jr_008_4968:
    ; Move using two room arguments if the selected state permits.
    db $20, $14, $15
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $f6
    ; Test object flag and branch when clear.
    db $54, $0c
    dw C2Loc5_36
    ; End script.
    db $ff
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Test object flag and branch when set.
    db $08, $50
    dw C2Sc5_E1

C2Loc5_33:
    ; Set text name 0.
    db $30, $b5

C2Loc5_34:
    ; Show message 3.
    db $2c, $2a

C2Loc5_35:
    ; Resume text.
    db $2f
    ; Run scene effect.
    db $39, $08
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $da
    ; Wait sixty ticks.
    db $7e
    ; Jump to script in bank $07.
    db $7d
    dw C2Loc0_1F
    db $07

C2Loc5_36:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw C2Loc5_33
    ; End script.
    db $ff

C2Loc5_37:
    ; Move using two room arguments if the selected state permits.
    db $20, $14, $15
    ; Jump to script.
    db $07
    dw C2StationFront

C2Sc5_41:
    ; Test room argument and branch on inequality.
    db $55, $15
    dw C2Loc5_0D
    ; Show message 0.
    db $00, $fa
    ; End script.
    db $ff

C2Sc5_42:
    ; Test room argument and branch on inequality.
    db $55, $15
    dw C2Loc5_3B
    ; Test object flag and branch when clear.
    db $54, $1b
    dw C2Loc5_38
    ; Test object flag and branch when set.
    db $08, $a4
    dw C2Loc5_38
    ; Hide object.
    db $2a, $21
    ; Show object.
    db $29, $1d
    ; Refresh room objects.
    db $2b

C2Loc5_38:
    ; Move using two room arguments if the selected state permits.
    db $20, $15, $16
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $0a

C2Loc5_39:
    ; Test object flag and branch when clear.
    db $54, $0c
    dw C2Loc5_3A
    ; End script.
    db $ff

C2Loc5_3A:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw C2Loc5_33
    ; End script.
    db $ff
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Test object flag and branch when clear.
    db $54, $50
    dw C2Loc5_33
    ; End script.
    db $ff

C2Loc5_3B:
    ; Move using two room arguments if the selected state permits.
    db $20, $15

jr_008_49c3:
    db $16
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $f6
    ; Jump to script.
    db $07
    dw C2Loc5_39

C2Sc5_43:
    ; Test room argument and branch on equality.
    db $25, $17
    dw C2Loc5_0D
    ; Set script value 0.
    db $49, $06
    ; Show message 3.
    db $2c, $09
    ; End script.
    db $ff

C2Sc5_44:
    ; Move using two room arguments if the selected state permits.
    db $20, $15, $17
    ; Test room argument and branch on equality.
    db $25, $15

jr_008_49d8:
    dw C2Loc5_3E

C2Loc5_3C:
    ; Call script.
    db $05
    dw C2Loc5_3F
    ; Call script.
    db $05
    dw C2Loc5_40
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $71
    ; Clear object flag.
    db $0a, $16
    ; Clear object flag.
    db $0a, $17
    ; Clear object flag.
    db $0a, $18
    ; Test object flag and branch when clear.
    db $54

jr_008_49ea:
    db $0c
    dw C2Loc5_3D
    ; End script.
    db $ff

C2Loc5_3D:
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw C2Sc5_E1
    ; Jump to script.
    db $07
    dw C2Loc5_35
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Test object flag and branch when set.
    db $08, $50
    dw C2Sc5_E1
    ; Jump to script.
    db $07
    dw C2Loc5_35

C2Loc5_3E:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $f6
    ; Jump to script.
    db $07
    dw C2Loc5_39

C2Loc5_3F:
    ; Clear state bit.
    db $10, $85
    ; Clear state bit.
    db $10, $87
    ; Clear state bit.
    db $10, $89
    ; Clear state bit.
    db $10, $8b
    ; Clear state bit.
    db $10, $8d
    ; Clear state bit.
    db $10, $8f
    ; Clear state bit.
    db $10, $91
    ; Clear state bit.
    db $10, $93
    ; Return to calling script.
    db $06

C2Loc5_40:
    ; Hide object.
    db $2a, $a8
    ; Clear state bit.
    db $10, $86
    ; Clear state bit.
    db $10, $88
    ; Clear state bit.
    db $10, $8a
    ; Clear state bit.
    db $10, $8c
    ; Clear state bit.
    db $10, $8e
    ; Clear state bit.
    db $10, $90
    ; Clear state bit.
    db $10, $92
    ; Clear state bit.
    db $10, $94
    ; Return to calling script.
    db $06

; Show the fare view object $a8 and hide the eight passenger-room objects.
TrainFareView:

C2Loc5_41:
    ; Show object.
    db $29, $a8
    ; Hide object.
    db $2a, $a9
    ; Hide object.
    db $2a, $aa
    ; Hide object.
    db $2a, $ab
    ; Hide object.
    db $2a, $ac
    ; Hide object.
    db $2a, $ad
    ; Hide object.
    db $2a, $ae
    ; Hide object.
    db $2a, $af
    ; Hide object.
    db $2a, $b0
    ; Return to calling script.
    db $06

; Hide the fare view object $a8 and restore the eight passenger-room objects.
TrainCarView:

C2Loc5_42:
    ; Hide object.
    db $2a, $a8
    ; Show object.
    db $29, $a9
    ; Show object.
    db $29

jr_008_4a3e:
    db $aa
    ; Show object.
    db $29, $ab
    ; Show object.
    db $29, $ac
    ; Show object.
    db $29, $ad
    ; Show object.
    db $29, $ae
    ; Show object.
    db $29, $af
    ; Show object.
    db $29, $b0
    ; Return to calling script.
    db $06

C2Sc5_45:
    ; Test room argument and branch on equality.
    db $25, $18
    dw C2Loc5_0D
    ; Set script value 0.
    db $49, $07
    ; Show message 3.
    db $2c, $09
    ; End script.
    db $ff

C2Sc5_46:
    ; Move using two room arguments if the selected state permits.
    db $20, $15, $18

C2Loc5_43:
    ; Test room argument and branch on inequality.
    db $55, $15
    dw C2Loc5_3C
    ; Jump to script.
    db $07
    dw C2Loc5_3E

C2Sc5_47:
    ; Test room argument and branch on equality.
    db $25, $19
    dw C2Loc5_0D
    ; Set script value 0.
    db $49, $08
    ; Show message 3.
    db $2c, $09
    ; End script.
    db $ff

C2Sc5_48:
    ; Move using two room arguments if the selected state permits.
    db $20, $15, $19
    ; Jump to script.
    db $07

jr_008_4a6c:
    dw C2Loc5_43

C2Sc5_49:
    ; Test room argument and branch on equality.
    db $25, $1a
    dw C2Loc5_0D
    ; Set script value 0.
    db $49, $09
    ; Show message 3.
    db $2c, $09
    ; End script.
    db $ff

C2Sc5_4A:
    ; Move using two room arguments if the selected state permits.
    db $20, $15, $1a
    ; Jump to script.
    db $07
    dw C2Loc5_43

C2Sc5_4B:
    ; Test attribute bit 2 and branch when set.
    db $1d
    ; Target C2Sc5_E3; retain the interior label.
    db $5b

jr_008_4a7f:
    db $53
    ; Show message 1.
    db $01, $2c
    ; End script.
    db $ff

C2Sc5_4C:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3

jr_008_4a86:
    ; Show message 0.
    db $00, $d3
    ; End script.
    db $ff

C2Sc5_4D:
    ; Move using two room arguments if the selected state permits.
    db $20, $17, $1b
    ; Test room argument and branch on equality.
    db $25, $17

jr_008_4a8e:
    dw C2Loc5_3C

C2Loc5_44:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $21

C2Loc5_45:
    ; Test room argument and branch on equality.
    db $25, $23
    dw CheckTrainCash
    ; Test room argument and branch on equality.
    db $25, $24
    dw CheckTrainCash
    ; Test room argument and branch on equality.
    db $25, $25
    dw CheckTrainCash
    ; Test room argument and branch on equality.
    db $25, $26
    ; Target CheckTrainCash; retain the interior label.
    db $bb

jr_008_4aa2:
    db $4a
    ; Test room argument and branch on equality.
    db $25, $27
    dw CheckTrainCash
    ; Test room argument and branch on equality.
    db $25, $28
    dw CheckTrainCash
    ; Test room argument and branch on equality.
    db $25, $29
    ; Target CheckTrainCash; retain the interior label.
    db $bb

jr_008_4aae:
    db $4a
    ; Test room argument and branch on equality.
    db $25, $2a
    dw CheckTrainCash

; Offer the fare when the current room clearance flag is clear; otherwise restore the car view.
CheckTrainPass:

C2Loc5_B3:
    ; Branch when the current train clearance flag is clear.
    db $5f
    dw OfferTrainFare

; Restore the car view and set passenger clearance; the original no-cash branch also reaches this entry.
GrantTrainPass:

C2Loc5_B4:
    ; Call script.
    db $05
    dw TrainCarView
    ; Set the current train clearance flag.
    db $64
    ; End script.
    db $ff

; Compare cash with the stored cost; insufficient cash grants clearance, otherwise test the current room flag.
CheckTrainCash:

C2Loc5_46:
    ; Test Case II cash against stored cost.
    db $71
    ; Branch if result bit 0 is clear.
    db $04
    dw GrantTrainPass
    ; Jump to script.
    db $07
    dw CheckTrainPass

; Show the conductor view, set the room state, select the current fare, and announce destination and cost.
OfferTrainFare:

C2Loc5_47:
    ; Call script.
    db $05
    dw TrainFareView
    ; Show the current train-room fare view.
    db $62
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $d1
    ; Select the current train fare.
    db $5e
    ; Show message 3.
    db $2c

jr_008_4acb:
    db $0b
    ; End script.
    db $ff

C2Sc5_4E:
    ; Move using two room arguments if the selected state permits.
    db $20, $17, $1c
    ; Test room argument and branch on equality.
    db $25, $17

jr_008_4ad2:
    dw C2Loc5_3C

C2Loc5_48:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $22
    ; Jump to script.
    db $07
    dw C2Loc5_45

C2Sc5_4F:
    ; Show message 0.
    db $00, $8c

jr_008_4adc:
    ; End script.
    db $ff

C2Sc5_50:
    ; Test object visibility.
    db $28, $a7
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_49
    ; Save state.
    db $80
    ; Play audio.
    db $3e, $09
    ; Show message 0.
    db $00

jr_008_4ae6:
    db $b5
    ; Run map step animation.
    db $76
    ; Play audio.
    db $3e, $17
    ; No operation.
    db $41
    ; Show message 0.
    db $00, $b7
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

C2Loc5_49:
    ; Show message 0.
    db $00, $bf
    ; End script.
    db $ff

C2Sc5_51:
    ; Move using two room arguments if the selected state permits.
    db $20, $18, $1d
    ; Test room argument and branch on equality.
    db $25, $18
    dw C2Loc5_3C
    ; Jump to script.
    db $07
    dw C2Loc5_44

C2Sc5_52:
    ; Move using two room arguments if the selected state permits.
    db $20, $18, $1e
    ; Test room argument and branch on equality.
    db $25, $18
    dw C2Loc5_3C
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_53:
    ; Move using two room arguments if the selected state permits.
    db $20, $19, $1f
    ; Test room argument and branch on equality.
    db $25, $19
    dw C2Loc5_3C
    ; Jump to script.
    db $07
    dw C2Loc5_44

C2Sc5_54:
    ; Move using two room arguments if the selected state permits.
    db $20, $19, $20
    ; Test room argument and branch on equality.
    db $25, $19
    dw C2Loc5_3C
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_55:
    ; Move using two room arguments if the selected state permits.
    db $20, $21, $1a
    ; Test room argument and branch on equality.
    db $25, $1a
    dw C2Loc5_3C
    ; Jump to script.
    db $07
    dw C2Loc5_44

C2Sc5_56:
    ; Move using two room arguments if the selected state permits.
    db $20, $1a, $22
    ; Test room argument and branch on equality.
    db $25, $1a
    dw C2Loc5_3C
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_57:
    ; Show message 2.
    db $02, $3c
    ; End script.
    db $ff

C2Sc5_58:
    ; Move using two room arguments if the selected state permits.
    db $20, $1b, $1c
    ; Call script.
    db $05
    dw C2Loc5_40
    ; Call script.
    db $05
    ; Target C2Loc5_3F; retain the interior label.
    db $02

jr_008_4b39:
    db $4a
    ; Test room argument and branch on equality.
    db $25, $1b
    dw C2Loc5_44
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_59:
    ; Move using two room arguments if the selected state permits.
    db $20, $1d, $1e
    ; Call script.
    db $05
    dw C2Loc5_40
    ; Call script.
    db $05
    dw C2Loc5_3F
    ; Test room argument and branch on equality.
    db $25, $1d
    dw C2Loc5_44

jr_008_4b4e:
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_5A:
    ; Move using two room arguments if the selected state permits.
    db $20, $1f, $20
    ; Call script.
    db $05
    dw C2Loc5_40
    ; Call script.
    db $05
    dw C2Loc5_3F

jr_008_4b5a:
    ; Test room argument and branch on equality.
    db $25, $1f
    dw C2Loc5_44
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_5B:
    ; Move using two room arguments if the selected state permits.
    db $20, $21, $22
    ; Call script.
    db $05
    dw C2Loc5_40
    ; Call script.
    db $05
    dw C2Loc5_3F
    ; Test room argument and branch on equality.
    db $25, $21
    dw C2Loc5_44
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_5C:
    ; Move using two room arguments if the selected state permits.
    db $20, $23, $24
    ; Call script.
    db $05
    dw C2Loc5_40
    ; Call script.
    db $05
    dw C2Loc5_3F
    ; Test room argument and branch on equality.
    db $25, $23
    dw C2Loc5_44
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_5D:
    ; Move using two room arguments if the selected state permits.
    db $20, $25, $26
    ; Call script.
    db $05
    dw C2Loc5_40
    ; Call script.
    db $05
    dw C2Loc5_3F
    ; Test room argument and branch on equality.
    db $25, $25
    dw C2Loc5_44
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_5E:
    ; Move using two room arguments if the selected state permits.
    db $20, $27, $28
    ; Call script.
    db $05
    dw C2Loc5_40
    ; Call script.
    db $05
    dw C2Loc5_3F

jr_008_4b9a:
    ; Test room argument and branch on equality.
    db $25, $27
    dw C2Loc5_44
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_5F:
    ; Move using two room arguments if the selected state permits.
    db $20, $29, $2a
    ; Call script.
    db $05
    dw C2Loc5_40
    ; Call script.
    db $05
    dw C2Loc5_3F
    ; Test room argument and branch on equality.
    db $25, $29
    dw C2Loc5_44
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_60:
    ; Test room argument and branch on equality.
    db $25, $2c
    dw C2Loc5_0D
    ; Set script value 0.
    db $49, $02
    ; Show message 3.
    db $2c, $09
    ; End script.
    db $ff

C2Sc5_61:
    ; Test room argument and branch on equality.
    db $25, $2c
    dw C2Loc5_4A
    ; Move using two room arguments if the selected state permits.
    db $20, $2b, $2c
    ; Jump to script.
    db $07
    dw C2Loc5_3C

C2Loc5_4A:
    ; Test object flag and branch when clear.
    db $54, $a1
    dw C2Loc5_4D
    ; Call script.
    db $05
    dw C2Loc5_50
    ; Move using two room arguments if the selected state permits.
    db $20, $2b, $2c

C2Loc5_4B:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $01
    ; End script.
    db $ff
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Test object flag and branch when clear.
    db $54, $50
    dw C2Loc5_B5
    ; End script.
    db $ff

C2Loc5_4C:
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw C2Sc5_E1

; Existing command boundary targeted by an unreferenced sequence; no new caller recovered.
C2Loc5_B5:
    ; Hold text.
    db $2e
    ; Set text name 0.
    db $30, $b8
    ; Jump to script.
    db $07
    dw C2Loc5_34

C2Loc5_4D:
    ; Move using two room arguments if the selected state permits.
    db $20, $2b, $2c

C2Loc5_4E:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $01
    ; Test object flag and branch when set.
    db $08, $27
    dw C2Loc5_4F
    ; Add quick-list value.
    db $44, $e0
    ; Set object flag.
    db $09, $27

C2Loc5_4F:
    ; Test object flag and branch when clear.
    db $54, $0c
    dw C2Loc5_4C
    ; End script.
    db $ff

C2Loc5_50:
    ; Hide object.
    db $2a, $2e
    ; Hide object.
    db $2a, $2f

jr_008_4bf8:
    ; Hide object.
    db $2a, $2c
    ; Hide object.
    db $2a, $2d
    ; Clear state bit.
    db $10, $a0
    ; Return to calling script.
    db $06

C2Sc5_62:
    ; Test room argument and branch on equality.
    db $25, $2d
    dw C2Loc5_0D
    ; Set script value 0.
    db $49, $03
    ; Show message 3.
    db $2c, $09
    ; End script.
    db $ff

C2Sc5_63:
    ; Test room argument and branch on equality.
    db $25

jr_008_4c09:
    db $2d
    dw C2Loc5_51
    ; Move using two room arguments if the selected state permits.
    db $20, $2b

jr_008_4c0e:
    db $2d
    ; Jump to script.
    db $07
    dw C2Loc5_3C

C2Loc5_51:
    ; Test object flag and branch when clear.
    db $54, $a1
    dw C2Loc5_52
    ; Call script.
    db $05
    dw C2Loc5_50
    ; Move using two room arguments if the selected state permits.
    db $20, $2b, $2d
    ; Jump to script.
    db $07
    dw C2Loc5_4B

C2Loc5_52:
    ; Move using two room arguments if the selected state permits.
    db $20, $2b, $2d
    ; Jump to script.
    db $07
    dw C2Loc5_4E

C2Sc5_64:
    ; Test room argument and branch on equality.
    db $25, $2e
    dw C2Loc5_0D
    ; Set script value 0.
    db $49, $04
    ; Show message 3.
    db $2c, $09
    ; End script.
    db $ff

C2Sc5_65:
    ; Test room argument and branch on equality.
    db $25, $2e
    dw C2Loc5_53
    ; Move using two room arguments if the selected state permits.
    db $20, $2b, $2e
    ; Jump to script.
    db $07
    dw C2Loc5_3C

C2Loc5_53:
    ; Test object flag and branch when clear.
    db $54

jr_008_4c39:
    db $a1
    dw C2Loc5_54
    ; Call script.
    db $05
    dw C2Loc5_50
    ; Move using two room arguments if the selected state permits.
    db $20, $2b, $2e
    ; Jump to script.
    db $07
    dw C2Loc5_4B

C2Loc5_54:
    ; Move using two room arguments if the selected state permits.
    db $20, $2b, $2e
    ; Jump to script.
    db $07
    dw C2Loc5_4E

C2Sc5_66:
    ; Test room argument and branch on equality.
    db $25

jr_008_4c4c:
    db $2f
    dw C2Loc5_0D
    ; Set script value 0.
    db $49, $05

jr_008_4c51:
    ; Show message 3.
    db $2c, $09
    ; End script.
    db $ff

C2Sc5_67:
    ; Test room argument and branch on equality.
    db $25, $2f
    dw C2Loc5_55
    ; Move using two room arguments if the selected state permits.
    db $20, $2b, $2f
    ; Jump to script.
    db $07
    dw C2Loc5_3C

C2Loc5_55:
    ; Test object flag and branch when clear.
    db $54

jr_008_4c5f:
    db $a1
    dw C2Loc5_56
    ; Call script.
    db $05
    dw C2Loc5_50
    ; Move using two room arguments if the selected state permits.
    db $20, $2b, $2f
    ; Jump to script.
    db $07
    dw C2Loc5_4B

C2Loc5_56:
    ; Move using two room arguments if the selected state permits.
    db $20, $2b, $2f
    ; Jump to script.
    db $07
    dw C2Loc5_4E

C2Sc5_68:
    ; Test attribute bit 2 and branch when set.
    db $1d

jr_008_4c72:
    dw C2Sc5_E3
    ; Jump to script.
    db $07
    dw C2Sc5_E7

C2Sc5_69:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test object flag and branch when clear.
    db $54, $3f
    dw C2Loc5_59
    ; Test room argument and branch on inequality.
    db $55, $30
    dw C2Loc5_57
    ; Call script.
    db $05
    dw C2Loc5_58

jr_008_4c85:
    ; Refresh room objects.
    db $2b
    ; Set selected state and refresh.
    db $21
    ; End script.
    db $ff

C2Loc5_57:
    ; Call script.
    db $05
    dw C2Loc5_58
    ; Set selected attribute bit 2.
    db $1e
    ; End script.
    db $ff

C2Loc5_58:
    ; Call script.
    db $05
    dw C2Loc5_A2
    ; Hide object.
    db $2a, $32

jr_008_4c92:
    ; Return to calling script.
    db $06

C2Loc5_59:
    ; Test room argument and branch on equality.
    db $25, $30
    dw C2Loc5_A1
    ; Jump to script.
    db $07

jr_008_4c98:
    dw C2Loc5_A3

C2Sc5_6A:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test object flag and branch when clear.
    db $54, $3f
    dw C2Loc5_A9
    ; Test room argument and branch on inequality.
    db $55, $30
    dw C2Loc5_A8
    ; Call script.
    db $05
    dw C2Loc5_B0
    ; Clear selected state and refresh.
    db $23
    ; Show object.
    db $29, $32
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

C2Loc5_A8:
    ; Call script.
    db $05
    dw C2Loc5_B0
    ; Show object.
    db $29, $32
    ; Clear selected attribute bit 2.
    db $1f
    ; End script.
    db $ff

C2Loc5_A9:
    ; Test room argument and branch on equality.
    db $25, $30
    dw C2Loc5_AF
    ; Jump to script.
    db $07
    dw C2Loc5_B1

C2Sc5_6B:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E5
    ; Test object flag and branch when set.
    db $08, $3f
    dw C2Loc5_17
    ; Play audio.
    db $3e, $13
    ; Set object flag.
    db $09, $3f
    ; Show object.
    db $29, $32
    ; Test room argument and branch on equality.
    db $25, $2b
    dw C2Loc5_31
    ; Refresh room objects.
    db $2b
    ; Jump to script.
    db $07
    dw C2Loc5_31

C2Sc5_6C:
    ; Test room argument and branch on inequality.
    db $55, $2b
    dw C2Loc5_5B
    ; Move using two room arguments if the selected state permits.
    db $20, $2b, $30
    ; Test object flag and branch when set.
    db $08, $40
    dw C2Loc5_5A
    ; Show message 1.
    db $01, $34
    ; Set object flag.
    db $09, $40
    ; End script.
    db $ff

C2Loc5_5A:
jr_008_4ce0:
    ; Show message 1.
    db $01, $35
    ; End script.
    db $ff

C2Loc5_5B:
    ; Test object flag and branch when clear.
    db $54, $a1
    dw C2Loc5_5C
    ; Call script.
    db $05
    dw C2Loc5_50
    ; Move using two room arguments if the selected state permits.
    db $20, $2b, $30
    ; Jump to script.
    db $07
    dw C2Loc5_4B

C2Loc5_5C:
    ; Move using two room arguments if the selected state permits.
    db $20, $2b, $30
    ; Jump to script.
    db $07
    ; Target C2Loc5_4E; retain the interior label.
    db $e4

jr_008_4cf5:
    db $4b

C2Sc5_6D:
    ; Move using two room arguments if the selected state permits.
    db $20, $2c, $23
    ; Test room argument and branch on equality.
    db $25, $2c

jr_008_4cfb:
    dw C2Loc5_3C
    ; Jump to script.
    db $07
    dw C2Loc5_44

C2Sc5_6E:
    ; Move using two room arguments if the selected state permits.
    db $20, $2c, $24
    ; Test room argument and branch on equality.
    db $25, $2c
    dw C2Loc5_3C
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_6F:
    ; Move using two room arguments if the selected state permits.
    db $20, $2d, $25
    ; Test room argument and branch on equality.
    db $25, $2d
    dw C2Loc5_3C
    ; Jump to script.
    db $07
    dw C2Loc5_44

C2Sc5_70:
    ; Move using two room arguments if the selected state permits.
    db $20, $2d, $26
    ; Test room argument and branch on equality.
    db $25, $2d
    dw C2Loc5_3C
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_71:
    ; Move using two room arguments if the selected state permits.
    db $20, $2e, $27
    ; Test room argument and branch on equality.
    db $25, $2e
    ; Target C2Loc5_3C; retain the interior label.
    db $da

jr_008_4d24:
    db $49
    ; Jump to script.
    db $07
    dw C2Loc5_44

C2Sc5_72:
    ; Move using two room arguments if the selected state permits.
    db $20, $2e, $28
    ; Test room argument and branch on equality.
    db $25, $2e
    ; Target C2Loc5_3C; retain the interior label.
    db $da

jr_008_4d2e:
    db $49
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_73:
    ; Move using two room arguments if the selected state permits.
    db $20, $2f, $29
    ; Test room argument and branch on equality.
    db $25, $2f
    dw C2Loc5_3C
    ; Jump to script.
    db $07
    dw C2Loc5_44

C2Sc5_74:
    ; Move using two room arguments if the selected state permits.
    db $20, $2f, $2a
    ; Test room argument and branch on equality.
    db $25, $2f
    dw C2Loc5_3C
    ; Jump to script.
    db $07
    dw C2Loc5_48

C2Sc5_75:
    ; Test room argument and branch on equality.
    db $25, $31
    dw C2Sc5_76
    ; Show message 1.
    db $01, $3a
    ; End script.
    db $ff

C2Sc5_76:
    ; Show message 1.
    db $01, $43
    ; End script.
    db $ff

C2Sc5_77:
    ; Test object flag and branch when set.
    db $08, $43
    dw C2Loc5_5D
    ; Show message 1.
    db $01, $3b
    ; End script.
    db $ff

C2Loc5_5D:
    ; Show message 1.
    db $01, $3c
    ; End script.
    db $ff

C2Sc5_78:
    ; Move using two room arguments if the selected state permits.
    db $20, $30, $31
    ; Test room argument and branch on equality.
    db $25, $30
    dw C2Loc5_5A
    ; Test object flag and branch when set.
    db $08, $43
    dw C2Loc5_5E
    ; Show message 1.
    db $01, $3d
    ; Set object flag.
    db $09, $43
    ; End script.
    db $ff

C2Loc5_5E:
    ; Show message 1.
    db $01, $3e
    ; End script.
    db $ff

C2Sc5_79:
jr_008_4d6d:
    ; Show message 1.
    db $01, $44
    ; End script.
    db $ff

C2Sc5_7A:
    ; Test room argument and branch on equality.
    db $25, $5e
    dw C2Sc5_76
    ; Show message 1.
    db $01, $3a
    ; End script.
    db $ff

C2Sc5_7B:
    ; Move using two room arguments if the selected state permits.
    db $20, $32, $5e
    ; Test room argument and branch on inequality.
    db $55, $32
    dw C2Loc5_5E
    ; Test object flag and branch when set.
    db $08, $44
    dw C2Loc5_5F
    ; Show message 1.
    db $01, $51
    ; Set object flag.
    db $09, $44
    ; End script.
    db $ff

C2Loc5_5F:
    ; Show message 1.
    db $01, $52
    ; End script.
    db $ff

C2Sc5_7C:
    ; Test room argument and branch on equality.
    db $25, $5f

jr_008_4d8c:
    dw C2Sc5_76
    ; Show message 1.
    db $01, $3a
    ; End script.
    db $ff

C2Sc5_7D:
    ; Move using two room arguments if the selected state permits.
    db $20, $5f, $41
    ; Test room argument and branch on equality.
    db $25, $5f
    dw C2Loc5_5E
    ; Test object flag and branch when set.
    db $08, $69
    dw C2Loc5_60
    ; Show message 2.
    db $02, $2b
    ; Set object flag.
    db $09, $69
    ; End script.
    db $ff

C2Loc5_60:
    ; Show message 2.
    db $02, $2c
    ; End script.
    db $ff

C2Sc5_7E:
    ; Test room argument and branch on equality.
    db $25, $60
    dw C2Sc5_76
    ; Show message 1.
    db $01, $3a
    ; End script.
    db $ff

C2Sc5_7F:
jr_008_4dab:
    ; Move using two room arguments if the selected state permits.
    db $20, $60, $35
    ; Test room argument and branch on equality.
    db $25, $60
    dw C2Loc5_5E
    ; Test object flag and branch when set.
    db $08, $51
    dw C2Loc5_61
    ; Show message 1.
    db $01, $96
    ; Set object flag.
    db $09, $51
    ; End script.
    db $ff

C2Loc5_61:
    ; Show message 1.
    db $01, $97
    ; End script.
    db $ff

C2Sc5_80:
    ; Test room argument and branch on equality.
    db $25, $61
    dw C2Sc5_76
    ; Show message 1.
    db $01, $3a
    ; End script.
    db $ff

C2Sc5_81:
    ; Move using two room arguments if the selected state permits.
    db $20, $61, $43
    ; Test room argument and branch on equality.
    db $25, $61
    dw C2Loc5_5E

C2Loc5_62:
    ; Show message 2.
    db $02, $71
    ; End script.
    db $ff

C2Sc5_82:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $32
    dw C2Sc5_E7
    ; Jump to script.
    db $07
    dw C2Sc5_76

C2Sc5_83:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $32
    dw C2Loc5_A1
    ; Jump to script.
    db $07
    dw C2Loc5_A3

C2Sc5_84:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test room argument and branch on equality.
    db $25, $32
    dw C2Loc5_AF
    ; Jump to script.
    db $07
    dw C2Loc5_B1

C2Sc5_85:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E5
    ; Test state bit.
    db $0e, $a2

jr_008_4df2:
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_17
    ; Play audio.
    db $3e, $13
    ; Test room argument and branch on inequality.
    db $55, $32
    dw C2Loc5_63
    ; Set state and refresh without cue.
    db $22, $a2
    ; Jump to script.
    db $07
    dw C2Loc5_31

C2Loc5_63:
    ; Set state bit.
    db $0f, $a2
    ; Show message 0.
    db $00, $62
    ; End script.
    db $ff

C2Sc5_86:
    ; Move using two room arguments if the selected state permits.
    db $20, $32, $33
    ; Test room argument and branch on equality.
    db $25, $32
    dw C2Loc5_65
    ; Test object flag and branch when set.
    db $08, $46
    dw C2Loc5_64
    ; Show message 1.
    db $01, $55
    ; Set object flag.
    db $09, $46
    ; End script.
    db $ff

C2Loc5_64:
    ; Show object.
    db $29, $3b
    ; Refresh room objects.
    db $2b
    ; Show message 1.
    db $01, $56
    ; End script.
    db $ff

C2Loc5_65:
    ; Test object flag and branch when set.
    db $08, $44
    dw C2Loc5_66

jr_008_4e1f:
    ; Show message 1.
    db $01, $51
    ; Set object flag.
    db $09, $44
    ; End script.
    db $ff

C2Loc5_66:
    ; Show message 1.
    db $01, $52
    ; End script.
    db $ff

C2Sc5_87:
    ; Test attribute bit 2 and branch when set.
    db $1d

jr_008_4e28:
    dw C2Sc5_E3
    ; Hold text.
    db $2e
    ; Test room argument and branch on inequality.
    db $55, $33
    dw C2Loc5_67
    ; Show message 1.
    db $01, $61
    ; Jump to script.
    db $07
    dw C2Loc5_06

C2Loc5_67:
    ; Show message 0.
    db $00, $2a
    ; Jump to script.
    db $07
    dw C2Loc5_06

C2Sc5_88:
jr_008_4e39:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test object flag and branch when clear.
    db $54, $47
    dw C2Sc5_E6
    ; Test room argument and branch on equality.
    db $25, $33
    dw C2Loc5_A1
    ; Test state bit.
    db $0e, $a3
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_A1

C2Loc5_68:
    ; Set text name 0.
    db $30, $d4
    ; Show message 3.
    db $2c, $21
    ; End script.
    db $ff

C2Sc5_89:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test room argument and branch on equality.
    db $25, $33
    dw C2Loc5_AF
    ; Test state bit.
    db $0e, $a3
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_AF
    ; Jump to script.
    db $07
    dw C2Loc5_68

C2Sc5_8A:
    ; Test room argument and branch on equality.
    db $25, $33
    dw C2Loc5_69
    ; Test state bit.
    db $0e, $a3
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc5_68

C2Loc5_69:
    ; Move using two room arguments if the selected state permits.
    db $20, $33, $34
    ; Test room argument and branch on equality.
    db $25, $33
    dw C2Loc5_64
    ; Test object flag and branch when set.
    db $08, $49
    dw C2Loc5_6A
    ; Show message 1.
    db $01, $cb
    ; Run scene effect.
    db $39, $0d
    ; Play audio.
    db $3e, $0a
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 1.
    db $01, $cc
    ; Wait sixty ticks.
    db $7e
    ; Restore saved Case II effect.
    db $3a
    ; Set item flag.
    db $12, $55
    ; Set item flag.
    db $12, $56
    ; Set item flag.
    db $12, $57
    ; Set item flag.
    db $12, $58
    ; Set item flag.
    db $12, $59
    ; Set item flag.
    db $12, $5a
    ; Set object flag.
    db $09, $76
    ; Set object flag.
    db $09, $4e
    ; Set object flag.
    db $09, $49
    ; End script.
    db $ff

C2Loc5_6A:
    ; Show message 1.
    db $01, $69
    ; End script.
    db $ff

C2Sc5_8B:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $62
    ; Jump to script.
    db $07
    dw C2Loc5_06

C2Sc5_8C:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01

jr_008_4e9b:
    db $60
    ; Jump to script.
    db $07
    dw C2Loc5_06

C2Sc5_8D:
    ; Move using two room arguments if the selected state permits.
    db $20, $35, $40
    ; Test room argument and branch on equality.
    db $25, $35
    dw C2Loc5_61
    ; Show message 2.
    db $02, $19
    ; End script.
    db $ff

C2Sc5_8E:
    ; Test room argument and branch on inequality.
    db $55, $35
    dw C2Sc5_13
    ; Show message 1.
    db $01, $9c
    ; End script.
    db $ff

C2Sc5_8F:
    ; Move using two room arguments if the selected state permits.
    db $20, $35, $36
    ; Test room argument and branch on equality.
    db $25, $35
    dw C2Loc5_61
    ; Jump to script.
    db $07
    dw C2Loc5_6D

C2Sc5_90:
    ; Show message 1.
    db $01, $9a
    ; End script.
    db $ff

C2Sc5_91:
    ; Show message 1.
    db $01, $a1
    ; End script.
    db $ff

C2Sc5_92:
    ; Show message 1.
    db $01, $9f
    ; End script.
    db $ff

C2Sc5_93:
    ; Show message 1.
    db $01, $9b
    ; End script.
    db $ff

C2Sc5_94:
    ; Show message 1.
    db $01, $a0
    ; End script.
    db $ff

C2Sc5_95:
    ; Test room argument and branch on equality.
    db $25, $37
    dw C2Loc5_6C

C2Loc5_6B:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $a5
    ; Test object flag and branch when set.
    db $08, $54
    dw C2Sc5_E1
    ; Show message 1.
    db $01, $a4
    ; End script.
    db $ff

C2Loc5_6C:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $a5
    ; Set script value 0.
    db $49, $01
    ; Show message 3.
    db $2c, $2b
    ; End script.
    db $ff

C2Sc5_96:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $a5
    ; Set script value 0.
    db $49, $03
    ; Show message 3.
    db $2c, $2b
    ; End script.
    db $ff

C2Sc5_97:
jr_008_4ee7:
    ; Move using two room arguments if the selected state permits.
    db $20, $36, $37
    ; Test room argument and branch on equality.
    db $25, $36
    ; Target C2Loc5_6D; retain the interior label.
    db $f3

jr_008_4eed:
    db $4e
    ; Show message 1.
    db $01, $a9
    ; Set object flag.
    db $09, $54
    ; End script.
    db $ff

C2Loc5_6D:
    ; Show message 1.
    db $01, $a2
    ; End script.
    db $ff

C2Sc5_98:
    ; Show message 1.
    db $01, $a6
    ; End script.
    db $ff

C2Sc5_99:
    ; Move using two room arguments if the selected state permits.
    db $20, $36, $39
    ; Test room argument and branch on equality.
    db $25, $36
    dw C2Loc5_6D

C2Loc5_6E:
    ; Show message 1.
    db $01, $c8
    ; End script.
    db $ff

C2Sc5_9A:
    ; Show message 1.
    db $01, $a3
    ; End script.
    db $ff

C2Sc5_9B:
    ; Test room argument and branch on inequality.
    db $55, $37
    dw C2Loc5_6F
    ; Show message 1.
    db $01, $ad
    ; End script.
    db $ff

C2Loc5_6F:
    ; Show message 1.
    db $01, $a5
    ; End script.
    db $ff

C2Sc5_9C:
    ; Test room argument and branch on inequality.
    db $55, $37
    dw C2Loc5_70
    ; Clear state bit.
    db $10, $75
    ; Move using two room arguments if the selected state permits.
    db $20, $37, $38
    ; Show message 1.
    db $01, $b8

jr_008_4f1b:
    ; End script.
    db $ff

C2Loc5_70:
    ; Move using two room arguments if the selected state permits.
    db $20, $37, $38
    ; Jump to script.
    db $07
    dw C2Loc5_6B

C2Sc5_9D:
    ; Show message 1.
    db $01, $b1
    ; End script.
    db $ff

C2Sc5_9E:
    ; Test attribute bit 2 and branch when set.
    db $1d
    ; Target C2Sc5_E3; retain the interior label.
    db $5b

jr_008_4f27:
    db $53
    ; Test room argument and branch on equality.
    db $25, $3a
    dw C2Loc5_00
    ; Hold text.
    db $2e
    ; Test object flag and branch when set.
    db $08, $5d
    dw C2Loc5_71

jr_008_4f31:
    ; Show message 1.
    db $01, $d6
    ; Set object flag.
    db $09, $5e
    ; Test object flag and branch when clear.
    db $54, $5e
    dw C2Sc5_E1
    ; Show message 1.
    db $01, $d7
    ; End script.
    db $ff

C2Loc5_71:
    ; Set text name 0.
    db $30, $af
    ; Show message 3.
    db $2c, $1b
    ; End script.
    db $ff

C2Sc5_9F:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test object flag and branch when clear.
    db $54, $5d
    dw C2Sc5_E6
    ; Test room argument and branch on equality.
    db $25, $39
    dw C2Loc5_A1
    ; Jump to script.
    db $07
    dw C2Loc5_A3

C2Sc5_A0:
jr_008_4f4f:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test room argument and branch on equality.
    db $25, $39
    ; Target C2Loc5_AF; retain the interior label.
    db $74

jr_008_4f55:
    db $53
    ; Jump to script.
    db $07
    dw C2Loc5_B1

C2Sc5_A1:
    ; Test room argument and branch on inequality.
    db $55, $39
    dw C2Loc5_72
    ; Move using two room arguments if the selected state permits.
    db $20, $39, $3a
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw C2Loc5_73
    ; Show message 1.
    db $01, $e0
    ; End script.
    db $ff

C2Loc5_72:
    ; Move using two room arguments if the selected state permits.
    db $20, $39, $3a
    ; Jump to script.
    db $07
    dw C2Loc5_6E

C2Loc5_73:
    ; Show message 1.
    db $01, $de
    ; End script.
    db $ff

C2Sc5_A2:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $3b
    dw C2Loc5_00
    ; Show message 1.
    db $01, $e6
    ; End script.
    db $ff

C2Sc5_A3:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $3a
    dw C2Loc5_A1
    ; Jump to script.
    db $07
    dw C2Loc5_A3

C2Sc5_A4:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test room argument and branch on equality.
    db $25, $3a
    dw C2Loc5_AF
    ; Jump to script.
    db $07
    dw C2Loc5_B1

C2Sc5_A5:
    ; Test room argument and branch on inequality.
    db $55, $3a
    dw C2Loc5_75
    ; Move using two room arguments if the selected state permits.
    db $20, $3a, $3b

C2Loc5_74:
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    ; Target C2Loc5_76; retain the interior label.
    db $a8

jr_008_4f98:
    db $4f
    ; Show message 1.
    db $01, $ec
    ; Set object flag.
    db $09, $60
    ; End script.
    db $ff

C2Loc5_75:
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw C2Loc5_76

jr_008_4fa2:
    ; Move using two room arguments if the selected state permits.
    db $20, $3a, $3b
    ; Show message 1.
    db $01, $e0
    ; End script.
    db $ff

C2Loc5_76:
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $09
    ; Show message 1.
    db $01, $e9
    ; Play audio.
    db $3e, $17
    ; No operation.
    db $41
    ; Show message 3.
    db $2c, $3b
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

C2Sc5_A6:
    ; Show message 1.
    db $01, $e4
    ; End script.
    db $ff

C2Sc5_A7:
    ; Show message 1.
    db $01, $e5
    ; End script.
    db $ff

C2Sc5_A8:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on inequality.
    db $55, $3b
    dw C2Loc5_00
    ; Show message 1.
    db $01, $f1
    ; End script.
    db $ff

C2Loc5_77:
    ; Show message 1.
    db $01, $f9
    ; End script.
    db $ff

C2Sc5_A9:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $3b
    dw C2Loc5_A1

jr_008_4fce:
    ; Jump to script.
    db $07
    dw C2Loc5_A3

C2Sc5_AA:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test room argument and branch on equality.
    db $25, $3b
    dw C2Loc5_AF
    ; Jump to script.
    db $07
    dw C2Loc5_B1

C2Sc5_AB:
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    ; Target C2Loc5_76; retain the interior label.
    db $a8

jr_008_4fde:
    db $4f
    ; Move using two room arguments if the selected state permits.
    db $20, $3b, $3c

jr_008_4fe2:
    ; Test room argument and branch on equality.
    db $25, $3b
    dw C2Loc5_74

C2Loc5_78:
    ; Show message 1.
    db $01, $f4
    ; End script.
    db $ff

C2Sc5_AC:
    ; Test room argument and branch on inequality.
    db $55, $3b
    dw C2Loc5_77
    ; Show message 1.
    db $01, $ed
    ; End script.
    db $ff

C2Sc5_AD:
jr_008_4ff0:
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw C2Loc5_76
    ; Move using two room arguments if the selected state permits.
    db $20, $3b, $3f
    ; Test room argument and branch on equality.
    db $25, $3b
    dw C2Loc5_74
    ; Show message 2.
    db $02, $13
    ; End script.
    db $ff

C2Sc5_AE:
    ; Test room argument and branch on equality.
    db $25, $3c
    dw C2Loc5_79
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Show message 2.
    db $02, $04
    ; End script.
    db $ff

C2Loc5_79:
    ; Show message 1.
    db $01, $fa
    ; End script.
    db $ff

C2Sc5_AF:
    ; Test room argument and branch on equality.
    db $25

jr_008_500c:
    db $3d
    dw C2Loc5_7B

C2Loc5_7A:
    ; Set text name 0.
    db $30, $d1
    ; Show message 3.
    db $2c, $19
    ; End script.
    db $ff

C2Loc5_7B:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc5_7A
    ; Set object flag.
    db $09, $9d
    ; Hide object.
    db $2a, $91
    ; Hide object.
    db $2a

jr_008_501c:
    db $92
    ; Set text name 0.
    db $30, $d1
    ; Show message 3.
    db $2c, $02
    ; Set selected state and refresh.
    db $21
    ; End script.
    db $ff

C2Sc5_B0:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test room argument and branch on equality.
    db $25, $3d
    dw C2Loc5_AB
    ; Call script.
    db $05
    dw C2Loc5_AC
    ; Draw Case II panel and marks.
    db $3c

C2Loc5_AA:
    ; Show object.
    db $29, $91
    ; Show object.
    db $29

jr_008_5031:
    db $92
    ; End script.
    db $ff

C2Loc5_AB:
    ; Call script.
    db $05
    dw C2Loc5_AC
    ; Jump to script.
    db $07
    dw C2Loc5_AA

C2Loc5_AC:
    ; Set text name 0.
    db $30, $d1
    ; Show message 3.
    db $2c, $03
    ; Clear object flag.
    db $0a, $9d
    ; Clear selected state and refresh.
    db $23
    ; Return to calling script.
    db $06

C2Sc5_B1:
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw C2Loc5_76
    ; Move using two room arguments if the selected state permits.
    db $20, $3c, $3d
    ; Test room argument and branch on equality.
    db $25, $3c
    dw C2Loc5_78

C2Loc5_7C:
    ; Show message 2.
    db $02, $00
    ; End script.
    db $ff

C2Sc5_B2:
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw C2Loc5_76
    ; Move using two room arguments if the selected state permits.
    db $20, $3d, $3e
    ; Test room argument and branch on equality.
    db $25, $3d
    dw C2Loc5_7C
    ; Show message 2.
    db $02, $05
    ; End script.
    db $ff

C2Sc5_B3:
    ; Show message 2.
    db $02, $10
    ; End script.
    db $ff

C2Sc5_B4:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $17
    ; Jump to script.
    db $07
    dw C2Loc5_06

C2Sc5_B5:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Show message 2.
    db $02, $1c
    ; End script.
    db $ff

C2Loc5_7D:
    ; Jump to script in bank $07.
    db $7d
    dw C2Loc0_8C
    db $07

C2Sc5_B6:
    ; Hold text.
    db $2e
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Loc5_7D
    ; Play audio.
    db $3e, $13
    ; Show object.
    db $29, $40
    ; Show object.
    db $29, $41
    ; Refresh room objects.
    db $2b
    ; Wait while rendering objects.
    db $47, $0a
    ; Hide object.
    db $2a, $40
    ; Hide object.
    db $2a, $41
    ; Jump to script in bank $07.
    db $7d
    ; Target C2Loc0_92; retain the interior label.
    db $a2

jr_008_5083:
    db $51
    db $07

C2Sc5_B7:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Loc5_AD
    ; Hold text.
    db $2e
    ; Run scene effect.
    db $39, $09
    ; Play audio.
    db $3e, $09
    ; Show message 2.
    db $02, $1e
    ; Show message 0.
    db $00, $fd
    ; Run scene effect.
    db $39

jr_008_5092:
    db FxStogie
    ; Show message 0.
    db $00, $fe
    ; Play audio.
    db $3e, $10
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

C2Loc5_AD:
    ; Show message 0.
    db $00, $d1
    ; End script.
    db $ff

C2Sc5_B8:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on inequality.
    db $55, $41
    dw C2Sc5_76
    ; Test object flag and branch when set.
    db $08, $6b
    dw C2Loc5_00
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $30
    ; Test object flag and branch when set.
    db $08, $6c
    dw C2Loc5_7E
    ; Show message 2.
    db $02, $31
    ; Set object flag.
    db $09, $6c
    ; End script.
    db $ff

C2Loc5_7E:
jr_008_50b3:
    ; Show message 2.
    db $02, $32
    ; End script.
    db $ff

C2Sc5_B9:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test object flag and branch when clear.
    db $54, $6b
    dw C2Sc5_E6
    ; Show object.
    db $29, $46
    ; Test room argument and branch on equality.
    db $25

jr_008_50c0:
    db $41
    dw C2Loc5_7F
    ; Jump to script.
    db $07
    dw C2Loc5_A3

C2Loc5_7F:
    ; Call script.
    db $05
    dw C2Loc5_A2
    ; Refresh room objects.
    db $2b
    ; Set selected state and refresh.
    db $21
    ; End script.
    db $ff

C2Sc5_BA:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Hide object.
    db $2a, $46
    ; Test room argument and branch on equality.
    db $25, $41
    dw C2Loc5_AE
    ; Jump to script.
    db $07
    dw C2Loc5_B1

C2Loc5_AE:
    ; Call script.
    db $05
    dw C2Loc5_B0
    ; Refresh room objects.
    db $2b
    ; Clear selected state and refresh.
    db $23
    ; End script.
    db $ff

C2Sc5_BB:
    ; Test room argument and branch on equality.
    db $25, $41
    dw C2Loc5_80
    ; Move using two room arguments if the selected state permits.
    db $20, $41, $42
    ; Jump to script.
    db $07
    dw C2Loc5_60

C2Loc5_80:
    ; Clear state bit.
    db $10, $ac
    ; Move using two room arguments if the selected state permits.
    db $20, $41, $42
    ; Test object flag and branch when set.
    db $08, $6e
    dw C2Loc5_81
    ; Show message 2.
    db $02, $3d
    ; Set object flag.
    db $09, $6e
    ; End script.
    db $ff

C2Loc5_81:
    ; Show message 2.
    db $02, $3e
    ; End script.
    db $ff

C2Sc5_BC:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $74
    ; Jump to script.
    db $07
    dw C2Loc5_06

C2Sc5_BD:
    ; Test state bit.
    db $0e, $a4
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_17
    ; Play audio.
    db $3e, $13
    ; Test room argument and branch on inequality.
    db $55, $35
    dw C2Loc5_82
    ; Set state and refresh without cue.
    db $22, $a4
    ; Jump to script.
    db $07
    dw C2Loc5_31

C2Loc5_82:
    ; Set state and refresh without cue.
    db $22, $a4
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $00
    ; End script.
    db $ff

C2Sc5_BE:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $43
    dw C2Sc5_E7
    ; Jump to script.
    db $07
    dw C2Sc5_76

C2Sc5_BF:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $43

jr_008_5125:
    dw C2Loc5_A1
    ; Jump to script.
    db $07
    dw C2Loc5_A3

C2Sc5_C0:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8

jr_008_512d:
    ; Test room argument and branch on equality.
    db $25, $43
    dw C2Loc5_AF
    ; Jump to script.
    db $07
    dw C2Loc5_B1

C2Sc5_C1:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E5
    ; Test state bit.
    db $0e, $a8
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_17
    ; Play audio.
    db $3e, $13
    ; Test room argument and branch on equality.
    db $25, $44
    dw C2Loc5_83
    ; Set state and refresh without cue.
    db $22, $a8
    ; Jump to script.
    db $07
    dw C2Loc5_31

C2Loc5_83:
    ; Set state bit.
    db $0f, $a8
    ; Jump to script.
    db $07
    dw C2Loc5_31

C2Sc5_C2:
    ; Move using two room arguments if the selected state permits.
    db $20, $43, $44
    ; Test room argument and branch on equality.
    db $25, $43
    dw C2Loc5_62

C2Loc5_84:
    ; Test object flag and branch when clear.
    db $54, $7e
    dw C2Loc5_85

jr_008_5157:
    ; Test object flag and branch when set.
    db $08, $a5
    dw C2Loc5_85
    ; Hide object.
    db $2a, $4c
    ; Show object.
    db $29, $4b
    ; Refresh room objects.
    db $2b

C2Loc5_85:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $75
    ; Test object flag and branch when clear.
    db $54, $0c
    dw C2Loc5_86
    ; End script.
    db $ff
    ; Unreferenced sequence; these interpretations follow its byte pattern.
jr_008_5168:
    ; Test object flag and branch when clear.
    db $54, $50
    dw C2Loc5_B2
    ; End script.
    db $ff

C2Loc5_86:
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw C2Sc5_E1

C2Loc5_B2:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $8e
    ; Jump to script.
    db $07
    ; Target C2Loc5_35; retain the interior label.
    db $7b

jr_008_5176:
    db $49

C2Sc5_C3:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $44
    dw C2Loc5_87
    ; Show message 2.
    db $02, $a5
    ; End script.
    db $ff

C2Loc5_87:
    ; Test object flag and branch when set.
    db $08, $80
    dw C2Loc5_88
    ; Show message 2.
    db $02, $84
    ; End script.
    db $ff

C2Loc5_88:
    ; Show message 2.
    db $02, $85

C2Sc5_C4:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on equality.
    db $25, $45
    dw C2Loc5_A3

jr_008_5191:
    ; Test state bit.
    db $0e, $a9
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_A1
    ; Set text name 0.
    db $30, $bf
    ; Show message 3.
    db $2c, $21
    ; End script.
    db $ff

C2Sc5_C5:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test room argument and branch on equality.
    db $25, $45
    dw C2Loc5_B1
    ; Test state bit.
    db $0e, $a9
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_AF
    ; Set text name 0.
    db $30, $bf
    ; Show message 3.
    db $2c, $21
    ; End script.
    db $ff

C2Sc5_C6:
    ; Test room argument and branch on equality.
    db $25, $45
    dw C2Loc5_89
    ; Test state bit.
    db $0e, $a9
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_8A
    ; Set text name 0.
    db $30, $bf
    ; Show message 3.
    db $2c, $21
    ; End script.
    db $ff

C2Loc5_89:
    ; Move using two room arguments if the selected state permits.
    db $20, $44, $45
    ; Jump to script.
    db $07
    dw C2Loc5_84

C2Loc5_8A:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw C2Loc5_8B
    ; Move using two room arguments if the selected state permits.
    db $20, $44, $45
    ; Show message 2.
    db $02, $99
    ; Set object flag.
    db $09, $80
    ; End script.
    db $ff

C2Loc5_8B:
    ; Show message 2.
    db $02, $88
    ; End script.
    db $ff

; Describe the stairs down to the laundry room; inside that room retain the original shared fire-escape description.
LookLaundryStairs:

C2Sc5_C7:
    ; Test room argument and branch on equality.
    db $25, RoomLaundry
    dw C2Loc5_6F
    ; Show message 2.
    db $02, $d3
    ; End script.
    db $ff

; With hands free, move between the laundry room and room $48 and show the original entry response.
UseLaundryStairs:

C2Sc5_C8:
    ; Test object flag and branch when clear.
    db $54, C2HandsFree
    dw C2TiedMove
    ; Move using two room arguments if the selected state permits.
    db $20, RoomLaundry, $48
    ; Test room argument and branch on inequality.
    db $55, RoomLaundry
    dw C2Loc5_32

; Describe the dim laundry room and detergent smell.
EnterLaundryRoom:

C2Loc5_8C:
    ; Show message 2.
    db $02, $ae
    ; End script.
    db $ff

; Show the tied-hands refusal for the original movement and lid actions.
C2TiedMove:

C2Loc5_8D:
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff

; Describe the laundry hamper and retain the original goons-return hint conditions.
LookC2Hamper:

C2Sc5_C9:
    ; Test room argument and branch on equality.
    db $25, RoomHamper
    dw C2Loc5_28
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $bb
    ; Test object flag and branch when set.
    db $08, C2GoonsFooled
    dw C2Sc5_E1
    ; Test object flag and branch when set.
    db $08, C2HamperHint
    dw RepeatHamperHint
    ; Test object flag and branch when clear.
    db $54, C2HandsFree
    dw C2Sc5_E1
    ; Play audio.
    db $3e, $08
    ; Show message 2.
    db $02, $bc
    ; Set object flag.
    db $09, C2HamperHint

; Show the search-for-an-escape hint, play the room cue, and end the script.
HintGoonsReturn:

C2Loc5_8E:
    ; Show message 2.
    db $02, $bd
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Play the original clue cue before the repeated search-for-escape hint.
RepeatHamperHint:

C2Loc5_8F:
    ; Play audio.
    db $3e, $08
    ; Jump to script.
    db $07
    dw HintGoonsReturn

; Allow the normal lid-opening path only with hands free.
OpenC2Hamper:

C2Sc5_CA:
    ; Test object flag and branch when clear.
    db $54, C2HandsFree
    dw C2TiedMove

jr_008_520d:
    ; Jump to script.
    db $07
    dw C2Sc5_E4

; With hands free, explain that the broken hamper lid cannot close.
CloseC2Hamper:

C2Sc5_CB:
    ; Test object flag and branch when clear.
    db $54, C2HandsFree
    dw C2TiedMove
    ; Show message 2.
    db $02, $c9
    ; End script.
    db $ff

; With hands free, move between the hamper and laundry room and show the corresponding room text.
UseC2Hamper:

C2Sc5_CC:
    ; Test object flag and branch when clear.
    db $54, C2HandsFree
    dw C2TiedMove
    ; Move using two room arguments if the selected state permits.
    db $20, RoomHamper, RoomLaundry
    ; Test room argument and branch on inequality.
    db $55, RoomHamper
    dw EnterLaundryRoom
    ; Show message 2.
    db $02

jr_008_5223:
    db $a7
    ; End script.
    db $ff

C2Sc5_CD:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on inequality.
    db $55, $48

jr_008_522a:
    dw C2Loc5_00
    ; Show message 2.
    db $02, $d4
    ; End script.
    db $ff

C2Sc5_CE:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw C2Sc5_E3
    ; Test room argument and branch on inequality.
    db $55, $48
    dw C2Loc5_A3
    ; Test state bit.
    db $0e, $af
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_A1

C2Loc5_90:
    ; Set text name 0.
    db $30, $d0
    ; Show message 3.
    db $2c, $21
    ; End script.
    db $ff

C2Sc5_CF:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw C2Sc5_E8
    ; Test room argument and branch on inequality.
    db $55, $48
    dw C2Loc5_B1
    ; Test state bit.
    db $0e, $af
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc5_AF
    ; Jump to script.
    db $07
    dw C2Loc5_90

C2Sc5_D0:
    ; Test room argument and branch on equality.
    db $25, $48
    dw C2Loc5_91
    ; Test object flag and branch when clear.
    db $54, $a7
    dw C2Loc5_93
    ; Move using two room arguments if the selected state permits.
    db $20, $48, RoomOuterOffice
    ; Show message 2.
    db $02, $cd
    ; End script.
    db $ff

C2Loc5_91:
    ; Test state bit.
    db $0e, $af
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc5_90
    ; Move using two room arguments if the selected state permits.
    db $20, $48, RoomOuterOffice

C2Loc5_92:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $d7
    ; Test object flag and branch when clear.
    db $54, C2GoonsFooled
    dw C2Loc5_30
    ; Test object flag and branch when set.
    db $08, $a6
    dw C2Sc5_E1
    ; Play audio.
    db $3e, $08
    ; Show message 1.
    db $01, $5c
    ; Play room audio cue.
    db $5a
    ; Set object flag.
    db $09, $a6
    ; End script.
    db $ff

C2Loc5_93:
    ; Play audio.
    db $3e, $08
    ; Show message 1.
    db $01, $5d
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Describe the secret entrance from the outer office or its exit from the secret office.
LookSecretDoor:

C2Sc5_D1:
    ; Test room argument and branch on inequality.
    db $55, RoomOuterOffice
    dw LookSecretExit
    ; Show message 2.
    db $02, $e3
    ; End script.
    db $ff

; Describe the passage leading back to the outer office.
LookSecretExit:

C2Loc5_94:
    ; Show message 2.
    db $02, $f4
    ; End script.
    db $ff

; Move between rooms $49 and $4a; entering restores the original photo and peel item states.
UseSecretDoor:

C2Sc5_D2:
    ; Test room argument and branch on inequality.
    db $55, RoomOuterOffice
    dw HintRingAtExit
    ; Move using two room arguments if the selected state permits.
    db $20, RoomOuterOffice, RoomSecretOffice
    ; Test object flag and branch when set.
    db $08, C2PhotoTaken
    dw InitOfficePeel
    ; Set item state.
    db $15, $4c

; Set the peel item state only while the original banana-taken flag is clear.
InitOfficePeel:

C2Loc5_95:
    ; Test object flag and branch when set.
    db $08, C2BananaTaken
    dw EnterSecretOffice
    ; Set item state.
    db $15, C2Peel

; Show the first secret-office description, or the stuffy-room description on later entries.
EnterSecretOffice:

C2Loc5_96:
    ; Test object flag and branch when set.
    db $08, C2SecretSeen
    dw HintStuffyOffice
    ; Show message 2.
    db $02, $f8
    ; Set object flag.
    db $09, C2SecretSeen
    ; End script.
    db $ff

; Show the secret-office air-circulation hint.
HintStuffyOffice:

C2Loc5_97:
    ; Show message 2.
    db $02, $f9
    ; End script.
    db $ff

; With bribes known, no planted ring, and no desk hint, suggest the cigar-ring plan before the original room move.
HintRingAtExit:

C2Loc5_98:
    ; Test object flag and branch when clear.
    db $54, C2BribeKnown
    dw C2Loc5_99
    ; Test object flag and branch when set.
    db $08

jr_008_52ac:
    db C2RingFlag
    dw C2Loc5_99
    ; Test object flag and branch when set.
    db $08, C2DeskHint
    dw C2Loc5_99
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $08
    ; Show message 2.
    db $02, $fe
    ; Show message 2.
    db $02, $70
    ; Set object flag.
    db $09, C2EndFlag
    ; Set object flag.
    db $09, C2RingPlan
    ; Set object flag.
    db $09, $41
    ; Set object flag.
    db $09, C2ExitHint
    ; Play room audio cue.
    db $5a

C2Loc5_99:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomOuterOffice, RoomSecretOffice
    ; Jump to script.
    db $07
    dw C2Loc5_92

C2Sc5_D3:
    ; Move using two room arguments if the selected state permits.
    db $20, $62, $63
    ; Show message 3.
    db $2c, $49
    ; End script.
    db $ff

C2Sc5_D4:
    ; Move using two room arguments if the selected state permits.
    db $20, $11, $7d

C2Loc5_9A:
    ; Test room argument and branch on equality.
    db $25, $11
    dw C2HotelFront
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $d0
    ; Test room argument and branch on equality.
    db $25, $63
    dw C2TracksB
    ; End script.
    db $ff

; Describe the tire tracks at desert room $63 without clearing exposure.
C2TracksB:

C2Loc5_9B:
    ; Show message 3.
    db $2c, $49
    ; End script.
    db $ff

C2Sc5_D5:
    ; Move using two room arguments if the selected state permits.
    db $20, $11, $63
    ; Jump to script.
    db $07
    dw C2Loc5_9A

; Describe the Lucky Dice hotel front and clear desert exposure.
C2HotelFront:

C2Loc5_9C:
    ; Show message 0.
    db $00, $cc
    ; Clear the desert exposure timer.
    db $42, C2HeatIx
    ; End script.
    db $ff

C2Sc5_D6:
    ; Move using two room arguments if the selected state permits.
    db $20, $13, $62

C2Loc5_9D:
    ; Test room argument and branch on equality.
    db $25, $13
    dw C2Outskirts
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $d4
    ; Test room argument and branch on equality.
    db $25, $62
    dw C2TracksA
    ; End script.
    db $ff

; Describe the tire tracks at desert room $62 without clearing exposure.
C2TracksA:

C2Loc5_9E:
    ; Show message 3.
    db $2c, $49
    ; End script.
    db $ff

; Describe the town outskirts (the cleaners front in JP) and clear desert exposure.
C2Outskirts:

C2Loc5_9F:
    ; Show message 0.
    db $00, $ea
    ; Clear the desert exposure timer.
    db $42, C2HeatIx
    ; End script.
    db $ff

C2Sc5_D7:
    ; Move using two room arguments if the selected state permits.
    db $20, $13, $76
    ; Jump to script.
    db $07
    dw C2Loc5_9D

C2Sc5_D8:
    ; Move using two room arguments if the selected state permits.
    db $20, $13, $7a
    ; Jump to script.
    db $07

jr_008_530d:
    ; Target C2Loc5_9D; retain the interior label.
    db $ef

jr_008_530e:
    db $52

C2Sc5_D9:
    ; Move using two room arguments if the selected state permits.
    db $20, $14, $77

C2Loc5_A0:
    ; Test room argument and branch on equality.
    db $25, $14
    dw C2StationFront
    ; Show message 0.
    db $00, $d0

jr_008_5318:
    ; End script.
    db $ff

C2Sc5_DA:
    ; Move using two room arguments if the selected state permits.
    db $20, $14, $7e
    ; Jump to script.
    db $07
    ; Target C2Loc5_A0; retain the interior label.
    db $12

jr_008_531e:
    db $53

C2Sc5_DB:
    ; Move using two room arguments if the selected state permits.
    db $20, $62

jr_008_5321:
    db $70
    ; End script.
    db $ff

C2Sc5_DC:
    ; Move using two room arguments if the selected state permits.
    db $20, $62

jr_008_5325:
    db $7b
    ; End script.
    db $ff

C2Sc5_DD:
    ; Move using two room arguments if the selected state permits.
    db $20, $63, $71
    ; End script.
    db $ff

C2Sc5_DE:
jr_008_532b:
    ; Move using two room arguments if the selected state permits.
    db $20, $63

jr_008_532d:
    db $7c
    ; End script.
    db $ff

; Move through the desert grid and dispatch the five special destination descriptions.
WalkDesert:

C2Sc5_DF:
jr_008_532f:
    ; Move through the desert room grid.
    db $6c
    ; Test room argument and branch on equality.
    db $25, RoomOutskirts
    dw C2Outskirts
    ; Test room argument and branch on equality.
    db $25, RoomHotelFront
    dw C2HotelFront
    ; Test room argument and branch on equality.
    db $25, RoomStation
    dw C2StationFront
    ; Test room argument and branch on equality.
    db $25, RoomTracksA
    dw C2TracksA
    ; Test room argument and branch on equality.
    db $25, RoomTracksB
    dw C2TracksB
    ; End script.
    db $ff

C2Sc5_E0:
    ; Show message 1.
    db $01, $c5
    ; End script.
    db $ff

C2Sc5_E1:
    ; End script.
    db $ff

C2Sc5_E2:
    ; Show message 0.
    db $00, $d1
    ; End script.
    db $ff

C2Loc5_A1:
    ; Call script.
    db $05
    dw C2Loc5_A2
    ; Set selected state and refresh.
    db $21
    ; End script.
    db $ff

C2Loc5_A2:
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $02
    ; Return to calling script.
    db $06

C2Loc5_A3:
    ; Call script.
    db $05
    dw C2Loc5_A2
    ; Set selected attribute bit 2.
    db $1e
    ; End script.
    db $ff

C2Sc5_E3:
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $19
    ; End script.
    db $ff

C2Sc5_E4:
    ; Show message 0.
    db $00, $2d
    ; End script.
    db $ff

C2Sc5_E5:
    ; Show message 0.
    db $00, $2c
    ; End script.
    db $ff

C2Sc5_E6:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $d3
    ; Show message 0.
    db $00, $d6
    ; End script.
    db $ff

C2Sc5_E7:
    ; Show message 0.
    db $00, $74
    ; End script.
    db $ff

C2Sc5_E8:
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $1a
    ; End script.
    db $ff

C2Loc5_AF:
    ; Call script.
    db $05
    dw C2Loc5_B0
    ; Clear selected state and refresh.
    db $23
    ; End script.
    db $ff

C2Loc5_B0:
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $03
    ; Return to calling script.
    db $06

C2Loc5_B1:
    ; Call script.
    db $05
    dw C2Loc5_B0
    ; Clear selected attribute bit 2.
    db $1f
    ; End script.
    db $ff

C2Sc5_E9:
jr_008_5383:
    ; Show message 0.
    db $00, $e5
    ; End script.
    db $ff

C2Sc5_EA:
    ; Show message 0.
    db $00

jr_008_5387:
    db $e1
    ; End script.
    db $ff

C2Sc5_EB:
    ; Show message 0.
    db $00, $e3
    ; End script.
    db $ff
