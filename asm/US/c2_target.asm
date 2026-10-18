
; Preserve the room-record index low byte around the Case II cursor hit test.
C2PickTarget:
    ldh a, [hRoomHitPos]
    push af
    call C2FindTarget
    pop af
    ldh [hRoomHitPos], a
    ret

; Read Case II room state and pack the cursor cell from X minus $78 and Y minus $30.
C2FindTarget:


Call_003_60ac:
    call ReadC2Room
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

; Reset the record index, compare the masked room cell, and run the condition test for cells with bit seven set.
C2ScanTarget:

Jump_003_60cf:
    ld d, a
    ld a, $00
    ldh [hRoomHitPos], a
    ld a, $00
    ldh [hRoomHitPos+1], a
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
    cp $ff
    ret z

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
    and $7f
    ld c, a
    ld a, [wRoomHitCell]
    ld b, a
    ld a, c
    cp b
    jr nz, C2NextTarget

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
    jr z, C2StoreTarget

    call C2MarkCond
    ld a, [wStateResult]
    and $01
    ret nz

; Read the object ID at the current room-state base plus one; store it with type five in the selected slot and initialize its action.
C2StoreTarget:

jr_003_6124:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    ld a, [hl]
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

; Advance the Case II room-state pointer and resume scanning with the original A value.
C2NextTarget:


jr_003_614e:
    call NextC2State
    jp C2ScanTarget
