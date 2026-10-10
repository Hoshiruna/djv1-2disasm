
; Subtract the note timer delta; on borrow consume an event and update pulse frequency/flags.
StepPulse:


Call_004_431d:
    ld a, [wAudioSlot]
    and $f7
    ld [wAudioSlot], a
    call TickNoteTime
    jp nc, Jump_004_4361

    call ReadAudio
    jr nc, jr_004_438a

    cp $7f
    jr z, jr_004_4362

    call ReadNoteFreq
    ld a, c
    ld [wAudioSlot+18], a
    ld a, [wAudioSlot+19]
    and $f8
    or b
    ld [wAudioSlot+19], a
    ld a, [wAudioSlot]
    and $08
    jr nz, jr_004_4361

    ld a, [wAudioSlot+9]
    sla a
    jr nc, jr_004_436f

    ld a, $00
    ld [wAudioSlot+12], a
    ld a, [wAudioSlot]
    or $40
    and $d7
    ld [wAudioSlot], a

Jump_004_4361:
jr_004_4361:
    ret


jr_004_4362:
    xor a
    ld [wAudioSlot+12], a
    ld a, [wAudioSlot]
    or $20
    ld [wAudioSlot], a
    ret


jr_004_436f:
    ld a, $ff
    ld [wAudioSlot+25], a
    xor a
    ld [wAudioSlot+13], a
    ld [wAudioSlot+14], a
    inc a
    ld [wAudioSlot+12], a
    ld a, [wAudioSlot]
    or $40
    and $d7
    ld [wAudioSlot], a
    ret


jr_004_438a:
    ld a, $ff
    ld [wAudioDone], a
    ret

; When enabled, match the envelope tick against eight table pairs and update the staged volume.
PulseEnv:


Call_004_4390:
    ld a, [wAudioSlot+12]
    cp $00
    jr z, jr_004_43cb

    ld a, [wAudioSlot+13]
    ld d, a
    ld a, [wAudioSlot+10]
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
    ld [wAudioSlot+25], a

jr_004_43bc:
    ld a, [wAudioSlot+16]
    or $20
    ld [wAudioSlot+16], a
    ld a, [wAudioSlot+13]
    inc a
    ld [wAudioSlot+13], a

jr_004_43cb:
    ret

; Subtract the note timer delta; on borrow consume an event and update wave frequency/flags.
StepWave:


Call_004_43cc:
    ld a, [wAudioSlot]
    and $f7
    ld [wAudioSlot], a
    call TickNoteTime
    jp nc, Jump_004_4410

    call ReadAudio
    jr nc, jr_004_4439

    cp $7f
    jr z, jr_004_4411

    call ReadNoteFreq
    ld a, c
    ld [wAudioSlot+18], a
    ld a, [wAudioSlot+19]
    and $f8
    or b
    ld [wAudioSlot+19], a
    ld a, [wAudioSlot]
    and $08
    jr nz, jr_004_4410

    ld a, [wAudioSlot+9]
    sla a
    jr nc, jr_004_441e

    ld a, $00
    ld [wAudioSlot+12], a
    ld a, [wAudioSlot]
    or $40
    and $d7
    ld [wAudioSlot], a

Jump_004_4410:
jr_004_4410:
    ret


jr_004_4411:
    xor a
    ld [wAudioSlot+12], a
    ld a, [wAudioSlot]
    or $20
    ld [wAudioSlot], a
    ret


jr_004_441e:
    ld a, $ff
    ld [wAudioSlot+25], a
    xor a
    ld [wAudioSlot+13], a
    ld [wAudioSlot+14], a
    inc a
    ld [wAudioSlot+12], a
    ld a, [wAudioSlot]
    or $40
    and $d7
    ld [wAudioSlot], a
    ret


jr_004_4439:
    ld a, $ff
    ld [wAudioDone], a
    ret

; Read the wave volume lookup at the staged instrument byte and store its output value.
WaveVolume:


Call_004_443f:
    ld a, [wAudioSlot+10]
    ld c, a
    ld b, $00
    ld hl, WaveLevels
    add hl, bc
    ld a, [hl]
    ld [wAudioSlot+25], a
    ret

; On note-time borrow, consume an event and select the four-byte noise instrument row.
StepNoise:


Call_004_444e:
    ld a, [wAudioSlot]
    and $f7
    ld [wAudioSlot], a
    call TickNoteTime
    jp nc, Jump_004_44b1

    call ReadAudio
    jr nc, jr_004_44a3

    cp $7f
    jr z, jr_004_44a9

    push bc
    ld b, a
    ld a, [wAudioSlot]
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
    ld a, [wAudioSlot+30]
    ld l, a
    ld a, [wAudioSlot+31]
    ld h, a
    add hl, bc
    ld a, [hl+]
    ld [wAudioSlot+16], a
    ld a, [hl+]
    ld [wAudioSlot+17], a
    ld a, [hl+]
    ld [wAudioSlot+18], a
    ld a, [hl+]
    ld [wAudioSlot+19], a
    ld a, [wAudioSlot]
    or $40
    and $d7
    ld [wAudioSlot], a
    ret


jr_004_44a3:
    ld a, $ff
    ld [wAudioDone], a
    ret


jr_004_44a9:
    ld a, [wAudioSlot]
    or $20
    ld [wAudioSlot], a

Jump_004_44b1:
jr_004_44b1:
    ret

; Combine note A with staged transpose and table offset; return the frequency word in BC and preserve HL.
ReadNoteFreq:


Call_004_44b2:
    ld d, h
    ld e, l
    ld b, a
    ld a, [wAudioSlot+21]
    add b
    sub $10
    sla a
    ld l, a
    ld h, $00
    ld bc, AudioFreqs
    add hl, bc
    ld a, [wAudioSlot+27]
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
    ld a, [wAudioSlot+7]
    ld b, a
    ld a, [wAudioSlot+5]
    sub b
    ld [wAudioSlot+5], a
    ld a, [wAudioSlot+8]
    ld b, a
    ld a, [wAudioSlot+6]
    sbc b
    ld [wAudioSlot+6], a
    ret

; Add the staged 16-bit duration to the note timer.
AddNoteTime:


Call_004_44e9:
    ld a, [wAudioSlot+3]
    ld b, a
    ld a, [wAudioSlot+5]
    add b
    ld [wAudioSlot+5], a
    ld a, [wAudioSlot+4]
    ld b, a
    ld a, [wAudioSlot+6]
    adc b
    ld [wAudioSlot+6], a
    ret
