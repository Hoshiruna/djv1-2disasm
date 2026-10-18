
; Clear all train records, then select one arrival window for each of the eight trains.
BuildTrains:
BuildC2Schedule:


Call_003_62a3:
    call ClearTrains
    xor a
    ld [wTrainIndex], a

; Select a time window for the next of eight trains.
TrainBuildNextRecord:
jr_003_62aa:
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
