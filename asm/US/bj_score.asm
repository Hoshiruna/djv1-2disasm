
; Select the player or dealer hand from A, score it, display its total or special result, and return the stored score in A.
ScoreBJHand:


Call_029_6faf:
    push af
    cp $00
    jr nz, BJScorePlayerHand

    ld a, $65
    ld [wBJHandPtr], a
    ld a, $c8
    ld [wBJHandPtr+1], a
    jr BJScoreSumHand

; Select the player hand pointer.
BJScorePlayerHand:
jr_029_6fc0:
    ld a, $6b
    ld [wBJHandPtr], a
    ld a, $c8
    ld [wBJHandPtr+1], a

; Sum the selected hand and inspect special result markers.
BJScoreSumHand:
jr_029_6fca:
    call SumBJHand
    ld a, [wBJTotal]
    bit 7, a
    jr z, BJScoreCheckBust

    cp $ff
    jr nz, BJScoreShowTotal

    pop af
    or $06
    call ShowBJText
    ld a, [wBJTotal]
    ret


; Check for a zero hand result and display its message.
BJScoreCheckBust:
jr_029_6fe2:
    cp $00
    jr nz, BJScoreShowTotal

    pop af
    or $08
    call ShowBJText
    ld a, [wBJTotal]
    ret


; Draw the numeric score and restore the stored return value.
BJScoreShowTotal:
jr_029_6ff0:
    ld [wBJAces], a
    and $7f
    ld [wBJTotal], a
    pop af
    xor a
    ld [wTextX], a
    ld a, $0d
    ld [wTextY], a
    ld a, $09
    ld [wListMark], a
    call ShowListText
    call SubmitMapQueue
    ld a, [wBJAces]
    ld [wBJTotal], a
    ret
