
; Prepare the first-slot class, selected-slot name, attributes and six-byte list in the original order.
PrepItem:


Call_001_5666:
    call PickOpClass
    call PickItemName
    call ReadOpAttr
    call ReadOpList
    ret

; Map the first operation type/value through Case II triples; other cases or unmatched entries use the first type.
PickOpClass:


Call_001_5673:
    ld a, [wCaseId]
    cp $00
    jr z, jr_001_569a

    ld a, [wItemType]
    ld d, a
    ld a, [wItemId]
    ld e, a
    ld hl, C2OpClasses

jr_001_5685:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_569a

    cp d
    jr nz, jr_001_5696

    ld a, [hl+]
    cp e
    jr nz, jr_001_5697

    ld a, [hl]
    ld [wOpClass], a
    ret


jr_001_5696:
    inc hl

jr_001_5697:
    inc hl
    jr jr_001_5685

jr_001_569a:
    ld a, [wItemType]
    ld [wOpClass], a
    ret

; Clear the selected attribute byte, then dispatch by its operation type.
ReadOpAttr:


Call_001_56a1:
    xor a
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpAttr
    add hl, bc
    ld [hl], a
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    rst RST_00

OpAttrReads:
    dw SkipOpAttr
    dw ReadOpProp1
    dw ReadOpGroup
    dw ReadOpBits
    dw ReadOpProp4
    dw ReadOpState
    dw SkipOpAttr

; Copy property 1 at the selected operation value into its attribute byte.
ReadOpProp1:
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
    ld bc, wProp1
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpAttr
    add hl, bc
    ld [hl], a

; Shared return for attribute types 0 and 6, also used by the attribute write table.
SkipOpAttr:
    ret

; In Case II, copy the first byte of group value*8 into the selected attribute byte; Case I returns.
ReadOpGroup:


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
    ld a, [hl]
    ld [de], a
    ret

; Read the two item bitmaps into attribute bits 0 and 1; the first lookup keeps the HRAM index high byte.
ReadOpBits:


    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    push af
    srl a
    srl a
    srl a
    ld [wOpByte], a
    ldh [hChangePos], a
    pop af
    and $07
    ld [wSceneVariant], a
    ld bc, wItemFlags
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [wSceneVariant]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld a, d
    push af
    ld bc, $19a9
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    and b
    jr z, jr_001_5767

    ld a, $01
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpAttr
    add hl, bc
    ld [hl], a

jr_001_5767:
    ld d, a
    ld a, [wOpByte]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld a, d
    ld bc, wItemState
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [wSceneVariant]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld a, d
    push af
    ld bc, $19a9
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    and b
    jr nz, jr_001_5798

    ret


jr_001_5798:
    ld a, $02
    push af
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    or b
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpAttr
    add hl, bc
    ld [hl], a
    ret

; Copy property 4 at the selected operation value into its attribute byte.
ReadOpProp4:


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
    ld bc, wProp4
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpAttr
    add hl, bc
    ld [hl], a
    ret

; Set attribute value 4 when the selected state bit is set; the bitmap lookup keeps the HRAM index high byte.
ReadOpState:


    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    push af
    srl a
    srl a
    srl a
    ldh [hChangePos], a
    pop af
    and $07
    ld [wSceneVariant], a
    ld bc, wStateBits
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [wSceneVariant]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld a, d
    push af
    ld bc, $19a9
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    and b
    jr nz, jr_001_5823

    ret


jr_001_5823:
    ld a, $04
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpAttr
    add hl, bc
    ld [hl], a
    ret
