; Read one script byte into arg 0, advance the pointer, and return arg 0 in A.
ReadArg:

Call_000_1be4:
    ld a, [wScriptPtr]
    ld l, a
    ld a, [wScriptPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wArg0], a

Jump_000_1bf0:
jr_000_1bf0:
    ld a, l
    ld [wScriptPtr], a
    ld a, h
    ld [wScriptPtr+1], a
    ld a, [wArg0]
    ret

; Read two script bytes into args 0..1; advance the pointer and return arg 0.
ReadArgs2:

Call_000_1bfc:
    ld a, [wScriptPtr]
    ld l, a

Call_000_1c00:
    ld a, [wScriptPtr+1]

Jump_000_1c03:
    ld h, a
    ld a, [hl+]
    ld [wArg0], a
    ld a, [hl+]
    ld [wArg1], a
    jr jr_000_1bf0

; Read three script bytes into args 0..2; advance the pointer and return arg 0.
ReadArgs3:

Call_000_1c0e:
    ld a, [wScriptPtr]
    ld l, a
    ld a, [wScriptPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wArg0], a
    ld a, [hl+]
    ld [wArg1], a

Jump_000_1c1e:
    ld a, [hl+]
    ld [wArg2], a
    jr jr_000_1bf0

; Read four script bytes into args 0..3; advance the pointer and return arg 0.
ReadArgs4:

Call_000_1c24:
    ld a, [wScriptPtr]
    ld l, a
    ld a, [wScriptPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wArg0], a
    ld a, [hl+]
    ld [wArg1], a
    ld a, [hl+]
    ld [wArg2], a
    ld a, [hl+]
    ld [wArg3], a
    jr jr_000_1bf0
