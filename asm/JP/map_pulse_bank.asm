
; Select bank zero, enter its bank-$29 rectangle-state wrapper, and restore the original bank stack.
MapPulse23Bank:


    push af
    ld a, $00
    call PushRomBank
    pop af
    call MapPulse23Call
    call PopRomBank
    ret
