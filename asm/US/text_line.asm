
; Advance the text row or sprite Y, preserving the regional row-height calculation.
TextNewline:


Call_000_15c7:
Jump_000_15c7:
    ld a, [wTextMode]
    and $02
    jr nz, TextSpriteLine

    ld a, [wTextRow]
    inc a
    ld [wTextRow], a
    ld b, a
    ld a, [wTextHeight]
    cp b
    jr nz, TextLineResetColumn

    call ScrollTextBuffer
    ld a, [wTextRow]
    dec a
    ld [wTextRow], a

; Reset the text column after advancing or scrolling a row.
TextLineResetColumn:
jr_000_15e6:
    xor a
    ld [wTextCol], a
    ret

; Restore the text start column and advance Y, wrapping at $20.
TextSpriteLine:


jr_000_15eb:
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

; Shift the text buffer by one eighteen-tile row, blank the last row, and submit it.
ScrollTextRow:

; Scroll and submit the text buffer through the original regional entry flow.
ScrollTextBuffer:


Call_000_1603:
Jump_000_1603:
    ld hl, wTextBuf
    ld bc, wTextBuf+18
    ld d, $7e

; Copy the next tile from the following row.
TextScrollCopyNextTile:
jr_000_160b:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, TextScrollCopyNextTile

Call_000_1611:
    ld d, $12
    ld a, $7f

; Fill the final text-buffer row with blank tiles.
TextScrollBlankLastRow:
jr_000_1615:
    ld [hl+], a
    dec d
    jr nz, TextScrollBlankLastRow

    call SubmitTextBuffer
    call SubmitMapQueue
    ret
