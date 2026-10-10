
; Move A up or down toward C by at most four, stopping when equal.
StepColor:


Call_001_4ac3:
    cp c
    ret z

    jr c, jr_001_4acb

    jr jr_001_4ad8

; Set C to 31 and enter the original four-increment path.
LightColor:

Call_001_4ac9:
    ld c, $1f

jr_001_4acb:
    cp c
    ret z

    inc a
    cp c
    ret z

    inc a
    cp c
    ret z

    inc a
    cp c
    ret z

    inc a
    ret

; Decrement A up to four times, stopping when it equals C.
DarkColor:


Call_001_4ad8:
jr_001_4ad8:
    cp c
    ret z

    dec a
    cp c
    ret z

    dec a
    cp c
    ret z

    dec a
    cp c
    ret z

    dec a
    ret

; Split BC RGB555 into current R/G/B scratch; BC ends shifted right by ten.
UnpackColor:


Call_001_4ae5:
    ld a, c
    and $1f
    ld [wPalR], a
    call ColorShr5
    ld a, c
    and $1f
    ld [wPalG], a
    call ColorShr5
    ld a, c
    and $1f
    ld [wPalB], a
    ret

; Pack current R/G/B scratch into BC with the original OR operations.
PackColor:


Call_001_4afe:
    ld b, $00
    ld a, [wPalB]
    ld c, a
    call ColorShl5
    ld a, [wPalG]
    or c
    ld c, a
    call ColorShl5
    ld a, [wPalR]
    or c
    ld c, a
    ret

; Split BC RGB555 into target R/G/B scratch; BC ends shifted right by ten.
UnpackGoal:


Call_001_4b15:
    ld a, c
    and $1f
    ld [wGoalR], a
    call ColorShr5
    ld a, c
    and $1f
    ld [wGoalG], a
    call ColorShr5
    ld a, c
    and $1f
    ld [wGoalB], a
    ret

; Pack target R/G/B scratch into BC with the original OR operations.
PackGoal:


    ld b, $00
    ld a, [wGoalB]
    ld c, a
    call ColorShl5
    ld a, [wGoalG]
    or c
    ld c, a
    call ColorShl5
    ld a, [wGoalR]
    or c
    ld c, a
    ret

; Shift BC right by five bits, using SRL B and RR C.
ColorShr5:


Call_001_4b45:
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    ret

; Shift BC left by five bits, using SLA C and RL B.
ColorShl5:


Call_001_4b5a:
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    ret
