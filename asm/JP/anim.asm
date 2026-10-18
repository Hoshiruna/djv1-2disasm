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
    jr nz, WaitAnimUseCase2

    ld bc, C1WaitAnim
    jr WaitAnimCheckDuration

; Use the Case II wait-animation pair table.
WaitAnimUseCase2:
jr_002_5ffb:
    ld bc, C2WaitAnim

; Compare the elapsed tick with the selected frame duration.
WaitAnimCheckDuration:
jr_002_5ffe:
    add hl, bc
    ld a, [hl]
    ld c, a
    ld a, [wWaitTick]
    cp c ; Compare elapsed calls with the current duration.
    jr c, WaitAnimAdvanceTick

    inc hl
    inc hl
    ld a, [hl]
    cp $ff
    jr nz, WaitAnimNextFrame

    xor a
    ld [wWaitFrame], a
    ld [wWaitTick], a
    ld a, [wCaseId]
    cp $00
    jr nz, WaitAnimRestartCase2

    ld hl, C1WaitAnim
    jr WaitAnimDrawFrame

; Restart the Case II wait animation at its first pair.
WaitAnimRestartCase2:
jr_002_6021:
    ld hl, C2WaitAnim
    jr WaitAnimDrawFrame

; Advance to the next wait-animation pair and clear its tick.
WaitAnimNextFrame:
jr_002_6026:
    ld a, [wWaitFrame]
    inc a
    ld [wWaitFrame], a
    xor a
    ld [wWaitTick], a
    jr WaitAnimDrawFrame

; Increment the elapsed tick for the current wait-animation pair.
WaitAnimAdvanceTick:
jr_002_6033:
    inc a
    ld [wWaitTick], a

; Draw the sprite indexed by the selected animation pair.
WaitAnimDrawFrame:
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
    jr nz, PlayAnimUseCase2

    ld bc, C1AnimPtrs
    jr PlayAnimReadPointer

; Use the Case II animation pointer table.
PlayAnimUseCase2:
jr_002_604d:
    ld bc, C2AnimPtrs

; Resolve the sequence ID to its duration and sprite pairs.
PlayAnimReadPointer:
jr_002_6050:
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

; Read the next duration and stop on zero or FF.
PlayAnimReadPair:
jr_002_6054:
    ld a, [hl+]
    ld [wAnimLeft], a
    cp $ff
    ret z

    cp $00
    ret z

; Draw one sprite tick and decrement the remaining duration.
PlayAnimDrawTick:
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
    jr nz, PlayAnimDrawTick

    inc hl
    jr PlayAnimReadPair

; A = Case II sequence ID; advance one tick and loop at the next $ff duration.
; Caller supplies X/Y and resets both counters when starting a different sequence.
StepC2Anim:

    ld l, a
    ld h, $00
    add hl, hl
    ld bc, C2AnimPtrs
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
    jr c, C2AnimAdvanceTick

    inc hl
    inc hl
    ld a, [hl]
    cp $ff
    jr nz, C2AnimNextFrame

    xor a
    ld [wC2AnimFrame], a
    ld [wC2AnimTick], a
    ld a, [wAnimPtr]
    ld l, a
    ld a, [wAnimPtr+1]
    ld h, a
    jr C2AnimDrawFrame

; Advance the Case II frame index and clear its tick.
C2AnimNextFrame:
jr_002_60b0:
    ld a, [wC2AnimFrame]
    inc a
    ld [wC2AnimFrame], a
    xor a
    ld [wC2AnimTick], a
    jr C2AnimDrawFrame

; Increment the elapsed tick for the current Case II frame.
C2AnimAdvanceTick:
jr_002_60bd:
    inc a
    ld [wC2AnimTick], a

; Draw the sprite indexed by the current Case II pair.
C2AnimDrawFrame:
jr_002_60c1:
    inc hl
    ld a, [hl]
    call DrawSprite
    ret
