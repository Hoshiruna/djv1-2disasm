
; Show the shared original cash and coin description.
LookC2Money:
; Confirmed script commands; unrecognized command sequences remain raw bytes.

C2Sc3_00:
    ; Show message 1.
    db $01, $65
    ; End script.
    db $ff

; Show the original .38 ammunition description.
LookC2Bullet:

C2Sc3_01:
    ; Show message 1.
    db $01, $7f
    ; End script.
    db $ff

; Show the original D-cell description.
LookC2Cell:

C2Sc3_02:
    ; Show message 1.
    db $01, $78
    ; End script.
    db $ff

; Show the original five-dollar chip description.
LookC2Chip:

C2Sc3_03:
    ; Show message 0.
    db $00, $f5
    ; End script.
    db $ff

; Read the original hotel and casino embroidery on the towel.
LookC2Towel:

C2Sc3_04:
    ; Show message 0.
    db $00, $18
    ; End script.
    db $ff

; Use the original visible-button path or fall through to alternate target selection.
UseLift4Button:

C2Sc3_05:
    ; Test object visibility.
    db $28, $0f
    ; Branch if result bit 0 is set.
    db $03
    dw PressLift4

; Choose the alternate target for a carried item.
UseC2Item:

C2Sc3_06:
    ; Choose alternate target; selected input runs the following script.
    db $2d

; Dispatch the original item use by alternate target type and ID.
MatchC2Item:

C2Loc3_00:
    ; Match alternate item against type, ID and script target rows.
    db $32, $00, $05
    dw MatchTowelWater
    db $00, $18
    dw MatchChipTable
    db $00, $1a

jr_007_598d:
    dw UseItemDealer
    db $00, $1b
    dw UseItemDealer
    db $00, $1f
    dw MatchLiftButton
    db $00, $43
    dw MatchFareItems
    db $00

jr_007_599c:
    db $44
    dw MatchTrainSharp
    db $00, $45
    dw UseItemConductor
    db $00, $46
    dw MatchTrainSharp
    db $00, $50
    dw UseItemC2Dog
    db $00, $70
    dw MatchKnifeBoards
    db $00, $7a
    dw UseItemHobo
    db $00, $83
    dw MatchClerkItem
    db $00, $93
    dw MatchDartBoard
    db $01, $0c
    dw MatchDeskRing
    db $01, $03
    dw MatchSlotCoin
    db $01, $04
    dw MatchSlotCoin
    db $02, $00
    dw MatchItemWasher
    db $03, $4b
    dw TryRingOnMat
    db $04, $09

jr_007_59d1:
    dw MatchGunBullet
    db $04, $0a
    dw MatchLampCell
    db $04, $11
    dw MatchBagKnife
    db $05, $47
    dw MatchKnifeCab
    db $05, $5b
    dw KnifeJoeLock
    db $05, $66
    dw KnifeSugarLock
    db $00, $a6
    dw MatchSelfItem
    db $00, $16
    dw UseItemCashier
    db $00, $17
    dw UseItemCashier
    db $00, $37
    dw UseItemSeller
    db $00, $3c
    dw UseItemAttendant
    db $00, $4f
    dw UseItemNewsMan
    db $00, $55
    dw UseItemCabDriver
    db $02, $03
    dw MatchDeskStore
    db $fe, $fe
    dw MatchPencilUse

; Match the towel before its original soaking and face-dabbing reply.
MatchTowelWater:

C2Loc3_01:
    ; Test packed item argument and branch on inequality.
    db $56, $05
    ; Target NoC2ItemEffect; retain the interior label.
    db $e5

jr_007_5a0e:
    db $66
    ; Show message 0.
    db $00, $22
    ; End script.
    db $ff

; Match the chip before the original blackjack entry.
MatchChipTable:

C2Loc3_02:
    ; Test packed item argument and branch on equality.
    db $46, $04
    dw PlayC2Blackjack
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Match the ordinary item used on the dealer.
UseItemDealer:

C2Loc3_03:
    ; Test packed item argument and branch on equality.
    db $46, $07
    dw ShowRudyClip
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    dw BottleDealer
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw KnifeDealer
    ; Test packed item argument and branch on equality.
    db $46, C2Opener

jr_007_5a27:
    dw AttackC2Dealer
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw DartDealerReply
    ; Test packed item argument and branch on equality.
    db $46, $04
    ; Target PlayC2Blackjack; retain the interior label.
    db $53

jr_007_5a30:
    db $5a
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Show the old clipping and mark Rudy recognizing Ace.
ShowRudyClip:

C2Loc3_04:
    ; Test object flag and branch when set.
    db $08, C2RudyKnows
    dw RudyClipAgain
    ; Show message 0.
    db $00, $8d
    ; Run map pulse animation.
    db $75
    ; Set state bit.
    db $0f, $73
    ; Show message 0.
    db $00, $8e
    ; Set object flag.
    db $09, C2RudyKnows
    ; End script.
    db $ff

; Show Rudy reminiscing after the clipping has been shown.
RudyClipAgain:

C2Loc3_05:
    ; Show message 0.
    db $00, $8f
    ; End script.
    db $ff

; Select the known Rudy or generic dealer name for the dart refusal.
DartDealerReply:

C2Loc3_06:
    ; Test object flag and branch when set.
    db $08, C2RudyKnows
    dw DartRudyReply
    ; Set text name 0.
    db $30, $bd
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

; Name Rudy for the original dart refusal.
DartRudyReply:

C2Loc3_07:
    ; Set text name 0.
    db $30, $be
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

; Blink room objects and start blackjack.
PlayC2Blackjack:

C2Loc3_08:
    ; Blink objects twice.
    db $7a
    ; Run blackjack.
    db $57
    ; End script.
    db $ff

; Require a broken bottle before attacking the dealer.
BottleDealer:

C2Loc3_09:
    ; Test object flag and branch when clear.
    db $54, C2BottleBroken
    dw NoC2ItemEffect
    ; Jump to script.
    db $07
    dw AttackC2Dealer

; Require an open knife before attacking the dealer.
KnifeDealer:

C2Loc3_0A:
    ; Test object flag and branch when clear.
    db $54, C2KnifeOpen
    dw NoC2ItemEffect
    ; Jump to script.
    db $07
    dw AttackC2Dealer

; Choose the dealer name for the attack response.
AttackC2Dealer:

C2Loc3_0B:
    ; Test object flag and branch when set.
    db $08, C2RudyKnows
    dw AttackKnownRudy
    ; Set text name 0.
    db $30, $bd

; Run the attack response and set state 06 if it was clear.
DealerAttackCue:

C2Loc3_0C:
    ; Call script.
    db $05
    dw CasinoAttackCue
    ; Branch if result bit 0 is set.
    db $03
    dw EvictDealerAttack
    ; Set state bit.
    db $0f, $06

; Prepare the move from room 05 to 11 and enter the guard response.
EvictDealerAttack:

C2Loc3_0D:
    ; Prepare room move and read two room arguments.
    db $3b, $05, $11
    ; Jump to script in bank $08.
    db $7d
    dw CasinoEjectReply
    db $08

; Name Rudy before the shared dealer attack response.
AttackKnownRudy:

C2Loc3_0E:
    ; Hold text.
    db $2e
    ; Set text name 0.
    db $30, $be
    ; Jump to script.
    db $07
    dw DealerAttackCue

; Match the license, two nametags, and attack items offered to the clerk.
MatchClerkItem:

C2Loc3_0F:
    ; Test packed item argument and branch on equality.
    db $46, $0c
    dw ShowClerkID
    ; Test packed item argument and branch on equality.
    db $46, $51
    dw GiveClerkTag1
    ; Test packed item argument and branch on equality.
    db $46, $52
    dw GiveClerkTag2
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    ; Target BottleWorkerCheck; retain the interior label.
    db $dd

jr_007_5a8e:
    db $5a
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw KnifeWorkerCheck
    ; Test packed item argument and branch on equality.
    db $46, C2Opener
    dw WorkerAlarmEnd
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw DartWorkerReply
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Show the license and select the uniform or detective refusal dialogue.
ShowClerkID:

C2Loc3_10:
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw ClerkNoBody
    ; Test object flag and branch when set.
    db $08, C2ClerkSawID
    dw ClerkNeedsUni
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $90
    ; Set object flag.
    db $09, C2ClerkSawID

; Explain that only authorized uniforms may enter the back room.
ClerkNeedsUni:

C2Loc3_11:
    ; Show message 2.
    db $02, $91
    ; End script.
    db $ff

; Return the license and report no body with that name.
ClerkNoBody:

C2Loc3_12:
    ; Show message 2.
    db $02, $92
    ; End script.
    db $ff

; Require the uniform, report no belongings, and consume the first nametag.
GiveClerkTag1:

C2Loc3_13:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw ClerkCallsPolice
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $93
    ; Show message 2.
    db $02, $94
    ; Set object flag.
    db $09, C2Tag1Given
    ; Jump to script.
    db $07
    dw ConsumeC2Food

; Require the uniform, consume the second nametag, and show Bondwell's box.
GiveClerkTag2:

C2Loc3_14:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw ClerkCallsPolice
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $98
    ; Call script.
    db $05
    dw ConsumeSlot0Item
    ; Show message 1.
    db $01, $37
    ; Show object.
    db $29, $4b
    ; Refresh room objects.
    db $2b
    ; Set object flag.
    db $09, C2Tag2Given
    ; End script.
    db $ff

; Sound the clerk alarm and enter the original jail ending.
ClerkCallsPolice:

C2Loc3_15:
    ; Play audio.
    db $3e, $09
    ; Show message 1.
    db $01, $54
    ; Jump to script.
    db $07
    dw C2JailEnding

; Name the worker for the original dart refusal.
DartWorkerReply:

C2Loc3_16:
    ; Set text name 0.
    db $30, $b4
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

; Require the broken bottle before the worker alarm sequence.
BottleWorkerCheck:

C2Loc3_17:
    ; Test object flag and branch when set.
    db $08, C2BottleBroken
    dw WorkerAlarmEnd
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Require the open knife before the worker alarm sequence.
KnifeWorkerCheck:

C2Loc3_18:
    ; Test object flag and branch when set.
    db $08, C2KnifeOpen
    dw WorkerAlarmEnd
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Show the clerk alarm, police arrival and original arrest ending.
WorkerAlarmEnd:

C2Loc3_19:
    ; Show message 2.
    db $02, $8e
    ; Run scene effect.
    db $39, FxPoliceman
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 1.
    db $01, $8a
    ; Wait sixty ticks.
    db $7e
    ; Run scene effect.
    db $39, FxHandcuffs
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 1.
    db $01, $81
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Reject the selected desk-mat attribute bit zero before matching the first packed ring.
TryRingOnMat:

C2Loc3_1A:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw NoC2ItemEffect

; Accept the first packed item only when it is one of the two cigar-ring variants.
MatchDeskRing:

C2Loc3_1B:
    ; Test packed item argument and branch on equality.
    db $46, C2Ring1
    dw PlantRing1
    ; Test packed item argument and branch on equality.
    db $46, C2Ring2
    dw PlantRing2
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Unless a ring is already planted, show the first ring object and finish planting.
PlantRing1:

C2Loc3_1C:
    ; Test object flag and branch when set.
    db $08, C2RingFlag
    dw NoC2ItemEffect
    ; Show object.
    db $29, C2RingObj1
    ; Jump to script.
    db $07
    dw FinishRingPlant

; Unless a ring is already planted, show the second ring object and finish planting.
PlantRing2:

C2Loc3_1D:
    ; Test object flag and branch when set.
    db $08, C2RingFlag
    dw NoC2ItemEffect
    ; Show object.
    db $29, C2RingObj2

; Refresh the planted ring, show the desk message, set the ending flags, and remove the first item.
FinishRingPlant:

C2Loc3_1E:
    ; Refresh room objects.
    db $2b
    ; Show message 1.
    db $01, $22
    ; Set object flag.
    db $09, C2RingFlag
    ; Set object flag.
    db $09, C2EndFlag
    ; Call script.
    db $05
    dw RemoveSlot0Item
    ; End script.
    db $ff

; Select slot zero, clear attribute bit zero, remove its list item, then return with slot one selected.
RemoveSlot0Item:

C2Loc3_1F:
    ; Select operation slot 0.
    db $35
    ; Clear attribute bit 0.
    db $19
    ; Drop selected list item.
    db $33
    ; Select operation slot 1.
    db $36
    ; Return to calling script.
    db $06

; Match either original magnetic button for the selected lift panel.
MatchLiftButton:

C2Loc3_20:
    ; Test packed item argument and branch on equality.
    db $46, $42
    dw FitLiftButton
    ; Test packed item argument and branch on equality.
    db $46, $17
    dw FitLiftButton
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Fit the button, reset the original door states and flags, and consume the selected item.
FitLiftButton:

C2Loc3_21:
    ; Clear state bit.
    db $10, $14
    ; Clear object flag.
    db $0a, LaundryUnlocked
    ; Clear state bit.
    db $10, $15
    ; Set object flag.
    db $09, C2CleanLock
    ; Show object.
    db $29, $0f
    ; Refresh room objects.
    db $2b
    ; Show message 0.
    db $00, $a6
    ; Show object.
    db $29, $20
    ; Refresh room objects.
    db $2b
    ; Select operation slot 0.
    db $35
    ; Clear attribute bit 0.
    db $19
    ; Drop selected list item.
    db $33
    ; Test packed item argument and branch on equality.
    db $46, $17
    dw FinishLiftButton
    ; Set selected attribute bit 1.
    db $1b

; Restore operation slot one before the shared fourth-floor travel path.
FinishLiftButton:

C2Loc3_22:
    ; Select operation slot 1.
    db $36

; Show the travel object and dispatch from the current lift room.
TravelLift4:

C2Loc3_E5:
    ; Show object.
    db $29, $20
    ; Refresh room objects.
    db $2b
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift2
    dw CheckLift4From2
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift3
    dw CheckLift4From3
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift4
    dw CheckLift4Here
    ; Test state bit.
    db $0e, $04
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift4From1
    ; Call script.
    db $05
    dw LiftClosingReply
    ; Clear state and refresh.
    db $24, $04

; Start the fourth-floor ride and swap floor objects 11 and 12.
RideLift4From1:

C2Loc3_23:
    ; Call script.
    db $05
    dw StartLift4Ride
    ; Hide object.
    db $2a, $11
    ; Show object.
    db $29, $12
    ; Refresh room objects.
    db $2b
    ; Wait while rendering objects.
    db $47

jr_007_5b72:
    db $18

; Swap floor objects 12 and 13 and retain the original wait.
Lift4PassFloor2:

C2Loc3_24:
    ; Hide object.
    db $2a, $12
    ; Show object.
    db $29

jr_007_5b76:
    db $13
    ; Refresh room objects.
    db $2b
    ; Wait while rendering objects.
    db $47, $18

; Show floor object 14, announce floor four, and open its original door state.
Lift4Arrive:

C2Loc3_25:
    ; Hide object.
    db $2a, $13
    ; Show object.
    db $29, $14

jr_007_5b7e:
    ; Refresh room objects.
    db $2b
    ; Wait while rendering objects.
    db $47, $18
    ; Set script value 0.
    db $49, $04
    ; Show message 3.
    db $2c, $20
    ; Hide object.
    db $2a, $20
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $0e
    ; End script.
    db $ff

; Close the second-floor door state before the shared fourth-floor ride.
CheckLift4From2:

C2Loc3_26:
    ; Test state bit.
    db $0e, $09
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift4From2
    ; Call script.
    db $05
    dw LiftClosingReply
    ; Clear state and refresh.
    db $24, $09

; Start the ride from floor two and continue through the original floor displays.
RideLift4From2:

C2Loc3_27:
    ; Call script.
    db $05
    dw StartLift4Ride
    ; Jump to script.
    db $07
    dw Lift4PassFloor2

; Close the third-floor door state before the shared fourth-floor ride.
CheckLift4From3:

C2Loc3_28:
    ; Test state bit.
    db $0e, $0c
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift4From3
    ; Call script.
    db $05
    dw LiftClosingReply
    ; Clear state and refresh.
    db $24, $0c

; Start the ride from floor three and continue to the fourth-floor arrival.
RideLift4From3:

C2Loc3_29:
    ; Call script.
    db $05
    dw StartLift4Ride
    ; Jump to script.
    db $07
    dw Lift4Arrive

; Retain the close-and-reopen path when already in the fourth-floor lift.
CheckLift4Here:

C2Loc3_2A:
    ; Show object.
    db $29, $20
    ; Refresh room objects.
    db $2b

jr_007_5bb0:
    ; Test state bit.
    db $0e, $0e
    ; Branch if result bit 0 is clear.
    db $04

jr_007_5bb3:
    dw Lift4AlreadyHere
    ; Call script.
    db $05
    dw LiftClosingReply
    ; Clear state and refresh.
    db $24, $0e

; Hide the travel object, reopen the fourth-floor state, and show the same-floor reply.
Lift4AlreadyHere:

C2Loc3_2B:
    ; Hide object.
    db $2a, $20
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $0e
    ; Show message 1.
    db $01, $29
    ; End script.
    db $ff

; Prepare the door name, show the closing reply, and return.
LiftClosingReply:

C2Loc3_2C:
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $23
    ; Return to calling script.
    db $06

; Show the movement reply, set room 0A before animation, and return.
StartLift4Ride:

C2Loc3_2D:
    ; Show message 0.
    db $00, $a5

jr_007_5bcb:
    ; Set current room.
    db $50, RoomVegasLift4
    ; Return to calling script.
    db $06

; Dispatch the original carried-item self-use choices and fallback.
MatchSelfItem:

C2Loc3_2E:
    ; Test packed item argument and branch on equality.
    db $46, $05
    dw WipeTowelReply
    ; Test packed item argument and branch on equality.
    db $46, $2e
    dw EatC2Duck
    ; Test packed item argument and branch on equality.
    db $46, C2Banana
    dw EatC2Banana
    ; Test packed item argument and branch on equality.
    db $46

jr_007_5bdb:
    db C2Peel
    dw RefuseC2Peel
    ; Test packed item argument and branch on equality.
    db $46, $33
    dw EatC2Tissue
    ; Test packed item argument and branch on equality.
    db $46, $35
    dw DrinkPerfume
    ; Test packed item argument and branch on equality.
    db $46, $37

jr_007_5be8:
    dw TryC2Dress
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    dw UseBottleSelf
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw UseKnifeSelf
    ; Test packed item argument and branch on equality.
    db $46, C2Opener
    dw NameSharpItem
    ; Test packed item argument and branch on equality.
    db $46, $3a
    dw WearC2Uniform
    ; Test packed item argument and branch on equality.
    db $46, $4a
    dw EatOldFood
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw PokeDartSelf
    ; Test packed item argument and branch on equality.
    db $46, C2Paperweight
    dw SplitPaperweight
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Show the original towel face-wiping reply.
WipeTowelReply:

C2Loc3_2F:
    ; Show message 0.
    db $00, $23
    ; End script.
    db $ff

; Check the used flag, show the tissue reply, and consume it.
EatC2Tissue:

C2Loc3_30:
    ; Test object flag and branch when set.
    db $08, C2TissueUsed
    dw EatUsedTissue
    ; Show message 2.
    db $02, $61
    ; Call script.
    db $05
    dw ConsumeSlot0Item
    ; End script.
    db $ff

; Show the regional used-tissue reply and retain its original consumption.
EatUsedTissue:

C2Loc3_31:
    ; Show message 2.
    db $02, $62
    ; Call script.
    db $05
    dw ConsumeSlot0Item
    ; End script.
    db $ff

; Show the perfume drinking reply without an item consumption command.
DrinkPerfume:

C2Loc3_32:
    ; Show message 2.
    db $02, $65
    ; End script.
    db $ff

; Check conflicting upper clothing before the original dress fit refusal.
TryC2Dress:

C2Loc3_33:
    ; Test object flag and branch when set.
    db $08, C2TrenchWorn
    dw NeedTrenchOff
    ; Test object flag and branch when set.
    db $08, C2CoatWorn
    dw NeedCoatOff
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw NeedUniformOff
    ; Show message 2.
    db $02, $6a
    ; End script.
    db $ff

; Check pants and upper clothing, then wear or remove the police uniform.
WearC2Uniform:

C2Loc3_34:
    ; Test object flag and branch when set.
    db $08, C2PantsWorn
    dw NeedPantsOff
    ; Test object flag and branch when set.
    db $08, C2TrenchWorn
    dw NeedTrenchOff
    ; Test object flag and branch when set.
    db $08, C2CoatWorn
    dw NeedCoatOff
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw RemoveC2Uniform
    ; Show message 2.
    db $02, $6c
    ; Set object flag.
    db $09, C2Uniform
    ; End script.
    db $ff

; Clear the uniform-worn flag and check the current room after removal.
RemoveC2Uniform:

C2Loc3_35:
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $12
    ; Clear object flag.
    db $0a, C2Uniform
    ; Jump to script.
    db $07
    dw CheckClothesRoom

; Name the worn pants in the shared clothing conflict reply.
NeedPantsOff:

C2Loc3_36:
    ; Copy first-slot name to text name 0.
    db $45
    ; Set text name 1.
    db $31, $71
    ; Show message 3.
    db $2c, $11
    ; End script.
    db $ff

; Name the worn trench coat in the shared clothing conflict reply.
NeedTrenchOff:

C2Loc3_37:
    ; Copy first-slot name to text name 0.
    db $45
    ; Set text name 1.
    db $31, $70
    ; Show message 3.
    db $2c, $11
    ; End script.
    db $ff

; Name the worn coat in the shared clothing conflict reply.
NeedCoatOff:

C2Loc3_38:
    ; Copy first-slot name to text name 0.
    db $45
    ; Set text name 1.
    db $31, $78
    ; Show message 3.
    db $2c, $11
    ; End script.
    db $ff

; Name the worn uniform in the shared clothing conflict reply.
NeedUniformOff:

C2Loc3_39:
    ; Copy first-slot name to text name 0.
    db $45
    ; Set text name 1.
    db $31, $3a
    ; Show message 3.
    db $2c, $11
    ; End script.
    db $ff

; Show the old-food response, then consume the first item.
EatOldFood:

C2Loc3_3A:
    ; Show message 0.
    db $00, $be

; Call the shared first-slot consumption script and end the action.
ConsumeC2Food:

C2Loc3_3B:
    ; Call script.
    db $05
    dw ConsumeSlot0Item
    ; End script.
    db $ff

; Remove slot zero from the list, clear attribute bit zero, set bit one, and return with slot one selected.
ConsumeSlot0Item:

C2Loc3_3C:
    ; Select operation slot 0.
    db $35
    ; Clear attribute bit 0.
    db $19
    ; Drop selected list item.
    db $33
    ; Set selected attribute bit 1.
    db $1b
    ; Select operation slot 1.
    db $36
    ; Return to calling script.
    db $06

; Show the duck meal response and consume the first item.
EatC2Duck:

C2Loc3_3D:
    ; Show message 1.
    db $01, $d9
    ; Jump to script.
    db $07
    dw ConsumeC2Food

; Consume only a peeled banana; otherwise show the original ripe-banana response.
EatC2Banana:

C2Loc3_3E:
    ; Test object flag and branch when set.
    db $08, C2BananaPeeled
    dw EatPeeledBanana
    ; Show message 2.
    db $02, $1b
    ; End script.
    db $ff

; Show the fruit response, record the banana eaten flag, and consume the first item.
EatPeeledBanana:

C2Loc3_3F:
    ; Show message 2.
    db $02, $1d
    ; Set object flag.
    db $09, C2BananaEaten
    ; Jump to script.
    db $07
    dw ConsumeC2Food

; Show the refusal to eat the banana peel.
RefuseC2Peel:

C2Loc3_40:
    ; Show message 2.
    db $02, $20
    ; End script.
    db $ff

; Show the regional dart or hummingbird self-poking reply.
PokeDartSelf:

C2Loc3_41:
    ; Show message 2.
    db $02, $ec
    ; End script.
    db $ff

; Detach the bird, discard the base, and replace item 46 with item 47 if present.
SplitPaperweight:

C2Sc3_07:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $bd
    ; Test item flag.
    db $11, C2Paperweight
    ; Branch if result bit 0 is clear.
    db $04
    dw SplitWeightObjects
    ; Set text name 0.
    db $30, C2DartBase
    ; Show message 3.
    db $2c, $2d
    ; Clear item flag.
    db $13, C2Paperweight
    ; Set item state.
    db $15, C2Paperweight
    ; Set item flag.
    db $12, C2Dart
    ; Drop list value.
    db $34, C2Paperweight
    ; Set item flag and append list value.
    db $4c, C2Dart
    ; End script.
    db $ff

; Require a broken bottle before the original self-use ending.
UseBottleSelf:

C2Loc3_42:
    ; Test object flag and branch when clear.
    db $54, C2BottleBroken
    dw NoC2ItemEffect
    ; Hold text.
    db $2e
    ; Set text name 0.
    db $30, $d8

; Play the original fatal self-use text and exit effect.
SharpItemEnding:

C2Loc3_43:
    ; Play audio.
    db $3e, $09
    ; Show message 3.
    db $2c, $14
    ; Show message 0.
    db $00, $26
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Require an open knife before the original self-use ending.
UseKnifeSelf:

C2Loc3_44:
    ; Test object flag and branch when clear.
    db $54, C2KnifeOpen
    dw NoC2ItemEffect

; Copy the first item name for the original self-use ending.
NameSharpItem:

C2Loc3_45:
    ; Hold text.
    db $2e
    ; Copy first-slot name to text name 0.
    db $45
    ; Jump to script.
    db $07
    dw SharpItemEnding

; Match the original uniform, laundry, dress or detergent use on the washer.
MatchItemWasher:

C2Loc3_46:
    ; Test packed item argument and branch on equality.
    db $46, $3a
    dw WashUniformCheck
    ; Test packed item argument and branch on equality.
    db $46, $38
    dw PutItemWasher
    ; Test packed item argument and branch on equality.
    db $46, $37
    dw PutItemWasher
    ; Test packed item argument and branch on equality.
    db $46, $40
    dw PutItemWasher
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Allow placing the uniform in the washer only when it is not worn.
WashUniformCheck:

C2Loc3_47:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw PutItemWasher
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

; Match the detached bird used on the dartboard.
MatchDartBoard:

C2Loc3_48:
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw ThrowDartBoard
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Remove the thrown bird and reveal the original secret passage.
ThrowDartBoard:

C2Loc3_49:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $e6
    ; Play audio.
    db $3e, $00
    ; Call script.
    db $05
    dw RemoveSlot0Item
    ; Play audio.
    db $3e, $17
    ; Show object.
    db $29, $52
    ; Refresh room objects.
    db $2b
    ; Show message 1.
    db $01, $39
    ; Play audio.
    db $3e, $12
    ; Show message 2.
    db $02, $e7
    ; Set object flag.
    db $09, C2Bullseye
    ; Draw Case II panel and marks.
    db $3c
    ; Set state and refresh without cue.
    db $22, $6d
    ; Hide object.
    db $2a, $52
    ; Show object.
    db $29, $5b
    ; Refresh room objects.
    db $2b
    ; Show message 2.
    db $02, $e8
    ; Set object flag.
    db $09, C2DartUsed
    ; Hide object.
    db $2a, $a4
    ; Show object.
    db $29, $a5
    ; Show object.
    db $29, $a6
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Match the knife used on the boards.
MatchKnifeBoards:

C2Loc3_4A:
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw PryBoardsKnife
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Require an open knife and show the original failed prying reply.
PryBoardsKnife:

C2Loc3_4B:
    ; Test object flag and branch when clear.
    db $54, C2KnifeOpen
    dw NeedKnifeOpen
    ; Show message 1.
    db $01, $b7
    ; End script.
    db $ff

; Match the knife before the original cab-item refusal.
MatchKnifeCab:

C2Loc3_4C:
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw CabItemRefusal
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Choose the original cab refusal for the matched item.
CabItemRefusal:

C2Loc3_4D:
    ; Test object flag and branch when set.
    db $08, C2GabbyMet
    dw ProtectCabItem
    ; Show message 1.
    db $01, $3b
    ; End script.
    db $ff

; Show the cab protection reply for the matched item.
ProtectCabItem:

C2Loc3_4E:
    ; Show message 1.
    db $01, $3c
    ; End script.
    db $ff

; Match the bullet item used on the gun.
MatchGunBullet:

C2Loc3_4F:
    ; Test packed item argument and branch on equality.
    db $46, $02
    dw LoadC2Gun
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Run the bullet-use command, then set flag 4B without checking its result.
LoadC2Gun:

C2Loc3_50:
    ; Use one Case II bullet.
    db $52
    ; Set object flag.
    db $09, $4b
    ; End script.
    db $ff

; Accept the original knife packed value as the vacuum bag tool.
MatchBagKnife:

C2Loc3_51:
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw CutVacBag
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Require the knife open and set the original torn-bag flag after cutting.
CutVacBag:

C2Loc3_52:
jr_007_5d32:
    ; Test object flag and branch when clear.
    db $54, C2KnifeOpen
    dw NeedKnifeOpen
    ; Test object flag and branch when set.
    db $08, C2VacBagTorn
    dw BagAlreadyTorn
    ; Show message 2.
    db $02, $68
    ; Keep selected change.
    db $27
    ; Set object flag.
    db $09, C2VacBagTorn
    ; End script.
    db $ff

; Show the original reply for a bag that has already been torn.
BagAlreadyTorn:

C2Loc3_53:
    ; Show message 2.
    db $02, $69
    ; End script.
    db $ff

; Accept the original D-cell item as the flashlight target tool.
MatchLampCell:

C2Loc3_54:
    ; Test packed item argument and branch on equality.
    db $46, $03
    dw CheckLampCell
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Require the flashlight held and a missing or weak cell before replacement.
CheckLampCell:

C2Loc3_55:
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw NeedLampHeld
    ; Test object flag and branch when clear.
    db $54, C2LampHasCell
    dw ReplaceLampCell
    ; Test object flag and branch when set.
    db $08, C2LampWeak
    dw ReplaceLampCell
    ; Show message 1.
    db $01, $4c
    ; End script.
    db $ff

; Show the original reply when the flashlight is not held.
NeedLampHeld:

C2Loc3_56:
    ; Show message 3.
    db $2c, $47
    ; End script.
    db $ff

; Use a cell, reset the lamp timer and retain the original palette update.
ReplaceLampCell:

C2Loc3_57:
    ; Use one Case II battery.
    db $72
    ; Branch if result bit 0 is clear.
    db $04
    dw NoLampCells
    ; Show message 1.
    db $01, $83
    ; Clear the flashlight timer.
    db $42, C2LampIx
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    ; Target FinishLampCell; retain the interior label.
    db $68

Jump_007_5d66:
    db $5d
    ; Load Case II palette and reload scene.
    db $73

; Mark the cell installed and clear the weak-cell flag.
FinishLampCell:

C2Loc3_EA:
    ; Set object flag.
    db $09, C2LampHasCell
    ; Set object flag.
    db $09, C2LampReady
    ; Clear object flag.
    db $0a, C2LampWeak
    ; End script.
    db $ff

; Show the original missing battery reply.
NoLampCells:

C2Loc3_EB:
    ; Show message 1.
    db $01, $67
    ; End script.
    db $ff

; Match the quarter used on either slot machine.
MatchSlotCoin:

C2Loc3_58:
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw TrySlotCoin
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Require a quarter and show the lead coin blocking the slot without spending it.
TrySlotCoin:

C2Loc3_59:
    ; Test Case II quarters.
    db $5c
    ; Branch if result bit 0 is clear.
    db $04
    dw NoC2ItemEffect
    ; Show message 2.
    db $02, $12
    ; End script.
    db $ff

; Match an open knife and break the lock on Joe's rear door.
KnifeJoeLock:

C2Loc3_5A:
    ; Test packed item argument and branch on inequality.
    db $56, C2Knife
    dw NoC2ItemEffect
    ; Test object flag and branch when set.
    db $08, C2JoeLockGone
    dw NoC2ItemEffect
    ; Test object flag and branch when clear.
    db $54, C2KnifeOpen
    dw NeedKnifeOpen
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $da
    ; Play audio.
    db $3e, $15
    ; Set selected state and refresh.
    db $21
    ; Show message 1.
    db $01, $db
    ; Set object flag.
    db $09, C2JoeLockGone
    ; End script.
    db $ff

; Show that the folded knife is useless for this action.
NeedKnifeOpen:

C2Loc3_5B:
    ; Show message 1.
    db $01, $8d
    ; End script.
    db $ff

; Match an open knife, break Sugar's lock, and retain the original door updates.
KnifeSugarLock:

C2Loc3_5C:
    ; Test packed item argument and branch on inequality.
    db $56, C2Knife
    dw C2KeyNoFit
    ; Test object flag and branch when set.
    db $08, C2SugLockGone
    dw NoC2ItemEffect
    ; Test object flag and branch when clear.
    db $54, C2KnifeOpen
    dw NeedKnifeOpen
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $da
    ; Show object.
    db $29, $46
    ; Refresh room objects.
    db $2b

jr_007_5dac:
    ; Play audio.
    db $3e, $15
    ; Set state and refresh without cue.
    db $22, $66
    ; Set selected attribute bit 2.
    db $1e
    ; Show message 1.
    db $01, $db
    ; Set object flag.
    db $09, C2SugLockGone
    ; End script.
    db $ff

; Match weapons and money used on the fare-checking conductor.
MatchFareItems:

C2Loc3_5D:
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw DartConductor
    ; Test packed item argument and branch on equality.
    db $46, C2Knife

jr_007_5dbc:
    dw KnifeConductor
    ; Test packed item argument and branch on equality.
    db $46, C2Opener
    dw AttackConductor
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    dw BottleConductor
    ; Test packed item argument and branch on equality.
    db $46, $00
    dw PayTrainFare
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw RejectTrainCoin
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Name the conductor for the original dart reply.
DartConductor:

C2Loc3_5E:
    ; Set text name 0.
    db $30, $d9
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

; Spend the stored fare; on success, clear the conductor state, restore the car view, and set clearance.
PayTrainFare:

C2Loc3_5F:
    ; Spend the stored Case II cash cost.
    db $68
    ; Branch if result bit 0 is clear.
    db $04
    dw C2MoneyShort
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $6e
    ; Show message 2.
    db $02, $6f
    ; Resume text.
    db $2f
    ; Clear the train-room fare view and refresh.
    db $6f
    ; Call script in bank $08.
    db $7c
    dw TrainCarView
    db $08
    ; Set the current train clearance flag.
    db $64
    ; End script.
    db $ff

; When quarters are available, show the impatient conductor and insufficient-payment messages without spending them.
RejectTrainCoin:

C2Loc3_60:
    ; Test Case II quarters.
    db $5c

jr_007_5de8:
    ; Branch if result bit 0 is clear.
    db $04
    dw NoC2ItemEffect
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $77
    ; Show message 2.
    db $02, $72
    ; End script.
    db $ff

; Match sharp items and the dart for the original shared train attack response.
MatchTrainSharp:

C2Loc3_61:
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw DartWoman
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw KnifeConductor
    ; Test packed item argument and branch on equality.
    db $46, C2Opener
    dw AttackConductor
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    dw BottleConductor
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Name the woman for the shared dart reply.
DartWoman:

C2Loc3_62:
    ; Set text name 0.
    db $30, $b6
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

; Match the item used on the conductor.
UseItemConductor:

C2Loc3_63:
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw DartMan
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw KnifeConductor
    ; Test packed item argument and branch on equality.
    db $46, C2Opener
    dw AttackConductor
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    dw BottleConductor
    ; Show message 0.
    db $00, $07
    ; End script.
    db $ff

; Require a broken bottle before the conductor attack response.
BottleConductor:

C2Loc3_64:
jr_007_5e1c:
    ; Test object flag and branch when clear.
    db $54, C2BottleBroken
    dw NoC2ItemEffect
    ; Jump to script.
    db $07
    dw AttackConductor

; Require an open knife before the conductor attack response.
KnifeConductor:

C2Loc3_65:
    ; Test object flag and branch when clear.
    db $54, C2KnifeOpen
    dw NoC2ItemEffect

; Apply the passenger-room effect when cleared and continue the attack response.
AttackConductor:

C2Loc3_66:
    ; Branch when the current train clearance flag is clear.
    db $5f
    dw ConductorEjects
    ; Run the current passenger-room effect.
    db $63

; Name the attacking item and enter the original train ejection sequence.
ConductorEjects:

C2Loc3_67:
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $0c
    ; Jump to script.
    db $07
    dw EjectTrainFight

; Name the man for the shared dart reply.
DartMan:

C2Loc3_68:
    ; Set text name 0.
    db $30, $b5
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

; Match food, weapons, and money used on the hobo.
UseItemHobo:

C2Loc3_69:
    ; Test packed item argument and branch on equality.
    db $46

jr_007_5e37:
    db $2e
    dw FeedC2Hobo
    ; Test packed item argument and branch on equality.
    db $46, $4a
    dw FeedC2Hobo
    ; Test packed item argument and branch on equality.
    db $46, C2Banana
    dw FeedC2Hobo
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw KnifeHobo
    ; Test packed item argument and branch on equality.
    db $46, C2Opener
    dw AttackC2Hobo
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    dw BottleHobo
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw DartHobo
    ; Test packed item argument and branch on equality.
    db $46, $00
    dw GiveHoboDollar
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw GiveHoboQuarter
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Consume the first item and show the hobo eating it.
FeedC2Hobo:

C2Loc3_6A:
    ; Call script.
    db $05
    dw ConsumeSlot0Item
    ; Show message 2.
    db $02, $39
    ; End script.
    db $ff

; Require an open knife before the hobo attack ending.
KnifeHobo:

C2Loc3_6B:
    ; Test object flag and branch when clear.
    db $54, C2KnifeOpen
    dw NoC2ItemEffect

; Show the attack on the hobo and enter the murder ending.
AttackC2Hobo:

C2Loc3_6C:
    ; Set text name 0.
    db $30, $b3
    ; Run scene effect.
    db $39, FxPoliceman
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 3.
    db $2c, $0e
    ; Wait sixty ticks.
    db $7e

; Show the original murder conviction text and exit effect.
C2MurderEnding:

C2Loc3_6D:
    ; Run scene effect.
    db $39, FxHandcuffs
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 2.
    db $02, $9a
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Require a broken bottle before the hobo attack ending.
BottleHobo:

C2Loc3_6E:
    ; Test object flag and branch when clear.
    db $54, C2BottleBroken
    dw NoC2ItemEffect
    ; Jump to script.
    db $07
    dw AttackC2Hobo

; Name the hobo for the original dart reply.
DartHobo:

C2Loc3_6F:
    ; Set text name 0.
    db $30, $b3
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

; Spend one dollar before showing the hobo money reply.
GiveHoboDollar:

C2Loc3_70:
jr_007_5e87:
    ; Spend one dollar of Case II cash.
    db $67
    ; Branch if result bit 0 is clear.
    db $04
    dw NoC2ItemEffect
    ; Show message 2.
    db $02, $37
    ; End script.
    db $ff

; Check quarters and decrement one after the hobo money reply.
GiveHoboQuarter:

C2Loc3_71:
    ; Test Case II quarters.
    db $5c
    ; Branch if result bit 0 is clear.
    db $04
    dw NoC2ItemEffect
    ; Show message 2.
    db $02, $37
    ; Decrement Case II quarters.
    db $5d
    ; End script.
    db $ff

; Match food and weapons used on the dog.
UseItemC2Dog:

C2Loc3_72:
    ; Test packed item argument and branch on equality.
    db $46, $2e
    dw FeedC2Dog
    ; Test packed item argument and branch on equality.
    db $46, $4a
    dw FeedC2Dog
    ; Test packed item argument and branch on equality.
    db $46, C2Banana
    dw FeedC2Dog
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw KnifeC2Dog
    ; Test packed item argument and branch on equality.
    db $46, C2Opener
    dw DogDodgesItem
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    dw BottleC2Dog
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw DartC2Dog
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Consume the first item and show the dog eating it.
FeedC2Dog:

C2Loc3_73:
    ; Call script.
    db $05
    ; Target ConsumeSlot0Item; retain the interior label.
    db $69

jr_007_5eb7:
    db $5c
    ; Show message 1.
    db $01, $21
    ; End script.
    db $ff

; Require an open knife before the dog dodges the attack.
KnifeC2Dog:

C2Loc3_74:
    ; Test object flag and branch when set.
    db $08, C2KnifeOpen
    dw DogDodgesItem
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Show the dog dodging the attack.
DogDodgesItem:

C2Loc3_75:
    ; Show message 1.
    db $01, $27
    ; End script.
    db $ff

; Require a broken bottle before the dog dodges the attack.
BottleC2Dog:

C2Loc3_76:
    ; Test object flag and branch when set.
    db $08, C2BottleBroken
    dw DogDodgesItem
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Name the dog for the original dart reply.
DartC2Dog:

C2Loc3_77:
    ; Set text name 0.
    db $30, $b9
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

; Match the item used on the casino cashier.
UseItemCashier:

C2Loc3_78:
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    dw BottleCashier
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw KnifeCashier
    ; Test packed item argument and branch on equality.
    db $46, C2Opener
    dw AttackC2Cashier
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw DartWoman
    ; Test packed item argument and branch on equality.
    db $46, $00
    dw BuyC2Chips
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw CashierCoinReply
    ; Test packed item argument and branch on equality.
    db $46, $04
    dw SellC2Chips
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $05
    ; End script.
    db $ff

; Require a broken bottle before the cashier attack response.
BottleCashier:

C2Loc3_79:
    ; Test object flag and branch when set.
    db $08, C2BottleBroken
    dw AttackC2Cashier
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Require an open knife before the cashier attack response.
KnifeCashier:

C2Loc3_7A:
    ; Test object flag and branch when set.
    db $08, C2KnifeOpen
    dw AttackC2Cashier
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Name the cashier, run the casino attack response, and check state 06.
AttackC2Cashier:

C2Loc3_7B:
    ; Set text name 0.
    db $30, $b6
    ; Call script.
    db $05
    dw CasinoAttackCue
    ; Branch if result bit 0 is set.
    db $03
    dw EvictCashierHit
    ; Set state bit.
    db $0f, $06

; Prepare the move from room 04 to 11 and enter the casino ejection reply.
EvictCashierHit:

C2Loc3_7C:
    ; Prepare room move and read two room arguments.
    db $3b, $04, $11
    ; Jump to script in bank $08.
    db $7d
    dw CasinoEjectReply
    db $08

; Show the missed attack and call for the bodyguard, then test state 06.
CasinoAttackCue:

C2Loc3_7D:
    ; Show message 3.
    db $2c, $1d
    ; Run scene effect.
    db $39, FxBouncer
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 3.
    db $2c, $1e
    ; Wait sixty ticks.
    db $7e
    ; Test state bit.
    db $0e, $06
    ; Return to calling script.
    db $06

; Run the original casino chip purchase command.
BuyC2Chips:

C2Loc3_7E:
    ; Buy casino chips.
    db $69
    ; End script.
    db $ff

; Name the offered coin and show the original cashier reply.
CashierCoinReply:

C2Loc3_7F:
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $06
    ; End script.
    db $ff

; Run the original casino chip sale command.
SellC2Chips:

C2Loc3_80:
    ; Sell casino chips.
    db $6a
    ; End script.
    db $ff

; Match items used on the original black-market seller.
UseItemSeller:

; Match the item used on type 0 target 37, whose description calls him suspicious.
UseItemMan:

C2Loc3_81:
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    ; Target BottlePerson; retain the interior label.
    db $4b

jr_007_5f29:
    db $5f
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw KnifePerson
    ; Test packed item argument and branch on equality.
    db $46, C2Opener
    dw SharpPersonHit
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw DartMan
    ; Test packed item argument and branch on equality.
    db $46, $00
    dw NoDollarEffect
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw CheckQuarterUse

; Show the original useless-item reply.
ItemNoUseReply:

C2Loc3_E6:
    ; Show message 0.
    db $00, $07
    ; End script.
    db $ff

; Use the shared no-effect reply for the matched dollar item.
NoDollarEffect:

C2Loc3_82:
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Check quarters and choose the original useless-item or no-effect reply.
CheckQuarterUse:

C2Loc3_83:
    ; Test Case II quarters.
    db $5c
    ; Branch if result bit 0 is set.
    db $03
    dw ItemNoUseReply
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Require a broken bottle before the shared person attack.
BottlePerson:

C2Loc3_84:
    ; Test object flag and branch when clear.
    db $54, C2BottleBroken
    dw NoC2ItemEffect
    ; Set text name 0.
    db $30, $d8
    ; Jump to script.
    db $07
    dw SharpPersonHit

; Require an open knife before the shared person attack.
KnifePerson:

C2Loc3_85:
    ; Test object flag and branch when clear.
    db $54, C2KnifeOpen
    dw NoC2ItemEffect
    ; Jump to script.
    db $07
    dw SharpPersonHit

; Play the person attack effect and name the weapon before the murder ending.
SharpPersonHit:

C2Loc3_86:
    ; Run scene effect.
    db $39, FxPoliceman
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $04
    ; Wait sixty ticks.
    db $7e
    ; Jump to script.
    db $07
    dw C2MurderEnding

; Match the item used on the luggage attendant.
UseItemAttendant:

C2Loc3_87:
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    dw BottlePerson
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw KnifePerson
    ; Test packed item argument and branch on equality.
    db $46, C2Opener
    dw SharpPersonHit
    ; Test packed item argument and branch on equality.
    db $46, C2ClaimTicket
    dw ShowClaimTicket
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw DartMan
    ; Show message 2.
    db $02, $e5
    ; End script.
    db $ff

; Wake the attendant, show the suitcase, and consume the claim ticket.
ShowClaimTicket:

C2Loc3_88:
    ; Show message 2.
    db $02, $ff
    ; Show object.
    db $29, $1d
    ; Refresh room objects.
    db $2b
    ; Set object flag.
    db $09, C2CaseShown
    ; Jump to script.
    db $07
    dw ConsumeC2Food

; Match ordinary items, payment, and weapons used on the newspaper seller.
UseItemNewsMan:

C2Loc3_89:
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    dw BottleNewsMan
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw KnifeNewsMan
    ; Test packed item argument and branch on equality.
    db $46, C2Opener
    dw DogDefendsNews
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw DartNewsMan
    ; Test packed item argument and branch on equality.
    db $46, $00
    dw PayNewsDollar
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw PayNewsQuarter
    ; Show message 1.
    db $01, $26
    ; End script.
    db $ff

; Name the old man for the original dart reply.
DartNewsMan:

C2Loc3_8A:
    ; Set text name 0.
    db $30, $b8
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

; Require a broken bottle before the dog defends the newspaper seller.
BottleNewsMan:

C2Loc3_8B:
    ; Test object flag and branch when clear.
    db $54, C2BottleBroken
    dw NoC2ItemEffect
    ; Jump to script.
    db $07
    dw DogDefendsNews

; Require an open knife before the dog defends the newspaper seller.
KnifeNewsMan:

C2Loc3_8C:
    ; Test object flag and branch when clear.
    db $54, C2KnifeOpen
    dw NoC2ItemEffect
    ; Jump to script.
    db $07
    dw DogDefendsNews

; Spend one dollar for a newspaper when stock remains and no payment is pending.
PayNewsDollar:

C2Loc3_8D:
    ; Test object flag and branch when set.
    db $08, C2NewsBoth
    dw NewsSoldOut
    ; Test object flag and branch when set.
    db $08, C2NewsPaid
    dw NewsAlreadyPaid
    ; Spend one dollar of Case II cash.
    db $67
    ; Branch if result bit 0 is clear.
    db $04
    dw C2MoneyShort
    ; Call script.
    db $05
    dw AcceptNewsPay
    ; End script.
    db $ff

; Show the newspaper seller's sold-out reply.
NewsSoldOut:

C2Loc3_8E:
    ; Show message 1.
    db $01, $25
    ; End script.
    db $ff

; Tell the player to take the newspaper already paid for.
NewsAlreadyPaid:

C2Loc3_8F:
    ; Show message 1.
    db $01, $24
    ; End script.
    db $ff

; Spend one quarter for a newspaper when stock remains and no payment is pending.
PayNewsQuarter:

C2Loc3_90:
    ; Test object flag and branch when set.
    db $08, C2NewsBoth
    dw NewsSoldOut
    ; Test object flag and branch when set.
    db $08, C2NewsPaid
    dw NewsAlreadyPaid
    ; Test Case II quarters.
    db $5c
    ; Branch if result bit 0 is clear.
    db $04
    dw C2MoneyShort
    ; Call script.
    db $05
    dw AcceptNewsPay
    ; Decrement Case II quarters.
    db $5d
    ; End script.
    db $ff

; Show the shared insufficient-money reply.
C2MoneyShort:

C2Loc3_E7:
    ; Show message 2.
    db $02, $72
    ; End script.
    db $ff

; Thank the buyer and set the newspaper payment flag.
AcceptNewsPay:

C2Loc3_E8:
    ; Show message 1.
    db $01, $23
    ; Set object flag.
    db $09, C2NewsPaid
    ; Return to calling script.
    db $06

; Match the item used on the cab driver.
UseItemCabDriver:

C2Loc3_91:
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw KnifeCabDriver
    ; Test packed item argument and branch on equality.
    db $46, C2Opener
    dw DriverSharpReply
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw DartCabDriver
    ; Test packed item argument and branch on equality.
    db $46, $00
    dw DriverDollarNone
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw DriverQuarterGift

; Show the regional driver gift reply.
DriverGiftReply:

C2Loc3_E9:
    ; Show message 1.
    db $01, $50
    ; End script.
    db $ff

; Use the original no-effect reply for the matched dollar item.
DriverDollarNone:

C2Loc3_92:
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Check quarters before choosing the driver gift reply.
DriverQuarterGift:

C2Loc3_93:
    ; Test Case II quarters.
    db $5c
    ; Branch if result bit 0 is set.
    db $03
    dw DriverGiftReply
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Name the driver for the original dart reply.
DartCabDriver:

C2Loc3_94:
    ; Set text name 0.
    db $30, $da
    ; Show message 3.
    db $2c, $17
    ; End script.
    db $ff

; Require an open knife before the driver attack reply.
KnifeCabDriver:

C2Loc3_95:
    ; Test object flag and branch when clear.
    db $54, C2KnifeOpen
    dw NoC2ItemEffect

; Name the first item and show the driver attack refusal.
DriverSharpReply:

C2Loc3_96:
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $24
    ; End script.
    db $ff

; Show the broken-pencil reply for item 31 or use the original tied-hands fallback.
MatchPencilUse:

C2Loc3_97:
    ; Test packed item argument and branch on inequality.
    db $56, $31
    dw TiedItemFallback
    ; Show message 1.
    db $01, $c6
    ; End script.
    db $ff

; Show the tied-hands reply only in the laundry with hands bound, otherwise use no effect.
TiedItemFallback:

C2Loc3_98:
    ; Test room argument and branch on inequality.
    db $55, RoomLaundry
    dw NoC2ItemEffect
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw NoC2ItemEffect
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff

C2Sc3_08:
Case2BathroomTowelTake:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $00
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe the worn apartment key.
LookC2Key1:

C2Sc3_09:
    ; Show message 0.
    db $00, $19
    ; End script.
    db $ff

; Choose the alternate target for any of the six keys.
UseC2Key:

C2Sc3_0A:
    ; Choose alternate target; selected input runs the following script.
    db $2d

; Match the key target and retain the original shared item-use fallbacks.
MatchC2Key:

C2Loc3_99:
    ; Match alternate item against type, ID and script target rows.
    db $32, $00, $5a
    dw C2KeyNoFit
    db $00, $5b
    dw C2KeyNoFit
    db $05, $01
    dw C2KeyNoFit
    db $05, $03
    dw C2KeyNoFit
    db $05, $0a
    dw C2KeyNoFit
    db $05, $0b
    dw C2KeyNoFit
    db $05, $14
    dw KeyLaundryDoor
    db $05, $15
    dw C2KeyNoFit
    db $05, $4d
    dw KeyHomeDoor
    db $05, $4e
    dw C2KeyNoFit
    db $05, $4f
    dw C2KeyNoFit
    db $05, $53
    dw C2KeyNoFit

Jump_007_6066:
    db $05, $5b
    dw C2KeyNoFit
    db $05, $64
    dw C2KeyNoFit
    db $05, $66
    dw C2KeyNoFit
    db $05, $67
    dw C2KeyNoFit
    db $05, $74
    dw C2KeyNoFit
    db $01, $02
    dw KeyC2Mailbox
    db $01, $03
    dw KeyDiarySlot
    db $01, $04
    dw KeyEmptySlot
    db $00, $17
    dw UseItemCashier
    db $00, $37
    dw UseItemSeller
    db $00, $3c
    dw UseItemAttendant
    db $00, $4f
    dw UseItemNewsMan
    db $00, $55
    dw UseItemCabDriver
    db $02, $03
    dw MatchDeskStore
    db $fe, $fe
    dw TiedItemFallback

; Show the original key does not fit reply.
C2KeyNoFit:

C2Loc3_9A:
    ; Show message 0.
    db $00, $60
    ; End script.
    db $ff

; Match key 6 and choose the chute reply inside the laundry or the lock toggle.
KeyLaundryDoor:

C2Loc3_9B:
    ; Test packed item argument and branch on inequality.
    db $56, C2Key6
    dw C2KeyNoFit
    ; Test room argument and branch on equality.
    db $25, RoomLaundry
    dw ChuteTooSlippy
    ; Test object flag and branch when set.
    db $08, LaundryUnlocked
    dw LockLaundryDoor
    ; Set object flag.
    db $09, LaundryUnlocked
    ; Jump to script.
    db $07
    dw C2UnlockEnd

; Show that the chute is too slippery to climb.
ChuteTooSlippy:

C2Loc3_9C:
    ; Show message 2.
    db $02, $ca
    ; End script.
    db $ff

; Require the door closed before clearing its unlocked flag.
LockLaundryDoor:

C2Loc3_9D:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw NoC2ItemEffect
    ; Clear object flag.
    db $0a, LaundryUnlocked
    ; Jump to script.
    db $07
    dw C2LockReply

; Match key 1 and choose the home door lock toggle.
KeyHomeDoor:

C2Loc3_9E:
    ; Test packed item argument and branch on inequality.
    db $56, C2Key1
    dw C2KeyNoFit
    ; Test object flag and branch when set.
    db $08, HomeUnlocked
    dw LockHomeDoor
    ; Set object flag.
    db $09, HomeUnlocked
    ; Jump to script.
    db $07
    dw C2UnlockEnd

; Require the home door closed before clearing its unlocked flag.
LockHomeDoor:

C2Loc3_9F:
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw NoC2ItemEffect
    ; Clear object flag.
    db $0a, HomeUnlocked
    ; Jump to script.
    db $07
    dw C2LockReply

; Match key 2 and toggle the mailbox lock only while the lid is closed.
KeyC2Mailbox:

C2Loc3_A0:
    ; Test packed item argument and branch on inequality.
    db $56, C2Key2
    dw C2KeyNoFit
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw NoC2ItemEffect
    ; Test object flag and branch when set.
    db $08, C2MailUnlocked
    dw LockC2Mailbox
    ; Set object flag.
    db $09, C2MailUnlocked
    ; Call script.
    db $05
    dw C2UnlockReply
    ; Hide object.
    db $2a, $3b
    ; Refresh room objects.
    db $2b
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

; Clear the mailbox unlocked flag and show the shared locking reply.
LockC2Mailbox:

C2Loc3_A1:
    ; Clear object flag.
    db $0a, C2MailUnlocked
    ; Jump to script.
    db $07
    dw C2LockReply

; Match key 4 and toggle the diary machine lock while its lid is closed.
KeyDiarySlot:

C2Loc3_A2:
    ; Test packed item argument and branch on inequality.
    db $56, C2Key4
    dw C2KeyNoFit
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw NoC2ItemEffect
    ; Test object flag and branch when set.
    db $08, DiaryUnlocked
    dw LockDiarySlot
    ; Set object flag.
    db $09, $64
    ; Set object flag.
    db $09, DiaryUnlocked

; Show the shared unlocking cue and keep the selected change.
SlotUnlockCue:

C2Loc3_A3:
    ; Call script.
    db $05
    dw C2UnlockReply
    ; Keep selected change.
    db $27
    ; End script.
    db $ff

; Clear the diary machine unlocked flag and show the shared locking cue.
LockDiarySlot:

C2Loc3_A4:
    ; Clear object flag.
    db $0a, DiaryUnlocked
    ; Jump to script.
    db $07
    dw C2LockReply

; Match key 4 and toggle the second machine lock while its lid is closed.
KeyEmptySlot:

C2Loc3_A5:
    ; Test packed item argument and branch on inequality.
    db $56, C2Key4
    dw C2KeyNoFit
    ; Test attribute bit 2 and branch when set.
    db $1d
    dw NoC2ItemEffect
    ; Test object flag and branch when set.
    db $08, EmptyUnlocked
    dw LockEmptySlot
    ; Set object flag.
    db $09, EmptyUnlocked
    ; Set object flag.
    db $09, EmptyKeyUsed
    ; Jump to script.
    db $07
    dw SlotUnlockCue

; Clear the second machine unlocked flag and show the shared locking cue.
LockEmptySlot:

C2Loc3_A6:
    ; Clear object flag.
    db $0a, EmptyUnlocked
    ; Jump to script.
    db $07
    dw C2LockReply

; Read the faded boxing clipping showing Ace and Rudy.
LookBoxingClip:

C2Sc3_0B:
    ; Show message 0.
    db $00, $1a
    ; End script.
    db $ff

; Read the original license and add the Adison cab destination once.
ReadC2License1:

C2Sc3_0C:
    ; Show message 0.
    db $00, $1c
    ; Test object flag and branch when set.
    db $08, C2AdisonKnown
    dw EndC2Item
    ; Add quick-list value.
    db $44, CabAdison
    ; Set object flag.
    db $09, C2AdisonKnown
    ; End script.
    db $ff

; Describe the empty pack, retaining gum in US and cigarettes in JP.
LookEmptyPack:

C2Sc3_0D:
    ; Show message 0.
    db $00, $1d
    ; End script.
    db $ff

; Describe Stogie's cigar ring; with belongings and bribes known, suggest leaving it on Ventini's desk.
ReadStogieRing:

C2Sc3_0E:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $3e
    ; Test object flag and branch when clear.
    db $54, C2LootSeen
    dw EndC2Item
    ; Test object flag and branch when clear.
    db $54, C2BribeKnown
    dw EndC2Item
    ; Test object flag and branch when set.
    db $08, C2RingFlag
    dw EndC2Item
    ; Play audio.
    db $3e, $08
    ; Show message 0.
    db $00, $d5
    ; Show message 2.
    db $02, $70
    ; Set object flag.
    db $09, C2EndFlag
    ; Set object flag.
    db $09, $41
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Retain the selected-attribute and secret-office restrictions before taking the ring.
TakeC2Ring:

C2Sc3_0F:
    ; Test selected attribute bit 1.
    db $1a
    ; Branch if result bit 0 is set.
    db $03
    dw TakeC2ItemNow
    ; Test room argument and branch on equality.
    db $25, RoomSecretOffice
    dw RejectC2Item
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $06
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the original pillow description.
LookC2Pillow:

C2Sc3_10:
    ; Show message 0.
    db $00, $3f
    ; End script.
    db $ff

; Hide the original pillow object and finish pickup.
TakeC2Pillow:

C2Sc3_11:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $09
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the crumpled payment demand addressed to Stogie and signed T.M.
ReadPayNote:

C2Sc3_12:
    ; Show message 0.
    db $00, $43
    ; End script.
    db $ff

; Read the station address while folded or the fares while open.
ReadC2Timetable:

C2Sc3_13:
    ; Test object flag and branch when set.
    db $08, C2TimetableOpen
    dw ReadC2Fares
    ; Show message 0.
    db $00, $41

; Add the Chicago cab destination once.
AddChicagoStop:

C2Loc3_A7:
    ; Test object flag and branch when set.
    db $08, C2ChicagoKnown
    dw EndC2Item
    ; Add quick-list value.
    db $44, CabChicago
    ; Set object flag.
    db $09, C2ChicagoKnown
    ; End script.
    db $ff

; Show the original printed timetable fare list.
ReadC2Fares:

C2Loc3_A8:
    ; Show message 0.
    db $00, $42
    ; End script.
    db $ff

; Open the folded timetable and display its fares.
OpenC2Timetable:

C2Sc3_14:
    ; Test object flag and branch when set.
    db $08, C2TimetableOpen
    dw C2AlreadyOpen
    ; Call script.
    db $05
    dw ShowC2Opening
    ; Set object flag.
    db $09, C2TimetableOpen
    ; Jump to script.
    db $07
    dw ReadC2Fares

; Hide the original timetable object and add the selected item.
TakeC2Timetable:

C2Sc3_15:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $08
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Close the timetable using the existing closed reply.
CloseC2Timetable:

C2Sc3_16:
    ; Test object flag and branch when clear.
    db $54, C2TimetableOpen
    dw C2AlreadyClosed
    ; Clear object flag.
    db $0a, C2TimetableOpen
    ; Jump to script.
    db $07
    dw ShowC2Closed

; Show the original Plant1 description.
LookC2Plant1:

C2Sc3_17:
    ; Show message 0.
    db $00, $4e
    ; End script.
    db $ff

; Hide the original Plant1 object and finish adding the selected item.
TakeC2Plant1:

C2Sc3_18:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $0a
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the original Pot description.
LookC2Pot:

C2Sc3_19:
jr_007_61b0:
    ; Show message 0.
    db $00, $79
    ; End script.
    db $ff
    ; Not reached from the recovered action and branch entries.
    db $ff

; Hide the original Pot object and finish adding the selected item.
TakeC2Pot:

C2Sc3_1A:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $0c
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the original Ashtray description.
LookC2Ashtray:

C2Sc3_1B:
    ; Show message 0.
    db $00, $72
    ; End script.
    db $ff

; Hide the original Ashtray object and finish adding the selected item.
TakeC2Ashtray:

C2Sc3_1C:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $0b
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the original Plant2 description.
LookC2Plant2:

C2Sc3_1D:
    ; Show message 0.
    db $00, $54
    ; End script.
    db $ff

; Hide the original Plant2 object and finish adding the selected item.
TakeC2Plant2:

C2Sc3_1E:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $15
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the original Plant3 description.
LookC2Plant3:

C2Sc3_1F:
    ; Show message 0.
    db $00, $59
    ; End script.
    db $ff

; Hide the original Plant3 object and finish adding the selected item.
TakeC2Plant3:

C2Sc3_20:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $16
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe the magnetic button restricting access to the floor.
LookLiftButton:

C2Sc3_21:
    ; Show message 0.
    db $00, $a3
    ; End script.
    db $ff

; Mark the magnetic button taken, hide its object and finish pickup.
TakeLiftButton:

C2Sc3_22:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Set object flag.
    db $09, C2ButtonTaken
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $0f
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Require the button object to be visible, show floor four and use the existing lift continuation.
PressLift4:

C2Sc3_23:
    ; Test object visibility.
    db $28, $0f
    ; Branch if result bit 0 is clear.
    db $04
    dw RejectC2Item
    ; Set text name 0.
    db $30, $b0
    ; Set script value 0.
    db $49, $04
    ; Show message 3.
    db $2c, $1f
    ; Jump to script.
    db $07
    dw TravelLift4

; Read the carried photo, remember it and preserve the original hint conditions.
ReadC2Photo:

C2Sc3_24:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $2f

jr_007_620a:
    ; Set object flag.
    db $09, C2PhotoSeen
    ; Test object flag and branch when set.
    db $08, C2HamperPlan
    dw EndC2Item
    ; Test object flag and branch when set.
    db $08, C2HamperHint
    dw EndC2Item
    ; Play audio.
    db $3e, $08
    ; Show message 0.
    db $00, $31
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Mark the original photo taken, then follow the shared item pickup path.
TakeC2Photo:

C2Sc3_25:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Set object flag.
    db $09, C2PhotoTaken
    ; Jump to script.
    db $07
    dw TakeC2ItemNow

; Show the letter description and branch on knowledge flags; shared by the original item action records.
ReadBondLetter:

C2Sc3_26:
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $08
    ; Show message 0.
    db $00, $40
    ; Set object flag.
    db $09, C2BondSeen
    ; Set object flag.
    db $09, C2BondHint
    ; Test object flag and branch when set.
    db $08, C2BribeKnown
    dw EndC2ItemCue
    ; Test object flag and branch when set.
    db $08, C2McMSeen
    dw BondLetterTail
    ; Show message 1.
    db $01, $63
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Show the original regional Bondwell letter continuation and play the room cue.
BondLetterTail:

C2Loc3_A9:
    ; Show message 1.
    db $01, $68
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Read the folded railway pamphlet and discover Chicago, or show its open guide.
ReadC2Pamphlet:

C2Sc3_27:
    ; Test object flag and branch when set.
    db $08, C2PamphletOpen
    dw ReadTrainGuide
    ; Show message 0.
    db $00, $3c
    ; Jump to script.
    db $07
    dw AddChicagoStop

; Show the original train information-board guide.
ReadTrainGuide:

C2Loc3_AA:
    ; Show message 0.
    db $00, $3d
    ; End script.
    db $ff

; Open the railway pamphlet and show its guide.
OpenC2Pamphlet:

C2Sc3_28:
    ; Test object flag and branch when set.
    db $08, C2PamphletOpen
    dw C2AlreadyOpen
    ; Call script.
    db $05
    dw ShowC2Opening
    ; Set object flag.
    db $09, C2PamphletOpen
    ; Jump to script.
    db $07
    dw ReadTrainGuide

; Show the original opening caption for the selected item and return.
ShowC2Opening:

C2Loc3_AB:
jr_007_6253:
    ; Hold text.
    db $2e
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; Return to calling script.
    db $06

; Hide the original pamphlet object and finish pickup.
TakeC2Pamphlet:

C2Sc3_29:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $1c
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Close the pamphlet with the original closed reply.
CloseC2Pamphlet:

C2Sc3_2A:
    ; Test object flag and branch when clear.
    db $54, C2PamphletOpen
    dw C2AlreadyClosed
    ; Clear object flag.
    db $0a, C2PamphletOpen
    ; Jump to script.
    db $07
    dw ShowC2Closed

; Read newspaper 3 and add the morgue destination once.
ReadC2News3:

C2Sc3_2B:
    ; Test room argument and branch on inequality.
    db $55, $2b
    dw News3Article
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw NewsPayFirst

; Show the original newspaper 3 article and discover the morgue.
News3Article:

C2Loc3_AC:
    ; Show message 1.
    db $01, $0a
    ; Test object flag and branch when set.
    db $08, C2MorgueKnown
    dw EndC2Item
    ; Add quick-list value.
    db $44, CabMorgue
    ; Set object flag.
    db $09, C2MorgueKnown
    ; End script.
    db $ff

; Take newspaper 3 after payment; record whether a paper was already taken.
TakeC2News3:

C2Sc3_2C:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Test room argument and branch on inequality.
    db $55, $2b
    dw TakeC2ItemNow
    ; Test object flag and branch when clear.
    db $54, C2NewsPaid
    dw NewsPayFirst
    ; Call script.
    db $05
    dw ShowC2Take
    ; Clear object flag.
    db $0a, C2NewsPaid
    ; Test object flag and branch when set.
    db $08, C2NewsTaken
    dw MarkNews3Repeat
    ; Set object flag.
    db $09, C2NewsTaken

; Hide the original newspaper 3 object and finish adding the item.
FinishNews3Take:

C2Loc3_AD:
    ; Hide object.
    db $2a, $2c
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Require payment or require taking the newspaper before reading.
NewsPayFirst:

C2Loc3_AE:
    ; Test object flag and branch when set.
    db $08, C2NewsPaid
    dw NewsTakeFirst
    ; Show message 1.
    db $01, $18
    ; End script.
    db $ff

; Show the regional reply when payment has been made but the paper was not taken.
NewsTakeFirst:

C2Loc3_AF:
    ; Show message 1.
    db $01, $df
    ; End script.
    db $ff

; Mark a subsequent newspaper pickup and finish taking newspaper 3.
MarkNews3Repeat:

C2Loc3_B0:
    ; Set object flag.
    db $09, C2NewsBoth
    ; Jump to script.
    db $07
    dw FinishNews3Take

; Read newspaper 4 and add the morgue destination once.
ReadC2News4:

C2Sc3_2D:
    ; Test room argument and branch on inequality.
    db $55, $2b
    dw News4Article
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw NewsPayFirst

; Show the original newspaper 4 article and discover the morgue.
News4Article:

C2Loc3_B1:
    ; Show message 1.
    db $01, $0b
    ; Test object flag and branch when set.
    db $08, C2MorgueKnown
    dw EndC2Item
    ; Add quick-list value.
    db $44, CabMorgue
    ; Set object flag.
    db $09, C2MorgueKnown
    ; End script.
    db $ff

; Take newspaper 4 after payment and preserve its additional original flag.
TakeC2News4:

C2Sc3_2E:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Test room argument and branch on inequality.
    db $55, $2b
    dw TakeC2ItemNow
    ; Test object flag and branch when clear.
    db $54, C2NewsPaid
    dw NewsPayFirst
    ; Call script.
    db $05
    dw ShowC2Take
    ; Set object flag.
    db $09, $9c
    ; Clear object flag.
    db $0a, C2NewsPaid
    ; Test object flag and branch when set.
    db $08, C2NewsTaken
    dw MarkNews4Repeat
    ; Set object flag.
    db $09, C2NewsTaken

; Hide the original newspaper 4 object and finish adding the item.
FinishNews4Take:

C2Loc3_B2:
    ; Hide object.
    db $2a, $2d
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Mark a subsequent newspaper pickup and finish taking newspaper 4.
MarkNews4Repeat:

C2Loc3_B3:
    ; Set object flag.
    db $09, C2NewsBoth
    ; Jump to script.
    db $07
    dw FinishNews4Take

; Read the original letter from Vinny about the shoe factory and ice cream shipments.
ReadVinnyLetter:

C2Sc3_2F:
    ; Show message 1.
    db $01, $5e
    ; End script.
    db $ff

; Describe the bottle according to its broken flag.
LookC2Bottle:

C2Sc3_30:
    ; Test object flag and branch when set.
    db $08, C2BottleBroken
    dw LookBrokenBottle
    ; Show message 1.
    db $01, $76
    ; End script.
    db $ff

; Show that the selected bottle is broken.
LookBrokenBottle:

C2Loc3_B4:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $01
    ; End script.
    db $ff

; Mark the bottle taken and hide its intact or broken object.
TakeC2Bottle:

C2Sc3_31:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Set object flag.
    db $09, C2BottleTaken
    ; Test object flag and branch when set.
    db $08, C2BottleBroken
    dw TakeBrokenBottle
    ; Hide object.
    db $2a, $36
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Hide the broken bottle object before adding the item.
TakeBrokenBottle:

C2Loc3_B5:
    ; Hide object.
    db $2a, $37
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the no-answer reply shared by several carried objects.
ItemNoAnswer:

C2Sc3_32:
    ; Show message 0.
    db $00, $e3
    ; End script.
    db $ff

; Break the bottle and replace its room object only when it is not held.
BreakC2Bottle:

C2Sc3_33:
    ; Test object flag and branch when set.
    db $08, C2BottleBroken
    dw BottleIsBroken
    ; Play audio.
    db $3e, $13
    ; Test object flag and branch when set.
    db $08, C2BottleTaken
    dw MarkBottleBroken
    ; Hide object.
    db $2a, $36
    ; Show object.
    db $29, $37
    ; Refresh room objects.
    db $2b

; Show the bottle breaking and set its broken flag.
MarkBottleBroken:

C2Loc3_B6:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $00
    ; Set object flag.
    db $09, C2BottleBroken
    ; End script.
    db $ff

; Show the original already-broken bottle reply.
BottleIsBroken:

C2Loc3_B7:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1b
    ; End script.
    db $ff

; Describe the cracked lamp and retain the regional remarks about Stogie.
LookCrackedLamp:

C2Sc3_34:
    ; Show message 1.
    db $01, $77
    ; End script.
    db $ff

; Retain the pickup restriction, hide lamp object 38 and finish adding the item.
TakeCrackedLamp:

C2Sc3_35:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $38
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe the folding knife from its original open flag.
LookC2Knife:

C2Sc3_36:
    ; Test object flag and branch when clear.
    db $54, C2KnifeOpen
    dw KnifeFoldedText
    ; Show message 1.
    db $01

jr_007_632f:
    db $7c
    ; End script.
    db $ff

; Show the original folded knife description.
KnifeFoldedText:

C2Loc3_B8:
    ; Show message 1.
    db $01, $7b
    ; End script.
    db $ff

; Open the knife and retain the original already-open rejection.
OpenC2Knife:

C2Sc3_37:
    ; Test object flag and branch when set.
    db $08, C2KnifeOpen
    dw RejectC2Item
    ; Show message 2.
    db $02, $8a
    ; Set object flag.
    db $09, C2KnifeOpen
    ; End script.
    db $ff

; Fold the knife and retain the original already-closed rejection.
CloseC2Knife:

C2Sc3_38:
    ; Test object flag and branch when clear.
    db $54, C2KnifeOpen
    dw RejectC2Item
    ; Show message 1.
    db $01, $14
    ; Clear object flag.
    db $0a, C2KnifeOpen
    ; End script.
    db $ff

; Show the original mailbox key description.
LookC2Key2:

C2Sc3_39:
    ; Show message 1.
    db $01, $7e
    ; End script.
    db $ff

; Describe the .38 ammunition shared by the six original ammo records.
LookC2Ammo:

C2Sc3_3A:
    ; Show message 1.
    db $01, $7f
    ; End script.
    db $ff

; Describe the flattened juice can.
LookJuiceCan:

C2Sc3_3B:
    ; Show message 1.
    db $01, $d0
    ; End script.
    db $ff

; Retain the pickup restriction, hide can object 3F and finish adding the item.
TakeJuiceCan:

C2Sc3_3C:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $3f
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe the car maker symbol on key 3.
LookC2Key3:

C2Sc3_3D:
    ; Show message 1.
    db $01, $d2
    ; End script.
    db $ff

; Describe the discarded Peking duck with black bean sauce.
LookC2Duck:

C2Sc3_3E:
    ; Show message 1.
    db $01, $d4
    ; End script.
    db $ff

; Describe the diary; when open, read its payment list.
LookSiegelDiary:

C2Sc3_3F:
    ; Hold text.
    db $2e
    ; Test object flag and branch when set.
    db $08, C2DiaryOpen
    dw ReadSiegelDiary
    ; Show message 2.
    db $02, $0e
    ; Test object flag and branch when set.
    db $08, C2DiarySeen
    dw EndC2Item
    ; Show message 1.
    db $01, $4f
    ; End script.
    db $ff

; Show the opened diary payment list, then compare it using the original knowledge flags.
ReadSiegelDiary:

C2Loc3_B9:
    ; Show message 2.
    db $02, $0f
    ; Test object flag and branch when clear.
    db $54, C2BookMatch
    dw DiaryNoBookMatch
    ; Play audio.
    db $3e, $08
    ; Test object flag and branch when clear.
    db $54, C2LedgerSeen
    dw DiaryMatchesBook
    ; Set text name 0.
    db $30, $69
    ; Set text name 1.
    db $31, $6b
    ; Show message 3.
    db $2c, $30
    ; Set text name 0.
    db $30, $6c
    ; Set text name 1.
    db $31, $6d
    ; Show message 3.
    db $2c, $31
    ; Test object flag and branch when clear.
    db $54, C2BondSeen
    dw HintMissingPay
    ; Set text name 0.
    db $30, $69

; Show the conclusion that the named ledger was kept to deceive Malone.
HintFalseLedger:

C2Loc3_BA:
    ; Show message 3.
    db $2c, $34

; With McMurphy's note read, describe police bribes and reveal the fixed courier-zero sum once.
ShowC2Bribes:

C2Loc3_BB:
    ; Test object flag and branch when clear.
    db $54, C2McMSeen
    dw EndC2ItemCue
    ; Show message 0.
    db $00, $98
    ; Test object flag and branch when set.
    db $08, C2SumShown
    dw EndC2ItemCue
    ; Set object flag.
    db $09, C2SumShown
    ; Show message 2.
    db $02, $26
    ; Set object flag.
    db $09, C2BribeKnown
    ; Set object flag.
    db $09, $03
    ; Test object flag and branch when set.
    db $08, C2RingPlan
    dw EndC2ItemCue
    ; Test object flag and branch when set.
    db $08, C2LootPlan
    dw EndC2ItemCue
    ; Show message 1.
    db $01, $64
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Without the black-book comparison, compare the examined ledger or finish scanning the diary.
DiaryNoBookMatch:

C2Loc3_BC:
    ; Test object flag and branch when set.
    db $08, C2LedgerSeen
    dw CompareDiaryLedger
    ; Show message 0.
    db $00

jr_007_63b1:
    db $bc
    ; End script.
    db $ff

; Compare the diary and examined ledger, then show the missing courier-zero payments.
CompareDiaryLedger:

C2Loc3_BD:
    ; Play audio.
    db $3e, $08
    ; Set text name 0.
    db $30, $69
    ; Set text name 1.
    db $31, $6b
    ; Show message 3.
    db $2c, $2e
    ; Set text name 0.
    db $30, $6c
    ; Set text name 1.
    db $31, $6d

; Show the absent courier-zero payment clue and question whether Ventini hid the payments.
HintAbsentPay:

C2Loc3_BE:
    ; Show message 3.
    db $2c, $2f
    ; Show message 2.
    db $02, $eb
    ; Show message 1.
    db $01, $79
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Show the agreement between the diary and the black ledger.
DiaryMatchesBook:

C2Loc3_BF:
    ; Set text name 0.
    db $30, $68
    ; Set text name 1.
    db $31, $6b
    ; Show message 3.
    db $2c, $32

; Show that the ledger contains the same information as Siegel's diary.
HintSameEntries:

C2Loc3_C0:
    ; Show message 2.
    db $02, $f1
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Show the missing courier-zero payment hint when the Bondwell-letter clue is absent.
HintMissingPay:

C2Loc3_C1:
    ; Show message 0.
    db $00, $bb
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Set the diary examined and open flags, then read its payment list.
OpenSiegelDiary:

C2Sc3_40:
    ; Test object flag and branch when set.
    db $08, C2DiaryOpen
    dw C2AlreadyOpen
    ; Call script.
    db $05
    dw ShowC2Opening
    ; Set object flag.
    db $09, C2DiarySeen
    ; Set object flag.
    db $09, C2DiaryOpen
    ; Hold text.
    db $2e
    ; Jump to script.
    db $07
    dw ReadSiegelDiary

; Clear the diary open flag while retaining the examined flag.
CloseSiegelDiary:

C2Sc3_41:
    ; Test object flag and branch when clear.
    db $54

jr_007_63e5:
    db C2DiaryOpen
    dw C2AlreadyClosed
    ; Clear object flag.
    db $0a, C2DiaryOpen
    ; Jump to script.
    db $07
    dw ShowC2Closed

; Read Sugar Shack's original business card and discover Cottage once.
ReadSugarCard:

C2Sc3_42:
    ; Show message 2.
    db $02, $0d
    ; Test object flag and branch when set.
    db $08, C2CottageKnown
    dw EndC2Item
    ; Add quick-list value.
    db $44, CabCottage

jr_007_63f5:
    ; Set object flag.
    db $09, C2CottageKnown
    ; End script.
    db $ff

; Describe the ordinary pencil.
LookPencil:

C2Sc3_43:
    ; Show message 1.
    db $01, $c2
    ; End script.
    db $ff

; Describe the small unusually shaped key 4.
LookC2Key4:

C2Sc3_44:
    ; Show message 1.
    db $01, $c3
    ; End script.
    db $ff

; Choose the tissue description from its original used flag.
LookTissue:

C2Sc3_45:
    ; Test object flag and branch when set.
    db $08, C2TissueUsed
    dw LookUsedTissue
    ; Show message 2.
    db $02, $46
    ; End script.
    db $ff

; Describe the used tissue.
LookUsedTissue:

C2Loc3_C2:
    ; Show message 2.
    db $02, $47
    ; End script.
    db $ff

; Pick up the tissue and hide its room object 4A.
TakeTissue:

C2Sc3_46:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $4a
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe Sugar's pillow using the regional text.
LookPillow:

C2Sc3_47:
    ; Show message 2.
    db $02, $48
    ; End script.
    db $ff

; Pick up the pillow and hide its room object 48.
TakePillow:

C2Sc3_48:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $48
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe Sugar's perfume using its regional product name.
LookPerfume:

C2Sc3_49:
    ; Show message 2.
    db $02, $49
    ; End script.
    db $ff

; Pick up the perfume and hide its room object 49.
TakePerfume:

C2Sc3_4A:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $49
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Read the newspaper with an obituary cut out by Sugar.
ReadSugarNews:

C2Sc3_4B:
    ; Show message 2.
    db $02, $4a

jr_007_6431:
    ; End script.
    db $ff

; Pick up Sugar's newspaper and hide its room object 47.
TakeSugarNews:

C2Sc3_4C:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $47
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe Sugar's dress using the original regional text.
LookC2Dress:

C2Sc3_4D:
    ; Show message 2.
    db $02, $4b
    ; End script.
    db $ff

; Describe the pile of dirty clothes.
LookSugarClothes:

C2Sc3_4E:
    ; Show message 2.
    db $02, $4c
    ; End script.
    db $ff

; Show McMurphy's deathbed testimony from the original note description.
ReadMcMNote:

C2Sc3_4F:
    ; Play audio.
    db $3e, $08
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $4e
    ; Set object flag.
    db $09, C2McMSeen
    ; Test object flag and branch when set.
    db $08, C2BribeKnown
    dw EndC2ItemCue
    ; Test object flag and branch when set.
    db $08, C2BondSeen
    dw HintFindLedger
    ; Show message 1.
    db $01, $7d
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; After the note, suggest finding a record of money transactions.
HintFindLedger:

C2Loc3_C3:
    ; Show message 1.
    db $01, $8c
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Describe the police uniform identified as McMurphy's.
LookMcMUniform:

C2Sc3_50:
    ; Show message 2.
    db $02, $4f
    ; End script.
    db $ff

; Describe the bundled deposit slips or read their opened contents.
LookDeposits:

C2Sc3_51:
    ; Test object flag and branch when set.
    db $08, C2DepositsOpen
    dw ReadDeposits
    ; Show message 2.
    db $02, $54
    ; End script.
    db $ff

; Read the four deposits and retain the original diary and bribe clue checks.
ReadDeposits:

C2Loc3_C4:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $55
    ; Test object flag and branch when set.
    db $08, C2BribeKnown
    dw DepositBribeText
    ; Test object flag and branch when clear.
    db $54, C2DiarySeen
    dw EndC2Item
    ; Show message 2.
    db $02, $56
    ; End script.
    db $ff

; Associate the deposit dates with McMurphy's courier-zero payments.
DepositBribeText:

C2Loc3_C5:
    ; Show message 0.
    db $00, $b1
    ; End script.
    db $ff

; Mark the deposit bundle open and read its contents.
OpenDeposits:

C2Sc3_52:
    ; Test object flag and branch when set.
    db $08, C2DepositsOpen
    dw C2AlreadyOpen
    ; Call script.
    db $05
    dw ShowC2Opening
    ; Set object flag.
    db $09, C2DepositsOpen
    ; Jump to script.
    db $07
    dw ReadDeposits

; Clear the deposit bundle open flag and show the closing reply.
CloseDeposits:

C2Sc3_53:
    ; Test object flag and branch when clear.
    db $54, C2DepositsOpen
    dw C2AlreadyClosed
    ; Clear object flag.
    db $0a, C2DepositsOpen
    ; Jump to script.
    db $07
    dw ShowC2Closed

; Show the original uncertain Bondwell house key description.
LookC2Key5:

C2Sc3_54:
    ; Show message 2.
    db $02, $7c
    ; End script.
    db $ff

; Describe Bondwell's driving license using the regional text.
LookBondLicense:

C2Sc3_55:
    ; Show message 2.
    db $02, $7f
    ; End script.
    db $ff

; Read the baggage claim ticket numbered 526.
LookClaimTicket:

C2Sc3_56:
    ; Show message 2.
    db $02, $80
    ; End script.
    db $ff

; Describe the laundry soap.
LookSoap:

C2Sc3_57:
    ; Show message 2.
    db $02, $b9
    ; End script.
    db $ff

; Describe the unmarked brass key.
LookC2Key6:

C2Sc3_58:
    ; Show message 2.
    db $02, $de
    ; End script.
    db $ff

; Describe the small magnet resembling a button.
LookMagnet:

C2Sc3_59:
    ; Show message 2.
    db $02, $df
    ; End script.
    db $ff

; Pick up the magnet and set its original pickup flag.
TakeMagnet:

C2Sc3_5A:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Set object flag.
    db $09, C2MagnetTaken
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Read the Malone handshake photo and mark the first recognition of Ventini.
ReadFramePhoto:

C2Sc3_5B:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $e0
    ; Test object flag and branch when set.
    db $08, C2VentiniKnown
    dw EndC2Item
    ; Play audio.
    db $3e, $08
    ; Show message 1.
    db $01, $75
    ; Set object flag.
    db $09, C2VentiniKnown
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Pick up the framed photo and hide its room object 51.
TakeFramePhoto:

C2Sc3_5C:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $51
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe the ledger; when opened, show its payment entries.
LookC2Ledger:

C2Sc3_5D:
    ; Hold text.
    db $2e
    ; Test object flag and branch when set.
    db $08, C2LedgerOpen
    dw ReadC2Ledger
    ; Show message 0.
    db $00, $b9
    ; Test object flag and branch when set.
    db $08, C2LedgerSeen
    dw EndC2Item
    ; Show message 1.
    db $01, $4f
    ; End script.
    db $ff

; Show payments routed through Ventini to Malone, then compare the original knowledge flags.
ReadC2Ledger:

C2Loc3_C6:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $ba
    ; Test object flag and branch when clear.
    db $54, C2DiarySeen
    dw EndC2Item
    ; Play audio.
    db $3e, $08
    ; Test object flag and branch when clear.
    db $54, C2BookMatch
    dw CompareLedgerPair
    ; Set text name 0.
    db $30, $68
    ; Set text name 1.
    db $31, $6b
    ; Show message 3.
    db $2c, $30
    ; Set text name 0.
    db $30, $6b
    ; Set text name 1.
    db $31, $6e
    ; Show message 3.
    db $2c, $31
    ; Test object flag and branch when clear.
    db $54, C2BondSeen
    dw HintMissingPay
    ; Set text name 0.
    db $30, $67
    ; Jump to script.
    db $07
    dw HintFalseLedger

; Without the black-book comparison, compare the examined ledger with the diary and show the payment gap.
CompareLedgerPair:

C2Loc3_C7:
    ; Set text name 0.
    db $30, $6a
    ; Set text name 1.
    db $31, $6c
    ; Show message 3.
    db $2c, $2e
    ; Set text name 0.
    db $30, $6b
    ; Set text name 1.
    db $31, $6e
    ; Jump to script.
    db $07
    dw HintAbsentPay

; Open the ledger, mark it examined, and show the payment entries.
OpenC2Ledger:

C2Sc3_5E:
    ; Test object flag and branch when set.
    db $08, C2LedgerOpen
    dw C2AlreadyOpen
    ; Hold text.
    db $2e
    ; Call script.
    db $05
    dw ShowC2Opening
    ; Set object flag.
    db $09, C2LedgerOpen
    ; Set object flag.
    db $09, C2LedgerSeen
    ; Jump to script.
    db $07
    dw ReadC2Ledger

; Clear the ledger open flag and follow the shared close response.
CloseC2Ledger:

C2Sc3_5F:
    ; Test object flag and branch when clear.
    db $54, C2LedgerOpen
    dw C2AlreadyClosed
    ; Clear object flag.
    db $0a, C2LedgerOpen
    ; Jump to script.
    db $07
    dw ShowC2Closed

; Describe the ornate brass hat rack.
LookC2HatRack:

C2Sc3_60:
    ; Show message 0.
    db $00, $af
    ; End script.
    db $ff

; Retain the original attribute checks and set the hat rack state before adding the item.
TakeC2HatRack:

C2Sc3_61:
    ; Test selected attribute bit 1.
    db $1a
    ; Branch if result bit 0 is set.
    db $03
    dw TakeC2ItemNow
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Set state and refresh without cue.
    db $22, C2HatRackTaken
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe the loose bird-shaped paperweight and set its inspection flag.
LookPaperweight:

C2Sc3_62:
    ; Show message 0.
    db $00, $b0
    ; Set object flag.
    db $09, C2WeightSeen
    ; End script.
    db $ff

; Hide object 1A and use the shared item pickup path.
TakePaperweight:

C2Sc3_63:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $1a
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe the detached bird and omit its extra hint when flag 86 is set.
LookC2Dart:

C2Sc3_64:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $b2
    ; Test object flag and branch when set.
    db $08, C2DartUsed
    dw EndC2Item
    ; Show message 0.
    db $00, $b3
    ; End script.
    db $ff

; Use the original flag 86 gate before picking up the detached bird.
TakeC2Dart:

C2Sc3_65:
    ; Test object flag and branch when set.
    db $08, C2DartUsed
    dw DartUnavailable

jr_007_6546:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $18
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the original refusal to take the bird after it has been used.
DartUnavailable:

C2Loc3_C8:
    ; Show message 0.
    db $00, $e1
    ; End script.
    db $ff

; Describe the base of the paperweight.
LookDartBase:

C2Sc3_66:
    ; Show message 0.
    db $00

jr_007_6555:
    db $b4

jr_007_6556:
    ; End script.
    db $ff

; Hide object 19 and use the shared item pickup path.
TakeDartBase:

C2Sc3_67:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $19
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe the silver letter opener using the original regional wording.
LookC2Opener:

C2Sc3_68:
    ; Show message 0.
    db $00, $b6
    ; End script.
    db $ff

; Describe the old sandwich using the original regional wording.
LookOldSandwich:

C2Sc3_69:
    ; Show message 0.
    db $00

Jump_007_6566:
    db $b8
    ; End script.
    db $ff

; Describe the desk blotter using the original regional wording.
LookDeskMat:

C2Sc3_6A:
    ; Show message 2.
    db $02, $fb
    ; End script.
    db $ff

; Show the cannot-open reply using the selected item name.
ItemCannotOpen:

C2Sc3_6B:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $3a
    ; End script.
    db $ff

; Set the desk mat pickup flag, hide object 53 and finish adding the item.
TakeDeskMat:

C2Sc3_6C:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Set object flag.
    db $09, C2DeskMatTaken
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $53
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Read the framed photo description without the carried-photo knowledge updates.
LookFramedPhoto:

C2Sc3_6D:
    ; Show message 0.
    db $00, $2f
    ; End script.
    db $ff

; Read the original Chicago company list and its regional annotations.
ReadCompanyList:

C2Sc3_6E:
    ; Show message 2.
    db $02, $f5
    ; End script.
    db $ff

; Describe the banana according to its peeled flag.
LookC2Banana:

C2Sc3_6F:
    ; Test object flag and branch when set.
    db $08, C2BananaPeeled
    dw LookPeeledBanana
    ; Show message 2.
    db $02, $f6
    ; End script.
    db $ff

; Show the too-soft banana description after peeling.
LookPeeledBanana:

C2Loc3_C9:
    ; Show message 2.
    db $02, $f7
    ; End script.
    db $ff

; Reject a second peeling; otherwise show the action and choose the original peel-state path.
PeelC2Banana:

C2Sc3_70:
    ; Test object flag and branch when set.
    db $08, C2BananaPeeled
    dw NoC2ItemEffect
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $ed
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw ShowC2Peel
    ; Set text name 0.
    db $30, C2Peel
    ; Show message 3.
    db $2c, $2d
    ; Set object flag.
    db $09, C2BananaPeeled
    ; End script.
    db $ff

; Clear the peel item state and refresh the list when the original selected attribute bit zero is clear.
ShowC2Peel:

C2Loc3_CA:
    ; Clear item state.
    db $16, C2Peel
    ; Refresh item list.
    db $78
    ; Set object flag.
    db $09, C2BananaPeeled
    ; End script.
    db $ff

; Mark the banana taken, then follow the shared item pickup path.
TakeC2Banana:

C2Sc3_71:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Set object flag.
    db $09, C2BananaTaken
    ; Jump to script.
    db $07
    dw TakeC2ItemNow

; Describe the black ledger; when open, compare it with the diary.
LookBlackBook:

C2Sc3_72:
    ; Hold text.
    db $2e
    ; Test object flag and branch when set.
    db $08, C2BlackOpen
    dw ReadBlackBook
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $ef
    ; Test object flag and branch when set.
    db $08, C2BlackSeen
    dw EndC2ItemCue
    ; Show message 1.
    db $01, $4f
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; With the diary examined, record their agreement and continue the ledger comparison.
ReadBlackBook:

C2Loc3_CB:
    ; Hold text.
    db $2e
    ; Test object flag and branch when clear.
    db $54, C2DiarySeen
    dw HintUnreadDiary
    ; Set object flag.
    db $09, C2BookMatch
    ; Set text name 0.
    db $30, $6a
    ; Set text name 1.
    db $31, $6c
    ; Show message 3.
    db $2c, $32
    ; Play audio.
    db $3e, $08
    ; Test object flag and branch when clear.
    db $54, C2LedgerSeen
    dw HintSameEntries
    ; Set text name 0.
    db $30, $69
    ; Set text name 1.
    db $31, $6b
    ; Show message 3.
    db $2c, $30
    ; Set text name 0.
    db $30, $6b
    ; Set text name 1.
    db $31, $6d
    ; Show message 3.
    db $2c, $31
    ; Test object flag and branch when clear.
    db $54, C2BondSeen
    dw HintMissingPay
    ; Set text name 0.
    db $30, $69
    ; Show message 3.
    db $2c, $34
    ; Jump to script.
    db $07
    dw ShowC2Bribes

; Without an examined diary, describe the payment entries as insufficient information.
HintUnreadDiary:

C2Loc3_CC:
    ; Show message 2.
    db $02, $f3
    ; End script.
    db $ff

; Set the black ledger open and examined flags, then compare its entries.
OpenBlackBook:

C2Sc3_73:
    ; Test object flag and branch when set.
    db $08, C2BlackOpen
    ; Target C2AlreadyOpen; retain the interior label.
    db $ec

jr_007_65eb:
    db $66
    ; Call script.
    db $05
    dw ShowC2Opening
    ; Set object flag.
    db $09, C2BlackOpen
    ; Set object flag.
    db $09, C2BlackSeen
    ; Jump to script.
    db $07
    dw ReadBlackBook

; Clear the black ledger open flag while retaining its examined state.
CloseBlackBook:

C2Sc3_74:
    ; Test object flag and branch when clear.
    db $54, C2BlackOpen
    dw C2AlreadyClosed
    ; Clear object flag.
    db $0a, C2BlackOpen
    ; Jump to script.
    db $07
    dw ShowC2Closed

; Read the first toe tag using its original regional name.
LookTag1:

C2Sc3_75:
    ; Show message 2.
    db $02, $a3
    ; End script.
    db $ff

; Pick up the first toe tag and hide its room object 4D.
TakeTag1:

C2Sc3_76:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item

jr_007_6605:
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $4d
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Read the toe tag identifying Thomas Bondwell.
LookTag2:

C2Sc3_77:
    ; Show message 2.
    db $02, $a4
    ; End script.
    db $ff

; Pick up the second toe tag and hide its room object 4E.
TakeTag2:

C2Sc3_78:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, $4e
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the banana-peel description.
LookC2Peel:

C2Sc3_79:
    ; Show message 2.
    db $02, $ee
    ; End script.
    db $ff

; End the original item action without a message.
ItemSilentAction:

C2Sc3_7A:
    ; End script.
    db $ff

; Retain the second ring pickup restrictions and hide object 65.
TakeC2Ring2:

C2Sc3_7B:
    ; Test selected attribute bit 1.
    db $1a
    ; Branch if result bit 0 is set.
    db $03
    dw TakeC2ItemNow
    ; Test room argument and branch on equality.
    db $25, RoomSecretOffice
    dw RejectC2Item
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a

jr_007_662e:
    db $65
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the separate .38 ammunition description shared by six original records.
LookC2AmmoAlt:

C2Sc3_7C:
    ; Show message 0.
    db $00, $c0
    ; End script.
    db $ff

; Show the original reply that this ammunition is no longer needed.
AmmoNotNeeded:

C2Sc3_7D:
    ; Show message 1.
    db $01, $47
    ; End script.
    db $ff

; Choose an alternate target for either original cigar-ring variant.
UseC2Ring:

C2Sc3_7E:
    ; Choose alternate target; selected input runs the following script.
    db $2d

; Match the desk mat, desk, containers, or original fallback target.
MatchRingTarget:

C2Loc3_CD:
    ; Match alternate item against type, ID and script target rows.
    db $32, $03, C2DeskMat
    dw TryRingOnMat
    db $01, $0c
    dw MatchDeskRing
    db $02, $00
    dw PutItemWasher
    db $02, $01
    dw PutItemTrash1
    db $02, $02
    dw PutItemTrash2
    db $02, $03
    dw MatchDeskStore
    db $00, $a7
    dw PutItemDirect
    db $fe, $fe
    dw NoC2ItemEffect

; Choose the alternate target for the original item placement action.
PutC2Item:

C2Sc3_7F:
    ; Choose alternate target; selected input runs the following script.
    db $2d

; Match the washer, trash cans, desk drawer or original direct-placement target.
MatchItemPlace:

C2Loc3_CE:
    ; Match alternate item against type, ID and script target rows.
    db $32, $02, $00
    dw PutItemWasher
    db $02, $01
    dw PutItemTrash1
    db $02, $02
    dw PutItemTrash2
    db $02, $03
    dw MatchDeskStore
    db $00, $a7
    dw PutItemDirect
    db $fe, $fe
    dw NoC2ItemEffect

; Place the selected item in the washer group.
PutItemWasher:

C2Loc3_CF:
    ; Place the item in the washer.
    db $65, GrpWasher
    ; End script.
    db $ff

; Place the selected item in the first trash group.
PutItemTrash1:

C2Loc3_D0:
    ; Place the item in the first trash can.
    db $65, GrpTrash1
    ; End script.
    db $ff

; Place the selected item in the second trash group.
PutItemTrash2:

C2Loc3_D1:
    ; Place the item in the second trash can.
    db $65, GrpTrash2
    ; End script.
    db $ff

; Retain the original restricted-item list and worn-clothing checks for desk storage.
MatchDeskStore:

C2Loc3_D2:
    ; Test packed item argument and branch on equality.
    db $46, C2Trench
    dw StoreTrenchCheck
    ; Test packed item argument and branch on equality.
    db $46, C2Pants
    dw StorePantsCheck
    ; Test packed item argument and branch on equality.
    db $46, C2Coat
    dw StoreCoatCheck
    ; Test packed item argument and branch on equality.
    db $46, $3a
    dw StoreUniformCheck
    ; Test packed item argument and branch on equality.
    db $46, $17
    dw DeskItemRefusal
    ; Test packed item argument and branch on equality.
    db $46, $00
    dw DeskItemRefusal
    ; Test packed item argument and branch on equality.
    db $46, $01
    dw DeskItemRefusal
    ; Test packed item argument and branch on equality.
    db $46, $02
    dw DeskItemRefusal
    ; Test packed item argument and branch on equality.
    db $46, $03
    dw DeskItemRefusal
    ; Test packed item argument and branch on equality.
    db $46, $04
    dw DeskItemRefusal
    ; Test packed item argument and branch on equality.
    db $46, C2Paperweight
    dw DeskItemRefusal
    ; Test packed item argument and branch on equality.
    db $46, C2Banana
    ; Target DeskItemRefusal; retain the interior label.
    db $b0

jr_007_66ac:
    db $66

; Place the selected item in the desk group.
PutItemDesk:

C2Loc3_D3:
    ; Place the item in the desk drawer.
    db $65, GrpDesk
    ; End script.
    db $ff

; Show the original give-up reply for a restricted desk item.
DeskItemRefusal:

C2Loc3_D4:
    ; Show message 1.
    db $01, $f3
    ; End script.
    db $ff

; Allow storing the trench only when its worn flag is clear.
StoreTrenchCheck:

C2Loc3_D5:
    ; Test object flag and branch when clear.
    db $54, C2TrenchWorn
    dw PutItemDesk
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

; Allow storing the pants only when their worn flag is clear.
StorePantsCheck:

C2Loc3_D6:
    ; Test object flag and branch when clear.
    db $54, C2PantsWorn
    ; Target PutItemDesk; retain the interior label.
    db $ad

jr_007_66bd:
    db $66
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

; Allow storing the coat only when its worn flag is clear.
StoreCoatCheck:

C2Loc3_D7:
    ; Test object flag and branch when clear.
    db $54, C2CoatWorn
    dw PutItemDesk
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

; Allow storing the uniform only when its worn flag is clear.
StoreUniformCheck:

C2Loc3_D8:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw PutItemDesk
    ; Show message 2.
    db $02, $c7
    ; End script.
    db $ff

; Confirm direct placement without writing a container group record.
PutItemDirect:

C2Loc3_D9:
    ; Confirm direct placement without a group record.
    db $65, PutDirect
    ; End script.
    db $ff

; Reject an item with selected attribute bit zero already set; otherwise use the shared pickup path.
TakeC2Item:

C2Sc3_80:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item

; Show the pickup response and append the selected item to the list.
TakeC2ItemNow:

C2Loc3_DA:
    ; Call script.
    db $05
    dw ShowC2Take
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; End the current Case II item script.
EndC2Item:

C2Loc3_DB:
    ; End script.
    db $ff

; Show the selected item name in the pickup message and return to the calling script.
ShowC2Take:

C2Loc3_DC:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1c
    ; Return to calling script.
    db $06

; Append the selected item to the list and end its script.
AddC2ItemEnd:

C2Loc3_DD:
    ; Append selected item to list.
    db $26
    ; End script.
    db $ff

; Show the original questioning response to an invalid item action.
RejectC2Item:

C2Sc3_81:
    ; Show message 0.
    db $00, $2d
    ; End script.
    db $ff

; Show the original nothing-happens response and end the item action.
NoC2ItemEffect:

C2Sc3_82:
    ; Show message 0.
    db $00, $2c
    ; End script.
    db $ff
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02
    ; End script.
    db $ff

; Show that the selected item is already open.
C2AlreadyOpen:

C2Loc3_DE:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $19
    ; End script.
    db $ff

; Show the selected item name in the close response.
ShowC2Closed:

C2Loc3_DF:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $03
    ; End script.
    db $ff

; Show that the selected item is already closed.
C2AlreadyClosed:

C2Loc3_E0:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1a
    ; End script.
    db $ff

; Show the shared unlocking reply and end the action.
C2UnlockEnd:

C2Loc3_E1:
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $15
    ; Set text name 0.
    db $30, $af
    ; Show message 3.
    db $2c, $02
    ; Set selected state and refresh.
    db $21
    ; End script.
    db $ff

; Play the lock cue, show the unlocked reply, and return.
C2UnlockReply:

C2Loc3_E2:
    ; Play audio.
    db $3e, $15
    ; Hold text.
    db $2e
    ; Set text name 0.
    db $30, $af
    ; Show message 3.
    db $2c, $02
    ; Return to calling script.
    db $06

; Play the lock cue, show the locked reply, and end the action.
C2LockReply:

C2Loc3_E3:
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $15
    ; Set text name 0.
    db $30, $af
    ; Show message 3.
    db $2c, $03
    ; End script.
    db $ff

; Play the original room cue and end the item script.
EndC2ItemCue:

C2Loc3_E4:
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff
