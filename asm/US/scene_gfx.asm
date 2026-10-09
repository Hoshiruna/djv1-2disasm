
; Load requested graphics when their cached IDs change.
LoadSceneGfx:
Call_000_0a76:
    ldh a, [hBgLoaded]
    cp $ff
    jr z, jr_000_0a82

    ld b, a
    ldh a, [hBgGfx]
    cp b
    jr z, jr_000_0a89

Jump_000_0a82:
jr_000_0a82:
    ldh a, [hBgGfx]
    ldh [hBgLoaded], a
    call LoadSceneBg

jr_000_0a89:
    ldh a, [hObjLoaded]
    cp $ff
    jr z, jr_000_0a97

    ld b, a
    ldh a, [hObjGfx]
    cp b
    ret z

    cp $7f
    ret z

jr_000_0a97:
    ldh a, [hObjGfx]
    ldh [hObjLoaded], a
    call LoadSceneObj
    ret

; Request one $400-byte transfer and wait for VBlank to finish it.
UploadGfxBlock:
Call_000_0a9f:
    ld hl, hVideoFlags
    set 3, [hl]
    jp Jump_000_01a9

; A = ID; select its case-relative bank and return HL = resource pointer.
GetGfxPtr:
Call_000_0aa7:
    ld e, a
    swap a
    and $0f
    ld d, a
    ld a, [wCaseId]

Call_000_0ab0:
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

Jump_000_0ac7:
    ld a, [de]
    ld h, a
    ret
CaseGfxBanks:
    db $33
Jump_000_0acb:
    db $2a

; A = first ID; unpack it and ID+1 in WRAM bank 2, then upload $1000 bytes.
LoadSceneBg:
Call_000_0acc:
    push bc

Call_000_0acd:
    push de

Call_000_0ace:
    ld d, a
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    ld a, d
    push af
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
    call Call_000_01a9

Jump_000_0af2:
    ld a, $01
    ldh [hGfxVramBank], a
    ld hl, $d000
    ld a, l
    ldh [hGfxSrcLo], a
    ld a, h
    ldh [hGfxSrcHi], a
    ld hl, $9000
    ld a, l
    ldh [hGfxDstLo], a
    ld a, h
    ldh [hGfxDstHi], a
    call UploadGfxBlock

Call_000_0b0b:
Jump_000_0b0b:
    ld hl, $9400
    ld a, l

Jump_000_0b0f:
    ldh [hGfxDstLo], a
    ld a, h
    ldh [hGfxDstHi], a
    call UploadGfxBlock
    ld hl, $8800
    ld a, l
    ldh [hGfxDstLo], a
    ld a, h
    ldh [hGfxDstHi], a
    call UploadGfxBlock
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
Call_000_0b32:
    call GetGfxPtr
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    call UnpackSceneGfx
    pop af
    ldh [rSVBK], a
    call PopRomBank
    call Call_000_01a9
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

Jump_000_0b5c:
    ldh [hGfxDstHi], a
    call UploadGfxBlock
    ret

; HL = resource; $ff is empty. Decode into the WRAM staging buffer.
UnpackSceneGfx:
Call_000_0b62:
    ld a, [hl]

Jump_000_0b63:
    cp $ff
    ret z

    and $ef
    cp $0c
    jr z, jr_000_0b74

    cp $0d
    jr z, jr_000_0b74

    and $ec
    jr nz, jr_000_0b7c

jr_000_0b74:
    push bc
    push de
    call DecodeSceneGfx
    pop de
    pop bc
    ret


jr_000_0b7c:
    jr jr_000_0b7c

; The first tile selects $d000 + tile*16; dispatch LZ or planar RLE.
DecodeSceneGfx:
Call_000_0b7e:
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
