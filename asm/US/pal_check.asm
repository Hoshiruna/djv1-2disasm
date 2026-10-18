
; Compare all 64 live BG/object RGB555 colors with $7fff; return the original comparison flags.
PalsAreWhite:


Call_001_4a7a:
    push de
    push hl
    ld hl, wBgPal
    ld d, $40

; Compare the next live palette color with RGB555 white.
PalsAreWhiteNextColor:
jr_001_4a81:
    ld a, [hl+]
    cp $ff
    jr nz, PalsAreWhiteDone

    ld a, [hl+]
    cp $7f
    jr nz, PalsAreWhiteDone

    dec d
    jr nz, PalsAreWhiteNextColor

; Return after a mismatch or after all 64 colors match.
PalsAreWhiteDone:
jr_001_4a8e:
    pop hl
    pop de
    ret

; Compare 64 live BG palette bytes with the staged BG bytes; preserve BC/DE/HL.
BgPalMatches:


Call_001_4a91:
    push de
    push bc
    push hl
    ld hl, wBgPal
    ld bc, wBgPalNext
    ld d, $40
    jr ComparePalsNextByte

; Compare all 128 live BG/object palette bytes with their staged bytes.
PalsMatch:

Call_001_4a9e:
    push de
    push bc
    push hl
    ld hl, wBgPal
    ld bc, wBgPalNext
    ld d, $80

; Compare the next live and staged palette bytes.
ComparePalsNextByte:
jr_001_4aa9:
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [hl+]
    cp e
    jr nz, ComparePalsDone

    dec d
    jr nz, ComparePalsNextByte

; Return after a mismatch or after the requested byte count.
ComparePalsDone:
jr_001_4ab3:
    pop hl
    pop bc
    pop de
    ret

; Fill all 64 live BG/object colors with $7fff; preserve BC/DE/HL without requesting upload.
FillWhitePals:


Call_001_4ab7:
    push de
    push hl
    push bc
    ld hl, wBgPal
    ld d, $40
    ld bc, $7fff
    xor a

; Store white into the next live palette color.
FillWhitePalsNextColor:
jr_001_4ac3:
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    dec d
    jr nz, FillWhitePalsNextColor

    pop bc
    pop hl
    pop de
    ret
