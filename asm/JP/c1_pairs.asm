
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
    jr nz, C1ClearPairReturn

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $06
    jr nz, C1ClearPairSecond

    ld a, $18
    call ClearObjPresent
    jr C1ClearPairReturn

; Check type-one value eight before clearing object $19 presence.
C1ClearPairSecond:
jr_002_6532:
    cp $08
    jr nz, C1ClearPairReturn

    ld a, $19
    call ClearObjPresent

; Return after the Case I paired-object clearing checks.
C1ClearPairReturn:
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
    jr nz, C1KeepPairReturn

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $06
    jr nz, C1KeepPairSecond

    ld a, $18
    call SetObjPresent
    jr C1KeepPairReturn

; Check type-one value eight before setting object $19 presence.
C1KeepPairSecond:
jr_002_6567:
    cp $08
    jr nz, C1KeepPairReturn

    ld a, $19
    call SetObjPresent

; Return after the Case I paired-object presence checks.
C1KeepPairReturn:
jr_002_6570:
    ret
