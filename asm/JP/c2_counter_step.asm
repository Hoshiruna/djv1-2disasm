
; Read index and threshold, increment the indexed byte with wrap, and reset it with a set result when the new byte is less than or equal to the threshold.
StepC2Counter:
    call ReadArgs2
    call ClearResult
    ld a, [wArg0]
    ld c, a
    ld b, $00
    ld hl, wC2Counters
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ld c, a
    ld a, [wArg1]
    cp c
    ret c

    xor a
    ld [hl], a
    call SetResult
    ret
