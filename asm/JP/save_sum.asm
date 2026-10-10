
; Clear both bytes of the saved-payload sum scratch.
ClearSaveSum:


Call_001_6a32:
    xor a
    ld [wSaveSum], a
    ld [wSaveSum+1], a
    ret

; Add A to the 16-bit payload sum; preserve BC.
AddSaveByte:


Call_001_6a3a:
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


Call_001_6a4d:
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


Call_001_6a60:
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
    jr nz, jr_001_6a7c

    ld a, [hl+]
    ld b, a
    ld a, [wSaveSum+1]
    jr nz, jr_001_6a7c

    xor a
    jr jr_001_6a7e

jr_001_6a7c:
    or $ff

jr_001_6a7e:
    pop bc
    pop hl
    ret
