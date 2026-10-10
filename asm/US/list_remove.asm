
; Copy the selected slot group and row to the active list and enter the removal continuation.
DropSelList:


Call_000_2dc8:
    ld bc, wSelMode
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wChangeMode], a
    ld bc, wSelRow
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wListRow], a

; Remove the active list entry, refresh lists, then decrement the list end.
FinishListDrop:

jr_000_2de4:
    call DropListEntry
    call RefreshLists
    call DecListEnd
    ret

; Read one script argument and enter list-value removal.
DropListArg:


    call ReadArg

; Find value A and enter removal without testing the search result.
DropListValue:

Call_000_2df1:
    ld [wFindListValue], a
    call FindListValue

; Copy the recorded found group and row, then remove the entry without checking whether a search succeeded.
DropFoundList:

Call_000_2df7:
    ld a, [wFoundGroup]
    ld [wChangeMode], a
    ld a, [wFoundRow]
    ld [wListRow], a

Jump_000_2e03:
    jr jr_000_2de4
