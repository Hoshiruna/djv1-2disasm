
; Call chip purchase in bank three and restore the previous ROM bank.
BuyChipsCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call BuyChips
    call PopRomBank

Call_000_3135:
    ret

; Call chip cash-out in bank three and restore the previous ROM bank.
SellChipsCall:


    push af
    ld a, $03
    call PushRomBank
    pop af

Jump_000_313d:
    call SellChips
    call PopRomBank
    ret
