
; Consume one argument and set the result when the case-one count is less than or equal to it.
TestListCount:


    call ClearResult
    call ReadArg
    ld a, [wArg0]
    ld c, a
    ld a, [wC1ListCount]
    cp c
    jr z, jr_000_2cba

    jr nc, jr_000_2cbd

jr_000_2cba:
    call SetResult

jr_000_2cbd:
    ret
