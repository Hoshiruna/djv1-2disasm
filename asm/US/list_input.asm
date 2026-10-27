
; Classify the input selection, update the cursor when allowed, then dispatch by selection kind.
SelectInput:


    ld hl, wInputSel
    ld a, [hl]
    ld hl, InputKinds
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld hl, wInputKind
    ld [hl], a
    cp InputKindCount
    ret nc

    ld a, [wInputSel]
    cp InputSelRoomFineStart
    jr z, SelectInputDispatch

    cp InputSelRoomFine
    jr z, SelectInputDispatch

    ld [wListSel], a
    cp InputSelAux
    jr z, SelectInputCheckAction

    cp InputSelSelf
    jr nc, SelectInputDispatch

    ld hl, wStateResult
    ld a, [hl]
    and $04
    jr nz, SelectInputDispatch

; Move the cursor while preserving the operation-slot offset.
SelectInputMoveCursor:
jr_001_5bb2:
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
    jr SelectInputDispatch

; Allow selection ten to move the cursor only when no action is selected.
SelectInputCheckAction:
jr_001_5bc9:
    ld a, [wSelAction]
    cp $ff
    jr z, SelectInputMoveCursor

; Dispatch the classified input kind.
SelectInputDispatch:
jr_001_5bd0:
    ld a, [wInputKind]
    rst RST_00

; Kinds zero, one and two select a room target, an action, or a list row.
InputHandlers:
    dw BuildRoomItem
    dw PickAction
    dw SelectListRow

InputKinds:
; $00-$0c: action, navigation and auxiliary selectors.
    db InputKindAction, InputKindAction, InputKindAction, InputKindAction
    db InputKindAction, InputKindAction, InputKindAction, InputKindAction
    db InputKindAction, InputKindAction, InputKindAction, InputKindAction
    db InputKindAction
; $0d-$14: declared list-row selectors.
    db InputKindListRow, InputKindListRow, InputKindListRow, InputKindListRow
    db InputKindListRow, InputKindListRow, InputKindListRow, InputKindListRow
; $15-$16: room-target selectors.
    db InputKindRoom, InputKindRoom
; $17-$17: command selector.
    db InputKindAction
; $18-$19: ignored selectors.
    db InputKindIgnored, InputKindIgnored

; For selections below 9, save the action unless result bit 2 is set; dispatch other selections by table.
PickAction:
    ld a, [wListSel]
    cp InputSelSelf
    jr nc, PickActionTargetDispatch

    ld hl, wStateResult
    ld a, [hl]
    and $04
    jr z, PickActionStore

    ret


; Store the selected action after checking result bit two.
PickActionStore:
jr_001_5c04:
    ld a, [wListSel]
    ld [wSelAction], a
    ret


; Dispatch selections nine and above through the target table.
PickActionTargetDispatch:
jr_001_5c0b:
    sub InputSelSelf
    rst RST_00

ActionTargets:
    dw PickFixedTarget
    dw SelectAux
    dw ApplyListPage
    dw ApplyListPage
    dw SkipSelect
    dw SkipSelect
    dw SkipSelect
    dw SkipSelect
    dw SkipSelect
    dw SkipSelect
    dw SkipSelect
    dw SkipSelect
    dw SkipSelect
    dw SkipSelect
    dw PickRoomTarget

; Return without changing selection state.
SkipSelect:

    ret

; Unless result bit 2 is set, call the original bank-2 helper and clear selection state.
SelectAux:

    ld a, [wStateResult]
    and $04
    ret nz

    call SavePromptCall
    ldh a, [hItemSlot]
    cp OpSlotAlternate
    jr nz, SelectAuxReset

    call ClearAltSlot
    ld a, [wStateResult]
    and $fb
    ld [wStateResult], a
    ld a, [wCaseId]
    cp $00
    jr nz, SelectAuxCase2Flag

    ld a, C1AltTargetCancelled
    jr SelectAuxCancelAlt

; Choose the Case II alternate-selection cancellation flag.
SelectAuxCase2Flag:
jr_001_5c52:
    ld a, C2AltTargetCancelled

; Set the cancellation flag and restore the previous list selection.
SelectAuxCancelAlt:
jr_001_5c54:
    call SetObjFlag
    ld a, [wListPrev]
    ld [wListSel], a

; Reset selection state and clear the list cursor after the auxiliary prompt.
SelectAuxReset:
jr_001_5c5d:
    call ResetSelect
    call ClearListCursor
    ld a, $ff
    ld [wListSel], a
    ld a, $ff
    ld [wSelAction], a
    ret

; If an action is selected, draw selection nine and set the case-specific type-zero self target.
PickFixedTarget:


    ld a, [wSelAction]
    cp $ff
    jr nz, PickFixedTargetDraw

    ret


; Draw the fixed-target cursor and set the selected slot type to zero.
PickFixedTargetDraw:
jr_001_5c76:
    ld hl, CursorOn09
    ld a, [CursorDst+18]
    ld c, a
    ld a, [CursorDst+19]
    ld b, a
    call QueueTileRect
    call SubmitMapQueue
    call WaitFrame
    xor a
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemType
    add hl, bc
    ld [hl], a
    ld a, [wCaseId]
    cp $00
    jr nz, PickFixedTargetCase2

    ld a, C1TargetSelf
    jr PickFixedTargetStore

; Choose the Case II self target.
PickFixedTargetCase2:
jr_001_5ca3:
    ld a, C2TargetSelf

; Write the case-specific fixed target ID into the selected operation slot.
PickFixedTargetStore:
jr_001_5ca5:
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wItemId
    add hl, bc
    ld [hl], a
    ret
