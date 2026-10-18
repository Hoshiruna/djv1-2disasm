
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
    cp $03
    ret nc

    ld a, [wInputSel]
    cp $16
    jr z, SelectInputDispatch

    cp $15
    jr z, SelectInputDispatch

    ld [wListSel], a
    cp $0a
    jr z, SelectInputCheckAction

    cp $09
    jr nc, SelectInputDispatch

    ld hl, wStateResult
    ld a, [hl]
    and $04
    jr nz, SelectInputDispatch

; Move the cursor while preserving the operation-slot offset.
SelectInputMoveCursor:
jr_001_5c39:
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
jr_001_5c50:
    ld a, [wSelAction]
    cp $ff
    jr z, SelectInputMoveCursor

; Dispatch the classified input kind.
SelectInputDispatch:
jr_001_5c57:
    ld a, [wInputKind]
    rst RST_00

InputHandlers:
    dw $189e
    dw PickAction
    dw SelectListRow

InputKinds:
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $00, $00, $01, $04, $04

; For selections below 9, save the action unless result bit 2 is set; dispatch other selections by table.
PickAction:
    ld a, [wListSel]
    cp $09
    jr nc, PickActionTargetDispatch

    ld hl, wStateResult
    ld a, [hl]
    and $04
    jr z, PickActionStore

    ret


; Store the selected action after checking result bit two.
PickActionStore:
jr_001_5c8b:
    ld a, [wListSel]
    ld [wSelAction], a
    ret


; Dispatch selections nine and above through the target table.
PickActionTargetDispatch:
jr_001_5c92:
    sub $09
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
    cp $10
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
jr_001_5cd9:
    ld a, $8f

; Set the cancellation flag and restore the previous list selection.
SelectAuxCancelAlt:
jr_001_5cdb:
    call SetObjFlag
    ld a, [wListPrev]
    ld [wListSel], a

; Reset selection state and clear the list cursor after the auxiliary prompt.
SelectAuxReset:
jr_001_5ce4:
    call ResetSelect
    call ClearListCursor
    ld a, $ff
    ld [wListSel], a
    ld a, $ff
    ld [wSelAction], a
    ret

; If an action is selected, draw selection 9 and set the operation target to type 0, value $73/$a6.
PickFixedTarget:


    ld a, [wSelAction]
    cp $ff
    jr nz, PickFixedTargetDraw

    ret


; Draw the fixed-target cursor and set the selected slot type to zero.
PickFixedTargetDraw:
jr_001_5cfd:
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

    ld a, $73
    jr PickFixedTargetStore

; Choose fixed target $a6 for Case II.
PickFixedTargetCase2:
jr_001_5d2a:
    ld a, $a6

; Write the case-specific fixed target ID into the selected operation slot.
PickFixedTargetStore:
jr_001_5d2c:
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
