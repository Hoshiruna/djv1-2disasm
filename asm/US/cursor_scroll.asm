
; Internal scroll branch: A = next scroll value; draw a frame, then fall through to ScrollCursor.
StepCursorScroll:

jr_001_6124:
    ld [wSpriteScrollY], a
    ld [$c184], a
    call DrawCursorRaw
    call DrawRoomObjs
    call SubmitOam

; For selections below $15, use their scroll target; other selections use zero.
ScrollCursor:

Call_001_6133:
    ld a, [wInputSel]
    cp $15
    jr c, jr_001_613d

    xor a
    jr jr_001_6145

; A = selection; read its scroll target; ignore $ff, animate the two endpoints and assign other targets directly.
ScrollSelection:

Call_001_613d:
jr_001_613d:
    ld e, a
    ld d, $00
    ld hl, CursorScroll
    add hl, de
    ld a, [hl]

jr_001_6145:
    cp $ff
    ret z

    cp $00
    jr z, jr_001_6157

    cp $58
    jr z, jr_001_6157

    ld [wSpriteScrollY], a
    ld [$c184], a
    ret


jr_001_6157:
    ld b, a
    ld a, [wSpriteScrollY]
    cp b
    ret z

    jr c, jr_001_6163

    sub $08
    jr jr_001_6124

jr_001_6163:
    add $08
    jr jr_001_6124
