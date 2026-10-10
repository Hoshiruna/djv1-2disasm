
; Read the next byte into the text column or sprite X, according to text mode.
SetTextX:


Jump_000_11ab:
    ld a, [wTextMode]
    and $02
    jr nz, jr_000_11c2

    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl]
    ld [wTextCol], a
    call AdvanceText1
    ret


jr_000_11c2:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl]
    ld [wTextX], a
    ld [wTextStartX], a
    call AdvanceText1
    ret

; Read the next byte into the text row or sprite Y, according to text mode.
SetTextY:


Jump_000_11d5:
    ld a, [wTextMode]

Call_000_11d8:
    and $02
    jr nz, jr_000_11ec

    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl]
    ld [wTextRow], a
    call AdvanceText1
    ret


jr_000_11ec:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl]
    ld [wTextY], a
    call AdvanceText1
    ret
