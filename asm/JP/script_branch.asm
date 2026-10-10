
; Read a two-byte script target; branch only when result bit 0 is set.
BranchIfSet:


Jump_000_1c7b:
    call ReadArgs2
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_1c91

    ret

; Read a two-byte script target; branch only when result bit 0 is clear.
BranchIfClear:


Jump_000_1c86:
    call ReadArgs2
    ld a, [wStateResult]
    and $01
    jr z, jr_000_1c91

    ret

; Copy the existing two argument bytes into wScriptPtr.
BranchScript:


Jump_000_1c91:
jr_000_1c91:
    ld a, [wArg0]
    ld [wScriptPtr], a
    ld a, [wArg1]
    ld [wScriptPtr+1], a
    ret
