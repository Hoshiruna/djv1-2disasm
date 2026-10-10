
; Advance the random byte and set the result only when its low two bits are zero.
TestRandomLow2:


    call ClearResult
    call NextRandom
    ldh a, [hRandByte]
    and $03
    ret nz

    call SetResult
    ret
