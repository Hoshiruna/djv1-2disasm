
; Compare exactly four saved tag bytes with SaveTag; return Z on match and NZ otherwise.
CheckSaveTag:


Call_001_69fa:
    push hl
    push bc
    push de
    ld a, [wSaveTagPtr]
    ld l, a
    ld a, [wSaveTagPtr+1]
    ld h, a
    ld bc, SaveTag
    ld d, $04

jr_001_6a0a:
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc bc
    cp e
    jr nz, jr_001_6a17

    dec d
    jr nz, jr_001_6a0a

    xor a
    jr jr_001_6a19

jr_001_6a17:
    or $ff

jr_001_6a19:
    pop de
    pop bc
    pop hl
    ret

; Write exactly the first four bytes of SaveTag; preserve HL/BC/DE.
WriteSaveTag:


Call_001_6a1d:
    push hl
    push bc
    push de
    ld a, [wSaveTagPtr]
    ld l, a
    ld a, [wSaveTagPtr+1]
    ld h, a
    ld bc, SaveTag
    ld d, $04

jr_001_6a2d:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, jr_001_6a2d

    pop de
    pop bc
    pop hl
    ret
