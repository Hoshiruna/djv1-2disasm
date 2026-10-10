
; Return BC = selected tile-map base plus row * 32 + column; preserve HL.
TextMapAddr:


Call_000_1620:
Jump_000_1620:
    push hl
    ld a, [wTextMode]
    bit 0, a
    jr nz, jr_000_162d

    ld bc, $9800
    jr jr_000_1630

jr_000_162d:
    ld bc, $9c00

jr_000_1630:
    ld a, [wTextMapY]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    ld a, [wTextMapX]
    ld c, a
    ld b, $00
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ret
