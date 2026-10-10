; Preserve the scene index while loading its palette, then read its background map.
LoadCreditMap:
    push af
    call LoadCreditPal
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, CreditMapPtrs
    add hl, bc
    ld c, l
    ld b, h
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    call ReadBgMap
    ret

; Copy the indexed sixty-four-byte palette to wBgPalNext.
LoadCreditPal:


Call_03e_4019:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, CreditPalPtrs
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld d, $40
    ld hl, wBgPalNext

jr_03e_402a:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_03e_402a

    ret
