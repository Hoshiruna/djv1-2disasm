
; Preserve the room-record index low byte around the Case I cursor hit test.
C1PickTarget:
    ldh a, [hRoomHitPos]

jr_001_551f:
    push af
    call C1FindTarget
    pop af
    ldh [hRoomHitPos], a
    ret

; Pack the cursor cell from X minus $78 and Y minus $30, then scan Case I room triples.
C1FindTarget:


Call_001_5527:
    call ReadC1Room
    ld a, [wCursorY]
    sub $30
    srl a
    srl a
    srl a
    ld [wRoomHitCell], a
    ld a, [wCursorX]
    sub $78
    add a
    and $f0
    push af
    ld a, [wRoomHitCell]
    ld b, a
    pop af
    or b
    ld [wRoomHitCell], a
    ld d, a
    ld a, $00
    ldh [hRoomHitPos], a
    ld a, $00
    ldh [hRoomHitPos+1], a
    ld a, d

; Skip hidden marks and nonmatching cells; resolve a marked ID, store type five in the selected slot, and initialize its action.
C1ScanTarget:

Jump_001_5554:
    ld a, [wRoomDataPtr]
    ld c, a
    ld a, [wRoomDataPtr+1]
    ld b, a
    ldh a, [hRoomHitPos]
    ld l, a
    ldh a, [hRoomHitPos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp C1RoomRecordEnd
    ret z

    inc hl
    ld a, [hl]
    and $7f
    call CheckC1CabEntryHidden
    ld a, [wStateResult]
    and $01
    jr nz, C1NextTarget

    ld a, [wRoomDataPtr]
    ld c, a
    ld a, [wRoomDataPtr+1]
    ld b, a
    ldh a, [hRoomHitPos]
    ld l, a
    ldh a, [hRoomHitPos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld c, a
    ld a, [wRoomHitCell]
    ld b, a
    ld a, c
    cp b
    jr nz, C1NextTarget

    ld d, a
    ldh a, [hRoomHitPos]
    inc a
    ldh [hRoomHitPos], a
    ld a, d
    ld a, [wRoomDataPtr]
    ld c, a
    ld a, [wRoomDataPtr+1]
    ld b, a
    ldh a, [hRoomHitPos]
    ld l, a
    ldh a, [hRoomHitPos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr z, C1StoreMarkTarget

    call C1MarkCond
    ld a, [wStateResult]
    and $01
    ret nz

    ld a, [wRoomHitId]

; Store the resolved mark ID as a type-five target in the selected slot and initialize its action.
C1StoreMarkTarget:

jr_001_55b5:
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ld a, $05
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemType
    add hl, bc
    ld [hl], a
    call InitAction
    ret

; Advance the room-record index low byte by three and continue scanning.
C1NextTarget:


jr_001_55d5:
    ldh a, [hRoomHitPos]
    inc a
    inc a
    inc a
    ldh [hRoomHitPos], a
    jp C1ScanTarget
