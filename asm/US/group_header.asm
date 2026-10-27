
; Multiply the full index by eight in HL, unlike the wrapped content-list offset.
; OR zero and write back the unchanged group header.
TouchGroup:


Call_000_36a1:
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


Call_000_36b3:
    ld [wArg0], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, wGroupData
    add hl, bc
    ld a, [hl]
    and GroupHeaderRetainedBits
    ld [hl], a
    ret
