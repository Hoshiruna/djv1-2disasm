
; Select the highest-priority active slot per hardware channel, stage output, and write sound registers.
MixAudio:


Call_004_4738:
    ld hl, wAudioMask
    xor a
    ld [hl], a
    ld bc, wAudioWork+128
    call AudioActive
    jr c, jr_004_474d

    ld bc, wAudioWork
    call AudioActive
    jr nc, jr_004_475b

jr_004_474d:
    sla a
    sla a
    jr c, jr_004_475b

    set 1, [hl]
    ld de, wAudioOut+8
    call StageAudioOut

jr_004_475b:
    ld bc, wAudioWork+224
    call AudioActive
    jr c, jr_004_4773

    ld bc, wAudioWork+160
    call AudioActive
    jr c, jr_004_4773

    ld bc, wAudioWork+32
    call AudioActive
    jr nc, jr_004_4781

jr_004_4773:
    sla a
    sla a
    jr c, jr_004_4781

    set 0, [hl]
    ld de, wAudioOut
    call StageAudioOut

jr_004_4781:
    ld bc, wAudioWork+192
    call AudioActive
    jr c, jr_004_4791

    ld bc, wAudioWork+64
    call AudioActive
    jr nc, jr_004_479f

jr_004_4791:
    sla a
    sla a
    jr c, jr_004_479f

    set 2, [hl]
    ld de, wAudioOut+16
    call StageAudioOut

jr_004_479f:
    ld bc, wAudioWork+256
    call AudioActive
    jr c, jr_004_47af

    ld bc, wAudioWork+96
    call AudioActive
    jr nc, jr_004_47bd

jr_004_47af:
    sla a
    sla a
    jr c, jr_004_47bd

    set 3, [hl]
    ld de, wAudioOut+24
    call StageAudioOut

jr_004_47bd:
    ld a, [hl]
    and $0f
    jr nz, jr_004_47c6

    xor a
    ldh [rNR52], a
    ret


jr_004_47c6:
    ld a, $80
    ldh [rNR52], a
    ld a, $77
    ldh [rNR50], a
    call AudioPan
    ldh [rNR51], a
    srl [hl]
    jr nc, jr_004_47dc

    call WritePulse1
    jr jr_004_47ea

jr_004_47dc:
    ldh a, [rNR12]
    cp $08
    jr z, jr_004_47ea

    ld a, $08
    ldh [rNR12], a
    ld a, $80
    ldh [rNR14], a

jr_004_47ea:
    srl [hl]
    jr nc, jr_004_47f3

    call WritePulse2
    jr jr_004_4801

jr_004_47f3:
    ldh a, [rNR22]
    cp $08
    jr z, jr_004_4801

    ld a, $08
    ldh [rNR22], a
    ld a, $80
    ldh [rNR24], a

jr_004_4801:
    srl [hl]
    jr nc, jr_004_480a

    call WriteWave
    jr jr_004_4814

jr_004_480a:
    ldh a, [rNR32]
    and $60
    jr z, jr_004_4814

    ld a, $00
    ldh [rNR32], a

jr_004_4814:
    srl [hl]
    jr nc, jr_004_481d

    call WriteNoise
    jr jr_004_482b

jr_004_481d:
    ldh a, [rNR42]
    cp $08
    jr z, jr_004_482b

    ld a, $08
    ldh [rNR42], a
    ld a, $80
    ldh [rNR44], a

jr_004_482b:
    ret

; Build pulse-1 register values and write from the first changed field or a retrigger.
WritePulse1:


Call_004_482c:
    ld a, [wAudioOut+5]
    cp $ff
    jr nz, jr_004_4839

    ld a, [wAudioOut+1]
    call AudioVolume

jr_004_4839:
    ld [wAudioReg+2], a
    ld a, [wAudioOut]
    and $40
    jr z, jr_004_4870

    ld a, [wAudioOut+2]
    ld b, a
    sla a
    jr nc, jr_004_4852

    ld a, b
    add $10
    and $7f
    jr jr_004_4854

jr_004_4852:
    ld a, $08

jr_004_4854:
    ld [wAudioReg], a
    ld a, [wAudioOut+1]
    and $c0
    ld b, a
    ld a, [wAudioOut+4]
    srl a
    srl a
    srl a
    or b
    ld [wAudioReg+1], a
    ld a, [wAudioOut+3]
    ld [wAudioReg+3], a

jr_004_4870:
    ld a, [wAudioOut+4]
    ld b, a
    ld a, [wAudioOut+1]
    call AudioTrigger
    ld [wAudioReg+4], a
    ld a, [wAudioOut]
    and $40
    jr nz, jr_004_48b7

    ld a, [wAudioReg]
    ld b, a
    ld a, [wAudioCache]
    cp b
    jr nz, jr_004_48b7

    ld a, [wAudioReg+1]
    ld b, a
    ld a, [wAudioCache+1]
    cp b
    jr nz, jr_004_48bf

    ld a, [wAudioReg+3]
    ld b, a
    ld a, [wAudioCache+3]
    cp b
    jr nz, jr_004_48c7

    ld a, [wAudioReg+2]
    ld b, a
    ld a, [wAudioCache+2]
    cp b
    jr nz, jr_004_48cf

    ld a, [wAudioReg+4]
    ld b, a
    ld a, [wAudioCache+4]
    cp b
    jr nz, jr_004_48d7

    ret


jr_004_48b7:
    ld a, [wAudioReg]
    ldh [rNR10], a
    ld [wAudioCache], a

jr_004_48bf:
    ld a, [wAudioReg+1]
    ldh [rNR11], a
    ld [wAudioCache+1], a

jr_004_48c7:
    ld a, [wAudioReg+3]
    ldh [rNR13], a
    ld [wAudioCache+3], a

jr_004_48cf:
    ld a, [wAudioReg+2]
    ldh [rNR12], a
    ld [wAudioCache+2], a

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
    ld a, [wAudioOut+13]
    cp $ff
    jr nz, jr_004_48fb

    ld a, [wAudioOut+9]
    call AudioVolume

jr_004_48fb:
    ld [wAudioReg+7], a
    ld a, [wAudioOut+8]
    and $40
    jr z, jr_004_491e

    ld a, [wAudioOut+9]
    and $c0
    ld b, a
    ld a, [wAudioOut+12]
    srl a
    srl a
    srl a
    or b
    ld [wAudioReg+6], a
    ld a, [wAudioOut+11]
    ld [wAudioReg+8], a

jr_004_491e:
    ld a, [wAudioOut+12]
    ld b, a
    ld a, [wAudioOut+9]
    call AudioTrigger
    ld [wAudioReg+9], a
    ld a, [wAudioOut+8]
    and $40
    jr nz, jr_004_495b

    ld a, [wAudioReg+6]
    ld b, a
    ld a, [wAudioCache+6]
    cp b
    jr nz, jr_004_495b

    ld a, [wAudioReg+8]
    ld b, a
    ld a, [wAudioCache+8]
    cp b
    jr nz, jr_004_4963

    ld a, [wAudioReg+7]
    ld b, a
    ld a, [wAudioCache+7]
    cp b
    jr nz, jr_004_496b

    ld a, [wAudioReg+9]
    ld b, a
    ld a, [wAudioCache+9]
    cp b
    jr nz, jr_004_4973

    ret


jr_004_495b:
    ld a, [wAudioReg+6]
    ldh [rNR21], a
    ld [wAudioCache+6], a

jr_004_4963:
    ld a, [wAudioReg+8]
    ldh [rNR23], a
    ld [wAudioCache+8], a

jr_004_496b:
    ld a, [wAudioReg+7]
    ldh [rNR22], a
    ld [wAudioCache+7], a

jr_004_4973:
    ld a, [wAudioReg+9]
    ldh [rNR24], a
    ld [wAudioCache+9], a
    ret

; When the staged retrigger bit is set, write wave-channel control, volume, and frequency.
WriteWave:


Call_004_497c:
    ld a, [wAudioOut+16]
    and $40
    jr nz, jr_004_4984

    ret


jr_004_4984:
    xor a
    ldh [rNR30], a
    ldh [rNR31], a
    ld a, [wAudioOut+21]
    and $60
    ldh [rNR32], a
    ld a, [wAudioOut+19]
    ldh [rNR33], a
    ld a, $80
    ldh [rNR30], a
    ld a, [wAudioOut+20]
    and $07
    or $80
    ldh [rNR34], a
    ret

; When the staged retrigger bit is set, write noise-channel registers.
WriteNoise:


Call_004_49a3:
    ld a, [wAudioOut+24]
    and $40
    jr nz, jr_004_49ab

    ret


jr_004_49ab:
    ld a, [wAudioOut+25]
    ldh [rNR41], a
    ld a, [wAudioOut+26]
    ldh [rNR42], a
    ld a, [wAudioOut+27]
    ldh [rNR43], a
    ld a, [wAudioOut+28]
    ldh [rNR44], a
    ret

; Decode a pulse volume/envelope byte from packed A; clobber B.
AudioVolume:


Call_004_49c0:
    ld b, a
    and $10
    jr nz, jr_004_49d0

    ld a, b
    srl a
    srl a
    and $03
    inc a
    or $f0
    ret


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

; Copy flags and selected slot fields to DE, clear source bit 6, and preserve HL.
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
    ld a, [wAudioOut+30]
    srl a
    rl b
    srl a
    rl c
    scf
    rl b
    scf
    rl c
    ld a, [wAudioOut+14]
    srl a
    rl b
    srl a
    rl c
    ld a, [wAudioOut+6]
    srl a
    rl b
    srl a
    rl c
    ld a, c
    swap a
    or b
    ret
