; HL = type/value record; apply its property handler, saving the value pointer on the stack.
ApplyChange:

    ld a, [hl+]
    push hl
    rst RST_00

ChangeOps:
    dw ChangeNone, ChangeProp1, ChangeGroup, ChangeNone, ChangeProp4, ChangeNone

; Restore the value pointer; the group apply helper stores its header unchanged.
ChangeGroup:
    pop hl
    ld a, [hl]
    call Call_000_37ed
    ret

; Discard the saved value pointer and return for types 0, 3 and 5.
ChangeNone:

    pop hl
    ret

; Restore the value pointer and set its property type 1 bit.
ChangeProp1:

    pop hl
    ld a, [hl]
    call SetProp1
    ret

; Restore the value pointer and set its property type 4 bit.
ChangeProp4:

    pop hl
    ld a, [hl]
    call SetProp4
    ret

; HL = type/value record; return immediately for Case I, otherwise dispatch its undo handler.
UndoC2Change:

    ld a, [wCaseId]
    cp $00
    ret z

    ld a, [hl+]
    push hl
    rst RST_00

C2UndoOps:
    dw ChangeNone, UndoProp1, UndoGroup, ChangeNone, UndoProp4, ChangeNone

; Restore the value pointer and mask its group header with $11.
UndoGroup:
    pop hl
    ld a, [hl]
    call MaskGroup
    ret

; Restore the value pointer and clear its property type 1 bit.
UndoProp1:

    pop hl
    ld a, [hl]
    call ClearProp1
    ret

; Restore the value pointer and clear its property type 4 bit.
UndoProp4:

    pop hl
    ld a, [hl]
    call ClearProp4
    ret

; Append arg 0/1, apply the record, then copy non-$ff values from six scratch slots to the working list.
AppendChange:

    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a
    ld [wPendingLast], a
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [wArg0]
    push af
    ld bc, wPendingOps
    add hl, bc
    ld [hl+], a
    ld a, [wArg1]
    push af
    ld [hl-], a
    call ApplyChangeBank
    pop af
    ld [wChangeValue], a
    pop af
    ld [wChangeType], a
    call PrepChangeList
    ld bc, $c470
    ld hl, $c85b
    ld e, $00

jr_003_5080:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_5087

    ld [bc], a
    inc bc

jr_003_5087:
    inc e
    ld a, $06
    cp e
    jr nz, jr_003_5080

    call Call_000_256c
    ret
