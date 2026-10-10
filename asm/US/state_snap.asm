
; Run the original count-derived fill over $17a state bytes, then initialize Case I data.
ResetC1State:


    push hl
    push de
    ld hl, wObjPresent
    ld de, $017a
    xor a
    call FillCountData
    call InitC1Data
    pop de
    pop hl
    ret

; Write initial A, then D OR E from each remaining count; this is not a constant-byte fill.
FillCountData:


Call_001_6a49:
jr_001_6a49:
    ld [hl+], a
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_6a49

    ret

; Copy the current $17a state bytes and both sum bytes to SRAM unless the original case guard skips it.
SaveSnapshot:


    push hl
    push bc
    push de
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_6a6a

    ld a, $b0
    call ReadObjFlag
    jr z, jr_001_6a71

    ld a, $b0
    call ClearObjFlag
    jr jr_001_6a9c

jr_001_6a6a:
    ld a, [wRoomId]
    cp $62
    jr nc, jr_001_6a9c

jr_001_6a71:
    call EnableRam
    call ClearSaveSum
    ld de, $017a
    ld hl, wObjPresent
    ld bc, sStateSnap

jr_001_6a80:
    ld a, [hl+]
    ld [bc], a
    inc bc
    call AddSaveByte
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_6a80

    ld a, [wSaveSum]
    ld [sStateSum], a
    ld a, [wSaveSum+1]
    ld [sStateSum+1], a
    call DisableRam

jr_001_6a9c:
    pop de
    pop bc
    pop hl
    ret

; Restore the SRAM snapshot, compare both sum bytes, and fall back to LoadSave on mismatch.
LoadSnapshot:


    push hl
    push bc
    push de
    call EnableRam
    call ClearSaveSum
    ld de, $017a
    ld hl, wObjPresent
    ld bc, sStateSnap

jr_001_6ab2:
    ld a, [bc]
    inc bc
    ld [hl+], a
    call AddSaveByte
    dec de
    ld a, d
    or e
    cp $00
    jr nz, jr_001_6ab2

    ld a, [sStateSum]
    ld b, a
    ld a, [wSaveSum]
    cp b
    jr nz, jr_001_6ad7

    ld a, [sStateSum+1]
    ld b, a
    ld a, [wSaveSum+1]
    cp b
    jr nz, jr_001_6ad7

    pop de
    pop bc
    pop hl
    ret


jr_001_6ad7:
    call LoadSave
    pop de
    pop bc
    pop hl
    ret
