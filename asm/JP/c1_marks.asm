
; Save the HRAM work index, draw Case I room marks, then restore the index.
DrawC1Marks:


Call_001_4219:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    call DoC1Marks
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; Read current three-byte room records; queue eligible marks until the first byte is $ff.
DoC1Marks:


Call_001_422f:
    call ReadC1Room

; Read the next room mark, skip flagged records, and draw marks whose hidden result is clear.
C1MarkRecordLoop:

jr_001_4232:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl+]
    cp C1RoomRecordEnd
    ret z

    bit 7, a
    jr nz, C1MarkNextRecord

    call HideC1Mark
    ld a, [wStateResult]
    and $01
    jr nz, C1MarkNextRecord

    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl]
    call C1MarkPos
    ld hl, C1MarkTile
    call QueueTileRect

; Advance the mark record pointer by three bytes and continue scanning.
C1MarkNextRecord:

jr_001_425e:
    ld a, [wRoomDataPtr]
    ld c, a
    ld a, [wRoomDataPtr+1]
    ld b, a
    inc bc
    inc bc
    inc bc
    ld a, c
    ld [wRoomDataPtr], a
    ld a, b
    ld [wRoomDataPtr+1], a
    jr C1MarkRecordLoop

; Test a record condition at HL; result bit 0 means the mark is hidden.
HideC1Mark:

Call_001_4273:
    call ClearResult
    ld a, [hl+]
    bit 7, a
    ret z

; Test the conditional mark ID in A; preserve the original result-bit handling.
C1MarkCond:

Call_001_427a:
    and $7f
    ld [wC1MarkId], a
    ld e, a
    ld d, a
    ld a, $00
    ldh [hChangePos], a
    ld a, $00
    ldh [hChangePos+1], a
    ld a, d

; Match the conditional mark ID against the first byte of each two-byte test row.
C1MarkTestLoop:

jr_001_428a:
    ld bc, C1MarkTests
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wC1MarkTest], a
    cp e
    jr nz, C1MarkNextTest

    ld d, a
    ldh a, [hChangePos]
    cp $04
    ld a, d
    jr nc, C1MarkCheckSpecialId

    ld a, [wC1MarkTest]
    call ReadStateBit
    ld a, [wStateResult]
    and $01
    jp z, SetResult

    jp ClearResult

; Use the matched special mark ID for the flag-$bb visibility check.
C1MarkCheckSpecialId:


jr_001_42b4:
    ld a, e
    call CheckC1CabColorHidden
    ret

; Advance the HRAM test-row offset by two and try the next mark ID.
C1MarkNextTest:


jr_001_42b9:
    ldh a, [hChangePos]
    inc a
    inc a
    ldh [hChangePos], a
    jr C1MarkTestLoop

; Two-byte rows; the current lookup reads only each row's first byte.
C1MarkTests:
    db C1StateRackPassageOpen, $6f
    db C1StateYellowCabView, $bb
    db C1DoorIdBlueCabStanford, $ff
    db C1DoorIdYellowCabStanford, $ff
    db C1DoorIdBlueCabBungalow, $ff
    db C1DoorIdYellowCabBungalow, $ff
    db C1DoorIdBlueCabOfficeBuilding, $ff
    db C1DoorIdYellowCabOfficeBuilding, $ff
    db C1DoorIdBlueCabEstate, $ff
    db C1DoorIdYellowCabEstate, $ff

; Check hidden status for non-Peoria cab entries; clear it for other IDs.
CheckC1CabEntryHidden:
HideC1MarkId:

Call_001_42d5:
    cp C1DoorIdBlueCabStanford
    jr z, CheckC1CabColorHidden

    cp C1DoorIdBlueCabBungalow
    jr z, CheckC1CabColorHidden

    cp C1DoorIdBlueCabOfficeBuilding
    jr z, CheckC1CabColorHidden

    cp C1DoorIdBlueCabEstate
    jr z, CheckC1CabColorHidden

    cp C1DoorIdYellowCabStanford
    jr z, CheckC1CabColorHidden

    cp C1DoorIdYellowCabBungalow
    jr z, CheckC1CabColorHidden

    cp C1DoorIdYellowCabOfficeBuilding
    jr z, CheckC1CabColorHidden

    cp C1DoorIdYellowCabEstate
    jr nz, C1MarkNotHidden

; Hide the entry when its cab color differs from C1CabIsYellow.
CheckC1CabColorHidden:
HideC1MarkBB:

Call_001_42f5:
jr_001_42f5:
    and $08
    jr nz, CheckC1YellowCabHidden

    ld a, C1CabIsYellow
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, C1MarkNotHidden

    call SetResult
    ret

; A yellow cab entry is hidden when C1CabIsYellow is clear.
CheckC1YellowCabHidden:
C1MarkInvertBB:


jr_001_4309:
    ld a, C1CabIsYellow
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1MarkNotHidden

    call SetResult
    ret

; Clear the hidden-mark result and return.
C1MarkNotHidden:


jr_001_4319:
    call ClearResult
    ret

; Return BC=$98cf plus row*32 and column decoded from A; preserve HL.
C1MarkPos:


Call_001_431d:
    push hl
    push af
    and $07
    swap a
    ld l, a
    ld h, $00
    add hl, hl
    pop af
    swap a
    and $07
    or l
    ld l, a
    ld bc, $98cf
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ret
