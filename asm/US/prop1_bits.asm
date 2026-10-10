
; Read one property index and enter the existing bit-two setter.
ScriptSetProp1:


    call ReadArg
; A = property index; set bit 2 in wProp1, with the Case I index $06 presence callback.
SetProp1:

Call_000_342f:
    ld [wArg0], a
    push af
    ldh a, [hChangePos]

Call_000_3435:
    ld l, a
    ldh a, [hChangePos+1]

Call_000_3438:
    ld h, a
    pop af
    push hl
    ld a, [wArg0]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld bc, wProp1
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    or $04

Call_000_3450:
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wProp1
    add hl, bc
    ld [hl], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_3470

Call_000_3464:
    ld a, [wArg0]
    cp $06
    jr nz, jr_000_3470

    ld a, $18
    call SetObjPresent

jr_000_3470:
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; Read one property index and enter the existing bit-two clearer.
ScriptClrProp1:


    call ReadArg
; A = property index; clear bit 2 in wProp1 and preserve the scratch index.
ClearProp1:

Call_000_347d:
    ld [wArg0], a
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    ld a, [wArg0]

Call_000_348c:
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld bc, wProp1
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fb
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wProp1
    add hl, bc
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret
