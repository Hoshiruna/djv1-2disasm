
; Describe the first wastebasket.
LookC1Trash1:
; Opcode starts are annotated; scalar operands and inline item-match rows remain data.

C1Sc2_00:
    ; Show message 0.
    db $00, $74
    ; End script.
    db $ff

; Open the first wastebasket, update its flags, and check the medicine hint.
OpenC1Trash1:

C1Sc2_01:
    ; Test object flag.
    db $16, C1Trash1Open
    ; Branch if result bit 0 is set.
    db $04
    dw C1TrashOpen
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $e0
    ; Show message 2.
    db $02, $00
    ; Keep selected change.
    db $26
    ; Clear object flag.
    db $18, C1Trash1Closed
    ; Set object flag.
    db $17, C1Trash1Open
    ; Refresh room objects.
    db $27
    ; Test object flag.
    db $16, C1MedToolTakenOnce
    ; Branch if result bit 0 is clear.
    db $05
    dw C1TrashMedicineHint
    ; Resume text.
    db $45
    ; End script.
    db $ff

; Describe the capsule in US or the discarded syringe in JP.
C1TrashMedicineHint:

C1Loc2_03:
    ; Show message 0.
    db $00, $7a
    ; End script.
    db $ff

; Show the already-open reply; the shared path always uses name $e0.
C1TrashOpen:

C1Loc2_00:
    ; Set text name 0.
    db $1e, $e0
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

; Close the first wastebasket, restore flag $9a, and remove its selected change.
CloseC1Trash1:

C1Sc2_02:
    ; Test object flag.
    db $16, C1Trash1Open
    ; Branch if result bit 0 is clear.
    db $05
    dw C1TrashShut
    ; Set text name 0.
    db $1e, $e0
    ; Show message 2.
    db $02

jr_006_4ce0:
    db $02
    ; Clear object flag.
    db $18, C1Trash1Open
    ; Set object flag.
    db $17, C1Trash1Closed
    ; Refresh room objects.
    db $27
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply; the shared path always uses name $e0.
C1TrashShut:

C1Loc2_01:
    ; Set text name 0.
    db $1e, $e0
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

; Show the puzzled reply shared by trash and sewer actions.
C1TrashPuzzled:

C1Sc2_03:
    ; Show message 0.
    db $00, $13
    ; End script.
    db $ff

; Describe the second wastebasket.
LookC1Trash2:

C1Sc2_04:
jr_006_4cf0:
    ; Show message 0.
    db $00, $2e
    ; End script.
    db $ff

; Open the second wastebasket and exchange flags $9b and $21.
OpenC1Trash2:

C1Sc2_05:
    ; Test object flag.
    db $16, C1Trash2Open
    ; Branch if result bit 0 is set.
    db $04
    dw C1TrashOpen
    ; Set text name 0.
    db $1e, $e1
    ; Show message 2.
    db $02, $00
    ; Keep selected change.
    db $26
    ; Clear object flag.
    db $18, C1Trash2Closed
    ; Set object flag.
    db $17, C1Trash2Open
    ; Refresh room objects.
    db $27
    ; End script.
    db $ff

; Close the second wastebasket, restore flag $9b, and remove its selected change.
CloseC1Trash2:

C1Sc2_06:
jr_006_4d03:
    ; Test object flag.
    db $16, C1Trash2Open
    ; Branch if result bit 0 is clear.
    db $05
    dw C1TrashShut
    ; Set text name 0.
    db $1e, $e1
    ; Show message 2.
    db $02, $02
    ; Clear object flag.
    db $18, C1Trash2Open
    ; Set object flag.
    db $17, C1Trash2Closed
    ; Refresh room objects.
    db $27
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the refusal shared by the second and fourth wastebaskets.
C1TrashRefuse:

C1Sc2_07:
    ; Show message 0.
    db $00, $14
    ; End script.
    db $ff

; Open the third wastebasket and exchange flags $9c and $22.
OpenC1Trash3:

C1Sc2_08:
    ; Test object flag.
    db $16, C1Trash3Open
    ; Branch if result bit 0 is set.
    db $04
    dw C1TrashOpen
    ; Set text name 0.
    db $1e, $e2
    ; Show message 2.
    db $02, $00
    ; Keep selected change.
    db $26
    ; Clear object flag.
    db $18, C1Trash3Closed
    ; Set object flag.
    db $17, C1Trash3Open
    ; Refresh room objects.
    db $27
    ; End script.
    db $ff

; Close the third wastebasket, restore flag $9c, and remove its selected change.
CloseC1Trash3:

C1Sc2_09:
    ; Test object flag.
    db $16, C1Trash3Open
    ; Branch if result bit 0 is clear.
    db $05
    dw C1TrashShut
    ; Set text name 0.
    db $1e, $e2
    ; Show message 2.
    db $02, $02

jr_006_4d2f:
    ; Clear object flag.
    db $18, C1Trash3Open
    ; Set object flag.
    db $17, C1Trash3Closed
    ; Refresh room objects.
    db $27
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the description shared by the third and fourth trash cans.
LookC1Trash34:

C1Sc2_0A:
    ; Show message 2.
    db $02, $ce
    ; End script.
    db $ff

; Open the fourth trash can and set flag $23 without a paired flag clear.
OpenC1Trash4:

C1Sc2_0B:
    ; Test object flag.
    db $16, C1Trash4Open
    ; Branch if result bit 0 is set.
    db $04
    dw C1TrashOpen
    ; Set text name 0.
    db $1e, $e3
    ; Show message 2.
    db $02, $00
    ; Keep selected change.
    db $26
    ; Set object flag.
    db $17, C1Trash4Open
    ; Refresh room objects.
    db $27
    ; End script.
    db $ff

; Close the fourth trash can and remove its selected change.
CloseC1Trash4:

C1Sc2_0C:
    ; Test object flag.
    db $16, C1Trash4Open
    ; Branch if result bit 0 is clear.
    db $05
    dw C1TrashShut
    ; Set text name 0.
    db $1e, $e3
    ; Show message 2.
    db $02, $02
    ; Clear object flag.
    db $18, C1Trash4Open
    ; Refresh room objects.
    db $27

jr_006_4d53:
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Describe the deep sewer; flag $25 controls whether effect $1a also runs.
LookC1SewerDrop:

C1Sc2_0D:
    ; Test object flag.
    db $16, C1MemoryRecovered
    ; Branch if result bit 0 is clear.
    db $05
    dw C1SewerDropFx
    ; Show message 1.
    db $01, $2c
    ; End script.
    db $ff

; Describe the deep sewer and run effect $1a.
C1SewerDropFx:

C1Loc2_02:
    ; Show message 1.
    db $01, $2c
    ; Run scene effect.
    db $46, $1a
    ; End script.
    db $ff
