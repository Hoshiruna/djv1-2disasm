
; Internal scroll branch: A = next scroll value; draw a frame, then fall through to ScrollCursor.
StepCursorScroll:

jr_001_6124:
    ld [wSpriteScrollY], a
    ld [wScrollY], a
    call DrawCursorRaw
    call DrawRoomObjs
    call SubmitOam

; For selections below $15, use their scroll target; other selections use zero.
ScrollCursor:

Call_001_6133:
    ld a, [wInputSel]
    cp $15
    jr c, ScrollSelection

    xor a
    jr ScrollCursorCheckTarget

; A = selection; read its scroll target; ignore $ff, animate the two endpoints and assign other targets directly.
ScrollSelection:

Call_001_613d:
jr_001_613d:
    ld e, a
    ld d, $00
    ld hl, CursorScroll
    add hl, de
    ld a, [hl]

; Ignore $ff, animate regional endpoints, and assign other scroll targets directly.
ScrollCursorCheckTarget:
jr_001_6145:
    cp $ff
    ret z

    cp $00
    jr z, ScrollCursorAnimateEndpoint

    cp $58
    jr z, ScrollCursorAnimateEndpoint

    ld [wSpriteScrollY], a
    ld [wScrollY], a
    ret


; Compare the current sprite scroll with the zero or regional bottom endpoint.
ScrollCursorAnimateEndpoint:
jr_001_6157:
    ld b, a
    ld a, [wSpriteScrollY]
    cp b
    ret z

    jr c, ScrollCursorIncrease

    sub $08
    jr StepCursorScroll

; Increase the scroll by eight before drawing and rechecking the selection.
ScrollCursorIncrease:
jr_001_6163:
    add $08
    jr StepCursorScroll
