
; Describe the first original ceiling light.
LookC1CeilLamp1:
; Confirmed script commands; unrecognized command sequences remain raw bytes.

C1Sc0_00:
    ; Show message 0.
    db $00, $03
    ; End script.
    db $ff

; Ask who the player is speaking to.
C1WhoTalkReply:

C1Sc0_01:
    ; Show message 0.
    db $00, $1b
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
    db $00, $1a
    ; End script.
    db $ff

; Show the original regional questioning reply.
C1SceneQuestion:

C1Sc0_04:
    ; Show message 0.
    db $00, $13
    ; End script.
    db $ff

; Describe the roll of toilet paper.
LookC1ToiletRoll:

C1Sc0_05:
    ; Show message 0.
    db $00, $04
    ; End script.
    db $ff

; Describe the other original ceiling light at its separate entry.
LookC1CeilLamp2:

C1Sc0_06:
    ; Show message 0.
    db $00, $20
    ; End script.
    db $ff

; Show the original regional cannot-do-this reply.
C1ActionRefusal:

C1Sc0_07:
    ; Show message 0.
    db $00, $14
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
    db $46, $05
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
    db $00, $25
    ; End script.
    db $ff

; Show the shared original broken-object inspection reply.
C1BrokenViewReply:

C1Loc0_01:
    ; Show message 2.
    db $02, $6a
    ; End script.
    db $ff

; Describe the first sink using the original regional wording.
LookC1Sink1:

C1Sc0_09:
    ; Show message 0.
    db $00, $21
    ; End script.
    db $ff

; Describe the first puddle and retain its original extra hint gate.
LookC1Puddle1:

C1Sc0_0A:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 0.
    db $00, $27
    ; Test object flag.
    db $16, C1WomenStallSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1ResumeTextEnd
    ; Show message 2.
    db $02, $38
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
    db $02, $3c
    ; End script.
    db $ff

; Describe the old ceiling light.
LookC1OldLamp:

C1Sc0_0C:
    ; Show message 0.
    db $00, $2f
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
    db $00, $2d
    ; End script.
    db $ff

; Describe the second sink using the original regional wording.
LookC1Sink2:

C1Sc0_0E:
    ; Show message 0.
    db $00, $30
    ; End script.
    db $ff

; Describe the second puddle using the original regional source of the water.
LookC1Puddle2:

C1Sc0_0F:
    ; Show message 0.
    db $00, $35
    ; End script.
    db $ff

; Describe the second unused toilet paper roll.
LookC1ToiletRoll2:

C1Sc0_10:
    ; Show message 0.
    db $00, $34
    ; End script.
    db $ff

; Describe the polished bar counter using the original regional wording.
LookC1BarCounter:

C1Sc0_11:
    ; Show message 0.
    db $00, $41
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
    db $00, $3c
    ; End script.
    db $ff

; Describe the spider web using the original regional wording.
LookC1SpiderWeb:

C1Sc0_13:
    ; Show message 0.
    db $00, $4d
    ; End script.
    db $ff

; Describe the cellar light.
LookC1CellarLamp:

C1Sc0_14:
    ; Show message 0.
    db $00, $4a
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
    db $00, $4b
    ; Set object flag.
    db $17, C1BarrelSeen
    ; End script.
    db $ff

; Show the shorter barrel description on later inspections.
C1BarrelAgain:

C1Loc0_02:
    ; Show message 0.
    db $00, $53
    ; End script.
    db $ff

; Describe the barrel spigot.
LookC1Spigot:

C1Sc0_16:
    ; Show message 0.
    db $00, $4c
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
    db $00, $4f
    ; End script.
    db $ff

; Identify the bottle that opened the secret door.
C1RackBottleKnown:

C1Loc0_03:
    ; Show message 2.
    db $02, $3e
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
    db $5a, $06
    ; Set state and refresh.
    db $36, $08
    ; Show message 0.
    db $00, $51
    ; Set object flag.
    db $17, C1RackBottlePressed
    ; End script.
    db $ff

; Repeat the rack effect and passage reply without setting the flag again.
C1RackOpenAgain:

C1Loc0_04:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Set state and refresh.
    db $36, $08
    ; Show message 2.
    db $02, $3f
    ; End script.
    db $ff

; Describe the bare light bulb using the original regional wording.
LookC1BareBulb:

C1Sc0_19:
    ; Show message 0.
    db $00, $57
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
    db $00, $5f
    ; End script.
    db $ff

; Show the shorter roulette description.
C1RouletteAgain:

C1Loc0_05:
    ; Show message 0.
    db $00, $66
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
    db $00, $60
    ; Show message 2.
    db $02, $5f
    ; Set text name 1.
    db $38, $01
    ; Show message 2.
    db $02

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
    db $00, $60
    ; End script.
    db $ff

; Show the original reminder that the slot machine needs a coin.
C1SlotNeedsCoin:

C1Sc0_1C:
    ; Show message 2.
    db $02, $64
    ; End script.
    db $ff

; Open the elevator doors unless their original state is already set.
OpenC1LiftDoor:

C1Sc0_1D:
    ; Test state bit.
    db $2e, $0c
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftDoorOpen
    ; Show message 2.
    db $02, $67
    ; Set state and refresh.
    db $33, $0c
    ; End script.
    db $ff

; Show the original reply that the door is already open.
C1LiftDoorOpen:

C1Loc0_18:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

; Describe the button for the top floor.
LookC1TopButton:

C1Sc0_1E:
    ; Show message 0.
    db $00, $6c
    ; End script.
    db $ff

; Handle the top-floor button and preserve the same-floor reply.
RideC1LiftTop:

C1Sc0_1F:
    ; Test current room.
    db $19, $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftTopFrom0A
    ; Test current room.
    db $19, $3f
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftTopFrom3F
    ; Clear state and refresh.
    db $34, $0f
    ; Show message 0.
    db $00, $71
    ; Set state and refresh.
    db $33, $0f
    ; End script.
    db $ff

; Clear the original room 0A door state before the top-floor arrival.
C1LiftTopFrom0A:

C1Loc0_19:
    ; Clear state and refresh.
    db $34, $0c

; Enter room 40, show the lift travel reply, and open its original door state.
C1LiftTopArrival:

C1Loc0_1A:
    ; Set current room.
    db $35, $40
    ; Show message 0.
    db $00, $70
    ; Set state and refresh.
    db $33, $0f
    ; End script.
    db $ff

; Clear the original room 3F door state before the top-floor arrival.
C1LiftTopFrom3F:

C1Loc0_1B:
    ; Clear state and refresh.
    db $34, $0e
    ; Jump to script.
    db $1c
    dw C1LiftTopArrival

; Describe the unmarked button with its original shared reply.
LookC1BlankButton:

C1Sc0_20:
    ; Show message 0.
    db $00, $6d
    ; End script.
    db $ff

; Choose the room $3f lift path and clear the source door state.
C1LiftToRoom3F:

C1Sc0_21:
    ; Test current room.
    db $19, $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Lift0ATo3F
    ; Test current room.
    db $19, $3f
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftReopen3F
    ; Clear state and refresh.
    db $34, $0f

; Set room $3f, show the travel reply, and open state $0e.
C1LiftArrive3F:

C1Loc0_1C:
    ; Set current room.
    db $35, $3f
    ; Show message 0.
    db $00, $70
    ; Set state and refresh.
    db $33, $0e
    ; End script.
    db $ff

; Clear source door state $0c before the room $3f journey.
C1Lift0ATo3F:

C1Loc0_1D:
    ; Clear state and refresh.
    db $34, $0c
    ; Jump to script.
    db $1c
    dw C1LiftArrive3F

; Close and reopen state $0e while staying on the current floor.
C1LiftReopen3F:

C1Loc0_1E:
    ; Clear state and refresh.
    db $34, $0e
    ; Show message 0.
    db $00, $71
    ; Set state and refresh.
    db $33, $0e
    ; End script.
    db $ff

; Choose the room $0a lift path and clear the source door state.
C1LiftToRoom0A:

C1Sc0_22:
    ; Test current room.
    db $19, $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftReopen0A
    ; Test current room.
    db $19, $3f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Lift3FTo0A
    ; Clear state and refresh.
    db $34, $0f
    ; Jump to script.
    db $1c
    dw C1LiftArrive0A

; Close and reopen state $0c while staying on the current floor.
C1LiftReopen0A:

C1Loc0_1F:
    ; Clear state and refresh.
    db $34, $0c
    ; Show message 0.
    db $00, $71
    ; Set state and refresh.
    db $33, $0c
    ; End script.
    db $ff

; Clear source door state $0e before the room $0a journey.
C1Lift3FTo0A:

C1Loc0_20:
    ; Clear state and refresh.
    db $34, $0e

; Set room $0a, show the travel reply, and open state $0c.
C1LiftArrive0A:

C1Loc0_21:
    ; Set current room.
    db $35, $0a
    ; Show message 0.
    db $00, $70
    ; Set state and refresh.
    db $33, $0c
    ; End script.
    db $ff

; Describe the lowest-floor button using the original regional wording.
LookC1LowButton:

C1Sc0_23:
    ; Show message 0.
    db $00, $6e
    ; End script.
    db $ff

; Clear the source door state before the original sewer exit path.
RideC1LiftSewer:

C1Sc0_24:
    ; Test current room.
    db $19, $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftSewerFrom0A
    ; Test current room.
    db $19, $3f
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftSewerFrom3F
    ; Clear state and refresh.
    db $34, $0f

; Prepare the original target, flag, and conditional move to room 38 before its sewer reply.
C1LiftSewerMove:

C1Loc0_22:
    ; Show message 0.
    db $00, $70
    ; Set first item type and ID.
    db $5c, $05, $4c
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $38
    ; Show message 2.
    db $02, $bb
    ; End script.
    db $ff

; Clear the original room 0A door state before the sewer exit path.
C1LiftSewerFrom0A:

C1Loc0_23:
    ; Clear state and refresh.
    db $34, $0c
    ; Jump to script.
    db $1c
    dw C1LiftSewerMove

; Clear the original room 3F door state before the sewer exit path.
C1LiftSewerFrom3F:

C1Loc0_24:
    ; Clear state and refresh.
    db $34, $0e
    ; Jump to script.
    db $1c
    dw C1LiftSewerMove

; Describe the elevator button using the original regional wording.
LookC1LiftButton:

C1Sc0_25:
    ; Show message 0.
    db $00, $79
    ; End script.
    db $ff

; Open the top-floor elevator doors unless their original state is already set.
OpenC1LiftTopDoor:

C1Sc0_26:
    ; Test state bit.
    db $2e, $0f
    ; Branch if result bit 0 is set.
    db $04
    dw C1LiftTopDoorOpen
    ; Show message 2.
    db $02, $67
    ; Set state and refresh.
    db $33, $0f
    ; End script.
    db $ff

; Show the original reply that this elevator door is already open.
C1LiftTopDoorOpen:

C1Loc0_25:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $01
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
    db $00, $73
    ; End script.
    db $ff

; Show the shorter unusual-chair description.
C1ChairBrief:

C1Loc0_07:
    ; Show message 2.
    db $02, $4d
    ; End script.
    db $ff

; Describe the disconnected telephone receiver using the original regional wording.
LookC1LooseHandset:

C1Sc0_28:
    ; Show message 2.
    db $02, $83
    ; End script.
    db $ff

; Describe the old telephone and its disconnected receiver cord.
LookC1OldPhone:

C1Sc0_29:
    ; Show message 2.
    db $02, $86
    ; End script.
    db $ff

; Show the first plain window inspection reply.
LookC1PlainWin1:

C1Sc0_2A:
    ; Show message 2.
    db $02, $98
    ; End script.
    db $ff

; Describe the small desk lamp.
LookC1DeskLamp:

C1Sc0_2B:
    ; Show message 2.
    db $02, $9a
    ; End script.
    db $ff

; Describe the typewriter using the original regional wording.
LookC1Typewriter:

C1Sc0_2C:
    ; Show message 2.
    db $02, $9b
    ; End script.
    db $ff

; Retain the text hold and both original telephone inspection replies.
LookC1Phone1:

C1Sc0_2D:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $9c
    ; Show message 2.
    db $02, $70
    ; End script.
    db $ff

; Describe the first boxer poster using the original regional name.
LookC1BoxPoster1:

C1Sc0_2E:
    ; Show message 2.
    db $02, $a4
    ; End script.
    db $ff

; Describe the second boxer poster using the original regional name.
LookC1BoxPoster2:

C1Sc0_2F:
    ; Show message 2.
    db $02, $a5
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
    db $02, $a6
    ; End script.
    db $ff

; Run effect $0b when the Ace poster's flag $25 branch is selected.
C1AcePosterFx0B:

C1Loc0_08:
    ; Run scene effect.
    db $46, $0b
    ; End script.
    db $ff

; Run effect $0a when the Ace poster's flag $17 branch is selected.
C1AcePosterFx0A:

C1Loc0_09:
    ; Run scene effect.
    db $46, $0a
    ; End script.
    db $ff

; Show the second plain window inspection reply.
LookC1PlainWin2:

C1Sc0_31:
    ; Show message 2.
    db $02, $98
    ; End script.
    db $ff

; Describe the luxury car using the original regional wording.
LookC1LuxuryCar:

C1Sc0_32:
    ; Show message 2.
    db $02, $b4
    ; End script.
    db $ff

; Describe the newsstand using the original regional wording.
LookC1Newsstand:

C1Sc0_33:
    ; Show message 2.
    db $02, $c1
    ; End script.
    db $ff

; Describe the newspaper seller using the original regional wording.
LookC1NewsBoy:

C1Sc0_34:
    ; Show message 2.
    db $02, $c0
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
    db $02, $c3
    ; End script.
    db $ff

; Show the newspaper seller warning the player to leave.
C1NewsBoyWarn:

C1Loc0_0A:
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

; Show the original failed-attack reply without changing player state.
HitC1NewsBoy:

C1Sc0_36:
    ; Show message 2.
    db $02, $c9
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
    db $02, $cc
    ; End script.
    db $ff

; Describe the street lamp using the original regional wording.
LookC1StreetLamp:

C1Sc0_38:
    ; Show message 2.
    db $02, $d7
    ; End script.
    db $ff

; Run the original mugger shooting and death sequence.
C1MuggerShoots:

C1Sc0_39:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $f0
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
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
    db $5a, $06
    ; Show message 1.
    db $01, $ef
    ; Set first item type and ID.
    db $5c, $05, $19
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $11
    ; Show message 2.
    db $02, $b9
    ; Set object flag.
    db $17, C1MuggerHit1
    ; End script.
    db $ff

; Run the fatal shooting after the original punch encounters are exhausted.
C1MuggerPunchDeath:

C1Loc0_0B:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $f7
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
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
    db $5a, $06
    ; Show message 1.
    db $01, $f5
    ; Set first item type and ID.
    db $5c, $05, $17
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $12
    ; Show message 2.
    db $02, $c2
    ; Set object flag.
    db $17, C1MuggerHit3
    ; End script.
    db $ff

; Run the second successful punch and conditional move to Peoria Street.
C1MuggerPunch2:

C1Loc0_0D:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Show message 1.
    db $01, $f2
    ; Set first item type and ID.
    db $5c, $05, $1d
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $14
    ; Set object flag.
    db $17, C1MuggerHit2
    ; Test object flag.
    db $16, C1PeoriaStopKnown
    ; Branch if result bit 0 is clear.
    db $05
    dw C1MuggerPeoriaCab
    ; Show message 2.
    db $02, $d0
    ; End script.
    db $ff

; Show the blue cab at Peoria, append its original list value, and mark it shown.
C1MuggerPeoriaCab:

C1Loc0_29:
    ; Set text name 0.
    db $1e, $b1
    ; Show message 2.
    db $02, $0b
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
    db $5a, $06
    ; Show message 1.
    db $01, $e4
    ; Clear Case I cash and draw room $16.
    db $63
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $e5
    ; Show message 1.
    db $01, $e7
    ; End script.
    db $ff

; Run the failed punch, clear cash, and show the original recovery text.
C1MuggerRobFight:

C1Sc0_3C:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Show message 1.
    db $01, $e2
    ; Clear Case I cash and draw room $16.
    db $63
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $e5
    ; Show message 1.
    db $01, $e7
    ; End script.
    db $ff

; Describe the fire escape that cannot be reached from the street.
LookC1HighEscape:

C1Sc0_3D:
    ; Show message 2.
    db $02, $d3
    ; End script.
    db $ff

; Describe the rusty fire escape.
LookC1RustEscape:

C1Sc0_3E:
    ; Show message 2.
    db $02, $ad
    ; End script.
    db $ff

; Describe the ladder ending above the alley.
LookC1EscapeDrop:

C1Sc0_3F:
    ; Show message 2.
    db $02, $af
    ; End script.
    db $ff

; Run the original shooting, wait, and death sequence for the armed woman.
C1LadyShoots:

C1Sc0_40:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Finish Case I scene effect.
    db $5a, $16
    ; Show message 2.
    db $02, $e6
    ; Wait sixty ticks.
    db $68
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Run the punch and original flag update, then conditionally move to the fallen woman scene.
HitC1ArmedLady:

C1Sc0_41:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Show message 2.
    db $02, $e7
    ; Set object flag.
    db $17, C1ArmedLadyDown
    ; Set first item type and ID.
    db $5c, $05, $19
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $21
    ; Show message 2.
    db $02, $e8
    ; End script.
    db $ff

; Describe the unconscious woman using the original regional wording.
LookC1FallenLady:

C1Sc0_42:
    ; Show message 2.
    db $02, $e9
    ; End script.
    db $ff

; Show the shared original reply that this action cannot be done here.
C1CantDoHere:

C1Sc0_43:
    ; Show message 2.
    db $02, $37
    ; End script.
    db $ff

; Describe the street informant using the original regional wording.
LookC1Bum:

C1Sc0_44:
    ; Show message 2.
    db $02, $dc
    ; End script.
    db $ff

; Show the original demand for fifty cents.
TalkC1Bum:

C1Sc0_45:
    ; Show message 2.
    db $02, $e0
    ; End script.
    db $ff

; Run the original punch effect and police-siren reply.
HitC1Bum:

C1Sc0_46:
    ; Run scene effect.
    db $46, $06
    ; Show message 2.
    db $02, $df
    ; End script.
    db $ff

; Describe the gas pedal.
LookC1GasPedal:

C1Sc0_47:
    ; Show message 1.
    db $01, $01
    ; End script.
    db $ff

; Describe the brake pedal.
LookC1Brake:

C1Sc0_48:
    ; Show message 2.
    db $02, $51
    ; End script.
    db $ff

; Describe the clutch.
LookC1Clutch:

C1Sc0_49:
    ; Show message 2.
    db $02, $5c
    ; End script.
    db $ff

; Describe the steering wheel and its leather cover.
LookC1Steering:

C1Sc0_4A:
    ; Show message 1.
    db $01, $04
    ; End script.
    db $ff

; Describe the ignition using the original regional wording.
LookC1Ignition:

C1Sc0_4B:
    ; Show message 1.
    db $01, $05
    ; End script.
    db $ff

; Show the second luxury car description without merging the original entries.
LookC1LuxuryCar2:

C1Sc0_4C:
    ; Show message 2.
    db $02, $f3
    ; End script.
    db $ff

; Describe the hood release using the original regional wording.
LookC1HoodRelease:

C1Sc0_4D:
    ; Show message 1.
    db $01, $08
    ; End script.
    db $ff

; Run the original hood explosion and death sequence.
C1HoodBombDeath:

C1Sc0_4E:
    ; Finish Case I scene effect.
    db $5a, $08
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $0d
    ; Show message 1.
    db $01, $0e
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
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
    db $02, $f4
    ; Show message 2.
    db $02, $21
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
    db $02, $fc
    ; End script.
    db $ff

; Show the alternate description and set its original inspection flag.
C1SternwoodView:

C1Loc0_0F:
    ; Show message 2.
    db $02, $21
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
    db $02, $fb
    ; End script.
    db $ff

; Show the original action refusal without changing the woman state.
C1WomanTalkRefuse:

C1Loc0_10:
    ; Show message 0.
    db $00, $14
    ; End script.
    db $ff

; Show the original ineffective-punch reply without changing state.
HitC1Sternwood:

C1Sc0_51:
    ; Show message 2.
    db $02, $ff
    ; End script.
    db $ff

; Describe the gun shop clerk using the original regional wording.
LookC1GunClerk:

C1Sc0_52:
    ; Show message 1.
    db $01, $11
    ; End script.
    db $ff

; Show the clerk greeting and retain the regional price details.
TalkC1GunClerk:

C1Sc0_53:
    ; Show message 1.
    db $01, $1e
    ; End script.
    db $ff

; Run the original clerk shooting and death sequence.
C1GunClerkShoots:

C1Sc0_54:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $1d
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

; Describe the original twenty-dollar special sign.
LookC1GunPrice:

C1Sc0_55:
    ; Show message 1.
    db $01, $14
    ; End script.
    db $ff

; Show the first cab driver inspection reply.
LookC1CabDriver1:

C1Sc0_56:
    ; Show message 1.
    db $01, $3d
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
    db $01, $3a
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
    db $00, $64
    ; Play pick effect.
    db $6a
    ; Show message 1.
    db $01, $3b
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
    db $02, $c8
    ; Restore text lists and resume text.
    db $44
    ; End script.
    db $ff

; Show the first cab driver demand for repayment.
C1Cab1DebtReply:

C1Loc0_11:
    ; Show message 2.
    db $02, $6e
    ; End script.
    db $ff

; Show the shared original reply about striking the bulletproof glass.
HitC1CabGlass:

C1Sc0_58:
    ; Show message 2.
    db $02, $34
    ; End script.
    db $ff

; Describe the cab fare meter.
LookC1FareMeter:

C1Sc0_59:
    ; Show message 2.
    db $02, $33
    ; End script.
    db $ff

; Describe the first fare slot.
LookC1FareSlot1:

C1Sc0_5A:
    ; Show message 1.
    db $01, $3e
    ; End script.
    db $ff

; Show the medicine-immunity reply used by the original action table.
C1MedicineImmuneReply:

C1Sc0_5B:
    ; Show message 2.
    db $02, $0d
    ; End script.
    db $ff

; Show the second cab driver inspection reply.
LookC1CabDriver2:

C1Sc0_5C:
    ; Show message 1.
    db $01, $43
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
    db $01, $46
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
    db $00, $67
    ; Play pick effect.
    db $6a
    ; Show message 1.
    db $01, $45
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
    db $02, $d2
    ; Restore text lists and resume text.
    db $44
    ; End script.
    db $ff

; Show the second cab driver demand for repayment using the regional wording.
C1Cab2DebtReply:

C1Loc0_12:
    ; Show message 2.
    db $02, $6f
    ; End script.
    db $ff

; Describe the second fare slot without merging the original entries.
LookC1FareSlot2:

C1Sc0_5E:
    ; Show message 1.
    db $01, $3e
    ; End script.
    db $ff

; Describe the building using the original regional wording.
LookC1Building:

C1Sc0_5F:
    ; Show message 1.
    db $01, $48
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
    db $01, $4c
    ; Show message 2.
    db $02, $40
    ; End script.
    db $ff

; Show the shorter outer slot description.
C1OuterSlotBrief:

C1Loc0_13:
    ; Show message 1.
    db $01, $4c
    ; End script.
    db $ff

; Describe the inner slot by comparison with the outer slot.
LookC1InnerSlot:

C1Sc0_61:
    ; Show message 1.
    db $01, $50
    ; End script.
    db $ff

; Describe the chandelier using the original regional wording.
LookC1Chandelier:

C1Sc0_62:
    ; Show message 1.
    db $01, $54
    ; End script.
    db $ff

; Describe the comfortable chair using the original regional wording.
LookC1FineChair:

C1Sc0_63:
    ; Show message 1.
    db $01, $56
    ; End script.
    db $ff

; Describe the leather-covered sofa.
LookC1LeatherSofa:

C1Sc0_64:
    ; Show message 1.
    db $01, $55
    ; End script.
    db $ff

; Describe the decorative fireplace using the original regional explanation.
LookC1Fireplace:

C1Sc0_65:
    ; Show message 1.
    db $01, $58
    ; End script.
    db $ff

; Describe the bookcase filled with thick books.
LookC1Bookcase:

C1Sc0_66:
    ; Show message 1.
    db $01, $5d
    ; End script.
    db $ff

; Describe the artwork using the original regional wording.
LookC1RoomArt:

C1Sc0_67:
    ; Show message 1.
    db $01, $57
    ; End script.
    db $ff

; Describe the small low table.
LookC1LowTable:

C1Sc0_68:
    ; Show message 1.
    db $01, $59
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
    db $01, $5b
    ; End script.
    db $ff

; Describe the cot-like bed using the original regional wording.
LookC1CotBed:

C1Sc0_6A:
    ; Show message 1.
    db $01, $6b
    ; End script.
    db $ff

; Show the first window reply using the original regional wording.
LookC1GrimyWin1:

C1Sc0_6B:
    ; Show message 1.
    db $01, $91
    ; End script.
    db $ff

; Describe the bungalow.
LookC1Bungalow:

C1Sc0_6C:
    ; Show message 2.
    db $02, $2c
    ; End script.
    db $ff

; Describe the other building using the original regional wording.
LookC1PlainBuilding:

C1Sc0_6D:
    ; Show message 1.
    db $01, $74
    ; End script.
    db $ff

; Describe the eye chart using the original regional wording.
LookC1EyeChart:

C1Sc0_6E:
    ; Show message 1.
    db $01, $7d
    ; End script.
    db $ff

; Describe the medicine cabinet using the original regional wording.
LookC1DrugCabinet:

C1Sc0_6F:
    ; Show message 1.
    db $01, $7b
    ; End script.
    db $ff

; Show the second window reply without merging the original entries.
LookC1GrimyWin2:

C1Sc0_70:
    ; Show message 1.
    db $01, $91
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
    db $01, $8e
    ; End script.
    db $ff

; Show the alternate dead-man reply using the original regional wording.
C1DeadManAltView:

C1Loc0_14:
    ; Show message 1.
    db $01, $94
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
    db $01, $a0
    ; End script.
    db $ff

; Use the knocker, retain the conditional move and two waits, then show the butler reply.
KnockC1Mansion:

C1Sc0_74:
    ; Show message 1.
    db $01, $a3
    ; Set first item type and ID.
    db $5c, $05, $49
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Set state bit.
    db $2f, $3b
    ; Move to the room argument if the selected state permits.
    db $06, $32
    ; Wait sixty ticks.
    db $68
    ; Wait sixty ticks.
    db $68
    ; Show message 1.
    db $01, $a4
    ; End script.
    db $ff

; Describe the butler using the original regional wording.
LookC1Butler:

C1Sc0_75:
    ; Show message 1.
    db $01, $a5
    ; End script.
    db $ff

; Show the butler refusal and retain the original conditional move and door-slam reply.
TalkC1Butler:

C1Sc0_76:
    ; Show message 2.
    db $02, $35
    ; Set first item type and ID.
    db $5c, $05, $49
    ; Set object flag.
    db $17, C1SkipNextSnapshot
    ; Move to the room argument if the selected state permits.
    db $06, $31
    ; Show message 1.
    db $01, $aa
    ; End script.
    db $ff

; Run the punch effect, set the original flag, and clear the original visible state.
HitC1Butler:

C1Sc0_77:
    ; Finish Case I scene effect.
    db $5a, $06
    ; Show message 1.
    db $01, $ad
    ; Set object flag.
    db $17, C1ButlerDown
    ; Clear state and refresh.
    db $34, $3b
    ; End script.
    db $ff

; Describe the large bright chandelier.
LookC1BigChandelier:

C1Sc0_78:
    ; Show message 1.
    db $01, $a8
    ; End script.
    db $ff

; Describe the table using the original regional wording.
LookC1FineTable:

C1Sc0_79:
    ; Show message 1.
    db $01, $b7
    ; End script.
    db $ff

; Describe the lamp using the original regional wording.
LookC1RoomLamp:

C1Sc0_7A:
    ; Show message 1.
    db $01, $be
    ; End script.
    db $ff

; Describe Mr. Sternwood bed using the original regional wording.
LookC1SternBed:

C1Sc0_7B:
    ; Show message 1.
    db $01, $bd
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
    db $01, $c1
    ; End script.
    db $ff

; Show the shorter sleeping-man description.
C1MrSternBrief:

C1Loc0_15:
    ; Show message 2.
    db $02, $47
    ; End script.
    db $ff

; Retain the original sleeping-person talk reply, including its regional wording.
TalkC1MrSternwood:

C1Sc0_7D:
    ; Show message 1.
    db $01, $ca
    ; End script.
    db $ff

; Show the original shared reply that the sleeping person cannot be woken.
HitC1Sleeper:

C1Sc0_7E:
    ; Show message 2.
    db $02, $36
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
    db $01, $cc
    ; End script.
    db $ff

; Describe the expensive-looking lamp using the original regional wording.
LookC1FineLamp:

C1Sc0_80:
    ; Show message 1.
    db $01, $cd
    ; End script.
    db $ff

; Describe Miss Vickers bed using the original regional wording.
LookC1VickersBed:

C1Sc0_81:
    ; Show message 1.
    db $01, $ce
    ; End script.
    db $ff

; Describe the sleeping woman and set the original inspection flag.
LookC1SleepWoman:

C1Sc0_82:
    ; Show message 1.
    db $01, $cf
    ; Set object flag.
    db $17, C1SleepWomanSeen
    ; End script.
    db $ff

; Show the original sleeping-woman talk reply.
TalkC1SleepWoman:

C1Sc0_83:
    ; Show message 1.
    db $01, $ca
    ; End script.
    db $ff

; Describe the flowing sewage.
LookC1Sewage:

C1Sc0_84:
    ; Show message 1.
    db $01, $23
    ; End script.
    db $ff

; Show the original approaching alligator reply.
LookC1Alligator:

C1Sc0_85:
    ; Show message 1.
    db $01, $34
    ; End script.
    db $ff

; Run the original alligator attack and death sequence.
C1AlligatorDeath:

C1Sc0_86:
    ; Show message 1.
    db $01, $37
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
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
    db $01, $89
    ; End script.
    db $ff

; Retain the original open, closed, and absent-threat reply gates.
C1ShadowDoorState:

C1Loc0_16:
    ; Test state bit.
    db $2e, $38
    ; Branch if result bit 0 is set.
    db $04
    dw C1ShadowDoorOpen
    ; Test object flag.
    db $16, C1AceOfficeRoomSeen
    ; Branch if result bit 0 is set.
    db $04
    dw C1ShadowDoorShut
    ; Show message 1.
    db $01, $8a
    ; End script.
    db $ff

; Set the door text name and show the original closed-door reply.
C1ShadowDoorShut:

C1Loc0_27:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

; Set the door text name and show the original open-door reply.
C1ShadowDoorOpen:

C1Loc0_28:
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

; Show the original cracked-wall description.
LookC1CrackedWall:

C1Sc0_88:
    ; Show message 2.
    db $02, $65
    ; End script.
    db $ff

; Show the original wall cracks or marks description.
LookC1WallMarks:

C1Sc0_89:
    ; Show message 2.
    db $02, $66
    ; End script.
    db $ff

; Show the shared original nothing-unusual reply.
C1NothingOddReply:

C1Sc0_8A:
    ; Show message 2.
    db $02, $70
    ; End script.
    db $ff

; Describe the worn shelf using the original regional wording.
LookC1OldShelf:

C1Sc0_8B:
    ; Show message 1.
    db $01, $90
    ; End script.
    db $ff

; Show the original self-inspection reply.
LookC1Self:

C1Sc0_8C:
    ; Show message 2.
    db $02, $60
    ; End script.
    db $ff

; Show the original self-talk reply.
TalkC1Self:

C1Sc0_8D:
    ; Show message 2.
    db $02, $79
    ; End script.
    db $ff

; Show the original self-hit reply without changing state.
HitC1Self:

C1Sc0_8E:
    ; Show message 2.
    db $02, $7a
    ; End script.
    db $ff

; Show the original reply about newspapers for sale.
LookC1SaleNews:

C1Sc0_8F:
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff
