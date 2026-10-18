
; Ask about blackjack rules in bank three and restore the previous bank.
C2ChoiceCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call Ask21Rules
    call PopRomBank
    ret
