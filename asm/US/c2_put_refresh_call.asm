
; Call RefreshC2Put in bank three with the original A, then restore the previous ROM bank.
C2PutRefreshCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call RefreshC2Put
    call PopRomBank
    ret
