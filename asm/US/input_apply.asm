
; Mode zero applies cursor coordinates; other modes dispatch in slot zero and restore the original slot on return.
HandleInput:
    ld a, [wInputMode]
    cp $00
    jr nz, jr_001_5a1a

; Copy candidate coordinates to the current cursor without changing the operation slot.
ApplyCursor:

Call_001_5a0d:
    ld a, [wInputX]
    ld [wCursorX], a
    ld a, [wInputY]
    ld [wCursorY], a
    ret


jr_001_5a1a:
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
    jr z, jr_001_5a8e

    ld a, [wItemType]
    cp $ff
    jr z, jr_001_5a8e

    call PrepItem
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_5a4d

    call RunC1Action
    jr jr_001_5a50

jr_001_5a4d:
    call RunC2Action

jr_001_5a50:
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
    jr z, jr_001_5a72

    call C2EventsCall

jr_001_5a72:
    call ClearSelect
    call ClearAltSlot
    ld a, $bf
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_001_5a8e

    ld a, $ff
    ld [wSelAction], a
    ld a, $bf
    call ClearObjFlag

jr_001_5a8e:
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
    jr nz, jr_001_5aab

    call ApplyCursor
    ret


jr_001_5aab:
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
    jr z, jr_001_5aee

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

jr_001_5aee:
    ret

; Draw CursorOff09 at destination 9, submit its map update and wait one frame.
ClearTargetMark:


Call_001_5aef:
    ld a, [CursorDst+18]
    ld c, a
    ld a, [CursorDst+19]
    ld b, a
    ld hl, CursorOff09
    call QueueTileRect
    call SubmitMapQueue
    call WaitFrame
    ret
