
; Dispatch selection $0b/$0c to page navigation; restore the saved marker on its saved mode.
StepListPage:


Call_001_4c06:
    ld a, [wListSel]
    cp $0b
    jr z, StepListNext

    cp $0c
    jr z, StepListPrevious

    ret


; Advance the page and check whether the saved selection mark belongs to this mode.
StepListNext:
jr_001_4c12:
    call NextListPage
    ld a, [wChangeMode]
    ld c, a
    ld a, [wSelMode]
    ld b, a
    ld a, c
    cp b
    jr z, StepListRestoreMark

    ret


; Draw the saved row mark in its matching list mode.
StepListRestoreMark:
jr_001_4c22:
    ld a, [wSelRow]
    ld [wListMarkRow], a
    call DrawListMark
    ret


; Move to the previous page and check the saved selection mode.
StepListPrevious:
jr_001_4c2c:
    call PrevListPage
    ld a, [wChangeMode]
    ld c, a
    ld a, [wSelMode]
    ld b, a
    ld a, c
    cp b
    jr z, StepListRestoreMark

    ret

; Save the selected slot around the cursor update, then advance the record or mode and redraw.
NextListPage:


Call_001_4c3c:
    ld a, [wListPrev]
    ld [wListNavPrev], a
    ld a, $0b
    ld [wListSel], a
    ld [wListNavNext], a

; Move the page cursor while preserving the operation-slot offset.
NextListMoveCursor:
jr_001_4c4a:
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
    jr NextListCheckMaximum

    ld a, [wSelAction]
    cp $ff
    jr z, NextListMoveCursor

; Compare the current mode with the active list maximum.
NextListCheckMaximum:
jr_001_4c68:
    ld a, [wChangeMode]
    ld c, a
    ld a, [wListMax]
    ld b, a
    ld a, c
    cp b
    jr c, NextListCheckMode

    ret


; Apply the regional upper mode limit before advancing a mode or record.
NextListCheckMode:
jr_001_4c75:
    ld a, [wChangeMode]
    cp $0c
    jr nc, NextListReturn

    cp $02
    jr nc, NextListAdvanceMode

    cp $01
    jr z, NextListCheckRecords

    ld a, $ff
    ld [wPendingCur], a

; Check whether pending records exist for the next-page path.
NextListCheckRecords:
jr_001_4c89:
    ld a, [wPendingLast]
    cp $ff
    jr nz, NextListAdvanceRecord

    ld d, a
    ld a, [wChangeMode]
    inc a
    ld [wChangeMode], a
    ld a, d

; Increment the list mode before redrawing.
NextListAdvanceMode:
jr_001_4c99:
    ld d, a
    ld a, [wChangeMode]
    inc a
    ld [wChangeMode], a
    ld a, d

; Draw the list UI and retain the original second item draw.
NextListRedraw:
jr_001_4ca2:
    ; DrawListUI already draws items; the original second draw is retained.
    call DrawListUI
    call DrawListItems

; Return after the next-page limit or redraw path.
NextListReturn:
jr_001_4ca8:
    ret


; Advance the pending record index and prepare its list.
NextListAdvanceRecord:
jr_001_4ca9:
    ld d, a
    ld a, [wPendingCur]
    inc a
    ld [wPendingCur], a
    ld a, d
    ld a, [wPendingLast]
    ld c, a
    ld a, [wPendingCur]
    ld b, a
    ld a, c
    cp b
    jr c, NextListAdvanceMode

    call ReadChange
    call PrepChangeList
    ld a, $5b
    ld [wWorkSrc], a
    ld a, $c8
    ld [wWorkSrc+1], a
    call ClearWorkList
    call CopyWorkList
    ld a, [wChangeMode]
    cp $00
    jr z, NextListAdvanceMode

    jr NextListRedraw

; Save the selected slot around the cursor update, then move back through modes or records and redraw.
PrevListPage:

Call_001_4cdd:
    ld a, [wListPrev]
    ld [wListNavPrev], a
    ld a, $0c
    ld [wListSel], a
    ld [wListNavNext], a
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
    ld a, [wChangeMode]
    cp $00
    ret z

    cp $03
    jr nc, PrevListDecreaseMode

    cp $01
    jr z, PrevListCheckRecords

    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a

; Check whether pending records exist for the previous-page path.
PrevListCheckRecords:
jr_001_4d15:
    ld a, [wPendingLast]
    cp $ff
    jr nz, PrevListDecreaseRecord

    ld d, a
    ld a, [wChangeMode]
    dec a
    ld [wChangeMode], a
    ld a, d

; Decrement the list mode before redrawing.
PrevListDecreaseMode:
jr_001_4d25:
    ld d, a
    ld a, [wChangeMode]
    dec a
    ld [wChangeMode], a
    ld a, d

; Draw the list UI and retain the original second item draw.
PrevListRedraw:
jr_001_4d2e:
    ; DrawListUI already draws items; the original second draw is retained.
    call DrawListUI
    call DrawListItems
    ret


; Decrease the pending record index and check mode boundaries.
PrevListDecreaseRecord:
jr_001_4d35:
    ld d, a
    ld a, [wPendingCur]
    dec a
    ld [wPendingCur], a
    ld a, d
    ld a, [wChangeMode]
    cp $02
    jr z, PrevListReadRecord

    ld a, [wPendingCur]
    cp $ff
    jr z, PrevListDecreaseMode

; Read the selected pending record and prepare its work list.
PrevListReadRecord:
jr_001_4d4c:
    call ReadChange
    call PrepChangeList
    ld bc, wListScratch
    ld a, c
    ld [wWorkSrc], a
    ld a, b
    ld [wWorkSrc+1], a
    call ClearWorkList
    call CopyWorkList
    ld a, [wChangeMode]
    cp $02
    jr z, PrevListDecreaseMode

    jr PrevListRedraw
