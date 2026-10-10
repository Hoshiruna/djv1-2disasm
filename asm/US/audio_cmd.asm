
; Load HL from the staged stream pointer, then enter NextAudio.
ReadAudio:


Call_004_4500:
    ld a, [wAudioSlot+1]
    ld l, a
    ld a, [wAudioSlot+2]
    ld h, a

; Read audio commands until a note/rest returns with carry set or an end command clears carry.
NextAudio:

Jump_004_4508:
    ld a, [hl+]
    ld [wAudioByte], a
    cp $ff
    jp z, EndAudioSlot

    cp $7e
    jr z, jr_004_4563

    cp $08
    jr z, jr_004_4534

    cp $02
    jr z, jr_004_453b

    cp $03
    jr z, jr_004_4543

    cp $04
    jr z, jr_004_454b

    cp $80
    jr c, jr_004_4553

    cp $c0
    jr c, jr_004_456e

    cp $e0
    jr nc, jr_004_4593

    jp AudioLoop


jr_004_4534:
    ld a, [hl+]
    ld [wAudioSlot+21], a
    jp NextAudio


jr_004_453b:
    ld a, $01
    ld [wAudioSlot+26], a
    jp NextAudio


jr_004_4543:
    ld a, $03
    ld [wAudioSlot+26], a
    jp NextAudio


jr_004_454b:
    ld a, $02
    ld [wAudioSlot+26], a
    jp NextAudio


jr_004_4553:
    call AddNoteTime
    ld a, l
    ld [wAudioSlot+1], a
    ld a, h
    ld [wAudioSlot+2], a
    ld a, [wAudioByte]
    scf
    ret


jr_004_4563:
    ld a, [wAudioSlot]
    or $08
    ld [wAudioSlot], a
    jp NextAudio


jr_004_456e:
    push hl
    and $1f
    sla a
    ld c, a
    ld b, $00
    ld hl, AudioTimes
    add hl, bc
    ld a, [hl+]
    ld [wAudioSlot+3], a
    ld a, [hl+]
    ld [wAudioSlot+4], a
    pop hl
    jp NextAudio

; Clear the staged active byte and pointer high byte, retrigger lower slots, then return carry clear.
EndAudioSlot:


Jump_004_4586:
    xor a
    ld [wAudioSlot], a
    ld [wAudioSlot+2], a
    call RetrigAudio
    scf
    ccf
    ret


jr_004_4593:
    ld a, [hl+]
    ld c, a
    ld a, [wAudioByte]
    cp $e0
    jp z, LoadAudioInst

    cp $e1
    jr z, jr_004_45a8

    cp $e2
    jr z, jr_004_45d4

    jp NextAudio

; Read the two-byte instrument selected by C and reset the original staged fields, then continue parsing.
LoadAudioInst:


Jump_004_45a8:
jr_004_45a8:
    ld a, c
    sla a
    ld b, a
    ld a, [wAudioSlot+30]
    add b
    ld e, a
    ld a, [wAudioSlot+31]
    ld b, $00
    adc b
    ld d, a
    ld a, [de]
    inc de
    ld [wAudioSlot+16], a
    ld a, [de]
    ld [wAudioSlot+10], a
    xor a
    ld [wAudioSlot+11], a
    ld [wAudioSlot+17], a
    ld [wAudioSlot+19], a
    ld [wAudioSlot+24], a
    ld [wAudioSlot+9], a
    jp NextAudio

; Read the wave instrument, upload sixteen wave RAM bytes, reset staged fields, then continue parsing.
LoadWaveInst:


jr_004_45d4:
    ld a, c
    sla a
    ld b, a
    ld a, [wAudioSlot+30]
    add b
    ld e, a
    ld a, [wAudioSlot+31]
    ld b, $00
    adc b
    ld d, a
    ld a, $00
    ldh [rNR30], a
    ld a, [de]
    ld [wAudioSlot+20], a
    inc de
    push hl
    sla a
    sla a
    sla a
    sla a
    ld c, a
    ld b, $00
    ld hl, WaveForms
    add hl, bc
    ld c, $30
    ld b, $10

jr_004_4601:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, jr_004_4601

    pop hl
    ld a, [de]
    ld [wAudioSlot+10], a
    xor a
    ld [wAudioSlot+11], a
    ld [wAudioSlot+17], a
    ld [wAudioSlot+19], a
    ld [wAudioSlot+24], a
    ld [wAudioSlot+9], a
    jp NextAudio

; Interpret loop start/end/iteration commands using the original four-byte records and scans.
AudioLoop:


Jump_004_461f:
    cp $cf
    jr z, jr_004_4657

    jr nc, jr_004_4684

    and $0f
    ld [wAudioLoopTmp], a
    ld bc, wAudioLoops
    ld a, [wAudioSlot+15]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    xor a
    ld [bc], a
    inc bc
    ld a, [wAudioLoopTmp]
    ld [bc], a
    inc bc
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ld a, [wAudioSlot+15]
    and $f0
    ld b, a
    ld a, [wAudioSlot+15]
    add $04
    and $0f
    or b
    ld [wAudioSlot+15], a
    jp NextAudio


jr_004_4657:
    ld a, [wAudioSlot+15]
    call AudioLoopPtr
    jr nc, jr_004_4679

    ld a, [bc]
    inc a
    ld [bc], a
    ld d, a
    inc bc
    ld a, [bc]
    cp d
    jr z, jr_004_4671

    inc bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    jp NextAudio


jr_004_4671:
    ld a, [wAudioSlot+15]
    sub $04
    ld [wAudioSlot+15], a

jr_004_4679:
    ld a, [hl+]
    and $f0
    cp $d0
    jr z, jr_004_4679

    dec hl
    jp NextAudio


jr_004_4684:
    and $0f
    dec a
    ld d, a
    ld a, [wAudioSlot+15]
    call AudioLoopPtr
    ld a, [bc]
    cp d
    jr z, jr_004_4679

jr_004_4692:
    ld a, [hl+]
    ld [wAudioLoopTmp], a
    cp $cf
    jr z, jr_004_4657

    and $f0
    cp $d0
    jr nz, jr_004_4692

    ld a, [wAudioLoopTmp]
    jr jr_004_4684

; Decode group/depth from A into BC; return carry for a nonzero depth and retain the original empty-depth address.
AudioLoopPtr:

Call_004_46a5:
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f
    jr z, jr_004_46bc

    sub $04
    or c
    ld bc, wAudioLoops
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    scf
    ret


jr_004_46bc:
    ld a, $d1
    add c
    ld c, a
    ld a, $80
    adc $00
    ld b, a
    scf
    ccf
    ret

; Mark lower-priority slots for retrigger from the staged slot ID; restore base wave RAM when needed.
RetrigAudio:


Call_004_46c8:
    ld a, [wAudioSlot+15]
    and $f0
    cp $40
    jr z, jr_004_46e2

    cp $50
    jr z, jr_004_46f3

    cp $60
    jr z, jr_004_46fc

    cp $70
    jr z, jr_004_46eb

    cp $80
    jr z, jr_004_472f

    ret


jr_004_46e2:
    ld a, [wAudioWork]
    or $40
    ld [wAudioWork], a
    ret


jr_004_46eb:
    ld a, [wAudioWork+160]
    or $40
    ld [wAudioWork+160], a

jr_004_46f3:
    ld a, [wAudioWork+32]
    or $40
    ld [wAudioWork+32], a
    ret


jr_004_46fc:
    ld a, [wAudioWork+64]
    or $40
    ld [wAudioWork+64], a
    ld a, $00
    ldh [rNR30], a
    ld a, [wAudioWork+84]
    ld b, a
    ld a, [wAudioSlot+20]
    xor b
    jr z, jr_004_472e

    ld a, [wAudioWork+84]
    sla a
    sla a
    sla a
    sla a
    ld c, a
    ld b, $00
    ld hl, WaveForms
    add hl, bc
    ld c, $30
    ld b, $10

jr_004_4728:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, jr_004_4728

jr_004_472e:
    ret


jr_004_472f:
    ld a, [wAudioWork+96]
    or $40
    ld [wAudioWork+96], a
    ret
