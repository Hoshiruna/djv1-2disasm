
; Set the result on a room match; otherwise write argument 3 and set flag $83.
SetRoomArg3:


    call ClearResult
    ld a, [wRoomId]
    ld hl, wArg3
    cp [hl]
    jr nz, jr_000_2b7f

    call SetResult
    ret


jr_000_2b7f:
    ld a, [wArg3]
    ld [wRoomId], a
    ld a, $83
    call SetObjFlag
    ret
