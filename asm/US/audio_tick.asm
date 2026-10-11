
; If deferred bit 7 is set at HL, clear it and do an extra StepAudio before the normal step.
UpdateAudio:

    bit 7, [hl]
    jr z, jr_004_41f0

    res 7, [hl]
    call StepAudio

; Update active slots in their original order, run output processing, then handle completion if requested.
StepAudio:

Call_004_41f0:
jr_004_41f0:
    xor a
    ld [wAudioDone], a
    ld bc, wBaseP2
    ld a, [bc]
    sla a
    jr nc, jr_004_4208

    call StageAudioSlot
    call StepPulse
    call PulseEnv
    call SaveAudioSlot

jr_004_4208:
    ld bc, wBaseP1
    ld a, [bc]
    sla a
    jr nc, jr_004_421c

    call StageAudioSlot
    call StepPulse
    call PulseEnv
    call SaveAudioSlot

jr_004_421c:
    ld bc, wBaseWave
    ld a, [bc]
    sla a
    jr nc, jr_004_4230

    call StageAudioSlot
    call StepWave
    call WaveVolume
    call SaveAudioSlot

jr_004_4230:
    ld bc, wBaseNoise
    ld a, [bc]
    sla a
    jr nc, jr_004_4241

    call StageAudioSlot
    call StepNoise
    call SaveAudioSlot

jr_004_4241:
    ld bc, wAltP2
    ld a, [bc]
    sla a
    jr nc, jr_004_4255

    call StageAudioSlot
    call StepPulse
    call PulseEnv
    call SaveAudioSlot

jr_004_4255:
    ld bc, wAltP1
    ld a, [bc]
    sla a
    jr nc, jr_004_4269

    call StageAudioSlot
    call StepPulse
    call PulseEnv
    call SaveAudioSlot

jr_004_4269:
    ld bc, wAltWave
    ld a, [bc]
    sla a
    jr nc, jr_004_427d

    call StageAudioSlot
    call StepWave
    call WaveVolume
    call SaveAudioSlot

jr_004_427d:
    ld bc, wTopP1
    ld a, [bc]
    sla a
    jr nc, jr_004_4291

    call StageAudioSlot
    call StepPulse
    call SaveAudioSlot
    call PulseEnv

jr_004_4291:
    ld bc, wTopNoise
    ld a, [bc]
    sla a
    jr nc, jr_004_42a2

    call StageAudioSlot
    call StepNoise
    call SaveAudioSlot

jr_004_42a2:
    call MixAudio
    ld a, [wAudioDone]
    cp $00
    jr z, jr_004_42af

    call EndAudio

jr_004_42af:
    ret

; Save BC as the slot pointer and copy its $20 bytes into wAudioSlot.
StageAudioSlot:


Call_004_42b0:
    ld a, c
    ld [wAudioSlotPtr], a
    ld a, b
    ld [wAudioSlotPtr+1], a
    ld hl, wAudioSlot
    ld d, AudioRecLen

jr_004_42bd:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_004_42bd

    ret

; Copy the $20-byte staged slot back through wAudioSlotPtr.
SaveAudioSlot:


Call_004_42c4:
    ld a, [wAudioSlotPtr]
    ld l, a
    ld a, [wAudioSlotPtr+1]
    ld h, a
    ld bc, wAudioSlot
    ld d, AudioRecLen

jr_004_42d1:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_004_42d1

    ret

; If all four base slots are inactive, reload a bit-7 selection or clear the base selection.
EndAudio:


Call_004_42d8:
    ld a, [wBaseP2]
    ld b, a
    ld a, [wBaseP1]
    or b
    ld b, a
    ld a, [wBaseWave]
    or b
    ld b, a
    ld a, [wBaseNoise]
    or b
    rla
    ret c

    ld a, [wAudioState]
    bit 7, a
    jp z, StopAudioBase

    and $7f
    ld [wAudioReq], a
    ld [wAudioId], a
    jp ReloadAudio

; Clear the four base active bytes and both audio selection bytes.
StopAudioBase:


Jump_004_42ff:
    xor a
    ld [wBaseP2], a
    ld [wBaseP1], a
    ld [wBaseWave], a
    ld [wBaseNoise], a
    ld [wAudioState], a
    ld [wAudioId], a
    ret

; Call DispatchAudio with the current request; preserve HL, BC, and DE.
ReloadAudio:


Jump_004_4313:
    push hl
    push bc
    push de
    call DispatchAudio
    pop de
    pop bc
    pop hl
    ret
