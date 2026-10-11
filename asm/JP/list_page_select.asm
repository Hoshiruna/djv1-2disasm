
; Select page command $0b in B and enter the shared temporary-selection path.
GoNextList:

Jump_001_4c36:
    ld b, $0b
    jr jr_001_4c3c

; Select page command $0c in B and enter the shared temporary-selection path.
GoPrevList:

Jump_001_4c3a:
    ld b, $0c

; Apply page selection B, then restore the incoming selection A.
TempListPage:

jr_001_4c3c:
    push af
    ld a, b
    ld [wListSel], a
    call ApplyListPage
    pop af
    ld [wListSel], a
    ret

; Run page navigation, clear its cursor, restore a selected-action cursor when present, then select the saved page command.
ApplyListPage:


Call_001_4c49:
    call StepListPage
    ld a, [wListSel]
    call ClearListCursor
    ld a, [wSelAction]
    cp $ff
    jr z, jr_001_4c7d

    ld a, [wListNavPrev]
    ld [wListSel], a

jr_001_4c5f:
    push af
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    pop af
    push hl
    call MoveListCursor
    pop hl
    push af
    ld a, l
    ldh [hItemSlot], a
    ld a, h
    ldh [hItemSlot+1], a
    pop af
    jr jr_001_4c7d

    ld a, [wSelAction]
    cp $ff
    jr z, jr_001_4c5f

jr_001_4c7d:
    ld a, [wListNavNext]
    ld [wListSel], a
    ret
