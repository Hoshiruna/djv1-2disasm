
; Select bank $29, draw rectangle states two and three with their original waits, and restore the bank.
MapPulse23Call:


Call_000_31b0:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call MapPulse23
    call PopRomBank
    ret

; Select bank $29, run map steps one through twelve, and restore the bank.
MapStepsCall:


    push af
    ld a, $29
    call PushRomBank

Jump_000_31c4:
    pop af
    call RunMapSteps
    call PopRomBank
    ret
