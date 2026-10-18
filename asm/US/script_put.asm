
; In case one, call the existing put checks; in case two, read the put mode and call group placement.
ScriptPutItem:


    ld a, [wCaseId]
    cp $00
    jr nz, ScriptPutCaseII

    push af
    ld a, $02
    call PushRomBank
    pop af
    call CheckC1Put
    call PopRomBank
    ret


; Read and apply the Case II item-placement mode.
ScriptPutCaseII:
jr_000_286d:
    call ReadArg
    ld [wPutMode], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call BeginC2Put
    call PopRomBank
    ret
