
; Clear both bytes of the saved-payload sum scratch.
ClearSaveSum:


Call_001_69ab:
    xor a
    ld [wSaveSum], a
    ld [wSaveSum+1], a
    ret

; Add A to the 16-bit payload sum; preserve BC.
AddSaveByte:


Call_001_69b3:
    push bc
    ld b, a
    ld a, [wSaveSum]
    add b
    ld [wSaveSum], a
    ld a, [wSaveSum+1]
    adc $00
    ld [wSaveSum+1], a
    pop bc
    ret

; Store both sum bytes at the saved checksum pointer; preserve HL.
WriteSaveSum:


Call_001_69c6:
    push hl
    ld a, [wSaveSumPtr]
    ld l, a
    ld a, [wSaveSumPtr+1]
    ld h, a
    ld a, [wSaveSum]
    ld [hl+], a
    ld a, [wSaveSum+1]
    ld [hl+], a
    pop hl
    ret

; Compare only the saved low sum byte; read the high byte without comparing it, as in the original.
CheckSaveSum:


Call_001_69d9:
    push hl
    push bc
    ld a, [wSaveSumPtr]
    ld l, a
    ld a, [wSaveSumPtr+1]
    ld h, a
    ld a, [hl+]
    ld b, a
    ld a, [wSaveSum]
    cp b
    jr nz, jr_001_69f5

    ld a, [hl+]
    ld b, a
    ld a, [wSaveSum+1]
    jr nz, jr_001_69f5

    xor a
    jr jr_001_69f7

jr_001_69f5:
    or $ff

jr_001_69f7:
    pop bc
    pop hl
    ret
