
; Inspect the body and retain the original identified-name gate.
LookC1Siegel:
; Opcode starts are annotated; scalar operands and inline item-match rows remain data.

C1Sc1_00:
    ; Test object flag.
    db $16, C1File5Read
    ; Branch if result bit 0 is set.
    db $04
    dw C1SiegelNamed
    ; Show message 1.
    db $01, $0c ; Message Text0EMessage0C: YOU NOTICE THE / SLUMPED OVER MAN / APPEARS TO HAVE / BREATHED HIS LAST / BREATH.[PAG...
    ; End script.
    db $ff

; Show the original identified Joey Siegel body description.
C1SiegelNamed:

C1Loc1_00:
    ; Show message 2.
    db $02, $96 ; Message Text0DMessage16: IT'S THE BODY / OF JOEY SIEGEL.[PAGE] / YOUR STOMACH DOES / A LURCH AS YOU / NOTICE T...
    ; End script.
    db $ff

; Open the pocket unless its original selected open attribute is set.
OpenC1Pocket:

C1Sc1_01:
    ; Test selected attribute bit 2.
    db $0d

jr_006_4a98:
    ; Branch if result bit 0 is set.
    db $04
    dw C1PocketOpen
    ; Set text name 0.
    db $1e, $c4
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the original already-open pocket reply.
C1PocketOpen:

C1Loc1_05:
    ; Set text name 0.
    db $1e, $c4
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the first desk and retain its original selected change.
OpenC1Desk1:

C1Sc1_02:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Desk1Open
    ; Set text name 0.
    db $1e, $d1
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the original already-open first desk reply.
C1Desk1Open:

C1Loc1_06:
    ; Set text name 0.
    db $1e, $d1
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Show the combination-required reply unless the safe is already open.
TryC1WallSafe:

C1Sc1_03:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1WallSafeOpen
    ; Show message 2.
    db $02, $8e ; Message Text0DMessage0E: YOU FIDDLE WITH / THE DIAL, / LISTENING HARD FORTHE TELLTALE / SOUNDS OF TUMBLERSCLIC...
    ; End script.
    db $ff

; Show the original already-open wall safe reply.
C1WallSafeOpen:

C1Loc1_07:
    ; Set text name 0.
    db $1e, $d2

jr_006_4ac0:
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the second desk and retain its original selected change.
OpenC1Desk2:

C1Sc1_04:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Desk2Open
    ; Set text name 0.
    db $1e, $d3
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the original already-open second desk reply.
C1Desk2Open:

C1Loc1_08:
    ; Set text name 0.
    db $1e, $d3

jr_006_4ad0:
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the dashboard and retain its original visible state update.
OpenC1Dash:

C1Sc1_05:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1DashOpen
    ; Set text name 0.
    db $1e, $d4
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set state and refresh.
    db $33, C1StateLuxuryCarDashboardOpen
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the original already-open dashboard reply.
C1DashOpen:

C1Loc1_09:
    ; Set text name 0.
    db $1e, $d4
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the third desk and keep the original selected change.
OpenC1Desk3:

C1Sc1_06:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Desk3Open
    ; Set text name 0.
    db $1e, $d5
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the original already-open third desk reply.
C1Desk3Open:

C1Loc1_0A:
    ; Set text name 0.
    db $1e, $d5
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the fourth desk and keep the original selected change.
OpenC1Desk4:

C1Sc1_07:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Desk4Open
    ; Set text name 0.
    db $1e, $d7
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the original already-open fourth desk reply.
C1Desk4Open:

C1Loc1_0B:
    ; Set text name 0.
    db $1e, $d7
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Retain the cabinet lock gate before dispatching its open attribute check.
TryC1LockedCab:

C1Sc1_08:
    ; Test object flag.
    db $16, C1CabinetUnlocked
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabOpenCheck
    ; Show message 0.
    db $00, $43 ; Message Text0CMessage43: THE DOOR WON'T / OPEN.[PAGE] / IT MUST BE / LOCKED.[END]
    ; End script.
    db $ff

; Check the original open attribute before the shared cabinet opening path.
C1CabOpenCheck:

C1Loc1_01:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabinetOpen
    ; Jump to script.
    db $1c
    dw C1CabOpenNow

; Set the original flag before the shared cabinet opening path unless already open.
OpenC1Cabinet:

C1Sc1_09:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabinetOpen
    ; Set object flag.
    db $17, C1CabinetOpenedOnce

; Open the cabinet, keep its selected change, and refresh the room objects.
C1CabOpenNow:

C1Loc1_0C:
    ; Set text name 0.
    db $1e, $d8
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; Refresh room objects.
    db $27
    ; End script.
    db $ff

; Show the original already-open cabinet reply.
C1CabinetOpen:

C1Loc1_0D:
    ; Set text name 0.
    db $1e, $d8
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the mailbox and keep the original selected change.
OpenC1Mailbox:

C1Sc1_0A:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1MailboxOpen
    ; Set text name 0.
    db $1e, $d9
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the original already-open mailbox reply.
C1MailboxOpen:

C1Loc1_0E:
    ; Set text name 0.
    db $1e, $d9
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the first table and keep the original selected change.
OpenC1Table1:

C1Sc1_0B:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Table1Open
    ; Set text name 0.
    db $1e, $da
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the original already-open first table reply.
C1Table1Open:

C1Loc1_0F:
    ; Set text name 0.
    db $1e, $da
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the second table and keep the original selected change.
OpenC1Table2:

C1Sc1_0C:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Table2Open
    ; Set text name 0.
    db $1e, $db
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the original already-open second table reply.
C1Table2Open:

C1Loc1_10:
    ; Set text name 0.
    db $1e, $db
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the lid, update its original visible state, and retain the inspection reply.
OpenC1Lid:

C1Sc1_0D:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1LidOpen
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $c5
    ; Show message 2.
    db $02 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]

Call_006_4b60:
    db $00
    ; Set state and refresh.
    db $33, C1StateWomenStallLidOpen
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; Show message 0.
    db $00, $37 ; Message Text0CMessage37:  YOU ARE RELIEVED / THAT YOU FIND / NOTHING FLOATING / INSIDE.[END]
    ; End script.
    db $ff

; Show the original already-open lid reply.
C1LidOpen:

C1Loc1_11:
    ; Set text name 0.
    db $1e, $c5
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Close the pocket and remove the original selected change.
CloseC1Pocket:

C1Sc1_0E:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PocketShut
    ; Set text name 0.
    db $1e, $c4
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the original already-closed pocket reply.
C1PocketShut:

C1Loc1_12:
    ; Set text name 0.
    db $1e, $c4
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the first desk and remove the original selected change.
CloseC1Desk1:

C1Sc1_0F:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Desk1Shut
    ; Set text name 0.
    db $1e, $d1
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the original already-closed first desk reply.
C1Desk1Shut:

C1Loc1_13:
    ; Set text name 0.
    db $1e, $d1
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the wall safe and remove the original selected change. Clear its original visible state.
CloseC1WallSafe:

C1Sc1_10:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1WallSafeShut
    ; Set text name 0.
    db $1e, $d2
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear state and refresh.
    db $34, C1StateCorpseOfficeWallSafeOpen
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the original already-closed wall safe reply.
C1WallSafeShut:

C1Loc1_14:
    ; Set text name 0.
    db $1e, $d2
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the second desk and remove the original selected change.
CloseC1Desk2:

C1Sc1_11:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Desk2Shut
    ; Set text name 0.
    db $1e, $d3
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the original already-closed second desk reply.
C1Desk2Shut:

C1Loc1_15:
    ; Set text name 0.
    db $1e, $d3
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the dashboard and remove the original selected change. Clear its original visible state.
CloseC1Dash:

C1Sc1_12:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DashShut
    ; Set text name 0.
    db $1e, $d4
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear state and refresh.
    db $34, C1StateLuxuryCarDashboardOpen
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the original already-closed dashboard reply.
C1DashShut:

C1Loc1_16:
    ; Set text name 0.
    db $1e, $d4
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the third desk and remove the original selected change.
CloseC1Desk3:

C1Sc1_13:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Desk3Shut
    ; Set text name 0.
    db $1e, $d5
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the original already-closed third desk reply.
C1Desk3Shut:

C1Loc1_17:
    ; Set text name 0.
    db $1e, $d5
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the cabinet and remove the original selected change. Refresh the room objects.
CloseC1Cabinet:

C1Sc1_14:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabinetShut
    ; Set text name 0.
    db $1e, $d6
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; Refresh room objects.
    db $27
    ; End script.
    db $ff

; Show the original already-closed cabinet reply.
C1CabinetShut:

C1Loc1_18:
    ; Set text name 0.
    db $1e, $d6
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the fourth desk and remove the original selected change.
CloseC1Desk4:

C1Sc1_15:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Desk4Shut
    ; Set text name 0.
    db $1e, $d7
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the original already-closed fourth desk reply.
C1Desk4Shut:

C1Loc1_19:
    ; Set text name 0.
    db $1e, $d7
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the mailbox and remove the original selected change.
CloseC1Mailbox:

C1Sc1_16:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MailboxShut
    ; Set text name 0.
    db $1e, $d9
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the original already-closed mailbox reply.
C1MailboxShut:

C1Loc1_1A:
    ; Set text name 0.
    db $1e, $d9
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the first table and remove the original selected change.
CloseC1Table1:

C1Sc1_17:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Table1Shut
    ; Set text name 0.
    db $1e, $da
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the original already-closed first table reply.
C1Table1Shut:

C1Loc1_1B:
    ; Set text name 0.
    db $1e, $da
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the second table and remove the original selected change.
CloseC1Table2:

C1Sc1_18:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Table2Shut
    ; Set text name 0.
    db $1e, $db
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the original already-closed second table reply.
C1Table2Shut:

C1Loc1_1C:
    ; Set text name 0.
    db $1e, $db
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the lid and remove the original selected change. Retain the text hold, visible state update, and extra reply.
CloseC1Lid:

C1Sc1_19:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1LidShut
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $c5
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear state and refresh.
    db $34, C1StateWomenStallLidOpen
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; Show message 0.
    db $00, $38 ; Message Text0CMessage38: THE VAGUE / RECOLLECTION OF / YOUR MOTHER / TELLING YOU TO PUTTHE SEAT DOWN / COMES T...
    ; End script.
    db $ff

; Show the original already-closed lid reply.
C1LidShut:

C1Loc1_1D:
    ; Set text name 0.
    db $1e, $c5
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Show the puzzled reply shared by several container actions.
C1ContainerPuzzled:

C1Sc1_1A:
    ; Show message 0.
    db $00, $13 ; Message Text0CMessage13: WHAT DO YOU THINK / YOU ARE DOING?[END]
    ; End script.
    db $ff

; Describe the bloodstained desk; flag $61 selects the second desk description.
LookC1Desk1:

C1Sc1_1B:
    ; Test object flag.
    db $16, $61
    ; Branch if result bit 0 is set.
    db $04
    dw LookC1Desk2
    ; Show message 2.
    db $02, $84 ; Message Text0DMessage04: A POOL OF BLOOD / LIES DRYING ON THEDESK TOP.[PAGE] / THE DRAWER ON THE / OTHER SIDE ...
    ; End script.
    db $ff

; Show the refusal shared by several container actions.
C1ContainerRefuse:

C1Sc1_1C:
    ; Show message 0.
    db $00, $14 ; Message Text0CMessage14: YOU CAN'T DO THAT.[END]
    ; End script.
    db $ff

; Describe the wall safe, choosing the alternate text when flag $1c is set.
LookC1WallSafe:

C1Sc1_1D:
    ; Test object flag.
    db $16, C1WallSafeUnlocked
    ; Branch if result bit 0 is set.
    db $04
    dw C1WallSafeView2
    ; Show message 2.
    db $02, $85 ; Message Text0DMessage05: IT'S A WALL SAFE. / TOO BAD YOU NEVER / SHOWED MUCH / APTITUDE FOR SAFE / ROBBING.[END]
    ; End script.
    db $ff

; Show the alternate wall safe description: new in US, open in JP.
C1WallSafeView2:

C1Loc1_02:
    ; Show message 2.
    db $02, $94 ; Message Text0DMessage14: IT'S A RATHER NEW / WALL SAFE.[END]
    ; End script.
    db $ff

; Describe the second desk and its drawer.
LookC1Desk2:

C1Sc1_1E:
    ; Show message 2.
    db $02, $99 ; Message Text0DMessage19: IT'S AN EVERYDAY, / RUN-OF-THE-MILL / DESK.[PAGE] / THE DRAWER APPEARSTO HAVE BEEN / ...
    ; End script.
    db $ff

; Describe the dashboard, reusing the open reply when its attribute bit is set.
LookC1Dash:

C1Sc1_1F:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1DashOpen
    ; Show message 1.
    db $01, $06 ; Message Text0EMessage06: YOU WONDER WHY / IT'S CALLED A / GLOVE COMPARTMENT / WHEN THERE USUALLYAREN'T ANY GLO...
    ; End script.
    db $ff

; Describe the third desk, used as a nightstand.
LookC1Desk3:

C1Sc1_20:
    ; Show message 1.
    db $01, $68 ; Message Text0EMessage68: IT'S A SCUFFED / NIGHTSTAND / WITH A DRAWER / IN IT.[END]
    ; End script.
    db $ff

; Describe the locked file cabinet; flag $1f selects its short description.
LookC1LockedCab:

C1Sc1_21:
    ; Test object flag.
    db $16, C1CabinetUnlocked
    ; Branch if result bit 0 is set.
    db $04
    dw C1LockedCabView2
    ; Show message 1.
    db $01, $7c ; Message Text0EMessage7C: A COMBINATION LOCKKEEPS THIS FILE / CABINET LOCKED.[PAGE] / PERHAPS TO KEEP / OUT WOU...
    ; End script.
    db $ff

; Show the short description of the locked file cabinet.
C1LockedCabView2:

C1Loc1_03:
    ; Show message 2.
    db $02, $3b ; Message Text11Message3B: IT'S A BIG BLACK / CABINET.[END]
    ; End script.
    db $ff

; Show the container action reply that says this cannot be done here in US.
C1ContainerNoHere:

C1Sc1_22:
    ; Show message 2.
    db $02, $37 ; Message Text11Message37: YOU CAN'T DO THAT / HERE.[END]
    ; End script.
    db $ff

; Describe the fourth desk and its large drawer.
LookC1Desk4:

C1Sc1_23:
    ; Show message 1.
    db $01, $8d ; Message Text0FMessage0D: A TYPICAL DESK: / FOUR LEGS AND A / DRAWER.[END]
    ; End script.
    db $ff

; Describe the file cabinet; flag $1e selects its short description.
LookC1Cabinet:

C1Sc1_24:
    ; Test object flag.
    db $16, C1CabinetOpenedOnce
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabinetView2
    ; Show message 1.
    db $01, $8f ; Message Text0FMessage0F: THE FILE CABINET / LOOKS OLD AND / WORN. A MAN'S / FILES SAYS A LOT / ABOUT HIMSELF![...
    ; End script.
    db $ff

; Show the short description of the file cabinet.
C1CabinetView2:

C1Loc1_04:
    ; Show message 2.
    db $02, $3b ; Message Text11Message3B: IT'S A BIG BLACK / CABINET.[END]
    ; End script.
    db $ff

; Describe the mailbox marked 626.
LookC1Mailbox:

C1Sc1_25:
    ; Show message 1.
    db $01, $9b ; Message Text0FMessage1B: IT'S A MAIL BOX. / THE NUMBER 626 IS / NEATLY PAINTED ON / IT. [END]
    ; End script.
    db $ff

; Show the description shared by the two tables.
LookC1Tables:

C1Sc1_26:
    ; Show message 1.
    db $01, $c0 ; Message Text10Message00: IT'S A NIGHTSTAND / WITH DRAWERS.[END]
    ; End script.
    db $ff

; Describe the cracked toilet associated with the lid.
LookC1Lid:

C1Sc1_27:
    ; Show message 0.
    db $00, $36 ; Message Text0CMessage36: THE PORCELAIN OF / THE TOILET SEEMS / TO HAVE BEEN / RECENTLY CRACKED.[PAGE] / WATER ...
    ; End script.
    db $ff
