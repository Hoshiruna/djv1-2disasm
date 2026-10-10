
; Consume an argument, then compare the selected name against $cb: loading BC overwrites the argument in C.
TestSelNameArg:


    call ReadArg
    ld c, a
    ld bc, wSelName
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp c
    jr z, jr_000_2a1b

Call_000_2a17:
    call ClearResult
    ret


jr_000_2a1b:
    call SetResult
    ret
