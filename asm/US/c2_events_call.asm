
; Call the case-two event chain in bank three and restore the previous ROM bank.
C2EventsCall:


Call_000_3845:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2Events
    call PopRomBank
    ret
