
; Select the eight-byte group header, OR zero, and write it back without changing its byte value.
TouchGroup:


Call_000_37ed:
    ld [wArg0], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, wGroupData
    add hl, bc
    ld a, [hl]
    or $00
    ld [hl], a
    ret

; A = group index; retain only bits 0 and 4 of its eight-byte record header.
MaskGroup:


Call_000_37ff:
    ld [wArg0], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl

Call_000_3807:
    add hl, hl
    ld bc, wGroupData
    add hl, bc
    ld a, [hl]
    and $11
    ld [hl], a
    ret
