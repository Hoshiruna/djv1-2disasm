
; Read one property index and enter the existing bit-two setter.
ScriptSetProp1:


    call ReadArg
; A = property index; set bit 2 in wProp1, with the Case I index $06 presence callback.
SetProp1:

Call_000_357b:
    ld [wArg0], a
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
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
    jr nz, jr_000_35bc

    ld a, [wArg0]
    cp $06
    jr nz, jr_000_35bc

    ld a, $18
    call SetObjPresent

jr_000_35bc:
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

Call_000_35c9:
    ld [wArg0], a
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
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

Jump_000_35f9:
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a

Jump_000_35ff:
    pop af
    ret
