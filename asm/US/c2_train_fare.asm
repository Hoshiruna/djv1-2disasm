
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
