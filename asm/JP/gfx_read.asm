
; Validate the format byte, preserve BC/DE, and read the graphics resource.
ReadGfx:

Call_000_050c:
    ld a, [hl]
    and $ef
    cp $0c
    jr z, GfxReadAccepted

    cp $0d
    jr z, GfxReadAccepted

    and $ec

Jump_000_0519:
    jr nz, GfxInvalidFormatLoop

; Preserve registers and decode an accepted graphics format.
GfxReadAccepted:
jr_000_051b:
    push bc
    push de
    call ReadGfxHead
    pop de
    pop bc
    ret


; Remain in the invalid-format branch.
GfxInvalidFormatLoop:
jr_000_0523:
    jr GfxInvalidFormatLoop

; Copy eight bytes through the original call-and-fall-through cascade.
CopyGfx8:

Call_000_0525:
    call CopyGfx4

; Copy four bytes through the original call-and-fall-through cascade.
CopyGfx4:

Call_000_0528:
    call CopyGfx2

; Copy two bytes from HL to BC and advance both pointers.
CopyGfx2:

Call_000_052b:
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ret

; Read format and destination; select LZ, planar RLE, or count*16 raw bytes.
ReadGfxHead:


Call_000_0532:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    swap a
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f

Call_000_053e:
    or $80
    ld b, a
    bit 0, e
    jr z, GfxReadSelectDecoder

    ld a, b
    cp $88
    jr nc, GfxReadSelectDecoder

Jump_000_054a:
    or $10

Call_000_054c:
    ld b, a

; Select LZ, planar RLE, or raw tile copying.
GfxReadSelectDecoder:
jr_000_054d:
    ld a, e
    and $0f
    cp $0c

Jump_000_0552:
    jr z, DecodeLzTiles

    cp $0d
    jr z, DecodeLzTiles

    bit 1, e
    jr z, DecodeRleTiles

    ld a, [hl+]
    ld d, a

; Copy D sixteen-byte tiles from HL to BC, retaining the original byte-count wrap.
CopyGfxRun:

Jump_000_055e:
jr_000_055e:
    call CopyGfx8
    call CopyGfx8
    dec d
    jr nz, CopyGfxRun

    ret
