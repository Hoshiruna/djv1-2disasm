
; Return without consuming script arguments or changing state.
ScriptRet:

    ret

; Wait sixty ticks and return without consuming script arguments.
ScriptWait60:


    ld a, $3c
    call WaitTicks
    ret
