
; Play audio $23 for Case I or $12 for Case II.
PlayCaseCue:


Call_000_383a:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_3845

    ld a, $23
    jr jr_000_3847

jr_000_3845:
    ld a, $12

jr_000_3847:
    call PlayAudio
    ret
