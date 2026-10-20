; --- audio_start.asm ---
; Clear the $140-byte audio workspace and selection bytes; set nine slot bytes to $ff; preserve HL and BC.
ResetAudio:
Jump_004_4000:
    push hl
    push bc
    ld hl, wAudioWork
    ld bc, AudioWorkLen
    call ZeroBytes
    xor a
    ld [wAudioState], a
    ld [wAudioId], a
    ld a, $ff
    ld [wBaseP2+25], a
    ld [wBaseP1+25], a
    ld [wBaseWave+25], a
    ld [wBaseNoise+25], a
    ld [wAltP2+25], a
    ld [wAltP1+25], a
    ld [wAltWave+25], a
    ld [wTopP1+25], a
    ld [wTopNoise+25], a
    pop bc
    pop hl
    ret

; Reset on request zero; suppress repeats for retained IDs, then dispatch the requested audio record.
SelectAudio:


    ld a, [wAudioReq]
    cp $00
    jp z, ResetAudio

    ld a, [wCaseId]
    cp $00
    jr nz, SelectCase2Audio

    ld a, [wAudioReq]
    cp $01
    jr z, SelectRetainedAudio

    cp $02
    jr z, SelectRetainedAudio

    cp $03
    jr z, SelectRetainedAudio

    cp $04
    jr z, SelectRetainedAudio

    cp $0b
    jr z, SelectRetainedAudio

    cp $0c
    jr z, SelectRetainedAudio

    cp $0d
    jr z, SelectRetainedAudio

    cp $0e
    jr z, SelectRetainedAudio

    jr DispatchAudio

; Apply the Case II request IDs that retain the current selection.
SelectCase2Audio:
jr_004_4066:
    ld a, [wAudioReq]
    cp $0e
    jr c, SelectRetainedAudio

    cp $14
    jr z, SelectRetainedAudio

    cp $1a
    jr nz, DispatchAudio

; Skip a request when its retained ID already matches.
SelectRetainedAudio:
jr_004_4075:
    ld a, [wAudioId]
    ld b, a
    ld a, [wAudioReq]
    ld [wAudioId], a
    cp b
    ret z

; Select the case pointer table using request-1, read a record, and dispatch its first byte.
; Doubling truncates to eight bits; a request high bit does not change the table index.
DispatchAudio:

Call_004_4081:
jr_004_4081:
    ld a, [wAudioReq]
    dec a
    sla a
    ld c, a
    ld b, $00
    ld a, [wCaseId]
    and $01
    jr nz, DispatchCase2Audio

    ld hl, C1AudioPtrs
    jr DispatchAudioRecord

; Select the Case II audio pointer table.
DispatchCase2Audio:
jr_004_4096:
    ld hl, C2AudioPtrs

; Read the selected two-byte pointer and dispatch its record type.
DispatchAudioRecord:
jr_004_4099:
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    cp $00
    jp z, ResetAudio

    ld a, [de]
    inc de
    rst RST_00
AudioTypeCalls:
    dw LoadAudioBase
    dw LoadAudio4Hi
    dw LoadAudio3
    dw LoadAudio2

; Set wAudioState to the retained audio ID, then fall through to LoadAudio4.
LoadAudioBase:
    ld a, [wAudioId]
    ld [wAudioState], a

; --- audio_load.asm ---

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
; Read wAudioId here, rather than the request byte used to select this record.
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
    jr nz, InitNonemptyAudioSlot

    pop bc
    ld [bc], a

; Advance the slot pointer by one audio record.
AdvanceAudioSlot:
jr_004_41d4:
    ld hl, AudioRecLen
    add hl, bc
    ld b, h
    ld c, l
    ret


; Initialize the active fields for a nonzero stream pointer.
; Duration bytes +3/+4 remain intact; set countdown $0001 and delta high byte $00.
InitNonemptyAudioSlot:
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
    jr AdvanceAudioSlot

; --- audio_tick.asm ---

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
; Original order: save precedes PulseEnv; this path has no later save of its envelope changes.
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
; Any ended slot can trigger this check; only the four base active bits gate completion.
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

; --- audio_note.asm ---

; Subtract the note timer delta; on borrow consume an event and update pulse frequency/flags.
StepPulse:


Call_004_431d:
    ld a, [wNoteFlags]
    and $f7
    ld [wNoteFlags], a
    call TickNoteTime
    jp nc, PulseStepEnd

    call ReadAudio
    jr nc, PulseMarkAudioDone

    cp $7f
    jr z, PulseMarkRest

    call ReadNoteFreq
    ld a, c
    ld [wNoteRegs+2], a
    ld a, [wNoteRegs+3]
    and $f8
    or b
    ld [wNoteRegs+3], a
    ld a, [wNoteFlags]
    and $08
    jr nz, PulseStepEnd

    ld a, [wEnvMode]
    sla a
    jr nc, PulseStartEnvelope

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


; Disable the envelope and set the pulse rest flag.
PulseMarkRest:
jr_004_4362:
    xor a
    ld [wEnvOn], a
    ld a, [wNoteFlags]
    or $20
    ld [wNoteFlags], a
    ret


; Reset the pulse envelope state and enable it.
PulseStartEnvelope:
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


; Mark the audio stream complete after a pulse event.
PulseMarkAudioDone:
jr_004_438a:
    ld a, $ff
    ld [wAudioDone], a
    ret

; When enabled, match the envelope tick against eight table pairs and update the staged volume.
PulseEnv:


Call_004_4390:
    ld a, [wEnvOn]
    cp $00
    jr z, PulseEnvDone

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

; Find the current envelope tick among eight time and level pairs.
; Tick $ff is compared normally; the first matching time/value pair wins.
PulseEnvScanPair:
jr_004_43ab:
    ld a, [hl+]
    cp d
    jr z, PulseEnvSetLevel

    inc hl
    inc b
    ld a, b
    cp $08
    jr nz, PulseEnvScanPair

    jr PulseEnvAdvanceTick

; Store the level paired with the matched envelope tick.
PulseEnvSetLevel:
jr_004_43b8:
    ld a, [hl+]
    ld [wNoteLevel], a

; Set packed pulse bit five and increment the envelope tick.
PulseEnvAdvanceTick:
jr_004_43bc:
    ld a, [wNoteRegs]
    or $20
    ld [wNoteRegs], a
    ld a, [wEnvTick]
    inc a
    ld [wEnvTick], a

; Return from pulse envelope processing.
PulseEnvDone:
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
    jr nc, WaveMarkAudioDone

    cp $7f
    jr z, WaveMarkRest

    call ReadNoteFreq
    ld a, c
    ld [wNoteRegs+2], a
    ld a, [wNoteRegs+3]
    and $f8
    or b
    ld [wNoteRegs+3], a
    ld a, [wNoteFlags]
    and $08
    jr nz, WaveStepEnd

    ld a, [wEnvMode]
    sla a
    jr nc, WaveStartEnvelope

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


; Disable the envelope and set the wave rest flag.
WaveMarkRest:
jr_004_4411:
    xor a
    ld [wEnvOn], a
    ld a, [wNoteFlags]
    or $20
    ld [wNoteFlags], a
    ret


; Reset the wave envelope state and enable it.
WaveStartEnvelope:
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


; Mark the audio stream complete after a wave event.
WaveMarkAudioDone:
jr_004_4439:
    ld a, $ff
    ld [wAudioDone], a
    ret

; Read the wave volume lookup at the staged instrument byte and store its output value.
; The byte index is unbounded here; selector $03 reads AudioWave00+1 ($77).
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
    jr nc, NoiseMarkAudioDone

    cp $7f
    jr z, NoiseMarkRest

    push bc
    ld b, a
    ld a, [wNoteFlags]
    and $08
    ld a, b
    pop bc
    jr nz, NoiseStepEnd

    sub $04

; Subtract twelve repeatedly before scaling to a four-byte instrument row.
; Row index is ((note - $04) & $ff) modulo twelve; each row holds four register bytes.
NoiseReduceInstrumentIndex:
jr_004_4472:
    sub $0c
    jr nc, NoiseReduceInstrumentIndex

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


; Mark the audio stream complete after a noise event.
NoiseMarkAudioDone:
jr_004_44a3:
    ld a, $ff
    ld [wAudioDone], a
    ret


; Set the noise rest flag.
NoiseMarkRest:
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
; Offset is ((note + shift - $10) * 2) & $ff, followed by the byte offset wFreqOff.
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
; Exact zero keeps carry clear; only unsigned underflow requests the next event.
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
; Add duration to the existing countdown, retaining its sixteen-bit borrow residue.
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

; --- audio_cmd.asm ---

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
    jr z, LoadAudioInst

    cp $e2
    jr z, LoadWaveInst

    jp NextAudio

; Read the two-byte instrument selected by C and reset the original staged fields, then continue parsing.
; Selector offset is (C * 2) & $ff; base addition carries into the high byte.
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
; Pair offset is (C * 2) & $ff; waveform offset is (wave ID * $10) & $ff.
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

    jr nc, AudioMatchLoopIteration

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


; Compare marker low nibble minus one with the current innermost iteration counter.
; Match marker low nibble minus one with the innermost loop iteration counter.
AudioMatchLoopIteration:
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
; Scan every byte, including bytes used as operands on the ordinary command path.
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
    jr AudioMatchLoopIteration

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
; Empty-depth address is $80d1 plus the slot group; iteration-marker reads retain it.
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

; --- audio_out.asm ---

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

; Stage the selected pulse-two slot unless its rest bit blocks this channel; do not try lower slots.
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

; Stage the selected pulse-one slot unless its rest bit blocks this channel; do not try lower slots.
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

; Stage the selected wave slot unless its rest bit blocks this channel; do not try lower slots.
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

; Stage the selected noise slot unless its rest bit blocks this channel; do not try lower slots.
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
    jr nz, AudioVolumeFromLowNibble

    ld a, b
    srl a
    srl a
    and $03
    inc a
    or $f0
    ret


; Bit four selects the direct-volume encoding.
; Use the packed low nibble as the envelope byte's high nibble.
AudioVolumeFromLowNibble:
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
; The output snapshot retains the retrigger bit that is then cleared in the source slot.
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
