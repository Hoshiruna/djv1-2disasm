
; Describe the battered dresser.
LookC2Dresser:
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

; Show the first original dusty nightstand description.
LookNightstand1:

C2Sc1_02:
    ; Show message 0.
    db $00, $3a
    ; End script.
    db $ff

; Describe Ace's mailbox according to its lock flag.
LookC2Mailbox:

C2Sc1_03:
    ; Test object flag and branch when set.
    db $08, C2MailUnlocked
    dw MailUnlockedText
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $57
    ; Show message 2.
    db $02, $08
    ; End script.
    db $ff

; Show the shorter mailbox description after it is unlocked.
MailUnlockedText:

C2Loc1_00:
    ; Show message 1.
    db $01, $59
    ; End script.
    db $ff

; Require the unlocked mailbox before hiding object 3B and opening its lid.
OpenC2Mailbox:

C2Sc1_04:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw ContainerIsOpen
    ; Test object flag and branch when clear.
    db $54, C2MailUnlocked
    dw ContainerLocked
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

; Show object 3B and clear the mailbox lid attribute through the original cleanup.
CloseC2Mailbox:

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

; Choose the diary machine description and its lock hint.
LookDiarySlot:

C2Sc1_06:
    ; Test object flag and branch when set.
    db $08, $64
    dw SlotDiaryReply
    ; Test object flag and branch when set.
    db $08, DiarySlotSeen
    dw SlotKeyHint
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $07
    ; Show message 2.
    db $02, $08
    ; Set object flag.
    db $09, DiarySlotSeen
    ; End script.
    db $ff

; Describe the machine in which the diary was hidden.
SlotDiaryReply:

C2Loc1_01:
    ; Show message 2.
    db $02, $0a
    ; End script.
    db $ff

; Show the shared slot machine keyhole hint.
SlotKeyHint:

C2Loc1_02:
    ; Show message 2.
    db $02, $09
    ; End script.
    db $ff

; Require flag 5B before the diary machine opening path.
OpenDiarySlot:

C2Sc1_07:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw ContainerIsOpen
    ; Test object flag and branch when clear.
    db $54, DiaryUnlocked
    dw ContainerLocked
    ; Jump to script.
    db $07
    dw OpenContainerNow

; Choose the second machine description and its lock hint.
LookEmptySlot:

C2Sc1_08:
    ; Test object flag and branch when set.
    db $08, EmptyKeyUsed
    dw SlotEmptyReply
    ; Test object flag and branch when set.
    db $08, EmptySlotSeen
    dw SlotKeyHint
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $0b
    ; Show message 2.
    db $02, $08
    ; Set object flag.
    db $09, EmptySlotSeen
    ; End script.
    db $ff

; Describe the empty slot machine.
SlotEmptyReply:

C2Loc1_03:
    ; Show message 2.
    db $02, $0c
    ; End script.
    db $ff

; Require flag 5C before the second machine opening path.
OpenEmptySlot:

C2Sc1_09:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw ContainerIsOpen
    ; Test object flag and branch when clear.
    db $54, EmptyUnlocked
    dw ContainerLocked
    ; Jump to script.
    db $07
    dw OpenContainerNow

; Run the original memory sequence for the blood on Siegel's desk.
LookSiegelDesk:

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

; Describe the wall safe and show its contents hint once.
LookSiegelSafe:

C2Sc1_0B:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $be
    ; Test object flag and branch when set.
    db $08, C2SafeSeen
    dw EndC2Container
    ; Show message 1.
    db $01, $bf
    ; Set object flag.
    db $09, C2SafeSeen
    ; End script.
    db $ff

; Set state 75 and open the selected safe through the original change handling.
OpenSiegelSafe:

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

; Clear state 75 and close the selected safe through the original cleanup.
CloseSiegelSafe:

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

; Describe the telephone and show its knob hint until it has been opened.
LookJoePhone:

C2Sc1_0E:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $c1
    ; Test object flag and branch when set.
    db $08, C2PhoneOpened
    dw EndC2Container
    ; Show message 1.
    db $01, $c0
    ; End script.
    db $ff

; Record the telephone opened flag and use the shared container opening path.
OpenJoePhone:

C2Sc1_0F:
    ; Test attribute bit 2 and branch when set.
    db $1d
    ; Target ContainerIsOpen; retain the interior label.
    db $0b

Call_007_5464:
    db $55
    ; Set object flag.
    db $09, C2PhoneOpened
    ; Jump to script.
    db $07
    dw OpenContainerNow

; Show the second original dusty nightstand description.
LookNightstand2:

C2Sc1_10:
    ; Show message 2.
    db $02, $42
    ; End script.
    db $ff

; Choose the wardrobe description from mirror state A7.
LookC2Wardrobe:

C2Sc1_11:
    ; Test state bit.
    db $0e, $a7
    ; Branch if result bit 0 is set.
    db $03
    dw WardrobeMirrorText
    ; Show message 2.
    db $02, $43
    ; End script.
    db $ff

; Describe the broken wardrobe mirror.
WardrobeMirrorText:

C2Loc1_04:
    ; Show message 2.
    db $02, $44
    ; End script.
    db $ff

; Set state AC and keep the selected wardrobe opening change.
OpenC2Wardrobe:

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

; Show that the wardrobe cannot be discarded as a carried item.
WardrobeDropReply:

C2Sc1_13:
    ; Show message 0.
    db $00, $e5
    ; End script.
    db $ff

; Show the original cannot-do reply.
WardrobeCantDo:

C2Sc1_14:
    ; Show message 0.
    db $00, $e1
    ; End script.
    db $ff

; Clear state AC and the selected lid attribute through the original cleanup.
CloseC2Wardrobe:

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

; Set mirror state A7 and show the mirror breaking.
BreakWardMirror:

C2Sc1_16:
    ; Set text name 0.
    db $30, $ae
    ; Test state bit.
    db $0e, $a7
    ; Branch if result bit 0 is set.
    db $03
    dw WardMirrorBroken
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $a7
    ; Show message 3.
    db $2c, $00
    ; End script.
    db $ff

; Show that the wardrobe mirror is already broken.
WardMirrorBroken:

C2Loc1_05:
    ; Show message 3.
    db $2c, $01
    ; End script.
    db $ff

; Show the original no-answer reply.
WardrobeNoAnswer:

C2Sc1_17:
    ; Show message 0.
    db $00, $e3
    ; End script.
    db $ff

; Show the original questioning reply.
WardrobeQuestion:

C2Sc1_18:
    ; Show message 0.
    db $00, $2d
    ; End script.
    db $ff

; Describe the glossy mahogany desk.
LookMahogDesk:

C2Sc1_19:
    ; Show message 2.
    db $02, $dd
    ; End script.
    db $ff

; Show the original solid-wood desk description.
LookSolidDesk:

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
    dw SecretDeskReply
    ; Test object flag and branch when set.
    db $08, C2RingFlag
    dw SecretDeskReply
    ; Test object flag and branch when set.
    db $08, C2ExitHint
    dw SecretDeskReply
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

; Describe the oak office desk without adding the ring-plan hint.
SecretDeskReply:

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

; Hold text and show the original cannot-open and locked replies.
ContainerLocked:

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
