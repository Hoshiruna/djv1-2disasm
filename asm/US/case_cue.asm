
; Play audio $23 for Case I or $12 for Case II.
PlayCaseCue:


Call_000_36ee:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_36f9

    ld a, $23
    jr jr_000_36fb

jr_000_36f9:
    ld a, $12

jr_000_36fb:
    call PlayAudio
    ret
