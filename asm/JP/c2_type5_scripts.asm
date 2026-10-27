
; Use the already-open reply or the shared closed-door description.
LookClosedDoor:
; Opcode starts are annotated; scalar operands and inline item-match rows remain data.

C2Sc5_00:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen

; Show the regional closed-door description shared by several doors.
ClosedDoorReply:

C2Loc5_00:
    ; Show message 0.
    db $00, $2a ; Message Text12Message2A: もくせいの ドアだ。[END]
    ; End script.
    db $ff

; Select the bathroom-side or bedroom-side opening path.
OpenVegasBathDoor:

C2Sc5_01:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on inequality.
    db $55, RoomVegasBath
    dw OpenBathDoorOuter
    ; Call script.
    db $05
    dw DoorOpening
    ; Test object flag and branch when set.
    db $08, C2TrenchTaken
    dw HideBathPants
    ; Hide object.
    db $2a, C2VisIdBathTrench
    ; Refresh room objects.
    db $2b

; Hide pants object 02 unless the pants have already been taken.
HideBathPants:

C2Loc5_01:
    ; Test object flag and branch when set.
    db $08, C2PantsTaken
    dw FinishBathDoorOpen
    ; Hide object.
    db $2a, C2VisIdBathPants
    ; Refresh room objects.
    db $2b

; Set the selected bathroom door state and end the action.
FinishBathDoorOpen:

C2Loc5_02:
    ; Set selected state and refresh.
    db $21
    ; End script.
    db $ff

; Hide trench object 01 unless it has been taken before the attribute path.
OpenBathDoorOuter:

C2Loc5_03:
    ; Test object flag and branch when set.
    db $08, C2TrenchTaken
    dw HideBathPantsOuter
    ; Hide object.
    db $2a, C2VisIdBathTrench

; Hide untaken pants and continue through the attribute opening helper.
HideBathPantsOuter:

C2Loc5_04:
    ; Test object flag and branch when set.
    db $08, C2PantsTaken
    dw OpenDoorAttr
    ; Hide object.
    db $2a, C2VisIdBathPants
    ; Jump to script.
    db $07
    dw OpenDoorAttr

; Close the door using state or attribute and restore untaken clothing objects.
CloseVegasBathDoor:

C2Sc5_02:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test room argument and branch on equality.
    db $25, RoomVegasBedroom
    dw CloseBathDoorOuter
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $03 ; Message Text18Message03: [OBJECT_WRAM:37C5]を しめた。[END]
    ; Clear selected state and refresh.
    db $23
    ; Test object flag and branch when set.
    db $08, C2TrenchTaken
    dw ShowBathPants
    ; Show object.
    db $29, C2VisIdBathTrench
    ; Refresh room objects.
    db $2b

; Show untaken pants object 02 and refresh the objects.
ShowBathPants:

C2Loc5_A4:
    ; Test object flag and branch when set.
    db $08, C2PantsTaken
    dw EndC2Path
    ; Show object.
    db $29, C2VisIdBathPants
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Clear the door attribute and restore the untaken trench object.
CloseBathDoorOuter:

C2Loc5_A5:
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $03 ; Message Text18Message03: [OBJECT_WRAM:37C5]を しめた。[END]
    ; Clear selected attribute bit 2.
    db $1f
    ; Test object flag and branch when set.
    db $08, C2TrenchTaken
    dw ShowBathPantsOuter
    ; Show object.
    db $29, C2VisIdBathTrench

; Show untaken pants object 02 on the bedroom-side closing path.
ShowBathPantsOuter:

C2Loc5_A6:
    ; Test object flag and branch when set.
    db $08, C2PantsTaken
    dw EndC2Path
    ; Show object.
    db $29, C2VisIdBathPants
    ; End script.
    db $ff

; Move between the hotel bathroom and bedroom and select the arrival description.
UseVegasBathDoor:

C2Sc5_03:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasBath

jr_008_45b8:
    db RoomVegasBedroom
    ; Test room argument and branch on inequality.
    db $55, RoomVegasBath
    dw EnterVegasRoom
    ; Show message 0.
    db $00, $08 ; Message Text12Message08: うすぎたない バスルームの なかだ。[END]
    ; End script.
    db $ff

; Describe the bedroom and retain Stogie first appearance, waits, and cigar ring object.
EnterVegasRoom:

C2Loc5_05:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $30 ; Message Text12Message30: ずいぶん せまくて きたない / べッドルームだな・・・。[PAGE] / ここは あまり いいホテルでは / ないようだ。[END]
    ; Test object flag and branch when set.
    db $08, C2StogieMet
    dw EndC2Path
    ; Show message 0.
    db $00, $32 ; Message Text12Message32: ・・・!!!!![PAGE] / どこからか やすっぽい スーツをきたおとこが あらわれて こういった。[END]
    ; Run scene effect.
    db $39, FxStogie
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $33 ; Message Text12Message33: 「おれは ストージー・マーチン。 /  おまえを かんししろと ボスに /  めいれいされたんだ。[PAGE] /  もし かねを みつけだせなかった /  ときには お...
    ; Resume text.
    db $2f
    ; Wait sixty ticks.
    db $7e
    ; Restore saved Case II effect.
    db $3a
    ; Show object.
    db $29, C2VisIdBedroomCigarRing
    ; Refresh room objects.
    db $2b
    ; Play audio.
    db $3e, $12
    ; Set object flag.
    db $09, C2StogieMet
    ; Show message 0.
    db $00, $34 ; Message Text12Message34: ストージーは ぶきみな わらいを / のこし シガーリングを おとして / へやから でていった。[END]
    ; End script.
    db $ff

; Describe the room door and show the key hint only from the hallway.
LookVegasRoomDoor:

C2Sc5_04:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $2a ; Message Text12Message2A: もくせいの ドアだ。[END]
    ; Test room argument and branch on equality.
    db $25, RoomVegasBedroom
    dw EndC2Path

; Show the shared key hint, retaining the original regional wording.
DoorKeyHint:

C2Loc5_06:
    ; Show message 2.
    db $02, $08 ; Message Text16Message08: ・・・おや? / カギあなが ついているぞ![END]
    ; End script.
    db $ff

; Reject opening from the hallway and retain the bedroom attribute path.
OpenVegasRoomDoor:

C2Sc5_05:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomVegasHall1
    dw DoorLockedReply
    ; Jump to script.
    db $07
    dw OpenDoorAttr

; Close from the bedroom and retain the hallway no-operation path.
CloseVegasRoomDoor:

C2Sc5_06:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test room argument and branch on equality.
    db $25, RoomVegasHall1
    dw EndC2Path
    ; Jump to script.
    db $07
    dw CloseDoorAttr

; Move between bedroom and hallway and retain the first-visit and clothing checks.
UseVegasRoomDoor:

C2Sc5_07:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasBedroom, RoomVegasHall1

jr_008_4602:
    ; Test room argument and branch on equality.
    db $25, RoomVegasBedroom
    dw EnterVegasRoom
    ; Test object flag and branch when set.
    db $08, C2VegasHallSeen
    dw CheckVegasHallDress
    ; Clear the bedroom-door timer.
    db $42, C2BedIx
    ; Test object flag and branch when clear.
    db $54, C2PantsWorn
    dw VegasDressRebuff
    ; Show message 0.
    db $00, $47 ; Message Text12Message47: 1かいの ろうかだ。 / しょうめんから ガチャガチャと / にぎやかな おとがする。[END]
    ; Set object flag.
    db $09, C2VegasHallSeen
    ; End script.
    db $ff

; Show the original bouncer scene and return the unclothed player to the bedroom.
VegasDressRebuff:

C2Loc5_07:
    ; Show message 0.
    db $00, $81 ; Message Text13Message01: へやから でたとたん にんそうの / わるい おとこが おれの まえに / たちはだかった![END]
    ; Run scene effect.
    db $39, FxBouncer
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $ef ; Message Text13Message6F: 「おい! /  ちょっとまて![PAGE] /  おまえ そんな かっこうで ここを あるきまわるつもりか?[PAGE] /  この おれの めの くろいうちは /  そ...
    ; Wait sixty ticks.
    db $7e
    ; Prepare room move and read two room arguments.
    db $3b, RoomVegasHall1, RoomVegasBedroom
    ; Show message 0.
    db $00, $82 ; Message Text13Message02: おれは むりやり へやの なかに / おしこめられてしまった。[END]
    ; End script.
    db $ff

; Require pants before the repeated hallway description.
CheckVegasHallDress:

C2Loc5_08:
    ; Test object flag and branch when clear.
    db $54, C2PantsWorn
    dw VegasDressRebuff

; Show the first-floor hallway description shared by several routes.
VegasHallReply:

C2Loc5_09:
    ; Show message 0.
    db $00, $48 ; Message Text12Message48: 1かいの ろうかだ。[END]
    ; End script.
    db $ff

; Reject an already-open door or use the shared state opening helper.
OpenSceneDoor:

C2Sc5_08:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Jump to script.
    db $07
    dw OpenDoorState

; Move between the first-floor hallway and Lucky Dice lobby.
UseVegasLobbyDoor:

C2Sc5_09:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasHall1, RoomVegasLobby
    ; Test room argument and branch on equality.
    db $25

jr_008_4637:
    db RoomVegasHall1
    dw VegasHallReply

; Describe the Lucky Dice lobby and its chip sounds using the regional text.
LuckyLobbyReply:

C2Loc5_0A:
    ; Show message 0.
    db $00, $6e ; Message Text12Message6E: ラッキーダイスホテルの ロビーだ。 / チップを かさねる おとが / きこえてくる・・・。[PAGE] / ・・・なんだか ワクワクするな。[END]
    ; End script.
    db $ff

; Describe the quiet guest-room door and use the shared key hint.
LookQuietGuestDoor:

C2Sc5_0A:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $50 ; Message Text12Message50: きゃくしつの ドアだ。 / みみを ちかづけてみたが なにも / きこえない。[END]
    ; Jump to script.
    db $07
    dw DoorKeyHint

; Select the outside or inside elevator-door description.
LookVegasLift1:

C2Sc5_0B:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomVegasHall1
    dw LiftPaintReply
    ; Show message 0.
    db $00, $a4 ; Message Text13Message24: なかなか シャレた ドアだ。 / デザインが いいな・・・。[END]
    ; End script.
    db $ff

; Show the shared freshly painted elevator-door description.
LiftPaintReply:

C2Loc5_0B:
    ; Show message 0.
    db $00, $51 ; Message Text12Message51: エレべータの ドアだ。 / さいきん ぺンキを ぬりかえた / ばかりらしい。[PAGE] / ツーンと はなを しげきする / においがする。[END]
    ; End script.
    db $ff

; Clear the closure timer and open the selected lift state unless already open.
OpenVegasLift1:

C2Sc5_0C:
    ; Test attribute bit 2 and branch when set.
    db $1d
    ; Target DoorNoEffect; retain the interior label.
    db LOW(DoorNoEffect)

jr_008_4652:
    db HIGH(DoorNoEffect)
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Jump to script.
    db $07
    dw OpenDoorState

; Keep the fourth-floor lift opening entry and use the shared timed opening path.
OpenVegasLift4:

C2Sc5_0D:
    ; Jump to script.
    db $07
    dw OpenTimedLiftDoor

; Keep the third-floor lift opening entry and use the shared timed opening path.
OpenVegasLift3:

C2Sc5_0E:
    ; Jump to script.
    db $07
    dw OpenTimedLiftDoor

; Clear the closure timer and use the state opening helper unless already open.
OpenTimedLiftDoor:

C2Sc5_0F:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorNoEffect
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Jump to script.
    db $07
    dw OpenDoorState

; Show the shared cannot-open reply at this separate entry.
DoorCannotOpen:

C2Sc5_10:
    ; Show message 0.
    db $00, $d3 ; Message Text13Message53: うーん・・・。 / あかない・・・。[END]
    ; End script.
    db $ff

; Move between the first-floor hall and lift, retaining objects 13 and 11.
UseVegasLift1:

C2Sc5_11:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasHall1, RoomVegasLift1
    ; Test room argument and branch on equality.
    db $25

jr_008_466d:
    db RoomVegasHall1
    dw VegasHallReply
    ; Hide object.
    db $2a, C2VisIdLiftFloor3
    ; Show object.
    db $29, C2VisIdLiftFloor1

; Refresh objects and show the original regional lift description.
VegasLiftReply:

C2Loc5_0C:
    ; Refresh room objects.
    db $2b
    ; Show message 0.
    db $00, $9d ; Message Text13Message1D: さいしんしきの エレべータだ。 / すごいなあ・・・。[END]
    ; End script.
    db $ff

; Show the busy cashier passage from the lobby or the shared quiet reply.
LookCashierWay:

C2Sc5_12:
    ; Test room argument and branch on inequality.
    db $55, RoomVegasLobby
    dw QuietPlaceReply

; Show the shared busy-place description.
BusyPlaceReply:

C2Loc5_0D:
    ; Show message 0.
    db $00, $73 ; Message Text12Message73: にぎやかだな・・・。[END]
    ; End script.
    db $ff

; Show the quiet-place reply shared by several passages.
QuietPlaceReply:

C2Sc5_13:
    ; Show message 0.
    db $00, $88 ; Message Text13Message08: ・・・しずかだ。[END]
    ; End script.
    db $ff

; Move between the lobby and cashier area and retain the clothing checks.
UseCashierWay:

C2Sc5_14:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasLobby, RoomVegasCashier
    ; Test room argument and branch on equality.
    db $25, RoomVegasLobby

jr_008_4687:
    dw LuckyLobbyReply

; Check the pants flag before the cashier description.
CheckCashierDress:

C2Loc5_0E:
    ; Test object flag and branch when clear.
    db $54, C2PantsWorn
    dw CheckCashierUni

; Describe the casino cashier and chip exchange.
LookC2Cashier:

C2Loc5_0F:
    ; Show message 0.
    db $00, $7c ; Message Text12Message7C: りょうがえしょだ。 / ここで かねと チップを / こうかんするようだ。[END]
    ; End script.
    db $ff

; Allow the cashier description in uniform; otherwise call the bouncer.
CheckCashierUni:

C2Loc5_10:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw CashierDressCue
    ; Jump to script.
    db $07
    dw LookC2Cashier
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Jump to script.
    db $07
    dw LookC2Cashier

; Name the cashier and run the bouncer clothing response.
CashierDressCue:

C2Loc5_11:
    ; Set text name 0.
    db $30, $b6
    ; Call script.
    db $05
    dw BouncerDressCue
    ; Test state bit.
    db $0e, C2StateCasinoFrontDoorOpen
    ; Branch if result bit 0 is set.
    db $03
    dw EvictCashierDress
    ; Set state bit.
    db $0f, C2StateCasinoFrontDoorOpen

; Play the room cue and prepare the move from room 04 to 11.
EvictCashierDress:

C2Loc5_12:
    ; Play room audio cue.
    db $5a
    ; Prepare room move and read two room arguments.
    db $3b, RoomVegasCashier, RoomHotelFront

; Show the bouncer throwing Ace out and clear state 06.
CasinoEjectReply:

C2Loc5_13:
    ; Show message 0.
    db $00, $70 ; Message Text12Message70: おれは ようじんぼうに / つまみだされてしまった・・・。[END]
    ; Play audio.
    db $3e, $12
    ; Clear state and refresh.
    db $24, C2StateCasinoFrontDoorOpen
    ; End script.
    db $ff

; Call the bodyguard, show the clothing refusal, and reset item slots.
BouncerDressCue:

C2Loc5_14:
    ; Show message 3.
    db $2c ; Message Text18Message1E: [OBJECT_WRAM:37C5]は おおごえで / ようじんぼうを よんだ![END]

jr_008_46b2:
    db $1e
    ; Resume text.
    db $2f
    ; Run scene effect.
    db $39, FxBouncer
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $6f ; Message Text12Message6F: とつぜん ようじんぼうが ゆくてを / はばんだ。[PAGE] / 「なんだ!? /  おまえは!![PAGE] /  そんな かっこうで ここへは /  はいれないぞ!...
    ; Wait sixty ticks.
    db $7e
    ; Reset item slots.
    db $7f
    ; Return to calling script.
    db $06

; Describe the casino entrance or report the door already open.
LookCasinoDoor:

C2Sc5_15:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Show message 0.
    db $00, $74 ; Message Text12Message74: いりぐちの ドアだ。[END]
    ; End script.
    db $ff

; Open the casino door through its original state or attribute path.
OpenCasinoDoor:

C2Sc5_16:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomHotelFront
    dw OpenDoorState
    ; Jump to script.
    db $07
    dw OpenDoorAttr

; Close the casino door through its original state or attribute path.
CloseCasinoDoor:

C2Sc5_17:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test room argument and branch on equality.
    db $25, RoomVegasLobby
    dw CloseDoorAttr
    ; Jump to script.
    db $07
    dw CloseDoorState

; Retain the casino door glass checks and the original bouncer ejection route.
BreakCasinoDoor:

C2Sc5_18:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorNoEffect
    ; Test state bit.
    db $0e, C2CasinoGlass
    ; Branch if result bit 0 is set.
    db $03
    dw DoorGlassBroken
    ; Play audio.
    db $3e, $13
    ; Test room argument and branch on equality.
    db $25, RoomHotelFront
    dw BreakCasinoOut
    ; Set state bit.
    db $0f, C2CasinoGlass
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $7a ; Message Text12Message7A: ドアの ガラスが われて / へやじゅうに ものすごい おとが / ひびきわたった。[END]
    ; Run scene effect.
    db $39, FxBouncer
    ; Play audio.
    db $3e, $09
    ; Show message 0.
    db $00, $7b ; Message Text12Message7B: 「このやろう! /  なんてことを するんだ!」[END]
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw EjectCasinoDoor
    ; Set state bit.
    db $0f, C2StateCasinoFrontDoorOpen

; Prepare the move from room 03 to 11 and enter the bouncer ejection reply.
EjectCasinoDoor:

C2Loc5_15:
    ; Prepare room move and read two room arguments.
    db $3b, RoomVegasLobby, RoomHotelFront
    ; Jump to script.
    db $07
    dw CasinoEjectReply

; Set the outside casino glass state and use the shared glass breaking reply.
BreakCasinoOut:

C2Loc5_16:
    ; Set state and refresh without cue.
    db $22, C2CasinoGlass

jr_008_46ff:
    ; Jump to script in bank $07.
    db $7d
    dw GlassBreakReply
    db $07

; Prepare the glass name and show the shared already-broken reply.
DoorGlassBroken:

C2Loc5_17:
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $01 ; Message Text18Message01: [OBJECT_WRAM:37C5]は われている。[END]
    ; End script.
    db $ff

; Move between the casino lobby and entrance and show the original description.
UseCasinoDoor:

C2Sc5_19:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasLobby, RoomHotelFront
    ; Test room argument and branch on equality.
    db $25, RoomVegasLobby
    dw LuckyLobbyReply
    ; Show message 0.
    db $00, $cc ; Message Text13Message4C: レンガづくりの ホテルの まえだ。[END]
    ; End script.
    db $ff

; Describe the blackjack dealer from the cashier area or use the shared quiet reply.
LookDealerWay:

C2Sc5_1A:
    ; Test room argument and branch on inequality.
    db $55

jr_008_4713:
    db RoomVegasCashier
    dw QuietPlaceReply
    ; Show message 0.
    db $00, $89 ; Message Text13Message09: ブラックジャックの テーブルで / ディーラーが カードを きっている。[END]
    ; End script.
    db $ff

; Move between cashier and dealer areas and retain their clothing checks.
UseDealerWay:

C2Sc5_1B:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasCashier, RoomVegasBlackjack
    ; Test room argument and branch on inequality.
    db $55, RoomVegasCashier
    ; Target CheckDealerDress; retain the interior label.
    db LOW(CheckDealerDress)

jr_008_471f:
    db HIGH(CheckDealerDress)
    ; Jump to script.
    db $07
    dw CheckCashierDress

; Check the pants flag before greeting the blackjack dealer.
CheckDealerDress:

C2Loc5_18:
    ; Test object flag and branch when clear.
    db $54, C2PantsWorn
    dw CheckDealerUni

; Choose the blackjack dealer greeting from the Rudy recognition flag.
DealerIntro:

C2Loc5_19:
    ; Test object flag and branch when set.
    db $08, C2RudyKnows
    dw RudyIntro
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $86 ; Message Text13Message06: ブラックジャックの テーブルだ。 / ディーラーが さそうような めつきでおれに いった。[END]
    ; Show message 0.
    db $00, $87 ; Message Text13Message07: 「きょうは まけてばかりなのです。 /  わたしと しょうぶしたいなら /  いまが チャンスですよ!」[END]
    ; End script.
    db $ff

; Allow the dealer greeting in uniform; otherwise enter the clothing refusal.
CheckDealerUni:

C2Loc5_1A:
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw DealerIntro
    ; Jump to script.
    db $07
    dw DealerDressName
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Test object flag and branch when set.
    db $08, $50
    dw DealerIntro

; Choose the dealer name for the clothing refusal.
DealerDressName:

C2Loc5_1B:
    ; Test object flag and branch when set.
    db $08, C2RudyKnows
    dw RudyDressName
    ; Set text name 0.
    db $30, $bd

; Run the bouncer response and set state 06 if it was clear.
DealerDressCue:

C2Loc5_1C:
    ; Call script.
    db $05
    dw BouncerDressCue
    ; Test state bit.
    db $0e, C2StateCasinoFrontDoorOpen
    ; Branch if result bit 0 is set.
    db $03
    dw EvictDealerDress
    ; Set state bit.
    db $0f, C2StateCasinoFrontDoorOpen

; Play the room cue and prepare the move from room 05 to 11.
EvictDealerDress:

C2Loc5_1D:
    ; Play room audio cue.
    db $5a
    ; Prepare room move and read two room arguments.
    db $3b, RoomVegasBlackjack, RoomHotelFront
    ; Jump to script.
    db $07
    dw CasinoEjectReply

; Name Rudy before the shared clothing refusal.
RudyDressName:

C2Loc5_1E:
    ; Set text name 0.
    db $30, $be
    ; Jump to script.
    db $07
    dw DealerDressCue

; Show Rudy greeting Ace after recognizing him.
RudyIntro:

C2Loc5_1F:
    ; Show message 0.
    db $00, $94 ; Message Text13Message14: ルーディーが いたずらっぽく / わらいながら ささやいた・・・。[PAGE] / 「エース・・・。 /  おまえは ギャンブルも /  ボクシングも かつために /  ...
    ; End script.
    db $ff

; Describe the second-floor lift door or share the exterior paint reply.
LookVegasLift2:

C2Sc5_1C:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on inequality.
    db $55, RoomVegasLift2
    dw LiftPaintReply

; Show the shared inside elevator-door description.
LiftInnerDoorReply:

C2Sc5_1D:
    ; Show message 0.
    db $00, $5a ; Message Text12Message5A: エレべータの ドアだ。[END]
    ; End script.
    db $ff

; Move between the second-floor hall and lift and select the arrival reply.
UseVegasLift2:

C2Sc5_1E:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasHall2, RoomVegasLift2
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift2
    dw EnterVegasLift2
    ; Show message 0.
    db $00, $52 ; Message Text12Message52: 2かいの ろうかだ。 / しずかだな・・・。[END]
    ; End script.
    db $ff

; Show object 12 before the shared lift arrival description.
EnterVegasLift2:

C2Loc5_20:
    ; Show object.
    db $29, C2VisIdLiftFloor2
    ; Jump to script.
    db $07

jr_008_4772:
    dw VegasLiftReply

; Describe this guest-room door and use the shared key hint.
LookGuestDoor2:

C2Sc5_1F:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $55 ; Message Text12Message55: きゃくしつの ドアだ。 / なかには だれも いないようだ。[END]
    ; Jump to script.
    db $07
    dw DoorKeyHint

; Describe this separate guest-room door, retaining the regional sound difference.
LookGuestDoor3:

C2Sc5_20:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $56 ; Message Text12Message56: きゃくしつの ドアだ。 / なかからは ものおとひとつ / きこえない。[END]
    ; Jump to script.
    db $07
    dw DoorKeyHint

; Describe the third-floor lift door using the original inside or outside reply.
LookVegasLift3:

C2Sc5_21:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift3
    dw LiftInnerDoorReply
    ; Jump to script.
    db $07
    dw LiftPaintReply

; Move between the third-floor hall and lift and select the arrival reply.
UseVegasLift3:

C2Sc5_22:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasHall3, RoomVegasLift3
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift3
    dw EnterVegasLift3

; Show the original third-floor hallway description.
VegasHall3Reply:

C2Loc5_21:
    ; Show message 0.
    db $00, $57 ; Message Text12Message57: 3かいの ろうかだ。 / せまいな・・・。[END]
    ; End script.
    db $ff

; Show object 13 before the shared lift arrival description.
EnterVegasLift3:

C2Loc5_22:
    ; Show object.
    db $29, C2VisIdLiftFloor3
    ; Jump to script.
    db $07

jr_008_4797:
    ; Target VegasLiftReply; retain the interior label.
    db LOW(VegasLiftReply)

jr_008_4798:
    db HIGH(VegasLiftReply)

; Inspect the Vegas hamper lid, retaining its open and room checks.
LookVegasLid:

C2Sc5_23:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw VegasLidLookOpen
    ; Test room argument and branch on inequality.
    db $55, RoomVegasHall3
    ; Target VegasLidText; retain the interior label.
    db LOW(VegasLidText)

jr_008_479f:
    db HIGH(VegasLidText)

; Read the Reliant Cleaners mark and use the photo knowledge to form the original plan.
ReadHamperMark:

C2Loc5_23:
    ; Test object flag and branch when clear.
    db $54, C2VegasHamperWritingSeen
    dw LookVegasHamper
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $5c ; Message Text12Message5C: 「リライアント・クリーニングてん」とよこに かいてある。[END]
    ; Test object flag and branch when clear.
    db $54, C2PhotoSeen
    dw ThinkHamperRun
    ; Play audio.
    db $3e, $08
    ; Show message 0.
    db $00, $5e ; Message Text12Message5E: そうだ![PAGE] / このなかに かくれていれば / しゃしんに うつっていた / クリーニングてんに もぐりこめるに / ちがいない![END]
    ; Set object flag.
    db $09, C2HamperPlan
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Show the original thought about the hamper being taken to the cleaners.
ThinkHamperRun:

C2Loc5_24:
    ; Show message 0.
    db $00, $5d ; Message Text12Message5D: これを クリーニングてんに / もってかえって なかのものを / せんたくするのだろう。[END]
    ; End script.
    db $ff

; Show the first large-hamper description and mark it inspected.
LookVegasHamper:

C2Loc5_25:
    ; Show message 0.
    db $00, $5b ; Message Text12Message5B: ひとが ひとり はいれそうなくらい / おおきな せんたくものいれだ。[PAGE] / ・・・おや? / よこに なにか かいてあるぞ![END]
    ; Set object flag.
    db $09, C2VegasHamperWritingSeen
    ; End script.
    db $ff

; Show the original hamper lid description.
VegasLidText:

C2Loc5_26:
    ; Show message 0.
    db $00, $e8 ; Message Text13Message68: せんたくものいれの ふただ。[END]
    ; End script.
    db $ff

; Describe the open lid and read the hamper mark only from the third-floor hallway.
VegasLidLookOpen:

C2Loc5_27:
    ; Hold text.
    db $2e
    ; Set text name 0.
    db $30, $bb
    ; Show message 3.
    db $2c, $19 ; Message Text18Message19: [OBJECT_WRAM:37C5]は あいている。[END]
    ; Test room argument and branch on inequality.
    db $55, RoomVegasHall3
    dw EndC2Path
    ; Jump to script.
    db $07
    dw ReadHamperMark

; Open the Vegas hamper lid, set object flag $1d, and exchange the visible lid objects.
OpenVegasLid:

C2Sc5_24:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw VegasLidOpen
    ; Set text name 0.
    db $30, $bb
    ; Show message 3.
    db $2c, $02 ; Message Text18Message02: [OBJECT_WRAM:37C5]を あけた。[END]
    ; Set object flag.
    db $09, C2VegasHamperMarkRevealed
    ; Draw Case II panel and marks.
    db $3c
    ; Set selected state and refresh.
    db $21
    ; Hide object.
    db $2a, C2VisIdVegasHamperClosed
    ; Show object.
    db $29, C2VisIdVegasHamperOpen
    ; End script.
    db $ff

; Show the original already-open lid reply.
VegasLidOpen:

C2Loc5_28:
    ; Set text name 0.
    db $30, $bb
    ; Show message 3.
    db $2c, $19 ; Message Text18Message19: [OBJECT_WRAM:37C5]は あいている。[END]
    ; End script.
    db $ff

; Close the Vegas lid and clear object flag $9c, also set by TakeC2News4.
CloseVegasLid:

C2Sc5_25:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw VegasLidClosed
    ; Set text name 0.
    db $30, $bb
    ; Show message 3.
    db $2c, $03 ; Message Text18Message03: [OBJECT_WRAM:37C5]を しめた。[END]
    ; Clear object flag.
    db $0a, $9c
    ; Draw Case II panel and marks.
    db $3c
    ; Clear selected state and refresh.
    db $23
    ; Hide object.
    db $2a, C2VisIdVegasHamperOpen
    ; Show object.
    db $29, C2VisIdVegasHamperClosed
    ; End script.
    db $ff

; Show the original already-closed lid reply.
VegasLidClosed:

C2Loc5_A7:
    ; Set text name 0.
    db $30, $bb
    ; Show message 3.
    db $2c, $1a ; Message Text18Message1A: [OBJECT_WRAM:37C5]は しまっている。[END]
    ; End script.
    db $ff

; Move between the third-floor hallway and hamper interior using the original state checks.
UseVegasHamper:

C2Sc5_26:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasHall3, RoomVegasHamper
    ; Test room argument and branch on inequality.
    db $55, RoomVegasHamper
    dw VegasHall3Reply
    ; Show message 0.
    db $00, $5f ; Message Text12Message5F: せんたくものいれの なかに / はいった。[PAGE] / うーっ・・・! / あせくさーっ!![END]
    ; End script.
    db $ff

; Describe the fourth-floor lift door through the original inside or outside reply.
LookVegasLift4:

C2Sc5_27:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25

jr_008_4802:
    db RoomVegasLift4
    dw LiftInnerDoorReply
    ; Jump to script.
    db $07
    dw LiftPaintReply

; Move between the fourth-floor hallway and lift and retain the first-visit memory sequence.
UseVegasLift4:

C2Sc5_28:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasHall4, RoomVegasLift4
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift4
    dw EnterVegasLift4
    ; Test object flag and branch when set.
    db $08, C2VegasHall4Seen
    dw VegasHall4Reply
    ; Show message 0.
    db $00, $65 ; Message Text12Message65: ホテルの 4かいだ。 / この かいは オフィスに なっているようだ。[PAGE] / へやは ふたつあり それぞれの / ドアに ひょうさつが かかっている。[END]
    ; Run scene effect.
    db $39, $02
    ; Play audio.
    db $3e, $0a
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $63 ; Message Text12Message63: 「アンソニー・マロン」と / 「ダニー・べンティーニ」・・・。[PAGE] / このまちで かれらの なまえを / しらない ひとは いない・・・。[PAGE] / そう...
    ; Wait sixty ticks.
    db $7e
    ; Show Case II effect without saving it again.
    db $66, $0d
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $64 ; Message Text12Message64: ある ちほうけんさつかんが かれらをたいほできる ゆうりょくな / しょうこを つかんだ。[PAGE] / だが その けんさつかんは したいでみつかった。 / ・・・と...
    ; Wait sixty ticks.
    db $7e
    ; Restore saved Case II effect.
    db $3a
    ; Set object flag.
    db $09, C2VegasHall4Seen
    ; End script.
    db $ff

; Show the fourth-floor hallway reply shared by the office exits.
VegasHall4Reply:

C2Loc5_29:
    ; Show message 0.
    db $00, $66 ; Message Text12Message66: 4かいの ろうかだ。[END]
    ; End script.
    db $ff

; Show object 14 before the shared lift arrival description.
EnterVegasLift4:

C2Loc5_2A:
    ; Show object.
    db $29, C2VisIdLiftFloor4
    ; Jump to script.
    db $07
    dw VegasLiftReply

; Read the Ventini sign from the hallway or use the shared closed-door reply.
LookVentiniDoor:

C2Sc5_29:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on inequality.
    db $55, RoomVegasHall4
    dw ClosedDoorReply
    ; Show message 0.
    db $00, $69 ; Message Text12Message69: がんじょうそうな もくせいの / ドアだ。[PAGE] / 「ダニー・べンティーニ」と かかれたひょうさつが かかっている。[END]
    ; End script.
    db $ff

; Open the Ventini office door using the original state or attribute path.
OpenVentiniDoor:

C2Sc5_2A:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomVegasHall4
    dw OpenDoorState
    ; Jump to script.
    db $07
    dw OpenDoorAttr

; Close the Ventini office door using the original state or attribute path.
CloseVentiniDoor:

C2Sc5_2B:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test room argument and branch on equality.
    db $25, RoomVegasHall4
    dw CloseDoorState
    ; Jump to script.
    db $07
    dw CloseDoorAttr

; Move between the fourth-floor hall and Ventini office and select the arrival description.
UseVentiniDoor:

C2Sc5_2C:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasHall4, RoomVegasVentiniOffice
    ; Test room argument and branch on equality.
    db $25, RoomVegasHall4
    dw VegasHall4Reply
    ; Show message 0.
    db $00, $a7 ; Message Text13Message27: きもちのいい オフィスだ。 / この へやの もちぬしは さぞかし / しごとが はかどるだろうな・・・。[END]
    ; End script.
    db $ff

; Read the Malone sign from the hallway or use the shared closed-door reply.
LookMaloneDoor:

C2Sc5_2D:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on inequality.
    db $55, RoomVegasHall4
    ; Target ClosedDoorReply; retain the interior label.
    db LOW(ClosedDoorReply)

jr_008_485f:
    db HIGH(ClosedDoorReply)
    ; Show message 0.
    db $00, $6a ; Message Text12Message6A: 「アンソニー・マロン」と かいてあるきんいろの ひょうさつが かかった / ドアだ。[END]
    ; End script.
    db $ff

; Reject an already-closed door or use the shared state closing helper.
CloseSceneDoor:

C2Sc5_2E:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Jump to script.
    db $07
    dw CloseDoorState

; Move between the hallway and Malone office and retain the original hint flag zero.
UseMaloneDoor:

C2Sc5_2F:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasHall4, RoomVegasMaloneOffice
    ; Test room argument and branch on equality.
    db $25, RoomVegasHall4
    dw VegasHall4Reply
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $c4 ; Message Text13Message44: うーん・・・。 / さすがは ボスのオフィス・・・。[PAGE] / ひろびろとしていて おいてあるもの / すべてが こうきゅうそうだ。[END]
    ; Test object flag and branch when set.
    db $08, C2MalonePicturesHintSeen
    dw EndC2Path
    ; Show message 1.
    db $01, $5f ; Message Text14Message5F: かべには 2まいの しゃしんが / かざられている・・・。[PAGE] / おそらく マロンの かぞくの / しゃしんだろう・・・。[PAGE] / ムフフフ・・・。 /...
    ; Set object flag.
    db $09, C2MalonePicturesHintSeen
    ; End script.
    db $ff

; Describe the street from the hotel front or use the shared desert description.
LookHotelStationWay:

C2Sc5_30:
    ; Test room argument and branch on inequality.
    db $55, RoomHotelFront
    dw LookDesert

; Show the original regional street passage description.
StreetWayReply:

C2Sc5_31:
    ; Show message 0.
    db $00, $d2 ; Message Text13Message52: とおりが つづいている。[END]
    ; End script.
    db $ff

; Describe the barren desert when looking at a grid direction object.
LookDesert:

C2Sc5_32:
    ; Show message 0.
    db $00, $d0 ; Message Text13Message50: すなの だいちが はてしなく / ひろがっている・・・。[END]
    ; End script.
    db $ff

; Move between the hotel and Las Vegas station fronts and retain their heat-timer clearing.
UseHotelStationWay:

C2Sc5_33:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomHotelFront, RoomStation
    ; Test room argument and branch on equality.
    db $25, RoomHotelFront
    dw C2HotelFront

; Describe the Las Vegas station front and clear desert exposure.
C2StationFront:

C2Loc5_2B:
    ; Show message 0.
    db $00, $f1 ; Message Text13Message71: ラスべガスえきの まえだ。 / おおきな たてものだな・・・。[END]
    ; Clear the desert exposure timer.
    db $42, C2HeatIx
    ; End script.
    db $ff

; Describe the shutter outside room 13 or the chute on the inside.
LookLaundryDoor:

C2Sc5_34:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on inequality.
    db $55, RoomOutskirts
    dw LookLaundryChute

jr_008_4899:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $ed ; Message Text13Message6D: ねずみいろの シャッターだ。 / クリーニングてんには あまり / につかわしくない いろだなあ・・・。[END]
    ; Jump to script.
    db $07
    dw DoorKeyHint

; Describe the chute for depositing dirty laundry.
LookLaundryChute:

C2Loc5_2C:
    ; Show message 2.
    db $02, $af ; Message Text17Message2F: うえの かいから よごれものを / おとすための シュートだろう。[END]
    ; End script.
    db $ff

; Require the unlocked shutter outside and swap objects 9B and 9C.
OpenLaundryDoor:

C2Sc5_35:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on inequality.
    db $55, RoomOutskirts
    dw ChuteClimbReply
    ; Test object flag and branch when clear.
    db $54, LaundryUnlocked
    dw DoorLockedReply
    ; Hide object.
    db $2a, C2VisIdLaundryShutterClosed
    ; Show object.
    db $29, C2VisIdLaundryShutterOpen
    ; Jump to script.
    db $07
    dw OpenDoorState

; Show the original chute-is-too-slippery reply.
ChuteClimbReply:

C2Loc5_2D:
    ; Show message 2.
    db $02, $ca ; Message Text17Message4A: シュートは すべるので のぼれない。[END]
    ; End script.
    db $ff

; Restore the shutter objects outside or show the inside chute refusal.
CloseLaundryDoor:

C2Sc5_36:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test room argument and branch on inequality.
    db $55, RoomOutskirts
    dw ChuteClimbReply
    ; Show object.
    db $29, C2VisIdLaundryShutterClosed
    ; Hide object.
    db $2a, C2VisIdLaundryShutterOpen
    ; Jump to script.
    db $07
    dw CloseDoorState

; Move from room 13 to the laundry through the original selected-state gate.
UseLaundryDoor:

C2Sc5_37:
    ; Test room argument and branch on inequality.
    db $55, RoomOutskirts
    dw ChuteClimbReply
    ; Move using two room arguments if the selected state permits.
    db $20, RoomOutskirts, RoomLaundry
    ; Show message 2.
    db $02, $ae ; Message Text17Message2E: うすぐらい せんたくしつだ。 / せんざいの きょうれつな においが / する。[END]
    ; End script.
    db $ff

; Describe the entrance or inside exit and retain the goon escape hint.
LookCleanEntry:

C2Sc5_38:
    ; Hold text.
    db $2e
    ; Test room argument and branch on equality.
    db $25, RoomOutskirts
    dw LookCleanEntryOut
    ; Show message 1.
    db $01, $43 ; Message Text14Message43: そとへ でるための ドアだ。[END]
    ; Test object flag and branch when set.
    db $08, C2GoonsFooled
    dw EndC2Path
    ; Play audio.
    db $3e, $08
    ; Show message 2.
    db $02, $d2 ; Message Text17Message52: ・・・そうだ![PAGE] / このドアを あけておけば やつらは / おれが にげたと おもうに / ちがいない。[END]
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Describe the outside entrance and show the shared key hint.
LookCleanEntryOut:

C2Loc5_2E:
    ; Show message 0.
    db $00, $74 ; Message Text12Message74: いりぐちの ドアだ。[END]
    ; Jump to script.
    db $07
    dw DoorKeyHint

; Require free hands and retain the outside lock check before state opening.
OpenCleanEntry:

C2Sc5_39:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test object flag and branch when clear.
    db $54, C2HandsFree
    dw DoorLockedReply
    ; Test room argument and branch on equality.
    db $25, RoomOutskirts
    dw OpenCleanEntryOut
    ; Jump to script.
    db $07
    dw OpenDoorState

; Reject the outside locked state or use the shared state opening helper.
OpenCleanEntryOut:

C2Loc5_2F:
    ; Test object flag and branch when set.
    db $08, C2CleanLock
    dw DoorLockedReply
    ; Jump to script.
    db $07
    dw OpenDoorState

; Clear the original lock flag before the state closing helper.
CloseCleanEntry:

C2Sc5_3A:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Clear object flag.
    db $0a, C2CleanLock
    ; Jump to script.
    db $07
    dw CloseDoorState

; Break the guarded door glass and retain the room-dependent goon discovery.
BreakGoonsDoor:

C2Sc5_3B:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorNoEffect
    ; Test state bit.
    db $0e, C2CleanGlass
    ; Branch if result bit 0 is set.
    db $03
    dw DoorGlassBroken
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, C2CleanGlass
    ; Test room argument and branch on equality.
    db $25, RoomOutskirts
    dw DoorGlassReply
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $62 ; Message Text12Message62: ガラスが こなごなに / くだけちった。[END]
    ; Jump to script.
    db $07
    dw CleanGoonsEnd

; Move between the outskirts and hallway and retain the goon discovery on exit.
UseCleanEntry:

C2Sc5_3C:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomOutskirts, RoomCleanersHallway
    ; Test room argument and branch on equality.
    db $25, RoomCleanersHallway
    dw CleanHallReply
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $ea ; Message Text13Message6A: まちはずれにある クリーニングてんのまえだ。[END]
    ; Test object flag and branch when set.
    db $08, C2GoonsFooled
    dw EndC2Path

; Play the original goon discovery and fatal shooting sequence.
CleanGoonsEnd:

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
    db $02 ; Message Text17Message1F: ・・・やつらに みつかってしまった。[PAGE] / 「ここに いるぞ スパイク! /  みつけたぞ!」[PAGE] / 「また にがしては たいへんだ! /  はやいと...

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

; Jump to the shared glass breaking reply in script bank seven.
DoorGlassReply:

C2Loc5_31:
    ; Jump to script in bank $07.
    db $7d
    dw GlassBreakReply
    db $07

; Show the original building hallway arrival description.
CleanHallReply:

C2Loc5_32:
    ; Show message 2.
    db $02, $cd ; Message Text17Message4D: 「リライアント・クリーニングてん」のろうかだ。[END]
    ; End script.
    db $ff

; Open the Vegas station entrance through its original room-dependent path.
OpenVegasDoor:

C2Sc5_3D:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomStation
    dw OpenDoorState
    ; Jump to script.
    db $07
    dw OpenDoorAttr

; Close the Vegas station entrance through its original room-dependent path.
CloseVegasDoor:

C2Sc5_3E:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test room argument and branch on equality.
    db $25, RoomStation
    dw CloseDoorState
    ; Jump to script.
    db $07
    dw CloseDoorAttr

; Break the station entrance glass unless the door is open or already broken.
BreakVegasDoor:

C2Sc5_3F:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorNoEffect
    ; Test state bit.
    db $0e, C2VegasGlass
    ; Branch if result bit 0 is set.
    db $03
    dw DoorGlassBroken
    ; Play audio.
    db $3e, $13
    ; Set state bit.
    db $0f, C2VegasGlass
    ; Test room argument and branch on equality.
    db $25, RoomVegasStationLobby
    dw DoorGlassReply
    ; Set state and refresh without cue.
    db $22, C2VegasGlass
    ; Jump to script.
    db $07
    dw DoorGlassReply

; Move through the Vegas station entrance and retain the clothing checks.
UseVegasDoor:

C2Sc5_40:
    ; Test room argument and branch on inequality.
    db $55, RoomStation
    dw ExitVegasStn

jr_008_4968:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomStation, RoomVegasStationLobby
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $f6 ; Message Text13Message76: ラスべガスえきの ロビーだ。[PAGE] / れっしゃの きてきや いききする / ひとたちの ざわめきで さわがしい。[END]
    ; Test object flag and branch when clear.
    db $54, C2PantsWorn
    dw CheckStnClothes
    ; End script.
    db $ff
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Test object flag and branch when set.
    db $08, $50
    dw EndC2Path

; Prepare the man name and enter the unclothed-Ace alarm reply.
ClothesAlarm:

C2Loc5_33:
    ; Set text name 0.
    db $30, $b5

; Show the prepared character reacting to Ace's lack of clothing.
DressAlarmReply:

C2Loc5_34:
    ; Show message 3.
    db $2c, $2a ; Message Text18Message2A: [OBJECT_WRAM:37C5]は おれが なにも / きていないので / ビックリしたようだ。[PAGE] / とつぜん おおごえを はりあげ / たすけを よんだ...

; Show the policeman and original arrest text, then enter the jail ending.
PoliceArrest:

C2Loc5_35:
    ; Resume text.
    db $2f
    ; Run scene effect.
    db $39, FxPoliceman
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $da ; Message Text13Message5A: ちかくを パトロールしていた / けいかんが やってきた。[PAGE] / 「おい! /  そんな かっこうで いるなんて /  あたまが おかしいんじゃないのか?[PA...
    ; Wait sixty ticks.
    db $7e
    ; Jump to script in bank $07.
    db $7d
    dw C2JailEnding
    db $07

; Allow the uniform when pants are absent, otherwise use the alarm reply.
CheckStnClothes:

C2Loc5_36:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw ClothesAlarm
    ; End script.
    db $ff

; Move outside the Vegas station and use its front description.
ExitVegasStn:

C2Loc5_37:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomStation, RoomVegasStationLobby
    ; Jump to script.
    db $07
    dw C2StationFront

; Describe the luggage claim passage from the station lobby.
LookLuggageWay:

C2Sc5_41:
    ; Test room argument and branch on inequality.
    db $55, RoomVegasStationLobby
    dw BusyPlaceReply
    ; Show message 0.
    db $00, $fa ; Message Text13Message7A: こっちは にもつあずかりしょだ。[END]
    ; End script.
    db $ff

; Restore the claimed suitcase when appropriate and move through the luggage passage.
UseLuggageWay:

C2Sc5_42:
    ; Test room argument and branch on inequality.
    db $55, RoomVegasStationLobby
    dw LeaveClaimDesk
    ; Test object flag and branch when clear.
    db $54, C2CaseShown
    dw EnterLuggageDesk
    ; Test object flag and branch when set.
    db $08, C2SuitcaseTaken
    dw EnterLuggageDesk
    ; Hide object.
    db $2a, C2VisIdClaimSuitcaseOpen
    ; Show object.
    db $29, C2VisIdClaimSuitcaseClosed
    ; Refresh room objects.
    db $2b

; Move to luggage claim, show the attendant, and check the original clothing flags.
EnterLuggageDesk:

C2Loc5_38:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasStationLobby, RoomVegasLuggageClaim
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $0a ; Message Text12Message0A: ここは ラスべガスえきの / にもつあずかりしょだ。[PAGE] / おとこが カウンターの なかで / いねむりをしている。[END]

; Check pants before the shared luggage and lobby uniform fallback.
ClaimDressCheck:

C2Loc5_39:
    ; Test object flag and branch when clear.
    db $54, C2PantsWorn
    dw ClaimUniCheck
    ; End script.
    db $ff

; Allow the uniform without pants, otherwise use the original clothes alarm.
ClaimUniCheck:

C2Loc5_3A:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw ClothesAlarm
    ; End script.
    db $ff
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Test object flag and branch when clear.
    db $54, $50
    dw ClothesAlarm
    ; End script.
    db $ff

; Move out of luggage claim, show the Vegas lobby, and check clothing.
LeaveClaimDesk:

C2Loc5_3B:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasStationLobby

jr_008_49c3:
    db RoomVegasLuggageClaim
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $f6 ; Message Text13Message76: ラスべガスえきの ロビーだ。[PAGE] / れっしゃの きてきや いききする / ひとたちの ざわめきで さわがしい。[END]
    ; Jump to script.
    db $07
    dw ClaimDressCheck

; Describe the passage to platform six using the room-dependent reply.
LookPlatform6Way:

C2Sc5_43:
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform6
    dw BusyPlaceReply
    ; Set script value 0.
    db $49, $06
    ; Show message 3.
    db $2c, $09 ; Message Text18Message09: [NUM8_WRAM:87C5]ばんせんへの いりぐちだ。[END]
    ; End script.
    db $ff

; Move between the Vegas lobby and platform six.
UsePlatform6Way:

C2Sc5_44:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasStationLobby, RoomVegasPlatform6
    ; Test room argument and branch on equality.
    db $25, RoomVegasStationLobby

jr_008_49d8:
    dw ReturnVegasLobby

; Clear passenger-room states and conversation flags before the platform clothing check.
ShowPlatform:

C2Loc5_3C:
    ; Call script.
    db $05
    dw ClearTrainDropA
    ; Call script.
    db $05
    dw ClearTrainDropB
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $71 ; Message Text12Message71: えきの ホームだ。 / ゆかは まだ あたらしい・・・。[END]
    ; Clear object flag.
    db $0a, C2WomanTalked
    ; Clear object flag.
    db $0a, C2WomanFedUp
    ; Clear object flag.
    db $0a, C2SeatManAsleep
    ; Test object flag and branch when clear.
    db $54

jr_008_49ea:
    db C2PantsWorn
    dw PlatformDress
    ; End script.
    db $ff

; Allow the uniform without pants, otherwise enter the original arrest route.
PlatformDress:

C2Loc5_3D:
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw EndC2Path
    ; Jump to script.
    db $07
    dw PoliceArrest
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Test object flag and branch when set.
    db $08, $50
    dw EndC2Path
    ; Jump to script.
    db $07
    dw PoliceArrest

; Show the Vegas lobby description and check the original clothing flags.
ReturnVegasLobby:

C2Loc5_3E:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $f6 ; Message Text13Message76: ラスべガスえきの ロビーだ。[PAGE] / れっしゃの きてきや いききする / ひとたちの ざわめきで さわがしい。[END]
    ; Jump to script.
    db $07
    dw ClaimDressCheck

; Clear the eight first passenger-room state bits and return to the script.
ClearTrainDropA:

C2Loc5_3F:
    ; Clear state bit.
    db $10, C2StateTrain6AFareView
    ; Clear state bit.
    db $10, C2StateTrain7AFareView
    ; Clear state bit.
    db $10, C2StateTrain8AFareView
    ; Clear state bit.
    db $10, C2StateTrain9AFareView
    ; Clear state bit.
    db $10, C2StateTrain2AFareView
    ; Clear state bit.
    db $10, C2StateTrain3AFareView
    ; Clear state bit.
    db $10, C2StateTrain4AFareView
    ; Clear state bit.
    db $10, C2StateTrain5AFareView
    ; Return to calling script.
    db $06

; Hide fare object A8, clear the eight second passenger-room state bits, and return.
ClearTrainDropB:

C2Loc5_40:
    ; Hide object.
    db $2a, C2VisIdTrainConductor
    ; Clear state bit.
    db $10, C2StateTrain6BFareView
    ; Clear state bit.
    db $10, C2StateTrain7BFareView
    ; Clear state bit.
    db $10, C2StateTrain8BFareView
    ; Clear state bit.
    db $10, C2StateTrain9BFareView
    ; Clear state bit.
    db $10, C2StateTrain2BFareView
    ; Clear state bit.
    db $10, C2StateTrain3BFareView
    ; Clear state bit.
    db $10, C2StateTrain4BFareView
    ; Clear state bit.
    db $10, C2StateTrain5BFareView
    ; Return to calling script.
    db $06

; Show the fare view object $a8 and hide the eight passenger-room objects.
TrainFareView:

C2Loc5_41:
    ; Show object.
    db $29, C2VisIdTrainConductor
    ; Hide object.
    db $2a, C2VisIdTrainChattyWoman
    ; Hide object.
    db $2a, C2VisIdTrainSeatMan
    ; Hide object.
    db $2a, C2VisIdTrainYoungWoman
    ; Hide object.
    db $2a, C2VisIdTrainShade
    ; Hide object.
    db $2a, C2VisIdTrainWindow
    ; Hide object.
    db $2a, C2VisIdTrainDestinationAndDoor
    ; Hide object.
    db $2a, C2VisIdTrainPassage
    ; Hide object.
    db $2a, C2VisIdTrainSeats
    ; Return to calling script.
    db $06

; Hide the fare view object $a8 and restore the eight passenger-room objects.
TrainCarView:

C2Loc5_42:
    ; Hide object.
    db $2a, C2VisIdTrainConductor
    ; Show object.
    db $29, C2VisIdTrainChattyWoman
    ; Show object.
    db $29

jr_008_4a3e:
    db C2VisIdTrainSeatMan
    ; Show object.
    db $29, C2VisIdTrainYoungWoman
    ; Show object.
    db $29, C2VisIdTrainShade
    ; Show object.
    db $29, C2VisIdTrainWindow
    ; Show object.
    db $29, C2VisIdTrainDestinationAndDoor
    ; Show object.
    db $29, C2VisIdTrainPassage
    ; Show object.
    db $29, C2VisIdTrainSeats
    ; Return to calling script.
    db $06

; Describe the passage to platform seven using its room-dependent reply.
LookPlatform7Way:

C2Sc5_45:
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform7
    dw BusyPlaceReply
    ; Set script value 0.
    db $49, $07
    ; Show message 3.
    db $2c, $09 ; Message Text18Message09: [NUM8_WRAM:87C5]ばんせんへの いりぐちだ。[END]
    ; End script.
    db $ff

; Move between the Vegas lobby and platform seven.
UsePlatform7Way:

C2Sc5_46:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasStationLobby, RoomVegasPlatform7

; Select the platform or Vegas lobby reply after the passage move.
PlatformOrLobby:

C2Loc5_43:
    ; Test room argument and branch on inequality.
    db $55, RoomVegasStationLobby
    dw ShowPlatform
    ; Jump to script.
    db $07
    dw ReturnVegasLobby

; Describe the passage to platform eight using its room-dependent reply.
LookPlatform8Way:

C2Sc5_47:
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform8
    dw BusyPlaceReply
    ; Set script value 0.
    db $49, $08
    ; Show message 3.
    db $2c, $09 ; Message Text18Message09: [NUM8_WRAM:87C5]ばんせんへの いりぐちだ。[END]
    ; End script.
    db $ff

; Move between the Vegas lobby and platform eight.
UsePlatform8Way:

C2Sc5_48:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasStationLobby, RoomVegasPlatform8
    ; Jump to script.
    db $07

jr_008_4a6c:
    dw PlatformOrLobby

; Describe the passage to platform nine using its room-dependent reply.
LookPlatform9Way:

C2Sc5_49:
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform9
    dw BusyPlaceReply
    ; Set script value 0.
    db $49, $09
    ; Show message 3.
    db $2c, $09 ; Message Text18Message09: [NUM8_WRAM:87C5]ばんせんへの いりぐちだ。[END]
    ; End script.
    db $ff

; Move between the Vegas lobby and platform nine.
UsePlatform9Way:

C2Sc5_4A:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasStationLobby, RoomVegasPlatform9
    ; Jump to script.
    db $07
    dw PlatformOrLobby

; Check the open attribute before the regional passenger door description.
LookTrainDoor:

C2Sc5_4B:
    ; Test attribute bit 2 and branch when set.
    db $1d
    ; Target DoorIsOpen; retain the interior label.
    db LOW(DoorIsOpen)

jr_008_4a7f:
    db HIGH(DoorIsOpen)
    ; Show message 1.
    db $01, $2c ; Message Text14Message2C: おきゃくが このドアを とおって / ではいりしている。[END]
    ; End script.
    db $ff

; Retain the open-door check before the original cannot-open reply.
TryTrainDoor:

C2Sc5_4C:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen

jr_008_4a86:
    ; Show message 0.
    db $00, $d3 ; Message Text13Message53: うーん・・・。 / あかない・・・。[END]
    ; End script.
    db $ff

; Move between platform six and its first car, then describe the resulting room.
UseTrain6Door:

C2Sc5_4D:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasPlatform6, RoomTrain6A
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform6

jr_008_4a8e:
    dw ShowPlatform

; Describe the warm train car and enter the shared fare dispatch.
TrainCarReply:

C2Loc5_44:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $21 ; Message Text16Message21: れっしゃの なかだ。 / なんだか かぜとおしが わるくて / ムンムンするな・・・。[END]

; Use the original room set to select cash checking or the train pass check.
TrainFareDispatch:

C2Loc5_45:
    ; Test room argument and branch on equality.
    db $25, RoomTrain2A
    dw CheckTrainCash
    ; Test room argument and branch on equality.
    db $25, RoomTrain2B
    dw CheckTrainCash
    ; Test room argument and branch on equality.
    db $25, RoomTrain3A
    dw CheckTrainCash
    ; Test room argument and branch on equality.
    db $25, RoomTrain3B
    ; Target CheckTrainCash; retain the interior label.
    db LOW(CheckTrainCash)

jr_008_4aa2:
    db HIGH(CheckTrainCash)
    ; Test room argument and branch on equality.
    db $25, RoomTrain4A
    dw CheckTrainCash
    ; Test room argument and branch on equality.
    db $25, RoomTrain4B
    dw CheckTrainCash
    ; Test room argument and branch on equality.
    db $25, RoomTrain5A
    ; Target CheckTrainCash; retain the interior label.
    db LOW(CheckTrainCash)

jr_008_4aae:
    db HIGH(CheckTrainCash)
    ; Test room argument and branch on equality.
    db $25, RoomTrain5B
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
    db $02, $d1 ; Message Text17Message51: しゃしょうが あらわれて いった。[END]
    ; Select the current train fare.
    db $5e
    ; Show message 3.
    db $2c ; Message Text18Message0B: 「この れっしゃは /  [OBJECT_WRAM:37C5]いきです。[PAGE] /  ごりようのかたは りょうきん /  [NUM8_WRAM:87C5]ドルを わ...

jr_008_4acb:
    db $0b
    ; End script.
    db $ff

; Move between platform six and its second car.
UseTrain6Door2:

C2Sc5_4E:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasPlatform6, RoomTrain6B
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform6

jr_008_4ad2:
    dw ShowPlatform

; Describe the empty second car and enter the shared fare dispatch.
TrainCarReply2:

C2Loc5_48:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $22 ; Message Text16Message22: れっしゃの なかだ。 / この しゃりょうには じょうきゃくがおれしか いないようだ。[END]
    ; Jump to script.
    db $07
    dw TrainFareDispatch

; Describe the emergency exit.
LookTrainExit:

C2Sc5_4F:
    ; Show message 0.
    db $00, $8c ; Message Text13Message0C: ひじょうぐちのようだ。[END]

jr_008_4adc:
    ; End script.
    db $ff

; Check the train blocking object before the original fatal track crossing.
TryTrainExit:

C2Sc5_50:
    ; Test object visibility.
    db $28, C2VisIdPlatformTrainAndDoor
    ; Branch if result bit 0 is set.
    db $03
    dw TrainBlocksExit
    ; Save state.
    db $80
    ; Play audio.
    db $3e, $09
    ; Show message 0.
    db $00 ; Message Text13Message35: おれは ひじょうぐちに いくために / せんろに おりたった・・・。[END]

jr_008_4ae6:
    db $b5
    ; Run map step animation.
    db $76
    ; Play audio.
    db $3e, $17
    ; No operation.
    db $41
    ; Show message 0.
    db $00, $b7 ; Message Text13Message37: しまった! / むこうから れっしゃが![PAGE] / ・・・そう きづいたときには / おそすぎた・・・。[PAGE] / おれは よけるまもなく れっしゃに / ひ...
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Show that the train blocks the way.
TrainBlocksExit:

C2Loc5_49:
    ; Show message 0.
    db $00, $bf ; Message Text13Message3F: れっしゃが じゃまをしていて / すすめない![END]
    ; End script.
    db $ff

; Move between platform seven and its first car.
UseTrain7Door1:

C2Sc5_51:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasPlatform7, RoomTrain7A
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform7
    dw ShowPlatform
    ; Jump to script.
    db $07
    dw TrainCarReply

; Move between platform seven and its second car.
UseTrain7Door2:

C2Sc5_52:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasPlatform7, RoomTrain7B
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform7
    dw ShowPlatform
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Move between platform eight and its first car.
UseTrain8Door1:

C2Sc5_53:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasPlatform8, RoomTrain8A
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform8
    dw ShowPlatform
    ; Jump to script.
    db $07
    dw TrainCarReply

; Move between platform eight and its second car.
UseTrain8Door2:

C2Sc5_54:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasPlatform8, RoomTrain8B
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform8
    dw ShowPlatform
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Move between platform nine and its first car.
UseTrain9Door1:

C2Sc5_55:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomTrain9A, RoomVegasPlatform9
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform9
    dw ShowPlatform
    ; Jump to script.
    db $07
    dw TrainCarReply

; Move between platform nine and its second car.
UseTrain9Door2:

C2Sc5_56:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomVegasPlatform9, RoomTrain9B
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform9
    dw ShowPlatform
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Describe the passage to the other car.
LookCarPassage:

C2Sc5_57:
    ; Show message 2.
    db $02, $3c ; Message Text16Message3C: きゃくは ここを とおって / しゃりょうを いききしている。[END]
    ; End script.
    db $ff

; Move between train 6 cars, clear both passenger-state groups, and select the car reply.
UseTrain6Pass:

C2Sc5_58:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomTrain6A, RoomTrain6B
    ; Call script.
    db $05
    dw ClearTrainDropB
    ; Call script.
    db $05
    ; Target ClearTrainDropA; retain the interior label.
    db LOW(ClearTrainDropA)

jr_008_4b39:
    db HIGH(ClearTrainDropA)
    ; Test room argument and branch on equality.
    db $25, RoomTrain6A
    dw TrainCarReply
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Move between train 7 cars, clear both passenger-state groups, and select the car reply.
UseTrain7Pass:

C2Sc5_59:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomTrain7A, RoomTrain7B
    ; Call script.
    db $05
    dw ClearTrainDropB
    ; Call script.
    db $05
    dw ClearTrainDropA
    ; Test room argument and branch on equality.
    db $25, RoomTrain7A
    dw TrainCarReply

jr_008_4b4e:
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Move between train 8 cars, clear both passenger-state groups, and select the car reply.
UseTrain8Pass:

C2Sc5_5A:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomTrain8A, RoomTrain8B
    ; Call script.
    db $05
    dw ClearTrainDropB
    ; Call script.
    db $05
    dw ClearTrainDropA

jr_008_4b5a:
    ; Test room argument and branch on equality.
    db $25, RoomTrain8A
    dw TrainCarReply
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Move between train 9 cars, clear both passenger-state groups, and select the car reply.
UseTrain9Pass:

C2Sc5_5B:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomTrain9A, RoomTrain9B
    ; Call script.
    db $05
    dw ClearTrainDropB
    ; Call script.
    db $05
    dw ClearTrainDropA
    ; Test room argument and branch on equality.
    db $25, RoomTrain9A
    dw TrainCarReply
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Move between train 2 cars, clear both passenger-state groups, and select the car reply.
UseTrain2Pass:

C2Sc5_5C:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomTrain2A, RoomTrain2B
    ; Call script.
    db $05
    dw ClearTrainDropB
    ; Call script.
    db $05
    dw ClearTrainDropA
    ; Test room argument and branch on equality.
    db $25, RoomTrain2A
    dw TrainCarReply
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Move between train 3 cars, clear both passenger-state groups, and select the car reply.
UseTrain3Pass:

C2Sc5_5D:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomTrain3A, RoomTrain3B
    ; Call script.
    db $05
    dw ClearTrainDropB
    ; Call script.
    db $05
    dw ClearTrainDropA
    ; Test room argument and branch on equality.
    db $25, RoomTrain3A
    dw TrainCarReply
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Move between train 4 cars, clear both passenger-state groups, and select the car reply.
UseTrain4Pass:

C2Sc5_5E:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomTrain4A, RoomTrain4B
    ; Call script.
    db $05
    dw ClearTrainDropB
    ; Call script.
    db $05
    dw ClearTrainDropA

jr_008_4b9a:
    ; Test room argument and branch on equality.
    db $25, RoomTrain4A
    dw TrainCarReply
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Move between train 5 cars, clear both passenger-state groups, and select the car reply.
UseTrain5Pass:

C2Sc5_5F:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomTrain5A, RoomTrain5B
    ; Call script.
    db $05
    dw ClearTrainDropB
    ; Call script.
    db $05
    dw ClearTrainDropA
    ; Test room argument and branch on equality.
    db $25, RoomTrain5A
    dw TrainCarReply
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Describe the passage to platform two using its room-dependent reply.
LookPlatform2Way:

C2Sc5_60:
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform2
    dw BusyPlaceReply
    ; Set script value 0.
    db $49, $02
    ; Show message 3.
    db $2c, $09 ; Message Text18Message09: [NUM8_WRAM:87C5]ばんせんへの いりぐちだ。[END]
    ; End script.
    db $ff

; Move through the platform two passage and retain the news-stand return handling.
UsePlatform2Way:

C2Sc5_61:
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform2
    dw LeavePlatform2
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby, RoomChicagoPlatform2
    ; Jump to script.
    db $07
    dw ShowPlatform

; Check the departed news seller before returning from platform two.
LeavePlatform2:

C2Loc5_4A:
    ; Test object flag and branch when clear.
    db $54, C2NewsLeft
    dw ReturnChi2
    ; Call script.
    db $05
    dw HideNewsStand
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby, RoomChicagoPlatform2

; Show the Chicago lobby sounds without the separate discovery or clothing flow.
ChiLobbyPlain:

C2Loc5_4B:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $01 ; Message Text14Message01: シカゴえきの ロビーだ。[PAGE] / れっしゃの おと・・・。 / しゃしょうの こえ・・・。[PAGE] / かっきに みちてるな。[END]
    ; End script.
    db $ff
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Test object flag and branch when clear.
    db $54, $50
    dw ChiOldManAlarm
    ; End script.
    db $ff

; Allow the uniform without pants, otherwise fall through to the old man alarm.
ChiUniformCheck:

C2Loc5_4C:
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw EndC2Path

; Prepare the old man name and enter the shared clothing alarm reply.
ChiOldManAlarm:

C2Loc5_B5:
    ; Hold text.
    db $2e
    ; Set text name 0.
    db $30, $b8
    ; Jump to script.
    db $07
    dw DressAlarmReply

; Move from platform two and use the Chicago lobby discovery flow.
ReturnChi2:

C2Loc5_4D:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby, RoomChicagoPlatform2

; Show the Chicago station lobby description and discover its cab destination.
EnterChiLobby:

C2Loc5_4E:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $01 ; Message Text14Message01: シカゴえきの ロビーだ。[PAGE] / れっしゃの おと・・・。 / しゃしょうの こえ・・・。[PAGE] / かっきに みちてるな。[END]
    ; Test object flag and branch when set.
    db $08, C2ChicagoKnown
    dw CheckChiClothes
    ; Add quick-list value.
    db $44, CabChicago
    ; Set object flag.
    db $09, C2ChicagoKnown

; Check pants before the uniform fallback in the Chicago lobby.
CheckChiClothes:

C2Loc5_4F:
    ; Test object flag and branch when clear.
    db $54, C2PantsWorn
    dw ChiUniformCheck
    ; End script.
    db $ff

; Hide the four original stand objects and clear state A0 after departure.
HideNewsStand:

C2Loc5_50:
    ; Hide object.
    db $2a, C2VisIdNewsSeller
    ; Hide object.
    db $2a, C2VisIdNewsDog

jr_008_4bf8:
    ; Hide object.
    db $2a, C2VisIdNewsPaper3
    ; Hide object.
    db $2a, C2VisIdNewsPaper4
    ; Clear state bit.
    db $10, C2StateNewsstandOpen
    ; Return to calling script.
    db $06

; Describe the passage to platform three using its room-dependent reply.
LookPlatform3Way:

C2Sc5_62:
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform3
    dw BusyPlaceReply
    ; Set script value 0.
    db $49, $03
    ; Show message 3.
    db $2c, $09 ; Message Text18Message09: [NUM8_WRAM:87C5]ばんせんへの いりぐちだ。[END]
    ; End script.
    db $ff

; Move through the platform three passage and retain the news-stand return handling.
UsePlatform3Way:

C2Sc5_63:
    ; Test room argument and branch on equality.
    db $25

jr_008_4c09:
    db RoomChicagoPlatform3
    dw LeavePlatform3
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby

jr_008_4c0e:
    db RoomChicagoPlatform3
    ; Jump to script.
    db $07
    dw ShowPlatform

; Check the departed news seller before returning from platform three.
LeavePlatform3:

C2Loc5_51:
    ; Test object flag and branch when clear.
    db $54, C2NewsLeft
    dw ReturnChi3
    ; Call script.
    db $05
    dw HideNewsStand
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby, RoomChicagoPlatform3
    ; Jump to script.
    db $07
    dw ChiLobbyPlain

; Move from platform three and use the Chicago lobby discovery flow.
ReturnChi3:

C2Loc5_52:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby, RoomChicagoPlatform3
    ; Jump to script.
    db $07
    dw EnterChiLobby

; Describe the passage to platform four using its room-dependent reply.
LookPlatform4Way:

C2Sc5_64:
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform4
    dw BusyPlaceReply
    ; Set script value 0.
    db $49, $04
    ; Show message 3.
    db $2c, $09 ; Message Text18Message09: [NUM8_WRAM:87C5]ばんせんへの いりぐちだ。[END]
    ; End script.
    db $ff

; Move through the platform four passage and retain the news-stand return handling.
UsePlatform4Way:

C2Sc5_65:
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform4
    dw LeavePlatform4
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby, RoomChicagoPlatform4
    ; Jump to script.
    db $07
    dw ShowPlatform

; Check the departed news seller before returning from platform four.
LeavePlatform4:

C2Loc5_53:
    ; Test object flag and branch when clear.
    db $54

jr_008_4c39:
    db C2NewsLeft
    dw ReturnChi4
    ; Call script.
    db $05
    dw HideNewsStand
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby, RoomChicagoPlatform4
    ; Jump to script.
    db $07
    dw ChiLobbyPlain

; Move from platform four and use the Chicago lobby discovery flow.
ReturnChi4:

C2Loc5_54:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby, RoomChicagoPlatform4
    ; Jump to script.
    db $07
    dw EnterChiLobby

; Describe the passage to platform five using its room-dependent reply.
LookPlatform5Way:

C2Sc5_66:
    ; Test room argument and branch on equality.
    db $25

jr_008_4c4c:
    db RoomChicagoPlatform5
    dw BusyPlaceReply
    ; Set script value 0.
    db $49, $05

jr_008_4c51:
    ; Show message 3.
    db $2c, $09 ; Message Text18Message09: [NUM8_WRAM:87C5]ばんせんへの いりぐちだ。[END]
    ; End script.
    db $ff

; Move through the platform five passage and retain the news-stand return handling.
UsePlatform5Way:

C2Sc5_67:
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform5
    dw LeavePlatform5
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby, RoomChicagoPlatform5
    ; Jump to script.
    db $07
    dw ShowPlatform

; Check the departed news seller before returning from platform five.
LeavePlatform5:

C2Loc5_55:
    ; Test object flag and branch when clear.
    db $54

jr_008_4c5f:
    db C2NewsLeft
    dw ReturnChi5
    ; Call script.
    db $05
    dw HideNewsStand
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby, RoomChicagoPlatform5
    ; Jump to script.
    db $07
    dw ChiLobbyPlain

; Move from platform five and use the Chicago lobby discovery flow.
ReturnChi5:

C2Loc5_56:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby, RoomChicagoPlatform5
    ; Jump to script.
    db $07
    dw EnterChiLobby

; Describe the Chicago station entrance or report the door open.
LookChiDoor:

C2Sc5_68:
    ; Test attribute bit 2 and branch when set.
    db $1d

jr_008_4c72:
    dw DoorIsOpen
    ; Jump to script.
    db $07
    dw LookEntrance

; Open the station door and preserve the broken-glass object handling.
OpenChiDoor:

C2Sc5_69:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test object flag and branch when clear.
    db $54, C2ChiGlass
    dw OpenChiIntact
    ; Test room argument and branch on inequality.
    db $55, RoomChicagoStationFront
    dw ChiOpenAttr
    ; Call script.
    db $05
    dw ChiHideGlass

jr_008_4c85:
    ; Refresh room objects.
    db $2b
    ; Set selected state and refresh.
    db $21
    ; End script.
    db $ff

; Hide the broken-glass object and set the selected door open attribute.
ChiOpenAttr:

C2Loc5_57:
    ; Call script.
    db $05
    dw ChiHideGlass
    ; Set selected attribute bit 2.
    db $1e
    ; End script.
    db $ff

; Show the opening reply, hide glass object 32, and return to the script.
; This same-bank helper calls DoorOpening, giving two script-call frames.
; Both calls set wCallBank to zero, so neither return pops a ROM bank.
ChiHideGlass:

C2Loc5_58:
    ; Call script.
    db $05
    dw DoorOpening
    ; Hide object.
    db $2a, C2VisIdChicagoStationBrokenDoorGlass

jr_008_4c92:
    ; Return to calling script.
    db $06

; Select the state or attribute opening path for intact station glass.
OpenChiIntact:

C2Loc5_59:
    ; Test room argument and branch on equality.
    db $25, RoomChicagoStationFront
    dw OpenDoorState
    ; Jump to script.
    db $07

jr_008_4c98:
    dw OpenDoorAttr

; Close the station door and restore the broken-glass object when required.
CloseChiDoor:

C2Sc5_6A:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test object flag and branch when clear.
    db $54, C2ChiGlass
    dw CloseChiIntact
    ; Test room argument and branch on inequality.
    db $55, RoomChicagoStationFront
    dw ChiCloseAttr
    ; Call script.
    db $05
    dw DoorClosing
    ; Clear selected state and refresh.
    db $23
    ; Show object.
    db $29, C2VisIdChicagoStationBrokenDoorGlass
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Show the closing reply, restore glass object 32, and clear the open attribute.
ChiCloseAttr:

C2Loc5_A8:
    ; Call script.
    db $05
    dw DoorClosing
    ; Show object.
    db $29, C2VisIdChicagoStationBrokenDoorGlass
    ; Clear selected attribute bit 2.
    db $1f
    ; End script.
    db $ff

; Select the state or attribute closing path for intact station glass.
CloseChiIntact:

C2Loc5_A9:
    ; Test room argument and branch on equality.
    db $25, RoomChicagoStationFront
    dw CloseDoorState
    ; Jump to script.
    db $07
    dw CloseDoorAttr

; Set the station glass flag and show object 32 before the shared glass reply.
BreakChiDoor:

C2Sc5_6B:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorNoEffect
    ; Test object flag and branch when set.
    db $08, C2ChiGlass
    dw DoorGlassBroken
    ; Play audio.
    db $3e, $13
    ; Set object flag.
    db $09, C2ChiGlass
    ; Show object.
    db $29, C2VisIdChicagoStationBrokenDoorGlass
    ; Test room argument and branch on equality.
    db $25, RoomChicagoStationLobby
    dw DoorGlassReply
    ; Refresh room objects.
    db $2b
    ; Jump to script.
    db $07
    dw DoorGlassReply

; Move through the station entrance and select the first or repeated front description.
UseChiDoor:

C2Sc5_6C:
    ; Test room argument and branch on inequality.
    db $55, RoomChicagoStationLobby
    dw LeaveChiFront
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby, RoomChicagoStationFront
    ; Test object flag and branch when set.
    db $08, C2ChiFrontSeen
    dw ChiFrontAgain
    ; Show message 1.
    db $01, $34 ; Message Text14Message34: シカゴえきの まえに きた。 / タクシーが 1だい とまっている。[END]
    ; Set object flag.
    db $09, C2ChiFrontSeen
    ; End script.
    db $ff

; Show the repeated Chicago station front description.
ChiFrontAgain:

C2Loc5_5A:
jr_008_4ce0:
    ; Show message 1.
    db $01, $35 ; Message Text14Message35: シカゴえきの まえに きた。[END]
    ; End script.
    db $ff

; Check the departed news seller before returning from the station front.
LeaveChiFront:

C2Loc5_5B:
    ; Test object flag and branch when clear.
    db $54, C2NewsLeft
    dw ReturnChiLobby
    ; Call script.
    db $05
    dw HideNewsStand
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby, RoomChicagoStationFront
    ; Jump to script.
    db $07
    dw ChiLobbyPlain

; Move into the Chicago lobby and use its destination discovery flow.
ReturnChiLobby:

C2Loc5_5C:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationLobby, RoomChicagoStationFront
    ; Jump to script.
    db $07
    ; Target EnterChiLobby; retain the interior label.
    db LOW(EnterChiLobby)

jr_008_4cf5:
    db HIGH(EnterChiLobby)

; Move between platform 2 and its first car, then select the platform or car reply.
UseTrain2Door1:

C2Sc5_6D:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoPlatform2, RoomTrain2A
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform2

jr_008_4cfb:
    dw ShowPlatform
    ; Jump to script.
    db $07
    dw TrainCarReply

; Move between platform 2 and its second car, then select the platform or car reply.
UseTrain2Door2:

C2Sc5_6E:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoPlatform2, RoomTrain2B
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform2
    dw ShowPlatform
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Move between platform 3 and its first car, then select the platform or car reply.
UseTrain3Door1:

C2Sc5_6F:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoPlatform3, RoomTrain3A
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform3
    dw ShowPlatform
    ; Jump to script.
    db $07
    dw TrainCarReply

; Move between platform 3 and its second car, then select the platform or car reply.
UseTrain3Door2:

C2Sc5_70:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoPlatform3, RoomTrain3B
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform3
    dw ShowPlatform
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Move between platform 4 and its first car, then select the platform or car reply.
UseTrain4Door1:

C2Sc5_71:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoPlatform4, RoomTrain4A
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform4
    ; Target ShowPlatform; retain the interior label.
    db LOW(ShowPlatform)

jr_008_4d24:
    db HIGH(ShowPlatform)
    ; Jump to script.
    db $07
    dw TrainCarReply

; Move between platform 4 and its second car, then select the platform or car reply.
UseTrain4Door2:

C2Sc5_72:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoPlatform4, RoomTrain4B
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform4
    ; Target ShowPlatform; retain the interior label.
    db LOW(ShowPlatform)

jr_008_4d2e:
    db HIGH(ShowPlatform)
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Move between platform 5 and its first car, then select the platform or car reply.
UseTrain5Door1:

C2Sc5_73:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoPlatform5, RoomTrain5A
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform5
    dw ShowPlatform
    ; Jump to script.
    db $07
    dw TrainCarReply

; Move between platform 5 and its second car, then select the platform or car reply.
UseTrain5Door2:

C2Sc5_74:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoPlatform5, RoomTrain5B
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform5
    dw ShowPlatform
    ; Jump to script.
    db $07
    dw TrainCarReply2

; Show the door while inside the cab at Chicago; otherwise describe the parked cab.
LookCabChicago:

C2Sc5_75:
    ; Test room argument and branch on equality.
    db $25, CabAtChicago
    dw LookCabDoor
    ; Show message 1.
    db $01, $3a ; Message Text14Message3A: タクシーが とまっている。 / きゃくは のっていないようだ。[END]
    ; End script.
    db $ff

; Show the original cab door description.
LookCabDoor:

C2Sc5_76:
    ; Show message 1.
    db $01, $43 ; Message Text14Message43: そとへ でるための ドアだ。[END]
    ; End script.
    db $ff

; Choose the original cab-damage refusal from the Gabby meeting flag.
RefuseCabDamage:

C2Sc5_77:
    ; Test object flag and branch when set.
    db $08, C2GabbyMet
    dw ProtectCab
    ; Show message 1.
    db $01, $3b ; Message Text14Message3B: いや まてよ! / うんてんしゅを おこらせたら / タクシーに のれなくなる・・・。[END]
    ; End script.
    db $ff

; Refuse vandalizing the friend's cab.
ProtectCab:

C2Loc5_5D:
    ; Show message 1.
    db $01, $3c ; Message Text14Message3C: いや そんなことはできない。 / ゆうじんの くるまだ![END]
    ; End script.
    db $ff

; Move between the cab and street at Chicago and show the original arrival description.
UseCabChicago:

C2Sc5_78:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomChicagoStationFront, CabAtChicago
    ; Test room argument and branch on equality.
    db $25, RoomChicagoStationFront
    dw ChiFrontAgain
    ; Test object flag and branch when set.
    db $08, C2GabbyMet
    dw SitInC2Cab
    ; Show message 1.
    db $01, $3d ; Message Text14Message3D: タクシーに のりこんだ。[PAGE] / な なんと・・・うんてんしゅは / むかしの ゆうじんではないか![PAGE] / 「エースか ひさしぶりだな・・・。 /  ち...
    ; Set object flag.
    db $09, C2GabbyMet
    ; End script.
    db $ff

; Show the original comfortable cab seat message.
SitInC2Cab:

C2Loc5_5E:
    ; Show message 1.
    db $01, $3e ; Message Text14Message3E: タクシーに のりこんだ。 / すわりごこちが いい・・・。[END]
    ; End script.
    db $ff

; Show Gabby's original explanation of the jammed cab door.
CabDoorJammed:

C2Sc5_79:
jr_008_4d6d:
    ; Show message 1.
    db $01, $44 ; Message Text14Message44: ・・・びくともしない。 / すると うんてんしゅが いった。[PAGE] / 「すまない エース。 /  このまえ トラックが ぶつかって /  そのドアは あかなくなっ...
    ; End script.
    db $ff

; Show the door while inside the cab at Adison; otherwise describe the parked cab.
LookCabAdison:

C2Sc5_7A:
    ; Test room argument and branch on equality.
    db $25, CabAtAdison
    dw LookCabDoor
    ; Show message 1.
    db $01, $3a ; Message Text14Message3A: タクシーが とまっている。 / きゃくは のっていないようだ。[END]
    ; End script.
    db $ff

; Move between the cab and street at Adison and show the original arrival description.
UseCabAdison:

C2Sc5_7B:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomAdisonApartmentFront, CabAtAdison
    ; Test room argument and branch on inequality.
    db $55, RoomAdisonApartmentFront
    dw SitInC2Cab
    ; Test object flag and branch when set.
    db $08, C2HomeSeen
    dw HomeFrontAgain
    ; Show message 1.
    db $01, $51 ; Message Text14Message51: あれはてた アパートの まえだ。 / なつかしの わがやだ。[END]
    ; Set object flag.
    db $09, C2HomeSeen
    ; End script.
    db $ff

; Describe the apartment front on a repeated visit.
HomeFrontAgain:

C2Loc5_5F:
    ; Show message 1.
    db $01, $52 ; Message Text14Message52: おれの アパートの まえだ。[END]
    ; End script.
    db $ff

; Show the door while inside the cab at Cottage; otherwise describe the parked cab.
LookCabCottage:

C2Sc5_7C:
    ; Test room argument and branch on equality.
    db $25, CabAtCottage

jr_008_4d8c:
    dw LookCabDoor
    ; Show message 1.
    db $01, $3a ; Message Text14Message3A: タクシーが とまっている。 / きゃくは のっていないようだ。[END]
    ; End script.
    db $ff

; Move between the cab and street at Cottage and show the original arrival description.
UseCabCottage:

C2Sc5_7D:
    ; Move using two room arguments if the selected state permits.
    db $20, CabAtCottage, RoomSugarApartmentFront
    ; Test room argument and branch on equality.
    db $25, CabAtCottage
    dw SitInC2Cab
    ; Test object flag and branch when set.
    db $08, C2CottageSeen
    dw CottageAgain
    ; Show message 2.
    db $02, $2b ; Message Text16Message2B: きょうどうじゅうたくの まえだ。 / このちいきは ちあんが わるく / けいかんでさえも ちかよらない。[END]
    ; Set object flag.
    db $09, C2CottageSeen
    ; End script.
    db $ff

; Describe the street past Sugar Shack's apartment on a repeated visit.
CottageAgain:

C2Loc5_60:
    ; Show message 2.
    db $02, $2c ; Message Text16Message2C: シュガーの アパートの まえの / とおりだ。[END]
    ; End script.
    db $ff

; Show the door while inside the cab at Peoria; otherwise describe the parked cab.
LookCabPeoria:

C2Sc5_7E:
    ; Test room argument and branch on equality.
    db $25, CabAtPeoria
    dw LookCabDoor
    ; Show message 1.
    db $01, $3a ; Message Text14Message3A: タクシーが とまっている。 / きゃくは のっていないようだ。[END]
    ; End script.
    db $ff

; Move between the cab and street at Peoria and show the original arrival description.
UseCabPeoria:

C2Sc5_7F:
jr_008_4dab:
    ; Move using two room arguments if the selected state permits.
    db $20, CabAtPeoria, RoomJoeFront
    ; Test room argument and branch on equality.
    db $25, CabAtPeoria
    dw SitInC2Cab
    ; Test object flag and branch when set.
    db $08, C2PeoriaSeen
    dw PeoriaAgain
    ; Show message 1.
    db $01, $96 ; Message Text15Message16: ジョーズ・バーの まえの とおりだ。シーゲルが ころされてから / まだ ひもあさい・・・。[END]
    ; Set object flag.
    db $09, C2PeoriaSeen
    ; End script.
    db $ff

; Describe the street in front of Joe's Place on a repeated visit.
PeoriaAgain:

C2Loc5_61:
    ; Show message 1.
    db $01, $97 ; Message Text15Message17: ジョーズ・バーの まえの とおりだ。[END]
    ; End script.
    db $ff

; Show the door while inside the cab at Morgue; otherwise describe the parked cab.
LookCabMorgue:

C2Sc5_80:
    ; Test room argument and branch on equality.
    db $25, CabAtMorgue
    dw LookCabDoor
    ; Show message 1.
    db $01, $3a ; Message Text14Message3A: タクシーが とまっている。 / きゃくは のっていないようだ。[END]
    ; End script.
    db $ff

; Move between the cab and street at Morgue and show the original arrival description.
UseCabMorgue:

C2Sc5_81:
    ; Move using two room arguments if the selected state permits.
    db $20, CabAtMorgue, RoomMorgueFront
    ; Test room argument and branch on equality.
    db $25, CabAtMorgue
    dw SitInC2Cab

; Show the original city morgue front description.
MorgueFront:

C2Loc5_62:
    ; Show message 2.
    db $02, $71 ; Message Text16Message71: こうきょうしたいおきばの まえに / きた。[PAGE] / おれには えんの ない ところで / あって ほしいな。[END]
    ; End script.
    db $ff

; Select the inside or outside description of the apartment building entrance.
LookHomeEntry:

C2Sc5_82:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomAdisonApartmentFront
    dw LookEntrance
    ; Jump to script.
    db $07
    dw LookCabDoor

; Open the building entrance through its original state or attribute path.
OpenHomeEntry:

C2Sc5_83:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomAdisonApartmentFront
    dw OpenDoorState
    ; Jump to script.
    db $07
    dw OpenDoorAttr

; Close the building entrance through its original state or attribute path.
CloseHomeEntry:

C2Sc5_84:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test room argument and branch on equality.
    db $25, RoomAdisonApartmentFront
    dw CloseDoorState
    ; Jump to script.
    db $07
    dw CloseDoorAttr

; Check the door and glass state before breaking the building entrance glass.
BreakHomeEntry:

C2Sc5_85:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorNoEffect
    ; Test state bit.
    db $0e, C2LobbyGlass

jr_008_4df2:
    ; Branch if result bit 0 is set.
    db $03
    dw DoorGlassBroken
    ; Play audio.
    db $3e, $13
    ; Test room argument and branch on inequality.
    db $55, RoomAdisonApartmentFront
    dw BreakHomeInside
    ; Set state and refresh without cue.
    db $22, C2LobbyGlass
    ; Jump to script.
    db $07
    dw DoorGlassReply

; Set the entrance glass state and show the inside shattering reply.
BreakHomeInside:

C2Loc5_63:
    ; Set state bit.
    db $0f, C2LobbyGlass
    ; Show message 0.
    db $00, $62 ; Message Text12Message62: ガラスが こなごなに / くだけちった。[END]
    ; End script.
    db $ff

; Move between the building front and hallway and select the original visit reply.
UseHomeEntry:

C2Sc5_86:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomAdisonApartmentFront, RoomAdisonHallway
    ; Test room argument and branch on equality.
    db $25, RoomAdisonApartmentFront
    dw HomeEntryFront
    ; Test object flag and branch when set.
    db $08, C2LobbySeen
    dw HomeHallAgain
    ; Show message 1.
    db $01, $55 ; Message Text14Message55: ああ・・・ なつかしの わがやだ! / きのぬけた ビール・・・。 / はなをつく におい・・・。[PAGE] / あの すばらしい せいかつが / おもいだされる・・・...
    ; Set object flag.
    db $09, C2LobbySeen
    ; End script.
    db $ff

; Show mailbox object 3B and describe the hallway on a repeated visit.
HomeHallAgain:

C2Loc5_64:
    ; Show object.
    db $29, C2VisIdAdisonMailboxClosed
    ; Refresh room objects.
    db $2b
    ; Show message 1.
    db $01, $56 ; Message Text14Message56: アパートの ろうかに いる。[END]
    ; End script.
    db $ff

; Choose the first or repeated apartment building front description.
HomeEntryFront:

C2Loc5_65:
    ; Test object flag and branch when set.
    db $08, C2HomeSeen
    dw HomeEntryAgain

jr_008_4e1f:
    ; Show message 1.
    db $01, $51 ; Message Text14Message51: あれはてた アパートの まえだ。 / なつかしの わがやだ。[END]
    ; Set object flag.
    db $09, C2HomeSeen
    ; End script.
    db $ff

; Show the repeated building front reply at this separate entry.
HomeEntryAgain:

C2Loc5_66:
    ; Show message 1.
    db $01, $52 ; Message Text14Message52: おれの アパートの まえだ。[END]
    ; End script.
    db $ff

; Choose the inside or outside apartment door description.
LookHomeDoor:

C2Sc5_87:
    ; Test attribute bit 2 and branch when set.
    db $1d

jr_008_4e28:
    dw DoorIsOpen
    ; Hold text.
    db $2e
    ; Test room argument and branch on inequality.
    db $55, RoomAdisonHallway
    dw HomeDoorInside
    ; Show message 1.
    db $01, $61 ; Message Text14Message61: 「101」 / おれの へやの ドアだ![END]
    ; Jump to script.
    db $07
    dw DoorKeyHint

; Use the shared door description and original lock hint.
HomeDoorInside:

C2Loc5_67:
    ; Show message 0.
    db $00, $2a ; Message Text12Message2A: もくせいの ドアだ。[END]
    ; Jump to script.
    db $07
    dw DoorKeyHint

; Require the unlocked door and preserve the inside curtain gate.
OpenHomeDoor:

C2Sc5_88:
jr_008_4e39:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test object flag and branch when clear.
    db $54, HomeUnlocked
    dw DoorLockedReply
    ; Test room argument and branch on equality.
    db $25, RoomAdisonHallway
    dw OpenDoorState
    ; Test state bit.
    db $0e, C2HomeCurtain
    ; Branch if result bit 0 is set.
    db $03
    dw OpenDoorState

; Name the curtain and show the original obstruction reply.
CurtainBlocks:

C2Loc5_68:
    ; Set text name 0.
    db $30, $d4
    ; Show message 3.
    db $2c, $21 ; Message Text18Message21: [OBJECT_WRAM:37C5]を あけなければ / できない![END]
    ; End script.
    db $ff

; Use the room and curtain state to choose the closing path.
CloseHomeDoor:

C2Sc5_89:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test room argument and branch on equality.
    db $25, RoomAdisonHallway
    dw CloseDoorState
    ; Test state bit.
    db $0e, C2HomeCurtain
    ; Branch if result bit 0 is set.
    db $03
    dw CloseDoorState
    ; Jump to script.
    db $07
    dw CurtainBlocks

; Preserve the inside curtain gate before moving through the door.
UseHomeDoor:

C2Sc5_8A:
    ; Test room argument and branch on equality.
    db $25, RoomAdisonHallway
    dw MoveHomeRoom
    ; Test state bit.
    db $0e, C2HomeCurtain
    ; Branch if result bit 0 is clear.
    db $04
    dw CurtainBlocks

; Move between rooms 33 and 34 and run the original first-entry sequence.
MoveHomeRoom:

C2Loc5_69:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomAdisonHallway, RoomAdisonApartment
    ; Test room argument and branch on equality.
    db $25, RoomAdisonHallway
    dw HomeHallAgain
    ; Test object flag and branch when set.
    db $08, C2HomeEntered
    dw HomeRoomAgain
    ; Show message 1.
    db $01, $cb ; Message Text15Message4B: ひっくりかえったような へやだ。 / でも なんだか おちつくな・・・。 / わがやが いちばんだ![PAGE] / とつぜん・・・ / やすものの タバコの においで ...
    ; Run scene effect.
    db $39, $0d
    ; Play audio.
    db $3e, $0a
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 1.
    db $01, $cc ; Message Text15Message4C: いまいましい! / シーゲルは 112000ドルを / どこに やってしまったのだろう?[PAGE] / なんとしても てがかりを / みつけださなければ![PAGE] ...
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
    db $09, C2LampReady
    ; Set object flag.
    db $09, C2LampHasCell
    ; Set object flag.
    db $09, C2HomeEntered
    ; End script.
    db $ff

; Show the repeat apartment description.
HomeRoomAgain:

C2Loc5_6A:
    ; Show message 1.
    db $01, $69 ; Message Text14Message69: おれの へやだ。 / あいかわらず きたないね。[END]
    ; End script.
    db $ff

; Describe the neighboring resident and show the key hint; regional resident names differ.
LookNeighborDoor1:

C2Sc5_8B:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $62 ; Message Text14Message62: 「102」に すんでいるのが / バーサ・ヒュート いがいの ひと / だったらな。[PAGE] / かのじょの こうすいは ひどい![END]
    ; Jump to script.
    db $07
    dw DoorKeyHint

; Describe Dan Smoron and show the key hint, retaining the regional apartment number.
LookNeighborDoor2:

C2Sc5_8C:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01 ; Message Text14Message60: 「103」には ダン・スモーンが / すんでいる。 / あいつは いつも かえりが おそい。[END]

jr_008_4e9b:
    db $60
    ; Jump to script.
    db $07
    dw DoorKeyHint

; Move between Joe front and the police station front and select the arrival reply.
UsePoliceWay:

C2Sc5_8D:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomJoeFront, RoomPoliceStationFront
    ; Test room argument and branch on equality.
    db $25, RoomJoeFront
    dw PeoriaAgain
    ; Show message 2.
    db $02, $19 ; Message Text16Message19: けいさつしょの まえの とおりだ。[END]
    ; End script.
    db $ff

; Describe the alley behind Joe from the street, otherwise use the quiet-place reply.
LookJoeAlleyWay:

C2Sc5_8E:
    ; Test room argument and branch on inequality.
    db $55, RoomJoeFront
    dw QuietPlaceReply
    ; Show message 1.
    db $01, $9c ; Message Text15Message1C: ジョーズ・バーの ろじだ。[END]
    ; End script.
    db $ff

; Move between Joe front and the alley and select the arrival reply.
UseJoeAlleyWay:

C2Sc5_8F:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomJoeFront, RoomJoeAlley
    ; Test room argument and branch on equality.
    db $25, RoomJoeFront
    dw PeoriaAgain
    ; Jump to script.
    db $07
    dw JoeAlleyReply

; Describe the manhole using the original regional text.
LookManhole:

C2Sc5_90:
    ; Show message 1.
    db $01, $9a ; Message Text15Message1A: マンホールだ。[END]
    ; End script.
    db $ff

; Explain why the sealed manhole cannot be opened.
OpenManholeReply:

C2Sc5_91:
    ; Show message 1.
    db $01, $a1 ; Message Text15Message21: ・・・あかない。[PAGE] / ワニが でる ということで / ほけんいいんかいが げすいどうへの / いりぐちを ふうじているのだ。[END]
    ; End script.
    db $ff

; Show the closed-manhole reply shared by close and use actions.
ManholeClosed:

C2Sc5_92:
    ; Show message 1.
    db $01, $9f ; Message Text15Message1F: ふたが しまっているので なかに / はいることは できない。[END]
    ; End script.
    db $ff

; Describe the construction barrier blocking the route.
LookWorksBarrier:

C2Sc5_93:
    ; Show message 1.
    db $01, $9b ; Message Text15Message1B: こうじちゅうで さきに すすめそうもないな。[END]
    ; End script.
    db $ff

; Show the construction fence reply when trying the blocked route.
WorksBlocked:

C2Sc5_94:
    ; Show message 1.
    db $01, $a0 ; Message Text15Message20: こうじちゅうなので すすめない。[PAGE] / こどもたちが じこを おこさない / ように かこいが してある。[END]
    ; End script.
    db $ff

; Select the fire escape description for the alley or platform.
LookJoeFireEscape:

C2Sc5_95:
    ; Test room argument and branch on equality.
    db $25, RoomJoeFireEscape
    dw JoeEscapeDown

; Describe the fire escape and retain the climbing hint until its first visit.
JoeEscapeHint:

C2Loc5_6B:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $a5 ; Message Text15Message25: ガタガタしている かいだんだ。[END]
    ; Test object flag and branch when set.
    db $08, C2JoeEscapeSeen
    dw EndC2Path
    ; Show message 1.
    db $01, $a4 ; Message Text15Message24: おれが のぼっても / だいじょうぶかな・・・?[END]
    ; End script.
    db $ff

; Describe the fire escape leading to floor one.
JoeEscapeDown:

C2Loc5_6C:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $a5 ; Message Text15Message25: ガタガタしている かいだんだ。[END]
    ; Set script value 0.
    db $49, $01
    ; Show message 3.
    db $2c, $2b ; Message Text18Message2B: [NUM8_WRAM:87C5]かいに つづいている。[END]
    ; End script.
    db $ff

; Describe the fire escape leading to floor three.
JoeEscapeUp:

C2Sc5_96:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $a5 ; Message Text15Message25: ガタガタしている かいだんだ。[END]
    ; Set script value 0.
    db $49, $03
    ; Show message 3.
    db $2c, $2b ; Message Text18Message2B: [NUM8_WRAM:87C5]かいに つづいている。[END]
    ; End script.
    db $ff

; Move between the alley and fire escape and mark the platform visit.
UseJoeFireEscape:

C2Sc5_97:
jr_008_4ee7:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomJoeAlley, RoomJoeFireEscape
    ; Test room argument and branch on equality.
    db $25, RoomJoeAlley
    ; Target JoeAlleyReply; retain the interior label.
    db LOW(JoeAlleyReply)

jr_008_4eed:
    db HIGH(JoeAlleyReply)
    ; Show message 1.
    db $01, $a9 ; Message Text15Message29: ガタガタの ひじょうかいだんの / うえにきた。[END]
    ; Set object flag.
    db $09, C2JoeEscapeSeen
    ; End script.
    db $ff

; Show the alley arrival description shared by its entry routes.
JoeAlleyReply:

C2Loc5_6D:
    ; Show message 1.
    db $01, $a2 ; Message Text15Message22: とおりに つづいている うすぐらい / ろじだ。[END]
    ; End script.
    db $ff

; Describe the continuation of the alley behind Joe.
LookJoeRearWay:

C2Sc5_98:
    ; Show message 1.
    db $01, $a6 ; Message Text15Message26: ろじが つづいている。[END]
    ; End script.
    db $ff

; Move between the two alley areas and select the arrival reply.
UseJoeRearWay:

C2Sc5_99:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomJoeAlley, RoomJoeRearAlley
    ; Test room argument and branch on equality.
    db $25, RoomJoeAlley
    dw JoeAlleyReply

; Describe the dirty alley immediately behind Joe.
JoeRearAlleyReply:

C2Loc5_6E:
    ; Show message 1.
    db $01, $c8 ; Message Text15Message48: ジョーズ・バーの まうしろだ。 / ここの ろじは きたないなあ。[END]
    ; End script.
    db $ff

; Describe the rear alley manhole and its sewer connection.
LookRearManhole:

C2Sc5_9A:
    ; Show message 1.
    db $01, $a3 ; Message Text15Message23: マンホールの ふただ。 / このしたは げすいどうだろう。[END]
    ; End script.
    db $ff

; Describe the office entrance from the fire escape, otherwise describe the escape.
LookJoeOfficeWin:

C2Sc5_9B:
    ; Test room argument and branch on inequality.
    db $55, RoomJoeFireEscape
    dw JoeEscapeReply
    ; Show message 1.
    db $01, $ad ; Message Text15Message2D: マドの むこうが ジョーズ・バーの / 2かいだ。[END]
    ; End script.
    db $ff

; Show the fire escape description at this separate entry.
JoeEscapeReply:

C2Loc5_6F:
    ; Show message 1.
    db $01, $a5 ; Message Text15Message25: ガタガタしている かいだんだ。[END]
    ; End script.
    db $ff

; Enter the office from the fire escape after clearing state 75, otherwise take the return path.
UseJoeOfficeWin:

C2Sc5_9C:
    ; Test room argument and branch on inequality.
    db $55, RoomJoeFireEscape
    dw LeaveJoeOfficeWin
    ; Clear state bit.
    db $10, C2StateJoeSafeOpen
    ; Move using two room arguments if the selected state permits.
    db $20, RoomJoeFireEscape, RoomJoeOffice
    ; Show message 1.
    db $01, $b8 ; Message Text15Message38: ジョー・シーゲルの オフィスだ。 / シーゲルの いたいを みつけたときとかわってないな・・・。[END]

jr_008_4f1b:
    ; End script.
    db $ff

; Move between the office and escape and use the shared escape hint.
LeaveJoeOfficeWin:

C2Loc5_70:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomJoeFireEscape, RoomJoeOffice
    ; Jump to script.
    db $07
    dw JoeEscapeHint

; Explain why the rickety upper ladder cannot be climbed.
JoeLadderBlocked:

C2Sc5_9D:
    ; Show message 1.
    db $01, $b1 ; Message Text15Message31: かいだんは さびていて のぼれない。あきらめたほうが よさそうだ。[END]
    ; End script.
    db $ff

; Describe Joe's rear door and retain the original lock hint flag order.
LookJoeRearDoor:

C2Sc5_9E:
    ; Test attribute bit 2 and branch when set.
    db $1d
    ; Target DoorIsOpen; retain the interior label.
    db LOW(DoorIsOpen)

jr_008_4f27:
    db HIGH(DoorIsOpen)
    ; Test room argument and branch on equality.
    db $25, RoomJoeRearHallway
    dw ClosedDoorReply
    ; Hold text.
    db $2e
    ; Test object flag and branch when set.
    db $08, C2JoeLockGone
    dw JoeLockBroken

jr_008_4f31:
    ; Show message 1.
    db $01, $d6 ; Message Text15Message56: かなり やすそうな カギが / かかっている。[END]
    ; Set object flag.
    db $09, C2JoeLockHint
    ; Test object flag and branch when clear.
    db $54, C2JoeLockHint
    dw EndC2Path
    ; Show message 1.
    db $01, $d7 ; Message Text15Message57: どうにかすれば こわれそうだな。[END]
    ; End script.
    db $ff

; Name the lock and show that it is broken.
JoeLockBroken:

C2Loc5_71:
    ; Set text name 0.
    db $30, $af
    ; Show message 3.
    db $2c, $1b ; Message Text18Message1B: [OBJECT_WRAM:37C5]は こわれている。[END]
    ; End script.
    db $ff

; Require the broken lock before the rear door opening path.
OpenJoeRearDoor:

C2Sc5_9F:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test object flag and branch when clear.
    db $54, C2JoeLockGone
    dw DoorLockedReply
    ; Test room argument and branch on equality.
    db $25, RoomJoeRearAlley
    dw OpenDoorState
    ; Jump to script.
    db $07
    dw OpenDoorAttr

; Use the original room-dependent rear door closing path.
CloseJoeRearDoor:

C2Sc5_A0:
jr_008_4f4f:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test room argument and branch on equality.
    db $25, RoomJoeRearAlley
    ; Target CloseDoorState; retain the interior label.
    db LOW(CloseDoorState)

jr_008_4f55:
    db HIGH(CloseDoorState)
    ; Jump to script.
    db $07
    dw CloseDoorAttr

; Move between rooms 39 and 3A and choose the hallway description from the lamp flag.
UseJoeRearDoor:

C2Sc5_A1:
    ; Test room argument and branch on inequality.
    db $55, RoomJoeRearAlley
    dw LeaveJoeRearDoor
    ; Move using two room arguments if the selected state permits.
    db $20, RoomJoeRearAlley, RoomJoeRearHallway
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw JoeRearDark
    ; Show message 1.
    db $01, $e0 ; Message Text15Message60: せまい ろうかだ。 / へんな においが する・・・。[END]
    ; End script.
    db $ff

; Move between rooms 39 and 3A and use the shared exit description.
LeaveJoeRearDoor:

C2Loc5_72:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomJoeRearAlley, RoomJoeRearHallway
    ; Jump to script.
    db $07
    dw JoeRearAlleyReply

; Show the original unlit hallway description.
JoeRearDark:

C2Loc5_73:
    ; Show message 1.
    db $01, $de ; Message Text15Message5E: せまい ろうかだ。 / うすぐらくて ぶきみだな・・・。[END]
    ; End script.
    db $ff

; Describe the bar entrance or the door from inside the bar.
LookJoeBarDoor:

C2Sc5_A2:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomJoeBar
    dw ClosedDoorReply
    ; Show message 1.
    db $01, $e6 ; Message Text15Message66: 「バー」と かいてある。 / のどが かわいたな・・・。[END]
    ; End script.
    db $ff

; Open the bar door through its original state or attribute path.
OpenJoeBarDoor:

C2Sc5_A3:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomJoeRearHallway
    dw OpenDoorState
    ; Jump to script.
    db $07
    dw OpenDoorAttr

; Close the bar door through its original state or attribute path.
CloseJoeBarDoor:

C2Sc5_A4:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test room argument and branch on equality.
    db $25, RoomJoeRearHallway
    dw CloseDoorState
    ; Jump to script.
    db $07
    dw CloseDoorAttr

; Enter the bar or check the lamp before leaving it.
UseJoeBarDoor:

C2Sc5_A5:
    ; Test room argument and branch on inequality.
    db $55, RoomJoeRearHallway
    dw LeaveJoeBar
    ; Move using two room arguments if the selected state permits.
    db $20, RoomJoeRearHallway, RoomJoeBar

; Require the lit lamp for the bar description and set the bar visit flag.
JoeBarArrival:

C2Loc5_74:
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    ; Target JoeDarkFall; retain the interior label.
    db LOW(JoeDarkFall)

jr_008_4f98:
    db HIGH(JoeDarkFall)
    ; Show message 1.
    db $01, $ec ; Message Text15Message6C: くらい バーの なかだ。[END]
    ; Set object flag.
    db $09, C2JoeBarVisited
    ; End script.
    db $ff

; Require the lit lamp before moving to the rear hallway.
LeaveJoeBar:

C2Loc5_75:
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw JoeDarkFall

jr_008_4fa2:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomJoeRearHallway, RoomJoeBar
    ; Show message 1.
    db $01, $e0 ; Message Text15Message60: せまい ろうかだ。 / へんな においが する・・・。[END]
    ; End script.
    db $ff

; Play the shared fatal fall in darkness with the original regional messages.
JoeDarkFall:

C2Loc5_76:
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $09
    ; Show message 1.
    db $01, $e9 ; Message Text15Message69: なにも みえないので てさぐりで / あるいた・・・。[PAGE] / おーっとっとっとっ・・・。 / うかつにも あしを すべらせた![END]
    ; Play audio.
    db $3e, $17
    ; No operation.
    db $41
    ; Show message 3.
    db $2c, $3b ; Message Text18Message3B: ・・・ズデン!!![PAGE] / ころんだひょうしに あたまを ゆかにおもいっきり うちつけてしまった。[PAGE] / うちどころが わるかったらしい。[PAGE] ...
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Describe the door to the ladies bathroom.
LookJoeLadies:

C2Sc5_A6:
    ; Show message 1.
    db $01, $e4 ; Message Text15Message64: じょせいようの トイレの ドアだ。[END]
    ; End script.
    db $ff

; Describe the door to the men bathroom.
LookJoeMens:

C2Sc5_A7:
    ; Show message 1.
    db $01, $e5 ; Message Text15Message65: だんせいようの トイレの ドアだ。[END]
    ; End script.
    db $ff

; Describe the marked cellar door from the bar or the door from the cellar.
LookJoeCellarDoor:

C2Sc5_A8:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on inequality.
    db $55, RoomJoeBar
    dw ClosedDoorReply
    ; Show message 1.
    db $01, $f1 ; Message Text15Message71: 「ワインセラー」と かいてある / ドアだ。[END]
    ; End script.
    db $ff

; Show the original regional alternate stairs reply.
JoeStairsAlt:

C2Loc5_77:
    ; Show message 1.
    db $01, $f9 ; Message Text15Message79: うしろに かいだんが ある。[END]
    ; End script.
    db $ff

; Open the cellar door through its original state or attribute path.
OpenJoeCellarDoor:

C2Sc5_A9:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomJoeBar
    dw OpenDoorState

jr_008_4fce:
    ; Jump to script.
    db $07
    dw OpenDoorAttr

; Close the cellar door through its original state or attribute path.
CloseJoeCellarDoor:

C2Sc5_AA:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test room argument and branch on equality.
    db $25, RoomJoeBar
    dw CloseDoorState
    ; Jump to script.
    db $07
    dw CloseDoorAttr

; Require the lit lamp before moving between the bar and cellar.
UseJoeCellarDoor:

C2Sc5_AB:
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    ; Target JoeDarkFall; retain the interior label.
    db LOW(JoeDarkFall)

jr_008_4fde:
    db HIGH(JoeDarkFall)
    ; Move using two room arguments if the selected state permits.
    db $20, RoomJoeBar, RoomJoeCellar

jr_008_4fe2:
    ; Test room argument and branch on equality.
    db $25, RoomJoeBar
    dw JoeBarArrival

; Show the storage cellar arrival description.
JoeCellarReply:

C2Loc5_78:
    ; Show message 1.
    db $01, $f4 ; Message Text15Message74: うすぎたない ワインセラーだ。 / くうきが にごっている。[END]
    ; End script.
    db $ff

; Describe the second-floor stairs from the bar or use the shared alternate reply.
LookJoeStairs:

C2Sc5_AC:
    ; Test room argument and branch on inequality.
    db $55, RoomJoeBar
    dw JoeStairsAlt
    ; Show message 1.
    db $01, $ed ; Message Text15Message6D: 2かいへ つうじる かいだんだ。[END]
    ; End script.
    db $ff

; Require the lit lamp before moving between the bar and upstairs hallway.
UseJoeStairs:

C2Sc5_AD:
jr_008_4ff0:
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw JoeDarkFall
    ; Move using two room arguments if the selected state permits.
    db $20, RoomJoeBar, RoomJoeUpstairsHallway
    ; Test room argument and branch on equality.
    db $25, RoomJoeBar
    dw JoeBarArrival
    ; Show message 2.
    db $02, $13 ; Message Text16Message13: 2かいの ろうかだ。 / かべに ポスターが はってある。[END]
    ; End script.
    db $ff

; Describe the hidden passage from the cellar or the cellar direction from the chamber.
LookJoeShelfWay:

C2Sc5_AE:
    ; Test room argument and branch on equality.
    db $25, RoomJoeCellar
    dw JoeShelfWayReply
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Show message 2.
    db $02, $04 ; Message Text16Message04: ワインセラーへ つづく ドアだ。[END]
    ; End script.
    db $ff

; Describe the passage leading into darkness.
JoeShelfWayReply:

C2Loc5_79:
    ; Show message 1.
    db $01, $fa ; Message Text15Message7A: ひみつの つうろが あらわれた。[END]
    ; End script.
    db $ff

; Select the shelf opening path from the chamber or the already-open reply.
OpenJoeShelves:

C2Sc5_AF:
    ; Test room argument and branch on equality.
    db $25

jr_008_500c:
    db RoomJoeChamber
    dw OpenJoeShelfState

; Show the already-open reply using the original shelf name.
JoeShelvesOpen:

C2Loc5_7A:
    ; Set text name 0.
    db $30, $d1
    ; Show message 3.
    db $2c, $19 ; Message Text18Message19: [OBJECT_WRAM:37C5]は あいている。[END]
    ; End script.
    db $ff

; Hide objects 91 and 92, mark the shelves, and set the selected state.
OpenJoeShelfState:

C2Loc5_7B:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw JoeShelvesOpen
    ; Set object flag.
    db $09, C2ShelvesOpen
    ; Hide object.
    db $2a, C2VisIdJoeBottleRack
    ; Hide object.
    db $2a

jr_008_501c:
    db C2VisIdJoeCleanBottle
    ; Set text name 0.
    db $30, $d1
    ; Show message 3.
    db $2c, $02 ; Message Text18Message02: [OBJECT_WRAM:37C5]を あけた。[END]
    ; Set selected state and refresh.
    db $21
    ; End script.
    db $ff

; Close the shelves and retain the room-dependent panel redraw.
CloseJoeShelves:

C2Sc5_B0:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test room argument and branch on equality.
    db $25, RoomJoeChamber
    dw CloseJoeShelfInner
    ; Call script.
    db $05
    dw CloseJoeShelfState
    ; Draw Case II panel and marks.
    db $3c

; Restore objects 91 and 92 after the shelves close.
ShowJoeShelfObjs:

C2Loc5_AA:
    ; Show object.
    db $29, C2VisIdJoeBottleRack
    ; Show object.
    db $29

jr_008_5031:
    db C2VisIdJoeCleanBottle
    ; End script.
    db $ff

; Close the shelves from the chamber and restore their objects.
CloseJoeShelfInner:

C2Loc5_AB:
    ; Call script.
    db $05
    dw CloseJoeShelfState
    ; Jump to script.
    db $07
    dw ShowJoeShelfObjs

; Show the closing reply, clear the flag and selected state, and return.
CloseJoeShelfState:

C2Loc5_AC:
    ; Set text name 0.
    db $30, $d1
    ; Show message 3.
    db $2c, $03 ; Message Text18Message03: [OBJECT_WRAM:37C5]を しめた。[END]
    ; Clear object flag.
    db $0a, C2ShelvesOpen
    ; Clear selected state and refresh.
    db $23
    ; Return to calling script.
    db $06

; Require the lit lamp before moving between the cellar and chamber.
UseJoeShelfWay:

C2Sc5_B1:
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw JoeDarkFall
    ; Move using two room arguments if the selected state permits.
    db $20, RoomJoeCellar, RoomJoeChamber
    ; Test room argument and branch on equality.
    db $25, RoomJoeCellar
    dw JoeCellarReply

; Describe the small foul-smelling chamber.
JoeChamberReply:

C2Loc5_7C:
    ; Show message 2.
    db $02, $00 ; Message Text16Message00: ひどい においのする へやだ。[END]
    ; End script.
    db $ff

; Require the lit lamp before moving between the chamber and hidden casino.
UseJoeCasinoWay:

C2Sc5_B2:
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw JoeDarkFall
    ; Move using two room arguments if the selected state permits.
    db $20, RoomJoeChamber, RoomJoeCasino
    ; Test room argument and branch on equality.
    db $25, RoomJoeChamber
    dw JoeChamberReply
    ; Show message 2.
    db $02, $05 ; Message Text16Message05: ひみつの カジノだ。 / ひっそりと しずまりかえっている。[END]
    ; End script.
    db $ff

; Show the inactive elevator reply shared by open and use actions.
JoeLiftNoPower:

C2Sc5_B3:
    ; Show message 2.
    db $02, $10 ; Message Text16Message10: エレべータの ドアは あかない。 / スイッチが きれている・・・。[END]
    ; End script.
    db $ff

; Describe the restricted upstairs door and show the shared key hint.
LookJoeUpperDoor:

C2Sc5_B4:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $17 ; Message Text16Message17: ドアに 「かんけいしゃいがい / たちいりきんし!」と かいてある。[END]
    ; Jump to script.
    db $07
    dw DoorKeyHint

; Describe the police entrance unless the door is already open.
LookPoliceDoor:

C2Sc5_B5:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Show message 2.
    db $02, $1c ; Message Text16Message1C: けいさつしょの いりぐちだ。[END]
    ; End script.
    db $ff

; Enter the shared glass-breaking arrest script in bank seven.
PoliceGlassEnd:

C2Loc5_7D:
    ; Jump to script in bank $07.
    db $7d
    dw GlassBreakArrest
    db $07

; Show the police door glass effects and retain the arrest route.
BreakPoliceDoor:

C2Sc5_B6:
    ; Hold text.
    db $2e
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw PoliceGlassEnd
    ; Play audio.
    db $3e, $13
    ; Show object.
    db $29, C2VisIdPoliceDoorGlass1
    ; Show object.
    db $29, C2VisIdPoliceDoorGlass2
    ; Refresh room objects.
    db $2b
    ; Wait while rendering objects.
    db $47, $0a
    ; Hide object.
    db $2a, C2VisIdPoliceDoorGlass1
    ; Hide object.
    db $2a, C2VisIdPoliceDoorGlass2
    ; Jump to script in bank $07.
    db $7d
    ; Target DrawPoliceGlass; retain the interior label.
    db LOW(DrawPoliceGlass)

jr_008_5083:
    db HIGH(DrawPoliceGlass)
    db $07

; Require the open door before the original arrest and fatal Stogie sequence.
UsePoliceEntry:

C2Sc5_B7:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw PoliceNeedsOpen
    ; Hold text.
    db $2e
    ; Run scene effect.
    db $39, FxHandcuffs
    ; Play audio.
    db $3e, $09
    ; Show message 2.
    db $02, $1e ; Message Text16Message1E: まちがった ばしょに たすけを / もとめたようだ。[PAGE] / けいかんは おれが こまっていても / かんけいない といった かんじだ。[PAGE] / それでも...
    ; Show message 0.
    db $00, $fd ; Message Text13Message7D: ふこうなことに おれに あたえられた1しゅうかんという きげんは / けいさつに いるあいだに / すぎてしまった・・・。[PAGE] / ストージーが ほしゃくきんを ...
    ; Run scene effect.
    db $39

jr_008_5092:
    db FxStogie
    ; Show message 0.
    db $00, $fe ; Message Text13Message7E: ストージーは いった・・・。[PAGE] / 「よかったな・・・。 /  これは しゅっしょいわいだ。 /  うけとってくれ!」[PAGE] / そして おれの どてっぱ...
    ; Play audio.
    db $3e, $10
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Show the must-open-first reply at this separate police entrance entry.
PoliceNeedsOpen:

C2Loc5_AD:
    ; Show message 0.
    db $00, $d1 ; Message Text13Message51: あけなければ いどうできない。[END]
    ; End script.
    db $ff

; Describe Sugar's locked door from room 41; otherwise use the cab door reply.
LookSugarDoor:

C2Sc5_B8:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on inequality.
    db $55, RoomSugarApartmentFront
    dw LookCabDoor
    ; Test object flag and branch when set.
    db $08, C2SugLockGone
    dw ClosedDoorReply
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $30 ; Message Text16Message30: シュガーの へやの ドアだ。 / やすものの カギが かかっている。[END]
    ; Test object flag and branch when set.
    db $08, C2SugLockHint
    dw SugarLockHint
    ; Show message 2.
    db $02, $31 ; Message Text16Message31: カギは もっていないし どうすれば / なかに はいれるのだろうか?[END]
    ; Set object flag.
    db $09, C2SugLockHint
    ; End script.
    db $ff

; Show the repeated cheap-lock hint.
SugarLockHint:

C2Loc5_7E:
jr_008_50b3:
    ; Show message 2.
    db $02, $32 ; Message Text16Message32: やすものの カギ・・・。これが ポイントだ![END]
    ; End script.
    db $ff

; Require the broken lock and show object 46 before opening the door.
OpenSugarDoor:

C2Sc5_B9:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test object flag and branch when clear.
    db $54, C2SugLockGone
    dw DoorLockedReply
    ; Show object.
    db $29, C2VisIdSugarApartmentDoorOpen
    ; Test room argument and branch on equality.
    db $25

jr_008_50c0:
    db RoomSugarApartmentFront
    dw FinishSugarOpen
    ; Jump to script.
    db $07
    dw OpenDoorAttr

; Run the front-room opening helper and update the selected state.
FinishSugarOpen:

C2Loc5_7F:
    ; Call script.
    db $05
    dw DoorOpening
    ; Refresh room objects.
    db $2b
    ; Set selected state and refresh.
    db $21
    ; End script.
    db $ff

; Hide object 46 and choose the room-dependent closing path.
CloseSugarDoor:

C2Sc5_BA:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Hide object.
    db $2a, C2VisIdSugarApartmentDoorOpen
    ; Test room argument and branch on equality.
    db $25, RoomSugarApartmentFront
    dw FinishSugarClose
    ; Jump to script.
    db $07
    dw CloseDoorAttr

; Run the front-room closing helper and clear the selected state.
FinishSugarClose:

C2Loc5_AE:
    ; Call script.
    db $05
    dw DoorClosing
    ; Refresh room objects.
    db $2b
    ; Clear selected state and refresh.
    db $23
    ; End script.
    db $ff

; Move between rooms 41 and 42 and choose the inside or outside description.
UseSugarDoor:

C2Sc5_BB:
    ; Test room argument and branch on equality.
    db $25, RoomSugarApartmentFront
    dw EnterSugarRoom
    ; Move using two room arguments if the selected state permits.
    db $20, RoomSugarApartmentFront, RoomSugarApartment
    ; Jump to script.
    db $07
    dw CottageAgain

; Clear state AC, move through the door, and select the visit description.
EnterSugarRoom:

C2Loc5_80:
    ; Clear state bit.
    db $10, C2StateSugarWardrobeOpen
    ; Move using two room arguments if the selected state permits.
    db $20, RoomSugarApartmentFront, RoomSugarApartment
    ; Test object flag and branch when set.
    db $08, C2SugarSeen
    dw SugarRoomAgain
    ; Show message 2.
    db $02, $3d ; Message Text16Message3D: シュガーの へやだ。 / なんて きたない へやなんだ![PAGE] / ほこりと やすものの こうすいの / においで いきが つまりそうだ。[END]
    ; Set object flag.
    db $09, C2SugarSeen
    ; End script.
    db $ff

; Show the repeat apartment description.
SugarRoomAgain:

C2Loc5_81:
    ; Show message 2.
    db $02, $3e ; Message Text16Message3E: シュガーの へやだ。[END]
    ; End script.
    db $ff

; Describe the entrance and key hint shared by action groups 53 and 67.
LookKeyedEntry:

C2Sc5_BC:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $74 ; Message Text12Message74: いりぐちの ドアだ。[END]
    ; Jump to script.
    db $07
    dw DoorKeyHint

; Check the glass state and select the breaking reply by the current room.
BreakJoeFront:

C2Sc5_BD:
    ; Test state bit.
    db $0e, C2JoeFrontGlass
    ; Branch if result bit 0 is set.
    db $03
    dw DoorGlassBroken
    ; Play audio.
    db $3e, $13
    ; Test room argument and branch on inequality.
    db $55, RoomJoeFront
    dw BreakJoeGlassAlt
    ; Set state and refresh without cue.
    db $22, C2JoeFrontGlass
    ; Jump to script.
    db $07
    dw DoorGlassReply

; Set the front glass state and show the alternate shattering reply.
BreakJoeGlassAlt:

C2Loc5_82:
    ; Set state and refresh without cue.
    db $22, C2JoeFrontGlass
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $00 ; Message Text18Message00: [OBJECT_WRAM:37C5]が われた。[END]
    ; End script.
    db $ff

; Select the inside or outside description of the morgue front entrance.
LookMorgueEntry:

C2Sc5_BE:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomMorgueFront
    dw LookEntrance
    ; Jump to script.
    db $07
    dw LookCabDoor

; Open the morgue front door through its original room-dependent path.
OpenMorgueEntry:

C2Sc5_BF:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomMorgueFront

jr_008_5125:
    dw OpenDoorState
    ; Jump to script.
    db $07
    dw OpenDoorAttr

; Close the morgue front door through its original room-dependent path.
CloseMorgueEntry:

C2Sc5_C0:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed

jr_008_512d:
    ; Test room argument and branch on equality.
    db $25, RoomMorgueFront
    dw CloseDoorState
    ; Jump to script.
    db $07
    dw CloseDoorAttr

; Check the door and glass state before breaking the morgue front glass.
BreakMorgueEntry:

C2Sc5_C1:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorNoEffect
    ; Test state bit.
    db $0e, C2MorgueGlass
    ; Branch if result bit 0 is set.
    db $03
    dw DoorGlassBroken
    ; Play audio.
    db $3e, $13
    ; Test room argument and branch on equality.
    db $25, RoomMorgueReception
    dw BreakMorgueInside
    ; Set state and refresh without cue.
    db $22, C2MorgueGlass
    ; Jump to script.
    db $07
    dw DoorGlassReply

; Set the glass state from inside reception and use the shared glass reply.
BreakMorgueInside:

C2Loc5_83:
    ; Set state bit.
    db $0f, C2MorgueGlass
    ; Jump to script.
    db $07
    dw DoorGlassReply

; Move between the morgue front and reception, retaining belongings and clothing checks.
UseMorgueEntry:

C2Sc5_C2:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomMorgueFront, RoomMorgueReception
    ; Test room argument and branch on equality.
    db $25, RoomMorgueFront
    dw MorgueFront

; Show the exchanged belongings box unless it has already been taken.
RestoreMorgueBox:

C2Loc5_84:
    ; Test object flag and branch when clear.
    db $54, C2Tag2Given
    dw ShowMorgueDesk

jr_008_5157:
    ; Test object flag and branch when set.
    db $08, C2Box2Taken
    dw ShowMorgueDesk
    ; Hide object.
    db $2a, C2VisIdMorgueBox2Open
    ; Show object.
    db $29, C2VisIdMorgueBox2Closed
    ; Refresh room objects.
    db $2b

; Describe the reception and check the original pants requirement.
ShowMorgueDesk:

C2Loc5_85:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $75 ; Message Text16Message75: こうきょうしたいおきばの / うけつけだ。[PAGE] / とりはだが たってくるな。[END]
    ; Test object flag and branch when clear.
    db $54, C2PantsWorn
    dw CheckMorgueDress
    ; End script.
    db $ff
    ; Unreferenced sequence; these interpretations follow its byte pattern.
jr_008_5168:
    ; Test object flag and branch when clear.
    db $54, $50
    dw MorgueDressAlarm
    ; End script.
    db $ff

; Check the uniform before the shared clerk alarm sequence.
CheckMorgueDress:

C2Loc5_86:
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw EndC2Path

; Show the clerk calling police and use the original arrest sequence.
MorgueDressAlarm:

C2Loc5_B2:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $8e ; Message Text17Message0E: ぶさほうな こういに おどろいて / じむいんは ひじょうべルを おして / けいかんを よんだ。[END]
    ; Jump to script.
    db $07
    ; Target PoliceArrest; retain the interior label.
    db LOW(PoliceArrest)

jr_008_5176:
    db HIGH(PoliceArrest)

; Choose the morgue door view from its attribute and the current room.
LookMorgueDoor:

C2Sc5_C3:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomMorgueReception
    dw LookColdDoor
    ; Show message 2.
    db $02, $a5 ; Message Text17Message25: むこうは したいおきばの / うけつけだ。[END]
    ; End script.
    db $ff

; Choose the freezer-door text from the prior back-room visit flag.
LookColdDoor:

C2Loc5_87:
    ; Test object flag and branch when set.
    db $08, C2ColdRoomSeen
    dw ColdDoorKnown
    ; Show message 2.
    db $02, $84 ; Message Text17Message04: したいが ほぞんされている へやの / ドアだろう。[END]
    ; End script.
    db $ff

; Describe the known back-room door and fall through to its open action.
ColdDoorKnown:

C2Loc5_88:
    ; Show message 2.
    db $02, $85 ; Message Text17Message05: したいが ほぞんされている へやの / ドアだ。[END]

; Select the door open action by room and the original reception gate state.
OpenMorgueDoor:

C2Sc5_C4:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on equality.
    db $25, RoomMorgueColdRoom
    dw OpenDoorAttr

jr_008_5191:
    ; Test state bit.
    db $0e, C2GateOpen
    ; Branch if result bit 0 is set.
    db $03
    dw OpenDoorState
    ; Set text name 0.
    db $30, $bf
    ; Show message 3.
    db $2c, $21 ; Message Text18Message21: [OBJECT_WRAM:37C5]を あけなければ / できない![END]
    ; End script.
    db $ff

; Select the door close action by room and the original reception gate state.
CloseMorgueDoor:

C2Sc5_C5:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test room argument and branch on equality.
    db $25, RoomMorgueColdRoom
    dw CloseDoorAttr
    ; Test state bit.
    db $0e, C2GateOpen
    ; Branch if result bit 0 is set.
    db $03
    dw CloseDoorState
    ; Set text name 0.
    db $30, $bf
    ; Show message 3.
    db $2c, $21 ; Message Text18Message21: [OBJECT_WRAM:37C5]を あけなければ / できない![END]
    ; End script.
    db $ff

; Leave the back room or check the reception gate before entering.
UseMorgueDoor:

C2Sc5_C6:
    ; Test room argument and branch on equality.
    db $25, RoomMorgueColdRoom
    dw ExitMorgueBack
    ; Test state bit.
    db $0e, C2GateOpen
    ; Branch if result bit 0 is set.
    db $03
    dw EnterMorgueBack
    ; Set text name 0.
    db $30, $bf
    ; Show message 3.
    db $2c, $21 ; Message Text18Message21: [OBJECT_WRAM:37C5]を あけなければ / できない![END]
    ; End script.
    db $ff

; Move back to reception and restore its original scene flow.
ExitMorgueBack:

C2Loc5_89:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomMorgueReception, RoomMorgueColdRoom
    ; Jump to script.
    db $07
    dw RestoreMorgueBox

; Require the uniform, move into the cold room, and mark it visited.
EnterMorgueBack:

C2Loc5_8A:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw MorgueGateStop
    ; Move using two room arguments if the selected state permits.
    db $20, RoomMorgueReception, RoomMorgueColdRoom
    ; Show message 2.
    db $02, $99 ; Message Text17Message19: このへやは さむいだけでなく / くさった にくの においもする。[END]
    ; Set object flag.
    db $09, C2ColdRoomSeen
    ; End script.
    db $ff

; Show the unauthorized access reply.
MorgueGateStop:

C2Loc5_8B:
    ; Show message 2.
    db $02, $88 ; Message Text17Message08: 「いっぱんしみんは はいれないよ。 /  しんだ ひとは べつだが・・・。」[END]
    ; End script.
    db $ff

; Describe the stairs down to the laundry room; inside that room retain the original shared fire-escape description.
LookLaundryStairs:

C2Sc5_C7:
    ; Test room argument and branch on equality.
    db $25, RoomLaundry
    dw JoeEscapeReply
    ; Show message 2.
    db $02, $d3 ; Message Text17Message53: せんたくしつへ おりる かいだんが / ある。[END]
    ; End script.
    db $ff

; With hands free, move between the laundry room and cleaners hallway and show the entry response.
UseLaundryStairs:

C2Sc5_C8:
    ; Test object flag and branch when clear.
    db $54, C2HandsFree
    dw C2TiedMove
    ; Move using two room arguments if the selected state permits.
    db $20, RoomLaundry, RoomCleanersHallway
    ; Test room argument and branch on inequality.
    db $55, RoomLaundry
    dw CleanHallReply

; Describe the dim laundry room and detergent smell.
EnterLaundryRoom:

C2Loc5_8C:
    ; Show message 2.
    db $02, $ae ; Message Text17Message2E: うすぐらい せんたくしつだ。 / せんざいの きょうれつな においが / する。[END]
    ; End script.
    db $ff

; Show the tied-hands refusal for the original movement and lid actions.
C2TiedMove:

C2Loc5_8D:
    ; Show message 2.
    db $02, $be ; Message Text17Message3E: そんなことは できない。 / ロープで しばられている。[END]
    ; End script.
    db $ff

; Describe the laundry hamper and retain the original goons-return hint conditions.
LookC2Hamper:

C2Sc5_C9:
    ; Test room argument and branch on equality.
    db $25, RoomHamper
    dw VegasLidOpen
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $bb ; Message Text17Message3B: せんたくものいれだ。 / これだと いくらでも はいるな。[END]
    ; Test object flag and branch when set.
    db $08, C2GoonsFooled
    dw EndC2Path
    ; Test object flag and branch when set.
    db $08, C2HamperHint
    dw RepeatHamperHint
    ; Test object flag and branch when clear.
    db $54, C2HandsFree
    dw EndC2Path
    ; Play audio.
    db $3e, $08
    ; Show message 2.
    db $02, $bc ; Message Text17Message3C: このあたりを ウロウロしていると / すぐ あいつらに みつかってしまう / だろう。[PAGE] / でも このクリーニングてんの / おとこと シーゲルに なんらかの...
    ; Set object flag.
    db $09, C2HamperHint

; Show the search-for-an-escape hint, play the room cue, and end the script.
HintGoonsReturn:

C2Loc5_8E:
    ; Show message 2.
    db $02, $bd ; Message Text17Message3D: ここから にげたように みせかけて / この せんたくものいれの なかに / かくれていれば やつらを / ごまかせるかも しれない![END]
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
    dw PuzzledSceneReply

; With hands free, explain that the broken hamper lid cannot close.
CloseC2Hamper:

C2Sc5_CB:
    ; Test object flag and branch when clear.
    db $54, C2HandsFree
    dw C2TiedMove
    ; Show message 2.
    db $02, $c9 ; Message Text17Message49: おれを いそいで ほうりだしたとき / ふたが こわれたようだ。 / しまらなくなっている。[END]
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
    db $02 ; Message Text17Message27: せんたくものいれの なかにいる。[PAGE] / ぐうわあああっ・・・! / すごい においだ![END]

jr_008_5223:
    db $a7
    ; End script.
    db $ff

; Describe the marked office door from the hallway or the door from the office.
LookCleanOffice:

C2Sc5_CD:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on inequality.
    db $55, RoomCleanersHallway

jr_008_522a:
    dw ClosedDoorReply
    ; Show message 2.
    db $02, $d4 ; Message Text17Message54: ドアには 「オフィス」と / かいてある。[END]
    ; End script.
    db $ff

; Require the raised counter when opening the office door from the hallway.
OpenCleanOffice:

C2Sc5_CE:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw DoorIsOpen
    ; Test room argument and branch on inequality.
    db $55, RoomCleanersHallway
    dw OpenDoorAttr
    ; Test state bit.
    db $0e, C2CounterRaised
    ; Branch if result bit 0 is set.
    db $03
    dw OpenDoorState

; Explain that the counter must be opened before this action.
CounterBlocks:

C2Loc5_90:
    ; Set text name 0.
    db $30, $d0
    ; Show message 3.
    db $2c, $21 ; Message Text18Message21: [OBJECT_WRAM:37C5]を あけなければ / できない![END]
    ; End script.
    db $ff

; Require the raised counter when closing the office door from the hallway.
CloseCleanOffice:

C2Sc5_CF:
    ; Test attribute bit 2 and branch when clear.
    db $5b
    dw DoorIsClosed
    ; Test room argument and branch on inequality.
    db $55, RoomCleanersHallway
    dw CloseDoorAttr
    ; Test state bit.
    db $0e, C2CounterRaised
    ; Branch if result bit 0 is set.
    db $03
    dw CloseDoorState
    ; Jump to script.
    db $07
    dw CounterBlocks

; Select the counter gate on entry or the Ventini knowledge gate on exit.
UseCleanOffice:

C2Sc5_D0:
    ; Test room argument and branch on equality.
    db $25, RoomCleanersHallway
    dw EnterCleanOffice
    ; Test object flag and branch when clear.
    db $54, C2VentiniKnown
    dw HintCleanPhoto
    ; Move using two room arguments if the selected state permits.
    db $20, RoomCleanersHallway, RoomOuterOffice
    ; Show message 2.
    db $02, $cd ; Message Text17Message4D: 「リライアント・クリーニングてん」のろうかだ。[END]
    ; End script.
    db $ff

; Require the raised counter before moving from the hallway to the office.
EnterCleanOffice:

C2Loc5_91:
    ; Test state bit.
    db $0e, C2CounterRaised
    ; Branch if result bit 0 is clear.
    db $04
    dw CounterBlocks
    ; Move using two room arguments if the selected state permits.
    db $20, RoomCleanersHallway, RoomOuterOffice

; Describe the office and retain the goons and framed-picture hint checks.
CleanOfficeReply:

C2Loc5_92:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $d7 ; Message Text17Message57: ひろい オフィスだ。[END]
    ; Test object flag and branch when clear.
    db $54, C2GoonsFooled
    dw CleanGoonsEnd
    ; Test object flag and branch when set.
    db $08, C2FrameHint
    dw EndC2Path
    ; Play audio.
    db $3e, $08
    ; Show message 1.
    db $01, $5c ; Message Text14Message5C: つくえの うえには しゃしんたてが / おいてある。[PAGE] / ・・・なんと!! / シーゲルと うつっていた おとこが / しゃしんのなかに いるではないか![P...
    ; Play room audio cue.
    db $5a
    ; Set object flag.
    db $09, C2FrameHint
    ; End script.
    db $ff

; Show the framed-picture hint that blocks leaving before Ventini is known.
HintCleanPhoto:

C2Loc5_93:
    ; Play audio.
    db $3e, $08
    ; Show message 1.
    db $01, $5d ; Message Text14Message5D: 2まいの しゃしんに うつっていた / おとこは だれなのだろう・・・。 / きにかかる・・・。[PAGE] / しゃしんたてを しらべれば / なにか わかるかも しれ...
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
    db $02, $e3 ; Message Text17Message63: ひみつの へやへの いりぐちだ。[END]
    ; End script.
    db $ff

; Describe the passage leading back to the outer office.
LookSecretExit:

C2Loc5_94:
    ; Show message 2.
    db $02, $f4 ; Message Text17Message74: ダーツボードの へやへの / いりぐちだ。[END]
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
    db $02, $f8 ; Message Text17Message78: ひみつの へやだ![PAGE] / べンティーニは ここで あたらしい / しごとの けいかくを ねっているに / ちがいない。[END]
    ; Set object flag.
    db $09, C2SecretSeen
    ; End script.
    db $ff

; Show the secret-office air-circulation hint.
HintStuffyOffice:

C2Loc5_97:
    ; Show message 2.
    db $02, $f9 ; Message Text17Message79: ひみつの へやだ。[END]
    ; End script.
    db $ff

; With bribes known, no planted ring, and no desk hint, suggest the cigar-ring plan before the original room move.
HintRingAtExit:

C2Loc5_98:
    ; Test object flag and branch when clear.
    db $54, C2BribeKnown
    dw LeaveSecretDoor
    ; Test object flag and branch when set.
    db $08

jr_008_52ac:
    db C2RingFlag
    dw LeaveSecretDoor
    ; Test object flag and branch when set.
    db $08, C2DeskHint
    dw LeaveSecretDoor
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $08
    ; Show message 2.
    db $02, $fe ; Message Text17Message7E: この つくえの うえに ストージーのトレードマークといえる はまきの / シガーリングを おいておけば・・・[PAGE] / べンティーニは けいかくが マロンにしれたと...
    ; Show message 2.
    db $02, $70 ; Message Text16Message70: それから マロンに べンティーニの / あくじを ばらせば ふたりは / あらそうに ちがいない![PAGE] / そのすきに このまちから / にげてしまおう![PAG...
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

; Move back from the secret office and use the original outer-office reply.
LeaveSecretDoor:

C2Loc5_99:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomOuterOffice, RoomSecretOffice
    ; Jump to script.
    db $07
    dw CleanOfficeReply

; Move between the two tire-track areas and show their original description.
UseTracksLink:

C2Sc5_D3:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomTracksA, RoomTracksB
    ; Show message 3.
    db $2c, $49 ; Message Text18Message49: すなの うえに タイヤの / あとが つづいている。[END]
    ; End script.
    db $ff

; Move between the hotel front and desert room 7D.
UseHotelDesert:

C2Sc5_D4:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomHotelFront, RoomDesertBelowHotel

; Select the hotel, sand, or track description after this boundary move.
HotelEdgeReply:

C2Loc5_9A:
    ; Test room argument and branch on equality.
    db $25, RoomHotelFront
    dw C2HotelFront
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $d0 ; Message Text13Message50: すなの だいちが はてしなく / ひろがっている・・・。[END]
    ; Test room argument and branch on equality.
    db $25, RoomTracksB
    dw C2TracksB
    ; End script.
    db $ff

; Describe the tire tracks at desert room $63 without clearing exposure.
C2TracksB:

C2Loc5_9B:
    ; Show message 3.
    db $2c, $49 ; Message Text18Message49: すなの うえに タイヤの / あとが つづいている。[END]
    ; End script.
    db $ff

; Move between the hotel front and track area 63.
UseHotelTracks:

C2Sc5_D5:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomHotelFront, RoomTracksB
    ; Jump to script.
    db $07
    dw HotelEdgeReply

; Describe the Lucky Dice hotel front and clear desert exposure.
C2HotelFront:

C2Loc5_9C:
    ; Show message 0.
    db $00, $cc ; Message Text13Message4C: レンガづくりの ホテルの まえだ。[END]
    ; Clear the desert exposure timer.
    db $42, C2HeatIx
    ; End script.
    db $ff

; Move between the town outskirts and track area 62.
UseOutskirtsTracks:

C2Sc5_D6:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomOutskirts, RoomTracksA

; Select the outskirts, sand, or track description after this boundary move.
OutskirtsEdgeReply:

C2Loc5_9D:
    ; Test room argument and branch on equality.
    db $25, RoomOutskirts
    dw C2Outskirts
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $d4 ; Message Text13Message54: カラカラに かわいた さばくだ。[END]
    ; Test room argument and branch on equality.
    db $25, RoomTracksA
    dw C2TracksA
    ; End script.
    db $ff

; Describe the tire tracks at desert room $62 without clearing exposure.
C2TracksA:

C2Loc5_9E:
    ; Show message 3.
    db $2c, $49 ; Message Text18Message49: すなの うえに タイヤの / あとが つづいている。[END]
    ; End script.
    db $ff

; Describe the town outskirts (the cleaners front in JP) and clear desert exposure.
C2Outskirts:

C2Loc5_9F:
    ; Show message 0.
    db $00, $ea ; Message Text13Message6A: まちはずれにある クリーニングてんのまえだ。[END]
    ; Clear the desert exposure timer.
    db $42, C2HeatIx
    ; End script.
    db $ff

; Move between the outskirts and desert room 76.
UseOutskirtsSand1:

C2Sc5_D7:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomOutskirts, RoomDesertLeftOutskirts
    ; Jump to script.
    db $07
    dw OutskirtsEdgeReply

; Move between the outskirts and desert room 7A.
UseOutskirtsSand2:

C2Sc5_D8:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomOutskirts, RoomDesertBelowOutskirts
    ; Jump to script.
    db $07

jr_008_530d:
    ; Target OutskirtsEdgeReply; retain the interior label.
    db LOW(OutskirtsEdgeReply)

jr_008_530e:
    db HIGH(OutskirtsEdgeReply)

; Move between the station front and desert room 77.
UseStationSand1:

C2Sc5_D9:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomStation, RoomDesertRightStation

; Select the station front or sand description after this boundary move.
StationEdgeReply:

C2Loc5_A0:
    ; Test room argument and branch on equality.
    db $25, RoomStation
    dw C2StationFront
    ; Show message 0.
    db $00, $d0 ; Message Text13Message50: すなの だいちが はてしなく / ひろがっている・・・。[END]

jr_008_5318:
    ; End script.
    db $ff

; Move between the station front and desert room 7E.
UseStationSand2:

C2Sc5_DA:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomStation, RoomDesertBelowStation
    ; Jump to script.
    db $07
    ; Target StationEdgeReply; retain the interior label.
    db LOW(StationEdgeReply)

jr_008_531e:
    db HIGH(StationEdgeReply)

; Move between track area 62 and desert room 70 without adding a description.
UseTracksASand1:

C2Sc5_DB:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomTracksA

jr_008_5321:
    db RoomDesertAboveTracksA
    ; End script.
    db $ff

; Move between track area 62 and desert room 7B without adding a description.
UseTracksASand2:

C2Sc5_DC:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomTracksA

jr_008_5325:
    db RoomDesertBelowTracksA
    ; End script.
    db $ff

; Move between track area 63 and desert room 71 without adding a description.
UseTracksBSand1:

C2Sc5_DD:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomTracksB, RoomDesertAboveTracksB
    ; End script.
    db $ff

; Move between track area 63 and desert room 7C without adding a description.
UseTracksBSand2:

C2Sc5_DE:
jr_008_532b:
    ; Move using two room arguments if the selected state permits.
    db $20, RoomTracksB

jr_008_532d:
    db RoomDesertBelowTracksB
    ; End script.
    db $ff

; Move through the desert grid and dispatch the five special destination descriptions.
; Destination descriptions run only if the native room-entry ending check returns.
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

; Describe the passage leading to the secretary office.
LookSecretaryDoor:

C2Sc5_E0:
    ; Show message 1.
    db $01, $c5 ; Message Text15Message45: たしか ドアの むこうがわが / ひしょの へやだった。[END]
    ; End script.
    db $ff

; End the current script path without another message.
EndC2Path:

C2Sc5_E1:
    ; End script.
    db $ff

; Show the shared reply that movement requires opening the door.
DoorNeedsOpen:

C2Sc5_E2:
    ; Show message 0.
    db $00, $d1 ; Message Text13Message51: あけなければ いどうできない。[END]
    ; End script.
    db $ff

; Show the opening reply, set the selected state, and refresh.
OpenDoorState:

C2Loc5_A1:
    ; Call script.
    db $05
    dw DoorOpening
    ; Set selected state and refresh.
    db $21
    ; End script.
    db $ff

; Prepare the door name, show the opening reply, and return to the script.
DoorOpening:

C2Loc5_A2:
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $02 ; Message Text18Message02: [OBJECT_WRAM:37C5]を あけた。[END]
    ; Return to calling script.
    db $06

; Show the opening reply and set selected attribute bit two.
OpenDoorAttr:

C2Loc5_A3:
    ; Call script.
    db $05
    dw DoorOpening
    ; Set selected attribute bit 2.
    db $1e
    ; End script.
    db $ff

; Show the shared already-open door reply.
DoorIsOpen:

C2Sc5_E3:
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $19 ; Message Text18Message19: [OBJECT_WRAM:37C5]は あいている。[END]
    ; End script.
    db $ff

; Show the shared puzzled reply for unsupported scene actions.
PuzzledSceneReply:

C2Sc5_E4:
    ; Show message 0.
    db $00, $2d ; Message Text12Message2D: おれ・・・。 / なにを しているのだろう・・・。[END]
    ; End script.
    db $ff

; Show the shared no-effect reply for this door action group.
DoorNoEffect:

C2Sc5_E5:
    ; Show message 0.
    db $00, $2c ; Message Text12Message2C: なにも おこらない。[END]
    ; End script.
    db $ff

; Show the shared cannot-open and locked-door replies.
DoorLockedReply:

C2Sc5_E6:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $d3 ; Message Text13Message53: うーん・・・。 / あかない・・・。[END]
    ; Show message 0.
    db $00, $d6 ; Message Text13Message56: カギが かかっているようだ。[END]
    ; End script.
    db $ff

; Show the shared entrance description.
LookEntrance:

C2Sc5_E7:
    ; Show message 0.
    db $00, $74 ; Message Text12Message74: いりぐちの ドアだ。[END]
    ; End script.
    db $ff

; Show the shared already-closed door reply.
DoorIsClosed:

C2Sc5_E8:
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $1a ; Message Text18Message1A: [OBJECT_WRAM:37C5]は しまっている。[END]
    ; End script.
    db $ff

; Show the closing reply, clear the selected state, and refresh.
CloseDoorState:

C2Loc5_AF:
    ; Call script.
    db $05
    dw DoorClosing
    ; Clear selected state and refresh.
    db $23
    ; End script.
    db $ff

; Prepare the door name, show the closing reply, and return to the script.
DoorClosing:

C2Loc5_B0:
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $03 ; Message Text18Message03: [OBJECT_WRAM:37C5]を しめた。[END]
    ; Return to calling script.
    db $06

; Show the closing reply and clear selected attribute bit two.
CloseDoorAttr:

C2Loc5_B1:
    ; Call script.
    db $05
    dw DoorClosing
    ; Clear selected attribute bit 2.
    db $1f
    ; End script.
    db $ff

; Explain that a scene object cannot be discarded because it is not held.
SceneDropRefusal:

C2Sc5_E9:
jr_008_5383:
    ; Show message 0.
    db $00, $e5 ; Message Text13Message65: もちもので ないものは / すてられない。[END]
    ; End script.
    db $ff

; Show the regional refusal for taking a scene object.
SceneTakeRefusal:

C2Sc5_EA:
    ; Show message 0.
    db $00 ; Message Text13Message61: ・・・とれない。[END]

jr_008_5387:
    db $e1
    ; End script.
    db $ff

; Show the shared no-answer reply.
DoorNoAnswer:

C2Sc5_EB:
    ; Show message 0.
    db $00, $e3 ; Message Text13Message63: ・・・へんじがない。[END]
    ; End script.
    db $ff
