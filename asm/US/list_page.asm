
; Dispatch selection $0b/$0c to page navigation; restore the saved marker on its saved mode.
StepListPage:


Call_001_4c06:
    ld a, [wListSel]
    cp $0b
    jr z, jr_001_4c12

    cp $0c
    jr z, jr_001_4c2c

    ret


jr_001_4c12:
    call NextListPage
    ld a, [wChangeMode]
    ld c, a
    ld a, [wSelMode]
    ld b, a
    ld a, c
    cp b
    jr z, jr_001_4c22

    ret


jr_001_4c22:
    ld a, [wSelRow]
    ld [wListMarkRow], a
    call DrawListMark
    ret


jr_001_4c2c:
    call PrevListPage
    ld a, [wChangeMode]
    ld c, a
    ld a, [wSelMode]
    ld b, a
    ld a, c
    cp b
    jr z, jr_001_4c22

    ret

; Save the selected slot around the cursor update, then advance the record or mode and redraw.
NextListPage:


Call_001_4c3c:
    ld a, [wListPrev]
    ld [$c859], a
    ld a, $0b
    ld [wListSel], a
    ld [$c85a], a

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
    jr jr_001_4c68

    ld a, [wSelAction]
    cp $ff
    jr z, jr_001_4c4a

jr_001_4c68:
    ld a, [wChangeMode]
    ld c, a
    ld a, [wListMax]
    ld b, a
    ld a, c
    cp b
    jr c, jr_001_4c75

    ret


jr_001_4c75:
    ld a, [wChangeMode]
    cp $0c
    jr nc, jr_001_4ca8

    cp $02
    jr nc, jr_001_4c99

    cp $01
    jr z, jr_001_4c89

    ld a, $ff
    ld [wPendingCur], a

jr_001_4c89:
    ld a, [wPendingLast]
    cp $ff
    jr nz, jr_001_4ca9

    ld d, a
    ld a, [wChangeMode]
    inc a
    ld [wChangeMode], a
    ld a, d

jr_001_4c99:
    ld d, a
    ld a, [wChangeMode]
    inc a
    ld [wChangeMode], a
    ld a, d

jr_001_4ca2:
    ; DrawListUI already draws items; the original second draw is retained.
    call DrawListUI
    call DrawListItems

jr_001_4ca8:
    ret


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
    jr c, jr_001_4c99

    call ReadChange
    call PrepChangeList
    ld a, $5b
    ld [$c867], a
    ld a, $c8
    ld [$c868], a
    call Call_000_3138
    call Call_000_31c9
    ld a, [wChangeMode]
    cp $00
    jr z, jr_001_4c99

    jr jr_001_4ca2

; Save the selected slot around the cursor update, then move back through modes or records and redraw.
PrevListPage:

Call_001_4cdd:
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
    jr nc, jr_001_4d25

    cp $01
    jr z, jr_001_4d15

    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a

jr_001_4d15:
    ld a, [wPendingLast]
    cp $ff
    jr nz, jr_001_4d35

    ld d, a
    ld a, [wChangeMode]
    dec a
    ld [wChangeMode], a
    ld a, d

jr_001_4d25:
    ld d, a
    ld a, [wChangeMode]
    dec a
    ld [wChangeMode], a
    ld a, d

jr_001_4d2e:
    ; DrawListUI already draws items; the original second draw is retained.
    call DrawListUI
    call DrawListItems
    ret


jr_001_4d35:
    ld d, a
    ld a, [wPendingCur]
    dec a
    ld [wPendingCur], a
    ld a, d
    ld a, [wChangeMode]
    cp $02
    jr z, jr_001_4d4c

    ld a, [wPendingCur]
    cp $ff
    jr z, jr_001_4d25

jr_001_4d4c:
    call ReadChange
    call PrepChangeList
    ld bc, wListScratch
    ld a, c
    ld [$c867], a
    ld a, b
    ld [$c868], a
    call Call_000_3138
    call Call_000_31c9
    ld a, [wChangeMode]
    cp $02
    jr z, jr_001_4d25

    jr jr_001_4d2e
