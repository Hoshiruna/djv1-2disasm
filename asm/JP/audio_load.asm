
; Read four slot pointers and their shared parameter bytes from DE.
LoadAudio4:

Call_004_40b4:
    ld a, [de]
    ld [wBaseP2+7], a
    ld [wBaseP1+7], a
    ld [wBaseWave+7], a
    ld [wBaseNoise+7], a
    inc de
    ld bc, wBaseP2
    call ReadAudioSlot
    call ReadAudioSlot
    call ReadAudioSlot
    call ReadAudioSlot
    ld a, [de]
    inc de
    ld [wBaseP2+30], a
    ld [wBaseP1+30], a
    ld [wBaseWave+30], a
    ld a, [de]
    inc de
    ld [wBaseP2+31], a
    ld [wBaseP1+31], a
    ld [wBaseWave+31], a
    ld a, [de]
    inc de
    ld [wBaseNoise+30], a
    ld a, [de]
    ld [wBaseNoise+31], a
    ld a, $03
    ld [wBaseP2+26], a
    ld [wBaseP1+26], a
    ld [wBaseWave+26], a
    ld [wBaseNoise+26], a
    xor a
    ld [wBaseP2+21], a
    ld [wBaseP1+21], a
    ld [wBaseWave+21], a
    ld [wBaseNoise+21], a
    ld a, $00
    ld [wBaseP2+15], a
    ld a, $10
    ld [wBaseP1+15], a
    ld a, $20
    ld [wBaseWave+15], a
    ld a, $30
    ld [wBaseNoise+15], a
    ret

; Load four slots, then set wAudioState to the retained ID with bit 7 set.
LoadAudio4Hi:


    call LoadAudio4
    ld a, [wAudioId]
    or $80
    ld [wAudioState], a
    ret

; Read three slot pointers at workspace offset $80, skipping one parameter word.
LoadAudio3:


    ld a, [de]
    ld [wAltP2+7], a
    ld [wAltP1+7], a
    ld [wAltWave+7], a
    inc de
    ld bc, wAltP2
    call ReadAudioSlot
    call ReadAudioSlot
    call ReadAudioSlot
    inc de
    inc de
    ld a, [de]
    inc de
    ld [wAltP2+30], a
    ld [wAltP1+30], a
    ld [wAltWave+30], a
    ld a, [de]
    inc de
    ld [wAltP2+31], a
    ld [wAltP1+31], a
    ld [wAltWave+31], a
    ld a, $03
    ld [wAltP2+26], a
    ld [wAltP1+26], a
    ld [wAltWave+26], a
    xor a
    ld [wAltP2+21], a
    ld [wAltP1+21], a
    ld [wAltWave+21], a
    ld a, $40
    ld [wAltP2+15], a
    ld a, $50
    ld [wAltP1+15], a
    ld a, $60
    ld [wAltWave+15], a
    ret

; Read two selected slot pointers at workspace offset $e0 with the original record gaps.
LoadAudio2:


    ld a, [de]
    ld [wTopP1+7], a
    ld [wTopNoise+7], a
    inc de
    inc de
    inc de
    ld bc, wTopP1
    call ReadAudioSlot
    inc de
    inc de
    call ReadAudioSlot
    ld a, [de]
    inc de
    ld [wTopP1+30], a
    ld a, [de]
    inc de
    ld [wTopP1+31], a
    ld a, [de]
    ld [wTopNoise+30], a
    inc de
    ld a, [de]
    ld [wTopNoise+31], a
    ld a, $03
    ld [wTopP1+26], a
    ld [wTopNoise+26], a
    xor a
    ld [wTopP1+21], a
    ld [wTopNoise+21], a
    ld a, $70
    ld [wTopP1+15], a
    ld a, $80
    ld [wTopNoise+15], a
    ret

; Read a pointer from DE into the slot at BC, set active/default fields, and advance BC by $20.
ReadAudioSlot:


Call_004_41c2:
    push bc
    ld h, b
    ld l, c
    ld a, $80
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld b, a
    ld a, [de]
    ld [hl+], a
    inc de
    or b
    jr nz, jr_004_41db

    pop bc
    ld [bc], a

jr_004_41d4:
    ld hl, AudioRecLen
    add hl, bc
    ld b, h
    ld c, l
    ret


jr_004_41db:
    inc hl
    inc hl
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld [hl+], a
    pop bc
    jr jr_004_41d4
