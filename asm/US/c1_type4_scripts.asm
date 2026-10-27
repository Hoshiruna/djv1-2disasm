
; Describe the coat; flag $18 clear also shows the pocket hint.
LookC1Coat:
; Opcode starts are annotated; scalar operands and inline item-match rows remain data.

C1Sc4_00:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 0.
    db $00, $01 ; Message Text0CMessage01: IT'S A LIGHT BROWNTRENCH COAT THAT / MATCHES YOUR / TROUSERS.[END]
    ; Test object flag.
    db $16, C1CoatPocketOpenedOnce
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CoatPocketHint
    ; Resume text.
    db $45
    ; End script.
    db $ff

; Show the hint that something is in the coat pocket.
C1CoatPocketHint:

C1Loc4_00:
    ; Show message 0.
    db $00, $02 ; Message Text0CMessage02: YOU FEEL SOMETHINGIN THE POCKET OF / THE COAT.[END]
    ; End script.
    db $ff

; Open the coat pocket and keep its selected change. Set flag $18 and retain text parameter $07.
OpenC1CoatPocket:

C1Sc4_01:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1CoatPocketOpen
    ; Set text name 0.
    db $1e, $c3
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Set object flag.
    db $17, C1CoatPocketOpenedOnce
    ; Set text name 1.
    db $38, $07
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the coat pocket.
C1CoatPocketOpen:

C1Loc4_01:
    ; Set text name 0.
    db $1e, $c3
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the wallet and keep its selected change.
OpenC1Wallet:

C1Sc4_02:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1WalletOpen
    ; Set text name 0.
    db $1e, $41
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the wallet.
C1WalletOpen:

C1Loc4_02:
    ; Set text name 0.
    db $1e, $41
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the first gun and keep its selected change. Retain text parameter $03.
OpenC1Gun1:

C1Sc4_03:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Gun1Open
    ; Set text name 0.
    db $1e, $42
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Set text name 1.
    db $38, $03
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the first gun.
C1Gun1Open:

C1Loc4_03:
    ; Set text name 0.
    db $1e, $42
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the folder and keep its selected change.
OpenC1Folder:

C1Sc4_04:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1FolderOpen
    ; Set text name 0.
    db $1e, $43
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the folder.
C1FolderOpen:

C1Loc4_04:
    ; Set text name 0.
    db $1e, $43
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the box and keep its selected change.
OpenC1Box:

C1Sc4_05:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1BoxOpen
    ; Set text name 0.
    db $1e, $44
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the box.
C1BoxOpen:

C1Loc4_05:
    ; Set text name 0.
    db $1e, $44
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the first envelope and keep its selected change.
OpenC1Envelope1:

C1Sc4_06:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Envelope1Open
    ; Set text name 0.
    db $1e, $45
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the first envelope.
C1Envelope1Open:

C1Loc4_06:
jr_006_6694:
    ; Set text name 0.
    db $1e, $45
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the handbag and keep its selected change.
OpenC1Handbag:

C1Sc4_07:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1HandbagOpen
    ; Set text name 0.
    db $1e, $46
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the handbag.
C1HandbagOpen:

C1Loc4_07:
    ; Set text name 0.
    db $1e, $46
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the second gun and keep its selected change. Retain text parameter $00.
OpenC1Gun2:

C1Sc4_08:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Gun2Open
    ; Set text name 0.
    db $1e, $47
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Set text name 1.
    db $38, $00
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the second gun.
C1Gun2Open:

C1Loc4_08:
    ; Set text name 0.
    db $1e, $47
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the diary and keep its selected change. Flag $8f clear selects the bookmarked-page reply.
OpenC1Diary:

C1Sc4_09:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1DiaryOpen
    ; Test object flag.
    db $16, C1BookmarkTaken
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DiaryBookmarkOpen
    ; Set text name 0.
    db $1e, $48
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the diary.
C1DiaryOpen:

C1Loc4_09:
    ; Set text name 0.
    db $1e, $48
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the diary to its bookmarked page and keep its selected change.
C1DiaryBookmarkOpen:

C1Loc4_0A:
    ; Show message 1.
    db $01, $72 ; Message Text0EMessage72: YOU OPEN THE / DIARY TO THE / BOOKMARKED PAGE.[END]
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Open the ammunition case and keep its selected change. Retain text parameter $06.
OpenC1AmmoCase:

C1Sc4_0A:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1AmmoCaseOpen
    ; Set text name 0.
    db $1e, $49
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Set text name 1.
    db $38, $06
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the ammunition case.
C1AmmoCaseOpen:

C1Loc4_0B:
    ; Set text name 0.
    db $1e, $49
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the second envelope and keep its selected change.
OpenC1Envelope2:

C1Sc4_0B:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Envelope2Open
    ; Set text name 0.
    db $1e, $4a
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the second envelope.
C1Envelope2Open:

C1Loc4_0C:
    ; Set text name 0.
    db $1e, $4a
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the first bowl and keep its selected change.
OpenC1Bowl1:

C1Sc4_0C:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Bowl1Open
    ; Set text name 0.
    db $1e, $4b
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the first bowl.
C1Bowl1Open:

C1Loc4_0D:
    ; Set text name 0.
    db $1e, $4b
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the second bowl and keep its selected change.
OpenC1Bowl2:

C1Sc4_0D:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Bowl2Open
    ; Set text name 0.
    db $1e, $4c
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the second bowl.
C1Bowl2Open:

C1Loc4_0E:
    ; Set text name 0.
    db $1e, $4c
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the third envelope and keep its selected change.
OpenC1Envelope3:

C1Sc4_0E:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Envelope3Open
    ; Set text name 0.
    db $1e, $4d
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the third envelope.
C1Envelope3Open:

C1Loc4_0F:
    ; Set text name 0.
    db $1e, $4d
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the candy box and keep its selected change.
OpenC1CandyBox:

C1Sc4_0F:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1CandyBoxOpen
    ; Set text name 0.
    db $1e, $4e
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the candy box.
C1CandyBoxOpen:

C1Loc4_10:
    ; Set text name 0.
    db $1e, $4e
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the case and keep its selected change.
OpenC1Case:

C1Sc4_10:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1CaseOpen
    ; Set text name 0.
    db $1e, $4f
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the case.
C1CaseOpen:

C1Loc4_11:
    ; Set text name 0.
    db $1e, $4f
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the third bowl and keep its selected change.
OpenC1Bowl3:

C1Sc4_11:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Bowl3Open
    ; Set text name 0.
    db $1e, $50
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the third bowl.
C1Bowl3Open:

C1Loc4_12:
    ; Set text name 0.
    db $1e, $50
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Open the third gun and keep its selected change. Retain text parameter $06.
OpenC1Gun3:

C1Sc4_12:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Gun3Open
    ; Set text name 0.
    db $1e, $51
    ; Show message 2.
    db $02, $00 ; Message Text11Message00: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 2.
    db $11
    ; Set text name 1.
    db $38, $06
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

; Show the already-open reply for the third gun.
C1Gun3Open:

C1Loc4_13:
    ; Set text name 0.
    db $1e, $51
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Close the coat pocket, clear its open attribute, and remove its selected change.
CloseC1CoatPocket:

C1Sc4_13:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CoatPocketShut
    ; Set text name 0.
    db $1e, $c3
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the coat pocket.
C1CoatPocketShut:

C1Loc4_14:
    ; Set text name 0.
    db $1e, $c3
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the wallet, clear its open attribute, and remove its selected change.
CloseC1Wallet:

C1Sc4_14:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1WalletShut
    ; Set text name 0.
    db $1e, $41
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the wallet.
C1WalletShut:

C1Loc4_15:
    ; Set text name 0.
    db $1e, $41
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the first gun, clear its open attribute, and remove its selected change.
CloseC1Gun1:

C1Sc4_15:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Gun1Shut
    ; Set text name 0.
    db $1e, $42
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the first gun.
C1Gun1Shut:

C1Loc4_16:
    ; Set text name 0.
    db $1e, $42
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the folder, clear its open attribute, and remove its selected change.
CloseC1Folder:

C1Sc4_16:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1FolderShut
    ; Set text name 0.
    db $1e, $43
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the folder.
C1FolderShut:

C1Loc4_17:
    ; Set text name 0.
    db $1e, $43
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the box, clear its open attribute, and remove its selected change.
CloseC1Box:

C1Sc4_17:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BoxShut
    ; Set text name 0.
    db $1e, $44
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the box.
C1BoxShut:

C1Loc4_18:
    ; Set text name 0.
    db $1e, $44
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the first envelope, clear its open attribute, and remove its selected change.
CloseC1Envelope1:

C1Sc4_18:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Envelope1Shut
    ; Set text name 0.
    db $1e, $45
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the first envelope.
C1Envelope1Shut:

C1Loc4_19:
    ; Set text name 0.
    db $1e, $45
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the handbag, clear its open attribute, and remove its selected change.
CloseC1Handbag:

C1Sc4_19:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1HandbagShut
    ; Set text name 0.
    db $1e, $46
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the handbag.
C1HandbagShut:

C1Loc4_1A:
    ; Set text name 0.
    db $1e, $46
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the second gun, clear its open attribute, and remove its selected change.
CloseC1Gun2:

C1Sc4_1A:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Gun2Shut
    ; Set text name 0.
    db $1e, $47
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the second gun.
C1Gun2Shut:

C1Loc4_1B:
    ; Set text name 0.
    db $1e, $47
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the diary, clear its open attribute, and remove its selected change.
CloseC1Diary:

C1Sc4_1B:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DiaryShut
    ; Set text name 0.
    db $1e, $48
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the diary.
C1DiaryShut:

C1Loc4_1C:
    ; Set text name 0.
    db $1e, $48
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the ammunition case, clear its open attribute, and remove its selected change.
CloseC1AmmoCase:

C1Sc4_1C:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1AmmoCaseShut
    ; Set text name 0.
    db $1e, $49
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the ammunition case.
C1AmmoCaseShut:

C1Loc4_1D:
    ; Set text name 0.
    db $1e, $49
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the second envelope, clear its open attribute, and remove its selected change.
CloseC1Envelope2:

C1Sc4_1D:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Envelope2Shut
    ; Set text name 0.
    db $1e, $4a
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the second envelope.
C1Envelope2Shut:

C1Loc4_1E:
    ; Set text name 0.
    db $1e, $4a
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the first bowl, clear its open attribute, and remove its selected change.
CloseC1Bowl1:

C1Sc4_1E:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Bowl1Shut
    ; Set text name 0.
    db $1e, $4b
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the first bowl.
C1Bowl1Shut:

C1Loc4_1F:
    ; Set text name 0.
    db $1e, $4b
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the second bowl, clear its open attribute, and remove its selected change.
CloseC1Bowl2:

C1Sc4_1F:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Bowl2Shut
    ; Set text name 0.
    db $1e, $4c
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the second bowl.
C1Bowl2Shut:

C1Loc4_20:
    ; Set text name 0.
    db $1e, $4c
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the third envelope, clear its open attribute, and remove its selected change.
CloseC1Envelope3:

C1Sc4_20:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Envelope3Shut
    ; Set text name 0.
    db $1e, $4d
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the third envelope.
C1Envelope3Shut:

C1Loc4_21:
    ; Set text name 0.
    db $1e, $4d
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the candy box, clear its open attribute, and remove its selected change.
CloseC1CandyBox:

C1Sc4_21:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CandyBoxShut
    ; Set text name 0.
    db $1e, $4e
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the candy box.
C1CandyBoxShut:

C1Loc4_22:
    ; Set text name 0.
    db $1e, $4e
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the case, clear its open attribute, and remove its selected change.
CloseC1Case:

C1Sc4_22:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CaseShut
    ; Set text name 0.
    db $1e, $4f
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the case.
C1CaseShut:

C1Loc4_23:
    ; Set text name 0.
    db $1e, $4f
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the third bowl, clear its open attribute, and remove its selected change.
CloseC1Bowl3:

C1Sc4_23:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Bowl3Shut
    ; Set text name 0.
    db $1e, $50
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the third bowl.
C1Bowl3Shut:

C1Loc4_24:
    ; Set text name 0.
    db $1e, $50
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Close the third gun, clear its open attribute, and remove its selected change.
CloseC1Gun3:

C1Sc4_24:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Gun3Shut
    ; Set text name 0.
    db $1e, $51
    ; Show message 2.
    db $02, $02 ; Message Text11Message02: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

; Show the already-closed reply for the third gun.
C1Gun3Shut:

C1Loc4_25:
    ; Set text name 0.
    db $1e, $51
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Take the coat; flags $19/$1d control the first gun hint before resuming text.
TakeC1Coat:

C1Sc4_25:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $40
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; Test object flag.
    db $16, $19
    ; Branch if result bit 0 is set.
    db $04
    dw C1CoatTakeResume
    ; Test object flag.
    db $16, C1CoatTakeCommentSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1CoatTakeResume
    ; Show message 0.
    db $00, $17 ; Message Text0CMessage17: THERE'S NOTHING / MORE HANDY THAN / A .38 AT YOUR / SIDE![END]
    ; Set object flag.
    db $17, C1CoatTakeCommentSeen

; End the container pickup; inventory-full paths return here.
C1ContainerTakeEnd:

C1Loc4_30:
    ; End script.
    db $ff

; Resume text after the coat pickup and its optional hint.
C1CoatTakeResume:

C1Loc4_31:
    ; Resume text.
    db $45
    ; End script.
    db $ff

; Require the coat to be taken, then choose where to leave it.
PlaceC1Coat:

C1Sc4_26:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNeedsTaken
    ; Show message 2.
    db $02, $55 ; Message Text11Message55: YOU WONDER WHERE / YOU SHOULD LEAVE / THIS?[END]
    ; Choose alternate target; selected input runs the following script.
    db $28

; Check item flags $00/$01 and wallet property $01 before the shared wallet placement checks.
C1CoatPlaceTarget:

C1Loc4_32:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceEnd
    ; Test item flag.
    db $52, C1ItemCoins
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Test item flag.
    db $52, C1ItemLighter
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Test property 4 bit 0.
    db $5d, $01
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution

; Require item flags $05/$06/$07 before finishing the wallet or coat placement.
C1WalletPlaceChecks:

C1Loc4_9A:
    ; Test item flag.
    db $52, C1ItemKey1
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Test item flag.
    db $52, C1ItemAccessCard
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Test item flag.
    db $52, C1ItemTwentyDollarBill
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Finish Case I item placement.
    db $5b

; End the container placement script.
C1ContainerPlaceEnd:

C1Loc4_9B:
    ; End script.
    db $ff

; Explain that a container must be taken before it can be left elsewhere.
C1ContainerPlaceNeedsTaken:

C1Loc4_26:
    ; Show message 2.
    db $02, $56 ; Message Text11Message56: YOU CAN'T LEAVE / WHAT YOU DIDN'T / TAKE![END]
    ; End script.
    db $ff

; Show the reply for an unsuitable container placement target.
C1ContainerPlaceNoHere:

C1Loc4_33:
    ; Show message 2.
    db $02, $57 ; Message Text11Message57: MAYBE YOU CAN'T / LEAVE IT HERE.[END]
    ; End script.
    db $ff

; Warn that leaving this container may cause trouble later.
C1ContainerPlaceCaution:

C1Loc4_9C:
    ; Show message 2.
    db $02, $7d ; Message Text11Message7D: HOLD ON![PAGE] / IF YOU DO THAT, / IT MAY CAUSE YOU / TROUBLE LATER.[END]
    ; End script.
    db $ff

; Require the wallet to be taken, then choose where to leave it.
PlaceC1Wallet:

C1Sc4_27:
    ; Test selected attribute bit 0.
    db $0a

jr_006_68e3:
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNeedsTaken
    ; Show message 2.
    db $02, $55 ; Message Text11Message55: YOU WONDER WHERE / YOU SHOULD LEAVE / THIS?[END]
    ; Choose alternate target; selected input runs the following script.
    db $28

; Check the placement target, then run the shared wallet requirements.
C1WalletPlaceTarget:

C1Loc4_34:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceEnd
    ; Jump to script.
    db $1c
    dw C1WalletPlaceChecks

; Show the shared container action refusal.
C1ContainerActionNoHere:

C1Sc4_28:
    ; Show message 2.
    db $02, $37 ; Message Text11Message37: YOU CAN'T DO THAT / HERE.[END]
    ; End script.
    db $ff

; Show the puzzled reply when the container pickup is refused.
C1ContainerTakeRefuse:

C1Loc4_27:
    ; Show message 0.
    db $00, $13 ; Message Text0CMessage13: WHAT DO YOU THINK / YOU ARE DOING?[END]
    ; End script.
    db $ff

; Describe the wallet using the regional text.
LookC1Wallet:

C1Sc4_29:
    ; Show message 0.
    db $00, $0d ; Message Text0CMessage0D: IT'S A VERY WORN / LEATHER WALLET.[PAGE] / YOU'D HATE TO BE / THE COW THAT IT / CAME ...
    ; End script.
    db $ff

; Take the first gun after checking its taken attribute and inventory capacity.
TakeC1Gun1:

C1Sc4_2A:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $42
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the wallet after checking its taken attribute and inventory capacity.
TakeC1Wallet:

C1Sc4_2B:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $41
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the folder after checking its taken attribute and inventory capacity.
TakeC1Folder:

C1Sc4_2C:
jr_006_691b:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $43
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the box after checking its taken attribute and inventory capacity.
TakeC1Box:

C1Sc4_2D:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $44
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the first envelope after checking its taken attribute and inventory capacity.
TakeC1Envelope1:

C1Sc4_2E:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $45
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the handbag after checking its taken attribute and inventory capacity.
TakeC1Handbag:

C1Sc4_2F:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $46
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the second gun after checking its taken attribute and inventory capacity.
TakeC1Gun2:

C1Sc4_30:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $47
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the diary after checking its taken attribute and inventory capacity.
TakeC1Diary:

C1Sc4_31:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $48
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the ammunition case after checking its taken attribute and inventory capacity.
TakeC1AmmoCase:

C1Sc4_32:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $49
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the second envelope after checking its taken attribute and inventory capacity.
TakeC1Envelope2:

C1Sc4_33:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $4a
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the first bowl after checking its taken attribute and inventory capacity.
TakeC1Bowl1:

C1Sc4_34:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $4b
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the second bowl after checking its taken attribute and inventory capacity.
TakeC1Bowl2:

C1Sc4_35:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $4c
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the third envelope after checking its taken attribute and inventory capacity.
TakeC1Envelope3:

C1Sc4_36:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $4d
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the candy box after checking its taken attribute and inventory capacity.
TakeC1CandyBox:

C1Sc4_37:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $4e
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the case after checking its taken attribute and inventory capacity.
TakeC1Case:

C1Sc4_38:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $4f
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take the third bowl after checking its taken attribute and inventory capacity.
TakeC1Bowl3:

C1Sc4_39:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Set text name 0.
    db $1e, $50
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Take or purchase gun three; flag $af and bill items $07/$54 select the path.
TakeC1Gun3:

C1Sc4_3A:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeRefuse
    ; Test object flag.
    db $16, C1Gun3Paid
    ; Branch if result bit 0 is set.
    db $04
    dw C1Gun3PaidPickup
    ; Test item flag.
    db $52, C1ItemTwentyDollarBill
    ; Branch if result bit 0 is set.
    db $04
    dw C1BuyGun3Bill07
    ; Test item flag.
    db $52, C1ItemTwentyDollarBillAlt
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Gun3PriceReply
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $51
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; Set text name 0.
    db $1e, $c1
    ; Show message 2.
    db $02, $1a ; Message Text11Message1A: "THANKS FOR /  THE [OBJECT_WRAM:37C5]."[END]
    ; Set item state.
    db $53, C1ItemTwentyDollarBillAlt
    ; Drop list value.
    db $55, C1ItemTwentyDollarBillAlt
    ; Set first item type and ID.
    db $5c, $03, C1ItemTwentyDollarBillAlt
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, C1Gun3Paid
    ; End script.
    db $ff

; Check inventory capacity, purchase gun three with bill $07, and set flag $af.
C1BuyGun3Bill07:

C1Loc4_35:
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerTakeEnd
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $51
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set text name 0.
    db $1e, $c1
    ; Show message 2.
    db $02, $1a ; Message Text11Message1A: "THANKS FOR /  THE [OBJECT_WRAM:37C5]."[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; Set item state.
    db $53, C1ItemTwentyDollarBill
    ; Drop list value.
    db $55, C1ItemTwentyDollarBill
    ; Set first item type and ID.
    db $5c, $03, C1ItemTwentyDollarBill
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, C1Gun3Paid
    ; End script.
    db $ff

; Show the clerk's twenty-dollar price when neither bill item is available.
C1Gun3PriceReply:

C1Loc4_36:
    ; Show message 1.
    db $01, $1b ; Message Text0EMessage1B: THE CLERK SAYS IN / A GRUFF VOICE, / "IT'LL COST YA / TWENTY BUCKS, / PAL!"[END]
    ; End script.
    db $ff

; Take gun three after the paid flag is set; this original tail does not check inventory capacity.
C1Gun3PaidPickup:

C1Loc4_28:
    ; Set text name 0.
    db $1e, $51
    ; Show message 2.
    db $02, $04 ; Message Text11Message04: YOU TAKE THE  / [OBJECT_WRAM:37C5].[END]
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

; Describe the first gun, the .38 Special.
LookC1Gun1:

C1Sc4_3B:
    ; Show message 0.
    db $00, $08 ; Message Text0CMessage08: THERE'S NOTHING / PARTICULARLY / SPECIAL ABOUT THIS.38 SPECIAL.[END]
    ; End script.
    db $ff

; Require the first gun to be taken, then choose where to leave it.
PlaceC1Gun1:

C1Sc4_3C:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNeedsTaken
    ; Show message 2.
    db $02, $55 ; Message Text11Message55: YOU WONDER WHERE / YOU SHOULD LEAVE / THIS?[END]
    ; Choose alternate target; selected input runs the following script.
    db $28

; After placement checks, require flags $60/$1f/$16 before finishing and setting $a1.
C1Gun1PlaceTarget:

C1Loc4_37:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceEnd
    ; Test object flag.
    db $16, C1BungalowUnlocked
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Test object flag.
    db $16, C1CabinetUnlocked
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Test object flag.
    db $16, C1ShadowShot
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Finish Case I item placement.
    db $5b
    ; Set object flag.
    db $17, C1Gun1Placed
    ; End script.
    db $ff

; Require gun one to be taken and closed before choosing its target.
UseC1Gun1:

C1Sc4_3D:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunNeedsTaken
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Gun1TargetPrompt
    ; Show message 1.
    db $01, $60 ; Message Text0EMessage60: YOU CAN'T USE IT / WHEN IT'S OPEN.[END]
    ; End script.
    db $ff

; Ask which target to use gun one on.
C1Gun1TargetPrompt:

C1Loc4_29:
    ; Show message 1.
    db $01, $b9 ; Message Text0FMessage39: WHAT WOULD YOU / LIKE TO USE THIS / ON?[END]
    ; Choose alternate target; selected input runs the following script.
    db $28

; Dispatch gun one to its target-specific ammunition and outcome handlers.
MatchC1Gun1:

C1Loc4_38:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, C1TargetStartWashroomMirror
    dw C1Gun1Mirror1
    db $00, C1TargetWomenWashroomMirror
    dw C1Gun1Mirror2

jr_006_6a7c:
    db $00, C1TargetBarStreetWindow
    dw C1Gun1StreetWin
    db $00, C1TargetGunShopWindow
    dw C1Gun1GunShopWin
    db $00, C1TargetArmedWoman
    dw C1Gun1Lady
    db $00, C1TargetFallenWoman
    dw C1Gun1Lady
    db $00, C1TargetBum
    dw C1Gun1Bum
    db $00, C1TargetAceOfficeWallMarks
    dw C1Gun1NoChange
    db $00, C1TargetMrsSternwood
    dw C1Gun1Lady
    db $00, C1TargetGunShopClerk
    dw C1Gun1Clerk
    db $00, C1TargetBlueCabDriver
    dw C1Gun1Cabby
    db $00, C1TargetYellowCabDriver
    dw C1Gun1Cabby
    db $00, C1TargetPenthouseRoundMirror
    dw C1Gun1RoundMirror
    db $00

jr_006_6aa9:
    db C1TargetMansionButler
    dw C1Gun1Butler
    db $00, C1TargetMrSternwood
    dw C1Gun1Sleepers
    db $00, C1TargetGuestBedroomMirror
    dw C1Gun1WallMirror
    db $00, C1TargetSleepingWoman
    dw C1Gun1Sleepers
    db $00, C1TargetAlligator
    dw C1Gun1Alligator
    db $00, C1TargetAceOfficeDoorShadow
    dw C1Gun1Shadow
    db $01, C1ContainerCorpseOfficeWallSafe
    dw C1Gun1NoChange
    db $01, C1ContainerDoctorLockedCabinet
    dw C1Gun1Cabinet
    db $05, C1DoorIdJoeFrontDoor
    dw C1Gun1NoChange
    db $05, C1DoorIdCorpseOffice
    dw C1Gun1NoChange
    db $05, C1DoorIdLuxuryCar
    dw C1Gun1NoChange
    db $05, C1DoorIdBungalow
    dw C1Gun1Door31
    db $05, C1DoorIdDoctorOffice
    dw C1Gun1NoChange
    db $05, C1DoorIdAceOffice
    dw C1Gun1Shadow
    db $05, C1DoorIdMansionFrontDoor
    dw C1Gun1Door49
    db $00, C1TargetShootingMuggerVariant1
    dw C1GunmanShootsFirst
    db $00, C1TargetShootingMuggerVariant2
    dw C1GunmanShootsFirst
    db $00, C1TargetShootingMuggerVariant3
    dw C1GunmanShootsFirst
    db $00, C1TargetShootingMuggerVariant4
    dw C1GunmanShootsFirst
    db $00, C1TargetRobbingMugger
    dw C1ShootMuggerEnd
    db $05, C1DoorIdCarTrunk
    dw C1Gun1Street
    db $00, C1TargetSelf
    dw C1Gun1Self
    db $fe, $fe
    dw C1ContainerActionNoHere

; Show Ace's warning, then consume gun one's round or report an empty gun.
C1Gun1Self:

C1Loc4_39:
    ; Show message 1.
    db $01, $e8 ; Message Text10Message28: ...GOOD JOB.[PAGE] / WHAT A GREAT WAY / TO GO OUT WITH / A BANG![PAGE] / AND TO THINK...
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Play the self-shot effects, show the death text, and end the action.
C1SelfShotEnd:

C1Loc4_3A:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text11Message62: TOO BAD ACE! FROM / THE BEGINNING THE / ODDS WERE STACKED / AGAINST YOU![PAGE] / IT S...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Show Ace's warning, then consume gun two's round or report an empty gun.
C1Gun2Self:

C1Loc4_3B:
    ; Show message 1.
    db $01, $e8 ; Message Text10Message28: ...GOOD JOB.[PAGE] / WHAT A GREAT WAY / TO GO OUT WITH / A BANG![PAGE] / AND TO THINK...
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1SelfShotEnd

; Show Ace's warning, then consume gun three's round or report an empty gun.
C1Gun3Self:

C1Loc4_3C:
    ; Show message 1.
    db $01, $e8 ; Message Text10Message28: ...GOOD JOB.[PAGE] / WHAT A GREAT WAY / TO GO OUT WITH / A BANG![PAGE] / AND TO THINK...
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1SelfShotEnd

; Require flag $17 before consuming gun one's round to shoot mirror one.
C1Gun1Mirror1:

C1Loc4_3D:
    ; Test object flag.
    db $16, C1Mirror1Seen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunSaveTarget
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Play the shot effect, set flag $00, refresh objects, and show the result.
C1ShootMirror1:

C1Loc4_3E:
    ; Run scene effect.
    db $46, C1FxIdGunshot
    ; Set object flag.
    db $17, C1Mirror1Broken
    ; Refresh room objects.
    db $27
    ; Show message 0.
    db $00, $22 ; Message Text0CMessage22: YOU JUST BLEW AWAYTHE MIRROR. IT / SHATTERS SENDING / SMALL SHARDS EVERYWHICH WAY![END]
    ; End script.
    db $ff

; Report the trigger click and empty gun.
C1GunEmpty:

C1Loc4_3F:
    ; Show message 1.
    db $01, $64 ; Message Text0EMessage64: CLICK![PAGE] / YOU PULL THE / TRIGGER.[PAGE] / IT SEEMS THAT THE / GUN IS EMPTY.[END]
    ; End script.
    db $ff

; Warn that shooting this target may cause trouble later.
C1GunSaveTarget:

C1Loc4_40:
    ; Show message 2.
    db $02, $7d ; Message Text11Message7D: HOLD ON![PAGE] / IF YOU DO THAT, / IT MAY CAUSE YOU / TROUBLE LATER.[END]
    ; End script.
    db $ff

; Consume gun one's round before the street shooting and arrest sequence.
C1Gun1Street:

C1Loc4_41:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Play the shot and arrest effects, show the prison sentence, and end the action.
C1StreetShotArrest:

C1Loc4_42:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Show message 1.
    db $01, $db ; Message Text10Message1B: YOU PULL THE / TRIGGER AND SHOOT / YOUR GUN.[PAGE] / A PASSERBY RUNS / FOR COVER AND ...
    ; Finish Case I scene effect.
    db $5a, C1FxIdArrest
    ; Show message 1.
    db $01, $fc ; Message Text10Message3C: THE SENTENCE / PASSED DOWN WAS / TEN YEARS IN / MAXIMUM SECURITY![PAGE] / YOUR CELL A...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Consume gun two's round before the street shooting and arrest sequence.
C1Gun2Street:

C1Loc4_43:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1StreetShotArrest

; Consume gun three's round before the street shooting and arrest sequence.
C1Gun3Street:

C1Loc4_44:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1StreetShotArrest

; Require flag $17 before consuming gun two's round to shoot mirror one.
C1Gun2Mirror1:

C1Loc4_45:
    ; Test object flag.
    db $16, C1Mirror1Seen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunSaveTarget
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootMirror1

; Require flag $17 before consuming gun three's round to shoot mirror one.
C1Gun3Mirror1:

C1Loc4_46:
    ; Test object flag.
    db $16, C1Mirror1Seen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunSaveTarget
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootMirror1

; Consume gun one's round before shooting mirror two.
C1Gun1Mirror2:

C1Loc4_47:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Play the shot effect, set flag $01, refresh objects, and show the broken mirror.
C1ShootMirror2:

C1Loc4_48:
    ; Run scene effect.
    db $46, C1FxIdGunshot
    ; Set object flag.
    db $17, C1Mirror2Broken
    ; Refresh room objects.
    db $27
    ; Show message 0.
    db $00, $22 ; Message Text0CMessage22: YOU JUST BLEW AWAYTHE MIRROR. IT / SHATTERS SENDING / SMALL SHARDS EVERYWHICH WAY![END]
    ; End script.
    db $ff

; Consume gun two's round before shooting mirror two.
C1Gun2Mirror2:

C1Loc4_49:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootMirror2

; Consume gun three's round before shooting mirror two.
C1Gun3Mirror2:

C1Loc4_4A:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootMirror2

; Consume gun one's round before shooting the round mirror.
C1Gun1RoundMirror:

C1Loc4_4B:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Play the shot effect, set flag $09, refresh objects, and show the broken mirror.
C1ShootRoundMirror:

C1Loc4_4C:
    ; Run scene effect.
    db $46, C1FxIdGunshot
    ; Set object flag.
    db $17, C1RoundMirrorBroken
    ; Refresh room objects.
    db $27
    ; Show message 0.
    db $00, $22 ; Message Text0CMessage22: YOU JUST BLEW AWAYTHE MIRROR. IT / SHATTERS SENDING / SMALL SHARDS EVERYWHICH WAY![END]

jr_006_6b94:
    ; End script.
    db $ff

; Consume gun two's round before shooting the round mirror.
C1Gun2RoundMirror:

C1Loc4_4D:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootRoundMirror

; Consume gun three's round before shooting the round mirror.
C1Gun3RoundMirror:

C1Loc4_4E:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootRoundMirror

; Consume gun one's round before shooting the wall mirror.
C1Gun1WallMirror:

C1Loc4_4F:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Play the shot effect, set flag $14, refresh objects, and show the broken mirror.
C1ShootWallMirror:

C1Loc4_50:
    ; Run scene effect.
    db $46, C1FxIdGunshot
    ; Set object flag.
    db $17, C1WallMirrorBroken
    ; Refresh room objects.
    db $27
    ; Show message 0.
    db $00, $22 ; Message Text0CMessage22: YOU JUST BLEW AWAYTHE MIRROR. IT / SHATTERS SENDING / SMALL SHARDS EVERYWHICH WAY![END]
    ; End script.
    db $ff

; Consume gun two's round before shooting the wall mirror.
C1Gun2WallMirror:

C1Loc4_51:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootWallMirror

; Consume gun three's round before shooting the wall mirror.
C1Gun3WallMirror:

C1Loc4_52:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootWallMirror

; Consume gun one's round before shooting the street window.
C1Gun1StreetWin:

C1Loc4_53:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Play the shot effect, set flag $02, refresh objects, and show the broken window.
C1ShootStreetWin:

C1Loc4_54:
    ; Run scene effect.
    db $46, C1FxIdGunshot
    ; Set object flag.
    db $17, C1StreetWinBroken
    ; Refresh room objects.
    db $27
    ; Show message 0.
    db $00 ; Message Text0CMessage46: WITH A BANG AND A / CRASH, YOU BLOW / AWAY THE WINDOW.[END]

jr_006_6bc7:
    db $46
    ; End script.
    db $ff

; Consume gun two's round before shooting the street window.
C1Gun2StreetWin:

C1Loc4_55:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootStreetWin

; Consume gun three's round before shooting the street window; retain the split empty-gun pointer.
C1Gun3StreetWin:

C1Loc4_56:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    ; Target C1GunEmpty; retain the interior label.
    db LOW(C1GunEmpty)

jr_006_6bd3:
    db HIGH(C1GunEmpty)
    ; Jump to script.
    db $1c
    dw C1ShootStreetWin

; Consume gun one's round before shooting the gun-shop window.
C1Gun1GunShopWin:

C1Loc4_57:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Play the shot effect, set flag $15, refresh objects, and show the broken window.
C1ShootGunShopWin:

C1Loc4_58:
    ; Run scene effect.
    db $46, C1FxIdGunshot
    ; Set object flag.
    db $17, C1GunShopWinBroken
    ; Refresh room objects.
    db $27
    ; Show message 0.
    db $00, $46 ; Message Text0CMessage46: WITH A BANG AND A / CRASH, YOU BLOW / AWAY THE WINDOW.[END]
    ; End script.
    db $ff

; Consume gun two's round before shooting the gun-shop window.
C1Gun2GunShopWin:

C1Loc4_59:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootGunShopWin

; Consume gun three's round before shooting the gun-shop window.
C1Gun3GunShopWin:

C1Loc4_5A:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootGunShopWin

; Consume gun one's round before the shared woman-shooting outcome.
C1Gun1Lady:

C1Loc4_5B:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Show the shooting, arrest, and murder-sentence sequence.
C1ShootLadyEnd:

C1Loc4_5C:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Show message 2.
    db $02, $ef ; Message Text0DMessage6F: GOING AGAINST / COMMON SENSE, YOU / DECIDE TO SHOOT / HER.[PAGE] / A PASSING COP / HE...
    ; Finish Case I scene effect.
    db $5a, C1FxIdArrest
    ; Show message 2.
    db $02, $7f ; Message Text11Message7F: IT DOESN'T TAKE / TOO LONG FOR A / JURY OF YOUR PEERSTO CONVICT YOU OF / FIRST DEGREE...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Consume gun two's round before the shared woman-shooting outcome.
C1Gun2Lady:

C1Loc4_5D:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootLadyEnd

; Consume gun three's round before the shared woman-shooting outcome.
C1Gun3Lady:

C1Loc4_5E:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootLadyEnd

; Consume gun one's round before shooting at the bum.
C1Gun1Bum:

C1Loc4_5F:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Show the shot at the bum, arrest, attempted-murder trial, and prison sentence.
C1ShootBumEnd:

C1Loc4_60:
    ; Run scene effect.
    db $46, C1FxIdGunshot
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 2.
    db $02, $e4 ; Message Text0DMessage64: YOU TAKE A SHOT ATTHE BUM AND HEAR / A WOMAN BEGIN TO / SCREAM.[PAGE] / IMMEDIATELY T...
    ; Finish Case I scene effect.
    db $5a, C1FxIdArrest
    ; Show message 2.
    db $02, $7e ; Message Text11Message7E: YOU'RE ON TRIAL / FOR ATTEMPTED / MURDER.[PAGE] / THE PROSECUTION / HAS A SOLID CASE ...
    ; Show message 1.
    db $01, $fc ; Message Text10Message3C: THE SENTENCE / PASSED DOWN WAS / TEN YEARS IN / MAXIMUM SECURITY![PAGE] / YOUR CELL A...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Consume gun two's round before shooting at the bum.
C1Gun2Bum:

C1Loc4_61:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootBumEnd

; Consume gun three's round before shooting at the bum.
C1Gun3Bum:

C1Loc4_62:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootBumEnd

; Consume gun one's round before the gun clerk's fatal response.
C1Gun1Clerk:

C1Loc4_63:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Play the shot and death effects around the gun clerk's response.
C1ShootClerkEnd:

C1Loc4_64:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Show message 1.
    db $01, $1a ; Message Text0EMessage1A: KA-BOOM![PAGE] / THE CLERK REACTS / FASTER THAN YOU / THOUGHT POSSIBLE / FOR ONE SO B...
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text11Message62: TOO BAD ACE! FROM / THE BEGINNING THE / ODDS WERE STACKED / AGAINST YOU![PAGE] / IT S...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Consume gun two's round before the gun clerk's fatal response.
C1Gun2Clerk:

C1Loc4_65:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootClerkEnd

; Consume gun three's round before the gun clerk's fatal response.
C1Gun3Clerk:

C1Loc4_66:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootClerkEnd

; Consume gun one's round before shooting the cab's protective glass.
C1Gun1Cabby:

C1Loc4_67:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Show the shot blocked by the cab glass, trial, and prison sentence.
C1ShootCabbyEnd:

C1Loc4_68:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Show message 1.
    db $01, $41 ; Message Text0EMessage41: YOU'VE MANAGED / TO SHOOT THE / BULLETPROOF SCREENBETWEEN YOU AND / THE CABBY.[PAGE] ...
    ; Finish Case I scene effect.
    db $5a, C1FxIdArrest
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $7e ; Message Text11Message7E: YOU'RE ON TRIAL / FOR ATTEMPTED / MURDER.[PAGE] / THE PROSECUTION / HAS A SOLID CASE ...
    ; Show message 1.
    db $01, $fc ; Message Text10Message3C: THE SENTENCE / PASSED DOWN WAS / TEN YEARS IN / MAXIMUM SECURITY![PAGE] / YOUR CELL A...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Consume gun two's round before shooting the cab's protective glass.
C1Gun2Cabby:

C1Loc4_69:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootCabbyEnd

; Consume gun three's round before shooting the cab's protective glass.
C1Gun3Cabby:

C1Loc4_6A:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootCabbyEnd

; Consume gun one's round before shooting the butler.
C1Gun1Butler:

C1Loc4_6B:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Show the butler shooting, arrest, attempted-murder trial, and prison sentence.
C1ShootButlerEnd:

C1Loc4_6C:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $ab ; Message Text0FMessage2B: YOU TAKE DEADLY / AIM AND SHOT THE / SNOOTY BUTLER! THESOUND BRINGS A / BUNCH OF STAR...
    ; Finish Case I scene effect.
    db $5a, C1FxIdArrest
    ; Show message 2.
    db $02, $7e ; Message Text11Message7E: YOU'RE ON TRIAL / FOR ATTEMPTED / MURDER.[PAGE] / THE PROSECUTION / HAS A SOLID CASE ...
    ; Show message 1.
    db $01, $fc ; Message Text10Message3C: THE SENTENCE / PASSED DOWN WAS / TEN YEARS IN / MAXIMUM SECURITY![PAGE] / YOUR CELL A...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Consume gun two's round before shooting the butler.
C1Gun2Butler:

C1Loc4_6D:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootButlerEnd

; Consume gun three's round before shooting the butler.
C1Gun3Butler:

C1Loc4_6E:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootButlerEnd

; Consume gun one's round before the shared sleeping-character outcome.
C1Gun1Sleepers:

C1Loc4_6F:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Show the shooting and arrest text, then the murder sentence.
C1ShootSleepersEnd:

C1Loc4_70:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Show message 1.
    db $01, $db ; Message Text10Message1B: YOU PULL THE / TRIGGER AND SHOOT / YOUR GUN.[PAGE] / A PASSERBY RUNS / FOR COVER AND ...
    ; Finish Case I scene effect.
    db $5a, C1FxIdArrest
    ; Show message 2.
    db $02, $7f ; Message Text11Message7F: IT DOESN'T TAKE / TOO LONG FOR A / JURY OF YOUR PEERSTO CONVICT YOU OF / FIRST DEGREE...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Consume gun two's round before the shared sleeping-character outcome.
C1Gun2Sleepers:

C1Loc4_71:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootSleepersEnd

; Consume gun three's round before the shared sleeping-character outcome.
C1Gun3Sleepers:

C1Loc4_72:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootSleepersEnd

; Consume gun one's round before the alligator outcome.
C1Gun1Alligator:

C1Loc4_73:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Show the alligator's defeat, select door $45, check exit $38, and clear state $4d.
C1ShootAlligator:

C1Loc4_74:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Set state and refresh.
    db $33, C1StateAlligatorShotView
    ; Wait sixty ticks.
    db $68
    ; Wait sixty ticks.
    db $68
    ; Show message 1.
    db $01, $36 ; Message Text0EMessage36: AS YOU TRY TO STOPTHE RINGING IN / YOUR EARS, YOU ARETHANKFUL OF TWO / THINGS.[PAGE] ...
    ; Wait sixty ticks.
    db $68
    ; Set first item type and ID.
    db $5c, $05, C1DoorIdLiftToRackSewer
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdLiftSewer
    ; Show message 1.
    db $01, $24 ; Message Text0EMessage24: YOU'RE INSIDE / THE SEWER.[END]
    ; Clear state bit.
    db $30, C1StateAlligatorShotView
    ; End script.
    db $ff

; Consume gun two's round before the alligator outcome.
C1Gun2Alligator:

C1Loc4_75:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootAlligator

; Consume gun three's round before the alligator outcome.
C1Gun3Alligator:

C1Loc4_76:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootAlligator

; Consume gun one's round before handling the shadow or its door.
C1Gun1Shadow:

C1Loc4_77:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; With flag $16 clear, shoot the shadow, clear $0a, set $16, and refresh objects.
C1ShootShadow:

C1Loc4_78:
    ; Test object flag.
    db $16, C1ShadowShot
    ; Branch if result bit 0 is set.
    db $04
    dw C1GunNoChangeReply
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $87 ; Message Text0FMessage07: YOU PULL OUT THE / GUN, TAKE QUICK / AIM AND PULL THE / TRIGGER.[END]
    ; Run scene effect.
    db $46, C1FxIdGunshot
    ; Clear object flag.
    db $18, $0a
    ; Set object flag.
    db $17, C1ShadowShot
    ; Refresh room objects.
    db $27
    ; Show message 1.
    db $01, $8a ; Message Text0FMessage0A: THE BULLET HOLE / AND THE LACK OF / MOVEMENT TELLS / YOU THE THREAT / IS GONE.[END]
    ; End script.
    db $ff

; Consume gun two's round before handling the shadow.
C1Gun2Shadow:

C1Loc4_79:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

jr_006_6ce5:
    ; Jump to script.
    db $1c
    dw C1ShootShadow

; Consume gun three's round before handling the shadow.
C1Gun3Shadow:

C1Loc4_7A:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootShadow

; Consume gun one's round before the no-change reply; repeated lock shots also enter here.
C1Gun1NoChange:

C1Loc4_7B:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Play the shot effect and report that the round achieved nothing.
C1GunNoChangeReply:

C1Loc4_7C:
    ; Run scene effect.
    db $46, C1FxIdGunshot
    ; Show message 1.
    db $01, $f8 ; Message Text10Message38: YOU WONDER WHY YOUBOTHERED WASTING / THE BULLETS?[END]
    ; End script.
    db $ff

; Consume gun two's round before the no-change reply.
C1Gun2NoChange:

C1Loc4_7D:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1GunNoChangeReply

; Consume gun three's round before the no-change reply.
C1Gun3NoChange:

C1Loc4_7E:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1GunNoChangeReply

; Consume gun one's round before shooting the cabinet lock.
C1Gun1Cabinet:

C1Loc4_7F:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Open the lock with flag $1f clear; the already-set branch also consumes a gun-one round.
C1ShootCabinet:

C1Loc4_80:
    ; Test object flag.
    db $16, C1CabinetUnlocked
    ; Branch if result bit 0 is set.
    db $04
    dw C1Gun1NoChange
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $87 ; Message Text0FMessage07: YOU PULL OUT THE / GUN, TAKE QUICK / AIM AND PULL THE / TRIGGER.[END]
    ; Run scene effect.
    db $46, C1FxIdGunshot
    ; Set object flag.
    db $17, C1CabinetUnlocked
    ; Swap operation slots.
    db $60
    ; Set property 1 bit 2.
    db $2c, $06
    ; Refresh room objects.
    db $27
    ; Keep selected change.
    db $26
    ; Set text name 0.
    db $1e, $d6
    ; Show message 2.
    db $02, $11 ; Message Text11Message11: THE LOCK IS BLOWN / AWAY, SO THE / [OBJECT_WRAM:37C5] IS / NOW OPEN.[END]
    ; End script.
    db $ff

; Consume gun two's round before shooting the cabinet lock.
C1Gun2Cabinet:

C1Loc4_81:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootCabinet

; Consume gun three's round before shooting the cabinet lock.
C1Gun3Cabinet:

C1Loc4_82:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootCabinet

; Consume gun one's round before shooting door $31's lock.
C1Gun1Door31:

C1Loc4_83:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Open door $31 with flag $60 clear; the already-set branch also consumes a gun-one round.
C1ShootDoor31:

C1Loc4_84:
    ; Test object flag.
    db $16, C1BungalowUnlocked
    ; Branch if result bit 0 is set.
    db $04
    dw C1Gun1NoChange
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $87 ; Message Text0FMessage07: YOU PULL OUT THE / GUN, TAKE QUICK / AIM AND PULL THE / TRIGGER.[END]
    ; Run scene effect.
    db $46, C1FxIdGunshot
    ; Set state and refresh.
    db $33, C1StateBungalowDoorOpen
    ; Set object flag.
    db $17, C1BungalowUnlocked
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $11 ; Message Text11Message11: THE LOCK IS BLOWN / AWAY, SO THE / [OBJECT_WRAM:37C5] IS / NOW OPEN.[END]
    ; End script.
    db $ff

; Consume gun two's round before shooting door $31's lock.
C1Gun2Door31:

C1Loc4_85:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootDoor31

; Consume gun three's round before shooting door $31's lock.
C1Gun3Door31:

C1Loc4_86:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootDoor31

; Consume gun two's round before handling the shadow through door $38.
C1Gun2ShadowDoor:

C1Loc4_87:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootShadow

; Consume gun three's round before handling the shadow through door $38.
C1Gun3ShadowDoor:

C1Loc4_88:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1ShootShadow

; Consume gun one's round before the unsuccessful shot at door $49.
C1Gun1Door49:

C1Loc4_89:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty

; Play the shot effect and show the regional unsuccessful-shot reply.
C1Door49ShotReply:

C1Loc4_8A:
    ; Run scene effect.
    db $46, C1FxIdGunshot
    ; Show message 1.
    db $01, $a2 ; Message Text0FMessage22: IN YOUR / EXCITEMENT, YOUR / AIM IS WAY OFF![PAGE] / IT SEEMS THAT YOU / HAVE MISSED ...
    ; End script.
    db $ff

; Consume gun two's round before the unsuccessful shot at door $49.
C1Gun2Door49:

C1Loc4_8B:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1Door49ShotReply

; Consume gun three's round before the unsuccessful shot at door $49.
C1Gun3Door49:

C1Loc4_8C:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunEmpty
    ; Jump to script.
    db $1c
    dw C1Door49ShotReply

; Explain that a gun must be taken before it can be used.
C1GunNeedsTaken:

C1Loc4_2A:
    ; Show message 2.
    db $02, $52 ; Message Text11Message52: YOU CAN'T USE WHATYOU HAVEN'T TAKEN.[END]
    ; End script.
    db $ff

; Describe the folder; flag $90 controls its extra contents hint.
LookC1Folder:

C1Sc4_3E:
    ; Test object flag.
    db $16, C1Note1Taken
    ; Branch if result bit 0 is set.
    db $04
    dw C1FolderShortView
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $8b ; Message Text0DMessage0B: THE FADED YELLOW / OF THE MANILA / FOLDER CATCHES / YOUR EYE.[END]
    ; Show message 2.
    db $02, $92 ; Message Text0DMessage12: TYPICALLY, YOU'D / FIND FILES INSIDE.[END]
    ; End script.
    db $ff

; Describe the folder without the extra contents hint.
C1FolderShortView:

C1Loc4_2B:
    ; Show message 2.
    db $02, $8b ; Message Text0DMessage0B: THE FADED YELLOW / OF THE MANILA / FOLDER CATCHES / YOUR EYE.[END]
    ; End script.
    db $ff

; Require the folder to be taken, then choose where to leave it.
PlaceC1Folder:

C1Sc4_3F:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNeedsTaken
    ; Show message 2.
    db $02, $55 ; Message Text11Message55: YOU WONDER WHERE / YOU SHOULD LEAVE / THIS?[END]
    ; Choose alternate target; selected input runs the following script.
    db $28

; After placement checks, require item flag $0e before finishing the folder placement.
C1FolderPlaceTarget:

C1Loc4_8D:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceEnd
    ; Test item flag.
    db $52, C1ItemNote1
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

; Describe the small box.
LookC1Box:

C1Sc4_40:
    ; Show message 2.
    db $02, $8c ; Message Text0DMessage0C: IT'S A SMALL BOX.[END]
    ; End script.
    db $ff

; Require the box to be taken, then choose where to leave it.
PlaceC1Box:

C1Sc4_41:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNeedsTaken
    ; Show message 2.
    db $02, $55 ; Message Text11Message55: YOU WONDER WHERE / YOU SHOULD LEAVE / THIS?[END]
    ; Choose alternate target; selected input runs the following script.
    db $28

; After placement checks, require flag $9d before finishing the box placement.
C1BoxPlaceTarget:

C1Loc4_8E:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceEnd
    ; Test object flag.
    db $16, C1Key4Taken
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

; Describe the first envelope.
LookC1Envelope1:

C1Sc4_42:
    ; Show message 2.
    db $02, $9d ; Message Text0DMessage1D: IT LOOKS LIKE / A LEGAL-SIZE / ENVELOPE.[END]
    ; End script.
    db $ff

; Require the first envelope to be taken, then choose where to leave it.
PlaceC1Envelope1:

C1Sc4_43:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNeedsTaken
    ; Show message 2.
    db $02, $55 ; Message Text11Message55: YOU WONDER WHERE / YOU SHOULD LEAVE / THIS?[END]
    ; Choose alternate target; selected input runs the following script.
    db $28

; After placement checks, require flag $7d before finishing the first envelope placement.
C1Envelope1PlaceTarget:

C1Loc4_8F:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceEnd
    ; Test object flag.
    db $16, C1BillRouteKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

; Describe the black handbag.
LookC1Handbag:

C1Sc4_44:
    ; Show message 2.
    db $02, $ea ; Message Text0DMessage6A: IT'S A BLACK / HANDBAG. IT LOOKS / BIG ENOUGH TO / CHOKE A MULE![END]
    ; End script.
    db $ff

; Require the handbag to be taken, then choose where to leave it.
PlaceC1Handbag:

C1Sc4_45:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNeedsTaken
    ; Show message 2.
    db $02, $55 ; Message Text11Message55: YOU WONDER WHERE / YOU SHOULD LEAVE / THIS?[END]
    ; Choose alternate target; selected input runs the following script.
    db $28

; After placement checks, require flag $99 before finishing the handbag placement.
C1HandbagPlaceTarget:

C1Loc4_90:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceEnd
    ; Test object flag.
    db $16, C1AltBillTaken
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

; Describe the second gun.
LookC1Gun2:

C1Sc4_46:
    ; Show message 2.
    db $02, $eb ; Message Text0DMessage6B: THIS GUN IS ONE OFTHOSE "SATURDAY / NIGHT SPECIALS."[PAGE] / IT'S EASY TO COME / BY O...
    ; End script.
    db $ff

; Require gun two to be taken and closed before choosing its target.
UseC1Gun2:

C1Sc4_47:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunNeedsTaken
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    ; Target C1Gun2TargetPrompt; retain the interior label.
    db LOW(C1Gun2TargetPrompt)

jr_006_6df7:
    db HIGH(C1Gun2TargetPrompt)
    ; Show message 1.
    db $01, $60 ; Message Text0EMessage60: YOU CAN'T USE IT / WHEN IT'S OPEN.[END]
    ; End script.
    db $ff

; Ask which target to use gun two on.
C1Gun2TargetPrompt:

C1Loc4_2C:
    ; Show message 1.
    db $01, $b9 ; Message Text0FMessage39: WHAT WOULD YOU / LIKE TO USE THIS / ON?[END]
    ; Choose alternate target; selected input runs the following script.
    db $28

; Dispatch gun two to its target-specific ammunition and outcome handlers.
MatchC1Gun2:

C1Loc4_91:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, C1TargetStartWashroomMirror
    dw C1Gun2Mirror1
    db $00, C1TargetWomenWashroomMirror
    dw C1Gun2Mirror2
    db $00, C1TargetBarStreetWindow
    dw C1Gun2StreetWin
    db $00, C1TargetGunShopWindow
    dw C1Gun2GunShopWin
    db $00

jr_006_6e10:
    db C1TargetArmedWoman
    dw C1Gun2Lady
    db $00, C1TargetFallenWoman
    dw C1Gun2Lady
    db $00, C1TargetBum
    dw C1Gun2Bum
    db $00, C1TargetAceOfficeWallMarks
    dw C1Gun2NoChange
    db $00, C1TargetMrsSternwood
    dw C1Gun2Lady
    db $00, C1TargetGunShopClerk
    dw C1Gun2Clerk
    db $00, C1TargetBlueCabDriver
    dw C1Gun2Cabby
    db $00, C1TargetYellowCabDriver
    dw C1Gun2Cabby
    db $00, C1TargetPenthouseRoundMirror
    dw C1Gun2RoundMirror
    db $00, C1TargetMansionButler
    dw C1Gun2Butler
    db $00, C1TargetMrSternwood
    dw C1Gun2Sleepers
    db $00, C1TargetGuestBedroomMirror
    dw C1Gun2WallMirror
    db $00, C1TargetSleepingWoman
    dw C1Gun2Sleepers
    db $00, C1TargetAlligator
    dw C1Gun2Alligator
    db $00, C1TargetAceOfficeDoorShadow
    dw C1Gun2Shadow
    db $01, C1ContainerCorpseOfficeWallSafe
    dw C1Gun2NoChange
    db $01, C1ContainerDoctorLockedCabinet
    dw C1Gun2Cabinet
    db $05, C1DoorIdJoeFrontDoor
    dw C1Gun2NoChange
    db $05, C1DoorIdCorpseOffice
    dw C1Gun2NoChange
    db $05, C1DoorIdLuxuryCar
    dw C1Gun2NoChange
    db $05, C1DoorIdBungalow
    dw C1Gun2Door31
    db $05, C1DoorIdDoctorOffice
    dw C1Gun2NoChange
    db $05, C1DoorIdAceOffice
    dw C1Gun2ShadowDoor
    db $05, C1DoorIdMansionFrontDoor
    dw C1Gun2Door49
    db $00, C1TargetShootingMuggerVariant1
    dw C1GunmanShootsFirst
    db $00, C1TargetShootingMuggerVariant2
    dw C1GunmanShootsFirst
    db $00, C1TargetShootingMuggerVariant3
    dw C1GunmanShootsFirst
    db $00, C1TargetShootingMuggerVariant4
    dw C1GunmanShootsFirst
    db $00, C1TargetRobbingMugger
    dw C1ShootMuggerEnd
    db $05, C1DoorIdCarTrunk
    dw C1Gun2Street
    db $00, C1TargetSelf
    dw C1Gun2Self
    db $fe, $fe
    dw C1ContainerActionNoHere

; Show the gunman shooting first and the death ending, without a preceding ammo opcode.
C1GunmanShootsFirst:

C1Loc4_92:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Show message 1.
    db $01, $ee ; Message Text10Message2E: YOU WERE A BIT / SLOW ON THE / TRIGGER.[PAGE] / HE SHOT YOU FIRST.[END]
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text11Message62: TOO BAD ACE! FROM / THE BEGINNING THE / ODDS WERE STACKED / AGAINST YOU![PAGE] / IT S...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Show the mugger shooting, arrest, and murder sentence, without a preceding ammo opcode.
C1ShootMuggerEnd:

C1Loc4_93:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Show message 1.
    db $01, $ea ; Message Text10Message2A: YOU SHOOT THE / MUGGER ONLY TO / HAVE THE COPS SHOWUP MOMENTS LATER.[PAGE] / BOY, WHE...
    ; Finish Case I scene effect.
    db $5a, C1FxIdArrest
    ; Show message 2.
    db $02, $7f ; Message Text11Message7F: IT DOESN'T TAKE / TOO LONG FOR A / JURY OF YOUR PEERSTO CONVICT YOU OF / FIRST DEGREE...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Describe the diary through its open attribute and bookmark flag $8f.
LookC1Diary:

C1Sc4_48:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1DiaryOpenView
    ; Test object flag.
    db $16, C1BookmarkTaken
    ; Branch if result bit 0 is set.
    db $04
    dw C1DiaryShortView
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $6e ; Message Text0EMessage6E: IT'S A DIARY WITH / THE NAME "MARTHA" / ON IT.[END]
    ; Show message 1.
    db $01, $1f ; Message Text0EMessage1F: THERE IS A / BOOKMARK BETWEEN / THE PAGES.[END]
    ; End script.
    db $ff

; Show the diary text selected when its open attribute is set.
C1DiaryOpenView:

C1Loc4_2D:
    ; Show message 1.
    db $01, $71 ; Message Text0EMessage71: YOU BEGIN READING,"DEC. 5TH: SIEGEL / DROPPED BY- / PROBABLY TO / APOLOGIZE AGAIN.[PA...
    ; End script.
    db $ff

; Describe the closed diary without its bookmark hint.
C1DiaryShortView:

C1Loc4_2E:
    ; Show message 1.
    db $01, $6e ; Message Text0EMessage6E: IT'S A DIARY WITH / THE NAME "MARTHA" / ON IT.[END]
    ; End script.
    db $ff

; Require the diary to be taken, then choose where to leave it.
PlaceC1Diary:

C1Sc4_49:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNeedsTaken
    ; Show message 2.
    db $02, $55 ; Message Text11Message55: YOU WONDER WHERE / YOU SHOULD LEAVE / THIS?[END]

jr_006_6ebf:
    ; Choose alternate target; selected input runs the following script.
    db $28

; After placement dispatch, a set result selects the caution; otherwise end the action.
C1DiaryPlaceTarget:

C1Loc4_94:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is set.
    db $04
    dw C1ContainerPlaceCaution
    ; End script.
    db $ff

; Describe the ammunition case.
LookC1AmmoCase:

C1Sc4_4A:
    ; Show message 1.
    db $01, $ff ; Message Text10Message3F: IT'S A BOX OF / AMMO.[END]
    ; End script.
    db $ff

; Require the ammunition case to be taken, then choose where to leave it.
PlaceC1AmmoCase:

C1Sc4_4B:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNeedsTaken
    ; Show message 2.
    db $02, $55 ; Message Text11Message55: YOU WONDER WHERE / YOU SHOULD LEAVE / THIS?[END]
    ; Choose alternate target; selected input runs the following script.
    db $28

; After placement checks, require flag $96 before finishing the ammunition case placement.
C1AmmoCasePlaceTarget:

C1Loc4_95:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceEnd
    ; Test object flag.
    db $16, C1SixBulletsTaken
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

; Describe the envelope addressed to Sternwood.
LookC1Envelope2:

C1Sc4_4C:
    ; Show message 1.
    db $01, $9c ; Message Text0FMessage1C: THE NAME "MR. / STERNWOOD" IS / PASTED ON THE / ENVELOPE USING / LETTERS CUT OUT / FR...
    ; End script.
    db $ff

; Require the second envelope to be taken, then choose where to leave it.
PlaceC1Envelope2:

C1Sc4_4D:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNeedsTaken
    ; Show message 2.
    db $02, $55 ; Message Text11Message55: YOU WONDER WHERE / YOU SHOULD LEAVE / THIS?[END]
    ; Choose alternate target; selected input runs the following script.
    db $28

; After placement checks, require flag $97 before finishing the second envelope placement.
C1Envelope2PlaceTarget:

C1Loc4_96:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05

jr_006_6ef2:
    dw C1ContainerPlaceEnd
    ; Test object flag.
    db $16, C1Letter1Taken
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

; Describe the small jar named BOWL1.
LookC1Bowl1:

C1Sc4_4E:
    ; Show message 1.
    db $01, $af ; Message Text0FMessage2F: IT'S A SMALL JAR.[END]
    ; End script.
    db $ff

; Require the container to be taken, then choose where to leave it.
PlaceC1Container:

C1Sc4_4F:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNeedsTaken
    ; Show message 2.
    db $02, $55 ; Message Text11Message55: YOU WONDER WHERE / YOU SHOULD LEAVE / THIS?[END]
    ; Choose alternate target; selected input runs the following script.
    db $28

; Check the target and placement dispatch before finishing the container placement.
C1ContainerPlaceTarget:

C1Loc4_97:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceEnd
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

; Describe the small jar named BOWL2.
LookC1Bowl2:

C1Sc4_50:
    ; Show message 1.
    db $01, $af ; Message Text0FMessage2F: IT'S A SMALL JAR.[END]
    ; End script.
    db $ff

; Describe the third envelope.
LookC1Envelope3:

C1Sc4_51:
    ; Show message 2.
    db $02, $9d ; Message Text0DMessage1D: IT LOOKS LIKE / A LEGAL-SIZE / ENVELOPE.[END]
    ; End script.
    db $ff

; Require the third envelope to be taken, then choose where to leave it.
PlaceC1Envelope3:

C1Sc4_52:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceNeedsTaken
    ; Show message 2.
    db $02, $55 ; Message Text11Message55: YOU WONDER WHERE / YOU SHOULD LEAVE / THIS?[END]
    ; Choose alternate target; selected input runs the following script.
    db $28

; After placement checks, require flag $98 before finishing the third envelope placement.
C1Envelope3PlaceTarget:

C1Loc4_98:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05

jr_006_6f1e:
    dw C1ContainerPlaceNoHere
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceEnd
    ; Test object flag.
    db $16, C1Letter2Taken
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ContainerPlaceCaution
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

; Describe the chocolate box.
LookC1CandyBox:

C1Sc4_53:
    ; Show message 1.
    db $01, $c3 ; Message Text10Message03: IT'S A BOX OF / CHOCOLATES.[END]
    ; End script.
    db $ff

; Describe the black briefcase.
LookC1Case:

C1Sc4_54:
    ; Show message 1.
    db $01, $bf ; Message Text0FMessage3F: IT'S A BLACK / BRIEFCASE, THE / KIND PREFERRED BY / KIDNAPPERS / EVERYWHERE![END]
    ; End script.
    db $ff

; Describe the small jar named BOWL3.
LookC1Bowl3:

C1Sc4_55:
    ; Show message 1.
    db $01, $af ; Message Text0FMessage2F: IT'S A SMALL JAR.[END]
    ; End script.
    db $ff

; Describe the third gun using the regional text.
LookC1Gun3:

C1Sc4_56:
    ; Show message 1.
    db $01, $12 ; Message Text0EMessage12: IT'S A STANDARD / MILITARY-ISSUE / GERMAN LUGER.[END]
    ; End script.
    db $ff

; Require gun three to be taken and closed before choosing its target.
UseC1Gun3:

C1Sc4_57:
jr_006_6f37:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunNeedsTaken
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Gun3TargetPrompt
    ; Show message 1.
    db $01, $60 ; Message Text0EMessage60: YOU CAN'T USE IT / WHEN IT'S OPEN.[END]
    ; End script.
    db $ff

; Ask which target to use gun three on.
C1Gun3TargetPrompt:

C1Loc4_2F:
    ; Show message 1.
    db $01, $b9 ; Message Text0FMessage39: WHAT WOULD YOU / LIKE TO USE THIS / ON?[END]
    ; Choose alternate target; selected input runs the following script.
    db $28

; Dispatch gun three to its target-specific ammunition and outcome handlers.
MatchC1Gun3:

C1Loc4_99:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, C1TargetStartWashroomMirror
    dw C1Gun3Mirror1
    db $00, C1TargetWomenWashroomMirror
    dw C1Gun3Mirror2

jr_006_6f4e:
    db $00, C1TargetBarStreetWindow
    dw C1Gun3StreetWin
    db $00, C1TargetGunShopWindow
    dw C1Gun3GunShopWin
    db $00, C1TargetArmedWoman
    dw C1Gun3Lady
    db $00, C1TargetFallenWoman
    dw C1Gun3Lady
    db $00, C1TargetBum
    dw C1Gun3Bum
    db $00, C1TargetAceOfficeWallMarks
    dw C1Gun3NoChange
    db $00, C1TargetMrsSternwood
    dw C1Gun3Lady
    db $00, C1TargetGunShopClerk
    dw C1Gun3Clerk
    db $00, C1TargetBlueCabDriver
    dw C1Gun3Cabby
    db $00, C1TargetYellowCabDriver
    dw C1Gun3Cabby
    db $00, C1TargetPenthouseRoundMirror
    dw C1Gun3RoundMirror
    db $00, C1TargetMansionButler
    dw C1Gun3Butler
    db $00, C1TargetMrSternwood
    dw C1Gun3Sleepers
    db $00, C1TargetGuestBedroomMirror
    dw C1Gun3WallMirror
    db $00, C1TargetSleepingWoman
    dw C1Gun3Sleepers
    db $00, C1TargetAlligator
    dw C1Gun3Alligator
    db $00, C1TargetAceOfficeDoorShadow
    dw C1Gun3Shadow
    db $01, C1ContainerCorpseOfficeWallSafe
    dw C1Gun3NoChange
    db $01, C1ContainerDoctorLockedCabinet
    dw C1Gun3Cabinet
    db $05, C1DoorIdJoeFrontDoor
    dw C1Gun3NoChange
    db $05, C1DoorIdCorpseOffice
    dw C1Gun3NoChange
    db $05, C1DoorIdLuxuryCar
    dw C1Gun3NoChange
    db $05, C1DoorIdBungalow
    dw C1Gun3Door31
    db $05, C1DoorIdDoctorOffice
    dw C1Gun3NoChange
    db $05, C1DoorIdAceOffice
    dw C1Gun3ShadowDoor
    db $05, C1DoorIdMansionFrontDoor
    dw C1Gun3Door49
    db $00, C1TargetShootingMuggerVariant1
    dw C1GunmanShootsFirst
    db $00, C1TargetShootingMuggerVariant2
    dw C1GunmanShootsFirst
    db $00, C1TargetShootingMuggerVariant3
    dw C1GunmanShootsFirst
    db $00, C1TargetShootingMuggerVariant4
    dw C1GunmanShootsFirst
    db $00, C1TargetRobbingMugger
    dw C1ShootMuggerEnd
    db $05, C1DoorIdCarTrunk
    dw C1Gun3Street
    db $00, C1TargetSelf
    dw C1Gun3Self
    db $fe, $fe
    dw C1ContainerActionNoHere
