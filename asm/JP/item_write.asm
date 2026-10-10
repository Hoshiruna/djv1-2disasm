
; Write attributes from the alternate slot, then slot zero; leave the slot offset at zero.
WriteOpSlots:


Call_001_5833:
    ld d, a
    ld a, $10
    ldh [hItemSlot], a
    ld a, $00
    ldh [hItemSlot+1], a
    ld a, d
    call WriteOpAttr
    ld d, a
    ld a, $00
    ldh [hItemSlot], a
    ld a, $00
    ldh [hItemSlot+1], a
    ld a, d
    call WriteOpAttr
    ret

; Skip a $ff operation type; otherwise dispatch the selected slot through the attribute write table.
WriteOpAttr:


Call_001_584e:
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    ret z

    rst RST_00

OpAttrWrites:
    dw SkipOpAttr
    dw WriteOpProp1
    dw WriteOpGroup
    dw WriteOpBits
    dw WriteOpProp4
    dw WriteOpState
    dw SkipOpAttr

; Copy the selected attribute byte to property 1 at its operation value.
WriteOpProp1:
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld a, d
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wProp1
    add hl, bc
    ld [hl], a
    ret

; Copy the selected attribute byte to property 4 at its operation value.
WriteOpProp4:


    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld a, d
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wProp4
    add hl, bc
    ld [hl], a
    ret

; In Case II, copy the selected attribute byte to the first byte of group value*8; Case I returns.
WriteOpGroup:


    ld a, [wCaseId]
    cp $00
    ret z

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    inc hl
    ld e, l
    ld d, h
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, wGroupData
    add hl, bc
    ld a, [de]
    ld [hl], a
    ret

; Write attribute bit 0 to the first item bitmap, then bit 1 to the second bitmap.
WriteOpBits:


    call WriteOpFlag1
    call WriteOpFlag2
    ret

; Set or clear the first item bitmap entry according to attribute bit 0.
WriteOpFlag1:


Call_001_58e9:
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $01
    jr nz, jr_001_5907

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ClearItemFlag
    ret


jr_001_5907:
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call SetItemFlag
    ret

; Set or clear the second item bitmap entry according to attribute bit 1.
WriteOpFlag2:


Call_001_5916:
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    srl a
    and $01
    jr nz, jr_001_5936

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ClearItemState
    ret


jr_001_5936:
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call SetItemState
    ret

; Set or clear the state bitmap entry according to attribute bit 2.
WriteOpState:


    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    srl a
    srl a
    and $01
    jr nz, jr_001_5967

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    ret


jr_001_5967:
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call SetStateBit
    ret
