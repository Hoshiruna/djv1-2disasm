
; Consume one argument and set the result when the Case I coin count is less than or equal to it.
TestC1Coins:
TestListCount:


    call ClearResult
    call ReadArg
    ld a, [wArg0]
    ld c, a
    ld a, [wC1Coins]
    cp c
    jr z, C1CoinLimitMet

    jr nc, C1CoinLimitReturn

; Set the result when the coin count is at or below the argument.
C1CoinLimitMet:
jr_000_2b6a:
    call SetResult

; Return after the coin-limit comparison.
C1CoinLimitReturn:
jr_000_2b6d:
    ret
