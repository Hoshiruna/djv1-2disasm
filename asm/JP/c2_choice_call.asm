
; Run the case-two two-choice prompt in bank three and restore the previous bank.
C2ChoiceCall:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call RunC2Choice
    call PopRomBank
    ret
