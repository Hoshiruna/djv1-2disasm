
; When the Case I coin count is at least two, add $fe through the original addition/search path and set the result; otherwise clear it.
SpendTwoCoins:
SpendListTwo:


    ld a, [wC1Coins]
    cp $02
    jr nc, jr_000_2f62

    call ClearResult
    ret


jr_000_2f62:
    ld a, $fe
    ld [wArg0], a
    call AddCoinFind
    call SetResult
    ret
