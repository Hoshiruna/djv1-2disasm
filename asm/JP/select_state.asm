
; Save the current coordinate bytes, then dispatch by the five-entry input-mode table.
DispatchInput:


Call_001_5b8b:
    ld a, [wCursorX]
    ld [wInputX], a
    ld a, [wCursorY]
    ld [wInputY], a
    ld a, [wInputMode]
    rst RST_00

InputModes:
    dw InputMode0Return ; InputModeCursor
    dw SelectInput ; InputModeConfirm
    dw CancelSelect ; InputModeCancel
    dw InputMode3Return
    dw InputMode4Return

; Cancel the alternate slot when its offset is $10; otherwise reset selection and clear the previous cursor.
CancelSelect:
    ldh a, [hItemSlot]
    cp OpSlotAlternate
    jr nz, CancelSelectPrimary

    ld a, [wSelRow]
    ld [wListMarkRow], a
    call ClearListMark
    call ClearAltSlot
    ld a, [wStateResult]
    and $fb
    ld [wStateResult], a
    ld a, [wCaseId]
    cp $00
    jr nz, CancelSelectCase2Flag

    ld a, C1AltTargetCancelled
    jr CancelSelectRestoreList

; Choose the Case II cancellation flag for the alternate slot.
CancelSelectCase2Flag:
jr_001_5bca:
    ld a, C2AltTargetCancelled

; Set the selected cancellation flag and restore the previous list selection.
CancelSelectRestoreList:
jr_001_5bcc:
    call SetObjFlag
    ld a, [wListPrev]
    ld [wListSel], a
    ret


; Reset the primary selection and clear its list cursor.
CancelSelectPrimary:
jr_001_5bd6:
    call ResetSelect
    call ClearListCursor
    ld a, $ff
    ld [wListSel], a
    ret

; Clear the selected action, then fall through to ClearSelect.
ResetSelect:


Call_001_5be2:
    ld a, $ff
    ld [wSelAction], a

; Fill the first 16-byte operation slot and wOpClass/wActionCode with $ff; leave the action unchanged.
ClearSelect:

Call_001_5be7:
    ld a, $ff
    ld [wOpClass], a
    ld [wActionCode], a
    ld hl, wItemType
    ld d, OpSlotSize

; Fill the sixteen-byte primary operation slot with $ff.
ClearSelectSlotLoop:
jr_001_5bf4:
    ld [hl+], a
    dec d
    jr nz, ClearSelectSlotLoop

    ret

; Fill the alternate 16-byte operation slot at wAltSlot with $ff.
ClearAltSlot:


Call_001_5bf9:
    ld hl, wAltSlot
    ld a, $ff
    ld d, OpSlotSize

; Fill the sixteen-byte alternate operation slot with $ff.
ClearAltSlotLoop:
jr_001_5c00:
    ld [hl+], a
    dec d
    jr nz, ClearAltSlotLoop

    ret


; Input mode 3 returns here.
InputMode3Return:
    ret


; Input mode 4 returns here.
InputMode4Return:
    ret


; Input mode 0 returns here.
InputMode0Return:
    ret
