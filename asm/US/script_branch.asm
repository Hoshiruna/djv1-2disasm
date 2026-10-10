
; Read a two-byte script target; branch only when result bit 0 is set.
BranchIfSet:


Jump_000_1b2b:
    call ReadArgs2
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_1b41

    ret

; Read a two-byte script target; branch only when result bit 0 is clear.
BranchIfClear:


Jump_000_1b36:
    call ReadArgs2
    ld a, [wStateResult]

Jump_000_1b3c:
    and $01
    jr z, jr_000_1b41

    ret

; Copy the existing two argument bytes into wScriptPtr.
BranchScript:


Jump_000_1b41:
jr_000_1b41:
    ld a, [wArg0]
    ld [wScriptPtr], a
    ld a, [wArg1]
    ld [wScriptPtr+1], a
    ret
