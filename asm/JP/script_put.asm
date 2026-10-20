
; Case I uses the current selection without an operand.
; Case II reads one placement-mode byte before calling group placement.
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
