
; Advance the schedule clock; in rooms $15..$2f rebuild and apply its eight records.
StepC2Time:
StepC2RoomTick:

Call_003_623f:
    ld a, [wC2Time]
    inc a
    ld [wC2Time], a
    ld a, [wRoomId]
    cp RoomVegasStationLobby
    ret c

    cp RoomChicagoStationFront
    ret nc

    call BuildTrains
    call ApplyTrains
    ret
