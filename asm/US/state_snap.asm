
; Run the original count-derived fill over $17a state bytes, then initialize Case I data.
ResetC1State:


    push hl
    push de
    ld hl, wObjPresent
    ld de, SaveDataLen
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
    jr nz, FillCountData

    ret

; Copy the current $17a state bytes and both sum bytes to SRAM unless the original case guard skips it.
SaveSnapshot:


    push hl
    push bc
    push de
    ld a, [wCaseId]
    cp $00
    jr nz, SnapshotCheckC2Room

    ld a, C1SkipNextSnapshot
    call ReadObjFlag
    jr z, SnapshotWriteState

    ld a, C1SkipNextSnapshot
    call ClearObjFlag
    jr SnapshotWriteReturn

; In Case II, skip snapshot writing for room IDs at least $62.
SnapshotCheckC2Room:

jr_001_6a6a:
    ld a, [wRoomId]
    cp $62
    jr nc, SnapshotWriteReturn

; Enable cartridge RAM and prepare the state-snapshot copy and checksum.
SnapshotWriteState:

jr_001_6a71:
    call EnableRam
    call ClearSaveSum
    ld de, SaveDataLen
    ld hl, wObjPresent
    ld bc, sStateSnap

; Copy the next state byte to SRAM, update the checksum, and continue for SaveDataLen bytes.
SnapshotWriteLoop:

jr_001_6a80:
    ld a, [hl+]
    ld [bc], a
    inc bc
    call AddSaveByte
    dec de
    ld a, d
    or e
    cp $00
    jr nz, SnapshotWriteLoop

    ld a, [wSaveSum]
    ld [sStateSum], a
    ld a, [wSaveSum+1]
    ld [sStateSum+1], a
    call DisableRam

; Restore the caller's DE, BC, and HL registers after writing or skipping the snapshot.
SnapshotWriteReturn:

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
    ld de, SaveDataLen
    ld hl, wObjPresent
    ld bc, sStateSnap

; Copy the next SRAM snapshot byte to state memory and update the checksum.
SnapshotReadLoop:

jr_001_6ab2:
    ld a, [bc]
    inc bc
    ld [hl+], a
    call AddSaveByte
    dec de
    ld a, d
    or e
    cp $00
    jr nz, SnapshotReadLoop

    ld a, [sStateSum]
    ld b, a
    ld a, [wSaveSum]
    cp b
    jr nz, SnapshotReadFallback

    ld a, [sStateSum+1]
    ld b, a
    ld a, [wSaveSum+1]
    cp b
    jr nz, SnapshotReadFallback

    pop de
    pop bc
    pop hl
    ret

; Load the regular save when either snapshot checksum byte differs, then restore the caller's registers.
SnapshotReadFallback:


jr_001_6ad7:
    call LoadSave
    pop de
    pop bc
    pop hl
    ret
