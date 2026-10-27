
; Describe the industrial washer.
LookC2Washer:
; Opcode starts are annotated; scalar operands and inline item-match rows remain data.

C2Sc2_00:
    ; Show message 2.
    db $02, $b8 ; Message Text17Message38: IT'S AN / INDUSTRIAL-SIZED / WASHER.[END]
    ; End script.
    db $ff

; Describe the woven wastebasket using the original regional wording.
LookWickerBin:

C2Sc2_01:
    ; Show message 2.
    db $02, $fc ; Message Text17Message7C: IT'S A WELL-WOVEN / STRAW WASTEBASKET.WHAT DO YOU WANT, / WICKER?[END]
    ; End script.
    db $ff

; Describe the foul-smelling food garbage using the original regional wording.
LookFoodTrash:

C2Sc2_02:
    ; Show message 1.
    db $01, $c9 ; Message Text15Message49: THIS GARBAGE / STINKS OF ROTTEN / FOOD AND DISCARDEDDREAMS... WHOA, / WERE DID THAT /...
    ; End script.
    db $ff

; Describe Malone's cherry-wood desk and branch on the cigar-ring plan.
LookMaloneDesk:

C2Sc2_03:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $c9 ; Message Text13Message49: IT'S AN EXPENSIVE / DESK MADE OF / CHERRY WOOD.[END]
    ; Test object flag and branch when set.
    db $08, C2RingPlan
    dw HintMaloneProof
    ; Show message 0.
    db $00, $ca ; Message Text13Message4A: MALONE MUST KEEP / HIS IMPORTANT / DOCUMENTS HERE.[END]
    ; End script.
    db $ff

; Suggest leaving concrete proof of Ventini's scheme on Malone's desk.
HintMaloneProof:

C2Loc2_00:
    ; Play audio.
    db $3e, $08
    ; Show message 0.
    db $00, $cb ; Message Text13Message4B: THIS MIGHT BE THE / PLACE TO LEAVE / CONCRETE PROOF OF / WHAT VENTINI IS UPTO.[END]
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Open the washer only with hands free; otherwise show the tied-hands refusal.
OpenC2Washer:

C2Sc2_04:
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw OpenC2Group
    ; Show message 2.
    db $02, $be ; Message Text17Message3E: YOUR TIED HANDS / PREVENT YOU FROM / DOING THAT![END]
    ; End script.
    db $ff

; Copy the group name and open it unless selected attribute bit two is already set.
OpenC2Group:

C2Sc2_05:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw GroupIsOpen
    ; Show message 3.
    db $2c, $02 ; Message Text18Message02: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

; Show the already-open group response using its prepared text name.
GroupIsOpen:

C2Loc2_01:
    ; Show message 3.
    db $2c, $19 ; Message Text18Message19: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Retain the original washer-use refusal chosen by the hands-free flag.
UseC2Washer:

C2Sc2_06:
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw RejectC2Group
    ; Show message 2.
    db $02, $be ; Message Text17Message3E: YOUR TIED HANDS / PREVENT YOU FROM / DOING THAT![END]
    ; End script.
    db $ff

; Show the original questioning response for an invalid group action.
RejectC2Group:

C2Sc2_07:
    ; Show message 0.
    db $00, $2d ; Message Text12Message2D: WHAT ARE YOU / DOING...?[END]
    ; End script.
    db $ff

; Close the washer only with hands free; otherwise show the tied-hands refusal.
CloseC2Washer:

C2Sc2_08:
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw CloseC2Group
    ; Show message 2.
    db $02, $be ; Message Text17Message3E: YOUR TIED HANDS / PREVENT YOU FROM / DOING THAT![END]
    ; End script.
    db $ff

; Copy the group name and close it only when selected attribute bit two is set.
CloseC2Group:

C2Sc2_09:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw CloseGroupNow
    ; Show message 3.
    db $2c, $1a ; Message Text18Message1A: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Show the group close message, clear attribute bit two, and remove the selected change.
CloseGroupNow:

C2Loc2_02:
    ; Show message 3.
    db $2c, $03 ; Message Text18Message03: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $1f
    ; Remove selected change.
    db $38
    ; End script.
    db $ff
