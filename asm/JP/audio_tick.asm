
; If deferred bit 7 is set at HL, clear it and do an extra StepAudio before the normal step.
UpdateAudio:

    bit 7, [hl]
    jr z, StepAudio

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
    jr nc, StepAudioBasePulse1

    call StageAudioSlot
    call StepPulse
    call PulseEnv
    call SaveAudioSlot

; Advance the base pulse-one slot when active.
StepAudioBasePulse1:
jr_004_4208:
    ld bc, wBaseP1
    ld a, [bc]
    sla a
    jr nc, StepAudioBaseWave

    call StageAudioSlot
    call StepPulse
    call PulseEnv
    call SaveAudioSlot

; Advance the base wave slot when active.
StepAudioBaseWave:
jr_004_421c:
    ld bc, wBaseWave
    ld a, [bc]
    sla a
    jr nc, StepAudioBaseNoise

    call StageAudioSlot
    call StepWave
    call WaveVolume
    call SaveAudioSlot

; Advance the base noise slot when active.
StepAudioBaseNoise:
jr_004_4230:
    ld bc, wBaseNoise
    ld a, [bc]
    sla a
    jr nc, StepAudioAltPulse2

    call StageAudioSlot
    call StepNoise
    call SaveAudioSlot

; Advance the alternate pulse-two slot when active.
StepAudioAltPulse2:
jr_004_4241:
    ld bc, wAltP2
    ld a, [bc]
    sla a
    jr nc, StepAudioAltPulse1

    call StageAudioSlot
    call StepPulse
    call PulseEnv
    call SaveAudioSlot

; Advance the alternate pulse-one slot when active.
StepAudioAltPulse1:
jr_004_4255:
    ld bc, wAltP1
    ld a, [bc]
    sla a
    jr nc, StepAudioAltWave

    call StageAudioSlot
    call StepPulse
    call PulseEnv
    call SaveAudioSlot

; Advance the alternate wave slot when active.
StepAudioAltWave:
jr_004_4269:
    ld bc, wAltWave
    ld a, [bc]
    sla a
    jr nc, StepAudioTopPulse1

    call StageAudioSlot
    call StepWave
    call WaveVolume
    call SaveAudioSlot

; Advance the top pulse-one slot when active.
StepAudioTopPulse1:
jr_004_427d:
    ld bc, wTopP1
    ld a, [bc]
    sla a
    jr nc, StepAudioTopNoise

    call StageAudioSlot
    call StepPulse
    call SaveAudioSlot
    call PulseEnv

; Advance the top noise slot when active.
StepAudioTopNoise:
jr_004_4291:
    ld bc, wTopNoise
    ld a, [bc]
    sla a
    jr nc, StepAudioMix

    call StageAudioSlot
    call StepNoise
    call SaveAudioSlot

; Mix the updated slots and check for base audio completion.
StepAudioMix:
jr_004_42a2:
    call MixAudio
    ld a, [wAudioDone]
    cp $00
    jr z, StepAudioDone

    call EndAudio

; Return after the completion check.
StepAudioDone:
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

; Copy the next byte of the selected slot into the stage buffer.
StageAudioSlotCopyByte:
jr_004_42bd:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, StageAudioSlotCopyByte

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

; Copy the next staged byte back to the selected slot.
SaveAudioSlotCopyByte:
jr_004_42d1:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, SaveAudioSlotCopyByte

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
