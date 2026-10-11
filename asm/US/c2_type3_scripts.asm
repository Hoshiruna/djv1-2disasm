; Confirmed script commands; unrecognized command sequences remain raw bytes.

C2Sc3_00:
    ; Show message 1.
    db $01, $65
    ; End script.
    db $ff

C2Sc3_01:
    ; Show message 1.
    db $01, $7f
    ; End script.
    db $ff

C2Sc3_02:
    ; Show message 1.
    db $01, $78
    ; End script.
    db $ff

C2Sc3_03:
    ; Show message 0.
    db $00, $f5
    ; End script.
    db $ff

C2Sc3_04:
    ; Show message 0.
    db $00, $18
    ; End script.
    db $ff

C2Sc3_05:
    ; Test object visibility.
    db $28, $0f
    ; Branch if result bit 0 is set.
    db $03
    dw C2Sc3_23

C2Sc3_06:
    ; Choose alternate target; selected input runs the following script.
    db $2d

C2Loc3_00:
    ; Match alternate item against type, ID and script target rows.
    db $32, $00, $05
    dw C2Loc3_01
    db $00, $18
    dw C2Loc3_02
    db $00, $1a

jr_007_598b:
    dw C2Loc3_03
    db $00, $1b
    dw C2Loc3_03
    db $00, $1f
    dw C2Loc3_20
    db $00, $43
    ; Target C2Loc3_5D; retain the interior label.
    db $b4

jr_007_5998:
    db $5d
    db $00, $44

jr_007_599b:
    dw C2Loc3_61
    db $00, $45
    dw C2Loc3_63
    db $00, $46

jr_007_59a3:
    dw C2Loc3_61
    db $00, $50
    dw C2Loc3_72
    db $00, $70

jr_007_59ab:
    dw C2Loc3_4A
    db $00, $7a
    dw C2Loc3_69
    db $00, $83

jr_007_59b3:
    dw C2Loc3_0F
    db $00, $93
    dw C2Loc3_48
    db $01, $0c
    dw MatchDeskRing
    db $01, $03
    dw C2Loc3_58
    db $01, $04
    dw C2Loc3_58
    db $02, $00
    dw C2Loc3_46
    db $03, $4b
    dw TryRingOnMat
    db $04, $09
    dw C2Loc3_4F
    db $04, $0a
    dw C2Loc3_54
    db $04, $11
    dw C2Loc3_51
    db $05, $47
    dw C2Loc3_4C
    db $05, $5b
    dw C2Loc3_5A
    db $05, $66
    dw C2Loc3_5C
    db $00, $a6
    dw C2Loc3_2E
    db $00, $16
    dw C2Loc3_78
    db $00, $17
    dw C2Loc3_78
    db $00, $37
    dw C2Loc3_81
    db $00, $3c
    dw C2Loc3_87
    db $00, $4f
    dw C2Loc3_89
    db $00, $55
    dw C2Loc3_91
    db $02, $03
    dw C2Loc3_D2
    db $fe, $fe
    dw C2Loc3_97

C2Loc3_01:
    ; Test packed item argument and branch on inequality.
    db $56, $05
    ; Target NoC2ItemEffect; retain the interior label.
    db $e3

jr_007_5a0c:
    db $66
    ; Show message 0.
    db $00, $22
    ; End script.
    db $ff

C2Loc3_02:
    ; Test packed item argument and branch on equality.
    db $46, $04
    dw C2Loc3_08
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_03:
    ; Test packed item argument and branch on equality.
    db $46, $07
    dw C2Loc3_04
    ; Test packed item argument and branch on equality.
    db $46, $1e
    dw C2Loc3_09
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_0A
    ; Test packed item argument and branch on equality.
    db $46, $49

jr_007_5a25:
    dw C2Loc3_0B
    ; Test packed item argument and branch on equality.
    db $46, $47
    dw C2Loc3_06
    ; Test packed item argument and branch on equality.
    db $46, $04
    dw C2Loc3_08
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_04:
    ; Test object flag and branch when set.
    db $08, $0e
    dw C2Loc3_05
    ; Show message 0.
    db $00, $8d
    ; Run map pulse animation.
    db $75
    ; Set state bit.
    db $0f, $73
    ; Show message 0.
    db $00, $8e
    ; Set object flag.
    db $09, $0e
    ; End script.
    db $ff

C2Loc3_05:
    ; Show message 0.
    db $00, $8f
    ; End script.
    db $ff

C2Loc3_06:
    ; Test object flag and branch when set.
    db $08, $0e
    dw C2Loc3_07
    ; Set text name 0.
    db $30, $bd
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

C2Loc3_07:
    ; Set text name 0.
    db $30, $be
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

C2Loc3_08:
    ; Blink objects twice.
    db $7a
    ; Run blackjack.
    db $57
    ; End script.
    db $ff

C2Loc3_09:
    ; Test object flag and branch when clear.
    db $54, $4c
    dw NoC2ItemEffect
    ; Jump to script.
    db $07
    dw C2Loc3_0B

C2Loc3_0A:
    ; Test object flag and branch when clear.
    db $54, $68
    dw NoC2ItemEffect
    ; Jump to script.
    db $07
    dw C2Loc3_0B

C2Loc3_0B:
    ; Test object flag and branch when set.
    db $08, $0e
    dw C2Loc3_0E
    ; Set text name 0.
    db $30, $bd

C2Loc3_0C:
    ; Call script.
    db $05
    dw C2Loc3_7D
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc3_0D
    ; Set state bit.
    db $0f, $06

C2Loc3_0D:
    ; Prepare room move and read two room arguments.
    db $3b, $05, $11
    ; Jump to script in bank $08.
    db $7d
    dw C2Loc5_13
    db $08

C2Loc3_0E:
    ; Hold text.
    db $2e
    ; Set text name 0.
    db $30, $be
    ; Jump to script.
    db $07
    dw C2Loc3_0C

C2Loc3_0F:
    ; Test packed item argument and branch on equality.
    db $46, $0c
    dw C2Loc3_10
    ; Test packed item argument and branch on equality.
    db $46, $51
    dw C2Loc3_13
    ; Test packed item argument and branch on equality.
    db $46, $52
    dw C2Loc3_14
    ; Test packed item argument and branch on equality.
    db $46, $1e
    ; Target C2Loc3_17; retain the interior label.
    db $db

jr_007_5a8c:
    db $5a
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_18
    ; Test packed item argument and branch on equality.
    db $46, $49
    dw C2Loc3_19
    ; Test packed item argument and branch on equality.
    db $46, $47
    dw C2Loc3_16
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_10:
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw C2Loc3_12
    ; Test object flag and branch when set.
    db $08, $7d
    dw C2Loc3_11
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $90
    ; Set object flag.
    db $09, $7d

C2Loc3_11:
    ; Show message 2.
    db $02, $91
    ; End script.
    db $ff

C2Loc3_12:
    ; Show message 2.
    db $02, $92
    ; End script.
    db $ff

C2Loc3_13:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw C2Loc3_15
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $93
    ; Show message 2.
    db $02, $94
    ; Set object flag.
    db $09, $7f
    ; Jump to script.
    db $07
    dw ConsumeC2Food

C2Loc3_14:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw C2Loc3_15
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $98
    ; Call script.
    db $05
    dw ConsumeSlot0Item
    ; Show message 1.
    db $01, $37
    ; Show object.
    db $29, $4b
    ; Refresh room objects.
    db $2b
    ; Set object flag.
    db $09, $7e
    ; End script.
    db $ff

C2Loc3_15:
    ; Play audio.
    db $3e, $09
    ; Show message 1.
    db $01, $54
    ; Jump to script.
    db $07
    dw C2Loc0_1F

C2Loc3_16:
    ; Set text name 0.
    db $30, $b4
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

C2Loc3_17:
    ; Test object flag and branch when set.
    db $08, $4c
    dw C2Loc3_19
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_18:
    ; Test object flag and branch when set.
    db $08, $68
    dw C2Loc3_19
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_19:
    ; Show message 2.
    db $02, $8e
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
    ; Show message 1.
    db $01, $81
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Reject the selected desk-mat attribute bit zero before matching the first packed ring.
TryRingOnMat:

C2Loc3_1A:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw NoC2ItemEffect

; Accept the first packed item only when it is one of the two cigar-ring variants.
MatchDeskRing:

C2Loc3_1B:
    ; Test packed item argument and branch on equality.
    db $46, C2Ring1
    dw PlantRing1
    ; Test packed item argument and branch on equality.
    db $46, C2Ring2
    dw PlantRing2
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Unless a ring is already planted, show the first ring object and finish planting.
PlantRing1:

C2Loc3_1C:
    ; Test object flag and branch when set.
    db $08, C2RingFlag
    dw NoC2ItemEffect
    ; Show object.
    db $29, C2RingObj1
    ; Jump to script.
    db $07
    dw FinishRingPlant

; Unless a ring is already planted, show the second ring object and finish planting.
PlantRing2:

C2Loc3_1D:
    ; Test object flag and branch when set.
    db $08, C2RingFlag
    dw NoC2ItemEffect
    ; Show object.
    db $29, C2RingObj2

; Refresh the planted ring, show the desk message, set the ending flags, and remove the first item.
FinishRingPlant:

C2Loc3_1E:
    ; Refresh room objects.
    db $2b
    ; Show message 1.
    db $01, $22
    ; Set object flag.
    db $09, C2RingFlag
    ; Set object flag.
    db $09, C2EndFlag
    ; Call script.
    db $05
    dw RemoveSlot0Item
    ; End script.
    db $ff

; Select slot zero, clear attribute bit zero, remove its list item, then return with slot one selected.
RemoveSlot0Item:

C2Loc3_1F:
    ; Select operation slot 0.
    db $35
    ; Clear attribute bit 0.
    db $19
    ; Drop selected list item.
    db $33
    ; Select operation slot 1.
    db $36
    ; Return to calling script.
    db $06

C2Loc3_20:
    ; Test packed item argument and branch on equality.
    db $46, $42
    dw C2Loc3_21
    ; Test packed item argument and branch on equality.
    db $46, $17
    dw C2Loc3_21
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_21:
    ; Clear state bit.
    db $10, $14
    ; Clear object flag.
    db $0a, $26
    ; Clear state bit.
    db $10, $15
    ; Set object flag.
    db $09, $3b
    ; Show object.
    db $29, $0f
    ; Refresh room objects.
    db $2b
    ; Show message 0.
    db $00, $a6
    ; Show object.
    db $29, $20
    ; Refresh room objects.
    db $2b
    ; Select operation slot 0.
    db $35
    ; Clear attribute bit 0.
    db $19
    ; Drop selected list item.
    db $33
    ; Test packed item argument and branch on equality.
    db $46, $17
    dw C2Loc3_22
    ; Set selected attribute bit 1.
    db $1b

C2Loc3_22:
    ; Select operation slot 1.
    db $36

C2Loc3_E5:
    ; Show object.
    db $29, $20
    ; Refresh room objects.
    db $2b
    ; Test room argument and branch on equality.
    db $25, $08
    dw C2Loc3_26
    ; Test room argument and branch on equality.
    db $25, $09
    dw C2Loc3_28
    ; Test room argument and branch on equality.
    db $25, $0a
    dw C2Loc3_2A
    ; Test state bit.
    db $0e, $04
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc3_23
    ; Call script.
    db $05
    dw C2Loc3_2C
    ; Clear state and refresh.
    db $24, $04

C2Loc3_23:
    ; Call script.
    db $05
    dw C2Loc3_2D
    ; Hide object.
    db $2a, $11
    ; Show object.
    db $29, $12
    ; Refresh room objects.
    db $2b
    ; Wait while rendering objects.
    db $47

jr_007_5b70:
    db $18

C2Loc3_24:
    ; Hide object.
    db $2a, $12
    ; Show object.
    db $29

jr_007_5b74:
    db $13
    ; Refresh room objects.
    db $2b
    ; Wait while rendering objects.
    db $47, $18

C2Loc3_25:
    ; Hide object.
    db $2a, $13
    ; Show object.
    db $29, $14

jr_007_5b7c:
    ; Refresh room objects.
    db $2b
    ; Wait while rendering objects.
    db $47, $18
    ; Set script value 0.
    db $49, $04
    ; Show message 3.
    db $2c, $20
    ; Hide object.
    db $2a, $20
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $0e
    ; End script.
    db $ff

C2Loc3_26:
    ; Test state bit.
    db $0e, $09
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc3_27
    ; Call script.
    db $05
    dw C2Loc3_2C
    ; Clear state and refresh.
    db $24, $09

C2Loc3_27:
    ; Call script.
    db $05
    dw C2Loc3_2D
    ; Jump to script.
    db $07
    dw C2Loc3_24

C2Loc3_28:
    ; Test state bit.
    db $0e, $0c
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc3_29
    ; Call script.
    db $05
    dw C2Loc3_2C
    ; Clear state and refresh.
    db $24, $0c

C2Loc3_29:
    ; Call script.
    db $05
    dw C2Loc3_2D
    ; Jump to script.
    db $07
    dw C2Loc3_25

C2Loc3_2A:
    ; Show object.
    db $29, $20
    ; Refresh room objects.
    db $2b

jr_007_5bae:
    ; Test state bit.
    db $0e, $0e
    ; Branch if result bit 0 is clear.
    db $04

jr_007_5bb1:
    dw C2Loc3_2B
    ; Call script.
    db $05
    dw C2Loc3_2C
    ; Clear state and refresh.
    db $24, $0e

C2Loc3_2B:
    ; Hide object.
    db $2a, $20
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $0e
    ; Show message 1.
    db $01, $29
    ; End script.
    db $ff

C2Loc3_2C:
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $23
    ; Return to calling script.
    db $06

C2Loc3_2D:
    ; Show message 0.
    db $00, $a5

jr_007_5bc9:
    ; Set current room.
    db $50, $0a
    ; Return to calling script.
    db $06

C2Loc3_2E:
    ; Test packed item argument and branch on equality.
    db $46, $05
    dw C2Loc3_2F
    ; Test packed item argument and branch on equality.
    db $46, $2e
    dw EatC2Duck
    ; Test packed item argument and branch on equality.
    db $46, C2Banana
    dw EatC2Banana
    ; Test packed item argument and branch on equality.
    db $46

jr_007_5bd9:
    db C2Peel
    dw RefuseC2Peel
    ; Test packed item argument and branch on equality.
    db $46, $33
    dw C2Loc3_30
    ; Test packed item argument and branch on equality.
    db $46, $35
    dw C2Loc3_32
    ; Test packed item argument and branch on equality.
    db $46, $37

jr_007_5be6:
    dw C2Loc3_33
    ; Test packed item argument and branch on equality.
    db $46, $1e
    dw C2Loc3_42
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_44
    ; Test packed item argument and branch on equality.
    db $46, $49
    dw C2Loc3_45
    ; Test packed item argument and branch on equality.
    db $46, $3a
    dw C2Loc3_34
    ; Test packed item argument and branch on equality.
    db $46, $4a
    dw EatOldFood
    ; Test packed item argument and branch on equality.
    db $46, $47
    dw C2Loc3_41
    ; Test packed item argument and branch on equality.
    db $46, $46
    dw C2Sc3_07
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_2F:
    ; Show message 0.
    db $00, $23
    ; End script.
    db $ff

C2Loc3_30:
    ; Test object flag and branch when set.
    db $08, $70
    dw C2Loc3_31
    ; Show message 2.
    db $02, $61
    ; Call script.
    db $05
    dw ConsumeSlot0Item
    ; End script.
    db $ff

C2Loc3_31:
    ; Show message 2.
    db $02, $62
    ; Call script.
    db $05
    dw ConsumeSlot0Item
    ; End script.
    db $ff

C2Loc3_32:
    ; Show message 2.
    db $02, $65
    ; End script.
    db $ff

C2Loc3_33:
    ; Test object flag and branch when set.
    db $08, $0d
    dw C2Loc3_37
    ; Test object flag and branch when set.
    db $08, $50
    dw C2Loc3_38
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw C2Loc3_39
    ; Show message 2.
    db $02, $6a
    ; End script.
    db $ff

C2Loc3_34:
    ; Test object flag and branch when set.
    db $08, $0c
    dw C2Loc3_36
    ; Test object flag and branch when set.
    db $08, $0d
    dw C2Loc3_37
    ; Test object flag and branch when set.
    db $08, $50
    dw C2Loc3_38
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw C2Loc3_35
    ; Show message 2.
    db $02, $6c
    ; Set object flag.
    db $09, C2Uniform
    ; End script.
    db $ff

C2Loc3_35:
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $12
    ; Clear object flag.
    db $0a, C2Uniform
    ; Jump to script.
    db $07
    dw C2Loc4_86

C2Loc3_36:
    ; Copy first-slot name to text name 0.
    db $45
    ; Set text name 1.
    db $31, $71
    ; Show message 3.
    db $2c, $11
    ; End script.
    db $ff

C2Loc3_37:
    ; Copy first-slot name to text name 0.
    db $45
    ; Set text name 1.
    db $31, $70
    ; Show message 3.
    db $2c, $11
    ; End script.
    db $ff

C2Loc3_38:
    ; Copy first-slot name to text name 0.
    db $45
    ; Set text name 1.
    db $31, $78
    ; Show message 3.
    db $2c, $11
    ; End script.
    db $ff

C2Loc3_39:
    ; Copy first-slot name to text name 0.
    db $45
    ; Set text name 1.
    db $31, $3a
    ; Show message 3.
    db $2c, $11
    ; End script.
    db $ff

; Show the old-food response, then consume the first item.
EatOldFood:

C2Loc3_3A:
    ; Show message 0.
    db $00, $be

; Call the shared first-slot consumption script and end the action.
ConsumeC2Food:

C2Loc3_3B:
    ; Call script.
    db $05
    dw ConsumeSlot0Item
    ; End script.
    db $ff

; Remove slot zero from the list, clear attribute bit zero, set bit one, and return with slot one selected.
ConsumeSlot0Item:

C2Loc3_3C:
    ; Select operation slot 0.
    db $35
    ; Clear attribute bit 0.
    db $19
    ; Drop selected list item.
    db $33
    ; Set selected attribute bit 1.
    db $1b
    ; Select operation slot 1.
    db $36
    ; Return to calling script.
    db $06

; Show the duck meal response and consume the first item.
EatC2Duck:

C2Loc3_3D:
    ; Show message 1.
    db $01, $d9
    ; Jump to script.
    db $07
    dw ConsumeC2Food

; Consume only a peeled banana; otherwise show the original ripe-banana response.
EatC2Banana:

C2Loc3_3E:
    ; Test object flag and branch when set.
    db $08, C2BananaPeeled
    dw EatPeeledBanana
    ; Show message 2.
    db $02, $1b
    ; End script.
    db $ff

; Show the fruit response, record the banana eaten flag, and consume the first item.
EatPeeledBanana:

C2Loc3_3F:
    ; Show message 2.
    db $02, $1d
    ; Set object flag.
    db $09, C2BananaEaten
    ; Jump to script.
    db $07
    dw ConsumeC2Food

; Show the refusal to eat the banana peel.
RefuseC2Peel:

C2Loc3_40:
    ; Show message 2.
    db $02, $20
    ; End script.
    db $ff

C2Loc3_41:
    ; Show message 2.
    db $02, $ec
    ; End script.
    db $ff

C2Sc3_07:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $bd
    ; Test item flag.
    db $11, $46
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc0_5E
    ; Set text name 0.
    db $30, $48
    ; Show message 3.
    db $2c, $2d
    ; Clear item flag.
    db $13, $46
    ; Set item state.
    db $15, $46
    ; Set item flag.
    db $12, $47
    ; Drop list value.
    db $34, $46
    ; Set item flag and append list value.
    db $4c, $47
    ; End script.
    db $ff

C2Loc3_42:
    ; Test object flag and branch when clear.
    db $54, $4c
    dw NoC2ItemEffect
    ; Hold text.
    db $2e
    ; Set text name 0.
    db $30, $d8

C2Loc3_43:
    ; Play audio.
    db $3e, $09
    ; Show message 3.
    db $2c, $14
    ; Show message 0.
    db $00, $26
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

C2Loc3_44:
    ; Test object flag and branch when clear.
    db $54, $68
    dw NoC2ItemEffect

C2Loc3_45:
    ; Hold text.
    db $2e
    ; Copy first-slot name to text name 0.
    db $45
    ; Jump to script.
    db $07
    dw C2Loc3_43

C2Loc3_46:
    ; Test packed item argument and branch on equality.
    db $46, $3a
    dw C2Loc3_47
    ; Test packed item argument and branch on equality.
    db $46, $38
    dw C2Loc3_CF
    ; Test packed item argument and branch on equality.
    db $46, $37
    dw C2Loc3_CF
    ; Test packed item argument and branch on equality.
    db $46, $40
    dw C2Loc3_CF
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_47:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw C2Loc3_CF
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

C2Loc3_48:
    ; Test packed item argument and branch on equality.
    db $46, $47
    dw C2Loc3_49
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_49:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02

jr_007_5cd8:
    db $e6
    ; Play audio.
    db $3e, $00
    ; Call script.
    db $05
    dw RemoveSlot0Item
    ; Play audio.
    db $3e, $17
    ; Show object.
    db $29, $52
    ; Refresh room objects.
    db $2b
    ; Show message 1.
    db $01, $39
    ; Play audio.
    db $3e, $12
    ; Show message 2.
    db $02, $e7
    ; Set object flag.
    db $09, $9e
    ; Draw Case II panel and marks.
    db $3c
    ; Set state and refresh without cue.
    db $22, $6d
    ; Hide object.
    db $2a, $52
    ; Show object.
    db $29, $5b
    ; Refresh room objects.
    db $2b
    ; Show message 2.
    db $02, $e8
    ; Set object flag.
    db $09, $86
    ; Hide object.
    db $2a, $a4
    ; Show object.
    db $29, $a5
    ; Show object.
    db $29, $a6
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

C2Loc3_4A:
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_4B
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_4B:
    ; Test object flag and branch when clear.
    db $54, $68
    dw C2Loc3_5B
    ; Show message 1.
    db $01, $b7
    ; End script.
    db $ff

C2Loc3_4C:
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_4D
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_4D:
    ; Test object flag and branch when set.
    db $08, $43
    dw C2Loc3_4E
    ; Show message 1.
    db $01, $3b
    ; End script.
    db $ff

C2Loc3_4E:
    ; Show message 1.
    db $01, $3c
    ; End script.
    db $ff

C2Loc3_4F:
    ; Test packed item argument and branch on equality.
    db $46, $02
    dw C2Loc3_50
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_50:
    ; Use one Case II bullet.
    db $52
    ; Set object flag.
    db $09, $4b
    ; End script.
    db $ff

C2Loc3_51:
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_52
    ; Jump to script.
    db $07

jr_007_5d2e:
    dw NoC2ItemEffect

C2Loc3_52:
    ; Test object flag and branch when clear.
    db $54, $68
    dw C2Loc3_5B
    ; Test object flag and branch when set.
    db $08, $75
    dw C2Loc3_53
    ; Show message 2.
    db $02, $68
    ; Keep selected change.
    db $27
    ; Set object flag.
    db $09, $75
    ; End script.
    db $ff

C2Loc3_53:
    ; Show message 2.
    db $02, $69
    ; End script.
    db $ff

C2Loc3_54:
    ; Test packed item argument and branch on equality.
    db $46, $03
    dw C2Loc3_55
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_55:
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw C2Loc3_56
    ; Test object flag and branch when clear.
    db $54, $4e
    dw C2Loc3_57
    ; Test object flag and branch when set.
    db $08, $a8
    dw C2Loc3_57
    ; Show message 1.
    db $01, $4c
    ; End script.
    db $ff

C2Loc3_56:
    ; Show message 3.
    db $2c, $47
    ; End script.
    db $ff

C2Loc3_57:
    ; Use one Case II battery.
    db $72
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc3_EB
    ; Show message 1.
    db $01, $83
    ; Clear the flashlight timer.
    db $42, C2LampIx
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw C2Loc3_EA
    ; Load Case II palette and reload scene.
    db $73

C2Loc3_EA:
    ; Set object flag.
    db $09, $4e
    ; Set object flag.
    db $09, $76
    ; Clear object flag.
    db $0a, $a8
    ; End script.
    db $ff

C2Loc3_EB:
    ; Show message 1.
    db $01, $67
    ; End script.
    db $ff

C2Loc3_58:
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw C2Loc3_59
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_59:
    ; Test Case II quarters.
    db $5c
    ; Branch if result bit 0 is clear.
    db $04
    dw NoC2ItemEffect
    ; Show message 2.
    db $02, $12
    ; End script.
    db $ff

C2Loc3_5A:
    ; Test packed item argument and branch on inequality.
    db $56, $24
    dw NoC2ItemEffect
    ; Test object flag and branch when set.
    db $08, $5d
    dw NoC2ItemEffect
    ; Test object flag and branch when clear.
    db $54, $68
    dw C2Loc3_5B

jr_007_5d8a:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $da
    ; Play audio.
    db $3e, $15
    ; Set selected state and refresh.
    db $21
    ; Show message 1.
    db $01, $db
    ; Set object flag.
    db $09, $5d
    ; End script.
    db $ff

C2Loc3_5B:
    ; Show message 1.
    db $01, $8d
    ; End script.
    db $ff

C2Loc3_5C:
    ; Test packed item argument and branch on inequality.
    db $56, $24
    dw C2Loc3_9A
    ; Test object flag and branch when set.
    db $08, $6b
    dw NoC2ItemEffect
    ; Test object flag and branch when clear.
    db $54, $68
    dw C2Loc3_5B
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $da
    ; Show object.
    db $29, $46
    ; Refresh room objects.
    db $2b

jr_007_5daa:
    ; Play audio.
    db $3e, $15
    ; Set state and refresh without cue.
    db $22, $66
    ; Set selected attribute bit 2.
    db $1e
    ; Show message 1.
    db $01, $db
    ; Set object flag.
    db $09, $6b
    ; End script.
    db $ff

C2Loc3_5D:
    ; Test packed item argument and branch on equality.
    db $46, $47
    dw C2Loc3_5E
    ; Test packed item argument and branch on equality.
    db $46, $24

jr_007_5dba:
    dw C2Loc3_65
    ; Test packed item argument and branch on equality.
    db $46, $49
    dw C2Loc3_66
    ; Test packed item argument and branch on equality.
    db $46, $1e
    dw C2Loc3_64
    ; Test packed item argument and branch on equality.
    db $46, $00
    dw PayTrainFare
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw RejectTrainCoin
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_5E:
    ; Set text name 0.
    db $30, $d9
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

; Spend the stored fare; on success, clear the conductor state, restore the car view, and set clearance.
PayTrainFare:

C2Loc3_5F:
    ; Spend the stored Case II cash cost.
    db $68
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc3_E7
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $6e
    ; Show message 2.
    db $02, $6f
    ; Resume text.
    db $2f
    ; Clear the train-room fare view and refresh.
    db $6f
    ; Call script in bank $08.
    db $7c
    dw TrainCarView
    db $08
    ; Set the current train clearance flag.
    db $64
    ; End script.
    db $ff

; When quarters are available, show the impatient conductor and insufficient-payment messages without spending them.
RejectTrainCoin:

C2Loc3_60:
    ; Test Case II quarters.
    db $5c

jr_007_5de6:
    ; Branch if result bit 0 is clear.
    db $04
    dw NoC2ItemEffect
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $77
    ; Show message 2.
    db $02, $72
    ; End script.
    db $ff

C2Loc3_61:
    ; Test packed item argument and branch on equality.
    db $46, $47
    dw C2Loc3_62
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_65
    ; Test packed item argument and branch on equality.
    db $46, $49
    dw C2Loc3_66
    ; Test packed item argument and branch on equality.
    db $46, $1e
    dw C2Loc3_64
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_62:
    ; Set text name 0.
    db $30, $b6
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

C2Loc3_63:
    ; Test packed item argument and branch on equality.
    db $46, $47
    dw C2Loc3_68
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_65
    ; Test packed item argument and branch on equality.
    db $46, $49
    dw C2Loc3_66
    ; Test packed item argument and branch on equality.
    db $46, $1e
    dw C2Loc3_64
    ; Show message 0.
    db $00, $07
    ; End script.
    db $ff

C2Loc3_64:
jr_007_5e1a:
    ; Test object flag and branch when clear.
    db $54, $4c
    dw NoC2ItemEffect
    ; Jump to script.
    db $07
    dw C2Loc3_66

C2Loc3_65:
    ; Test object flag and branch when clear.
    db $54, $68
    dw NoC2ItemEffect

C2Loc3_66:
    ; Branch when the current train clearance flag is clear.
    db $5f
    dw C2Loc3_67
    ; Run the current passenger-room effect.
    db $63

C2Loc3_67:
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $0c
    ; Jump to script.
    db $07
    dw C2Loc0_90

C2Loc3_68:
    ; Set text name 0.
    db $30, $b5
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

C2Loc3_69:
    ; Test packed item argument and branch on equality.
    db $46

jr_007_5e35:
    db $2e
    dw C2Loc3_6A
    ; Test packed item argument and branch on equality.
    db $46, $4a
    dw C2Loc3_6A
    ; Test packed item argument and branch on equality.
    db $46, C2Banana
    dw C2Loc3_6A
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_6B
    ; Test packed item argument and branch on equality.
    db $46, $49
    dw C2Loc3_6C
    ; Test packed item argument and branch on equality.
    db $46, $1e
    dw C2Loc3_6E
    ; Test packed item argument and branch on equality.
    db $46, $47
    dw C2Loc3_6F
    ; Test packed item argument and branch on equality.
    db $46, $00
    dw C2Loc3_70
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw C2Loc3_71
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_6A:
    ; Call script.
    db $05
    dw ConsumeSlot0Item
    ; Show message 2.
    db $02, $39
    ; End script.
    db $ff

C2Loc3_6B:
    ; Test object flag and branch when clear.
    db $54, $68
    dw NoC2ItemEffect

C2Loc3_6C:
    ; Set text name 0.
    db $30, $b3
    ; Run scene effect.
    db $39, $08
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 3.
    db $2c, $0e
    ; Wait sixty ticks.
    db $7e

C2Loc3_6D:
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

C2Loc3_6E:
    ; Test object flag and branch when clear.
    db $54, $4c
    dw NoC2ItemEffect
    ; Jump to script.
    db $07
    dw C2Loc3_6C

C2Loc3_6F:
    ; Set text name 0.
    db $30, $b3
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

C2Loc3_70:
jr_007_5e85:
    ; Spend one dollar of Case II cash.
    db $67
    ; Branch if result bit 0 is clear.
    db $04
    dw NoC2ItemEffect
    ; Show message 2.
    db $02, $37
    ; End script.
    db $ff

C2Loc3_71:
    ; Test Case II quarters.
    db $5c
    ; Branch if result bit 0 is clear.
    db $04
    dw NoC2ItemEffect
    ; Show message 2.
    db $02, $37
    ; Decrement Case II quarters.
    db $5d
    ; End script.
    db $ff

C2Loc3_72:
    ; Test packed item argument and branch on equality.
    db $46, $2e
    dw C2Loc3_73
    ; Test packed item argument and branch on equality.
    db $46, $4a
    dw C2Loc3_73
    ; Test packed item argument and branch on equality.
    db $46, C2Banana
    dw C2Loc3_73
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_74
    ; Test packed item argument and branch on equality.
    db $46, $49
    dw C2Loc3_75
    ; Test packed item argument and branch on equality.
    db $46, $1e
    dw C2Loc3_76
    ; Test packed item argument and branch on equality.
    db $46, $47
    dw C2Loc3_77
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_73:
    ; Call script.
    db $05
    ; Target ConsumeSlot0Item; retain the interior label.
    db $67

jr_007_5eb5:
    db $5c
    ; Show message 1.
    db $01, $21
    ; End script.
    db $ff

C2Loc3_74:
    ; Test object flag and branch when set.
    db $08, $68
    dw C2Loc3_75
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_75:
    ; Show message 1.
    db $01, $27
    ; End script.
    db $ff

C2Loc3_76:
    ; Test object flag and branch when set.
    db $08, $4c
    dw C2Loc3_75
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_77:
    ; Set text name 0.
    db $30, $b9
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

C2Loc3_78:
    ; Test packed item argument and branch on equality.
    db $46, $1e
    dw C2Loc3_79
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_7A
    ; Test packed item argument and branch on equality.
    db $46, $49
    dw C2Loc3_7B
    ; Test packed item argument and branch on equality.
    db $46, $47
    dw C2Loc3_62
    ; Test packed item argument and branch on equality.
    db $46, $00
    dw C2Loc3_7E
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw C2Loc3_7F
    ; Test packed item argument and branch on equality.
    db $46, $04
    dw C2Loc3_80
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $05
    ; End script.
    db $ff

C2Loc3_79:
    ; Test object flag and branch when set.
    db $08, $4c
    dw C2Loc3_7B
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_7A:
    ; Test object flag and branch when set.
    db $08, $68
    dw C2Loc3_7B
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_7B:
    ; Set text name 0.
    db $30, $b6
    ; Call script.
    db $05
    dw C2Loc3_7D
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc3_7C
    ; Set state bit.
    db $0f, $06

C2Loc3_7C:
    ; Prepare room move and read two room arguments.
    db $3b, $04, $11
    ; Jump to script in bank $08.
    db $7d
    dw C2Loc5_13
    db $08

C2Loc3_7D:
    ; Show message 3.
    db $2c, $1d
    ; Run scene effect.
    db $39, $0e
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 3.
    db $2c, $1e
    ; Wait sixty ticks.
    db $7e
    ; Test state bit.
    db $0e, $06
    ; Return to calling script.
    db $06

C2Loc3_7E:
    ; Buy casino chips.
    db $69
    ; End script.
    db $ff

C2Loc3_7F:
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $06
    ; End script.
    db $ff

C2Loc3_80:
    ; Sell casino chips.
    db $6a
    ; End script.
    db $ff

C2Loc3_81:
    ; Test packed item argument and branch on equality.
    db $46, $1e
    ; Target C2Loc3_84; retain the interior label.
    db $49

jr_007_5f27:
    db $5f
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_85
    ; Test packed item argument and branch on equality.
    db $46, $49
    dw C2Loc3_86
    ; Test packed item argument and branch on equality.
    db $46, $47
    dw C2Loc3_68
    ; Test packed item argument and branch on equality.
    db $46, $00
    dw C2Loc3_82
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw C2Loc3_83

C2Loc3_E6:
    ; Show message 0.
    db $00, $07
    ; End script.
    db $ff

C2Loc3_82:
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_83:
    ; Test Case II quarters.
    db $5c
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc3_E6
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_84:
    ; Test object flag and branch when clear.
    db $54, $4c
    dw NoC2ItemEffect
    ; Set text name 0.
    db $30, $d8
    ; Jump to script.
    db $07
    dw C2Loc3_86

C2Loc3_85:
    ; Test object flag and branch when clear.
    db $54, $68
    dw NoC2ItemEffect
    ; Jump to script.
    db $07
    dw C2Loc3_86

C2Loc3_86:
    ; Run scene effect.
    db $39, $08
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $04
    ; Wait sixty ticks.
    db $7e
    ; Jump to script.
    db $07
    dw C2Loc3_6D

C2Loc3_87:
    ; Test packed item argument and branch on equality.
    db $46, $1e
    dw C2Loc3_84
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_85
    ; Test packed item argument and branch on equality.
    db $46, $49
    dw C2Loc3_86
    ; Test packed item argument and branch on equality.
    db $46, $3f
    dw C2Loc3_88
    ; Test packed item argument and branch on equality.
    db $46, $47
    dw C2Loc3_68
    ; Show message 2.
    db $02, $e5
    ; End script.
    db $ff

C2Loc3_88:
    ; Show message 2.
    db $02, $ff
    ; Show object.
    db $29, $1d
    ; Refresh room objects.
    db $2b
    ; Set object flag.
    db $09, $1b
    ; Jump to script.
    db $07
    dw ConsumeC2Food

C2Loc3_89:
    ; Test packed item argument and branch on equality.
    db $46, $1e
    dw C2Loc3_8B
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_8C
    ; Test packed item argument and branch on equality.
    db $46, $49
    dw C2Sc0_8A
    ; Test packed item argument and branch on equality.
    db $46, $47
    dw C2Loc3_8A
    ; Test packed item argument and branch on equality.
    db $46, $00
    dw C2Loc3_8D
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw C2Loc3_90
    ; Show message 1.
    db $01, $26
    ; End script.
    db $ff

C2Loc3_8A:
    ; Set text name 0.
    db $30, $b8
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

C2Loc3_8B:
    ; Test object flag and branch when clear.
    db $54, $4c
    dw NoC2ItemEffect
    ; Jump to script.
    db $07
    dw C2Sc0_8A

C2Loc3_8C:
    ; Test object flag and branch when clear.
    db $54, $68
    dw NoC2ItemEffect
    ; Jump to script.
    db $07
    dw C2Sc0_8A

C2Loc3_8D:
    ; Test object flag and branch when set.
    db $08, $79
    dw C2Loc3_8E
    ; Test object flag and branch when set.
    db $08, $4a
    dw C2Loc3_8F
    ; Spend one dollar of Case II cash.
    db $67
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc3_E7
    ; Call script.
    db $05
    dw C2Loc3_E8
    ; End script.
    db $ff

C2Loc3_8E:
    ; Show message 1.
    db $01, $25
    ; End script.
    db $ff

C2Loc3_8F:
    ; Show message 1.
    db $01, $24
    ; End script.
    db $ff

C2Loc3_90:
    ; Test object flag and branch when set.
    db $08, $79
    dw C2Loc3_8E
    ; Test object flag and branch when set.
    db $08, $4a
    dw C2Loc3_8F
    ; Test Case II quarters.
    db $5c
    ; Branch if result bit 0 is clear.
    db $04
    dw C2Loc3_E7
    ; Call script.
    db $05
    dw C2Loc3_E8
    ; Decrement Case II quarters.
    db $5d
    ; End script.
    db $ff

C2Loc3_E7:
    ; Show message 2.
    db $02, $72
    ; End script.
    db $ff

C2Loc3_E8:
    ; Show message 1.
    db $01, $23
    ; Set object flag.
    db $09, $4a
    ; Return to calling script.
    db $06

C2Loc3_91:
    ; Test packed item argument and branch on equality.
    db $46, $24
    dw C2Loc3_95
    ; Test packed item argument and branch on equality.
    db $46, $49
    dw C2Loc3_96
    ; Test packed item argument and branch on equality.
    db $46, $47
    dw C2Loc3_94
    ; Test packed item argument and branch on equality.
    db $46, $00
    dw C2Loc3_92
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw C2Loc3_93

C2Loc3_E9:
    ; Show message 1.
    db $01, $50
    ; End script.
    db $ff

C2Loc3_92:
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_93:
    ; Test Case II quarters.
    db $5c
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc3_E9
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

C2Loc3_94:
    ; Set text name 0.
    db $30, $da
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

C2Loc3_95:
    ; Test object flag and branch when clear.
    db $54, $68
    dw NoC2ItemEffect

C2Loc3_96:
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $24
    ; End script.
    db $ff

C2Loc3_97:
    ; Test packed item argument and branch on inequality.
    db $56, $31
    dw C2Loc3_98
    ; Show message 1.
    db $01, $c6
    ; End script.
    db $ff

C2Loc3_98:
    ; Test room argument and branch on inequality.
    db $55, RoomLaundry
    dw NoC2ItemEffect
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw NoC2ItemEffect
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff

C2Sc3_08:
Case2BathroomTowelTake:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $00
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_09:
    ; Show message 0.
    db $00, $19
    ; End script.
    db $ff

C2Sc3_0A:
    ; Choose alternate target; selected input runs the following script.
    db $2d

C2Loc3_99:
    ; Match alternate item against type, ID and script target rows.
    db $32, $00, $5a
    dw C2Loc3_9A
    db $00, $5b
    dw C2Loc3_9A
    db $05, $01
    dw C2Loc3_9A
    db $05, $03
    dw C2Loc3_9A
    db $05, $0a
    dw C2Loc3_9A
    db $05, $0b
    dw C2Loc3_9A
    db $05, $14
    dw C2Loc3_9B
    db $05, $15
    dw C2Loc3_9A
    db $05, $4d
    dw C2Loc3_9E
    db $05, $4e
    dw C2Loc3_9A
    db $05, $4f
    dw C2Loc3_9A
    db $05, $53
    dw C2Loc3_9A
    db $05, $5b
    dw C2Loc3_9A
    db $05, $64
    dw C2Loc3_9A
    db $05, $66
    dw C2Loc3_9A
    db $05, $67
    dw C2Loc3_9A
    db $05, $74
    dw C2Loc3_9A
    db $01, $02
    dw C2Loc3_A0
    db $01, $03
    dw C2Loc3_A2
    db $01, $04
    dw C2Loc3_A5
    db $00, $17
    dw C2Loc3_78
    db $00, $37
    dw C2Loc3_81
    db $00, $3c
    dw C2Loc3_87
    db $00, $4f
    dw C2Loc3_89
    db $00, $55
    dw C2Loc3_91
    db $02, $03
    dw C2Loc3_D2
    db $fe, $fe
    dw C2Loc3_98

C2Loc3_9A:
    ; Show message 0.
    db $00, $60
    ; End script.
    db $ff

C2Loc3_9B:
    ; Test packed item argument and branch on inequality.
    db $56, $41
    dw C2Loc3_9A
    ; Test room argument and branch on equality.
    db $25, RoomLaundry
    dw C2Loc3_9C
    ; Test object flag and branch when set.
    db $08, $26
    dw C2Loc3_9D
    ; Set object flag.
    db $09, $26
    ; Jump to script.
    db $07
    dw C2Loc3_E1

C2Loc3_9C:
    ; Show message 2.
    db $02, $ca
    ; End script.
    db $ff

C2Loc3_9D:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw NoC2ItemEffect
    ; Clear object flag.
    db $0a, $26
    ; Jump to script.
    db $07
    dw C2Loc3_E3

C2Loc3_9E:
    ; Test packed item argument and branch on inequality.
    db $56, $06
    dw C2Loc3_9A
    ; Test object flag and branch when set.
    db $08, $47
    dw C2Loc3_9F
    ; Set object flag.
    db $09, $47
    ; Jump to script.
    db $07
    dw C2Loc3_E1

C2Loc3_9F:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw NoC2ItemEffect
    ; Clear object flag.
    db $0a, $47
    ; Jump to script.
    db $07
    dw C2Loc3_E3

C2Loc3_A0:
    ; Test packed item argument and branch on inequality.
    db $56, $25
    dw C2Loc3_9A
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw NoC2ItemEffect
    ; Test object flag and branch when set.
    db $08, $48
    dw C2Loc3_A1
    ; Set object flag.
    db $09, $48
    ; Call script.
    db $05
    dw C2Loc3_E2
    ; Hide object.
    db $2a, $3b
    ; Refresh room objects.
    db $2b
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

C2Loc3_A1:
    ; Clear object flag.
    db $0a, $48
    ; Jump to script.
    db $07
    dw C2Loc3_E3

C2Loc3_A2:
    ; Test packed item argument and branch on inequality.
    db $56, $32
    dw C2Loc3_9A
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw NoC2ItemEffect
    ; Test object flag and branch when set.
    db $08, $5b
    dw C2Loc3_A4
    ; Set object flag.
    db $09, $64
    ; Set object flag.
    db $09, $5b

C2Loc3_A3:
    ; Call script.
    db $05
    dw C2Loc3_E2
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

C2Loc3_A4:
    ; Clear object flag.
    db $0a, $5b
    ; Jump to script.
    db $07
    dw C2Loc3_E3

C2Loc3_A5:
    ; Test packed item argument and branch on inequality.
    db $56, $32
    dw C2Loc3_9A
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw NoC2ItemEffect
    ; Test object flag and branch when set.
    db $08, $5c
    dw C2Loc3_A6
    ; Set object flag.
    db $09, $5c
    ; Set object flag.
    db $09, $66
    ; Jump to script.
    db $07
    dw C2Loc3_A3

C2Loc3_A6:
    ; Clear object flag.
    db $0a, $5c
    ; Jump to script.
    db $07
    dw C2Loc3_E3

C2Sc3_0B:
    ; Show message 0.
    db $00, $1a
    ; End script.
    db $ff

C2Sc3_0C:
    ; Show message 0.
    db $00, $1c
    ; Test object flag and branch when set.
    db $08, $35
    dw EndC2Item
    ; Add quick-list value.
    db $44, $e1
    ; Set object flag.
    db $09, $35
    ; End script.
    db $ff

C2Sc3_0D:
    ; Show message 0.
    db $00, $1d
    ; End script.
    db $ff

; Describe Stogie's cigar ring; with belongings and bribes known, suggest leaving it on Ventini's desk.
ReadStogieRing:

C2Sc3_0E:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $3e
    ; Test object flag and branch when clear.
    db $54, C2LootSeen
    dw EndC2Item
    ; Test object flag and branch when clear.
    db $54, C2BribeKnown
    dw EndC2Item
    ; Test object flag and branch when set.
    db $08, C2RingFlag
    dw EndC2Item
    ; Play audio.
    db $3e, $08
    ; Show message 0.
    db $00, $d5
    ; Show message 2.
    db $02, $70
    ; Set object flag.
    db $09, C2EndFlag
    ; Set object flag.
    db $09, $41
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

C2Sc3_0F:
    ; Test selected attribute bit 1.
    db $1a
    ; Branch if result bit 0 is set.
    db $03
    dw TakeC2ItemNow
    ; Test room argument and branch on equality.
    db $25, RoomSecretOffice
    dw RejectC2Item
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $06
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_10:
    ; Show message 0.
    db $00, $3f
    ; End script.
    db $ff

C2Sc3_11:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $09
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the crumpled payment demand addressed to Stogie and signed T.M.
ReadPayNote:

C2Sc3_12:
    ; Show message 0.
    db $00, $43
    ; End script.
    db $ff

C2Sc3_13:
    ; Test object flag and branch when set.
    db $08, $07
    dw C2Loc3_A8
    ; Show message 0.
    db $00, $41

C2Loc3_A7:
    ; Test object flag and branch when set.
    db $08, $27
    dw EndC2Item
    ; Add quick-list value.
    db $44, $e0
    ; Set object flag.
    db $09, $27
    ; End script.
    db $ff

C2Loc3_A8:
    ; Show message 0.
    db $00, $42
    ; End script.
    db $ff

C2Sc3_14:
    ; Test object flag and branch when set.
    db $08, $07
    dw C2AlreadyOpen
    ; Call script.
    db $05
    dw C2Loc3_AB
    ; Set object flag.
    db $09, $07
    ; Jump to script.
    db $07
    dw C2Loc3_A8

C2Sc3_15:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $08
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_16:
    ; Test object flag and branch when clear.
    db $54, $07
    dw C2AlreadyClosed
    ; Clear object flag.
    db $0a, $07
    ; Jump to script.
    db $07
    dw ShowC2Closed

C2Sc3_17:
    ; Show message 0.
    db $00, $4e
    ; End script.
    db $ff

C2Sc3_18:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $0a
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_19:
jr_007_61ae:
    ; Show message 0.
    db $00, $79
    ; End script.
    db $ff
    ; Not reached from the recovered action and branch entries.
    db $ff

C2Sc3_1A:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $0c
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_1B:
    ; Show message 0.
    db $00, $72
    ; End script.
    db $ff

C2Sc3_1C:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $0b
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_1D:
    ; Show message 0.
    db $00, $54
    ; End script.
    db $ff

C2Sc3_1E:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $15
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_1F:
    ; Show message 0.
    db $00, $59
    ; End script.
    db $ff

C2Sc3_20:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $16
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_21:
    ; Show message 0.
    db $00, $a3
    ; End script.
    db $ff

C2Sc3_22:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Set object flag.
    db $09, $0f
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $0f
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_23:
    ; Test object visibility.
    db $28, $0f
    ; Branch if result bit 0 is clear.
    db $04
    dw RejectC2Item
    ; Set text name 0.
    db $30, $b0
    ; Set script value 0.
    db $49, $04
    ; Show message 3.
    db $2c, $1f
    ; Jump to script.
    db $07
    dw C2Loc3_E5

C2Sc3_24:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $2f

jr_007_6208:
    ; Set object flag.
    db $09, $39
    ; Test object flag and branch when set.
    db $08, $1c
    dw EndC2Item
    ; Test object flag and branch when set.
    db $08, C2HamperHint
    dw EndC2Item
    ; Play audio.
    db $3e, $08
    ; Show message 0.
    db $00, $31
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Mark the original photo taken, then follow the shared item pickup path.
TakeC2Photo:

C2Sc3_25:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Set object flag.
    db $09, C2PhotoTaken
    ; Jump to script.
    db $07
    dw TakeC2ItemNow

; Show the letter description and branch on knowledge flags; shared by the original item action records.
ReadBondLetter:

C2Sc3_26:
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $08
    ; Show message 0.
    db $00, $40
    ; Set object flag.
    db $09, C2BondSeen
    ; Set object flag.
    db $09, C2BondHint
    ; Test object flag and branch when set.
    db $08, C2BribeKnown
    dw EndC2ItemCue
    ; Test object flag and branch when set.
    db $08, C2McMSeen
    dw C2Loc3_A9
    ; Show message 1.
    db $01, $63
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

C2Loc3_A9:
    ; Show message 1.
    db $01, $68
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

C2Sc3_27:
    ; Test object flag and branch when set.
    db $08, $14
    dw C2Loc3_AA
    ; Show message 0.
    db $00, $3c
    ; Jump to script.
    db $07
    dw C2Loc3_A7

C2Loc3_AA:
    ; Show message 0.
    db $00, $3d
    ; End script.
    db $ff

C2Sc3_28:
    ; Test object flag and branch when set.
    db $08, $14
    dw C2AlreadyOpen
    ; Call script.
    db $05
    dw C2Loc3_AB
    ; Set object flag.
    db $09, $14
    ; Jump to script.
    db $07

jr_007_624f:
    dw C2Loc3_AA

C2Loc3_AB:
    ; Hold text.
    db $2e
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Return to calling script.
    db $06

C2Sc3_29:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $1c
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_2A:
    ; Test object flag and branch when clear.
    db $54, $14
    dw C2AlreadyClosed
    ; Clear object flag.
    db $0a, $14
    ; Jump to script.
    db $07
    dw ShowC2Closed

C2Sc3_2B:
    ; Test room argument and branch on inequality.
    db $55, $2b
    dw C2Loc3_AC
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw C2Loc3_AE

C2Loc3_AC:
    ; Show message 1.
    db $01, $0a
    ; Test object flag and branch when set.
    db $08, $38
    dw EndC2Item
    ; Add quick-list value.
    db $44, $e4
    ; Set object flag.
    db $09, $38
    ; End script.
    db $ff

C2Sc3_2C:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Test room argument and branch on inequality.
    db $55, $2b
    dw TakeC2ItemNow
    ; Test object flag and branch when clear.
    db $54, $4a
    dw C2Loc3_AE
    ; Call script.
    db $05
    dw ShowC2Take
    ; Clear object flag.
    db $0a

jr_007_628b:
    db $4a
    ; Test object flag and branch when set.
    db $08, $7a
    dw C2Loc3_B0
    ; Set object flag.
    db $09, $7a

C2Loc3_AD:
    ; Hide object.
    db $2a, $2c
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Loc3_AE:
    ; Test object flag and branch when set.
    db $08, $4a
    dw C2Loc3_AF
    ; Show message 1.
    db $01, $18
    ; End script.
    db $ff

C2Loc3_AF:
    ; Show message 1.
    db $01, $df
    ; End script.
    db $ff

C2Loc3_B0:
    ; Set object flag.
    db $09, $79
    ; Jump to script.
    db $07
    dw C2Loc3_AD

C2Sc3_2D:
    ; Test room argument and branch on inequality.
    db $55, $2b
    dw C2Loc3_B1
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw C2Loc3_AE

C2Loc3_B1:
    ; Show message 1.
    db $01, $0b
    ; Test object flag and branch when set.
    db $08, $38
    dw EndC2Item
    ; Add quick-list value.
    db $44, $e4
    ; Set object flag.
    db $09, $38
    ; End script.
    db $ff

C2Sc3_2E:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Test room argument and branch on inequality.
    db $55, $2b
    dw TakeC2ItemNow
    ; Test object flag and branch when clear.
    db $54, $4a
    dw C2Loc3_AE
    ; Call script.
    db $05
    dw ShowC2Take
    ; Set object flag.
    db $09, $9c
    ; Clear object flag.
    db $0a, $4a
    ; Test object flag and branch when set.
    db $08, $7a
    dw C2Loc3_B3
    ; Set object flag.
    db $09, $7a

C2Loc3_B2:
    ; Hide object.
    db $2a, $2d
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Loc3_B3:
    ; Set object flag.
    db $09, $79
    ; Jump to script.
    db $07
    dw C2Loc3_B2

C2Sc3_2F:
    ; Show message 1.
    db $01, $5e
    ; End script.
    db $ff

C2Sc3_30:
    ; Test object flag and branch when set.
    db $08, $4c
    dw C2Loc3_B4
    ; Show message 1.
    db $01, $76
    ; End script.
    db $ff

C2Loc3_B4:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $01
    ; End script.
    db $ff

C2Sc3_31:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Set object flag.
    db $09, $a2
    ; Test object flag and branch when set.
    db $08, $4c
    dw C2Loc3_B5
    ; Hide object.
    db $2a, $36
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Loc3_B5:
    ; Hide object.
    db $2a, $37
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_32:
    ; Show message 0.
    db $00, $e3
    ; End script.
    db $ff

C2Sc3_33:
    ; Test object flag and branch when set.
    db $08, $4c
    dw C2Loc3_B7
    ; Play audio.
    db $3e, $13
    ; Test object flag and branch when set.
    db $08, $a2
    dw C2Loc3_B6
    ; Hide object.
    db $2a, $36
    ; Show object.
    db $29, $37
    ; Refresh room objects.
    db $2b

C2Loc3_B6:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $00
    ; Set object flag.
    db $09, $4c
    ; End script.
    db $ff

C2Loc3_B7:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1b
    ; End script.
    db $ff

C2Sc3_34:
    ; Show message 1.
    db $01, $77
    ; End script.
    db $ff

C2Sc3_35:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $38
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_36:
    ; Test object flag and branch when clear.
    db $54, $68
    dw C2Loc3_B8
    ; Show message 1.
    db $01, $7c
    ; End script.
    db $ff

C2Loc3_B8:
    ; Show message 1.
    db $01, $7b
    ; End script.
    db $ff

C2Sc3_37:
    ; Test object flag and branch when set.
    db $08, $68
    dw RejectC2Item
    ; Show message 2.
    db $02, $8a
    ; Set object flag.
    db $09, $68
    ; End script.
    db $ff

C2Sc3_38:
    ; Test object flag and branch when clear.
    db $54, $68
    dw RejectC2Item
    ; Show message 1.
    db $01, $14
    ; Clear object flag.
    db $0a, $68
    ; End script.
    db $ff

C2Sc3_39:
    ; Show message 1.
    db $01, $7e
    ; End script.
    db $ff

C2Sc3_3A:
    ; Show message 1.
    db $01, $7f
    ; End script.
    db $ff

C2Sc3_3B:
    ; Show message 1.
    db $01, $d0
    ; End script.
    db $ff

C2Sc3_3C:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $3f
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_3D:
    ; Show message 1.
    db $01, $d2
    ; End script.
    db $ff

C2Sc3_3E:
    ; Show message 1.
    db $01, $d4
    ; End script.
    db $ff

; Describe the diary; when open, read its payment list.
LookSiegelDiary:

C2Sc3_3F:
    ; Hold text.
    db $2e
    ; Test object flag and branch when set.
    db $08, C2DiaryOpen
    dw ReadSiegelDiary
    ; Show message 2.
    db $02, $0e
    ; Test object flag and branch when set.
    db $08, C2DiarySeen
    dw EndC2Item
    ; Show message 1.
    db $01, $4f
    ; End script.
    db $ff

; Show the opened diary payment list, then compare it using the original knowledge flags.
ReadSiegelDiary:

C2Loc3_B9:
    ; Show message 2.
    db $02, $0f
    ; Test object flag and branch when clear.
    db $54, C2BookMatch
    dw DiaryNoBookMatch
    ; Play audio.
    db $3e, $08
    ; Test object flag and branch when clear.
    db $54, C2LedgerSeen
    dw DiaryMatchesBook
    ; Set text name 0.
    db $30, $69
    ; Set text name 1.
    db $31, $6b
    ; Show message 3.
    db $2c, $30
    ; Set text name 0.
    db $30, $6c
    ; Set text name 1.
    db $31, $6d
    ; Show message 3.
    db $2c, $31
    ; Test object flag and branch when clear.
    db $54, C2BondSeen
    dw HintMissingPay
    ; Set text name 0.
    db $30, $69

; Show the conclusion that the named ledger was kept to deceive Malone.
HintFalseLedger:

C2Loc3_BA:
    ; Show message 3.
    db $2c, $34

; With McMurphy's note read, describe police bribes and reveal the fixed courier-zero sum once.
ShowC2Bribes:

C2Loc3_BB:
    ; Test object flag and branch when clear.
    db $54, C2McMSeen
    dw EndC2ItemCue
    ; Show message 0.
    db $00, $98
    ; Test object flag and branch when set.
    db $08, C2SumShown
    dw EndC2ItemCue
    ; Set object flag.
    db $09, C2SumShown
    ; Show message 2.
    db $02, $26
    ; Set object flag.
    db $09, C2BribeKnown
    ; Set object flag.
    db $09, $03
    ; Test object flag and branch when set.
    db $08, C2RingPlan
    dw EndC2ItemCue
    ; Test object flag and branch when set.
    db $08, C2LootPlan
    dw EndC2ItemCue
    ; Show message 1.
    db $01, $64
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Without the black-book comparison, compare the examined ledger or finish scanning the diary.
DiaryNoBookMatch:

C2Loc3_BC:
    ; Test object flag and branch when set.
    db $08, C2LedgerSeen
    dw CompareDiaryLedger
    ; Show message 0.
    db $00

jr_007_63af:
    db $bc
    ; End script.
    db $ff

; Compare the diary and examined ledger, then show the missing courier-zero payments.
CompareDiaryLedger:

C2Loc3_BD:
    ; Play audio.
    db $3e, $08
    ; Set text name 0.
    db $30, $69
    ; Set text name 1.
    db $31, $6b
    ; Show message 3.
    db $2c, $2e
    ; Set text name 0.
    db $30, $6c
    ; Set text name 1.
    db $31, $6d

; Show the absent courier-zero payment clue and question whether Ventini hid the payments.
HintAbsentPay:

C2Loc3_BE:
    ; Show message 3.
    db $2c, $2f
    ; Show message 2.
    db $02, $eb
    ; Show message 1.
    db $01, $79
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Show the agreement between the diary and the black ledger.
DiaryMatchesBook:

C2Loc3_BF:
    ; Set text name 0.
    db $30, $68
    ; Set text name 1.
    db $31, $6b
    ; Show message 3.
    db $2c, $32

; Show that the ledger contains the same information as Siegel's diary.
HintSameEntries:

C2Loc3_C0:
    ; Show message 2.
    db $02, $f1
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Show the missing courier-zero payment hint when the Bondwell-letter clue is absent.
HintMissingPay:

C2Loc3_C1:
    ; Show message 0.
    db $00, $bb
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Set the diary examined and open flags, then read its payment list.
OpenSiegelDiary:

C2Sc3_40:
    ; Test object flag and branch when set.
    db $08, C2DiaryOpen
    dw C2AlreadyOpen
    ; Call script.
    db $05
    dw C2Loc3_AB
    ; Set object flag.
    db $09, C2DiarySeen
    ; Set object flag.
    db $09, C2DiaryOpen
    ; Hold text.
    db $2e
    ; Jump to script.
    db $07
    dw ReadSiegelDiary

; Clear the diary open flag while retaining the examined flag.
CloseSiegelDiary:

C2Sc3_41:
    ; Test object flag and branch when clear.
    db $54

jr_007_63e3:
    db C2DiaryOpen
    dw C2AlreadyClosed
    ; Clear object flag.
    db $0a, C2DiaryOpen
    ; Jump to script.
    db $07
    dw ShowC2Closed

C2Sc3_42:
    ; Show message 2.
    db $02, $0d
    ; Test object flag and branch when set.
    db $08, $37
    dw EndC2Item
    ; Add quick-list value.
    db $44, $e3

jr_007_63f3:
    ; Set object flag.
    db $09, $37
    ; End script.
    db $ff

C2Sc3_43:
    ; Show message 1.
    db $01, $c2
    ; End script.
    db $ff

C2Sc3_44:
    ; Show message 1.
    db $01, $c3
    ; End script.
    db $ff

C2Sc3_45:
    ; Test object flag and branch when set.
    db $08, $70
    dw C2Loc3_C2
    ; Show message 2.
    db $02, $46
    ; End script.
    db $ff

C2Loc3_C2:
    ; Show message 2.
    db $02, $47
    ; End script.
    db $ff

C2Sc3_46:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $4a
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_47:
    ; Show message 2.
    db $02, $48
    ; End script.
    db $ff

C2Sc3_48:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $48
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_49:
    ; Show message 2.
    db $02, $49
    ; End script.
    db $ff

C2Sc3_4A:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $49
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_4B:
    ; Show message 2.
    db $02, $4a

jr_007_642f:
    ; End script.
    db $ff

C2Sc3_4C:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $47
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_4D:
    ; Show message 2.
    db $02, $4b
    ; End script.
    db $ff

C2Sc3_4E:
    ; Show message 2.
    db $02, $4c
    ; End script.
    db $ff

; Show McMurphy's deathbed testimony from the original note description.
ReadMcMNote:

C2Sc3_4F:
    ; Play audio.
    db $3e, $08
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $4e
    ; Set object flag.
    db $09, C2McMSeen
    ; Test object flag and branch when set.
    db $08, C2BribeKnown
    dw EndC2ItemCue
    ; Test object flag and branch when set.
    db $08, C2BondSeen
    dw C2Loc3_C3
    ; Show message 1.
    db $01, $7d
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

C2Loc3_C3:
    ; Show message 1.
    db $01, $8c
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

C2Sc3_50:
    ; Show message 2.
    db $02, $4f
    ; End script.
    db $ff

C2Sc3_51:
    ; Test object flag and branch when set.
    db $08, $4f
    dw C2Loc3_C4
    ; Show message 2.
    db $02, $54
    ; End script.
    db $ff

C2Loc3_C4:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $55
    ; Test object flag and branch when set.
    db $08, C2BribeKnown
    dw C2Loc3_C5
    ; Test object flag and branch when clear.
    db $54, C2DiarySeen
    dw EndC2Item
    ; Show message 2.
    db $02, $56
    ; End script.
    db $ff

C2Loc3_C5:
    ; Show message 0.
    db $00, $b1
    ; End script.
    db $ff

C2Sc3_52:
    ; Test object flag and branch when set.
    db $08, $4f
    dw C2AlreadyOpen
    ; Call script.
    db $05
    dw C2Loc3_AB
    ; Set object flag.
    db $09, $4f
    ; Jump to script.
    db $07
    dw C2Loc3_C4

C2Sc3_53:
    ; Test object flag and branch when clear.
    db $54, $4f
    dw C2AlreadyClosed
    ; Clear object flag.
    db $0a, $4f
    ; Jump to script.
    db $07
    dw ShowC2Closed

C2Sc3_54:
    ; Show message 2.
    db $02, $7c
    ; End script.
    db $ff

C2Sc3_55:
    ; Show message 2.
    db $02, $7f
    ; End script.
    db $ff

C2Sc3_56:
    ; Show message 2.
    db $02, $80
    ; End script.
    db $ff

C2Sc3_57:
    ; Show message 2.
    db $02, $b9
    ; End script.
    db $ff

C2Sc3_58:
    ; Show message 2.
    db $02, $de
    ; End script.
    db $ff

C2Sc3_59:
    ; Show message 2.
    db $02, $df
    ; End script.
    db $ff

C2Sc3_5A:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Set object flag.
    db $09, $19
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_5B:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $e0
    ; Test object flag and branch when set.
    db $08, $a7
    dw EndC2Item
    ; Play audio.
    db $3e, $08
    ; Show message 1.
    db $01, $75
    ; Set object flag.
    db $09, $a7
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

C2Sc3_5C:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $51
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe the ledger; when opened, show its payment entries.
LookC2Ledger:

C2Sc3_5D:
    ; Hold text.
    db $2e
    ; Test object flag and branch when set.
    db $08, C2LedgerOpen
    dw ReadC2Ledger
    ; Show message 0.
    db $00, $b9
    ; Test object flag and branch when set.
    db $08, C2LedgerSeen
    dw EndC2Item
    ; Show message 1.
    db $01, $4f
    ; End script.
    db $ff

; Show payments routed through Ventini to Malone, then compare the original knowledge flags.
ReadC2Ledger:

C2Loc3_C6:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $ba
    ; Test object flag and branch when clear.
    db $54, C2DiarySeen
    dw EndC2Item
    ; Play audio.
    db $3e, $08
    ; Test object flag and branch when clear.
    db $54, C2BookMatch
    dw CompareLedgerPair
    ; Set text name 0.
    db $30, $68
    ; Set text name 1.
    db $31, $6b
    ; Show message 3.
    db $2c, $30
    ; Set text name 0.
    db $30, $6b
    ; Set text name 1.
    db $31, $6e
    ; Show message 3.
    db $2c, $31
    ; Test object flag and branch when clear.
    db $54, C2BondSeen
    dw HintMissingPay
    ; Set text name 0.
    db $30, $67
    ; Jump to script.
    db $07
    dw HintFalseLedger

; Without the black-book comparison, compare the examined ledger with the diary and show the payment gap.
CompareLedgerPair:

C2Loc3_C7:
    ; Set text name 0.
    db $30, $6a
    ; Set text name 1.
    db $31, $6c
    ; Show message 3.
    db $2c, $2e
    ; Set text name 0.
    db $30, $6b
    ; Set text name 1.
    db $31, $6e
    ; Jump to script.
    db $07
    dw HintAbsentPay

; Open the ledger, mark it examined, and show the payment entries.
OpenC2Ledger:

C2Sc3_5E:
    ; Test object flag and branch when set.
    db $08, C2LedgerOpen
    dw C2AlreadyOpen
    ; Hold text.
    db $2e
    ; Call script.
    db $05
    dw C2Loc3_AB
    ; Set object flag.
    db $09, C2LedgerOpen
    ; Set object flag.
    db $09, C2LedgerSeen
    ; Jump to script.
    db $07
    dw ReadC2Ledger

; Clear the ledger open flag and follow the shared close response.
CloseC2Ledger:

C2Sc3_5F:
    ; Test object flag and branch when clear.
    db $54, C2LedgerOpen
    dw C2AlreadyClosed
    ; Clear object flag.
    db $0a, C2LedgerOpen
    ; Jump to script.
    db $07
    dw ShowC2Closed

C2Sc3_60:
    ; Show message 0.
    db $00, $af
    ; End script.
    db $ff

C2Sc3_61:
    ; Test selected attribute bit 1.
    db $1a
    ; Branch if result bit 0 is set.
    db $03
    dw TakeC2ItemNow
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Set state and refresh without cue.
    db $22, $9a
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_62:
    ; Show message 0.
    db $00, $b0
    ; Set object flag.
    db $09, $12
    ; End script.
    db $ff

C2Sc3_63:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $1a
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_64:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $b2
    ; Test object flag and branch when set.
    db $08, $86
    dw EndC2Item
    ; Show message 0.
    db $00, $b3
    ; End script.
    db $ff

C2Sc3_65:
    ; Test object flag and branch when set.
    db $08, $86
    dw C2Loc3_C8

jr_007_6544:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $18
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Loc3_C8:
    ; Show message 0.
    db $00, $e1
    ; End script.
    db $ff

C2Sc3_66:
    ; Show message 0.
    db $00

jr_007_6553:
    db $b4

jr_007_6554:
    ; End script.
    db $ff

C2Sc3_67:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $19
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_68:
    ; Show message 0.
    db $00, $b6
    ; End script.
    db $ff

C2Sc3_69:
    ; Show message 0.
    db $00, $b8
    ; End script.
    db $ff

C2Sc3_6A:
    ; Show message 2.
    db $02, $fb
    ; End script.
    db $ff

C2Sc3_6B:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $3a
    ; End script.
    db $ff

C2Sc3_6C:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Set object flag.
    db $09, $9f
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $53
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_6D:
    ; Show message 0.
    db $00, $2f
    ; End script.
    db $ff

C2Sc3_6E:
    ; Show message 2.
    db $02, $f5
    ; End script.
    db $ff

; Describe the banana according to its peeled flag.
LookC2Banana:

C2Sc3_6F:
    ; Test object flag and branch when set.
    db $08, C2BananaPeeled
    dw LookPeeledBanana
    ; Show message 2.
    db $02, $f6
    ; End script.
    db $ff

; Show the too-soft banana description after peeling.
LookPeeledBanana:

C2Loc3_C9:
    ; Show message 2.
    db $02, $f7
    ; End script.
    db $ff

; Reject a second peeling; otherwise show the action and choose the original peel-state path.
PeelC2Banana:

C2Sc3_70:
    ; Test object flag and branch when set.
    db $08, C2BananaPeeled
    dw NoC2ItemEffect
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $ed
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw ShowC2Peel
    ; Set text name 0.
    db $30, C2Peel
    ; Show message 3.
    db $2c, $2d
    ; Set object flag.
    db $09, C2BananaPeeled
    ; End script.
    db $ff

; Clear the peel item state and refresh the list when the original selected attribute bit zero is clear.
ShowC2Peel:

C2Loc3_CA:
    ; Clear item state.
    db $16, C2Peel
    ; Refresh item list.
    db $78
    ; Set object flag.
    db $09, C2BananaPeeled
    ; End script.
    db $ff

; Mark the banana taken, then follow the shared item pickup path.
TakeC2Banana:

C2Sc3_71:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Set object flag.
    db $09, C2BananaTaken
    ; Jump to script.
    db $07
    dw TakeC2ItemNow

; Describe the black ledger; when open, compare it with the diary.
LookBlackBook:

C2Sc3_72:
    ; Hold text.
    db $2e
    ; Test object flag and branch when set.
    db $08, C2BlackOpen
    dw ReadBlackBook
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $ef
    ; Test object flag and branch when set.
    db $08, C2BlackSeen
    dw EndC2ItemCue
    ; Show message 1.
    db $01, $4f
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; With the diary examined, record their agreement and continue the ledger comparison.
ReadBlackBook:

C2Loc3_CB:
    ; Hold text.
    db $2e
    ; Test object flag and branch when clear.
    db $54, C2DiarySeen
    dw HintUnreadDiary
    ; Set object flag.
    db $09, C2BookMatch
    ; Set text name 0.
    db $30, $6a
    ; Set text name 1.
    db $31, $6c
    ; Show message 3.
    db $2c, $32
    ; Play audio.
    db $3e, $08
    ; Test object flag and branch when clear.
    db $54, C2LedgerSeen
    dw HintSameEntries
    ; Set text name 0.
    db $30, $69
    ; Set text name 1.
    db $31, $6b
    ; Show message 3.
    db $2c, $30
    ; Set text name 0.
    db $30, $6b
    ; Set text name 1.
    db $31, $6d
    ; Show message 3.
    db $2c, $31
    ; Test object flag and branch when clear.
    db $54, C2BondSeen
    dw HintMissingPay
    ; Set text name 0.
    db $30, $69
    ; Show message 3.
    db $2c, $34
    ; Jump to script.
    db $07
    dw ShowC2Bribes

; Without an examined diary, describe the payment entries as insufficient information.
HintUnreadDiary:

C2Loc3_CC:
    ; Show message 2.
    db $02, $f3
    ; End script.
    db $ff

; Set the black ledger open and examined flags, then compare its entries.
OpenBlackBook:

C2Sc3_73:
    ; Test object flag and branch when set.
    db $08, C2BlackOpen
    ; Target C2AlreadyOpen; retain the interior label.
    db $ea

jr_007_65e9:
    db $66
    ; Call script.
    db $05
    dw C2Loc3_AB
    ; Set object flag.
    db $09, C2BlackOpen
    ; Set object flag.
    db $09, C2BlackSeen
    ; Jump to script.
    db $07
    dw ReadBlackBook

; Clear the black ledger open flag while retaining its examined state.
CloseBlackBook:

C2Sc3_74:
    ; Test object flag and branch when clear.
    db $54, C2BlackOpen
    dw C2AlreadyClosed
    ; Clear object flag.
    db $0a, C2BlackOpen
    ; Jump to script.
    db $07
    dw ShowC2Closed

C2Sc3_75:
    ; Show message 2.
    db $02, $a3
    ; End script.
    db $ff

C2Sc3_76:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item

jr_007_6603:
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $4d
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_77:
    ; Show message 2.
    db $02, $a4
    ; End script.
    db $ff

C2Sc3_78:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $4e
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the banana-peel description.
LookC2Peel:

C2Sc3_79:
    ; Show message 2.
    db $02, $ee
    ; End script.
    db $ff

C2Sc3_7A:
    ; End script.
    db $ff

C2Sc3_7B:
    ; Test selected attribute bit 1.
    db $1a
    ; Branch if result bit 0 is set.
    db $03
    dw TakeC2ItemNow
    ; Test room argument and branch on equality.
    db $25, RoomSecretOffice
    dw RejectC2Item
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a

jr_007_662c:
    db $65
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

C2Sc3_7C:
    ; Show message 0.
    db $00, $c0
    ; End script.
    db $ff

C2Sc3_7D:
    ; Show message 1.
    db $01, $47
    ; End script.
    db $ff

; Choose an alternate target for either original cigar-ring variant.
UseC2Ring:

C2Sc3_7E:
    ; Choose alternate target; selected input runs the following script.
    db $2d

; Match the desk mat, desk, containers, or original fallback target.
MatchRingTarget:

C2Loc3_CD:
jr_007_6637:
    ; Match alternate item against type, ID and script target rows.
    db $32, $03, C2DeskMat
    dw TryRingOnMat
    db $01, $0c
    dw MatchDeskRing
    db $02, $00
    dw C2Loc3_CF
    db $02, $01
    dw C2Loc3_D0
    db $02, $02
    dw C2Loc3_D1
    db $02, $03
    dw C2Loc3_D2
    db $00, $a7
    dw C2Loc3_D9
    db $fe, $fe
    dw NoC2ItemEffect

C2Sc3_7F:
    ; Choose alternate target; selected input runs the following script.
    db $2d

C2Loc3_CE:
    ; Match alternate item against type, ID and script target rows.
    db $32, $02, $00
    dw C2Loc3_CF
    db $02, $01
    dw C2Loc3_D0
    db $02, $02
    dw C2Loc3_D1
    db $02, $03
    dw C2Loc3_D2
    db $00, $a7
    dw C2Loc3_D9
    db $fe, $fe
    dw NoC2ItemEffect

C2Loc3_CF:
    ; Place the item in the washer.
    db $65, GrpWasher
    ; End script.
    db $ff

C2Loc3_D0:
    ; Place the item in the first trash can.
    db $65, GrpTrash1
    ; End script.
    db $ff

C2Loc3_D1:
    ; Place the item in the second trash can.
    db $65, GrpTrash2
    ; End script.
    db $ff

C2Loc3_D2:
    ; Test packed item argument and branch on equality.
    db $46, $80
    dw C2Loc3_D5
    ; Test packed item argument and branch on equality.
    db $46, $81
    dw C2Loc3_D6
    ; Test packed item argument and branch on equality.
    db $46, $88
    dw C2Loc3_D7
    ; Test packed item argument and branch on equality.
    db $46, $3a
    dw C2Loc3_D8
    ; Test packed item argument and branch on equality.
    db $46, $17
    dw C2Loc3_D4
    ; Test packed item argument and branch on equality.
    db $46, $00
    dw C2Loc3_D4
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw C2Loc3_D4
    ; Test packed item argument and branch on equality.
    db $46, $02
    dw C2Loc3_D4
    ; Test packed item argument and branch on equality.
    db $46, $03
    dw C2Loc3_D4
    ; Test packed item argument and branch on equality.
    db $46, $04
    dw C2Loc3_D4
    ; Test packed item argument and branch on equality.
    db $46, $46
    dw C2Loc3_D4
    ; Test packed item argument and branch on equality.
    db $46, C2Banana
    ; Target C2Loc3_D4; retain the interior label.
    db $ae

jr_007_66aa:
    db $66

C2Loc3_D3:
    ; Place the item in the desk drawer.
    db $65, GrpDesk
    ; End script.
    db $ff

C2Loc3_D4:
    ; Show message 1.
    db $01, $f3
    ; End script.
    db $ff

C2Loc3_D5:
    ; Test object flag and branch when clear.
    db $54, $0d
    dw C2Loc3_D3
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

C2Loc3_D6:
    ; Test object flag and branch when clear.
    db $54, $0c
    ; Target C2Loc3_D3; retain the interior label.
    db $ab

jr_007_66bb:
    db $66
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

C2Loc3_D7:
    ; Test object flag and branch when clear.
    db $54, $50
    dw C2Loc3_D3
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

C2Loc3_D8:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw C2Loc3_D3
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

C2Loc3_D9:
    ; Confirm direct placement without a group record.
    db $65, PutDirect
    ; End script.
    db $ff

; Reject an item with selected attribute bit zero already set; otherwise use the shared pickup path.
TakeC2Item:

C2Sc3_80:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item

; Show the pickup response and append the selected item to the list.
TakeC2ItemNow:

C2Loc3_DA:
    ; Call script.
    db $05
    dw ShowC2Take
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; End the current Case II item script.
EndC2Item:

C2Loc3_DB:
    ; End script.
    db $ff

; Show the selected item name in the pickup message and return to the calling script.
ShowC2Take:

C2Loc3_DC:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Return to calling script.
    db $06

; Append the selected item to the list and end its script.
AddC2ItemEnd:

C2Loc3_DD:
    ; Append selected item to list.
    db $26
    ; End script.
    db $ff

; Show the original questioning response to an invalid item action.
RejectC2Item:

C2Sc3_81:
    ; Show message 0.
    db $00, $2d
    ; End script.
    db $ff

; Show the original nothing-happens response and end the item action.
NoC2ItemEffect:

C2Sc3_82:
    ; Show message 0.
    db $00, $2c
    ; End script.
    db $ff
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; End script.
    db $ff

; Show that the selected item is already open.
C2AlreadyOpen:

C2Loc3_DE:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $19
    ; End script.
    db $ff

; Show the selected item name in the close response.
ShowC2Closed:

C2Loc3_DF:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $03
    ; End script.
    db $ff

; Show that the selected item is already closed.
C2AlreadyClosed:

C2Loc3_E0:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1a
    ; End script.
    db $ff

C2Loc3_E1:
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $15
    ; Set text name 0.
    db $30, $af
    ; Show message 3.
    db $2c, $02
    ; Set selected state and refresh.
    db $21
    ; End script.
    db $ff

C2Loc3_E2:
    ; Play audio.
    db $3e, $15
    ; Hold text.
    db $2e
    ; Set text name 0.
    db $30, $af
    ; Show message 3.
    db $2c, $02
    ; Return to calling script.
    db $06

C2Loc3_E3:
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $15
    ; Set text name 0.
    db $30, $af
    ; Show message 3.
    db $2c, $03
    ; End script.
    db $ff

; Play the original room cue and end the item script.
EndC2ItemCue:

C2Loc3_E4:
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff
