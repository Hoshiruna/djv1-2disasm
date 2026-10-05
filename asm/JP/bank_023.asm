; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

    ld d, b
    ld b, b
    ret c

    ld b, c
    ld h, b
    ld b, e
    add sp, $44
    ld [hl], b
    ld b, [hl]
    ld hl, sp+$47
    add b
    ld c, c
    ld [$904b], sp
    ld c, h
    jr jr_023_4062

    and b
    ld c, a
    jr z, @+$53

    or b
    ld d, d
    jr c, jr_023_4070

    ret nz

    ld d, l
    ld c, b
    ld d, a
    ret nc

    ld e, b
    ld e, b
    ld e, d
    ldh [$ff5b], a
    ld l, b
    ld e, l
    ldh a, [$ff5e]
    ld a, b
    ld h, b
    nop
    ld h, d
    adc b
    ld h, e
    db $10
    ld h, l
    sbc b
    ld h, [hl]
    jr nz, jr_023_409e

    xor b
    ld l, c
    jr nc, jr_023_40a5

    cp b
    ld l, h
    ld b, b
    ld l, [hl]
    ret z

    ld l, a
    ld d, b
    ld [hl], c
    ret c

    ld [hl], d
    ld h, b
    ld [hl], h
    add sp, $75
    ld [hl], b
    ld [hl], a
    ld hl, sp+$78
    add b
    ld a, d
    ld [$207c], sp
    ld h, c
    ld hl, $6161
    nop
    ld bc, $0302
    ld h, c
    ld h, c
    ld [hl+], a
    ld h, c
    inc hl
    ld b, b
    ld b, c
    jr nc, jr_023_4093

jr_023_4062:
    ld sp, $1110
    ld [de], a
    inc de
    ld sp, $3331
    ld b, d
    ld b, e
    rra
    ld d, b
    ld d, c
    ld h, d

jr_023_4070:
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld d, d
    ld d, e
    ld b, a
    inc l
    ld b, a
    ld h, b
    jr c, jr_023_40b9

    dec sp
    add hl, sp
    ld e, a
    add hl, sp
    ld e, [hl]
    ld e, h
    ld h, e
    inc l
    dec l
    ld a, $0f
    ld h, b
    ld d, h
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, h

jr_023_4093:
    ld h, e
    inc a
    dec a
    ld b, a
    ld b, a
    ld h, b
    ld d, l
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_023_409e:
    ld a, [bc]
    dec bc
    ld b, h
    ld b, l
    ld b, a
    ld b, a
    ld b, a

jr_023_40a5:
    ld b, a
    ld h, b
    ld d, l
    ld c, $0f
    ld h, l
    ld h, [hl]
    ld b, a
    ld [$6355], sp
    ld b, a
    ld e, $0d
    ld b, a
    ld h, b
    ld d, l
    ld h, a
    ld e, $1f

jr_023_40b9:
    ld l, $47
    ld [$6355], sp
    ld b, a
    ld b, a
    ccf
    dec e
    ld h, b
    ld d, l
    ld h, a
    ld b, a
    ld a, $3f
    cpl
    ld [$6355], sp
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld h, b
    ld d, l
    jr jr_023_40ed

    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld d, l
    ld h, e
    ld b, a
    dec c
    dec b
    ld b, $07
    ld d, a
    ld h, h
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    dec h
    ld h, $27
    dec d
    ld d, $17

jr_023_40ed:
    ld d, l
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld d, l
    dec [hl]
    ld [hl], $37
    inc l
    ld b, a
    ld h, b
    ld d, l
    ld h, a
    dec l
    ld b, a
    inc c
    dec c
    ld [$6355], sp
    inc b
    inc h
    ccf
    dec l
    ld h, b
    ld d, l
    ld h, a
    inc a
    ld b, a
    inc e
    dec e
    ld [$4544], sp
    inc d
    inc [hl]
    add hl, bc
    ld c, $08
    ld c, $0e
    ld c, $0d
    dec c
    ld c, $0e
    ld c, $08
    ld c, $09
    ld [$0809], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0e0e], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [$0808], sp
    inc c
    ld [$0e08], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $08
    dec bc
    dec bc
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b0b], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0809], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    ld [$0808], sp
    ld [$0c08], sp
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080b], sp
    inc c
    inc c
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0b08], sp
    ld [$0c0c], sp
    ld [$0809], sp
    add hl, bc
    add hl, bc
    jr nz, jr_023_423b

    ld hl, $6161
    nop
    ld bc, $0302
    ld h, c
    ld h, c
    ld [hl+], a
    ld h, c
    inc hl
    ld b, b
    ld b, c
    jr nc, jr_023_421b

    ld sp, $1110
    ld [de], a
    inc de
    ld sp, $3331
    ld b, d
    ld b, e
    rra
    ld d, b
    ld d, c
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld d, d
    ld d, e
    ld b, a
    inc l
    ld b, a
    ld h, b
    jr c, jr_023_4241

    dec sp
    add hl, sp
    ld e, a
    add hl, sp
    ld e, [hl]
    ld e, h
    ld h, e
    inc l
    dec l
    ld a, $0f
    ld h, b
    ld c, c
    ld c, e
    ld c, h
    ld c, d
    ld c, a
    ld c, [hl]
    ld c, l
    ld c, a

jr_023_421b:
    ld h, e
    inc a
    dec a
    ld b, a
    ld b, a
    ld h, b
    ld c, c
    ld e, e
    ld c, a
    ld e, d
    ld c, a
    ld e, c
    ld e, c
    ld c, a
    ld b, l
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld h, b
    ld c, b
    ld e, e
    ld c, a
    ld e, d
    ld c, a
    ld e, c
    ld c, d
    ld c, a
    ld h, e
    ld b, a
    ld e, $0d

jr_023_423b:
    ld b, a
    ld h, b
    ld e, b
    ld l, e
    ld c, a
    ld l, d

jr_023_4241:
    ld c, a
    ld e, d
    ld e, d
    ld c, a
    ld h, e
    ld b, a
    ld b, a
    ccf
    dec e
    ld h, b
    ld l, b
    ld l, c
    ld c, a
    ld l, h
    ld c, a
    ld l, h
    ld c, [hl]
    ld l, l
    ld h, e
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld h, b
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    ld h, e
    ld b, a
    dec c
    dec b
    ld b, $46
    jr z, @+$70

    ld l, a
    ld l, a
    jr z, jr_023_42db

    ld l, a
    jr z, @+$27

    ld h, $27
    dec d
    ld d, $17
    jr z, jr_023_429f

    jr z, jr_023_42a1

    jr z, jr_023_42a3

    ld l, [hl]
    ld l, a
    dec [hl]
    ld [hl], $37
    inc l
    ld b, a
    ld h, b
    jr z, jr_023_42ad

    ld l, [hl]
    ld l, a
    jr z, jr_023_42b1

    ld l, [hl]
    ld l, a
    ld h, e
    inc b
    inc h
    ccf
    dec l
    ld h, b
    jr z, @+$70

    ld l, a
    jr z, jr_023_4304

    ld l, a
    jr z, jr_023_42c1

    ld b, l
    inc d
    inc [hl]
    add hl, bc
    ld c, $08

jr_023_429f:
    ld c, $0e

jr_023_42a1:
    ld c, $0d

jr_023_42a3:
    dec c
    ld c, $0e
    ld c, $08
    ld c, $09
    ld [$0809], sp

jr_023_42ad:
    ld [$0908], sp
    add hl, bc

jr_023_42b1:
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0e0e], sp
    ld c, $0e
    ld c, $0e

jr_023_42c1:
    ld c, $0e
    ld [$0808], sp
    inc c
    ld [$0e08], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $08
    dec bc
    dec bc
    inc c
    inc c
    ld [$0e0e], sp
    ld c, $0e

jr_023_42db:
    ld c, $0e
    ld c, $0e
    ld [$0b0b], sp
    ld [$0808], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [$0c08], sp
    dec bc
    ld [$0e08], sp
    ld c, $0e

jr_023_4304:
    ld c, $0e
    ld c, $0e
    ld c, $08
    ld [$0b08], sp
    dec bc
    ld [$0e0e], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0b08], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0909], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0909], sp
    ld hl, $2121
    dec a
    ld a, $3f
    ld [hl], $37
    ld l, e
    ld l, h
    ld e, a
    ld d, l
    ld d, [hl]
    ld d, a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld d, h
    ld [$0a09], sp
    dec bc
    ld h, h
    ld h, l
    ld h, [hl]
    ld l, a
    ld c, a
    ld c, h
    ld l, a
    ld c, [hl]
    ld l, a
    ld c, l
    jr jr_023_439c

    ld a, [de]
    dec de
    ld l, $3c
    ld l, a
    ld l, a
    ld c, l
    ld c, [hl]
    ld l, a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld l, $2c
    dec l
    ld e, [hl]
    jr z, jr_023_43bf

    ld a, [hl+]
    dec hl
    ld c, l
    ld l, a
    ld d, b
    ld d, c

jr_023_439c:
    ld d, d
    ld d, e
    ld e, l
    ld l, $2f
    ld c, [hl]
    jr c, jr_023_43dd

    ld a, [hl-]
    dec sp
    ld c, a
    ld l, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld e, [hl]
    ld l, a
    ld l, [hl]
    ld c, [hl]
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld l, a
    inc b
    dec b
    ld b, $07
    ld c, [hl]
    ld l, a
    ld l, [hl]
    ld c, a
    ld c, b

jr_023_43bf:
    ld e, b
    ld l, a
    ld l, a
    ld e, h
    ld l, a
    inc d
    dec d
    ld d, $17
    ld c, a
    ld l, a
    ld l, [hl]
    ld e, h
    ld c, b
    ld e, b
    ld l, a
    ld l, a
    dec [hl]
    inc [hl]
    inc h
    dec h
    ld h, $27
    dec [hl]
    inc [hl]
    inc c
    dec c
    ld c, b
    ld e, b
    ld l, a

jr_023_43dd:
    ld l, a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc e
    ld c, $48
    ld e, b
    ld l, a
    ld l, a
    inc hl
    inc hl
    nop
    ld bc, $0201
    jr nc, jr_023_4461

    rra
    ld c, $48
    ld e, b
    ld l, a
    ld l, a
    inc hl
    jr nc, jr_023_440d

    ld de, $1211
    inc bc
    inc hl
    rra
    dec e
    ld c, b
    ld e, c
    ld e, d
    ld e, d
    jr nc, @+$6f

    jr nz, @+$24

    ld [hl+], a

jr_023_440d:
    ld [hl+], a
    inc de
    inc hl
    rra
    ld e, $48
    ld l, b
    ld l, a
    ld l, a
    inc hl
    jr nc, jr_023_4486

    ld sp, $3332
    inc hl
    inc hl
    rra
    ld e, $48
    ld l, c
    ld l, d
    ld l, d
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$090d], sp
    add hl, bc
    dec c
    ld [$0808], sp
    dec bc
    ld [$0b08], sp
    ld [$080b], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    ld [$0b08], sp
    ld [$0b0b], sp
    dec bc
    dec c
    dec c
    dec c
    ld [$0c0c], sp
    inc c
    inc c
    ld [$0b0b], sp
    dec bc
    dec bc

jr_023_4461:
    dec bc
    ld [$0d0d], sp
    ld [$0e0e], sp
    ld c, $0e
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    ld [$080b], sp
    ld [$0e0e], sp
    ld c, $0e
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    ld [$080b], sp
    ld [$0e0e], sp
    inc c
    inc c

jr_023_4486:
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    ld [$080b], sp
    ld [$0e0e], sp
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    inc c
    inc c
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    dec c
    add hl, bc
    add hl, bc
    ld c, $0e
    inc c
    inc c
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    add hl, bc
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0c
    inc c
    inc c
    add hl, bc
    add hl, bc
    dec c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld hl, $2121
    dec a
    ld a, $3f
    ld [hl], $37
    ld l, e
    ld l, h
    ld e, a
    ld d, l
    ld d, [hl]
    ld d, a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld d, h
    ld [$0a09], sp
    dec bc
    ld h, h
    ld h, l
    ld h, [hl]
    ld l, a
    ld c, a
    ld c, h
    ld l, a
    ld c, [hl]
    ld l, a
    ld c, l
    jr jr_023_4524

    ld a, [de]
    dec de
    ld l, $3c
    ld l, a
    ld l, a
    ld c, l
    ld c, [hl]
    ld l, a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld l, $2c
    dec l
    ld e, [hl]
    jr z, jr_023_4547

    ld a, [hl+]
    dec hl
    ld c, l
    ld l, a
    ld d, b
    ld d, c

jr_023_4524:
    ld d, d
    ld d, e
    ld e, l
    ld l, $2f
    ld c, [hl]
    jr c, jr_023_4565

    ld a, [hl-]
    dec sp
    ld c, a
    ld l, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld e, [hl]
    ld l, a
    ld l, [hl]
    ld c, l
    ld c, b
    ld c, c
    ld e, b
    ld e, b
    ld c, h
    ld l, a
    inc b
    dec b
    ld b, $07
    ld c, l
    ld l, a
    ld l, [hl]
    ld c, a
    ld c, b

jr_023_4547:
    ld e, c
    ld e, b
    ld e, b
    ld e, h
    ld l, a
    inc d
    dec d
    ld d, $17
    ld c, a
    ld l, a
    ld l, [hl]
    ld e, h
    ld c, b
    ld l, c
    ld e, b
    ld e, b
    dec [hl]
    inc [hl]
    inc h
    dec h
    ld h, $27
    dec [hl]
    inc [hl]
    inc c
    dec c
    ld c, b
    ld e, c
    ld e, b

jr_023_4565:
    ld e, b
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc e
    ld c, $48
    ld l, c
    ld e, b
    ld e, b
    inc hl
    inc hl
    nop
    ld bc, $0201
    jr nc, jr_023_45e9

    rra
    ld c, $48
    ld e, c
    ld e, b
    ld e, b
    inc hl
    jr nc, jr_023_4595

    ld de, $1211
    inc bc
    inc hl
    rra
    dec e
    ld c, b
    ld l, c
    ld e, b
    ld e, b
    jr nc, @+$6f

    jr nz, @+$24

    ld [hl+], a

jr_023_4595:
    ld [hl+], a
    inc de
    inc hl
    rra
    ld e, $48
    ld e, c
    ld e, b
    ld e, b
    inc hl
    jr nc, @+$6f

    ld sp, $3332
    inc hl
    inc hl
    rra
    ld e, $48
    ld l, c
    ld e, b
    ld e, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$090d], sp
    add hl, bc
    dec c
    ld [$0808], sp
    dec c
    ld [$0d08], sp
    ld [$080d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0d08], sp
    ld [$0b0b], sp
    dec bc
    dec c
    dec c
    dec c
    ld [$0c0c], sp
    inc c
    inc c
    ld [$0b0d], sp
    dec bc
    dec bc

jr_023_45e9:
    dec bc
    ld [$0d0d], sp
    ld [$0e0e], sp
    ld c, $0e
    ld [$0b0d], sp
    dec bc
    dec bc
    dec bc
    ld [$080d], sp
    ld [$080e], sp
    ld [$0808], sp
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$080d], sp
    ld [$080e], sp
    ld [$0808], sp
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$080d], sp
    ld [$080e], sp
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $08
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0908], sp
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    dec c
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0908], sp
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0908], sp
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0908], sp
    add hl, bc
    dec c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0008], sp
    nop
    nop
    nop
    ld bc, $6564
    ld h, a
    ld h, a
    add hl, de
    inc b
    dec b
    dec b
    dec b
    ld [bc], a
    inc bc
    db $10
    ld de, $6662
    ld h, [hl]
    ld l, l
    ld l, l
    ld a, [de]
    ld b, $14
    dec d
    dec d
    ld [de], a
    ld l, [hl]
    inc de
    jr nz, jr_023_46f3

    ld [$2809], sp
    add hl, hl
    ld l, l
    ld b, $24
    ld d, $17
    ld [de], a
    ld l, [hl]
    inc de
    jr nz, jr_023_4701

    ld a, [bc]
    dec bc
    ld l, h
    ld l, h
    dec de
    ld b, $24
    dec h
    ld l, [hl]
    ld [de], a
    ld l, [hl]
    inc de
    jr nz, jr_023_470f

    jr jr_023_471b

    ld l, h
    ld a, [hl+]
    dec hl
    ld b, $24
    ld h, $27
    ld [de], a
    ld l, [hl]
    inc de
    jr nz, jr_023_471d

    ld l, h
    ld l, h
    ld l, h
    jr c, jr_023_46f9

    ld b, $34
    ld l, [hl]
    ld l, [hl]
    ld [de], a
    ld l, [hl]
    inc de
    jr nz, jr_023_4703

    dec sp
    ld l, h
    ld l, h
    ld c, b
    ld c, c
    ld b, $35
    ld d, $17
    ld hl, $3022
    ld sp, $4b4a
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld b, $24
    dec h
    ld l, [hl]
    ld l, [hl]
    ld [hl-], a
    inc sp
    ld b, b
    ld h, d
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld b, $24
    ld h, $27
    ld b, c
    ld b, d
    inc de
    jr nz, jr_023_4755

jr_023_46f3:
    ld l, h
    ld l, h
    ld l, h
    ld b, h
    ld [hl], $07

jr_023_46f9:
    inc d
    dec d
    dec d
    ld [de], a
    ld l, [hl]
    inc de
    jr nz, jr_023_4763

jr_023_4701:
    ld l, h
    ld b, h

jr_023_4703:
    ld [hl], $37
    ld b, a
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld [de], a
    ld l, [hl]
    inc de
    jr nz, jr_023_4732

jr_023_470f:
    ld [hl], $37
    ld b, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld [de], a
    ld d, b
    ld d, c

jr_023_471b:
    ld b, e
    ld h, e

jr_023_471d:
    ld b, l
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, d
    ld d, e
    ld h, b
    ld h, c
    ld l, d
    ld l, e
    inc c
    dec c
    ld c, $57
    ld d, a
    ld d, a

jr_023_4732:
    ld d, a
    ld d, a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld [$0808], sp
    jr z, jr_023_4746

    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_023_4746:
    ld a, [bc]
    ld [$0828], sp
    ld [$0d08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $09
    add hl, bc
    ld a, [bc]

jr_023_4755:
    ld [$0808], sp
    ld [$0d08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $09
    add hl, bc
    ld a, [bc]

jr_023_4763:
    ld [$0808], sp
    ld [$0d08], sp
    add hl, bc
    add hl, bc
    ld c, $09
    ld c, $09
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $09
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    add hl, bc
    ld c, $09
    add hl, bc
    dec c
    dec c
    ld [$0d08], sp
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$090d], sp
    add hl, bc
    ld c, $0e
    add hl, bc
    add hl, bc
    dec c
    ld a, [bc]
    ld [$0808], sp
    ld [$0d08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    dec c
    dec c
    dec c
    ld c, c
    ld l, c
    ld c, c
    add hl, bc
    ld c, $09
    add hl, bc
    ld a, [bc]
    ld [$0d0d], sp
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $09
    add hl, bc
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    ld bc, $6564
    ld h, a
    ld h, a
    add hl, de
    inc b
    dec b
    dec b
    dec b
    ld [bc], a
    inc bc
    db $10
    ld de, $6662
    ld h, [hl]
    ld l, l
    ld l, l
    ld a, [de]
    ld b, $6f
    ld l, a
    ld l, a
    ld [de], a
    ld l, [hl]
    inc de
    jr nz, jr_023_487b

    ld [$2809], sp
    add hl, hl
    ld l, l
    ld b, $2d
    ld l, $6f
    ld [de], a
    ld l, [hl]
    inc de
    jr nz, jr_023_4889

    ld a, [bc]
    dec bc
    ld l, h
    ld l, h
    dec de
    ld b, $4f
    cpl
    ld l, a
    ld [de], a
    ld l, [hl]
    inc de
    jr nz, jr_023_4897

    jr jr_023_48a3

    ld l, h
    ld a, [hl+]
    dec hl
    ld b, $4f
    cpl
    ld l, a
    ld [de], a
    ld l, [hl]
    inc de
    jr nz, jr_023_48a5

    ld l, h
    ld l, h
    ld l, h
    jr c, jr_023_4881

    ld b, $3e
    ccf
    rst RST_38
    ld [de], a
    ld l, [hl]
    inc de
    jr nz, jr_023_488b

    dec sp
    ld l, h
    ld l, h
    ld c, b
    ld c, c
    ld b, $3c
    dec a
    rst RST_38
    ld hl, $3022
    ld sp, $4b4a
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld b, $3c
    dec a
    rst RST_38
    ld l, [hl]
    ld [hl-], a
    inc sp
    ld b, b
    ld h, d
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld b, $4c
    ld c, l
    ld c, [hl]
    ld b, c
    ld b, d
    inc de
    jr nz, jr_023_48dd

jr_023_487b:
    ld l, h
    ld l, h
    ld l, h
    ld b, h
    ld [hl], $07

jr_023_4881:
    ld e, h
    ld e, l
    ld e, [hl]
    ld [de], a
    ld l, [hl]
    inc de
    jr nz, jr_023_48eb

jr_023_4889:
    ld l, h
    ld b, h

jr_023_488b:
    ld [hl], $37
    ld b, a
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld [de], a
    ld l, [hl]
    inc de
    jr nz, jr_023_48ba

jr_023_4897:
    ld [hl], $37
    ld b, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld [de], a
    ld d, b
    ld d, c

jr_023_48a3:
    ld b, e
    ld h, e

jr_023_48a5:
    ld b, l
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, d
    ld d, e
    ld h, b
    ld h, c
    ld l, d
    ld l, e
    inc c
    dec c
    ld c, $57
    ld d, a
    ld d, a

jr_023_48ba:
    ld d, a
    ld d, a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld [$0808], sp
    jr z, jr_023_48ce

    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_023_48ce:
    ld a, [bc]
    ld [$0828], sp
    ld [$0d08], sp
    ld [$0808], sp
    add hl, bc
    ld c, $09
    add hl, bc
    ld a, [bc]

jr_023_48dd:
    ld [$0808], sp
    ld [$0d08], sp
    ld [$0808], sp
    add hl, bc
    ld c, $09
    add hl, bc
    ld a, [bc]

jr_023_48eb:
    ld [$0808], sp
    ld [$0d08], sp
    ld [$0808], sp
    add hl, bc
    ld c, $09
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    dec c
    dec c
    dec c
    ld [$0808], sp
    add hl, bc
    ld c, $09
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    add hl, bc
    ld c, $09
    add hl, bc
    dec c
    dec c
    ld [$0d08], sp
    dec c
    dec c
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$090d], sp
    add hl, bc
    nop
    ld c, $09
    add hl, bc
    dec c
    ld a, [bc]
    ld [$0808], sp
    ld [$0d08], sp
    add hl, bc
    dec c
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    add hl, bc
    ld c, $09
    add hl, bc
    ld a, [bc]
    ld [$0d0d], sp
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $09
    add hl, bc
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    ld bc, $6564
    ld h, a
    ld h, a
    add hl, de
    inc b
    dec b
    dec b
    dec b
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld h, d
    ld h, [hl]
    ld h, [hl]
    ld l, l
    ld l, l
    ld a, [de]
    ld b, $14
    dec d
    dec d
    inc e
    inc e
    inc e
    inc e
    ld h, d
    ld [$2809], sp
    add hl, hl
    ld l, l
    ld b, $24
    ld d, $17
    dec e
    dec e
    dec e
    dec e
    ld h, d
    ld a, [bc]
    dec bc
    ld l, h
    ld l, h
    dec de
    ld b, $24
    dec h
    ld l, [hl]
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld h, d
    jr jr_023_4a2b

    ld l, h
    ld a, [hl+]
    dec hl
    ld b, $24
    ld h, $27
    rra
    ld e, $1f
    ld e, $62
    ld l, h
    ld l, h
    ld l, h
    jr c, jr_023_4a09

    ld b, $34
    ld l, [hl]
    ld l, [hl]
    rrca
    rrca
    rrca
    rrca
    ld a, [hl-]
    dec sp
    ld l, h
    ld l, h
    ld c, b
    ld c, c
    ld b, $35
    ld d, $17
    rrca
    rrca
    rrca
    rrca
    ld c, d
    ld c, e
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld b, $24
    dec h
    ld l, [hl]
    rrca
    rrca
    rrca
    rrca
    ld h, d
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld b, $24
    ld h, $27
    rrca
    rrca
    rrca
    rrca
    ld h, d
    ld l, h
    ld l, h
    ld l, h
    ld b, h
    ld [hl], $07

jr_023_4a09:
    inc d
    dec d
    dec d
    rrca
    rrca
    rrca
    rrca
    ld h, d
    ld l, h
    ld b, h
    ld [hl], $37
    ld b, a
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    inc hl
    ld [hl], $37
    ld b, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]

jr_023_4a2b:
    ld d, [hl]
    ld h, e
    ld b, l
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld d, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    inc c
    dec c
    ld c, $57
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld [$0808], sp
    jr z, @+$0a

    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$080a], sp
    jr z, @+$0a

    ld [$0d08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$080a], sp
    ld [$0808], sp
    ld [$090d], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$080a], sp
    ld [$0808], sp
    ld [$090d], sp
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld a, [bc]
    ld [$0808], sp
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld [$0d08], sp
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld [$0808], sp
    ld [$090d], sp
    add hl, bc
    ld c, $0b
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld [$0808], sp
    ld [$0d08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld [$0808], sp
    dec c
    dec c
    dec c
    ld c, c
    ld l, c
    ld c, c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld [$0d0d], sp
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    ld bc, $6564
    ld h, a
    ld h, a
    add hl, de
    inc b
    dec b
    dec b
    dec b
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld h, d
    ld h, [hl]
    ld h, [hl]
    ld l, l
    ld l, l
    ld a, [de]
    ld b, $6f
    ld l, a
    ld l, a
    inc e
    inc e
    inc e
    inc e
    ld h, d
    ld [$2809], sp
    add hl, hl
    ld l, l
    ld b, $2d
    ld l, $6f
    dec e
    dec e
    dec e
    dec e
    ld h, d
    ld a, [bc]
    dec bc
    ld l, h
    ld l, h
    dec de
    ld b, $4f
    cpl
    ld l, a
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld h, d
    jr jr_023_4bb3

    ld l, h
    ld a, [hl+]
    dec hl
    ld b, $4f
    cpl
    ld l, a
    rra
    ld e, $1f
    ld e, $62
    ld l, h
    ld l, h
    ld l, h
    jr c, jr_023_4b91

    ld b, $3e
    ccf
    rst RST_38
    rrca
    rrca
    rrca
    rrca
    ld a, [hl-]
    dec sp
    ld l, h
    ld l, h
    ld c, b
    ld c, c
    ld b, $3c
    dec a
    rst RST_38
    rrca
    rrca
    rrca
    rrca
    ld c, d
    ld c, e
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld b, $3c
    dec a
    rst RST_38
    rrca
    rrca
    rrca
    rrca
    ld h, d
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld b, $4c
    ld c, l
    ld c, [hl]
    rrca
    rrca
    rrca
    rrca
    ld h, d
    ld l, h
    ld l, h
    ld l, h
    ld b, h
    ld [hl], $07

jr_023_4b91:
    ld e, h
    ld e, l
    ld e, [hl]
    rrca
    rrca
    rrca
    rrca
    ld h, d
    ld l, h
    ld b, h
    ld [hl], $37
    ld b, a
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    inc hl
    ld [hl], $37
    ld b, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]

jr_023_4bb3:
    ld d, [hl]
    ld h, e
    ld b, l
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld d, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    inc c
    dec c
    ld c, $57
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld [$0808], sp
    jr z, @+$0a

    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$080a], sp
    jr z, @+$0a

    ld [$0d08], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080a], sp
    ld [$0808], sp
    ld [$080d], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld [$0808], sp
    ld [$0d08], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080a], sp
    ld [$0d08], sp
    dec c
    dec c
    ld [$0808], sp
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld [$0d08], sp
    dec c
    dec c
    add hl, bc
    add hl, bc
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld [$0808], sp
    ld [$090d], sp
    add hl, bc
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld [$0808], sp
    ld [$0d08], sp
    add hl, bc
    dec c
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld [$0808], sp
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld [$0d0d], sp
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    ld e, a
    ld hl, $3e3d
    ccf
    ld [hl], $37
    ccf
    ld a, $3d
    ld d, l
    ld d, [hl]
    ld d, a
    ld l, h
    ld l, l
    ld b, [hl]
    ld b, a
    ld d, h
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld h, h
    ld h, l
    ld h, [hl]
    ld l, a
    ld c, h
    jr nc, jr_023_4d0d

    ld e, l
    ld l, a
    ld l, a
    jr jr_023_4cbb

    ld a, [de]
    dec de
    ld c, h
    ld l, a
    ld l, a
    ld l, a
    ld e, l
    ld c, [hl]

jr_023_4cbb:
    ld c, a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld c, h
    ld l, a
    ld l, [hl]
    ld c, l
    jr z, jr_023_4cef

    ld a, [hl+]
    dec hl
    ld e, [hl]
    inc a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld c, l
    ld l, a
    ld l, [hl]
    ld c, l
    jr c, jr_023_4d0d

    ld a, [hl-]
    dec sp
    ld l, e
    inc a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld c, h
    ld l, a
    ld l, [hl]
    ld c, h
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld l, e
    inc a
    inc b
    ld l, a
    ld b, $07
    ld c, h
    ld l, a
    ld l, [hl]
    ld c, l
    ld c, b

jr_023_4cef:
    ld e, b
    ld l, a
    ld l, a
    ld l, e
    inc a
    inc d
    dec d
    ld d, $17
    ld e, l
    ld l, a
    ld l, [hl]
    ld e, h
    ld c, b
    ld e, b
    ld l, a
    ld l, a
    ld l, e
    inc a
    inc h
    dec h
    ld h, $27
    dec [hl]
    inc [hl]
    inc c
    dec c
    ld c, b
    ld e, b
    ld l, a

jr_023_4d0d:
    ld l, a
    ld l, e
    inc a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc e
    ld c, $48
    ld e, b
    ld l, a
    ld l, a
    ld l, e
    inc a
    nop
    ld bc, $0201
    inc hl
    inc hl
    rra
    ld c, $48
    ld e, b
    ld l, a
    ld l, a
    ld b, h
    ld b, l
    db $10
    ld de, $1211
    inc bc
    inc hl
    rra
    dec e
    ld c, b
    ld e, c
    ld e, d
    ld e, d
    ld e, [hl]
    inc a
    jr nz, jr_023_4d5e

    ld [hl+], a
    ld [hl+], a
    inc de
    inc l
    dec l
    rra
    ld c, b
    ld l, b
    ld l, a
    ld l, a
    ld l, e
    inc a
    inc hl
    ld sp, $3332
    rrca
    ld l, $2f
    rra
    ld c, b
    ld l, c
    ld l, d
    ld l, d
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2828], sp

jr_023_4d5e:
    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$2d2d], sp
    dec c
    dec c
    ld [$0808], sp
    dec bc
    jr z, @+$0a

    ld [$0b08], sp
    dec bc
    ld [$0b0b], sp
    ld [$0b08], sp
    dec bc
    dec bc
    jr z, @+$0a

    ld [$0b08], sp
    dec bc
    ld [$0b08], sp
    ld [$0c08], sp
    inc c
    inc c
    ld c, $08
    ld [$0b0b], sp
    dec bc
    dec bc
    ld [$080b], sp
    jr z, jr_023_4da5

    ld c, $0e
    ld c, $08
    ld [$0b0b], sp
    dec bc
    dec bc
    jr z, jr_023_4dad

    ld [$0e28], sp

jr_023_4da5:
    ld c, $0e
    ld c, $08
    ld [$0b0b], sp
    dec bc

jr_023_4dad:
    dec bc
    ld [$080b], sp
    jr z, jr_023_4dc1

    ld c, $0c
    inc c
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    ld [$080b], sp
    jr z, @+$10

jr_023_4dc1:
    ld c, $0c
    inc c
    ld [$0a08], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    inc c
    inc c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    inc c
    inc c
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    inc c
    inc c
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    add hl, bc
    ld c, $0c
    inc c
    inc c
    ld [$0908], sp
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    add hl, bc
    ld c, $0e
    ld c, $0e
    dec b
    ld e, a
    ld hl, $3e3d
    ccf
    ld [hl], $37
    ccf
    ld a, $3d
    ld d, l
    ld d, [hl]
    ld d, a
    ld l, h
    ld l, l
    ld b, [hl]
    ld b, a
    ld d, h
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld h, h
    ld h, l
    ld h, [hl]
    ld l, a
    ld c, h
    jr nc, jr_023_4e95

    ld e, l
    ld l, a
    ld l, a
    jr jr_023_4e43

    ld a, [de]
    dec de
    ld c, h
    ld l, a
    ld l, a
    ld l, a
    ld e, l
    add hl, bc

jr_023_4e43:
    ld e, a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld c, h
    ld l, a
    ld l, [hl]
    ld c, l
    jr z, jr_023_4e77

    ld a, [hl+]
    dec hl
    add hl, de
    ld e, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld c, l
    ld l, a
    ld l, [hl]
    ld c, l
    jr c, jr_023_4e95

    ld a, [hl-]
    dec sp
    add hl, de
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld c, h
    ld l, a
    ld l, [hl]
    ld c, h
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    add hl, de
    ld e, a
    inc b
    ld l, a
    ld b, $07
    ld c, h
    ld l, a
    ld l, [hl]
    ld c, l
    ld c, b

jr_023_4e77:
    ld e, b
    ld l, a
    ld l, a
    add hl, de
    ld e, a
    inc d
    dec d
    ld d, $17
    ld e, l
    ld l, a
    ld l, [hl]
    ld e, h
    ld c, b
    ld e, b
    ld l, a
    ld l, a
    add hl, de
    ld e, a
    inc h
    dec h
    ld h, $27
    dec [hl]
    inc [hl]
    inc c
    dec c
    ld c, b
    ld e, b
    ld l, a

jr_023_4e95:
    ld l, a
    add hl, de
    ld e, a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc e
    ld c, $48
    ld e, b
    ld l, a
    ld l, a
    add hl, de
    ld e, a
    nop
    ld bc, $0201
    inc hl
    inc hl
    rra
    ld c, $48
    ld e, b
    ld l, a
    ld l, a
    add hl, de
    ld h, a
    db $10
    ld de, $1211
    inc bc
    inc hl
    rra
    dec e
    ld c, b
    ld e, c
    ld e, d
    ld e, d
    add hl, de
    ld e, a
    jr nz, jr_023_4ee6

    ld [hl+], a
    ld [hl+], a
    inc de
    inc l
    dec l
    rra
    ld c, b
    ld l, b
    ld l, a
    ld l, a
    add hl, de
    ld e, a
    inc hl
    ld sp, $3332
    rrca
    ld l, $2f
    rra
    ld c, b
    ld l, c
    ld l, d
    ld l, d
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2828], sp

jr_023_4ee6:
    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$2d2d], sp
    dec c
    dec c
    ld [$0808], sp
    dec bc
    jr z, @+$0a

    ld [$0b08], sp
    dec bc
    ld [$0b0b], sp
    ld [$0b08], sp
    dec bc
    dec bc
    jr z, @+$0a

    ld [$0b08], sp
    dec bc
    ld [$0b08], sp
    ld [$0c08], sp
    inc c
    inc c
    ld c, $08
    ld [$0b0b], sp
    dec bc
    dec bc
    ld [$080b], sp
    jr z, jr_023_4f2d

    ld c, $0e
    ld c, $08
    ld [$0b0b], sp
    dec bc
    dec bc
    jr z, jr_023_4f35

    ld [$0e28], sp

jr_023_4f2d:
    ld c, $0e
    ld c, $08
    ld [$0b0b], sp
    dec bc

jr_023_4f35:
    dec bc
    ld [$080b], sp
    jr z, jr_023_4f49

    ld c, $0c
    inc c
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    ld [$080b], sp
    jr z, @+$10

jr_023_4f49:
    ld c, $0c
    inc c
    ld [$0a08], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    inc c
    inc c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    inc c
    inc c
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    inc c
    inc c
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    add hl, bc
    ld c, $0c
    inc c
    inc c
    ld [$0908], sp
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    add hl, bc
    ld c, $0e
    ld c, $0e
    dec b
    ld e, a
    ld hl, $3e3d
    ccf
    ld [hl], $37
    ccf
    ld a, $3d
    ld d, l
    ld d, [hl]
    ld d, a
    ld l, h
    ld l, l
    ld b, [hl]
    ld b, a
    ld d, h
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld h, h
    ld h, l
    ld h, [hl]
    ld l, a
    ld c, h
    jr nc, jr_023_501d

    ld e, l
    ld l, a
    ld l, a
    jr jr_023_4fcb

    ld a, [de]
    jr jr_023_5012

    ld l, a
    ld l, a
    ld l, a
    ld e, l
    ld c, [hl]

jr_023_4fcb:
    ld c, a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld c, h
    ld l, a
    ld l, [hl]
    ld c, l
    jr z, jr_023_4fff

    ld a, [hl+]
    dec hl
    ld e, [hl]
    inc a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld c, l
    ld l, a
    ld l, [hl]
    ld c, l
    jr c, jr_023_501d

    ld a, [hl-]
    dec sp
    ld l, e
    inc a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld c, h
    ld l, a
    ld l, [hl]
    ld c, h
    ld c, b
    ld c, c
    ld e, b
    ld e, b
    ld l, e
    inc a
    inc b
    ld l, a
    ld b, $07
    ld c, h
    ld l, a
    ld l, [hl]
    ld c, l
    ld c, b

jr_023_4fff:
    ld e, c
    ld e, b
    ld e, b
    ld l, e
    inc a
    inc d
    dec d
    ld d, $17
    ld e, l
    ld l, a
    ld l, [hl]
    ld e, h
    ld c, b
    ld l, c
    ld e, b
    ld e, b
    ld l, e
    inc a

jr_023_5012:
    inc h
    dec h
    ld h, $27
    dec [hl]
    inc [hl]
    inc c
    dec c
    ld c, b
    ld e, c
    ld e, b

jr_023_501d:
    ld e, b
    ld l, e
    inc a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc e
    ld c, $48
    ld l, c
    ld e, b
    ld e, b
    ld l, e
    inc a
    nop
    ld bc, $0201
    inc hl
    inc hl
    rra
    ld c, $48
    ld e, c
    ld e, b
    ld e, b
    ld b, h
    ld b, l
    db $10
    ld de, $1211
    inc bc
    inc hl
    rra
    dec e
    ld c, b
    ld l, c
    ld e, b
    ld e, b
    ld e, [hl]
    inc a
    jr nz, @+$24

    ld [hl+], a
    ld [hl+], a
    inc de
    inc l
    dec l
    ld e, $48
    ld e, c
    ld e, b
    ld e, b
    ld l, e
    inc a
    inc hl
    ld sp, $3332
    rrca
    ld l, $2f
    ld e, $48
    ld l, c
    ld e, b
    ld e, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    jr z, @+$2a

    ld [$0808], sp
    ld [$0808], sp
    ld [$2d08], sp
    dec l
    dec c
    dec c
    ld [$0808], sp
    dec bc
    jr z, @+$0a

    ld [$0b08], sp
    dec bc
    ld [$0b0b], sp
    jr z, jr_023_5092

    dec bc
    dec bc
    dec bc
    jr z, @+$0a

    ld [$0b08], sp

jr_023_5092:
    dec bc
    ld [$0b08], sp
    ld [$0c08], sp
    inc c
    inc c
    inc c
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    ld [$080b], sp
    jr z, jr_023_50b5

    ld c, $0e
    ld c, $08
    ld [$0b0b], sp
    dec bc
    dec bc
    jr z, jr_023_50bd

    ld [$0e28], sp

jr_023_50b5:
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc

jr_023_50bd:
    dec bc
    ld [$080b], sp
    jr z, jr_023_50d1

    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    ld [$080b], sp
    jr z, @+$10

jr_023_50d1:
    ld [$0808], sp
    ld [$0a08], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $08
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld [$0b09], sp
    dec bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    add hl, bc
    ld c, $08
    ld [$0508], sp
    ld e, a
    ld hl, $3e3d
    ccf
    ld [hl], $37
    ccf
    ld a, $3d
    ld d, l
    ld d, [hl]
    ld d, a
    ld l, h
    ld l, l
    ld b, [hl]
    ld b, a
    ld d, h
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld h, h
    ld h, l
    ld h, [hl]
    ld l, a
    ld c, h
    jr nc, jr_023_51a5

    ld e, l
    ld l, a
    ld l, a
    jr jr_023_5153

    ld a, [de]
    jr jr_023_519a

    ld l, a
    ld l, a
    ld l, a
    ld e, l
    add hl, bc

jr_023_5153:
    ld e, a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld c, h
    ld l, a
    ld l, [hl]
    ld c, l
    jr z, jr_023_5187

    ld a, [hl+]
    dec hl
    add hl, de
    ld e, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld c, l
    ld l, a
    ld l, [hl]
    ld c, l
    jr c, jr_023_51a5

    ld a, [hl-]
    dec sp
    add hl, de
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld c, h
    ld l, a
    ld l, [hl]
    ld c, h
    ld c, b
    ld c, c
    ld e, b
    ld e, b
    add hl, de
    ld e, a
    inc b
    ld l, a
    ld b, $07
    ld c, h
    ld l, a
    ld l, [hl]
    ld c, l
    ld c, b

jr_023_5187:
    ld e, c
    ld e, b
    ld e, b
    add hl, de
    ld e, a
    inc d
    dec d
    ld d, $17
    ld e, l
    ld l, a
    ld l, [hl]
    ld e, h
    ld c, b
    ld l, c
    ld e, b
    ld e, b
    add hl, de
    ld e, a

jr_023_519a:
    inc h
    dec h
    ld h, $27
    dec [hl]
    inc [hl]
    inc c
    dec c
    ld c, b
    ld e, c
    ld e, b

jr_023_51a5:
    ld e, b
    add hl, de
    ld e, a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc e
    ld c, $48
    ld l, c
    ld e, b
    ld e, b
    add hl, de
    ld e, a
    nop
    ld bc, $0201
    inc hl
    inc hl
    rra
    ld c, $48
    ld e, c
    ld e, b
    ld e, b
    add hl, de
    ld h, a
    db $10
    ld de, $1211
    inc bc
    inc hl
    rra
    dec e
    ld c, b
    ld l, c
    ld e, b
    ld e, b
    add hl, de
    ld e, a
    jr nz, @+$24

    ld [hl+], a
    ld [hl+], a
    inc de
    inc l
    dec l
    ld e, $48
    ld e, c
    ld e, b
    ld e, b
    add hl, de
    ld e, a
    inc hl
    ld sp, $3332
    rrca
    ld l, $2f
    ld e, $48
    ld l, c
    ld e, b
    ld e, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    jr z, @+$2a

    ld [$0808], sp
    ld [$0808], sp
    ld [$2d08], sp
    dec l
    dec c
    dec c
    ld [$0808], sp
    dec bc
    jr z, @+$0a

    ld [$0b08], sp
    dec bc
    ld [$0b0b], sp
    jr z, jr_023_521a

    dec bc
    dec bc
    dec bc
    jr z, @+$0a

    ld [$0b08], sp

jr_023_521a:
    dec bc
    ld [$0b08], sp
    ld [$0c08], sp
    inc c
    inc c
    inc c
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    ld [$080b], sp
    jr z, jr_023_523d

    ld c, $0e
    ld c, $08
    ld [$0b0b], sp
    dec bc
    dec bc
    jr z, jr_023_5245

    ld [$0e28], sp

jr_023_523d:
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc

jr_023_5245:
    dec bc
    ld [$080b], sp
    jr z, jr_023_5259

    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    ld [$080b], sp
    jr z, @+$10

jr_023_5259:
    ld [$0808], sp
    ld [$0a08], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $08
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld [$0b09], sp
    dec bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    add hl, bc
    ld c, $08
    ld [$0008], sp
    ld bc, $022f
    inc bc
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, [hl]
    dec de
    inc b
    dec b
    nop
    ld bc, $022f
    ld b, $07
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, e
    ld l, [hl]
    dec de
    inc b
    dec b
    ld h, a
    ld l, b
    ld [$6b09], sp
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, l
    ld l, h
    dec de
    inc b
    dec b
    nop
    ld bc, $2512
    ld a, [bc]
    dec bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, c
    ld b, d
    dec de
    inc b
    dec b
    nop
    ld bc, $022f
    dec bc
    inc c
    dec c
    ld [bc], a
    ld [bc], a
    ld l, l
    ld l, [hl]
    dec de
    inc b
    dec b
    nop
    ld bc, $0e2f
    rrca
    db $10
    ld de, $1011
    inc de
    ld l, a
    dec de
    inc b
    add hl, de
    nop
    ld bc, $142f
    dec d
    ld d, $7f
    ld a, a
    rla
    jr jr_023_5311

    dec de
    inc b

jr_023_5311:
    dec e
    ld a, [de]
    ld bc, $022f
    rra
    ld a, a
    ld a, a
    ld a, a
    inc e
    jr jr_023_531f

    dec de
    inc b

jr_023_531f:
    dec b
    ld e, $01
    cpl
    ld [bc], a
    rra
    ld a, a
    ld a, a
    ld a, a
    jr nz, jr_023_5342

    ld [bc], a
    dec de
    ld l, c
    ld l, d
    ld hl, $2f01
    ld [bc], a
    ld [hl+], a
    inc hl
    inc h
    inc h
    ld h, $27
    ld [bc], a
    dec de
    inc b
    dec b
    jr z, jr_023_5367

    cpl
    ld [bc], a
    ld a, [hl+]
    dec hl

jr_023_5342:
    inc l
    dec l
    ld l, $2f
    ld [bc], a
    dec de
    jr nc, jr_023_534f

    ld sp, $2f32
    ld [bc], a
    inc sp

jr_023_534f:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_023_5357

    dec de
    add hl, sp

jr_023_5357:
    ld a, [hl-]
    dec sp
    inc a
    cpl
    ld [bc], a
    ld [bc], a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    dec de
    ld b, e
    ld b, h
    ld b, l

jr_023_5367:
    ld b, [hl]
    ld b, a
    ld b, a
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
    dec c
    ld [$0808], sp
    ld [$080d], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
    dec c
    ld [$0808], sp
    dec c
    dec c
    ld [$0a0a], sp
    ld c, $0e
    ld [$0d08], sp
    dec c
    ld [$0808], sp
    dec c
    dec c
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
    dec c
    ld [$0808], sp
    dec c
    dec c
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
    dec c
    dec c
    ld [$0d08], sp
    dec c
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    dec c
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0908], sp
    add hl, bc
    ld bc, $0901
    dec bc
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0b08], sp
    ld bc, $0101
    add hl, bc
    dec bc
    ld [$0a08], sp
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld [$0b08], sp
    ld bc, $0101
    add hl, bc
    dec bc
    ld [$0e08], sp
    ld c, $09
    ld a, [bc]
    ld [$0b08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    ld [$0a08], sp
    ld a, [bc]
    ld c, $0a
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    dec bc
    add hl, bc
    add hl, bc
    dec bc
    dec c
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0b0b], sp
    ld [$0d0d], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    nop
    ld bc, $022f
    inc bc
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, [hl]
    dec de
    inc b
    dec b
    nop
    ld bc, $022f
    ld b, $07
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, e
    ld l, [hl]
    dec de
    inc b
    dec b
    ld h, a
    ld l, b
    ld [$6b09], sp
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, l
    ld l, h
    dec de
    inc b
    dec b
    nop
    ld bc, $2512
    ld a, [bc]
    dec bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, c
    ld b, d
    dec de
    inc b
    dec b
    nop
    ld bc, $022f
    dec bc
    inc c
    dec c
    ld [bc], a
    ld [bc], a
    ld l, l
    ld l, [hl]
    dec de
    inc b
    dec b
    nop
    ld bc, $0e2f
    rrca
    db $10
    ld d, c
    ld d, d
    db $10
    inc de
    ld l, a
    dec de
    inc b
    add hl, de
    nop
    ld bc, $142f
    dec d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    jr jr_023_5499

    dec de
    inc b

jr_023_5499:
    dec e
    ld a, [de]
    ld bc, $022f
    rra
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    jr jr_023_54a7

    dec de
    inc b

jr_023_54a7:
    dec b
    ld e, $01
    cpl
    ld [bc], a
    rra
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    jr jr_023_54b5

    dec de
    ld l, c

jr_023_54b5:
    ld l, d
    ld hl, $2f01
    ld [bc], a
    ld [hl+], a
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    daa
    ld [bc], a
    dec de
    inc b
    dec b
    jr z, jr_023_54ef

    cpl
    ld [bc], a
    ld a, [hl+]
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    cpl
    ld [bc], a
    dec de
    jr nc, jr_023_54d7

    ld sp, $2f32
    ld [bc], a
    inc sp

jr_023_54d7:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_023_54df

    dec de
    add hl, sp

jr_023_54df:
    ld a, [hl-]
    dec sp
    inc a
    cpl
    ld [bc], a
    ld [bc], a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    dec de
    ld b, e
    ld b, h
    ld b, l

jr_023_54ef:
    ld b, [hl]
    ld b, a
    ld b, a
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
    dec c
    ld [$0808], sp
    ld [$080d], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
    dec c
    ld [$0808], sp
    dec c
    dec c
    ld [$0a0a], sp
    ld c, $0e
    ld [$0d08], sp
    dec c
    ld [$0808], sp
    dec c
    dec c
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
    dec c
    ld [$0808], sp
    dec c
    dec c
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
    dec c
    dec c
    ld [$0d08], sp
    dec c
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    dec c
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0b08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    ld [$0a08], sp
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld [$0b08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    ld [$0e08], sp
    ld c, $09
    ld a, [bc]
    ld [$0b08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    ld [$0a08], sp
    ld a, [bc]
    ld c, $0a
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    dec bc
    add hl, bc
    add hl, bc
    dec bc
    dec c
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0b0b], sp
    ld [$0d0d], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    nop
    ld e, $01
    ld h, $2a
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld b, l
    ld c, b
    ld c, b
    ld c, b
    db $10
    rrca
    ld de, $2b36
    dec sp
    ld a, [hl-]
    dec hl
    dec sp
    ld a, [hl-]
    ld d, l
    ld e, b
    ld c, c
    ld c, c
    ld [bc], a
    rra
    inc bc
    daa
    xor h
    inc l
    dec l
    ld l, $2f
    xor h
    ld d, l
    ld e, c
    ld c, h
    ld c, l
    ld [de], a
    rra
    inc de
    daa
    ld b, b
    inc a
    dec a
    ld a, $3f
    ld d, b
    ld b, [hl]
    ld e, c
    ld e, h
    ld e, l
    inc b
    rra
    dec b
    jr z, jr_023_563e

    ld b, d
    ld d, c
    ld d, d
    ld b, e
    ld b, h
    ld d, [hl]
    ld c, d
    ld c, [hl]
    ld c, a
    inc d
    jr nz, jr_023_561e

    jr c, jr_023_565e

    ld d, e
    ld d, e
    ld d, h
    ld d, e
    ld d, e
    ld b, a
    ld e, d
    ld e, [hl]
    ld e, a
    ld b, $1f
    rlca
    add hl, hl
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c

jr_023_561e:
    ld d, a
    ld c, e
    ld e, e
    ld e, e
    ld d, $1f
    rla
    add hl, sp
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    add h
    add l
    add [hl]
    add a
    ld [$2430], sp
    dec h
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    sub h
    sub l
    sub [hl]
    sub a

jr_023_563e:
    jr jr_023_5649

    inc [hl]
    dec [hl]
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    adc b

jr_023_5649:
    adc c
    adc d
    adc e
    ld a, [bc]
    jr jr_023_5668

    dec c
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    sbc b
    sbc c
    sbc d
    xor h
    inc c
    ld a, [de]
    jr jr_023_567b

jr_023_565e:
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    add c
    adc h
    adc l
    adc [hl]

jr_023_5668:
    inc e
    inc c
    dec bc
    ld c, $6e
    ld l, a
    add b
    add b
    add d
    add e
    sub c
    sbc h
    sbc l
    sbc [hl]
    dec de
    inc e
    inc c
    ld c, $7e

jr_023_567b:
    ld a, a
    sub b
    sub b
    sub d
    sub e
    sbc e
    sbc h
    adc a
    sbc a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    inc c
    add hl, bc
    inc c
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $09
    inc c
    add hl, bc
    inc c
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    add hl, bc
    inc c
    ld a, [bc]
    inc c
    ld [$080c], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$090c], sp
    add hl, bc
    ld [$080c], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    ld [$080c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0c0d], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    ld [$0808], sp
    dec c
    dec c
    dec c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    ld [$0808], sp
    inc c
    dec c
    dec c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    ld [$0c08], sp
    inc c
    dec c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    ld [$0c08], sp
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    ld [$1e00], sp
    ld bc, $2a26
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld b, l
    ld c, b
    ld c, b
    ld c, b
    db $10
    xor e
    ld de, $2b36
    dec sp
    ld a, [hl-]
    dec hl
    dec sp
    ld a, [hl-]
    ld d, l
    ld e, b
    ld c, c
    ld c, c
    ld [bc], a
    xor e
    inc bc
    daa
    xor h
    inc l
    dec l
    ld l, $2f
    xor h
    ld d, l
    ld e, c
    ld c, h
    ld c, l
    ld [de], a
    xor e
    inc de
    daa
    ld b, b
    inc a
    dec a
    ld a, $3f
    ld d, b
    ld b, [hl]
    ld e, c
    ld e, h
    ld e, l
    inc b
    xor e
    dec b
    jr z, jr_023_57c6

    ld b, d
    ld d, c
    ld d, d
    ld b, e
    ld b, h
    ld d, [hl]
    ld c, d
    ld c, [hl]
    ld c, a
    inc d
    ld sp, $3821
    ld d, e
    ld d, e
    ld d, e
    ld d, h
    ld d, e
    ld d, e
    ld b, a
    ld e, d
    ld e, [hl]
    ld e, a
    ld b, $22
    rlca
    add hl, hl
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld d, a
    ld c, e
    ld e, e
    ld e, e
    ld d, $32
    rla
    add hl, sp
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    add h
    add l
    add [hl]
    add a
    ld [$2423], sp
    dec h
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    sub h
    sub l
    sub [hl]
    sub a

jr_023_57c6:
    jr jr_023_57d1

    inc [hl]
    dec [hl]
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    adc b

jr_023_57d1:
    adc c
    adc d
    adc e
    ld a, [bc]
    jr jr_023_57f0

    dec c
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    sbc b
    sbc c
    sbc d
    xor h
    inc c
    ld a, [de]
    jr jr_023_5803

    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    add c
    adc h
    adc l
    adc [hl]

jr_023_57f0:
    inc e
    inc c
    dec bc
    ld c, $6e
    ld l, a
    add b
    add b
    add d
    add e
    sub c
    sbc h
    sbc l
    sbc [hl]
    dec de
    inc e
    inc c
    ld c, $7e

jr_023_5803:
    ld a, a
    sub b
    sub b
    sub d
    sub e
    sbc e
    sbc h
    adc a
    sbc a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    add hl, bc
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    inc c
    add hl, bc
    inc c
    add hl, bc
    ld [$0909], sp
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $09
    inc c
    add hl, bc
    inc c
    add hl, bc
    ld [$0909], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    add hl, bc
    inc c
    ld a, [bc]
    inc c
    ld [$080c], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$090c], sp
    add hl, bc
    ld [$080c], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    ld [$080c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0b0d], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    ld [$0808], sp
    dec c
    dec c
    dec c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    ld [$0808], sp
    inc c
    dec c
    dec c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    ld [$0c08], sp
    inc c
    dec c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    ld [$0c08], sp
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    ld [$1e00], sp
    ld bc, $2a26
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld b, l
    ld c, b
    ld c, b
    ld c, b
    db $10
    rrca
    ld de, $2b36
    dec sp
    ld a, [hl-]
    dec hl
    dec sp
    ld a, [hl-]
    ld d, l
    and b
    and b
    xor b
    ld [bc], a
    rra
    inc bc
    daa
    xor h
    inc l
    dec l
    ld l, $2f
    xor h
    ld d, l
    and c
    and c
    xor c
    ld [de], a
    rra
    inc de
    daa
    ld b, b
    inc a
    dec a
    ld a, $3f
    ld d, b
    ld b, [hl]
    and c
    and c
    xor c
    inc b
    rra
    dec b
    jr z, jr_023_594e

    ld b, d
    ld d, c
    ld d, d
    ld b, e
    ld b, h
    ld d, [hl]
    and d
    and e
    xor d
    inc d
    jr nz, jr_023_592e

    jr c, jr_023_596e

    ld d, e
    ld d, e
    ld d, h
    ld d, e
    ld d, e
    ld b, a
    and h
    and l
    xor e
    ld b, $1f
    rlca
    add hl, hl
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c

jr_023_592e:
    ld d, a
    and [hl]
    and a
    xor e
    ld d, $1f
    rla
    add hl, sp
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    add h
    add l
    add [hl]
    add a
    ld [$2430], sp
    dec h
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    sub h
    sub l
    sub [hl]
    sub a

jr_023_594e:
    jr jr_023_5959

    inc [hl]
    dec [hl]
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    adc b

jr_023_5959:
    adc c
    adc d
    adc e
    ld a, [bc]
    jr jr_023_5978

    dec c
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    sbc b
    sbc c
    sbc d
    xor h
    inc c
    ld a, [de]
    jr jr_023_598b

jr_023_596e:
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    add c
    adc h
    adc l
    adc [hl]

jr_023_5978:
    inc e
    inc c
    dec bc
    ld c, $6e
    ld l, a
    add b
    add b
    add d
    add e
    sub c
    sbc h
    sbc l
    sbc [hl]
    dec de
    inc e
    inc c
    ld c, $7e

jr_023_598b:
    ld a, a
    sub b
    sub b
    sub d
    sub e
    sbc e
    sbc h
    adc a
    sbc a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0c09], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0c09], sp
    add hl, bc
    add hl, bc
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $09
    add hl, bc
    add hl, hl
    ld [$0c09], sp
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c08], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$090e], sp
    ld [$0c08], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0c08], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0c0d], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    ld [$0808], sp
    dec c
    dec c
    dec c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    ld [$0808], sp
    inc c
    dec c
    dec c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    ld [$0c08], sp
    inc c
    dec c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    ld [$0c08], sp
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    ld [$1e00], sp
    ld bc, $2a26
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld b, l
    ld c, b
    ld c, b
    ld c, b
    db $10
    xor e
    ld de, $2b36
    dec sp
    ld a, [hl-]
    dec hl
    dec sp
    ld a, [hl-]
    ld d, l
    and b
    and b
    xor b
    ld [bc], a
    xor e
    inc bc
    daa
    xor h
    inc l
    dec l
    ld l, $2f
    xor h
    ld d, l
    and c
    and c
    xor c
    ld [de], a
    xor e
    inc de
    daa
    ld b, b
    inc a
    dec a
    ld a, $3f
    ld d, b
    ld b, [hl]
    and c
    and c
    xor c
    inc b
    xor e
    dec b
    jr z, jr_023_5ad6

    ld b, d
    ld d, c
    ld d, d
    ld b, e
    ld b, h
    ld d, [hl]
    and d
    and e
    xor d
    inc d
    ld sp, $3821
    ld d, e
    ld d, e
    ld d, e
    ld d, h
    ld d, e
    ld d, e
    ld b, a
    and h
    and l
    xor e
    ld b, $22
    rlca
    add hl, hl
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld d, a
    and [hl]
    and a
    xor e
    ld d, $32
    rla
    add hl, sp
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    add h
    add l
    add [hl]
    add a
    ld [$2423], sp
    dec h
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    sub h
    sub l
    sub [hl]
    sub a

jr_023_5ad6:
    jr jr_023_5ae1

    inc [hl]
    dec [hl]
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    adc b

jr_023_5ae1:
    adc c
    adc d
    adc e
    ld a, [bc]
    jr jr_023_5b00

    dec c
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    sbc b
    sbc c
    sbc d
    xor h
    inc c
    ld a, [de]
    jr jr_023_5b13

    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    add c
    adc h
    adc l
    adc [hl]

jr_023_5b00:
    inc e
    inc c
    dec bc
    ld c, $6e
    ld l, a
    add b
    add b
    add d
    add e
    sub c
    sbc h
    sbc l
    sbc [hl]
    dec de
    inc e
    inc c
    ld c, $7e

jr_023_5b13:
    ld a, a
    sub b
    sub b
    sub d
    sub e
    sbc e
    sbc h
    adc a
    sbc a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0809], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0809], sp
    add hl, bc
    add hl, bc
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $09
    add hl, bc
    add hl, hl
    ld [$0809], sp
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c08], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$090e], sp
    ld [$0c08], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0c08], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0b0d], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    ld [$0808], sp
    dec c
    dec c
    dec c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    ld [$0808], sp
    inc c
    dec c
    dec c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    ld [$0c08], sp
    inc c
    dec c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    ld [$0c08], sp
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    ld [$6e6d], sp
    ld l, a
    sub l
    ld h, b
    ld h, c
    ld b, b
    ld b, c
    nop
    ld bc, $2f2e
    ld a, $3f
    ld l, d
    ld l, e
    ld l, h
    sub [hl]
    ld [hl], b
    ld [hl], c
    ld d, b
    ld d, c
    db $10
    ld de, $2120
    ld [hl+], a
    inc hl
    ld a, d
    ld a, e
    ld a, h
    sub a
    ld h, d
    ld h, e
    rst RST_38
    rst RST_38
    ld [bc], a
    inc bc
    jr nc, jr_023_5c39

    ld [hl-], a
    inc sp
    add l
    ld l, [hl]
    ld l, a
    sub l
    ld [hl], d
    ld [hl], e
    rst RST_38
    rst RST_38
    ld [de], a
    inc de
    inc h
    dec h
    inc [hl]
    dec [hl]
    sub h
    ld a, l
    ld l, h
    sub [hl]
    ld l, b
    ld l, c
    rst RST_38
    rst RST_38
    inc b
    dec b
    ld h, $27
    jr z, jr_023_5c4f

    ld a, d
    ld a, e
    ld a, h
    sub a
    ld a, b
    ld a, c
    rst RST_38
    rst RST_38
    inc d
    dec d
    ld [hl], $37
    jr z, jr_023_5c6d

    ld l, l
    ld l, [hl]
    ld l, a
    sub l
    ld l, b

jr_023_5c39:
    ld l, c
    ld b, e
    rst RST_38
    ld b, $07
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, d
    ld a, [hl]
    add b
    sub [hl]
    ld h, h
    ld h, l
    ld b, d
    rst RST_38
    ld d, $17
    ld a, [hl-]
    dec hl
    inc a

jr_023_5c4f:
    dec a
    add [hl]
    add d
    add c
    sub a
    ld [hl], h
    ld [hl], l
    ld d, d
    ld d, e
    ld [$3609], sp
    dec hl
    jr z, jr_023_5c9b

    add a
    ld l, [hl]
    sub e
    rra
    ld h, [hl]
    ld h, a
    ld b, h
    ld b, l
    jr jr_023_5c81

    ld a, [hl+]
    scf
    jr c, jr_023_5ca5

    add e

jr_023_5c6d:
    adc l
    adc [hl]
    sub [hl]
    halt
    ld [hl], a
    ld d, h
    ld d, l
    ld e, d
    ld a, [bc]
    dec bc
    daa
    inc a
    dec a
    sub b
    adc e
    adc h
    sub a
    ld [hl], b
    ld [hl], c
    ld b, [hl]

jr_023_5c81:
    ld b, a
    ld c, b
    ld a, [de]
    dec de
    inc c
    dec c
    ld c, $6d
    ld l, [hl]
    ld l, a
    sub l
    ld h, d
    ld h, e
    ld d, [hl]
    ld d, a
    ld e, b
    rst RST_38
    rrca
    inc e
    dec e
    ld e, $6a
    ld l, e
    ld l, h
    sub [hl]
    ld [hl], d

jr_023_5c9b:
    ld [hl], e
    ld c, c
    ld e, c
    ld c, d
    ld c, d
    ld c, e
    ld c, h
    ld e, e
    ld e, h
    add hl, bc

jr_023_5ca5:
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    rlca
    rlca
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    rlca
    rlca
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    rlca
    rlca
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    rlca
    rlca
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    ld c, $07
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    ld c, $0e
    ld c, $08
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    ld [$0a0a], sp
    ld c, $0e
    ld c, $08
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    ld [$0a0a], sp
    ld c, $0e
    ld c, $07
    inc c
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0a], sp
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld c, [hl]
    ld c, a
    sbc b
    ld h, b
    ld h, c
    ld b, b
    ld b, c
    nop
    ld bc, $2f2e
    ld a, $3f
    ld e, l
    ld e, [hl]
    ld e, a
    sbc b
    ld [hl], b
    ld [hl], c
    ld d, b
    ld d, c
    db $10
    ld de, $2120
    ld [hl+], a
    inc hl
    ld c, l
    ld c, [hl]
    ld c, a
    adc c
    ld h, d
    ld h, e
    rst RST_38
    rst RST_38
    ld [bc], a
    inc bc
    jr nc, jr_023_5dc1

    ld [hl-], a
    inc sp
    ld e, l
    ld e, [hl]
    ld e, a
    ld a, a
    ld [hl], d
    ld [hl], e
    rst RST_38
    rst RST_38
    ld [de], a
    inc de
    inc h
    dec h
    inc [hl]
    dec [hl]
    ld c, l
    ld c, [hl]
    ld c, a
    sbc b
    ld l, b
    ld l, c
    rst RST_38
    rst RST_38
    inc b
    dec b
    ld h, $27
    jr z, jr_023_5dd7

    ld e, l
    ld e, [hl]
    ld e, a
    adc c
    ld a, b
    ld a, c
    rst RST_38
    rst RST_38
    inc d
    dec d
    ld [hl], $37
    jr z, jr_023_5df5

    ld c, l
    ld c, [hl]
    ld c, a
    ld a, a
    ld l, b

jr_023_5dc1:
    ld l, c
    ld b, e
    rst RST_38
    ld b, $07
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld e, l
    ld e, [hl]
    ld e, a
    adc d
    ld h, h
    ld h, l
    ld b, d
    rst RST_38
    ld d, $17
    ld a, [hl-]
    dec hl
    inc a

jr_023_5dd7:
    dec a
    ld c, l
    ld c, [hl]
    ld c, a
    adc a
    ld [hl], h
    ld [hl], l
    ld d, d
    ld d, e
    ld [$3609], sp
    dec hl
    jr z, jr_023_5e23

    ld e, l
    ld e, [hl]
    ld e, a
    adc c
    ld h, [hl]
    ld h, a
    ld b, h
    ld b, l
    jr jr_023_5e09

    ld a, [hl+]
    scf
    jr c, @+$3b

    ld c, l

jr_023_5df5:
    ld c, [hl]
    ld c, a
    ld a, a
    halt
    ld [hl], a
    ld d, h
    ld d, l
    ld e, d
    ld a, [bc]
    dec bc
    daa
    inc a
    dec a
    ld e, l
    ld e, [hl]
    ld e, a
    sbc b
    ld [hl], b
    ld [hl], c
    ld b, [hl]

jr_023_5e09:
    ld b, a
    ld c, b
    ld a, [de]
    dec de
    inc c
    dec c
    ld c, $4d
    ld c, [hl]
    ld c, a
    adc b
    ld h, d
    ld h, e
    ld d, [hl]
    ld d, a
    ld e, b
    rst RST_38
    rrca
    inc e
    dec e
    ld e, $5d
    ld e, [hl]
    ld e, a
    ld a, a
    ld [hl], d

jr_023_5e23:
    ld [hl], e
    ld c, c
    ld e, c
    ld c, d
    ld c, d
    ld c, e
    ld c, h
    ld e, e
    ld e, h
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rlca
    rlca
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rlca
    rlca
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rlca
    rlca
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rlca
    rlca
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $07
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld c, $0e
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld c, $0e
    ld c, $07
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0b03
    dec b
    ld b, $07
    ld [$0809], sp
    add hl, bc
    ld l, a
    add hl, bc
    ld [$0b09], sp
    inc c
    dec c
    ld c, $0f
    db $10
    ld d, h
    ld de, $1111
    ld [de], a
    ld de, $5711
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_023_5f73

    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    add hl, de
    add hl, de
    ld e, b
    dec de
    dec d
    dec d
    inc e
    dec e
    ld e, $56
    rra
    rra
    jr nz, jr_023_5f51

    rra
    rra
    ld e, c
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld d, h
    ld de, $1111
    ld de, $1111
    ld d, a
    jr z, jr_023_5fae

    ld a, [hl+]
    dec hl
    dec hl
    inc l
    ld d, l
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, b
    jr z, @+$6d

jr_023_5f51:
    ld a, [hl+]
    dec hl
    dec hl
    ld l, $56
    rra
    rra
    rra
    rra
    rra
    rra
    ld e, c
    jr z, @+$6e

    ld a, [hl+]
    dec hl
    dec hl
    jr nc, @+$56

    ld de, $1111
    ld de, $1111
    ld d, a
    jr z, jr_023_5fd8

    ld a, [hl+]
    dec hl
    dec hl
    ld [hl-], a
    ld d, l
    add hl, de

jr_023_5f73:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, b
    jr z, jr_023_5fe6

    ld a, [hl+]
    inc [hl]
    dec [hl]
    ld [hl], $56
    rra
    rra
    rra
    rra
    rra
    rra
    ld e, c
    jr z, jr_023_5ff5

    ld a, [hl+]
    jr c, @+$3b

    ld a, [hl-]
    ld d, h
    ld de, $1111
    ld de, $1111
    ld d, a
    jr z, jr_023_6002

    ld a, [hl+]
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld l, e
    ld a, [hl+]
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, [hl]

jr_023_5fae:
    ld d, b
    ld d, c
    ld c, e
    ld d, d
    ld l, [hl]
    ld a, [hl+]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b08], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_023_5fd8:
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_023_5fe6:
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    add hl, bc

jr_023_5ff5:
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_023_6002:
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0b03
    dec b
    ld b, $07
    ld [$0809], sp
    add hl, bc
    ld l, a
    add hl, bc
    ld [$0b09], sp
    inc c
    dec c
    ld c, $0f
    db $10
    ld d, h
    ld de, $1111
    ld [de], a
    ld de, $5711
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_023_60fb

    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    add hl, de
    add hl, de
    ld e, b
    dec de
    dec d
    dec d
    ld e, d
    ld e, e
    ld e, $56
    rra
    rra
    jr nz, jr_023_60d9

    rra
    rra
    ld e, c
    ld [hl+], a
    inc hl
    inc h
    ld e, h
    ld e, l
    ld e, [hl]
    ld d, h
    ld de, $1111
    ld de, $1111
    ld d, a
    jr z, jr_023_6136

    ld a, [hl+]
    ld e, h
    ld e, a
    ld h, b
    ld d, l
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, b
    jr z, @+$6d

jr_023_60d9:
    ld a, [hl+]
    ld e, h
    ld h, c
    ld h, d
    ld d, [hl]
    rra
    rra
    rra
    rra
    rra
    rra
    ld e, c
    jr z, @+$6e

    ld a, [hl+]
    ld e, h
    ld h, e
    ld h, h
    ld d, h
    ld de, $1111
    ld de, $1111
    ld d, a
    jr z, jr_023_6160

    ld a, [hl+]
    ld e, h
    ld h, l
    ld h, [hl]
    ld d, l
    add hl, de

jr_023_60fb:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, b
    jr z, jr_023_616e

    ld a, [hl+]
    ld e, h
    ld h, a
    ld l, b
    ld d, [hl]
    rra
    rra
    rra
    rra
    rra
    rra
    ld e, c
    jr z, jr_023_617d

    ld a, [hl+]
    ld l, c
    ld l, d
    ld a, [hl-]
    ld d, h
    ld de, $1111
    ld de, $1111
    ld d, a
    jr z, jr_023_618a

    ld a, [hl+]
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld l, e
    ld a, [hl+]
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, [hl]

jr_023_6136:
    ld d, b
    ld d, c
    ld c, e
    ld d, d
    ld l, [hl]
    ld a, [hl+]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b08], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_023_6160:
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_023_616e:
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    add hl, bc

jr_023_617d:
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_023_618a:
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0b03
    dec b
    ld b, $07
    ld [$0809], sp
    add hl, bc
    ld l, a
    add hl, bc
    ld [$0b09], sp
    inc c
    dec c
    ld c, $0f
    db $10
    ld d, h
    ld de, $1111
    ld [de], a
    ld de, $5711
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_023_6283

    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    add hl, de
    add hl, de
    ld e, b
    dec de
    dec d
    dec d
    inc e
    dec e
    ld e, $56
    rra
    rra
    jr nz, jr_023_6261

    rra
    rra
    ld e, c
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld d, h
    ld de, $1111
    ld de, $1111
    ld d, a
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    dec hl
    inc l
    ld d, l
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, b
    jr z, jr_023_628e

jr_023_6261:
    ld a, [hl+]
    dec hl
    dec hl
    ld l, $56
    rra
    rra
    rra
    rra
    rra
    rra
    ld e, c
    jr z, jr_023_629e

    ld a, [hl+]
    dec hl
    dec hl
    jr nc, @+$56

    ld de, $1111
    ld de, $1111
    ld d, a
    jr z, jr_023_62ae

    ld a, [hl+]
    dec hl
    dec hl
    ld [hl-], a
    ld d, l
    add hl, de

jr_023_6283:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, b
    jr z, jr_023_62be

    ld a, [hl+]
    inc [hl]
    dec [hl]

jr_023_628e:
    ld [hl], $56
    rra
    rra
    rra
    rra
    rra
    rra
    ld e, c
    jr z, jr_023_62d0

    ld a, [hl+]
    jr c, @+$3b

    ld a, [hl-]
    ld d, h

jr_023_629e:
    ld de, $1111
    ld de, $1111
    ld d, a
    jr z, jr_023_62e2

    ld a, [hl+]
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_023_62ae:
    ld b, d
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld a, [hl+]
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, [hl]

jr_023_62be:
    ld d, b
    ld d, c
    ld c, e
    ld d, d
    ld d, e
    ld a, [hl+]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

jr_023_62d0:
    ld [$0b08], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc

jr_023_62e2:
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld a, [bc]
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0b03
    dec b
    ld b, $07
    ld [$0809], sp
    add hl, bc
    ld l, a
    add hl, bc
    ld [$0b09], sp
    inc c
    dec c
    ld c, $0f
    db $10
    ld d, h
    ld de, $1111
    ld [de], a
    ld de, $5711
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_023_640b

    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    add hl, de
    add hl, de
    ld e, b
    dec de
    dec d
    dec d
    ld e, d
    ld e, e
    ld e, $56
    rra
    rra
    jr nz, jr_023_63e9

    rra
    rra
    ld e, c
    ld [hl+], a
    inc hl
    inc h
    ld e, h
    ld e, l
    ld e, [hl]
    ld d, h
    ld de, $1111
    ld de, $1111
    ld d, a
    jr z, @+$2b

    ld a, [hl+]
    ld e, h
    ld e, a
    ld h, b
    ld d, l
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, b
    jr z, jr_023_6416

jr_023_63e9:
    ld a, [hl+]
    ld e, h
    ld h, c
    ld h, d
    ld d, [hl]
    rra
    rra
    rra
    rra
    rra
    rra
    ld e, c
    jr z, jr_023_6426

    ld a, [hl+]
    ld e, h
    ld h, e
    ld h, h
    ld d, h
    ld de, $1111
    ld de, $1111
    ld d, a
    jr z, jr_023_6436

    ld a, [hl+]
    ld e, h
    ld h, l
    ld h, [hl]
    ld d, l
    add hl, de

jr_023_640b:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, b
    jr z, jr_023_6446

    ld a, [hl+]
    ld e, h
    ld h, a

jr_023_6416:
    ld l, b
    ld d, [hl]
    rra
    rra
    rra
    rra
    rra
    rra
    ld e, c
    jr z, jr_023_6458

    ld a, [hl+]
    ld l, c
    ld l, d
    ld a, [hl-]
    ld d, h

jr_023_6426:
    ld de, $1111
    ld de, $1111
    ld d, a
    jr z, jr_023_646a

    ld a, [hl+]
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_023_6436:
    ld b, d
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld a, [hl+]
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, [hl]

jr_023_6446:
    ld d, b
    ld d, c
    ld c, e
    ld d, d
    ld d, e
    ld a, [hl+]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

jr_023_6458:
    ld [$0b08], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc

jr_023_646a:
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld a, [bc]
    ld a, a
    nop
    ld bc, $0403
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    dec b
    add [hl]
    rst RST_38
    rst RST_38
    ld a, a
    db $10
    ld de, $1212
    ld a, a
    ld a, a
    ld [de], a
    ld [de], a
    ld a, a
    dec d
    add a
    rst RST_38
    rst RST_38
    ld a, a
    inc hl
    inc h
    ld [hl+], a
    jr nz, jr_023_6553

    ld [hl+], a
    ld a, a
    ld a, a
    ld a, a
    rlca
    adc b
    rst RST_38
    rst RST_38
    ld a, a
    jr nc, jr_023_656e

    ld [hl-], a
    jr nc, jr_023_6571

    ld [hl-], a
    ld a, a
    ld a, a
    ld a, a
    rla
    adc c
    adc d
    rst RST_38
    inc sp
    inc [hl]

jr_023_654a:
    ld b, c
    ld b, d
    ld b, b
    ld b, c
    ld b, d
    ld c, $0f
    ld a, a
    add hl, bc

jr_023_6553:
    adc e
    adc h
    adc l
    dec h
    ld h, $27
    rra
    daa
    ld h, $28
    ld e, $13
    inc d
    inc d
    add hl, de
    ld a, [de]
    adc [hl]
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld e, b
    ld d, d
    ld d, e

jr_023_656e:
    ld d, h
    ld d, l
    ld d, [hl]

jr_023_6571:
    ld d, a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld a, [hl-]
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld c, c
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $37
    ld d, c
    ld b, h
    ld [hl], a
    dec [hl]
    ld a, b
    ld a, c
    dec [hl]
    ld a, d
    ld a, e
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, a
    ld h, c
    add d
    ld a, h
    ld a, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    add h
    ld l, a
    ld l, a
    ld l, a
    jr c, jr_023_660d

    add d
    add d
    ld a, [hl]
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    jr c, jr_023_654a

    ld b, e
    ld b, e
    ld b, e
    ld c, b
    ld h, b
    add d
    add d
    add b
    add c
    ld b, e
    ld b, e
    ld b, e
    add e
    add l
    dec b
    inc c
    inc c
    ld c, $0e
    inc l
    inc c
    ld c, $0e
    inc l
    inc c
    ld [$0007], sp
    dec b
    inc c
    inc c
    dec c
    dec l
    dec b
    dec b
    dec c
    dec l
    dec b
    inc c
    ld [$0000], sp
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec b
    dec b
    dec b
    inc c
    ld [$0000], sp
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec b
    dec b
    dec b
    inc c
    ld [$0008], sp
    dec c

jr_023_660d:
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    dec b
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b0b], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0a08], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, a
    nop
    ld bc, $0403
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    dec b
    ld b, $0c
    dec e
    ld a, a
    db $10
    ld de, $1212
    ld a, a
    ld a, a
    ld [de], a
    ld [de], a
    ld a, a
    dec d
    ld d, $0c
    dec c
    ld a, a
    inc hl
    inc h
    ld [hl+], a
    jr nz, jr_023_66db

    ld [hl+], a
    ld a, a
    ld a, a
    ld a, a
    rlca
    ld [$1d1c], sp
    ld a, a
    jr nc, jr_023_66f6

    ld [hl-], a
    jr nc, jr_023_66f9

    ld [hl-], a
    ld a, a
    ld a, a
    ld a, a
    rla
    jr jr_023_66db

    dec c
    inc sp
    inc [hl]

jr_023_66d2:
    ld b, c
    ld b, d
    ld b, b
    ld b, c
    ld b, d
    ld c, $0f
    ld a, a
    add hl, bc

jr_023_66db:
    ld a, [bc]
    dec bc
    dec e
    dec h
    ld h, $27
    rra
    daa
    ld h, $28
    ld e, $13
    inc d
    inc d
    add hl, de
    ld a, [de]
    dec de
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld e, b
    ld d, d
    ld d, e

jr_023_66f6:
    ld d, h
    ld d, l
    ld d, [hl]

jr_023_66f9:
    ld d, a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld a, [hl-]
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld c, c
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $37
    ld d, c
    ld b, h
    ld [hl], a
    dec [hl]
    ld a, b
    ld a, c
    dec [hl]
    ld a, d
    ld a, e
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, a
    ld h, c
    add d
    ld a, h
    ld a, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    add h
    ld l, a
    ld l, a
    ld l, a
    jr c, jr_023_6795

    add d
    add d
    ld a, [hl]
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    jr c, jr_023_66d2

    ld b, e
    ld b, e
    ld b, e
    ld c, b
    ld h, b
    add d
    add d
    add b
    add c
    ld b, e
    ld b, e
    ld b, e
    add e
    add l
    dec b
    inc c
    inc c
    ld c, $0e
    inc l
    inc c
    ld c, $0e
    inc l
    inc c
    ld [$0808], sp
    dec b
    inc c
    inc c
    dec c
    dec l
    dec b
    dec b
    dec c
    dec l
    dec b
    inc c
    ld [$0808], sp
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec b
    dec b
    dec b
    inc c
    ld [$0808], sp
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec b
    dec b
    dec b
    inc c
    ld [$0808], sp
    dec c

jr_023_6795:
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    dec b
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b0b], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0a08], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, $2f
    jr c, jr_023_685d

    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rrca
    nop
    ld bc, $0302
    inc b
    dec b
    ld e, $10
    ld de, $0f12
    rrca
    rrca
    rrca
    dec e
    rrca
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    rrca
    rrca
    rrca
    rrca
    rrca
    jr nz, jr_023_686f

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $34
    dec l
    ld c, d
    rrca
    rrca
    rrca
    rrca
    jr nc, jr_023_688d

    ld [hl-], a

jr_023_685d:
    ld h, $33
    ld h, $26
    inc [hl]
    dec [hl]
    ld c, e
    ld c, d
    rrca
    rrca
    ld c, d
    scf
    ld sp, $3b3a
    inc a
    dec a
    dec sp

jr_023_686f:
    ld a, $35
    ld [hl], $41
    rrca
    rrca
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    dec hl
    ld b, [hl]
    dec hl
    dec hl
    ld b, a
    dec [hl]
    ld [hl], $4b
    ld c, d
    ld c, d
    ld c, e
    ld b, d
    ld b, e
    ld b, h
    dec hl
    ld b, [hl]
    ld c, h
    ld c, l
    ld c, [hl]
    dec [hl]

jr_023_688d:
    ld c, a
    ld [hl], $41
    ld b, c
    ld [hl], $42
    ld sp, $4d5f
    ld c, b
    ld c, c
    ld c, c
    ld c, [hl]
    dec [hl]
    ld d, b
    ld d, c
    ld c, e
    ld c, e
    ld [hl], $42
    ld sp, $4952
    ld d, h
    ld c, c
    ld c, c
    ld c, [hl]
    dec [hl]
    ld d, l
    ld [hl], $36
    ld [hl], $36
    ld b, d
    ld b, e
    ld d, d
    ld c, c
    ld d, h
    ld c, c
    ld c, c
    ld c, [hl]
    dec [hl]
    ld [hl], $36
    ld [hl], $36
    ld [hl], $42
    ld sp, $4952
    ld d, h
    ld c, c
    ld c, c
    ld c, [hl]
    dec [hl]
    ld [hl], $36
    ld [hl], $36
    ld [hl], $42
    ld b, e
    ld d, d
    ld c, c
    ld d, h
    ld c, c
    ld c, c
    ld c, [hl]
    dec [hl]
    ld [hl], $36
    ld [hl], $36
    ld [hl], $42
    ld sp, $1c56
    ld d, a
    ld e, b
    inc e
    ld c, [hl]
    dec [hl]
    ld [hl], $36
    ld [hl], $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    dec l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    dec l
    dec l
    ld a, [bc]
    ld a, [bc]
    dec c
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0828], sp
    ld a, [bc]
    dec c
    dec l
    ld a, [bc]
    ld a, [bc]
    dec c
    ld a, [bc]
    add hl, bc
    ld [$0809], sp
    add hl, bc
    add hl, bc
    ld [$0d0a], sp
    dec l
    dec l
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    ld [$0809], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    dec c
    dec l
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld [$2d0a], sp
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    dec c
    dec c
    dec c
    ld l, $2f
    jr c, jr_023_69e5

    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rrca
    nop
    ld bc, $0302
    inc b
    dec b
    ld e, $10
    ld de, $0f12
    rrca
    rrca
    rrca
    dec e
    rrca
    inc de
    inc d
    dec d
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    dec de
    rrca
    rrca
    rrca
    rrca
    rrca
    jr nz, jr_023_69f7

    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld e, [hl]
    dec l
    ld c, d
    rrca
    rrca
    rrca
    rrca
    jr nc, jr_023_6a15

    ld d, e

jr_023_69e5:
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld e, [hl]
    dec [hl]
    ld c, e
    ld c, d
    rrca
    rrca
    ld c, d
    scf
    ld sp, $6e53
    ld l, [hl]
    ld h, b
    ld h, c

jr_023_69f7:
    ld h, d
    dec [hl]
    ld [hl], $41
    rrca
    rrca
    ld b, c
    ld b, d
    ld b, e
    ld d, e
    ld h, e
    ld h, h
    ld h, a
    ld l, b
    ld l, c
    dec [hl]
    ld [hl], $4b
    ld c, d
    ld c, d
    ld c, e
    ld b, d
    ld b, e
    ld d, e
    ld h, l
    ld l, b
    daa
    jr z, jr_023_6a3d

    dec [hl]

jr_023_6a15:
    ld c, a
    ld [hl], $41
    ld b, c
    ld [hl], $42
    ld sp, $6553
    ld l, b
    ld a, [hl+]
    dec hl
    inc l
    dec [hl]
    ld d, b
    ld d, c
    ld c, e
    ld c, e
    ld [hl], $42
    ld sp, $6553
    ld l, b
    ld b, b
    dec hl
    inc l
    dec [hl]
    ld d, l
    ld [hl], $36
    ld [hl], $36
    ld b, d
    ld b, e
    ld d, e
    ld h, l
    ld l, b
    ld b, b
    dec hl

jr_023_6a3d:
    inc l
    dec [hl]
    ld [hl], $36
    ld [hl], $36
    ld [hl], $42
    ld sp, $6553
    ld l, b
    ld b, b
    dec hl
    inc l
    dec [hl]
    ld [hl], $36
    ld [hl], $36
    ld [hl], $42
    ld b, e
    ld d, e
    ld h, l
    ld l, b
    ld a, [hl+]
    dec hl
    inc l
    dec [hl]
    ld [hl], $36
    ld [hl], $36
    ld [hl], $42
    ld sp, $6553
    ld l, b
    ld l, a
    jr z, jr_023_6a91

    dec [hl]
    ld [hl], $36
    ld [hl], $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc

jr_023_6a91:
    add hl, bc
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a08], sp
    dec l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0a08], sp
    dec l
    dec l
    ld a, [bc]
    ld a, [bc]
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    dec l
    ld a, [bc]
    ld a, [bc]
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    dec l
    dec l
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec c
    dec l
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$2d0a], sp
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, c
    ld c, c
    ld a, [bc]
    dec c
    dec c
    dec c
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    rla
    rla
    jr jr_023_6b55

    inc c
    dec c
    db $10
    ld hl, $1722
    rla
    rla
    rla
    rla
    rla

jr_023_6b55:
    rla
    ld a, [bc]
    dec bc
    inc c
    dec c
    db $10
    ld l, [hl]
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    jr @+$0d

    inc c
    dec c
    db $10
    ld hl, $3322
    ld a, [hl]
    ld a, [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [bc]
    dec bc
    inc c
    dec c
    db $10
    ld l, [hl]
    ld [hl+], a
    inc sp
    ld a, [hl]
    ld a, [hl]
    ld [hl], $36
    ld [hl], $20
    ld a, [bc]
    dec de
    inc e
    dec e
    db $10
    ld e, a
    ld [hl+], a
    inc sp
    ld a, [hl]
    ld a, [hl]
    ld [hl], $36
    ld [hl], $19
    jr @+$2d

    inc l
    dec l
    db $10
    ld l, a
    ld [hl+], a
    inc sp
    ld a, [hl]
    ld a, [hl]
    ld [hl], $36
    ld [hl], $36
    ld a, [bc]
    dec sp
    inc a
    dec a
    db $10
    ld a, a
    ld [hl+], a
    inc sp
    ld a, [hl]
    ld a, [hl]
    ld [hl], $36
    ld [hl], $36
    jr jr_023_6bc6

    ld c, $0f
    db $10
    ld e, a
    ld [hl+], a
    inc sp
    ld a, [hl]
    ld a, [hl]
    ld [hl], $36
    ld [hl], $36
    jr jr_023_6be4

    ld e, $1f
    db $10
    ld l, a
    ld [hl+], a
    inc sp
    ld a, [hl]
    ld a, [hl]
    ld [hl], $7e
    ld [hl], $36

jr_023_6bc6:
    ld a, [bc]
    ld a, [hl-]
    ld l, $2f
    db $10
    ld a, a
    ld [hl+], a
    inc sp
    ld a, [hl]
    ld a, [hl]
    ld b, a
    ld a, [hl]
    ld [hl], $36
    ld a, [bc]
    dec bc
    add b
    dec c
    db $10
    ld l, [hl]
    ld [hl+], a
    inc sp
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld [hl], $36
    jr @+$0d

jr_023_6be4:
    add b
    dec c
    db $10
    ld hl, $3322
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld [hl], $36
    ld a, [bc]
    dec bc
    add b
    dec c
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    nop
    ld bc, $0302
    inc b
    dec b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld a, [bc]
    dec bc
    inc c
    dec c
    db $10
    ld de, $7574
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    jr jr_023_6cdd

    inc c
    dec c
    db $10
    ld hl, $7a70
    ld a, d
    ld a, c
    ld a, h
    ld a, c
    ld a, d

jr_023_6cdd:
    ld a, l
    ld a, [bc]
    dec bc
    inc c
    dec c
    db $10
    ld l, [hl]
    ld [hl], c
    ld a, c
    ld [hl], d
    add c
    ld [hl], e
    ld a, d
    ld a, d
    ld a, l
    jr jr_023_6cf9

    inc c
    dec c
    db $10
    ld hl, $7a71
    ld a, d
    ld a, c
    ld [hl], e
    ld a, d
    ld a, d

jr_023_6cf9:
    ld a, l
    ld a, [bc]
    dec bc
    inc c
    dec c
    db $10
    ld l, [hl]
    ld [hl], c
    ld a, d
    ld a, d
    ld a, c
    ld a, b
    ld [hl], d
    ld a, c
    ld a, l
    ld a, [bc]
    dec de
    inc e
    dec e
    db $10
    ld e, a
    ld [hl], c
    ld a, d
    ld a, c
    ld [hl], d
    ld [hl], e
    ld a, d
    ld a, d
    ld a, l
    jr @+$2d

    inc l
    dec l
    db $10
    ld l, a
    ld [hl], c
    ld a, d
    ld a, d
    ld a, d
    ld [hl], e
    ld a, d
    ld a, d
    ld a, l
    ld a, [bc]
    dec sp
    inc a
    dec a
    db $10
    ld a, a
    ld [hl], c
    ld a, d
    ld a, d
    ld a, c
    ld [hl], e
    ld a, d
    ld a, d
    ld a, l
    jr jr_023_6d4e

    ld c, $0f
    db $10
    ld e, a
    ld [hl], c
    ld a, d
    ld a, c
    ld [hl], d
    ld a, h
    ld a, c
    ld a, d
    ld a, l
    jr jr_023_6d6c

    ld e, $1f
    db $10
    ld l, a
    ld [hl], c
    ld a, d
    ld a, d
    ld a, d
    ld [hl], e
    ld a, d
    ld a, d
    ld a, l

jr_023_6d4e:
    ld a, [bc]
    ld a, [hl-]
    ld l, $2f
    db $10
    ld a, a
    ld [hl], c
    ld a, d
    ld a, d
    ld a, d
    ld a, b
    ld [hl], d
    ld a, c
    ld a, l
    ld a, [bc]
    dec bc
    add b
    dec c
    db $10
    ld l, [hl]
    ld [hl], c
    ld a, d
    ld a, d
    ld a, c
    ld [hl], e
    ld a, d
    ld a, d
    ld a, l
    jr jr_023_6d77

jr_023_6d6c:
    add b
    dec c
    db $10
    ld hl, $7a71
    ld a, c
    ld [hl], d
    ld a, h
    ld a, c
    ld a, d

jr_023_6d77:
    ld a, l
    ld a, [bc]
    dec bc
    add b
    dec c
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld l, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld l, c
    ld l, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld l, c
    ld c, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld l, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    ld l, c
    ld l, c
    ld c, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld l, c
    ld c, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    ld l, c
    ld l, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld l, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    ld l, c
    ld l, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    db $10
    ld de, $4812
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    jr jr_023_6e65

    inc c
    dec c
    db $10
    ld hl, $3e22
    ccf
    ld a, $3f
    ld d, b
    ld d, c

jr_023_6e65:
    ld d, d
    ld a, [bc]
    dec bc
    inc c
    dec c
    db $10
    ld l, [hl]
    ld [hl+], a
    ld a, $3e
    ld a, $53
    ld d, h
    ld d, l
    ld a, $18
    dec bc
    inc c
    dec c
    db $10
    ld hl, $3f22
    ld a, $3f
    ccf
    ld h, h
    ld h, l
    ld a, $0a
    dec bc
    inc c
    dec c
    db $10
    ld l, [hl]
    ld [hl+], a
    ld a, $3f
    ld a, $3f
    ld c, a
    ld a, $3f
    ld a, [bc]
    dec de
    inc e
    dec e
    db $10
    ld e, a
    ld [hl+], a
    ld a, $3f
    ccf
    ld d, [hl]
    ld d, a
    ld e, b
    ld d, e
    jr @+$2d

    inc l
    dec l
    db $10
    ld l, a
    ld [hl+], a
    ccf
    ccf
    ld h, [hl]
    ld e, d
    ld l, b
    ld l, c
    ccf
    ld a, [bc]
    dec sp
    inc a
    dec a
    db $10
    ld a, a
    ld [hl+], a
    ccf
    ccf
    ld e, l
    ld e, d
    ld e, e
    ld e, b
    ccf
    jr jr_023_6ed6

    ld c, $0f
    db $10
    ld e, a
    ld [hl+], a
    ccf
    ccf
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ccf
    jr jr_023_6ef4

    ld e, $1f
    db $10
    ld l, a
    ld [hl+], a
    ccf
    ccf
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ccf

jr_023_6ed6:
    ld a, [bc]
    ld a, [hl-]
    ld l, $2f
    db $10
    ld a, a
    ld [hl+], a
    ccf
    ccf
    ld e, l
    ld e, [hl]
    ld c, a
    ccf
    ccf
    ld a, [bc]
    dec bc
    add b
    dec c
    db $10
    ld l, [hl]
    ld [hl+], a
    ccf
    ccf
    ld c, a
    ccf
    ld c, a
    ld c, a
    ccf
    jr jr_023_6eff

jr_023_6ef4:
    add b
    dec c
    db $10
    ld hl, $3f22
    ccf
    ld c, a
    ld c, a
    ld c, a
    ld c, a

jr_023_6eff:
    ccf
    ld a, [bc]
    dec bc
    add b
    dec c
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    inc c
    inc c
    inc c
    inc c
    dec c
    dec bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    ld c, $09
    ld [$0808], sp
    ld [$0909], sp
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    ld c, $09
    ld [$0808], sp
    ld [$0909], sp
    ld c, $0e
    ld c, $0e
    dec c
    ld l, $0e
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $09
    ld [$0808], sp
    ld [$0909], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld l, $09
    ld [$0808], sp
    ld [$0909], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $09
    ld [$0808], sp
    ld [$0909], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld l, $09
    ld [$0808], sp
    ld [$0909], sp
    ld c, $0e
    ld c, $0e
    dec c
    ld c, $0e
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld c, $0e
    dec c
    ld c, $0d
    dec c
    ld c, $09
    ld [$0808], sp
    ld [$0909], sp
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    ld c, $09
    ld [$0808], sp
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    db $10
    ld de, $3012
    ld sp, $4332
    ld b, h
    ld b, l
    ld b, [hl]
    jr jr_023_6fed

    inc c
    dec c
    db $10
    ld hl, $4022
    ld b, c
    ld b, b
    ld b, c
    ld b, b
    inc [hl]

jr_023_6fed:
    dec [hl]
    ld a, [bc]
    dec bc
    inc c
    dec c
    db $10
    ld l, [hl]
    ld [hl+], a
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld b, d
    jr jr_023_7009

    inc c
    dec c
    db $10
    ld hl, $4022
    ld b, c
    ld b, c
    ld b, b
    ld b, d
    ld b, c

jr_023_7009:
    ld b, d
    ld a, [bc]
    dec bc
    inc c
    dec c
    db $10
    ld l, [hl]
    ld [hl+], a
    ld b, b
    ld b, b
    ld b, c
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    ld a, [bc]
    dec de
    inc e
    dec e
    db $10
    ld e, a
    ld [hl+], a
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    jr @+$2d

    inc l
    dec l
    db $10
    ld l, a
    ld [hl+], a
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld a, [bc]
    dec sp
    inc a
    dec a
    db $10
    ld a, a
    ld [hl+], a
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, b
    ld b, c
    jr jr_023_705e

    ld c, $0f
    db $10
    ld e, a
    ld [hl+], a
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, c
    ld b, b
    ld b, c
    jr jr_023_707c

    ld e, $1f
    db $10
    ld l, a
    ld [hl+], a
    ld b, c
    ld b, c
    ld b, b
    ld b, d
    ld b, d
    ld b, c
    ld b, c

jr_023_705e:
    ld a, [bc]
    ld a, [hl-]
    ld l, $2f
    db $10
    ld a, a
    ld [hl+], a
    ld b, c
    ld b, d
    ld b, c
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld a, [bc]
    dec bc
    add b
    dec c
    db $10
    ld l, [hl]
    ld [hl+], a
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    jr jr_023_7087

jr_023_707c:
    add b
    dec c
    db $10
    ld hl, $4122
    ld b, c
    add d
    ld b, d
    ld b, d
    ld b, d

jr_023_7087:
    ld b, c
    ld a, [bc]
    dec bc
    add b
    dec c
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    dec bc
    dec bc
    ld c, e
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_023_714c:
    add hl, bc
    ld [$0808], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0f
    ld e, $1f
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $15
    jr jr_023_718f

    ld a, [de]
    dec de
    inc e
    dec e
    add [hl]
    add a
    jr nz, jr_023_719f

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @-$5f

    xor e
    cp e
    sub [hl]
    sub a
    jr nc, jr_023_71bd

    ld [hl-], a
    inc sp
    inc [hl]

jr_023_718f:
    dec [hl]
    ld [hl], $37
    jr c, jr_023_714c

    xor d
    xor h
    sbc e
    adc b
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_023_719f:
    ld b, b
    ld b, c
    xor c
    cp d
    or l
    sbc e
    sbc b
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld d, b
    ld d, c
    xor c
    cp d
    or l
    sbc e
    adc c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_023_71bd:
    cp c
    xor [hl]
    xor a
    sbc e
    sbc c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    or d
    cp l
    or c
    sbc e
    adc d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    or d
    cp l
    or c
    sbc e
    sbc d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    cp h
    xor l
    or c
    sbc e
    adc e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    sbc e
    adc h
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    sbc e
    sbc h
    add b
    add c
    sub b
    sub c
    add d
    add e
    sub d
    sub e
    add h
    add l
    sub h
    sub l
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    inc c
    ld [$0c08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0c0c], sp
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    add hl, bc
    dec c
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$090c], sp
    add hl, bc
    add hl, bc
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0f
    ld e, $1f
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    rla
    ld de, $1312
    inc d
    dec d
    ld d, $15
    jr jr_023_7317

    ld a, [de]
    dec de
    inc e
    dec e
    adc l
    add a
    jr nz, jr_023_7327

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @-$5f

    xor e
    cp e
    sbc l
    sub a
    jr nc, jr_023_7345

    ld [hl-], a
    inc sp
    inc [hl]

jr_023_7317:
    dec [hl]
    ld [hl], $37
    jr c, @-$46

    xor d
    xor h
    adc [hl]
    adc b
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_023_7327:
    ld b, b
    ld b, c
    xor c
    cp d
    or l
    sbc [hl]
    sbc b
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld d, b
    ld d, c
    xor c
    cp d
    or l
    adc a
    adc c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_023_7345:
    cp c
    xor [hl]
    xor a
    adc a
    sbc c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    or d
    cp l
    or c
    adc a
    adc d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    or d
    cp l
    or c
    adc a
    sbc d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    cp h
    xor l
    or c
    cp a
    adc e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ret nz

    adc h
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    pop bc
    sbc h
    add b
    add c
    sub b
    sub c
    add d
    add e
    sub d
    sub e
    add h
    add l
    sub h
    sub l
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    inc c
    ld [$0c08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0c0c], sp
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    add hl, bc
    dec c
    dec c
    dec c
    dec bc
    ld a, [bc]

jr_023_7446:
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$090c], sp
    add hl, bc
    add hl, bc
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0f
    ld e, $1f
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $15
    jr jr_023_749f

    ld a, [de]
    dec de
    inc e
    dec e
    add [hl]
    add a
    jr nz, jr_023_74af

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @-$5f

    and b
    and c
    sub [hl]
    sub a
    jr nc, jr_023_74cd

    ld [hl-], a
    inc sp
    inc [hl]

jr_023_749f:
    dec [hl]
    ld [hl], $37
    jr c, jr_023_7446

    cp [hl]
    or c
    sbc e
    adc b
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_023_74af:
    ld b, b
    ld b, c
    or d
    or e
    or c
    sbc e
    sbc b
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld d, b
    ld d, c
    or d
    and h
    or c
    sbc e
    adc c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_023_74cd:
    and e
    or h
    and l
    sbc e
    sbc c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    and [hl]
    or [hl]
    or l
    sbc e
    adc d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    and [hl]
    or [hl]
    or l
    sbc e
    sbc d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    and a
    or a
    xor b
    sbc e
    adc e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    sbc e
    adc h
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    sbc e
    sbc h
    add b
    add c
    sub b
    sub c
    add d
    add e
    sub d
    sub e
    add h
    add l
    sub h
    sub l
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    inc c
    ld [$0c08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0c0c], sp
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    add hl, bc
    dec c
    dec c
    dec c
    dec bc
    ld a, [bc]

jr_023_75ce:
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$090c], sp
    add hl, bc
    add hl, bc
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0f
    ld e, $1f
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    rla
    ld de, $1312
    inc d
    dec d
    ld d, $15
    jr jr_023_7627

    ld a, [de]
    dec de
    inc e
    dec e
    adc l
    add a
    jr nz, jr_023_7637

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @-$5f

    and b
    and c
    sbc l
    sub a
    jr nc, jr_023_7655

    ld [hl-], a
    inc sp
    inc [hl]

jr_023_7627:
    dec [hl]
    ld [hl], $37
    jr c, jr_023_75ce

    cp [hl]
    or c
    adc [hl]
    adc b
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_023_7637:
    ld b, b
    ld b, c
    or d
    or e
    or c
    sbc [hl]
    sbc b
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld d, b
    ld d, c
    or d
    and h
    or c
    adc a
    adc c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_023_7655:
    and e
    or h
    and l
    adc a
    sbc c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    and [hl]
    or [hl]
    or l
    adc a
    adc d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    and [hl]
    or [hl]
    or l
    adc a
    sbc d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    and a
    or a
    xor b
    cp a
    adc e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ret nz

    adc h
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    pop bc
    sbc h
    add b
    add c
    sub b
    sub c
    add d
    add e
    sub d
    sub e
    add h
    add l
    sub h
    sub l
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    inc c
    ld [$0c08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0c0c], sp
    add hl, bc
    dec c
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    add hl, bc
    dec c
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$090c], sp
    add hl, bc
    add hl, bc
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, $0a
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld bc, $ff07
    dec b
    inc b
    inc bc
    ld [bc], a
    ld de, $0600
    ld a, [de]
    add hl, de
    ld a, [de]
    add hl, de
    ld bc, $ff07
    dec d
    inc d
    inc de
    ld [de], a
    ld de, $0b10
    ld a, [hl+]
    add hl, hl
    dec c
    inc c
    jr @+$19

    ld h, $25
    inc h
    inc hl
    ld [hl+], a
    ld hl, $1b20
    ld a, [hl-]
    ld e, $1d
    inc e
    jr z, jr_023_77c8

    ld [hl], $35
    inc [hl]
    inc sp
    ld [hl-], a
    ld sp, $2b30
    ld c, $2e
    dec l
    inc l
    jr c, jr_023_77e6

    ld a, $3d
    inc a
    dec sp
    ld b, d
    ld b, c
    ld b, b
    ld b, [hl]
    ld b, l
    ld b, h
    ld b, e
    rrca
    ld [$0808], sp
    ld [$0f08], sp
    ld d, d
    ld d, c
    ld d, b
    ld d, a
    ld d, [hl]
    ld d, l
    ld d, h

jr_023_77c8:
    rra
    rra
    rra
    rra
    rra
    ld d, $53
    ld h, d
    ld h, c
    ld h, b
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, h
    ccf
    cpl
    cpl
    cpl
    cpl
    cpl
    ld h, e
    ld c, c
    ld c, b
    ld b, a
    ld l, l
    ld l, h
    ld l, d
    ld c, a
    ld c, a
    ld c, a

jr_023_77e6:
    add hl, sp
    ld c, a
    ld c, a
    add hl, sp
    ld c, l
    ld c, h
    ld c, e
    ld c, d
    ld [hl], d
    ld [hl], c
    ld [hl], b
    ld e, c
    ld e, b
    ld e, [hl]
    ld e, a
    ld c, [hl]
    ld e, a
    ld e, [hl]
    ld e, l
    ld e, h
    ld e, e
    ld e, d
    ld l, a
    ld l, [hl]
    sub b
    ld l, c
    ld l, b
    ld a, e
    ld a, d
    ld a, c
    ld a, b
    ld [hl], a
    halt
    ld [hl], l
    ld [hl], h
    ld [hl], e
    adc c
    adc b
    ld a, h
    add a
    add [hl]
    add l
    add e
    add h
    add e
    add d
    add c
    add b
    ld a, h
    ld a, h
    adc a
    adc d
    adc e
    adc h
    adc [hl]
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, l
    adc l
    adc h
    adc e
    adc d
    sbc b
    sub b
    sbc a
    sub a
    sub l
    sub h
    sub h
    sub h
    sub h
    sub h
    sub e
    sub d
    sub c
    ld a, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [hl+]
    add hl, hl
    rlca
    dec hl
    dec hl
    dec l
    dec l
    inc l
    dec l
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [hl+]
    add hl, hl
    rlca
    dec hl
    dec hl
    dec l
    dec l
    inc l
    dec l
    dec hl
    add hl, hl
    add hl, hl
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    dec l
    inc l
    dec l
    dec hl
    add hl, hl
    jr z, jr_023_7890

    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2d
    dec l
    dec l
    dec hl
    jr z, @+$30

    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2d
    dec l
    ld l, $2e
    ld l, $2e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    dec l
    dec l
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e

jr_023_7890:
    ld l, $2e
    ld l, $2e
    ld l, $2d
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $0e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, $0e
    ld l, $0e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $20
    ld b, $0a
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld bc, $ff07
    dec b
    inc b
    inc bc
    ld [bc], a
    sbc d
    sbc c
    ld b, $1a
    add hl, de
    ld a, [de]
    add hl, de
    ld bc, $ff07
    dec d
    inc d
    inc de
    sbc h
    sbc e
    db $10
    dec bc
    ld a, [hl+]
    add hl, hl
    dec c
    inc c
    jr @+$19

    ld h, $25
    inc h
    inc hl
    sbc [hl]
    sbc l
    jr nz, jr_023_793e

    ld a, [hl-]
    ld e, $1d
    inc e
    jr z, jr_023_7950

    ld [hl], $35
    inc [hl]
    inc sp
    ld [hl-], a
    ld sp, $2b30
    ld c, $2e
    dec l
    inc l
    jr c, jr_023_796e

    ld a, $3d
    inc a
    dec sp
    ld b, d
    ld b, c
    ld b, b

jr_023_793e:
    ld b, [hl]
    ld b, l
    ld b, h
    ld b, e
    rrca
    ld [$0808], sp
    ld [$0f08], sp
    ld d, d
    ld d, c
    ld d, b
    ld d, a
    ld d, [hl]
    ld d, l
    ld d, h

jr_023_7950:
    rra
    rra
    rra
    rra
    rra
    ld d, $53
    ld h, d
    ld h, c
    ld h, b
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, h
    ccf
    cpl
    cpl
    cpl
    cpl
    cpl
    ld h, e
    ld c, c
    ld c, b
    ld b, a
    ld l, l
    ld l, h
    ld l, d
    ld c, a
    ld c, a
    ld c, a

jr_023_796e:
    add hl, sp
    ld c, a
    ld c, a
    add hl, sp
    ld c, l
    ld c, h
    ld c, e
    ld c, d
    ld [hl], d
    ld [hl], c
    ld [hl], b
    ld e, c
    ld e, b
    ld e, [hl]
    ld e, a
    ld c, [hl]
    ld e, a
    ld e, [hl]
    ld e, l
    ld e, h
    ld e, e
    ld e, d
    ld l, a
    ld l, [hl]
    sub b
    ld l, c
    ld l, b
    ld a, e
    ld a, d
    ld a, c
    ld a, b
    ld [hl], a
    halt
    ld [hl], l
    ld [hl], h
    ld [hl], e
    adc c
    adc b
    ld a, h
    add a
    add [hl]
    add l
    add e
    add h
    add e
    add d
    add c
    add b
    ld a, h
    ld a, h
    adc a
    adc d
    adc e
    adc h
    adc [hl]
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, l
    adc l
    adc h
    adc e
    adc d
    sbc b
    sub b
    sbc a
    sub a
    sub l
    sub h
    sub h
    sub h
    sub h
    sub h
    sub e
    sub d
    sub c
    ld a, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [hl+]
    add hl, hl
    rlca
    dec hl
    dec hl
    dec l
    dec l
    inc l
    dec l
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [hl+]
    add hl, hl
    rlca
    dec hl
    dec hl
    dec l
    dec l
    inc l
    dec l
    dec hl
    add hl, hl
    add hl, hl
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    dec l
    inc l
    dec l
    dec hl
    add hl, hl
    jr z, jr_023_7a18

    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2d
    dec l
    dec l
    dec hl
    jr z, @+$30

    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2d
    dec l
    ld l, $2e
    ld l, $2e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    dec l
    dec l
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e

jr_023_7a18:
    ld l, $2e
    ld l, $2e
    ld l, $2d
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $0e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, $0e
    ld l, $0e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $20
    dec h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    inc [hl]
    rrca
    inc sp
    ld [hl-], a
    inc b
    inc bc
    ld [bc], a
    ld bc, $3500
    ld b, $05
    ld b, $05
    ld b, h
    rrca
    ld b, e
    ld [hl-], a
    inc d
    inc de
    ld [de], a
    ld bc, $2600
    ld d, $15
    ld d, $15
    inc [hl]
    inc sp
    rst RST_38
    ld [hl-], a
    inc h
    inc hl
    ld [hl+], a
    ld [hl], c
    ld [hl], b
    ld [hl], $56
    ld d, l
    ld d, h
    ld a, [bc]
    inc [hl]
    ld b, e
    rst RST_38
    add hl, bc
    ld a, c
    inc c
    dec bc
    ld [hl], e
    ld [hl], d
    ld h, e
    ld h, [hl]
    ld h, l
    ld h, h
    rlca
    rla
    ld [hl], a
    halt
    ld [hl], l
    ld [$1b1c], sp
    ld b, c
    ld [hl], h
    ld e, c
    ld e, b
    ld e, b
    ld d, a
    daa
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    daa
    inc l
    dec hl
    ld c, $0d
    ld e, b
    ld e, b
    ld l, c
    ld l, b
    ld h, a
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    dec sp
    scf
    ld e, $1d
    ld e, b
    ld e, h
    ld e, e
    ld e, d
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, h
    ld c, e
    inc a
    ld b, a
    ld l, $2d
    ld e, a
    ld e, [hl]
    ld e, l
    ld l, d
    ld d, b
    ld d, b
    ld d, b
    ld l, d
    ld d, b
    ld d, b
    ld a, $3d
    add hl, de
    jr jr_023_7b6c

    ld l, h
    ld h, b
    ld h, c
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld c, [hl]
    ld c, l
    add hl, hl
    jr z, jr_023_7b7c

    ld l, [hl]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld d, e
    cpl
    add hl, sp
    jr c, jr_023_7b6a

    ld c, a
    ld d, d
    ld d, d
    ld c, a
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld c, a
    ld d, d
    ccf
    ld d, d
    ld a, [de]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    rra
    ld a, [hl+]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, c
    ld c, b
    rrca
    ld a, [hl-]
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [hl+]
    add hl, hl
    add hl, hl
    dec hl
    dec hl
    dec l
    dec l
    inc l
    inc l
    dec hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [hl+]
    add hl, hl
    add hl, hl
    dec hl
    dec hl
    dec l
    dec l
    inc l
    inc l
    dec hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld bc, $2b2b

jr_023_7b6a:
    dec l
    dec l

jr_023_7b6c:
    inc l
    inc l
    dec hl
    jr z, @+$2a

    jr z, @+$30

    ld a, [hl+]
    add hl, hl
    add hl, bc
    dec hl
    ld l, $2e
    dec l
    inc l
    inc l

jr_023_7b7c:
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2d
    dec l
    dec l
    ld l, $2e
    ld l, $2e
    ld l, $08
    ld [$0808], sp
    ld l, $2e
    ld l, $2d
    dec l
    ld l, $2e
    ld l, $2e
    ld l, $0e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2d
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, $0e
    ld c, $0e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    jr z, @+$2a

    ld [$0808], sp
    ld [$0808], sp
    dec l
    dec l
    dec l
    ld l, $2e
    ld l, $2e
    ld l, $0e
    ld c, $0e
    ld c, $0e
    ld c, $2e
    ld l, $2e
    ld l, $0e
    ld l, $0e
    ld l, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld l, $2e
    ld l, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec l
    dec l
    add hl, hl
    dec l
    dec h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    inc [hl]
    rrca
    inc sp
    ld [hl-], a
    inc b
    inc bc
    ld [bc], a
    ld bc, $3500
    ld b, $05
    ld b, $05
    ld b, h
    rrca
    ld b, e
    ld [hl-], a
    inc d
    inc de
    ld [de], a
    ld de, $2610
    ld d, $15
    ld d, $15
    inc [hl]
    inc sp
    rst RST_38
    ld [hl-], a
    inc h
    inc hl
    ld [hl+], a
    ld hl, $3620
    ld d, [hl]
    ld d, l
    ld d, h
    ld a, [bc]
    inc [hl]
    ld b, e
    rst RST_38
    add hl, bc
    ld a, c
    inc c
    dec bc
    ld sp, $6330
    ld h, [hl]
    ld h, l
    ld h, h
    rlca
    rla
    ld [hl], a
    halt
    ld [hl], l
    ld [$1b1c], sp
    ld b, c
    ld b, b
    ld e, c
    ld e, b
    ld e, b
    ld d, a
    daa
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    daa
    inc l
    dec hl
    ld c, $0d
    ld e, b
    ld e, b
    ld l, c
    ld l, b
    ld h, a
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    dec sp
    scf
    ld e, $1d
    ld e, b
    ld e, h
    ld e, e
    ld e, d
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, h
    ld c, e
    inc a
    ld b, a
    ld l, $2d
    ld e, a
    ld e, [hl]
    ld e, l
    ld l, d
    ld d, b
    ld d, b
    ld d, b
    ld l, d
    ld d, b
    ld d, b
    ld a, $3d
    add hl, de
    jr jr_023_7cf4

    ld l, h
    ld h, b
    ld h, c
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld c, [hl]
    ld c, l
    add hl, hl
    jr z, jr_023_7d04

    ld l, [hl]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld d, e
    cpl
    add hl, sp
    jr c, jr_023_7cf2

    ld c, a
    ld d, d
    ld d, d
    ld c, a
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld c, a
    ld d, d
    ccf
    ld d, d
    ld a, [de]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    rra
    ld a, [hl+]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, c
    ld c, b
    rrca
    ld a, [hl-]
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [hl+]
    add hl, hl
    add hl, hl
    dec hl
    dec hl
    dec l
    dec l
    inc l
    inc l
    dec hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [hl+]
    add hl, hl
    add hl, hl
    dec hl
    dec hl
    dec l
    dec l
    inc l
    inc l
    dec hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld bc, $2b2b

jr_023_7cf2:
    dec l
    dec l

jr_023_7cf4:
    inc l
    inc l
    dec hl
    jr z, @+$2a

    jr z, @+$30

    ld a, [hl+]
    add hl, hl
    add hl, bc
    dec hl
    ld l, $2e
    dec l
    inc l
    inc l

jr_023_7d04:
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2d
    dec l
    dec l
    ld l, $2e
    ld l, $2e
    ld l, $08
    ld [$0808], sp
    ld l, $2e
    ld l, $2d
    dec l
    ld l, $2e
    ld l, $2e
    ld l, $0e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2d
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, $0e
    ld c, $0e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    jr z, @+$2a

    ld [$0808], sp
    ld [$0808], sp
    dec l
    dec l
    dec l
    ld l, $2e
    ld l, $2e
    ld l, $0e
    ld c, $0e
    ld c, $0e
    ld c, $2e
    ld l, $2e
    ld l, $0e
    ld l, $0e
    ld l, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld l, $2e
    ld l, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec l
    dec l
    add hl, hl
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
