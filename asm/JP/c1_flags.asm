
; Set exactly $23 initial state bits and restore caller scratch at $ffa0/$ffa1.
InitC1Bits:

Call_001_45ef:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    ld d, $00
    ld hl, C1StartBits

jr_001_45fd:
    ld a, [hl+]
    push hl
    push de
    call SetStateBit
    pop de
    pop hl
    inc d
    ld a, d
    cp $23
    jr c, jr_001_45fd

    pop hl
    push af
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    ret

C1StartBits:
    db $07, $0a, $0b, $11, $13, $16, $17, $19, $1a, $1c, $1d, $1f, $21, $23, $24, $25
    db $26, $27, $28, $29, $2a, $2b, $2c, $35, $37, $39, $3d, $41, $42, $43, $44, $45
    db $46, $49, $4c

; Clear presence for initial absent-object IDs until $ff; restore caller scratch.
InitC1Absent:

Call_001_4638:
    push af
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    pop af
    push hl
    ld hl, C1StartAbsent

jr_001_4644:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_4650

    push hl
    call ClearObjPresent
    pop hl
    jr jr_001_4644

jr_001_4650:
    pop hl
    push af

jr_001_4652:
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    pop af
    ret

C1StartAbsent:
    db $00, $01, $02, $09, $14, $15, $18, $19, $ff
