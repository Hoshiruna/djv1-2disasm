
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
    ld d, SaveTagLen

; Compare one SRAM tag byte with the expected tag.
CheckSaveTagByte:
jr_001_6a0a:
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc bc
    cp e
    jr nz, RejectSaveTag

    dec d
    jr nz, CheckSaveTagByte

    xor a
    jr CheckSaveTagDone

; Force a nonzero result after a tag mismatch.
RejectSaveTag:
jr_001_6a17:
    or $ff

; Restore registers and return the tag comparison result.
CheckSaveTagDone:
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
    ld d, SaveTagLen

; Copy one expected tag byte into SRAM.
WriteSaveTagByte:
jr_001_6a2d:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, WriteSaveTagByte

    pop de
    pop bc
    pop hl
    ret
