
; Consume graphics, map, and palette requests with WRAM bank 1 selected.
VBlankVideo:
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld hl, hVideoFlags
    bit 7, [hl]
    call nz, $ff80
    bit 3, [hl]
    jp z, Jump_001_4079

    call TransferGfx
    jp Jump_001_4086


Jump_001_4079:
    bit 6, [hl]
    jr z, jr_001_4086

    res 6, [hl]
    ldh a, [hMapQueueLen]
    cp $00
    call nz, FlushMapQueue

Jump_001_4086:
jr_001_4086:
    bit 0, [hl]
    jr z, jr_001_408f

    res 0, [hl]
    call UploadPals

jr_001_408f:
    ldh a, [hVideoFlags]
    bit 4, a
    call nz, Call_001_4197
    ld a, [$c182]
    ldh [rSCX], a
    ld a, [$c184]
    ldh [rSCY], a
    ld a, [$c18c]
    inc a
    ld [$c18c], a
    ld hl, $ffab
    inc [hl]
    pop af
    ldh [rSVBK], a
    ret


    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_001_40b5:
    dec a
    jr nz, jr_001_40b5

    res 7, [hl]
    ret

; Transfer $400 bytes from WRAM bank 2 via CGB general-purpose DMA.
TransferGfx:
Call_001_40bb:
    push hl
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    ldh a, [hGfxVramBank]
    and $01
    ldh [rVBK], a
    ldh a, [hGfxSrcHi]
    ldh [rHDMA1], a
    ldh a, [hGfxSrcLo]
    ldh [rHDMA2], a
    ldh a, [hGfxDstHi]
    ldh [rHDMA3], a
    ldh a, [hGfxDstLo]
    ldh [rHDMA4], a
    ld a, $3f
    ldh [rHDMA5], a
    ldh a, [hGfxSrcHi]
    add $04
    ldh [hGfxSrcHi], a
    xor a
    ldh [rVBK], a
    pop af
    ldh [rSVBK], a
    pop hl
    res 3, [hl]
    ret

; Write queued tile/attribute rows or columns to VRAM.
FlushMapQueue:
Call_001_40ed:
    push hl
    ld de, wMapQueue
    ld c, a

jr_001_40f2:
    ld a, [de]
    ld h, a
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    bit 6, b
    jr z, jr_001_4105

    res 6, b
    ld a, $01
    ldh [rVBK], a

jr_001_4105:
    bit 7, b
    jr nz, jr_001_411e

    ld a, c
    sub b
    sub $03
    ld c, a

jr_001_410e:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_001_410e

jr_001_4114:
    xor a
    ldh [rVBK], a
    cp c
    jr nz, jr_001_40f2

    ldh [hMapQueueLen], a
    pop hl
    ret


jr_001_411e:
    res 7, b
    ld a, c
    sub b
    sub $03
    ld c, a

jr_001_4125:
    ld a, [de]
    ld [hl], a
    inc de
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    and $fb
    ld h, a
    dec b
    jr nz, jr_001_4125

    jr jr_001_4114
