
; Store the masked item type and dispatch to its Case II list filter.
BuildC2Item:


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

; Types $00..$06; the first three share a copy routine.
C2ItemCalls:
    dw CopyC2Item
    dw CopyC2Item
    dw CopyC2Item
    dw CheckC2BitItem
    dw CheckC2ObjItem
    dw PickC2RoomItem
    dw KeepC2Item

; Copy the item ID into the current room-list slot for types $00..$02.
CopyC2Item:
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

; Return with the existing item ID unchanged for type $06.
KeepC2Item:
    ret

; Skip entries whose state bit is set; store the remaining item ID.
CheckC2BitItem:


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
    jr z, C2StoreBitItem

    jp SkipRoomItem


; Store an item whose bitmap bit was clear.
C2StoreBitItem:
jr_003_61c6:
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

; Check the object flag before storing the item ID.
CheckC2ObjItem:


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
    jr z, C2StoreObjItem

    jp SkipRoomItem


; Store an object-backed item whose property bit was clear.
C2StoreObjItem:
jr_003_61ee:
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

; Use the room table for rooms $1b..$2a; otherwise copy the original item ID.
PickC2RoomItem:


    ld a, [wRoomId]
    cp $1b
    jr c, C2StoreDefaultRoomItem

    cp $2b
    jr nc, C2StoreDefaultRoomItem

    sub $1b
    ld l, a
    ld h, $00
    ld bc, C2RoomItems
    add hl, bc
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
    ret


; Store the original room-item ID outside the remapped room range.
C2StoreDefaultRoomItem:
jr_003_6223:
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

; Item IDs for rooms $1b..$2a.
C2RoomItems:
    db $2d, $22, $2e, $25, $2f, $28, $30, $2b, $31, $3b, $32, $3e, $33, $41, $34, $44
