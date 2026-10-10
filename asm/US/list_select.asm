
; For an active action and nonzero mode, copy the selected row to the operation slot and save its mode/row.
SelectListRow:


    ld a, [wSelAction]
    cp $ff
    ret z

    ld a, [wChangeMode]
    cp $00
    ret z

    ld hl, wListSel
    ld a, [hl]
    sub $0d
    ld [wListRow], a
    call LoadListRow
    ld a, [wStateResult]
    and $02
    jr z, jr_001_5cd3

    ret


jr_001_5cd3:
    ld bc, wListType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl+]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemType
    add hl, bc
    ld [hl], a
    ld bc, wListValue
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a

jr_001_5cfa:
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ld a, [wListRow]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wSelRow
    add hl, bc
    ld [hl], a
    ld a, [wChangeMode]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wSelMode
    add hl, bc
    ld [hl], a
    ld bc, wSelRow
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wListMarkRow], a
    call DrawListMark
    ret
