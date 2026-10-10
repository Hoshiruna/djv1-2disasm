
; Read an address from the text stream, advance two bytes, load its byte, and clear the digit buffer.
ReadTextValue8:


Call_000_13b3:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

Jump_000_13bf:
    ld a, l

Call_000_13c0:
Jump_000_13c0:
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

jr_000_13d5:
    ld [hl+], a
    dec d
    jr nz, jr_000_13d5

    ret
