
; For a type-two pending record, store the working-list bytes in its group record using the regional source base.
StoreWorkGroup:


Call_000_24ba:
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
    jr nz, StoreWorkGroupCase2

    ld bc, wGroupData
    add hl, bc
    ld bc, wWorkList+1
    ld e, $00

; Copy the next of seven Case I group-content bytes.
StoreWorkGroupCase1Next:
jr_000_24e3:
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc e
    ld a, e
    cp $07
    jr c, StoreWorkGroupCase1Next

    ret


; Skip the Case II group header before copying six content bytes.
StoreWorkGroupCase2:
jr_000_24ed:
    ld bc, wGroupData+1
    add hl, bc
    ld bc, wWorkList+1
    ld e, $00

; Copy the next of six Case II group-content bytes.
StoreWorkGroupCase2Next:
jr_000_24f6:
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc e
    ld a, e
    cp $06
    jr c, StoreWorkGroupCase2Next

Jump_000_24ff:
    ret
