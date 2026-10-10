
; For a type-two pending record, store the working-list bytes in its group record using the regional source base.
StoreWorkGroup:


Call_000_236a:
    ld a, [wPendingCur]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, wPendingOps
    add hl, bc
    ld a, [hl+]
    cp $02
    ret nz

    ld a, [hl]
    sla a
    sla a
    sla a
    ld l, a
    ld h, $00
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_239d

    ld bc, wGroupData
    add hl, bc
    ld bc, wWorkList
    ld e, $00

jr_000_2393:
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc e
    ld a, e
    cp $07
    jr c, jr_000_2393

    ret


jr_000_239d:
    ld bc, wGroupData+1
    add hl, bc
    ld bc, wWorkList
    ld e, $00

jr_000_23a6:
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc e
    ld a, e
    cp $06
    jr c, jr_000_23a6

    ret
