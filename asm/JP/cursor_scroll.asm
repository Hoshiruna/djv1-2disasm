
; Internal scroll branch: A = next scroll value; draw a frame, then fall through to ScrollCursor.
StepCursorScroll:

jr_001_61ab:
    ld [wSpriteScrollY], a
    ld [$c184], a
    call DrawCursorRaw
    call DrawRoomObjs
    call SubmitOam

; For selections below $15, use their scroll target; other selections use zero.
ScrollCursor:

Call_001_61ba:
    ld a, [wInputSel]
    cp $15
    jr c, jr_001_61c4

    xor a
    jr jr_001_61cc

; A = selection; read its scroll target; ignore $ff, animate the two endpoints and assign other targets directly.
ScrollSelection:

Call_001_61c4:
jr_001_61c4:
    ld e, a
    ld d, $00
    ld hl, CursorScroll
    add hl, de
    ld a, [hl]

jr_001_61cc:
    cp $ff
    ret z

    cp $00
    jr z, jr_001_61de

    cp $60
    jr z, jr_001_61de

    ld [wSpriteScrollY], a
    ld [$c184], a
    ret


jr_001_61de:
    ld b, a
    ld a, [wSpriteScrollY]
    cp b
    ret z

    jr c, jr_001_61ea

    sub $08
    jr jr_001_61ab

jr_001_61ea:
    add $08
    jr jr_001_61ab
