
; Load one inventory round into a chamber in bank three, then restore the ROM bank.
UseBulletCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call UseC2Bullet
    call PopRomBank
    ret

; Fire one loaded chamber in bank three without changing inventory, then restore the ROM bank.
TakeBulletCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call TakeC2Bullet
    call PopRomBank
    ret
