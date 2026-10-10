
; For Case I type $01 values $06/$08, clear object $18/$19 presence.
ClearC1Pair:
    ld a, [wCaseId]
    cp $00
    ret nz

    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_002_653b

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $06
    jr nz, jr_002_6532

    ld a, $18
    call ClearObjPresent
    jr jr_002_653b

jr_002_6532:
    cp $08
    jr nz, jr_002_653b

    ld a, $19
    call ClearObjPresent

jr_002_653b:
    ret

; For Case I type $01 values $06/$08, set object $18/$19 presence.
KeepC1Pair:

    ld a, [wCaseId]
    cp $00
    ret nz

    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_002_6570

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $06
    jr nz, jr_002_6567

    ld a, $18
    call SetObjPresent
    jr jr_002_6570

jr_002_6567:
    cp $08
    jr nz, jr_002_6570

    ld a, $19
    call SetObjPresent

jr_002_6570:
    ret
