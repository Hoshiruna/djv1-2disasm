
; Preserve wArg0; in Case II, advance the mob-war text animation when C2TextAnim is set.
StepC2WarText:
StepC2TextObj:


    ld a, [wArg0]
    push af
    ld a, [wCaseId]
    cp $00
    jr z, jr_003_50ab

    ld a, C2TextAnim
    call ReadObjFlag
    jr z, jr_003_50ab

    call DrawWarText
    pop af
    ld [wArg0], a
    ret


jr_003_50ab:
    pop af
    ld [wArg0], a
    ret
