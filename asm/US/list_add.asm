
; Call the selected-slot list insertion path.
AddSelList:


Call_000_228b:
    call AppendSelList
    ret

; Apply the selected-slot and case-specific list checks, append its packed value, and refresh state.
AppendSelList:


Call_000_228f:
    ld a, [wInputKind]
    cp InputKindListRow
    jr nz, AppendSelListCheckCase

    ld a, [wChangeMode]
    cp $01

Jump_000_229b:
    jr nz, AppendSelListCheckCase

    ld bc, wSelMode
    ldh a, [hItemSlot]

Jump_000_22a2:
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

Jump_000_22b9:
    call DropListHead
    call StoreWorkGroup

; Set the selected attribute and check Case II list restrictions.
; SetAttr0 changes the slot attribute; it does not directly set the loose-item bitmap.
AppendSelListCheckCase:
jr_000_22bf:
    call SetAttr0
    ld a, [wCaseId]
    cp $00
    jr z, AppendSelListStorePacked

    call CheckC2ListItem
    ld a, [wStateResult]
    and $01
    jr nz, AppendSelListFinishInput

; Append the selected packed value and update list end state.
AppendSelListStorePacked:
jr_000_22d3:
    call GetListEndPos
    ld bc, wListPacked
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a

Jump_000_22e2:
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wListBase
    add hl, bc
    ld [hl], a
    call ResumeTextUI
    call StoreListEnd
    ld a, [wListMax]
    ld [wOpByte], a
    call RefreshListMode
    push af
    ld a, $02
    call PushRomBank
    pop af
    call IncListEnd
    call PopRomBank

; Refresh object visibility or handle delayed list input.
AppendSelListFinishInput:
jr_000_230a:
    ld a, [wInputKind]
    cp InputKindListRow
    jr z, AppendSelListWaitForList

    ld a, [wHitObj]
    call ClearObjVisible

; Refresh objects and advance the current pending index beyond the last record.
FinishListAdd:

Jump_000_2317:
    call RefreshObjs
    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a
    ret


; Wait before restoring list mode unless the wait is skipped.
AppendSelListWaitForList:
jr_000_2322:
    ld a, [wSkipListWait]
    cp ListWaitSkipEnabled
    ret z

    ld a, ListFeedbackWaitTicks
    call WaitTicks
    ld a, $01
    ld [wChangeMode], a
    call RefreshLists
    ret

; Set the item flag for A and enter the argument-value list insertion continuation.
AddItemList:


Call_000_2336:
Jump_000_2336:
    call SetItemFlag
    jr AddArgListStore

; Read and set an item flag, append argument zero at the list end, and refresh objects.
AddArgList:

    call SetItemArg

; Append argument zero to the active list and refresh objects.
AddArgListStore:
jr_000_233e:
    call GetListEndPos
    ld a, [wArg0]
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wListBase
    add hl, bc
    ld [hl], a
    ld a, [wListMax]
    ld [wOpByte], a
    call RefreshListMode
    push af
    ld a, $02
    call PushRomBank
    pop af
    call IncListEnd
    call PopRomBank
    jp FinishListAdd
