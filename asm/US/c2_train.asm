; --- c2_train_text.asm ---

; Rebuild records and display trains six through nine; retain the second-page restart at record index five.
ShowTrains6To9:
ShowC2SchedHigh:


    call BuildTrains
    call InitTextBuffer
    call ShowTrainHead
    ld a, $14
    ld [wTrainRepeat], a
    ld a, TrainRecsLen

; Set the upper train page range before displaying its rows.
TrainHighPageInit:
jr_003_6266:
    ld [wTrainPageEnd], a
    xor a
    ld [wTrainPageOff], a
    ld [wTrainRows], a
    ld de, TrainHalfLen
    call ShowTrainPage
    call ClearTextUI
    ret

; Rebuild records and display trains two through five; retain the second-page restart at record index one.
ShowTrains2To5:
ShowC2SchedLow:


    call BuildTrains
    call InitTextBuffer
    call ShowTrainHead
    ld a, TrainRecLen
    ld [wTrainRepeat], a
    ld a, TrainHalfLen
    ld [wTrainPageEnd], a
    xor a
    ld [wTrainPageOff], a
    ld [wTrainRows], a
    ld de, $0000
    call ShowTrainPage
    call ClearTextUI
    ret

; --- c2_train_build.asm ---

; Clear all train records, then select one arrival window for each of the eight trains.
BuildTrains:
BuildC2Schedule:


Call_003_629e:
    call ClearTrains
    xor a
    ld [wTrainIndex], a

; Select a time window for the next of eight trains.
TrainBuildNextRecord:
jr_003_62a5:
    ld a, [wTrainIndex]
    ld l, a
    ld h, $00
    add hl, hl
    push hl
    ld bc, TrainRefs
    add hl, bc
    ld a, [hl+]
    ld [wTrainPtr], a
    ld a, [hl]
    ld [wTrainPtr+1], a
    pop hl
    add hl, hl
    ld e, l
    ld d, h
    call PickTrain
    ld a, [wTrainIndex]
    inc a
    ld [wTrainIndex], a
    cp TrainCount
    jr c, TrainBuildNextRecord

    ret

; --- c2_train_page.asm ---

; Skip unused records, display at most three rows, and retain the original restart and confirmation flow.
ShowTrainPage:
ShowC2SchedPage:


Call_003_62cc:
jr_003_62cc:
    ld hl, wTrainRecs
    add hl, de
    ld a, [hl+]
    cp TrainNone
    jr z, TrainPageAdvanceRecord

    ld [wTrainNo], a
    ld a, [hl+]
    ld [wTrainCity], a
    ld a, [hl+]
    ld [wTrainState], a
    ld a, [wTrainRows]
    ld l, a
    ld h, $00
    ld bc, TrainRowYs
    add hl, bc
    ld a, [hl]
    ld [wTextY], a
    ld a, TrainRowText
    ld [wListMark], a
    push de
    call ShowListText
    pop de
    ld a, [wTrainRows]
    inc a
    ld [wTrainRows], a

; Advance to the next four-byte train record.
TrainPageAdvanceRecord:
jr_003_62ff:
    inc de
    inc de
    inc de
    inc de
    ld a, [wTrainPageEnd]
    cp e
    jr z, TrainPageConfirm

    ld a, [wTrainRows]
    cp TrainPageRows
    jr c, ShowTrainPage

    ld hl, wTrainRecs
    add hl, de
    ld a, [hl]
    cp TrainNone
    jr z, TrainPageConfirm

    ld a, [wTrainPageOff]
    cp $00
    jr nz, TrainPageConfirm

    push de
    call WaitTextConfirm
    call InitTextBuffer
    call ShowTrainHead
    pop de
    xor a
    ld [wTrainRows], a
    ld a, [wTrainRepeat]
    ld [wTrainPageOff], a
    ld e, a
    jr ShowTrainPage

; Wait for confirmation after the current timetable page.
TrainPageConfirm:
jr_003_6338:
    call WaitTextConfirm
    ret

; --- c2_train_clear.asm ---

; Fill all eight four-byte train records with TrainNone.
ClearTrains:
ClearC2Schedule:


Call_003_633c:
    ld hl, wTrainRecs
    ld a, TrainNone
    ld c, TrainRecsLen

; Fill the next train-record byte with TrainNone.
TrainClearNextByte:
jr_003_6343:
    ld [hl+], a
    dec c
    jr nz, TrainClearNextByte

    ret

; Show the train schedule header from list text seven.
ShowTrainHead:
ShowC2SchedHead:


Call_003_6348:
    ld a, TrainHeadText
    ld [wListMark], a
    call ShowListText
    ret

; --- c2_train_select.asm ---

; For record offset DE, scan arrival/destination pairs and write a record within the original byte time window.
PickTrain:
SelectC2SchedRec:


Call_003_6351:
jr_003_6351:
    ld a, [wTrainPtr]
    ld c, a
    ld a, [wTrainPtr+1]
    ld b, a
    ld a, [bc]
    cp $ff
    ret z

    push af
    sub $04
    ld [wTrainStart], a
    pop af
    ; The exclusive end may wrap; carry skips its upper-bound comparison.
    add $0c
    ld [wTrainEnd], a
    jr nc, TrainSelectCheckEnd

    ld a, [wC2Time]
    jr TrainSelectWriteRecord

; Check the upper bound of the current train time window.
TrainSelectCheckEnd:
jr_003_6370:
    ld a, [wC2Time]
    ld hl, wTrainEnd
    cp [hl]
    jr nc, TrainSelectNextPair

    ld a, [wTrainStart]
    ; Preserve the original adjustment for arrivals below four.
    sub $fc
    jr c, TrainSelectWriteRecord

    ld [wTrainStart], a

; Store the selected train record when the current time is in range.
TrainSelectWriteRecord:
jr_003_6383:
    ld a, [wC2Time]
    ld hl, wTrainStart
    sub [hl]
    ret c

    ld hl, wTrainRecs+3
    add hl, de
    ld [hl-], a
    ld c, a
    ld b, $00
    push hl
    ld hl, TrainTextIds
    add hl, bc
    ld a, [hl]
    pop hl
    ld [hl-], a
    ld a, [wTrainPtr]
    ld c, a
    ld a, [wTrainPtr+1]
    ld b, a
    inc bc
    ld a, [bc]
    ld [hl-], a
    ld a, [wTrainIndex]
    ld c, a
    ld b, $00
    push hl
    ld hl, C2TrainNums
    add hl, bc
    ld a, [hl]
    pop hl
    ld [hl], a
    ret


; Advance to the next arrival and destination pair.
TrainSelectNextPair:
jr_003_63b5:
    ld a, [wTrainPtr]
    add $02
    ld [wTrainPtr], a
    ld a, [wTrainPtr+1]
    adc $00
    ld [wTrainPtr+1], a
    jr PickTrain

; --- c2_train_apply.asm ---

; Visit eight records; dispatch each selected phase and clear access for records marked TrainNone.
ApplyTrains:
ApplyC2Schedule:

Call_003_63c7:
    ld de, $0000

; Inspect the next scheduled train record.
TrainApplyNextRecord:
jr_003_63ca:
    ld hl, wTrainRecs+3
    add hl, de
    ld a, [hl]
    cp TrainNone
    jr z, TrainApplyClearInactive

    push de
    call DispatchTrain
    pop de

; Advance four bytes to the next train record.
TrainApplyAdvance:
jr_003_63d8:
    inc e
    inc e
    inc e
    inc e
    ld a, TrainRecsLen
    cp e
    jr nz, TrainApplyNextRecord

    ret


; Clear access for a train with no active record.
TrainApplyClearInactive:
jr_003_63e2:
    call ClearTrainAccess
    jr TrainApplyAdvance

; Dispatch the selected train phase through the sixteen-entry table; DE is the four-byte record offset.
DispatchTrain:
DispatchC2Sched:

Call_003_63e7:
    ld hl, wTrainRecs+3
    add hl, de
    ld a, [hl]
    rst RST_00

TrainPhaseCalls:
C2SchedCalls:
    dw ClearTrainAccess
    dw ClearTrainAccess
    dw ClearTrainAccess
    dw ClearTrainAccess
    dw TrainArrive
    dw SetTrainAccess
    dw SetTrainAccess
    dw SetTrainAccess
    dw SetTrainAccess
    dw SetTrainAccess
    dw TrainLastCall
    dw TrainFareWarn
    dw TrainFareWarn
    dw TrainFareWarn
    dw TrainDepart
    dw TrainRide

; --- c2_train_access.asm ---

; Use record offset DE to clear the three train state bits and access flag; hide the train at its platform.
ClearTrainAccess:
ClearC2SchedFlags:

Call_003_640d:
    ld c, e
    srl c
    srl c
    ld b, $00
    ld hl, TrainStateA
    add hl, bc
    ld a, [hl]
    push bc
    call ClearStateBit
    pop bc
    ld hl, TrainStateB
    add hl, bc
    ld a, [hl]
    push bc
    call ClearStateBit
    pop bc
    ld hl, TrainStateC
    add hl, bc
    ld a, [hl]
    push bc
    call ClearStateBit
    pop bc
    ld hl, TrainAccessFlags
    add hl, bc
    ld a, [hl]
    push bc
    call ClearObjFlag
    pop bc
    push bc
    call HideTrainHere
    pop bc
    ret

; Use record offset DE to set the three train state bits and access flag; show the train at its platform.
SetTrainAccess:
SetC2SchedFlags:


Call_003_6442:
    ld c, e
    srl c
    srl c
    ld b, $00
    ld hl, TrainStateA
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld hl, TrainStateB
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld hl, TrainStateC
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld hl, TrainAccessFlags
    add hl, bc
    ld a, [hl]
    push bc
    call SetObjFlag
    pop bc
    push bc
    call ShowTrainHere
    pop bc
    ret

; --- c2_train_call.asm ---

; Set train access; announce imminent departure when passenger clearance is clear and call all aboard at the platform.
TrainLastCall:
C2SchedMsg7D:


    call SetTrainAccess
    ld a, [wRoomId]
    ld hl, TrainCarA
    add hl, bc
    cp [hl]
    jr z, TrainLastCallPassenger

    ld hl, TrainCarB
    add hl, bc
    cp [hl]
    jr z, TrainLastCallPassenger

    ld hl, TrainPlatforms
    add hl, bc
    cp [hl]
    jr z, TrainLastCallPlatform

    ret


; Warn an unprotected passenger that departure is near.
TrainLastCallPassenger:
jr_003_6493:
    ld hl, TrainPassFlags
    add hl, bc
    ld a, [hl]
    call ReadObjFlag
    cp $00
    ret nz

    ld a, $77
    call ShowMsg2 ; Message Text16Message77: THE CONDUCTOR / LOOKS IMPATIENT.[END]
    ld a, $7d
    call ShowMsg2 ; Message Text16Message7D: "ATTENTION ALL / PASSENGERS, THE / TRAIN WILL SOON BEDEPARTING..."[END]
    ret


; Announce last call at the train platform.
TrainLastCallPlatform:
jr_003_64a9:
    ld a, $1b
    call PlayAudio
    call ScriptHoldText
    ld a, $30
    call ShowMsg1 ; Message Text14Message30: THE CONDUCTOR / YELLS FROM A FEW / FEET AWAY.[END]
    ld a, $2b
    call ShowMsg1 ; Message Text14Message2B: "ALL ABOARD!"[END]
    call ResumeTextUI
    ret

; Set train access; in the paired train rooms, warn passengers whose clearance flag is clear.
TrainFareWarn:
C2SchedMsg7E:


    call SetTrainAccess
    ld a, [wRoomId]
    ld hl, TrainCarA
    add hl, bc
    cp [hl]
    jr z, TrainFareWarnPassenger

    ld hl, TrainCarB
    add hl, bc
    cp [hl]
    jr z, TrainFareWarnPassenger

    ret


; Warn a passenger whose fare clearance is absent.
TrainFareWarnPassenger:
jr_003_64d4:
    ld hl, TrainPassFlags
    add hl, bc
    ld a, [hl]
    push bc
    call ReadObjFlag
    pop bc
    cp $00
    ret nz

    call ScriptHoldText
    ld a, $77
    call ShowMsg2 ; Message Text16Message77: THE CONDUCTOR / LOOKS IMPATIENT.[END]
    ld a, $7e
    call ShowMsg2 ; Message Text16Message7E: "IF YOU DON'T / PAY THE FARE, THENYOU'LL HAVE TO GETOFF THE TRAIN!"[END]
    call ResumeTextUI
    ret

; --- c2_train_obj.asm ---

; Show train object $a7 only at the platform selected by train index BC.
ShowTrainHere:
ShowC2SchedObj:


Call_003_64f2:
    ld a, [wRoomId]
    ld hl, TrainPlatforms
    add hl, bc
    cp [hl]
    ret nz

; Set the train object $a7 visibility bit.
ShowTrainObj:
ShowC2ObjA7:

Call_003_64fb:
    ld a, C2VisIdPlatformTrainAndDoor
    call SetObjVisible
    ret

; Hide train object $a7 only at the platform selected by train index BC.
HideTrainHere:
HideC2SchedObj:


Call_003_6501:
    ld a, [wRoomId]
    ld hl, TrainPlatforms
    add hl, bc
    cp [hl]
    ret nz

    ld a, C2VisIdPlatformTrainAndDoor
    call ClearObjVisible
    ret

; --- c2_train_in.asm ---

; On phase four, set train access; at its platform, announce arrival and refresh the train view.
TrainArrive:
C2SchedPhase4:


    call SetTrainAccess
    ld a, [wRoomId]
    ld hl, TrainPlatforms
    add hl, bc
    cp [hl]
    ret nz

    call ResetObjScroll
    ld a, $2f
    call ShowMsg1 ; Message Text14Message2F: A TRAIN COMES INTOTHE STATION WITH AHISS OF STEAM AND / SCREECH OF WHEELS.[END]
    ld a, $14
    call PlayAudio
    call MapStepsBank
    ld a, $1e
    call WaitTicks
    ld a, $12
    call PlayAudio
    call RefreshStateView
    call DrawC2Panel
    call RoomCueCall
    ret

; --- c2_train_ride.asm ---

; On phase fourteen, close train doors or remove riders whose clearance flag is clear; keep the final-readiness check for New York, Los Angeles, and St. Louis.
TrainDepart:
C2SchedPhase0E:


    ld c, e
    srl c
    srl c
    ld b, $00
    ld hl, TrainStateA
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld a, [wRoomId]
    ld hl, TrainPlatforms
    add hl, bc
    cp [hl]
    jr z, CloseTrainDoors

    ld hl, TrainCarA
    add hl, bc
    cp [hl]
    jr z, TrainDepartInCar

    ld hl, TrainCarB
    add hl, bc
    cp [hl]
    jr z, TrainDepartInCar

    ret


; Check the passenger clearance and departure conditions.
TrainDepartInCar:
jr_003_656a:
    ld hl, TrainPassFlags
    add hl, bc
    ld a, [hl]
    push bc
    call ReadObjFlag
    pop bc
    jp z, TrainKickOut

    ld hl, wTrainRecs+1
    add hl, de
    ld a, [hl]
    sub CityNameGap
    ld [wTrainName], a
    ld a, [hl]
    cp CityNY
    jr c, TrainDepartWhistle

    push bc
    call TestEscapePlan
    pop bc
    ld a, [wC2EscapeReady]
    cp $01
    jr z, TrainDepartWhistle

    call TrainWhistle
    ld a, $e1
    call ShowMsg2 ; Message Text17Message61: JUST BEFORE THE / DOORS CLOSE, / STOGIE JUMPS / ONTO THE TRAIN![END]
    ld a, $09
    call PlayAudio
    ld a, FxStogie
    ld [wFxId], a
    call SaveC2Effect
    ld a, $78
    call WaitTicks
    ld a, $e2
    call ShowMsg2 ; Message Text17Message62: "HEY, DIS TRAIN / DON'T GO NO PLACE / THAT YOU SHOULD BEGOIN'!" HE SAYS / THROUGH A C...
    ld a, $05
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $3c
    call WaitTicks
    call ResumeTextUI
    call PlayExitEffect
    ret


; Announce a permitted departure.
TrainDepartWhistle:
jr_003_65c7:
    call TrainWhistle
    ret

; Preserve BC while announcing the whistle, then update visibility and close the train doors.
TrainWhistle:
C2SchedMsg32:


Call_003_65cb:
    push bc
    ld a, $32
    call ShowMsg1 ; Message Text14Message32: YOU HEAR A TRAIN / WHISTLE IN THE / DISTANCE.[END]
    pop bc

; Update train visibility, clear the door states, and announce closure.
CloseTrainDoors:

jr_003_65d2:
    call ResetObjScroll
    push bc
    ld a, $1b
    call PlayAudio
    ld a, $50
    call WaitTicks
    call ShowTrainObj
    pop bc
    push bc
    ld hl, TrainStateB
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    push bc
    ld hl, TrainStateC
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    ld a, $12
    call PlayAudio
    call RefreshStateView
    ld a, $31
    call ShowMsg1 ; Message Text14Message31: THE DOORS OF THE / TRAIN CLOSE FOR / DEPARTURE.[END]
    ret

; Clear the paired passenger states, move to the platform, announce the fare-related removal, and close the doors.
TrainKickOut:
C2SchedMove:


Jump_003_6606:
    push bc
    ld hl, TrainDropA
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    push bc
    ld hl, TrainDropB
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    push bc
    ld hl, TrainPlatforms
    add hl, bc
    ld a, [hl]
    call EnterRoom
    ld a, $17
    call PlayAudio
    ld a, $74
    call ShowMsg2 ; Message Text16Message74: "IF YOU'VE GOT NO / CASH, THEN YOU / CAN'T RIDE THE / TRAIN!"[PAGE] / WITH THAT THE O...
    pop bc
    call TrainWhistle
    ret

; On phase fifteen, clear train access; show departure at the platform or run the journey and arrival for passengers.
TrainRide:
C2SchedPhase0F:


    ld c, e
    srl c
    srl c
    ld b, $00
    push bc
    ld hl, TrainPassFlags
    add hl, bc
    ld a, [hl]
    call ClearObjFlag
    pop bc
    push bc
    ld hl, TrainStateA
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    pop bc
    push bc
    ld hl, TrainAccessFlags
    add hl, bc
    ld a, [hl]
    call ClearObjFlag
    pop bc
    ld a, [wRoomId]
    ld hl, TrainPlatforms
    add hl, bc
    cp [hl]
    jr z, TrainLeavesView

    ld hl, TrainCarA
    add hl, bc
    cp [hl]
    jr z, TrainRideCar

    ld hl, TrainCarB
    add hl, bc
    cp [hl]
    jr z, TrainRideCar

    ret

; Show the train departing while Ace remains on the platform.
TrainLeavesView:


jr_003_6670:
    call ResetObjScroll
    ld a, C2VisIdPlatformTrainAndDoor
    call ClearObjVisible
    ld a, $1b
    call PlayAudio
    ld a, $93
    call ShowMsg0 ; Message Text13Message13: THE TRAIN SOUNDS / ITS WHISTLE FOR / DEPARTURE.[END]
    ld a, $14
    call PlayAudio
    call MapReverseBank
    call RoomCueCall
    call DrawC2Panel
    ld a, $a2
    call ShowMsg0 ; Message Text13Message22: THE TRAIN PULLS / AWAY, LEAVING YOU / BEHIND IN A CLOUD / OF SMOKE.[END]
    ld a, [wSceneId]
    dec a
    ld [wSceneId], a
    ret

; Run the passenger journey, enter the destination, and set the completed ride flag.
TrainRideCar:


jr_003_669d:
    call ResetObjScroll
    push bc
    ld a, $14
    call PlayAudio
    ld a, $8b
    call ShowMsg2 ; Message Text17Message0B: WITH A LURCH, / THE TRAIN LEAVES / THE STATION AND / SPEEDS TOWARDS / ITS DESTINATION...
    call BeginTrainRide
    ld a, $8f
    call ShowMsg2 ; Message Text17Message0F: YOU LOOK ABOUT THETRAIN AND DRIFT / QUICKLY OFF TO / SLEEP...[END]
    ld a, $b4
    call WaitTicks
    call EndTrainRide
    ld a, $95
    call ShowMsg2 ; Message Text17Message15: YOU RUB THE SLEEP / FROM YOUR EYES...[PAGE] / YOU LOOK ABOUT / YOUR SEAT MAKING / SUR...
    ld a, C2VisIdPlatformTrainAndDoor
    call SetObjVisible
    pop bc
    push bc
    ld hl, TrainPrevRooms
    add hl, bc
    ld a, [hl]
    ld [wPrevRoom], a
    ld hl, TrainDestRooms
    add hl, bc
    ld a, [hl]
    call EnterRoom
    ld a, C2TrainTaken
    call SetObjFlag
    call RoomCueCall
    pop bc
    ld a, [wTrainName]
    ld [wTextName0], a
    ld a, $0d
    call ShowMsg3 ; Message Text18Message0D: THE TRAIN ARRIVED / AT [OBJECT_WRAM:37C5] / STATION.[END]
    ld a, C2EndFlag
    call ReadObjFlag
    cp $00
    ret z

    jp GateTrainEnd

; --- c2_train_anim.asm ---

; Preserve BC/DE; play the passenger-room animation and apply fade steps one through four.
BeginTrainRide:
BeginC2SchedAnim:


Call_003_66f6:
    push de
    push bc
    ld a, [wRoomId]
    and $01
    jr z, TrainRideBeginEven

    call PlayTrainOdd
    call FadeTrainOddIn
    jr TrainRideBeginRestore

; Play the even-room passenger animation and fade in.
TrainRideBeginEven:
jr_003_6707:
    call PlayTrainEven
    call FadeTrainEvenIn

; Restore saved registers after the ride-start animation.
TrainRideBeginRestore:
jr_003_670d:
    pop bc
    pop de
    ret

; Preserve BC/DE; restore passenger-room palettes using fade steps three through zero.
EndTrainRide:
EndC2SchedAnim:


Call_003_6710:
    push de
    push bc
    ld a, [wRoomId]
    and $01
    jr z, TrainRideEndEven

    call FadeTrainOddOut
    jr TrainRideEndRestore

; Fade out the even-room passenger palettes.
TrainRideEndEven:
jr_003_671e:
    call FadeTrainEvenOut

; Restore saved registers after the ride-end fade.
TrainRideEndRestore:
jr_003_6721:
    pop bc
    pop de
    ret

; --- c2_train_fade.asm ---

; Apply odd passenger-room fade steps one through four, waiting thirty ticks after each palette request.
FadeTrainOddIn:
FadeC2OddIn:


Call_003_6724:
    ld de, TrainFadeInFirstPointerOffset

; Apply the next odd-room fade-in palette pair.
TrainOddFadeInStep:
jr_003_6727:
    ld hl, TrainOddBgRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    call CopyTrainBg
    ld hl, TrainOddObjRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    push de
    call CopyTrainObj
    call RequestPals
    ld a, TrainFadeWaitTicks
    call WaitTicks
    pop de
    inc e
    inc e
    ld a, TrainFadeInEndPointerOffset
    cp e
    jr nz, TrainOddFadeInStep

    ret

; Apply odd passenger-room fade steps three through zero, waiting thirty ticks after each palette request.
FadeTrainOddOut:
FadeC2OddOut:


Call_003_6757:
    ld de, TrainFadeOutFirstPointerOffset

; Apply the next odd-room fade-out palette pair.
TrainOddFadeOutStep:
jr_003_675a:
    ld hl, TrainOddBgRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    call CopyTrainBg
    ld hl, TrainOddObjRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    push de
    call CopyTrainObj
    call RequestPals
    ld a, TrainFadeWaitTicks
    call WaitTicks
    pop de
    dec e
    dec e
    bit 7, e
    jr z, TrainOddFadeOutStep

    ret

; Apply even passenger-room fade steps one through four, waiting thirty ticks after each palette request.
FadeTrainEvenIn:
FadeC2EvenIn:


Call_003_6789:
    ld de, TrainFadeInFirstPointerOffset

; Apply the next even-room fade-in palette pair.
TrainEvenFadeInStep:
jr_003_678c:
    ld hl, TrainEvenBgRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    call CopyTrainBg
    ld hl, TrainEvenObjRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    push de
    call CopyTrainObj
    call RequestPals
    ld a, TrainFadeWaitTicks
    call WaitTicks
    pop de
    inc e
    inc e
    ld a, TrainFadeInEndPointerOffset
    cp e
    jr nz, TrainEvenFadeInStep

    ret

; Apply even passenger-room fade steps three through zero, waiting thirty ticks after each palette request.
FadeTrainEvenOut:
FadeC2EvenOut:


Call_003_67bc:
    ld de, TrainFadeOutFirstPointerOffset

; Apply the next even-room fade-out palette pair.
TrainEvenFadeOutStep:
jr_003_67bf:
    ld hl, TrainEvenBgRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    call CopyTrainBg
    ld hl, TrainEvenObjRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    push de
    call CopyTrainObj
    call RequestPals
    ld a, TrainFadeWaitTicks
    call WaitTicks
    pop de
    dec e
    dec e
    bit 7, e
    jr z, TrainEvenFadeOutStep

    ret

; Copy the first seven background palettes from wTrainPalPtr; keep the eighth working palette.
CopyTrainBg:
CopyC2FadeBg:


Call_003_67ee:
    ld bc, $0000

; Copy the next train background-palette byte.
TrainCopyBgPalByte:
jr_003_67f1:
    ld a, [wTrainPalPtr]
    ld l, a
    ld a, [wTrainPalPtr+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld hl, wBgPal
    add hl, bc
    ld [hl], a
    inc c
    ld a, TrainFadeBgCopyBytes
    cp c
    jr nz, TrainCopyBgPalByte

    ret

; Copy only the first object palette from wTrainPalPtr; leave later working palettes unchanged.
CopyTrainObj:
CopyC2FadeObj:


Call_003_6807:
    ld bc, $0000

; Copy the next train object-palette byte.
TrainCopyObjPalByte:
jr_003_680a:
    ld a, [wTrainPalPtr]
    ld l, a
    ld a, [wTrainPalPtr+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld hl, wObjPal
    add hl, bc
    ld [hl], a
    inc c
    ld a, TrainFadeObjCopyBytes
    cp c
    jr nz, TrainCopyObjPalByte

    ret

; --- c2_train_fare.asm ---

; Find the current train room, select its full destination name, and store its indexed fare in wScriptValue0 and wTrainFare.
PickTrainFare:
PickC2SchedCost:


    ld de, $0000

; Scan passenger room IDs for the current room.
TrainFareFindRoom:
jr_003_6823:
    ld a, [wRoomId]
    ld hl, TrainCarA
    add hl, de
    cp [hl]
    jr z, TrainFareStore

    ld hl, TrainCarB
    add hl, de
    cp [hl]
    jr z, TrainFareStore

    inc e
    ld a, TrainCount
    cp e
    jr nz, TrainFareFindRoom

    ret


; Store the selected destination name and fare.
TrainFareStore:
jr_003_683b:
    sla e
    sla e
    ld hl, wTrainRecs+1
    add hl, de
    ld a, [hl]
    sub CityNameGap
    ld [wTextName0], a
    and $07
    ld e, a
    ld hl, TrainFares
    add hl, de
    ld a, [hl]
    ld [wScriptValue0], a
    ld [wTrainFare], a
    ret

; --- c2_train_sprite.asm ---

; For the odd passenger room, play animation $70 eight times at sprite position $20, zero.
PlayTrainOdd:
PlayC2Anim70:


Call_003_6858:
    ld c, $08

; Play the next odd-room train sprite animation.
TrainOddSpriteNext:
jr_003_685a:
    ld a, $20
    ldh [hSpriteX], a
    ld a, $00
    ldh [hSpriteY], a
    push bc
    ld a, $70
    call PlayBankAnim
    pop bc
    dec c
    jr nz, TrainOddSpriteNext

    ret

; For the even passenger room, play animation $71 eight times at sprite position $40, zero.
PlayTrainEven:
PlayC2Anim71:


Call_003_686d:
    ld c, $08

; Play the next even-room train sprite animation.
TrainEvenSpriteNext:
jr_003_686f:
    ld a, $40
    ldh [hSpriteX], a
    ld a, $00
    ldh [hSpriteY], a
    push bc
    ld a, $71
    call PlayBankAnim
    pop bc
    dec c
    jr nz, TrainEvenSpriteNext

    ret

; --- c2_train_fares.asm ---
; Dollar fares for the five destination IDs; valid schedule destinations select indices 0..4.
; Keep the five-byte layout: higher indices would read the following status table.

TrainFares:
C2SchedCosts:
    db $14 ; Las Vegas: 20 dollars.
    db $14 ; Chicago: 20 dollars.
    db $23 ; New York: 35 dollars.
    db $0f ; Los Angeles: 15 dollars.
    db $0f ; St. Louis: 15 dollars.

; --- c2_train_status.asm ---
; Display status for phases 0..15 of the sixteen-tick train window.

TrainTextIds:
C2SchedCodes:
    ; Phase 0..3.
    db TrainIn, TrainIn, TrainIn, TrainIn
    ; Phase 4.
    db TrainHere
    ; Phase 5..12.
    db TrainBoard, TrainBoard, TrainBoard, TrainBoard, TrainBoard, TrainBoard, TrainBoard, TrainBoard
    ; Phase 13.
    db TrainLeave
    ; Phase 14..15.
    db TrainOut, TrainOut

; --- c2_train_pal_tbl.asm ---

TrainOddBgRefs:
C2OddBgPtrs:
    dw TrainOddBg0
    dw TrainOddBg1
    dw TrainOddBg2
    dw TrainOddBg3
    dw TrainOddBg4

TrainEvenBgRefs:
C2EvenBgPtrs:
    dw TrainEvenBg0
    dw TrainEvenBg1
    dw TrainEvenBg2
    dw TrainEvenBg3
    dw TrainEvenBg4

TrainOddObjRefs:
C2OddObjPtrs:
    dw TrainOddObj0
    dw TrainOddObj1
    dw TrainOddObj2
    dw TrainOddObj3
    dw TrainOddObj4

TrainEvenObjRefs:
C2EvenObjPtrs:
    dw TrainEvenObj0
    dw TrainEvenObj1
    dw TrainEvenObj2
    dw TrainEvenObj3
    dw TrainEvenObj4

; --- c2_train_rows.asm ---

; Stored duplicate train numbers; no direct reader has been recovered.
TrainNumCopy:
    db $02, $03, $04, $05, $06, $07, $08, $09

; Text row Y coordinates.
TrainRowYs:
C2SchedLines:
    db $03, $05, $07

; --- c2_train_pass.asm ---

; Read a matched passenger-room clearance flag; an unmatched room returns Z without a flag read.
; The unmatched return has A=TrainCount and Z from the final count comparison.
ReadTrainPass:
TestC2SchedRoom:

Call_003_68ca:
    ld de, $0000

; Scan passenger room IDs before reading clearance.
TrainPassFindRoom:
jr_003_68cd:
    ld a, [wRoomId]
    ld hl, TrainCarA
    add hl, de
    cp [hl]
    jr z, TrainPassReadFlag

    ld hl, TrainCarB
    add hl, de
    cp [hl]
    jr z, TrainPassReadFlag

    inc e
    ld a, TrainCount
    cp e
    jr nz, TrainPassFindRoom

    ret


; Read the clearance flag for the matching train.
TrainPassReadFlag:
jr_003_68e5:
    ld hl, TrainPassFlags
    add hl, de
    ld a, [hl]
    call ReadObjFlag
    ret

; --- c2_train_times.asm ---

; Train numbers for record indices 0..7.
C2TrainNums:
C2SchedKinds:
    db $02
jr_003_68ef:
    db $03
jr_003_68f0:
    db $04, $05, $06, $07, $08, $09

TrainRefs:
C2SchedPtrs:
    dw Train2Times
    dw Train3Times
    dw Train4Times
    dw Train5Times
    dw Train6Times
    dw Train7Times
    dw Train8Times
    dw Train9Times

; Train 2: arrival tick, destination; active window starts four ticks before arrival.

Train2Times:
C2Sched0:
    db $04, CityLV
    db $16, CityNY
    db $28, CityLA
    db $38, CityNY
    db $4a, CitySTL
    db $5a, CityLV
    db $6c, CityNY
    db $80, CitySTL
    db $92, CityLV
    db $a6, CitySTL
    db $ba, CityLA
    db $cb, CityNY
    db $db, CityLV
    db $f4, CitySTL
    db $ff

; Train 3: arrival tick, destination; active window starts four ticks before arrival.

Train3Times:
C2Sched1:
    db $11, CityLV
    db $23
jr_003_6926:
    db CityNY
    db $39
jr_003_6928:
    db CityLA
    db $4c, CityLV
    db $60, CityNY
    db $75, CityLV
    db $8b, CityLA
    db $9b, CityNY
    db $ab, CityNY
    db $bb, CityLV
    db $cb, CityLA
    db $e3, CitySTL
    db $f3, CityLA
    db $ff

; Train 4: arrival tick, destination; active window starts four ticks before arrival.

Train4Times:
C2Sched2:
    db $0b, CitySTL
    db $1f, CityLV
    db $2f, CityLV
    db $43, CityNY
    db $57, CitySTL
    db $67, CityLV
    db $7a, CityLA
    db $8d, CitySTL
    db $a7, CityLA
    db $bb, CityNY
    db $cb, CityLV
    db $db, CityNY
    db $f1, CityNY
    db $ff

; Train 5: arrival tick, destination; active window starts four ticks before arrival.

Train5Times:
C2Sched3:
    db $08, CityNY
    db $19, CityLA
    db $29, CitySTL
    db $3c, CityLV
    db $50, CityLA
    db $63, CityLA
    db $73, CityNY
    db $83, CityLV
    db $9e, CityLV
    db $ae, CityLV
    db $c2, CitySTL
    db $d8, CityLA
    db $e9, CityLV
    db $ff

; Train 6: arrival tick, destination; active window starts four ticks before arrival.

Train6Times:
C2Sched4:
    db $0e, CitySTL
    db $1f, CityNY
    db $2f, CityLA
    db $3f, CityCHG
    db $53, CityLA
    db $64, CityNY
    db $75, CityCHG
    db $89, CitySTL
    db $9c, CitySTL
    db $ae, CityNY
    db $c0, CityCHG
    db $d3, CityLA
    db $e5, CityLA
    db $ff

; Train 7: arrival tick, destination; active window starts four ticks before arrival.

Train7Times:
C2Sched5:
    db $08, CityLA
    db $1b, CitySTL
    db $2e, CityCHG
    db $42, CityNY
    db $56, CityNY
    db $6b, CitySTL
    db $7f, CityLA
    db $90, CityCHG
    db $a0, CityCHG
    db $b2, CitySTL
    db $c5, CityLA
    db $d8, CityCHG
    db $e8, CityCHG
    db $ff

; Train 8: arrival tick, destination; active window starts four ticks before arrival.

Train8Times:
C2Sched6:
    db $04, CityCHG
    db $14, CityLA
    db $29, CitySTL
    db $39, CityLA
    db $4c, CityCHG
    db $5c, CitySTL
    db $71, CityLA
    db $82, CityCHG
    db $9d, CityNY
    db $b0, CityCHG
    db $c0, CityNY
    db $d5, CityNY
    db $e6, CityCHG
    db $ff

; Train 9: arrival tick, destination; active window starts four ticks before arrival.

Train9Times:
C2Sched7:
    db $0e, CityCHG
    db $1e, CityCHG
    db $32, CityNY
    db $46, CitySTL
    db $58, CityCHG
    db $68, CityCHG
    db $7b, CityNY
    db $8d, CityNY
    db $a8, CityLA
    db $b8, CityLA
    db $cd, CityCHG
    db $e3, CitySTL
    db $f3, CityNY
    db $ff


; --- c2_train_rooms.asm ---

; Train access flags, indexed in train-number order.
TrainAccessFlags:
C2SchedObjs:
    db C2Train2AccessEnabled, C2Train3AccessEnabled, C2Train4AccessEnabled, C2Train5AccessEnabled
    db C2Train6AccessEnabled, C2Train7AccessEnabled, C2Train8AccessEnabled, C2Train9AccessEnabled

; Passenger clearance flags; set after payment or the original no-cash bypass.
TrainPassFlags:
C2SchedTests:
    db C2Train2PassGranted, C2Train3PassGranted, C2Train4PassGranted, C2Train5PassGranted
    db C2Train6PassGranted, C2Train7PassGranted, C2Train8PassGranted, C2Train9PassGranted

; Destination platform rooms selected after a journey.
TrainDestRooms:
C2SchedNextRooms:
    db RoomVegasPlatform6, RoomVegasPlatform7, RoomVegasPlatform8, RoomVegasPlatform9, RoomChicagoPlatform2, RoomChicagoPlatform3, RoomChicagoPlatform4, RoomChicagoPlatform5

; Previous-room values written at the destination platform.
TrainPrevRooms:
C2SchedPrevRooms:
    db RoomTrain6A, RoomTrain7A, RoomTrain8A, RoomTrain9A, RoomTrain2A, RoomTrain3A, RoomTrain4A, RoomTrain5A

; First passenger room for each train.
TrainCarA:
C2SchedRoomsA:
    db RoomTrain2A, RoomTrain3A
jr_003_6a02:
    db RoomTrain4A, RoomTrain5A, RoomTrain6A, RoomTrain7A, RoomTrain8A, RoomTrain9A

; Second passenger room for each train.
TrainCarB:
C2SchedRoomsB:
    db RoomTrain2B, RoomTrain3B, RoomTrain4B, RoomTrain5B
jr_003_6a0c:
    db RoomTrain6B, RoomTrain7B, RoomTrain8B, RoomTrain9B

; Departure platform room for each train.
TrainPlatforms:
C2SchedRoomsC:
    db RoomChicagoPlatform2, RoomChicagoPlatform3, RoomChicagoPlatform4, RoomChicagoPlatform5, RoomVegasPlatform6, RoomVegasPlatform7, RoomVegasPlatform8, RoomVegasPlatform9

; --- c2_train_states.asm ---

; First state bits set for boarding and retained while doors close.
TrainStateA:
C2SchedStatesA:
    db C2StateTrain2PlatformView, C2StateTrain3PlatformView, C2StateTrain4PlatformView, C2StateTrain5PlatformView
    db C2StateTrain6PlatformView, C2StateTrain7PlatformView, C2StateTrain8PlatformView, C2StateTrain9PlatformView

; Second state bits set for boarding and cleared when doors close.
TrainStateB:
C2SchedStatesB:
    db C2StateTrain2BoardingDoorOpen, C2StateTrain3BoardingDoorOpen, C2StateTrain4BoardingDoorOpen, C2StateTrain5BoardingDoorOpen
    db C2StateTrain6BoardingDoorOpen, C2StateTrain7BoardingDoorOpen, C2StateTrain8BoardingDoorOpen, C2StateTrain9BoardingDoorOpen

; Third state bits set for boarding and cleared when doors close.
TrainStateC:
C2SchedStatesC:
    db C2StateTrain2DestinationDoorOpen, C2StateTrain3DestinationDoorOpen, C2StateTrain4DestinationDoorOpen, C2StateTrain5DestinationDoorOpen
    db C2StateTrain6DestinationDoorOpen, C2StateTrain7DestinationDoorOpen, C2StateTrain8DestinationDoorOpen, C2StateTrain9DestinationDoorOpen

; First passenger-room state bits cleared when a rider is removed.
TrainDropA:
C2SchedDropA:
jr_003_6a30:
    db C2StateTrain2AFareView, C2StateTrain3AFareView, C2StateTrain4AFareView, C2StateTrain5AFareView
    db C2StateTrain6AFareView, C2StateTrain7AFareView
jr_003_6a36:
    db C2StateTrain8AFareView, C2StateTrain9AFareView

; Second passenger-room state bits cleared when a rider is removed.
TrainDropB:
C2SchedDropB:
    db C2StateTrain2BFareView, C2StateTrain3BFareView, C2StateTrain4BFareView, C2StateTrain5BFareView
    db C2StateTrain6BFareView, C2StateTrain7BFareView, C2StateTrain8BFareView, C2StateTrain9BFareView

; --- c2_train_pals.asm ---

; Each row is one four-color palette in the original byte order.

; odd passenger room, fade step 0.
TrainOddBg0:
C2OddBg0:
    db $00, $00, $29, $25, $ce, $39, $ff, $7f
    db $00, $00, $ce, $39, $37, $01, $ff, $7f
    db $00, $00, $ce, $39, $39, $67, $ff, $7f
    db $00, $00, $ce, $39, $da, $4a, $bf, $67
    db $00, $00, $29, $25, $ae, $00, $37, $01
    db $00, $00, $29, $25, $57, $01, $df, $02
    db $00, $00, $29, $25, $37, $01, $c0, $02
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; odd passenger room, fade step 1.
TrainOddBg1:
C2OddBg1:
    db $00, $00, $e7, $1c, $8c, $31, $7b, $6f
    db $00, $00, $8c, $31, $f4, $00, $7b, $6f
    db $00, $00, $8c, $31, $d6, $5a, $7b, $6f
    db $00, $00, $8c, $31, $77, $3e, $5d, $5b
    db $00, $00, $e7, $1c, $ac, $00, $37, $01
    db $00, $00, $e7, $1c, $37, $01, $9c, $02
    db $00, $00, $e7, $1c, $37, $01, $60, $02
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; odd passenger room, fade step 2.
TrainOddBg2:
C2OddBg2:
    db $00, $00, $a5, $14, $29, $25, $d6, $5a
    db $00, $00, $29, $25, $b0, $00, $d6, $5a
    db $00, $00, $29, $25, $52, $4a, $d6, $5a
    db $00, $00, $29, $25, $f3, $2d, $fa, $4a
    db $00, $00, $a5, $14, $8a, $00, $b0, $00
    db $00, $00, $a5, $14, $b0, $00, $58, $02
    db $00, $00, $a5, $14, $b0, $00, $e0, $01
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; odd passenger room, fade step 3.
TrainOddBg3:
C2OddBg3:
    db $00, $00, $63, $0c, $e7, $1c, $52, $4a
    db $00, $00, $e7, $1c, $6d, $00, $52, $4a
    db $00, $00, $e7, $1c, $ef, $3d, $52, $4a
    db $00, $00, $e7, $1c, $90, $21, $98, $3e
    db $00, $00, $63, $0c, $68, $00, $6d, $00
    db $00, $00, $63, $0c, $6d, $00, $15, $02
    db $00, $00, $63, $0c, $6d, $00, $80, $01
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; odd passenger room, fade step 4.
TrainOddBg4:
C2OddBg4:
    db $00, $00, $21, $04, $84, $10, $ce, $39
    db $00, $00, $84, $10, $29, $00, $ce, $39
    db $00, $00, $84, $10, $8c, $31, $ce, $39
    db $00, $00, $84, $10, $0c, $11, $15, $2e
    db $00, $00, $21, $04, $26, $00, $29, $00
    db $00, $00, $21, $04, $29, $00, $b1, $01
    db $00, $00, $21, $04, $29, $00, $00, $01
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; even passenger room, fade step 0.
TrainEvenBg0:
C2EvenBg0:
    db $00, $00, $29, $25, $ce, $39, $ff, $7f
    db $00, $00, $ce, $39, $37, $01, $ff, $7f
    db $00, $00, $ce, $39, $39, $67, $ff, $7f
    db $00, $00, $ce, $39, $da, $4a, $bf, $67
    db $00, $00, $29, $25, $ae, $00, $37, $01
    db $00, $00, $ce, $39, $37, $02, $20, $7e
    db $00, $00, $29, $25, $37, $01, $c0, $02
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; even passenger room, fade step 1.
TrainEvenBg1:
C2EvenBg1:
    db $00, $00, $e7, $1c, $8c, $31, $7b, $6f
    db $00, $00, $8c, $31, $f4, $00, $7b, $6f
    db $00, $00, $8c, $31, $d6, $5a, $7b, $6f
    db $00, $00, $8c, $31, $77, $3e, $5d, $63
    db $00, $00, $e7, $1c, $ac, $00, $f4, $00
    db $00, $00, $8c, $31, $d4, $01, $c0, $69
    db $00, $00, $e7, $1c, $f4, $00, $60, $02
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; even passenger room, fade step 2.
TrainEvenBg2:
C2EvenBg2:
    db $00, $00, $a5, $14, $29, $25, $d6, $5a
    db $00, $00, $29, $25, $b0, $00, $d6, $5a
    db $00, $00, $29, $25, $52, $4a, $d6, $5a
    db $00, $00, $29, $25, $f3, $2d, $fa, $4a
    db $00, $00, $a5, $14, $8a, $00, $b0, $00
    db $00, $00, $29, $25, $50, $01, $c0, $69
    db $00, $00, $a5, $14, $b0, $00, $e0, $01
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; even passenger room, fade step 3.
TrainEvenBg3:
C2EvenBg3:
    db $00, $00, $63, $0c, $e7, $1c, $52, $4a
    db $00, $00, $e7, $1c, $6d, $00, $52, $4a
    db $00, $00, $e7, $1c, $ef, $3d, $52, $4a
    db $00, $00, $e7, $1c, $90, $21, $98, $3e
    db $00, $00, $63, $0c, $68, $00, $6d, $00
    db $00, $00, $e7, $1c, $ed, $00, $60, $55
    db $00, $00, $63, $0c, $6d, $00, $80, $01
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; even passenger room, fade step 4.
TrainEvenBg4:
C2EvenBg4:
    db $00, $00, $21, $04, $84, $10, $ce, $39
    db $00, $00, $84, $10, $29, $00, $ce, $39
    db $00, $00, $84, $10, $8c, $31, $ce, $39
    db $00, $00, $84, $10, $0c, $11, $15, $2e
    db $00, $00, $21, $04, $46, $00, $29, $00
    db $00, $00, $84, $10, $69, $00, $00, $3d
    db $00, $00, $21, $04, $29, $00, $00, $01
    ; Stored palette 7 is not copied by the train fade loader.
    db $00, $00, $a9, $0c, $f3, $2d, $5f, $5b

; odd passenger room, fade step 0.
TrainOddObj0:
C2OddObj0:
    db $e0, $7f, $80, $7d, $a0, $7e, $ff, $7f
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $b1, $00, $98, $01

; odd passenger room, fade step 1.
TrainOddObj1:
C2OddObj1:
    db $e0, $7f, $00, $6d, $20, $6e, $7b, $6f
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $2d, $00, $14, $01

; odd passenger room, fade step 2.
TrainOddObj2:
C2OddObj2:
    db $e0, $7f, $80, $5c, $a0, $5d, $f7, $5e
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $09, $00, $90, $00

; odd passenger room, fade step 3.
TrainOddObj3:
C2OddObj3:
    db $e0, $7f, $00, $4c, $20, $4d, $73, $4e
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $05, $00, $0c, $00

; odd passenger room, fade step 4.
TrainOddObj4:
C2OddObj4:
    db $e0, $7f, $00, $3c, $a0, $3c, $ef, $3d
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $01, $00, $08, $00

; even passenger room, fade step 0.
TrainEvenObj0:
C2EvenObj0:
    db $e0, $7f, $80, $7d, $a0, $7e, $ff, $7f
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $b1, $00, $98, $01

; even passenger room, fade step 1.
TrainEvenObj1:
C2EvenObj1:
    db $e0, $7f, $00, $6d, $20, $6e, $7b, $6f
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $2d, $00, $14, $01

; even passenger room, fade step 2.
TrainEvenObj2:
C2EvenObj2:
    db $e0, $7f, $80, $5c, $a0, $5d, $f7, $5e
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $09, $00, $90, $00

; even passenger room, fade step 3.
TrainEvenObj3:
C2EvenObj3:
    db $e0, $7f, $00
jr_003_6d43:
    db $4c
jr_003_6d44:
    db $20, $4d, $73, $4e
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $05, $00, $0c, $00

; even passenger room, fade step 4.
TrainEvenObj4:
C2EvenObj4:
    db $e0, $7f, $00, $3c, $a0, $3c, $ef, $3d
    ; Stored palette 1 is not copied by the train fade loader.
    db $e0, $7f, $00, $00, $01, $00, $08, $00
