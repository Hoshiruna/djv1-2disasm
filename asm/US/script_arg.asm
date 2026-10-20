; Read one script byte into arg 0, advance the pointer, and return arg 0 in A.
ReadArg:

Call_000_1a94:
    ld a, [wScriptPtr]
    ld l, a
    ld a, [wScriptPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wArg0], a

; Store the advanced script pointer and return the first argument.
ReadArgAdvancePointer:
jr_000_1aa0:
    ld a, l
    ld [wScriptPtr], a
    ld a, h
    ld [wScriptPtr+1], a
    ld a, [wArg0]
    ret

; Read two script bytes into args 0..1; advance the pointer and return arg 0.
; Conditional branches consume both target bytes even when the condition fails.
ReadArgs2:

Call_000_1aac:
    ld a, [wScriptPtr]
    ld l, a
    ld a, [wScriptPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wArg0], a
    ld a, [hl+]
    ld [wArg1], a
    jr ReadArgAdvancePointer

; Read three script bytes into args 0..2; advance the pointer and return arg 0.
ReadArgs3:

Call_000_1abe:
    ld a, [wScriptPtr]
    ld l, a
    ld a, [wScriptPtr+1]

Jump_000_1ac5:
    ld h, a
    ld a, [hl+]
    ld [wArg0], a

Jump_000_1aca:
    ld a, [hl+]
    ld [wArg1], a
    ld a, [hl+]
    ld [wArg2], a
    jr ReadArgAdvancePointer

; Read four script bytes into args 0..3; advance the pointer and return arg 0.
ReadArgs4:

Call_000_1ad4:
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
    jr ReadArgAdvancePointer
