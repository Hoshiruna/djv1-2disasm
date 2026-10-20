
; Play audio $23 for Case I or $12 for Case II.
PlayCaseCue:


Call_000_36ee:
    ld a, [wCaseId]
    cp $00
    jr nz, CaseCueSelectCase2

    ld a, $23
    jr CaseCuePlaySelected

; Use cue $12 for Case II.
CaseCueSelectCase2:
jr_000_36f9:
    ld a, $12

; Submit the case-selected cue through PlayAudio.
CaseCuePlaySelected:
jr_000_36fb:
    call PlayAudio
    ret
