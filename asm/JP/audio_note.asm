
; Subtract the note timer delta; on borrow consume an event and update pulse frequency/flags.
StepPulse:


Call_004_431d:
    ld a, [wNoteFlags]
    and $f7
    ld [wNoteFlags], a
    call TickNoteTime
    jp nc, PulseStepEnd

    call ReadAudio
    jr nc, jr_004_438a

    cp $7f
    jr z, jr_004_4362

    call ReadNoteFreq
    ld a, c
    ld [wNoteRegs+2], a
    ld a, [wNoteRegs+3]
    and $f8
    or b
    ld [wNoteRegs+3], a
    ld a, [wNoteFlags]
    and $08
    jr nz, jr_004_4361

    ld a, [wEnvMode]
    sla a
    jr nc, jr_004_436f

    ld a, $00
    ld [wEnvOn], a
    ld a, [wNoteFlags]
    or $40
    and $d7
    ld [wNoteFlags], a

; Return from the pulse note update.
PulseStepEnd:

Jump_004_4361:
jr_004_4361:
    ret


jr_004_4362:
    xor a
    ld [wEnvOn], a
    ld a, [wNoteFlags]
    or $20
    ld [wNoteFlags], a
    ret


jr_004_436f:
    ld a, $ff
    ld [wNoteLevel], a
    xor a
    ld [wEnvTick], a
    ld [wAudioSlot+14], a
    inc a
    ld [wEnvOn], a
    ld a, [wNoteFlags]
    or $40
    and $d7
    ld [wNoteFlags], a
    ret


jr_004_438a:
    ld a, $ff
    ld [wAudioDone], a
    ret

; When enabled, match the envelope tick against eight table pairs and update the staged volume.
PulseEnv:


Call_004_4390:
    ld a, [wEnvOn]
    cp $00
    jr z, jr_004_43cb

    ld a, [wEnvTick]
    ld d, a
    ld a, [wNoteInst]
    swap a
    and $f0
    ld c, a
    ld b, $00
    ld hl, AudioEnvs
    add hl, bc
    ld b, $00

jr_004_43ab:
    ld a, [hl+]
    cp d
    jr z, jr_004_43b8

    inc hl
    inc b
    ld a, b
    cp $08
    jr nz, jr_004_43ab

    jr jr_004_43bc

jr_004_43b8:
    ld a, [hl+]
    ld [wNoteLevel], a

jr_004_43bc:
    ld a, [wNoteRegs]
    or $20
    ld [wNoteRegs], a
    ld a, [wEnvTick]
    inc a
    ld [wEnvTick], a

jr_004_43cb:
    ret

; Subtract the note timer delta; on borrow consume an event and update wave frequency/flags.
StepWave:


Call_004_43cc:
    ld a, [wNoteFlags]
    and $f7
    ld [wNoteFlags], a
    call TickNoteTime
    jp nc, WaveStepEnd

    call ReadAudio
    jr nc, jr_004_4439

    cp $7f
    jr z, jr_004_4411

    call ReadNoteFreq
    ld a, c
    ld [wNoteRegs+2], a
    ld a, [wNoteRegs+3]
    and $f8
    or b
    ld [wNoteRegs+3], a
    ld a, [wNoteFlags]
    and $08
    jr nz, jr_004_4410

    ld a, [wEnvMode]
    sla a
    jr nc, jr_004_441e

    ld a, $00
    ld [wEnvOn], a
    ld a, [wNoteFlags]
    or $40
    and $d7
    ld [wNoteFlags], a

; Return from the wave note update.
WaveStepEnd:

Jump_004_4410:
jr_004_4410:
    ret


jr_004_4411:
    xor a
    ld [wEnvOn], a
    ld a, [wNoteFlags]
    or $20
    ld [wNoteFlags], a
    ret


jr_004_441e:
    ld a, $ff
    ld [wNoteLevel], a
    xor a
    ld [wEnvTick], a
    ld [wAudioSlot+14], a
    inc a
    ld [wEnvOn], a
    ld a, [wNoteFlags]
    or $40
    and $d7
    ld [wNoteFlags], a
    ret


jr_004_4439:
    ld a, $ff
    ld [wAudioDone], a
    ret

; Read the wave volume lookup at the staged instrument byte and store its output value.
WaveVolume:


Call_004_443f:
    ld a, [wNoteInst]
    ld c, a
    ld b, $00
    ld hl, WaveLevels
    add hl, bc
    ld a, [hl]
    ld [wNoteLevel], a
    ret

; On note-time borrow, consume an event and select the four-byte noise instrument row.
StepNoise:


Call_004_444e:
    ld a, [wNoteFlags]
    and $f7
    ld [wNoteFlags], a
    call TickNoteTime
    jp nc, NoiseStepEnd

    call ReadAudio
    jr nc, jr_004_44a3

    cp $7f
    jr z, jr_004_44a9

    push bc
    ld b, a
    ld a, [wNoteFlags]
    and $08
    ld a, b
    pop bc
    jr nz, jr_004_44b1

    sub $04

jr_004_4472:
    sub $0c
    jr nc, jr_004_4472

    add $0c
    sla a
    sla a
    ld c, a
    ld b, $00
    ld a, [wInstPtr]
    ld l, a
    ld a, [wInstPtr+1]
    ld h, a
    add hl, bc
    ld a, [hl+]
    ld [wNoteRegs], a
    ld a, [hl+]
    ld [wNoteRegs+1], a
    ld a, [hl+]
    ld [wNoteRegs+2], a
    ld a, [hl+]
    ld [wNoteRegs+3], a
    ld a, [wNoteFlags]
    or $40
    and $d7
    ld [wNoteFlags], a
    ret


jr_004_44a3:
    ld a, $ff
    ld [wAudioDone], a
    ret


jr_004_44a9:
    ld a, [wNoteFlags]
    or $20
    ld [wNoteFlags], a

; Return from the noise note update.
NoiseStepEnd:

Jump_004_44b1:
jr_004_44b1:
    ret

; Combine note A with staged transpose and table offset; return the frequency word in BC and preserve HL.
ReadNoteFreq:


Call_004_44b2:
    ld d, h
    ld e, l
    ld b, a
    ld a, [wNoteShift]
    add b
    sub $10
    sla a
    ld l, a
    ld h, $00
    ld bc, AudioFreqs
    add hl, bc
    ld a, [wFreqOff]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    ld h, d
    ld l, e
    ret

; Subtract the staged 16-bit tick delta from the note timer; return borrow in carry.
TickNoteTime:


Call_004_44d2:
    ld a, [wNoteStep]
    ld b, a
    ld a, [wNoteTime]
    sub b
    ld [wNoteTime], a
    ld a, [wNoteStep+1]
    ld b, a
    ld a, [wNoteTime+1]
    sbc b
    ld [wNoteTime+1], a
    ret

; Add the staged 16-bit duration to the note timer.
AddNoteTime:


Call_004_44e9:
    ld a, [wNoteLen]
    ld b, a
    ld a, [wNoteTime]
    add b
    ld [wNoteTime], a
    ld a, [wNoteLen+1]
    ld b, a
    ld a, [wNoteTime+1]
    adc b
    ld [wNoteTime+1], a
    ret
