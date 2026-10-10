
; Compare exactly four saved tag bytes with SaveTag; return Z on match and NZ otherwise.
CheckSaveTag:


Call_001_6a81:
    push hl
    push bc
    push de
    ld a, [wSaveTagPtr]
    ld l, a
    ld a, [wSaveTagPtr+1]
    ld h, a
    ld bc, SaveTag
    ld d, $04

jr_001_6a91:
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc bc
    cp e
    jr nz, jr_001_6a9e

    dec d
    jr nz, jr_001_6a91

    xor a
    jr jr_001_6aa0

jr_001_6a9e:
    or $ff

jr_001_6aa0:
    pop de
    pop bc
    pop hl
    ret

; Write exactly the first four bytes of SaveTag; preserve HL/BC/DE.
WriteSaveTag:


Call_001_6aa4:
    push hl
    push bc
    push de
    ld a, [wSaveTagPtr]
    ld l, a
    ld a, [wSaveTagPtr+1]
    ld h, a
    ld bc, SaveTag
    ld d, $04

jr_001_6ab4:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, jr_001_6ab4

    pop de
    pop bc
    pop hl
    ret
