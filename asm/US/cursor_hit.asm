
; Copy four bounds from the room object pointer, test the cursor, and preserve DE, BC, and HL.
ReadCursorBox:


Call_000_0e8d:
    push de
    push bc
    push hl
    ld de, $0000

; Copy the next of four room-object cursor bounds.
CopyCursorBoundByte:
jr_000_0e93:
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
    jr c, CopyCursorBoundByte

    call TestCursorBox
    pop hl
    pop bc
    pop de
    ret

; Clear result bit seven, then set it when cursor X and Y lie within both inclusive bounds.
TestCursorBox:


Call_000_0eaf:
    ld a, [wStateResult]
    and $7f
    ld [wStateResult], a
    ld hl, wCursorBounds
    ld a, [wCursorX]
    cp [hl]
    jr nc, CursorBoxCheckMaxX

    ret


; Test whether cursor X is at or below its upper bound.
CursorBoxCheckMaxX:
jr_000_0ec1:
    inc hl
    cp [hl]
    jr c, CursorBoxCheckMinY

Call_000_0ec5:
    jr z, CursorBoxCheckMinY

    ret


; Test whether cursor Y reaches its lower bound.
CursorBoxCheckMinY:
jr_000_0ec8:
    inc hl
    ld a, [wCursorY]
    cp [hl]
    jr nc, CursorBoxCheckMaxY

    ret


; Test whether cursor Y is at or below its upper bound.
CursorBoxCheckMaxY:
jr_000_0ed0:
    inc hl
    cp [hl]
    jr c, CursorBoxMarkHit

    jr z, CursorBoxMarkHit

    ret


; Set result bit seven after both coordinates satisfy the bounds.
CursorBoxMarkHit:
jr_000_0ed7:
    ld a, [wStateResult]
    or $80
    ld [wStateResult], a
    ret
