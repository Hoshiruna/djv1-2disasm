
; Load requested graphics when their cached IDs change.
LoadSceneGfx:
Call_000_0a6b:
    ldh a, [hBgLoaded]
    cp $ff
    jr z, jr_000_0a77

    ld b, a
    ldh a, [hBgGfx]
    cp b
    jr z, jr_000_0a7e

jr_000_0a77:
    ldh a, [hBgGfx]
    ldh [hBgLoaded], a
    call LoadSceneBg

jr_000_0a7e:
    ldh a, [hObjLoaded]
    cp $ff

Jump_000_0a82:
    jr z, jr_000_0a8c

    ld b, a
    ldh a, [hObjGfx]
    cp b
    ret z

    cp $7f
    ret z

jr_000_0a8c:
    ldh a, [hObjGfx]
    ldh [hObjLoaded], a
    call LoadSceneObj
    ret

; Request one $400-byte transfer and wait for VBlank to finish it.
UploadGfxBlock:
Call_000_0a94:
    ld hl, hVideoFlags
    set 3, [hl]
    jp WaitVideo

; A = ID; select its case-relative bank and return HL = resource pointer.
GetGfxPtr:
Call_000_0a9c:
    ld e, a
    swap a
    and $0f
    ld d, a
    ld a, [wCaseId]
    ld l, a
    ld h, $00
    ld bc, CaseGfxBanks
    add hl, bc
    ld a, [hl]
    add d
    call PushRomBank
    ld a, e
    and $0f
    add a
    ld e, a
    ld a, $40
    ld d, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ret
CaseGfxBanks:
    db $33, $2a

; A = first ID; unpack it and ID+1 in WRAM bank 2, then upload $1000 bytes.
LoadSceneBg:
Call_000_0ac1:
    push bc

Jump_000_0ac2:
    push de
    ld d, a
    ldh a, [rSVBK]
    push af

Jump_000_0ac7:
    ld a, $02
    ldh [rSVBK], a

Jump_000_0acb:
    ld a, d
    push af

Call_000_0acd:
    call GetGfxPtr
    call UnpackSceneGfx
    call PopRomBank
    pop af
    inc a
    call GetGfxPtr
    call UnpackSceneGfx
    call PopRomBank
    pop af
    ldh [rSVBK], a

Call_000_0ae4:
    call WaitVideo
    ld a, $01
    ldh [hGfxVramBank], a
    ld hl, $d000
    ld a, l
    ldh [hGfxSrcLo], a

Call_000_0af1:
    ld a, h

Jump_000_0af2:
    ldh [hGfxSrcHi], a
    ld hl, $9000
    ld a, l

Jump_000_0af8:
    ldh [hGfxDstLo], a
    ld a, h
    ldh [hGfxDstHi], a
    call UploadGfxBlock
    ld hl, $9400
    ld a, l
    ldh [hGfxDstLo], a
    ld a, h
    ldh [hGfxDstHi], a
    call UploadGfxBlock
    ld hl, $8800

Jump_000_0b0f:
    ld a, l
    ldh [hGfxDstLo], a
    ld a, h
    ldh [hGfxDstHi], a
    call UploadGfxBlock

Call_000_0b18:
    ld hl, $8c00
    ld a, l
    ldh [hGfxDstLo], a
    ld a, h
    ldh [hGfxDstHi], a
    call UploadGfxBlock
    pop de
    pop bc
    ret

; A = ID; unpack in WRAM bank 2 and upload $400 bytes to VRAM bank 0.
LoadSceneObj:
Call_000_0b27:
    call GetGfxPtr
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    call UnpackSceneGfx

Call_000_0b34:
    pop af
    ldh [rSVBK], a
    call PopRomBank
    call WaitVideo
    ld a, $00
    ldh [hGfxVramBank], a
    ld hl, $d000
    ld a, l
    ldh [hGfxSrcLo], a
    ld a, h
    ldh [hGfxSrcHi], a
    ld hl, $8000
    ld a, l
    ldh [hGfxDstLo], a
    ld a, h
    ldh [hGfxDstHi], a
    call UploadGfxBlock
    ret

; HL = resource; $ff is empty. Decode into the WRAM staging buffer.
UnpackSceneGfx:
Call_000_0b57:
    ld a, [hl]
    cp $ff
    ret z

    and $ef
    cp $0c
    jr z, jr_000_0b69

    cp $0d

Jump_000_0b63:
    jr z, jr_000_0b69

    and $ec
    jr nz, jr_000_0b71

jr_000_0b69:
    push bc
    push de
    call DecodeSceneGfx
    pop de
    pop bc
    ret


jr_000_0b71:
    jr jr_000_0b71

; The first tile selects $d000 + tile*16; dispatch LZ or planar RLE.
DecodeSceneGfx:
Call_000_0b73:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    swap a
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f
    or $d0
    ld b, a
    ld a, e
    and $0f
    cp $0c
    jp z, DecodeLzTiles

    cp $0d
    jp z, DecodeLzTiles

    bit 1, e
    jp z, DecodeRleTiles

    ld a, [hl+]
    ld d, a
    jp Jump_000_055e
