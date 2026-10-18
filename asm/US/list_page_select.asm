
; Select page command $0b in B and enter the shared temporary-selection path.
GoNextList:

    ld b, $0b
    jr TempListPage

; Select page command $0c in B and enter the shared temporary-selection path.
GoPrevList:

Jump_001_4bbc:
    ld b, $0c

; Apply page selection B, then restore the incoming selection A.
TempListPage:

jr_001_4bbe:
    push af
    ld a, b
    ld [wListSel], a
    call ApplyListPage
    pop af
    ld [wListSel], a
    ret

; Run page navigation, clear its cursor, restore a selected-action cursor when present, then select the saved page command.
ApplyListPage:


Call_001_4bcb:
    call StepListPage
    ld a, [wListSel]
    call ClearListCursor
    ld a, [wSelAction]
    cp $ff
    jr z, ListPageStoreCommand

    ld a, [wListNavPrev]
    ld [wListSel], a

; Move the restored selection cursor while preserving the operation-slot offset.
ListPageRestoreCursor:
jr_001_4be1:
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
    jr ListPageStoreCommand

    ld a, [wSelAction]
    cp $ff
    jr z, ListPageRestoreCursor

; Store the saved navigation command after updating the page cursor.
ListPageStoreCommand:
jr_001_4bff:
    ld a, [wListNavNext]
    ld [wListSel], a
    ret
