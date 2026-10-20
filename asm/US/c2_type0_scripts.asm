
; Show the original worn bathtub description.
LookC2Tub:
; Opcode starts are annotated; scalar operands and inline item-match rows remain data.

C2Sc0_00:
    ; Show message 0.
    db $00, $09
    ; End script.
    db $ff

; Describe the cold tap with blue trimming.
LookColdTap:

C2Sc0_01:
    ; Set text name 0.
    db $30, $b2
    ; Show message 3.
    db $2c, $13
    ; End script.
    db $ff

; Describe the hot tap with red trimming.
LookHotTap:

C2Sc0_02:
    ; Set text name 0.
    db $30, $b1
    ; Show message 3.
    db $2c, $13
    ; End script.
    db $ff

; Check object 03 before the original reflection or memory sequence.
LookBathMirror:

C2Sc0_03:
    ; Test object visibility.
    db $28, $03
    ; Branch if result bit 0 is clear.
    db $04
    dw BathMirrorMemory

jr_007_46f2:
    ; Show message 0.
    db $00, $0e
    ; End script.
    db $ff

; Show the original mirror memory effect and restore the saved scene.
BathMirrorMemory:

C2Loc0_00:
    ; Run scene effect.
    db $39, $01
    ; Play audio.
    db $3e, $0a
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $0d
    ; Wait sixty ticks.
    db $7e
    ; Restore saved Case II effect.
    db $3a
    ; End script.
    db $ff

; Describe the metal towel rod.
LookTowelRod:

C2Sc0_04:
    ; Show message 0.
    db $00, $0f
    ; End script.
    db $ff

; Choose the running-water description from the original tap flags.
LookC2Sink:

C2Sc0_05:
    ; Test object flag and branch when set.
    db $08, C2ColdTapOn
    dw ColdSinkText
    ; Test object flag and branch when set.
    db $08, C2HotTapOn
    dw HotSinkText
    ; End script.
    db $ff

; Check the hot tap before the cold running-water description.
ColdSinkText:

C2Loc0_01:
    ; Test object flag and branch when set.
    db $08, C2HotTapOn
    dw BothSinkText
    ; Show message 0.
    db $00, $10
    ; End script.
    db $ff

; Show steam rising from the running hot water.
HotSinkText:

C2Loc0_02:
    ; Show message 0.
    db $00, $12
    ; End script.
    db $ff

; Show the original description when both taps are open.
BothSinkText:

C2Loc0_03:
    ; Show message 0.
    db $00, $11
    ; End script.
    db $ff

; Check broken glass object 07 before describing the dirty window.
LookGrimyWindow:

C2Sc0_06:
    ; Test object visibility.
    db $28, $07
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Show message 0.
    db $00, $35
    ; End script.
    db $ff

; Show that the glass is already broken.
GlassIsBroken:

C2Loc0_04:
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $01
    ; End script.
    db $ff

; Show the original faded room curtain description.
LookRoomCurtain:

C2Sc0_07:
    ; Show message 0.
    db $00, $36
    ; End script.
    db $ff

; Check broken mirror object 05 before the original reflection or memory sequence.
LookRoomMirror:

C2Sc0_08:
    ; Test object visibility.
    db $28, $05
    ; Branch if result bit 0 is clear.
    db $04
    dw BathMirrorMemory
    ; Show message 0.
    db $00, $0e
    ; End script.
    db $ff

; Show the original regional bed description.
LookC2Bed:

C2Sc0_09:
    ; Show message 0.
    db $00, $37
    ; End script.
    db $ff

; Show the regional painting description.
LookRoomArt:

C2Sc0_0A:
    ; Show message 0.
    db $00, $38
    ; End script.
    db $ff

; Describe the small table that matches the hotel decor.
LookHotelTable:

C2Sc0_0B:
    ; Show message 0.
    db $00, $49
    ; End script.
    db $ff

; Show the original lit lamp description.
LookLitLamp:

C2Sc0_0C:
    ; Show message 0.
    db $00, $4a
    ; End script.
    db $ff

; Describe the decorated light fixture.
LookTackyLamp:

C2Sc0_0D:
    ; Show message 0.
    db $00, $4b
    ; End script.
    db $ff

; Describe the elevator button.
LookC2LiftButton:

C2Sc0_0E:
    ; Show message 0.
    db $00, $4c
    ; End script.
    db $ff

; Read the casino sign.
ReadCasinoSign:

C2Sc0_0F:
    ; Show message 0.
    db $00, $4d
    ; End script.
    db $ff

; Describe the painting of two men facing off with guns.
LookShowdownArt:

C2Sc0_10:
    ; Show message 0.
    db $00, $75
    ; End script.
    db $ff

; Describe the red velvet chair.
LookRedChair:

C2Sc0_11:
    ; Show message 0.
    db $00, $76
    ; End script.
    db $ff

; Show the second original chair description.
LookC2Chair:

C2Sc0_12:
    ; Show message 0.
    db $00, $77

Call_007_474e:
Jump_007_474e:
    ; End script.
    db $ff

; Describe the small coffee table.
LookCoffeeTable:

C2Sc0_13:
    ; Show message 0.
    db $00, $78
    ; End script.
    db $ff

; Read the original cashier sign.
ReadCashierSign:

C2Sc0_14:
    ; Show message 0.
    db $00, $7d
    ; End script.
    db $ff

; Show the regional reply that one chip costs five dollars.
ShowChipPrice:

C2Sc0_15:
    ; Show message 0.
    db $00, $7e
    ; End script.
    db $ff

; Describe the cash and chip exchange counter.
LookCashCounter:

C2Sc0_16:
    ; Show message 0.
    db $00, $7f
    ; End script.
    db $ff

; Describe the blonde cashier behind the counter.
LookCashierLady:

C2Sc0_17:
    ; Show message 0.
    db $00, $80
    ; End script.
    db $ff

; Show the regional blackjack table description.
LookBJTable:

C2Sc0_18:
    ; Show message 0.
    db $00, $8a
    ; End script.
    db $ff

; Read Rudy Kowalski's name tag.
ReadRudyTag:

C2Sc0_19:
    ; Show message 0.
    db $00, $95
    ; End script.
    db $ff

; Choose the dealer description before or after recognition.
LookC2Rudy:

C2Sc0_1A:
    ; Test object flag and branch when set.
    db $08, C2RudyKnows
    dw RudySmile
    ; Show message 0.
    db $00, $96
    ; End script.
    db $ff

; Show Rudy smiling at Ace.
RudySmile:

C2Loc0_05:
    ; Show message 0.
    db $00, $97
    ; End script.
    db $ff

; Read the original casino advertisement in the lift.
ReadCasinoAd:

C2Sc0_1B:
Jump_007_476e:
    ; Show message 0.
    db $00, $9e
    ; End script.
    db $ff

; Inspect the original lift panel according to button visibility and pickup state.
LookLiftPanel:

C2Sc0_1C:
    ; Test object flag and branch when set.
    db $08, C2ButtonTaken
    dw LiftPanelNo4
    ; Test object visibility.
    db $28, $0f
    ; Branch if result bit 0 is set.
    db $03
    dw LiftPanelButtonVisible
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $9f
    ; Show message 0.
    db $00, $a0
    ; End script.
    db $ff

; Describe the three-button panel after the magnetic button was taken.
LiftPanelNo4:

C2Loc0_06:
    ; Show message 0.
    db $00, $9f
    ; End script.
    db $ff

; End the visible-button panel branch without additional text.
; Handle visible lift button $0f; JP shows message $a1 before ending.
LiftPanelButtonVisible:
LiftPanelNoReply:

C2Loc0_07:
    ; End script.
    db $ff

; Describe the grey first-floor button using the original numeric text value.
LookLift1Btn:

C2Sc0_1D:
    ; Set script value 0.
    db $49, $01
    ; Show message 3.
    db $2c, $07
    ; End script.
    db $ff

; Describe the grey second-floor button using the original numeric text value.
LookLift2Btn:

C2Sc0_1E:
    ; Set script value 0.
    db $49, $02
    ; Show message 3.
    db $2c, $07
    ; End script.
    db $ff

; Describe the grey third-floor button using the original numeric text value.
LookLift3Btn:

C2Sc0_1F:
    ; Set script value 0.
    db $49, $03
    ; Show message 3.
    db $2c, $07
    ; End script.
    db $ff

; Show the first original hotel art description.
LookHotelArt1:

C2Sc0_20:
    ; Show message 0.
    db $00, $53
    ; End script.
    db $ff

; Show the second original hotel art description.
LookHotelArt2:

C2Sc0_21:
    ; Show message 0.
    db $00, $58
    ; End script.
    db $ff

; Describe the large palm and its shade.
LookPalmShade:

C2Sc0_22:
    ; Show message 0.
    db $00, $cd
    ; End script.
    db $ff

; Describe the palm at the hotel entrance.
LookEntryPalm:

C2Sc0_23:
    ; Show message 0.
    db $00, $ce
    ; End script.
    db $ff

; Read the Lucky Dice Hotel and Casino name on the awning.
ReadHotelAwning:

C2Sc0_24:
    ; Show message 0.
    db $00, $cf
    ; End script.
    db $ff

; Describe the sharp cactus thorns.
LookCactusThorn:

C2Sc0_25:
    ; Show message 0.
    db $00, $e0
    ; End script.
    db $ff

; Describe the tree growing in the heat and dry ground.
LookDesertTree:

C2Sc0_26:
    ; Show message 0.
    db $00, $e2
    ; End script.
    db $ff

; Show the original sun-heated rock description.
LookHotRock:

C2Sc0_27:
    ; Show message 0.
    db $00, $e4
    ; End script.
    db $ff

; Show the regional animal skull or bone description.
LookAnimalSkull:

C2Sc0_28:
    ; Show message 0.
    db $00, $e6
    ; End script.
    db $ff

; Show the regional desert grass description.
LookDesertGrass:

C2Sc0_29:
    ; Show message 0.
    db $00, $e7
    ; End script.
    db $ff

; Describe the cactus growing in barren ground.
LookDesertCactus:

C2Sc0_2A:
    ; Show message 0.
    db $00, $e9
    ; End script.
    db $ff

; Check broken glass object 22 before the arched-window description.
LookArchWin1:

C2Sc0_2B:
    ; Test object visibility.
    db $28, $22
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Show message 0.
    db $00, $f2
    ; End script.
    db $ff

; Check broken glass object 23 before the arched-window description.
LookArchWin2:

C2Sc0_2C:
    ; Test object visibility.
    db $28, $23
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Show message 0.
    db $00, $f2
    ; End script.
    db $ff

; Read the Las Vegas station sign.
ReadVegasSign:

C2Sc0_2D:
    ; Show message 0.
    db $00, $f4
    ; End script.
    db $ff

; Describe the worn wooden bench.
LookWoodBench:

C2Sc0_2E:
    ; Show message 0.
    db $00, $f7
    ; End script.
    db $ff

; Read the platform 6 sign using the original numeric text value.
ReadPlatform6:

C2Sc0_2F:
    ; Set script value 0.
    db $49, $06
    ; Show message 3.
    db $2c, $08
    ; End script.
    db $ff

; Read the platform 7 sign using the original numeric text value.
ReadPlatform7:

C2Sc0_30:
    ; Set script value 0.
    db $49, $07
    ; Show message 3.
    db $2c, $08
    ; End script.
    db $ff

; Read the platform 8 sign using the original numeric text value.
ReadPlatform8:

C2Sc0_31:
    ; Set script value 0.
    db $49, $08
    ; Show message 3.
    db $2c, $08

jr_007_47d8:
    ; End script.
    db $ff

; Read the platform 9 sign using the original numeric text value.
ReadPlatform9:

C2Sc0_32:
    ; Set script value 0.
    db $49, $09
    ; Show message 3.
    db $2c, $08
    ; End script.
    db $ff

; Read the sign pointing toward baggage claim.
ReadBaggageSign:

C2Sc0_33:
    ; Show message 0.
    db $00, $f8
    ; End script.
    db $ff

; Describe the suspicious man whose dialogue leads to the original shop.
LookC2Seller:

; Show the original suspicious man description without assigning an identity.
LookC2Man:

C2Sc0_34:
jr_007_47e1:
    ; Show message 0.
    db $00, $f9
    ; End script.
    db $ff

; Show the original timetable for trains six through nine.
ViewTrains6To9:

C2Sc0_35:
    ; Show trains six through nine.
    db $59
    ; End script.
    db $ff

; Read the instruction to exchange the claim tag for luggage.
ReadClaimSign:

C2Sc0_36:
    ; Show message 0.
    db $00, $0b
    ; End script.
    db $ff

; Show the regional timetable or pamphlet box description.
LookScheduleBox:

C2Sc0_37:
    ; Show message 0.
    db $00, $0c
    ; End script.
    db $ff

; Show the regional luggage attendant description.
LookAttendant:

C2Sc0_38:
    ; Show message 0.
    db $00, $16
    ; End script.
    db $ff

; Select the hanging platform sign from the original room argument.
LookCeilPlatform:

C2Sc0_39:
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform6
    dw ReadCeilSign6
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform7
    dw ReadCeilSign7
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform8
    dw ReadCeilSign8
    ; Test room argument and branch on equality.
    db $25, RoomVegasPlatform9
    dw ReadCeilSign9
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform2
    dw ReadCeilSign2
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform3
    dw ReadCeilSign3
    ; Test room argument and branch on equality.
    db $25, RoomChicagoPlatform4
    dw ReadCeilSign4

; Show the platform 5 ceiling sign through the original default branch.
ReadCeilSign5:

jr_007_480b:
    ; Set script value 0.
    db $49, $05
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

; Show the platform 6 ceiling sign.
ReadCeilSign6:

C2Loc0_08:
    ; Set script value 0.
    db $49, $06
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

; Show the platform 7 ceiling sign.
ReadCeilSign7:

C2Loc0_09:
    ; Set script value 0.
    db $49, $07
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

; Show the platform 8 ceiling sign.
ReadCeilSign8:

C2Loc0_0A:
    ; Set script value 0.
    db $49, $08
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

; Show the platform 9 ceiling sign.
ReadCeilSign9:

C2Loc0_0B:
    ; Set script value 0.
    db $49, $09
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

; Show the platform 2 ceiling sign.
ReadCeilSign2:

C2Loc0_0C:
    ; Set script value 0.
    db $49, $02
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

; Show the platform 3 ceiling sign.
ReadCeilSign3:

C2Loc0_0D:
    ; Set script value 0.
    db $49, $03
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

; Show the platform 4 ceiling sign.
ReadCeilSign4:

C2Loc0_0E:
    ; Set script value 0.
    db $49, $04
    ; Show message 3.
    db $2c, $0a
    ; End script.
    db $ff

; Show the original regional train description.
LookC2Train:

C2Sc0_3A:
    ; Show message 0.
    db $00, $8b
    ; End script.
    db $ff

; Describe the seats designed for a long train trip.
LookTrainSeats:

C2Sc0_3B:
    ; Show message 2.
    db $02, $23
    ; End script.
    db $ff

; Show that the closed blind blocks the outside view.
LookTrainShade:

C2Sc0_3C:
    ; Show message 2.
    db $02, $24
    ; End script.
    db $ff

; Show the original view through the train window.
LookTrainWindow:

C2Sc0_3D:
    ; Show message 2.
    db $02, $25
    ; End script.
    db $ff

; Select current train information and show the destination sign.
ReadTrainDest:

C2Sc0_3E:
    ; Select the current train fare.
    db $5e
    ; Show message 3.
    db $2c, $40
    ; End script.
    db $ff

; Describe the conductor waiting impatiently.
LookC2Conductor:

C2Sc0_3F:
    ; Show message 2.
    db $02, $28
    ; End script.
    db $ff

; Describe the woman talking to the nearby man.
LookChattyWoman:

C2Sc0_40:
    ; Show message 2.
    db $02, $29
    ; End script.
    db $ff

; Choose the male passenger description from flag 18.
LookSeatMan:

C2Sc0_41:
    ; Test object flag and branch when set.
    db $08, C2SeatManAsleep
    dw SeatManAsleep
    ; Show message 2.
    db $02, $33
    ; End script.
    db $ff

; Describe the man nodding off.
SeatManAsleep:

C2Loc0_0F:
    ; Show message 2.
    db $02, $3a
    ; End script.
    db $ff

; Show the original young female passenger description.
LookYoungWoman:

C2Sc0_42:
    ; Show message 2.
    db $02, $3b
    ; End script.
    db $ff

; Read the platform 2 sign using the original numeric text value.
ReadPlatform2:

C2Sc0_43:
    ; Set script value 0.
    db $49, $02
    ; Show message 3.
    db $2c, $08
    ; End script.
    db $ff

; Read the platform 3 sign using the original numeric text value.
ReadPlatform3:

C2Sc0_44:
    ; Set script value 0.
    db $49, $03
    ; Show message 3.
    db $2c, $08
    ; End script.
    db $ff

; Read the platform 4 sign using the original numeric text value.
ReadPlatform4:

C2Sc0_45:
    ; Set script value 0.
    db $49, $04
    ; Show message 3.
    db $2c, $08
    ; End script.
    db $ff

; Read the platform 5 sign using the original numeric text value.
ReadPlatform5:

C2Sc0_46:
    ; Set script value 0.
    db $49, $05
    ; Show message 3.
    db $2c, $08
    ; End script.
    db $ff

; Show the original old wooden bench description.
LookOldBench:

C2Sc0_47:
    ; Show message 1.
    db $01, $02
    ; End script.
    db $ff

; Show the original timetable for trains two through five.
ViewTrains2To5:

C2Sc0_48:
    ; Show trains two through five.
    db $58
    ; End script.
    db $ff

; Show the newsstand offer or its closed shutters from state A0.
LookNewsStand:

C2Sc0_49:
    ; Test state bit.
    db $0e, $a0
    ; Branch if result bit 0 is clear.
    db $04
    dw NewsStandClosed
    ; Show message 1.
    db $01, $04
    ; End script.
    db $ff

; Describe the original closed wooden shutters.
NewsStandClosed:

C2Loc0_10:
    ; Show message 1.
    db $01, $05
    ; End script.
    db $ff

; Show the original newspaper seller description.
LookNewsSeller:

C2Sc0_4A:
    ; Show message 1.
    db $01, $06
    ; End script.
    db $ff

; Describe the newspaper seller dog and retain the first-view memory effect.
LookNewsDog:

C2Sc0_4B:
    ; Test object flag and branch when set.
    db $08, C2NewsDogSeen
    dw NewsDogAgain
    ; Run scene effect.
    db $39, $04
    ; Play audio.
    db $3e, $0a
    ; Set object flag.
    db $09, C2NewsDogSeen
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 1.
    db $01, $07
    ; Wait sixty ticks.
    db $7e
    ; Restore saved Case II effect.
    db $3a
    ; End script.
    db $ff

; Describe the dog scars on a repeated inspection.
NewsDogAgain:

C2Loc0_11:
    ; Show message 1.
    db $01, $08
    ; End script.
    db $ff

; Read the Chicago Station sign.
LookChiStnSign:

C2Sc0_4C:
    ; Show message 1.
    db $01, $36
    ; End script.
    db $ff

; Describe the first Chicago arched window unless its glass state B3 is set.
LookChiWindow1:

C2Sc0_4D:
    ; Test state bit.
    db $0e, C2ChiGlass1
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Show message 0.
    db $00, $f2
    ; End script.
    db $ff

; Describe the second Chicago arched window unless its glass state B2 is set.
LookChiWindow2:

C2Sc0_4E:
    ; Test state bit.
    db $0e, C2ChiGlass2
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Show message 1.
    db $01, $38
    ; End script.
    db $ff

; Show the original rear-view mirror description.
LookCabMirror:

C2Sc0_4F:
    ; Show message 1.
    db $01, $3f
    ; End script.
    db $ff

; Show the original cab driver description.
LookGabby:

C2Sc0_50:
    ; Show message 1.
    db $01, $40
    ; End script.
    db $ff

; Show the regional meter description or remark about Gabby.
LookCabMeter:

C2Sc0_51:
    ; Show message 1.
    db $01, $41
    ; End script.
    db $ff

; Show the regional football poster description.
LookCabPoster:

C2Sc0_52:
    ; Show message 1.
    db $01, $42
    ; End script.
    db $ff

; Read the building vacancy advertisement.
LookVacancySign:

C2Sc0_53:
    ; Show message 1.
    db $01, $53
    ; End script.
    db $ff

; Describe the knife scratches near the lock.
LookLockMarks:

C2Sc0_54:
    ; Show message 1.
    db $01, $58
    ; End script.
    db $ff

; Describe the dented mailbox.
LookDentedMail:

C2Sc0_55:
    ; Show message 1.
    db $01, $59
    ; End script.
    db $ff

; Describe the elk head won in a poker game.
LookC2ElkHead:

C2Sc0_56:
    ; Show message 1.
    db $01, $6a
    ; End script.
    db $ff

; Describe Ace's photo with O'Malley using the original regional text.
LookOMalleyPhoto:

C2Sc0_57:
    ; Show message 1.
    db $01, $6b
    ; End script.
    db $ff

; Describe the couch damaged by Stogie's target practice.
LookHomeCouch:

C2Sc0_58:
    ; Show message 1.
    db $01, $6c
    ; End script.
    db $ff

; Show the original yellow-pattern or worn curtain description.
LookHomeCurtain:

C2Sc0_59:
    ; Show message 1.
    db $01, $6d
    ; End script.
    db $ff

; Show the original boarded front-window description.
LookJoeWindow1:

C2Sc0_5A:
    ; Show message 1.
    db $01, $98
    ; End script.
    db $ff

; Choose the front-window description from glass state A5.
LookJoeWindow2:

C2Sc0_5B:
    ; Test state bit.
    db $0e, $a5
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Show message 1.
    db $01, $98
    ; End script.
    db $ff

; Show the regional lamppost description.
LookC2Lamppost:

C2Sc0_5C:
    ; Show message 1.
    db $01, $99
    ; End script.
    db $ff

; Describe the securely nailed boards.
LookNailedBoards:

C2Sc0_5D:
    ; Show message 1.
    db $01, $e1
    ; End script.
    db $ff

; Describe the setting for the spider web.
LookSpiderWeb:

C2Sc0_5E:
    ; Show message 1.
    db $01, $e2
    ; End script.
    db $ff

; Describe the large dusty cobweb.
LookDustWeb:

C2Sc0_5F:
    ; Show message 1.
    db $01, $e3
    ; End script.
    db $ff

; Describe the counter covered in dust.
LookDustCounter:

C2Sc0_60:
    ; Show message 1.
    db $01, $ee
    ; End script.
    db $ff

; Show the regional fly or sticky-web description.
LookFlyWeb:

C2Sc0_61:
    ; Show message 1.
    db $01, $ef
    ; End script.
    db $ff

; Describe the dust-free bottle and show its extra hint until the passage is found.
LookCleanBottle:

C2Sc0_62:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $fc
    ; Test object flag and branch when set.
    db $08, C2WinePassage
    dw EndC2Scene
    ; Show message 1.
    db $01, $fb
    ; End script.
    db $ff

; Show the original wine cask description.
LookWineCask:

C2Sc0_63:
    ; Show message 1.
    db $01, $f6
    ; End script.
    db $ff

; Describe the spigot on the wine cask.
LookWineSpigot:

C2Sc0_64:
    ; Show message 1.
    db $01, $f5
    ; End script.
    db $ff

; Describe the dusty bottle rack and check its original state 61 hint gate.
LookBottleRack:

C2Sc0_65:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $f7
    ; Test state bit.
    db $0e, $61
    ; Branch if result bit 0 is set.
    db $03
    dw EndC2Scene
    ; Show message 1.
    db $01, $f8
    ; End script.
    db $ff

; Describe the bare cracked lightbulb.
LookBareBulb:

C2Sc0_66:
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

; Show the original roulette table description.
LookRoulette:

C2Sc0_67:
    ; Show message 2.
    db $02, $06
    ; End script.
    db $ff

; Show the regional splintered or nail-covered board description.
LookSplinterBoard:

C2Sc0_68:
    ; Show message 1.
    db $01, $ac
    ; End script.
    db $ff

; Describe the boarded window according to state 58.
LookBoardWindow:

C2Sc0_69:
    ; Test state bit.
    db $0e, $58
    ; Branch if result bit 0 is set.
    db $03
    dw BoardGapReply
    ; Show message 1.
    db $01, $aa
    ; End script.
    db $ff

; Describe the opening after a board has been removed.
BoardGapReply:

C2Loc0_12:
    ; Show message 1.
    db $01, $ab
    ; End script.
    db $ff

; Describe the metal fire escape or regional stairway.
LookFireEscape:

C2Sc0_6A:
    ; Show message 1.
    db $01, $a5
    ; End script.
    db $ff

; Describe the gap left by removing one board.
LookBoardGap:

C2Sc0_6B:
    ; Show message 1.
    db $01, $ba
    ; End script.
    db $ff

; Describe the raised shade or open blinds.
LookOpenShade:

C2Sc0_6C:
    ; Show message 1.
    db $01, $bb
    ; End script.
    db $ff

; Describe the poster of Ace at the start of his boxing career.
LookAcePoster:

C2Sc0_6D:
    ; Show message 2.
    db $02, $14
    ; End script.
    db $ff

; Describe the first other boxer poster using its regional name.
LookBoxer1:

C2Sc0_6E:
    ; Show message 2.
    db $02, $15
    ; End script.
    db $ff

; Describe the second other boxer poster using its regional name.
LookBoxer2:

C2Sc0_6F:
    ; Show message 2.
    db $02, $16
    ; End script.
    db $ff

; Describe the stylish street lamp.
LookStreetLamp:

C2Sc0_70:
    ; Show message 2.
    db $02, $1a
    ; End script.
    db $ff

; Check broken glass visibility before the window peeping reply.
LookPeepWindow:

C2Sc0_71:
    ; Test object visibility.
    db $28, $45
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Show message 2.
    db $02, $2d
    ; End script.
    db $ff

; Describe the small barred window or regional striped window.
LookBarWindow:

C2Sc0_72:
    ; Show message 2.
    db $02, $2e
    ; End script.
    db $ff

; Show the regional drunk or muttering hobo description.
LookC2Hobo:

C2Sc0_73:
    ; Show message 2.
    db $02, $2f
    ; End script.
    db $ff

; Describe the regional wall light or small light.
LookSugarLamp:

C2Sc0_74:
    ; Show message 2.
    db $02, $3f
    ; End script.
    db $ff

; Describe the worn bed or mattress with a sagging middle.
LookSugarBed:

C2Sc0_75:
    ; Show message 2.
    db $02, $40
    ; End script.
    db $ff

; Describe the dusty table or dressing table.
LookSugarTable:

C2Sc0_76:
    ; Show message 2.
    db $02, $41
    ; End script.
    db $ff

; Read the city morgue sign above the doorway.
ReadMorgueSign:

C2Sc0_77:
jr_007_493d:
    ; Show message 2.
    db $02, $73
    ; End script.
    db $ff

; Read the death notices and instructions for storing belongings.
ReadMorgueBoard:

C2Sc0_78:
    ; Show message 2.
    db $02, $76
    ; End script.
    db $ff

; Show the original questioning response for a scene action.
C2SceneQuestion:

C2Sc0_79:
    ; Show message 0.
    db $00, $2d
    ; End script.
    db $ff

; Show that the boarded window cannot be entered.
WindowBoarded:

C2Sc0_7A:
    ; Show message 3.
    db $2c, $4f
    ; End script.
    db $ff

; Set flag 88 and choose the sink's alternate target.
UseSinkTarget:

C2Sc0_7B:
    ; Set object flag.
    db $09, $88
    ; Choose alternate target; selected input runs the following script.
    db $2d

; Match self or the towel for the sink action.
MatchSinkTarget:

C2Loc0_13:
    ; Match alternate item against type, ID and script target rows.
    db $32, $00

jr_007_494e:
    db $a6
    dw SinkWaterSelf
    db $03, $05
    dw SoakC2Towel
    db $fe, $fe
    dw C2SceneQuestion

; Choose the original self-use reply from water flags 01 and 02.
SinkWaterSelf:

C2Loc0_14:
    ; Test object flag and branch when set.
    db $08, C2ColdTapOn
    dw ColdWaterSelf
    ; Test object flag and branch when set.
    db $08, C2HotTapOn
    dw HotWaterSelf
    ; End script.
    db $ff

; Check the hot-water flag before the cold-water self-use reply.
ColdWaterSelf:

C2Loc0_15:
    ; Test object flag and branch when set.
    db $08, C2HotTapOn
    dw WarmWaterSelf
    ; Show message 0.
    db $00, $1f
    ; End script.
    db $ff

; Show the original scalding hot-water reply.
HotWaterSelf:

C2Loc0_16:
    ; Show message 0.
    db $00, $21
    ; End script.
    db $ff

; Show the original tepid-water reply when both taps are on.
WarmWaterSelf:

C2Loc0_17:
    ; Show message 0.
    db $00

jr_007_496d:
    db $20
    ; End script.
    db $ff

; Show the towel soaking reply and set original flag 04.
SoakC2Towel:

C2Loc0_18:
    ; Show message 0.
    db $00, $22
    ; Set object flag.
    db $09, $04
    ; End script.
    db $ff

; Set flag 88 and choose the dog's alternate target.
UseDogTarget:

C2Sc0_7C:
    ; Set object flag.
    db $09, $88
    ; Choose alternate target; selected input runs the following script.
    db $2d

; Match the self target for the dog action.
MatchDogTarget:

C2Loc0_19:
    ; Match alternate item against type, ID and script target rows.
    db $32, $00, $a6
    dw BiteC2Dog
    db $fe, $fe
    dw C2SceneQuestion

; Show Ace biting the dog before the original fatal dog attack.
BiteC2Dog:

C2Loc0_1A:
    ; Show message 1.
    db $01, $20
    ; Jump to script.
    db $07
    dw DieFromC2Dog

; Show the original nothing-happens scene reply.
C2SceneNoEffect:

C2Sc0_7D:
    ; Show message 0.
    db $00, $2c
    ; End script.
    db $ff

; Show the regional reply for striking the scene object.
C2SceneHitReply:

C2Sc0_7E:
    ; Show message 0.
    db $00, $2e
    ; End script.
    db $ff

; Show the button reply and open the first-floor lift door unless already open.
CallVegasLift1:

C2Sc0_7F:
    ; Set text name 0.
    db $30, $b0
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $80
    ; Test state bit.
    db $0e, $04
    ; Branch if result bit 0 is set.
    db $03
    dw SceneIsOpen
    ; Show message 3.
    db $2c, $22
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $04
    ; End script.
    db $ff

; Prepare floor one and dispatch the original door and travel paths by current room.
TravelLift1:

C2Sc0_80:
    ; Set text name 0.
    db $30, $b0
    ; Set script value 0.
    db $49, $01
    ; Show message 3.
    db $2c, $1f
    ; Show object.
    db $29, $10
    ; Refresh room objects.
    db $2b
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift1
    dw CheckLift1Here
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift2
    dw CheckLift1From2
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift3
    dw CheckLift1From3
    ; Test state bit.
    db $0e, $0e
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift1From4
    ; Show message 3.
    db $2c, $23
    ; Clear state and refresh.
    db $24, $0e
    ; Jump to script.
    db $07
    dw RideLift1From4

; Close the first-floor door when needed before the same-floor reopening reply.
CheckLift1Here:

C2Loc0_71:
    ; Test state bit.
    db $0e, $04
    ; Branch if result bit 0 is clear.
    db $04
    dw Lift1AlreadyHere
    ; Clear state and refresh.
    db $24, $04
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    dw Lift1AlreadyHere

; Close the second-floor door when needed before the first-floor ride.
CheckLift1From2:

C2Loc0_72:
    ; Test state bit.
    db $0e, $09
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift1From2

jr_007_49d2:
    ; Clear state and refresh.
    db $24, $09
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    dw RideLift1From2

; Close the third-floor door when needed before the first-floor ride.
CheckLift1From3:

C2Loc0_73:
    ; Test state bit.
    db $0e, $0c
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift1From3
    ; Clear state and refresh.
    db $24, $0c
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    dw RideLift1From3

; Swap visible floor objects 14 and 13 and return.
LiftFloor4To3:

C2Loc0_74:
    ; Hide object.
    db $2a, $14
    ; Show object.
    db $29, $13
    ; Refresh room objects.
    db $2b

jr_007_49f2:
    ; Return to calling script.
    db $06

; Swap visible floor objects 13 and 12 and return.
LiftFloor3To2:

C2Loc0_75:
    ; Hide object.
    db $2a, $13
    ; Show object.
    db $29, $12
    ; Refresh room objects.
    db $2b
    ; Return to calling script.
    db $06

; Run the fourth-to-first floor display sequence, set room 07, and check the guard.
RideLift1From4:

C2Loc0_76:
    ; Show message 0.
    db $00, $a5
    ; Call script.
    db $05
    dw LiftFloor4To3
    ; Wait while rendering objects.
    db $47, $14
    ; Call script.
    db $05
    dw LiftFloor3To2

jr_007_4a03:
    ; Wait while rendering objects.
    db $47, $14
    ; Hide object.
    db $2a, $12
    ; Show object.
    db $29, $11
    ; Refresh room objects.
    db $2b
    ; Set current room.
    db $50, RoomVegasLift1
    ; Call script.
    db $05
    dw Lift1Arrive
    ; Jump to script.
    db $07
    dw Lift1GuardCheck

; Swap floor objects 12 and 11, set room 07, and check the guard.
RideLift1From2:

C2Loc0_77:
    ; Show message 0.
    db $00

jr_007_4a13:
    db $a5
    ; Hide object.
    db $2a, $12
    ; Show object.
    db $29

jr_007_4a17:
    db $11
    ; Refresh room objects.
    db $2b
    ; Set current room.
    db $50, RoomVegasLift1
    ; Call script.
    db $05
    dw Lift1Arrive
    ; Jump to script.
    db $07
    dw Lift1GuardCheck

; Run the third-to-first floor display sequence, set room 07, and check the guard.
RideLift1From3:

C2Loc0_78:
    ; Show message 0.
    db $00, $a5
    ; Call script.
    db $05
    dw LiftFloor3To2
    ; Wait while rendering objects.
    db $47, $14
    ; Hide object.
    db $2a, $12
    ; Show object.
    db $29, $11
    ; Refresh room objects.
    db $2b
    ; Set current room.
    db $50, RoomVegasLift1
    ; Call script.
    db $05
    dw Lift1Arrive
    ; Jump to script.
    db $07
    dw Lift1GuardCheck

; Clear the guard timer and retain the fatal attack only while object 0F is visible.
Lift1GuardCheck:

C2Loc0_79:
    ; Clear the casino guard timer.
    db $42, C2GuardIx
    ; Test object visibility.
    db $28, $0f
    ; Branch if result bit 0 is clear.
    db $04
    dw EndC2Scene
    ; Run scene effect.
    db $39, FxBouncer
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $f3
    ; Wait sixty ticks.
    db $7e
    ; Repeat audio cue $10.
    db $77
    ; Show message 0.
    db $00, $6d

jr_007_4a48:
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Announce floor one, hide its travel object, clear the closure timer and open its state.
Lift1Arrive:

C2Loc0_7A:
    ; Wait while rendering objects.
    db $47, $18
    ; Set script value 0.
    db $49, $01
    ; Show message 3.
    db $2c, $20
    ; Hide object.
    db $2a, $10
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $04
    ; Return to calling script.
    db $06

; Hide the travel object, reopen the first-floor state and show the same-floor reply.
Lift1AlreadyHere:

C2Loc0_7B:
    ; Hide object.
    db $2a, $10
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $04
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 1.
    db $01, $29

jr_007_4a64:
    ; End script.
    db $ff

; Prepare floor two and dispatch by the current lift room.
TravelLift2:

C2Sc0_81:
    ; Set text name 0.
    db $30, $b0
    ; Set script value 0.
    db $49, $02
    ; Show message 3.
    db $2c, $1f
    ; Show object.
    db $29, $1e
    ; Refresh room objects.
    db $2b
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift1
    dw CheckLift2From1
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift2
    dw CheckLift2Here
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift3
    dw CheckLift2From3
    ; Test state bit.
    db $0e, $0e
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift2From4
    ; Show message 3.
    db $2c, $23
    ; Clear state and refresh.
    db $24, $0e
    ; Jump to script.
    db $07
    dw RideLift2From4

; Close the first-floor door when needed before the second-floor ride.
CheckLift2From1:

C2Loc0_7C:
    ; Test state bit.
    db $0e, $04
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift2From1
    ; Clear state and refresh.
    db $24, $04
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    dw RideLift2From1

; Close the third-floor door when needed before the second-floor ride.
CheckLift2From3:

C2Loc0_7D:
    ; Test state bit.
    db $0e, $0c
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift2From3

jr_007_4a9b:
    ; Clear state and refresh.
    db $24, $0c
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    ; Target RideLift2From3; retain the interior label.
    db LOW(RideLift2From3)

jr_007_4aa5:
    db HIGH(RideLift2From3)

; Run the fourth-to-second floor displays and set room 08.
RideLift2From4:

C2Loc0_7E:
    ; Show message 0.
    db $00, $a5
    ; Call script.
    db $05
    dw LiftFloor4To3

jr_007_4aab:
    ; Wait while rendering objects.
    db $47, $14
    ; Call script.
    db $05
    dw LiftFloor3To2
    ; Set current room.
    db $50, RoomVegasLift2
    ; Jump to script.
    db $07
    dw Lift2Arrive

; Swap floor objects 11 and 12 and set room 08.
RideLift2From1:

C2Loc0_7F:
    ; Show message 0.
    db $00, $a5
    ; Hide object.
    db $2a, $11
    ; Show object.
    db $29, $12
    ; Refresh room objects.
    db $2b

jr_007_4abc:
    ; Set current room.
    db $50, RoomVegasLift2
    ; Jump to script.
    db $07
    dw Lift2Arrive

; Run the third-to-second floor display and set room 08.
RideLift2From3:

C2Loc0_80:
    ; Show message 0.
    db $00, $a5
    ; Call script.
    db $05
    dw LiftFloor3To2
    ; Set current room.
    db $50, RoomVegasLift2
    ; Jump to script.
    db $07
    dw Lift2Arrive

; Close the second-floor door when needed before the same-floor reply.
CheckLift2Here:

C2Loc0_81:
    ; Test state bit.
    db $0e, $09
    ; Branch if result bit 0 is clear.
    db $04
    dw Lift2AlreadyHere
    ; Clear state and refresh.
    db $24, $09
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    dw Lift2AlreadyHere

; Announce floor two, hide object 1E, clear the closure timer and open state 09.
Lift2Arrive:

C2Loc0_82:
    ; Set script value 0.
    db $49, $02
    ; Show message 3.
    db $2c, $20
    ; Hide object.
    db $2a

jr_007_4ae0:
    db $1e
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $09
    ; End script.
    db $ff

; Hide object 1E, reopen state 09 and retain the wait before the same-floor reply.
Lift2AlreadyHere:

C2Loc0_83:
    ; Hide object.
    db $2a, $1e
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $09
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 1.
    db $01, $29

jr_007_4af2:
    ; End script.
    db $ff

; Prepare floor three and dispatch by the current lift room.
TravelLift3:

C2Sc0_82:
    ; Set text name 0.
    db $30, $b0
    ; Set script value 0.
    db $49, $03
    ; Show message 3.
    db $2c, $1f
    ; Show object.
    db $29, $1f
    ; Refresh room objects.
    db $2b
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift1
    dw CheckLift3From1
    ; Test room argument and branch on equality.
    db $25

jr_007_4b01:
    db RoomVegasLift2
    dw CheckLift3From2
    ; Test room argument and branch on equality.
    db $25, RoomVegasLift3
    dw CheckLift3Here
    ; Test state bit.
    db $0e, $0e

jr_007_4b0a:
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift3From4
    ; Show message 3.
    db $2c, $23
    ; Clear state and refresh.
    db $24, $0e
    ; Jump to script.
    db $07
    dw RideLift3From4

; Close the first-floor door when needed before the third-floor ride.
CheckLift3From1:

C2Loc0_84:
    ; Test state bit.
    db $0e, $04
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift3From1
    ; Clear state and refresh.
    db $24, $04
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    dw RideLift3From1

; Close the second-floor door when needed before the third-floor ride.
CheckLift3From2:

C2Loc0_85:
    ; Test state bit.
    db $0e, $09
    ; Branch if result bit 0 is clear.
    db $04
    dw RideLift3From2

jr_007_4b29:
    ; Clear state and refresh.
    db $24, $09
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47, $18
    ; Jump to script.
    db $07
    dw RideLift3From2

; Run the fourth-to-third floor display and set room 09.
RideLift3From4:

C2Loc0_86:
    ; Show message 0.
    db $00, $a5
    ; Call script.
    db $05
    dw LiftFloor4To3

jr_007_4b39:
    ; Set current room.
    db $50, RoomVegasLift3
    ; Jump to script.
    db $07
    dw Lift3Arrive

; Swap floor objects 11, 12 and 13 in order and set room 09.
RideLift3From1:

C2Loc0_87:
    ; Show message 0.
    db $00, $a5
    ; Hide object.
    db $2a, $11
    ; Show object.
    db $29, $12
    ; Refresh room objects.
    db $2b
    ; Wait while rendering objects.
    db $47, $14
    ; Hide object.
    db $2a, $12
    ; Show object.
    db $29

jr_007_4b4a:
    db $13
    ; Refresh room objects.
    db $2b
    ; Set current room.
    db $50, RoomVegasLift3
    ; Jump to script.
    db $07
    dw Lift3Arrive

; Swap floor objects 12 and 13 and set room 09.
RideLift3From2:

C2Loc0_88:
    ; Show message 0.
    db $00, $a5
    ; Hide object.
    db $2a, $12
    ; Show object.
    db $29, $13
    ; Refresh room objects.
    db $2b
    ; Set current room.
    db $50, RoomVegasLift3

jr_007_4b5a:
    ; Jump to script.
    db $07
    dw Lift3Arrive

; Close the third-floor door when needed before the same-floor reply.
CheckLift3Here:

C2Loc0_89:
    ; Test state bit.
    db $0e, $0c
    ; Branch if result bit 0 is clear.
    db $04
    dw Lift3AlreadyHere
    ; Clear state and refresh.
    db $24, $0c
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 3.
    db $2c, $23
    ; Wait while rendering objects.
    db $47

jr_007_4b69:
    db $18
    ; Jump to script.
    db $07
    dw Lift3AlreadyHere

; Announce floor three, hide object 1F, clear the closure timer and open state 0C.
Lift3Arrive:

C2Loc0_8A:
    ; Set script value 0.
    db $49, $03
    ; Show message 3.
    db $2c, $20
    ; Hide object.
    db $2a

jr_007_4b72:
    db $1f
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $0c
    ; End script.
    db $ff

; Hide object 1F, reopen state 0C and retain the wait before the same-floor reply.
Lift3AlreadyHere:

C2Loc0_8B:
    ; Hide object.
    db $2a, $1f
    ; Refresh room objects.
    db $2b
    ; Clear the room-state closure timer.
    db $42, C2DoorIx
    ; Set state and refresh without cue.
    db $22, $0c
    ; Wait while rendering objects.
    db $47, $18
    ; Show message 1.
    db $01, $29

jr_007_4b84:
    ; End script.
    db $ff

; Strike the clean bottle and reveal the original rack passage once.
HitWineBottle:

C2Sc0_83:
    ; Test object flag and branch when set.
    db $08, C2ShelvesOpen
    ; Target C2SceneNoEffect; retain the interior label.
    db LOW(C2SceneNoEffect)

jr_007_4b88:
    db HIGH(C2SceneNoEffect)
    ; Play audio.
    db $3e, $16
    ; Show message 1.
    db $01, $ff
    ; Set object flag.
    db $09

jr_007_4b8e:
    db C2ShelvesOpen
    ; Set object flag.
    db $09, C2WinePassage
    ; Draw Case II panel and marks.
    db $3c
    ; Set state and refresh without cue.
    db $22

jr_007_4b93:
    db $61
    ; Hide object.
    db $2a, $91
    ; Hide object.
    db $2a, $92
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Show the regional board-punching and nail reply without adding a damage state.
PunchLooseBoard:

C2Sc0_84:
    ; Show message 1.
    db $01, $b4
    ; End script.
    db $ff

; Check object 3D, knock the loose board down, and update the opening.
KnockLooseBoard:

C2Sc0_85:
    ; Test object visibility.
    db $28, $3d
    ; Branch if result bit 0 is set.
    db $03
    dw C2SceneNoEffect
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $16
    ; Show message 1.
    db $01, $b3
    ; Set state and refresh without cue.
    db $22, $58
    ; Show object.
    db $29, $3d
    ; Hide object.
    db $2a, $3c
    ; Refresh room objects.
    db $2b
    ; Show message 1.
    db $01, $af
    ; End script.
    db $ff

; Name the cashier and run the original casino attack cue.
PunchC2Cashier:

C2Sc0_86:
    ; Set text name 0.
    db $30, $b6
    ; Call script.
    db $05
    dw CasinoAttackCue
    ; Branch if result bit 0 is set.
    db $03
    dw EvictCashierFist
    ; Set state and refresh without cue.
    db $22, $06

; Prepare the move from room 04 to 11 and show the bouncer ejection reply.
EvictCashierFist:

C2Loc0_1B:
    ; Prepare room move and read two room arguments.
    db $3b, RoomVegasCashier, RoomHotelFront
    ; Show message 0.
    db $00, $83
    ; Play audio.
    db $3e, $12
    ; Clear state and refresh.
    db $24, $06
    ; End script.
    db $ff

; Choose the dealer name before the original punch response.
PunchC2Dealer:

C2Sc0_87:
    ; Test object flag and branch when set.
    db $08, C2RudyKnows
    dw PunchKnownRudy
    ; Set text name 0.
    db $30, $bd
    ; Jump to script.
    db $07
    dw DealerPunchCue

; Name Rudy before the shared dealer punch cue.
PunchKnownRudy:

C2Loc0_1C:
    ; Set text name 0.
    db $30, $be

; Run the casino attack cue and set state 06 if it was clear.
DealerPunchCue:

C2Loc0_1D:
    ; Call script.
    db $05
    dw CasinoAttackCue
    ; Branch if result bit 0 is set.
    db $03
    dw EvictDealerFist
    ; Set state and refresh without cue.
    db $22, $06

; Prepare the move from room 05 to 11 and show the bouncer ejection reply.
EvictDealerFist:

C2Loc0_1E:
    ; Prepare room move and read two room arguments.
    db $3b, RoomVegasBlackjack, RoomHotelFront
    ; Show message 0.
    db $00, $83
    ; Play audio.
    db $3e, $12
    ; Clear state and refresh.
    db $24, $06
    ; End script.
    db $ff

; Show the left hook and assault arrest before the shared jail ending.
PunchC2Person:

C2Sc0_88:
    ; Play audio.
    db $3e, $17
    ; Show message 0.
    db $00, $fb
    ; Run scene effect.
    db $39, FxPoliceman
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $fc
    ; Wait sixty ticks.
    db $7e

; Show the time spent in jail, Stogie posting bail, and the original ending.
C2JailEnding:

C2Loc0_1F:
    ; Resume text.
    db $2f
    ; Run scene effect.
    db $39, FxHandcuffs
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $fd
    ; Wait sixty ticks.
    db $7e
    ; Run scene effect.
    db $39

jr_007_4bf8:
    db FxStogie
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $fe
    ; Play audio.
    db $3e, $10
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Throw the original punch and retain the train-clearance-dependent conductor effect.
PunchC2Conductor:

C2Sc0_89:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $4d
    ; Branch when the current train clearance flag is clear.
    db $5f
    dw ConductorThrowReply
    ; Run the current passenger-room effect.
    db $63

; Show the punch and platform throw replies before the shared ejection sequence.
ConductorThrowReply:

C2Loc0_20:
    ; Show message 2.
    db $02, $50
    ; Show message 2.
    db $02, $51
    ; Resume text.
    db $2f

; Clear both train-drop groups, leave the train and show the platform reply.
; Each bank-eight helper returns before the next call; these calls are sequential.
EjectTrainFight:

C2Loc0_90:
    ; Call script in bank $08.
    db $7c
    dw ClearTrainDropA
    db $08
    ; Call script in bank $08.
    db $7c
    dw ClearTrainDropB

jr_007_4c15:
    db $08
    ; Leave the current train for its platform.
    db $60
    ; Show message 2.
    db $02, $52
    ; End script.
    db $ff

; Show the dog leaping to defend its master before the fatal dog attack.
DogDefendsNews:

C2Sc0_8A:
    ; Play audio.
    db $3e, $17
    ; Show message 1.
    db $01, $1d

; Play the original fatal dog attack sequence.
DieFromC2Dog:

C2Sc0_8B:
    ; Run scene effect.
    db $39, FxDog
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 1.
    db $01, $1e
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Refuse to upset Gabby and risk losing access to his cab.
GabbyPunchReply:

C2Sc0_8C:
    ; Show message 1.
    db $01, $3b
    ; End script.
    db $ff

; Show the original regional response to punching the hobo.
PunchC2Hobo:

C2Sc0_8D:
    ; Show message 2.
    db $02, $38
    ; End script.
    db $ff

; Show broken mirror object 03 and use the original break reply.
BreakBathMirror:

C2Sc0_8E:
Case2BathroomMirrorBreak:
    ; Test object visibility.
    db $28, $03
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Play audio.
    db $3e, $13
    ; Show object.
    db $29, $03

; Refresh objects, name the mirror, and show it breaking.
MirrorBreakReply:

C2Loc0_21:
    ; Refresh room objects.
    db $2b
    ; Set text name 0.
    db $30, $ae
    ; Show message 3.
    db $2c, $00
    ; End script.
    db $ff

; Break the window and retain the original glass and curtain object updates.
BreakGrimyGlass:

C2Sc0_8F:
    ; Test object flag and branch when set.
    db $08, C2WindowBroken
    dw GlassIsBroken
    ; Play audio.
    db $3e, $13
    ; Hide object.
    db $2a, $89
    ; Show object.
    db $29, $07
    ; Refresh room objects.
    db $2b
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $00
    ; Set object flag.
    db $09, C2WindowBroken
    ; End script.
    db $ff

; Show broken mirror object 05 and use the shared mirror break reply.
BreakRoomMirror:

C2Sc0_90:
    ; Test object visibility.
    db $28, $05
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Play audio.
    db $3e, $13

jr_007_4c57:
    ; Show object.
    db $29, $05
    ; Jump to script.
    db $07
    dw MirrorBreakReply

; Show broken glass object 22 and use the shared glass feedback.
BreakArchWin1:

C2Sc0_91:
    ; Test object visibility.
    db $28, $22
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Play audio.
    db $3e, $13
    ; Show object.
    db $29, $22
    ; Refresh room objects.
    db $2b

; Show the broken glass reply and test the original random arrest condition.
GlassBreakReply:

C2Loc0_22:
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $00
    ; Test the low two random bits.
    db $43
    ; Branch if result bit 0 is set.
    db $03
    dw GlassBreakArrest
    ; End script.
    db $ff

; Show broken glass object 23 and use the shared glass feedback.
BreakArchWin2:

C2Sc0_92:
    ; Test object visibility.
    db $28, $23
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Play audio.
    db $3e, $13
    ; Show object.
    db $29, $23
    ; Refresh room objects.
    db $2b
    ; Jump to script.
    db $07
    dw GlassBreakReply

; Break the first Chicago arched window unless its glass state is already set.
BreakChiWindow1:

C2Sc0_93:
    ; Test state bit.
    db $0e, C2ChiGlass1
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Play audio.
    db $3e, $13

jr_007_4c83:
    ; Set state and refresh without cue.
    db $22, C2ChiGlass1
    ; Jump to script.
    db $07
    dw GlassBreakReply

; Play the arrest sequence for disturbing the peace.
GlassBreakArrest:

C2Loc0_8C:
    ; Run scene effect.
    db $39, FxPoliceman
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 2.
    db $02, $2a

jr_007_4c90:
    ; Wait sixty ticks.
    db $7e
    ; Jump to script.
    db $07
    dw C2JailEnding

; Break the second Chicago arched window unless its glass state is already set.
BreakChiWindow2:

C2Sc0_94:
jr_007_4c94:
    ; Test state bit.
    db $0e, C2ChiGlass2
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, C2ChiGlass2
    ; Jump to script.
    db $07
    dw GlassBreakReply

; Show the original nothing-happens reply for the first window record.
JoeWindowNoHit:

C2Sc0_95:
    ; Show message 0.
    db $00, $2c
    ; End script.
    db $ff

; Set glass state A5 and show the glass shattering.
BreakJoeWindow:

C2Sc0_96:
    ; Test state bit.
    db $0e, $a5
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $a5
    ; Show message 0.
    db $00, $62
    ; End script.
    db $ff

; Show broken glass object 45 and enter the shared glass breaking reply.
BreakPeepWindow:

C2Sc0_97:
    ; Test object visibility.
    db $28, $45
    ; Branch if result bit 0 is set.
    db $03
    dw GlassIsBroken
    ; Play audio.
    db $3e, $13
    ; Show object.
    db $29, $45
    ; Refresh room objects.
    db $2b
    ; Jump to script.
    db $07
    dw GlassBreakReply

; Show the regional cashier conversation reply.
TalkC2Cashier:

C2Sc0_98:
    ; Show message 0.
    db $00, $84
    ; End script.
    db $ff

; Choose the dealer name and check blackjack funds.
AskC2Dealer:

C2Sc0_99:
    ; Hold text.
    db $2e
    ; Test object flag and branch when set.
    db $08, C2RudyKnows
    dw AskKnownRudy
    ; Set text name 0.
    db $30, $bd
    ; Branch when chips are zero and Case II cash is below five dollars.
    db $79
    dw DealerNoFunds

; Run the existing Case II choice prompt.
DealerChoice:

C2Loc0_8D:
    ; Run Case II choice prompt.
    db $7b
    ; End script.
    db $ff

; Show the unfamiliar dealer refusing free blackjack.
DealerNoFunds:

C2Loc0_8E:
    ; Show message 3.
    db $2c, $3c
    ; Show message 3.
    db $2c, $3d
    ; End script.
    db $ff

; Name Rudy and check the original blackjack funds condition.
AskKnownRudy:

C2Loc0_23:
    ; Set text name 0.
    db $30, $be
    ; Branch when chips are zero and Case II cash is below five dollars.
    db $79
    dw RudyNoFunds
    ; Jump to script.
    db $07
    dw DealerChoice

; Show Rudy refusing free blackjack and suggesting the desert.
RudyNoFunds:

C2Loc0_8F:
    ; Show message 3.
    db $2c, $3c
    ; Show message 3.
    db $2c, $3e
    ; End script.
    db $ff

; Open the shop after a completed train ride, otherwise show the seller introduction.
TalkC2Seller:

C2Sc0_9A:
    ; Test object flag and branch when set.
    db $08, C2TrainTaken
    dw OpenSellerShop
    ; Show message 0.
    db $00, $ff
    ; Set object flag.
    db $09, C2SellerMet
    ; End script.
    db $ff

; Run the original Case II shop command.
OpenSellerShop:

C2Loc0_24:
    ; Run Case II shop.
    db $6d
    ; End script.
    db $ff

; Show that the sleeping luggage attendant does not answer.
TalkAttendant:

C2Sc0_9B:
    ; Show message 1.
    db $01, $09
    ; End script.
    db $ff

; Select current train information and show the destination and fare reply.
TalkC2Conductor:

C2Sc0_9C:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $77
    ; Select the current train fare.
    db $5e
    ; Show message 3.
    db $2c, $0b
    ; End script.
    db $ff

; Greet the talkative woman and show that she keeps talking to the man.
TalkChattyWoman:

C2Sc0_9D:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $53
    ; Show message 2.
    db $02

jr_007_4cf6:
    db $59
    ; End script.
    db $ff

; Greet the male passenger and record the original dozing description flag.
TalkSeatMan:

C2Sc0_9E:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $53
    ; Show message 2.
    db $02, $5f
    ; Set object flag.
    db $09, C2SeatManAsleep
    ; End script.
    db $ff

; Choose the young woman's original first, second, or annoyed conversation path.
TalkYoungWoman:

C2Sc0_9F:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $53
    ; Test object flag and branch when set.
    db $08, C2WomanFedUp
    dw WomanSlapsAce
    ; Show message 2.
    db $02, $66
    ; Test object flag and branch when set.
    db $08, C2WomanTalked
    dw MarkWomanFedUp
    ; Show message 2.
    db $02, $6b
    ; Set object flag.
    db $09, C2WomanTalked
    ; End script.
    db $ff

; Show the original slap scene and restore the saved effect.
WomanSlapsAce:

C2Loc0_25:
    ; Run scene effect.
    db $39, FxVegasNews2
    ; Show message 0.
    db $00, $ee
    ; Resume text.
    db $2f
    ; Restore saved Case II effect.
    db $3a
    ; End script.
    db $ff

; Mark the young woman annoyed after a repeated conversation.
MarkWomanFedUp:

C2Loc0_26:
    ; Set object flag.
    db $09, C2WomanFedUp

jr_007_4d1b:
    ; End script.
    db $ff

; Offer a newspaper before the first pickup; otherwise thank the buyer.
TalkNewsSeller:

C2Sc0_A0:
    ; Test object flag and branch when set.
    db $08, C2NewsTaken
    dw NewsSellerThanks
    ; Test object flag and branch when set.
    db $08, C2NewsBoth
    dw NewsSellerThanks
    ; Show message 1.
    db $01, $1b
    ; End script.
    db $ff

; Show the seller's thank-you reply.
NewsSellerThanks:

C2Loc0_27:
    ; Show message 1.
    db $01, $1c
    ; End script.
    db $ff

; Ask for the dog's paw first, then use the original lie-down command reply.
TalkC2Dog:

C2Sc0_A1:
    ; Test object flag and branch when set.
    db $08, C2DogPawAsked
    ; Target DogLieDown; retain the interior label.
    db LOW(DogLieDown)

jr_007_4d2d:
    db HIGH(DogLieDown)
    ; Show message 1.
    db $01, $19
    ; Set object flag.
    db $09, C2DogPawAsked
    ; End script.
    db $ff

; Ask the dog to lie down and preserve its original paw response.
DogLieDown:

C2Loc0_28:
    ; Show message 1.
    db $01, $1a
    ; End script.
    db $ff

; Ask Gabby for a destination and open the original room selection list.
TalkGabby:

C2Sc0_A2:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $45
    ; Pick destination room from the item list.
    db $74
    ; End script.
    db $ff

; Choose the first or repeated hobo dialogue.
TalkC2Hobo:

C2Sc0_A3:
    ; Test object flag and branch when set.
    db $08, C2HoboTalked
    dw HoboTalkAgain
    ; Show message 2.
    db $02

jr_007_4d40:
    db $35
    ; Set object flag.
    db $09, C2HoboTalked
    ; End script.
    db $ff

; Show the repeated hobo dialogue.
HoboTalkAgain:

C2Loc0_29:
    ; Show message 2.
    db $02, $36
    ; End script.
    db $ff

; Open the cold tap and show the shared water object.
OpenColdTap:

C2Sc0_A4:
Case2BathroomColdTapOpen:
    ; Set text name 0.
    db $30, $d2
    ; Test object flag and branch when set.
    db $08, C2ColdTapOn
    dw SceneIsOpen
    ; Show message 3.
    db $2c, $02
    ; Show object.
    db $29, $04
    ; Refresh room objects.
    db $2b
    ; Set object flag.
    db $09, C2ColdTapOn
    ; End script.
    db $ff

; Show that the prepared scene object name is already open.
SceneIsOpen:

C2Loc0_2A:
    ; Show message 3.
    db $2c, $19
    ; End script.
    db $ff

; Open the hot tap and show the shared water object.
OpenHotTap:

C2Sc0_A5:
    ; Set text name 0.
    db $30, $d3
    ; Test object flag and branch when set.
    db $08, C2HotTapOn
    dw SceneIsOpen
    ; Show message 3.
    db $2c, $02
    ; Show object.
    db $29, $04
    ; Refresh room objects.
    db $2b
    ; Set object flag.
    db $09

jr_007_4d64:
    db C2HotTapOn
    ; End script.
    db $ff

; Open the curtain and choose the object path from the broken-window flag.
OpenRoomCurtain:

C2Sc0_A6:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $80
    ; Branch if result bit 0 is set.
    db $03
    dw SceneIsOpen
    ; Test object flag and branch when set.
    db $08, C2WindowBroken
    dw OpenCurtainGap
    ; Show message 3.
    db $2c

jr_007_4d72:
    db $02
    ; Clear state and refresh.
    db $24, $77
    ; Show object.
    db $29, $80
    ; Hide object.
    db $2a, $81
    ; Show object.
    db $29, $89
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Open the curtain while keeping the broken-window object arrangement.
OpenCurtainGap:

C2Loc0_2B:
    ; Show message 3.
    db $2c, $02
    ; Clear state and refresh.
    db $24, $77

jr_007_4d81:
    ; Show object.
    db $29, $80
    ; Hide object.
    db $2a, $81

jr_007_4d85:
    ; Show object.
    db $29, $07
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Explain that the damaged train blinds cannot be opened.
TrainShadeNoOpen:

C2Sc0_A7:
    ; Show message 2.
    db $02, $83
    ; End script.
    db $ff

; Use the already-open reply or explain that the newspaper stand shutter is locked.
TryNewsShutter:

C2Sc0_A8:
jr_007_4d8c:
    ; Set text name 0.
    db $30, $d6
    ; Test state bit.
    db $0e, $a0
    ; Branch if result bit 0 is set.
    db $03
    dw SceneIsOpen
    ; Show message 1.
    db $01, $16
    ; End script.
    db $ff

; Show the original cannot-open and locked replies.
C2LockedReply:

C2Sc0_A9:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $d3
    ; Show message 0.
    db $00, $d6
    ; End script.
    db $ff

; Set the curtain state, swap objects 8D and 8C, and show object 8E.
OpenHomeCurtain:

C2Sc0_AA:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $8c
    ; Branch if result bit 0 is set.
    db $03
    dw SceneIsOpen
    ; Set state and refresh without cue.
    db $22, C2HomeCurtain
    ; Hide object.
    db $2a, $8d

jr_007_4da7:
    ; Show object.
    db $29, $8c
    ; Show object.
    db $29, $8e
    ; Refresh room objects.
    db $2b
    ; Show message 1.
    db $01, $82
    ; End script.
    db $ff

; Clear the curtain state and restore the original closed-curtain objects.
CloseHomeCurtain:

C2Sc0_AB:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $8d
    ; Branch if result bit 0 is set.
    db $03
    dw SceneIsClosed
    ; Show message 3.
    db $2c, $03
    ; Clear state and refresh.
    db $24, C2HomeCurtain
    ; Hide object.
    db $2a, $8c
    ; Hide object.
    db $2a, $8e
    ; Show object.
    db $29, $8d
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Turn the tap and choose the original first or repeated no-flow reply.
OpenWineTap:

C2Sc0_AC:
    ; Test object flag and branch when set.
    db $08, C2TapOpen
    ; Target WineTapNoFlow; retain the interior label.
    db LOW(WineTapNoFlow)

jr_007_4dc5:
    db HIGH(WineTapNoFlow)
    ; Show message 1.
    db $01, $fd
    ; Set object flag.
    db $09, C2TapOpen
    ; End script.
    db $ff

; Show the repeated tap reply with no wine coming out.
WineTapNoFlow:

C2Loc0_2C:
    ; Show message 1.
    db $01, $fe
    ; End script.
    db $ff

; Set the shade name and use the shared already-open reply.
ShadeIsOpen:

C2Sc0_AD:
    ; Set text name 0.
    db $30, $bc
    ; Jump to script.
    db $07
    ; Target SceneIsOpen; retain the interior label.
    db LOW(SceneIsOpen)

jr_007_4dd2:
    db HIGH(SceneIsOpen)

; Close the cold tap and hide water only if the hot tap is off.
CloseColdTap:

C2Sc0_AE:
    ; Set text name 0.
    db $30, $d2
    ; Test object flag and branch when clear.
    db $54, C2ColdTapOn
    dw SceneIsClosed
    ; Test object flag and branch when set.
    db $08, C2HotTapOn
    dw ColdOffHotOn
    ; Show message 3.
    db $2c, $03
    ; Hide object.
    db $2a

jr_007_4de0:
    db $04
    ; Refresh room objects.
    db $2b
    ; Clear object flag.
    db $0a, C2ColdTapOn
    ; End script.
    db $ff

; Close the cold tap while retaining the water object for the hot tap.
ColdOffHotOn:

C2Loc0_2D:
    ; Show message 3.
    db $2c, $03
    ; Clear object flag.
    db $0a, C2ColdTapOn
    ; End script.
    db $ff

; Close the hot tap and hide water only if the cold tap is off.
CloseHotTap:

C2Sc0_AF:
    ; Set text name 0.
    db $30, $d3
    ; Test object flag and branch when clear.
    db $54, C2HotTapOn
    dw SceneIsClosed
    ; Show message 3.
    db $2c, $03
    ; Clear object flag.
    db $0a, C2HotTapOn
    ; Test object flag and branch when set.
    db $08, C2ColdTapOn
    dw EndC2Scene
    ; Hide object.
    db $2a, $04
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Close the curtain and choose the object path from the broken-window flag.
CloseRoomCurtain:

C2Sc0_B0:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $81
    ; Branch if result bit 0 is set.
    db $03
    dw SceneIsClosed
    ; Test object flag and branch when set.
    db $08, C2WindowBroken
    dw CloseCurtainGap
    ; Call script.
    db $05
    dw CloseCurtainNow
    ; Hide object.
    db $2a, $89
    ; Refresh room objects.
    db $2b

jr_007_4e0d:
    ; End script.
    db $ff

; Update the closed-curtain state and original room objects, then return.
CloseCurtainNow:

C2Loc0_2E:
    ; Show message 3.
    db $2c, $03
    ; Set state and refresh without cue.
    db $22, $77
    ; Show object.
    db $29, $81
    ; Hide object.
    db $2a, $80
    ; Refresh room objects.
    db $2b
    ; Return to calling script.
    db $06

; Close the curtain and retain the original extra broken-window cleanup.
CloseCurtainGap:

C2Loc0_2F:
    ; Call script.
    db $05
    dw CloseCurtainNow
    ; Hide object.
    db $2a, $07
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Show that the prepared scene object name is already closed.
SceneIsClosed:

C2Loc0_30:
    ; Show message 3.
    db $2c, $1a
    ; End script.
    db $ff

; Name the shade and use the shared already-closed reply.
ShadeClosedReply:

C2Sc0_B1:
    ; Set text name 0.
    db $30, $bc
    ; Jump to script.
    db $07
    dw SceneIsClosed

; Use the already-closed reply or the original questioning response.
NewsShutterClose:

C2Sc0_B2:
    ; Set text name 0.
    db $30, $d6
    ; Test state bit.
    db $0e, $a0
    ; Branch if result bit 0 is clear.
    db $04
    dw SceneIsClosed
    ; Jump to script.
    db $07
    dw C2SceneQuestion

; Name the mailbox and use the shared already-closed reply.
MailClosedReply:

C2Sc0_B3:
    ; Set text name 0.
    db $30, $92
    ; Jump to script.
    db $07
    dw SceneIsClosed

; Name the tap and clear its open flag through the original close reply.
CloseWineTap:

C2Sc0_B4:
    ; Set text name 0.
    db $30, $d5
    ; Test object flag and branch when clear.
    db $54, C2TapOpen
    dw SceneIsClosed
    ; Show message 3.
    db $2c, $03
    ; Clear object flag.
    db $0a, C2TapOpen
    ; End script.
    db $ff

; Name the shade and show the original no-effect and broken replies.
ShadeBrokenReply:

C2Sc0_B5:
    ; Set text name 0.
    db $30, $bc
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $2c
    ; Show message 3.
    db $2c, $1b
    ; End script.
    db $ff

; Show that an object not carried cannot be discarded.
SceneDropReply:

C2Sc0_B6:
    ; Show message 0.
    db $00, $e5
    ; End script.
    db $ff

; Show the original dog petting attempt and regional bite response.
PetC2Dog:

C2Sc0_B7:
    ; Show message 1.
    db $01, $17
    ; End script.
    db $ff

; Show the original instruction to pull a board off.
NeedPullBoard:

C2Sc0_B8:
    ; Show message 1.
    db $01, $b2
    ; End script.
    db $ff

; End the scene action without an additional reply.
EndC2Scene:

C2Sc0_B9:
    ; End script.
    db $ff

; Describe the smudged morgue counter.
LookMorgueDesk:

C2Sc0_BA:
    ; Show message 2.
    db $02, $78
    ; End script.
    db $ff

; Describe the gate leading behind the morgue reception.
LookMorgueGate:

C2Sc0_BB:
    ; Show message 2.
    db $02, $79
    ; End script.
    db $ff

; Read the authorized personnel only sign.
ReadStaffSign:

C2Sc0_BC:
    ; Show message 2.
    db $02, $7a
    ; End script.
    db $ff

; Describe the clerk and the original regional title of his Poe story.
LookMorgueClerk:

C2Sc0_BD:
    ; Show message 2.
    db $02, $7b
    ; End script.
    db $ff

; Read the plate numbered one.
ReadPlate1:

C2Sc0_BE:
    ; Set script value 0.
    db $49, $01
    ; Show message 3.
    db $2c, $18
    ; End script.
    db $ff

; Read the plate numbered two.
ReadPlate2:

C2Sc0_BF:
    ; Set script value 0.
    db $49, $02
    ; Show message 3.
    db $2c, $18
    ; End script.
    db $ff

; Describe the well-preserved body.
LookMorgueBody:

C2Sc0_C0:
    ; Show message 2.
    db $02, $9b
    ; End script.
    db $ff

; Describe the left-eye scar and retain the original prior-sighting check.
LookScarBody:

C2Sc0_C1:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $9c
    ; Test object flag and branch when clear.
    db $54, C2McMSeen
    dw EndC2Scene
    ; Play audio.
    db $3e, $08
    ; Show message 2.
    db $02, $9d
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Describe the drawer used to store bodies.
LookColdDrawer:

C2Sc0_C2:
    ; Show message 2.
    db $02, $9e
    ; End script.
    db $ff

; Show the regional reaction to the bodies or morgue drawers.
LookMorgueRows:

C2Sc0_C3:
    ; Show message 2.
    db $02, $a0
    ; End script.
    db $ff

; Read the instruction to close drawers after examinations.
ReadDrawerSign:

C2Sc0_C4:
    ; Show message 2.
    db $02, $a2
    ; End script.
    db $ff

; Describe being inside the large laundry hamper.
LookHamper:

C2Sc0_C5:
    ; Show message 2.
    db $02, $a7
    ; End script.
    db $ff

; Describe the dusty cobweb at this separate action entry.
LookDustWeb2:

C2Sc0_C6:
    ; Show message 1.
    db $01, $e3
    ; End script.
    db $ff

; Show the regional web description and the trapped fly remark.
LookStickyWeb:

C2Sc0_C7:
    ; Show message 1.
    db $01, $ef
    ; End script.
    db $ff

; Show the urgency of getting loose before the captors return.
LookC2Rope:

C2Sc0_C8:
    ; Show message 2.
    db $02, $b1
    ; End script.
    db $ff

; Describe the hands bound tightly by the two captors.
LookTiedHands:

C2Sc0_C9:
    ; Show message 2.
    db $02, $b2
    ; End script.
    db $ff

; Describe the crate before freeing the hands, or show its successful rope-cutting reminder afterward.
LookNailCrate:

C2Sc0_CA:
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw CrateAfterFree
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $b3
    ; Test object flag and branch when set.
    db $08, C2CrateSeen
    dw HintSharpNails
    ; Set object flag.
    db $09, C2CrateSeen
    ; End script.
    db $ff

; Show that the crate enabled the player to get untied.
CrateAfterFree:

C2Loc0_31:
    ; Show message 2.
    db $02, $b5
    ; End script.
    db $ff

; After the crate was already examined, show the sharp-nails hint.
HintSharpNails:

C2Loc0_32:
    ; Show message 2.
    db $02, $b4
    ; End script.
    db $ff

; Describe the empty street seen through the Reliant hallway window.
LookCleanHallWin:

C2Sc0_CB:
    ; Show message 2.
    db $02, $ce
    ; End script.
    db $ff

; Read the laundry service price list.
ReadCleanPrices:

C2Sc0_CC:
    ; Show message 2.
    db $02, $cf
    ; End script.
    db $ff

; Describe the laundry counter without a clerk.
LookLaundryDesk:

C2Sc0_CD:
    ; Show message 2.
    db $02, $d0
    ; End script.
    db $ff

; Describe the dartboard and omit its extra hint after the bird is used.
LookDartBoard:

C2Sc0_CE:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $d8
    ; Test object flag and branch when set.
    db $08, C2DartUsed
    dw EndC2Scene
    ; Show message 2.
    db $02, $d9
    ; End script.
    db $ff

; Describe the office drapes using the regional text.
LookOfficeDrape:

C2Sc0_CF:
    ; Show message 2.
    db $02, $da
    ; End script.
    db $ff

; Describe the warm sunlight coming through the window.
LookSunWindow:

C2Sc0_D0:
    ; Show message 2.
    db $02, $db
    ; End script.
    db $ff

; Describe the leather office chair.
LookLeatherChair:

C2Sc0_D1:
    ; Show message 2.
    db $02, $dc
    ; End script.
    db $ff

; Read the Reliant Cleaners sign.
ReadCleanSign:

C2Sc0_D2:
    ; Show message 0.
    db $00, $eb
    ; End script.
    db $ff

; Read the Reliant Cleaners name painted on the window.
LookCleanWindow:

C2Sc0_D3:
    ; Show message 0.
    db $00, $ec
    ; End script.
    db $ff

; Describe the withering tree or regional potted tree.
LookDryTree:

C2Sc0_D4:
    ; Show message 0.
    db $00, $67
    ; End script.
    db $ff

; Describe the clean polished window.
LookCleanGlass:

C2Sc0_D5:
    ; Show message 0.
    db $00, $68
    ; End script.
    db $ff

; Describe the regional leather swivel chair.
LookSwivelChair:

C2Sc0_D6:
    ; Show message 0.
    db $00, $a8
    ; End script.
    db $ff

; Show the regional view over the city or street.
LookCityWindow:

C2Sc0_D7:
    ; Show message 0.
    db $00, $a9
    ; End script.
    db $ff

; Show the regional view over Las Vegas.
LookVegasWindow:

C2Sc0_D8:
    ; Show message 0.
    db $00, $aa
    ; End script.
    db $ff

; Describe the regional thin or spotless blinds.
LookThinBlinds:

C2Sc0_D9:
    ; Show message 0.
    db $00, $ab
    ; End script.
    db $ff

; Describe the white blinds or cloth shade.
LookWhiteBlinds:

C2Sc0_DA:
    ; Show message 0.
    db $00, $ac
    ; End script.
    db $ff

; Describe the leather chair and retain the alternate response after the recovered-belongings plan.
LookOfficeChair:

C2Sc0_DB:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $c5
    ; Test object flag and branch when set.
    db $08, C2LootPlan
    dw EndC2Scene
    ; Show message 0.
    db $00, $c6
    ; End script.
    db $ff

; Describe Malone and Ventini holding their fish.
LookFishPhoto:

C2Sc0_DC:
    ; Show message 0.
    db $00, $c7
    ; End script.
    db $ff

; Show the Malone and Ventini banquet photo, then choose the response from the letter clue.
LookMobPhoto:

C2Sc0_DD:
    ; Hold text.
    db $2e
    ; Run scene effect.
    db $39, $00
    ; Play audio.
    db $3e, $0a
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $c1
    ; Test object flag and branch when set.
    db $08, C2BondHint
    dw HintPhotoPlot
    ; Show message 0.
    db $00, $c2
    ; Resume text.
    db $2f
    ; Wait sixty ticks.
    db $7e
    ; Restore saved Case II effect.
    db $3a
    ; End script.
    db $ff

; Restore the photo effect and question Ventini's secret Chicago dealings.
HintPhotoPlot:

C2Loc0_33:
    ; Resume text.
    db $2f
    ; Wait sixty ticks.
    db $7e
    ; Restore saved Case II effect.
    db $3a
    ; Play audio.
    db $3e, $08
    ; Show message 0.
    db $00, $c3
    ; Play room audio cue.
    db $5a
    ; End script.
    db $ff

; Describe the fine silk curtain using the original regional wording.
LookSilkCurtain:

C2Sc0_DE:
jr_007_4f05:
    ; Show message 0.
    db $00, $c8
    ; End script.
    db $ff

; Describe the other leather swivel chair at its separate entry.
LookSwivelChair2:

C2Sc0_DF:
    ; Show message 2.
    db $02, $fa
    ; End script.
    db $ff

; Describe the original outfit in uniform, trench coat, coat, and pants order.
LookC2Self:

C2Sc0_E0:
    ; Hold text.
    db $2e
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw ViewUniform
    ; Test object flag and branch when set.
    db $08, C2TrenchWorn
    dw ViewTrench
    ; Test object flag and branch when set.
    db $08, C2CoatWorn
    dw ViewCoat
    ; Test object flag and branch when set.
    db $08, C2PantsWorn
    dw ViewBareTop
    ; Show message 0.
    db $00, $04
    ; End script.
    db $ff

; Prepare the trench coat name and enter the shared clothing description.
ViewTrench:

C2Loc0_34:
    ; Set text name 0.
    db $30, $70

; Describe the upper clothing and then the pants or uncovered lower body.
ViewTopClothes:

C2Loc0_35:
    ; Show message 3.
    db $2c, $45
    ; Test object flag and branch when set.
    db $08, C2PantsWorn
    dw PantsFitReply
    ; Set text name 0.
    db $30, $dc
    ; Show message 3.
    db $2c, $44
    ; End script.
    db $ff

; Prepare the coat name and use the shared clothing description.
ViewCoat:

C2Loc0_36:
    ; Set text name 0.
    db $30, $78
    ; Jump to script.
    db $07
    dw ViewTopClothes

; Show the regional pants description.
PantsFitReply:

C2Loc0_37:
    ; Show message 0.
    db $00, $05
    ; End script.
    db $ff

; Describe the uncovered upper body and then the pants.
ViewBareTop:

C2Loc0_38:
    ; Set text name 0.
    db $30, $db
    ; Show message 3.
    db $2c, $44
    ; Jump to script.
    db $07
    dw PantsFitReply

; Describe the police uniform using the original regional text.
ViewUniform:

C2Loc0_39:
    ; Show message 0.
    db $00, $06
    ; End script.
    db $ff

; Show the original nothing-there description.
LookEmptyPlace:

C2Sc0_E1:
    ; Show message 1.
    db $01, $00
    ; End script.
    db $ff

; Read the police sign.
ReadPoliceSign:

C2Sc0_E2:
    ; Show message 1.
    db $01, $87
    ; End script.
    db $ff

; Describe the arched window using the regional text.
LookArchWindow:

C2Sc0_E3:
    ; Show message 1.
    db $01, $38
    ; End script.
    db $ff

; Show the questioning reply at this separate scene entry.
SceneQuestion2:

C2Sc0_E4:
    ; Show message 0.
    db $00, $2d
    ; End script.
    db $ff

; Show the original no-answer reply.
NoSceneAnswer:

C2Sc0_E5:
    ; Show message 0.
    db $00, $e3
    ; End script.
    db $ff

; Show the tied-hands refusal and end the action.
C2HandsTied:

C2Sc0_E6:
jr_007_4f4d:
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff

; Allow the original alternate-target selection for the binding rope.
UseC2Rope:

C2Sc0_E7:
    ; Set object flag.
    db $09, $88
    ; Choose alternate target; selected input runs the following script.
    db $2d

; Accept the nail-covered crate as the rope target; otherwise retain the tied-hands response.
MatchRopeCrate:

C2Loc0_3A:
    ; Match alternate item against type, ID and script target rows.
    db $32, $00, $8f
    dw FreeC2Hands
    db $fe, $fe
    dw C2HandsTied

; Work the rope over the nails, retain the original state/object updates, and set hands free.
FreeC2Hands:

C2Loc0_3B:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $bf
    ; Set state and refresh without cue.
    db $22, $95
    ; Hide object.
    db $2a, $9d
    ; Hide object.
    db $2a, $9e
    ; Refresh room objects.
    db $2b
    ; Show message 2.
    db $02, $c0
    ; Set object flag.
    db $09, C2HandsFree
    ; End script.
    db $ff

; Use the crate against the binding rope while the hands-free flag is clear.
UseNailCrate:

C2Sc0_E8:
    ; Set object flag.
    db $09, $88
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw SceneNoEffect2
    ; Choose alternate target; selected input runs the following script.
    db $2d

; Accept the binding rope as the crate target; otherwise retain the tied-hands response.
MatchCrateRope:

C2Loc0_3C:
    ; Match alternate item against type, ID and script target rows.
    db $32, $00, $8d
    dw FreeC2Hands
    db $fe, $fe
    dw C2HandsTied

; Require free hands after the original capture flag is set; otherwise allow target selection.
CheckHandsForUse:

C2Sc0_E9:
    ; Set object flag.
    db $09, $88
    ; Test object flag and branch when clear.
    db $54, C2Frisked
    dw PickC2UseTarget
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw PickC2UseTarget
    ; Jump to script.
    db $07
    dw C2HandsTied

; Choose the alternate target for the original item-use dispatch.
PickC2UseTarget:

C2Loc0_3D:
    ; Choose alternate target; selected input runs the following script.
    db $2d

; Match the selected alternate object for Ace's self-use action.
MatchSelfUse:

C2Loc0_3E:
    ; Match alternate item against type, ID and script target rows.
    db $32, $00, $01
    dw ToggleColdTap
    db $00, $02
    ; Target ToggleHotTap; retain the interior label.
    db LOW(ToggleHotTap)

jr_007_4f91:
    db HIGH(ToggleHotTap)
    db $00, $05
    dw SinkWaterSelf
    db $00, $09
    dw SelfUseHitReply
    db $00, $0e
    dw CallVegasLift1
    db $00, $11
    dw SelfUseHitReply
    db $00, $12
    dw SelfUseHitReply

jr_007_4fa6:
    db $00, $1c
    dw SelfBrokenReply
    db $00, $1d
    dw SelfBrokenReply
    db $00, $20
    dw TravelLift1
    db $00, $21
    dw TravelLift2
    db $00, $22
    dw TravelLift3
    db $03, $17
    dw PressLift4
    db $00, $31
    dw SelfUseHitReply
    db $00, $3f
    dw SelfUseHitReply
    db $00, $4b
    dw BenchSplinter
    db $00, $5e
    dw SelfUseHitReply
    db $00, $63
    dw NeedBoardTools
    db $00, $69
    dw HitWineBottle
    db $00, $6b
    dw ToggleWineTap
    db $00, $6e
    dw UseRouletteReply
    db $00, $70
    dw PullLooseBoard
    db $00, $7c
    dw LieSugarBed
    db $00, $81
    dw CheckMorgueGate
    db $02, $00
    dw UseWasherReply
    db $00, $92
    dw ToggleCleanCounter
    db $00, $96
    dw SelfUseHitReply

jr_007_4ff6:
    db $00, $9b
    dw SelfUseHitReply
    db $00, $a0
    dw SelfUseHitReply
    db $00, $a5
    dw SelfUseHitReply
    db $03, $24
    dw ToggleKnifeSelf
    db $03, $33
    dw BlowC2Nose
    db $03, $35
    dw ApplyPerfume
    db $03, $46
    dw SplitWeightSelf
    db $03, $4f
    dw PeelC2Banana
    db $04, $0a
    dw UseC2Lamp
    db $04, $10
    dw UseVacuumReply
    db $fe, $fe
    dw SceneNoEffect2

; Open the cold tap or enter its original closing branch.
ToggleColdTap:

C2Loc0_3F:
    ; Set text name 0.
    db $30, $d2
    ; Test object flag and branch when set.
    db $08, C2ColdTapOn
    dw ColdTapOff
    ; Show message 3.
    db $2c, $02
    ; Show object.
    db $29, $04
    ; Refresh room objects.
    db $2b
    ; Set object flag.
    db $09, C2ColdTapOn
    ; End script.
    db $ff

; Check the hot tap before switching off the cold tap.
ColdTapOff:

C2Loc0_40:
    ; Test object flag and branch when set.
    db $08, C2HotTapOn
    dw ColdOffKeepHot
    ; Clear object flag.
    db $0a, C2ColdTapOn

; Show the closing reply and hide the shared water object.
HideTapWater:

C2Loc0_41:
    ; Show message 3.
    db $2c, $03
    ; Hide object.
    db $2a, $04
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Switch off the cold tap while keeping the hot water visible.
ColdOffKeepHot:

C2Loc0_42:
    ; Show message 3.
    db $2c, $03
    ; Clear object flag.
    db $0a, C2ColdTapOn
    ; End script.
    db $ff

; Open the hot tap or enter its original closing branch.
ToggleHotTap:

C2Loc0_43:
    ; Set text name 0.
    db $30, $d3
    ; Test object flag and branch when set.
    db $08, C2HotTapOn
    dw HotTapOff
    ; Show message 3.
    db $2c, $02
    ; Show object.
    db $29

jr_007_504a:
    db $04
    ; Refresh room objects.
    db $2b
    ; Set object flag.
    db $09, C2HotTapOn
    ; End script.
    db $ff

; Check the cold tap before switching off the hot tap.
HotTapOff:

C2Loc0_44:
    ; Test object flag and branch when set.
    db $08, C2ColdTapOn
    dw HotOffKeepCold
    ; Clear object flag.
    db $0a, C2HotTapOn
    ; Jump to script.
    db $07
    dw HideTapWater

; Switch off the hot tap while keeping the cold water visible.
HotOffKeepCold:

C2Loc0_45:
    ; Show message 3.
    db $2c, $03
    ; Clear object flag.
    db $0a, C2HotTapOn
    ; End script.
    db $ff

; Show the regional reply for this group of self-use targets.
SelfUseHitReply:

C2Loc0_46:
    ; Show message 0.
    db $00, $2e
    ; End script.
    db $ff

; Name the selected slot and report the object broken.
SelfBrokenReply:

C2Loc0_47:
    ; Copy selected-slot name to text name 0.
    db $48
    ; Show message 3.
    db $2c, $1b
    ; End script.
    db $ff

; Show the splinter injury reply from sitting on the old bench.
BenchSplinter:

C2Loc0_48:
    ; Show message 1.
    db $01, $1f
    ; End script.
    db $ff

; Explain the lack of tools and time to remove the boards.
NeedBoardTools:

C2Loc0_49:
    ; Show message 1.
    db $01, $ea
    ; End script.
    db $ff

; Use the original tap open or close target-dispatch path.
ToggleWineTap:

C2Loc0_4A:
jr_007_506a:
    ; Test object flag and branch when set.
    db $08, C2TapOpen
    dw ToggleTapClose
    ; Show message 1.
    db $01, $fd
    ; Set object flag.
    db $09, C2TapOpen
    ; End script.
    db $ff

; Name the tap, show the closing reply, and clear its open flag.
ToggleTapClose:

C2Loc0_4B:
    ; Set text name 0.
    db $30, $d5
    ; Show message 3.
    db $2c, $03
    ; Clear object flag.
    db $0a, C2TapOpen
    ; End script.
    db $ff

; Show the regional roulette action reply.
UseRouletteReply:

C2Loc0_4C:
    ; Show message 2.
    db $02, $11
    ; End script.
    db $ff

; Check object 3D and pull the loose board free through the original path.
PullLooseBoard:

C2Loc0_4D:
    ; Test object visibility.
    db $28, $3d
    ; Branch if result bit 0 is set.
    db $03
    dw BoardsWontMove
    ; Hold text.
    db $2e
    ; Play audio.
    db $3e, $16
    ; Show message 1.
    db $01, $b5
    ; Set state and refresh without cue.
    db $22, $58
    ; Show object.
    db $29, $3d
    ; Hide object.
    db $2a, $3c
    ; Refresh room objects.
    db $2b
    ; Show message 1.
    db $01, $af
    ; End script.
    db $ff

; Show the original failed board removal reply.
BoardsWontMove:

C2Loc0_4E:
    ; Show message 1.
    db $01, $b6
    ; End script.
    db $ff

; Show the regional reply for lying on Sugar's bed.
LieSugarBed:

C2Loc0_4F:
    ; Show message 2.
    db $02, $63
    ; End script.
    db $ff

; Use the uniform check before toggling the gate or showing the clerk refusal.
CheckMorgueGate:

C2Loc0_50:
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw ToggleMorgueGate

; Show the clerk refusal and choose the first or repeated warning.
MorgueNoUniform:

C2Loc0_51:
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $87
    ; Test object flag and branch when set.
    db $08, C2MorgueWarned
    dw MorgueWarnAgain
    ; Show message 2.
    db $02, $88
    ; Set object flag.
    db $09, C2MorgueWarned
    ; End script.
    db $ff

; Show the clerk's repeated access warning.
MorgueWarnAgain:

C2Loc0_52:
    ; Show message 2.
    db $02, $89
    ; End script.
    db $ff

; Prepare the gate name and select its open or close action.
ToggleMorgueGate:

C2Loc0_53:
    ; Set text name 0.
    db $30, $bf
    ; Test state bit.
    db $0e, C2GateOpen
    ; Branch if result bit 0 is set.
    db $03
    dw GateCloseObjs

; Set the gate open state and swap its visible objects.
GateOpenObjs:

C2Loc0_54:
    ; Show message 3.
    db $2c, $02
    ; Set state and refresh without cue.
    db $22, C2GateOpen
    ; Show object.
    db $29, $94
    ; Hide object.
    db $2a, $93
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Clear the gate open state and restore its closed object.
GateCloseObjs:

C2Loc0_55:
    ; Show message 3.
    db $2c, $03
    ; Clear state and refresh.
    db $24, C2GateOpen
    ; Show object.
    db $29, $93
    ; Hide object.
    db $2a, $94
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Show the washing machine action reply.
UseWasherReply:

C2Loc0_56:
    ; Show message 2.
    db $02, $c8
    ; End script.
    db $ff

; Lower the visible raised counter or use the raising path.
ToggleCleanCounter:

C2Loc0_57:
    ; Test object visibility.
    db $28, $a0
    ; Branch if result bit 0 is clear.
    db $04
    dw RaiseCleanCounter

; Lower the counter, clear its state, and swap its visible objects.
LowerCleanCounter:

C2Loc0_58:
    ; Show message 2.
    db $02, $d6
    ; Clear state and refresh.
    db $24, C2CounterRaised
    ; Show object.
    db $29, $9f
    ; Hide object.
    db $2a, $a0
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Open the knife on self-use or take the separate closing path when already open.
ToggleKnifeSelf:

C2Loc0_59:
    ; Test object flag and branch when set.
    db $08, C2KnifeOpen
    dw CloseKnifeSelf
    ; Show message 2.
    db $02, $8a
    ; Set object flag.
    db $09, C2KnifeOpen
    ; End script.
    db $ff

; Show the closing reply and clear the knife-open object flag.
CloseKnifeSelf:

C2Loc0_5A:
    ; Show message 1.
    db $01, $14
    ; Clear object flag.
    db $0a, C2KnifeOpen
    ; End script.
    db $ff

; Blow the nose and mark the tissue used.
BlowC2Nose:

C2Loc0_5B:
    ; Show message 2.
    db $02, $60
    ; Set object flag.
    db $09, C2TissueUsed
    ; End script.
    db $ff

; Show the regional reply for applying perfume to Ace.
ApplyPerfume:

C2Loc0_5C:
    ; Show message 2.
    db $02, $64
    ; End script.
    db $ff

; Separate the paperweight on self-use, retaining its carried and room-object paths.
SplitWeightSelf:

C2Loc0_5D:
    ; Hold text.
    db $2e
    ; Show message 0.
    db $00, $bd
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw SplitWeightObjects
    ; Set text name 0.
    db $30, $48
    ; Show message 3.
    db $2c

jr_007_50f6:
    db $2d
    ; Clear attribute bit 0.
    db $19
    ; Set selected attribute bit 1.
    db $1b
    ; Set item flag.
    db $12, $47
    ; Drop selected list item.
    db $33
    ; Set item flag and append list value.
    db $4c, $47
    ; End script.
    db $ff

; Replace paperweight object 1A with bird and base objects 18 and 19.
SplitWeightObjects:

C2Loc0_5E:
    ; Hide object.
    db $2a, $1a
    ; Show object.
    db $29, $18
    ; Show object.
    db $29, $19
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Require the original held attribute before toggling the flashlight.
UseC2Lamp:

C2Loc0_5F:
    ; Test attribute bit 0 and branch when clear.
    db $6e
    dw LampNotHeld

; Switch off a lit flashlight or use the original usable-cell gate.
ToggleC2Lamp:

C2Loc0_91:
    ; Test object flag and branch when set.
    db $08, C2LampFlag
    dw TurnC2LampOff
    ; Test object flag and branch when set.
    db $08, C2LampReady
    dw TurnC2LampOn
    ; Show message 1.
    db $01, $8b
    ; End script.
    db $ff

; Show the original flashlight pickup reminder.
LampNotHeld:

C2Loc0_60:
    ; Show message 3.
    db $2c, $47
    ; End script.
    db $ff

; Clear the lamp-on flag and reload the original palette.
TurnC2LampOff:

C2Loc0_61:
    ; Show message 1.
    db $01, $89
    ; Clear object flag.
    db $0a, C2LampFlag
    ; Load Case II palette and reload scene.
    db $73
    ; End script.
    db $ff

; Set the lamp-on flag, reload the palette and retain the weak-cell text branch.
TurnC2LampOn:

C2Loc0_62:
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $85
    ; Set object flag.
    db $09, C2LampFlag
    ; Load Case II palette and reload scene.
    db $73
    ; Test object flag and branch when set.
    db $08, C2LampWeak
    dw EndC2Scene
    ; Show message 1.
    db $01, $7a
    ; End script.
    db $ff

; Explain that the vacuum does not work and has no plug.
UseVacuumReply:

C2Loc0_63:
    ; Show message 2.
    db $02, $67

jr_007_512d:
    ; End script.
    db $ff

; Show the nothing-happens reply at this separate action entry.
SceneNoEffect2:

C2Sc0_EA:
    ; Show message 0.
    db $00, $2c
    ; End script.
    db $ff

; Require free hands before the original no-effect attack reply.
CheckHandsHit:

C2Sc0_EB:
    ; Test object flag and branch when set.
    db $08, C2HandsFree
    dw SceneNoEffect2

; Show the tied-hands refusal at this separate entry.
HandsTiedReply2:

C2Loc0_64:
    ; Show message 2.
    db $02, $be
    ; End script.
    db $ff

; Require free hands before the nail-in-hand crate punching reply.
PunchNailCrate:

C2Sc0_EC:
    ; Test object flag and branch when clear.
    db $54, C2HandsFree
    dw HandsTiedReply2
    ; Show message 1.
    db $01, $b4
    ; End script.
    db $ff

; Show the original reply for striking the dartboard.
HitDartBoard:

C2Sc0_ED:
    ; Show message 2.
    db $02, $e4
    ; End script.
    db $ff

; Hide clean glass object 17 and enter the fatal guard discovery.
BreakCleanGlass:

C2Sc0_EE:
    ; Play audio.
    db $3e, $13
    ; Hide object.
    db $2a, $17
    ; Refresh room objects.
    db $2b

; Show broken glass, the armed guard discovery, and the fatal machine-gun attack.
GlassGuardEnd:

C2Loc0_65:
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $00
    ; Show message 0.
    db $00, $6b
    ; Run scene effect.
    db $39, FxBouncer
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $6c
    ; Repeat audio cue $10.
    db $77
    ; Show message 0.
    db $00, $6d
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Set window state 97 and enter the fatal guard discovery.
BreakCityWin:

C2Sc0_EF:
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $97
    ; Jump to script.
    db $07
    dw GlassGuardEnd

; Set the first Vegas window state 99 and enter the guard discovery.
BreakVegasWin1:

C2Sc0_F0:
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $99
    ; Jump to script.
    db $07
    ; Target GlassGuardEnd; retain the interior label.
    db LOW(GlassGuardEnd)

jr_007_5168:
    db HIGH(GlassGuardEnd)

; Set the other Vegas window state 9C and enter the guard discovery.
BreakVegasWin2:

C2Sc0_F1:
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $9c
    ; Jump to script.
    db $07
    dw GlassGuardEnd

; Check window state AD before breaking glass and alerting the goons.
BreakGoonsGlass:

C2Sc0_F2:
    ; Test state bit.
    db $0e, $ad
    ; Branch if result bit 0 is set.
    db $03
    dw GlassBrokenReply
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $ad

; Show the broken glass reply and the fatal discovery by the goons.
GlassGoonsEnd:

C2Loc0_66:
    ; Hold text.
    db $2e
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $00
    ; Run scene effect.
    db $39, FxGoons
    ; Play audio.
    db $3e, $09
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 2.
    db $02, $9f
    ; Play audio.
    db $3e, $10
    ; Wait sixty ticks.
    db $7e
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Break the cleaners window and use the shared glass feedback.
BreakCleanWindow:

C2Sc0_F3:
    ; Test state bit.
    db $0e, $ad
    ; Branch if result bit 0 is set.
    db $03
    dw GlassBrokenReply
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $ad
    ; Jump to script.
    db $07
    dw GlassBreakReply

; Set window state B0 and enter the fatal goon discovery.
BreakSunWindow:

C2Sc0_F4:
    ; Play audio.
    db $3e, $13
    ; Set state and refresh without cue.
    db $22, $b0
    ; Jump to script.
    db $07
    dw GlassGoonsEnd

; Show broken window object 43 before the original police arrest route.
BreakPoliceWin1:

C2Sc0_F5:
    ; Play audio.
    db $3e, $13
    ; Show object.
    db $29, $43

; Refresh the broken window view before marking the police glass state.
DrawPoliceGlass:

C2Loc0_92:
    ; Refresh room objects.
    db $2b

; Set state 65 if needed before the police station arrest.
MarkPoliceGlass:

C2Loc0_67:
    ; Test state bit.
    db $0e, $65
    ; Branch if result bit 0 is set.
    db $03
    dw PoliceGlassArrest
    ; Set state and refresh without cue.
    db $22, $65

; Show the police station vandalism arrest and enter the jail ending.
PoliceGlassArrest:

C2Loc0_68:
    ; Play audio.
    db $3e, $09
    ; Show message 2.
    db $02, $1f
    ; Jump to script.
    db $07
    dw C2JailEnding

; Show broken window object 42 before the original police arrest route.
BreakPoliceWin2:

C2Sc0_F6:
    ; Play audio.
    db $3e, $13
    ; Show object.
    db $29, $42
    ; Refresh room objects.
    db $2b
    ; Jump to script.
    db $07
    dw MarkPoliceGlass

; Show the second original already-broken glass reply.
GlassBrokenReply:

C2Loc0_69:
jr_007_51b9:
    ; Set text name 0.
    db $30, $ad
    ; Show message 3.
    db $2c, $01
    ; End script.
    db $ff

; Punch the clerk and retain the alarm, arrest, bail, and fatal Stogie sequence.
PunchMorgueClerk:

C2Sc0_F7:
    ; Play audio.
    db $3e, $17
    ; Show message 2.
    db $02, $8c
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
    ; Hold text.
    db $2e
    ; Show message 1.
    db $01, $81
    ; Show message 0.
    db $00, $fd
    ; Resume text.
    db $2f
    ; Wait sixty ticks.
    db $7e
    ; Run scene effect.
    db $39, FxStogie
    ; Wait sixty ticks.
    db $7e
    ; Wait sixty ticks.
    db $7e
    ; Show message 0.
    db $00, $fe
    ; Wait sixty ticks.
    db $7e
    ; Play audio.
    db $3e, $10
    ; Play exit effect and end this action.
    db $37
    ; Not reached from the recovered action and branch entries.
    db $ff

; Check the uniform before selecting the original clerk conversation.
TalkMorgueClerk:

C2Sc0_F8:
    ; Test object flag and branch when set.
    db $08, C2Uniform
    dw ClerkTagHint

; Show the annoyed clerk asking Ace to leave without business.
ClerkAngryReply:

C2Loc0_6A:
    ; Show message 2.
    db $02, $96
    ; End script.
    db $ff

; Use the original back-room and tag handover gates before the belongings hint.
ClerkTagHint:

C2Loc0_6B:
    ; Test object flag and branch when clear.
    db $54, C2ColdRoomSeen
    dw ClerkAngryReply

jr_007_51ec:
    ; Test object flag and branch when set.
    db $08, C2Tag2Given
    dw ClerkAngryReply
    ; Hold text.
    db $2e
    ; Show message 2.
    db $02, $93
    ; Show message 2.
    db $02

jr_007_51f4:
    db $97
    ; End script.
    db $ff

; Refuse to open the desk while the clerk watches.
MorgueDeskBlocked:

C2Sc0_F9:
    ; Show message 2.
    db $02, $86
    ; End script.
    db $ff

; Require the uniform and open the gate unless already open.
OpenMorgueGate:

C2Sc0_FA:
    ; Test object flag and branch when clear.
    db $54, C2Uniform
    dw MorgueNoUniform
    ; Set text name 0.
    db $30, $bf
    ; Test state bit.
    db $0e, C2GateOpen
    ; Branch if result bit 0 is set.
    db $03
    dw SceneOpenReply
    ; Jump to script.
    db $07
    dw GateOpenObjs

; Open the first drawer and retain its original nametag visibility checks.
OpenDrawer1:

C2Sc0_FB:
    ; Set text name 0.
    db $30, $b0
    ; Test state bit.
    db $0e, C2Drawer1Open
    ; Branch if result bit 0 is set.
    db $03

jr_007_520c:
    dw SceneOpenReply
    ; Show message 3.
    db $2c, $02
    ; Set state and refresh without cue.
    db $22, C2Drawer1Open
    ; Test item flag.
    db $11, $51
    ; Branch if result bit 0 is set.
    db $03
    dw DrawOpenDrawer1
    ; Test object flag and branch when set.
    db $08, C2Tag1Given
    ; Target DrawOpenDrawer1; retain the interior label.
    db LOW(DrawOpenDrawer1)

jr_007_521a:
    db HIGH(DrawOpenDrawer1)
    ; Test item state.
    db $14, $51
    ; Branch if result bit 0 is set.
    db $03
    dw DrawOpenDrawer1
    ; Show object.
    db $29

jr_007_5221:
    db $4d

; Show the first open drawer objects and hide its closed object.
DrawOpenDrawer1:

C2Loc0_6C:
    ; Show object.
    db $29, $96
    ; Show object.
    db $29, $97
    ; Hide object.
    db $2a, $95
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Open the second drawer and retain its original nametag visibility checks.
OpenDrawer2:

C2Sc0_FC:
jr_007_522a:
    ; Set text name 0.
    db $30, $b0
    ; Test state bit.
    db $0e, C2Drawer2Open
    ; Branch if result bit 0 is set.
    db $03

jr_007_522f:
    dw SceneOpenReply
    ; Show message 3.
    db $2c, $02
    ; Set state and refresh without cue.
    db $22, C2Drawer2Open
    ; Test item flag.
    db $11, $52
    ; Branch if result bit 0 is set.
    db $03
    dw DrawOpenDrawer2
    ; Test object flag and branch when set.
    db $08, C2Tag2Given
    dw DrawOpenDrawer2
    ; Show object.
    db $29, $4e

; Show the second open drawer objects and hide its closed object.
DrawOpenDrawer2:

C2Loc0_6D:
jr_007_5240:
    ; Show object.
    db $29, $99
    ; Show object.
    db $29, $9a
    ; Hide object.
    db $2a, $98
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Prepare the counter name and reject opening it when already raised.
OpenCleanCounter:

C2Sc0_FD:
    ; Set text name 0.
    db $30, $d0
    ; Test object visibility.
    db $28, $a0
    ; Branch if result bit 0 is set.
    db $03
    dw SceneQuestion2

; Raise the counter, set its state, and swap its visible objects.
RaiseCleanCounter:

C2Loc0_6E:
    ; Show message 2.
    db $02, $d5
    ; Set state and refresh without cue.
    db $22, C2CounterRaised
    ; Show object.
    db $29, $a0
    ; Hide object.
    db $2a, $9f
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Open the office drape and retain the A3, A2 and A1 object changes.
OpenOfficeDrape:

C2Sc0_FE:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $a3
    ; Branch if result bit 0 is set.
    db $03
    dw SceneOpenReply
    ; Show message 3.
    db $2c, $02
    ; Set state and refresh without cue.
    db $22, C2DrapeOpen
    ; Show object.
    db $29

jr_007_5265:
    db $a3
    ; Hide object.
    db $2a, $a2
    ; Show object.
    db $29, $a1

jr_007_526a:
    ; Refresh room objects.
    db $2b

jr_007_526b:
    ; End script.
    db $ff

; Clear the thin-blind closed state and show objects 84 and 8A.
OpenThinBlinds:

C2Sc0_FF:
    ; Set text name 0.
    db $30, $bc
    ; Test object visibility.
    db $28, $84
    ; Branch if result bit 0 is set.
    db $03
    dw SceneOpenReply
    ; Show message 3.
    db $2c, $02
    ; Clear state and refresh.
    db $24, C2ThinShadeShut
    ; Show object.
    db $29, $84
    ; Hide object.
    db $2a

jr_007_527a:
    db $85
    ; Show object.
    db $29, $8a
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Show the prepared scene object name as already open.
SceneOpenReply:

C2Loc0_6F:
    ; Show message 3.
    db $2c, $19

jr_007_5281:
    ; End script.
    db $ff

; Clear the white-blind closed state and show objects 86 and 8B.
OpenWhiteBlinds:

C2Sc0_100:
jr_007_5282:
    ; Set text name 0.
    db $30, $bc
    ; Test object visibility.
    db $28, $86
    ; Branch if result bit 0 is set.
    db $03
    dw SceneOpenReply
    ; Show message 3.
    db $2c, $02
    ; Clear state and refresh.
    db $24, C2WhiteShadeShut
    ; Show object.
    db $29, $86
    ; Hide object.
    db $2a, $87
    ; Show object.
    db $29, $8b
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Clear the silk curtain closed state and show object 88.
OpenSilkCurtain:

C2Sc0_101:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $88
    ; Branch if result bit 0 is set.
    db $03

jr_007_529a:
    dw SceneOpenReply
    ; Show message 3.
    db $2c, $02
    ; Clear state and refresh.
    db $24, C2SilkShut
    ; Show object.
    db $29, $88
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Use the shared closed reply for the morgue desk.
DeskCloseReply:

C2Sc0_102:
    ; Set text name 0.
    db $30, $95
    ; Jump to script.
    db $07
    dw SceneClosedReply

; Close the gate unless it is already closed.
CloseMorgueGate:

C2Sc0_103:
    ; Set text name 0.
    db $30, $bf
    ; Test state bit.
    db $0e, C2GateOpen
    ; Branch if result bit 0 is clear.
    db $04
    ; Target SceneClosedReply; retain the interior label.
    db LOW(SceneClosedReply)

jr_007_52af:
    db HIGH(SceneClosedReply)
    ; Jump to script.
    db $07
    dw GateCloseObjs

; Close the first drawer and hide its interior objects and nametag.
CloseDrawer1:

C2Sc0_104:
    ; Set text name 0.
    db $30, $b0
    ; Test state bit.
    db $0e, C2Drawer1Open
    ; Branch if result bit 0 is clear.
    db $04

jr_007_52b8:
    dw SceneClosedReply
    ; Show message 3.
    db $2c, $03
    ; Clear state and refresh.
    db $24, C2Drawer1Open
    ; Show object.
    db $29, $95
    ; Hide object.
    db $2a, $96
    ; Hide object.
    db $2a, $97
    ; Hide object.
    db $2a, $4d
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Close the second drawer and hide its interior objects and nametag.
CloseDrawer2:

C2Sc0_105:
    ; Set text name 0.
    db $30, $b0
    ; Test state bit.
    db $0e, C2Drawer2Open
    ; Branch if result bit 0 is clear.
    db $04
    ; Target SceneClosedReply; retain the interior label.
    db LOW(SceneClosedReply)

jr_007_52ce:
    db HIGH(SceneClosedReply)
    ; Show message 3.
    db $2c, $03
    ; Clear state and refresh.
    db $24, C2Drawer2Open
    ; Show object.
    db $29, $98
    ; Hide object.
    db $2a, $99
    ; Hide object.
    db $2a, $9a
    ; Hide object.
    db $2a, $4e
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Prepare the counter name and lower it only when raised object A0 is visible.
CloseCleanCounter:

C2Sc0_106:
    ; Set text name 0.
    db $30, $d0
    ; Test object visibility.
    db $28, $a0
    ; Branch if result bit 0 is clear.
    db $04
    dw SceneQuestion2
    ; Jump to script.
    db $07
    dw LowerCleanCounter

; Close the office drape and retain the A2, A3 and A1 object changes.
CloseOfficeDrape:

C2Sc0_107:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $a3
    ; Branch if result bit 0 is clear.
    db $04
    dw SceneClosedReply
    ; Show message 3.
    db $2c, $03
    ; Clear state and refresh.
    db $24, C2DrapeOpen
    ; Show object.
    db $29, $a2
    ; Hide object.
    db $2a, $a3
    ; Hide object.
    db $2a, $a1
    ; Refresh room objects.
    db $2b

jr_007_52f9:
    ; End script.
    db $ff

; Set the thin-blind closed state and hide objects 84 and 8A.
CloseThinBlinds:

C2Sc0_108:
    ; Set text name 0.
    db $30, $bc
    ; Test object visibility.
    db $28, $84
    ; Branch if result bit 0 is clear.
    db $04
    dw SceneClosedReply
    ; Show message 3.
    db $2c, $03
    ; Set state and refresh without cue.
    db $22, C2ThinShadeShut
    ; Show object.
    db $29, $85
    ; Hide object.
    db $2a, $84
    ; Hide object.
    db $2a, $8a
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Show the prepared scene object name as already closed.
SceneClosedReply:

C2Loc0_70:
    ; Show message 3.
    db $2c, $1a
    ; End script.
    db $ff

; Set the white-blind closed state and hide objects 86 and 8B.
CloseWhiteBlinds:

C2Sc0_109:
    ; Set text name 0.
    db $30, $bc
    ; Test object visibility.
    db $28, $86
    ; Branch if result bit 0 is clear.
    db $04
    dw SceneClosedReply
    ; Show message 3.
    db $2c, $03
    ; Set state and refresh without cue.
    db $22, C2WhiteShadeShut
    ; Show object.
    db $29, $87
    ; Hide object.
    db $2a, $86
    ; Hide object.
    db $2a, $8b
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff

; Set the silk curtain closed state and hide object 88.
CloseSilkCurtain:

C2Sc0_10A:
    ; Set text name 0.
    db $30, $d4
    ; Test object visibility.
    db $28, $88
    ; Branch if result bit 0 is clear.
    db $04
    dw SceneClosedReply
    ; Show message 3.
    db $2c, $03
    ; Set state and refresh without cue.
    db $22, C2SilkShut
    ; Hide object.
    db $2a, $88
    ; Refresh room objects.
    db $2b
    ; End script.
    db $ff
