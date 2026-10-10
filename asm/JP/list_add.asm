
; Call the selected-slot list insertion path.
AddSelList:


Call_000_23db:
    call AppendSelList
    ret

; Apply the selected-slot and case-specific list checks, append its packed value, and refresh state.
AppendSelList:


Call_000_23df:
    ld a, [wInputKind]
    cp $02
    jr nz, jr_000_240f

    ld a, [wChangeMode]
    cp $01
    jr nz, jr_000_240f

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

Call_000_2400:
    ld l, a
    ldh a, [hItemSlot+1]

Call_000_2403:
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [$c526], a
    call DropListHead
    call StoreWorkGroup

jr_000_240f:
    call SetAttr0
    ld a, [wCaseId]
    cp $00
    jr z, jr_000_2423

    call CheckC2ListItem
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_245a

Jump_000_2423:
jr_000_2423:
    call GetListEndPos
    ld bc, wListPacked
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b

Jump_000_2439:
    ld bc, wListBase
    add hl, bc
    ld [hl], a
    call ResumeTextUI
    call StoreListEnd
    ld a, [wListMax]
    ld [wOpByte], a

Jump_000_244a:
    call RefreshListMode
    push af
    ld a, $02
    call PushRomBank
    pop af
    call IncListEnd
    call PopRomBank

jr_000_245a:
    ld a, [wInputKind]
    cp $02
    jr z, jr_000_2472

    ld a, [wHitObj]
    call ClearObjVisible

Jump_000_2467:
    call RefreshObjs
    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a
    ret


jr_000_2472:
    ld a, [wSkipListWait]
    cp $01
    ret z

    ld a, $3c
    call WaitTicks
    ld a, $01
    ld [wChangeMode], a
    call RefreshLists
    ret

; Set the item flag for A and enter the argument-value list insertion continuation.
AddItemList:


Call_000_2486:
    call SetItemFlag
    jr jr_000_248e

; Read and set an item flag, append argument zero at the list end, and refresh objects.
AddArgList:

    call SetItemArg

jr_000_248e:
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

Jump_000_24aa:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call IncListEnd
    call PopRomBank
    jp Jump_000_2467
