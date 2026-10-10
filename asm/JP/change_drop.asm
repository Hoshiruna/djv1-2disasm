
; Remove the selected type/value pair, then adjust the current record selection.
RemoveChange:

Call_000_2586:
    push af
    ld a, $02
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

jr_000_25a4:
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
    jr nz, jr_000_25d8

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
    jr z, jr_000_25e8

jr_000_25d8:
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
    jr jr_000_25a4

jr_000_25e8:
    ldh a, [hChangePos]
    ld [wDropPos], a

jr_000_25ed:
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

Jump_000_25ff:
    ld a, b
    ld bc, wPendingOps

Jump_000_2603:
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

Jump_000_2611:
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wPendingArgs
    add hl, bc
    ld [hl], a
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
    jr c, jr_000_25ed

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
    jr nc, jr_000_2692

    cp $00
    jr z, jr_000_2692

; Adjust the current record after removal; rebuild the list when required.
AdjustChange:

Call_000_264b:
    ld a, [wPendingLast]
    cp $ff
    jr z, jr_000_26ba

    ld a, [$c8b0]
    cp $02
    jr z, jr_000_2692

    ld a, [wPendingCur]
    ld c, a
    ld a, [wDropPos]
    srl a
    dec a
    cp $ff
    jr z, jr_000_2669

    cp c
    ret nc

jr_000_2669:
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
    jr nz, jr_000_26ad

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

jr_000_2692:
    ld a, [wPendingCur]
    ld c, a
    ld a, [wDropPos]
    cp $00
    jr z, jr_000_26a2

    srl a
    dec a
    cp c
    ret nc

jr_000_26a2:
    ld a, [wPendingCur]
    cp $ff
    ret z

    dec a
    ld [wPendingCur], a
    ret

jr_000_26ad:
    call ReadChange
    call PrepChangeList

Call_000_26b3:
    call CopyChangeList
    call RefreshLists
    ret

; Set an empty current selection, switch mode to $02 and invoke the existing refresh.
ResetChangeSel:

jr_000_26ba:
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

Call_000_26cf:
    call ReadArgs2
    ld a, [wPendingLast]
    dec a
    ld [wPendingLast], a
    ld hl, wPendingOps

jr_000_26dc:
    ld a, [wArg0]
    cp [hl]
    jr nz, jr_000_26ec

    ld a, [wArg1]
    inc hl
    cp [hl]
    jr z, jr_000_26f0

    inc hl
    jr jr_000_26dc

jr_000_26ec:
    inc hl
    inc hl
    jr jr_000_26dc

; HL = matching value byte; shift to low byte $32, then clear two bytes at HL-4.
ShiftChanges:

jr_000_26f0:
    dec hl
    ld c, l
    ld b, h
    inc hl
    inc hl

jr_000_26f5:
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, l
    cp $32
    jr nz, jr_000_26f5

    dec hl
    dec hl
    dec hl
    dec hl
    ld a, $ff
    ld [hl+], a

Jump_000_2707:
    ld [hl], a
    ret

; Find the selected item pair and share ShiftChanges; leave record indices unchanged.
DropItemChange:

    ld hl, wPendingOps

jr_000_270c:
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
    jr nz, jr_000_2730

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
    jr z, jr_000_26f0

    inc hl
    jr jr_000_270c

jr_000_2730:
    inc hl
    inc hl
    jr jr_000_270c

; Copy six scratch bytes to the working list without filtering or clearing its seventh slot.
CopyChangeList:

Call_000_2734:
    ld hl, $c470
    ld a, [wListScratch]
    ld [hl+], a
    ld a, [wListScratch+1]
    ld [hl+], a

Call_000_273f:
    ld a, [wListScratch+2]
    ld [hl+], a
    ld a, [wListScratch+3]
    ld [hl+], a
    ld a, [wListScratch+4]
    ld [hl+], a
    ld a, [wListScratch+5]
    ld [hl+], a
    ret
