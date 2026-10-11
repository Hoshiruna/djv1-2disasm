
; Consume one argument and set the result when the Case I coin count is less than or equal to it.
TestC1Coins:
TestListCount:


    call ClearResult
    call ReadArg
    ld a, [wArg0]
    ld c, a
    ld a, [wC1Coins]
    cp c
    jr z, jr_000_2cba

    jr nc, jr_000_2cbd

jr_000_2cba:
    call SetResult

jr_000_2cbd:
    ret
