
; Return to the native opcode loop without consuming arguments or a script-call frame.
; The loop continues at the next script byte; this is not the $ff terminator.
ScriptRet:

    ret

; Wait sixty ticks and return without consuming script arguments.
ScriptWait60:


    ld a, $3c
    call WaitTicks
    ret
