
; Advance the random byte and set the result only when its low two bits are zero.
TestRandomLow2:


    call ClearResult
    call NextRandom

Jump_000_2f0f:
    ldh a, [hRandByte]
    and $03
    ret nz

    call SetResult
    ret
