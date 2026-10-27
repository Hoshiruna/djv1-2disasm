
; Save the HRAM work index, draw Case II room marks, then restore the index.
DrawC2Marks:

Call_003_453b:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    call DoC2Marks

; Restore the saved mark-work index after drawing.
C2MarksRestoreIndex:
jr_003_4547:
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; Read four-byte room records; skip markless cells and queue eligible marks until $ff.
DoC2Marks:


Call_003_4551:
    call ReadC2Room

; Read the next four-byte room mark record.
C2MarksNextRecord:
jr_003_4554:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl+]
    cp C2RoomRecordEnd
    ret z

    cp C2RoomCellNoMark
    jr z, C2MarksAdvanceRecord

    call HideC2Mark
    ld a, [wStateResult]
    and $01
    jr nz, C2MarksAdvanceRecord

    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl]
    and $7f
    call C2MarkPos
    ld hl, C2MarkTile
    call QueueTileRect

; Advance four bytes to the next room mark record.
C2MarksAdvanceRecord:
jr_003_4582:
    ld a, [wRoomDataPtr]
    ld c, a
    ld a, [wRoomDataPtr+1]
    ld b, a
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, c
    ld [wRoomDataPtr], a
    ld a, b
    ld [wRoomDataPtr+1], a
    jr C2MarksNextRecord

; For conditional records, map the second byte to an object flag; result bit 0 means hidden.
HideC2Mark:

Call_003_4598:
    call ClearResult
    xor a
    ldh [hChangePos], a
    ldh [hChangePos+1], a
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl]
    bit 7, a
    ret z

; Read the ID after the indexed room cell and test its mapped object flag.
C2MarkCond:

Call_003_45ac:
    ldh a, [hChangePos]
    inc a
    ldh [hChangePos], a
    ld l, a
    ld h, $00
    ld a, [wRoomDataPtr]
    ld c, a
    ld a, [wRoomDataPtr+1]
    ld b, a
    add hl, bc
    ld a, [hl]
    ld [wC2MarkId], a
    ld e, a
    ld d, a
    ld a, $00
    ldh [hChangePos], a
    ld a, $00
    ldh [hChangePos+1], a
    ld a, d

; Search the mark-condition table for the current ID.
C2MarkFindCondition:
jr_003_45cc:
    ld bc, C2MarkTests
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wC2MarkTest], a
    cp e
    jr nz, C2MarkNextCondition

    ld bc, C2MarkTests+1
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jp z, SetResult

    jp ClearResult


; Advance to the next mark-condition pair.
C2MarkNextCondition:
jr_003_45f6:
    ldh a, [hChangePos]
    inc a
    inc a
    ldh [hChangePos], a
    jr C2MarkFindCondition

C2MarkTests:
    db C2TargetVegasHamperLid, C2VegasHamperMarkRevealed
    db C2StateTrain6BoardingDoorOpen, C2Train6AccessEnabled
    db C2StateTrain6DestinationDoorOpen, C2Train6AccessEnabled
    db C2StateTrain7BoardingDoorOpen, C2Train7AccessEnabled
    db C2StateTrain7DestinationDoorOpen, C2Train7AccessEnabled
    db C2StateTrain8BoardingDoorOpen, C2Train8AccessEnabled
    db C2StateTrain8DestinationDoorOpen, C2Train8AccessEnabled
    db C2StateTrain9BoardingDoorOpen, C2Train9AccessEnabled
    db C2StateTrain9DestinationDoorOpen, C2Train9AccessEnabled
    db C2StateTrain2BoardingDoorOpen, C2Train2AccessEnabled
    db C2StateTrain2DestinationDoorOpen, C2Train2AccessEnabled
    db C2StateTrain3BoardingDoorOpen, C2Train3AccessEnabled
    db C2StateTrain3DestinationDoorOpen, C2Train3AccessEnabled
    db C2StateTrain4BoardingDoorOpen, C2Train4AccessEnabled
    db C2StateTrain4DestinationDoorOpen, C2Train4AccessEnabled
    db C2StateTrain5BoardingDoorOpen, C2Train5AccessEnabled
    db C2StateTrain5DestinationDoorOpen, C2Train5AccessEnabled
    db C2StateJoeShelvesOpen, C2ShelvesOpen
    db C2StateOuterOfficeSecretDoorOpen, C2Bullseye

; Return BC=$98cf plus row*32 and column decoded from A; preserve HL.
C2MarkPos:

Call_003_4624:
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

; Combine the decoded row and column into a map address.
C2MarkFinishPosition:
jr_003_4633:
    or l
    ld l, a
    ld bc, $98cf
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ret
