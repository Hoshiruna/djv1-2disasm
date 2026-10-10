
; Skip disabled audio or mark a deferred tick while busy; otherwise run the engine in WRAM bank 7.
TickAudio:


Call_000_07ba:
    ld hl, wFrameFlags
    ld a, [hl]
    bit 0, a
    ret z

    bit 5, a

Jump_000_07c3:
    jr z, jr_000_07c8

    set 7, [hl]
    ret


jr_000_07c8:
    ld a, [wAudioBank]
    ld [$2000], a
    ldh a, [rSVBK]
    push af
    ld a, $07
    ldh [rSVBK], a
    call UpdateAudio
    pop af
    ldh [rSVBK], a
    ld hl, wFrameFlags
    set 0, [hl]

Jump_000_07e0:
    ret

; Initialize the selected audio ROM bank with WRAM bank 7, then restore both banks.
InitAudio:


Call_000_07e1:
    ld a, [wAudioBank]
    ld [$2000], a
    ldh a, [rSVBK]
    push af
    ld a, $07
    ldh [rSVBK], a
    call ResetAudio
    pop af
    ldh [rSVBK], a
    ldh a, [hRomBank]
    ld [$2000], a
    ret

; Read the retained audio ID and compare it with zero; preserve BC and restore the WRAM bank.
ReadAudioId:


    push bc
    ldh a, [rSVBK]
    push af
    ld a, $07

Call_000_0800:
Jump_000_0800:
    ldh [rSVBK], a
    ld a, [wAudioId]
    ld b, a
    pop af
    ldh [rSVBK], a
    ld a, b
    pop bc
    cp $00
    ret

; Submit audio ID A under the busy flag, preserve BC/HL/DE, then wait for a frame.
PlayAudio:


Call_000_080e:
Jump_000_080e:
    push bc
    push hl
    push de
    ld b, a
    ld a, [wFrameFlags]
    or $20
    ld [wFrameFlags], a
    call RunAudioCmd
    pop de
    pop hl

Jump_000_081f:
    pop bc
    call WaitFrame
    ret

; Submit audio ID A but restore the retained ID afterward; preserve BC/HL/DE without a frame wait.
PlayAudioKeep:


    push bc
    push hl
    push de
    ld b, a
    ld a, [wFrameFlags]
    or $20
    ld [wFrameFlags], a
    ld a, [wAudioId]
    push af
    call RunAudioCmd
    pop af
    ld [wAudioId], a
    pop de

Jump_000_083c:
    pop hl

Jump_000_083d:
    pop bc
    ret

; Submit B through wAudioReq in WRAM bank 7, restore the ROM bank, clear busy, then restore WRAM.
RunAudioCmd:


Call_000_083f:
Jump_000_083f:
    ldh a, [rSVBK]
    push af
    ld a, $07

Jump_000_0844:
    ldh [rSVBK], a
    ld a, b
    ld [wAudioReq], a
    ld a, [wAudioBank]
    call PushRomBank

Jump_000_0850:
    call SelectAudio
    call PopRomBank
    ld a, [wFrameFlags]
    and $df
    ld [wFrameFlags], a
    pop af
    ldh [rSVBK], a
    ret
