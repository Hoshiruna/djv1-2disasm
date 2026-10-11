
; Advance the text row or sprite Y, preserving the regional row-height calculation.
TextNewline:


Call_000_154e:
Jump_000_154e:
    ld a, [wTextMode]
    and $02
    jr nz, jr_000_1573

    ld a, [wTextRow]
    inc a
    ld [wTextRow], a
    add a
    ld b, a
    ld a, [wTextHeight]
    cp b
    jr nz, jr_000_156e

    call ScrollTextBuffer
    ld a, [wTextRow]
    dec a
    ld [wTextRow], a

jr_000_156e:
    xor a
    ld [wTextCol], a
    ret

; Restore the text start column and advance Y, wrapping at $20.
TextSpriteLine:


Jump_000_1573:
jr_000_1573:
    ld a, [wTextStartX]
    ld [wTextX], a
    ld a, [wTextY]
    inc a
    ld [wTextY], a
    ld a, [wTextY]
    cp $20
    ret nz

    xor a
    ld [wTextY], a
    ret

; Scroll and submit the text buffer through the original regional entry flow.
ScrollTextBuffer:


Call_000_158b:
    ; Keep the call and fall-through: this entry runs the following body twice.
    call ScrollTextRow

; Shift the text buffer by one eighteen-tile row, blank the last row, and submit it.
ScrollTextRow:

Call_000_158e:
    ld hl, wTextBuf
    ld bc, wTextBuf+18
    ld d, $7e

jr_000_1596:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, jr_000_1596

    ld d, $12
    ld a, $7f

jr_000_15a0:
    ld [hl+], a
    dec d
    jr nz, jr_000_15a0

    call SubmitTextBuffer
    call SubmitMapQueue
    ret
