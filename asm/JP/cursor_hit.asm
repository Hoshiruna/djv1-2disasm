
; Copy four bounds from the room object pointer, test the cursor, and preserve DE, BC, and HL.
ReadCursorBox:


Call_000_0e82:
    push de
    push bc
    push hl
    ld de, $0000

jr_000_0e88:
    ld a, [wRoomObjPtr]
    ld l, a
    ld a, [wRoomObjPtr+1]
    ld h, a
    add hl, de
    ld a, [hl]
    ld hl, wCursorBounds
    add hl, de
    ld [hl], a
    inc e
    ld a, e
    cp $04
    jr c, jr_000_0e88

    call TestCursorBox
    pop hl
    pop bc
    pop de
    ret

; Clear result bit seven, then set it when cursor X and Y lie within both inclusive bounds.
TestCursorBox:


Call_000_0ea4:
    ld a, [wStateResult]
    and $7f
    ld [wStateResult], a
    ld hl, wCursorBounds
    ld a, [wCursorX]
    cp [hl]
    jr nc, jr_000_0eb6

    ret


jr_000_0eb6:
    inc hl
    cp [hl]
    jr c, jr_000_0ebd

    jr z, jr_000_0ebd

    ret


jr_000_0ebd:
    inc hl
    ld a, [wCursorY]
    cp [hl]
    jr nc, jr_000_0ec5

Call_000_0ec4:
Jump_000_0ec4:
    ret


Call_000_0ec5:
jr_000_0ec5:
    inc hl
    cp [hl]
    jr c, jr_000_0ecc

    jr z, jr_000_0ecc

    ret


jr_000_0ecc:
    ld a, [wStateResult]
    or $80
    ld [wStateResult], a
    ret
