
; Read one byte through the text pointer, advance it, and return the saved byte.
ReadTextByte:

Call_000_1722:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wTextByte], a
    ld a, l
    ld [wTextPtr], a
    ld a, h
    ld [wTextPtr+1], a
    ld a, [wTextByte]
    ret
