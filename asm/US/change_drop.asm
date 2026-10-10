
; Remove the selected type/value pair, then adjust the current record selection.
RemoveChange:

Call_000_2436:
    push af
    ld a, $02

Jump_000_2439:
    call PushRomBank
    pop af
    call ClearC1Pair
    call PopRomBank
    ld a, [wPendingLast]
    dec a
    ld [wPendingLast], a
    ld d, a
    ld a, $00
    ldh [hChangePos], a
    ld a, $00
    ldh [hChangePos+1], a
    ld a, d

jr_000_2454:
    ld bc, wPendingOps
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_000_2488

    ld bc, wPendingArgs
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp d

Call_000_2486:
    jr z, jr_000_2498

jr_000_2488:
    ldh a, [hChangePos]
    ld c, a
    ldh a, [hChangePos+1]
    ld b, a
    inc bc
    inc bc
    ld a, c
    ldh [hChangePos], a
    ld a, b
    ldh [hChangePos+1], a
    jr jr_000_2454

jr_000_2498:
    ldh a, [hChangePos]
    ld [wDropPos], a

jr_000_249d:
    ld bc, wPendingOps+2
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wPendingOps
    add hl, bc
    ld [hl], a
    ld bc, wPendingArgs+2
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wPendingArgs
    add hl, bc
    ld [hl], a

Call_000_24cd:
    ldh a, [hChangePos]
    ld c, a
    ldh a, [hChangePos+1]
    ld b, a
    inc bc
    inc bc
    ld a, c
    ldh [hChangePos], a
    ld a, b
    ldh [hChangePos+1], a
    ld a, c
    cp $0a
    jr c, jr_000_249d

    ld a, $ff
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wPending
    add hl, bc
    ld [hl+], a
    ld [hl], a
    ld a, [wChangeMode]
    cp $02

Jump_000_24f5:
    jr nc, jr_000_2542

    cp $00
    jr z, jr_000_2542

; Adjust the current record after removal; rebuild the list when required.
AdjustChange:

Call_000_24fb:
    ld a, [wPendingLast]
    cp $ff

Call_000_2500:
    jr z, jr_000_256a

    ld a, [$c8b0]
    cp $02
    jr z, jr_000_2542

    ld a, [wPendingCur]
    ld c, a
    ld a, [wDropPos]
    srl a
    dec a
    cp $ff
    jr z, jr_000_2519

    cp c
    ret nc

jr_000_2519:
    ld a, [wPendingCur]
    add a
    ldh [hChangePos], a
    ld bc, wPendingOps
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_000_255d

    ld a, [wPendingCur]
    dec a
    ld [wPendingCur], a
    call ReadChange
    call PrepChangeList
    call CopyChangeList
    call RefreshLists
    ret

; Use the removed byte offset to decrement the current record index when required.
TrimChangeSel:

jr_000_2542:
    ld a, [wPendingCur]
    ld c, a
    ld a, [wDropPos]
    cp $00
    jr z, jr_000_2552

    srl a
    dec a
    cp c
    ret nc

jr_000_2552:
    ld a, [wPendingCur]

Jump_000_2555:
    cp $ff
    ret z

Jump_000_2558:
    dec a
    ld [wPendingCur], a
    ret

jr_000_255d:
    call ReadChange
    call PrepChangeList
    call CopyChangeList
    call RefreshLists
    ret

; Set an empty current selection, switch mode to $02 and invoke the existing refresh.
ResetChangeSel:

jr_000_256a:
    ld a, $ff
    ld [wPendingCur], a
    ld a, $02
    ld [wChangeMode], a
    call RefreshLists
    ret

; Remove the script operand pair, then adjust the current selection.
ScriptDropChange:

    call DropArgChange
    call AdjustChange
    ret

; Read two operands, decrement the last index and find their matching pair.
DropArgChange:

Call_000_257f:
    call ReadArgs2
    ld a, [wPendingLast]
    dec a
    ld [wPendingLast], a
    ld hl, wPendingOps

jr_000_258c:
    ld a, [wArg0]
    cp [hl]
    jr nz, jr_000_259c

    ld a, [wArg1]
    inc hl
    cp [hl]
    jr z, jr_000_25a0

    inc hl
    jr jr_000_258c

jr_000_259c:
    inc hl
    inc hl
    jr jr_000_258c

; HL = matching value byte; shift to low byte $32, then clear two bytes at HL-4.
ShiftChanges:

jr_000_25a0:
    dec hl
    ld c, l
    ld b, h
    inc hl
    inc hl

jr_000_25a5:
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, l
    cp $32
    jr nz, jr_000_25a5

    dec hl
    dec hl
    dec hl
    dec hl
    ld a, $ff
    ld [hl+], a
    ld [hl], a
    ret

; Find the selected item pair and share ShiftChanges; leave record indices unchanged.
DropItemChange:

    ld hl, wPendingOps

jr_000_25bc:
    push hl
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    pop hl
    cp [hl]
    jr nz, jr_000_25e0

    push hl
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    pop hl
    inc hl
    cp [hl]
    jr z, jr_000_25a0

    inc hl
    jr jr_000_25bc

jr_000_25e0:
    inc hl
    inc hl
    jr jr_000_25bc

; Copy six scratch bytes to the working list without filtering or clearing its seventh slot.
CopyChangeList:

Call_000_25e4:
    ld hl, wWorkList
    ld a, [wListScratch]
    ld [hl+], a
    ld a, [wListScratch+1]
    ld [hl+], a
    ld a, [wListScratch+2]
    ld [hl+], a
    ld a, [wListScratch+3]
    ld [hl+], a
    ld a, [wListScratch+4]
    ld [hl+], a
    ld a, [wListScratch+5]
    ld [hl+], a

Jump_000_25ff:
    ret
