
; Read an address from the text stream, advance two bytes, load its byte, and clear the digit buffer.
ReadTextValue8:


Call_000_1400:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]

Call_000_1409:
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, l
    ld [wTextPtr], a
    ld a, h
    ld [wTextPtr+1], a
    xor a
    ld [$c8eb], a
    ld a, [bc]
    ld [wTextValue], a
    ld hl, wTextNum10000
    ld d, $05
    xor a

jr_000_1422:
    ld [hl+], a
    dec d
    jr nz, jr_000_1422

    ret
