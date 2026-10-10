
; Select the name from the case/type base plus value; base $ff stays $ff; Case I also remaps type 3 names.
PickListName:


Call_001_63b1:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_63e5

    ld bc, wListType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld l, a
    ld h, $00
    ld bc, C1NameBase
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_63de

    push af
    ld bc, wListValue
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    add b

jr_001_63de:
    ld [wListName], a
    call MapC1Name
    ret


jr_001_63e5:
    ld bc, wListType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld l, a
    ld h, $00
    ld bc, C2NameBase
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_640b

    push af
    ld bc, wListValue
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    add b

jr_001_640b:
    ld [wListName], a
    ret

; For type 3, map matching name IDs to seven category names; index the type with only the slot low byte.
MapC1Name:


Call_001_640f:
    ldh a, [hItemSlot]
    ld c, a
    ld b, $00
    ld hl, wListType
    add hl, bc
    ld a, [hl]
    cp $03
    ret nz

    ld c, $00
    ld a, [wListName]
    cp $3d
    jr z, jr_001_6484

    cp $3e
    jr z, jr_001_6484

    cp $3f
    jr z, jr_001_6484

    cp $40
    jr z, jr_001_6484

    cp $41
    jr z, jr_001_6484

    cp $42
    jr z, jr_001_6484

    cp $43
    jr z, jr_001_6484

    cp $49
    jr z, jr_001_6484

    inc c
    cp $4a
    jr z, jr_001_6484

    cp $4f
    jr z, jr_001_6484

    cp $50
    jr z, jr_001_6484

    cp $51
    jr z, jr_001_6484

    cp $52
    jr z, jr_001_6484

    cp $53
    jr z, jr_001_6484

    inc c
    cp $54
    jr z, jr_001_6484

    inc c
    cp $55
    jr z, jr_001_6484

    cp $56
    jr z, jr_001_6484

    cp $57
    jr z, jr_001_6484

    inc c
    cp $58
    jr z, jr_001_6484

    cp $59
    jr z, jr_001_6484

    inc c
    cp $5a
    jr z, jr_001_6484

    inc c
    cp $5b
    jr z, jr_001_6484

    cp $5c
    jr z, jr_001_6484

    ret


jr_001_6484:
    ld b, $00
    ld hl, C1NameMap
    add hl, bc
    ld a, [hl]
    ld [wListName], a
    ret

C1NameMap:
    db $08, $2d, $07, $28, $29, $33, $35

; Decode the current row without saving its packed byte; result bit 1 marks a $ff terminator.
ReadListRow:

Call_001_6496:
    ld a, [wStateResult]
    and $fd
    ld [wStateResult], a
    call GetListPos
    ld bc, wListBase
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_001_64b9

    ld a, [wStateResult]
    or $02
    ld [wStateResult], a
    ret


jr_001_64b9:
    call DecodeList
    ret

; Save and decode the current row; result bit 1 marks a $ff terminator.
LoadListRow:


Call_001_64bd:
jr_001_64bd:
    ld a, [wStateResult]
    and $fd
    ld [wStateResult], a
    call GetListPos
    ld bc, wListBase
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_001_64e0

    ld a, [wStateResult]
    or $02
    ld [wStateResult], a
    ret


jr_001_64e0:
    call SetListItem
    ret

C1NameBase:
    db $ff, $d0, $e0, $00, $40, $ff

C2NameBase:
    db $ff, $90, $a0, $00, $70, $ff, $c0
