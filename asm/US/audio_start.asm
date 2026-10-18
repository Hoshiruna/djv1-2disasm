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
