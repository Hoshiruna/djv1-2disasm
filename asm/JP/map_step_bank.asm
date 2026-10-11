
; Call the forward map-step transition in bank $29 and restore the bank.
MapStepsBank:


Call_000_3982:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call RunMapSteps
    call PopRomBank
    ret

; Call the reverse map-step transition in bank $29 and restore the bank.
MapReverseBank:


Call_000_3990:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call ReverseMapSteps
    call PopRomBank
    ret
