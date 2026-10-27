
; Describe the battered dresser.
LookC2Dresser:
; Opcode starts are annotated; scalar operands and inline item-match rows remain data.

C2Sc1_00:
    ; Show message 0.
    db $00, $39 ; Message Text12Message39: IT'S A BEAT UP / DRESSER.[END]
    ; End script.
    db $ff

; Show the original questioning response for an invalid container action.
RejectC2Container:

C2Sc1_01:
    ; Show message 0.
    db $00, $2c ; Message Text12Message2C: NOTHING HAPPENS.[END]
    ; End script.
    db $ff

; Show the first original dusty nightstand description.
LookNightstand1:

C2Sc1_02:
    ; Show message 0.
    db $00, $3a ; Message Text12Message3A: TWO INCHES OF / DUST COAT THIS / NIGHTSTAND.[END]
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
    db $01, $57 ; Message Text14Message57: THIS BATTERED / MAILBOX HAS YOUR / NAME ON IT. KIND / OF SEEMS LIKE A / METAPHOR ABOU...
    ; Show message 2.
    db $02, $08 ; Message Text16Message08: YOUR DETECTIVE / SKILLS TELL YOU / THAT A KEY WOULD / PROBABLY OPEN THISUP![END]
    ; End script.
    db $ff

; Show the shorter mailbox description after it is unlocked.
MailUnlockedText:

C2Loc1_00:
    ; Show message 1.
    db $01, $59 ; Message Text14Message59: IT'S A DENTED / MAILBOX.[END]
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
    db $2c, $02 ; Message Text18Message02: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Hide object.
    db $2a, C2VisIdAdisonMailboxClosed
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
    db $2c, $03 ; Message Text18Message03: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Show object.
    db $29, C2VisIdAdisonMailboxClosed
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
    db $08, C2DiarySlotUnlockedOnce
    dw SlotDiaryReply
    ; Test object flag and branch when set.
    db $08, DiarySlotSeen
    dw SlotKeyHint
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $07 ; Message Text16Message07: WELL, WELL- A SLOTMACHINE. DO YOU / FEEL LUCKY?[END]
    ; Show message 2.
    db $02, $08 ; Message Text16Message08: YOUR DETECTIVE / SKILLS TELL YOU / THAT A KEY WOULD / PROBABLY OPEN THISUP![END]
    ; Set object flag.
    db $09, DiarySlotSeen
    ; End script.
    db $ff

; Describe the machine in which the diary was hidden.
SlotDiaryReply:

C2Loc1_01:
    ; Show message 2.
    db $02, $0a ; Message Text16Message0A: A DIARY IS HIDDEN / IN THIS MACHINE.[END]
    ; End script.
    db $ff

; Show the shared slot machine keyhole hint.
SlotKeyHint:

C2Loc1_02:
    ; Show message 2.
    db $02, $09 ; Message Text16Message09: THAT WOULD / PROBABLY BE THE / EASIEST WAY TO / OPEN IT UP![END]
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
    db $02, $0b ; Message Text16Message0B: IT DOESN'T APPEAR / THAT THIS SLOT / MACHINE HAS BEEN / USED IN QUITE A / WHILE.[END]
    ; Show message 2.
    db $02, $08 ; Message Text16Message08: YOUR DETECTIVE / SKILLS TELL YOU / THAT A KEY WOULD / PROBABLY OPEN THISUP![END]
    ; Set object flag.
    db $09, EmptySlotSeen
    ; End script.
    db $ff

; Describe the empty slot machine.
SlotEmptyReply:

C2Loc1_03:
    ; Show message 2.
    db $02, $0c ; Message Text16Message0C: THIS IS AN EMPTY / SLOT MACHINE.[END]
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
    db $01, $bd ; Message Text15Message3D: ON THE DESKTOP IS / A POOL OF DRIED / BLOOD.[PAGE] / YOU REMEMBER / FINDING JOEY / SI...
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
    db $01, $be ; Message Text15Message3E: IT'S A STAINLESS- / STEEL SAFE MOUNTEDON THE WALL.[END]
    ; Test object flag and branch when set.
    db $08, C2SafeSeen
    dw EndC2Container
    ; Show message 1.
    db $01, $bf ; Message Text15Message3F: JOEY KEPT HIS / IMPORTANT THINGS / HERE...[PAGE] / AND THAT INCLUDED / A LARGE AMOUNT...
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
    db $2c, $02 ; Message Text18Message02: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set state and refresh without cue.
    db $22, C2StateJoeSafeOpen
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
    db $2c, $03 ; Message Text18Message03: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear state and refresh.
    db $24, C2StateJoeSafeOpen
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
    db $01, $c1 ; Message Text15Message41: IT'S AN OLD / FASHIONED / TELEPHONE.[END]
    ; Test object flag and branch when set.
    db $08, C2PhoneOpened
    dw EndC2Container
    ; Show message 1.
    db $01, $c0 ; Message Text15Message40: NOW THAT'S / STRANGE, YOU NEVERNOTICED THE SMALL / KNOB ON IT BEFORE![END]
    ; End script.
    db $ff

; Record the telephone opened flag and use the shared container opening path.
OpenJoePhone:

C2Sc1_0F:
    ; Test attribute bit 2 and branch when set.
    db $1d
    ; Target ContainerIsOpen; retain the interior label.
    db LOW(ContainerIsOpen)

Call_007_5464:
    db HIGH(ContainerIsOpen)
    ; Set object flag.
    db $09, C2PhoneOpened
    ; Jump to script.
    db $07
    dw OpenContainerNow

; Show the second original dusty nightstand description.
LookNightstand2:

C2Sc1_10:
    ; Show message 2.
    db $02, $42 ; Message Text16Message42: THE THICK DUST ON / THIS NIGHT TABLE / MAKES YOUR NOSE / ITCH.[END]
    ; End script.
    db $ff

; Choose the wardrobe description from mirror state A7.
LookC2Wardrobe:

C2Sc1_11:
    ; Test state bit.
    db $0e, C2StateSugarWardrobeMirrorBroken
    ; Branch if result bit 0 is set.
    db $03
    dw WardrobeMirrorText
    ; Show message 2.
    db $02, $43 ; Message Text16Message43: IT'S A LARGE / CLOTHES WARDROBE.[PAGE] / A GLANCE IN THE / MIRROR, TELLS YOU / THAT Y...
    ; End script.
    db $ff

; Describe the broken wardrobe mirror.
WardrobeMirrorText:

C2Loc1_04:
    ; Show message 2.
    db $02, $44 ; Message Text16Message44: THE JAGGED ANGLES / OF THE BUSTED / MIRROR FASCINATES / YOU.[END]
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
    db $2c, $02 ; Message Text18Message02: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]

jr_007_547e:
    ; Set state and refresh without cue.
    db $22, C2StateSugarWardrobeOpen
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

; Show that the wardrobe cannot be discarded as a carried item.
WardrobeDropReply:

C2Sc1_13:
    ; Show message 0.
    db $00, $e5 ; Message Text13Message65: IF YOU DON'T HAVE / IT, YOU CAN'T / THROW IT AWAY.[END]
    ; End script.
    db $ff

; Show the original cannot-do reply.
WardrobeCantDo:

C2Sc1_14:
    ; Show message 0.
    db $00, $e1 ; Message Text13Message61: I CAN'T DO THAT.[END]
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
    db $2c, $03 ; Message Text18Message03: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear state and refresh.
    db $24, C2StateSugarWardrobeOpen
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
    db $0e, C2StateSugarWardrobeMirrorBroken
    ; Branch if result bit 0 is set.
    db $03
    dw WardMirrorBroken
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, C2StateSugarWardrobeMirrorBroken
    ; Show message 3.
    db $2c, $00 ; Message Text18Message00: THE [OBJECT_WRAM:37C5] / BROKE.[END]
    ; End script.
    db $ff

; Show that the wardrobe mirror is already broken.
WardMirrorBroken:

C2Loc1_05:
    ; Show message 3.
    db $2c, $01 ; Message Text18Message01: THE [OBJECT_WRAM:37C5] / IS BROKEN.[END]
    ; End script.
    db $ff

; Show the original no-answer reply.
WardrobeNoAnswer:

C2Sc1_17:
    ; Show message 0.
    db $00, $e3 ; Message Text13Message63: ...NO ANSWER.[END]
    ; End script.
    db $ff

; Show the original questioning reply.
WardrobeQuestion:

C2Sc1_18:
    ; Show message 0.
    db $00, $2d ; Message Text12Message2D: WHAT ARE YOU / DOING...?[END]
    ; End script.
    db $ff

; Describe the glossy mahogany desk.
LookMahogDesk:

C2Sc1_19:
    ; Show message 2.
    db $02, $dd ; Message Text17Message5D: IT'S A MAHOGANY / DESK WITH A / GLOSSY, SHELLACKEDFINISH.[END]
    ; End script.
    db $ff

; Show the original solid-wood desk description.
LookSolidDesk:

C2Sc1_1A:
    ; Show message 0.
    db $00, $ad ; Message Text13Message2D: IT'S AN SOLID WOODDESK.[END]
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
    db $02, $fe ; Message Text17Message7E: YOU WONDER IF / SEEING STOGIE'S / CIGAR RING ON HIS / DESK WOULD CAUSE / VENTINI TO T...
    ; Show message 2.
    db $02, $70 ; Message Text16Message70: IF YOU CAN DO THATAND REVEAL / VENTINI'S SCHEME / TO MALONE AND / SOMEHOW GET OUT OFT...
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
    db $02, $fd ; Message Text17Message7D: IT'S A SMALL / OFFICE DESK, MADE / OF BLONDE OAK.[END]
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
    db $2c, $02 ; Message Text18Message02: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
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
    db $02, $01 ; Message Text16Message01: YOU DISCOVER THE / STUFF THAT WAS / TAKEN FROM YOU.[PAGE] / YOU CAREFULLY / CONSIDER ...
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
    db $02, $18 ; Message Text16Message18: HERE'S THE STUFF / THEY TOOK OFF OF / YOU![PAGE] / YOU THINK YOU KNOWWHY THIS WAS SO ...
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
    db $2c, $02 ; Message Text18Message02: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
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
    db $2c, $19 ; Message Text18Message19: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
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
    db $2c, $03 ; Message Text18Message03: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
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
    db $00, $d3 ; Message Text13Message53: HMM... / IT DOESN'T OPEN.[END]
    ; Show message 0.
    db $00, $d6 ; Message Text13Message56: IT'S LOCKED.[END]
    ; End script.
    db $ff

; Show the container already-closed response using the prepared text name.
ContainerIsClosed:

C2Loc1_0D:
    ; Show message 3.
    db $2c, $1a ; Message Text18Message1A: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff
