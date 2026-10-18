
; Select the highest-priority active slot per hardware channel, stage output, and write sound registers.
MixAudio:


Call_004_4738:
    ld hl, wAudioMask
    xor a
    ld [hl], a
    ld bc, wAltP2
    call AudioActive
    jr c, MixStagePulse2

    ld bc, wBaseP2
    call AudioActive
    jr nc, MixTryPulse1

; Stage the selected pulse-two slot unless its masked flag excludes output.
MixStagePulse2:
jr_004_474d:
    sla a
    sla a
    jr c, MixTryPulse1

    set 1, [hl]
    ld de, wOutP2
    call StageAudioOut

; Search pulse-one slots in priority order.
MixTryPulse1:
jr_004_475b:
    ld bc, wTopP1
    call AudioActive
    jr c, MixStagePulse1

    ld bc, wAltP1
    call AudioActive
    jr c, MixStagePulse1

    ld bc, wBaseP1
    call AudioActive
    jr nc, MixTryWave

; Stage the selected pulse-one slot unless its masked flag excludes output.
MixStagePulse1:
jr_004_4773:
    sla a
    sla a
    jr c, MixTryWave

    set 0, [hl]
    ld de, wOutP1
    call StageAudioOut

; Search wave slots in priority order.
MixTryWave:
jr_004_4781:
    ld bc, wAltWave
    call AudioActive
    jr c, MixStageWave

    ld bc, wBaseWave
    call AudioActive
    jr nc, MixTryNoise

; Stage the selected wave slot unless its masked flag excludes output.
MixStageWave:
jr_004_4791:
    sla a
    sla a
    jr c, MixTryNoise

    set 2, [hl]
    ld de, wOutWave
    call StageAudioOut

; Search noise slots in priority order.
MixTryNoise:
jr_004_479f:
    ld bc, wTopNoise
    call AudioActive
    jr c, MixStageNoise

    ld bc, wBaseNoise
    call AudioActive
    jr nc, MixCheckActiveChannels

; Stage the selected noise slot unless its masked flag excludes output.
MixStageNoise:
jr_004_47af:
    sla a
    sla a
    jr c, MixCheckActiveChannels

    set 3, [hl]
    ld de, wOutNoise
    call StageAudioOut

; Test whether any output channel remains active.
MixCheckActiveChannels:
jr_004_47bd:
    ld a, [hl]
    and $0f
    jr nz, MixEnableAudio

    xor a
    ldh [rNR52], a
    ret


; Enable sound output and prepare channel register writes.
MixEnableAudio:
jr_004_47c6:
    ld a, $80
    ldh [rNR52], a
    ld a, $77
    ldh [rNR50], a
    call AudioPan
    ldh [rNR51], a
    srl [hl]
    jr nc, MixSilencePulse1

    call WritePulse1
    jr MixWritePulse2

; Write the pulse-one mute envelope and trigger when needed.
MixSilencePulse1:
jr_004_47dc:
    ldh a, [rNR12]
    cp $08
    jr z, MixWritePulse2

    ld a, $08
    ldh [rNR12], a
    ld a, $80
    ldh [rNR14], a

; Write or silence pulse two according to its active bit.
MixWritePulse2:
jr_004_47ea:
    srl [hl]
    jr nc, MixSilencePulse2

    call WritePulse2
    jr MixWriteWave

; Write the pulse-two mute envelope and trigger when needed.
MixSilencePulse2:
jr_004_47f3:
    ldh a, [rNR22]
    cp $08
    jr z, MixWriteWave

    ld a, $08
    ldh [rNR22], a
    ld a, $80
    ldh [rNR24], a

; Write or silence the wave channel according to its active bit.
MixWriteWave:
jr_004_4801:
    srl [hl]
    jr nc, MixSilenceWave

    call WriteWave
    jr MixWriteNoise

; Clear wave output level when no wave slot is active.
MixSilenceWave:
jr_004_480a:
    ldh a, [rNR32]
    and $60
    jr z, MixWriteNoise

    ld a, $00
    ldh [rNR32], a

; Write or silence noise according to its active bit.
MixWriteNoise:
jr_004_4814:
    srl [hl]
    jr nc, MixSilenceNoise

    call WriteNoise
    jr MixDone

; Write the noise mute envelope and trigger when needed.
MixSilenceNoise:
jr_004_481d:
    ldh a, [rNR42]
    cp $08
    jr z, MixDone

    ld a, $08
    ldh [rNR42], a
    ld a, $80
    ldh [rNR44], a

; Return after all four channel outputs are handled.
MixDone:
jr_004_482b:
    ret

; Build pulse-1 register values and write from the first changed field or a retrigger.
WritePulse1:


Call_004_482c:
    ld a, [wOutP1+5]
    cp $ff
    jr nz, Pulse1StageEnvelope

    ld a, [wOutP1+1]
    call AudioVolume

; Stage the pulse-one envelope byte.
Pulse1StageEnvelope:
jr_004_4839:
    ld [wAudioReg+2], a
    ld a, [wOutP1]
    and $40
    jr z, Pulse1StageTrigger

    ld a, [wOutP1+2]
    ld b, a
    sla a
    jr nc, Pulse1DefaultSweep

    ld a, b
    add $10
    and $7f
    jr Pulse1StageRegisters

; Use sweep value eight when the packed sweep flag is clear.
Pulse1DefaultSweep:
jr_004_4852:
    ld a, $08

; Stage pulse-one sweep, duty, and low frequency bytes.
Pulse1StageRegisters:
jr_004_4854:
    ld [wAudioReg], a
    ld a, [wOutP1+1]
    and $c0
    ld b, a
    ld a, [wOutP1+4]
    srl a
    srl a
    srl a
    or b
    ld [wAudioReg+1], a
    ld a, [wOutP1+3]
    ld [wAudioReg+3], a

; Stage the pulse-one trigger byte and compare cached registers.
Pulse1StageTrigger:
jr_004_4870:
    ld a, [wOutP1+4]
    ld b, a
    ld a, [wOutP1+1]
    call AudioTrigger
    ld [wAudioReg+4], a
    ld a, [wOutP1]
    and $40
    jr nz, Pulse1WriteNR10

    ld a, [wAudioReg]
    ld b, a
    ld a, [wAudioCache]
    cp b
    jr nz, Pulse1WriteNR10

    ld a, [wAudioReg+1]
    ld b, a
    ld a, [wAudioCache+1]
    cp b
    jr nz, Pulse1WriteNR11

    ld a, [wAudioReg+3]
    ld b, a
    ld a, [wAudioCache+3]
    cp b
    jr nz, Pulse1WriteNR13

    ld a, [wAudioReg+2]
    ld b, a
    ld a, [wAudioCache+2]
    cp b
    jr nz, Pulse1WriteNR12

    ld a, [wAudioReg+4]
    ld b, a
    ld a, [wAudioCache+4]
    cp b
    jr nz, Pulse1WriteNR14

    ret


; Write and cache pulse-one sweep, then continue with remaining registers.
Pulse1WriteNR10:
jr_004_48b7:
    ld a, [wAudioReg]
    ldh [rNR10], a
    ld [wAudioCache], a

; Write and cache pulse-one duty, then continue with remaining registers.
Pulse1WriteNR11:
jr_004_48bf:
    ld a, [wAudioReg+1]
    ldh [rNR11], a
    ld [wAudioCache+1], a

; Write and cache pulse-one low frequency, then continue.
Pulse1WriteNR13:
jr_004_48c7:
    ld a, [wAudioReg+3]
    ldh [rNR13], a
    ld [wAudioCache+3], a

; Write and cache pulse-one envelope, then continue.
Pulse1WriteNR12:
jr_004_48cf:
    ld a, [wAudioReg+2]
    ldh [rNR12], a
    ld [wAudioCache+2], a

; Write and cache pulse-one trigger and high frequency.
Pulse1WriteNR14:
jr_004_48d7:
    ld a, [wAudioReg+4]
    ldh [rNR14], a
    ld [wAudioCache+4], a
    ret

; Build a pulse trigger/control byte from A bit 5 and B low three bits.
AudioTrigger:


Call_004_48e0:
    and $20
    xor $20
    sla a
    or $80
    ld c, a
    ld a, b
    and $07
    or c
    ret

; Build pulse-2 register values and write from the first changed field or a retrigger.
WritePulse2:


Call_004_48ee:
    ld a, [wOutP2+5]
    cp $ff
    jr nz, Pulse2StageEnvelope

    ld a, [wOutP2+1]
    call AudioVolume

; Stage the pulse-two envelope byte.
Pulse2StageEnvelope:
jr_004_48fb:
    ld [wAudioReg+7], a
    ld a, [wOutP2]
    and $40
    jr z, Pulse2StageTrigger

    ld a, [wOutP2+1]
    and $c0
    ld b, a
    ld a, [wOutP2+4]
    srl a
    srl a
    srl a
    or b
    ld [wAudioReg+6], a
    ld a, [wOutP2+3]
    ld [wAudioReg+8], a

; Stage the pulse-two trigger byte and compare cached registers.
Pulse2StageTrigger:
jr_004_491e:
    ld a, [wOutP2+4]
    ld b, a
    ld a, [wOutP2+1]
    call AudioTrigger
    ld [wAudioReg+9], a
    ld a, [wOutP2]
    and $40
    jr nz, Pulse2WriteNR21

    ld a, [wAudioReg+6]
    ld b, a
    ld a, [wAudioCache+6]
    cp b
    jr nz, Pulse2WriteNR21

    ld a, [wAudioReg+8]
    ld b, a
    ld a, [wAudioCache+8]
    cp b
    jr nz, Pulse2WriteNR23

    ld a, [wAudioReg+7]
    ld b, a
    ld a, [wAudioCache+7]
    cp b
    jr nz, Pulse2WriteNR22

    ld a, [wAudioReg+9]
    ld b, a
    ld a, [wAudioCache+9]
    cp b
    jr nz, Pulse2WriteNR24

    ret


; Write and cache pulse-two duty, then continue with remaining registers.
Pulse2WriteNR21:
jr_004_495b:
    ld a, [wAudioReg+6]
    ldh [rNR21], a
    ld [wAudioCache+6], a

; Write and cache pulse-two low frequency, then continue.
Pulse2WriteNR23:
jr_004_4963:
    ld a, [wAudioReg+8]
    ldh [rNR23], a
    ld [wAudioCache+8], a

; Write and cache pulse-two envelope, then continue.
Pulse2WriteNR22:
jr_004_496b:
    ld a, [wAudioReg+7]
    ldh [rNR22], a
    ld [wAudioCache+7], a

; Write and cache pulse-two trigger and high frequency.
Pulse2WriteNR24:
jr_004_4973:
    ld a, [wAudioReg+9]
    ldh [rNR24], a
    ld [wAudioCache+9], a
    ret

; When the staged retrigger bit is set, write wave-channel control, volume, and frequency.
WriteWave:


Call_004_497c:
    ld a, [wOutWave]
    and $40
    jr nz, WaveWriteRegisters

    ret


; Write wave power, level, frequency, and trigger registers.
WaveWriteRegisters:
jr_004_4984:
    xor a
    ldh [rNR30], a
    ldh [rNR31], a
    ld a, [wOutWave+5]
    and $60
    ldh [rNR32], a
    ld a, [wOutWave+3]
    ldh [rNR33], a
    ld a, $80
    ldh [rNR30], a
    ld a, [wOutWave+4]
    and $07
    or $80
    ldh [rNR34], a
    ret

; When the staged retrigger bit is set, write noise-channel registers.
WriteNoise:


Call_004_49a3:
    ld a, [wOutNoise]
    and $40
    jr nz, NoiseWriteRegisters

    ret


; Write noise length, envelope, frequency, and trigger registers.
NoiseWriteRegisters:
jr_004_49ab:
    ld a, [wOutNoise+1]
    ldh [rNR41], a
    ld a, [wOutNoise+2]
    ldh [rNR42], a
    ld a, [wOutNoise+3]
    ldh [rNR43], a
    ld a, [wOutNoise+4]
    ldh [rNR44], a
    ret

; Decode a pulse volume/envelope byte from packed A; clobber B.
AudioVolume:


Call_004_49c0:
    ld b, a
    and $10
    jr nz, AudioVolumeHighNibble

    ld a, b
    srl a
    srl a
    and $03
    inc a
    or $f0
    ret


; Take the output envelope from the high nibble of the packed volume byte.
AudioVolumeHighNibble:
jr_004_49d0:
    ld a, b
    swap a
    and $f0
    ret

; Read [BC], shift left into A, and return original bit 7 in carry.
AudioActive:


Call_004_49d6:
    ld a, [bc]
    sla a
    ret

; Write flags, slot bytes 16..19, level, and pan to output bytes 0..6.
; Leave output byte 7 unchanged, clear source bit 6, and preserve HL.
StageAudioOut:


Call_004_49da:
    ld a, [bc]
    ld [de], a
    inc de
    and $bf
    ld [bc], a
    push hl
    ld hl, $0010
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $0005
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    ret

; Pack pulse/noise stereo bits into NR51 routing, with wave routed to both sides.
AudioPan:


Call_004_49fd:
    ld b, $00
    ld c, $00
    ld a, [wOutNoise+6]
    srl a
    rl b
    srl a
    rl c
    scf
    rl b
    scf
    rl c
    ld a, [wOutP2+6]
    srl a
    rl b
    srl a
    rl c
    ld a, [wOutP1+6]
    srl a
    rl b
    srl a
    rl c
    ld a, c
    swap a
    or b
    ret
