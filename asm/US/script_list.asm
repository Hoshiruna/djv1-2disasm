
; Compare a script argument with the first packed item and branch on equality.
BranchPackedIs:


    call TestPackedArg
    jp BranchIfSet

; Compare a script argument with the first packed item and branch on inequality.
BranchPackedNot:


    call TestPackedArg
    jp BranchIfClear

; Read one argument and set the result when it matches the first packed item.
TestPackedArg:


Call_000_2abf:
    call SetResult
    call ReadArg
    ld hl, wListPacked
    cp [hl]
    ret z

    call ClearResult
    ret
