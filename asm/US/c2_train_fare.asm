
; Find the current train room, select its full destination name, and store its indexed fare in wScriptValue0 and wTrainFare.
PickTrainFare:
PickC2SchedCost:


    ld de, $0000

jr_003_6823:
    ld a, [wRoomId]
    ld hl, TrainCarA
    add hl, de
    cp [hl]
    jr z, jr_003_683b

    ld hl, TrainCarB
    add hl, de
    cp [hl]
    jr z, jr_003_683b

    inc e
    ld a, TrainCount
    cp e
    jr nz, jr_003_6823

    ret


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
