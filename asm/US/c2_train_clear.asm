
; Fill all eight four-byte train records with TrainNone.
ClearTrains:
ClearC2Schedule:


Call_003_633c:
    ld hl, wTrainRecs
    ld a, TrainNone
    ld c, TrainRecsLen

jr_003_6343:
    ld [hl+], a
    dec c
    jr nz, jr_003_6343

    ret

; Show the train schedule header from list text seven.
ShowTrainHead:
ShowC2SchedHead:


Call_003_6348:
    ld a, TrainHeadText
    ld [wListMark], a
    call ShowListText
    ret
