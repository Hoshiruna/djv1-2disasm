
; Visit eight records; dispatch each selected phase and clear access for records marked TrainNone.
ApplyTrains:
ApplyC2Schedule:

Call_003_63cc:
    ld de, $0000

; Inspect the next scheduled train record.
TrainApplyNextRecord:
jr_003_63cf:
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
jr_003_63dd:
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
jr_003_63e7:
    call ClearTrainAccess
    jr TrainApplyAdvance

; Dispatch the selected train phase through the sixteen-entry table; DE is the four-byte record offset.
DispatchTrain:
DispatchC2Sched:

Call_003_63ec:
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
