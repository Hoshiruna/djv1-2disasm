
; Save the current coordinate bytes, then dispatch by the five-entry input-mode table.
DispatchInput:


Call_001_5b04:
    ld a, [wCursorX]
    ld [wInputX], a
    ld a, [wCursorY]
    ld [wInputY], a
    ld a, [wInputMode]
    rst RST_00

InputModes:
    dw $5b80
    dw SelectInput
    dw CancelSelect
    dw $5b7e
    dw $5b7f

; Cancel the alternate slot when its offset is $10; otherwise reset selection and clear the previous cursor.
CancelSelect:
    ldh a, [hItemSlot]
    cp $10
    jr nz, jr_001_5b4f

    ld a, [wSelRow]
    ld [wListMarkRow], a
    call ClearListMark
    call ClearAltSlot
    ld a, [wStateResult]
    and $fb
    ld [wStateResult], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_5b43

    ld a, $7f
    jr jr_001_5b45

jr_001_5b43:
    ld a, $8f

jr_001_5b45:
    call SetObjFlag
    ld a, [wListPrev]
    ld [wListSel], a
    ret


jr_001_5b4f:
    call ResetSelect
    call ClearListCursor
    ld a, $ff
    ld [wListSel], a
    ret

; Clear the selected action, then fall through to ClearSelect.
ResetSelect:


Call_001_5b5b:
    ld a, $ff
    ld [wSelAction], a

; Fill the first 16-byte operation slot and $c8b1/$c8b3 with $ff; leave the action unchanged.
ClearSelect:

Call_001_5b60:
    ld a, $ff
    ld [$c8b1], a
    ld [$c8b3], a
    ld hl, wItemType
    ld d, $10

jr_001_5b6d:
    ld [hl+], a
    dec d
    jr nz, jr_001_5b6d

    ret

; Fill the alternate 16-byte operation slot at wAltSlot with $ff.
ClearAltSlot:


Call_001_5b72:
    ld hl, wAltSlot
    ld a, $ff
    ld d, $10

jr_001_5b79:
    ld [hl+], a
    dec d
    jr nz, jr_001_5b79

    ret


; Input mode 3 returns here.
    ret


; Input mode 4 returns here.
    ret


; Input mode 0 returns here.
    ret
