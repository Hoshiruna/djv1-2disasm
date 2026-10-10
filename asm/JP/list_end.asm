
; Set the list input and cursor, save the old mode, select the requested mode, and refresh lists.
RefreshListMode:


Call_000_3389:
    ld a, $0c
    ld [wInputSel], a
    ld a, $04
    ld [wCursorX], a
    ld a, $9c
    ld [wCursorY], a
    ld a, [wOpByte]
    ld d, a
    ld a, [wChangeMode]
    ld [wPrevListMode], a
    cp d
    jr z, jr_000_33ab

    ld a, [wOpByte]
    ld [wChangeMode], a

jr_000_33ab:
    call RefreshLists
    ret

; Clear the result; show message $73 and set it when the regional list capacity is reached.
CheckListFull:


    call ClearResult
    ld a, [wListMax]
    cp $0b
    jr c, jr_000_33c1

    ld a, $73
    call ShowMsg2
    call SetResult

jr_000_33c1:
    ret

; Decrement the end row; on underflow wrap to the regional final row and decrement the end group.
DecListEnd:


Call_000_33c2:
    ld a, [wListEndRow]
    dec a
    ld [wListEndRow], a
    cp $ff
    ret nz

Call_000_33cc:
    ld a, $07
    ld [wListEndRow], a
    ld a, [wListMax]
    dec a
    ld [wListMax], a
    ret

; Store the end group and row into the selected operation slot mode and row fields.
StoreListEnd:


Call_000_33d9:
    ld a, [wListMax]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wSelMode
    add hl, bc
    ld [hl], a
    ld a, [wListEndRow]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]

Call_000_33f2:
    ld h, a
    ld a, b
    ld bc, wSelRow

Call_000_33f7:
    add hl, bc
    ld [hl], a
    ret
