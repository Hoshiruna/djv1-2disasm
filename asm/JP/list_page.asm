
; Dispatch selection $0b/$0c to page navigation; restore the saved marker on its saved mode.
StepListPage:


Call_001_4c84:
    ld a, [wListSel]
    cp $0b
    jr z, jr_001_4c90

    cp $0c
    jr z, jr_001_4caa

    ret


jr_001_4c90:
    call NextListPage
    ld a, [wChangeMode]
    ld c, a
    ld a, [wSelMode]
    ld b, a
    ld a, c
    cp b
    jr z, jr_001_4ca0

    ret


jr_001_4ca0:
    ld a, [wSelRow]
    ld [wListMarkRow], a
    call DrawListMark
    ret


jr_001_4caa:
    call PrevListPage
    ld a, [wChangeMode]
    ld c, a
    ld a, [wSelMode]
    ld b, a
    ld a, c
    cp b
    jr z, jr_001_4ca0

    ret

; Save the selected slot around the cursor update, then advance the record or mode and redraw.
NextListPage:


Call_001_4cba:
    ld a, [wListPrev]
    ld [$c859], a
    ld a, $0b
    ld [wListSel], a
    ld [$c85a], a

jr_001_4cc8:
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
    jr jr_001_4ce6

    ld a, [wSelAction]
    cp $ff
    jr z, jr_001_4cc8

jr_001_4ce6:
    ld a, [wChangeMode]
    ld c, a
    ld a, [wListMax]
    ld b, a
    ld a, c
    cp b
    jr c, jr_001_4cf3

    ret


jr_001_4cf3:
    ld a, [wChangeMode]
    cp $0b
    jr nc, jr_001_4d26

    cp $02
    jr nc, jr_001_4d17

    cp $01
    jr z, jr_001_4d07

    ld a, $ff
    ld [wPendingCur], a

jr_001_4d07:
    ld a, [wPendingLast]
    cp $ff
    jr nz, jr_001_4d27

    ld d, a
    ld a, [wChangeMode]
    inc a
    ld [wChangeMode], a
    ld a, d

jr_001_4d17:
    ld d, a
    ld a, [wChangeMode]
    inc a
    ld [wChangeMode], a
    ld a, d

jr_001_4d20:
    ; DrawListUI already draws items; the original second draw is retained.
    call DrawListUI
    call DrawListItems

jr_001_4d26:
    ret


jr_001_4d27:
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
    jr c, jr_001_4d17

    call ReadChange
    call PrepChangeList
    ld a, $5b
    ld [$c867], a
    ld a, $c8
    ld [$c868], a
    call ClearWorkList
    call CopyWorkList
    ld a, [wChangeMode]
    cp $00
    jr z, jr_001_4d17

    jr jr_001_4d20

; Save the selected slot around the cursor update, then move back through modes or records and redraw.
PrevListPage:

Call_001_4d5b:
    ld a, [wListPrev]
    ld [$c859], a
    ld a, $0c
    ld [wListSel], a
    ld [$c85a], a
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
    jr nc, jr_001_4da3

    cp $01
    jr z, jr_001_4d93

    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a

jr_001_4d93:
    ld a, [wPendingLast]
    cp $ff
    jr nz, jr_001_4db3

    ld d, a
    ld a, [wChangeMode]
    dec a
    ld [wChangeMode], a
    ld a, d

jr_001_4da3:
    ld d, a
    ld a, [wChangeMode]
    dec a
    ld [wChangeMode], a
    ld a, d

jr_001_4dac:
    ; DrawListUI already draws items; the original second draw is retained.
    call DrawListUI
    call DrawListItems
    ret


jr_001_4db3:
    ld d, a
    ld a, [wPendingCur]
    dec a
    ld [wPendingCur], a
    ld a, d
    ld a, [wChangeMode]
    cp $02
    jr z, jr_001_4dca

    ld a, [wPendingCur]
    cp $ff
    jr z, jr_001_4da3

jr_001_4dca:
    call ReadChange
    call PrepChangeList
    ld bc, wListScratch
    ld a, c
    ld [$c867], a
    ld a, b
    ld [$c868], a
    call ClearWorkList
    call CopyWorkList
    ld a, [wChangeMode]
    cp $02
    jr z, jr_001_4da3

    jr jr_001_4dac
