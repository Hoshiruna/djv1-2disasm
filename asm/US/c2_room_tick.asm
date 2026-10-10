
; Increment counter zero; in rooms $15 through $2f rebuild and apply the eight-record schedule.
StepC2RoomTick:

Call_003_623f:
    ld a, [wC2Counters]
    inc a
    ld [wC2Counters], a
    ld a, [wRoomId]
    cp $15
    ret c

    cp $30
    ret nc

    call BuildC2Schedule
    call Call_003_63c7
    ret
