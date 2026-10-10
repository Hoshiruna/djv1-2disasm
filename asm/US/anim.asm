; Advance and draw the case-specific wait animation at X=$90, Y=$80.
; Transition calls draw the new pair with tick zero; initial calls increment it first.
StepWaitAnim:

    ld a, $90
    ldh [hSpriteX], a
    ld a, $80
    ldh [hSpriteY], a
    ld a, [wWaitFrame]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [wCaseId]
    cp $00
    jr nz, jr_002_5ffb

    ld bc, $4b65
    jr jr_002_5ffe

jr_002_5ffb:
    ld bc, $5f29

jr_002_5ffe:
    add hl, bc
    ld a, [hl]
    ld c, a
    ld a, [wWaitTick]
    cp c ; Compare elapsed calls with the current duration.
    jr c, jr_002_6033

    inc hl
    inc hl
    ld a, [hl]
    cp $ff
    jr nz, jr_002_6026

    xor a
    ld [wWaitFrame], a
    ld [wWaitTick], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_002_6021

    ld hl, $4b65
    jr jr_002_6037

jr_002_6021:
    ld hl, $5f29
    jr jr_002_6037

jr_002_6026:
    ld a, [wWaitFrame]
    inc a
    ld [wWaitFrame], a
    xor a
    ld [wWaitTick], a
    jr jr_002_6037

jr_002_6033:
    inc a
    ld [wWaitTick], a

jr_002_6037:
    inc hl
    ld a, [hl]
    call DrawSprite
    ret

; A = sequence ID; draw each duration/sprite pair until duration is $00 or $ff.
; Duration counts draw/submit/wait iterations; this player does not repeat the sequence.
PlayAnim:
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [wCaseId]
    cp $00
    jr nz, jr_002_604d

    ld bc, $48d9
    jr jr_002_6050

jr_002_604d:
    ld bc, Case2ObjectAnimations

jr_002_6050:
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_002_6054:
    ld a, [hl+]
    ld [wAnimLeft], a
    cp $ff
    ret z

    cp $00
    ret z

jr_002_605e:
    ld a, [hl]
    push hl
    call DrawSprite
    call DrawRoomObjs
    call SubmitOam ; Submit OAM, wait, then clear the shadow list.
    pop hl
    ld a, [wAnimLeft]
    dec a
    ld [wAnimLeft], a
    jr nz, jr_002_605e

    inc hl
    jr jr_002_6054

; A = Case II sequence ID; advance one tick and loop at the next $ff duration.
; Caller supplies X/Y and resets both counters when starting a different sequence.
StepC2Anim:

    ld l, a
    ld h, $00
    add hl, hl
    ld bc, Case2ObjectAnimations
    add hl, bc
    ld a, [hl+]
    ld [wAnimPtr], a
    ld c, a
    ld a, [hl]
    ld [wAnimPtr+1], a
    ld b, a
    ld a, [wC2AnimFrame]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl]
    ld c, a
    ld a, [wC2AnimTick]
    cp c ; Compare elapsed calls with the current duration.
    jr c, jr_002_60bd

    inc hl
    inc hl
    ld a, [hl]
    cp $ff
    jr nz, jr_002_60b0

    xor a
    ld [wC2AnimFrame], a
    ld [wC2AnimTick], a
    ld a, [wAnimPtr]
    ld l, a
    ld a, [wAnimPtr+1]
    ld h, a
    jr jr_002_60c1

jr_002_60b0:
    ld a, [wC2AnimFrame]
    inc a
    ld [wC2AnimFrame], a
    xor a
    ld [wC2AnimTick], a
    jr jr_002_60c1

jr_002_60bd:
    inc a
    ld [wC2AnimTick], a

jr_002_60c1:
    inc hl
    ld a, [hl]
    call DrawSprite
    ret
