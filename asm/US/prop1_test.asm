
; Read a property index from the script, set the result from its bit two, and preserve the shared scratch index.
TestProp1Arg:


    call ReadArg
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
    call ClearResult
    ld bc, wProp1
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $04
    jr z, jr_000_3422

    call SetResult

jr_000_3422:
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret
