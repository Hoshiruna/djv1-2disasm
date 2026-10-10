
; Compare a script argument with the first packed item and branch on equality.
BranchPackedIs:


Jump_000_2c03:
    call TestPackedArg

Jump_000_2c06:
    jp BranchIfSet

; Compare a script argument with the first packed item and branch on inequality.
BranchPackedNot:


    call TestPackedArg
    jp BranchIfClear

; Read one argument and set the result when it matches the first packed item.
TestPackedArg:


Call_000_2c0f:
    call SetResult
    call ReadArg
    ld hl, wListPacked
    cp [hl]
    ret z

    call ClearResult
    ret
