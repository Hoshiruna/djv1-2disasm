
; Describe the first original ceiling light.
LookC1CeilLamp1:
; Opcode starts are annotated; scalar operands and inline item-match rows remain data.

C1Sc0_00:
    ; Show message 0.
    db $00, $03 ; Message Text0CMessage03: IT LOOKS LIKE / A TYPICAL CEILING / LIGHT.[END]
    ; End script.
    db $ff

; Ask who the player is speaking to.
C1WhoTalkReply:

C1Sc0_01:
    ; Show message 0.
    db $00, $1b ; Message Text0CMessage1B: WHO ARE YOU / SPEAKING TO?[END]
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
    db $00, $1a ; Message Text0CMessage1A: WHAM! YOUR HAND / IMPACTS WITH A / SHARP STAB OF PAINAND THEN GOES / NUMB![END]
    ; End script.
    db $ff

; Show the original regional questioning reply.
C1SceneQuestion:

C1Sc0_04:
    ; Show message 0.
    db $00, $13 ; Message Text0CMessage13: WHAT DO YOU THINK / YOU ARE DOING?[END]
    ; End script.
    db $ff

; Describe the roll of toilet paper.
LookC1ToiletRoll:

C1Sc0_05:
    ; Show message 0.
    db $00, $04 ; Message Text0CMessage04: IT'S A FULL ROLL / OF TOILET PAPER.[PAGE] / IT TENDS TO COME / IN HANDY IN / SURROUND...
    ; End script.
    db $ff

; Describe the other original ceiling light at its separate entry.
LookC1CeilLamp2:

C1Sc0_06:
    ; Show message 0.
    db $00, $20 ; Message Text0CMessage20: AN ELECTRIC LIGHT / IS HANGING FROM / THE CEILING.[END]
    ; End script.
    db $ff

; Show the original regional cannot-do-this reply.
C1ActionRefusal:

C1Sc0_07:
    ; Show message 0.
    db $00, $14 ; Message Text0CMessage14: YOU CAN'T DO THAT.[END]
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
    db $00, $25 ; Message Text0CMessage25: IT'S A MIRROR WITHA SIMPLE WOODEN / FRAME.[END]
    ; End script.
    db $ff

; Show the shared original broken-object inspection reply.
C1BrokenViewReply:

C1Loc0_01:
    ; Show message 2.
    db $02, $6a ; Message Text11Message6A: BESIDES IT BEING / BROKEN, YOU SEE / NOTHING ELSE / UNUSUAL.[END]
    ; End script.
    db $ff

; Describe the first sink using the original regional wording.
LookC1Sink1:

C1Sc0_09:
    ; Show message 0.
    db $00, $21 ; Message Text0CMessage21: IT APPEARS TO BE / A SINK. RUST / STAINS SHOW WHERE / THE WATER / CONSTANTLY DRIPS.[END]
    ; End script.
    db $ff

; Describe the first puddle and retain its original extra hint gate.
LookC1Puddle1:

C1Sc0_0A:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 0.
    db $00, $27 ; Message Text0CMessage27: THERE'S A PUDDLE / ON THE FLOOR.[END]
    ; Test object flag.
    db $16, C1WomenStallSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1ResumeTextEnd
    ; Show message 2.
    db $02, $38 ; Message Text11Message38: IT APPEARS TO BE / COMING FROM THE / WOMEN'S WASHROOM.[PAGE] / YOU HOPE IT ISN'T / SO...
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
    db $02, $3c ; Message Text11Message3C: HITTING IT MIGHT / NOT BE THE BEST / IDEA.[END]
    ; End script.
    db $ff

; Describe the old ceiling light.
LookC1OldLamp:

C1Sc0_0C:
    ; Show message 0.
    db $00, $2f ; Message Text0CMessage2F: THIS LIGHT LOOKS / LIKE IT'S ON ITS / LAST LEG.[END]
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
    db $00, $2d ; Message Text0CMessage2D: A FAINT WHITE FILMCOVERS THE MIRROR.IT'S AS GRIMY AS / THE REST OF THIS / PLACE![END]
    ; End script.
    db $ff

; Describe the second sink using the original regional wording.
LookC1Sink2:

C1Sc0_0E:
    ; Show message 0.
    db $00, $30 ; Message Text0CMessage30: YOU FIGURE IF YOU / WASHED YOUR HANDS / IN THIS SINK, / THEY'D JUST GET / DIRTIER.[END]
    ; End script.
    db $ff

; Describe the second puddle using the original regional source of the water.
LookC1Puddle2:

C1Sc0_0F:
    ; Show message 0.
    db $00, $35 ; Message Text0CMessage35: IT'S A PUDDLE OF / WATER THAT APPEARSTO BE COMING OUT / OF THE TOILET.[END]
    ; End script.
    db $ff

; Describe the second unused toilet paper roll.
LookC1ToiletRoll2:

C1Sc0_10:
    ; Show message 0.
    db $00, $34 ; Message Text0CMessage34: IT'S A ROLL OF / TOILET PAPER.[PAGE] / IT LOOKS LIKE IT / HASN'T BEEN USED / YET.[END]
    ; End script.
    db $ff

; Describe the polished bar counter using the original regional wording.
LookC1BarCounter:

C1Sc0_11:
    ; Show message 0.
    db $00, $41 ; Message Text0CMessage41: IT'S THE / COUNTERTOP.[PAGE] / YOU CATCH A SLIGHTREFLECTION OF / YOURSELF IN THE / HI...
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
    db $00, $3c ; Message Text0CMessage3C: THROUGH THE WINDOWYOU SEE AN EMPTY / STREET WITH NO / ONE IN SIGHT.[END]
    ; End script.
    db $ff

; Describe the spider web using the original regional wording.
LookC1SpiderWeb:

C1Sc0_13:
    ; Show message 0.
    db $00, $4d ; Message Text0CMessage4D: YOU ARE MESMERIZEDBY THE INTRICATE / DESIGN OF THE / SPIDER WEB![END]
    ; End script.
    db $ff

; Describe the cellar light.
LookC1CellarLamp:

C1Sc0_14:
    ; Show message 0.
    db $00, $4a ; Message Text0CMessage4A: IT'S THE KIND OF / LIGHT YOU'D EXPECTTO FIND IN A / CELLAR.[END]
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
    db $00, $4b ; Message Text0CMessage4B: A BARREL IS SET UPAGAINST THE WALL.[END]
    ; Set object flag.
    db $17, C1BarrelSeen
    ; End script.
    db $ff

; Show the shorter barrel description on later inspections.
C1BarrelAgain:

C1Loc0_02:
    ; Show message 0.
    db $00, $53 ; Message Text0CMessage53: IT'S A BIG BARREL.[END]
    ; End script.
    db $ff

; Describe the barrel spigot.
LookC1Spigot:

C1Sc0_16:
    ; Show message 0.
    db $00, $4c ; Message Text0CMessage4C: IT'S A SPIGOT.[END]
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
    db $00, $4f ; Message Text0CMessage4F: YOU NOTICE A / LACK OF DUST.[PAGE] / HOW PECULIAR![END]
    ; End script.
    db $ff

; Identify the bottle that opened the secret door.
C1RackBottleKnown:

C1Loc0_03:
    ; Show message 2.
    db $02, $3e ; Message Text11Message3E: IT'S THE BOTTLE / THAT OPENED THE / SECRET DOOR.[END]
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
    db $00, $51 ; Message Text0CMessage51: WHEN YOU HIT / THE BOTTLE, THE / WHOLE RACK SLIDES / TO THE SIDE.[PAGE] / A SECRET PA...
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
    db $02, $3f ; Message Text11Message3F: THE RACK SLIDES / OPEN AND REVEALS ASECRET PASSAGE![END]
    ; End script.
    db $ff

; Describe the bare light bulb using the original regional wording.
LookC1BareBulb:

C1Sc0_19:
    ; Show message 0.
    db $00, $57 ; Message Text0CMessage57: WAIT A MINUTE! / COULD IT BE? YES, / IT IS! A LIGHT / BULB![END]
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
    db $00, $5f ; Message Text0CMessage5F: YOU REMEMBER THE / LAST TIME YOU / PLAYED ROULETTE...20 BLACK- YOU / LOST![END]
    ; End script.
    db $ff

; Show the shorter roulette description.
C1RouletteAgain:

C1Loc0_05:
    ; Show message 0.
    db $00, $66 ; Message Text0CMessage66: IT'S A ROULETTE / WHEEL.[END]
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
    db $00, $60 ; Message Text0CMessage60: IT'S A SLOT / MACHINE.[PAGE] / DO YOU FEEL LUCKY?[END]
    ; Show message 2.
    db $02, $5f ; Message Text11Message5F: A COIN IS LEFT IN / THE SLOT MACHINE'SDISH![END]
    ; Set text name 1.
    db $38, $01
    ; Show message 2.
    db $02 ; Message Text11Message13: TAKE OUT / [NUM8_WRAM:38C5] COINS.[END]

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
    db $00, $60 ; Message Text0CMessage60: IT'S A SLOT / MACHINE.[PAGE] / DO YOU FEEL LUCKY?[END]
    ; End script.
    db $ff

; Show the original reminder that the slot machine needs a coin.
C1SlotNeedsCoin:

C1Sc0_1C:
    ; Show message 2.
    db $02, $64 ; Message Text11Message64: AHH, IT JUST NEEDSA COIN![END]
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
    db $02, $67 ; Message Text11Message67: WHOOSH![PAGE] / THE ELEVATOR / DOORS SLIDE OPEN.[END]
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
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Describe the button for the top floor.
LookC1TopButton:

C1Sc0_1E:
    ; Show message 0.
    db $00, $6c ; Message Text0CMessage6C: THIS BUTTON IS FORTHE TOP FLOOR.[END]
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
    db $00, $71 ; Message Text0CMessage71: THE DOOR CLOSES / AND THEN QUICKLY / OPENS AGAIN.[PAGE] / YOU PUSHED THE / BUTTON FOR...
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
    db $00, $70 ; Message Text0CMessage70: AS YOU PRESS THE / BUTTON, THE / ELEVATOR LURCHES / TO LIFE.[PAGE] / WITHIN MOMENTS, ...
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
    db $00, $6d ; Message Text0CMessage6D: THERE'S NOTHING / ON THE BUTTON.[END]
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
    db $00, $70 ; Message Text0CMessage70: AS YOU PRESS THE / BUTTON, THE / ELEVATOR LURCHES / TO LIFE.[PAGE] / WITHIN MOMENTS, ...
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
    db $00, $71 ; Message Text0CMessage71: THE DOOR CLOSES / AND THEN QUICKLY / OPENS AGAIN.[PAGE] / YOU PUSHED THE / BUTTON FOR...
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
    db $00, $71 ; Message Text0CMessage71: THE DOOR CLOSES / AND THEN QUICKLY / OPENS AGAIN.[PAGE] / YOU PUSHED THE / BUTTON FOR...
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
    db $00, $70 ; Message Text0CMessage70: AS YOU PRESS THE / BUTTON, THE / ELEVATOR LURCHES / TO LIFE.[PAGE] / WITHIN MOMENTS, ...
    ; Set state and refresh.
    db $33, C1StateCasinoLiftDoorOpen
    ; End script.
    db $ff

; Describe the lowest-floor button using the original regional wording.
LookC1LowButton:

C1Sc0_23:
    ; Show message 0.
    db $00, $6e ; Message Text0CMessage6E: THIS IS THE BUTTONFOR THE FIRST / FLOOR.[END]
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
    db $00, $70 ; Message Text0CMessage70: AS YOU PRESS THE / BUTTON, THE / ELEVATOR LURCHES / TO LIFE.[PAGE] / WITHIN MOMENTS, ...
    ; Set first item type and ID.
    db $5c, $05, C1DoorIdLiftSewerExit
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdLiftSewer
    ; Show message 2.
    db $02, $bb ; Message Text0DMessage3B: YOU'RE IN THE / SEWERS UNDER THE / MANHOLE.[END]
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
    db $00, $79 ; Message Text0CMessage79: IT'S AN ELEVATOR / BUTTON.[END]
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
    db $02, $67 ; Message Text11Message67: WHOOSH![PAGE] / THE ELEVATOR / DOORS SLIDE OPEN.[END]
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
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
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
    db $00, $73 ; Message Text0CMessage73: IT'S A BIZARRE / LOOKING CHAIR.[PAGE] / RESTRAINTS FOR THEARMS AND HEAD HAVEBEEN BUIL...
    ; End script.
    db $ff

; Show the shorter unusual-chair description.
C1ChairBrief:

C1Loc0_07:
    ; Show message 2.
    db $02, $4d ; Message Text11Message4D: IT'S AN ODD SHAPEDCHAIR.[END]
    ; End script.
    db $ff

; Describe the disconnected telephone receiver using the original regional wording.
LookC1LooseHandset:

C1Sc0_28:
    ; Show message 2.
    db $02, $83 ; Message Text0DMessage03: IT'S A PHONE / RECEIVER.[PAGE] / THE CORD HAS BEEN / PULLED OUT.[END]
    ; End script.
    db $ff

; Describe the old telephone and its disconnected receiver cord.
LookC1OldPhone:

C1Sc0_29:
    ; Show message 2.
    db $02, $86 ; Message Text0DMessage06: IT'S AN / OLD-FASHIONED / TELEPHONE.[PAGE] / THE CORD HANGS / LIMPLY FROM THE / USELE...
    ; End script.
    db $ff

; Show the first plain window inspection reply.
LookC1PlainWin1:

C1Sc0_2A:
    ; Show message 2.
    db $02, $98 ; Message Text0DMessage18: THROUGH THE WINDOWYOU SEE NOTHING / UNUSUAL.[END]
    ; End script.
    db $ff

; Describe the small desk lamp.
LookC1DeskLamp:

C1Sc0_2B:
    ; Show message 2.
    db $02, $9a ; Message Text0DMessage1A: IT'S A SMALL DESK / LAMP. FUNCTIONAL, / NOT DECORATIVE![END]
    ; End script.
    db $ff

; Describe the typewriter using the original regional wording.
LookC1Typewriter:

C1Sc0_2C:
    ; Show message 2.
    db $02, $9b ; Message Text0DMessage1B: IT'S A TYPEWRITER.FOR THOSE WITH THEDEXTERITY, IT'S / PRETTY HANDY...[PAGE] / YOU, HO...
    ; End script.
    db $ff

; Retain the text hold and both original telephone inspection replies.
LookC1Phone1:

C1Sc0_2D:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $9c ; Message Text0DMessage1C: IT'S A TELEPHONE.[END]
    ; Show message 2.
    db $02, $70 ; Message Text11Message70: THERE DOESN'T SEEMTO BE ANYTHING / UNUSUAL.[END]
    ; End script.
    db $ff

; Describe the first boxer poster using the original regional name.
LookC1BoxPoster1:

C1Sc0_2E:
    ; Show message 2.
    db $02, $a4 ; Message Text0DMessage24: IT'S A POSTER OF / SOME BOXER NAMED / "DOGHOUSE" RILEY.[END]
    ; End script.
    db $ff

; Describe the second boxer poster using the original regional name.
LookC1BoxPoster2:

C1Sc0_2F:
    ; Show message 2.
    db $02, $a5 ; Message Text0DMessage25: IT'S A POSTER OF ABOXER NAMED / "PUFF" MACMUFFEN.[END]
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
    db $02, $a6 ; Message Text0DMessage26: IT'S A POSTER OF / A BOXER, THE FACE / SEEMS SLIGHTLY / FAMILIAR.[PAGE] / THE NAME / ...
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
    db $02, $98 ; Message Text0DMessage18: THROUGH THE WINDOWYOU SEE NOTHING / UNUSUAL.[END]
    ; End script.
    db $ff

; Describe the luxury car using the original regional wording.
LookC1LuxuryCar:

C1Sc0_32:
    ; Show message 2.
    db $02, $b4 ; Message Text0DMessage34: IT'S A VERY / ELEGANT LUXURY / CAR.[END]
    ; End script.
    db $ff

; Describe the newsstand using the original regional wording.
LookC1Newsstand:

C1Sc0_33:
    ; Show message 2.
    db $02, $c1 ; Message Text0DMessage41: THIS NEWSSTAND IS / MADE OF THE FINESTPLYWOOD.[END]
    ; End script.
    db $ff

; Describe the newspaper seller using the original regional wording.
LookC1NewsBoy:

C1Sc0_34:
    ; Show message 2.
    db $02, $c0 ; Message Text0DMessage40: THE NEWSBOY LOOKS / AT YOU AS THOUGH / HE RECOGNIZES YOU.[END]
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
    db $02, $c3 ; Message Text0DMessage43: "IT'S TWENTY-FIVE / CENTS A COPY, MAC![PAGE] / IF YA WANT, TAKE / DA FAR RIGHT ONE,"S...
    ; End script.
    db $ff

; Show the newspaper seller warning the player to leave.
C1NewsBoyWarn:

C1Loc0_0A:
    ; Show message 2.
    db $02, $c7 ; Message Text0DMessage47: THE NEWSBOY SAYS / IN A LOW VOICE, / "ARE YA STILL / HERE?[PAGE] / YOU'D BETTER BEAT ...
    ; End script.
    db $ff

; Show the original failed-attack reply without changing player state.
HitC1NewsBoy:

C1Sc0_36:
    ; Show message 2.
    db $02, $c9 ; Message Text0DMessage49: YOU DON'T HAVE / ANY STRENGTH LEFT![END]
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
    db $02, $cc ; Message Text0DMessage4C: THE WINDOW READS / "GUNS AND AMMO."[END]
    ; End script.
    db $ff

; Describe the street lamp using the original regional wording.
LookC1StreetLamp:

C1Sc0_38:
    ; Show message 2.
    db $02, $d7 ; Message Text0DMessage57: THE LAMP POST HAS / THREE VERY BRIGHT / LIGHTS.[PAGE] / YOU SUPPOSE IT / REDUCES THE ...
    ; End script.
    db $ff

; Run the original mugger shooting and death sequence.
C1MuggerShoots:

C1Sc0_39:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Show message 1.
    db $01, $f0 ; Message Text10Message30: THE MUGGER'S GOT / AN ITCHY TRIGGER / FINGER AND LETS / YOU HAVE IT.[END]
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text11Message62: TOO BAD ACE! FROM / THE BEGINNING THE / ODDS WERE STACKED / AGAINST YOU![PAGE] / IT S...
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
    db $01, $ef ; Message Text10Message2F: SOCKO![PAGE] / A QUICK JAB TO / THE MUGGER'S EYE / STUNS HIM.[PAGE] / HE RUNS DOWN TH...
    ; Set first item type and ID.
    db $5c, $05, C1DoorIdJoeStreetPoliceFront
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdJoeStreet
    ; Show message 2.
    db $02, $b9 ; Message Text0DMessage39: YOU'RE STANDING ONTHE STREET IN / FRONT OF THE / RESTAURANT.[END]
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
    db $01, $f7 ; Message Text10Message37: BLAM! BLAM! BLAM![PAGE] / THE MUGGER BLOWS / YOU AWAY / REPEATEDLY![PAGE] / SEEMS HE ...
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text11Message62: TOO BAD ACE! FROM / THE BEGINNING THE / ODDS WERE STACKED / AGAINST YOU![PAGE] / IT S...
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
    db $01, $f5 ; Message Text10Message35: SOCKO![PAGE] / A LIGHTNING FAST / FIST HITS HIM / IN THE NOSE.[PAGE] / HE STUMBLES FO...
    ; Set first item type and ID.
    db $5c, $05, C1DoorIdJoeStreetNewsstand
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdNewsstandStreet
    ; Show message 2.
    db $02, $c2 ; Message Text0DMessage42: YOU'RE ON THE / STREET IN FRONT OFTHE NEWSSTAND.[END]
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
    db $01, $f2 ; Message Text10Message32: SOCKO![PAGE] / A SWIFT JAB TO / THE MUGGER'S LEFT / EYE SENDS HIM / REELING BACK / IN...
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
    db $02, $d0 ; Message Text0DMessage50: YOU STAND AMONGST / THE RAMSHACKLE / BUILDINGS ON  / PEORIA ST.[END]
    ; End script.
    db $ff

; Show the blue cab at Peoria, append its original list value, and mark it shown.
C1MuggerPeoriaCab:

C1Loc0_29:
    ; Set text name 0.
    db $1e, $b1
    ; Show message 2.
    db $02, $0b ; Message Text11Message0B: THIS IS PEORIA ST.A [OBJECT_WRAM:37C5] / IS WAITING.[END]
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
    db $01, $e4 ; Message Text10Message24: "ARE YOU KIDDING?"THE MUGGER SAYS / AND THEN SLUGS YOUIN THE FACE BEFOREYOU CAN ANSWE...
    ; Clear Case I cash and draw room $16.
    db $63
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $e5 ; Message Text10Message25: YOU SHAKE YOUR / HEAD GROGGILY AS / YOU GET UP.[PAGE] / YOU NOTICE THE / MUGGER IS NO...
    ; Show message 1.
    db $01, $e7 ; Message Text10Message27: YOU CURSE YOUR / LUCK AS YOU / DISCOVER THERE IS / NOT A PENNY LEFT.[PAGE] / HE TOOK ...
    ; End script.
    db $ff

; Run the failed punch, clear cash, and show the original recovery text.
C1MuggerRobFight:

C1Sc0_3C:
    ; Finish Case I scene effect.
    db $5a, C1FxIdImpact
    ; Show message 1.
    db $01, $e2 ; Message Text10Message22: SOCKO![PAGE] / THE MUGGER POUNCESON YOU WITH MOVES / AS FAST AS A CAT![PAGE] / A LEFT...
    ; Clear Case I cash and draw room $16.
    db $63
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $e5 ; Message Text10Message25: YOU SHAKE YOUR / HEAD GROGGILY AS / YOU GET UP.[PAGE] / YOU NOTICE THE / MUGGER IS NO...
    ; Show message 1.
    db $01, $e7 ; Message Text10Message27: YOU CURSE YOUR / LUCK AS YOU / DISCOVER THERE IS / NOT A PENNY LEFT.[PAGE] / HE TOOK ...
    ; End script.
    db $ff

; Describe the fire escape that cannot be reached from the street.
LookC1HighEscape:

C1Sc0_3D:
    ; Show message 2.
    db $02, $d3 ; Message Text0DMessage53: THE FIRE ESCAPE ISTOO HIGH FOR YOU / TO REACH FROM / THE STREET.[END]
    ; End script.
    db $ff

; Describe the rusty fire escape.
LookC1RustEscape:

C1Sc0_3E:
    ; Show message 2.
    db $02, $ad ; Message Text0DMessage2D: THE FIRE ESCAPE ISPRETTY RUSTY.[END]
    ; End script.
    db $ff

; Describe the ladder ending above the alley.
LookC1EscapeDrop:

C1Sc0_3F:
    ; Show message 2.
    db $02, $af ; Message Text0DMessage2F: THE LADDER ENDS / SOME NINE FEET / ABOVE THE GROUND.[PAGE] / YOU COULD JUMP / DOWN TO...
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
    db $02, $e6 ; Message Text0DMessage66: BLAM! / YOUR REFLEXES / WITH YOUR GUN ARE / TOO SLOW, SHE / BEATS YOU TO THE / DRAW A...
    ; Wait sixty ticks.
    db $68
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text11Message62: TOO BAD ACE! FROM / THE BEGINNING THE / ODDS WERE STACKED / AGAINST YOU![PAGE] / IT S...
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
    db $02, $e7 ; Message Text0DMessage67: SOCKO![PAGE] / A QUICK JAB OUT OFNOWHERE AND SHE'S / OUT LIKE A LIGHT! / HER PURSE DR...
    ; Set object flag.
    db $17, C1ArmedLadyDown
    ; Set first item type and ID.
    db $5c, $05, C1DoorIdJoeStreetPoliceFront
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdFallenWomanStreet
    ; Show message 2.
    db $02, $e8 ; Message Text0DMessage68: YOU ARE STANDING / OVER THE LADY YOU / JUST SUCKER / PUNCHED.[PAGE] / YOU PROBABLY / ...
    ; End script.
    db $ff

; Describe the unconscious woman using the original regional wording.
LookC1FallenLady:

C1Sc0_42:
    ; Show message 2.
    db $02, $e9 ; Message Text0DMessage69: IT LOOKS LIKE YOU / HIT HER PRETTY / HARD- SHE'S OUT / COLD![END]
    ; End script.
    db $ff

; Show the shared original reply that this action cannot be done here.
C1CantDoHere:

C1Sc0_43:
    ; Show message 2.
    db $02, $37 ; Message Text11Message37: YOU CAN'T DO THAT / HERE.[END]
    ; End script.
    db $ff

; Describe the street informant using the original regional wording.
LookC1Bum:

C1Sc0_44:
    ; Show message 2.
    db $02, $dc ; Message Text0DMessage5C: HE LOOKS VERY WEAKAND DEFENSELESS.[PAGE] / THE MAN LOOKS / EXTREMELY DAZED, / TOO![PA...
    ; End script.
    db $ff

; Show the original demand for fifty cents.
TalkC1Bum:

C1Sc0_45:
    ; Show message 2.
    db $02, $e0 ; Message Text0DMessage60: "HEH, HEH, HEH... / FIFTY CENTS IS A / SMALL PRICE TA / PAY FOR YER LIFE,"BELCHES THE...
    ; End script.
    db $ff

; Run the original punch effect and police-siren reply.
HitC1Bum:

C1Sc0_46:
    ; Run scene effect.
    db $46, C1FxIdImpact
    ; Show message 2.
    db $02, $df ; Message Text0DMessage5F: SOCKO![PAGE] / YOU BELTED THE BUMHARD, BUT SOMEHOW / YOU DON'T THINK HENOTICED- SEEIN...
    ; End script.
    db $ff

; Describe the gas pedal.
LookC1GasPedal:

C1Sc0_47:
    ; Show message 1.
    db $01, $01 ; Message Text0EMessage01: IT'S THE GAS / PEDAL.[PAGE] / YOU RESIST THE / URGE TO PUT THE / PEDAL TO THE / METAL...
    ; End script.
    db $ff

; Describe the brake pedal.
LookC1Brake:

C1Sc0_48:
    ; Show message 2.
    db $02, $51 ; Message Text11Message51: IT'S THE BRAKE / PEDAL.[END]
    ; End script.
    db $ff

; Describe the clutch.
LookC1Clutch:

C1Sc0_49:
    ; Show message 2.
    db $02, $5c ; Message Text11Message5C: IT'S THE CLUTCH.[END]
    ; End script.
    db $ff

; Describe the steering wheel and its leather cover.
LookC1Steering:

C1Sc0_4A:
    ; Show message 1.
    db $01, $04 ; Message Text0EMessage04: THIS STEERING / WHEEL HAS A / LEATHER COVER ON / IT.[END]
    ; End script.
    db $ff

; Describe the ignition using the original regional wording.
LookC1Ignition:

C1Sc0_4B:
    ; Show message 1.
    db $01, $05 ; Message Text0EMessage05: IT'S THE IGNITION.[PAGE] / IT'S JUST WAITING / FOR SOMEONE TO REVIT UP.[END]
    ; End script.
    db $ff

; Show the second luxury car description without merging the original entries.
LookC1LuxuryCar2:

C1Sc0_4C:
    ; Show message 2.
    db $02, $f3 ; Message Text0DMessage73: IT'S THE BLACK / EUROPEAN LUXURY / CAR.[END]
    ; End script.
    db $ff

; Describe the hood release using the original regional wording.
LookC1HoodRelease:

C1Sc0_4D:
    ; Show message 1.
    db $01, $08 ; Message Text0EMessage08: IT'S THE HOOD / RELEASE. IT OPENS / THE HOOD.[END]
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
    db $01, $0d ; Message Text0EMessage0D: YOU'VE RELEASED / THE HOOD.[PAGE] / IT POPS WIDE OPEN / AND THEN...[PAGE] / AN EARTH ...
    ; Show message 1.
    db $01, $0e ; Message Text0EMessage0E: IF YOU WERE STILL / ALIVE, YOU'D CURSEYOUR LACK OF / CAUTION THAT / ALLOWED YOU TO / ...
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text11Message62: TOO BAD ACE! FROM / THE BEGINNING THE / ODDS WERE STACKED / AGAINST YOU![PAGE] / IT S...
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
    db $02, $f4 ; Message Text0DMessage74: IT'S THE BIGGEST / WOMAN YOU'VE EVER / SEEN IN YOUR LIFE!YOU WONDER HOW SHEEVER MANAG...
    ; Show message 2.
    db $02, $21 ; Message Text11Message21: NOW THAT IS ONE / LARGE WOMAN! SHE'SGOT TO BE AT LEAST400 LBS![PAGE] / YOU HAVE AN UN...
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
    db $02, $fc ; Message Text0DMessage7C: ON SECOND THOUGHT,YOU'VE SEEN PLENTYENOUGH ALREADY.[END]
    ; End script.
    db $ff

; Show the alternate description and set its original inspection flag.
C1SternwoodView:

C1Loc0_0F:
    ; Show message 2.
    db $02, $21 ; Message Text11Message21: NOW THAT IS ONE / LARGE WOMAN! SHE'SGOT TO BE AT LEAST400 LBS![PAGE] / YOU HAVE AN UN...
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
    db $02, $fb ; Message Text0DMessage7B: SHE CAN'T SAY / ANYTHING TO YOU / WHILE SHE'S / UNCONSCIOUS.[END]
    ; End script.
    db $ff

; Show the original action refusal without changing the woman state.
C1WomanTalkRefuse:

C1Loc0_10:
    ; Show message 0.
    db $00, $14 ; Message Text0CMessage14: YOU CAN'T DO THAT.[END]
    ; End script.
    db $ff

; Show the original ineffective-punch reply without changing state.
HitC1Sternwood:

C1Sc0_51:
    ; Show message 2.
    db $02, $ff ; Message Text0DMessage7F: THE FORCE OF YOUR / BLOW SENDS SHOCK / WAVES THROUGH THE / RIPPLES OF HER / FAT.[PAGE...
    ; End script.
    db $ff

; Describe the gun shop clerk using the original regional wording.
LookC1GunClerk:

C1Sc0_52:
    ; Show message 1.
    db $01, $11 ; Message Text0EMessage11: THIS GUY REALLY / HAS QUITE THE GUT-MAYBE EXERCISING / WOULD DO HIM GOOD.[END]
    ; End script.
    db $ff

; Show the clerk greeting and retain the regional price details.
TalkC1GunClerk:

C1Sc0_53:
    ; Show message 1.
    db $01, $1e ; Message Text0EMessage1E: THE GUY BEHIND / THE COUNTER ASKS, / "CAN I HELP YOU / OR WHAT?"[END]
    ; End script.
    db $ff

; Run the original clerk shooting and death sequence.
C1GunClerkShoots:

C1Sc0_54:
    ; Finish Case I scene effect.
    db $5a, C1FxIdGunshot
    ; Show message 1.
    db $01, $1d ; Message Text0EMessage1D: KA-BOOM![PAGE] / THE CLERK REACTS / FASTER THAN YOU / THOUGHT POSSIBLE / FOR ONE SO B...
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text11Message62: TOO BAD ACE! FROM / THE BEGINNING THE / ODDS WERE STACKED / AGAINST YOU![PAGE] / IT S...
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Describe the original twenty-dollar special sign.
LookC1GunPrice:

C1Sc0_55:
    ; Show message 1.
    db $01, $14 ; Message Text0EMessage14: THE SIGN SAYS, / "TONIGHT'S SPECIAL$20."[END]
    ; End script.
    db $ff

; Show the first cab driver inspection reply.
LookC1CabDriver1:

C1Sc0_56:
    ; Show message 1.
    db $01, $3d ; Message Text0EMessage3D: IT'S THE CAB / DRIVER.[PAGE] / YOU DON'T KNOW / WHY, BUT HE SEEMS / VERY IMPATIENT.[END]
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
    db $01, $3a ; Message Text0EMessage3A: "HEY MISTER, WHERED'YA WANNA GO?" / THE DRIVER ASKS INA NERVOUS TONE.[END]
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
    db $00, $64 ; Message Text0CMessage64: THE CABBY / ACCELERATES IN A / SUDDEN BURST OF / SPEED![END]
    ; Play pick effect.
    db $6a
    ; Show message 1.
    db $01, $3b ; Message Text0EMessage3B: WHEN YOU ARRIVE, / HE LOOKS AT THE / METER AND SAYS, / "HERE YA ARE! / THAT'LL BE / S...
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
    db $02, $c8 ; Message Text0DMessage48: THE CABBY LAUGHS / AND SAYS, "YA MUSTBE NEW IN TOWN ...WE'RE ALREADY / THERE!"[END]
    ; Restore text lists and resume text.
    db $44
    ; End script.
    db $ff

; Show the first cab driver demand for repayment.
C1Cab1DebtReply:

C1Loc0_11:
    ; Show message 2.
    db $02, $6e ; Message Text11Message6E: THE CABBY MUTTERS / WITH A HINT OF / ANGER, "HEY, PAL![PAGE] / YA GONNA PAY ME / BACK...
    ; End script.
    db $ff

; Show the shared original reply about striking the bulletproof glass.
HitC1CabGlass:

C1Sc0_58:
    ; Show message 2.
    db $02, $34 ; Message Text11Message34: YOU'VE JUST / SUCCESSFULLY / SLUGGED THE / BULLETPROOF / GLASS.[END]
    ; End script.
    db $ff

; Describe the cab fare meter.
LookC1FareMeter:

C1Sc0_59:
    ; Show message 2.
    db $02, $33 ; Message Text11Message33: IT'S A FARE METER.[END]
    ; End script.
    db $ff

; Describe the first fare slot.
LookC1FareSlot1:

C1Sc0_5A:
    ; Show message 1.
    db $01, $3e ; Message Text0EMessage3E: IT'S THE SLOT / WHERE YOU PAY THE / CAB FARE.[END]
    ; End script.
    db $ff

; Show the medicine-immunity reply used by the original action table.
C1MedicineImmuneReply:

C1Sc0_5B:
    ; Show message 2.
    db $02, $0d ; Message Text11Message0D: NOTHING HAPPENED.[PAGE] / SHE IS PROBABLY / IMMUNE TO THE / MEDICINE.[END]
    ; End script.
    db $ff

; Show the second cab driver inspection reply.
LookC1CabDriver2:

C1Sc0_5C:
    ; Show message 1.
    db $01, $43 ; Message Text0EMessage43: "WHAT CAN I DO / YOU FOR?" THE / CABBY ASKS WITH A / SMILE.[END]
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
    db $01, $46 ; Message Text0EMessage46: THE CABBY ASKS, / "WHERE TO, / MISTER?"[END]
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
    db $00, $67 ; Message Text0CMessage67: YOU ARE THROWN / AROUND BY THE / CABBY'S RECKLESS / DRIVING.[END]
    ; Play pick effect.
    db $6a
    ; Show message 1.
    db $01, $45 ; Message Text0EMessage45: JUST WHEN YOU ARE / ABOUT TO COMPLAIN,HE STOPS THE CAB / WITH A SCREECH / AND SAYS,[P...
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
    db $02, $d2 ; Message Text0DMessage52: THE CABBY / CHUCKLES, "HEY / MISTER, WHAT DO / YA MEAN? [PAGE] / WE ARE ALREADY / THE...
    ; Restore text lists and resume text.
    db $44
    ; End script.
    db $ff

; Show the second cab driver demand for repayment using the regional wording.
C1Cab2DebtReply:

C1Loc0_12:
    ; Show message 2.
    db $02, $6f ; Message Text11Message6F: "HEY, MACK!" THE / CABBY ANGRILY / SAYS,[PAGE] / "I'M FRESH OUT OF / CHARITY, NOW PAY...
    ; End script.
    db $ff

; Describe the second fare slot without merging the original entries.
LookC1FareSlot2:

C1Sc0_5E:
    ; Show message 1.
    db $01, $3e ; Message Text0EMessage3E: IT'S THE SLOT / WHERE YOU PAY THE / CAB FARE.[END]
    ; End script.
    db $ff

; Describe the building using the original regional wording.
LookC1Building:

C1Sc0_5F:
    ; Show message 1.
    db $01, $48 ; Message Text0EMessage48: YOU ARE IMPRESSED / WITH THE / CONSTRUCTION OF / THE BUILDING.[PAGE] / IT LOOKS TO BE...
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
    db $01, $4c ; Message Text0EMessage4C: IT LOOKS TO BE / A SLOT FOR / SOMETHING.[END]
    ; Show message 2.
    db $02, $40 ; Message Text11Message40: IT LOOKS LIKE / A SLOT FOR A CARD / OR SOMETHING.[END]
    ; End script.
    db $ff

; Show the shorter outer slot description.
C1OuterSlotBrief:

C1Loc0_13:
    ; Show message 1.
    db $01, $4c ; Message Text0EMessage4C: IT LOOKS TO BE / A SLOT FOR / SOMETHING.[END]
    ; End script.
    db $ff

; Describe the inner slot by comparison with the outer slot.
LookC1InnerSlot:

C1Sc0_61:
    ; Show message 1.
    db $01, $50 ; Message Text0EMessage50: IT LOOKS JUST LIKETHE SLOT ON THE / OUTSIDE.[END]
    ; End script.
    db $ff

; Describe the chandelier using the original regional wording.
LookC1Chandelier:

C1Sc0_62:
    ; Show message 1.
    db $01, $54 ; Message Text0EMessage54: THE CRYSTAL / CHANDELIER FITS / THE DECOR OF THE / ROOM NICELY.[END]
    ; End script.
    db $ff

; Describe the comfortable chair using the original regional wording.
LookC1FineChair:

C1Sc0_63:
    ; Show message 1.
    db $01, $56 ; Message Text0EMessage56: ONE COULD ADMIRE / THE QUALITY OF / THIS CHAIR FOR / HOURS ON END.[END]
    ; End script.
    db $ff

; Describe the leather-covered sofa.
LookC1LeatherSofa:

C1Sc0_64:
    ; Show message 1.
    db $01, $55 ; Message Text0EMessage55: IT'S A LEATHER / COVERED SOFA.[END]
    ; End script.
    db $ff

; Describe the decorative fireplace using the original regional explanation.
LookC1Fireplace:

C1Sc0_65:
    ; Show message 1.
    db $01, $58 ; Message Text0EMessage58: IT'S A FIREPLACE.[PAGE] / FROM THE LACK OF / ASHES, YOU GUESS / THAT IT'S USED / MORE...
    ; End script.
    db $ff

; Describe the bookcase filled with thick books.
LookC1Bookcase:

C1Sc0_66:
    ; Show message 1.
    db $01, $5d ; Message Text0EMessage5D: IT'S A BOOKSHELF / FILLED WITH THICK / ENCYCLOPEDIAS / AND BOOKS.[END]
    ; End script.
    db $ff

; Describe the artwork using the original regional wording.
LookC1RoomArt:

C1Sc0_67:
    ; Show message 1.
    db $01, $57 ; Message Text0EMessage57: THERE'S NOTHING / LIKE A GREAT WORK / OF ART FOR / INSPIRATION.[END]
    ; End script.
    db $ff

; Describe the small low table.
LookC1LowTable:

C1Sc0_68:
    ; Show message 1.
    db $01, $59 ; Message Text0EMessage59: IT'S A SMALL, / LOW TABLE.[END]
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
    db $01, $5b ; Message Text0EMessage5B: IT'S A BIG, ROUND / MIRROR.[END]
    ; End script.
    db $ff

; Describe the cot-like bed using the original regional wording.
LookC1CotBed:

C1Sc0_6A:
    ; Show message 1.
    db $01, $6b ; Message Text0EMessage6B: THE BED LOOKS MORELIKE AN ARMY COT / THAN ANYTHING / ELSE.[PAGE] / IT SEEMS THE OWNER...
    ; End script.
    db $ff

; Show the first window reply using the original regional wording.
LookC1GrimyWin1:

C1Sc0_6B:
    ; Show message 1.
    db $01, $91 ; Message Text0FMessage11: IT'S A WINDOW.[PAGE] / IT'S SO GRIMY, / YOU CAN BARELY SEETHROUGH TO THE / STREET BEY...
    ; End script.
    db $ff

; Describe the bungalow.
LookC1Bungalow:

C1Sc0_6C:
    ; Show message 2.
    db $02, $2c ; Message Text11Message2C: IT'S A BUNGALOW.[END]
    ; End script.
    db $ff

; Describe the other building using the original regional wording.
LookC1PlainBuilding:

C1Sc0_6D:
    ; Show message 1.
    db $01, $74 ; Message Text0EMessage74: IT'S A BUILDING / LIKE ANY OTHER / BUILDING.[END]
    ; End script.
    db $ff

; Describe the eye chart using the original regional wording.
LookC1EyeChart:

C1Sc0_6E:
    ; Show message 1.
    db $01, $7d ; Message Text0EMessage7D: IF YOU CAN'T READ / THE EYE CHART FROMWHERE YOU ARE, / THEN YOU NEED / GLASSES![END]
    ; End script.
    db $ff

; Describe the medicine cabinet using the original regional wording.
LookC1DrugCabinet:

C1Sc0_6F:
    ; Show message 1.
    db $01, $7b ; Message Text0EMessage7B: THIS SEEMS TO BE ACABINET WHERE / THE DOCTOR KEEPS / VIALS OF MEDICINE.[END]
    ; End script.
    db $ff

; Show the second window reply without merging the original entries.
LookC1GrimyWin2:

C1Sc0_70:
    ; Show message 1.
    db $01, $91 ; Message Text0FMessage11: IT'S A WINDOW.[PAGE] / IT'S SO GRIMY, / YOU CAN BARELY SEETHROUGH TO THE / STREET BEY...
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
    db $01, $8e ; Message Text0FMessage0E: THE DEAD MAN LAYS / ON THE FLOOR IN A / POOL OF HIS OWN / BLOOD.[PAGE] / TOO BAD, THE...
    ; End script.
    db $ff

; Show the alternate dead-man reply using the original regional wording.
C1DeadManAltView:

C1Loc0_14:
    ; Show message 1.
    db $01, $94 ; Message Text0FMessage14: YOUR SHOT WAS / RIGHT ON TARGET.[PAGE] / YOU TAKE NO / PLEASURE IN YOUR / ACTIONS, BU...
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
    db $01, $a0 ; Message Text0FMessage20: YOU'RE AT THE / FRONT DOOR OF / THE MANSION.[PAGE] / THE DOOR HAS / A HUGE KNOCKER / ...
    ; End script.
    db $ff

; Use the knocker, retain the conditional move and two waits, then show the butler reply.
KnockC1Mansion:

C1Sc0_74:
    ; Show message 1.
    db $01, $a3 ; Message Text0FMessage23: YOU RAP THE / KNOCKER AGAINST / THE DOOR.[END]
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
    db $01, $a4 ; Message Text0FMessage24: AN OLD MAN COMES / AND ANSWERS THE / DOOR. IN A / CONDESCENDING / TONE THE BUTLER / E...
    ; End script.
    db $ff

; Describe the butler using the original regional wording.
LookC1Butler:

C1Sc0_75:
    ; Show message 1.
    db $01, $a5 ; Message Text0FMessage25: THIS OLD BUTLER / LOOKS LIKE HE / MIGHT BE A / PROBLEM, BUT / YOU'VE NO DOUBT / YOU C...
    ; End script.
    db $ff

; Show the butler refusal and retain the original conditional move and door-slam reply.
TalkC1Butler:

C1Sc0_76:
    ; Show message 2.
    db $02, $35 ; Message Text11Message35: THE BUTLER SOUNDS / TROUBLED AS HE / SAYS, "THERE'S / NOTHING I CAN TELLYOU...[PAGE] ...
    ; Set first item type and ID.
    db $5c, $05, C1DoorIdMansionFrontDoor
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, C1RoomIdMansionFrontDoor
    ; Show message 1.
    db $01, $aa ; Message Text0FMessage2A: SLAM![PAGE] / THE BUTLER THROWS / THE DOOR SHUT! IF / YOU HADN'T OF / JUMPED BACK, YO...
    ; End script.
    db $ff

; Run the punch effect, set the original flag, and clear the original visible state.
HitC1Butler:

C1Sc0_77:
    ; Finish Case I scene effect.
    db $5a, C1FxIdImpact
    ; Show message 1.
    db $01, $ad ; Message Text0FMessage2D: YOU'VE KNOCKED THEBUTLER OUT WITH A / TREMENDOUS / ROUNDHOUSE TO THE / JAW![PAGE] / H...
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
    db $01, $a8 ; Message Text0FMessage28: IT'S PROBABLY ONE / OF THE LARGEST / CHANDELIERS YOU'VEEVER SEEN![PAGE] / IT'S MUCH T...
    ; End script.
    db $ff

; Describe the table using the original regional wording.
LookC1FineTable:

C1Sc0_79:
    ; Show message 1.
    db $01, $b7 ; Message Text0FMessage37: THIS TABLE IS / VERY INTERESTING.[PAGE] / ONE COULD STAND / HERE FOR HOURS / JUST ADM...
    ; End script.
    db $ff

; Describe the lamp using the original regional wording.
LookC1RoomLamp:

C1Sc0_7A:
    ; Show message 1.
    db $01, $be ; Message Text0FMessage3E: AS FAR AS LAMPS / GO, THIS ONE IS / PRETTY NICE.[END]
    ; End script.
    db $ff

; Describe Mr. Sternwood bed using the original regional wording.
LookC1SternBed:

C1Sc0_7B:
    ; Show message 1.
    db $01, $bd ; Message Text0FMessage3D: IT'S THE BED THAT / MR. STERNWOOD LIESIN.[END]
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
    db $01, $c1 ; Message Text10Message01: IT LOOKS LIKE / MR. STERNWOOD IS / IN A DEEP SLEEP.[END]
    ; End script.
    db $ff

; Show the shorter sleeping-man description.
C1MrSternBrief:

C1Loc0_15:
    ; Show message 2.
    db $02, $47 ; Message Text11Message47: THE MAN IS IN AN / IMPOSSIBLY DEEP / SLEEP.[END]
    ; End script.
    db $ff

; Retain the original sleeping-person talk reply, including its regional wording.
TalkC1MrSternwood:

C1Sc0_7D:
    ; Show message 1.
    db $01, $ca ; Message Text10Message0A: THE WOMAN IS / SNORING SO LOUDLY,YOU KNOW SHE'S IN / A DEEP SLEEP.[END]
    ; End script.
    db $ff

; Show the original shared reply that the sleeping person cannot be woken.
HitC1Sleeper:

C1Sc0_7E:
    ; Show message 2.
    db $02, $36 ; Message Text11Message36: THAT PERSON MUST / REALLY BE IN A / DEEP SLEEP![PAGE] / NO MATTER HOW HARDYOU SHAKE, ...
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
    db $01, $cc ; Message Text10Message0C: IT'S A FULL LENGTHWALL MIRROR.[END]
    ; End script.
    db $ff

; Describe the expensive-looking lamp using the original regional wording.
LookC1FineLamp:

C1Sc0_80:
    ; Show message 1.
    db $01, $cd ; Message Text10Message0D: IT'S A RATHER / EXPENSIVE LOOKING / LAMP.[END]
    ; End script.
    db $ff

; Describe Miss Vickers bed using the original regional wording.
LookC1VickersBed:

C1Sc0_81:
    ; Show message 1.
    db $01, $ce ; Message Text10Message0E: IT'S A BED THAT / MISS VICKERS IS / LYING ON.[END]
    ; End script.
    db $ff

; Describe the sleeping woman and set the original inspection flag.
LookC1SleepWoman:

C1Sc0_82:
    ; Show message 1.
    db $01, $cf ; Message Text10Message0F: THE WOMAN IS A / REAL LOOKER![PAGE] / YOU KNOW YOU'VE / SEEN HER BEFORE. / AND FROM W...
    ; Set object flag.
    db $17, C1SleepWomanSeen
    ; End script.
    db $ff

; Show the original sleeping-woman talk reply.
TalkC1SleepWoman:

C1Sc0_83:
    ; Show message 1.
    db $01, $ca ; Message Text10Message0A: THE WOMAN IS / SNORING SO LOUDLY,YOU KNOW SHE'S IN / A DEEP SLEEP.[END]
    ; End script.
    db $ff

; Describe the flowing sewage.
LookC1Sewage:

C1Sc0_84:
    ; Show message 1.
    db $01, $23 ; Message Text0EMessage23: THE FLOWING SEWAGESMELLS TERRIBLE.[END]
    ; End script.
    db $ff

; Show the original approaching alligator reply.
LookC1Alligator:

C1Sc0_85:
    ; Show message 1.
    db $01, $34 ; Message Text0EMessage34: THE ALLIGATOR / HEADS STRAIGHT FORYOU![PAGE] / ITS HARD TO TELL, / BUT IT LOOKS / HUN...
    ; End script.
    db $ff

; Run the original alligator attack and death sequence.
C1AlligatorDeath:

C1Sc0_86:
    ; Show message 1.
    db $01, $37 ; Message Text0EMessage37: CRUNCH![PAGE] / THE POWERFUL JAWS / OF THE ALLIGATOR / SNAP DOWN AND / RATHER MESSILY...
    ; Finish Case I scene effect.
    db $5a, C1FxIdDefeat
    ; Show message 2.
    db $02, $62 ; Message Text11Message62: TOO BAD ACE! FROM / THE BEGINNING THE / ODDS WERE STACKED / AGAINST YOU![PAGE] / IT S...
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
    db $01, $89 ; Message Text0FMessage09: THROUGH THE WINDOWYOU CAN SEE / THE FAINT SHADOW / OF SOMEONE MOVING / ABOUT INSIDE.[...
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
    db $01, $8a ; Message Text0FMessage0A: THE BULLET HOLE / AND THE LACK OF / MOVEMENT TELLS / YOU THE THREAT / IS GONE.[END]
    ; End script.
    db $ff

; Set the door text name and show the original closed-door reply.
C1ShadowDoorShut:

C1Loc0_27:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $03 ; Message Text11Message03: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
    ; End script.
    db $ff

; Set the door text name and show the original open-door reply.
C1ShadowDoorOpen:

C1Loc0_28:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $01 ; Message Text11Message01: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Show the original cracked-wall description.
LookC1CrackedWall:

C1Sc0_88:
    ; Show message 2.
    db $02, $65 ; Message Text11Message65: THERE'S NOTHING / HERE EXCEPT FOR / CRACKED WALLS.[END]
    ; End script.
    db $ff

; Show the original wall cracks or marks description.
LookC1WallMarks:

C1Sc0_89:
    ; Show message 2.
    db $02, $66 ; Message Text11Message66: THERE ARE CRACKS / IN THE WALL.[END]
    ; End script.
    db $ff

; Show the shared original nothing-unusual reply.
C1NothingOddReply:

C1Sc0_8A:
    ; Show message 2.
    db $02, $70 ; Message Text11Message70: THERE DOESN'T SEEMTO BE ANYTHING / UNUSUAL.[END]
    ; End script.
    db $ff

; Describe the worn shelf using the original regional wording.
LookC1OldShelf:

C1Sc0_8B:
    ; Show message 1.
    db $01, $90 ; Message Text0FMessage10: IT'S A DILAPIDATEDSHELF.[END]
    ; End script.
    db $ff

; Show the original self-inspection reply.
LookC1Self:

C1Sc0_8C:
    ; Show message 2.
    db $02, $60 ; Message Text11Message60: YOU GLANCE OVER / AT YOURSELF, / AMAZED THAT YOU'VEMADE IT THIS FAR![END]
    ; End script.
    db $ff

; Show the original self-talk reply.
TalkC1Self:

C1Sc0_8D:
    ; Show message 2.
    db $02, $79 ; Message Text11Message79: TALKING TO / YOURSELF MIGHT BE / FUN BUT IT ISN'T / VERY HELPFUL![END]
    ; End script.
    db $ff

; Show the original self-hit reply without changing state.
HitC1Self:

C1Sc0_8E:
    ; Show message 2.
    db $02, $7a ; Message Text11Message7A: DON'T PAT YOURSELFON THE BACK YET.[END]
    ; End script.
    db $ff

; Show the original reply about newspapers for sale.
LookC1SaleNews:

C1Sc0_8F:
    ; Show message 2.
    db $02, $be ; Message Text0DMessage3E: THE NEWSPAPERS AREFOR SALE.[PAGE] / YOU'D FEEL GUILTY / READING ONE / WITHOUT PAYING....
    ; End script.
    db $ff
