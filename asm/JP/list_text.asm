
; Select the name from the case/type base plus value; base $ff stays $ff; Case I also remaps type 3 names.
PickListName:


Call_001_6438:
    ld a, [wCaseId]
    cp $00
    jr nz, C2ListNameResolve

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
    jr z, C1ListNameStore

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

; Store the Case I base-plus-value name and apply its type-three remapping.
C1ListNameStore:
jr_001_6465:
    ld [wListName], a
    call MapC1Name
    ret


; Resolve the Case II list name from its type base and value.
C2ListNameResolve:
jr_001_646c:
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
    jr z, C2ListNameStore

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

; Store the resolved Case II list name.
C2ListNameStore:
jr_001_6492:
    ld [wListName], a
    ret

; For type 3, map matching name IDs to seven category names; index the type with only the slot low byte.
MapC1Name:


Call_001_6496:
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
    jr z, C1ListNameMapFound

    cp $3e
    jr z, C1ListNameMapFound

    cp $3f
    jr z, C1ListNameMapFound

    cp $40
    jr z, C1ListNameMapFound

    cp $41
    jr z, C1ListNameMapFound

    cp $42
    jr z, C1ListNameMapFound

    cp $43
    jr z, C1ListNameMapFound

    cp $49
    jr z, C1ListNameMapFound

    inc c
    cp $4a
    jr z, C1ListNameMapFound

    cp $4f
    jr z, C1ListNameMapFound

    cp $50
    jr z, C1ListNameMapFound

    cp $51
    jr z, C1ListNameMapFound

    cp $52
    jr z, C1ListNameMapFound

    cp $53
    jr z, C1ListNameMapFound

    inc c
    cp $54
    jr z, C1ListNameMapFound

    inc c
    cp $55
    jr z, C1ListNameMapFound

    cp $56
    jr z, C1ListNameMapFound

    cp $57
    jr z, C1ListNameMapFound

    inc c
    cp $58
    jr z, C1ListNameMapFound

    cp $59
    jr z, C1ListNameMapFound

    inc c
    cp $5a
    jr z, C1ListNameMapFound

    inc c
    cp $5b
    jr z, C1ListNameMapFound

    cp $5c
    jr z, C1ListNameMapFound

    ret


; Read one of seven remapped Case I category names.
C1ListNameMapFound:
jr_001_650b:
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

Call_001_651d:
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
    jr nz, ReadListRowDecode

    ld a, [wStateResult]
    or $02
    ld [wStateResult], a
    ret


; Decode a nonterminating list row without storing its packed value.
ReadListRowDecode:
jr_001_6540:
    call DecodeList
    ret

; Save and decode the current row; result bit 1 marks a $ff terminator.
LoadListRow:


Call_001_6544:
jr_001_6544:
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
    jr nz, LoadListRowStore

    ld a, [wStateResult]
    or $02
    ld [wStateResult], a
    ret


; Store and decode a nonterminating selected list row.
LoadListRowStore:
jr_001_6567:
    call SetListItem
    ret

C1NameBase:
    db $ff, $d0, $e0, $00, $40, $ff

C2NameBase:
    db $ff, $90, $a0, $00, $70, $ff, $c0
