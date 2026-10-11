
; Multiply the chosen byte quantity by five and store it in argument zero.
CalcChipCost:


Call_003_4e93:
    ld a, [wChipCount]
    add a
    add a
    ld hl, wChipCount
    add [hl]
    ld [wArg0], a
    ret
