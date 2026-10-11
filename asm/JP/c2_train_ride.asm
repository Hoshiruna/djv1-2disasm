
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
    jr z, jr_003_65d7

    ld hl, TrainCarA
    add hl, bc
    cp [hl]
    jr z, jr_003_656f

    ld hl, TrainCarB
    add hl, bc
    cp [hl]
    jr z, jr_003_656f

    ret


jr_003_656f:
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
    jr c, jr_003_65cc

    push bc
    call TestEscapePlan
    pop bc
    ld a, [wC2EscapeReady]
    cp $01
    jr z, jr_003_65cc

    call TrainWhistle
    ld a, $e1
    call ShowMsg2
    ld a, $09
    call PlayAudio
    ld a, FxStogie
    ld [wFxId], a
    call SaveC2Effect
    ld a, $78
    call WaitTicks
    ld a, $e2
    call ShowMsg2
    ld a, $05
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $3c
    call WaitTicks
    call ResumeTextUI
    call PlayExitEffect
    ret


jr_003_65cc:
    call TrainWhistle
    ret

; Preserve BC while announcing the whistle, then update visibility and close the train doors.
TrainWhistle:
C2SchedMsg32:


Call_003_65d0:
    push bc
    ld a, $32
    call ShowMsg1
    pop bc

jr_003_65d7:
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
    call ShowMsg1
    ret

; Clear the paired passenger states, move to the platform, announce the fare-related removal, and close the doors.
TrainKickOut:
C2SchedMove:


Jump_003_660b:
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
    call ShowMsg2
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
    jr z, jr_003_6675

    ld hl, TrainCarA
    add hl, bc
    cp [hl]
    jr z, jr_003_66a2

    ld hl, TrainCarB
    add hl, bc
    cp [hl]
    jr z, jr_003_66a2

    ret


jr_003_6675:
    call ResetObjScroll
    ld a, $a7
    call ClearObjVisible
    ld a, $1b
    call PlayAudio
    ld a, $93
    call ShowMsg0
    ld a, $14
    call PlayAudio
    call MapReverseBank
    call RoomCueCall
    call DrawC2Panel
    ld a, $a2
    call ShowMsg0
    ld a, [wSceneId]
    dec a
    ld [wSceneId], a
    ret


jr_003_66a2:
    call ResetObjScroll
    push bc
    ld a, $14
    call PlayAudio
    ld a, $8b
    call ShowMsg2
    call BeginTrainRide
    ld a, $8f
    call ShowMsg2
    ld a, $b4
    call WaitTicks
    call EndTrainRide
    ld a, $95
    call ShowMsg2
    ld a, $a7
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
    ld a, $31
    call SetObjFlag
    call RoomCueCall
    pop bc
    ld a, [wTrainName]
    ld [wTextName0], a
    ld a, $0d
    call ShowMsg3
    ld a, C2EndFlag
    call ReadObjFlag
    cp $00
    ret z

    jp GateTrainEnd
