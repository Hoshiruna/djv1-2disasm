; Confirmed script commands; unrecognized command sequences remain raw bytes.

C2Sc1_00:
    ; Show message 0.
    db $00, $39
    ; End script.
    db $ff

; Show the original questioning response for an invalid container action.
RejectC2Container:

C2Sc1_01:
    ; Show message 0.
    db $00, $2c
    ; End script.
    db $ff

C2Sc1_02:
    ; Show message 0.
    db $00, $3a
    ; End script.
    db $ff

C2Sc1_03:
    ; Test object flag and branch when set.
    db $08, $48
    dw C2Loc1_00
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $57
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff

C2Loc1_00:
    ; Show message 1.
    db $01, $59
    ; End script.
    db $ff

C2Sc1_04:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw ContainerIsOpen
    ; Test object flag and branch when clear.
    db $54, $48
    dw C2Loc1_0B
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Hide object.
    db $2a, $3b
    ; Refresh room objects.
    db $2b
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

C2Sc1_05:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw ContainerIsClosed
    ; Show message 3.
    db $2c, $03
    ; Show object.
    db $29, $3b
    ; Refresh room objects.
    db $2b
    ; Clear selected attribute bit 2.
    db $1f
    ; Remove selected change.
    db $38
    ; End script.
    db $ff

C2Sc1_06:
    ; Test object flag and branch when set.
    db $08, $64
    dw C2Loc1_01
    ; Test object flag and branch when set.
    db $08, $63
    dw C2Loc1_02
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $07
    ; Show message 2.
    db $02, $08
    ; Set object flag.
    db $09, $63
    ; End script.
    db $ff

C2Loc1_01:
    ; Show message 2.
    db $02, $0a
    ; End script.
    db $ff

C2Loc1_02:
    ; Show message 2.
    db $02, $09
    ; End script.
    db $ff

C2Sc1_07:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw ContainerIsOpen
    ; Test object flag and branch when clear.
    db $54, $5b
    dw C2Loc1_0B
    ; Jump to script.
    db $07
    dw OpenContainerNow

C2Sc1_08:
    ; Test object flag and branch when set.
    db $08, $66
    dw C2Loc1_03
    ; Test object flag and branch when set.
    db $08, $65
    dw C2Loc1_02
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $0b
    ; Show message 2.
    db $02, $08
    ; Set object flag.
    db $09, $65
    ; End script.
    db $ff

C2Loc1_03:
    ; Show message 2.
    db $02, $0c
    ; End script.
    db $ff

C2Sc1_09:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw ContainerIsOpen
    ; Test object flag and branch when clear.
    db $54, $5c
    dw C2Loc1_0B
    ; Jump to script.
    db $07
    dw OpenContainerNow

C2Sc1_0A:
    ; Run scene effect.
    db $39, $03
    ; Play audio.
    db $3e, $0a

jr_007_5430:
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 1.
    db $01, $bd
    ; Wait sixty ticks.
    db $7e
    ; Restore saved Case II effect.
    db $3a
    ; End script.
    db $ff

C2Sc1_0B:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $be
    ; Test object flag and branch when set.
    db $08, $57
    dw EndC2Container
    ; Show message 1.
    db $01, $bf
    ; Set object flag.
    db $09, $57
    ; End script.
    db $ff

C2Sc1_0C:
jr_007_5443:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw ContainerIsOpen
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Set state and refresh without cue.
    db $22, $75
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

C2Sc1_0D:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw ContainerIsClosed
    ; Show message 3.
    db $2c, $03
    ; Clear state and refresh.
    db $24, $75
    ; Clear selected attribute bit 2.
    db $1f
    ; Remove selected change.
    db $38
    ; End script.
    db $ff

C2Sc1_0E:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $c1
    ; Test object flag and branch when set.
    db $08, $58
    dw EndC2Container
    ; Show message 1.
    db $01, $c0
    ; End script.
    db $ff

C2Sc1_0F:
    ; Test attribute bit 2 and branch when set.
    db $1d
    ; Target ContainerIsOpen; retain the interior label.
    db $0b

Call_007_5464:
    db $55
    ; Set object flag.
    db $09, $58
    ; Jump to script.
    db $07
    dw OpenContainerNow

C2Sc1_10:
    ; Show message 2.
    db $02, $42
    ; End script.
    db $ff

C2Sc1_11:
    ; Test state bit.
    db $0e, $a7
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc1_04
    ; Show message 2.
    db $02, $43
    ; End script.
    db $ff

C2Loc1_04:
    ; Show message 2.
    db $02, $44
    ; End script.
    db $ff

C2Sc1_12:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw ContainerIsOpen
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02

jr_007_547e:
    ; Set state and refresh without cue.
    db $22, $ac
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

C2Sc1_13:
    ; Show message 0.
    db $00, $e5
    ; End script.
    db $ff

C2Sc1_14:
    ; Show message 0.
    db $00, $e1
    ; End script.
    db $ff

C2Sc1_15:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw ContainerIsClosed
    ; Show message 3.
    db $2c, $03
    ; Clear state and refresh.
    db $24, $ac
    ; Remove selected change.
    db $38
    ; Clear selected attribute bit 2.
    db $1f
    ; End script.
    db $ff

C2Sc1_16:
    ; Set text name 0.
    db $30, $ae
    ; Test state bit.
    db $0e, $a7
    ; Branch if result bit 0 is set.
    db $03
    dw C2Loc1_05
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $a7
    ; Show message 3.
    db $2c, $00
    ; End script.
    db $ff

C2Loc1_05:
    ; Show message 3.
    db $2c, $01
    ; End script.
    db $ff

C2Sc1_17:
    ; Show message 0.
    db $00, $e3
    ; End script.
    db $ff

C2Sc1_18:
    ; Show message 0.
    db $00, $2d
    ; End script.
    db $ff

C2Sc1_19:
    ; Show message 2.
    db $02, $dd
    ; End script.
    db $ff

C2Sc1_1A:
    ; Show message 0.
    db $00, $ad
    ; End script.
    db $ff

; Describe the secret-office desk; with bribes known and no exit hint, show the cigar-ring plan.
LookSecretDesk:

C2Sc1_1B:
    ; Test object flag and branch when clear.
    db $54

jr_007_54b1:
    db C2BribeKnown
    dw C2Loc1_06
    ; Test object flag and branch when set.
    db $08, C2RingFlag
    dw C2Loc1_06
    ; Test object flag and branch when set.
    db $08, C2ExitHint
    dw C2Loc1_06
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $08
    ; Show message 2.
    db $02, $fe
    ; Show message 2.
    db $02, $70
    ; Set object flag.
    db $09, C2RingPlan
    ; Set object flag.
    db $09, C2EndFlag
    ; Set object flag.
    db $09, $41
    ; Set object flag.
    db $09, C2DeskHint
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

C2Loc1_06:
    ; Show message 2.
    db $02, $fd
    ; End script.
    db $ff

; Open the secret-office desk and reveal the confiscated belongings through the original knowledge branches.
OpenSecretDesk:

C2Sc1_1C:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw ContainerIsOpen
    ; Hold text.
    db $2e
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Keep selected change.
    db $27
    ; Test object flag and branch when set.
    db $08, C2DeskSeen
    dw EndC2Container
    ; Set object flag.
    db $09, C2DeskSeen
    ; Test object flag and branch when clear.
    db $54, C2BribeKnown
    dw HintDeskLoot
    ; Test object flag and branch when set.
    db $08, C2RingFlag
    dw EndC2Container
    ; Play audio.
    db $3e, $08
    ; Show message 2.
    db $02, $01
    ; Set object flag.
    db $09, C2EndFlag
    ; Set object flag.
    db $09, C2LootPlan
    ; Set object flag.
    db $09, $41
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Show the confiscated-belongings clue once before the police-bribe knowledge is available.
HintDeskLoot:

C2Loc1_07:
    ; Test object flag and branch when set.
    db $08, C2LootSeen
    dw EndC2Container
    ; Show message 2.
    db $02, $18
    ; Set object flag.
    db $09, C2LootSeen
    ; End script.
    db $ff

; Use the shared type-one close path for the secret-office desk.
CloseSecretDesk:

C2Sc1_1D:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw ContainerIsClosed
    ; Jump to script.
    db $07
    dw CloseContainerNow

; End the current container script.
EndC2Container:

C2Loc1_08:
jr_007_5502:
    ; End script.
    db $ff

; Test the selected container open attribute, then use its original open or already-open response.
OpenC2Container:

C2Sc1_1E:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw ContainerIsOpen

; Show the selected container open message, retain its change, and end the script.
OpenContainerNow:

C2Loc1_09:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

; Show the selected container already-open response.
ContainerIsOpen:

C2Loc1_0A:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $19
    ; End script.
    db $ff

; Copy the container name and choose the close or already-closed path from attribute bit two.
CloseC2Container:

C2Sc1_1F:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw ContainerIsClosed

; Show the close response, clear selected attribute bit two, and remove the selected change.
CloseContainerNow:

C2Loc1_0C:
    ; Show message 3.
    db $2c, $03
    ; Clear selected attribute bit 2.
    db $1f
    ; Remove selected change.
    db $38
    ; End script.
    db $ff

C2Loc1_0B:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $d3
    ; Show message 0.
    db $00, $d6
    ; End script.
    db $ff

; Show the container already-closed response using the prepared text name.
ContainerIsClosed:

C2Loc1_0D:
    ; Show message 3.
    db $2c, $1a
    ; End script.
    db $ff
