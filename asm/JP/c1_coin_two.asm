
; When the Case I coin count is at least two, add $fe through the original addition/search path and set the result; otherwise clear it.
SpendTwoCoins:
SpendListTwo:


    ld a, [wC1Coins]
    cp $02
    jr nc, C1SpendTwoCoinsReady

    call ClearResult
    ret


; Subtract two through the original byte-addition path.
C1SpendTwoCoinsReady:
jr_000_30b2:
    ld a, $fe
    ld [wArg0], a
    call AddCoinFind

Jump_000_30ba:
    call SetResult
    ret
