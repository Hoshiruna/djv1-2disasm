
; Compute $a010 + index*$800 + copy*$200 and save payload/tag/sum pointers.
GetSaveAddr:


Call_001_694c:
    push bc
    ldh a, [hSaveIndex]
    add a
    add a
    add a
    add $a0
    ld b, a
    ld a, $10
    ld c, a
    ld a, [wSaveCopy]
    add a
    ld h, a
    ld l, $00
    add hl, bc
    ld a, l
    ld [wSavePtr], a
    ld a, h
    ld [wSavePtr+1], a
    ld bc, $017a
    add hl, bc
    ld a, l
    ld [wSaveTagPtr], a
    ld a, h
    ld [wSaveTagPtr+1], a
    ld bc, $0004
    add hl, bc
    ld a, l
    ld [wSaveSumPtr], a
    ld a, h
    ld [wSaveSumPtr+1], a
    pop bc
    ret

; Clear the first 256 bytes of each of the four copies, retaining the original remaining bytes.
ClearSaveCopies:


Call_001_6982:
    xor a
    ld [wSaveCopy], a

jr_001_6986:
    call ClearSaveCopy
    ld a, [wSaveCopy]
    inc a
    ld [wSaveCopy], a
    cp $04
    jr nz, jr_001_6986

    ret

; Clear exactly 256 bytes at the selected copy payload; preserve HL/DE.
ClearSaveCopy:


Call_001_6995:
    push hl
    push de
    call GetSaveAddr
    ld a, [wSavePtr]
    ld l, a
    ld a, [wSavePtr+1]
    ld h, a
    xor a
    ld d, a

jr_001_69a4:
    ld [hl+], a
    inc d
    jr nz, jr_001_69a4

    pop de
    pop hl
    ret
