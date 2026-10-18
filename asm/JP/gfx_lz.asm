
; Decode HL to BC until DE bytes have been written; retain the original reference arithmetic.
DecodeLz:


Jump_000_0680:
    ld a, c
    ldh [hLzDstLo], a
    ld a, b
    ldh [hLzDstHi], a
    ld a, e
    ldh [hLzLenLo], a
    ld a, d
    ldh [hLzLenHi], a
    ld de, $0000

Call_000_068f:
    xor a
    ldh [hLzBitsLo], a
    ldh [hLzBitsHi], a

; Advance the LZ flag bit and decode the next literal or reference.
LzNextToken:

Jump_000_0694:
jr_000_0694:
    ldh a, [hLzBitsLo]
    ld c, a
    ldh a, [hLzBitsHi]
    ld b, a
    srl b
    rr c
    ld a, c
    ldh [hLzBitsLo], a
    ld a, b
    ldh [hLzBitsHi], a
    bit 0, b
    jr nz, LzCheckTokenBit

    ld a, [hl+]
    ldh [hLzBitsLo], a
    ld c, a
    ld a, $ff
    ldh [hLzBitsHi], a

; Use the low flag bit to choose a literal or a back-reference.
LzCheckTokenBit:
jr_000_06b0:
    bit 0, c
    jr z, LzReadReference

    ld a, [hl+]
    call PutLzByte
    jr nz, LzNextToken

    ret


; Read the two-byte reference token and save the following source position.
LzReadReference:
jr_000_06bb:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    push af
    ld a, l
    ldh [hLzSrcLo], a

Jump_000_06c2:
    ld a, h
    ldh [hLzSrcHi], a
    ld l, c
    pop af
    ld c, a
    swap a
    and $0f
    ld h, a
    ld a, d
    and $f8
    or h
    ld h, a
    ld a, d
    cp h
    jr z, LzCheckReferenceLow

    jr nc, LzResolveReference

    jr LzWrapReference

; Compare the low reference offset with the current output offset.
LzCheckReferenceLow:
jr_000_06da:
    ld a, e
    cp l
    jr z, LzCheckReferenceLow

    jr nc, LzResolveReference

; Subtract 400h from the reference offset before adding the destination base.
LzWrapReference:
jr_000_06e0:
    push bc
    ld bc, $fc00
    add hl, bc
    pop bc

; Add the output base address and derive the reference copy length.
LzResolveReference:
jr_000_06e6:
    push bc
    ldh a, [hLzDstLo]
    ld c, a
    ldh a, [hLzDstHi]
    ld b, a
    add hl, bc
    pop bc
    ld a, c
    and $0f
    inc a
    inc a
    inc a
    ld c, a
    ld b, $00

; Copy the next byte from the resolved reference.
LzCopyReferenceByte:
jr_000_06f8:
    ld a, [hl+]
    call PutLzByte

Jump_000_06fc:
    ret z

    inc b
    ld a, c
    cp b

Jump_000_0700:
    jr nz, LzCopyReferenceByte

    ldh a, [hLzSrcLo]
    ld l, a
    ldh a, [hLzSrcHi]
    ld h, a
    jp LzNextToken


    ret

; Write A at saved destination plus DE, advance DE, and return Z only at the saved length.
PutLzByte:


Call_000_070c:
    push hl
    push af
    ldh a, [hLzDstLo]
    ld l, a
    ldh a, [hLzDstHi]
    ld h, a

Jump_000_0714:
    add hl, de
    pop af
    ld [hl], a

Jump_000_0717:
    inc de
    ldh a, [hLzLenHi]
    cp d

Jump_000_071b:
    jr nz, PutLzByteDone

    ldh a, [hLzLenLo]
    cp e

Call_000_0720:
; Restore HL and return after testing the output byte count.
PutLzByteDone:
jr_000_0720:
    pop hl
    ret
