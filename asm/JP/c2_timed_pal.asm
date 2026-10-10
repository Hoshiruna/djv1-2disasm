
; For one of seven rooms, store its timed palette and clear the result; for other rooms, set the result.
FindC2TimedPal:


Call_003_58e9:
    ld bc, C2TimedRooms

jr_003_58ec:
    ld a, [wRoomId]
    ld e, a
    ld hl, $0000

jr_003_58f3:
    ld a, [bc]
    cp e
    jr z, jr_003_5901

    inc bc
    inc l
    ld a, $07
    cp l
    jr nz, jr_003_58f3

    jp SetResult


jr_003_5901:
    call ClearResult
    ld bc, C2TimedPals
    add hl, bc
    ld a, [hl]
    ld [wC2TimedPal], a
    ret

C2TimedRooms:
    db $38, $3a, $3b, $3c, $3d, $3e, $3f

C2TimedPals:
    db $47, $4a, $43, $44, $45, $46, $48
