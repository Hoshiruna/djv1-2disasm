
; Load HL from the staged stream pointer, then enter NextAudio.
ReadAudio:


Call_004_4500:
    ld a, [wNotePtr]
    ld l, a
    ld a, [wNotePtr+1]
    ld h, a

; Read audio commands until a note/rest returns with carry set or an end command clears carry.
NextAudio:

Jump_004_4508:
    ld a, [hl+]
    ld [wAudioByte], a
    cp $ff
    jp z, EndAudioSlot

    cp $7e
    jr z, AudioSetNoteFlag08

    cp $08
    jr z, AudioSetNoteShift

    cp $02
    jr z, AudioSetPan01

    cp $03
    jr z, AudioSetPan03

    cp $04
    jr z, AudioSetPan02

    cp $80
    jr c, AudioReturnTimedByte

    cp $c0
    jr c, AudioSetNoteLength

    cp $e0
    jr nc, AudioDispatchInstrument

    jp AudioLoop


; Read the next stream byte into the note shift field.
AudioSetNoteShift:
jr_004_4534:
    ld a, [hl+]
    ld [wNoteShift], a
    jp NextAudio


; Set note pan to one.
AudioSetPan01:
jr_004_453b:
    ld a, $01
    ld [wNotePan], a
    jp NextAudio


; Set note pan to three.
AudioSetPan03:
jr_004_4543:
    ld a, $03
    ld [wNotePan], a
    jp NextAudio


; Set note pan to two.
AudioSetPan02:
jr_004_454b:
    ld a, $02
    ld [wNotePan], a
    jp NextAudio


; Advance note time and return the current stream byte with carry set.
AudioReturnTimedByte:
jr_004_4553:
    call AddNoteTime
    ld a, l
    ld [wNotePtr], a
    ld a, h
    ld [wNotePtr+1], a
    ld a, [wAudioByte]
    scf
    ret


; Set bit three in the staged note flags.
AudioSetNoteFlag08:
jr_004_4563:
    ld a, [wNoteFlags]
    or $08
    ld [wNoteFlags], a
    jp NextAudio


; Select a two-byte duration from the audio time table.
AudioSetNoteLength:
jr_004_456e:
    push hl
    and $1f
    sla a
    ld c, a
    ld b, $00
    ld hl, AudioTimes
    add hl, bc
    ld a, [hl+]
    ld [wNoteLen], a
    ld a, [hl+]
    ld [wNoteLen+1], a
    pop hl
    jp NextAudio

; Clear the staged active byte and pointer high byte, retrigger lower slots, then return carry clear.
EndAudioSlot:


Jump_004_4586:
    xor a
    ld [wNoteFlags], a
    ld [wNotePtr+1], a
    call RetrigAudio
    scf
    ccf
    ret


; Read an instrument operand and dispatch commands E0 through E2.
AudioDispatchInstrument:
jr_004_4593:
    ld a, [hl+]
    ld c, a
    ld a, [wAudioByte]
    cp $e0
    jp z, LoadAudioInst

    cp $e1
    jr z, jr_004_45a8

    cp $e2
    jr z, LoadWaveInst

    jp NextAudio

; Read the two-byte instrument selected by C and reset the original staged fields, then continue parsing.
LoadAudioInst:


Jump_004_45a8:
jr_004_45a8:
    ld a, c
    sla a
    ld b, a
    ld a, [wInstPtr]
    add b
    ld e, a
    ld a, [wInstPtr+1]
    ld b, $00
    adc b
    ld d, a
    ld a, [de]
    inc de
    ld [wNoteRegs], a
    ld a, [de]
    ld [wNoteInst], a
    xor a
    ld [wAudioSlot+11], a
    ld [wNoteRegs+1], a
    ld [wNoteRegs+3], a
    ld [wAudioSlot+24], a
    ld [wEnvMode], a
    jp NextAudio

; Read the wave instrument, upload sixteen wave RAM bytes, reset staged fields, then continue parsing.
LoadWaveInst:


jr_004_45d4:
    ld a, c
    sla a
    ld b, a
    ld a, [wInstPtr]
    add b
    ld e, a
    ld a, [wInstPtr+1]
    ld b, $00
    adc b
    ld d, a
    ld a, $00
    ldh [rNR30], a
    ld a, [de]
    ld [wWaveId], a
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

; Copy sixteen bytes from the selected waveform into wave RAM.
AudioCopyWaveBytes:
jr_004_4601:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, AudioCopyWaveBytes

    pop hl
    ld a, [de]
    ld [wNoteInst], a
    xor a
    ld [wAudioSlot+11], a
    ld [wNoteRegs+1], a
    ld [wNoteRegs+3], a
    ld [wAudioSlot+24], a
    ld [wEnvMode], a
    jp NextAudio

; Interpret loop start/end/iteration commands using the original four-byte records and scans.
AudioLoop:


Jump_004_461f:
    cp $cf
    jr z, AudioAdvanceLoop

    jr nc, AudioTestLoopDepth

    and $0f
    ld [wAudioLoopTmp], a
    ld bc, wAudioLoops
    ld a, [wLoopPos]
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
    ld a, [wLoopPos]
    and $f0
    ld b, a
    ld a, [wLoopPos]
    add $04
    and $0f
    or b
    ld [wLoopPos], a
    jp NextAudio


; Increment a loop counter and either rewind or leave the loop.
AudioAdvanceLoop:
jr_004_4657:
    ld a, [wLoopPos]
    call AudioLoopPtr
    jr nc, AudioSkipLoopMarkers

    ld a, [bc]
    inc a
    ld [bc], a
    ld d, a
    inc bc
    ld a, [bc]
    cp d
    jr z, AudioPopLoopRecord

    inc bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    jp NextAudio


; Move the staged loop position back by four bytes.
AudioPopLoopRecord:
jr_004_4671:
    ld a, [wLoopPos]
    sub $04
    ld [wLoopPos], a

; Skip consecutive D0-class loop markers in the stream.
AudioSkipLoopMarkers:
jr_004_4679:
    ld a, [hl+]
    and $f0
    cp $d0
    jr z, AudioSkipLoopMarkers

    dec hl
    jp NextAudio


; Compare the loop marker depth with the current loop counter.
AudioTestLoopDepth:
jr_004_4684:
    and $0f
    dec a
    ld d, a
    ld a, [wLoopPos]
    call AudioLoopPtr
    ld a, [bc]
    cp d
    jr z, AudioSkipLoopMarkers

; Scan forward to a CF or D0-class loop marker.
AudioScanLoopMarker:
jr_004_4692:
    ld a, [hl+]
    ld [wAudioLoopTmp], a
    cp $cf
    jr z, AudioAdvanceLoop

    and $f0
    cp $d0
    jr nz, AudioScanLoopMarker

    ld a, [wAudioLoopTmp]
    jr AudioTestLoopDepth

; Decode group/depth from A into BC; return carry for a nonzero depth and retain the original empty-depth address.
AudioLoopPtr:

Call_004_46a5:
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f
    jr z, AudioLoopEmptyDepth

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


; Return the original empty-depth address with carry clear.
AudioLoopEmptyDepth:
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
    ld a, [wLoopPos]
    and $f0
    cp $40
    jr z, RetrigBasePulse2

    cp $50
    jr z, RetrigBasePulse1

    cp $60
    jr z, RetrigBaseWave

    cp $70
    jr z, RetrigAltAndBasePulse1

    cp $80
    jr z, RetrigBaseNoise

    ret


; Set the retrigger bit in the base pulse-two slot.
RetrigBasePulse2:
jr_004_46e2:
    ld a, [wBaseP2]
    or $40
    ld [wBaseP2], a
    ret


; Set the retrigger bit in the alternate pulse-one and base pulse-one slots.
RetrigAltAndBasePulse1:
jr_004_46eb:
    ld a, [wAltP1]
    or $40
    ld [wAltP1], a

; Set the retrigger bit in the base pulse-one slot.
RetrigBasePulse1:
jr_004_46f3:
    ld a, [wBaseP1]
    or $40
    ld [wBaseP1], a
    ret


; Set the base wave retrigger bit and compare waveform IDs.
RetrigBaseWave:
jr_004_46fc:
    ld a, [wBaseWave]
    or $40
    ld [wBaseWave], a
    ld a, $00
    ldh [rNR30], a
    ld a, [wBaseWave+20]
    ld b, a
    ld a, [wWaveId]
    xor b
    jr z, RetrigWaveDone

    ld a, [wBaseWave+20]
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

; Copy sixteen bytes of the base waveform into wave RAM.
RetrigCopyBaseWave:
jr_004_4728:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, RetrigCopyBaseWave

; Return after the waveform ID check or copy.
RetrigWaveDone:
jr_004_472e:
    ret


; Set the retrigger bit in the base noise slot.
RetrigBaseNoise:
jr_004_472f:
    ld a, [wBaseNoise]
    or $40
    ld [wBaseNoise], a
    ret
