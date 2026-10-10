; Clear the $140-byte audio workspace and selection bytes; set nine slot bytes to $ff; preserve HL and BC.
ResetAudio:
Jump_004_4000:
    push hl
    push bc
    ld hl, wAudioWork
    ld bc, $0140
    call ZeroBytes
    xor a
    ld [wAudioState], a
    ld [wAudioId], a
    ld a, $ff
    ld [wAudioWork+25], a
    ld [wAudioWork+57], a
    ld [wAudioWork+89], a
    ld [wAudioWork+121], a
    ld [wAudioWork+153], a
    ld [wAudioWork+185], a
    ld [wAudioWork+217], a
    ld [wAudioWork+249], a
    ld [wAudioWork+281], a
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
    jr nz, jr_004_4066

    ld a, [wAudioReq]
    cp $01
    jr z, jr_004_4075

    cp $02
    jr z, jr_004_4075

    cp $03
    jr z, jr_004_4075

    cp $04
    jr z, jr_004_4075

    cp $0b
    jr z, jr_004_4075

    cp $0c
    jr z, jr_004_4075

    cp $0d
    jr z, jr_004_4075

    cp $0e
    jr z, jr_004_4075

    jr jr_004_4081

jr_004_4066:
    ld a, [wAudioReq]
    cp $0e
    jr c, jr_004_4075

    cp $14
    jr z, jr_004_4075

    cp $1a
    jr nz, jr_004_4081

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
    jr nz, jr_004_4096

    ld hl, C1AudioPtrs
    jr jr_004_4099

jr_004_4096:
    ld hl, C2AudioPtrs

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
