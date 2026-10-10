
; Preserve argument zero; in case two, update the text-wait object when flag $aa is set.
StepC2TextObj:


    ld a, [wArg0]
    push af
    ld a, [wCaseId]
    cp $00
    jr z, jr_003_50ab

    ld a, $aa
    call ReadObjFlag
    jr z, jr_003_50ab

    call DrawTextWaitObj
    pop af
    ld [wArg0], a
    ret


jr_003_50ab:
    pop af
    ld [wArg0], a
    ret
