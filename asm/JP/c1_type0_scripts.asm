
; Describe the first original ceiling light.
LookC1CeilLamp1:
; Opcode starts are annotated; scalar operands and inline item-match rows remain data.

C1Sc0_00:
    ; Show message 0.
    db $00, $03 ; Message Text0CMessage03: つりさげしきの でんとうだ。[END]
    ; End script.
    db $ff

; Ask who the player is speaking to.
C1WhoTalkReply:

C1Sc0_01:
    ; Show message 0.
    db $00, $1b ; Message Text0CMessage1B: だれに はなしかけているんだ?[END]
    ; End script.
    db $ff

; End the original Case I action without a message.
C1SilentAction:

C1Sc0_02:
    ; End script.
    db $ff

; Show the original regional fixture-punching reply without adding a damage state.
C1PunchFixture:

C1Sc0_03:
    ; Show message 0.
    db $00, $1a ; Message Text0CMessage1A: コン コン! / ・・・・・・なにも おこらない。[END]
    ; End script.
    db $ff

; Show the original regional questioning reply.
C1SceneQuestion:

C1Sc0_04:
    ; Show message 0.
    db $00, $13 ; Message Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    ; End script.
    db $ff

; Describe the roll of toilet paper.
LookC1ToiletRoll:

C1Sc0_05:
    ; Show message 0.
    db $00, $04 ; Message Text0CMessage04: トイレットぺーパーだ。 / ざつぜんとしたなかに ぶんめいの / かおりを ただよわせている。[END]
    ; End script.
    db $ff

; Describe the other original ceiling light at its separate entry.
LookC1CeilLamp2:

C1Sc0_06:
    ; Show message 0.
    db $00, $20 ; Message Text0CMessage20: でんとうだ。 / てんじょうから つりさがっている。[END]
    ; End script.
    db $ff

; Show the original regional cannot-do-this reply.
C1ActionRefusal:

C1Sc0_07:
    ; Show message 0.
    db $00, $14 ; Message Text0CMessage14: ・・・・・・むりか。[END]
    ; End script.
    db $ff

; Inspect the first mirror and retain its original first-view effect and broken-state checks.
LookC1Mirror1:

C1Sc0_08:
    ; Test object flag.
    db $16, C1Mirror1Seen
    ; Branch if result bit 0 is set.
    db $04
    dw C1Mirror1Again
    ; Test object flag.
    db $16, C1Mirror1Broken
    ; Branch if result bit 0 is set.
    db $04
    dw C1BrokenViewReply
    ; Run scene effect.
    db $46, C1FxIdMirrorReflection
    ; Set object flag.
    db $17, C1Mirror1Seen
    ; End script.
    db $ff

; Show the wooden-frame mirror description unless the original broken flag is set.
C1Mirror1Again:

C1Loc0_00:
    ; Test object flag.
    db $16, C1Mirror1Broken
    ; Branch if result bit 0 is set.
    db $04
    dw C1BrokenViewReply
    ; Show message 0.
    db $00, $25 ; Message Text0CMessage25: カガミだ。 / もくせいの ワクが ついている。[END]
    ; End script.
    db $ff

; Show the shared original broken-object inspection reply.
C1BrokenViewReply:

C1Loc0_01:
    ; Show message 2.
    db $02, $6a ; Message Text10Message6A: われてしまっている。 / それいがいの へんかは みられない。[END]
    ; End script.
    db $ff

; Describe the first sink using the original regional wording.
LookC1Sink1:

C1Sc0_09:
    ; Show message 0.
    db $00, $21 ; Message Text0CMessage21: ふつうの せんめんだいだ。[END]
    ; End script.
    db $ff

; Describe the first puddle and retain its original extra hint gate.
LookC1Puddle1:

C1Sc0_0A:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 0.
    db $00, $27 ; Message Text0CMessage27: みずたまりが ある。[END]
    ; Test object flag.
    db $16, C1WomenStallSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1ResumeTextEnd
    ; Show message 2.
    db $02, $38 ; Message Text10Message38: それは ひだりがわの ドアから / ながれでた もののようだ。[PAGE] / ・・・イヤな よかんがする・・・。[END]
    ; End script.
    db $ff

; Resume the original text flow and end this script path.
C1ResumeTextEnd:

C1Loc0_17:
    ; Resume text.
    db $45
    ; End script.
    db $ff

; Show the shared original reply discouraging this attack.
C1HitObjectReply:

C1Sc0_0B:
    ; Show message 2.
    db $02, $3c ; Message Text10Message3C: こんなもの たたいて どうするんだ![END]
    ; End script.
    db $ff

; Describe the old ceiling light.
LookC1OldLamp:

C1Sc0_0C:
    ; Show message 0.
    db $00, $2f ; Message Text0CMessage2F: ふるぼけた でんとうが / つりさがっている。[END]
    ; End script.
    db $ff

; Describe the second grimy mirror unless its original broken flag is set.
LookC1Mirror2:

C1Sc0_0D:
    ; Test object flag.
    db $16, C1Mirror2Broken
    ; Branch if result bit 0 is set.
    db $04
    dw C1BrokenViewReply
    ; Show message 0.
    db $00, $2d ; Message Text0CMessage2D: あまり うつりのよくない カガミだ。どうやら みずあかのせいのようだ。[END]
    ; End script.
    db $ff

; Describe the second sink using the original regional wording.
LookC1Sink2:

C1Sc0_0E:
    ; Show message 0.
    db $00, $30 ; Message Text0CMessage30: どこにでもある せんめんだいだ。[END]
    ; End script.
    db $ff

; Describe the second puddle using the original regional source of the water.
LookC1Puddle2:

C1Sc0_0F:
    ; Show message 0.
    db $00, $35 ; Message Text0CMessage35: みずたまりだ。 / すいそうから みずが もれている。[END]
    ; End script.
    db $ff

; Describe the second unused toilet paper roll.
LookC1ToiletRoll2:

C1Sc0_10:
    ; Show message 0.
    db $00, $34 ; Message Text0CMessage34: トイレットぺーパーだ。 / だれも つかった ようすはない。[END]
    ; End script.
    db $ff

; Describe the polished bar counter using the original regional wording.
LookC1BarCounter:

C1Sc0_11:
    ; Show message 0.
    db $00, $41 ; Message Text0CMessage41: バーの カウンターだ。 / よく みがかれている。[END]
    ; End script.
    db $ff

; Describe the empty street through the window unless its broken flag is set.
LookC1StreetWin:

C1Sc0_12:
    ; Test object flag.
    db $16, C1StreetWinBroken
    ; Branch if result bit 0 is set.
    db $04
    dw C1BrokenViewReply
    ; Show message 0.
    db $00, $3c ; Message Text0CMessage3C: マドごしに とおりが みえる。 / ・・・・・・だれも いないようだ。[END]
    ; End script.
    db $ff

; Describe the spider web using the original regional wording.
LookC1SpiderWeb:

C1Sc0_13:
    ; Show message 0.
    db $00, $4d ; Message Text0CMessage4D: クモのすが はっている。 / ・・・クモは いないようだ。[END]
    ; End script.
    db $ff

; Describe the cellar light.
LookC1CellarLamp:

C1Sc0_14:
    ; Show message 0.
    db $00, $4a ; Message Text0CMessage4A: ふつうの でんとうだ。 / かわった ところは ない。[END]
    ; End script.
    db $ff

; Describe the barrel and retain its original first-inspection flag.
LookC1Barrel:

C1Sc0_15:
    ; Test object flag.
    db $16, C1BarrelSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1BarrelAgain
    ; Show message 0.
    db $00, $4b ; Message Text0CMessage4B: おおきな ワインの たるだ。 / なかに ワインが / はいっているのだろうか・・・?[END]
    ; Set object flag.
    db $17, C1BarrelSeen
    ; End script.
    db $ff

; Show the shorter barrel description on later inspections.
C1BarrelAgain:

C1Loc0_02:
    ; Show message 0.
    db $00, $53 ; Message Text0CMessage53: おおきな ワインの たるだ。[END]
    ; End script.
    db $ff

; Describe the barrel spigot.
LookC1Spigot:

C1Sc0_16:
    ; Show message 0.
    db $00, $4c ; Message Text0CMessage4C: ワインの たるの せんだ。[END]
    ; End script.
    db $ff

; Describe the dust-free bottle before its passage trigger is known.
LookC1RackBottle:

C1Sc0_17:
    ; Test object flag.
    db $16, C1RackBottlePressed
    ; Branch if result bit 0 is set.
    db $04
    dw C1RackBottleKnown
    ; Show message 0.
    db $00, $4f ; Message Text0CMessage4F: きれいな ワインの ビンだ。 / 1つだけ ほこりが ついていない。[PAGE] / ・・・・・・なにか ありそうだな。[END]
    ; End script.
    db $ff

; Identify the bottle that opened the secret door.
C1RackBottleKnown:

C1Loc0_03:
    ; Show message 2.
    db $02, $3e ; Message Text10Message3E: かくしドアを あけるための ワインのビンだ。[END]
    ; End script.
    db $ff

; Run the rack effect, reveal the passage, and set the original trigger flag.
HitC1RackBottle:

C1Sc0_18:
    ; Test object flag.
    db $16, C1RackBottlePressed
    ; Branch if result bit 0 is set.
    db $04
    dw C1RackOpenAgain
    ; Finish Case I scene effect.
    db $5a, C1FxIdImpact
    ; Set state and refresh.
    db $36, C1StateRackPassageOpen
    ; Show message 0.
    db $00, $51 ; Message Text0CMessage51: こっ これは・・・![PAGE] / ギーッという にぶいおとと ともに / ビンだなが スライドして つうろが / あらわれた。[PAGE] / ・・・・・・かくしべや...
    ; Set object flag.
    db $17, C1RackBottlePressed
    ; End script.
    db $ff

; Repeat the rack effect and passage reply without setting the flag again.
C1RackOpenAgain:

C1Loc0_04:
    ; Finish Case I scene effect.
    db $5a, C1FxIdImpact
    ; Set state and refresh.
    db $36, C1StateRackPassageOpen
    ; Show message 2.
    db $02, $3f ; Message Text10Message3F: ・・・・・・!![PAGE] / ビンだなが スライドして つうろが / あらわれた。[END]
    ; End script.
    db $ff

; Describe the bare light bulb using the original regional wording.
LookC1BareBulb:

C1Sc0_19:
    ; Show message 0.
    db $00, $57 ; Message Text0CMessage57: はだかでんきゅうだ。 / ひみつの つうろの イメージに / ぴったりだな。[END]
    ; End script.
    db $ff

; Describe the roulette wheel using the original inspection flag and regional text.
LookC1Roulette:

C1Sc0_1A:
    ; Test object flag.
    db $16, C1MemoryRecovered
    ; Branch if result bit 0 is set.
    db $04
    dw C1RouletteAgain
    ; Show message 0.
    db $00, $5f ; Message Text0CMessage5D: ルーレットだ。 / みているだけで こうふんしてくる。[PAGE] / まえに やったことが / あるのだろうか。[END]
    ; End script.
    db $ff

; Show the shorter roulette description.
C1RouletteAgain:

C1Loc0_05:
    ; Show message 0.
    db $00, $66 ; Message Text0CMessage66: ルーレットだ。[END]
    ; End script.
    db $ff

; Inspect the slot machine and retain the gated recovery of one coin.
LookC1SlotMachine:

C1Sc0_1B:
    ; Test object flag.
    db $16, C1InitialCoinsTaken
    ; Branch if result bit 0 is clear.
    db $05
    dw C1SlotPlainView
    ; Test Case I coins against limit.
    db $4a, $00
    ; Branch if result bit 0 is clear.
    db $05
    dw C1SlotPlainView
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 0.
    db $00, $60 ; Message Text0CMessage60: スロットマシンだ。 / こいつで おれの うんを / ためしてみようか・・・。[END]
    ; Show message 2.
    db $02, $5f ; Message Text10Message5F: あっ・・・! / うけざらの ところに コインが / 1まい おちているぞ![END]
    ; Set text name 1.
    db $38, $01
    ; Show message 2.
    db $02 ; Message Text10Message13: コイン [NUM8_WRAM:38C5]まいを とった。[END]

jr_006_468f:
    db $15
    ; Add coins, find list value zero and refresh.
    db $62, $01
    ; End script.
    db $ff

; Show the slot machine description without recovering a coin.
C1SlotPlainView:

C1Loc0_06:
    ; Show message 0.
    db $00, $60 ; Message Text0CMessage60: スロットマシンだ。 / こいつで おれの うんを / ためしてみようか・・・。[END]
    ; End script.
    db $ff

; Show the original reminder that the slot machine needs a coin.
C1SlotNeedsCoin:

C1Sc0_1C:
    ; Show message 2.
    db $02, $64 ; Message Text10Message64: そう そう・・・! / コインを いれるんだったな・・・![END]
    ; End script.
    db $ff

; Open the elevator doors unless their original state is already set.
OpenC1LiftDoor:

C1Sc0_1D:
    ; Test state bit.
    db $2e, C1StateCasinoLiftDoorOpen
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftDoorOpen
    ; Show message 2.
    db $02, $67 ; Message Text10Message67: ウィーン・・・。 / エレべータの ドアが あいた。[END]
    ; Set state and refresh.
    db $33, C1StateCasinoLiftDoorOpen
    ; End script.
    db $ff

; Show the original reply that the door is already open.
C1LiftDoorOpen:

C1Loc0_18:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $01 ; Message Text10Message01: [OBJECT_WRAM:37C5]は あいている。[END]
    ; End script.
    db $ff

; Describe the button for the top floor.
LookC1TopButton:

C1Sc0_1E:
    ; Show message 0.
    db $00, $6c ; Message Text0CMessage6C: いちばん うえのフロアの / ボタンだろう。[END]
    ; End script.
    db $ff

; Handle the top-floor button and preserve the same-floor reply.
RideC1LiftTop:

C1Sc0_1F:
    ; Test current room.
    db $19, C1RoomIdCasinoLift
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftTopFrom0A
    ; Test current room.
    db $19, C1RoomIdHiddenOfficeLift
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftTopFrom3F
    ; Clear state and refresh.
    db $34, C1StateTopFloorLiftDoorOpen
    ; Show message 0.
    db $00, $71 ; Message Text0CMessage71: ボタンを おすと ドアが しまった。[PAGE] / すぐに ドアが ひらいた。 / ・・・・・・おや? / さっきと おなじ ばしょじゃないか![END]
    ; Set state and refresh.
    db $33, C1StateTopFloorLiftDoorOpen
    ; End script.
    db $ff

; Clear the original room 0A door state before the top-floor arrival.
C1LiftTopFrom0A:

C1Loc0_19:
    ; Clear state and refresh.
    db $34, C1StateCasinoLiftDoorOpen

; Enter room 40, show the lift travel reply, and open its original door state.
C1LiftTopArrival:

C1Loc0_1A:
    ; Set current room.
    db $35, C1RoomIdTopFloorLift
    ; Show message 0.
    db $00, $70 ; Message Text0CMessage70: ボタンを おすと エレべータが / うごきはじめた。 / ウィーン・・・・・・。[PAGE] / ・・・・・・ゴウウウン。 / エレべータが とまって ドアが / ひらい...
    ; Set state and refresh.
    db $33, C1StateTopFloorLiftDoorOpen
    ; End script.
    db $ff

; Clear the original room 3F door state before the top-floor arrival.
C1LiftTopFrom3F:

C1Loc0_1B:
    ; Clear state and refresh.
    db $34, C1StateHiddenOfficeLiftDoorOpen
    ; Jump to script.
    db $1c
    dw C1LiftTopArrival

; Describe the unmarked button with its original shared reply.
LookC1BlankButton:

C1Sc0_20:
    ; Show message 0.
    db $00, $6d ; Message Text0CMessage6D: なんの しるしもない ボタンだ。[END]
    ; End script.
    db $ff

; Choose the room $3f lift path and clear the source door state.
C1LiftToRoom3F:

C1Sc0_21:
    ; Test current room.
    db $19, C1RoomIdCasinoLift
    ; Branch if result bit 0 is set.
    db $04
    dw C1Lift0ATo3F
    ; Test current room.
    db $19, C1RoomIdHiddenOfficeLift
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftReopen3F
    ; Clear state and refresh.
    db $34, C1StateTopFloorLiftDoorOpen

; Set room $3f, show the travel reply, and open state $0e.
C1LiftArrive3F:

C1Loc0_1C:
    ; Set current room.
    db $35, C1RoomIdHiddenOfficeLift
    ; Show message 0.
    db $00, $70 ; Message Text0CMessage70: ボタンを おすと エレべータが / うごきはじめた。 / ウィーン・・・・・・。[PAGE] / ・・・・・・ゴウウウン。 / エレべータが とまって ドアが / ひらい...
    ; Set state and refresh.
    db $33, C1StateHiddenOfficeLiftDoorOpen
    ; End script.
    db $ff

; Clear source door state $0c before the room $3f journey.
C1Lift0ATo3F:

C1Loc0_1D:
    ; Clear state and refresh.
    db $34, C1StateCasinoLiftDoorOpen
    ; Jump to script.
    db $1c
    dw C1LiftArrive3F

; Close and reopen state $0e while staying on the current floor.
C1LiftReopen3F:

C1Loc0_1E:
    ; Clear state and refresh.
    db $34, C1StateHiddenOfficeLiftDoorOpen
    ; Show message 0.
    db $00, $71 ; Message Text0CMessage71: ボタンを おすと ドアが しまった。[PAGE] / すぐに ドアが ひらいた。 / ・・・・・・おや? / さっきと おなじ ばしょじゃないか![END]
    ; Set state and refresh.
    db $33, C1StateHiddenOfficeLiftDoorOpen
    ; End script.
    db $ff

; Choose the room $0a lift path and clear the source door state.
C1LiftToRoom0A:

C1Sc0_22:
    ; Test current room.
    db $19, C1RoomIdCasinoLift
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftReopen0A
    ; Test current room.
    db $19, C1RoomIdHiddenOfficeLift
    ; Branch if result bit 0 is set.
    db $04
    dw C1Lift3FTo0A
    ; Clear state and refresh.
    db $34, C1StateTopFloorLiftDoorOpen
    ; Jump to script.
    db $1c
    dw C1LiftArrive0A

; Close and reopen state $0c while staying on the current floor.
C1LiftReopen0A:

C1Loc0_1F:
    ; Clear state and refresh.
    db $34, C1StateCasinoLiftDoorOpen
    ; Show message 0.
    db $00, $71 ; Message Text0CMessage71: ボタンを おすと ドアが しまった。[PAGE] / すぐに ドアが ひらいた。 / ・・・・・・おや? / さっきと おなじ ばしょじゃないか![END]
    ; Set state and refresh.
    db $33, C1StateCasinoLiftDoorOpen
    ; End script.
    db $ff

; Clear source door state $0e before the room $0a journey.
C1Lift3FTo0A:

C1Loc0_20:
    ; Clear state and refresh.
    db $34, C1StateHiddenOfficeLiftDoorOpen

; Set room $0a, show the travel reply, and open state $0c.
C1LiftArrive0A:

C1Loc0_21:
    ; Set current room.
    db $35, C1RoomIdCasinoLift
    ; Show message 0.
    db $00, $70 ; Message Text0CMessage70: ボタンを おすと エレべータが / うごきはじめた。 / ウィーン・・・・・・。[PAGE] / ・・・・・・ゴウウウン。 / エレべータが とまって ドアが / ひらい...
    ; Set state and refresh.
    db $33, C1StateCasinoLiftDoorOpen
    ; End script.
    db $ff

; Describe the lowest-floor button using the original regional wording.
LookC1LowButton:

C1Sc0_23:
    ; Show message 0.
    db $00, $6e ; Message Text0CMessage6E: いちばん したのフロアの / ボタンだろう。[END]
    ; End script.
    db $ff

; Clear the source door state before the original sewer exit path.
RideC1LiftSewer:

C1Sc0_24:
    ; Test current room.
    db $19, C1RoomIdCasinoLift
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftSewerFrom0A
    ; Test current room.
    db $19, C1RoomIdHiddenOfficeLift
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftSewerFrom3F
    ; Clear state and refresh.
    db $34, C1StateTopFloorLiftDoorOpen

; Prepare the original target, flag, and conditional move to room 38 before its sewer reply.
C1LiftSewerMove:

C1Loc0_22:
    ; Show message 0.
    db $00, $70 ; Message Text0CMessage70: ボタンを おすと エレべータが / うごきはじめた。 / ウィーン・・・・・・。[PAGE] / ・・・・・・ゴウウウン。 / エレべータが とまって ドアが / ひらい...
    ; Set first item type and ID.
    db $5c, $05, C1DoorIdLiftSewerExit
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdLiftSewer
    ; Show message 2.
    db $02, $bb ; Message Text0DMessage3B: おや? / げすいどうに ついてしまった。[PAGE] / はっはあああーん・・・。 / どうも ここは カジノの きゃくの / ための にげみちらしい・・・。[END]
    ; End script.
    db $ff

; Clear the original room 0A door state before the sewer exit path.
C1LiftSewerFrom0A:

C1Loc0_23:
    ; Clear state and refresh.
    db $34, C1StateCasinoLiftDoorOpen
    ; Jump to script.
    db $1c
    dw C1LiftSewerMove

; Clear the original room 3F door state before the sewer exit path.
C1LiftSewerFrom3F:

C1Loc0_24:
    ; Clear state and refresh.
    db $34, C1StateHiddenOfficeLiftDoorOpen
    ; Jump to script.
    db $1c
    dw C1LiftSewerMove

; Describe the elevator button using the original regional wording.
LookC1LiftButton:

C1Sc0_25:
    ; Show message 0.
    db $00, $79 ; Message Text0CMessage79: エレべータの ボタンだ。 / なんの しるしも ない。[END]
    ; End script.
    db $ff

; Open the top-floor elevator doors unless their original state is already set.
OpenC1LiftTopDoor:

C1Sc0_26:
    ; Test state bit.
    db $2e, C1StateTopFloorLiftDoorOpen
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftTopDoorOpen
    ; Show message 2.
    db $02, $67 ; Message Text10Message67: ウィーン・・・。 / エレべータの ドアが あいた。[END]
    ; Set state and refresh.
    db $33, C1StateTopFloorLiftDoorOpen
    ; End script.
    db $ff

; Show the original reply that this elevator door is already open.
C1LiftTopDoorOpen:

C1Loc0_25:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $01 ; Message Text10Message01: [OBJECT_WRAM:37C5]は あいている。[END]
    ; End script.
    db $ff

; Describe the unusual chair and retain the original flag-controlled shorter reply.
LookC1OddChair:

C1Sc0_27:
    ; Test object flag.
    db $16, C1MemoryRecovered
    ; Branch if result bit 0 is set.
    db $04
    dw C1ChairBrief
    ; Show message 0.
    db $00, $73 ; Message Text0CMessage73: でんきイスのようにみえるが コードはついていない。[PAGE] / あたまと うでの ささえが あって / ちょうど はいしゃの イスのようだ。[PAGE] / なにをす...
    ; End script.
    db $ff

; Show the shorter unusual-chair description.
C1ChairBrief:

C1Loc0_07:
    ; Show message 2.
    db $02, $4d ; Message Text10Message4D: かわった かたちの イスだ。 / なんだか きみが わるいな・・・。[END]
    ; End script.
    db $ff

; Describe the disconnected telephone receiver using the original regional wording.
LookC1LooseHandset:

C1Sc0_28:
    ; Show message 2.
    db $02, $83 ; Message Text0DMessage03: じゅわきだ。 / コードが きれている![END]
    ; End script.
    db $ff

; Describe the old telephone and its disconnected receiver cord.
LookC1OldPhone:

C1Sc0_29:
    ; Show message 2.
    db $02, $86 ; Message Text0DMessage06: こっとうひんの でんわきだ。 / じゅわきの コードが きれている![END]
    ; End script.
    db $ff

; Show the first plain window inspection reply.
LookC1PlainWin1:

C1Sc0_2A:
    ; Show message 2.
    db $02, $98 ; Message Text0DMessage18: マドからは なにも みえない。[END]
    ; End script.
    db $ff

; Describe the small desk lamp.
LookC1DeskLamp:

C1Sc0_2B:
    ; Show message 2.
    db $02, $9a ; Message Text0DMessage1A: スタンダードな かたちをした / でんきスタンドだ。[END]
    ; End script.
    db $ff

; Describe the typewriter using the original regional wording.
LookC1Typewriter:

C1Sc0_2C:
    ; Show message 2.
    db $02, $9b ; Message Text0DMessage1B: タイプライターだ。 / うちだした ぶんしょは まわりに / みあたらない。[END]
    ; End script.
    db $ff

; Retain the text hold and both original telephone inspection replies.
LookC1Phone1:

C1Sc0_2D:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $9c ; Message Text0DMessage1C: でんわだ。[END]
    ; Show message 2.
    db $02, $70 ; Message Text10Message70: べつに かわったところは ない。[END]
    ; End script.
    db $ff

; Describe the first boxer poster using the original regional name.
LookC1BoxPoster1:

C1Sc0_2E:
    ; Show message 2.
    db $02, $a4 ; Message Text0DMessage24: ボクサーの ポスターだ。 / ・・・「ドッグホウス・リバー」?[END]
    ; End script.
    db $ff

; Describe the second boxer poster using the original regional name.
LookC1BoxPoster2:

C1Sc0_2F:
    ; Show message 2.
    db $02, $a5 ; Message Text0DMessage25: ボクサーの ポスターだ。 / ・・・「パック・マクフォーレン」?[END]
    ; End script.
    db $ff

; Inspect the Ace Harding poster and retain both original flag-selected scene effects.
LookC1AcePoster:

C1Sc0_30:
    ; Test object flag.
    db $16, C1MemoryRecovered
    ; Branch if result bit 0 is set.
    db $04
    dw C1AcePosterFx0B
    ; Test object flag.
    db $16, C1Mirror1Seen
    ; Branch if result bit 0 is set.
    db $04
    dw C1AcePosterFx0A
    ; Show message 2.
    db $02, $a6 ; Message Text0DMessage26: ボクサーの ポスターだ。 / ・・・「エース・ハーディング」?[END]
    ; End script.
    db $ff

; Run effect $0b when the Ace poster's flag $25 branch is selected.
C1AcePosterFx0B:

C1Loc0_08:
    ; Run scene effect.
    db $46, C1FxIdPosterRecognized
    ; End script.
    db $ff

; Run effect $0a when the Ace poster's flag $17 branch is selected.
C1AcePosterFx0A:

C1Loc0_09:
    ; Run scene effect.
    db $46, C1FxIdPosterUncertain
    ; End script.
    db $ff

; Show the second plain window inspection reply.
LookC1PlainWin2:

C1Sc0_31:
    ; Show message 2.
    db $02, $98 ; Message Text0DMessage18: マドからは なにも みえない。[END]
    ; End script.
    db $ff

; Describe the luxury car using the original regional wording.
LookC1LuxuryCar:

C1Sc0_32:
    ; Show message 2.
    db $02, $b4 ; Message Text0DMessage34: くろい メルセデス べンツだ。 / だれも のっていない。[END]
    ; End script.
    db $ff

; Describe the newsstand using the original regional wording.
LookC1Newsstand:

C1Sc0_33:
    ; Show message 2.
    db $02, $c1 ; Message Text0DMessage41: しんぶんうりばだ。 / うすぎたない いたばりの こやだ。[END]
    ; End script.
    db $ff

; Describe the newspaper seller using the original regional wording.
LookC1NewsBoy:

C1Sc0_34:
    ; Show message 2.
    db $02, $c0 ; Message Text0DMessage40: くらくて かおは よくみえないが / どうも わかい おとこらしい。[END]
    ; End script.
    db $ff

; Show the newspaper price or warning according to the original flag.
TalkC1NewsBoy:

C1Sc0_35:
    ; Test object flag.
    db $16, C1NewspaperPaid
    ; Branch if result bit 0 is set.
    db $04
    dw C1NewsBoyWarn
    ; Show message 2.
    db $02, $c3 ; Message Text0DMessage43: 「いちぶ 25セントだよ! /  したがわの いちばん みぎはしから とってくださいね。」[END]
    ; End script.
    db $ff

; Show the newspaper seller warning the player to leave.
C1NewsBoyWarn:

C1Loc0_0A:
    ; Show message 2.
    db $02, $c7 ; Message Text0DMessage47: しんぶんうりは こえを ひそめて / おれに いった。[PAGE] / 「まだ ウロウロ しているのかい。 /  さっさと すがたを かくしたほうが いいと おもうよ!」...
    ; End script.
    db $ff

; Show the original failed-attack reply without changing player state.
HitC1NewsBoy:

C1Sc0_36:
    ; Show message 2.
    db $02, $c9 ; Message Text0DMessage49: スカッ![PAGE] / あたらない! / つかれていて ちからが はいらない![END]
    ; End script.
    db $ff

; Describe the gun shop window unless its original broken flag is set.
LookC1GunShopWin:

C1Sc0_37:
    ; Test object flag.
    db $16, C1GunShopWinBroken
    ; Branch if result bit 0 is set.
    db $04
    dw C1BrokenViewReply
    ; Show message 2.
    db $02, $cc ; Message Text0DMessage4C: おおきな マドだ。 / もじが かいてある。[PAGE] / ピストルと だんがんを / あつかっているらしい。[END]
    ; End script.
    db $ff

; Describe the street lamp using the original regional wording.
LookC1StreetLamp:

C1Sc0_38:
    ; Show message 2.
    db $02, $d7 ; Message Text0DMessage57: しゃれた かたちの がいとうだ。[END]
    ; End script.
    db $ff

; Run the original mugger shooting and death sequence.
C1MuggerShoots:

C1Sc0_39:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Show message 1.
    db $01, $f0 ; Message Text0FMessage70: おとこは とつぜん トリガーを / ひいた![PAGE] / ちくしょう!!! / やられてしまった・・・。[END]
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text10Message62: あなたは トイレの なかで / めざめてから てさぐりで / ここまできた・・・。[PAGE] / ・・・だが あなたは えいえんに / つちの したで ねむるハメに /...
    ; Test object flag.
    db $16, C1MuggerHit3
    ; Branch if result bit 0 is set.
    db $04
    dw C1MuggerDeathMark
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Set the original death flag after the third encounter and end the action.
C1MuggerDeathMark:

C1Loc0_26:
    ; Set object flag.
    db $17, C1MuggerFatalEncounter
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Dispatch the original punch encounters or shooting outcome by their flags.
HitC1Mugger:

C1Sc0_3A:
    ; Test object flag.
    db $16, C1MuggerHit3
    ; Branch if result bit 0 is set.
    db $04
    dw C1MuggerPunchDeath
    ; Test object flag.
    db $16, C1MuggerHit2
    ; Branch if result bit 0 is set.
    db $04
    dw C1MuggerPunch3
    ; Test object flag.
    db $16, C1MuggerHit1
    ; Branch if result bit 0 is set.
    db $04
    dw C1MuggerPunch2
    ; Finish Case I scene effect.
    db $5a, C1FxIdImpact
    ; Show message 1.
    db $01, $ef ; Message Text0FMessage6F: おれは おとこの めに いっぱつ / みまってやった![PAGE] / きまった!![PAGE] / ・・・おとこは フラフラと / たちあがった。[PAGE] / 「お...
    ; Set first item type and ID.
    db $5c, $05, C1DoorIdJoeStreetPoliceFront
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdJoeStreet
    ; Show message 2.
    db $02, $b9 ; Message Text0DMessage39: バーの まえの とおりだ。[END]
    ; Set object flag.
    db $17, C1MuggerHit1
    ; End script.
    db $ff

; Run the fatal shooting after the original punch encounters are exhausted.
C1MuggerPunchDeath:

C1Loc0_0B:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Show message 1.
    db $01, $f7 ; Message Text0FMessage77: おれの こぶしが くうを きった。[PAGE] / おとこは いままでの うらみを / こめて ピストルを うった![PAGE] / ゆっ ゆだんした・・・。[PAGE]...
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text10Message62: あなたは トイレの なかで / めざめてから てさぐりで / ここまできた・・・。[PAGE] / ・・・だが あなたは えいえんに / つちの したで ねむるハメに /...
    ; Set object flag.
    db $17, C1MuggerFatalEncounter
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Run the third successful punch and conditional move to the newsstand street.
C1MuggerPunch3:

C1Loc0_0C:
    ; Finish Case I scene effect.
    db $5a, C1FxIdImpact
    ; Show message 1.
    db $01, $f5 ; Message Text0FMessage75: てごたえが あった! / おれは おとこの はなに つうれつなひだりフックを みまった。[PAGE] / おとこは なにもいわずに たちあがりヨタヨタと にげていった。 ...
    ; Set first item type and ID.
    db $5c, $05, C1DoorIdJoeStreetNewsstand
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdNewsstandStreet
    ; Show message 2.
    db $02, $c2 ; Message Text0DMessage42: しんぶんうりばの まえの とおりだ。[END]
    ; Set object flag.
    db $17, C1MuggerHit3
    ; End script.
    db $ff

; Run the second successful punch and conditional move to Peoria Street.
C1MuggerPunch2:

C1Loc0_0D:
    ; Finish Case I scene effect.
    db $5a, C1FxIdImpact
    ; Show message 1.
    db $01, $f2 ; Message Text0FMessage72: きまった![PAGE] / おれは さっきと はんたいがわの / めに パンチを くらわせた。[PAGE] / 「おぼえてろ!」[PAGE] / おとこは ヨロヨロと ち...
    ; Set first item type and ID.
    db $5c, $05, C1DoorIdGunShopPeoria
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdPeoriaBlueCabStop
    ; Set object flag.
    db $17, C1MuggerHit2
    ; Test object flag.
    db $16, C1PeoriaStopKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MuggerPeoriaCab
    ; Show message 2.
    db $02, $d0 ; Message Text0DMessage50: ぺオリアどおりだ。[END]
    ; End script.
    db $ff

; Show the blue cab at Peoria, append its original list value, and mark it shown.
C1MuggerPeoriaCab:

C1Loc0_29:
    ; Set text name 0.
    db $1e, $b1
    ; Show message 2.
    db $02, $0b ; Message Text10Message0B: ぺオリアどおりだ。 / [OBJECT_WRAM:37C5]が とまっている。[END]
    ; Add quick-list value.
    db $42, $a3
    ; Set object flag.
    db $17, C1PeoriaStopKnown
    ; End script.
    db $ff

; Run the mugger knockout reply, clear cash, and show the original recovery text.
C1MuggerRobReply:

C1Sc0_3B:
    ; Finish Case I scene effect.
    db $5a, C1FxIdImpact
    ; Show message 1.
    db $01, $e4 ; Message Text0FMessage64: 「バカに してるのか!」[PAGE] / おとこは いきなり おれに / なぐりかかってきた。[PAGE] / おとこの ひだりパンチが おれの / がんめんへ もろに ...
    ; Clear Case I cash and draw room $16.
    db $63
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $e5 ; Message Text0FMessage65: いつつつっ・・・。[PAGE] / どのくらいのじかん きを / うしなって いたのだろうか・・・。[PAGE] / めを あけようとして みぎめに / いたみを かんじ...
    ; Show message 1.
    db $01, $e7 ; Message Text0FMessage67: ない!!! / コインが ぜんぶ![PAGE] / ・・・クソッ!! / なんてこった![END]
    ; End script.
    db $ff

; Run the failed punch, clear cash, and show the original recovery text.
C1MuggerRobFight:

C1Sc0_3C:
    ; Finish Case I scene effect.
    db $5a, C1FxIdImpact
    ; Show message 1.
    db $01, $e2 ; Message Text0FMessage62: おれの みぎパンチは おとこの / ひだりパンチに わずかな おくれを / とってしまった![PAGE] / みも こころも つかれきっている / おれには この パンチ...
    ; Clear Case I cash and draw room $16.
    db $63
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $e5 ; Message Text0FMessage65: いつつつっ・・・。[PAGE] / どのくらいのじかん きを / うしなって いたのだろうか・・・。[PAGE] / めを あけようとして みぎめに / いたみを かんじ...
    ; Show message 1.
    db $01, $e7 ; Message Text0FMessage67: ない!!! / コインが ぜんぶ![PAGE] / ・・・クソッ!! / なんてこった![END]
    ; End script.
    db $ff

; Describe the fire escape that cannot be reached from the street.
LookC1HighEscape:

C1Sc0_3D:
    ; Show message 2.
    db $02, $d3 ; Message Text0DMessage53: ひじょうかいだんだ。 / たかすぎて あがるのは むりだ。[END]
    ; End script.
    db $ff

; Describe the rusty fire escape.
LookC1RustEscape:

C1Sc0_3E:
    ; Show message 2.
    db $02, $ad ; Message Text0DMessage2D: かなり さびついているようだ。[END]
    ; End script.
    db $ff

; Describe the ladder ending above the alley.
LookC1EscapeDrop:

C1Sc0_3F:
    ; Show message 2.
    db $02, $af ; Message Text0DMessage2F: かいだんが とちゅうで きれている。とびおりると ろじに でるようだ。[END]
    ; End script.
    db $ff

; Run the original shooting, wait, and death sequence for the armed woman.
C1LadyShoots:

C1Sc0_40:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Finish Case I scene effect.
    db $5a, C1FxIdArmedWomanFires
    ; Show message 2.
    db $02, $e6 ; Message Text0DMessage66: ・・・・・・! / いきなり おんなは バッグから / ピストルを とりだして うった。[END]
    ; Wait sixty ticks.
    db $68
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text10Message62: あなたは トイレの なかで / めざめてから てさぐりで / ここまできた・・・。[PAGE] / ・・・だが あなたは えいえんに / つちの したで ねむるハメに /...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Run the punch and original flag update, then conditionally move to the fallen woman scene.
HitC1ArmedLady:

C1Sc0_41:
    ; Finish Case I scene effect.
    db $5a, C1FxIdImpact
    ; Show message 2.
    db $02, $e7 ; Message Text0DMessage67: つよい パンチを おみまいした。 / おんなは バッグを おとして / たおれた。[END]
    ; Set object flag.
    db $17, C1ArmedLadyDown
    ; Set first item type and ID.
    db $5c, $05, C1DoorIdJoeStreetPoliceFront
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdFallenWomanStreet
    ; Show message 2.
    db $02, $e8 ; Message Text0DMessage68: おんなが ほどうに たおれている。[END]
    ; End script.
    db $ff

; Describe the unconscious woman using the original regional wording.
LookC1FallenLady:

C1Sc0_42:
    ; Show message 2.
    db $02, $e9 ; Message Text0DMessage69: きを うしなっているらしい。[PAGE] / ・・・こうしてみると なかなか / グラマーな おんなだ。[END]
    ; End script.
    db $ff

; Show the shared original reply that this action cannot be done here.
C1CantDoHere:

C1Sc0_43:
    ; Show message 2.
    db $02, $37 ; Message Text10Message37: なにを しているんだ おれは?![END]
    ; End script.
    db $ff

; Describe the street informant using the original regional wording.
LookC1Bum:

C1Sc0_44:
    ; Show message 2.
    db $02, $dc ; Message Text0DMessage5C: なにか とりつかれたような かおだ。うつろな めと めのしたの くまと / ねじれた くち・・・。[PAGE] / どうみても ふつうじゃない。 / あまり かかわらない...
    ; End script.
    db $ff

; Show the original demand for fifty cents.
TalkC1Bum:

C1Sc0_45:
    ; Show message 2.
    db $02, $e0 ; Message Text0DMessage60: 「へっ へっ・・・。 /  50セントなんて やすいよ。 /  いのちの ねだんにしては・・・。[PAGE] /  このはなし きいて そんはないよ。 さっさと 50セン...
    ; End script.
    db $ff

; Run the original punch effect and police-siren reply.
HitC1Bum:

C1Sc0_46:
    ; Run scene effect.
    db $46, C1FxIdImpact
    ; Show message 2.
    db $02, $df ; Message Text0DMessage5F: つよいパンチを いっぱつ / おみまいした。[PAGE] / ・・・・・・? / どうも きいていないらしい。 / よっぱらいには きかないのか?[PAGE] / パトカ...
    ; End script.
    db $ff

; Describe the gas pedal.
LookC1GasPedal:

C1Sc0_47:
    ; Show message 1.
    db $01, $01 ; Message Text0EMessage01: アクセルだ。 / おもいっきり ふみこんだら / きぶんが いいだろうなあ・・・。[END]
    ; End script.
    db $ff

; Describe the brake pedal.
LookC1Brake:

C1Sc0_48:
    ; Show message 2.
    db $02, $51 ; Message Text10Message51: ブレーキだ。[END]
    ; End script.
    db $ff

; Describe the clutch.
LookC1Clutch:

C1Sc0_49:
    ; Show message 2.
    db $02, $5c ; Message Text10Message5C: クラッチだ。[END]
    ; End script.
    db $ff

; Describe the steering wheel and its leather cover.
LookC1Steering:

C1Sc0_4A:
    ; Show message 1.
    db $01, $04 ; Message Text0EMessage04: ハンドルだ。 / たかそうな かわの カバーが / つけてある。[END]
    ; End script.
    db $ff

; Describe the ignition using the original regional wording.
LookC1Ignition:

C1Sc0_4B:
    ; Show message 1.
    db $01, $05 ; Message Text0EMessage05: キーを さしこむ ところだ。 / キーは ついていない。[END]
    ; End script.
    db $ff

; Show the second luxury car description without merging the original entries.
LookC1LuxuryCar2:

C1Sc0_4C:
    ; Show message 2.
    db $02, $f3 ; Message Text0DMessage73: くろい メルセデス べンツだ。[END]
    ; End script.
    db $ff

; Describe the hood release using the original regional wording.
LookC1HoodRelease:

C1Sc0_4D:
    ; Show message 1.
    db $01, $08 ; Message Text0EMessage08: ボンネットを あけるための / ボタンだろうか・・・?[END]
    ; End script.
    db $ff

; Run the original hood explosion and death sequence.
C1HoodBombDeath:

C1Sc0_4E:
    ; Finish Case I scene effect.
    db $5a, C1FxIdExplosion
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $0d ; Message Text0EMessage0D: ボンネットを あけた とたんに / ばくはつした。[END]
    ; Show message 1.
    db $01, $0e ; Message Text0EMessage0E: ボンネットの なかに ばくだんが / しかけてあったらしい![END]
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text10Message62: あなたは トイレの なかで / めざめてから てさぐりで / ここまできた・・・。[PAGE] / ・・・だが あなたは えいえんに / つちの したで ねむるハメに /...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Inspect the captive woman and retain both original description gates.
LookC1Sternwood:

C1Sc0_4F:
    ; Test object flag.
    db $16, C1MemoTimetableRead
    ; Branch if result bit 0 is set.
    db $04
    dw C1SternwoodBrief
    ; Test object flag.
    db $16, C1GagRemoved
    ; Branch if result bit 0 is set.
    db $04
    dw C1SternwoodView
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $f4 ; Message Text0DMessage74: おっ おんなだ・・・! / なぜ こんなところに・・・?[PAGE] / まさか しんでいるのか?[PAGE] / ・・・どうやら かすかに いしきは / あるようだ。[...
    ; Show message 2.
    db $02, $21 ; Message Text10Message21: かなりの デブだ。 / 100キロは ありそうだな。[PAGE] / ・・・まったく みおぼえのない / じょせいだ。[END]
    ; Set object flag.
    db $17, C1MrsSternwoodSeen
    ; Set object flag.
    db $17, C1SternwoodViewShown
    ; End script.
    db $ff

; Show the short regional reply about the woman.
C1SternwoodBrief:

C1Loc0_0E:
    ; Show message 2.
    db $02, $fc ; Message Text0DMessage7C: スタンウッドふじんだ。 / ・・・かわいそうな ひとだな。[END]
    ; End script.
    db $ff

; Show the alternate description and set its original inspection flag.
C1SternwoodView:

C1Loc0_0F:
    ; Show message 2.
    db $02, $21 ; Message Text10Message21: かなりの デブだ。 / 100キロは ありそうだな。[PAGE] / ・・・まったく みおぼえのない / じょせいだ。[END]
    ; Set object flag.
    db $17, C1SternwoodViewShown
    ; End script.
    db $ff

; Show the original inability-to-talk reply unless the refusal flag is set.
TalkC1Sternwood:

C1Sc0_50:
    ; Test object flag.
    db $16, C1MrsPentothalUsed
    ; Branch if result bit 0 is set.
    db $04
    dw C1WomanTalkRefuse
    ; Show message 2.
    db $02, $fb ; Message Text0DMessage7B: おんなは すいじゃくが ひどく / はなしをするのは むりらしい。[PAGE] / ・・・なんとか はなしを ききだす / ほうほうは ないだろうか・・・?[END]
    ; End script.
    db $ff

; Show the original action refusal without changing the woman state.
C1WomanTalkRefuse:

C1Loc0_10:
    ; Show message 0.
    db $00, $14 ; Message Text0CMessage14: ・・・・・・むりか。[END]
    ; End script.
    db $ff

; Show the original ineffective-punch reply without changing state.
HitC1Sternwood:

C1Sc0_51:
    ; Show message 2.
    db $02, $ff ; Message Text0DMessage7E: つよい パンチを いれると おんなのしぼうだらけの からだは / なみうった。[PAGE] / だが なんの はんのうも ない。[PAGE] / ぶあつい ぜいにくが /...
    ; End script.
    db $ff

; Describe the gun shop clerk using the original regional wording.
LookC1GunClerk:

C1Sc0_52:
    ; Show message 1.
    db $01, $11 ; Message Text0EMessage11: はらの でかい おとこだ。 / みるからに ひとの よさそうな / かんじだ。[END]
    ; End script.
    db $ff

; Show the clerk greeting and retain the regional price details.
TalkC1GunClerk:

C1Sc0_53:
    ; Show message 1.
    db $01, $1e ; Message Text0EMessage1E: みせのおとこは げんきよく いった。[PAGE] / 「いらっしゃい! /  なにを おもとめですか?[PAGE] /  ピストルは 20ドル /  たまは 25セント!...
    ; End script.
    db $ff

; Run the original clerk shooting and death sequence.
C1GunClerkShoots:

C1Sc0_54:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Show message 1.
    db $01, $1d ; Message Text0EMessage1D: なぐろうとした とたんに / みせのおとこが ピストルを うった。[END]
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text10Message62: あなたは トイレの なかで / めざめてから てさぐりで / ここまできた・・・。[PAGE] / ・・・だが あなたは えいえんに / つちの したで ねむるハメに /...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Describe the original twenty-dollar special sign.
LookC1GunPrice:

C1Sc0_55:
    ; Show message 1.
    db $01, $14 ; Message Text0EMessage14: 「トゥナイト・スぺシャル $20」 / と かいてある。 / ピストルの ねふだらしい。[END]
    ; End script.
    db $ff

; Show the first cab driver inspection reply.
LookC1CabDriver1:

C1Sc0_56:
    ; Show message 1.
    db $01, $3d ; Message Text0EMessage3D: うんてんしゅだ。 / どうしたことか とても / イライラしている。[END]
    ; End script.
    db $ff

; Retain the first cab debt gate, destination choice, travel, and fare replies.
TalkC1Cab1:

C1Sc0_57:
    ; Test object flag.
    db $16, C1BlueCabDebt
    ; Branch if result bit 0 is set.
    db $04
    dw C1Cab1DebtReply
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $3a ; Message Text0EMessage3A: うんてんしゅが ぶっきらぼうに / いった。[PAGE] / 「どこへ いくんだい?」[END]
    ; Choose room from list.
    db $41
    ; Branch if result bit 0 is set.
    db $04
    dw C1Cab1PickEnd
    ; Use room from argument 3.
    db $43
    ; Branch if result bit 0 is set.
    db $04
    dw C1Cab1HereReply
    ; Set object flag.
    db $17, C1CabFarePending
    ; Show message 0.
    db $00, $64 ; Message Text0CMessage64: タクシーは はっしんした。 / ・・・・・・。[END]
    ; Play pick effect.
    db $6a
    ; Show message 1.
    db $01, $3b ; Message Text0EMessage3B: キキーッ![PAGE] / しばらくすると うんてんしゅは / いきなり タクシーをとめて いった。[PAGE] / 「おきゃくさん つきましたぜ。 /  ・・・75セン...
    ; Restore text lists and resume text.
    db $44

; End the first cab destination selection branch.
C1Cab1PickEnd:

C1Loc0_2A:
    ; End script.
    db $ff

; Show the first cab same-location reply and restore text lists.
C1Cab1HereReply:

C1Loc0_2B:
    ; Show message 2.
    db $02, $c8 ; Message Text0DMessage48: うんてんしゅは めんどうくさそうに / いった。[PAGE] / 「バカに してるんですか! /  それは ここの アドレスですぜ!」[END]
    ; Restore text lists and resume text.
    db $44
    ; End script.
    db $ff

; Show the first cab driver demand for repayment.
C1Cab1DebtReply:

C1Loc0_11:
    ; Show message 2.
    db $02, $6e ; Message Text10Message6E: くちもとを ヒクヒクさせながら / うんてんしゅは いった。[PAGE] / 「おきゃくさん! /  このまえ かした かねを けえして くれねえと こまるぜ!」[END]
    ; End script.
    db $ff

; Show the shared original reply about striking the bulletproof glass.
HitC1CabGlass:

C1Sc0_58:
    ; Show message 2.
    db $02, $34 ; Message Text10Message34: うんてんしゅを たたこうとしたが / うんてんせきとの さかいにある / ぼうだんガラスを たたいてしまった![END]
    ; End script.
    db $ff

; Describe the cab fare meter.
LookC1FareMeter:

C1Sc0_59:
    ; Show message 2.
    db $02, $33 ; Message Text10Message33: りょうきんメーターだ。 / ここに りょうきんが ひょうじ / されるんだな。[END]
    ; End script.
    db $ff

; Describe the first fare slot.
LookC1FareSlot1:

C1Sc0_5A:
    ; Show message 1.
    db $01, $3e ; Message Text0EMessage3E: りょうきんいれだ。 / ここに おかねを いれれば / よいのだろう。[END]
    ; End script.
    db $ff

; Show the medicine-immunity reply used by the original action table.
C1MedicineImmuneReply:

C1Sc0_5B:
    ; Show message 2.
    db $02, $0d ; Message Text10Message0D: ・・・・なにも おこらない・・・? / どうやら かのじょには めんえきが / あって クスリが きかないらしい。[END]
    ; End script.
    db $ff

; Show the second cab driver inspection reply.
LookC1CabDriver2:

C1Sc0_5C:
    ; Show message 1.
    db $01, $43 ; Message Text0EMessage43: うんてんしゅだ。 / えらく あいそうが いい。[END]
    ; End script.
    db $ff

; Retain the second cab debt gate, destination choice, travel, and fare replies.
TalkC1Cab2:

C1Sc0_5D:
    ; Test object flag.
    db $16, C1YellowCabDebt
    ; Branch if result bit 0 is set.
    db $04
    dw C1Cab2DebtReply
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $46 ; Message Text0EMessage46: うんてんしゅが えがおで いった。[PAGE] / 「おきゃくさん /  どこまで いきますか?」[END]
    ; Choose room from list.
    db $41
    ; Branch if result bit 0 is set.
    db $04
    dw C1Cab2PickEnd
    ; Use room from argument 3.
    db $43
    ; Branch if result bit 0 is set.
    db $04
    dw C1Cab2HereReply
    ; Set object flag.
    db $17, C1CabFarePending
    ; Show message 0.
    db $00, $67 ; Message Text0CMessage67: タクシーは はっしんした。 / うんてんしゅは ニコニコしながら / ハンドルを にぎっている。[END]
    ; Play pick effect.
    db $6a
    ; Show message 1.
    db $01, $45 ; Message Text0EMessage45: 「ここですね。」[PAGE] / うんてんしゅは そういいながら / タクシーを とめた。 / そして いった。[PAGE] / 「75セント いただきます。 /  みぎ...
    ; Restore text lists and resume text.
    db $44

; End the second cab destination selection branch.
C1Cab2PickEnd:

C1Loc0_2C:
    ; End script.
    db $ff

; Show the second cab same-location reply and restore text lists.
C1Cab2HereReply:

C1Loc0_2D:
    ; Show message 2.
    db $02, $d2 ; Message Text0DMessage52: うんてんしゅは わらいながら / いった。[PAGE] / 「おきゃくさん! /  ねぼけちゃいけませんよ! /  それは ここの アドレスですよ!」[END]
    ; Restore text lists and resume text.
    db $44
    ; End script.
    db $ff

; Show the second cab driver demand for repayment using the regional wording.
C1Cab2DebtReply:

C1Loc0_12:
    ; Show message 2.
    db $02, $6f ; Message Text10Message6F: うんてんしゅは ニコニコして / いった。[PAGE] / 「このまえの おかねを かえして /  くださいね。」[END]
    ; End script.
    db $ff

; Describe the second fare slot without merging the original entries.
LookC1FareSlot2:

C1Sc0_5E:
    ; Show message 1.
    db $01, $3e ; Message Text0EMessage3E: りょうきんいれだ。 / ここに おかねを いれれば / よいのだろう。[END]
    ; End script.
    db $ff

; Describe the building using the original regional wording.
LookC1Building:

C1Sc0_5F:
    ; Show message 1.
    db $01, $48 ; Message Text0EMessage48: きれいな ビルだ。 / たてられてから なんねんも / たっていないのだろう。[END]
    ; End script.
    db $ff

; Describe the outer slot and retain its original extra card hint gate.
LookC1OuterSlot:

C1Sc0_60:
    ; Test object flag.
    db $16, C1AccessCardUsed
    ; Branch if result bit 0 is set.
    db $04
    dw C1OuterSlotBrief
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $4c ; Message Text0EMessage4C: みぞのようなものが ある。[END]
    ; Show message 2.
    db $02, $40 ; Message Text10Message40: おそらく カードか なにかを / さしこむのだろう・・・。[END]
    ; End script.
    db $ff

; Show the shorter outer slot description.
C1OuterSlotBrief:

C1Loc0_13:
    ; Show message 1.
    db $01, $4c ; Message Text0EMessage4C: みぞのようなものが ある。[END]
    ; End script.
    db $ff

; Describe the inner slot by comparison with the outer slot.
LookC1InnerSlot:

C1Sc0_61:
    ; Show message 1.
    db $01, $50 ; Message Text0EMessage50: ロビーに あったものと おなじだ。 / ・・・と いうことは さっきと / おなじやりかたで すれば いいのか。[END]
    ; End script.
    db $ff

; Describe the chandelier using the original regional wording.
LookC1Chandelier:

C1Sc0_62:
    ; Show message 1.
    db $01, $54 ; Message Text0EMessage54: このへやに いやみなほど にあう / シャンデリアだ。[END]
    ; End script.
    db $ff

; Describe the comfortable chair using the original regional wording.
LookC1FineChair:

C1Sc0_63:
    ; Show message 1.
    db $01, $56 ; Message Text0EMessage56: ひとりがけの イスだ。 / すわりごこちが よさそうだ。[END]
    ; End script.
    db $ff

; Describe the leather-covered sofa.
LookC1LeatherSofa:

C1Sc0_64:
    ; Show message 1.
    db $01, $55 ; Message Text0EMessage55: ながイスだ。 / カバーは かわで できている。[END]
    ; End script.
    db $ff

; Describe the decorative fireplace using the original regional explanation.
LookC1Fireplace:

C1Sc0_65:
    ; Show message 1.
    db $01, $58 ; Message Text0EMessage58: だんろだ。 / えんとつが ないところを みると / たんなる かざりだろう。[END]
    ; End script.
    db $ff

; Describe the bookcase filled with thick books.
LookC1Bookcase:

C1Sc0_66:
    ; Show message 1.
    db $01, $5d ; Message Text0EMessage5D: ほんだなだ。 / ひゃっかじてんなどの ぶあつい / ほんが いっぱい はいっている。[END]
    ; End script.
    db $ff

; Describe the artwork using the original regional wording.
LookC1RoomArt:

C1Sc0_67:
    ; Show message 1.
    db $01, $57 ; Message Text0EMessage57: きれいな いろづかいの えだ。 / とても モダンなかんじが する。[END]
    ; End script.
    db $ff

; Describe the small low table.
LookC1LowTable:

C1Sc0_68:
    ; Show message 1.
    db $01, $59 ; Message Text0EMessage59: ひくい ちいさな テーブルだ。 / ソファーなどと よくいっしょに / おかれているものだ。[END]
    ; End script.
    db $ff

; Describe the round mirror unless its original broken flag is set.
LookC1RoundMirror:

C1Sc0_69:
    ; Test object flag.
    db $16, C1RoundMirrorBroken
    ; Branch if result bit 0 is set.
    db $04
    dw C1BrokenViewReply
    ; Show message 1.
    db $01, $5b ; Message Text0EMessage5B: まるくて おおきな カガミだ。 / きれいに みがかれている。[END]
    ; End script.
    db $ff

; Describe the cot-like bed using the original regional wording.
LookC1CotBed:

C1Sc0_6A:
    ; Show message 1.
    db $01, $6b ; Message Text0EMessage6B: マットのかたそうな べッドだ。 / きちんと べッドメイキングが / してある。[END]
    ; End script.
    db $ff

; Show the first window reply using the original regional wording.
LookC1GrimyWin1:

C1Sc0_6B:
    ; Show message 1.
    db $01, $91 ; Message Text0FMessage11: マドだ。 / ここからは なにも みえない。[END]
    ; End script.
    db $ff

; Describe the bungalow.
LookC1Bungalow:

C1Sc0_6C:
    ; Show message 2.
    db $02, $2c ; Message Text10Message2C: ひらやの たてものだ。[END]
    ; End script.
    db $ff

; Describe the other building using the original regional wording.
LookC1PlainBuilding:

C1Sc0_6D:
    ; Show message 1.
    db $01, $74 ; Message Text0EMessage74: ビルだ。 / たかさは そんなに ない。[END]
    ; End script.
    db $ff

; Describe the eye chart using the original regional wording.
LookC1EyeChart:

C1Sc0_6E:
    ; Show message 1.
    db $01, $7d ; Message Text0EMessage7D: けんがんひょうだ。 / べつに めは わるくないようだ。[END]
    ; End script.
    db $ff

; Describe the medicine cabinet using the original regional wording.
LookC1DrugCabinet:

C1Sc0_6F:
    ; Show message 1.
    db $01, $7b ; Message Text0EMessage7B: もくせいの クスリだなだ。 / かなり ふるいものらしい。[END]
    ; End script.
    db $ff

; Show the second window reply without merging the original entries.
LookC1GrimyWin2:

C1Sc0_70:
    ; Show message 1.
    db $01, $91 ; Message Text0FMessage11: マドだ。 / ここからは なにも みえない。[END]
    ; End script.
    db $ff

; Inspect the dead man and retain the original alternate-reply gate.
LookC1DeadMan:

C1Sc0_71:
    ; Test object flag.
    db $16, C1BumHintHeard
    ; Branch if result bit 0 is set.
    db $04
    dw C1DeadManAltView
    ; Show message 1.
    db $01, $8e ; Message Text0FMessage0E: しんぞうを うちぬいている。 / そくしだな。[END]
    ; End script.
    db $ff

; Show the alternate dead-man reply using the original regional wording.
C1DeadManAltView:

C1Loc0_14:
    ; Show message 1.
    db $01, $94 ; Message Text0FMessage14: しんぞうを うちぬいている。 / おそらく そくしだろう。[PAGE] / このおとこが よっぱらいの / いっていた ころしやか・・・。[END]
    ; End script.
    db $ff

; End the view action without showing text.
C1EmptyView:

C1Sc0_72:
    ; End script.
    db $ff

; Describe the mansion entrance and its door knocker.
LookC1MansionDoor:

C1Sc0_73:
    ; Show message 1.
    db $01, $a0 ; Message Text0FMessage20: べっそうの げんかんだ。 / ドアには おおきくて りっぱな / ノッカーが ついている。[END]
    ; End script.
    db $ff

; Use the knocker, retain the conditional move and two waits, then show the butler reply.
KnockC1Mansion:

C1Sc0_74:
    ; Show message 1.
    db $01, $a3 ; Message Text0FMessage23: おれは ノッカーを にぎりしめた。 / コン! コン![PAGE] / ・・・・・・。[END]
    ; Set first item type and ID.
    db $5c, $05, C1DoorIdMansionFrontDoor
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Set state bit.
    db $2f, C1StateMansionButlerPresent
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdMansionVestibule
    ; Wait sixty ticks.
    db $68
    ; Wait sixty ticks.
    db $68
    ; Show message 1.
    db $01, $a4 ; Message Text0FMessage24: ドアが あいた。[PAGE] / ・・・しつじらしき ひとが でてきてジロッと にらんで こういった。[PAGE] / 「やくそくを していない /  おきゃくさまは と...
    ; End script.
    db $ff

; Describe the butler using the original regional wording.
LookC1Butler:

C1Sc0_75:
    ; Show message 1.
    db $01, $a5 ; Message Text0FMessage25: こわそうな かおの しつじだが / ほそくて わんりょくは なさそうだ。きっと おれなら たおせる![END]
    ; End script.
    db $ff

; Show the butler refusal and retain the original conditional move and door-slam reply.
TalkC1Butler:

C1Sc0_76:
    ; Show message 2.
    db $02, $35 ; Message Text10Message35: しつじは めいわくそうに いった。[PAGE] / 「おはなしする ことは なにも /  ございません。 /  どうぞ おひきとり ください。」[END]
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

; Run the punch effect, set the original flag, and clear the original visible state.
HitC1Butler:

C1Sc0_77:
    ; Finish Case I scene effect.
    db $5a, C1FxIdImpact
    ; Show message 1.
    db $01, $ad ; Message Text0FMessage2D: おれは しつじを なぐった。 / しつじは そのばに たおれた。[PAGE] / これで もう おれの じゃまは / できないだろう。[END]
    ; Set object flag.
    db $17, C1ButlerDown
    ; Clear state and refresh.
    db $34, C1StateMansionButlerPresent
    ; End script.
    db $ff

; Describe the large bright chandelier.
LookC1BigChandelier:

C1Sc0_78:
    ; Show message 1.
    db $01, $a8 ; Message Text0FMessage28: おおきな シャンデリアだ。 / ながいじかん みていると まぶしくてめが くらみそうだ。[END]
    ; End script.
    db $ff

; Describe the table using the original regional wording.
LookC1FineTable:

C1Sc0_79:
    ; Show message 1.
    db $01, $b7 ; Message Text0FMessage37: しゃれた テーブルだ。 / よく キッチンなどに おいてある / ごく ありふれたものだ。[END]
    ; End script.
    db $ff

; Describe the lamp using the original regional wording.
LookC1RoomLamp:

C1Sc0_7A:
    ; Show message 1.
    db $01, $be ; Message Text0FMessage3E: でんきスタンドだ。 / べつに こった そうしょくは ない。[END]
    ; End script.
    db $ff

; Describe Mr. Sternwood bed using the original regional wording.
LookC1SternBed:

C1Sc0_7B:
    ; Show message 1.
    db $01, $bd ; Message Text0FMessage3D: ねごこちの よさそうな べッドだ。[END]
    ; End script.
    db $ff

; Inspect Mr. Sternwood and retain the original shorter-reply gate.
LookC1MrSternwood:

C1Sc0_7C:
    ; Test object flag.
    db $16, $72
    ; Branch if result bit 0 is set.
    db $04
    dw C1MrSternBrief
    ; Show message 1.
    db $01, $c1 ; Message Text0FMessage41: おとこだ。 / スヤスヤと よくねむっている。[PAGE] / おこさないで しゃべらせることは / できないだろうか。[END]
    ; End script.
    db $ff

; Show the shorter sleeping-man description.
C1MrSternBrief:

C1Loc0_15:
    ; Show message 2.
    db $02, $47 ; Message Text10Message47: おとこだ。 / よく ねむっている。[END]
    ; End script.
    db $ff

; Retain the original sleeping-person talk reply, including its regional wording.
TalkC1MrSternwood:

C1Sc0_7D:
    ; Show message 1.
    db $01, $ca ; Message Text0FMessage4A: ねているので なにも はなさない。[END]
    ; End script.
    db $ff

; Show the original shared reply that the sleeping person cannot be woken.
HitC1Sleeper:

C1Sc0_7E:
    ; Show message 2.
    db $02, $36 ; Message Text10Message36: じゅくすいしているのか / いくらたたいても めを さまさない。[END]
    ; End script.
    db $ff

; Describe the wall mirror unless its original broken flag is set.
LookC1WallMirror:

C1Sc0_7F:
    ; Test object flag.
    db $16, C1WallMirrorBroken
    ; Branch if result bit 0 is set.
    db $04
    dw C1BrokenViewReply
    ; Show message 1.
    db $01, $cc ; Message Text0FMessage4C: かべかけタイプの カガミだ。[END]
    ; End script.
    db $ff

; Describe the expensive-looking lamp using the original regional wording.
LookC1FineLamp:

C1Sc0_80:
    ; Show message 1.
    db $01, $cd ; Message Text0FMessage4D: でんきスタンドだ。 / なかなか しゅみがいい。[END]
    ; End script.
    db $ff

; Describe Miss Vickers bed using the original regional wording.
LookC1VickersBed:

C1Sc0_81:
    ; Show message 1.
    db $01, $ce ; Message Text0FMessage4E: べッドだ。 / マットが やわらかそうだ。[END]
    ; End script.
    db $ff

; Describe the sleeping woman and set the original inspection flag.
LookC1SleepWoman:

C1Sc0_82:
    ; Show message 1.
    db $01, $cf ; Message Text0FMessage4F: この おんなが この かおりの / げんいんらしい。 / なかなかの びじんだ。[PAGE] / ・・・あっ! / この おんなは!![PAGE] / マンションに あっ...
    ; Set object flag.
    db $17, C1SleepWomanSeen
    ; End script.
    db $ff

; Show the original sleeping-woman talk reply.
TalkC1SleepWoman:

C1Sc0_83:
    ; Show message 1.
    db $01, $ca ; Message Text0FMessage4A: ねているので なにも はなさない。[END]
    ; End script.
    db $ff

; Describe the flowing sewage.
LookC1Sewage:

C1Sc0_84:
    ; Show message 1.
    db $01, $23 ; Message Text0EMessage23: げすいが ながれでている。 / とにかく ものすごい においだ。[END]
    ; End script.
    db $ff

; Show the original approaching alligator reply.
LookC1Alligator:

C1Sc0_85:
    ; Show message 1.
    db $01, $34 ; Message Text0EMessage34: くちを おおきく あけている! / かなり はらを すかせているようだ。はやく なんとか しなくては![END]
    ; End script.
    db $ff

; Run the original alligator attack and death sequence.
C1AlligatorDeath:

C1Sc0_86:
    ; Show message 1.
    db $01, $37 ; Message Text0EMessage37: ギャーッ![PAGE] / ・・・・・・むざんにも ワニに / くわれてしまった。[END]
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text10Message62: あなたは トイレの なかで / めざめてから てさぐりで / ここまできた・・・。[PAGE] / ・・・だが あなたは えいえんに / つちの したで ねむるハメに /...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Inspect the moving shadow or dispatch the original later view replies.
LookC1ShadowView:

C1Sc0_87:
    ; Test object flag.
    db $16, C1ShadowShot
    ; Branch if result bit 0 is set.
    db $04
    dw C1ShadowDoorState
    ; Show message 1.
    db $01, $89 ; Message Text0FMessage09: ドアだ。 / あいかわらず ひとかげが ある。[END]
    ; End script.
    db $ff

; Retain the original open, closed, and absent-threat reply gates.
C1ShadowDoorState:

C1Loc0_16:
    ; Test state bit.
    db $2e, C1StateAceOfficeDoorOpen
    ; Branch if result bit 0 is set.
    db $04
    dw C1ShadowDoorOpen
    ; Test object flag.
    db $16, C1AceOfficeRoomSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1ShadowDoorShut
    ; Show message 1.
    db $01, $8a ; Message Text0FMessage0A: ひとの けはいは なくなった。 / だが ゆだんは きんもつだ。[END]
    ; End script.
    db $ff

; Set the door text name and show the original closed-door reply.
C1ShadowDoorShut:

C1Loc0_27:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $03 ; Message Text10Message03: [OBJECT_WRAM:37C5]は しまっている。[END]
    ; End script.
    db $ff

; Set the door text name and show the original open-door reply.
C1ShadowDoorOpen:

C1Loc0_28:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $01 ; Message Text10Message01: [OBJECT_WRAM:37C5]は あいている。[END]
    ; End script.
    db $ff

; Show the original cracked-wall description.
LookC1CrackedWall:

C1Sc0_88:
    ; Show message 2.
    db $02, $65 ; Message Text10Message65: かべが われている・・・。 / それいがい かわったものは / みられない。[END]
    ; End script.
    db $ff

; Show the original wall cracks or marks description.
LookC1WallMarks:

C1Sc0_89:
    ; Show message 2.
    db $02, $66 ; Message Text10Message66: ただの かべの きずの ようだ。[END]
    ; End script.
    db $ff

; Show the shared original nothing-unusual reply.
C1NothingOddReply:

C1Sc0_8A:
    ; Show message 2.
    db $02, $70 ; Message Text10Message70: べつに かわったところは ない。[END]
    ; End script.
    db $ff

; Describe the worn shelf using the original regional wording.
LookC1OldShelf:

C1Sc0_8B:
    ; Show message 1.
    db $01, $90 ; Message Text0FMessage10: たなだ。 / おもいものを のせたら / おちてきそうだな。[END]
    ; End script.
    db $ff

; Show the original self-inspection reply.
LookC1Self:

C1Sc0_8C:
    ; Show message 2.
    db $02, $60 ; Message Text10Message60: おれいがいの なにものでも ない! / おれは おれだ![END]
    ; End script.
    db $ff

; Show the original self-talk reply.
TalkC1Self:

C1Sc0_8D:
    ; Show message 2.
    db $02, $79 ; Message Text10Message79: じぶんに はなしかけるほど おれの / あたまは おかしくなってないぞ![END]
    ; End script.
    db $ff

; Show the original self-hit reply without changing state.
HitC1Self:

C1Sc0_8E:
    ; Show message 2.
    db $02, $7a ; Message Text10Message7A: ポコ ポコ! / なんで じぶんを たたかなくちゃ / いけないんだ?[END]
    ; End script.
    db $ff

; Show the original reply about newspapers for sale.
LookC1SaleNews:

C1Sc0_8F:
    ; Show message 2.
    db $02, $be ; Message Text0DMessage3E: うりものの しんぶんだ。 / かってに よむと みせのおとこに / おこられそうだ。[END]
    ; End script.
    db $ff
