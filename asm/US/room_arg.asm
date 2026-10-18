
; Set the result on a room match; otherwise write argument 3 and set flag $83.
SetRoomArg3:


    call ClearResult
    ld a, [wRoomId]
    ld hl, wArg3
    cp [hl]
    jr nz, C1CabChangeRoom

    call SetResult
    ret


; Store the changed destination and set the cab-trip flag.
C1CabChangeRoom:
jr_000_2a2f:
    ld a, [wArg3]
    ld [wRoomId], a
    ld a, C1CabTripMade
    call SetObjFlag
    ret
