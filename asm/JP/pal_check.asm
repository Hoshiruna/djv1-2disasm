
; Compare all 64 live BG/object RGB555 colors with $7fff; return the original comparison flags.
PalsAreWhite:


Call_001_4a6f:
    push de
    push hl
    ld hl, wBgPal
    ld d, $40

jr_001_4a76:
    ld a, [hl+]
    cp $ff
    jr nz, jr_001_4a83

    ld a, [hl+]
    cp $7f
    jr nz, jr_001_4a83

    dec d
    jr nz, jr_001_4a76

jr_001_4a83:
    pop hl
    pop de
    ret

; Compare 64 live BG palette bytes with the staged BG bytes; preserve BC/DE/HL.
BgPalMatches:


Call_001_4a86:
    push de
    push bc
    push hl
    ld hl, wBgPal
    ld bc, wBgPalNext
    ld d, $40
    jr jr_001_4a9e

; Compare all 128 live BG/object palette bytes with their staged bytes.
PalsMatch:

Call_001_4a93:
    push de
    push bc
    push hl
    ld hl, wBgPal
    ld bc, wBgPalNext
    ld d, $80

jr_001_4a9e:
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [hl+]
    cp e
    jr nz, jr_001_4aa8

    dec d
    jr nz, jr_001_4a9e

jr_001_4aa8:
    pop hl
    pop bc
    pop de
    ret

; Fill all 64 live BG/object colors with $7fff; preserve BC/DE/HL without requesting upload.
FillWhitePals:


Call_001_4aac:
    push de
    push hl
    push bc
    ld hl, wBgPal
    ld d, $40
    ld bc, $7fff
    xor a

jr_001_4ab8:
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    dec d
    jr nz, jr_001_4ab8

    pop bc
    pop hl
    pop de
    ret
