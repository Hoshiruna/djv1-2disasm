
; Copy the indexed record to the selected slot and draw its heading at (3, $13); save only the scratch low byte.
DrawListHead:

    ldh a, [hChangePos]

jr_001_4f4f:
    push af
    ld a, [wPendingCur]
    add a
    ldh [hChangePos], a
    ld bc, wPendingOps
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListType
    add hl, bc
    ld [hl], a
    ld bc, wPendingArgs
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListValue
    add hl, bc
    ld [hl], a
    ld a, $03
    ld [wTextX], a
    ld a, $13
    ld [wTextY], a
    call PickListHead
    xor a
    ld [wListMark], a
    call Call_000_107a
    call SubmitMapQueue
    pop af
    ldh [hChangePos], a
    ret

; Select a heading name by list mode, clamping modes >= 2 to the third handler.
PickListHead:


Call_001_4fa1:
    ld a, [wChangeMode]
    cp $02
    jr c, jr_001_4faa

    ld a, $02

jr_001_4faa:
    rst RST_00

ListHeadTable:
    dw HeadMode0, HeadRecord, HeadMode2

; Set the mode-0 heading name: Case I $be, Case II $c8.
HeadMode0:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_4fbc

    ld a, $be
    jr jr_001_4fbe

jr_001_4fbc:
    ld a, $c8

jr_001_4fbe:
    ld [wListName], a
    ret

; Set the heading from the case/type base plus selected value; restore only the scratch low byte.
HeadRecord:


    ldh a, [hChangePos]
    push af
    ld d, a
    ld bc, wListType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld a, d
    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_4feb

    ld bc, C1NameBase
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    jr jr_001_4ff6

jr_001_4feb:
    ld bc, C2NameBase
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]

jr_001_4ff6:
    push af
    ld bc, wListValue
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    add b
    ld [wListName], a
    pop af
    ldh [hChangePos], a
    ret

; Set the heading for modes >= 2: Case I $bd, Case II $c9.
HeadMode2:


    ld a, [wCaseId]
    cp $00
    jr nz, jr_001_5017

    ld a, $bd
    jr jr_001_5019

jr_001_5017:
    ld a, $c9

jr_001_5019:
    ld [wListName], a
    ret
