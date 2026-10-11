
; Run the purchase menu in bank three and restore the previous bank.
C2ShopCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call RunC2Shop
    call PopRomBank
    ret
