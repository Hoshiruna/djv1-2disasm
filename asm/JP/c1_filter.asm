
; Store the masked item type and dispatch to its Case I list filter.
BuildC1Item:


    ld a, [wRoomType]
    and $7f
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemType
    add hl, bc
    ld [hl], a
    rst RST_00

; Types $00..$05 select these filters; $01 and $02 share the copy routine.
C1ItemCalls:
    dw CheckC1RoomItem
    dw CopyC1Item
    dw CopyC1Item
    dw CheckC1BitItem
    dw CheckC1ObjItem
    dw CheckC1MarkItem

; Set the result for an unrestricted entry or a visible object.
CheckListVisible:
    call ClearResult
    ld a, [wRoomVisId]
    cp $ff
    jr z, jr_001_6cc6

    call ReadObjVisible
    ld a, [wStateResult]
    and $01
    jr z, jr_001_6cc9

jr_001_6cc6:
    call SetResult

jr_001_6cc9:
    ret

; Apply the original room-item exceptions before storing the item ID.
CheckC1RoomItem:


    ld a, [wRoomItem]
    cp $6b
    jr nz, jr_001_6cdb

    ld a, [wSceneId]
    cp $73
    jr z, jr_001_6cdb

    jp SkipRoomItem


jr_001_6cdb:
    ld a, [wRoomItem]
    cp $5f
    jr nz, jr_001_6cec

    ld a, [wSceneId]
    cp $7a
    jr z, jr_001_6d02

    jp SkipRoomItem


jr_001_6cec:
    ld a, [wRoomItem]
    cp $13
    jr nz, jr_001_6d02

    ld a, $08
    call ReadStateBit
    ld a, [wStateResult]
    and $01
    jr z, jr_001_6d02

    jp SkipRoomItem


jr_001_6d02:
    ld a, [wRoomItem]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ret

; Copy the item ID into the current room-list slot.
CopyC1Item:


    ld a, [wRoomItem]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ret

; Skip entries whose state bit is set; store the remaining item ID.
CheckC1BitItem:


    ld a, [wRoomItem]
    push af
    srl a
    srl a
    srl a
    ldh [hRoomIndex], a
    pop af
    and $07
    ld [wRoomBit], a
    ld bc, wItemFlags
    ldh a, [hRoomIndex]
    ld l, a
    ldh a, [hRoomIndex+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [wRoomBit]
    ldh [hRoomIndex], a
    xor a
    ldh [hRoomIndex+1], a
    ld a, d
    push af
    ld bc, BitMasks
    ldh a, [hRoomIndex]
    ld l, a
    ldh a, [hRoomIndex+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    and b
    jr z, jr_001_6d5f

    jp SkipRoomItem


jr_001_6d5f:
    ld a, [wRoomItem]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ret

; Apply the scene exceptions and object flag before storing the item ID.
CheckC1ObjItem:


    ld a, [wRoomItem]
    cp $00
    jr z, jr_001_6d7b

    cp $02
    jr nz, jr_001_6d85

jr_001_6d7b:
    ld a, [wSceneId]
    cp $00
    jr z, jr_001_6d85

    jp SkipRoomItem


jr_001_6d85:
    ld a, [wRoomItem]
    ldh [hRoomIndex], a
    ld bc, wProp4
    ldh a, [hRoomIndex]
    ld l, a
    ldh a, [hRoomIndex+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $01
    jr z, jr_001_6d9c

    jp SkipRoomItem


jr_001_6d9c:
    ld d, a
    ldh a, [hRoomIndex]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ld a, d
    ret

; Apply the mark check and allow item $47 only in scene $43.
CheckC1MarkItem:


    ld a, [wRoomItem]
    cp $47
    jr z, jr_001_6df3

    cp $24
    jr z, jr_001_6dd5

    cp $25
    jr z, jr_001_6dd5

    cp $26
    jr z, jr_001_6dd5

    cp $27
    jr z, jr_001_6dd5

    cp $29
    jr z, jr_001_6dd5

    cp $2a
    jr z, jr_001_6dd5

    cp $2b
    jr z, jr_001_6dd5

    cp $2c
    jr nz, jr_001_6de2

jr_001_6dd5:
    call HideC1MarkBB
    ld a, [wStateResult]
    and $01
    jr z, jr_001_6de2

    jp SkipRoomItem


jr_001_6de2:
    ld a, [wRoomItem]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ret


jr_001_6df3:
    ld a, [wSceneId]
    cp $43
    jr z, jr_001_6de2

    jp SkipRoomItem
