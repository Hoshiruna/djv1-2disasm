
; Call the selected-slot list insertion path.
AddSelList:


Call_000_228b:
    call AppendSelList
    ret

; Apply the selected-slot and case-specific list checks, append its packed value, and refresh state.
AppendSelList:


Call_000_228f:
    ld a, [wInputKind]
    cp $02
    jr nz, jr_000_22bf

    ld a, [wChangeMode]
    cp $01

Jump_000_229b:
    jr nz, jr_000_22bf

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
    ld [$c526], a

Jump_000_22b9:
    call DropListHead
    call StoreWorkGroup

jr_000_22bf:
    call SetAttr0
    ld a, [wCaseId]
    cp $00
    jr z, jr_000_22d3

    call CheckC2ListItem
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_230a

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

jr_000_230a:
    ld a, [wInputKind]
    cp $02
    jr z, jr_000_2322

    ld a, [wHitObj]
    call ClearObjVisible

Jump_000_2317:
    call RefreshObjs
    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a
    ret


jr_000_2322:
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


Call_000_2336:
Jump_000_2336:
    call SetItemFlag
    jr jr_000_233e

; Read and set an item flag, append argument zero at the list end, and refresh objects.
AddArgList:

    call SetItemArg

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
    jp Jump_000_2317
