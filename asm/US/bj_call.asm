
; Select bank $29, run the blackjack session, and restore the previous ROM bank.
BlackjackCall:


    push af
    ld a, $29
    call PushRomBank
    pop af
    call RunBlackjack
    call PopRomBank
    ret
