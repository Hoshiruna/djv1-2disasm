
; Call the case-two bullet consumption path in bank three and restore the previous ROM bank.
UseBulletCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call UseC2Bullet
    call PopRomBank
    ret

; Call the case-two bullet flag acquisition path in bank three and restore the previous ROM bank.
TakeBulletCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call TakeC2Bullet
    call PopRomBank
    ret
