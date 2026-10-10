
; In case one, call the existing put checks; in case two, read the put mode and call group placement.
ScriptPutItem:


    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_29bd

    push af
    ld a, $02
    call PushRomBank
    pop af
    call CheckC1Put
    call PopRomBank
    ret


jr_000_29bd:
    call ReadArg
    ld [wPutMode], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call BeginC2Put
    call PopRomBank
    ret
