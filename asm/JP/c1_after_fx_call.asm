
; Call the case-one post-effect text sequence in bank one and restore the previous ROM bank.
C1AfterFxCall:


Call_000_3a0e:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ShowC1AfterFx
    call PopRomBank
    ret
