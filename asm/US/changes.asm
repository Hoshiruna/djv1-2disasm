; Apply pending type/value pairs and fill the ten-byte pending area with $ff.
FlushChanges:

    ld a, [wCaseId]
    cp $00
    jr nz, jr_002_6582

    ld a, $18
    call ClearObjPresent
    ld a, $19
    call ClearObjPresent

jr_002_6582:
    ld d, a
    ld a, $00
    ldh [hChangePos], a
    ld a, $00
    ldh [hChangePos+1], a
    ld a, d

jr_002_658c:
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld bc, wPendingOps
    add hl, bc
    ld a, [wCaseId]
    cp $00
    jr nz, jr_002_65af

    ld a, [hl]
    cp $ff
    jr z, jr_002_65c1

    call ApplyC1Change
    ldh a, [hChangePos]
    inc a
    inc a
    ldh [hChangePos], a
    cp $08
    jr c, jr_002_658c

; Case I falls through after its fourth pair; UndoC2Change returns before dispatch.
jr_002_65af:
    ld a, [hl]
    cp $ff
    jr z, jr_002_65c1

    call UndoChangeBank
    ldh a, [hChangePos]
    inc a
    inc a
    ldh [hChangePos], a
    cp $08
    jr c, jr_002_658c

jr_002_65c1:
    ld c, $0a
    ld hl, wPending
    ld a, $ff

jr_002_65c8:
    ld [hl+], a
    dec c
    jr nz, jr_002_65c8

    ret

; A = pending type; dispatch its Case I cleanup handler.
ApplyC1Change:

Call_002_65cd:
    rst RST_00

C1ChangeOps:
    dw $65f7, UndoChange1, UndoChange2, $65f7, UndoChange4, $65f7

; Clear value property bit 2 and state bits $48/$4a/$4b.
UndoChange1:
    ld bc, wPendingArgs
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ClearProp1
    ld a, $48
    call ClearStateBit
    ld a, $4a
    call ClearStateBit
    ld a, $4b
    call ClearStateBit
    ret

; Clear the third object flag at pending value + $20.
UndoChange2:

    ld bc, wPendingArgs
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    add $20
    call ClearObjFlag
    ret

; Clear bit 2 in the selected item property byte.
UndoChange4:

    ld bc, wPendingArgs
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ClearProp4
    ret
