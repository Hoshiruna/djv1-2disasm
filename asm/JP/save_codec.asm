; --- save_addr.asm ---

; Compute $a010 + index*$800 + copy*$200 and save payload/tag/sum pointers.
GetSaveAddr:


Call_001_69d3:
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
    ld bc, SaveDataLen
    add hl, bc
    ld a, l
    ld [wSaveTagPtr], a
    ld a, h
    ld [wSaveTagPtr+1], a
    ld bc, SaveTagLen
    add hl, bc
    ld a, l
    ld [wSaveSumPtr], a
    ld a, h
    ld [wSaveSumPtr+1], a
    pop bc
    ret

; Clear the first 256 bytes of each of the four copies, retaining the original remaining bytes.
ClearSaveCopies:


Call_001_6a09:
    xor a
    ld [wSaveCopy], a

; Partially clear the next of four save copies.
ClearNextSaveCopy:
jr_001_6a0d:
    call ClearSaveCopy
    ld a, [wSaveCopy]
    inc a
    ld [wSaveCopy], a
    cp SaveCopies
    jr nz, ClearNextSaveCopy

    ret

; Clear exactly 256 bytes at the selected copy payload; preserve HL/DE.
ClearSaveCopy:


Call_001_6a1c:
    push hl
    push de
    call GetSaveAddr
    ld a, [wSavePtr]
    ld l, a
    ld a, [wSavePtr+1]
    ld h, a
    xor a
    ld d, a

; Clear one of the first 256 bytes in the selected save copy.
ClearSaveCopyByte:
jr_001_6a2b:
    ld [hl+], a
    inc d
    jr nz, ClearSaveCopyByte

    pop de
    pop hl
    ret

; --- save_sum.asm ---

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
    jr nz, RejectSaveSum

    ld a, [hl+]
    ld b, a
    ld a, [wSaveSum+1]
    jr nz, RejectSaveSum

    xor a
    jr CheckSaveSumDone

; Force a nonzero result after the low checksum byte differs.
RejectSaveSum:
jr_001_6a7c:
    or $ff

; Restore registers and return the checksum result.
CheckSaveSumDone:
jr_001_6a7e:
    pop bc
    pop hl
    ret

; --- save_tag.asm ---

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
    ld d, SaveTagLen

; Compare one SRAM tag byte with the expected tag.
CheckSaveTagByte:
jr_001_6a91:
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
jr_001_6a9e:
    or $ff

; Restore registers and return the tag comparison result.
CheckSaveTagDone:
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
    ld d, SaveTagLen

; Copy one expected tag byte into SRAM.
WriteSaveTagByte:
jr_001_6ab4:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, WriteSaveTagByte

    pop de
    pop bc
    pop hl
    ret
