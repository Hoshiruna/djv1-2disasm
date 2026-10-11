
; Visit eight records; dispatch each selected phase and clear access for records marked TrainNone.
ApplyTrains:
ApplyC2Schedule:

Call_003_63c7:
    ld de, $0000

jr_003_63ca:
    ld hl, wTrainRecs+3
    add hl, de
    ld a, [hl]
    cp TrainNone
    jr z, jr_003_63e2

    push de
    call DispatchTrain
    pop de

jr_003_63d8:
    inc e
    inc e
    inc e
    inc e
    ld a, TrainRecsLen
    cp e
    jr nz, jr_003_63ca

    ret


jr_003_63e2:
    call ClearTrainAccess
    jr jr_003_63d8

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
