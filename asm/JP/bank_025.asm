; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $025", ROMX[$4000], BANK[$25]

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
    jr jr_025_4062

    and b
    ld c, a
    jr z, jr_025_4069

    or b
    ld d, d
    jr c, jr_025_4070

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
    jr nz, jr_025_409e

    xor b
    ld l, c
    jr nc, jr_025_40a5

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
    ld [$007c], sp
    ld bc, $0000
    nop
    ld [bc], a
    inc bc
    inc c
    dec c
    ld c, $a0
    and c
    and d
    and e
    db $10
    ld de, $1f0f

jr_025_4062:
    rra
    ld [de], a
    inc de
    inc e
    dec e
    ld e, $b0

jr_025_4069:
    or c
    or d
    or e
    inc b
    jr nz, jr_025_4090

    dec b

jr_025_4070:
    ld b, $22
    inc hl
    inc l
    dec l
    ld l, $94
    sub l
    sub [hl]
    sub a
    inc d
    jr nc, jr_025_40ae

    dec d
    ld d, $32
    inc sp
    inc a
    dec a
    ld a, $a4
    and l
    and [hl]
    and a
    inc h
    inc [hl]
    rlca
    ld [$0909], sp
    add hl, bc
    add hl, bc

jr_025_4090:
    add hl, bc
    ld a, [bc]
    or h
    or l
    or [hl]
    or a
    rla
    jr jr_025_40a4

    dec h
    ld h, $27
    jr z, jr_025_40c7

jr_025_409e:
    ld a, [hl+]
    dec hl
    sbc b
    sbc c
    sbc d
    sbc e

jr_025_40a4:
    ld b, b

jr_025_40a5:
    ld b, c
    dec de
    dec [hl]
    ld [hl], $37
    jr c, jr_025_40e5

    ld a, [hl-]
    dec sp

jr_025_40ae:
    xor b
    xor c
    xor d
    xor e
    ld d, b
    ld d, c
    ld a, [de]
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ccf
    cp b
    cp c
    cp d
    cp e
    ld h, b
    ld h, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_025_40c7:
    ld b, a
    ld c, b
    ld c, c
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld [hl], b
    ld [hl], c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    cpl
    xor h
    xor l
    xor [hl]
    ld h, d
    ld h, e
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h

jr_025_40e5:
    ld l, l
    ld l, [hl]
    ld l, a
    cp h
    cp l
    ld [hl], d
    ld [hl], e
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
    cp [hl]
    cp a
    ld h, h
    ld h, l
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, l
    ld e, [hl]
    ld e, a
    sub b
    sub c
    sub d
    sub e
    xor a
    ld [hl], h
    ld [hl], l
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    add l
    adc [hl]
    adc a
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $0e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $0e
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $0e
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $0e
    add hl, bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0e08], sp
    ld c, $0e
    ld c, $0c
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    dec bc
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
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
    ld c, $0e
    ld c, $0e
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
    ld c, $0e
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
    ld c, $0e
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    dec c
    dec c
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    inc c
    ld a, [bc]
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld b, $08
    daa
    daa
    ld a, [hl-]
    dec b
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    ld d, $18
    daa
    daa
    ld a, [hl-]
    dec d
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld h, $27
    daa
    daa
    ld a, [hl-]
    dec h
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld b, $07
    ld b, $09
    ld a, [bc]
    dec bc
    ld a, [hl-]
    dec [hl]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld d, $17
    ld d, $19
    ld a, [de]
    dec de
    ld a, [hl-]
    ld b, l
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld [hl], $27
    ld [hl], $29
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    ld d, l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    inc c
    dec c
    ld c, $0f
    inc l
    dec l
    ld l, $65
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    inc e
    dec e
    ld e, $1f
    inc a
    dec a
    ld a, $75
    add b
    add c
    add d
    add e
    add h
    add l
    cpl
    ccf
    ccf
    ccf
    ccf
    ccf
    cpl
    add l
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, [hl]
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, a
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, [hl]
    ld c, l
    ld c, l
    jr z, jr_025_42b3

    add hl, sp
    jr c, jr_025_42a6

    ld c, l
    ld c, l
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld c, l
    ld c, l
    ld c, l
    halt
    ld [hl], a
    ld a, b
    ld [hl], a
    halt
    ld c, l
    ld c, l
    ld l, e
    ld l, h
    ld l, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    add [hl]
    add a
    adc b
    add a
    add [hl]
    ld c, l
    ld c, l
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0d0c], sp
    inc c
    dec c

jr_025_42a6:
    dec c
    dec c
    dec c
    xor b
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0d0c], sp
    inc c

jr_025_42b3:
    dec c
    dec c
    dec c
    dec c
    xor b
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    xor b
    ld [$0808], sp
    ld [$0808], sp
    inc c
    dec c
    inc c
    dec c
    dec c
    dec c
    dec c
    jr z, jr_025_42dd

    ld [$0808], sp
    ld [$0c08], sp
    dec c
    inc c

jr_025_42dd:
    dec c
    add hl, bc
    dec c
    dec c
    jr z, jr_025_42eb

    ld [$0808], sp
    ld [$0d08], sp
    dec c
    dec c

jr_025_42eb:
    dec c
    add hl, bc
    dec c
    dec c
    jr z, jr_025_42f9

    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc

jr_025_42f9:
    dec bc
    dec bc
    dec bc
    dec bc
    jr z, jr_025_4307

    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c

jr_025_4307:
    inc c
    inc c
    inc c
    inc c
    jr z, jr_025_4315

    ld [$0808], sp
    ld [$0e08], sp
    ld c, $0e

jr_025_4315:
    ld c, $0e
    ld c, $2e
    jr z, jr_025_4323

    ld [$0808], sp
    ld [$0b0e], sp
    dec bc
    dec bc

jr_025_4323:
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $08
    ld [$0808], sp
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $08
    ld [$0e08], sp
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld [$0e08], sp
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld [$0e0e], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld b, $08
    daa
    daa
    ld a, [hl-]
    dec b
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    ld d, $18
    daa
    daa
    ld a, [hl-]
    dec d
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld h, $27
    daa
    daa
    ld a, [hl-]
    dec h
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld b, $07
    ld b, $09
    ld a, [bc]
    dec bc
    ld a, [hl-]
    dec [hl]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld d, $17
    ld d, $19
    ld a, [de]
    dec de
    ld a, [hl-]
    ld b, l
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld [hl], $27
    ld [hl], $29
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    ld d, l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    inc c
    dec c
    ld c, $0f
    inc l
    dec l
    ld l, $65
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    inc e
    dec e
    ld e, $1f
    inc a
    dec a
    ld a, $75
    add b
    add c
    add d
    add e
    add h
    add l
    cpl
    ccf
    ccf
    ccf
    ccf
    ccf
    cpl
    add l
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, [hl]
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, a
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, [hl]
    ld c, l
    ld c, l
    ld a, c
    ld a, d
    ld a, e
    ld a, d
    ld a, c
    ld c, l
    ld c, l
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld c, l
    ld c, l
    ld c, l
    ld a, h
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, h
    ld c, l
    ld c, l
    ld l, e
    ld l, h
    ld l, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, l
    ld c, l
    ld c, l
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0d0c], sp
    inc c
    dec c
    dec c
    dec c
    dec c
    xor b
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0d0c], sp
    inc c
    dec c
    dec c
    dec c
    dec c
    xor b
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    xor b
    ld [$0808], sp
    ld [$0808], sp
    inc c
    dec c
    inc c
    dec c
    dec c
    dec c
    dec c
    jr z, jr_025_4465

    ld [$0808], sp
    ld [$0c08], sp
    dec c
    inc c

jr_025_4465:
    dec c
    add hl, bc
    dec c
    dec c
    jr z, jr_025_4473

    ld [$0808], sp
    ld [$0d08], sp
    dec c
    dec c

jr_025_4473:
    dec c
    add hl, bc
    dec c
    dec c
    jr z, jr_025_4481

    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc

jr_025_4481:
    dec bc
    dec bc
    dec bc
    dec bc
    jr z, jr_025_448f

    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c

jr_025_448f:
    inc c
    inc c
    inc c
    inc c
    jr z, jr_025_449d

    ld [$0808], sp
    ld [$0e08], sp
    ld c, $0e

jr_025_449d:
    ld c, $0e
    ld c, $2e
    jr z, jr_025_44ab

    ld [$0808], sp
    ld [$0b0e], sp
    dec bc
    dec bc

jr_025_44ab:
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $08
    ld [$0808], sp
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $08
    ld [$0e08], sp
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld [$0e08], sp
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$2808], sp
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld [$0e0e], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    nop
    ld bc, $7a7a
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$7a7a], sp
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_025_4550

    ld a, [de]
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_025_4564

    ld [hl+], a
    inc hl
    inc h
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    dec h
    ld h, $27
    jr z, jr_025_4578

    ld a, [hl+]

jr_025_4550:
    dec hl
    inc l
    dec l
    ld l, $7a
    ld a, d
    ld a, d
    ld a, d
    cpl
    jr nc, jr_025_458c

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$7c

    ld a, d

jr_025_4564:
    ld a, d
    ld a, d
    ld a, d
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld a, d
    ld b, c
    ld b, d
    ld b, e

jr_025_4578:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld a, d
    ld a, d
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld l, a

jr_025_458c:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld a, d
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld a, b
    ld a, c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [$0e08], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0e08], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld [$0e0e], sp
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$0e0e], sp
    ld c, $0e
    ld [$0b09], sp
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    add hl, bc
    ld [$0e0e], sp
    ld c, $0e
    ld [$0a09], sp
    inc c
    inc c
    dec bc
    inc c
    dec bc
    dec bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec c
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    dec bc
    dec bc
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    ld c, $08
    ld [$0808], sp
    ld c, $0e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0e0e], sp
    ld c, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0e0e], sp
    ld c, $0e
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $09
    add hl, bc
    add hl, bc
    ld [$0e0e], sp
    ld c, $0e
    ld c, $0e
    dec bc
    ld c, $0e
    ld c, $0e
    ld c, $09
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    nop
    inc b
    dec b
    ld b, $07
    ld [$0000], sp
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    nop
    jr nz, jr_025_46e7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_025_46f7

    ld a, [hl+]
    dec hl
    nop
    nop
    inc l
    dec l
    ld l, $2f
    jr nc, jr_025_4709

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_025_46e0

jr_025_46e0:
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_025_46e7:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    nop
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_025_46f7:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    nop
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_025_4709:
    ld e, a
    nop
    ld h, b
    ld h, c
    ld h, d
    ld h, e
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
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
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
    add b
    add c
    add d
    add e
    add h
    nop
    nop
    nop
    nop
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $09
    ld [$0e09], sp
    ld c, $09
    ld [$0e09], sp
    ld c, $0e
    ld c, $09
    add hl, bc
    ld [$0808], sp
    ld c, $09
    ld [$0808], sp
    add hl, bc
    ld c, $0e
    add hl, bc
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    ld [$0808], sp
    add hl, bc
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0809], sp
    ld [$0908], sp
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld [$080b], sp
    ld [$0908], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [$0808], sp
    dec bc
    ld [$0808], sp
    ld [$0e08], sp
    ld c, $0e
    ld c, $0d
    ld [$0808], sp
    ld a, [bc]
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld c, $0e
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld c, $0d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld c, $08
    ld [$0a0e], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld bc, $000e
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    db $10
    ld de, $1312
    ld bc, $0014
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_025_4861

    ld a, [de]
    dec de
    nop
    nop
    nop
    inc e
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    nop
    nop
    nop
    nop
    ld h, $27
    jr z, jr_025_488a

jr_025_4861:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_025_4869

jr_025_4869:
    nop
    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_025_48ac

    ld a, [hl-]
    ld bc, $003b
    nop
    nop
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    ld b, a
    ld c, b
    ld c, c

jr_025_488a:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld b, l
    ld c, a
    ld d, b
    nop
    nop
    nop
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld c, [hl]
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b

jr_025_48ac:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    nop
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $08
    ld [$0e0e], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $08
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $08
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $08
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    inc c
    inc c
    inc c
    dec bc
    inc c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    ld a, [bc]
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    ld a, a
    inc b
    dec b
    dec b
    inc b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1210
    inc de
    rlca
    nop
    inc d
    dec d
    ld d, $17
    ld [bc], a
    ld [bc], a
    jr jr_025_49be

    ld a, [de]
    dec de
    ld [bc], a
    inc e
    rlca
    nop
    ld e, $1f
    jr nz, jr_025_49d0

    ld [hl+], a
    inc hl
    inc h
    ld [bc], a
    ld [bc], a
    dec h
    ld h, $1c
    rlca
    daa
    jr z, jr_025_49e4

    ld a, [hl+]
    dec hl
    inc l

jr_025_49be:
    dec l
    ld l, $2f
    jr nc, jr_025_49f4

    ld [hl-], a
    inc e
    rlca
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_025_4a07

    ld a, [hl-]
    dec sp

jr_025_49d0:
    inc a
    dec a
    inc e
    rlca
    nop
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc e
    rlca
    ld c, c
    ld c, d

jr_025_49e4:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    rlca
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_025_49f4:
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    rlca
    nop
    inc d
    ld [bc], a
    ld [bc], a
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_025_4a07:
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rlca
    nop
    add hl, bc
    dec c
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    rlca
    nop
    inc d
    ld [bc], a
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld [bc], a
    ld [bc], a
    ld a, h
    ld a, l
    rlca
    ld a, [hl]
    ld a, a
    ld [bc], a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    ld [bc], a
    add a
    adc b
    rlca
    adc c
    adc d
    ld [bc], a
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    rlca
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec b
    dec c
    dec c
    dec l
    dec l
    dec c
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec l
    dec c
    dec c
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0d
    inc c
    inc c
    dec c
    dec c
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0d
    inc c
    inc c
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0c08], sp
    inc c
    dec c
    ld c, $0d
    inc c
    inc c
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0c08], sp
    inc c
    dec c
    ld c, $0d
    inc c
    inc c
    dec bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0c0c], sp
    dec c
    ld c, $0d
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec c
    ld c, $0d
    dec c
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld c, $0d
    dec c
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0d
    dec c
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0d
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    ld c, $0d
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec c
    dec c
    dec c
    ld c, $0d
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec c
    dec c
    dec c
    ld c, $00
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $1110
    db $10
    ld de, $1110
    db $10
    ld de, $1110
    db $10
    ld de, $1110
    nop
    ld bc, $0100
    ld bc, $0210
    inc bc
    inc b
    nop
    ld bc, $0001
    ld bc, $1110
    db $10
    ld de, $0605
    rlca
    ld [$0a09], sp
    dec bc
    nop
    db $10
    ld de, $0100
    ld bc, $0c00
    dec c
    ld c, $0f
    ld [de], a
    inc de
    inc d
    nop
    nop
    ld bc, $1110
    ld bc, $1615
    rla
    jr jr_025_4b6f

    ld a, [de]
    dec de
    inc e
    dec e
    db $10
    ld de, $0100
    nop
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    ld bc, $1110
    ld de, $2827

jr_025_4b6f:
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    db $10
    ld de, $0100
    db $10
    jr nc, jr_025_4bae

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_025_4b85

jr_025_4b85:
    ld bc, $1110
    db $10
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    db $10
    ld de, $0100
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld de, $4d11
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

jr_025_4bae:
    ld e, b
    ld de, $5911
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    db $10
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
    ld [hl], b
    ld [hl], c
    ld [hl], d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    ld c, $08
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0e0e], sp
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld c, $0d
    dec c
    ld c, $0b
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld c, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld c, $00
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc b
    dec bc
    inc c
    dec c
    ld c, $0f
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc b
    dec bc
    dec bc
    db $10
    ld de, $0b12
    inc de
    inc d
    dec bc
    dec bc
    dec bc
    dec bc
    dec d
    ld d, $17
    jr jr_025_4cdf

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    dec bc
    dec bc
    jr nz, jr_025_4cf1

    inc b
    dec bc
    dec bc
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_025_4d04

    ld a, [hl+]
    dec hl
    inc l
    inc b

jr_025_4cdf:
    dec l
    ld l, $2f
    jr nc, jr_025_4d15

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_025_4d25

    inc b
    scf
    ld a, [hl-]
    dec sp
    inc a

jr_025_4cf1:
    dec bc
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc b
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_025_4d04:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    inc b
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    rst RST_38
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_025_4d15:
    ld e, l
    inc b
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, h

jr_025_4d25:
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld l, h
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, a
    ld [hl], b
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], h
    ld [hl], l
    add h
    add l
    add [hl]
    add [hl]
    add a
    adc b
    adc c
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
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0c0c], sp
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    inc c
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc b
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
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $0e
    ld c, $2e
    ld c, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $0e
    ld c, $2e
    ld c, $0b
    dec bc
    dec bc
    dec hl
    dec bc
    dec bc
    dec bc
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc b
    dec bc
    inc c
    dec c
    ld c, $0f
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc b
    dec bc
    dec bc
    db $10
    ld de, $0b12
    adc d
    inc d
    dec bc
    dec bc
    dec bc
    dec bc
    dec d
    ld d, $17
    jr jr_025_4e67

    ld a, [de]
    dec de
    adc e
    adc h
    adc l
    adc [hl]
    dec bc
    dec bc
    jr nz, jr_025_4e79

    inc b
    dec bc
    dec bc
    ld [hl+], a
    inc hl
    inc h
    adc a
    sub b
    sub c
    sub d
    sub e
    ld a, [hl+]
    dec hl
    inc l
    inc b

jr_025_4e67:
    dec l
    ld l, $2f
    jr nc, jr_025_4e9d

    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    scf
    jr c, jr_025_4ead

    inc b
    scf
    ld a, [hl-]
    dec sp
    inc a

jr_025_4e79:
    dec bc
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld b, d
    ld b, e
    ld b, h
    inc b
    ld b, l
    ld b, [hl]
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
    ld d, c
    inc b
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    rst RST_38
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_025_4e9d:
    ld e, l
    inc b
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, h

jr_025_4ead:
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld l, h
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, a
    ld [hl], b
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], h
    ld [hl], l
    add h
    add l
    add [hl]
    add [hl]
    add a
    adc b
    adc c
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
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0c0c], sp
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    inc c
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc b
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
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $0e
    ld c, $2e
    ld c, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $0e
    ld c, $2e
    ld c, $0b
    dec bc
    dec bc
    dec hl
    dec bc
    dec bc
    dec bc
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc b
    dec bc
    inc c
    dec c
    ld c, $0f
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc b
    dec bc
    dec bc
    db $10
    ld de, $0b12
    adc d
    inc d
    dec bc
    dec bc
    dec bc
    dec bc
    add $c7
    ret z

    ret


    add hl, de
    ld a, [de]
    dec de
    adc e
    adc h
    adc l
    adc [hl]
    dec bc
    dec bc
    jr nz, jr_025_5001

    inc b
    dec bc
    dec bc
    ld [hl+], a
    inc hl
    inc h
    adc a
    sub b
    sub c
    sub d
    sub e
    ld a, [hl+]
    dec hl
    inc l
    inc b
    dec l
    ld l, $2f
    jr nc, jr_025_5025

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_025_5035

    inc b
    scf
    ld a, [hl-]
    dec sp
    inc a

jr_025_5001:
    dec bc
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc b
    ld b, l
    ld b, [hl]
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
    ld d, c
    inc b
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    sbc a
    rst RST_38
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_025_5025:
    ld e, l
    inc b
    sbc [hl]
    ld e, a
    ld h, b
    ld h, c
    and b
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, h

jr_025_5035:
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    and c
    and d
    and e
    and d
    and e
    and h
    and l
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    dec bc
    pop bc
    jp nz, $c3c3

    jp $c5c4


    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0c0c], sp
    inc c
    inc c
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    inc c
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
    dec bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
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
    dec bc
    dec c
    dec c
    dec c
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
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc b
    dec bc
    inc c
    dec c
    ld c, $0f
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc b
    dec bc
    dec bc
    db $10
    ld de, $0b12
    adc d
    inc d
    dec bc
    dec bc
    dec bc
    dec bc
    add $c7
    ret z

    ret


    add hl, de
    ld a, [de]
    dec de
    adc e
    adc h
    adc l
    adc [hl]
    dec bc
    dec bc
    jr nz, jr_025_5189

    inc b
    dec bc
    dec bc
    ld [hl+], a
    inc hl
    inc h
    adc a
    sub b
    sub c
    sub d
    sub e
    ld a, [hl+]
    dec hl
    inc l
    inc b
    dec l
    ld l, $2f
    jr nc, jr_025_51ad

    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    scf
    jr c, jr_025_51bd

    inc b
    scf
    ld a, [hl-]
    dec sp
    inc a

jr_025_5189:
    dec bc
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld b, d
    ld b, e
    ld b, h
    inc b
    ld b, l
    ld b, [hl]
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
    ld d, c
    inc b
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    sbc a
    rst RST_38
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_025_51ad:
    ld e, l
    inc b
    sbc [hl]
    ld e, a
    ld h, b
    ld h, c
    and b
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, h

jr_025_51bd:
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    and c
    and d
    and e
    and d
    and e
    and h
    and l
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    dec bc
    pop bc
    jp nz, $c3c3

    jp $c5c4


    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0c0c], sp
    inc c
    inc c
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    dec bc
    inc c
    inc c
    inc c
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
    dec bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
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
    dec bc
    dec c
    dec c
    dec c
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
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    nop
    ld bc, $0f02
    cpl
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rra
    jr nz, jr_025_52de

    ld [hl+], a
    db $10
    ld de, $0f12
    ccf
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    rra
    jr nc, jr_025_52fc

    ld [hl-], a
    inc bc
    inc b
    dec b
    rrca
    ld b, l
    ld b, [hl]
    ld l, d
    ld l, e
    ld a, d
    ld a, e
    rra
    inc hl
    inc h
    dec h
    inc de
    inc d
    dec d
    rrca

jr_025_52de:
    ld d, l
    ld d, [hl]
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    rra
    inc sp
    inc [hl]
    dec [hl]
    ld b, $07
    ld [$470f], sp
    ld c, b
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    rra
    ld h, $27
    jr z, jr_025_530d

    rla
    jr jr_025_5309

    ld d, a
    ld e, b

jr_025_52fc:
    add b
    add c
    add d
    add e
    rra
    ld [hl], $37
    jr c, jr_025_530e

    ld a, [bc]
    dec bc
    rrca
    ld c, c

jr_025_5309:
    ld c, d
    sub b
    sub c
    sub d

jr_025_530d:
    sub e

jr_025_530e:
    rra
    add hl, hl
    ld a, [hl+]
    dec hl
    add hl, de
    ld a, [de]
    dec de
    rrca
    ld e, c
    ld e, d
    add h
    add l
    add [hl]
    add a
    rra
    add hl, sp
    ld a, [hl-]
    dec sp
    cp h
    dec c
    ld c, $0f
    ld c, e
    ld c, h
    sub h
    sub l
    sub [hl]
    sub a
    rra
    inc l
    dec l
    ld l, $a5
    and h
    and e
    rrca
    ld e, e
    ld e, h
    adc b
    adc c
    sbc b
    sbc c
    rra
    inc a
    dec a
    ld a, $a8
    and a
    and [hl]
    ld h, b
    ld h, c
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, d
    ld h, d
    xor [hl]
    xor l
    xor h
    xor e
    xor d
    xor c
    ld a, c
    ld a, c
    ld a, c
    halt
    ld [hl], a
    ld a, b
    ld [hl], d
    ld [hl], d
    or h
    or e
    or d
    or c
    or b
    xor a
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld l, c
    ld [hl], e
    ld [hl], e
    ld [hl], e
    cp d
    cp c
    cp b
    or a
    or [hl]
    or l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    inc c
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec l
    dec l
    inc l
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    ld a, [hl+]
    ld a, [hl+]
    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2e2e], sp
    ld l, $2e
    ld a, [hl+]
    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$2e2e], sp
    ld l, $2e
    ld a, [hl+]
    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$2e2e], sp
    ld l, $2e
    ld l, $2a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    ld bc, $0f02
    cpl
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rra
    jr nz, jr_025_5466

    ld [hl+], a
    db $10
    ld de, $0f12
    ccf
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    rra
    jr nc, jr_025_5484

    ld [hl-], a
    inc bc
    inc b
    dec b
    rrca
    ld b, l
    ld b, [hl]
    ld l, d
    ld l, e
    ld a, d
    ld a, e
    rra
    inc hl
    inc h
    dec h
    inc de
    inc d
    dec d
    rrca

jr_025_5466:
    ld d, l
    ld d, [hl]
    adc d
    adc e
    sbc d
    sbc e
    rra
    inc sp
    inc [hl]
    dec [hl]
    ld b, $07
    ld [$470f], sp
    ld c, b
    adc h
    rst RST_38
    rst RST_38
    and d
    rra
    ld h, $27
    jr z, jr_025_5495

    rla
    jr jr_025_5491

    ld d, a
    ld e, b

jr_025_5484:
    sbc h
    rst RST_38
    rst RST_38
    and d
    rra
    ld [hl], $37
    jr c, jr_025_5496

    ld a, [bc]
    dec bc
    rrca
    ld c, c

jr_025_5491:
    ld c, d
    adc l
    rst RST_38
    rst RST_38

jr_025_5495:
    and d

jr_025_5496:
    rra
    add hl, hl
    ld a, [hl+]
    dec hl
    add hl, de
    ld a, [de]
    dec de
    rrca
    ld e, c
    ld e, d
    adc l
    rst RST_38
    rst RST_38
    and d
    rra
    add hl, sp
    ld a, [hl-]
    dec sp
    cp h
    dec c
    ld c, $0f
    ld c, e
    ld c, h
    sbc l
    rst RST_38
    and b
    and c
    rra
    inc l
    dec l
    ld l, $a5
    and h
    and e
    rrca
    ld e, e
    ld e, h
    adc [hl]
    adc a
    sbc [hl]
    sbc a
    rra
    inc a
    dec a
    ld a, $a8
    and a
    and [hl]
    ld h, b
    ld h, c
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, d
    ld h, d
    xor [hl]
    xor l
    xor h
    xor e
    xor d
    xor c
    ld a, c
    ld a, c
    ld a, c
    halt
    ld [hl], a
    ld a, b
    ld [hl], d
    ld [hl], d
    or h
    or e
    or d
    or c
    or b
    xor a
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld l, c
    ld [hl], e
    ld [hl], e
    ld [hl], e
    cp d
    cp c
    cp b
    or a
    or [hl]
    or l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0000], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0000], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0000], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0000], sp
    ld [$0b08], sp
    dec bc
    dec bc
    inc c
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0900], sp
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec l
    dec l
    inc l
    ld [$0909], sp
    ld [$0909], sp
    add hl, bc
    ld [$0b0b], sp
    dec bc
    ld a, [hl+]
    ld a, [hl+]
    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2e2e], sp
    ld l, $2e
    ld a, [hl+]
    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$2e2e], sp
    ld l, $2e
    ld a, [hl+]
    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$2e2e], sp
    ld l, $2e
    ld l, $2a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    ld bc, $0f02
    cpl
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rra
    jr nz, jr_025_55ee

    ld [hl+], a
    db $10
    ld de, $0f12
    ccf
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    rra
    jr nc, jr_025_560c

    ld [hl-], a
    inc bc
    inc b
    dec b
    rrca
    ld b, l
    ld b, [hl]
    ld l, d
    ld l, e
    ld a, d
    ld a, e
    rra
    inc hl
    inc h
    dec h
    inc de
    inc d
    dec d
    rrca

jr_025_55ee:
    ld d, l
    ld d, [hl]
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    rra
    inc sp
    inc [hl]
    dec [hl]
    ld b, $07
    ld [$470f], sp
    ld c, b
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    rra
    ld h, $27
    jr z, jr_025_561d

    rla
    jr jr_025_5619

    ld d, a
    ld e, b

jr_025_560c:
    add b
    add c
    add d
    add e
    rra
    ld [hl], $37
    jr c, jr_025_561e

    ld a, [bc]
    dec bc
    rrca
    ld c, c

jr_025_5619:
    ld c, d
    sub b
    sub c
    sub d

jr_025_561d:
    sub e

jr_025_561e:
    rra
    add hl, hl
    ld a, [hl+]
    dec hl
    add hl, de
    ld a, [de]
    dec de
    rrca
    ld e, c
    ld e, d
    add h
    add l
    add [hl]
    add a
    rra
    add hl, sp
    ld a, [hl-]
    dec sp
    inc c
    dec c
    ld c, $0f
    ld c, e
    ld c, h
    sub h
    sub l
    sub [hl]
    sub a
    rra
    inc l
    dec l
    cp e
    inc e
    dec e
    ld e, $0f
    ld e, e
    ld e, h
    adc b
    adc c
    sbc b
    sbc c
    rra
    and e
    and h
    and l
    ld h, d
    ld h, d
    ld h, e
    ld h, b
    ld h, c
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld h, a
    and [hl]
    and a
    xor b
    ld [hl], d
    ld c, [hl]
    ld c, a
    ld [hl], b
    ld [hl], c
    ld a, c
    ld a, c
    ld a, c
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    ld c, l
    ld e, [hl]
    ld e, a
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    xor a
    or b
    or c
    or d
    or e
    or h
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    inc c
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0c08], sp
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld c, $0e
    ld c, $0e
    ld c, $00
    ld bc, $0f02
    cpl
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rra
    jr nz, jr_025_5776

    ld [hl+], a
    db $10
    ld de, $0f12
    ccf
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    rra
    jr nc, jr_025_5794

    ld [hl-], a
    inc bc
    inc b
    dec b
    rrca
    ld b, l
    ld b, [hl]
    ld l, d
    ld l, e
    ld a, d
    ld a, e
    rra
    inc hl
    inc h
    dec h
    inc de
    inc d
    dec d
    rrca

jr_025_5776:
    ld d, l
    ld d, [hl]
    adc d
    adc e
    sbc d
    sbc e
    rra
    inc sp
    inc [hl]
    dec [hl]
    ld b, $07
    ld [$470f], sp
    ld c, b
    adc h
    rst RST_38
    rst RST_38
    and d
    rra
    ld h, $27
    jr z, jr_025_57a5

    rla
    jr jr_025_57a1

    ld d, a
    ld e, b

jr_025_5794:
    sbc h
    rst RST_38
    rst RST_38
    and d
    rra
    ld [hl], $37
    jr c, jr_025_57a6

    ld a, [bc]
    dec bc
    rrca
    ld c, c

jr_025_57a1:
    ld c, d
    adc l
    rst RST_38
    rst RST_38

jr_025_57a5:
    and d

jr_025_57a6:
    rra
    add hl, hl
    ld a, [hl+]
    dec hl
    add hl, de
    ld a, [de]
    dec de
    rrca
    ld e, c
    ld e, d
    adc l
    rst RST_38
    rst RST_38
    and d
    rra
    add hl, sp
    ld a, [hl-]
    dec sp
    inc c
    dec c
    ld c, $0f
    ld c, e
    ld c, h
    sbc l
    rst RST_38
    and b
    and c
    rra
    inc l
    dec l
    cp e
    inc e
    dec e
    ld e, $0f
    ld e, e
    ld e, h
    adc [hl]
    adc a
    sbc [hl]
    sbc a
    rra
    and e
    and h
    and l
    ld h, d
    ld h, d
    ld h, e
    ld h, b
    ld h, c
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld h, a
    and [hl]
    and a
    xor b
    ld [hl], d
    ld c, [hl]
    ld c, a
    ld [hl], b
    ld [hl], c
    ld a, c
    ld a, c
    ld a, c
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    ld c, l
    ld e, [hl]
    ld e, a
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    xor a
    or b
    or c
    or d
    or e
    or h
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0000], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0000], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0000], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0000], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0900], sp
    add hl, bc
    ld [$0b0b], sp
    inc c
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    ld [$0909], sp
    add hl, bc
    ld [$0d0c], sp
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld c, $0e
    ld c, $0e
    ld c, $00
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0304], sp
    ld bc, $0002
    add hl, bc
    ld bc, $0a02
    dec bc
    inc c
    dec c
    ld c, $0f
    dec bc
    ld a, [bc]
    ld bc, $0902
    db $10
    ld bc, $1102
    ld [de], a
    inc de
    inc d
    inc d
    inc de
    ld [de], a
    ld de, $0201
    db $10
    dec d
    ld bc, $1602
    rla
    jr jr_025_591a

    ld a, [de]
    dec de
    rla
    ld d, $01
    ld [bc], a
    dec d
    inc e
    ld bc, $1602
    dec e
    ld e, $1f
    jr nz, @+$23

    dec e
    ld d, $01
    ld [bc], a
    inc e
    ld [hl+], a
    ld bc, $1602

jr_025_591a:
    inc hl
    inc h
    dec h
    ld h, $27
    ld e, c
    ld d, $01
    ld [bc], a
    ld [hl+], a
    jr z, jr_025_5927

    ld [bc], a

jr_025_5927:
    ld d, $29
    inc h
    dec h
    ld h, $27
    add hl, hl
    ld d, $01
    ld [bc], a
    jr z, jr_025_595d

    ld bc, $1602
    dec hl
    inc h
    dec h
    ld h, $27
    dec hl
    ld d, $01
    ld [bc], a
    ld a, [hl+]
    inc l
    dec l
    ld l, $2f
    jr nc, jr_025_5977

    ld [hl-], a
    inc sp
    inc [hl]
    jr nc, jr_025_5961

    dec l
    ld l, $2c
    db $10
    dec [hl]
    ld [hl], $10
    jr c, jr_025_598d

    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    jr c, jr_025_5969

    dec [hl]
    ld [hl], $10
    dec sp

jr_025_595d:
    inc a
    dec a
    ld a, $3f

jr_025_5961:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ccf
    ld a, $3d
    inc a

jr_025_5969:
    dec sp
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, l
    ld b, h
    ld b, e
    ld b, d

jr_025_5977:
    ld b, c
    db $10
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, c
    ld c, b
    ld b, a
    ld b, [hl]
    db $10
    db $10
    db $10
    ld c, d
    ld c, e
    ld b, b
    ld b, b
    ld b, b

jr_025_598d:
    ld b, b
    ld b, b
    ld b, b
    ld c, e
    ld c, d
    db $10
    db $10
    ld c, $08
    ld [$090e], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld l, $08
    ld [$0e2e], sp
    ld [$0e08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld l, $08
    ld [$082e], sp
    ld [$0e08], sp
    dec c
    dec c
    dec c
    dec l
    dec l
    dec l
    ld l, $08
    ld [$0a08], sp
    ld [$0e08], sp
    dec c
    ld [$0808], sp
    ld [$2e2d], sp
    ld [$0a08], sp
    ld a, [bc]
    ld [$0e08], sp
    dec c
    ld [$0808], sp
    ld [$2e2d], sp
    ld [$0a08], sp
    ld a, [bc]
    ld [$0e08], sp
    dec c
    ld [$0808], sp
    ld [$2e0d], sp
    ld [$0a08], sp
    ld c, $08
    ld [$0d0e], sp
    ld [$0808], sp
    ld [$2e2d], sp
    ld [$2e08], sp
    ld c, $08
    ld [$0d0e], sp
    ld [$0808], sp
    ld [$2e2d], sp
    ld [$2e08], sp
    ld c, $08
    ld [$0d0e], sp
    ld [$0808], sp
    ld [$2e2d], sp
    ld [$2e08], sp
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec hl
    ld [$0808], sp
    ld [$0c0a], sp
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    dec hl
    inc l
    inc l
    ld a, [hl+]
    ld a, [bc]
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    dec hl
    inc l
    inc l
    ld a, [hl+]
    ld [$0c0c], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    dec hl
    inc l
    inc l
    ld [$0808], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    dec hl
    ld [$0008], sp
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0304], sp
    ld bc, $0002
    add hl, bc
    ld bc, $0a02
    dec bc
    inc c
    dec c
    ld c, $0f
    dec bc
    ld a, [bc]
    ld bc, $0902
    db $10
    ld bc, $1102
    ld [de], a
    inc de
    inc d
    inc d
    inc de
    ld [de], a
    ld de, $0201
    db $10
    dec d
    ld bc, $1602
    rla
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, [hl]
    rla
    ld d, $01
    ld [bc], a
    dec d
    inc e
    ld bc, $1602
    dec e
    ld c, a
    ld d, b
    ld d, c
    ld d, c
    dec e
    ld d, $01
    ld [bc], a
    inc e
    ld [hl+], a
    ld bc, $1602
    inc hl
    db $10
    ld d, d
    ld d, e
    ld d, e
    ld e, c
    ld d, $01
    ld [bc], a
    ld [hl+], a
    jr z, jr_025_5aaf

    ld [bc], a

jr_025_5aaf:
    ld d, $29
    db $10
    ld d, d
    ld d, e
    ld d, e
    add hl, hl
    ld d, $01
    ld [bc], a
    jr z, jr_025_5ae5

    ld bc, $1602
    dec hl
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, b
    dec hl
    ld d, $01
    ld [bc], a
    ld a, [hl+]
    inc l
    dec l
    ld l, $2f
    jr nc, jr_025_5b22

    ld d, l
    ld d, l
    ld d, l
    jr nc, jr_025_5ae9

    dec l
    ld l, $2c
    db $10
    dec [hl]
    ld [hl], $10
    jr c, jr_025_5b15

    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    jr c, jr_025_5af1

    dec [hl]
    ld [hl], $10
    dec sp

jr_025_5ae5:
    inc a
    dec a
    ld a, $3f

jr_025_5ae9:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ccf
    ld a, $3d
    inc a

jr_025_5af1:
    dec sp
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, l
    ld b, h
    ld b, e
    ld b, d
    ld b, c
    db $10
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, c
    ld c, b
    ld b, a
    ld b, [hl]
    db $10
    db $10
    db $10
    ld c, d
    ld c, e
    ld b, b
    ld b, b
    ld b, b

jr_025_5b15:
    ld b, b
    ld b, b
    ld b, b
    ld c, e
    ld c, d
    db $10
    db $10
    ld c, $08
    ld [$090e], sp
    add hl, bc

jr_025_5b22:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld l, $08
    ld [$0e2e], sp
    ld [$0e08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld l, $08
    ld [$082e], sp
    ld [$0e08], sp
    dec c
    dec c
    dec c
    dec l
    dec l
    dec l
    ld l, $08
    ld [$0a08], sp
    ld [$0e08], sp
    dec c
    inc c
    inc c
    inc c
    inc c
    dec l
    ld l, $08
    ld [$0a0a], sp
    ld [$0e08], sp
    dec c
    inc c
    inc c
    inc c
    inc c
    dec l
    ld l, $08
    ld [$0a0a], sp
    ld [$0e08], sp
    dec c
    ld [$0c0c], sp
    inc c
    dec c
    ld l, $08
    ld [$0e0a], sp
    ld [$0e08], sp
    dec c
    ld [$0c0c], sp
    inc c
    dec l
    ld l, $08
    ld [$0e2e], sp
    ld [$0e08], sp
    dec c
    inc c
    inc c
    inc c
    inc c
    dec l
    ld l, $08
    ld [$0e2e], sp
    ld [$0e08], sp
    dec c
    inc c
    inc c
    inc c
    inc c
    dec l
    ld l, $08
    ld [$082e], sp
    ld [$0808], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    ld [$0808], sp
    ld [$0c0a], sp
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    dec hl
    inc l
    inc l
    ld a, [hl+]
    ld a, [bc]
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    dec hl
    inc l
    inc l
    ld a, [hl+]
    ld [$0c0c], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    dec hl
    inc l
    inc l
    ld [$0808], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    dec hl
    ld [$0008], sp
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
    jr jr_025_5c12

    ld a, [de]
    dec de
    inc e
    db $10
    ld hl, $1722
    rla
    rla
    ld d, $17
    rla
    jr @+$0c

    ld a, [de]
    dec de
    ld c, $10
    ld sp, $1732
    rla
    rla
    ld d, $17

jr_025_5c12:
    rla
    jr jr_025_5c2e

    ld a, [de]
    dec de
    ld e, $10
    ld hl, $1732
    rla
    rla
    ld d, $17
    rla
    jr @+$0c

    ld a, [de]
    dec de
    ld e, $10
    ld sp, $1732
    rla
    rla
    ld d, $17

jr_025_5c2e:
    rla
    jr @+$0c

    ld a, [de]
    dec de
    ld e, $10
    rrca
    ld [hl-], a
    rla
    rla
    rla
    ld d, $17
    rla
    jr jr_025_5c58

    jr nz, @+$1f

    dec h
    db $10
    rra
    ld [hl-], a
    rla
    rla
    rla
    ld d, $17
    rla
    jr @+$0c

    jr nc, jr_025_5c7c

    ld h, $10
    cpl
    ld [hl-], a
    rla
    rla
    rla
    ld d, $17

jr_025_5c58:
    rla
    jr jr_025_5c74

    jr nc, @+$30

    ld h, $10
    rrca
    ld [hl-], a
    rla
    rla
    rla
    ld d, $17
    rla
    jr jr_025_5c82

    inc hl
    inc h
    ld e, $10
    rra
    ld [hl-], a
    rla
    rla
    rla
    ld d, $17

jr_025_5c74:
    rla
    jr @+$0c

    ld a, [de]
    dec de
    ld e, $10
    cpl

jr_025_5c7c:
    ld [hl-], a
    rla
    rla
    rla
    ld d, $17

jr_025_5c82:
    rla
    jr @+$0c

    ld a, [de]
    dec de
    ld e, $10
    ld sp, $1732
    rla
    rla
    ld d, $17
    rla
    jr jr_025_5cac

    ld a, [de]
    dec de
    ld e, $10
    ld hl, $1732
    rla
    rla
    ld d, $17
    rla
    jr jr_025_5cab

    ld a, [de]
    dec de
    ld e, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_025_5cab:
    add hl, bc

jr_025_5cac:
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
    nop
    ld bc, $0302
    inc b
    dec b
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $0a
    dec bc
    inc c
    dec c
    db $10
    ld de, $2827
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    ccf
    scf
    add hl, de
    ld a, [de]
    dec de
    inc e
    db $10
    ld hl, $3938
    ld a, [hl-]
    dec sp
    inc a
    inc a
    dec sp
    scf
    ld a, [bc]
    ld a, [de]
    dec de
    ld c, $10
    ld sp, $3938
    ld a, [hl-]
    dec a
    ld a, $3e
    dec a
    scf
    add hl, de
    ld a, [de]
    dec de
    ld e, $10
    ld hl, $3938
    ld a, [hl-]
    dec a
    ld a, $3e
    dec a
    scf
    ld a, [bc]
    ld a, [de]
    dec de
    ld e, $10
    ld sp, $3938
    ld a, [hl-]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    scf
    ld a, [bc]
    ld a, [de]
    dec de
    ld e, $10
    rrca
    jr c, jr_025_5df9

    ld a, [hl-]
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    scf
    add hl, de
    jr nz, @+$1f

    dec h
    db $10
    rra
    jr c, jr_025_5e07

    ld a, [hl-]
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    scf
    ld a, [bc]
    jr nc, jr_025_5e04

    ld h, $10
    cpl
    jr c, jr_025_5e15

    ld a, [hl-]
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    scf
    add hl, de
    jr nc, @+$30

    ld h, $10
    rrca
    jr c, jr_025_5e32

    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    add hl, de
    inc hl
    inc h
    ld e, $10
    rra
    jr c, @+$5a

    ld e, c

jr_025_5df9:
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, [bc]
    ld a, [de]
    dec de
    ld e, $10
    cpl

jr_025_5e04:
    jr c, jr_025_5e6e

    ld l, c

jr_025_5e07:
    ld l, d
    ld l, e
    ld l, e
    ld l, l
    ld l, [hl]
    ld a, [bc]
    ld a, [de]
    dec de
    ld e, $10
    ld sp, $6038
    ld h, c

jr_025_5e15:
    ld h, d
    ld h, e
    ld [hl], b
    ld [hl], c
    ld [hl], d
    add hl, de
    ld a, [de]
    dec de
    ld e, $10
    ld hl, $6038
    ld h, c
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], d
    ld a, [bc]
    ld a, [de]
    dec de
    ld e, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_025_5e32:
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
    inc c
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
    ld c, $2e
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
    ld c, $2e
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
    ld c, $2e
    add hl, bc

jr_025_5e6e:
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
    ld c, $0e
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
    ld c, $0d
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
    dec c
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
    dec c
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
    inc c
    inc c
    inc c
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
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$090b], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    ld bc, $0302
    inc b
    dec b
    inc sp
    inc [hl]
    dec [hl]
    ld l, a
    ld a, [bc]
    dec bc
    inc c
    dec c
    db $10
    ld de, $7727
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    add hl, de
    ld a, [de]
    dec de
    inc e
    db $10
    ld hl, $7e38
    ld a, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld e, a
    ld a, [bc]
    ld a, [de]
    dec de
    ld c, $10
    ld sp, $7e38
    add b
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    add hl, de
    ld a, [de]
    dec de
    ld e, $10
    ld hl, $7e38
    add c
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld a, [bc]
    ld a, [de]
    dec de
    ld e, $10
    ld sp, $7e38
    add d
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld a, [bc]
    ld a, [de]
    dec de
    ld e, $10
    rrca
    jr c, jr_025_5fc6

    add d
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    add hl, de
    jr nz, @+$1f

    dec h
    db $10
    rra
    jr c, jr_025_5fd4

    add d
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld a, [bc]
    jr nc, jr_025_5f8c

    ld h, $10
    cpl
    jr c, jr_025_5fe2

    add d
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    add hl, de
    jr nc, @+$30

    ld h, $10
    rrca
    jr c, jr_025_5ff0

    add d
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    add hl, de
    inc hl
    inc h
    ld e, $10
    rra
    jr c, jr_025_5ffe

    add d
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld a, [bc]
    ld a, [de]
    dec de
    ld e, $10
    cpl

jr_025_5f8c:
    jr c, jr_025_600c

    add d
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld a, [bc]
    ld a, [de]
    dec de
    ld e, $10
    ld sp, $7e38
    add d
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    add hl, de
    ld a, [de]
    dec de
    ld e, $10
    ld hl, $7e38
    add d
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld a, [bc]
    ld a, [de]
    dec de
    ld e, $09
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

jr_025_5fc6:
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc

jr_025_5fd4:
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc

jr_025_5fe2:
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc

jr_025_5ff0:
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc

jr_025_5ffe:
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc

jr_025_600c:
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    ld bc, $0202
    ld [bc], a
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
    jr jr_025_60a6

    ld a, [de]
    dec de
    inc e
    dec e
    jr nz, jr_025_60b7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_025_60c4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr nc, jr_025_60d5

    ld [hl-], a
    inc sp

jr_025_60a6:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_025_60e5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld d, [hl]

jr_025_60b7:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, l

jr_025_60c4:
    ld d, [hl]
    ld h, a
    ld e, b
    ld e, c
    ld d, [hl]
    ld e, e
    ld e, h
    ld e, l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b

jr_025_60d5:
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d

jr_025_60e5:
    ld a, e
    ld a, h
    ld a, l
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    and b
    and c
    ld d, [hl]
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    add hl, hl
    add hl, de
    and d
    xor [hl]
    ld d, a
    sbc a
    sbc a
    ld d, a
    ld e, d
    ld b, [hl]
    inc b
    ld d, d
    ld d, e
    ld d, h
    ccf
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    ld d, [hl]
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a
    ld d, [hl]
    adc [hl]
    adc a
    sbc [hl]
    ld c, $0f
    ld e, $1f
    ld l, $2f
    xor a
    ld e, a
    ld d, [hl]
    ld d, [hl]
    xor a
    ld e, a
    cpl
    ld a, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0e08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld l, $09
    ld [$0808], sp
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld l, $09
    ld [$0808], sp
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $08
    ld [$080e], sp
    add hl, bc
    ld [$0808], sp
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $08
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a09], sp
    add hl, bc
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    ld a, [bc]
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0d0d], sp
    dec c
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    dec c
    nop
    ld bc, $0302
    inc b
    dec b
    and l
    adc [hl]
    adc a
    and l
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    db $10
    ld de, $1312
    inc d
    dec d
    and l
    sbc [hl]
    adc a
    and l
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld b, $07
    ld [$0a09], sp
    dec bc
    and [hl]
    sbc a
    and b
    and l
    ld c, [hl]
    ld c, a
    ld h, b
    ld h, c
    ld d, $17
    jr jr_025_6247

    ld a, [de]
    dec de
    and a
    and c
    and d
    xor d
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    inc c
    dec c
    ld c, $0f
    jr nz, jr_025_625f

    xor b
    adc [hl]
    adc a
    xor b
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    inc e

jr_025_6247:
    dec e
    ld e, $1f
    jr nc, jr_025_627d

    xor c
    and e
    and h
    xor c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    add d
    add e
    add h
    add l
    ld h, [hl]

jr_025_625f:
    ld h, a
    ld l, b
    ld l, c
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    sub d
    sub e
    sub h
    sub l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    add [hl]
    add a
    adc b
    adc c
    ld l, d
    ld l, e
    ld l, h

jr_025_627d:
    ld l, l
    jr c, jr_025_62b9

    ld a, [hl-]
    dec sp
    inc a
    dec a
    sub [hl]
    sub a
    sbc b
    sbc c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld l, $2f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    adc d
    adc d
    adc d
    adc d
    ld l, [hl]
    ld l, a
    add b
    add c
    ld a, $3f
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    adc l
    adc l
    adc l
    sbc l
    ld a, [hl]
    ld a, a
    sub b
    sub c
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    adc e
    adc e
    adc e
    adc e
    adc e
    adc h
    sbc e
    sbc h
    ld d, h
    ld d, l
    ld d, [hl]

jr_025_62b9:
    ld d, a
    ld e, b
    ld e, c
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c0c], sp
    ld [$0808], sp
    jr z, jr_025_62db

    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c0c], sp
    ld [$0808], sp

jr_025_62db:
    jr z, jr_025_62e9

    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c0c], sp
    ld [$0808], sp

jr_025_62e9:
    jr z, @+$0e

    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0828], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0828], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    nop
    ld bc, $0302
    inc b
    dec b
    xor e
    rst RST_38
    rst RST_38
    xor e
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    db $10
    ld de, $1312
    inc d
    dec d
    xor e
    rst RST_38
    rst RST_38
    xor e
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld b, $07
    ld [$0a09], sp
    dec bc
    xor e
    rst RST_38
    rst RST_38
    or c
    ld c, [hl]
    ld c, a
    ld h, b
    ld h, c
    ld d, $17
    jr jr_025_63cf

    ld a, [de]
    dec de
    xor h
    rst RST_38
    rst RST_38
    or d
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    inc c
    dec c
    ld c, $0f
    jr nz, jr_025_63e7

    xor l
    rst RST_38
    rst RST_38
    or e
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    inc e

jr_025_63cf:
    dec e
    ld e, $1f
    jr nc, jr_025_6405

    xor [hl]
    xor a
    or b
    or h
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    add d
    add e
    add h
    add l
    ld h, [hl]

jr_025_63e7:
    ld h, a
    ld l, b
    ld l, c
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    sub d
    sub e
    sub h
    sub l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    add [hl]
    add a
    adc b
    adc c
    ld l, d
    ld l, e
    ld l, h

jr_025_6405:
    ld l, l
    jr c, jr_025_6441

    ld a, [hl-]
    dec sp
    inc a
    dec a
    sub [hl]
    sub a
    sbc b
    sbc c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld l, $2f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    adc d
    adc d
    adc d
    adc d
    ld l, [hl]
    ld l, a
    add b
    add c
    ld a, $3f
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    adc l
    adc l
    adc l
    sbc l
    ld a, [hl]
    ld a, a
    sub b
    sub c
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    adc e
    adc e
    adc e
    adc e
    adc e
    adc h
    sbc e
    sbc h
    ld d, h
    ld d, l
    ld d, [hl]

jr_025_6441:
    ld d, a
    ld e, b
    ld e, c
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c0c], sp
    ld [$0303], sp
    jr z, jr_025_6463

    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c0c], sp
    ld [$0303], sp

jr_025_6463:
    jr z, jr_025_6471

    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c0c], sp
    ld [$0303], sp

jr_025_6471:
    ld [$0c0c], sp
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0308], sp
    inc bc
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld [$0808], sp
    ld [$0308], sp
    inc bc
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    nop
    ld bc, $0302
    inc b
    dec b
    and [hl]
    sbc [hl]
    sbc a
    and [hl]
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    db $10
    ld de, $1312
    inc d
    dec d
    and [hl]
    adc a
    sbc a
    and [hl]
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld b, $07
    ld [$0a09], sp
    dec bc
    and a
    and b
    and c
    and [hl]
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld d, $17
    jr jr_025_6557

    ld a, [de]
    dec de
    xor b
    and d
    and e
    xor e
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    inc c
    dec c
    ld c, $0f
    jr nz, jr_025_656f

    xor c
    sbc [hl]
    sbc a
    xor c
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    inc e

jr_025_6557:
    dec e
    ld e, $1f
    jr nc, jr_025_658d

    xor d
    and h
    and l
    xor d
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    add l
    add [hl]
    add a
    adc b
    ld h, b

jr_025_656f:
    ld h, c
    ld h, d
    ld h, e
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    sub l
    sub [hl]
    sub a
    sbc b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    adc c
    adc d
    adc e
    adc h
    ld h, h
    ld h, l
    ld h, [hl]

jr_025_658d:
    ld h, a
    jr c, jr_025_65c9

    ld a, [hl-]
    dec sp
    inc a
    dec a
    sbc c
    sbc d
    sbc e
    sbc h
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld l, $2f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    adc l
    adc l
    adc l
    adc l
    adc [hl]
    ld l, b
    ld l, c
    ld l, d
    ld a, $3f
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    sbc l
    sbc l
    ld l, [hl]
    ld l, a
    add b
    ld a, b
    ld a, c
    ld a, d
    add e
    add h
    sub e
    sub h
    sub h
    sub h
    sub h
    sub h
    ld a, [hl]
    ld a, a
    sub b
    ld l, e
    ld l, h
    ld l, l
    sub d
    sub d
    sub d

jr_025_65c9:
    sub d
    sub d
    sub d
    sub d
    sub d
    add c
    add d
    sub c
    ld a, e
    ld a, h
    ld a, l
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c0c], sp
    ld [$0808], sp
    jr z, jr_025_65eb

    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c0c], sp
    ld [$0808], sp

jr_025_65eb:
    jr z, jr_025_65f9

    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c0c], sp
    ld [$0808], sp

jr_025_65f9:
    jr z, @+$0e

    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0828], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0828], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $00
    ld bc, $0302
    inc b
    dec b
    xor h
    rst RST_38
    rst RST_38
    xor h
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    db $10
    ld de, $1312
    inc d
    dec d
    xor h
    rst RST_38
    rst RST_38
    xor h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld b, $07
    ld [$0a09], sp
    dec bc
    xor h
    rst RST_38
    rst RST_38
    or d
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld d, $17
    jr jr_025_66df

    ld a, [de]
    dec de
    xor l
    rst RST_38
    rst RST_38
    or e
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    inc c
    dec c
    ld c, $0f
    jr nz, jr_025_66f7

    xor [hl]
    rst RST_38
    rst RST_38
    or h
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    inc e

jr_025_66df:
    dec e
    ld e, $1f
    jr nc, jr_025_6715

    xor a
    or b
    or c
    or l
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    add l
    add [hl]
    add a
    adc b
    ld h, b

jr_025_66f7:
    ld h, c
    ld h, d
    ld h, e
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    sub l
    sub [hl]
    sub a
    sbc b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    adc c
    adc d
    adc e
    adc h
    ld h, h
    ld h, l
    ld h, [hl]

jr_025_6715:
    ld h, a
    jr c, jr_025_6751

    ld a, [hl-]
    dec sp
    inc a
    dec a
    sbc c
    sbc d
    sbc e
    sbc h
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld l, $2f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    adc l
    adc l
    adc l
    adc l
    adc [hl]
    ld l, b
    ld l, c
    ld l, d
    ld a, $3f
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    sbc l
    sbc l
    ld l, [hl]
    ld l, a
    add b
    ld a, b
    ld a, c
    ld a, d
    add e
    add h
    sub e
    sub h
    sub h
    sub h
    sub h
    sub h
    ld a, [hl]
    ld a, a
    sub b
    ld l, e
    ld l, h
    ld l, l
    sub d
    sub d
    sub d

jr_025_6751:
    sub d
    sub d
    sub d
    sub d
    sub d
    add c
    add d
    sub c
    ld a, e
    ld a, h
    ld a, l
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c0c], sp
    ld [$0808], sp
    jr z, jr_025_6773

    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c0c], sp
    ld [$0808], sp

jr_025_6773:
    jr z, jr_025_6781

    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c0c], sp
    ld [$0808], sp

jr_025_6781:
    ld [$0c0c], sp
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $00
    ld bc, $0302
    inc b
    dec b
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    adc e
    adc h
    adc l
    ld b, $07
    ld [$0a09], sp
    dec bc
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    adc e
    adc [hl]
    adc a
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $4443
    ld b, l
    ld b, [hl]
    ld b, a
    sub b
    sub c
    adc [hl]
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $11
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    sub d
    inc c
    adc h
    rla

jr_025_6859:
    jr jr_025_6874

    ld a, [de]
    dec de
    ld de, $4e4d
    ld c, d
    ld c, a
    ld d, b
    sub d
    inc c
    adc h
    inc e
    dec e
    ld e, $1f
    jr nz, jr_025_688d

    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    sub e
    inc c
    adc [hl]

jr_025_6874:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    sub h
    sub l
    ld a, a
    ld [hl+], a
    inc hl
    inc hl
    inc h
    dec h
    ld a, a
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_025_688d:
    sub [hl]
    sub a
    sbc b
    ld h, $27
    jr z, jr_025_68bd

    ld a, [hl+]
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    inc c
    dec hl
    inc l
    dec l
    ld l, $2f
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    jr nc, jr_025_68df

    ld [hl-], a
    inc sp
    inc [hl]
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    dec [hl]
    ld [hl], $37

jr_025_68bd:
    scf
    jr c, jr_025_6859

    sbc d
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc [hl]
    sbc l
    sbc h
    sbc e
    ld a, d
    add c
    add d
    add e
    add h
    add l
    sbc a
    and b
    and c
    and d
    and d
    and c
    and b
    sbc a
    and d

jr_025_68df:
    add [hl]
    add a
    adc b
    adc c
    adc d
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld [$090e], sp
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld [$0b0a], sp
    dec bc
    ld [$0909], sp
    ld c, $09
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld [$0b0a], sp
    dec bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $6e
    ld c, $08
    ld a, [bc]
    dec bc
    dec bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $6e
    ld c, $08
    ld a, [bc]
    dec bc
    dec bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $2e
    ld c, $08
    ld [$0808], sp
    ld [$090e], sp
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $2e
    ld b, $06
    ld b, $06
    ld b, $06
    ld c, $0e
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $06
    ld [$0808], sp
    ld [$0608], sp
    ld c, $0e
    dec bc
    dec bc
    ld c, $0e
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $08
    ld [$0808], sp
    ld [$0d08], sp
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d0d], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$2828], sp
    jr z, jr_025_69bc

    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$2828], sp
    jr z, jr_025_69ca

    ld [$0d0d], sp
    dec c
    dec c
    dec c
    nop
    jr z, jr_025_69e3

    jr c, jr_025_69b6

    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $38
    jr c, jr_025_69de

    inc b

jr_025_69b6:
    db $10
    jr z, jr_025_69f1

    rrca
    add hl, de
    ld a, [de]

jr_025_69bc:
    dec de
    inc e
    dec e
    ld e, $1f
    jr c, jr_025_69ec

    inc d
    ld bc, $2928
    jr nz, jr_025_69ea

    ld [hl+], a

jr_025_69ca:
    inc hl
    inc h
    dec h
    ld h, $27
    add hl, sp
    add hl, hl
    dec b
    ld de, $2928
    jr nc, jr_025_6a08

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    add hl, sp

jr_025_69de:
    add hl, hl
    dec d
    ld [bc], a
    jr z, @+$2b

jr_025_69e3:
    ld c, h
    add [hl]
    add a
    adc b
    adc c
    ld c, e
    ld a, [hl+]

jr_025_69ea:
    dec hl
    add hl, sp

jr_025_69ec:
    add hl, hl
    ld b, $12
    jr z, @+$2b

jr_025_69f1:
    ld e, h
    adc d
    adc e
    adc h
    adc l
    ld c, e
    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, hl
    ld d, $03
    jr z, jr_025_6a28

    ld c, l
    adc [hl]
    adc a
    sub b
    sub c
    ld c, e
    inc l
    dec l
    add hl, sp

jr_025_6a08:
    add hl, hl
    rlca
    inc de
    jr z, jr_025_6a36

    ld e, l
    sub d
    sub e
    sub h
    sub l
    ld c, e
    inc a
    dec a
    add hl, sp
    add hl, hl
    rla
    ld b, b
    jr z, jr_025_6a44

    ld c, [hl]
    sub [hl]
    sub a
    sbc b
    sbc c
    ld e, e
    ld l, $2f
    add hl, sp
    add hl, hl
    ld [$4350], sp

jr_025_6a28:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld a, $3f
    add hl, sp
    add hl, hl
    jr jr_025_6a76

    ld d, e

jr_025_6a36:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld d, c
    ld h, b

jr_025_6a44:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    add b
    add c
    add d
    ld b, d
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    add e
    add h
    add l
    ld d, d
    ld e, [hl]
    ld e, a
    ld c, a
    ld l, d
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld a, a
    ld a, a
    ld a, a
    ld [$0909], sp
    add hl, bc
    ld [$0808], sp
    ld [$080a], sp

jr_025_6a76:
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0d08], sp
    dec c
    dec c
    dec c
    ld c, $0e
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    ld [$0d0e], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    jr z, jr_025_6b6b

    jr c, jr_025_6b3e

    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $38
    jr c, jr_025_6b66

    inc b

jr_025_6b3e:
    db $10
    jr z, jr_025_6b79

    rrca
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr c, jr_025_6b74

    inc d
    ld bc, $2928
    jr nz, jr_025_6b72

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    add hl, sp
    add hl, hl
    dec b
    ld de, $2928
    jr nc, jr_025_6b90

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    add hl, sp

jr_025_6b66:
    add hl, hl
    dec d
    ld [bc], a
    jr z, @+$2b

jr_025_6b6b:
    ld c, h
    rst RST_38
    rst RST_38
    sbc d
    sbc e
    ld c, e
    ld a, [hl+]

jr_025_6b72:
    dec hl
    add hl, sp

jr_025_6b74:
    add hl, hl
    ld b, $12
    jr z, @+$2b

jr_025_6b79:
    ld e, h
    rst RST_38
    rst RST_38
    sbc h
    sbc l
    ld c, e
    ld a, [hl-]
    dec sp
    add hl, sp
    add hl, hl
    ld d, $03
    jr z, jr_025_6bb0

    ld c, l
    rst RST_38
    rst RST_38
    sbc [hl]
    sbc a
    ld c, e
    inc l
    dec l
    add hl, sp

jr_025_6b90:
    add hl, hl
    rlca
    inc de
    jr z, jr_025_6bbe

    ld e, l
    rst RST_38
    rst RST_38
    and b
    and c
    ld c, e
    inc a
    dec a
    add hl, sp
    add hl, hl
    rla
    ld b, b
    jr z, jr_025_6bcc

    ld c, [hl]
    rst RST_38
    and l
    and d
    and e
    ld e, e
    ld l, $2f
    add hl, sp
    add hl, hl
    ld [$4350], sp

jr_025_6bb0:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    and h
    ld c, d
    ld a, $3f
    add hl, sp
    add hl, hl
    jr jr_025_6bfe

    ld d, e

jr_025_6bbe:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld d, c
    ld h, b

jr_025_6bcc:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    add b
    add c
    add d
    ld b, d
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    add e
    add h
    add l
    ld d, d
    ld e, [hl]
    ld e, a
    ld c, a
    ld l, d
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld a, a
    ld a, a
    ld a, a
    ld [$0909], sp
    add hl, bc
    ld [$0808], sp
    ld [$080a], sp

jr_025_6bfe:
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0000], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0000], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0000], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0000], sp
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0b07], sp
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0d08], sp
    dec c
    dec c
    dec c
    ld c, $0e
    inc c
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    ld [$0d0e], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld c, [hl]
    ld e, [hl]
    ld e, [hl]
    jr nz, jr_025_6cdf

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld e, [hl]
    ld e, [hl]
    ld c, a
    ld h, c
    db $10
    ld c, [hl]
    ld e, [hl]
    inc l
    jr nc, jr_025_6cfd

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc a
    ld e, [hl]
    ld c, a
    ld [hl], c
    ld bc, $4f4e
    dec l
    ld h, $27
    jr z, jr_025_6d05

    ld a, [hl+]
    dec hl
    ld b, c

jr_025_6cdf:
    ld e, a
    ld c, a
    ld h, d
    ld de, $4f4e
    dec a
    ld [hl], $37
    jr c, jr_025_6d23

    ld a, [hl-]
    dec sp
    ld d, c
    ld e, a
    ld c, a
    ld [hl], d
    ld [bc], a
    ld c, [hl]
    ld c, a
    ld l, $6f
    add b
    add c
    add d
    ld a, l
    ld b, l
    ld b, d
    ld e, a
    ld c, a

jr_025_6cfd:
    ld h, e
    ld [de], a
    ld c, [hl]
    ld c, a
    ld a, $7f
    sub b
    sub c

jr_025_6d05:
    sub d
    ld a, l
    ld d, l
    ld d, d
    ld e, a
    ld c, a
    ld [hl], e
    inc bc
    ld c, [hl]
    ld c, a
    cpl
    add e
    add h
    add l
    add [hl]
    ld a, l
    ld b, [hl]
    ld b, e
    ld e, a
    ld c, a
    ld h, h
    inc de
    ld c, [hl]
    ld c, a
    ccf
    sub e
    sub h
    sub l
    sub [hl]
    ld a, l

jr_025_6d23:
    ld d, [hl]
    ld d, e
    ld e, a
    ld c, a
    ld [hl], h
    inc b
    ld c, [hl]
    ld c, a
    ld b, b
    add a
    adc b
    adc c
    adc d
    ld l, [hl]
    ld b, a
    ld b, h
    ld e, a
    ld c, a
    ld h, l
    inc d
    ld h, b
    ld [hl], b
    ld d, b
    sub a
    sbc b
    sbc c
    sbc d
    ld a, [hl]
    ld d, a
    ld d, h
    ld h, [hl]
    halt
    ld [hl], l
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    rra
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    dec d
    ld d, $17
    jr jr_025_6d70

    ld a, [de]
    dec de
    dec de
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    inc c
    dec c
    ld c, $0f
    inc e
    dec e
    ld e, $0c
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, l

jr_025_6d70:
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld [$0909], sp
    add hl, bc
    ld [$0808], sp
    ld [$080a], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0d09], sp
    ld c, $08
    ld a, [bc]
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d0a], sp
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld c, $0e
    ld c, $0e
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
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $00
    ld c, [hl]
    ld e, [hl]
    ld e, [hl]
    jr nz, jr_025_6e67

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld e, [hl]
    ld e, [hl]
    ld c, a
    ld h, c
    db $10
    ld c, [hl]
    ld e, [hl]
    inc l
    jr nc, jr_025_6e85

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc a
    ld e, [hl]
    ld c, a
    ld [hl], c
    ld bc, $4f4e
    dec l
    ld h, $27
    jr z, jr_025_6e8d

    ld a, [hl+]
    dec hl
    ld b, c

jr_025_6e67:
    ld e, a
    ld c, a
    ld h, d
    ld de, $4f4e
    dec a
    ld [hl], $37
    jr c, jr_025_6eab

    ld a, [hl-]
    dec sp
    ld d, c
    ld e, a
    ld c, a
    ld [hl], d
    ld [bc], a
    ld c, [hl]
    ld c, a
    ld l, $ff
    rst RST_38
    adc e
    adc h
    ld a, l
    ld b, l
    ld b, d
    ld e, a
    ld c, a

jr_025_6e85:
    ld h, e
    ld [de], a
    ld c, [hl]
    ld c, a
    ld a, $ff
    rst RST_38
    sbc e

jr_025_6e8d:
    sbc h
    ld a, l
    ld d, l
    ld d, d
    ld e, a
    ld c, a
    ld [hl], e
    inc bc
    ld c, [hl]
    ld c, a
    cpl
    rst RST_38
    rst RST_38
    adc l
    adc [hl]
    ld a, l
    ld b, [hl]
    ld b, e
    ld e, a
    ld c, a
    ld h, h
    inc de
    ld c, [hl]
    ld c, a
    ccf
    rst RST_38
    rst RST_38
    sbc l
    sbc [hl]
    ld a, l

jr_025_6eab:
    ld d, [hl]
    ld d, e
    ld e, a
    ld c, a
    ld [hl], h
    inc b
    ld c, [hl]
    ld c, a
    ld b, b
    rst RST_38
    rst RST_38
    adc a
    and d
    ld l, [hl]
    ld b, a
    ld b, h
    ld e, a
    ld c, a
    ld h, l
    inc d
    ld h, b
    ld [hl], b
    ld d, b
    rst RST_38
    and b
    sbc a
    and c
    ld a, [hl]
    ld d, a
    ld d, h
    ld h, [hl]
    halt
    ld [hl], l
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    rra
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    dec d
    ld d, $17
    jr jr_025_6ef8

    ld a, [de]
    dec de
    dec de
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    inc c
    dec c
    ld c, $0f
    inc e
    dec e
    ld e, $0c
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, l

jr_025_6ef8:
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld [$0909], sp
    add hl, bc
    ld [$0808], sp
    ld [$080a], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0808], sp
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0808], sp
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    ld [$0908], sp
    add hl, bc
    ld [$0c08], sp
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld [$0d09], sp
    ld c, $08
    ld a, [bc]
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d0a], sp
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld c, $0e
    ld c, $0e
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
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $43
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld d, e
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    nop
    ld bc, $0302
    inc b
    dec b
    ld c, b
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    db $10
    ld de, $1312
    inc d
    dec d
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    add [hl]
    add [hl]
    add [hl]
    ld [hl], b
    ld b, $07
    ld [$0a09], sp
    dec bc
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld h, b
    ld h, c
    ld [hl], c
    ld d, $17
    jr jr_025_701d

    ld a, [de]
    dec de
    ld c, c
    ld c, d
    ld e, c
    ld e, d
    ld h, d
    ld h, e
    ld h, h
    ld h, [hl]
    inc c
    dec c
    ld c, $27
    scf
    rrca
    ld c, a
    ld c, a
    ld c, e
    ld c, h
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld h, [hl]
    inc e

jr_025_701d:
    dec e
    ld e, $28
    jr z, jr_025_704e

    cpl
    ld c, l
    ld c, [hl]
    ld e, e
    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, [hl]
    jr nz, jr_025_704d

    ld [hl+], a
    jr c, jr_025_7067

    inc a
    ccf
    ld e, l
    ld e, [hl]
    ld e, h
    ld [hl], l
    halt
    ld [hl], h
    ld h, [hl]
    jr nc, jr_025_706b

    ld [hl-], a
    add hl, hl
    add hl, hl
    dec l
    ld b, b
    ld c, a
    ld e, a
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    inc hl
    inc h
    add hl, sp
    add hl, sp
    add hl, sp
    dec a
    ld d, b

jr_025_704d:
    ld l, h

jr_025_704e:
    ld l, l
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    inc sp
    inc [hl]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld l, $41
    ld a, h
    add d
    add d
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a
    dec h
    ld h, $3a
    ld a, [hl-]
    ld a, [hl-]

jr_025_7067:
    ld a, $51
    add e
    add e

jr_025_706b:
    add e
    add e
    add e
    add b
    add c
    dec [hl]
    dec hl
    dec hl
    dec hl
    dec hl
    dec sp
    ld b, d
    add h
    add h
    add h
    add h
    add h
    add h
    ld a, l
    ld [hl], $2b
    dec hl
    dec hl
    dec hl
    dec sp
    ld d, d
    add l
    add l
    add l
    add l
    add l
    add l
    add l
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
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld c, $0b
    dec bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0d
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0d
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec bc
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec bc
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080c], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc h
    nop
    ld bc, $0e0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    db $10
    ld de, $2429
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    db $10
    ld de, $3429
    nop
    ld bc, $0e16
    rrca
    ld e, $1f
    rra
    rra
    ld b, $10
    ld de, $2529
    nop
    ld bc, $0816
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld b, $10
    ld de, $3529
    nop
    ld bc, $1816
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld b, $10
    ld de, $2629
    nop
    ld bc, $0e16
    rrca
    ld e, $1f
    rra
    rra
    ld b, $10
    ld de, $3629
    nop
    ld bc, $0e16
    rrca
    ld e, $1f
    rra
    rra
    ld b, $10
    ld de, $2729
    nop
    ld bc, $0e16
    rrca
    ld e, $1f
    rra
    rra
    ld b, $10
    ld de, $3729
    nop
    ld bc, $0e16
    rrca
    ld e, $1f
    rra
    rra
    ld b, $10
    ld de, $2829
    nop
    ld bc, $1312
    inc d
    inc d
    inc d
    inc d
    inc de
    dec d
    db $10
    ld de, $3829
    nop
    ld bc, $0e0e
    ld c, $0e
    ld c, $0e
    ld c, $20
    ld hl, $3911
    dec hl
    nop
    ld bc, $0e0e
    ld c, $0e
    ld c, $0e
    ld c, $30
    ld sp, $3b11
    ld a, [hl+]
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    ld [hl+], a
    inc hl
    ld de, $3a2a
    nop
    ld bc, $0716
    rla
    rla
    rla
    rla
    rla
    ld [hl-], a
    inc sp
    ld de, $093a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    ld [$0b08], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0809], sp
    dec hl
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec hl
    inc h
    nop
    ld l, $2e
    ld l, $3c
    rra
    rra
    rra
    rra
    rra
    ccf
    ld de, $2429
    nop
    inc l
    inc l
    dec l
    ld a, $1f
    rra
    rra
    rra
    rra
    ccf
    ld de, $3429
    nop
    cpl
    cpl
    dec a
    ld a, $1f
    rra
    rra
    rra
    rra
    ccf
    ld de, $2529
    nop
    cpl
    cpl
    dec a
    ld a, $1f
    rra
    rra
    rra
    rra
    ccf
    ld de, $3529
    nop
    cpl
    cpl
    dec a
    ld a, $1f
    rra
    rra
    rra
    rra
    ccf
    ld de, $2629
    nop
    cpl
    cpl
    dec a
    ld a, $1f
    rra
    rra
    rra
    rra
    ccf
    ld de, $3629
    nop
    cpl
    cpl
    dec a
    ld a, $1f
    rra
    rra
    rra
    rra
    ccf
    ld de, $2729
    nop
    cpl
    cpl
    dec a
    ld a, $1f
    rra
    rra
    rra
    rra
    ccf
    ld de, $3729
    nop
    cpl
    cpl
    dec a
    ld a, $1f
    rra
    rra
    rra
    rra
    ccf
    ld de, $2829
    nop
    cpl
    cpl
    dec a
    ld a, $1f
    rra
    rra
    rra
    rra
    ccf
    ld de, $3829
    nop
    ld b, b
    ld b, b
    ld b, h
    ld b, l
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld d, b
    ld de, $2b39
    nop
    ld b, c
    ld b, c
    ld b, c
    ld b, [hl]
    ld b, a
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld d, c
    ld de, $2a3b
    nop
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld c, b
    ld c, c
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld d, d
    ld de, $3a2a
    nop
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld c, d
    ld c, e
    ld c, a
    ld c, a
    ld d, e
    ld de, $093a
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0909], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0909], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0909], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0909], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0909], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0909], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0909], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0909], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0909], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0909], sp
    ld [$0c0c], sp

jr_025_742c:
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0809], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c

jr_025_743e:
    inc c
    inc c
    inc c
    inc c
    ld [$0b08], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c

jr_025_744c:
    inc c
    inc c
    inc c
    inc c
    ld [$0b2b], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$a62b], sp
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    add hl, bc
    ld a, [bc]
    add hl, de
    ld a, [de]
    and [hl]
    and [hl]
    ld hl, $a631
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0ba6], sp
    inc c
    dec c
    and [hl]
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_025_742c

    dec de
    inc e
    dec e
    and [hl]
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_025_74bb

    ld a, [hl+]
    and [hl]
    ld c, $0f
    jr nz, jr_025_743e

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_025_74d9

    ld a, [hl-]
    and [hl]
    ld e, $1f
    jr nc, jr_025_744c

    dec hl
    inc l
    dec l
    ld l, $2f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, a
    ld b, l
    and [hl]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld d, b
    ld d, c

jr_025_74bb:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    and [hl]
    and [hl]
    and [hl]
    ld b, [hl]
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    and [hl]
    and [hl]
    ld d, [hl]
    ld c, b
    ld c, b
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_025_74d9:
    ld e, l
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
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
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
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
    ld [hl], b
    ld a, [hl]
    ld [hl], b
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
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
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld c, $0e
    ld c, $0a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld c, $0e
    ld c, $0a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld c, $0e
    ld c, $0a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    inc c
    inc c
    inc c
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d08], sp
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    nop
    ld bc, $1b1b
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    db $10
    ld de, $0c0c
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    db $10
    ld de, $0c0f
    nop
    ld bc, $2516
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    ld b, $10
    ld de, $0c1f
    nop
    ld bc, $3516
    ld [hl], $37
    jr c, jr_025_7654

    ld a, [hl-]
    ld b, $10
    ld de, $0d20
    nop
    ld bc, $2516
    dec hl
    inc l
    inc l
    dec sp
    inc a
    ld b, $10
    ld de, $1d30
    nop
    ld bc, $2516
    ld a, $2d
    ld l, $2f
    ccf
    ld b, $10
    ld de, $0e0c
    nop
    ld bc, $2516
    dec hl
    dec a
    dec a
    inc l
    inc l
    ld b, $10
    ld de, $1e0c
    nop
    ld bc, $4016
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld d, d

jr_025_7654:
    ld b, $10
    ld de, $0c21
    nop
    ld bc, $2516
    ld d, h
    ld b, e
    ld b, h
    ld d, e
    inc l
    ld b, $10
    ld de, $0c31
    nop
    ld bc, $1312
    inc d
    inc d
    inc d
    inc d
    inc de
    dec d
    ld [$2211], sp
    inc e
    nop
    ld bc, $1b1b
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    jr jr_025_7692

    ld [hl-], a
    inc hl
    nop
    ld bc, $1b1b
    dec de
    dec de
    dec de
    dec de
    dec de
    db $10
    add hl, bc
    ld de, $2423
    nop

jr_025_7692:
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    ld a, [bc]
    add hl, de
    ld de, $3424
    nop
    ld bc, $0716
    rla
    rla
    rla
    rla
    rla
    ld a, [de]
    dec bc
    ld de, $0934
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, hl
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld [$0808], sp
    add hl, hl
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld c, $2e
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    add hl, hl
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    ld [$0809], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    ld [$0b28], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0809], sp
    dec hl
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec hl
    inc c
    nop
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld b, a
    ld l, l
    ld l, l
    ld l, l
    ld l, b
    ld l, c
    ld l, d
    ld de, $0c0c
    nop
    ld b, l
    ld b, l
    ld b, [hl]
    ld d, a
    ld l, l
    ld l, l
    ld l, l
    ld l, b
    ld l, c
    ld l, d
    ld de, $0c0f
    nop
    adc l
    adc l
    ld d, l
    ld d, a
    ld l, l
    ld l, l
    ld l, l
    ld l, b
    ld l, c
    ld l, d
    ld de, $0c1f
    nop
    adc l
    adc l
    ld d, l
    ld d, a
    ld l, l
    ld l, l
    ld l, l
    ld a, b
    ld a, c
    ld a, d
    ld de, $0d20
    nop
    adc l
    adc l
    ld d, l
    ld d, a
    ld l, l
    ld c, b
    ld c, c
    ld c, d
    ld l, e
    ld l, h
    ld de, $1d30
    nop
    adc l
    adc l
    ld d, l
    ld d, a
    ld l, l
    ld e, b
    ld e, c
    ld e, d
    ld a, e
    ld a, h
    ld de, $0e0c
    nop
    adc l
    adc l
    ld d, l
    ld d, a
    ld l, l
    ld c, e
    ld c, h
    ld c, l
    ld l, l
    ld a, l
    ld de, $1e0c
    nop
    adc l
    adc l
    ld d, l
    ld d, a
    ld l, l
    ld e, e
    ld e, h
    ld e, l
    ld l, l
    ld a, l
    ld de, $0c21
    nop
    adc l
    adc l
    ld d, l
    ld d, a
    ld l, l
    ld c, [hl]
    ld c, a
    ld h, c
    ld h, d
    ld h, e
    ld de, $0c31
    nop
    adc l
    adc l
    ld d, l
    ld d, a
    ld l, l
    ld e, [hl]
    ld e, a
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld de, $1c22
    nop
    ld l, [hl]
    ld l, [hl]
    add b
    add c
    adc b
    ld h, b
    ld [hl], b
    ld h, h
    ld h, l
    ld h, [hl]
    ld de, $2332
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    add d
    add e
    adc c
    adc c
    ld [hl], h
    ld [hl], l
    halt
    ld de, $2423
    nop
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    add h
    add l
    adc d
    ld h, a
    ld [hl], a
    ld [hl], a
    ld de, $3424
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add [hl]
    add a
    adc e
    adc e
    adc h
    ld de, $0934
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    ld [$0929], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    ld [$0909], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    ld [$0909], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    dec c
    dec c
    ld [$0909], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    ld [$0909], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    ld [$0929], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    ld [$0929], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    ld [$0909], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld c, $0c
    inc c
    ld [$0909], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    ld [$0909], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    ld [$0809], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0b28], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc l
    ld [$0b2b], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$002b], sp
    ld bc, $0302
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld a, h
    add b
    add c
    adc b
    ld a, h
    ld a, h
    db $10
    ld de, $1312
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, h
    sub b
    sub c
    sbc b
    ld a, h
    ld a, h
    inc b
    dec b
    ld b, $07
    ld l, d
    ld l, h
    ld l, e
    ld a, c
    ld a, h
    add d
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc d
    dec d
    ld d, $17
    ld a, d
    ld l, h
    ld a, e
    ld a, c
    add [hl]
    add a
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld [$0a09], sp
    rra
    ld l, l
    ld l, [hl]
    ld l, a
    add e
    sub [hl]
    sub a
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    jr jr_025_7959

    ld a, [de]
    rra
    ld a, l
    ld a, [hl]
    ld a, a
    sub e
    ld a, h
    ld a, h
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    dec bc
    inc c
    dec c
    inc sp
    sub d
    sub d
    sub d
    add h
    ld a, h
    ld a, h
    ld a, h
    ld c, l
    ld e, l

jr_025_7959:
    ld e, e
    dec de
    inc e
    dec e
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    sub h
    ld a, h
    ld a, h
    ld a, h
    ld c, [hl]
    ld e, [hl]
    ld e, l
    ld c, $0f
    ld e, $7c
    ld a, h
    ld a, h
    add l
    sub l
    ld a, h
    ld a, h
    ld a, h
    ld c, a
    ld e, a
    ld h, e
    jr nz, jr_025_7999

    ld hl, $2121
    ld hl, $2121
    dec h
    ld h, $50
    ld h, b
    ld h, c
    ld h, d
    jr nc, jr_025_79b7

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    dec [hl]
    ld d, c
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl+], a
    inc h
    daa
    jr z, jr_025_79c0

    ld a, [hl+]
    dec hl

jr_025_7999:
    inc l
    dec l
    ld [hl], $a9
    xor d
    ld h, h
    ld h, l
    ld [hl-], a
    inc h
    scf
    jr c, jr_025_79de

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld [hl], $ab
    xor h
    xor l
    ld [hl], l
    inc hl
    inc h
    ld l, $2f
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_025_79b7:
    ld [hl], $ae
    xor a
    ld d, h
    ld d, h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_025_79c0:
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
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc

jr_025_79de:
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $08
    ld c, $0a
    ld a, [bc]
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
    ld a, [bc]
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
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080b], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080d], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0100], sp
    ld [bc], a
    inc bc
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld a, h
    add b
    add c
    adc b
    ld a, h
    ld a, h
    db $10
    ld de, $1312
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, h
    sub b
    sub c
    sbc b
    ld a, h
    ld a, h
    inc b
    dec b
    ld b, $07
    ld l, d
    ld l, h
    ld l, e
    ld a, c
    ld a, h
    add d
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc d
    dec d
    ld d, $17
    ld a, d
    adc c
    adc d
    ld a, c
    add [hl]
    add a
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld [$0a09], sp
    rra
    and h
    sbc c
    sbc d
    and l
    sub [hl]
    sub a
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    jr jr_025_7ae1

    ld a, [de]
    rra
    ld a, l
    and [hl]
    and a
    xor b
    ld a, h
    ld a, h
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    dec bc
    inc c
    dec c
    inc sp
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    ld a, h
    ld a, h
    ld c, l
    ld e, l

jr_025_7ae1:
    ld e, e
    dec de
    inc e
    dec e
    ld a, h
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld a, h
    ld a, h
    ld c, [hl]
    ld e, [hl]
    ld e, l
    ld c, $0f
    ld e, $7c
    and b
    and c
    and d
    and e
    ld a, h
    ld a, h
    ld a, h
    ld c, a
    ld e, a
    ld h, e
    jr nz, jr_025_7b21

    ld hl, $2121
    ld hl, $2121
    dec h
    ld h, $50
    ld h, b
    ld h, c
    ld h, d
    jr nc, jr_025_7b3f

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    dec [hl]
    ld d, c
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl+], a
    inc h
    daa
    jr z, jr_025_7b48

    ld a, [hl+]
    dec hl

jr_025_7b21:
    inc l
    dec l
    ld [hl], $52
    ld [hl], e
    ld h, h
    ld h, l
    ld [hl-], a
    inc h
    scf
    jr c, jr_025_7b66

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld [hl], $43
    ld b, h
    ld [hl], h
    ld [hl], l
    inc hl
    inc h
    ld l, $2f
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_025_7b3f:
    ld [hl], $53
    ld d, h
    ld d, h
    ld d, h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_025_7b48:
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
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc

jr_025_7b66:
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$090b], sp
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $08
    ld [$0a0c], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    ld [$0d0d], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0100], sp
    ld [bc], a
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    ld [$0a09], sp
    dec bc
    db $10
    ld de, $1312
    inc d
    dec b
    ld b, $15
    ld d, $17
    jr jr_025_7c3b

    ld a, [de]
    dec de
    inc c
    dec c
    ld c, $0f
    jr nz, jr_025_7c4b

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_025_7c5b

    inc e
    dec e
    ld e, $1f
    jr nc, jr_025_7c69

    ld [hl-], a
    inc sp
    inc [hl]

jr_025_7c3b:
    dec [hl]
    ld [hl], $37
    jr c, jr_025_7c79

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_025_7c4b:
    ld b, l
    ld b, [hl]
    ld b, a
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_025_7c5b:
    ld d, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h

jr_025_7c69:
    ld h, l
    ld e, b
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
    ld h, [hl]

jr_025_7c79:
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld a, e
    ld a, h
    ld l, l
    ld l, [hl]
    ld l, a
    add b
    add c
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    add e
    sub d
    sub e
    add e
    ld a, l
    ld a, [hl]
    ld a, a
    sub b
    sub c
    add [hl]
    add a
    adc b
    add d
    add e
    sub d
    sub e
    sub d
    sub e
    add e
    add h
    add l
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    adc h
    adc l
    adc [hl]
    sub e
    sub d
    sub e
    sub d
    sub e
    adc a
    sub e
    sub e
    adc c
    adc d
    adc e
    sbc h
    sbc l
    sbc [hl]
    sub d
    sub e
    sub d
    sub e
    sub d
    adc a
    sub d
    sub e
    sbc c
    sbc d
    sbc e
    and b
    and c
    sbc a
    sub e
    sub d
    sub e
    sub d
    sub e
    adc a
    sub e
    sub d
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    ld [$0c0c], sp
    inc c
    inc c
    ld [$090c], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0a08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$090a], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0809], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$080a], sp
    ld [$0a08], sp
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec l
    ld a, [bc]
    dec c
    dec c
    dec c
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec l
    ld a, [bc]
    inc c
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $08
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    inc c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $08
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
