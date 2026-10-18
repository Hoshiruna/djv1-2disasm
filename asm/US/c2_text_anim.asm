
; Preserve wArg0; in Case II, advance the mob-war text animation when C2TextAnim is set.
StepC2WarText:
StepC2TextObj:


    ld a, [wArg0]
    push af
    ld a, [wCaseId]
    cp $00
    jr z, C2WarTextRestoreArg

    ld a, C2TextAnim
    call ReadObjFlag
    jr z, C2WarTextRestoreArg

    call DrawWarText
    pop af
    ld [wArg0], a
    ret


; Restore wArg0 when the animation is skipped.
C2WarTextRestoreArg:
jr_003_50ab:
    pop af
    ld [wArg0], a
    ret
