
; Describe door $00 from room $00, with first and repeat views controlled by flag $30.
LookC1Door00:
; Opcode starts are annotated; scalar operands and inline item-match rows remain data.

C1Sc5_00:
    ; Test current room.
    db $19, C1RoomIdStartStall
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorViewEnd
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1Washroom1IntroSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1PlainDoorView
    ; Show message 0.
    db $00, $1e ; Message Text0CMessage1E: ドアだ。[PAGE] / イヤな よかんがする。 / そとにでると なにか トラブルに / まきこまれそうだ。[END]
    ; Set object flag.
    db $17, C1Washroom1IntroSeen
    ; End script.
    db $ff

; Show the brief generic door description.
C1PlainDoorView:

C1Loc5_00:
    ; Show message 1.
    db $01, $c7 ; Message Text0FMessage47: ドアだ。[END]

; End the room-specific door view.
C1DoorViewEnd:

C1Loc5_01:
    ; End script.
    db $ff

; Open a closed door or report that it is already open.
OpenC1Door:

C1Sc5_01:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen

; Set the selected door state, refresh its view, and report it open.
C1DoorOpenReply:

C1Loc5_02:
    ; Set selected state and refresh.
    db $1a
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $00 ; Message Text10Message00: [OBJECT_WRAM:37C5]を あけた。[END]
    ; End script.
    db $ff

; Report that the door is already open.
C1DoorAlreadyOpen:

C1Sc5_02:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $01 ; Message Text10Message01: [OBJECT_WRAM:37C5]は あいている。[END]
    ; End script.
    db $ff

; Open door $3c when flag $27 is set; otherwise select door $49 for the butler's refusal.
OpenC1Door3C:

C1Sc5_03:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1ButlerDown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ButlerShutsDoor
    ; Set selected state and refresh.
    db $1a
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $00 ; Message Text10Message00: [OBJECT_WRAM:37C5]を あけた。[END]
    ; End script.
    db $ff

; Select door $49, set flag $b0, check exit $31, and show the butler shutting the door.
C1ButlerShutsDoor:

C1Loc5_03:
    ; Set first item type and ID.
    db $5c, $05, C1DoorIdMansionFrontDoor
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdMansionFrontDoor
    ; Show message 1.
    db $01, $aa ; Message Text0FMessage2A: バタン!!![PAGE] / おれの たいどが きに / いらなかったのか しつじは ドアを / しめてしまった。[END]
    ; End script.
    db $ff

; Require flag $5a to open door $06, unless it is already open.
OpenC1Door06:

C1Sc5_04:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1Door06Unlocked
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorLockedReply
    ; Jump to script.
    db $1c
    dw C1DoorOpenReply

; Require flag $5b to open door $14, unless it is already open.
OpenC1Door14:

C1Sc5_05:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1OfficeDoorUnlocked
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorLockedReply
    ; Jump to script.
    db $1c
    dw C1DoorOpenReply

; Require flag $5c to open door $1b, unless it is already open.
OpenC1Door1B:

C1Sc5_06:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1CarDoorUnlocked
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorLockedReply
    ; Jump to script.
    db $1c
    dw C1DoorOpenReply

; Require flag $5e to open door $38; flag $16 clear leads to the gunman's fatal encounter.
OpenC1ShadowDoor:

C1Sc5_07:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1ShadowDoorUnlocked
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorLockedReply
    ; Set selected state and refresh.
    db $1a
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $00 ; Message Text10Message00: [OBJECT_WRAM:37C5]を あけた。[END]
    ; Test object flag.
    db $16, C1ShadowShot
    ; Branch if result bit 0 is set.
    db $04
    dw C1ShadowDoorOpenEnd
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Set state bit.
    db $2f, C1StateAceOfficeGunmanVisible
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdAceOffice
    ; Wait sixty ticks.
    db $68
    ; Wait sixty ticks.
    db $68
    ; Show message 2.
    db $02, $25 ; Message Text10Message25: おとこだ! / じゅうこうを おれに むけている![END]
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Show message 1.
    db $01, $88 ; Message Text0FMessage08: やつは ピストルを もってたのか! / すっかり ゆだんしていた おれは / やられてしまった。[END]
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text10Message62: あなたは トイレの なかで / めざめてから てさぐりで / ここまできた・・・。[PAGE] / ・・・だが あなたは えいえんに / つちの したで ねむるハメに /...
    ; Set exit flag and end this action.
    db $48

; End the shadow-door opening script.
C1ShadowDoorOpenEnd:

C1Loc5_04:
    ; End script.
    db $ff

; Require flag $5f to open door $36, unless it is already open.
OpenC1Door36:

C1Sc5_08:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1DoctorDoorUnlocked
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorLockedReply
    ; Jump to script.
    db $1c
    dw C1DoorOpenReply

; Require flag $60 to open door $31, unless it is already open.
OpenC1Door31:

C1Sc5_09:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1BungalowUnlocked
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorLockedReply
    ; Jump to script.
    db $1c
    dw C1DoorOpenReply

; Open door $09 normally from room $07; elsewhere retain the closed-side refusal.
OpenC1OneWayDoor:

C1Sc5_0A:
    ; Test current room.
    db $19, C1RoomIdRackPassage
    ; Branch if result bit 0 is set.
    db $04
    dw OpenC1Door
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Show message 0.
    db $00, $68 ; Message Text0CMessage68: ・・・あかない。 / こちらからは あかないようだ。[END]
    ; End script.
    db $ff

; Close an open door or report that it is already closed.
CloseC1Door:

C1Sc5_0B:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorAlreadyClosed
    ; Clear selected state and refresh.
    db $1b
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $02 ; Message Text10Message02: [OBJECT_WRAM:37C5]を しめた。[END]
    ; End script.
    db $ff

; Report that the door is already closed.
C1DoorAlreadyClosed:

C1Loc5_05:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $03 ; Message Text10Message03: [OBJECT_WRAM:37C5]は しまっている。[END]
    ; End script.
    db $ff

; Close door $09 normally from room $07; elsewhere clear its view state and attribute bit 0.
CloseC1OneWayDoor:

C1Sc5_0C:
    ; Test current room.
    db $19, C1RoomIdRackPassage
    ; Branch if result bit 0 is set.
    db $04
    dw CloseC1Door
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorAlreadyClosed
    ; Clear selected state and refresh.
    db $37
    ; Clear attribute bit 0.
    db $09
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $02 ; Message Text10Message02: [OBJECT_WRAM:37C5]を しめた。[END]
    ; End script.
    db $ff

; Use door $00 toward room $01 from room $00, or back to room $00 from the other side.
MoveC1Door00:

C1Sc5_0D:
    ; Test current room.
    db $19, C1RoomIdStartStall
    ; Branch if result bit 0 is set.
    db $04
    dw C1Door00ToRoom01
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdStartStall
    ; Show message 0.
    db $00, $12 ; Message Text0CMessage12: トイレの なかだ。[END]
    ; End script.
    db $ff

; Check exit $01 and select the first or repeat washroom text using flag $30.
C1Door00ToRoom01:

C1Loc5_06:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdStartWashroom
    ; Test object flag.
    db $16, C1Washroom1IntroSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1Room01Repeat
    ; Show message 0.
    db $00, $1d ; Message Text0CMessage1D: せんめんじょの なかだ。 / ・・・よごれている。[PAGE] / きっと なんにちも / そうじをしていないのだろう。[END]
    ; Set object flag.
    db $17, C1Washroom1IntroSeen
    ; End script.
    db $ff

; Show the repeat description of the washroom.
C1Room01Repeat:

C1Loc5_7C:
    ; Show message 0.
    db $00, $23 ; Message Text0CMessage23: うすよごれた せんめんじょの / なかだ。[END]
    ; End script.
    db $ff

; Describe door $01 only from room $01.
LookC1Door01:

C1Sc5_0E:
    ; Test current room.
    db $19, C1RoomIdStartWashroom
    ; Branch if result bit 0 is set.
    db $04
    dw C1Door01View
    ; End script.
    db $ff

; Check whether the door is open, then select its description using flag $31.
C1Door01View:

C1Loc5_07:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1Hall02Seen
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorToHallView
    ; Show message 0.
    db $00, $1e ; Message Text0CMessage1E: ドアだ。[PAGE] / イヤな よかんがする。 / そとにでると なにか トラブルに / まきこまれそうだ。[END]
    ; End script.
    db $ff

; Describe the door leading to the hallway.
C1DoorToHallView:

C1Loc5_08:
    ; Show message 0.
    db $00, $24 ; Message Text0CMessage24: ろうかに つうじる ドアだ。[END]
    ; End script.
    db $ff

; Show the shared refusal for actions on passages without a door mechanism.
C1PassageActionRefusal:

C1Sc5_0F:
    ; Show message 0.
    db $00, $13 ; Message Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    ; End script.
    db $ff

; From room $01, check flag $17 before leaving for room $02; otherwise return toward room $01.
MoveC1Door01:

C1Sc5_10:
    ; Test current room.
    db $19, C1RoomIdStartWashroom
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Door00ToRoom01

; Require flag $17 before exit $02 and the first or repeat hallway description.
C1DoorToHall:

C1Loc5_09:
    ; Test object flag.
    db $16, C1Mirror1Seen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1RoomUnfinishedReply
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdWashroomHallway
    ; Test object flag.
    db $16, C1Hall02Seen
    ; Branch if result bit 0 is set.
    db $04
    dw C1Room02Repeat
    ; Show message 0.
    db $00, $26 ; Message Text0CMessage26: ろうかに でた。 / くらくて ジメジメしている。[END]
    ; Set object flag.
    db $17, C1Hall02Seen
    ; End script.
    db $ff

; Show the repeat hallway description.
C1Room02Repeat:

C1Loc5_7D:
    ; Show message 0.
    db $00, $2b ; Message Text0CMessage2B: ろうかだ。 / くうきが シメっている。[END]
    ; End script.
    db $ff

; Warn that something remains to be done in the room.
C1RoomUnfinishedReply:

C1Loc5_0A:
    ; Show message 1.
    db $01, $5e ; Message Text0EMessage5E: ・・・・・・なんだ? / このへやで やりのこしたことが / あるような きがする・・・。[END]
    ; End script.
    db $ff

; Describe door $02 from room $02, or reuse the hallway-side door description.
LookC1Door02:

C1Sc5_11:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test current room.
    db $19, C1RoomIdWashroomHallway
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorToHallView
    ; Show message 0.
    db $00, $28 ; Message Text0CMessage28: ドアだ。 / 「じょせいよう」と かいてある。[END]
    ; End script.
    db $ff

; Use door $02 toward room $03 from room $02, or return toward the hallway.
MoveC1Door02:

C1Sc5_12:
    ; Test current room.
    db $19, C1RoomIdWashroomHallway
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorToHall

; Check exit $03 and select the first or repeat washroom text using flag $32.
C1Door02ToRoom03:

C1Loc5_0B:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdWomenWashroom
    ; Test object flag.
    db $16, C1Washroom3Seen
    ; Branch if result bit 0 is set.
    db $04
    dw C1Room03Repeat
    ; Show message 0.
    db $00, $2c ; Message Text0CMessage2C: じょせいようの せんめんじょだ。 / おせじにも きれいとは いえない。[END]
    ; Set object flag.
    db $17, C1Washroom3Seen
    ; End script.
    db $ff

; Show the repeat women's washroom description.
C1Room03Repeat:

C1Loc5_7E:
    ; Show message 0.
    db $00, $32 ; Message Text0CMessage32: じょせいようの せんめんじょだ。[END]
    ; End script.
    db $ff

; Skip the view from room $05; otherwise describe door $03 according to flag $33.
LookC1Door03:

C1Sc5_13:
    ; Test current room.
    db $19, C1RoomIdBar
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Door03View
    ; End script.
    db $ff

; Check whether the door is open, then select its description using flag $33.
C1Door03View:

C1Loc5_0C:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1BarRoomSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorToBarView
    ; Show message 0.
    db $00, $29 ; Message Text0CMessage29: ちゃいろい ドアだ。 / どこへ つづくのだろう・・・[END]
    ; End script.
    db $ff

; Describe the door leading inside the bar or restaurant.
C1DoorToBarView:

C1Loc5_0D:
    ; Show message 2.
    db $02, $b2 ; Message Text0DMessage32: バーに つうじる ドアだ。[END]
    ; End script.
    db $ff

; Use door $03 toward room $05 from room $02, or return toward the hallway.
MoveC1Door03:

C1Sc5_14:
    ; Test current room.
    db $19, C1RoomIdWashroomHallway
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorToHall

; Check exit $05 and select the first or repeat bar description using flag $33.
C1Door03ToRoom05:

C1Loc5_0E:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdBar
    ; Test object flag.
    db $16, C1BarRoomSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1Room05Repeat
    ; Show message 0.
    db $00, $3b ; Message Text0CMessage3B: くらい だれもいない バーのなかだ。よるも かなり ふけているらしい。[END]
    ; Set object flag.
    db $17, C1BarRoomSeen
    ; End script.
    db $ff

; Show the repeat empty-bar description.
C1Room05Repeat:

C1Loc5_7F:
    ; Show message 0.
    db $00, $42 ; Message Text0CMessage42: だれもいない バーのなかだ。[END]
    ; End script.
    db $ff

; Describe the women's stall door only from room $03.
LookC1Door04:

C1Sc5_15:
    ; Test current room.
    db $19, C1RoomIdWomenWashroom
    ; Branch if result bit 0 is set.
    db $04
    dw C1Door04View
    ; End script.
    db $ff

; Check whether the door is open, then select its description using flag $34.
C1Door04View:

C1Loc5_0F:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1WomenStallSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1Door04ShortView
    ; Show message 0.
    db $00, $31 ; Message Text0CMessage31: じょせいようトイレへの いりぐちだ。だれか いるのだろうか・・・。[END]
    ; End script.
    db $ff

; Show the brief door description after the first stall visit.
C1Door04ShortView:

C1Loc5_10:
    ; Show message 1.
    db $01, $c7 ; Message Text0FMessage47: ドアだ。[END]
    ; End script.
    db $ff

; Use the stall door toward room $04 from room $03, or return toward room $03.
MoveC1Door04:

C1Sc5_16:
    ; Test current room.
    db $19, C1RoomIdWomenWashroom
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Door02ToRoom03
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdWomenStall
    ; Test object flag.
    db $16, C1WomenStallSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1Room04Repeat
    ; Show message 0.
    db $00, $33 ; Message Text0CMessage33: じょせいようの トイレだ。 / ざんねんだが だれもいない。[END]
    ; Set object flag.
    db $17, C1WomenStallSeen
    ; End script.
    db $ff

; Show the repeat women's stall description.
C1Room04Repeat:

C1Loc5_80:
    ; Show message 0.
    db $00, $39 ; Message Text0CMessage39: じょせいようの トイレだ。 / とても しずかだ。[END]
    ; End script.
    db $ff

; Describe the cellar door only from room $05.
LookC1CellarDoor:

C1Sc5_17:
    ; Test current room.
    db $19, C1RoomIdBar
    ; Branch if result bit 0 is set.
    db $04
    dw C1CellarDoorView
    ; End script.
    db $ff

; Show the cellar-door description unless the door is already open.
C1CellarDoorView:

C1Loc5_11:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Show message 0.
    db $00, $3e ; Message Text0CMessage3E: かいだんの したに ドアが・・・? / 「ワインセラー」と かいてある。[END]
    ; End script.
    db $ff

; Go toward the cellar from room $05, or return toward the bar from the other side.
MoveC1CellarDoor:

C1Sc5_18:
    ; Test current room.
    db $19, C1RoomIdBar
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Door03ToRoom05

; Set flag $03 when $04 is clear before continuing toward the cellar.
C1CellarEntryFlags:

C1Loc5_12:
    ; Test object flag.
    db $16, C1SpigotOpen
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorToCellar
    ; Set object flag.
    db $17, C1SpigotClosed

; Check exit $06 and choose the first or repeat cellar text using flag $35.
C1DoorToCellar:

C1Loc5_13:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdCellar
    ; Test object flag.
    db $16, C1CellarSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1Room06Repeat
    ; Show message 0.
    db $00, $49 ; Message Text0CMessage49: うすぎたない ワインセラーだ。 / くうきが にごっている。[END]
    ; Set object flag.
    db $17, C1CellarSeen
    ; End script.
    db $ff

; Show the repeat cellar description.
C1Room06Repeat:

C1Loc5_81:
    ; Show message 0.
    db $00, $52 ; Message Text0CMessage52: うすぎたない ワインセラーだ。[END]
    ; End script.
    db $ff

; Describe the front door from room $05 and its inward side elsewhere.
LookC1FrontDoor:

C1Sc5_19:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test current room.
    db $19, C1RoomIdBar
    ; Branch if result bit 0 is set.
    db $04
    dw C1FrontDoorView
    ; Show message 2.
    db $02, $b2 ; Message Text0DMessage32: バーに つうじる ドアだ。[END]
    ; End script.
    db $ff

; Show the front-door description.
C1FrontDoorView:

C1Loc5_14:
    ; Show message 0.
    db $00, $3f ; Message Text0CMessage3F: とおりに でる フロントドアだ。[END]
    ; End script.
    db $ff

; Go toward street room $11 from room $05, or return toward the bar.
MoveC1FrontDoor:

C1Sc5_1A:
    ; Test current room.
    db $19, C1RoomIdBar
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Door03ToRoom05

; Call room event $4a, check exit $11, and select street text using flag $36.
C1DoorToStreet11:

C1Loc5_15:
    ; Check Case I room event for the room argument.
    db $5e, C1RoomIdMuggerJoeStreet
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdJoeStreet
    ; Test object flag.
    db $16, C1JoeStreetSeen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Street11First
    ; Show message 2.
    db $02, $b9 ; Message Text0DMessage39: バーの まえの とおりだ。[END]
    ; End script.
    db $ff

; Show the first street description and set flag $36.
C1Street11First:

C1Loc5_82:
    ; Show message 2.
    db $02, $b1 ; Message Text0DMessage31: バーの まえの とおりだ。 / だれも いない。[END]
    ; Set object flag.
    db $17, C1JoeStreetSeen
    ; End script.
    db $ff

; Describe the staircase from room $05, choosing text with flag $37.
LookC1Stairs:

C1Sc5_1B:
    ; Test current room.
    db $19, C1RoomIdBar
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorViewEnd
    ; Test object flag.
    db $16, C1JoeUpHallSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1StairsShortView
    ; Show message 0.
    db $00, $3d ; Message Text0CMessage3D: 2かいへ つうじる かいだんらしい。[PAGE] / のぼってみたいが いまの おれの / すいじゃくした からだでは / むりかもしれない・・・。[END]
    ; End script.
    db $ff

; Use the upstairs path from room $05, or return toward the bar.
MoveC1Stairs:

C1Sc5_1C:
    ; Test current room.
    db $19, C1RoomIdBar
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Door03ToRoom05

; Enter upstairs normally from room $0d or with flag $25 set; otherwise play effect $18.
C1StairsEntryCheck:

C1Loc5_16:
    ; Test current room.
    db $19, C1RoomIdSecretaryOffice
    ; Branch if result bit 0 is set.
    db $04
    dw C1StairsToRoom0E
    ; Test object flag.
    db $16, C1MemoryRecovered
    ; Branch if result bit 0 is clear.
    db $05
    dw C1StairsEffect18

; Check exit $0e and choose the first or repeat upstairs-hall text using flag $37.
C1StairsToRoom0E:

C1Loc5_17:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdUpstairsHallway
    ; Test object flag.
    db $16, C1JoeUpHallSeen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Room0EFirst
    ; Show message 2.
    db $02, $aa ; Message Text0DMessage2A: 2かいの ろうかだ。[END]
    ; End script.
    db $ff

; Show the first upstairs-hall description and set flag $37.
C1Room0EFirst:

C1Loc5_83:
    ; Show message 2.
    db $02, $a3 ; Message Text0DMessage23: 2かいの ろうかだ。 / かべに ポスターが はってある。[END]
    ; Set object flag.
    db $17, C1JoeUpHallSeen
    ; End script.
    db $ff

; Check exit $0e, show the upstairs hall, and play effect $18 without setting flag $37.
C1StairsEffect18:

C1Loc5_18:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdUpstairsHallway
    ; Show message 2.
    db $02, $a3 ; Message Text0DMessage23: 2かいの ろうかだ。 / かべに ポスターが はってある。[END]
    ; Run scene effect.
    db $46, C1FxIdHeadacheUpstairs
    ; End script.
    db $ff

; Describe the closed wine rack by room, or report the rack open.
LookC1RackPassage:

C1Sc5_1D:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1RackAlreadyOpen
    ; Test current room.
    db $19, C1RoomIdCellar
    ; Branch if result bit 0 is set.
    db $04
    dw C1WineRackView
    ; Show message 0.
    db $00, $52 ; Message Text0CMessage52: うすぎたない ワインセラーだ。[END]
    ; End script.
    db $ff

; Describe the dusty wine rack and its unusually clean bottle.
C1WineRackView:

C1Loc5_19:
    ; Show message 0.
    db $00, $4e ; Message Text0CMessage4E: ワインの たなか・・・。 / ほこりを かぶった ワインで / いっぱいだ。[PAGE] / ・・・おや? / みぎの まんなかあたりに / みょうに あたらしいビンが・...
    ; End script.
    db $ff

; Report that the rack is already open.
C1RackAlreadyOpen:

C1Loc5_1A:
    ; Set text name 0.
    db $1e, $67
    ; Show message 2.
    db $02, $01 ; Message Text10Message01: [OBJECT_WRAM:37C5]は あいている。[END]
    ; End script.
    db $ff

; Open the rack from room $07 and refuse the action from the cellar side.
OpenC1RackPassage:

C1Sc5_1E:
    ; Test current room.
    db $19, C1RoomIdRackPassage
    ; Branch if result bit 0 is set.
    db $04
    dw OpenC1Door
    ; Show message 0.
    db $00, $14 ; Message Text0CMessage14: ・・・・・・むりか。[END]
    ; End script.
    db $ff

; Close the rack from either side, keeping the cellar-side attribute update.
CloseC1RackPassage:

C1Sc5_1F:
    ; Test current room.
    db $19, C1RoomIdRackPassage
    ; Branch if result bit 0 is set.
    db $04
    dw CloseC1Door
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1RackAlreadyClosed
    ; Set text name 0.
    db $1e, $67
    ; Show message 2.
    db $02, $02 ; Message Text10Message02: [OBJECT_WRAM:37C5]を しめた。[END]
    ; Clear selected state and refresh.
    db $37
    ; Set selected attribute bit 0.
    db $08
    ; End script.
    db $ff

; Report that the rack is already closed.
C1RackAlreadyClosed:

C1Loc5_1B:
    ; Set text name 0.
    db $1e, $67
    ; Show message 2.
    db $02, $03 ; Message Text10Message03: [OBJECT_WRAM:37C5]は しまっている。[END]
    ; End script.
    db $ff

; Use the rack passage toward room $07 from the cellar, or return toward the cellar.
MoveC1RackPassage:

C1Sc5_20:
    ; Test current room.
    db $19, C1RoomIdCellar
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CellarEntryFlags

; Check exit $07 and choose the first or repeat passage description using flag $38.
C1RackToRoom07:

C1Loc5_1C:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdRackPassage
    ; Test object flag.
    db $16, C1RackPassageSeen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Room07First
    ; Show message 0.
    db $00, $58 ; Message Text0CMessage58: うすぐらい ひみつの つうろだ。[END]
    ; End script.
    db $ff

; Show the first passage description and set flag $38.
C1Room07First:

C1Loc5_84:
    ; Show message 0.
    db $00, $54 ; Message Text0CMessage54: ひみつの つうろのようだ。 / なんのために こんなところを?[END]
    ; Set object flag.
    db $17, C1RackPassageSeen
    ; End script.
    db $ff

; Describe the casino door from room $07, otherwise report its closed state.
LookC1CasinoDoor:

C1Sc5_21:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test current room.
    db $19, C1RoomIdRackPassage
    ; Branch if result bit 0 is set.
    db $04
    dw C1CasinoDoorView
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $03 ; Message Text10Message03: [OBJECT_WRAM:37C5]は しまっている。[END]
    ; End script.
    db $ff

; Choose the first or repeat casino-door text using flag $3a.
C1CasinoDoorView:

C1Loc5_1D:
    ; Test object flag.
    db $16, C1CasinoSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1CasinoDoorShortView
    ; Show message 0.
    db $00, $56 ; Message Text0CMessage56: まるい もくせいの ドアだ。 / このドアの むこうには いったい / なにが あるというのか?[END]
    ; End script.
    db $ff

; Show the repeat casino-door description.
C1CasinoDoorShortView:

C1Loc5_1E:
    ; Show message 0.
    db $00, $59 ; Message Text0CMessage59: カジノに つうじる ドアだ。[END]
    ; End script.
    db $ff

; Use the casino door toward room $08 from room $07, or return toward room $07.
MoveC1CasinoDoor:

C1Sc5_22:
    ; Test current room.
    db $19, C1RoomIdRackPassage
    ; Branch if result bit 0 is clear.
    db $05
    dw C1RackToRoom07

; Check exit $08 and choose casino text using flag $3a.
C1DoorToCasino:

C1Loc5_1F:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdCasino
    ; Test object flag.
    db $16, C1CasinoSeen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CasinoFirstEntry
    ; Show message 0.
    db $00, $65 ; Message Text0CMessage65: だれもいない カジノの なかだ。[END]
    ; End script.
    db $ff

; Show the first casino description and set flag $3a.
C1CasinoFirstEntry:

C1Loc5_85:
    ; Show message 0.
    db $00, $5a ; Message Text0CMessage5A: カジノのようだ。 / なかは ひっそりと / しずまりかえっている。[END]
    ; Set object flag.
    db $17, C1CasinoSeen
    ; End script.
    db $ff

; Describe the shaft from room $07 or the upward ladder from the sewer side.
LookC1SewerLadder:

C1Sc5_23:
    ; Test current room.
    db $19, C1RoomIdRackPassage
    ; Branch if result bit 0 is clear.
    db $05
    dw C1LadderUpView
    ; Show message 0.
    db $00, $55 ; Message Text0CMessage55: したへ つうじる たてあなだ。 / はしごが ついている。[PAGE] / げすい どくとくの はなをつくようなにおいが のぼってくる。[END]
    ; End script.
    db $ff

; Describe the rusty ladder leading upward.
C1LadderUpView:

C1Loc5_20:
    ; Show message 1.
    db $01, $21 ; Message Text0EMessage21: うえに つうじる はしごだ。 / かなり さびついている。[END]
    ; End script.
    db $ff

; Use the ladder toward sewer room $3a from room $07, or return toward room $07.
MoveC1SewerLadder:

C1Sc5_24:
    ; Test current room.
    db $19, C1RoomIdRackPassage
    ; Branch if result bit 0 is clear.
    db $05
    dw C1RackToRoom07

; Check exit $3a and choose sewer text using flag $39.
C1LadderToSewer:

C1Loc5_21:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdRackLadderSewer
    ; Test object flag.
    db $16, C1Sewer3ASeen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1SewerFirstEntry

; Show the repeat sewer description.
C1SewerRepeatEntry:

C1Loc5_86:
    ; Show message 1.
    db $01, $24 ; Message Text0EMessage24: げすいどうの なかだ。[END]
    ; End script.
    db $ff

; Show the first sewer description and set flag $39.
C1SewerFirstEntry:

C1Loc5_87:
    ; Show message 1.
    db $01, $28 ; Message Text0EMessage28: げすいどうの なかだ。 / からだじゅうが へんな においに / そまって しまいそうだ・・・。[END]
    ; Set object flag.
    db $17, C1Sewer3ASeen

; End without further work; the first sewer-entry path also falls through here.
C1PassageEmptyScript:

C1Sc5_25:
    ; End script.
    db $ff

; Use the casino passage toward room $09 from room $08, or return toward the casino.
MoveC1CasinoPassage:

C1Sc5_26:
    ; Test current room.
    db $19, C1RoomIdCasino
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorToCasino

; Check exit $09 and describe the elevator entrance.
C1PassageToRoom09:

C1Loc5_22:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdCasinoLiftEntrance
    ; Show message 0.
    db $00, $69 ; Message Text0CMessage69: エレべータの まえだ。[END]
    ; End script.
    db $ff

; Report whether the elevator door is open or closed.
LookC1LiftDoor:

C1Sc5_27:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $03 ; Message Text10Message03: [OBJECT_WRAM:37C5]は しまっている。[END]
    ; End script.
    db $ff

; Report an already-open elevator door or the refusal to open it.
OpenC1SmallLiftDoor:

C1Sc5_28:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen

; Report that the elevator door will not open.
C1LiftDoorWontOpen:

C1Sc5_29:
    ; Show message 2.
    db $02, $a1 ; Message Text0DMessage21: あかないようだ。[END]
    ; End script.
    db $ff

; Report that the elevator door will not close.
CloseC1LiftDoor:

C1Sc5_2A:
    ; Show message 2.
    db $02, $a2 ; Message Text0DMessage22: しまらないようだ。[END]
    ; End script.
    db $ff

; Use elevator door $0c toward room $0a from room $09, or return toward room $09.
MoveC1LiftDoor0C:

C1Sc5_2B:
    ; Test current room.
    db $19, C1RoomIdCasinoLiftEntrance
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PassageToRoom09
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdCasinoLift
    ; Test object flag.
    db $16, C1SmallLiftSeen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1LiftRoom0AFirst
    ; Show message 0.
    db $00, $6f ; Message Text0CMessage6F: エレべータの なかだ。[END]
    ; End script.
    db $ff

; Show the first elevator description and set flag $3b.
C1LiftRoom0AFirst:

C1Loc5_88:
    ; Show message 0.
    db $00, $6b ; Message Text0CMessage6A: エレべータの なかだ。 / さて どこに いこうか・・・?[END]
    ; Set object flag.
    db $17, C1SmallLiftSeen
    ; End script.
    db $ff

; Check exit $0c and choose office text, with a separate hidden-elevator path from room $3f.
MoveC1OfficePassage:

C1Sc5_2C:
    ; Test current room.
    db $19, C1RoomIdHiddenOfficeLift
    ; Branch if result bit 0 is set.
    db $04
    dw C1HiddenLiftToOffice
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdCorpseOffice
    ; Test object flag.
    db $16, C1OfficeDescribed
    ; Branch if result bit 0 is set.
    db $04
    dw C1OfficeRepeatEntry
    ; Test object flag.
    db $16, C1HiddenLiftSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1OfficeRepeatEntry
    ; Show message 2.
    db $02, $81 ; Message Text0DMessage01: あっ!!! / ちまみれの おとこが つくえに / うつぶせに・・・?[PAGE] / うごかない・・・しっ しんでいる![PAGE] / ・・・おや? / なにかの お...
    ; Set object flag.
    db $17, C1OfficeDescribed
    ; End script.
    db $ff

; Show the repeat office description.
C1OfficeRepeatEntry:

C1Loc5_89:
    ; Show message 2.
    db $02, $93 ; Message Text0DMessage13: したいのある オフィスの なかだ。[END]
    ; End script.
    db $ff

; Check exit $0c from room $3f and choose office and sliding-wall text using flags $3c and $57.
C1HiddenLiftToOffice:

C1Loc5_23:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdCorpseOffice
    ; Test object flag.
    db $16, C1HiddenLiftSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1HiddenLiftOfficeRepeat
    ; Test object flag.
    db $16, C1OfficeDescribed
    ; Branch if result bit 0 is set.
    db $04
    dw C1HiddenLiftOfficeSeen
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $81 ; Message Text0DMessage01: あっ!!! / ちまみれの おとこが つくえに / うつぶせに・・・?[PAGE] / うごかない・・・しっ しんでいる![PAGE] / ・・・おや? / なにかの お...
    ; Show message 1.
    db $01, $02 ; Message Text0EMessage02: そのとき とつぜん ゴーッという / おとがした。[PAGE] / ふりむくと いま のってきた / エレべータが きえている! / なにが おこったんだ?[PAGE] ...
    ; Set object flag.
    db $17, C1HiddenLiftSeen
    ; End script.
    db $ff

; Show the repeat office description and the wall hiding the elevator.
C1HiddenLiftOfficeRepeat:

C1Loc5_8A:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $93 ; Message Text0DMessage13: したいのある オフィスの なかだ。[END]
    ; Show message 2.
    db $02, $a9 ; Message Text0DMessage29: ゴーッと いう おとと ともに / かべが スライドして エレべータを / かくしてしまった。[END]
    ; End script.
    db $ff

; Show the previously seen office and first sliding-wall explanation, then set flag $3c.
C1HiddenLiftOfficeSeen:

C1Loc5_8B:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $93 ; Message Text0DMessage13: したいのある オフィスの なかだ。[END]
    ; Show message 1.
    db $01, $02 ; Message Text0EMessage02: そのとき とつぜん ゴーッという / おとがした。[PAGE] / ふりむくと いま のってきた / エレべータが きえている! / なにが おこったんだ?[PAGE] ...
    ; Set object flag.
    db $17, C1HiddenLiftSeen
    ; End script.
    db $ff

; Use elevator door $0f toward room $0b from room $40, or return toward room $40.
MoveC1LiftDoor0F:

C1Sc5_2D:
    ; Test current room.
    db $19, C1RoomIdTopFloorLift
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorToLiftRoom40

; Check exit $0b and choose the room description using flag $3d.
C1LiftDoorToRoom0B:

C1Loc5_24:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdTopFloorRoom
    ; Test object flag.
    db $16, C1Room0BSeen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Room0BFirst
    ; Show message 0.
    db $00, $7c ; Message Text0CMessage7C: ぶきみな へやの なかだ。[END]
    ; End script.
    db $ff

; Show the first description of room $0b and set flag $3d.
C1Room0BFirst:

C1Loc5_8C:
    ; Show message 0.
    db $00, $72 ; Message Text0CMessage72: なんだ!? / このへやは・・・?[PAGE] / ぶきみな くうきが ただよっている。いったい なにをする へやなのか?[END]
    ; Set object flag.
    db $17, C1Room0BSeen
    ; End script.
    db $ff

; Check exit $40 and choose elevator text using flag $3b.
C1DoorToLiftRoom40:

C1Loc5_25:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdTopFloorLift
    ; Test object flag.
    db $16, C1SmallLiftSeen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1LiftRoom0AFirst
    ; Show message 0.
    db $00, $6f ; Message Text0CMessage6F: エレべータの なかだ。[END]
    ; End script.
    db $ff

; Describe window $10 from inside room $0b or from the fire escape, unless already open.
LookC1Window10:

C1Sc5_2E:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1WindowAlreadyOpen
    ; Test current room.
    db $19, C1RoomIdTopFloorRoom
    ; Branch if result bit 0 is set.
    db $04
    dw C1FireEscapeWindowView
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $ac ; Message Text0DMessage2C: へやに つうじる マドだ。[END]
    ; Show message 2.
    db $02, $4e ; Message Text10Message4E: ・・・イスのようなものが みえる。[END]
    ; End script.
    db $ff

; Describe the window's access to the fire escape.
C1FireEscapeWindowView:

C1Loc5_26:
    ; Show message 2.
    db $02, $87 ; Message Text0DMessage07: ひじょうかいだんに つうじる / マドだ。[END]
    ; End script.
    db $ff

; Open the selected window or report that it is already open.
OpenC1PassageWindow:

C1Sc5_2F:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1WindowAlreadyOpen
    ; Set selected state and refresh.
    db $1a
    ; Set text name 0.
    db $1e, $66
    ; Show message 2.
    db $02, $00 ; Message Text10Message00: [OBJECT_WRAM:37C5]を あけた。[END]
    ; End script.
    db $ff

; Report that the window is already open.
C1WindowAlreadyOpen:

C1Loc5_27:
    ; Set text name 0.
    db $1e, $66
    ; Show message 2.
    db $02, $01 ; Message Text10Message01: [OBJECT_WRAM:37C5]は あいている。[END]
    ; End script.
    db $ff

; Close the selected window or report that it is already closed.
CloseC1PassageWindow:

C1Sc5_30:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1WindowAlreadyClosed
    ; Clear selected state and refresh.
    db $1b
    ; Set text name 0.
    db $1e, $66
    ; Show message 2.
    db $02, $02 ; Message Text10Message02: [OBJECT_WRAM:37C5]を しめた。[END]
    ; End script.
    db $ff

; Report that the window is already closed.
C1WindowAlreadyClosed:

C1Loc5_28:
    ; Set text name 0.
    db $1e, $66
    ; Show message 2.
    db $02, $03 ; Message Text10Message03: [OBJECT_WRAM:37C5]は しまっている。[END]
    ; End script.
    db $ff

; Use window $10 toward fire-escape room $0f from room $0b, or return toward room $0b.
MoveC1Window10:

C1Sc5_31:
    ; Test current room.
    db $19, C1RoomIdTopFloorRoom
    ; Branch if result bit 0 is clear.
    db $05
    dw C1LiftDoorToRoom0B

; Check exit $0f and show the third-floor fire-escape description.
C1WindowToFireEscape0F:

C1Loc5_29:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdFireEscape3
    ; Show message 2.
    db $02, $ab ; Message Text0DMessage2B: 3かいの ひじょうかいだんの / うえだ。[END]

; End the fire-escape view; the preceding window traversal also falls through here.
C1FireEscapeEmptyView:

C1Sc5_32:
    ; End script.
    db $ff

; Use passage $11 toward room $10 from room $0f, or return toward room $0f.
MoveC1FireEscape11:

C1Sc5_33:
    ; Test current room.
    db $19, C1RoomIdFireEscape3
    ; Branch if result bit 0 is clear.
    db $05
    dw C1WindowToFireEscape0F
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdFireEscape2
    ; Show message 2.
    db $02, $ae ; Message Text0DMessage2E: 2かいの ひじょうかいだんの / うえだ。[END]
    ; End script.
    db $ff

; Describe window $12 from office room $0c or its outer side, unless already open.
LookC1Window12:

C1Sc5_34:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1WindowAlreadyOpen
    ; Test current room.
    db $19, C1RoomIdCorpseOffice
    ; Branch if result bit 0 is set.
    db $04
    dw C1FireEscapeWindowView
    ; Show message 2.
    db $02, $b0 ; Message Text0DMessage30: へやに つうじる マドだ。 / へやの なかは よくみえない。[END]
    ; End script.
    db $ff

; Use window $12 toward room $10 from office room $0c, or return toward the office.
MoveC1Window12:

C1Sc5_35:
    ; Test current room.
    db $19, C1RoomIdCorpseOffice
    ; Branch if result bit 0 is clear.
    db $05
    dw MoveC1OfficePassage
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdFireEscape2
    ; Show message 2.
    db $02, $ae ; Message Text0DMessage2E: 2かいの ひじょうかいだんの / うえだ。[END]

; End the fire-escape movement or unavailable view.
C1FireEscapeMoveEnd:

C1Loc5_2A:
    ; End script.
    db $ff

; From alley room $16, describe the unreachable fire escape.
LookC1FireEscape13:

C1Sc5_36:
    ; Test current room.
    db $19, C1RoomIdJoeAlley
    ; Branch if result bit 0 is clear.
    db $05
    dw C1FireEscapeMoveEnd
    ; Show message 2.
    db $02, $d3 ; Message Text0DMessage53: ひじょうかいだんだ。 / たかすぎて あがるのは むりだ。[END]
    ; End script.
    db $ff

; Descend toward the alley from room $10, or report that the fire escape is too high.
MoveC1FireEscape13:

C1Sc5_37:
    ; Test current room.
    db $19, C1RoomIdFireEscape2
    ; Branch if result bit 0 is set.
    db $04
    dw C1FireEscapeToAlley
    ; Show message 2.
    db $02, $d3 ; Message Text0DMessage53: ひじょうかいだんだ。 / たかすぎて あがるのは むりだ。[END]
    ; End script.
    db $ff

; Call room event $1e, check exit $16, and show the dark alley.
C1FireEscapeToAlley:

C1Loc5_2B:
    ; Check Case I room event for the room argument.
    db $5e, C1RoomIdAlleyMuggerEncounter
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdJoeAlley
    ; Show message 2.
    db $02, $d1 ; Message Text0DMessage51: よこちょうの うすぐらい ろじだ。[END]
    ; End script.
    db $ff

; Report door $14 open, closed with flag $5b set, or locked otherwise.
LookC1Door14:

C1Sc5_38:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1OfficeDoorUnlocked
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyClosed

; Show the shared locked-door refusal.
C1DoorLockedReply:

C1Loc5_2C:
    ; Show message 0.
    db $00, $43 ; Message Text0CMessage43: おしても ひいても びくともしない。カギが かかっているらしい。[END]
    ; End script.
    db $ff

; Use door $14 toward secretary room $0d from office room $0c, or return toward the office.
MoveC1Door14:

C1Sc5_39:
    ; Test current room.
    db $19, C1RoomIdCorpseOffice
    ; Branch if result bit 0 is clear.
    db $05
    dw MoveC1OfficePassage

; Check exit $0d and choose secretary-office text using flag $3e.
C1DoorToSecretary:

C1Loc5_2D:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdSecretaryOffice
    ; Test object flag.
    db $16, C1SecretaryRoomSeen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1SecretaryFirstEntry
    ; Show message 2.
    db $02, $a0 ; Message Text0DMessage20: ひしょの オフィスの なかだ。[END]
    ; End script.
    db $ff

; Show the first secretary-office description and set flag $3e.
C1SecretaryFirstEntry:

C1Loc5_8D:
    ; Show message 2.
    db $02, $97 ; Message Text0DMessage17: うけつけか ひしょの へやらしい。 / やすものの こうすいの においが / ただよっている。[END]
    ; Set object flag.
    db $17, C1SecretaryRoomSeen
    ; End script.
    db $ff

; Skip the view from room $0d; elsewhere reuse the open-or-closed door view.
LookC1Door15:

C1Sc5_3A:
    ; Test current room.
    db $19, C1RoomIdSecretaryOffice
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorViewEnd
    ; Jump to script.
    db $1c
    dw LookC1LiftDoor

; Use door $15 toward the stair entry from room $0d, or return toward the secretary's office.
MoveC1Door15:

C1Sc5_3B:
    ; Test current room.
    db $19, C1RoomIdSecretaryOffice
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorToSecretary
    ; Jump to script.
    db $1c
    dw C1StairsEntryCheck

; Use passage $16 toward the alley from room $11, or return toward street room $11.
MoveC1AlleyPassage16:

C1Sc5_3C:
    ; Test current room.
    db $19, C1RoomIdJoeStreet
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorToStreet11
    ; Jump to script.
    db $1c
    dw C1FireEscapeToAlley

; Use passage $17 toward newsstand room $12 from room $11, or return toward room $11.
MoveC1NewsstandPassage:

C1Sc5_3D:
    ; Test current room.
    db $19, C1RoomIdJoeStreet
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorToStreet11

; Call room event $4b, check exit $12, and choose newsstand text using flag $3f.
C1PassageToNewsstand:

C1Loc5_2E:
    ; Check Case I room event for the room argument.
    db $5e, C1RoomIdMuggerNewsstand
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdNewsstandStreet
    ; Test object flag.
    db $16, C1NewsstandSeen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1NewsstandFirstEntry
    ; Show message 2.
    db $02, $c2 ; Message Text0DMessage42: しんぶんうりばの まえの とおりだ。[END]
    ; End script.
    db $ff

; Show the first newsstand-street description and set flag $3f.
C1NewsstandFirstEntry:

C1Loc5_8E:
    ; Show message 2.
    db $02, $bd ; Message Text0DMessage3D: しんぶんうりばの まえの とおりだ。[PAGE] / よが ふけているにも かかわらず / しょうばいを している おとこが / いる。[PAGE] / てがかりに なる...
    ; Set object flag.
    db $17, C1NewsstandSeen

; End the passage view; the first newsstand-entry path also falls through here.
C1NewsstandEmptyView:

C1Sc5_3E:
    ; End script.
    db $ff

; Describe the alley's end from room $16, or the dark alley from the other side.
LookC1AlleyPassage16:

C1Sc5_3F:
    ; Test current room.
    db $19, C1RoomIdJoeAlley
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DarkAlleyView
    ; Show message 2.
    db $02, $d4 ; Message Text0DMessage54: ろじの つきあたりだ。 / とおりに つづいている。[END]
    ; End script.
    db $ff

; Show the dark-alley description.
C1DarkAlleyView:

C1Loc5_2F:
    ; Show message 2.
    db $02, $d1 ; Message Text0DMessage51: よこちょうの うすぐらい ろじだ。[END]
    ; End script.
    db $ff

; Describe manhole $18 from street room $11 or the sewer side, unless already open.
LookC1Manhole18:

C1Sc5_40:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1ManholeAlreadyOpen
    ; Test current room.
    db $19, C1RoomIdJoeStreet
    ; Branch if result bit 0 is set.
    db $04
    dw C1StreetManholeView
    ; Show message 1.
    db $01, $32 ; Message Text0EMessage32: マンホールの ふただ。 / このうえは とおりだろうか・・・。[END]
    ; End script.
    db $ff

; Describe the manhole cover in the street.
C1StreetManholeView:

C1Loc5_30:
    ; Show message 2.
    db $02, $bc ; Message Text0DMessage3C: マンホールだ。 / したは げすいどうか・・・。[END]
    ; End script.
    db $ff

; Open the manhole or report that it is already open.
OpenC1Manhole:

C1Sc5_41:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1ManholeAlreadyOpen
    ; Set selected state and refresh.
    db $1a
    ; Set text name 0.
    db $1e, $ba
    ; Show message 2.
    db $02, $00 ; Message Text10Message00: [OBJECT_WRAM:37C5]を あけた。[END]
    ; End script.
    db $ff

; Report that the manhole is already open.
C1ManholeAlreadyOpen:

C1Loc5_31:
    ; Set text name 0.
    db $1e, $ba
    ; Show message 2.
    db $02, $01 ; Message Text10Message01: [OBJECT_WRAM:37C5]は あいている。[END]
    ; End script.
    db $ff

; Close the manhole or report that it is already closed.
CloseC1Manhole:

C1Sc5_42:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ManholeAlreadyClosed
    ; Clear selected state and refresh.
    db $1b
    ; Set text name 0.
    db $1e, $ba
    ; Show message 2.
    db $02, $02 ; Message Text10Message02: [OBJECT_WRAM:37C5]を しめた。[END]
    ; End script.
    db $ff

; Report that the manhole is already closed.
C1ManholeAlreadyClosed:

C1Loc5_32:
    ; Set text name 0.
    db $1e, $ba
    ; Show message 2.
    db $02, $03 ; Message Text10Message03: [OBJECT_WRAM:37C5]は しまっている。[END]
    ; End script.
    db $ff

; Use manhole $18 toward sewer room $1d from street room $11, or return toward the street.
MoveC1Manhole18:

C1Sc5_43:
    ; Test current room.
    db $19, C1RoomIdJoeStreet
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorToStreet11

; Check exit $1d before the shared sewer-entry description.
C1ManholeToRoom1D:

C1Loc5_33:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdJoeStreetUpperSewer

; Choose sewer-entry text using flag $40 and set it on the first description.
C1ManholeSewerText:

C1Loc5_8F:
    ; Test object flag.
    db $16, C1ManholeSewerSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1SewerRepeatEntry
    ; Show message 1.
    db $01, $31 ; Message Text0EMessage31: げすいどうの なかだ。 / じめじめしている。[END]
    ; Set object flag.
    db $17, C1ManholeSewerSeen

; End the empty passage view or the first manhole-entry description.
C1SewerEntryEnd:

C1Sc5_44:
    ; End script.
    db $ff

; Use passage $19 toward police-station room $17, or return toward street room $11.
MoveC1PolicePassage:

C1Sc5_45:
    ; Test current room.
    db $19, C1RoomIdPoliceFront
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PassageToPolice
    ; Jump to script.
    db $1c
    dw C1DoorToStreet11

; Call room event $20, check exit $17, and show the police-station exterior.
C1PassageToPolice:

C1Loc5_34:
    ; Check Case I room event for the room argument.
    db $5e, C1RoomIdArmedWomanEncounter
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdPoliceFront
    ; Show message 2.
    db $02, $d6 ; Message Text0DMessage56: けいさつの まえの とおりだ。[END]

; End the empty passage view or the police-station exterior description.
C1PoliceEntryEnd:

C1Sc5_46:
    ; End script.
    db $ff

; Use passage $1a toward car-rear room $22 from room $11, or return toward the street.
MoveC1CarRearPassage:

C1Sc5_47:
    ; Test current room.
    db $19, C1RoomIdJoeStreet
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorToStreet11
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdCarRear
    ; Test object flag.
    db $16, C1CarRearSeen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CarRearFirstEntry
    ; Show message 2.
    db $02, $f6 ; Message Text0DMessage76: べンツの トランクの まえだ。[END]
    ; End script.
    db $ff

; Show the first car-rear description and set flag $41.
C1CarRearFirstEntry:

C1Loc5_90:
    ; Show message 2.
    db $02, $f1 ; Message Text0DMessage71: べンツの うしろに まわった。 / トランクの まえだ。[END]
    ; Set object flag.
    db $17, C1CarRearSeen
    ; End script.
    db $ff

; Describe the car door only from room $11, unless already open.
LookC1CarDoor1B:

C1Sc5_48:
    ; Test current room.
    db $19, C1RoomIdJoeStreet
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CarDoorViewEnd
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Show message 2.
    db $02, $b5 ; Message Text0DMessage35: べンツの ドアだ。[END]

; End the car-door view.
C1CarDoorViewEnd:

C1Loc5_35:
    ; End script.
    db $ff

; Use the car door toward room $23 from room $11, or return toward the street.
MoveC1CarDoor1B:

C1Sc5_49:
    ; Test current room.
    db $19, C1RoomIdJoeStreet
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorToStreet11
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdLuxuryCar
    ; Test object flag.
    db $16, C1CarInteriorSeen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CarInteriorFirstEntry
    ; Show message 2.
    db $02, $82 ; Message Text0DMessage02: べンツの なかだ。[END]
    ; End script.
    db $ff

; Show the first luxury-car description and set flag $42.
C1CarInteriorFirstEntry:

C1Loc5_91:
    ; Show message 1.
    db $01, $00 ; Message Text0EMessage00: べンツの なかだ。 / これといって かわったことは / ないようだ。[END]
    ; Set object flag.
    db $17, C1CarInteriorSeen

; End the empty passage view or the first car-interior description.
C1CarInteriorEntryEnd:

C1Sc5_4A:
    ; End script.
    db $ff

; Use passage $1c toward gun-shop street room $13 from room $12, or return toward the newsstand.
MoveC1GunShopStreet:

C1Sc5_4B:
    ; Test current room.
    db $19, C1RoomIdNewsstandStreet
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PassageToNewsstand

; Run room events $4c and $1f when flag $a8 is clear before checking exit $13.
C1GunShopStreetEvents:

C1Loc5_36:
    ; Test object flag.
    db $16, C1BumEventActive
    ; Branch if result bit 0 is set.
    db $04
    dw C1GunShopStreetEntry
    ; Check Case I room event for the room argument.
    db $5e, C1RoomIdMuggerGunShopStreet
    ; Check Case I room event for the room argument.
    db $5e, C1RoomIdBumEncounter

; Check exit $13, clear flag $a8, and retain the following result-based text branch.
C1GunShopStreetEntry:

C1Loc5_37:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdGunShopStreet
    ; Clear object flag.
    db $18, C1BumEventActive
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunShopStreetLong
    ; Show message 2.
    db $02, $cf ; Message Text0DMessage4F: ガンショップの まえの とおりだ。[END]
    ; End script.
    db $ff

; Show the longer gun-shop street description and set flag $43.
C1GunShopStreetLong:

C1Loc5_92:
    ; Show message 2.
    db $02, $cb ; Message Text0DMessage4B: ガンショップの まえの とおりだ。 / おおきな かんばんが でている。[END]
    ; Set object flag.
    db $17, $43

; End the empty passage view or the longer gun-shop street description.
C1GunShopStreetEnd:

C1Sc5_4C:
    ; End script.
    db $ff

; Use passage $1d toward Peoria room $14 from room $13, or return toward the gun shop.
MoveC1PeoriaPassage1D:

C1Sc5_4D:
    ; Test current room.
    db $19, C1RoomIdGunShopStreet
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunShopStreetEvents

; Call room event $4d, check exit $14, and test flag $7a for the initial cab description.
C1PassageToPeoria14:

C1Loc5_38:
    ; Check Case I room event for the room argument.
    db $5e, C1RoomIdMuggerPeoria
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdPeoriaBlueCabStop
    ; Test object flag.
    db $16, C1PeoriaStopKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BlueCabStreetInit

; Show the Peoria Street description without a cab name.
C1PeoriaPlainView:

C1Loc5_93:
    ; Show message 2.
    db $02, $d0 ; Message Text0DMessage50: ぺオリアどおりだ。[END]
    ; End script.
    db $ff

; Describe the blue cab on Peoria Street, add quick-list value $a3, and set flags $7a and $44.
C1BlueCabStreetInit:

C1Loc5_94:
    ; Set text name 0.
    db $1e, $b1
    ; Show message 2.
    db $02, $0b ; Message Text10Message0B: ぺオリアどおりだ。 / [OBJECT_WRAM:37C5]が とまっている。[END]
    ; Add quick-list value.
    db $42, $a3
    ; Set object flag.
    db $17, C1PeoriaStopKnown
    ; Set object flag.
    db $17, $44
    ; End script.
    db $ff

; Describe the gun-shop entrance outside room $25, unless the door is already open.
LookC1GunShopDoor:

C1Sc5_4E:
jr_006_77a4:
    ; Test current room.
    db $19, C1RoomIdGunShop
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorViewEnd
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Show message 2.
    db $02, $cd ; Message Text0DMessage4D: ガンショップの いりぐちの ドアだ。とじている。[END]
    ; End script.
    db $ff

; Use the shop door toward room $25 from room $13, or return toward the gun-shop street.
MoveC1GunShopDoor:

C1Sc5_4F:
    ; Test current room.
    db $19, C1RoomIdGunShopStreet
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunShopStreetEvents
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdGunShop
    ; Test object flag.
    db $16, C1GunShopSeen
    ; Branch if result bit 0 is clear.
    db $05
    dw C1GunShopFirstEntry
    ; Show message 2.
    db $02, $26 ; Message Text10Message26: ガンショップの なかだ。[END]
    ; End script.
    db $ff

; Show the first gun-shop interior description and set flag $45.
C1GunShopFirstEntry:

C1Loc5_95:
    ; Show message 1.
    db $01, $10 ; Message Text0EMessage10: ガンショップの なかだ。 / カウンターに ふとった やさしそうなおとこが たっている。[END]
    ; Set object flag.
    db $17, C1GunShopSeen

; End the empty passage view or the first gun-shop interior description.
C1GunShopEntryEnd:

C1Sc5_50:
    ; End script.
    db $ff

; Use passage $1f toward room $15 from room $14, or return toward room $14.
MoveC1PeoriaPassage1F:

C1Sc5_51:
    ; Test current room.
    db $19, C1RoomIdPeoriaBlueCabStop
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PassageToPeoria14

; Check exit $15 and show the yellow-cab description only when flag $46 is set.
C1PassageToPeoria15:

C1Loc5_39:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdPeoriaYellowCabStop
    ; Test object flag.
    db $16, $46
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PeoriaPlainView
    ; Set text name 0.
    db $1e, $b2
    ; Show message 2.
    db $02, $0b ; Message Text10Message0B: ぺオリアどおりだ。 / [OBJECT_WRAM:37C5]が とまっている。[END]
    ; End script.
    db $ff

; Describe the closed police-station door unless already open.
LookC1PoliceDoor:

C1Sc5_52:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Show message 2.
    db $02, $d8 ; Message Text0DMessage58: けいさつしょの ドアだ。 / しまっている。[END]

; End the empty pit view or the police-door description.
C1PoliceDoorViewEnd:

C1Sc5_53:
    ; End script.
    db $ff

; Open the selected door, then retain the result, recovery, gun-evidence, item, and flag checks.
EnterC1PoliceStation:

C1Sc5_54:
    ; Set selected state and refresh.
    db $1a
    ; Wait sixty ticks.
    db $68
    ; Set text name 0.
    db $1e, $13
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Door02ToRoom03
    ; Test object flag.
    db $16, C1MemoryRecovered
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PoliceAmnesiaEnd
    ; Test object flag.
    db $16, C1Gun1Placed
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PoliceGunEvidenceEnd
    ; Test item flag.
    db $52, C1ItemMemo
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PoliceCheckItems
    ; Test property 4 bit 0.
    db $5d, $08
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PoliceCheckClueFlags
    ; Test item flag.
    db $52, C1ItemLetter1
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PoliceCheckClueFlags
    ; Test object flag.
    db $16, C1MapDisposed
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PoliceMissingCluesEnd
    ; Test object flag.
    db $16, C1File5Disposed
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PoliceMissingCluesEnd
    ; Test object flag.
    db $16, C1Note1Disposed
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PoliceMissingCluesEnd
    ; Finish Case I scene effect.
    db $5a, C1FxIdCaseSolved
    ; End script.
    db $ff
    ; Unreferenced from indexed roots in the explicit script graph.
    ; Show message 2.
    db $02, $63 ; Message Text10Message63: あけなければ いどうできない![END]
    ; End script.
    db $ff

; Test flags $a2, $a3, and $a4 before choosing the evidence ending.
C1PoliceCheckClueFlags:

C1Loc5_96:
    ; Test object flag.
    db $16, C1MapDisposed
    ; Branch if result bit 0 is set.
    db $04
    dw C1PoliceLifeSentence
    ; Test object flag.
    db $16, C1File5Disposed
    ; Branch if result bit 0 is set.
    db $04
    dw C1PoliceLifeSentence
    ; Test object flag.
    db $16, C1Note1Disposed
    ; Branch if result bit 0 is set.
    db $04
    dw C1PoliceLifeSentence
    ; Jump to script.
    db $1c
    dw C1PoliceTooLittleProof

; Test bit 0 of property $08 and item IDs $1e, $12, $1b, and $0e in the original order.
C1PoliceCheckItems:

C1Loc5_97:
    ; Test property 4 bit 0.
    db $5d, $08
    ; Branch if result bit 0 is set.
    db $04
    dw C1PoliceCheckClueFlags
    ; Test item flag.
    db $52, C1ItemLetter1
    ; Branch if result bit 0 is set.
    db $04
    dw C1PoliceCheckClueFlags
    ; Test item flag.
    db $52, C1ItemMap
    ; Branch if result bit 0 is set.
    db $04
    dw C1PoliceLifeSentence
    ; Test item flag.
    db $52, C1ItemFile5
    ; Branch if result bit 0 is set.
    db $04
    dw C1PoliceLifeSentence
    ; Test item flag.
    db $52, C1ItemNote1
    ; Branch if result bit 0 is set.
    db $04
    dw C1PoliceLifeSentence

; Show the insufficient-evidence verdict and prison sentence.
C1PoliceTooLittleProof:

C1Loc5_98:
    ; Finish Case I scene effect.
    db $5a, C1FxIdArrest
    ; Hold text; consume the Case I extra argument.
    db $3f, $03
    ; Show message 0.
    db $00, $2a ; Message Text0CMessage2A: あなたは けいさつしょに いる。[PAGE] / けいさつは よろこんで あなたを / むかえた。[PAGE] / かれらは あなたの はなしに / たいへん きょうみを...
    ; Show message 0.
    db $00, $5c ; Message Text0CMessage5C: しかし スタンウッドと ビッカースにようぎを なげかけるには あまりにもしょうこが ふそくしていた。[END]
    ; Show message 1.
    db $01, $fd ; Message Text0FMessage7D: シーゲルの さつじんと ふじんの / ゆうかいを ふたりが やったのでは / ないとすれば ぎわくが あなたに / かかるのは とうぜんのことだった。[PAGE] / さ...
    ; Show message 1.
    db $01, $fc ; Message Text0FMessage7C: そのけっか あなたは ちょうえき / 10ねんの はんけつを うけた。[PAGE] / ・・・あなたには てつごうしが / まっている・・・。[END]
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Show the gun-evidence conviction and end the action.
C1PoliceGunEvidenceEnd:

C1Loc5_3A:
    ; Finish Case I scene effect.
    db $5a, C1FxIdArrest
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 1.
    db $01, $fa ; Message Text0FMessage7A: ガチャッ・・・! / あなたは たいほされてしまった。[PAGE] / けいさつは あなたの はなしに / きょうみをもち それを もとに / ゆうかいと さつじんについ...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Show the incriminating-evidence verdict and life sentence.
C1PoliceLifeSentence:

C1Loc5_99:
    ; Finish Case I scene effect.
    db $5a, C1FxIdArrest
    ; Hold text; consume the Case I extra argument.
    db $3f, $03
    ; Show message 0.
    db $00, $2a ; Message Text0CMessage2A: あなたは けいさつしょに いる。[PAGE] / けいさつは よろこんで あなたを / むかえた。[PAGE] / かれらは あなたの はなしに / たいへん きょうみを...
    ; Show message 0.
    db $00, $5c ; Message Text0CMessage5C: しかし スタンウッドと ビッカースにようぎを なげかけるには あまりにもしょうこが ふそくしていた。[END]
    ; Show message 0.
    db $00, $5b ; Message Text0CMessage5B: それどころか あなたにも おおきな / ようぎが かかった。[PAGE] / シーゲルの さつがいや ふじんの / ゆうかいを じっさいに おこなったとうたがわれるに じ...
    ; Show message 1.
    db $01, $fe ; Message Text0FMessage7E: はんけつは 「むきちょうえき」[PAGE] / いっしょう はいいろの かべを / みつめながら くらさなければ / ならなくなった・・・。[END]
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Show the three-pieces-of-evidence account followed by Ace's conviction and prison sentence.
C1PoliceMissingCluesEnd:

C1Loc5_9A:
    ; Finish Case I scene effect.
    db $5a, C1FxIdArrest
    ; Hold text; consume the Case I extra argument.
    db $3f, $03
    ; Show message 0.
    db $00, $2a ; Message Text0CMessage2A: あなたは けいさつしょに いる。[PAGE] / けいさつは よろこんで あなたを / むかえた。[PAGE] / かれらは あなたの はなしに / たいへん きょうみを...
    ; Show message 0.
    db $00, $3a ; Message Text0CMessage3A: あなたの はなしと 3つの / しょうこひんは スタンウッドと / ビッカースに おおきな ようぎの / かげを なげかけた。[PAGE] / しかし それは ぜったいの...
    ; Show message 0.
    db $00, $5b ; Message Text0CMessage5B: それどころか あなたにも おおきな / ようぎが かかった。[PAGE] / シーゲルの さつがいや ふじんの / ゆうかいを じっさいに おこなったとうたがわれるに じ...
    ; Show message 1.
    db $01, $fc ; Message Text0FMessage7C: そのけっか あなたは ちょうえき / 10ねんの はんけつを うけた。[PAGE] / ・・・あなたには てつごうしが / まっている・・・。[END]
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Show the arrest ending while Ace's memory has not recovered.
C1PoliceAmnesiaEnd:

C1Loc5_3B:
    ; Finish Case I scene effect.
    db $5a, C1FxIdArrest
    ; Show message 1.
    db $01, $fb ; Message Text0FMessage7B: ガチャッ・・・! / あなたは たいほされてしまった。[PAGE] / けいかんから たくさんの しつもんをされた。[PAGE] / しかし きおくのない おとこに / ...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Check exit $18, show the construction-pit fall, and play the death ending.
MoveC1ConstructionPit:

C1Sc5_55:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdConstructionPit
    ; Show message 2.
    db $02, $da ; Message Text0DMessage5A: うわーっ![PAGE] / いきなり こうじちゅうの あなに / おちてしまった。[END]
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text10Message62: あなたは トイレの なかで / めざめてから てさぐりで / ここまできた・・・。[PAGE] / ・・・だが あなたは えいえんに / つちの したで ねむるハメに /...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Describe manhole $22 from alley room $16 or the sewer side, unless already open.
LookC1Manhole22:

C1Sc5_56:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1ManholeAlreadyOpen
    ; Test current room.
    db $19, C1RoomIdJoeAlley
    ; Branch if result bit 0 is set.
    db $04
    dw C1StreetManholeView
    ; Show message 1.
    db $01, $32 ; Message Text0EMessage32: マンホールの ふただ。 / このうえは とおりだろうか・・・。[END]
    ; End script.
    db $ff

; Use manhole $22 toward sewer room $3d from alley room $16, or return toward the alley.
MoveC1Manhole22:

C1Sc5_57:
    ; Test current room.
    db $19, C1RoomIdJoeAlley
    ; Branch if result bit 0 is clear.
    db $05
    dw C1FireEscapeToAlley

; Check exit $3d and reuse the shared manhole sewer text.
C1ManholeToRoom3D:

C1Loc5_3C:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdJoeAlleyUpperSewer
    ; Jump to script.
    db $1c
    dw C1ManholeSewerText

; Describe the blue cab outside its interior room $26.
LookC1BlueCab26:

C1Sc5_58:
    ; Test current room.
    db $19, C1RoomIdBlueCabPeoria
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BlueCabExteriorView
    ; End script.
    db $ff

; Show the blue cab waiting for passengers.
C1BlueCabExteriorView:

C1Loc5_3D:
    ; Set text name 0.
    db $1e, $b1
    ; Show message 2.
    db $02, $0c ; Message Text10Message0C: [OBJECT_WRAM:37C5]だ。 / うんてんしゅが のっている。 / きゃくを まっているようだ。[END]
    ; End script.
    db $ff

; Enter blue-cab room $26 or handle its exit and fare checks.
MoveC1BlueCab26:

C1Sc5_59:
    ; Test current room.
    db $19, C1RoomIdBlueCabPeoria
    ; Branch if result bit 0 is set.
    db $04
    dw C1BlueCabExit26
    ; Clear state bit.
    db $30, C1StateYellowCabView
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdBlueCabPeoria
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $39 ; Message Text0EMessage39: ブルータクシーの なかに はいった。うんてんしゅは イライラしている / ようだ。[END]
    ; Test object flag.
    db $16, C1BlueCabDebt
    ; Branch if result bit 0 is set.
    db $04
    dw C1BlueCabLoanReminder
    ; Resume text.
    db $45
    ; End script.
    db $ff

; Show the driver's reminder about the money previously lent.
C1BlueCabLoanReminder:

C1Loc5_9B:
jr_006_78b3:
    ; Show message 2.
    db $02, $6e ; Message Text10Message6E: くちもとを ヒクヒクさせながら / うんてんしゅは いった。[PAGE] / 「おきゃくさん! /  このまえ かした かねを けえして くれねえと こまるぜ!」[END]
    ; End script.
    db $ff

; Check flags $83, $82, and $84 before the exit, fare warning, or deferred-payment path.
C1BlueCabExit26:

C1Loc5_3E:
    ; Test object flag.
    db $16, C1CabTripMade
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PassageToPeoria14
    ; Test object flag.
    db $16, C1CabFarePaid
    ; Branch if result bit 0 is set.
    db $04
    dw C1BlueCabToPeoria14
    ; Test object flag.
    db $16, C1CabFareWarned

jr_006_78c2:
    ; Branch if result bit 0 is set.
    db $04
    dw C1BlueCabDeferFare
    ; Show message 2.
    db $02, $5d ; Message Text10Message5D: うんてんしゅは こわいかおをして / いった。[PAGE] / 「おきゃくさん!!! /  まだ かねを もらっちゃあ /  いやせんぜ![PAGE] /  このままじゃ...
    ; Set object flag.
    db $17

jr_006_78c8:
    db C1CabFareWarned
    ; End script.
    db $ff

; At most two coins allow deferred payment; otherwise branch to the cab arrest ending.
C1BlueCabDeferFare:

C1Loc5_3F:
    ; Test Case I coins against limit.
    db $4a, $02
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabFareArrestEnd
    ; Show message 2.
    db $02, $6c ; Message Text10Message6C: かおを ひきつらせながら / うんてんしゅは いった。[PAGE] / 「おきゃくさん! /  かねを もってねえんですかい?[PAGE] /  ・・・しようがねえな! ...

; Check exit $14, show Peoria Street, and clear the shared cab fare flags.
C1BlueCabToPeoria14:

C1Loc5_40:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdPeoriaBlueCabStop
    ; Show message 2.
    db $02, $d0 ; Message Text0DMessage50: ぺオリアどおりだ。[END]
    ; Jump to script.
    db $1c
    dw C1CabClearFareFlags

; Describe the blue cab outside its interior room $42.
LookC1BlueCab42:

C1Sc5_5A:
    ; Test current room.
    db $19, C1RoomIdBlueCabStanford
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BlueCabExteriorView
    ; End script.
    db $ff

; Enter blue-cab room $42 or handle its exit and fare checks.
MoveC1BlueCab42:

C1Sc5_5B:
    ; Test current room.
    db $19, C1RoomIdBlueCabStanford
    ; Branch if result bit 0 is set.
    db $04
    dw C1BlueCabExit42
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdBlueCabStanford
    ; Show message 1.
    db $01, $39 ; Message Text0EMessage39: ブルータクシーの なかに はいった。うんてんしゅは イライラしている / ようだ。[END]
    ; End script.
    db $ff

; Check exit $19 and choose the Stanford Arms exterior text using flag $48.
C1CabToStanfordStreet:

C1Loc5_41:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdStanfordFront
    ; Test object flag.
    db $16, C1StanfordStreetSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1StanfordStreetRepeat
    ; Show message 1.
    db $01, $47 ; Message Text0EMessage47: マンションの まえだ。 / かなり こうきゅうそうだ。[PAGE] / こんなところに すむのは いったい / どんなヤツなんだろう・・・。[END]
    ; Set object flag.
    db $17, C1StanfordStreetSeen
    ; End script.
    db $ff

; Show the repeat Stanford Arms exterior description.
C1StanfordStreetRepeat:

C1Loc5_9C:
    ; Show message 1.
    db $01, $49 ; Message Text0EMessage49: マンションの まえの とおりだ。 / ひとどおりは あまり おおくない。[END]
    ; End script.
    db $ff

; Check flags $83, $82, and $84 before leaving for the Stanford Arms street.
C1BlueCabExit42:

C1Loc5_42:
    ; Test object flag.
    db $16, C1CabTripMade
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabToStanfordStreet
    ; Test object flag.
    db $16, C1CabFarePaid

jr_006_78fe:
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabClearToStanford

jr_006_7901:
    ; Test object flag.
    db $16, C1CabFareWarned
    ; Branch if result bit 0 is set.
    db $04

jr_006_7904:
    dw C1CabFareArrestEnd
    ; Show message 2.
    db $02, $5d ; Message Text10Message5D: うんてんしゅは こわいかおをして / いった。[PAGE] / 「おきゃくさん!!! /  まだ かねを もらっちゃあ /  いやせんぜ![PAGE] /  このままじゃ...
    ; Set object flag.
    db $17, C1CabFareWarned
    ; End script.
    db $ff

; Describe the blue cab outside its interior room $44.
LookC1BlueCab44:

C1Sc5_5C:
    ; Test current room.
    db $19, C1RoomIdBlueCabBungalow
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BlueCabExteriorView
    ; End script.
    db $ff

; Enter blue-cab room $44 or handle its exit and fare checks.
MoveC1BlueCab44:

C1Sc5_5D:
    ; Test current room.
    db $19, C1RoomIdBlueCabBungalow
    ; Branch if result bit 0 is set.
    db $04
    dw C1BlueCabExit44
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdBlueCabBungalow
    ; Show message 1.
    db $01, $39 ; Message Text0EMessage39: ブルータクシーの なかに はいった。うんてんしゅは イライラしている / ようだ。[END]
    ; End script.
    db $ff

; Check exit $1a and choose bungalow-street text using flag $49.
C1CabToBungalowStreet:

C1Loc5_43:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdBungalowFront
    ; Test object flag.
    db $16, C1BungalowStreetSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1BungalowStreetRepeat
    ; Show message 1.
    db $01, $5f ; Message Text0EMessage5F: バンガローだ。 / にわが あれほうだい あれている。 / ひとは すんでいないのだろうか?[END]
    ; Set object flag.
    db $17, C1BungalowStreetSeen
    ; End script.
    db $ff

; Show the repeat bungalow-street description.
C1BungalowStreetRepeat:

C1Loc5_9D:
    ; Show message 1.
    db $01, $66 ; Message Text0EMessage66: たてものの まえの とおりだ。 / タクシーが とまっている。[END]
    ; End script.
    db $ff

; Check flags $83, $82, and $84 before leaving for the bungalow street.
C1BlueCabExit44:

C1Loc5_44:
    ; Test object flag.
    db $16, C1CabTripMade
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabToBungalowStreet
    ; Test object flag.
    db $16, C1CabFarePaid
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabClearToBungalow
    ; Test object flag.
    db $16, C1CabFareWarned
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabFareArrestEnd
    ; Show message 2.
    db $02 ; Message Text10Message5D: うんてんしゅは こわいかおをして / いった。[PAGE] / 「おきゃくさん!!! /  まだ かねを もらっちゃあ /  いやせんぜ![PAGE] /  このままじゃ...

jr_006_793a:
    db $5d
    ; Set object flag.
    db $17, C1CabFareWarned

jr_006_793d:
    ; End script.
    db $ff

; Clear flags $82 through $84 and continue toward the bungalow street.
C1CabClearToBungalow:

C1Loc5_45:
    ; Clear object flag.
    db $18, C1CabFarePaid

jr_006_7940:
    ; Clear object flag.
    db $18, C1CabTripMade
    ; Clear object flag.
    db $18, C1CabFareWarned
    ; Jump to script.
    db $1c
    dw C1CabToBungalowStreet

; Describe the blue cab outside its interior room $46.
LookC1BlueCab46:

C1Sc5_5E:
    ; Test current room.
    db $19, C1RoomIdBlueCabOfficeBuilding
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BlueCabExteriorView
    ; End script.
    db $ff

; Enter blue-cab room $46 or handle its exit and fare checks.
MoveC1BlueCab46:

C1Sc5_5F:
    ; Test current room.
    db $19, C1RoomIdBlueCabOfficeBuilding
    ; Branch if result bit 0 is set.
    db $04
    dw C1BlueCabExit46
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdBlueCabOfficeBuilding
    ; Show message 1.
    db $01, $39 ; Message Text0EMessage39: ブルータクシーの なかに はいった。うんてんしゅは イライラしている / ようだ。[END]
    ; End script.
    db $ff

; Check exit $1b and preserve the original flag $4a branch between street descriptions.
C1CabToStreet1B:

C1Loc5_46:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdOfficeBuildingFront
    ; Test object flag.
    db $16, $4a
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabStreet1BFlag4A
    ; Show message 1.
    db $01, $75 ; Message Text0EMessage75: とおりだ。 / あたりは とても しずかだ。[END]
    ; End script.
    db $ff

; With flag $4a already set, show the dirty-office exterior and set the flag again.
C1CabStreet1BFlag4A:

C1Loc5_9E:
    ; Show message 1.
    db $01, $73 ; Message Text0EMessage73: ずいぶんと きたない オフィスビルのまえだ。[END]
    ; Set object flag.
    db $17, $4a
    ; End script.
    db $ff

; Check flags $83, $82, and $84 before leaving for street room $1b.
C1BlueCabExit46:

C1Loc5_47:
    ; Test object flag.
    db $16, C1CabTripMade
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabToStreet1B
    ; Test object flag.
    db $16, C1CabFarePaid
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabClearToStreet1B
    ; Test object flag.
    db $16, C1CabFareWarned
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabFareArrestEnd
    ; Show message 2.
    db $02, $5d ; Message Text10Message5D: うんてんしゅは こわいかおをして / いった。[PAGE] / 「おきゃくさん!!! /  まだ かねを もらっちゃあ /  いやせんぜ![PAGE] /  このままじゃ...
    ; Set object flag.
    db $17, C1CabFareWarned
    ; End script.
    db $ff

; Clear flags $82 through $84 and continue toward street room $1b.
C1CabClearToStreet1B:

C1Loc5_48:
    ; Clear object flag.
    db $18, C1CabFarePaid
    ; Clear object flag.
    db $18, C1CabTripMade
    ; Clear object flag.
    db $18, C1CabFareWarned
    ; Jump to script.
    db $1c
    dw C1CabToStreet1B

; Describe the blue cab outside room $48; retain the split branch pointer.
LookC1BlueCab48:

C1Sc5_60:
    ; Test current room.
    db $19

jr_006_7984:
    db C1RoomIdBlueCabEstate
    ; Branch if result bit 0 is clear.
    db $05
    ; Target C1BlueCabExteriorView; retain the interior label.
    db LOW(C1BlueCabExteriorView)

jr_006_7987:
    db HIGH(C1BlueCabExteriorView)
    ; End script.
    db $ff

; Enter blue-cab room $48 or handle its exit and fare checks.
MoveC1BlueCab48:

C1Sc5_61:
    ; Test current room.
    db $19

jr_006_798a:
    db C1RoomIdBlueCabEstate
    ; Branch if result bit 0 is set.
    db $04
    dw C1BlueCabExit48
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdBlueCabEstate
    ; Show message 1.
    db $01, $39 ; Message Text0EMessage39: ブルータクシーの なかに はいった。うんてんしゅは イライラしている / ようだ。[END]
    ; End script.
    db $ff

; Check exit $1c and choose estate-exterior text using flag $4b.
C1CabToEstateStreet:

C1Loc5_49:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdEstateFront
    ; Test object flag.
    db $16, C1EstateStreetSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1EstateStreetRepeat
    ; Show message 1.
    db $01, $9a ; Message Text0FMessage1A: おおきな べっそうのまえ。 / 「かぜとともに さりぬ」の なかの / ワンシーンの ようだ。[END]
    ; Set object flag.
    db $17, C1EstateStreetSeen
    ; End script.
    db $ff

; Show the repeat estate-exterior description.
C1EstateStreetRepeat:

C1Loc5_9F:
    ; Show message 1.
    db $01, $9f ; Message Text0FMessage1F: べっそうの しゅうへんに ひとかげはみられない。[END]
    ; End script.
    db $ff

; Check flags $83, $82, and $84 before leaving for the estate.
C1BlueCabExit48:

C1Loc5_4A:
    ; Test object flag.
    db $16, C1CabTripMade
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabToEstateStreet
    ; Test object flag.
    db $16, C1CabFarePaid
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabClearToEstate
    ; Test object flag.
    db $16, C1CabFareWarned
    ; Branch if result bit 0 is set.
    db $04

jr_006_79af:
    dw C1CabFareArrestEnd
    ; Show message 2.
    db $02 ; Message Text10Message5D: うんてんしゅは こわいかおをして / いった。[PAGE] / 「おきゃくさん!!! /  まだ かねを もらっちゃあ /  いやせんぜ![PAGE] /  このままじゃ...

jr_006_79b2:
    db $5d
    ; Set object flag.
    db $17, C1CabFareWarned

jr_006_79b5:
    ; End script.
    db $ff

; Clear flags $82 through $84 and continue toward the estate.
C1CabClearToEstate:

C1Loc5_4B:
    ; Clear object flag.
    db $18, C1CabFarePaid
    ; Clear object flag.
    db $18, C1CabTripMade
    ; Clear object flag.
    db $18, C1CabFareWarned
    ; Jump to script.
    db $1c
    dw C1CabToEstateStreet

; Describe the yellow cab outside its interior room $27.
LookC1YellowCab27:

C1Sc5_62:
    ; Test current room.
    db $19, C1RoomIdYellowCabPeoria
    ; Branch if result bit 0 is clear.
    db $05
    dw C1YellowCabExteriorView
    ; End script.
    db $ff

; Show the yellow cab waiting for passengers.
C1YellowCabExteriorView:

C1Loc5_4C:
    ; Set text name 0.
    db $1e, $b2
    ; Show message 2.
    db $02, $0c ; Message Text10Message0C: [OBJECT_WRAM:37C5]だ。 / うんてんしゅが のっている。 / きゃくを まっているようだ。[END]
    ; End script.
    db $ff

; Enter yellow-cab room $27 or handle its exit and fare checks.
MoveC1YellowCab27:

C1Sc5_63:
    ; Test current room.
    db $19, C1RoomIdYellowCabPeoria
    ; Branch if result bit 0 is set.
    db $04
    dw C1YellowCabExit27
    ; Set state bit.
    db $2f, C1StateYellowCabView
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdYellowCabPeoria
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $42 ; Message Text0EMessage42: イエロータクシーに はいった。 / うんてんしゅは ひとがよさそうだ。[END]
    ; Test object flag.
    db $16, C1YellowCabDebt
    ; Branch if result bit 0 is set.
    db $04
    dw C1YellowCabLoanReminder
    ; Resume text.
    db $45
    ; End script.
    db $ff

; Show the driver's reminder about the money previously lent.
C1YellowCabLoanReminder:

C1Loc5_A0:
    ; Show message 2.
    db $02, $6f ; Message Text10Message6F: うんてんしゅは ニコニコして / いった。[PAGE] / 「このまえの おかねを かえして /  くださいね。」[END]
    ; End script.
    db $ff

; Check flags $83, $82, and $84 before the Peoria exit, fare warning, or deferred-payment path.
C1YellowCabExit27:

C1Loc5_4D:
    ; Test object flag.
    db $16, C1CabTripMade
    ; Branch if result bit 0 is clear.
    db $05
    dw C1PassageToPeoria15
    ; Test object flag.
    db $16, C1CabFarePaid
    ; Branch if result bit 0 is set.
    db $04
    dw C1YellowCabToPeoria15
    ; Test object flag.
    db $16, C1CabFareWarned
    ; Branch if result bit 0 is set.
    db $04
    dw C1YellowCabDeferFare
    ; Show message 2.
    db $02, $5e ; Message Text10Message5E: かおを ひきつらせながら / うんてんしゅは いった。[PAGE] / 「おきゃくさん! /  まだ おかねを いただいて /  いませんよ![PAGE] /  のりにげ...
    ; Set object flag.
    db $17, C1CabFareWarned
    ; End script.
    db $ff

; At most two coins allow deferred payment; otherwise branch to the cab arrest ending.
C1YellowCabDeferFare:

C1Loc5_4E:
    ; Test Case I coins against limit.
    db $4a, $02
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabFareArrestEnd
    ; Show message 2.
    db $02, $6d ; Message Text10Message6D: うんてんしゅは やさしいこえで / いった。[PAGE] / 「こまったときは おたがいさま! /  おかねは こんど きたときで /  よろしいですよ。」[END]

; Check exit $15 and show Peoria Street before clearing the cab fare flags.
C1YellowCabToPeoria15:

C1Loc5_4F:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdPeoriaYellowCabStop
    ; Show message 2.
    db $02, $d0 ; Message Text0DMessage50: ぺオリアどおりだ。[END]

; Clear flags $82, $83, and $84 after the Peoria exit.
C1CabClearFareFlags:

C1Loc5_A1:
    ; Clear object flag.
    db $18, C1CabFarePaid
    ; Clear object flag.
    db $18, C1CabTripMade
    ; Clear object flag.
    db $18, C1CabFareWarned
    ; End script.
    db $ff

; Describe the yellow cab outside its interior room $43.
LookC1YellowCab43:

C1Sc5_64:
    ; Test current room.
    db $19, C1RoomIdYellowCabStanford
    ; Branch if result bit 0 is clear.
    db $05
    dw C1YellowCabExteriorView
    ; End script.
    db $ff

; Enter yellow-cab room $43 or handle its exit and fare checks.
MoveC1YellowCab43:

C1Sc5_65:
    ; Test current room.
    db $19, C1RoomIdYellowCabStanford
    ; Branch if result bit 0 is set.
    db $04
    dw C1YellowCabExit43
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdYellowCabStanford
    ; Show message 1.
    db $01, $42 ; Message Text0EMessage42: イエロータクシーに はいった。 / うんてんしゅは ひとがよさそうだ。[END]
    ; End script.
    db $ff

; Check flags $83, $82, and $84 before leaving for the Stanford Arms street.
C1YellowCabExit43:

C1Loc5_50:
    ; Test object flag.
    db $16, C1CabTripMade
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabToStanfordStreet
    ; Test object flag.
    db $16, C1CabFarePaid
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabClearToStanford
    ; Test object flag.
    db $16, C1CabFareWarned
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabFareArrestEnd
    ; Show message 2.
    db $02, $5e ; Message Text10Message5E: かおを ひきつらせながら / うんてんしゅは いった。[PAGE] / 「おきゃくさん! /  まだ おかねを いただいて /  いませんよ![PAGE] /  のりにげ...
    ; Set object flag.
    db $17, C1CabFareWarned
    ; End script.
    db $ff

; Clear flags $82 through $84 and continue toward the Stanford Arms street.
C1CabClearToStanford:

C1Loc5_51:
    ; Clear object flag.
    db $18, C1CabFarePaid
    ; Clear object flag.
    db $18, C1CabTripMade
    ; Clear object flag.
    db $18, C1CabFareWarned
    ; Jump to script.
    db $1c
    dw C1CabToStanfordStreet

; Show the cab driver's police report and Ace's conviction, then end the action.
C1CabFareArrestEnd:

C1Loc5_52:
    ; Finish Case I scene effect.
    db $5a, C1FxIdArrest
    ; Show message 1.
    db $01, $b2 ; Message Text0FMessage32: あなたは トイレで めざめてから / ようやく ここまで たどりついた。[PAGE] / しかし あなたは うんてんしゅの / ちゅうこくを ききいれず のりにげをしてし...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Describe the yellow cab outside its interior room $45.
LookC1YellowCab45:

C1Sc5_66:
    ; Test current room.
    db $19, C1RoomIdYellowCabBungalow
    ; Branch if result bit 0 is clear.
    db $05
    dw C1YellowCabExteriorView
    ; End script.
    db $ff

; Enter yellow-cab room $45 or handle its exit and fare checks.
MoveC1YellowCab45:

C1Sc5_67:
    ; Test current room.
    db $19, C1RoomIdYellowCabBungalow
    ; Branch if result bit 0 is set.
    db $04
    dw C1YellowCabExit45
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdYellowCabBungalow
    ; Show message 1.
    db $01, $42 ; Message Text0EMessage42: イエロータクシーに はいった。 / うんてんしゅは ひとがよさそうだ。[END]
    ; End script.
    db $ff

; Check flags $83, $82, and $84 before leaving for the bungalow street.
C1YellowCabExit45:

C1Loc5_53:
    ; Test object flag.
    db $16, C1CabTripMade
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabToBungalowStreet
    ; Test object flag.
    db $16, C1CabFarePaid
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabClearToBungalow
    ; Test object flag.
    db $16, C1CabFareWarned
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabFareArrestEnd
    ; Show message 2.
    db $02, $5e ; Message Text10Message5E: かおを ひきつらせながら / うんてんしゅは いった。[PAGE] / 「おきゃくさん! /  まだ おかねを いただいて /  いませんよ![PAGE] /  のりにげ...
    ; Set object flag.
    db $17, C1CabFareWarned
    ; End script.
    db $ff

; Describe the yellow cab outside its interior room $47.
LookC1YellowCab47:

C1Sc5_68:
    ; Test current room.
    db $19, C1RoomIdYellowCabOfficeBuilding
    ; Branch if result bit 0 is clear.
    db $05
    dw C1YellowCabExteriorView
    ; End script.
    db $ff

; Enter yellow-cab room $47 or handle its exit and fare checks.
MoveC1YellowCab47:

C1Sc5_69:
    ; Test current room.
    db $19, C1RoomIdYellowCabOfficeBuilding
    ; Branch if result bit 0 is set.
    db $04
    dw C1YellowCabExit47
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdYellowCabOfficeBuilding
    ; Show message 1.
    db $01, $42 ; Message Text0EMessage42: イエロータクシーに はいった。 / うんてんしゅは ひとがよさそうだ。[END]
    ; End script.
    db $ff

; Check flags $83, $82, and $84 before leaving for street room $1b.
C1YellowCabExit47:

C1Loc5_54:
    ; Test object flag.
    db $16, C1CabTripMade
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabToStreet1B
    ; Test object flag.
    db $16, C1CabFarePaid
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabClearToStreet1B
    ; Test object flag.
    db $16, C1CabFareWarned
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabFareArrestEnd
    ; Show message 2.
    db $02, $5e ; Message Text10Message5E: かおを ひきつらせながら / うんてんしゅは いった。[PAGE] / 「おきゃくさん! /  まだ おかねを いただいて /  いませんよ![PAGE] /  のりにげ...
    ; Set object flag.
    db $17, C1CabFareWarned
    ; End script.
    db $ff

; Describe the yellow cab outside its interior room $49.
LookC1YellowCab49:

C1Sc5_6A:
    ; Test current room.
    db $19, C1RoomIdYellowCabEstate
    ; Branch if result bit 0 is clear.
    db $05
    dw C1YellowCabExteriorView
    ; End script.
    db $ff

; Enter yellow-cab room $49 or handle its exit and fare checks.
MoveC1YellowCab49:

C1Sc5_6B:
    ; Test current room.
    db $19, C1RoomIdYellowCabEstate
    ; Branch if result bit 0 is set.
    db $04
    dw C1YellowCabExit49
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdYellowCabEstate
    ; Show message 1.
    db $01, $42 ; Message Text0EMessage42: イエロータクシーに はいった。 / うんてんしゅは ひとがよさそうだ。[END]
    ; End script.
    db $ff

; Check flags $83, $82, and $84 before leaving for the estate.
C1YellowCabExit49:

C1Loc5_55:
    ; Test object flag.
    db $16, C1CabTripMade
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabToEstateStreet
    ; Test object flag.
    db $16, C1CabFarePaid
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabClearToEstate
    ; Test object flag.
    db $16, C1CabFareWarned
    ; Branch if result bit 0 is set.
    db $04
    dw C1CabFareArrestEnd
    ; Show message 2.
    db $02, $5e ; Message Text10Message5E: かおを ひきつらせながら / うんてんしゅは いった。[PAGE] / 「おきゃくさん! /  まだ おかねを いただいて /  いませんよ![PAGE] /  のりにげ...
    ; Set object flag.
    db $17, C1CabFareWarned
    ; End script.
    db $ff

; Report the Stanford Arms door's open or closed state only from room $19.
LookC1StanfordDoor:

C1Sc5_6C:
    ; Test current room.
    db $19, C1RoomIdStanfordFront
    ; Branch if result bit 0 is clear.
    db $05
    dw C1StanfordDoorViewEnd
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $03 ; Message Text10Message03: [OBJECT_WRAM:37C5]は しまっている。[END]

; End the Stanford Arms door view.
C1StanfordDoorViewEnd:

C1Loc5_56:
    ; End script.
    db $ff

; Use the entrance toward lobby room $28 from room $19, or return toward the street.
MoveC1StanfordDoor:

C1Sc5_6D:
    ; Test current room.
    db $19, C1RoomIdStanfordFront
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabToStanfordStreet

; Check exit $28 and choose lobby text using flag $4c.
C1DoorToLobby28:

C1Loc5_57:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdStanfordLobby
    ; Test object flag.
    db $16, C1Lobby28Seen
    ; Branch if result bit 0 is set.
    db $04
    dw C1Lobby28Repeat
    ; Show message 1.
    db $01, $4a ; Message Text0EMessage4A: マンションの まえに おとらず / ロビーも りっぱだ。[PAGE] / しろい えんちゅうが ごうかさを / いっそう ひきたてている。[END]
    ; Set object flag.
    db $17, C1Lobby28Seen
    ; End script.
    db $ff

; Show the repeat lobby description.
C1Lobby28Repeat:

C1Loc5_A2:
    ; Show message 1.
    db $01, $4d ; Message Text0EMessage4D: ロビーだ。 / しょうめんに エレべータが みえる。[END]
    ; End script.
    db $ff

; Describe the private elevator from lobby room $28 or from the other side, unless already open.
LookC1PrivateLift:

C1Sc5_6E:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test current room.
    db $19, C1RoomIdStanfordLobby
    ; Branch if result bit 0 is set.
    db $04
    dw C1PrivateLiftOuterView
    ; Show message 1.
    db $01, $51 ; Message Text0EMessage51: エレべータの なかだ。[PAGE] / なにを ぐずぐず しているんだ! / することは きまっているじゃないか![END]

jr_006_7ad3:
    ; End script.
    db $ff

; Show the private-elevator description.
C1PrivateLiftOuterView:

C1Loc5_58:
    ; Show message 1.
    db $01, $4b ; Message Text0EMessage4B: エレべータだ。 / しかし ふつうのものとは そうさの / しかたが ちがうようだ。[END]
    ; End script.
    db $ff

; Use elevator door $2f toward room $29 from room $28, or return toward the lobby.
MoveC1PrivateLift2F:

C1Sc5_6F:
    ; Test current room.
    db $19, C1RoomIdStanfordLobby
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorToLobby28
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdStanfordLobbyLift
    ; Show message 0.
    db $00 ; Message Text0CMessage6F: エレべータの なかだ。[END]

jr_006_7adf:
    db $6f
    ; End script.
    db $ff

; Describe elevator door $30 by room $2a, unless already open.
LookC1PrivateLift30:

C1Sc5_70:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test current room.
    db $19, C1RoomIdStanfordPenthouse
    ; Branch if result bit 0 is set.
    db $04
    dw C1PrivateLiftOuterView
    ; Show message 1.
    db $01, $51 ; Message Text0EMessage51: エレべータの なかだ。[PAGE] / なにを ぐずぐず しているんだ! / することは きまっているじゃないか![END]
    ; End script.
    db $ff

; Use elevator door $30 toward room $41 from room $2a, or return toward room $2a.
MoveC1PrivateLift30:

C1Sc5_71:
    ; Test current room.
    db $19, C1RoomIdStanfordPenthouse
    ; Branch if result bit 0 is clear.
    db $05
    dw C1LiftToPenthouse
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdStanfordPenthouseLift
    ; Show message 0.
    db $00, $6f ; Message Text0CMessage6F: エレべータの なかだ。[END]
    ; End script.
    db $ff

; Check exit $2a and choose penthouse text using flag $ad.
C1LiftToPenthouse:

C1Loc5_59:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdStanfordPenthouse
    ; Test object flag.
    db $16, C1PenthouseSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1PenthouseRepeat
    ; Show message 1.
    db $01, $53 ; Message Text0EMessage53: しゃれたへやだ。 / もちぬしは かなりの ひとだろう。 / ・・・かぐの しゅみもいい。[END]
    ; Set object flag.
    db $17, C1PenthouseSeen
    ; End script.
    db $ff

; Show the repeat apartment description.
C1PenthouseRepeat:

C1Loc5_A3:
    ; Show message 2.
    db $02, $27 ; Message Text10Message27: マンションの へやの なかだ。[END]
    ; End script.
    db $ff

; Skip the view inside room $2b; otherwise check the door, lock, and flag $2d.
LookC1BungalowDoor:

C1Sc5_72:
    ; Test current room.
    db $19, C1RoomIdBungalow
    ; Branch if result bit 0 is clear.
    db $05
    dw C1BungalowDoorView
    ; End script.
    db $ff

; Describe the locked door, setting flag $2d on its first detailed view.
C1BungalowDoorView:

C1Loc5_5A:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1BungalowUnlocked
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyClosed
    ; Test object flag.
    db $16, C1BungalowLockHintSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1BungalowDoorDetail
    ; Show message 1.
    db $01, $61 ; Message Text0EMessage61: ドアだ。[PAGE] / どうも カギが かかっているらしい。[PAGE] / ここの カギらしいものは / もっていないが・・・。[END]
    ; Set object flag.
    db $17, C1BungalowLockHintSeen
    ; End script.
    db $ff

; Show both locked-door messages after flag $2d has been set.
C1BungalowDoorDetail:

C1Loc5_5B:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $61 ; Message Text0EMessage61: ドアだ。[PAGE] / どうも カギが かかっているらしい。[PAGE] / ここの カギらしいものは / もっていないが・・・。[END]
    ; Show message 1.
    db $01, $62 ; Message Text0EMessage62: ふふふん! / こうなったら ちからずくで / あけるしかないな![PAGE] / カギを こわすのなら やはり・・・。[END]
    ; End script.
    db $ff

; Use the door toward room $2b from bungalow street $1a, or return toward the street.
MoveC1BungalowDoor:

C1Sc5_73:
    ; Test current room.
    db $19, C1RoomIdBungalowFront
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabToBungalowStreet
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdBungalow
    ; Test object flag.
    db $16, C1BungalowRoomSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1BungalowRoomRepeat
    ; Show message 1.
    db $01, $67 ; Message Text0EMessage67: たてものの なかに はいった。 / やすっぽい こうすいの においが / はなをつく・・・。[END]
    ; Set object flag.
    db $17, C1BungalowRoomSeen
    ; End script.
    db $ff

; Show the repeat bungalow-interior description.
C1BungalowRoomRepeat:

C1Loc5_A4:
    ; Show message 1.
    db $01, $6f ; Message Text0EMessage6F: ひらやの たてものの なかだ。[END]

; End the bungalow-entry description or an unavailable door view.
C1BungalowEntryEnd:

C1Loc5_5C:
    ; End script.
    db $ff

; Describe door $32 only outside office-entry room $2c, unless already open.
LookC1OfficeDoor32:

C1Sc5_74:
    ; Test current room.
    db $19, C1RoomIdOfficeBuildingLobby
    ; Branch if result bit 0 is set.
    db $04
    dw C1BungalowEntryEnd
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Show message 1.
    db $01, $c7 ; Message Text0FMessage47: ドアだ。[END]
    ; End script.
    db $ff

; Use door $32 toward room $2c from street room $1b, or return toward the street.
MoveC1OfficeDoor32:

C1Sc5_75:
    ; Test current room.
    db $19, C1RoomIdOfficeBuildingFront
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabToStreet1B

; Check exit $2c and show the small office-building interior.
C1OfficeDoorToRoom2C:

C1Loc5_5D:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdOfficeBuildingLobby
    ; Show message 1.
    db $01, $76 ; Message Text0EMessage76: ロビーだ。 / みぎがわには ろうか ひだりがわにはかいだんが みえる。[END]

; End the office-building entry or unavailable stair view.
C1OfficeDoorEntryEnd:

C1Loc5_5E:
    ; End script.
    db $ff

; End the empty office-building passage view.
C1OfficeStairEmptyView:

C1Sc5_76:
    ; End script.
    db $ff

; Describe the stairs from room $2c and end without text elsewhere.
LookC1OfficeStairs:

C1Sc5_77:
    ; Test current room.
    db $19, C1RoomIdOfficeBuildingLobby
    ; Branch if result bit 0 is clear.
    db $05
    dw C1OfficeDoorEntryEnd

; Show the repeat staircase description.
C1StairsShortView:

C1Loc5_5F:
    ; Show message 0.
    db $00, $48 ; Message Text0CMessage48: 2かいへ つうじる かいだんだ。[END]
    ; End script.
    db $ff

; Use the stairs toward Ace's office landing from room $2c, or return toward the lobby.
MoveC1OfficeStairs:

C1Sc5_78:
    ; Test current room.
    db $19, C1RoomIdOfficeBuildingLobby
    ; Branch if result bit 0 is clear.
    db $05
    dw C1OfficeDoorToRoom2C

; Set flag $0a when the gunman flag $16 is clear before entering the landing.
C1AceOfficeEntryFlags:

C1Loc5_60:
    ; Test object flag.
    db $16, C1ShadowShot
    ; Branch if result bit 0 is set.
    db $04
    dw C1StairsToAceOffice
    ; Set object flag.
    db $17, $0a

; Check exit $2f and choose landing text using first-entry flag $4e and recovery flag $25.
C1StairsToAceOffice:

C1Loc5_61:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdAceOfficeEntrance
    ; Test object flag.
    db $16, C1AceOfficeFrontSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1AceOfficeRepeatCheck
    ; Play audio.
    db $5f, $0d
    ; Test object flag.
    db $16, C1MemoryRecovered
    ; Branch if result bit 0 is set.
    db $04
    dw C1AceOfficeFirstWell
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $86 ; Message Text0FMessage06: ここは しりつたんていの オフィスのようだ。[PAGE] / ガラスに 「エース・ハーディング」とかいてある。[END]
    ; Show message 1.
    db $01, $ac ; Message Text0FMessage2C: はっ! / ガラスに ひとかげが・・・?[END]
    ; Resume text.
    db $45
    ; Run scene effect.
    db $46, C1FxIdHeadacheOffice
    ; Set object flag.
    db $17, C1AceOfficeFrontSeen
    ; End script.
    db $ff

; Show Ace's office name, recognition, and shadow text, then set flag $4e.
C1AceOfficeFirstWell:

C1Loc5_A5:
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $86 ; Message Text0FMessage06: ここは しりつたんていの オフィスのようだ。[PAGE] / ガラスに 「エース・ハーディング」とかいてある。[END]
    ; Show message 2.
    db $02, $28 ; Message Text10Message28: ・・・と いうことは・・・? / ここは おれの オフィスなのか![END]
    ; Show message 1.
    db $01, $ac ; Message Text0FMessage2C: はっ! / ガラスに ひとかげが・・・?[END]

jr_006_7b87:
    ; Set object flag.
    db $17, C1AceOfficeFrontSeen
    ; End script.
    db $ff

; Choose the repeat landing text with or without effect $19 using flag $25.
C1AceOfficeRepeatCheck:

C1Loc5_A6:
    ; Test object flag.
    db $16, C1MemoryRecovered
    ; Branch if result bit 0 is set.
    db $04
    dw C1AceOfficeRepeatWell
    ; Show message 1.
    db $01, $82 ; Message Text0FMessage02: たんていじむしょの まえだ。[END]
    ; Run scene effect.
    db $46, C1FxIdHeadacheOffice
    ; End script.
    db $ff

; Show the repeat private-eye office description.
C1AceOfficeRepeatWell:

C1Loc5_A7:
    ; Show message 1.
    db $01, $82 ; Message Text0FMessage02: たんていじむしょの まえだ。[END]
    ; End script.
    db $ff

; Describe door $36 only from room $2d, checking its open state and flag $5f.
LookC1DoctorDoor:

C1Sc5_79:
    ; Test current room.
    db $19, C1RoomIdDoctorEntrance
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoctorDoorViewEnd
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1DoctorDoorUnlocked
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoctorEntranceView
    ; Show message 0.
    db $00, $43 ; Message Text0CMessage43: おしても ひいても びくともしない。カギが かかっているらしい。[END]

; End the doctor's door view.
C1DoctorDoorViewEnd:

C1Loc5_62:
    ; End script.
    db $ff

; Describe the doctor's office entrance.
C1DoctorEntranceView:

C1Loc5_63:
    ; Show message 1.
    db $01, $78 ; Message Text0EMessage78: オフィスの まえの ようだ。 / 「ドクター ブロディ」と かんばんがかかっている。[END]
    ; End script.
    db $ff

; Use the doctor's door toward room $2e from room $2d, or return toward room $2d.
MoveC1DoctorDoor:

C1Sc5_7A:
    ; Test current room.
    db $19, C1RoomIdDoctorEntrance
    ; Branch if result bit 0 is clear.
    db $05
    dw C1DoorToDoctorLanding
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdDoctorOffice
    ; Test object flag.
    db $16, C1DoctorRoomSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoctorRoomRepeat
    ; Show message 1.
    db $01, $7a ; Message Text0EMessage7A: いしゃの オフィスらしく / クスリビンが いっぱいならんでいる。[PAGE] / みまわしたところ だれも / いないようだ。[END]
    ; Set object flag.
    db $17, C1DoctorRoomSeen
    ; End script.
    db $ff

; Check exit $2d and describe the office entrance.
C1DoorToDoctorLanding:

C1Loc5_64:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdDoctorEntrance
    ; Show message 1.
    db $01, $78 ; Message Text0EMessage78: オフィスの まえの ようだ。 / 「ドクター ブロディ」と かんばんがかかっている。[END]
    ; End script.
    db $ff

; Show the repeat quiet-room description.
C1DoctorRoomRepeat:

C1Loc5_A8:
    ; Show message 1.
    db $01, $84 ; Message Text0FMessage04: へやの なかは いたって しずかだ。[END]
    ; End script.
    db $ff

; Describe the long hallway only from room $2c.
LookC1OfficeHall37:

C1Sc5_7B:
    ; Test current room.
    db $19, C1RoomIdOfficeBuildingLobby
    ; Branch if result bit 0 is clear.
    db $05
    dw C1OfficeHallViewEnd
    ; Show message 1.
    db $01, $77 ; Message Text0EMessage77: ろうかだ。 / かなり うすぐらい。[END]

; End the office hallway view.
C1OfficeHallViewEnd:

C1Loc5_65:
    ; End script.
    db $ff

; Use passage $37 toward room $2d from room $2c, or return toward the lobby.
MoveC1OfficeHall37:

C1Sc5_7C:
    ; Test current room.
    db $19, C1RoomIdOfficeBuildingLobby
    ; Branch if result bit 0 is clear.
    db $05
    dw C1OfficeDoorToRoom2C
    ; Jump to script.
    db $1c
    dw C1DoorToDoctorLanding

; Describe door $38 using its open state and flags $16 and $50.
LookC1ShadowDoor:

C1Sc5_7D:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyOpen
    ; Test object flag.
    db $16, C1ShadowShot
    ; Branch if result bit 0 is set.
    db $04
    dw C1ShadowDoorAfterShot
    ; Show message 1.
    db $01, $89 ; Message Text0FMessage09: ドアだ。 / あいかわらず ひとかげが ある。[END]
    ; End script.
    db $ff

; After flag $16 is set, report the closed door or the motionless shadow using flag $50.
C1ShadowDoorAfterShot:

C1Loc5_66:
    ; Test object flag.
    db $16, C1AceOfficeRoomSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyClosed
    ; Show message 1.
    db $01, $8a ; Message Text0FMessage0A: ひとの けはいは なくなった。 / だが ゆだんは きんもつだ。[END]
    ; End script.
    db $ff

; Enter the office from room $2f; with flag $16 clear, retain the fatal gunman encounter.
MoveC1ShadowDoor:

C1Sc5_7E:
    ; Test current room.
    db $19, C1RoomIdAceOfficeEntrance
    ; Branch if result bit 0 is clear.
    db $05
    dw C1AceOfficeEntryFlags
    ; Test object flag.
    db $16, C1ShadowShot
    ; Branch if result bit 0 is set.
    db $04
    dw C1ShadowOfficeEntry
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Set state bit.
    db $2f, C1StateAceOfficeGunmanVisible
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdAceOffice
    ; Wait sixty ticks.
    db $68
    ; Wait sixty ticks.
    db $68
    ; Show message 2.
    db $02, $25 ; Message Text10Message25: おとこだ! / じゅうこうを おれに むけている![END]
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Show message 1.
    db $01, $88 ; Message Text0FMessage08: やつは ピストルを もってたのか! / すっかり ゆだんしていた おれは / やられてしまった。[END]
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text10Message62: あなたは トイレの なかで / めざめてから てさぐりで / ここまできた・・・。[PAGE] / ・・・だが あなたは えいえんに / つちの したで ねむるハメに /...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Clear state $3a, check exit $30, and require recovery flag $25 before the office text.
C1ShadowOfficeEntry:

C1Loc5_67:
    ; Clear state bit.
    db $30, C1StateAceOfficeGunmanVisible
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdAceOffice
    ; Test object flag.
    db $16, C1MemoryRecovered
    ; Branch if result bit 0 is clear.
    db $05
    dw C1OfficeAmnesiaEnd
    ; Test object flag.
    db $16, C1AceOfficeRoomSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1ShadowOfficeRepeat
    ; Show message 1.
    db $01, $8b ; Message Text0FMessage0B: やつの したいが ころがっている。 / ほかに ひとは いないようだ。[END]
    ; Set object flag.
    db $17, C1AceOfficeRoomSeen
    ; End script.
    db $ff

; Show the repeat dim-office description.
C1ShadowOfficeRepeat:

C1Loc5_A9:
    ; Show message 1.
    db $01, $92 ; Message Text0FMessage12: オフィスだ。 / かなり ふるいへやのようで かべが / われている。[END]
    ; End script.
    db $ff

; Show Ace's dizziness, collapse, and unrecovered-amnesia ending.
C1OfficeAmnesiaEnd:

C1Loc5_AA:
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $85 ; Message Text0FMessage05: ああっ・・・。 / めまいが する。 / あたまが われそうに いたい![END]
    ; Show message 2.
    db $02, $5a ; Message Text10Message5A: いっ・・・いしきが・・・。 / うす・れ・・て・・・い・・・・く・・・・・・・・・・・。[END]
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $5b ; Message Text10Message5B: あなたは トイレで めざめてから / ようやく ここまで たどりついた。[PAGE] / だが どうやら あなたの うんも / ここまでだったようだ・・・。[PAGE] ...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Describe the estate approach only from exterior room $1c.
LookC1EstatePassage39:

C1Sc5_7F:
    ; Test current room.
    db $19, C1RoomIdEstateFront
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EstatePassageViewEnd
    ; Show message 1.
    db $01, $9e ; Message Text0FMessage1E: とても りっぱな べっそうだ。[END]

; End the estate-approach view.
C1EstatePassageViewEnd:

C1Loc5_68:
    ; End script.
    db $ff

; From room $1c, use flag $27 to choose the front-door or vestibule destination; otherwise return outside.
MoveC1EstatePassage39:

C1Sc5_80:
    ; Test current room.
    db $19, C1RoomIdEstateFront
    ; Branch if result bit 0 is clear.
    db $05
    dw C1CabToEstateStreet
    ; Test object flag.
    db $16, C1ButlerDown
    ; Branch if result bit 0 is set.
    db $04
    dw C1EstateToVestibule
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdMansionFrontDoor
    ; Show message 1.
    db $01, $a0 ; Message Text0FMessage20: べっそうの げんかんだ。 / ドアには おおきくて りっぱな / ノッカーが ついている。[END]
    ; End script.
    db $ff

; Check exit $32 and show the mansion vestibule.
C1EstateToVestibule:

C1Loc5_69:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdMansionVestibule
    ; Show message 1.
    db $01, $a9 ; Message Text0FMessage29: げんかんだ。 / とても ひろい。[END]
    ; End script.
    db $ff

; End the empty inner-estate passage view.
C1EstateInnerEmptyView:

C1Sc5_81:
    ; End script.
    db $ff

; From vestibule room $32, reuse the open-or-closed door view.
LookC1KitchenDoor:

C1Sc5_82:
    ; Test current room.
    db $19, C1RoomIdMansionVestibule
    ; Branch if result bit 0 is set.
    db $04
    dw LookC1LiftDoor
    ; End script.
    db $ff

; Require flag $27 before passing between vestibule room $32 and kitchen room $34.
MoveC1KitchenDoor:

C1Sc5_83:
    ; Test object flag.
    db $16, C1ButlerDown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ButlerShutsDoor
    ; Test current room.
    db $19, C1RoomIdMansionVestibule
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EstateToRoom32
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdMansionKitchen
    ; Show message 1.
    db $01, $ae ; Message Text0FMessage2E: キッチンだ。 / きちんと せいとんされている。[PAGE] / あの しつじが つかっているの / だろうか・・・?[END]
    ; End script.
    db $ff

; Check exit $32 and show the vestibule description.
C1EstateToRoom32:

C1Loc5_6A:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdMansionVestibule
    ; Show message 1.
    db $01, $a9 ; Message Text0FMessage29: げんかんだ。 / とても ひろい。[END]
    ; End script.
    db $ff

; Describe the upstairs staircase only from vestibule room $32.
LookC1EstateStairs:

C1Sc5_84:
    ; Test current room.
    db $19, C1RoomIdMansionVestibule
    ; Branch if result bit 0 is set.
    db $04
    dw C1StairsShortView
    ; End script.
    db $ff

; Require flag $27 before using the stairs between rooms $32 and $35.
MoveC1EstateStairs:

C1Sc5_85:
    ; Test object flag.
    db $16, C1ButlerDown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ButlerShutsDoor
    ; Test current room.
    db $19, C1RoomIdMansionVestibule
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EstateToRoom32

; Check exit $35 and show the upstairs hallway.
C1EstateToUpstairsHall:

C1Loc5_6B:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdMansionUpstairsHallway
    ; Show message 1.
    db $01, $ba ; Message Text0FMessage3A: ろうかだ。 / ドアが 2つみえる。[END]
    ; End script.
    db $ff

; Use the bedroom passage toward room $36 from upstairs hall $35, or return toward the hall.
MoveC1MasterBedroom:

C1Sc5_86:
    ; Test current room.
    db $19, C1RoomIdMansionUpstairsHallway
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EstateToUpstairsHall

; Check exit $36 and choose master-bedroom text using flag $51.
C1EstateToMasterBedroom:

C1Loc5_6C:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdMansionMasterBedroom
    ; Test object flag.
    db $16, C1MasterBedroomSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1MasterBedroomRepeat
    ; Show message 1.
    db $01, $bc ; Message Text0FMessage3C: ここは べッドルームのようだ。 / はっ・・・! / おとこが ねている。[END]
    ; Set object flag.
    db $17, C1MasterBedroomSeen
    ; End script.
    db $ff

; Show the repeat master-bedroom description.
C1MasterBedroomRepeat:

C1Loc5_AB:
    ; Show message 1.
    db $01, $c9 ; Message Text0FMessage49: シンプルな つくりの / べッドルームだ。[END]
    ; End script.
    db $ff

; Use the guestroom passage toward room $37 from upstairs hall $35, or return toward the hall.
MoveC1GuestBedroom:

C1Sc5_87:
    ; Test current room.
    db $19, C1RoomIdMansionUpstairsHallway
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EstateToUpstairsHall

; Check exit $37 and choose guestroom text using flag $52.
C1EstateToGuestBedroom:

C1Loc5_6D:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdMansionGuestBedroom
    ; Test object flag.
    db $16, C1GuestBedroomSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1GuestBedroomRepeat
    ; Show message 1.
    db $01, $cb ; Message Text0FMessage4B: ウップ! / やすっぽい こうすいの かおりが / つよく ただよっている。[PAGE] / ここは しんしつのようだ。[PAGE] / かぐや ちょうどひんの ごうかさ...
    ; Set object flag.
    db $17, C1GuestBedroomSeen
    ; End script.
    db $ff

; Show the repeat guestroom description.
C1GuestBedroomRepeat:

C1Loc5_AC:
    ; Show message 1.
    db $01, $d7 ; Message Text0FMessage57: ゲストルームだ。 / こうかそうな かぐるいが / おいてある。[END]
    ; End script.
    db $ff

; Pass between master-bedroom room $36 and guestroom $37 using the shared entry scripts.
MoveC1BedroomLink:

C1Sc5_88:
    ; Test current room.
    db $19, C1RoomIdMansionMasterBedroom
    ; Branch if result bit 0 is clear.
    db $05
    dw C1EstateToMasterBedroom
    ; Jump to script.
    db $1c
    dw C1EstateToGuestBedroom

; Describe ladder $41 downward from room $1d and upward from the other side.
LookC1SewerLadder41:

C1Sc5_89:
    ; Test current room.
    db $19, C1RoomIdJoeStreetUpperSewer
    ; Branch if result bit 0 is set.
    db $04
    dw C1SewerLadder41Down
    ; Show message 1.
    db $01, $21 ; Message Text0EMessage21: うえに つうじる はしごだ。 / かなり さびついている。[END]
    ; End script.
    db $ff

; Show ladder $41's downward description.
C1SewerLadder41Down:

C1Loc5_6E:
    ; Show message 1.
    db $01, $29 ; Message Text0EMessage29: したへ おりる はしごだ。 / この したは・・・![END]
    ; End script.
    db $ff

; Use ladder $41 toward room $3b from room $1d, or return toward room $1d.
MoveC1SewerLadder41:

C1Sc5_8A:
    ; Test current room.
    db $19, C1RoomIdJoeStreetUpperSewer
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ManholeToRoom1D

; Check exit $3b and choose sewer text using flag $53.
C1SewerToRoom3B:

C1Loc5_6F:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdJoeStreetLowerSewer
    ; Test object flag.
    db $16, C1Sewer3BSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1SewerRoomRepeat
    ; Show message 1.
    db $01, $20 ; Message Text0EMessage20: げすいどうだ。 / へんな においが たちこめてくる。 / きぶんが ますます わるくなった。[END]
    ; Set object flag.
    db $17, C1Sewer3BSeen
    ; End script.
    db $ff

; Show the shared repeat sewer-room description.
C1SewerRoomRepeat:

C1Loc5_AD:
    ; Show message 1.
    db $01, $24 ; Message Text0EMessage24: げすいどうの なかだ。[END]
    ; End script.
    db $ff

; Describe ladder $42 upward from room $39 and downward from the other side.
LookC1SewerLadder42:

C1Sc5_8B:
    ; Test current room.
    db $19, C1RoomIdSewerJunction
    ; Branch if result bit 0 is clear.
    db $05
    dw C1SewerLadder42Down
    ; Show message 1.
    db $01, $21 ; Message Text0EMessage21: うえに つうじる はしごだ。 / かなり さびついている。[END]
    ; End script.
    db $ff

; Show ladder $42's downward description.
C1SewerLadder42Down:

C1Loc5_70:
    ; Show message 1.
    db $01, $29 ; Message Text0EMessage29: したへ おりる はしごだ。 / この したは・・・![END]
    ; End script.
    db $ff

; Use ladder $42 toward room $39 from room $3d, or return toward room $3d.
MoveC1SewerLadder42:

C1Sc5_8C:
    ; Test current room.
    db $19, C1RoomIdJoeAlleyUpperSewer
    ; Branch if result bit 0 is clear.
    db $05
    dw C1ManholeToRoom3D

; Check exit $39 and choose sewer text using flag $54.
C1SewerToRoom39:

C1Loc5_71:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdSewerJunction
    ; Test object flag.
    db $16, C1Sewer39Seen
    ; Branch if result bit 0 is set.
    db $04
    dw C1SewerRoomRepeat
    ; Show message 1.
    db $01, $25 ; Message Text0EMessage25: げすいどうの なかだ。 / あしの ふみばに ちゅういを / はらわなければ・・・。[END]
    ; Set object flag.
    db $17, C1Sewer39Seen
    ; End script.
    db $ff

; Describe tunnel $43 according to whether Ace is in room $39.
LookC1SewerTunnel43:

C1Sc5_8D:
    ; Test current room.
    db $19, C1RoomIdSewerJunction
    ; Branch if result bit 0 is set.
    db $04
    dw C1SewerTunnel43View
    ; Show message 1.
    db $01, $22 ; Message Text0EMessage22: げすいの ながれぐちだ。 / ひとが じゅうぶん とおれそうだ。[END]
    ; End script.
    db $ff

; Show the dark side-tunnel description for tunnel $43.
C1SewerTunnel43View:

C1Loc5_72:
    ; Show message 1.
    db $01, $27 ; Message Text0EMessage27: よこあなだ。 / くらくて さきは みえない。[END]
    ; End script.
    db $ff

; Pass between sewer rooms $39 and $3b using their shared entry scripts.
MoveC1SewerTunnel43:

C1Sc5_8E:
    ; Test current room.
    db $19, C1RoomIdSewerJunction
    ; Branch if result bit 0 is clear.
    db $05
    dw C1SewerToRoom39
    ; Jump to script.
    db $1c
    dw C1SewerToRoom3B

; Describe tunnel $44 according to whether Ace is in room $39.
LookC1SewerTunnel44:

C1Sc5_8F:
    ; Test current room.
    db $19, C1RoomIdSewerJunction
    ; Branch if result bit 0 is set.
    db $04
    dw C1SewerTunnel44View
    ; Show message 1.
    db $01, $26 ; Message Text0EMessage26: まっくらな よこあなだ。[END]
    ; End script.
    db $ff

; Show the dark side-tunnel description for tunnel $44.
C1SewerTunnel44View:

C1Loc5_73:
    ; Show message 1.
    db $01, $27 ; Message Text0EMessage27: よこあなだ。 / くらくて さきは みえない。[END]
    ; End script.
    db $ff

; Pass between sewer rooms $39 and $3a using their shared entry scripts.
MoveC1SewerTunnel44:

C1Sc5_90:
    ; Test current room.
    db $19, C1RoomIdSewerJunction
    ; Branch if result bit 0 is clear.
    db $05
    dw C1SewerToRoom39
    ; Jump to script.
    db $1c
    dw C1LadderToSewer

; Describe tunnel $45 according to whether Ace is in room $3a.
LookC1SewerTunnel45:

C1Sc5_91:
    ; Test current room.
    db $19, C1RoomIdRackLadderSewer
    ; Branch if result bit 0 is set.
    db $04
    dw C1SewerTunnel45View
    ; Show message 1.
    db $01, $23 ; Message Text0EMessage23: げすいが ながれでている。 / とにかく ものすごい においだ。[END]
    ; End script.
    db $ff

; Show the dark-tunnel description for tunnel $45.
C1SewerTunnel45View:

C1Loc5_74:
    ; Show message 1.
    db $01, $26 ; Message Text0EMessage26: まっくらな よこあなだ。[END]
    ; End script.
    db $ff

; Go toward room $38 with room event $24, or return toward sewer room $3a.
MoveC1SewerTunnel45:

C1Sc5_92:
    ; Test current room.
    db $19, C1RoomIdLiftSewer
    ; Branch if result bit 0 is set.
    db $04
    dw C1LadderToSewer
    ; Check Case I room event for the room argument.
    db $5e, C1RoomIdAlligatorEncounter

jr_006_7d17:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdLiftSewer
    ; Test object flag.
    db $16, C1Sewer38Seen
    ; Branch if result bit 0 is set.
    db $04
    dw C1SewerRoomRepeat
    ; Show message 1.
    db $01, $20 ; Message Text0EMessage20: げすいどうだ。 / へんな においが たちこめてくる。 / きぶんが ますます わるくなった。[END]
    ; Set object flag.
    db $17, C1Sewer38Seen
    ; End script.
    db $ff

; Show the dark-tunnel description for passage $46.
LookC1SewerTunnel46:

C1Sc5_93:
    ; Show message 1.
    db $01, $26 ; Message Text0EMessage26: まっくらな よこあなだ。[END]
    ; End script.
    db $ff

; Go toward room $3c from room $39 and set flag $56 on the first description, or return toward room $39.
MoveC1SewerTunnel46:

C1Sc5_94:
    ; Test current room.
    db $19, C1RoomIdSewerJunction
    ; Branch if result bit 0 is clear.
    db $05
    dw C1SewerToRoom39
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdDeepestSewer
    ; Test object flag.
    db $16, C1Sewer3CSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1SewerRoomRepeat
    ; Show message 1.
    db $01, $2b ; Message Text0EMessage2B: げすいどうの もっとも したがわに / でたようだ。 / げすいが どんどん ながれている。[END]
    ; Set object flag.
    db $17, C1Sewer3CSeen
    ; End script.
    db $ff

; Show the trunk description.
LookC1TrunkDoor:

C1Sc5_95:
    ; Show message 2.
    db $02, $f2 ; Message Text0DMessage72: まるい トランクだ。 / ものが たくさん はいりそうだ。[END]
    ; End script.
    db $ff

; Check the trunk state and flag $5d, retaining the flag $b4 audio path.
OpenC1TrunkDoor:

C1Sc5_96:
    ; Test selected attribute bit 2.
    db $13
    ; Branch if result bit 0 is set.
    db $04
    dw C1TrunkAlreadyOpen
    ; Test object flag.
    db $16, C1TrunkOpenedOnce
    ; Branch if result bit 0 is clear.
    db $05
    dw C1TrunkLockCheck
    ; Play audio.
    db $5f, $0d

; Open the trunk with flag $5d set, or show the locked-trunk reply.
C1TrunkLockCheck:

C1Loc5_75:
    ; Test object flag.
    db $16, C1TrunkUnlocked
    ; Branch if result bit 0 is set.
    db $04
    dw C1TrunkOpenReply
    ; Show message 0.
    db $00, $47 ; Message Text0CMessage47: あけようとしたが カギが / かかっている・・・。[END]
    ; End script.
    db $ff

; Report that the trunk is already open.
C1TrunkAlreadyOpen:

C1Loc5_76:
    ; Set text name 0.
    db $1e, $7c
    ; Show message 2.
    db $02, $01 ; Message Text10Message01: [OBJECT_WRAM:37C5]は あいている。[END]
    ; End script.
    db $ff

; Open the selected trunk, show the reply, and set flag $b4.
C1TrunkOpenReply:

C1Loc5_77:
    ; Set selected state and refresh.
    db $1a
    ; Set text name 0.
    db $1e, $7c
    ; Show message 2.
    db $02, $00 ; Message Text10Message00: [OBJECT_WRAM:37C5]を あけた。[END]
    ; Set object flag.
    db $17, C1TrunkOpenedOnce
    ; End script.
    db $ff

; End all four actions for passage $48 without further work.
C1Passage48Empty:

C1Sc5_97:
    ; End script.
    db $ff

; Describe the mansion's front door and knocker.
LookC1MansionFrontDoor:

C1Sc5_98:
    ; Show message 1.
    db $01, $a0 ; Message Text0FMessage20: べっそうの げんかんだ。 / ドアには おおきくて りっぱな / ノッカーが ついている。[END]
    ; End script.
    db $ff

; Use the room $31 refusal or flag $27 to select normal opening or the butler's response.
OpenC1MansionFrontDoor:

C1Sc5_99:
    ; Test current room.
    db $19, C1RoomIdMansionFrontDoor
    ; Branch if result bit 0 is set.
    db $04
    dw C1MansionKnockHint
    ; Test object flag.
    db $16, C1ButlerDown
    ; Branch if result bit 0 is set.
    db $04
    dw OpenC1Door

; Check exit $31 and show the butler shutting the door.
C1MansionButlerDoorReply:

C1Loc5_78:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdMansionFrontDoor
    ; Show message 1.
    db $01, $aa ; Message Text0FMessage2A: バタン!!![PAGE] / おれの たいどが きに / いらなかったのか しつじは ドアを / しめてしまった。[END]
    ; End script.
    db $ff

; Suggest knocking when the front door will not open.
C1MansionKnockHint:

C1Loc5_79:
    ; Show message 1.
    db $01, $a1 ; Message Text0FMessage21: あかない。 / ここは やはり しんしになった / きもちで・・・。[END]
    ; End script.
    db $ff

; Report closed from room $31; otherwise use flag $27 to select normal closing or the butler's response.
CloseC1MansionFrontDoor:

C1Sc5_9A:
    ; Test current room.
    db $19, C1RoomIdMansionFrontDoor
    ; Branch if result bit 0 is set.
    db $04
    dw C1DoorAlreadyClosed
    ; Test object flag.
    db $16, C1ButlerDown
    ; Branch if result bit 0 is set.
    db $04
    dw CloseC1Door
    ; Jump to script.
    db $1c
    dw C1MansionButlerDoorReply
    ; Not reached from the recovered action and branch entries.
    db $ff

; Use flag $27 to choose the estate exit or the front-door approach.
MoveC1MansionFrontDoor:

C1Sc5_9B:
    ; Test object flag.
    db $16, C1ButlerDown
    ; Branch if result bit 0 is set.
    db $04
    dw C1MansionDoorToEstate
    ; Test current room.
    db $19, C1RoomIdMansionFrontDoor
    ; Branch if result bit 0 is set.
    db $04
    dw C1MansionFrontDoorView
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdMansionFrontDoor

; Show the front-door description after the approach.
C1MansionFrontDoorView:

C1Loc5_7A:
    ; Show message 1.
    db $01, $a0 ; Message Text0FMessage20: べっそうの げんかんだ。 / ドアには おおきくて りっぱな / ノッカーが ついている。[END]
    ; End script.
    db $ff

; Check exit $1c and show the estate exterior.
C1MansionDoorToEstate:

C1Loc5_7B:
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdEstateFront
    ; Show message 1.
    db $01, $9f ; Message Text0FMessage1F: べっそうの しゅうへんに ひとかげはみられない。[END]
    ; End script.
    db $ff

; End all actions for the four trailing passage rows $4a through $4d.
C1TrailingPassageEmpty:

C1Sc5_9C:
    ; End script.
    db $ff
