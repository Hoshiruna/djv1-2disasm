
; Advance the schedule clock; in rooms $15..$2f rebuild and apply its eight records.
StepC2Time:
StepC2RoomTick:

Call_003_6244:
    ld a, [wC2Time]
    inc a
    ld [wC2Time], a
    ld a, [wRoomId]
    cp $15
    ret c

    cp $30
    ret nc

    call BuildTrains
    call ApplyTrains
    ret
