
; Mode zero applies cursor coordinates; other modes dispatch in slot zero and restore the original slot on return.
HandleInput:
    ld a, [wInputMode]
    cp $00
    jr nz, jr_001_5aa1

; Copy candidate coordinates to the current cursor without changing the operation slot.
ApplyCursor:

Call_001_5a94:
    ld a, [wInputX]
    ld [wCursorX], a
    ld a, [wInputY]
    ld [wCursorY], a
    ret


jr_001_5aa1:
    push af
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    pop af
    push hl
    ld d, a
    ld a, $00
    ldh [hItemSlot], a
    ld a, $00
    ldh [hItemSlot+1], a
    ld a, d
    call DispatchInput
    ld a, [wSelAction]
    cp $ff
    jr z, jr_001_5b15

    ld a, [wItemType]
    cp $ff
    jr z, jr_001_5b15

    call PrepItem
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_5ad4

    call RunC1Action
    jr jr_001_5ad7

jr_001_5ad4:
    call RunC2Action

jr_001_5ad7:
    ld a, [wSelRow]
    ld [wListMarkRow], a
    call ClearListMark
    ld a, [wSelRow+16]
    ld [wListMarkRow], a
    call ClearListMark
    call ClearTargetMark
    call WriteOpSlots
    ld a, [wCaseId]
    cp $00
    jr z, jr_001_5af9

    call Call_000_3974

jr_001_5af9:
    call ClearSelect
    call ClearAltSlot
    ld a, $bf
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_001_5b15

    ld a, $ff
    ld [wSelAction], a
    ld a, $bf
    call ClearObjFlag

jr_001_5b15:
    pop hl
    push af
    ld a, l
    ldh [hItemSlot], a
    ld a, h
    ldh [hItemSlot+1], a
    pop af
    ret

; Set result bit 2 and dispatch in the alternate slot; only the completed target path resets the slot and clears that bit here.
HandleAltInput:


    ld a, [wStateResult]
    or $04
    ld [wStateResult], a
    ld a, [wInputMode]
    cp $00
    jr nz, jr_001_5b32

    call ApplyCursor
    ret


jr_001_5b32:
    ld d, a
    ld a, $10
    ldh [hItemSlot], a
    ld a, $00
    ldh [hItemSlot+1], a
    ld a, d
    call DispatchInput
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_5b75

    call PrepItem
    call RunAltAction
    call WaitFrame
    ld a, [wSelRow+16]
    ld [wListMarkRow], a
    call ClearListMark
    call ClearTargetMark
    ld d, a
    ld a, $00
    ldh [hItemSlot], a
    ld a, $00
    ldh [hItemSlot+1], a
    ld a, d
    ld a, [wStateResult]
    and $fb
    ld [wStateResult], a

jr_001_5b75:
    ret

; Draw CursorOff09 at destination 9, submit its map update and wait one frame.
ClearTargetMark:


Call_001_5b76:
    ld a, [CursorDst+18]
    ld c, a
    ld a, [CursorDst+19]
    ld b, a
    ld hl, CursorOff09
    call QueueTileRect
    call SubmitMapQueue
    call WaitFrame
    ret
