
; Return BC = selected tile-map base plus row * 32 + column; preserve HL.
TextMapAddr:


Call_000_15ab:
    push hl
    ld a, [wTextMode]
    bit 0, a
    jr nz, jr_000_15b8

    ld bc, $9800
    jr jr_000_15bb

jr_000_15b8:
    ld bc, $9c00

jr_000_15bb:
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
