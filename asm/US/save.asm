
; Validate/recover the selected save, then copy $17a bytes from copy 0 to wObjPresent.
LoadSave:

Call_001_67e4:
    push hl
    push bc
    push de
    call EnableRam
    call CheckSaveCopies
    xor a
    ld [wSaveCopy], a
    call GetSaveAddr
    ld a, [wSavePtr]
    ld l, a
    ld a, [wSavePtr+1]
    ld h, a
    ld bc, wObjPresent
    ld de, SaveDataLen

; Copy one validated payload byte from SRAM into working memory.
LoadSavePayloadByte:
jr_001_6802:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec de
    ld a, d
    or e
    cp $00
    jr nz, LoadSavePayloadByte

    call DisableRam
    pop de
    pop bc
    pop hl
    ret

; Enable RAM, write all four copies, then disable RAM; preserve HL/BC/DE.
StoreSave:


    push hl
    push bc
    push de
    call EnableRam
    call WriteSaveCopies
    call DisableRam
    pop de
    pop bc
    pop hl
    ret

; Write $17a payload bytes, sum, and tag to each of four copies.
WriteSaveCopies:


Call_001_6823:
    push hl
    push bc
    push de
    xor a
    ld [wSaveCopy], a

; Select and initialize the next save copy for writing.
WriteSaveCopy:
jr_001_682a:
    call GetSaveAddr
    call ClearSaveSum
    ld a, [wSavePtr]
    ld l, a
    ld a, [wSavePtr+1]
    ld h, a
    ld bc, wObjPresent
    ld de, SaveDataLen

; Write one payload byte to SRAM and add it to the running sum.
WriteSavePayloadByte:
jr_001_683e:
    ld a, [bc]
    inc bc
    ld [hl+], a
    call AddSaveByte
    dec de
    ld a, d
    or e
    cp $00
    jr nz, WriteSavePayloadByte

    call WriteSaveSum
    call WriteSaveTag
    ld a, [wSaveCopy]
    inc a
    ld [wSaveCopy], a
    cp SaveCopies
    jr nz, WriteSaveCopy

    pop de
    pop bc
    pop hl
    ret

; Enable RAM, apply the original partial clear to all copies, then disable RAM.
ClearSave:


    call EnableRam
    call ClearSaveCopies
    call DisableRam
    ret

; Check indices 0, 1, and 2, rebuild the availability mask, then restore the selected index.
ScanSaves:


    ldh a, [hSaveIndex]
    push af
    call EnableRam
    xor a
    ldh [hSaveIndex], a
    ld [wSaveMask], a
    call CheckSaveCopies
    ldh a, [hSaveIndex]
    inc a
    ldh [hSaveIndex], a
    call CheckSaveCopies
    ldh a, [hSaveIndex]
    inc a
    ldh [hSaveIndex], a
    call CheckSaveCopies
    call DisableRam
    pop af
    ldh [hSaveIndex], a
    ret

; Accept the first copy matching tag and original sum check; otherwise partially clear all copies.
CheckSaveCopies:


Call_001_6890:
    xor a
    ld [wSaveCopy], a

; Initialize the sum and address for the next candidate copy.
CheckNextSaveCopy:
jr_001_6894:
    call ClearSaveSum
    call GetSaveAddr
    ld a, [wSavePtr]
    ld l, a
    ld a, [wSavePtr+1]
    ld h, a
    ld de, SaveDataLen

; Add one candidate payload byte to the validation sum.
SumSavePayloadByte:
jr_001_68a5:
    ld a, [hl+]
    call AddSaveByte
    dec de
    ld a, d
    or e
    cp $00
    jr nz, SumSavePayloadByte

    call CheckSaveTag
    jr nz, RejectSaveCopy

    call CheckSaveSum
    jr z, AcceptSaveCopy

; Advance to the next copy after a tag or sum mismatch.
RejectSaveCopy:
jr_001_68ba:
    ld a, [wSaveCopy]
    inc a
    ld [wSaveCopy], a
    cp SaveCopies
    jr nz, CheckNextSaveCopy

    call ClearSaveCopies
    ret


; Repair copies if needed and mark the selected slot available.
AcceptSaveCopy:
jr_001_68c9:
    call RepairSaveCopies
    ld hl, SaveMasks
    ldh a, [hSaveIndex]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld b, a
    ld a, [wSaveMask]
    or b
    ld [wSaveMask], a
    ld a, [wSavePtr]
    ld l, a
    ld a, [wSavePtr+1]
    ld h, a
    ld bc, SaveCaseOff
    add hl, bc
    ld a, [hl]
    push af
    ldh a, [hSaveIndex]
    ld l, a
    ld h, $00
    ld bc, wSavedCase
    add hl, bc
    pop af
    ld [hl], a
    ret

SaveMasks:
    db $01, $02, $04

; If the accepted copy is nonzero, stage its full record in sStateSnap.
; This overwrites the snapshot buffer before replicating all four copies.
RepairSaveCopies:

Call_001_68fb:
    push hl
    push de
    ld a, [wSaveCopy]
    cp $00
    jr z, RepairSaveCopiesDone

    call GetSaveAddr
    ld a, [wSavePtr]
    ld l, a
    ld a, [wSavePtr+1]
    ld h, a
    ld bc, sStateSnap
    ld de, SaveRecLen

; Copy one byte of the accepted nonzero save copy into the snapshot buffer.
StageRecoveredSaveByte:
jr_001_6915:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec de
    ld a, d
    or e
    cp $00
    jr nz, StageRecoveredSaveByte

    xor a
    ld [wSaveCopy], a

; Select the next destination for the recovered save record.
WriteRecoveredSaveCopy:
jr_001_6923:
    call GetSaveAddr
    ld a, [wSavePtr]
    ld l, a
    ld a, [wSavePtr+1]
    ld h, a
    ld bc, sStateSnap
    ld de, SaveRecLen

; Copy one snapshot byte into the destination save copy.
WriteRecoveredSaveByte:
jr_001_6934:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec de
    ld a, d
    or e
    cp $00
    jr nz, WriteRecoveredSaveByte

    ld a, [wSaveCopy]
    inc a
    ld [wSaveCopy], a
    cp SaveCopies
    jr nz, WriteRecoveredSaveCopy

; Restore registers and return after repair or when copy zero was valid.
RepairSaveCopiesDone:
jr_001_6949:
    pop de
    pop hl
    ret
