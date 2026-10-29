
; Show the shared original cash and coin description.
LookC2Money:
; Opcode starts are annotated; scalar operands and inline item-match rows remain data.

C2Sc3_00:
    ; Show message 1.
    db $01, $65 ; Message Text14Message65: YOU'VE NEVER HAD / MUCH CASH, BUT YOUSURE DO RECOGNIZE / IT WHEN YOU SEE / IT.[END]
    ; End script.
    db $ff

; Show the original .38 ammunition description.
LookC2Bullet:

C2Sc3_01:
    ; Show message 1.
    db $01, $7f ; Message Text14Message7F: THIS SMALL / PROJECTILE WAS / DESIGNED TO BE / USED IN A .38 / SPECIAL.[END]
    ; End script.
    db $ff

; Show the original D-cell description.
LookC2Cell:

C2Sc3_02:
    ; Show message 1.
    db $01, $78 ; Message Text14Message78: THIS D CELL / BATTERY HAS BEGUN / TO CORRODE.[END]
    ; End script.
    db $ff

; Show the original five-dollar chip description.
LookC2Chip:

C2Sc3_03:
    ; Show message 0.
    db $00, $f5 ; Message Text13Message75: A CHIP IS WORTH / $5.[END]
    ; End script.
    db $ff

; Read the original hotel and casino embroidery on the towel.
LookC2Towel:

C2Sc3_04:
    ; Show message 0.
    db $00, $18 ; Message Text12Message18: THE CHEAP / EMBROIDERY ON / THE TOWEL READS, / "LUCKY DICE HOTEL / AND CASINO."[END]
    ; End script.
    db $ff

; Use the original visible-button path or fall through to alternate target selection.
UseLift4Button:

C2Sc3_05:
    ; Test object visibility.
    db $28, C2VisIdLiftButton4Installed
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
    db $32, $00, C2TargetBathSink
    dw MatchTowelWater
    db $00, C2TargetHotelBlackjackTable
    dw MatchChipTable
    db $00, C2TargetHotelDealerTag

jr_007_598b:
    dw UseItemDealer
    db $00, C2TargetHotelDealer
    dw UseItemDealer
    db $00, C2TargetLiftPanel
    dw MatchLiftButton
    db $00, C2TargetTrainConductor
    ; Target MatchFareItems; retain the interior label.
    db LOW(MatchFareItems)

jr_007_5998:
    db HIGH(MatchFareItems)
    db $00, C2TargetTrainChattyWoman

jr_007_599b:
    dw MatchTrainSharp
    db $00, C2TargetTrainSeatMan
    dw UseItemConductor
    db $00, C2TargetTrainYoungWoman

jr_007_59a3:
    dw MatchTrainSharp
    db $00, C2TargetChicagoNewsDog
    dw UseItemC2Dog
    db $00, C2TargetJoeBoardedWindow

jr_007_59ab:
    dw MatchKnifeBoards
    db $00, C2TargetSugarHobo
    dw UseItemHobo
    db $00, C2TargetMorgueClerk

jr_007_59b3:
    dw MatchClerkItem
    db $00, C2TargetCleanersDartboard
    dw MatchDartBoard
    db $01, C2ContainerSecretOfficeDesk
    dw MatchDeskRing
    db $01, C2ContainerJoeDiarySlot
    dw MatchSlotCoin
    db $01, C2ContainerJoeEmptySlot
    dw MatchSlotCoin
    db $02, C2GroupLaundryWasher
    dw MatchItemWasher
    db $03, C2DeskMat
    dw TryRingOnMat
    db $04, C2ItemGun
    dw MatchGunBullet
    db $04, C2ItemFlashlight
    dw MatchLampCell
    db $04, C2ItemVacuumBag
    dw MatchBagKnife
    db $05, C2TargetJammedCabDoor
    dw MatchKnifeCab
    db $05, C2TargetJoeRearDoor
    dw KnifeJoeLock
    db $05, C2TargetSugarApartmentDoor
    dw KnifeSugarLock
    db $00, C2TargetSelf
    dw MatchSelfItem
    db $00, C2TargetHotelCashCounter
    dw UseItemCashier
    db $00, C2TargetHotelCashier
    dw UseItemCashier
    db $00, C2TargetVegasSeller
    dw UseItemSeller
    db $00, C2TargetVegasClaimAttendant
    dw UseItemAttendant
    db $00, C2TargetChicagoNewsSeller
    dw UseItemNewsMan
    db $00, C2TargetCabDriver
    dw UseItemCabDriver
    db $02, C2GroupMaloneDesk
    dw MatchDeskStore
    db $fe, $fe
    dw MatchPencilUse

; Match the towel before its original soaking and face-dabbing reply.
MatchTowelWater:

C2Loc3_01:
    ; Test packed item argument and branch on inequality.
    db $56, C2ItemTowel
    ; Target NoC2ItemEffect; retain the interior label.
    db LOW(NoC2ItemEffect)

jr_007_5a0c:
    db HIGH(NoC2ItemEffect)
    ; Show message 0.
    db $00, $22 ; Message Text12Message22: YOU SOAK THE TOWELIN THE WATER AND / DAINTILY DAB YOUR / FOREHEAD.[PAGE] / HOW SOPHIS...
    ; End script.
    db $ff

; Match the chip before the original blackjack entry.
MatchChipTable:

C2Loc3_02:
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemChips
    dw PlayC2Blackjack
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Match the ordinary item used on the dealer.
UseItemDealer:

C2Loc3_03:
    ; Test packed item argument and branch on equality.
    db $46, C2ItemBoxingClipping
    dw ShowRudyClip
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    dw BottleDealer
    ; Test packed item argument and branch on equality.
    db $46, C2Knife
    dw KnifeDealer
    ; Test packed item argument and branch on equality.
    db $46, C2Opener

jr_007_5a25:
    dw AttackC2Dealer
    ; Test packed item argument and branch on equality.
    db $46, C2Dart
    dw DartDealerReply
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemChips
    dw PlayC2Blackjack
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
    db $00, $8d ; Message Text13Message0D: RUDY GLANCES AT / THE ARTICLE AND / WINKS.[END]
    ; Run map pulse animation.
    db $75
    ; Set state bit.
    db $0f, C2StateRudyRecognizesAce
    ; Show message 0.
    db $00, $8e ; Message Text13Message0E: "SURE'S BEEN A / LONG TIME, ACE," / HE WHISPERS, "I / THINK YOUR LUCK ISABOUT TO TURN...
    ; Set object flag.
    db $09, C2RudyKnows
    ; End script.
    db $ff

; Show Rudy reminiscing after the clipping has been shown.
RudyClipAgain:

C2Loc3_05:
    ; Show message 0.
    db $00, $8f ; Message Text13Message0F: "I MISS THE OLD / DAYS, ACE," RUDY / SAYS WITH A SIGH.[END]
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
    db $2c, $17 ; Message Text18Message17: IT'S CRUEL TO / THROW A DART AT / THE [OBJECT_WRAM:37C5].[END]
    ; End script.
    db $ff

; Name Rudy for the original dart refusal.
DartRudyReply:

C2Loc3_07:
    ; Set text name 0.
    db $30, $be
    ; Show message 3.
    db $2c, $17 ; Message Text18Message17: IT'S CRUEL TO / THROW A DART AT / THE [OBJECT_WRAM:37C5].[END]
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
    db $0f, C2StateCasinoFrontDoorOpen

; Prepare the move from room 05 to 11 and enter the guard response.
EvictDealerAttack:

C2Loc3_0D:
    ; Prepare room move and read two room arguments.
    db $3b, RoomVegasBlackjack, RoomHotelFront
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
    db $46, C2ItemHardingLicense
    dw ShowClerkID
    ; Test packed item argument and branch on equality.
    db $46, C2MorgueTag1
    dw GiveClerkTag1
    ; Test packed item argument and branch on equality.
    db $46, C2MorgueTag2
    dw GiveClerkTag2
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    ; Target BottleWorkerCheck; retain the interior label.
    db LOW(BottleWorkerCheck)

jr_007_5a8c:
    db HIGH(BottleWorkerCheck)
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
    db $02, $90 ; Message Text17Message10: THE CLERK LOOKS ATYOUR LICENSE.[END]
    ; Set object flag.
    db $09, C2ClerkSawID

; Explain that only authorized uniforms may enter the back room.
ClerkNeedsUni:

C2Loc3_11:
    ; Show message 2.
    db $02, $91 ; Message Text17Message11: HE SNORTS, / "PRIVATE DICK, / EH? SORRY, ONLY / UNIFORMS ARE / ALLOWED IN BACK."[END]
    ; End script.
    db $ff

; Return the license and report no body with that name.
ClerkNoBody:

C2Loc3_12:
    ; Show message 2.
    db $02, $92 ; Message Text17Message12: THE CLERK RETURNS / THE LICENSE, AND / SAYS THERE'S NO / ONE HERE BY THAT / NAME.[END]
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
    db $02, $93 ; Message Text17Message13: THE CLERK SIGHS INA BORED TONE,[END]
    ; Show message 2.
    db $02, $94 ; Message Text17Message14: "NOPE, NO / BELONGINGS FOR A / MR. JONES."[END]
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
    db $02, $98 ; Message Text17Message18: WITH AN ODD GLEAM / IN HIS EYE, THE / CLERK SAYS,[PAGE] / "I DON'T KNOW ALL / THE DET...
    ; Call script.
    db $05
    dw ConsumeSlot0Item
    ; Show message 1.
    db $01, $37 ; Message Text14Message37: THE CLERK QUICKLY / BRINGS OUT A BOX.[PAGE] / "THESE WERE MR. / BONDWELL'S / BELONGIN...
    ; Show object.
    db $29, C2VisIdMorgueBox2Closed
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
    db $01, $54 ; Message Text14Message54: "HEY, YOU AREN'T ACOP, ARE YOU!?! / WHERE'D YOU GET / THIS?"[PAGE] / THE CLERK SOUNDS...
    ; Jump to script.
    db $07
    dw C2JailEnding

; Name the worker for the original dart refusal.
DartWorkerReply:

C2Loc3_16:
    ; Set text name 0.
    db $30, $b4
    ; Show message 3.
    db $2c, $17 ; Message Text18Message17: IT'S CRUEL TO / THROW A DART AT / THE [OBJECT_WRAM:37C5].[END]
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
    db $02, $8e ; Message Text17Message0E: STARTLED BY YOUR / RUDENESS, THE / CLERK PRESSES / THE ALARM TO CALL / THE POLICE.[END]
    ; Run scene effect.
    db $39, FxPoliceman
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 1.
    db $01, $8a ; Message Text15Message0A: A COP COMES OUT / OF THE DOORWAY.[PAGE] / WITH A GUILTY / GLANCE ABOUT, YOU / DECIDE ...
    ; Wait sixty ticks.
    db $7e
    ; Run scene effect.
    db $39, FxHandcuffs
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 1.
    db $01, $81 ; Message Text15Message01: YOU TRY TO RUN, / BUT HE IMMEDIATELYCATCHES YOU.[PAGE] / YOU SHOULDN'T HAVEDISTURBED ...
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
    db $01, $22 ; Message Text14Message22: YOU PLACE THE / CIGAR RING ON / THE DESK.[PAGE] / YOU CAN ALMOST / PICTURE THE LOOK /...
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
    db $46, C2ItemMagnet
    dw FitLiftButton
    ; Test packed item argument and branch on equality.
    db $46, C2ItemLiftButton
    dw FitLiftButton
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Fit the button, reset the original door states and flags, and consume the selected item.
FitLiftButton:

C2Loc3_21:
    ; Clear state bit.
    db $10, C2StateLaundryChuteDoorOpen
    ; Clear object flag.
    db $0a, LaundryUnlocked
    ; Clear state bit.
    db $10, C2StateCleanersEntranceOpen
    ; Set object flag.
    db $09, C2CleanLock
    ; Show object.
    db $29, C2VisIdLiftButton4Installed
    ; Refresh room objects.
    db $2b
    ; Show message 0.
    db $00, $a6 ; Message Text13Message26: CLICK![PAGE] / THE MAGNETIC / BUTTON FITS IN TO / PLACE AT THE TOP / OF THE PANEL.[END]
    ; Show object.
    db $29, C2VisIdLiftButton4Pressed
    ; Refresh room objects.
    db $2b
    ; Select operation slot 0.
    db $35
    ; Clear attribute bit 0.
    db $19
    ; Drop selected list item.
    db $33
    ; Test packed item argument and branch on equality.
    db $46, C2ItemLiftButton
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
    db $29, C2VisIdLiftButton4Pressed
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
    db $0e, C2StateLift1DoorOpen
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift4From1
    ; Call script.
    db $05
    dw LiftClosingReply
    ; Clear state and refresh.
    db $24, C2StateLift1DoorOpen

; Start the fourth-floor ride and swap floor objects 11 and 12.
RideLift4From1:

C2Loc3_23:
    ; Call script.
    db $05
    dw StartLift4Ride
    ; Hide object.
    db $2a, C2VisIdLiftFloor1
    ; Show object.
    db $29, C2VisIdLiftFloor2
    ; Refresh room objects.
    db $2b
    ; Wait while rendering objects.
    db $47

jr_007_5b70:
    db $18

; Swap floor objects 12 and 13 and retain the original wait.
Lift4PassFloor2:

C2Loc3_24:
    ; Hide object.
    db $2a, C2VisIdLiftFloor2
    ; Show object.
    db $29

jr_007_5b74:
    db C2VisIdLiftFloor3
    ; Refresh room objects.
    db $2b
    ; Wait while rendering objects.
    db $47, $18

; Show floor object 14, announce floor four, and open its original door state.
Lift4Arrive:

C2Loc3_25:
    ; Hide object.
    db $2a, C2VisIdLiftFloor3
    ; Show object.
    db $29, C2VisIdLiftFloor4

jr_007_5b7c:
    ; Refresh room objects.
    db $2b
    ; Wait while rendering objects.
    db $47, $18
    ; Set script value 0.
    db $49, $04
    ; Show message 3.
    db $2c, $20 ; Message Text18Message20: WITH A JOLT, YOU / ARRIVE AT [NUM8_WRAM:87C5]F.[END]
    ; Hide object.
    db $2a, C2VisIdLiftButton4Pressed
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, C2StateLift4DoorOpen
    ; End script.
    db $ff

; Close the second-floor door state before the shared fourth-floor ride.
CheckLift4From2:

C2Loc3_26:
    ; Test state bit.
    db $0e, C2StateLift2DoorOpen
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift4From2
    ; Call script.
    db $05
    dw LiftClosingReply
    ; Clear state and refresh.
    db $24, C2StateLift2DoorOpen

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
    db $0e, C2StateLift3DoorOpen
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift4From3
    ; Call script.
    db $05
    dw LiftClosingReply
    ; Clear state and refresh.
    db $24, C2StateLift3DoorOpen

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
    db $29, C2VisIdLiftButton4Pressed
    ; Refresh room objects.
    db $2b

jr_007_5bae:
    ; Test state bit.
    db $0e, C2StateLift4DoorOpen
    ; Branch if result bit 0 is clear.
    db $04

jr_007_5bb1:
    dw Lift4AlreadyHere
    ; Call script.
    db $05
    dw LiftClosingReply
    ; Clear state and refresh.
    db $24, C2StateLift4DoorOpen

; Hide the travel object, reopen the fourth-floor state, and show the same-floor reply.
Lift4AlreadyHere:

C2Loc3_2B:
    ; Hide object.
    db $2a, C2VisIdLiftButton4Pressed
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, C2StateLift4DoorOpen
    ; Show message 1.
    db $01, $29 ; Message Text14Message29: IT IMMEDIATELY / OPENS AGAIN.[PAGE] / OOPS... YOU / MUST'VE PRESSED / THE BUTTON FOR ...
    ; End script.
    db $ff

; Prepare the door name, show the closing reply, and return.
LiftClosingReply:

C2Loc3_2C:
    ; Set text name 0.
    db $30, $b0
    ; Show message 3.
    db $2c, $23 ; Message Text18Message23: THE [OBJECT_WRAM:37C5] / CLOSES.[END]
    ; Return to calling script.
    db $06

; Show the movement reply, set room 0A before animation, and return.
StartLift4Ride:

C2Loc3_2D:
    ; Show message 0.
    db $00, $a5 ; Message Text13Message25: WITH A JERK, THE / ELEVATOR STARTS / MOVING.[END]

jr_007_5bc9:
    ; Set current room.
    db $50, RoomVegasLift4
    ; Return to calling script.
    db $06

; Dispatch the original carried-item self-use choices and fallback.
MatchSelfItem:

C2Loc3_2E:
    ; Test packed item argument and branch on equality.
    db $46, C2ItemTowel
    dw WipeTowelReply
    ; Test packed item argument and branch on equality.
    db $46, C2ItemPekingDuck
    dw EatC2Duck
    ; Test packed item argument and branch on equality.
    db $46, C2Banana
    dw EatC2Banana
    ; Test packed item argument and branch on equality.
    db $46

jr_007_5bd9:
    db C2Peel
    dw RefuseC2Peel
    ; Test packed item argument and branch on equality.
    db $46, C2ItemSugarTissue
    dw EatC2Tissue
    ; Test packed item argument and branch on equality.
    db $46, C2ItemSugarPerfume
    dw DrinkPerfume
    ; Test packed item argument and branch on equality.
    db $46, C2ItemDress

jr_007_5be6:
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
    db $46, C2ItemPoliceUniform
    dw WearC2Uniform
    ; Test packed item argument and branch on equality.
    db $46, C2ItemSandwich
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
    db $00, $23 ; Message Text12Message23: YOU WIPE YOUR FACEWITH THE TOWEL / TRYING TO CLEAN / AWAY THE GRIME OF / THE PAST FEW...
    ; End script.
    db $ff

; Check the used flag, show the tissue reply, and consume it.
EatC2Tissue:

C2Loc3_30:
    ; Test object flag and branch when set.
    db $08, C2TissueUsed
    dw EatUsedTissue
    ; Show message 2.
    db $02, $61 ; Message Text16Message61: YOU'VE HEARD OF / HAVING FIBER IN / YOUR DIET... BUT / THAT'S RIDICULOUS![END]
    ; Call script.
    db $05
    dw ConsumeSlot0Item
    ; End script.
    db $ff

; Show the regional used-tissue reply and retain its original consumption.
EatUsedTissue:

C2Loc3_31:
    ; Show message 2.
    db $02, $62 ; Message Text16Message62: NO THANKS, YOU'LL / PASS ON THAT![END]
    ; Call script.
    db $05
    dw ConsumeSlot0Item
    ; End script.
    db $ff

; Show the perfume drinking reply without an item consumption command.
DrinkPerfume:

C2Loc3_32:
    ; Show message 2.
    db $02, $65 ; Message Text16Message65: GULP! YEECH![PAGE] / YOUR TONGUE NOW / SMELLS LIKE A / BORDELLO![END]
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
    db $02, $6a ; Message Text16Message6A: IT WOULDN'T FIT / YOU, BESIDES THE / COLOR WOULD DO / NOTHING FOR YOU![END]
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
    db $02, $6c ; Message Text16Message6C: THIS POLICE / UNIFORM SEEMS / LOOSE AND BAGGY ONYOU.[END]
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
    db $2c, $12 ; Message Text18Message12: YOU TAKE OFF / THE [OBJECT_WRAM:37C5].[END]
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
    db $2c, $11 ; Message Text18Message11: IN ORDER TO PUT ONTHE [OBJECT_WRAM:37C5], / YOU NEED TO / TAKE OFF THE / [OBJECT_WRAM...
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
    db $2c, $11 ; Message Text18Message11: IN ORDER TO PUT ONTHE [OBJECT_WRAM:37C5], / YOU NEED TO / TAKE OFF THE / [OBJECT_WRAM...
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
    db $2c, $11 ; Message Text18Message11: IN ORDER TO PUT ONTHE [OBJECT_WRAM:37C5], / YOU NEED TO / TAKE OFF THE / [OBJECT_WRAM...
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
    db $2c, $11 ; Message Text18Message11: IN ORDER TO PUT ONTHE [OBJECT_WRAM:37C5], / YOU NEED TO / TAKE OFF THE / [OBJECT_WRAM...
    ; End script.
    db $ff

; Show the old-food response, then consume the first item.
EatOldFood:

C2Loc3_3A:
    ; Show message 0.
    db $00, $be ; Message Text13Message3E: YOU GAG DOWN THE / OLD FOOD.[END]

; Call the shared first-slot consumption script and end the action.
; The wrapper also serves nametag and claim-ticket paths; retain its shared entry.
ConsumeC2Food:

C2Loc3_3B:
    ; Call script.
    db $05
    dw ConsumeSlot0Item
    ; End script.
    db $ff

; Remove slot zero from the list, clear attribute bit zero, set bit one, and return with slot one selected.
; The drop uses saved group/row coordinates; SetAttr1 runs after redraw and end decrement.
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
    db $01, $d9 ; Message Text15Message59: GULP! YOU GOBBLE / DOWN THE DUCK! / THAT BLACK BEAN / SAUCE IS GREAT![PAGE] / ALMOST ...
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
    db $02, $1b ; Message Text16Message1B: THE BANANA APPEARSTO BE RIPE.[END]
    ; End script.
    db $ff

; Show the fruit response, record the banana eaten flag, and consume the first item.
EatPeeledBanana:

C2Loc3_3F:
    ; Show message 2.
    db $02, $1d ; Message Text16Message1D: YOU'VE NEVER BEEN / MUCH OF A FRUIT / GUY.[END]
    ; Set object flag.
    db $09, C2BananaEaten
    ; Jump to script.
    db $07
    dw ConsumeC2Food

; Show the refusal to eat the banana peel.
RefuseC2Peel:

C2Loc3_40:
    ; Show message 2.
    db $02, $20 ; Message Text16Message20: YOU REALIZE THAT / EVEN MONKEYS DON'TEAT THE PEELS.[END]
    ; End script.
    db $ff

; Show the regional dart or hummingbird self-poking reply.
PokeDartSelf:

C2Loc3_41:
    ; Show message 2.
    db $02, $ec ; Message Text17Message6C: WHY DID YOU STICK / YOURSELF WITH THE / DART? SEEMS / POINTLESS![END]
    ; End script.
    db $ff

; Detach the bird, discard the base, and replace item 46 with item 47 if present.
SplitPaperweight:

C2Sc3_07:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $bd ; Message Text13Message3D: YOU YANK HARD AND / THE BIRD COMES / AWAY FROM THE / BASE.[PAGE] / STRANGE, THE BIRD ...
    ; Test item flag.
    db $11, C2Paperweight
    ; Branch if result bit 0 is clear.
    db $04
    dw SplitWeightObjects
    ; Set text name 0.
    db $30, C2DartBase
    ; Show message 3.
    db $2c, $2d ; Message Text18Message2D: YOU THROW OUT THE / [OBJECT_WRAM:37C5] / BECAUSE IT SEEMS / USELESS.[END]
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
    db $2c, $14 ; Message Text18Message14: YOU CUT YOURSELF / WITH THE / [OBJECT_WRAM:37C5].[END]
    ; Show message 0.
    db $00, $26 ; Message Text12Message26: WITH EVERY BEAT OFYOUR HEART, YOU / FEEL YOUR LIFE / SLIPPING AWAY...[PAGE] / SOON, E...
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
    db $46, C2ItemPoliceUniform
    dw WashUniformCheck
    ; Test packed item argument and branch on equality.
    db $46, C2ItemSugarLaundry
    dw PutItemWasher
    ; Test packed item argument and branch on equality.
    db $46, C2ItemDress
    dw PutItemWasher
    ; Test packed item argument and branch on equality.
    db $46, C2ItemDetergent
    dw PutItemWasher
    ; Jump to script.
    db $07
    dw NoC2ItemEffect

; Allow placing the uniform in the washer only when it is not worn.
; Passing this gate still reaches the native allowlist, which excludes uniform ID $3a.
WashUniformCheck:

C2Loc3_47:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw PutItemWasher
    ; Show message 2.
    db $02, $c7 ; Message Text17Message47: YOU HAVE A STRANGEURGE TO TAKE OFF / YOUR CLOTHES.[END]
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
    db $02 ; Message Text17Message66: OVER THE YEARS / YOU'VE ACQUIRED / MANY TALENTS AND / THROWING DARTS IS / ONE OF THEM...

jr_007_5cd8:
    db $e6
    ; Play audio.
    db $3e, $00
    ; Call script.
    db $05
    dw RemoveSlot0Item
    ; Play audio.
    db $3e, $17
    ; Show object.
    db $29, C2VisIdOuterOfficeDartBeforeShift
    ; Refresh room objects.
    db $2b
    ; Show message 1.
    db $01, $39 ; Message Text14Message39: RIGHT ON THE / MONEY![END]
    ; Play audio.
    db $3e, $12
    ; Show message 2.
    db $02, $e7 ; Message Text17Message67: BULL'S EYE![END]
    ; Set object flag.
    db $09, C2Bullseye
    ; Draw Case II panel and marks.
    db $3c
    ; Set state and refresh without cue.
    db $22, C2StateOuterOfficeSecretDoorOpen
    ; Hide object.
    db $2a, C2VisIdOuterOfficeDartBeforeShift
    ; Show object.
    db $29, C2VisIdOuterOfficeDartAfterShift
    ; Refresh room objects.
    db $2b
    ; Show message 2.
    db $02, $e8 ; Message Text17Message68: THE DARTBOARD AND / THE SECTION OF / WALL IT'S ON MOVE / ASIDE TO REVEAL A / SECRET P...
    ; Set object flag.
    db $09, C2DartUsed
    ; Hide object.
    db $2a, C2VisIdCleanersDartboardBeforeShift
    ; Show object.
    db $29, C2VisIdCleanersDartboardAfterShift
    ; Show object.
    db $29, C2VisIdOuterOfficeSecretDoor
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
    db $01, $b7 ; Message Text15Message37: YOU ATTEMPT TO / LEVERAGE THE BOARDWITH THE KNIFE. / BUT IT DOESN'T / SEEM TO WORK.[END]
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
    db $01, $3b ; Message Text14Message3B: IT WOULDN'T BE THESMARTEST THING TO / UPSET GABBY! HE'D / PROBABLY MAKE YOU / WALK![END]
    ; End script.
    db $ff

; Show the cab protection reply for the matched item.
ProtectCabItem:

C2Loc3_4E:
    ; Show message 1.
    db $01, $3c ; Message Text14Message3C: YOU STOP YOURSELF / FROM VANDALIZING / THE INSIDE OF YOURFRIEND'S CAB.[END]
    ; End script.
    db $ff

; Match the bullet item used on the gun.
MatchGunBullet:

C2Loc3_4F:
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemBullets
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
    db $09, C2GunLoadAttempted
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

jr_007_5d2e:
    dw NoC2ItemEffect

; Require the knife open and set the original torn-bag flag after cutting.
CutVacBag:

C2Loc3_52:
    ; Test object flag and branch when clear.
    db $54, C2KnifeOpen
    dw NeedKnifeOpen
    ; Test object flag and branch when set.
    db $08, C2VacBagTorn
    dw BagAlreadyTorn
    ; Show message 2.
    db $02, $68 ; Message Text16Message68: YOU SLASH OPEN THEBAG WITH THE / KNIFE.[END]
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
    db $02, $69 ; Message Text16Message69: THE BAG'S A LOST / CAUSE, YOU CAN'T / FIX IT NOW...[END]
    ; End script.
    db $ff

; Accept the original D-cell item as the flashlight target tool.
; Match the aggregate cell ID; loose CELL 23 is a different packed value.
MatchLampCell:

C2Loc3_54:
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemCells
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
    db $01, $4c ; Message Text14Message4C: THE BATTERY / DOESN'T NEED / CHANGING.[END]
    ; End script.
    db $ff

; Show the original reply when the flashlight is not held.
NeedLampHeld:

C2Loc3_56:
    ; Show message 3.
    db $2c, $47 ; Message Text18Message47: HM, MAYBE THAT / FLASHLIGHT WILL / COME IN HANDY![END]
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
    db $01, $83 ; Message Text15Message03: YOU REPLACE THE / BATTERIES IN THE / FLASHLIGHT.[END]
    ; Clear the flashlight timer.
    db $42, C2LampIx
    ; Test object flag and branch when clear.
    db $54, C2LampFlag
    dw FinishLampCell
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
    db $01, $67 ; Message Text14Message67: YOU DON'T HAVE ANYBATTERIES.[END]
    ; End script.
    db $ff

; Match the quarter used on either slot machine.
MatchSlotCoin:

C2Loc3_58:
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemQuarters
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
    db $02, $12 ; Message Text16Message12: A LEAD COIN IS / STUCK IN THE SLOT.THIS MACHINE WON'TWORK.[END]
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

jr_007_5d8a:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $da ; Message Text15Message5A:  YOU FUMBLE WITH / THE KNIFE AND / INSERT IT INTO THELOCK.[PAGE] / SCRIITCH...CLICK![...
    ; Play audio.
    db $3e, $15
    ; Set selected state and refresh.
    db $21
    ; Show message 1.
    db $01, $db ; Message Text15Message5B: WITH MORE LUCK / THAN SKILL, YOU / JIMMY OPEN THE / LOCK![END]
    ; Set object flag.
    db $09, C2JoeLockGone
    ; End script.
    db $ff

; Show that the folded knife is useless for this action.
NeedKnifeOpen:

C2Loc3_5B:
    ; Show message 1.
    db $01, $8d ; Message Text15Message0D: WITH THE BLADE / FOLDED IN, IT'S / NEXT TO USELESS.[END]
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
    db $01, $da ; Message Text15Message5A:  YOU FUMBLE WITH / THE KNIFE AND / INSERT IT INTO THELOCK.[PAGE] / SCRIITCH...CLICK![...
    ; Show object.
    db $29, C2VisIdSugarApartmentDoorOpen
    ; Refresh room objects.
    db $2b

jr_007_5daa:
    ; Play audio.
    db $3e, $15
    ; Set state and refresh without cue.
    db $22, C2StateSugarDoorUnlocked
    ; Set selected attribute bit 2.
    db $1e
    ; Show message 1.
    db $01, $db ; Message Text15Message5B: WITH MORE LUCK / THAN SKILL, YOU / JIMMY OPEN THE / LOCK![END]
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

jr_007_5dba:
    dw KnifeConductor
    ; Test packed item argument and branch on equality.
    db $46, C2Opener
    dw AttackConductor
    ; Test packed item argument and branch on equality.
    db $46, C2Bottle
    dw BottleConductor
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemCash
    dw PayTrainFare
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemQuarters
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
    db $2c, $17 ; Message Text18Message17: IT'S CRUEL TO / THROW A DART AT / THE [OBJECT_WRAM:37C5].[END]
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
    db $02, $6e ; Message Text16Message6E: HE COLLECTS THE / FARE AND SAYS,[END]
    ; Show message 2.
    db $02, $6f ; Message Text16Message6F: "THANKS AND MAKE / YOURSELF / COMFORTABLE.[PAGE] / THE TRAIN WILL BE / LEAVING SHORTL...
    ; Resume text.
    db $2f
    ; Clear the train-room fare view and refresh.
    db $6f
    ; Call script in bank $08.
    ; The helper returns to bank $07 before the clearance flag is set.
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

jr_007_5de6:
    ; Branch if result bit 0 is clear.
    db $04
    dw NoC2ItemEffect
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $77 ; Message Text16Message77: THE CONDUCTOR / LOOKS IMPATIENT.[END]
    ; Show message 2.
    db $02, $72 ; Message Text16Message72: "SIR... THIS ISN'TENOUGH..."[END]
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
    db $2c, $17 ; Message Text18Message17: IT'S CRUEL TO / THROW A DART AT / THE [OBJECT_WRAM:37C5].[END]
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
    db $00, $07 ; Message Text12Message07: "THANK YOU," / THE MAN SAYS / EYEING YOU WARILY,"BUT YOU LOOK LIKEYOU NEED IT MORE / ...
    ; End script.
    db $ff

; Require a broken bottle before the conductor attack response.
BottleConductor:

C2Loc3_64:
jr_007_5e1a:
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
    db $2c, $0c ; Message Text18Message0C: AS SOON AS YOU TRYTO ATTACK THE / CONDUCTOR, HE / TAKES THE / [OBJECT_WRAM:37C5] FROM...
    ; Jump to script.
    db $07
    dw EjectTrainFight

; Name the man for the shared dart reply.
DartMan:

C2Loc3_68:
    ; Set text name 0.
    db $30, $b5
    ; Show message 3.
    db $2c, $17 ; Message Text18Message17: IT'S CRUEL TO / THROW A DART AT / THE [OBJECT_WRAM:37C5].[END]
    ; End script.
    db $ff

; Match food, weapons, and money used on the hobo.
UseItemHobo:

C2Loc3_69:
    ; Test packed item argument and branch on equality.
    db $46

jr_007_5e35:
    db C2ItemPekingDuck
    dw FeedC2Hobo
    ; Test packed item argument and branch on equality.
    db $46, C2ItemSandwich
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
    db $46, C2ListItemCash
    dw GiveHoboDollar
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemQuarters
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
    db $02, $39 ; Message Text16Message39: THE BUM GRABS THE / FOOD AND CHOWS / DOWN. BOY, HE / MUST'VE BEEN / HUNGRY![END]
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
    db $2c, $0e ; Message Text18Message0E: YOU WASTED THE / [OBJECT_WRAM:37C5].[PAGE] / A WAVE OF GUILT / OVERWHELMS YOU...[PAGE...
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
    db $02, $9a ; Message Text17Message1A: CHARGED WITH / COLD-BLOODED / MURDER, YOU AWAIT / THE ELECTRIC / CHAIR...[END]
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
    db $2c, $17 ; Message Text18Message17: IT'S CRUEL TO / THROW A DART AT / THE [OBJECT_WRAM:37C5].[END]
    ; End script.
    db $ff

; Spend one dollar before showing the hobo money reply.
GiveHoboDollar:

C2Loc3_70:
jr_007_5e85:
    ; Spend one dollar of Case II cash.
    db $67
    ; Branch if result bit 0 is clear.
    db $04
    dw NoC2ItemEffect
    ; Show message 2.
    db $02, $37 ; Message Text16Message37: YOU GIVE THE BUM / SOME MONEY.[PAGE] / SPRAYING SPITTLE / ALL OVER YOU, HE / SAYS, "G...
    ; End script.
    db $ff

; Check quarters and decrement one after the hobo money reply.
; The test precedes the reply; the decrement rereads the count after that message.
GiveHoboQuarter:

C2Loc3_71:
    ; Test Case II quarters.
    db $5c
    ; Branch if result bit 0 is clear.
    db $04
    dw NoC2ItemEffect
    ; Show message 2.
    db $02, $37 ; Message Text16Message37: YOU GIVE THE BUM / SOME MONEY.[PAGE] / SPRAYING SPITTLE / ALL OVER YOU, HE / SAYS, "G...
    ; Decrement Case II quarters.
    db $5d
    ; End script.
    db $ff

; Match food and weapons used on the dog.
UseItemC2Dog:

C2Loc3_72:
    ; Test packed item argument and branch on equality.
    db $46, C2ItemPekingDuck
    dw FeedC2Dog
    ; Test packed item argument and branch on equality.
    db $46, C2ItemSandwich
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
    db LOW(ConsumeSlot0Item)

jr_007_5eb5:
    db HIGH(ConsumeSlot0Item)
    ; Show message 1.
    db $01, $21 ; Message Text14Message21: THE DOG GOBBLES UPTHE TREAT![PAGE] / YIKES! IT ALMOST / TAKES YOUR FINGERSTOO![END]
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
    db $01, $27 ; Message Text14Message27: THE WELL TRAINED / DOG SWIFTLY DODGESYOUR ATTACK.[END]
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
    db $2c, $17 ; Message Text18Message17: IT'S CRUEL TO / THROW A DART AT / THE [OBJECT_WRAM:37C5].[END]
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
    db $46, C2ListItemCash
    dw BuyC2Chips
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemQuarters
    dw CashierCoinReply
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemChips
    dw SellC2Chips
    ; Copy first-slot name to text name 0.
    db $45
    ; Show message 3.
    db $2c, $05 ; Message Text18Message05: AT FIRST THE WOMANIS STARTLED, BUT / SHE QUICKLY SMILESWHEN SHE SEES THE / [OBJECT_WR...
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
    db $0f, C2StateCasinoFrontDoorOpen

; Prepare the move from room 04 to 11 and enter the casino ejection reply.
EvictCashierHit:

C2Loc3_7C:
    ; Prepare room move and read two room arguments.
    db $3b, RoomVegasCashier, RoomHotelFront
    ; Jump to script in bank $08.
    db $7d
    dw CasinoEjectReply
    db $08

; Show the missed attack and call for the bodyguard, then test state 06.
CasinoAttackCue:

C2Loc3_7D:
    ; Show message 3.
    db $2c, $1d ; Message Text18Message1D: SWISH![PAGE] / YOUR REACH ISN'T / LONG ENOUGH TO HITTHE [OBJECT_WRAM:37C5], / BUT YOU...
    ; Run scene effect.
    db $39, FxBouncer
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 3.
    db $2c, $1e ; Message Text18Message1E: [OBJECT_WRAM:37C5] / CALLED LOUDLY FOR / THE BODYGUARD.[END]
    ; Wait sixty ticks.
    db $7e
    ; Test state bit.
    db $0e, C2StateCasinoFrontDoorOpen
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
    db $2c, $06 ; Message Text18Message06: THE WOMAN SMILES / DISARMINGLY AND / GIVES THE / [OBJECT_WRAM:37C5] BACK.[PAGE] / "YO...
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
    db LOW(BottlePerson)

jr_007_5f27:
    db HIGH(BottlePerson)
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
    db $46, C2ListItemCash
    dw NoDollarEffect
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemQuarters
    dw CheckQuarterUse

; Show the original useless-item reply.
ItemNoUseReply:

C2Loc3_E6:
    ; Show message 0.
    db $00, $07 ; Message Text12Message07: "THANK YOU," / THE MAN SAYS / EYEING YOU WARILY,"BUT YOU LOOK LIKEYOU NEED IT MORE / ...
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
    db $2c, $04 ; Message Text18Message04: YOU HURT SOME / PEOPLE WITH THE / [OBJECT_WRAM:37C5]![END]
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
    db $02, $e5 ; Message Text17Message65: HE'S ASLEEP.[END]
    ; End script.
    db $ff

; Wake the attendant, show the suitcase, and consume the claim ticket.
ShowClaimTicket:

C2Loc3_88:
    ; Show message 2.
    db $02, $ff ; Message Text17Message7F: YOU NUDGE THE MAN / AND SHOW HIM YOUR / CLAIM TICKET.[PAGE] / WITH A START, HE / WAKE...
    ; Show object.
    db $29, C2VisIdClaimSuitcaseClosed
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
    db $46, C2ListItemCash
    dw PayNewsDollar
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemQuarters
    dw PayNewsQuarter
    ; Show message 1.
    db $01, $26 ; Message Text14Message26: "NO THANKS, I ONLYACCEPT CASH..."[END]
    ; End script.
    db $ff

; Name the old man for the original dart reply.
DartNewsMan:

C2Loc3_8A:
    ; Set text name 0.
    db $30, $b8
    ; Show message 3.
    db $2c, $17 ; Message Text18Message17: IT'S CRUEL TO / THROW A DART AT / THE [OBJECT_WRAM:37C5].[END]
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

; With stock and no pending payment, spend one dollar before accepting payment; no change is returned.
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
    db $01, $25 ; Message Text14Message25: "THANKS, BUT I'VE / JUST RUN OUT OF / PAPERS. SORRY."[END]
    ; End script.
    db $ff

; Tell the player to take the newspaper already paid for.
NewsAlreadyPaid:

C2Loc3_8F:
    ; Show message 1.
    db $01, $24 ; Message Text14Message24: "MISTER, YOU PAID / FOR A PAPER- HELP / YOURSELF!"[END]
    ; End script.
    db $ff

; With stock and no pending payment, check quarters, accept payment, then deduct one quarter.
; The decrement rereads wC2Quarters after AcceptNewsPay returns.
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
    db $02, $72 ; Message Text16Message72: "SIR... THIS ISN'TENOUGH..."[END]
    ; End script.
    db $ff

; Thank the buyer and set the newspaper payment flag.
AcceptNewsPay:

C2Loc3_E8:
    ; Show message 1.
    db $01, $23 ; Message Text14Message23: "THANK YOU VERY / MUCH," THE OLD MANSAYS. "PLEASE TAKEA NEWSPAPER."[END]
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
    db $46, C2ListItemCash
    dw DriverDollarNone
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemQuarters
    dw DriverQuarterGift

; Show the regional driver gift reply.
DriverGiftReply:

C2Loc3_E9:
    ; Show message 1.
    db $01, $50 ; Message Text14Message50: "NO THANKS ACE, / I CAN'T ACCEPT / THAT FROM YOU."[END]
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
    db $2c, $17 ; Message Text18Message17: IT'S CRUEL TO / THROW A DART AT / THE [OBJECT_WRAM:37C5].[END]
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
    db $2c, $24 ; Message Text18Message24: YOU TRY TO STAB / THE DRIVER WITH / THE [OBJECT_WRAM:37C5].[PAGE] / THE BULLET-PROOF ...
    ; End script.
    db $ff

; Show the broken-pencil reply for item 31 or use the original tied-hands fallback.
MatchPencilUse:

C2Loc3_97:
    ; Test packed item argument and branch on inequality.
    db $56, C2ItemPencil
    dw TiedItemFallback
    ; Show message 1.
    db $01, $c6 ; Message Text15Message46: THE PENCIL'S LEAD / IS BROKEN.[END]
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
    db $02, $be ; Message Text17Message3E: YOUR TIED HANDS / PREVENT YOU FROM / DOING THAT![END]
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
    db $2a, C2VisIdBathTowel
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe the worn apartment key.
LookC2Key1:

C2Sc3_09:
    ; Show message 0.
    db $00, $19 ; Message Text12Message19: YOU RECOGNIZE THE / WELL WORN BRASS / KEY TO YOUR / APARTMENT.[END]
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
    db $32, $00, C2TargetAdisonScratchedMailbox
    dw C2KeyNoFit
    db $00, C2TargetAdisonDentedMailbox
    dw C2KeyNoFit
    db $05, C2TargetVegasBedroomDoor
    dw C2KeyNoFit
    db $05, C2TargetHotelQuietGuestDoor
    dw C2KeyNoFit
    db $05, C2TargetHotelGuestDoor2
    dw C2KeyNoFit
    db $05, C2TargetHotelGuestDoor3
    dw C2KeyNoFit
    db $05, C2TargetLaundryChuteDoor
    dw KeyLaundryDoor
    db $05, C2TargetCleanersEntrance
    dw C2KeyNoFit
    db $05, C2TargetAdisonApartmentDoor
    dw KeyHomeDoor
    db $05, C2TargetAdisonNeighborDoor1
    dw C2KeyNoFit
    db $05, C2TargetAdisonNeighborDoor2
    dw C2KeyNoFit
    db $05, C2TargetJoeBarFrontDoor
    dw C2KeyNoFit
    db $05, C2TargetJoeRearDoor
    dw C2KeyNoFit
    db $05, C2TargetJoeUpstairsRestrictedDoor
    dw C2KeyNoFit
    db $05, C2TargetSugarApartmentDoor
    dw C2KeyNoFit
    db $05, C2TargetSugarFrontLockedDoor
    dw C2KeyNoFit
    db $05, C2TargetSecretaryDoor
    dw C2KeyNoFit
    db $01, C2ContainerAdisonMailbox
    dw KeyC2Mailbox
    db $01, C2ContainerJoeDiarySlot
    dw KeyDiarySlot
    db $01, C2ContainerJoeEmptySlot
    dw KeyEmptySlot
    db $00, C2TargetHotelCashier
    dw UseItemCashier
    db $00, C2TargetVegasSeller
    dw UseItemSeller
    db $00, C2TargetVegasClaimAttendant
    dw UseItemAttendant
    db $00, C2TargetChicagoNewsSeller
    dw UseItemNewsMan
    db $00, C2TargetCabDriver
    dw UseItemCabDriver
    db $02, C2GroupMaloneDesk
    dw MatchDeskStore
    db $fe, $fe
    dw TiedItemFallback

; Show the original key does not fit reply.
C2KeyNoFit:

C2Loc3_9A:
    ; Show message 0.
    db $00, $60 ; Message Text12Message60: THE KEY DOESN'T / FIT.[END]
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
    db $02, $ca ; Message Text17Message4A: THE CHUTE'S TOO / SLIPPERY TO CLIMB.[END]
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
    db $2a, C2VisIdAdisonMailboxClosed
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
    db $09, C2DiarySlotUnlockedOnce
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
    db $00, $1a ; Message Text12Message1A: IT'S A FADED / NEWSPAPER CLIPPINGSHOWING YOU IN THEBOXING RING WITH / YOUR OLD SPARRI...
    ; End script.
    db $ff

; Read the original license and add the Adison cab destination once.
ReadC2License1:

C2Sc3_0C:
    ; Show message 0.
    db $00, $1c ; Message Text12Message1C: IT'S AN ILLINOIS / DRIVER'S LICENSE / WHICH READS:[PAGE] / THEODORE HARDING / 2034 W....
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
    db $00, $1d ; Message Text12Message1D: IT'S AN EMPTY PACKOF GUM.[END]
    ; End script.
    db $ff

; Describe Stogie's cigar ring; with belongings and bribes known, suggest leaving it on Ventini's desk.
ReadStogieRing:

C2Sc3_0E:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $3e ; Message Text12Message3E: IT'S A CIGAR RING.APPARENTLY STOGIE / MARTIN DROPPED IT.[PAGE] / HE'S GOT TO BE / THE...
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
    db $00, $d5 ; Message Text13Message55: YOU HOPE THAT BY / LEAVING STOGIE'S / CIGAR WRAPPER ON / VENTINI'S DESK IN / HIS SECR...
    ; Show message 2.
    db $02, $70 ; Message Text16Message70: IF YOU CAN DO THATAND REVEAL / VENTINI'S SCHEME / TO MALONE AND / SOMEHOW GET OUT OFT...
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
    db $2a, C2VisIdBedroomCigarRing
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the original pillow description.
LookC2Pillow:

C2Sc3_10:
    ; Show message 0.
    db $00, $3f ; Message Text12Message3F: IT'S A HARD, / LUMPY PILLOW.[END]
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
    db $2a, C2VisIdBedroomPillow
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the crumpled payment demand addressed to Stogie and signed T.M.
ReadPayNote:

C2Sc3_12:
    ; Show message 0.
    db $00, $43 ; Message Text12Message43: THE CRUMPLED PIECEOF PAPER READS:[PAGE] / "STOGIE, THE / PAYMENT FROM LA ISOVERDUE. C...
    ; End script.
    db $ff

; Read the station address while folded or the fares while open.
ReadC2Timetable:

C2Sc3_13:
    ; Test object flag and branch when set.
    db $08, C2TimetableOpen
    dw ReadC2Fares
    ; Show message 0.
    db $00, $41 ; Message Text12Message41: AT THE BOTTOM OF / THE FOLDED TRAIN / SCHEDULE IS THE / CHICAGO STATION / ADDRESS.[END]

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
    db $00, $42 ; Message Text12Message42: A LIST OF FARES ISINCLUDED.[PAGE] / LAS VEGAS TO /   NEW YORK    $35 / LAS VEGAS TO /...
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
    db $2a, C2VisIdBedroomTimetable
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
    db $00, $4e ; Message Text12Message4E: THIS PLANT IS IN / NEED OF A GOOD / WATERING.[END]
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
    db $2a, C2VisIdVegasHallPlant
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the original Pot description.
LookC2Pot:

C2Sc3_19:
jr_007_61ae:
    ; Show message 0.
    db $00, $79 ; Message Text12Message79: NOW THAT'S A / BIG SPITTOON.[END]
    ; End script.
    db $ff
    ; Unreferenced extra $ff after the preceding end opcode.
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
    db $2a, C2VisIdVegasLobbyPot
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the original Ashtray description.
LookC2Ashtray:

C2Sc3_1B:
    ; Show message 0.
    db $00, $72 ; Message Text12Message72: "LUCKY DICE HOTEL / AND CASINO" IS / PRINTED ON THE / ASHTRAY.[END]
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
    db $2a, C2VisIdVegasLobbyAshtray
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the original Plant2 description.
LookC2Plant2:

C2Sc3_1D:
    ; Show message 0.
    db $00, $54 ; Message Text12Message54: THE PLANT HAS JUSTSTARTED TO BLOOM.[END]
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
    db $2a, C2VisIdVegasHall2Plant
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the original Plant3 description.
LookC2Plant3:

C2Sc3_1F:
    ; Show message 0.
    db $00, $59 ; Message Text12Message59: THIS PLANT HAS / LITTLE FLOWERS.[END]
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
    db $2a, C2VisIdVegasHall3Plant
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe the magnetic button restricting access to the floor.
LookLiftButton:

C2Sc3_21:
    ; Show message 0.
    db $00, $a3 ; Message Text13Message23: YOU ASSUME THE / MAGNETIC / BUTTON ENSURES / THAT ONLY CERTAIN / PEOPLE GET ACCESS / ...
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
    db $2a, C2VisIdLiftButton4Installed
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Require the button object to be visible, show floor four and use the existing lift continuation.
PressLift4:

C2Sc3_23:
    ; Test object visibility.
    db $28, C2VisIdLiftButton4Installed
    ; Branch if result bit 0 is clear.
    db $04
    dw RejectC2Item
    ; Set text name 0.
    db $30, $b0
    ; Set script value 0.
    db $49, $04
    ; Show message 3.
    db $2c, $1f ; Message Text18Message1F: YOU PRESS THE / BUTTON FOR [NUM8_WRAM:87C5]F.[END]
    ; Jump to script.
    db $07
    dw TravelLift4

; Read the carried photo, remember it and preserve the original hint conditions.
ReadC2Photo:

C2Sc3_24:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $2f ; Message Text12Message2F: IN THIS PICTURE, / SEIGEL IS SHAKING / HANDS WITH A THIN / GUY IN FRONT OF / THE "REL...

jr_007_6208:
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
    db $00, $31 ; Message Text12Message31: HMM INTERESTING...YOU WONDER WHO / THIS GUY IS AND / HOW HE KNEW / SIEGEL?[END]
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
    db $00, $40 ; Message Text12Message40: THIS LETTER IS / ADDRESSED TO / ANTHONY MALONE.[END]
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
    db $01, $63 ; Message Text14Message63: MAYBE VENTINI HAS / PLANS TO START UP / HIS OWN / OPERATION...[PAGE] / MAYBE THE MISS...
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Show the original regional Bondwell letter continuation and play the room cue.
BondLetterTail:

C2Loc3_A9:
    ; Show message 1.
    db $01, $68 ; Message Text14Message68: "MR. MALONE, / I'VE COME ACROSS / SOMETHING STRANGE.I'VE BEEN MAKING / PAYMENTS TO TH...
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
    db $00, $3c ; Message Text12Message3C: A FOLDED TRAIN / SCHEDULE ALWAYS / COMES IN HANDY.[END]
    ; Jump to script.
    db $07
    dw AddChicagoStop

; Show the original train information-board guide.
ReadTrainGuide:

C2Loc3_AA:
    ; Show message 0.
    db $00, $3d ; Message Text12Message3D: "A GUIDE TO THE / NEW INFORMATION / TABLE:[PAGE] / INBOUND -- / THE TRAIN WILL BE / A...
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

jr_007_624f:
    dw ReadTrainGuide

; Show the original opening caption for the selected item and return.
ShowC2Opening:

C2Loc3_AB:
    ; Hold text.
    db $2e
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02 ; Message Text18Message02: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
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
    db $2a, C2VisIdRailwayPamphlet
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
    db $55, RoomChicagoStationLobby
    dw News3Article
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw NewsPayFirst

; Show the original newspaper 3 article and discover the morgue.
News3Article:

C2Loc3_AC:
    ; Show message 1.
    db $01, $0a ; Message Text14Message0A: THE NEWSPAPER / HEADLINE READS, / "GANGLAND BAGMAN / MURDERED."[PAGE] / THE ARTICLE G...
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
    db $55, RoomChicagoStationLobby
    dw TakeC2ItemNow
    ; Test object flag and branch when clear.
    db $54, C2NewsPaid
    dw NewsPayFirst
    ; Call script.
    db $05
    dw ShowC2Take
    ; Clear object flag.
    db $0a

jr_007_628b:
    db C2NewsPaid
    ; Test object flag and branch when set.
    db $08, C2NewsTaken
    dw MarkNews3Repeat
    ; Set object flag.
    db $09, C2NewsTaken

; Hide the original newspaper 3 object and finish adding the item.
FinishNews3Take:

C2Loc3_AD:
    ; Hide object.
    db $2a, C2VisIdNewsPaper3
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
    db $01, $18 ; Message Text14Message18: AS YOU REACH FOR / A NEWSPAPER, THE / OLD MAN SAYS,[PAGE] / "THAT'LL BE 25 / CENTS FO...
    ; End script.
    db $ff

; Show the regional reply when payment has been made but the paper was not taken.
NewsTakeFirst:

C2Loc3_AF:
    ; Show message 1.
    db $01, $df ; Message Text15Message5F: AS YOU TRY TO / READ THE PAPER, / THE OLD MAN SAYS,[PAGE] / "YOU AIN'T NO / CHARITY C...
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
    db $55, RoomChicagoStationLobby
    dw News4Article
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw NewsPayFirst

; Show the original newspaper 4 article and discover the morgue.
News4Article:

C2Loc3_B1:
    ; Show message 1.
    db $01, $0b ; Message Text14Message0B: THE STORY REPORTS / A LOCAL MOBSTER / WAS RECENTLY SLAINAND POLICE ARE / INVESTIGATIN...
    ; Test object flag and branch when set.
    db $08, C2MorgueKnown
    dw EndC2Item
    ; Add quick-list value.
    db $44, CabMorgue
    ; Set object flag.
    db $09, C2MorgueKnown
    ; End script.
    db $ff

; Take newspaper four after payment and set object flag $9c; CloseVegasLid clears it.
TakeC2News4:

C2Sc3_2E:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Test room argument and branch on inequality.
    db $55, RoomChicagoStationLobby
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
    db $2a, C2VisIdNewsPaper4
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
    db $01, $5e ; Message Text14Message5E: IT'S A LETTER / FROM VINNY / TULUSSA, YOUR / INFORMANT.[PAGE] / "ACE, SOME WEIRD / ST...
    ; End script.
    db $ff

; Describe the bottle according to its broken flag.
LookC2Bottle:

C2Sc3_30:
    ; Test object flag and branch when set.
    db $08, C2BottleBroken
    dw LookBrokenBottle
    ; Show message 1.
    db $01, $76 ; Message Text14Message76: MORE OF YOUR / "GOOD" LUCK... / THERE'S NOT A DROPLEFT INSIDE.[END]
    ; End script.
    db $ff

; Show that the selected bottle is broken.
LookBrokenBottle:

C2Loc3_B4:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $01 ; Message Text18Message01: THE [OBJECT_WRAM:37C5] / IS BROKEN.[END]
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
    db $2a, C2VisIdAdisonBottleIntact
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Hide the broken bottle object before adding the item.
TakeBrokenBottle:

C2Loc3_B5:
    ; Hide object.
    db $2a, C2VisIdAdisonBottleBroken
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the no-answer reply shared by several carried objects.
ItemNoAnswer:

C2Sc3_32:
    ; Show message 0.
    db $00, $e3 ; Message Text13Message63: ...NO ANSWER.[END]
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
    db $2a, C2VisIdAdisonBottleIntact
    ; Show object.
    db $29, C2VisIdAdisonBottleBroken
    ; Refresh room objects.
    db $2b

; Show the bottle breaking and set its broken flag.
MarkBottleBroken:

C2Loc3_B6:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $00 ; Message Text18Message00: THE [OBJECT_WRAM:37C5] / BROKE.[END]
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
    db $2c, $1b ; Message Text18Message1B: THE [OBJECT_WRAM:37C5] / IS BROKEN.[END]
    ; End script.
    db $ff

; Describe the cracked lamp and retain the regional remarks about Stogie.
LookCrackedLamp:

C2Sc3_34:
    ; Show message 1.
    db $01, $77 ; Message Text14Message77: THE LAMP IS / CRACKED.[PAGE] / YOU CAN'T REMEMBERIF IT WAS LIKE / THIS BEFORE STOGIEG...
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
    db $2a, C2VisIdAdisonCrackedLamp
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
    db $01, $7c ; Message Text14Message7C: THE BLADE OF THE / PENKNIFE IS SMALL,BUT IN THE RIGHT / HANDS, IT CAN BE / EFFECTIVE....
    ; End script.
    db $ff

; Show the original folded knife description.
KnifeFoldedText:

C2Loc3_B8:
    ; Show message 1.
    db $01, $7b ; Message Text14Message7B: IT'S YOUR OLD / PENKNIFE.[END]
    ; End script.
    db $ff

; Open the knife and retain the original already-open rejection.
OpenC2Knife:

C2Sc3_37:
    ; Test object flag and branch when set.
    db $08, C2KnifeOpen
    dw RejectC2Item
    ; Show message 2.
    db $02, $8a ; Message Text17Message0A: YOU FLICK OPEN THEPOCKET KNIFE.[END]
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
    db $01, $14 ; Message Text14Message14: YOU CLOSE UP THE / POCKETKNIFE.[END]
    ; Clear object flag.
    db $0a, C2KnifeOpen
    ; End script.
    db $ff

; Show the original mailbox key description.
LookC2Key2:

C2Sc3_39:
    ; Show message 1.
    db $01, $7e ; Message Text14Message7E: THE SMALL BRASS / KEY IS TARNISHED.[END]
    ; End script.
    db $ff

; Describe the .38 ammunition shared by the six original ammo records.
LookC2Ammo:

C2Sc3_3A:
    ; Show message 1.
    db $01, $7f ; Message Text14Message7F: THIS SMALL / PROJECTILE WAS / DESIGNED TO BE / USED IN A .38 / SPECIAL.[END]
    ; End script.
    db $ff

; Describe the flattened juice can.
LookJuiceCan:

C2Sc3_3B:
    ; Show message 1.
    db $01, $d0 ; Message Text15Message50: IT'S A FLATTENED / JUICE CAN.[END]
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
    db $2a, C2VisIdJoeJuiceCan
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe the car maker symbol on key 3.
LookC2Key3:

C2Sc3_3D:
    ; Show message 1.
    db $01, $d2 ; Message Text15Message52: YOU RECOGNIZE A / FAMILIAR SYMBOL OFA GERMAN LUXURY / CAR ON THE KEY...[END]
    ; End script.
    db $ff

; Describe the discarded Peking duck with black bean sauce.
LookC2Duck:

C2Sc3_3E:
    ; Show message 1.
    db $01, $d4 ; Message Text15Message54: SOMEONE LEFT SOME / PEKING DUCK WITH / BLACK BEAN SAUCE / IN THE TRASH.[PAGE] / MMM, ...
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
    db $02, $0e ; Message Text16Message0E: IT'S SIEGEL'S / PERSONAL DIARY.[END]
    ; Test object flag and branch when set.
    db $08, C2DiarySeen
    dw EndC2Item
    ; Show message 1.
    db $01, $4f ; Message Text14Message4F: YOU WONDER WHAT ITSAYS?[END]
    ; End script.
    db $ff

; Show the opened diary payment list, then compare it using the original knowledge flags.
ReadSiegelDiary:

C2Loc3_B9:
    ; Show message 2.
    db $02, $0f ; Message Text16Message0F: THE DIARY CONTAINSA LIST OF PAYMENTSFOR DIFFERENT / AMOUNTS. YOU STARTTO SCAN THE / P...
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
    db $2c, $30 ; Message Text18Message30: BUT COMPARED / WITH THE OTHER / LEDGER...[END]
    ; Set text name 0.
    db $30, $6c
    ; Set text name 1.
    db $31, $6d
    ; Show message 3.
    db $2c, $31 ; Message Text18Message31: THERE IS A #0 / ENTRY IN THIS / BOOK.[END]
    ; Test object flag and branch when clear.
    db $54, C2BondSeen
    dw HintMissingPay
    ; Set text name 0.
    db $30, $69

; Show the conclusion that the named ledger was kept to deceive Malone.
HintFalseLedger:

C2Loc3_BA:
    ; Show message 3.
    db $2c, $34 ; Message Text18Message34: INTERESTING...[PAGE] / THE [OBJECT_WRAM:37C5] / LEDGER MUST HAVE / BEEN KEPT TO / DEC...

; With McMurphy's note read, describe police bribes and reveal the fixed courier-zero sum once.
ShowC2Bribes:

C2Loc3_BB:
    ; Test object flag and branch when clear.
    db $54, C2McMSeen
    dw EndC2ItemCue
    ; Show message 0.
    db $00, $98 ; Message Text13Message18: IT LOOKS LIKE THE / COURIER #0 / PAYMENTS MIGHT BE / BRIBES TO THE / POLICE...[END]
    ; Test object flag and branch when set.
    db $08, C2SumShown
    dw EndC2ItemCue
    ; Set object flag.
    db $09, C2SumShown
    ; Show message 2.
    db $02, $26 ; Message Text16Message26: YOU DISCOVER / SOMETHING / INTERESTING![PAGE] / ALL THE PAYMENTS / FOR COURIER #0 / A...
    ; Set object flag.
    db $09, C2BribeKnown
    ; Set object flag.
    db $09, C2BribeTotalsShown
    ; Test object flag and branch when set.
    db $08, C2RingPlan
    dw EndC2ItemCue
    ; Test object flag and branch when set.
    db $08, C2LootPlan
    dw EndC2ItemCue
    ; Show message 1.
    db $01, $64 ; Message Text14Message64: IF THAT IS THE / CASE, THEN YOU'LL / PROBABLY NEVER / FIND THAT MONEY![END]
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
    db $00 ; Message Text13Message3C: YOU SCAN THE REST / OF THE BOOK...[PAGE] / BUT, THE FOLLOWINGPAGES HOLD NO / INTEREST...

jr_007_63af:
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
    db $2c, $2e ; Message Text18Message2E: THE CONTENTS / DIFFER SLIGHTLY / FROM THE LEDGER / FOUND AT JOE'S.[END]
    ; Set text name 0.
    db $30, $6c
    ; Set text name 1.
    db $31, $6d

; Show the absent courier-zero payment clue and question whether Ventini hid the payments.
HintAbsentPay:

C2Loc3_BE:
    ; Show message 3.
    db $2c, $2f ; Message Text18Message2F: THE PAYMENT TO / COURIER #0 IS NOT / RECORDED IN THIS / LEDGER.[END]
    ; Show message 2.
    db $02, $eb ; Message Text17Message6B: YOU WONDER WHY / COURIER #0 / ISN'T LISTED IN / THIS BOOK? DOES / THIS MEAN THAT / VE...
    ; Show message 1.
    db $01, $79 ; Message Text14Message79: YOU FIGURE THAT / MIGHT BE THE / CONNECTION! SIEGELWAS PAYING OFF / COURIER #0 AND / ...
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
    db $2c, $32 ; Message Text18Message32: THE CONTENTS ARE / THE SAME AS THE / LEDGER IN THE / OTHER OFFICE.[END]

; Show that the ledger contains the same information as Siegel's diary.
HintSameEntries:

C2Loc3_C0:
    ; Show message 2.
    db $02, $f1 ; Message Text17Message71: THIS SEEMS TO / CONTAIN ALL THE / SAME INFORMATION / AS SIEGEL'S DIARY.[END]
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Show the missing courier-zero payment hint when the Bondwell-letter clue is absent.
HintMissingPay:

C2Loc3_C1:
    ; Show message 0.
    db $00, $bb ; Message Text13Message3B: HMM...[PAGE] / THIS BOOK MIGHT BEIDENTICAL TO THE / OTHER ONE IF IT / WEREN'T FOR THE...
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

jr_007_63e3:
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
    db $02, $0d ; Message Text16Message0D: IT'S A BUSINESS / CARD THAT READS, / "SUGAR SHACK / 4117 S. COTTAGE / CHICAGO, IL"[PA...
    ; Test object flag and branch when set.
    db $08, C2CottageKnown
    dw EndC2Item
    ; Add quick-list value.
    db $44, CabCottage

jr_007_63f3:
    ; Set object flag.
    db $09, C2CottageKnown
    ; End script.
    db $ff

; Describe the ordinary pencil.
LookPencil:

C2Sc3_43:
    ; Show message 1.
    db $01, $c2 ; Message Text15Message42: AN ORDINARY / PENCIL.[END]
    ; End script.
    db $ff

; Describe the small unusually shaped key 4.
LookC2Key4:

C2Sc3_44:
    ; Show message 1.
    db $01, $c3 ; Message Text15Message43: IT'S A SMALL / UNUSUALLY SHAPED / KEY.[END]
    ; End script.
    db $ff

; Choose the tissue description from its original used flag.
LookTissue:

C2Sc3_45:
    ; Test object flag and branch when set.
    db $08, C2TissueUsed
    dw LookUsedTissue
    ; Show message 2.
    db $02, $46 ; Message Text16Message46: IT'S A TISSUE.[PAGE] / YOU KNOW HOW TO / USE IT- JUST PUT / IT TO YOUR NOSE / AND BLO...
    ; End script.
    db $ff

; Describe the used tissue.
LookUsedTissue:

C2Loc3_C2:
    ; Show message 2.
    db $02, $47 ; Message Text16Message47: IT'S A USED / TISSUE.[END]
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
    db $2a, C2VisIdSugarTissue
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe Sugar's pillow using the regional text.
LookPillow:

C2Sc3_47:
    ; Show message 2.
    db $02, $48 ; Message Text16Message48: THAT PILLOW HAS / SEEN BETTER DAYS.[END]
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
    db $2a, C2VisIdSugarPillow
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe Sugar's perfume using its regional product name.
LookPerfume:

C2Sc3_49:
    ; Show message 2.
    db $02, $49 ; Message Text16Message49: IT'S A BOTTLE OF / SUGAR'S FAVORITE / PERFUME, "ODE DU / PIERE."[END]
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
    db $2a, C2VisIdSugarPerfume
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Read the newspaper with an obituary cut out by Sugar.
ReadSugarNews:

C2Sc3_4B:
    ; Show message 2.
    db $02, $4a ; Message Text16Message4A: THIS PAPER IS / OPENED TO THE / OBITUARIES. YOU / NOTICE THAT SUGAR / SHACK SEEMS TO ...

jr_007_642f:
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
    db $2a, C2VisIdSugarNewspaper
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe Sugar's dress using the original regional text.
LookC2Dress:

C2Sc3_4D:
    ; Show message 2.
    db $02, $4b ; Message Text16Message4B: THIS SURE IS A / SLINKY DRESS! YOU / FIND IT ATTRACTIVEIN A GARISH SORT / OF WAY.[END]
    ; End script.
    db $ff

; Describe the pile of dirty clothes.
LookSugarClothes:

C2Sc3_4E:
    ; Show message 2.
    db $02, $4c ; Message Text16Message4C: IT'S A PILE OF / SUGAR SHACK'S / DIRTY CLOTHES. YOUFIGURE TODAY IS / NOT WASH DAY![END]
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
    db $02, $4e ; Message Text16Message4E: IT'S A LETTER FROMPOLICEMAN MCMURPHYTHAT READS...[PAGE] / "CONSIDER THIS A / DEATH BE...
    ; Set object flag.
    db $09, C2McMSeen
    ; Test object flag and branch when set.
    db $08, C2BribeKnown
    dw EndC2ItemCue
    ; Test object flag and branch when set.
    db $08, C2BondSeen
    dw HintFindLedger
    ; Show message 1.
    db $01, $7d ; Message Text14Message7D: LOOKS LIKE SIEGEL / WAS INVOLVED IN / EVEN MORE SHADY / STUFF THAN YOU / THOUGHT.[PAG...
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; After the note, suggest finding a record of money transactions.
HintFindLedger:

C2Loc3_C3:
    ; Show message 1.
    db $01, $8c ; Message Text15Message0C: LIKE THE LETTER / SAID, THERE MUST / BE A RECORD OF / MONEY TRANSACTIONSSOMEWHERE.[PA...
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Describe the police uniform identified as McMurphy's.
LookMcMUniform:

C2Sc3_50:
    ; Show message 2.
    db $02, $4f ; Message Text16Message4F: IT'S A COPPER'S / UNIFORM![PAGE] / CLOSE EXAMINATION / REVEALS THAT THE / OWNER IS NO...
    ; End script.
    db $ff

; Describe the bundled deposit slips or read their opened contents.
LookDeposits:

C2Sc3_51:
    ; Test object flag and branch when set.
    db $08, C2DepositsOpen
    dw ReadDeposits
    ; Show message 2.
    db $02, $54 ; Message Text16Message54: IT LOOKS LIKE A / BUNCH OF BANK / DEPOSIT SLIPS / BUNDLED TOGETHER / WITH A RUBBER / ...
    ; End script.
    db $ff

; Read the four deposits and retain the original diary and bribe clue checks.
ReadDeposits:

C2Loc3_C4:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $55 ; Message Text16Message55: THERE ARE FOUR / BANK DEPOSIT SLIPSSTAPLED TOGETHER.[PAGE] / THE DATES AND / AMOUNTS ...
    ; Test object flag and branch when set.
    db $08, C2BribeKnown
    dw DepositBribeText
    ; Test object flag and branch when clear.
    db $54, C2DiarySeen
    dw EndC2Item
    ; Show message 2.
    db $02, $56 ; Message Text16Message56: WHOA, DEJA VU... / HAVEN'T YOU SEEN / THIS BEFORE?[END]
    ; End script.
    db $ff

; Associate the deposit dates with McMurphy's courier-zero payments.
DepositBribeText:

C2Loc3_C5:
    ; Show message 0.
    db $00, $b1 ; Message Text13Message31: THE DATES ARE THE / SAME AS THE / COURIER #0 / PAYMENTS.[PAGE] / THE AMOUNT WRITTENHE...
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
    db $02, $7c ; Message Text16Message7C: YOU FIGURE THIS / KEY MAY BELONG TO / BONDWELL'S HOUSE. / ALTHOUGH, YOU / COULD BE WR...
    ; End script.
    db $ff

; Describe Bondwell's driving license using the regional text.
LookBondLicense:

C2Sc3_55:
    ; Show message 2.
    db $02, $7f ; Message Text16Message7F: YOU ARE UNABLE TO / MAKE OUT THE / ADDRESS ON / BONDWELL'S DRIVERSLICENSE.[END]
    ; End script.
    db $ff

; Read the baggage claim ticket numbered 526.
LookClaimTicket:

C2Sc3_56:
    ; Show message 2.
    db $02, $80 ; Message Text17Message00: IT APPEARS TO BE ABAGGAGE CLAIM / TICKET WITH THE / NUMBER "526" / PRINTED ON IT.[END]
    ; End script.
    db $ff

; Describe the laundry soap.
LookSoap:

C2Sc3_57:
    ; Show message 2.
    db $02, $b9 ; Message Text17Message39: IT'S LAUNDRY SOAP![PAGE] / YOU WANT TO DO / LAUNDRY OR SOLVE AMYSTERY?[END]
    ; End script.
    db $ff

; Describe the unmarked brass key.
LookC2Key6:

C2Sc3_58:
    ; Show message 2.
    db $02, $de ; Message Text17Message5E: IT'S AN UNMARKED / BRASS KEY.[END]
    ; End script.
    db $ff

; Describe the small magnet resembling a button.
LookMagnet:

C2Sc3_59:
    ; Show message 2.
    db $02, $df ; Message Text17Message5F: IT'S A SMALL / MAGNET.[PAGE] / IT LOOKS LIKE A / BUTTON OF SOME / SORT.[END]
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
    db $02, $e0 ; Message Text17Message60: IT'S A PICTURE OF / THE NOTORIOUS / ANTHONY MALONE / SHAKING THE HAND / OF A MAN YOU ...
    ; Test object flag and branch when set.
    db $08, C2VentiniKnown
    dw EndC2Item
    ; Play audio.
    db $3e, $08
    ; Show message 1.
    db $01, $75 ; Message Text14Message75: DANNY VENTINI MUSTBE MALONE'S RIGHT / HAND MAN! IF THAT / IS SO, THEN WHAT / IS HE DO...
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
    db $2a, C2VisIdOuterOfficePhoto
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
    db $00, $b9 ; Message Text13Message39: IT'S A LARGE / LEATHER-BOUND / LEDGER.[END]
    ; Test object flag and branch when set.
    db $08, C2LedgerSeen
    dw EndC2Item
    ; Show message 1.
    db $01, $4f ; Message Text14Message4F: YOU WONDER WHAT ITSAYS?[END]
    ; End script.
    db $ff

; Show payments routed through Ventini to Malone, then compare the original knowledge flags.
ReadC2Ledger:

C2Loc3_C6:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $ba ; Message Text13Message3A: THIS LEDGER LISTS / PAYMENTS MADE TO / MALONE VIA VENTINIFROM THE VARIOUS / OPERATION...
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
    db $2c, $30 ; Message Text18Message30: BUT COMPARED / WITH THE OTHER / LEDGER...[END]
    ; Set text name 0.
    db $30, $6b
    ; Set text name 1.
    db $31, $6e
    ; Show message 3.
    db $2c, $31 ; Message Text18Message31: THERE IS A #0 / ENTRY IN THIS / BOOK.[END]
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
    db $2c, $2e ; Message Text18Message2E: THE CONTENTS / DIFFER SLIGHTLY / FROM THE LEDGER / FOUND AT JOE'S.[END]
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
    db $00, $af ; Message Text13Message2F: IT'S AN ORNATE / BRASS HAT-RACK.[END]
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
    db $00, $b0 ; Message Text13Message30: THIS PAPERWEIGHT / IS SHAPED IN THE / FORM OF SOME TYPE / OF BIRD.[PAGE] / ITS SEEMS ...
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
    db $2a, C2VisIdVentiniPaperweight
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe the detached bird and omit its extra hint when flag 86 is set.
LookC2Dart:

C2Sc3_64:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $b2 ; Message Text13Message32: THE TOP PART / OF THIS / PAPERWEIGHT IS / SHAPED LIKED A / DART.[END]
    ; Test object flag and branch when set.
    db $08, C2DartUsed
    dw EndC2Item
    ; Show message 0.
    db $00, $b3 ; Message Text13Message33: IT ALMOST SEEMS ASTHOUGH SOMEBODY / DESIGNED THIS / BIRD TO ACTUALLY / FLY![END]
    ; End script.
    db $ff

; Use the original flag 86 gate before picking up the detached bird.
TakeC2Dart:

C2Sc3_65:
    ; Test object flag and branch when set.
    db $08, C2DartUsed
    dw DartUnavailable

jr_007_6544:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, C2VisIdVentiniDart
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the original refusal to take the bird after it has been used.
DartUnavailable:

C2Loc3_C8:
    ; Show message 0.
    db $00, $e1 ; Message Text13Message61: I CAN'T DO THAT.[END]
    ; End script.
    db $ff

; Describe the base of the paperweight.
LookDartBase:

C2Sc3_66:
    ; Show message 0.
    db $00 ; Message Text13Message34: YOU NOTICE THAT / THE BIRD PART HAS / DETACHED FROM THE / BASE![END]

jr_007_6553:
    db $b4

jr_007_6554:
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
    db $2a, C2VisIdVentiniDartBase
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Describe the silver letter opener using the original regional wording.
LookC2Opener:

C2Sc3_68:
    ; Show message 0.
    db $00, $b6 ; Message Text13Message36: IT'S A STERLING / SILVER LETTER / OPENER.[END]
    ; End script.
    db $ff

; Describe the old sandwich using the original regional wording.
LookOldSandwich:

C2Sc3_69:
    ; Show message 0.
    db $00, $b8 ; Message Text13Message38: AN OLD PASTRAMI ONRYE! IF IT WASN'T / STALE YOU MIGHT / TAKE A BITE.[END]
    ; End script.
    db $ff

; Describe the desk blotter using the original regional wording.
LookDeskMat:

C2Sc3_6A:
    ; Show message 2.
    db $02, $fb ; Message Text17Message7B: IT'S A DESK / BLOTTER.[END]
    ; End script.
    db $ff

; Show the cannot-open reply using the selected item name.
ItemCannotOpen:

C2Sc3_6B:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $3a ; Message Text18Message3A: THE [OBJECT_WRAM:37C5] / DOES NOT OPEN.[END]
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
    db $2a, C2VisIdSecretOfficeDeskMat
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Read the framed photo description without the carried-photo knowledge updates.
LookFramedPhoto:

C2Sc3_6D:
    ; Show message 0.
    db $00, $2f ; Message Text12Message2F: IN THIS PICTURE, / SEIGEL IS SHAKING / HANDS WITH A THIN / GUY IN FRONT OF / THE "REL...
    ; End script.
    db $ff

; Read the original Chicago company list and its regional annotations.
ReadCompanyList:

C2Sc3_6E:
    ; Show message 2.
    db $02, $f5 ; Message Text17Message75: YOU CAN BARELY / MAKE OUT THE / SCRIBBLINGS  ON / THIS PAPER...[PAGE] / IT'S SEEMS TO...
    ; End script.
    db $ff

; Describe the banana according to its peeled flag.
LookC2Banana:

C2Sc3_6F:
    ; Test object flag and branch when set.
    db $08, C2BananaPeeled
    dw LookPeeledBanana
    ; Show message 2.
    db $02, $f6 ; Message Text17Message76: THIS BANANA SEEMS / PRETTY RIPE.[END]
    ; End script.
    db $ff

; Show the too-soft banana description after peeling.
LookPeeledBanana:

C2Loc3_C9:
    ; Show message 2.
    db $02, $f7 ; Message Text17Message77: IT'S REALLY TOO / SOFT...[END]
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
    db $02, $ed ; Message Text17Message6D: YOU PEEL THE / BANANA.[END]
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw ShowC2Peel
    ; Set text name 0.
    db $30, C2Peel
    ; Show message 3.
    db $2c, $2d ; Message Text18Message2D: YOU THROW OUT THE / [OBJECT_WRAM:37C5] / BECAUSE IT SEEMS / USELESS.[END]
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
    db $02, $ef ; Message Text17Message6F: IT'S A LARGE BLACKLEDGER.[END]
    ; Test object flag and branch when set.
    db $08, C2BlackSeen
    dw EndC2ItemCue
    ; Show message 1.
    db $01, $4f ; Message Text14Message4F: YOU WONDER WHAT ITSAYS?[END]
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
    db $2c, $32 ; Message Text18Message32: THE CONTENTS ARE / THE SAME AS THE / LEDGER IN THE / OTHER OFFICE.[END]
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
    db $2c, $30 ; Message Text18Message30: BUT COMPARED / WITH THE OTHER / LEDGER...[END]
    ; Set text name 0.
    db $30, $6b
    ; Set text name 1.
    db $31, $6d
    ; Show message 3.
    db $2c, $31 ; Message Text18Message31: THERE IS A #0 / ENTRY IN THIS / BOOK.[END]
    ; Test object flag and branch when clear.
    db $54, C2BondSeen
    dw HintMissingPay
    ; Set text name 0.
    db $30, $69
    ; Show message 3.
    db $2c, $34 ; Message Text18Message34: INTERESTING...[PAGE] / THE [OBJECT_WRAM:37C5] / LEDGER MUST HAVE / BEEN KEPT TO / DEC...
    ; Jump to script.
    db $07
    dw ShowC2Bribes

; Without an examined diary, describe the payment entries as insufficient information.
HintUnreadDiary:

C2Loc3_CC:
    ; Show message 2.
    db $02, $f3 ; Message Text17Message73: PAYMENTS ARE / RECORDED IN THIS / BOOK, BUT WITHOUT / ANY FURTHER / INFORMATION, THEY...
    ; End script.
    db $ff

; Set the black ledger open and examined flags, then compare its entries.
OpenBlackBook:

C2Sc3_73:
    ; Test object flag and branch when set.
    db $08, C2BlackOpen
    ; Target C2AlreadyOpen; retain the interior label.
    db LOW(C2AlreadyOpen)

jr_007_65e9:
    db HIGH(C2AlreadyOpen)
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
    db $02, $a3 ; Message Text17Message23: THE TOE TAG READS / "JONES, SQUIDLY."[END]
    ; End script.
    db $ff

; Pick up the first toe tag and hide its room object 4D.
TakeTag1:

C2Sc3_76:
    ; Test attribute bit 0 and branch when set.
    db $17
    dw RejectC2Item

jr_007_6603:
    ; Call script.
    db $05
    dw ShowC2Take
    ; Hide object.
    db $2a, C2VisIdMorgueTag1
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Read the toe tag identifying Thomas Bondwell.
LookTag2:

C2Sc3_77:
    ; Show message 2.
    db $02, $a4 ; Message Text17Message24: THE TOE TAG READS / "BONDWELL, THOMAS / S."[END]
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
    db $2a, C2VisIdMorgueTag2
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the banana-peel description.
LookC2Peel:

C2Sc3_79:
    ; Show message 2.
    db $02, $ee ; Message Text17Message6E: YOU WONDER IF / SOMEONE WOULD SLIPIF YOU LEFT THIS / ON THE FLOOR?[END]
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

jr_007_662c:
    db C2VisIdAdisonCigarRing
    ; Jump to script.
    db $07
    dw AddC2ItemEnd

; Show the separate .38 ammunition description shared by six original records.
LookC2AmmoAlt:

C2Sc3_7C:
    ; Show message 0.
    db $00, $c0 ; Message Text13Message40: IT'S A BULLET FOR / A .38 SPECIAL.[END]
    ; End script.
    db $ff

; Show the original reply that this ammunition is no longer needed.
AmmoNotNeeded:

C2Sc3_7D:
    ; Show message 1.
    db $01, $47 ; Message Text14Message47: SINCE THERE IS NO / OTHER USE FOR IT, / YOU DON'T NEED / IT ANYMORE.[END]
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
jr_007_6637:
    ; Match alternate item against type, ID and script target rows.
    db $32, $03, C2DeskMat
    dw TryRingOnMat
    db $01, C2ContainerSecretOfficeDesk
    dw MatchDeskRing
    db $02, C2GroupLaundryWasher
    dw PutItemWasher
    db $02, C2GroupSecretOfficeBin
    dw PutItemTrash1
    db $02, C2GroupJoeFoodTrash
    dw PutItemTrash2
    db $02, C2GroupMaloneDesk
    dw MatchDeskStore
    db $00, C2TargetNoHit
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
    db $32, $02, C2GroupLaundryWasher
    dw PutItemWasher
    db $02, C2GroupSecretOfficeBin
    dw PutItemTrash1
    db $02, C2GroupJoeFoodTrash
    dw PutItemTrash2
    db $02, C2GroupMaloneDesk
    dw MatchDeskStore
    db $00, C2TargetNoHit
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
    db $46, C2ItemPoliceUniform
    dw StoreUniformCheck
    ; Test packed item argument and branch on equality.
    db $46, C2ItemLiftButton
    dw DeskItemRefusal
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemCash
    dw DeskItemRefusal
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemQuarters
    dw DeskItemRefusal
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemBullets
    dw DeskItemRefusal
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemCells
    dw DeskItemRefusal
    ; Test packed item argument and branch on equality.
    db $46, C2ListItemChips
    dw DeskItemRefusal
    ; Test packed item argument and branch on equality.
    db $46, C2Paperweight
    dw DeskItemRefusal
    ; Test packed item argument and branch on equality.
    db $46, C2Banana
    ; Target DeskItemRefusal; retain the interior label.
    db LOW(DeskItemRefusal)

jr_007_66aa:
    db HIGH(DeskItemRefusal)

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
    db $01, $f3 ; Message Text15Message73: YOU'D BETTER GIVE / UP.[END]
    ; End script.
    db $ff

; Allow storing the trench only when its worn flag is clear.
StoreTrenchCheck:

C2Loc3_D5:
    ; Test object flag and branch when clear.
    db $54, C2TrenchWorn
    dw PutItemDesk
    ; Show message 2.
    db $02, $c7 ; Message Text17Message47: YOU HAVE A STRANGEURGE TO TAKE OFF / YOUR CLOTHES.[END]
    ; End script.
    db $ff

; Allow storing the pants only when their worn flag is clear.
StorePantsCheck:

C2Loc3_D6:
    ; Test object flag and branch when clear.
    db $54, C2PantsWorn
    ; Target PutItemDesk; retain the interior label.
    db LOW(PutItemDesk)

jr_007_66bb:
    db HIGH(PutItemDesk)
    ; Show message 2.
    db $02, $c7 ; Message Text17Message47: YOU HAVE A STRANGEURGE TO TAKE OFF / YOUR CLOTHES.[END]
    ; End script.
    db $ff

; Allow storing the coat only when its worn flag is clear.
StoreCoatCheck:

C2Loc3_D7:
    ; Test object flag and branch when clear.
    db $54, C2CoatWorn
    dw PutItemDesk
    ; Show message 2.
    db $02, $c7 ; Message Text17Message47: YOU HAVE A STRANGEURGE TO TAKE OFF / YOUR CLOTHES.[END]
    ; End script.
    db $ff

; Allow storing the uniform only when its worn flag is clear.
StoreUniformCheck:

C2Loc3_D8:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw PutItemDesk
    ; Show message 2.
    db $02, $c7 ; Message Text17Message47: YOU HAVE A STRANGEURGE TO TAKE OFF / YOUR CLOTHES.[END]
    ; End script.
    db $ff

; Confirm direct placement without writing a container group record.
PutItemDirect:

C2Loc3_D9:
    ; Confirm direct placement without a group record.
    db $65, PutDirect
    ; End script.
    db $ff

; Fifteen counted raw IDs use this pickup; COIN 54 selects ItemSilentAction instead.
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
    db $2c, $1c ; Message Text18Message1C: YOU TAKE THE / [OBJECT_WRAM:37C5].[END]
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
    db $00, $2d ; Message Text12Message2D: WHAT ARE YOU / DOING...?[END]
    ; End script.
    db $ff

; Show the original nothing-happens response and end the item action.
NoC2ItemEffect:

C2Sc3_82:
    ; Show message 0.
    db $00, $2c ; Message Text12Message2C: NOTHING HAPPENS.[END]
    ; End script.
    db $ff
    ; Unreferenced sequence; these interpretations follow its byte pattern.
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $02 ; Message Text18Message02: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
    ; End script.
    db $ff

; Show that the selected item is already open.
C2AlreadyOpen:

C2Loc3_DE:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $19 ; Message Text18Message19: THE [OBJECT_WRAM:37C5] / IS OPEN.[END]
    ; End script.
    db $ff

; Show the selected item name in the close response.
ShowC2Closed:

C2Loc3_DF:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $03 ; Message Text18Message03: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; End script.
    db $ff

; Show that the selected item is already closed.
C2AlreadyClosed:

C2Loc3_E0:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1a ; Message Text18Message1A: THE [OBJECT_WRAM:37C5] / IS CLOSED.[END]
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
    db $2c, $02 ; Message Text18Message02: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
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
    db $2c, $02 ; Message Text18Message02: YOU OPEN THE / [OBJECT_WRAM:37C5].[END]
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
    db $2c, $03 ; Message Text18Message03: YOU CLOSE THE / [OBJECT_WRAM:37C5].[END]
    ; End script.
    db $ff

; Play the original room cue and end the item script.
EndC2ItemCue:

C2Loc3_E4:
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff
