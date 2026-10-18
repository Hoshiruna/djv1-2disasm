
; Fill all eight four-byte train records with TrainNone.
ClearTrains:
ClearC2Schedule:


Call_003_6341:
    ld hl, wTrainRecs
    ld a, TrainNone
    ld c, TrainRecsLen

; Fill the next train-record byte with TrainNone.
TrainClearNextByte:
jr_003_6348:
    ld [hl+], a
    dec c
    jr nz, TrainClearNextByte

    ret

; Show the train schedule header from list text seven.
ShowTrainHead:
ShowC2SchedHead:


Call_003_634d:
    ld a, TrainHeadText
    ld [wListMark], a
    call ShowListText
    ret
