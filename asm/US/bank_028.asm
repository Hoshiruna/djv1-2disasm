; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $028", ROMX[$4000], BANK[$28]

    ld [hl], $40
    cp [hl]
    ld b, c
    ld b, [hl]
    ld b, e
    adc $44
    ld d, [hl]
    ld b, [hl]
    sbc $47
    ld h, [hl]
    ld c, c
    xor $4a
    halt
    ld c, h
    cp $4d
    add [hl]
    ld c, a
    ld c, $51
    sub [hl]
    ld d, d
    ld e, $54
    and [hl]
    ld d, l
    ld l, $57
    or [hl]
    ld e, b
    ld a, $5a
    add $5b
    ld c, [hl]
    ld e, l
    sub $5e
    ld e, [hl]
    ld h, b
    and $61
    ld l, [hl]
    ld h, e
    or $64
    ld a, [hl]
    ld h, [hl]
    ld b, $68
    nop
    ld bc, $0302
    inc b
    dec b
    dec b
    ld b, $07
    ld [$9909], sp
    sbc d
    rst RST_38
    ld a, [bc]
    dec bc
    inc c
    dec c
    dec c
    ld a, a
    ld a, a
    dec c
    dec c
    ld a, a
    ld c, $9b
    sbc h
    sbc l
    rrca
    db $10
    ld de, $1618
    rla
    jr jr_028_40d9

    ld a, a
    ld a, a
    ld hl, $9f9e
    and b
    ld [de], a
    inc de
    ld a, [de]
    dec de
    add hl, de
    ld a, [de]
    dec de
    ld a, a
    ld a, a
    ld a, a
    ld [hl+], a
    and c
    and d
    and e
    inc d
    dec d
    dec e
    ld e, $1c
    dec e
    ld e, $1f
    jr nz, jr_028_40f7

    inc hl
    and h
    and l
    and [hl]
    ld h, $27
    jr z, jr_028_40a9

    daa
    jr z, jr_028_40ad

    dec hl
    inc h
    dec h
    dec h
    sub [hl]
    sub a
    add c
    inc l
    dec l
    ld l, $2f
    jr nc, jr_028_40c1

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_028_40d1

    ld a, [hl-]
    dec sp
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
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_028_40a9:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]

jr_028_40ad:
    ld c, a
    ld d, b
    ld d, c
    ld d, d
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
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_028_40c1:
    ld h, e
    ld h, h
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld h, l
    ld l, e
    ld l, h
    ld h, l
    ld l, l
    ld l, [hl]
    ld l, a

jr_028_40d1:
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt

jr_028_40d9:
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld [hl], h
    ld [hl], h
    ld a, l
    add b
    ld a, d
    ld a, d
    ld a, d
    ld a, [hl]
    ld a, a
    rst RST_38
    add d
    add e
    add h
    add l
    add [hl]
    ld [hl], h
    add a
    adc b
    adc c
    adc d

jr_028_40f7:
    adc e
    adc h
    adc l
    inc c
    inc c
    inc c
    ld c, $0e
    inc c
    inc l
    ld c, $0e
    inc c
    inc c
    ld [$0008], sp
    inc c
    inc c
    inc c
    dec c
    dec l
    inc b
    inc b
    dec c
    dec l
    inc b
    inc c
    ld [$0808], sp
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc b
    inc b
    inc b
    inc c
    ld [$0808], sp
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc b
    inc b
    inc b
    inc c
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc b
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
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0a08], sp
    ld [$0c09], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
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
    nop
    ld bc, $0101
    ld bc, $0f02
    db $10
    ld [de], a
    inc d
    dec d
    ld d, $17
    jr jr_028_41d1

    ld b, $07
    ld b, $07

jr_028_41d1:
    inc bc
    rrca
    ld de, $1912
    ld a, [de]
    dec de
    inc e
    dec e
    dec b
    ld [$0809], sp
    add hl, bc
    ld [bc], a
    db $10
    rst RST_38
    ld [de], a
    ld e, $1f
    jr nz, @+$23

    dec e
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $03
    ld de, $13ff
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_028_4222

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_028_4232

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_028_4242

    ld a, [hl-]
    dec sp
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
    ld d, d

jr_028_4222:
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
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_028_4232:
    ld h, e
    ld h, e
    ld h, e
    ld h, h
    ld h, e
    ld h, e
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

jr_028_4242:
    ld l, a
    ld [hl], b
    ld [hl], c
    ld l, l
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add b
    add c
    add d
    add e
    add h
    ld a, a
    add l
    add [hl]
    add a
    adc b
    adc b
    adc b
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc b
    adc [hl]
    adc a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    sub b
    sub c
    sub d
    sub e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec c
    dec c
    dec bc
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec c
    dec c
    dec bc
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    nop
    dec bc
    dec bc
    dec c
    dec c
    dec bc
    inc c
    dec bc
    ld [$0808], sp
    ld c, $0a
    add hl, bc
    nop
    dec bc
    ld c, $0e
    dec c
    dec bc
    inc c
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0d
    inc c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0d
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d08], sp
    dec c
    dec c
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
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    add hl, bc
    dec c
    nop
    ld bc, $0202
    sub a
    inc bc
    sbc b
    ld d, h
    ld d, l
    ld d, [hl]
    sbc c
    ld l, b
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $4f
    ld d, a
    ld e, b
    ld e, c
    ld c, a
    ld l, c
    ld l, d
    ld l, e
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    ld c, a
    ld e, d
    ld e, e
    ld e, h
    ld c, a
    ld l, h
    ld l, l
    ld l, [hl]
    dec c
    ld a, a
    add b
    add c
    add d
    rrca
    ld c, a
    ld e, a
    ld h, a
    ld e, l
    ld c, a
    ld l, a
    ld [hl], b
    ld [hl], c
    dec c
    add e
    add h
    add l
    add [hl]
    db $10
    ld c, a
    ld e, a
    ld h, a
    ld e, [hl]
    ld c, a
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld c, $87
    adc b
    adc c
    adc d
    db $10
    ld c, a
    ld h, b
    ld h, c
    ld h, d
    ld c, a
    ld [hl], l
    halt
    ld [hl], a
    ld [bc], a
    ld de, $0212
    inc de
    inc d
    ld c, a
    ld h, e
    ld h, h
    ld h, l
    ld c, a
    ld a, b
    ld a, c
    ld a, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec d
    ld c, a
    ld h, e
    ld h, h
    ld h, [hl]
    ld c, a
    ld a, e
    ld [bc], a
    ld [bc], a
    ld d, $16
    ld d, $16
    ld d, $17
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, b
    ld a, h
    ld [bc], a
    ld [bc], a
    jr jr_028_43df

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_028_43ef

    ld a, l
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_028_4403

    ld a, [hl+]
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_028_43df:
    ld [bc], a
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_028_4418

    ld [hl-], a
    inc sp
    inc [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec [hl]

jr_028_43ef:
    ld [hl], $37
    jr c, jr_028_442c

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $49
    ld c, d
    ld [bc], a
    ld [bc], a
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_028_4403:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, e
    ld c, h
    ld c, l
    ld [bc], a
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c

jr_028_4418:
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    ld [$090a], sp
    add hl, bc
    jr z, jr_028_4430

    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_028_442c:
    ld [$090e], sp
    add hl, bc

jr_028_4430:
    jr z, jr_028_443e

    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld c, $09
    add hl, bc

jr_028_443e:
    jr z, @+$0c

    ld c, $0c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld c, $09
    add hl, bc
    jr z, jr_028_445a

    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld c, $0e
    add hl, bc

jr_028_445a:
    jr z, jr_028_4468

    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0e0e], sp
    add hl, bc

jr_028_4468:
    jr z, jr_028_4476

    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0e0e], sp
    add hl, bc

jr_028_4476:
    jr z, jr_028_4484

    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0e0e], sp
    inc c

jr_028_4484:
    jr z, jr_028_4492

    inc c
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc

jr_028_4492:
    inc c
    inc c
    inc c
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec c
    dec bc
    inc c
    inc c
    inc c
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    inc c
    inc c
    inc c
    inc c
    dec c
    dec c
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
    inc c
    inc c
    dec c
    dec c
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
    inc c
    nop
    ld bc, $0302
    inc b
    rlca
    rlca
    rlca
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0500
    dec bc
    ld [$0a09], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$050d], sp
    ld b, $0f
    ld c, $0c
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    inc c
    dec bc
    dec c
    ld b, $0e
    db $10
    ld de, $510c
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld d, c
    ld c, $0f
    inc e
    dec e
    ld c, $12
    inc de
    ld c, $51
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld d, c
    ld e, $1f
    jr nz, jr_028_4535

    ld c, $14
    dec d
    dec c
    ld d, c
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld d, c
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld c, $16
    rla
    dec c
    ld d, c
    ld c, e
    ld c, h
    ld c, l
    ld c, a
    ld d, c
    inc a
    dec a
    ld a, $3f
    ld c, $18
    add hl, de
    dec c
    ld d, c

jr_028_4535:
    ld b, e
    ld b, h
    ld b, l
    ld d, b
    ld d, c
    ld h, $27
    jr z, jr_028_4567

    ld c, $1a
    dec de
    dec hl
    ld d, c
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld d, c
    dec c
    dec bc
    dec c
    dec bc
    ld a, [hl+]
    dec c
    dec c
    inc l
    ld d, c
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld d, c
    dec c
    dec bc
    dec c
    rrca
    dec l
    dec c
    dec [hl]
    ld [hl], $52
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, d
    ld [hl], $3b
    dec c

jr_028_4567:
    dec l
    ld l, $37
    jr c, jr_028_45a5

    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    add hl, sp
    jr c, jr_028_45ac

    ld l, $2f
    jr nc, jr_028_45b3

    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld a, [hl-]
    jr nc, jr_028_45b3

    ld sp, $3332
    inc [hl]
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    inc [hl]
    inc sp
    ld [hl-], a
    ld sp, $0c0c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc l
    inc l
    inc l
    inc l
    inc l
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_028_45a5:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl

jr_028_45ac:
    add hl, bc
    inc l
    inc c
    add hl, hl
    add hl, hl
    add hl, bc
    ld a, [bc]

jr_028_45b3:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    add hl, hl
    add hl, bc
    inc l
    add hl, hl
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$092a], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    dec bc
    dec bc
    add hl, hl
    ld a, [bc]
    ld [$0808], sp
    ld [$092a], sp
    dec bc
    dec bc
    dec bc
    add hl, hl
    dec bc
    dec bc
    add hl, hl
    ld a, [bc]
    ld [$0808], sp
    ld [$0b2a], sp
    dec bc
    dec bc
    dec bc
    add hl, hl
    dec bc
    dec bc
    add hl, hl
    ld a, [bc]
    ld [$0808], sp
    ld [$0b2a], sp
    dec bc
    dec bc
    dec bc
    add hl, hl
    dec bc
    dec bc
    add hl, hl
    ld a, [bc]
    ld [$0808], sp
    ld [$0b2a], sp
    add hl, bc
    dec bc
    dec bc
    add hl, hl
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld [$0808], sp

jr_028_460a:
    ld [$092a], sp
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, hl
    dec bc
    ld a, [bc]
    ld [$0808], sp
    ld [$092a], sp
    add hl, hl
    add hl, bc
    add hl, bc
    inc c
    add hl, hl
    dec c
    dec c
    ld a, [bc]
    ld [$0808], sp
    ld [$2d2a], sp
    ld a, [bc]
    add hl, bc
    inc l
    inc c
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
    dec l
    dec l
    inc l
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
    dec l
    ld l, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    ld l, $2e
    ld l, $2e
    nop
    ld bc, $0302
    ld c, $3e
    ld c, a
    ld c, a
    ld b, h
    rra
    ld [$0a02], sp
    dec bc
    db $10
    ld de, $1312
    ld c, $3f
    ld c, a
    ld c, a
    ld b, l
    rra
    jr jr_028_460a

    ld a, [de]
    dec de
    jr nz, jr_028_4695

    ld [hl+], a
    inc hl
    ld c, $40
    ld c, a
    ld c, a
    ld b, [hl]
    ld b, a
    jr z, @-$63

    ld a, [hl+]
    dec hl
    jr nc, jr_028_46b3

    ld [hl-], a
    inc sp
    ld c, $41
    ld c, a
    ld c, a
    ld c, b
    ld c, c
    jr c, @-$62

    ld a, [hl-]
    dec sp
    inc b
    dec b
    ld b, $07
    ld c, $42
    ld c, a

jr_028_4695:
    ld c, a
    ld c, d
    rra
    add hl, bc
    sbc h
    inc c
    dec c
    inc d
    dec d
    ld d, $17
    ld c, $43
    ld c, a
    ld c, a
    ld c, e
    rra
    add hl, de
    sbc l
    inc e
    dec e
    inc h
    dec h
    ld h, $27
    ld c, $4f
    ld c, a
    ld c, h
    ld c, l

jr_028_46b3:
    ld c, [hl]
    add hl, hl
    sbc h
    inc l
    dec l
    inc [hl]
    dec [hl]
    ld [hl], $37
    rrca
    ld l, $2e
    cpl
    ld l, $1e
    add hl, sp
    sbc h
    inc a
    dec a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    ld d, [hl]
    sbc [hl]
    ld d, a
    ld e, b
    ld d, h
    ld d, l
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
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
    ld l, [hl]
    ld l, a
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
    ld a, [hl]
    ld a, a
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080e], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080c], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080c], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080c], sp
    ld [$0808], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec c
    ld [$0b08], sp
    dec bc
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
    nop
    nop
    ld bc, $0403
    dec b
    ld b, $07
    ld [$0a09], sp
    ld bc, $0000
    inc c
    dec c
    ld [bc], a
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [bc], a
    db $10
    ld de, $0f0e
    inc d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    ld a, [de]
    inc e
    dec d
    ld [de], a
    inc de
    rra
    ld c, b
    dec e
    dec h
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    add hl, hl
    ld e, $48
    ld [hl+], a
    jr nz, jr_028_4861

    dec e
    ld h, $57
    ld e, b
    ld e, c
    ld e, d
    ld e, b
    ld e, e
    ld a, [hl+]
    ld e, $49
    inc hl
    ld hl, $1d4a
    ld h, $57
    ld e, b
    ld e, c
    ld e, d
    ld e, b
    ld e, e
    dec hl
    ld e, $4a
    inc h
    ld c, l
    ld c, e
    dec e
    ld h, $5c
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    inc l
    ld e, $4b
    ld c, a
    ld c, [hl]
    ld c, h
    dec e
    ld h, $62
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld a, [hl+]
    ld e, $4c
    ld d, b
    cpl
    jr nc, jr_028_4882

    daa
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    dec l
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $28
    ld l, [hl]

jr_028_4861:
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld l, $3a
    dec sp
    inc a
    scf
    jr c, jr_028_48ad

    ld b, c
    ld b, e
    ld b, d
    ld b, d
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, c
    ld b, b
    dec a
    ld a, $39
    ld b, b
    ld b, c
    ld b, h
    ld b, a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, e

jr_028_4882:
    ld b, a
    ld b, c
    ld b, b
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, d
    ld b, d
    ld b, e
    ld b, l
    ld b, [hl]
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, c
    ld b, b
    ld b, c
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, e
    ld b, d
    ld b, d
    ld b, a
    ld b, e
    ld b, a
    ld b, l
    ld b, [hl]
    ld b, d
    ld b, c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_028_48ad:
    add hl, hl
    ld [$0d08], sp
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
    add hl, hl
    dec c
    dec c
    dec c
    dec c
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d0d], sp
    ld [$0808], sp
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld [$0828], sp
    ld [$080c], sp
    ld a, [bc]
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    inc c
    ld a, [bc]
    ld [$082c], sp
    ld [$080c], sp
    ld a, [bc]
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    inc c
    ld a, [bc]
    ld [$082c], sp
    ld [$080c], sp
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld [$082c], sp
    ld [$0808], sp
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [hl+]
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
    inc c
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
    ld a, [hl+]
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
    ld a, [hl+]
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
    ld a, [hl+]
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    jr nz, jr_028_49a5

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_028_49b5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr nc, jr_028_49c3

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_028_49d3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld c, $0f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_028_49a5:
    ld [hl], h
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld e, $1f
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_028_49b5:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld l, $2f
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]

jr_028_49c3:
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld a, $3f
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b

jr_028_49d3:
    ld a, c
    ld a, d
    ld a, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
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
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
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
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    xor d
    xor e
    xor h
    xor l
    ld b, l
    ld b, l
    ld b, l
    xor [hl]
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    cp d
    cp e
    cp h
    cp l
    ld b, l
    ld b, l
    cp [hl]
    xor a
    dec c
    dec c
    ld [$0808], sp
    ld [$080a], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    ld [$0808], sp
    ld [$080a], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    ld [$0808], sp
    ld [$090a], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    inc c
    ld [$0808], sp
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    inc c
    ld [$0808], sp
    ld [$0e0e], sp
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0b08], sp
    ld c, $0e
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$090b], sp
    ld c, $0e
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    dec bc
    add hl, bc
    add hl, bc
    ld c, $0a
    ld a, [bc]

jr_028_4aa3:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0a
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$090b], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld l, b
    nop
    dec b
    nop
    dec b
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $84
    add l
    add [hl]
    ld l, c
    ld bc, $0106
    ld b, $01
    rrca
    db $10
    ld de, $1312
    add a
    adc b
    adc c
    ld l, d
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc d
    dec d
    ld d, $17
    jr jr_028_4aa3

    adc e
    adc c
    ld l, e
    inc bc
    ld [$0803], sp
    inc bc
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    adc h
    adc l
    adc c
    inc hl
    inc b
    add hl, bc
    inc b
    add hl, bc
    inc b
    ld e, $1f
    jr nz, jr_028_4b54

    ld [hl+], a
    adc [hl]
    adc a
    sub b
    inc h
    dec h
    ld h, $27
    jr z, jr_028_4b66

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $91
    sub d
    sub e
    cpl
    jr nc, jr_028_4b79

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_028_4b89

    sub h
    sub l
    sub [hl]
    ld a, [hl-]

jr_028_4b54:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld l, h
    ld l, l
    ld l, [hl]
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_028_4b66:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld l, a
    ld [hl], b
    ld [hl], c
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_028_4b79:
    ld e, d
    ld [hl], d
    ld [hl], e
    ld [hl], h
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
    ld [hl], l

jr_028_4b89:
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, e
    halt
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, l
    ld [hl], a
    add b
    add c
    add d
    add e
    add b
    add c
    add d
    add e
    add b
    add c
    add d
    add e
    add d
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
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $0d
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld c, $0d
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
    ld a, [bc]
    dec bc
    ld c, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld c, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    dec c
    ld a, [bc]
    dec bc
    ld c, $0e
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld c, $0e
    add hl, bc
    inc c
    ld c, $0c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    add hl, bc
    inc c
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
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $00
    ld c, $58
    ld e, b
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld e, b
    ld e, b
    rrca
    dec b
    db $10
    ld c, $58
    ld h, $30
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $58
    rrca
    dec d
    ld bc, $0f0e
    daa
    jr z, jr_028_4cc1

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $7a
    rrca
    ld b, $11
    ld [hl], b
    ld [hl], c
    scf
    jr c, jr_028_4cdf

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $75
    halt
    ld d, $02
    ld [hl], d
    ld [hl], e
    cpl
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld c, b
    ld b, l
    ld b, d
    ld [hl], a
    ld a, b
    rlca
    ld [de], a
    ld c, $74
    ccf
    add b

jr_028_4cc1:
    add c
    add d
    add e
    ld c, b
    ld d, l
    ld d, d
    ld a, c
    rrca
    rla
    inc bc
    ld c, $0f
    ld b, b
    add h
    add l
    add [hl]
    add a
    ld c, b
    ld b, [hl]
    ld b, e
    ld a, d
    rrca
    ld [$0e13], sp
    rrca
    ld d, b
    adc b
    adc c
    adc d

jr_028_4cdf:
    adc e
    ld c, b
    ld d, [hl]
    ld d, e
    ld a, d
    rrca
    jr jr_028_4ceb

    ld c, $0f
    ld b, c
    adc h

jr_028_4ceb:
    adc l
    adc [hl]
    adc a
    ld c, c
    ld b, a
    ld b, h
    ld a, d
    rrca
    add hl, bc
    inc d
    ld e, $1f
    ld d, c
    sub b
    sub c
    sub d
    sub e
    ld e, c
    ld d, a
    ld d, h
    ld a, e
    rra
    add hl, de
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, d
    ld c, e
    ld c, h
    ld e, d
    ld e, e
    ld e, h
    ld a, [de]
    dec de
    inc e
    dec e
    ld c, l
    ld c, [hl]
    ld c, a
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, e
    ld l, h
    ld l, l
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
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
    inc c
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$090c], sp
    ld [$0908], sp
    inc c
    ld [$0b0b], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$090c], sp
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
    ld [$0a08], sp
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    ld [$0a0a], sp
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
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, e
    ld b, h
    ld b, l
    ld c, d
    nop
    nop
    nop
    nop
    inc b
    ld e, $1f
    jr nz, jr_028_4e36

    ld b, $46
    ld b, a
    ld c, b
    ld c, d
    nop
    nop
    nop
    nop
    inc b
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld b, $99
    sbc d
    ld c, c
    ld c, d
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    inc b
    ld h, $27
    jr z, jr_028_4e5a

    ld b, $9b
    sbc h
    ld c, c
    ld c, d

jr_028_4e36:
    nop
    inc c
    dec c
    ld c, $04
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld b, $9d
    sbc [hl]
    ld c, c
    ld c, d
    rrca
    db $10
    ld de, $1312
    dec b
    dec b
    dec b
    dec b
    rlca
    sbc a
    and b
    ld c, e
    ld c, h
    inc d
    dec d
    ld d, $17
    jr jr_028_4e58

jr_028_4e58:
    nop
    nop

jr_028_4e5a:
    nop
    ld [$4e4d], sp
    ld c, a
    ld d, b
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld l, $2e
    nop
    nop
    ld [$5251], sp
    ld d, e
    ld d, h
    jr nc, jr_028_4ea1

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    dec [hl]
    ld [hl], $55
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    scf
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    jr c, jr_028_4ec5

    ld a, [hl-]
    dec sp
    dec sp
    dec sp
    inc a
    dec a
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld a, $3f
    ld b, b
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld h, a

jr_028_4ea1:
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld a, $3f
    ld b, b
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld a, $3f
    ld b, b
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_028_4ec5:
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
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    dec bc
    inc c
    inc c
    inc c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    dec bc
    dec bc
    dec bc
    inc c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld [$0a0c], sp
    add hl, bc
    add hl, bc
    ld c, $0e
    dec bc
    dec bc
    dec bc
    inc c
    dec c
    ld a, [bc]
    inc c
    ld [$0a0c], sp
    add hl, bc
    add hl, bc
    ld c, $0e
    dec bc
    dec bc
    dec bc
    inc c
    dec c
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    dec c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b0c], sp
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
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
    ld b, $0e
    rrca
    db $10
    ld de, $1312
    inc d
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    dec d
    ld d, $17
    jr jr_028_4fc1

    ld hl, $192a
    dec de
    dec de
    ld a, [de]
    dec de
    dec de
    inc e
    ld h, $28
    ld hl, $2b29
    inc l
    ld a, [hl+]
    dec e
    ld e, $1f
    jr nz, jr_028_4fd6

    ld hl, $2722
    jr z, jr_028_4fdb

    add hl, hl
    dec l
    ld l, $2a
    and h
    and l
    and [hl]

jr_028_4fc1:
    and a
    ld hl, $6160
    ld h, d
    ld h, e
    ld h, b
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    xor b
    ld h, b
    ld h, b
    xor c
    ld hl, $6160
    ld h, d
    ld h, e
    ld h, b

jr_028_4fd6:
    ld l, b
    ld h, b
    ld h, b
    ld l, c
    xor d

jr_028_4fdb:
    ld h, b
    xor e
    xor h
    ld hl, $6160
    ld h, d
    ld h, e
    ld h, b
    ld l, h
    ld h, b
    ld h, b
    ld l, c
    xor l
    xor [hl]
    xor [hl]
    xor a
    ld hl, $6160
    ld h, d
    ld h, e
    ld h, b
    ld l, l
    ld h, b
    ld l, d
    ld l, e
    or b
    or c
    or d
    or e
    ld hl, $6160
    ld h, d
    ld h, e
    ld h, b
    ld l, [hl]
    ld h, b
    ld h, b
    ld l, c
    inc hl
    inc h
    inc h
    dec h
    inc h
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld h, e
    ld h, b
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    cpl
    jr nc, jr_028_5046

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld hl, $2129
    ld e, [hl]
    ld e, a
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld hl, $2a21
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
    ld c, l
    ld c, [hl]
    ld c, a
    ld a, [hl+]
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_028_5046:
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    dec bc
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0b08], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
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
    ld a, [bc]
    ld [$0808], sp
    ld [$0a08], sp
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
    ld [$6808], sp
    ld l, c
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld d, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, c
    ld l, b
    ld l, d
    ld l, e
    ld l, h
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, h
    ld l, e
    ld l, d
    nop
    ld bc, $0c02
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [bc], a
    ld bc, $0d00
    inc bc
    inc b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec b
    inc b
    inc bc
    dec c
    dec c
    dec c
    ld b, $07
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    rlca
    ld b, $0d
    dec c
    dec c
    dec c
    ld [$0d09], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    ld [$0d0d], sp
    ld c, $0d
    ld a, [bc]
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    ld a, [bc]
    dec c
    rrca
    db $10
    ld de, $0403
    dec b
    dec c
    dec c
    dec c
    dec c
    dec b
    inc b
    inc bc
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $06
    rlca
    dec c
    dec c
    dec c
    dec c
    rlca
    ld b, $17
    jr jr_028_51a5

    ld d, l
    ld d, l
    ld d, h
    ld [$1b1a], sp
    inc e
    dec e
    dec c
    jr z, jr_028_51c0

    ld a, [hl+]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld e, $1f
    jr nz, jr_028_51c2

    ld [hl+], a
    inc hl
    inc h
    dec h

jr_028_51a5:
    ld h, $27
    ld d, l
    ld d, l
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_028_51e1

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_028_51f1

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_028_51c0:
    ld b, d
    ld b, e

jr_028_51c2:
    ld b, h
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
    ld d, d
    ld d, e
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
    dec l
    dec l
    dec c

jr_028_51e1:
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
    dec l
    dec l
    dec l
    dec c
    dec c
    dec c

jr_028_51f1:
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec l
    dec l
    dec l
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
    dec l
    dec l
    dec l
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
    dec l
    dec l
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
    dec l
    dec l
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
    dec l
    dec l
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
    dec l
    dec l
    dec l
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
    dec l
    dec l
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
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
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
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
    ld a, [bc]
    ld a, [bc]
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
    ld de, $1302
    inc d
    dec d
    ld d, $17
    jr jr_028_52c7

    ld a, [de]
    dec de
    inc c
    dec c
    ld c, $0f
    inc e
    dec e
    dec e
    ld e, $1f
    rra
    rra
    rra
    rra
    ld [de], a
    jr nz, jr_028_52ed

    ld h, e
    ld h, h
    dec c
    dec c
    dec c
    ld [hl-], a
    ld c, b

jr_028_52c7:
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    jr c, jr_028_52ee

    ld l, $65
    ld h, [hl]
    dec c
    dec c
    dec c
    ld [hl-], a
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    jr c, jr_028_52fd

    cpl
    ld h, a
    ld l, b
    dec c
    dec c
    dec c
    inc sp
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    scf
    inc hl
    jr nc, jr_028_5354

    ld l, d
    ld d, a

jr_028_52ed:
    ld e, b

jr_028_52ee:
    ld e, c
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $21
    ld sp, $6c6b
    ld e, d
    ld e, e
    ld e, e

jr_028_52fd:
    ld e, h
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc h
    dec hl
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
    ld a, h
    dec h
    inc l
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
    sub a
    sbc b
    sbc c
    sub a
    sub a
    sbc d
    sub a
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
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]

jr_028_5354:
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

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
    inc c
    inc c
    dec bc
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
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
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
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
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
    ld a, [bc]
    inc c
    dec c
    ld a, [bc]
    dec bc
    inc c
    inc c
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    dec bc
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
    inc c
    dec bc
    dec bc
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
    inc c
    inc c
    dec bc
    dec bc
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
    ld c, $0b
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
    inc bc
    ld b, $02
    inc c
    dec c
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    rlca
    nop
    ld c, $0f
    ld [$0101], sp
    ld bc, $0101
    ld bc, $0101
    dec b
    ld [$0101], sp
    dec bc
    db $10
    ld de, $1111
    ld de, $1211
    ld [bc], a
    ld [bc], a
    ld d, $13
    ld [bc], a
    ld [bc], a
    add hl, bc
    rlca
    nop
    nop
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    nop
    rla
    ld d, $14
    nop
    ld a, [bc]
    ld [$0101], sp
    dec l
    ld l, $2f
    jr nc, jr_028_5494

    ld bc, $1718
    ld d, $15
    dec bc
    ld h, $27
    daa
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $27
    ld e, $19
    rla
    inc e
    ld hl, $2322
    ld [hl+], a
    ld hl, $3837
    add hl, sp
    ld a, [hl-]
    dec sp
    rra
    jr nz, jr_028_549d

    dec e
    inc h
    dec h
    dec h
    dec h
    inc h
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    rst RST_38
    rst RST_38
    rst RST_38
    dec de
    ld l, c
    ld l, d

jr_028_5494:
    ld l, d
    ld l, d
    ld l, c
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    inc a

jr_028_549d:
    dec a
    ld a, $3f
    ld l, e
    ld l, h
    ld l, h
    ld l, h
    ld l, e
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, l
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, b
    ld h, l
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld h, c
    ld h, d
    ld h, d
    ld h, l
    ld h, [hl]
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld h, e
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld [$0808], sp
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec bc
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0a08], sp
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    ld [$0a08], sp
    ld a, [bc]
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0909], sp
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
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
    add hl, bc
    add hl, bc
    add hl, bc
    inc l
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
    add hl, bc
    add hl, bc
    add hl, bc
    inc l
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
    ld a, [bc]
    ld a, [bc]
    dec c
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld e, e
    ld a, a
    ld e, l
    ld e, [hl]
    ld l, b
    ld [hl], e
    ld [hl], h
    ld l, a
    add l
    add [hl]
    ld e, c
    ld e, d
    ld e, d
    ld e, c
    ld e, e
    ld a, a
    ld e, a
    adc h
    ld l, b
    ld [hl], l
    halt
    ld [hl], b
    add a
    adc b
    ld d, a
    ld e, b
    ld e, b
    ld d, a
    ld e, e
    ld h, b
    ld h, c
    adc l
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], b
    adc c
    adc d
    ld d, a
    ld e, b
    ld e, b
    ld d, a
    ld e, e
    ld h, d
    ld h, e
    adc [hl]
    ld l, b
    ld a, c
    ld a, d
    ld [hl], c
    adc e
    ld l, [hl]
    ld d, [hl]
    ld e, b
    ld e, b
    ld d, [hl]
    ld e, h
    sub c
    sub d
    adc a
    ld l, b
    ld a, c
    ld a, e
    ld [hl], d
    ld d, c
    ld d, d
    ld d, e
    sbc l
    sbc [hl]
    ld d, h
    ld d, l
    sub e
    sub h
    sub b
    ld l, b
    ld a, h
    ld a, l
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld l, c
    ld l, d
    ld l, b
    add b
    add c
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld l, e
    ld l, h
    ld l, b
    add d
    add e
    dec [hl]
    ld [hl], $37
    jr c, jr_028_5657

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $6d
    ld l, b
    add h
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec e
    ld e, $1f
    jr nz, jr_028_5658

    ld a, [bc]
    ld [hl+], a
    inc hl
    inc h
    inc c
    dec h
    ld h, $27
    jr z, @+$13

    ld [de], a
    inc de
    inc d
    dec d
    ld d, $14
    rla
    jr jr_028_565e

    add hl, de
    ld a, [de]
    dec de
    inc e
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld a, [bc]

jr_028_5657:
    inc c

jr_028_5658:
    ld c, $0a
    rrca
    db $10
    rst RST_38
    nop

jr_028_565e:
    ld a, a
    ld bc, $02ff
    ld a, a
    inc bc
    rst RST_38
    ld a, a
    inc b
    rst RST_38
    dec b
    ld a, a
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
    ld [$0d0d], sp
    ld [$0e0e], sp
    ld a, [bc]
    ld [$2a28], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
    dec c
    ld [$0c0c], sp
    ld a, [bc]
    ld [$2a28], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
    dec c
    ld [$0e0e], sp
    ld a, [bc]
    ld [$2a28], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
    dec c
    ld [$080e], sp
    ld a, [bc]
    ld [$2a28], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld [$0b08], sp
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0b0b], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0b0b], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld [$080b], sp
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0000], sp
    ld [$0800], sp
    nop
    nop
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    dec b
    ld c, c
    ld c, d
    ld c, e
    ld c, e
    ld e, a
    rrca
    db $10
    ld b, $07
    ld [$1312], sp
    inc d
    dec d
    add c
    add d
    add e
    add h
    add l
    rrca
    jr nz, jr_028_5762

    rla
    jr jr_028_5771

    inc hl
    inc h
    dec h
    add [hl]
    add a
    adc b
    adc c
    adc d
    rra
    jr nc, jr_028_5780

    daa
    jr z, jr_028_578f

    inc sp
    inc [hl]
    dec [hl]
    adc e
    adc h

jr_028_5762:
    adc l
    adc [hl]
    adc a
    cpl
    add b
    ld [hl], $37
    jr c, jr_028_576d

    inc bc
    inc b

jr_028_576d:
    dec b
    adc e
    add a
    adc l

jr_028_5771:
    adc [hl]
    adc a
    ccf
    ld b, b
    ld b, [hl]
    ld b, a
    ld c, b
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    sub b
    sub c
    sub d
    sub e

jr_028_5780:
    adc a
    ld c, a
    ld d, b
    ld d, [hl]
    ld d, a
    ld e, b
    ld de, $0921
    ld a, [bc]
    dec bc
    inc c
    dec c
    sub h
    sub l

jr_028_578f:
    ld c, a
    rst RST_38
    ld sp, $5141
    rst RST_38
    rst RST_38
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $5a
    ld c, h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $6a
    ld c, l
    rst RST_38
    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $7a
    ld c, [hl]
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
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
    ld [$0a09], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0b09], sp
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0b09], sp
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0b09], sp
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0a09], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0a09], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    ld [$0e06], sp
    ld c, $0e
    ld b, $06
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    ld [$0606], sp
    ld b, $06
    ld b, $06
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0608], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0608], sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0c0c], sp
    inc c
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    ld c, $0e
    ld c, $10
    ld de, $1312
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    inc d
    inc d
    inc d
    ld d, $17
    jr jr_028_5938

    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    jr nz, jr_028_5948

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$22

    jr nz, jr_028_5952

    jr nz, jr_028_5955

    ld [hl+], a
    inc hl
    inc h
    dec h

jr_028_5938:
    ld [hl+], a
    inc hl
    inc h
    dec h
    inc h
    inc hl
    ld h, $7f
    ld a, a
    ld [hl], $32
    inc sp
    inc [hl]
    dec [hl]
    ld [hl-], a
    inc sp

jr_028_5948:
    inc [hl]
    dec [hl]
    inc [hl]
    inc sp
    jr nc, jr_028_597f

    ld a, a
    ld [hl], $39
    add hl, sp

jr_028_5952:
    add hl, sp
    add hl, sp
    dec l

jr_028_5955:
    ld l, $39
    add hl, sp
    add hl, sp
    add hl, sp
    dec hl
    inc l
    daa
    jr z, jr_028_5999

    dec sp
    dec sp
    inc a
    cpl
    ld b, b
    ld a, [hl-]
    dec sp
    dec sp
    inc a
    ld b, d
    ld b, e
    scf
    jr c, jr_028_59aa

    nop
    nop
    ld a, $3f
    ld b, c
    dec a
    nop
    nop
    ld a, $42
    ld b, h
    add hl, hl
    ld a, [hl+]
    inc c
    inc c
    inc c
    inc c
    inc c

jr_028_597f:
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
    inc c
    inc c

jr_028_5999:
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
    inc c
    inc c
    inc c
    inc c
    inc c

jr_028_59aa:
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
    dec c
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    dec b
    dec b
    dec c
    dec c
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    dec c
    dec b
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080d], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ccf
    rst RST_38
    ld c, a
    ccf
    rst RST_38
    rst RST_38
    ld b, $07
    ld [$0a09], sp
    dec bc
    rst RST_38
    rst RST_38
    nop
    ld bc, $0302
    inc b
    dec b
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    rst RST_38
    db $10
    ld de, $1312
    inc d
    dec d
    ld h, $27
    jr z, jr_028_5a95

    ld a, [hl+]
    dec hl
    inc l
    dec e
    jr nz, jr_028_5a93

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld [hl], $37
    jr c, jr_028_5ab3

    ld a, [hl-]
    dec sp
    inc a
    dec l
    jr nc, jr_028_5ab1

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    dec a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld d, [hl]

jr_028_5a93:
    ld d, a
    ld c, c

jr_028_5a95:
    ld c, c
    ld c, c
    ld c, c
    inc c
    ld e, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld h, [hl]
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld h, a
    ld e, $60
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, a
    ld c, c
    ld c, c

jr_028_5ab1:
    ld c, c
    ld c, c

jr_028_5ab3:
    ld c, c
    ld h, [hl]
    ld l, $0d
    ld c, $0f
    ld l, [hl]
    ld l, a
    rst RST_38
    inc c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld d, a
    ld d, [hl]
    ld a, $58
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld c, h
    ld c, e
    ld c, d
    ld c, c
    ld c, b
    ld b, a
    ld b, [hl]
    ld c, [hl]
    ld l, b
    rst RST_38
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    inc a
    dec sp
    ld a, [hl-]
    add hl, sp
    jr c, jr_028_5b15

    ld [hl], $5e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld l, c
    dec hl
    ld a, [hl+]
    add hl, hl
    jr z, jr_028_5b13

    ld h, $1f
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    inc e
    dec de
    ld a, [de]
    add hl, de
    jr @+$19

    ld d, $2f
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    rlca
    add hl, bc
    add hl, hl
    rlca
    rlca
    ld [$0808], sp

jr_028_5b13:
    ld c, $0e

jr_028_5b15:
    ld c, $07
    rlca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0907], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$090d], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    ld l, b
    ld [$0808], sp
    ld [$6808], sp
    ld [$0b0c], sp
    dec bc
    dec bc
    inc c
    rlca
    ld l, b
    ld [$0808], sp
    ld [$6868], sp
    ld [$0c0e], sp
    inc c
    inc c
    inc c
    inc c
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0708], sp
    inc c
    inc c
    inc c
    inc c
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld c, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld c, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld c, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    ld c, d
    ld c, e
    ld c, h
    or d
    or e
    nop
    ld bc, $0302
    inc b
    or h
    or l
    or [hl]
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    or a
    dec b
    ld b, $07
    ld [$b809], sp
    cp c
    cp d
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    cp e
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $bf
    cp a
    cp a
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    rrca
    db $10
    ld de, $1312
    cp a
    cp h
    cp l
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    cp [hl]
    inc d
    dec d
    ld d, $17
    jr jr_028_5c2b

    ld a, [de]
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_028_5c8a

    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld hl, $2322

jr_028_5c2b:
    inc h
    dec h
    ld h, $71
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    daa
    jr z, jr_028_5c62

    ld a, [hl+]
    dec hl
    inc l
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    dec l
    ld l, $ff
    cpl
    jr nc, jr_028_5c7b

    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    jr c, @+$3b

jr_028_5c62:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a

jr_028_5c7b:
    and b
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b

jr_028_5c8a:
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [$0e0e], sp
    ld c, $0e
    ld c, $0e
    ld [$0808], sp
    ld c, $0e
    ld c, $08
    ld [$0e08], sp
    ld c, $0e
    ld c, $0e
    ld [$0808], sp
    ld c, $0e
    ld c, $08
    ld [$0e08], sp
    ld c, $0e
    ld c, $0e
    ld [$0808], sp
    ld [$090e], sp
    ld [$0808], sp
    ld c, $0e
    ld c, $0e
    ld c, $08
    ld [$0808], sp
    ld c, $09
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld c, $0e
    inc c
    ld [$0808], sp
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
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
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
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
    add hl, bc
    add hl, bc
    rlca
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
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $1000
    ld de, $1312
    inc d
    dec d
    ld d, $16
    dec d
    inc d
    inc de
    ld [de], a
    ld de, $2010
    ld hl, $2322
    inc h
    dec h
    ld h, $26
    dec h
    inc h
    inc hl
    ld [hl+], a
    ld hl, $3020
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $36
    dec [hl]
    inc [hl]
    inc sp
    ld [hl-], a
    ld sp, $4030
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld b, h
    ld b, e
    ld b, d
    ld b, c
    ld b, b
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, e
    ld d, d
    ld d, c
    ld d, b
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$1707], sp
    jr jr_028_5dcc

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    dec de
    daa
    jr z, jr_028_5dd5

    rla
    ld [hl], h
    add hl, hl
    ld a, [hl+]
    rst RST_38
    dec hl
    inc l
    dec l
    dec l
    inc l
    ld l, $2f
    scf
    jr c, jr_028_5e40

jr_028_5dcc:
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    rst RST_38
    dec a
    ld a, $3e
    dec a

jr_028_5dd5:
    ccf
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    rst RST_38
    rst RST_38
    ld c, a
    ld c, a
    rst RST_38
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    rst RST_38
    ld h, [hl]
    ld h, a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    rst RST_38
    rst RST_38
    ld l, [hl]
    ld l, a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, $0e
    ld c, $08

jr_028_5e40:
    ld [$0808], sp
    jr z, jr_028_5e6d

    jr z, jr_028_5e6f

    ld l, $2e
    ld l, $0e
    ld c, $08
    ld [$0808], sp
    ld [$2828], sp
    jr z, jr_028_5e7d

    jr z, jr_028_5e85

    ld l, $0e
    ld c, $0e
    ld [$0808], sp
    ld [$2828], sp
    jr z, jr_028_5e8b

    ld l, $2e
    ld l, $0e
    ld c, $0e
    ld [$0808], sp
    dec bc

jr_028_5e6d:
    dec bc
    ld a, [bc]

jr_028_5e6f:
    jr z, @+$2a

    ld l, $2e
    ld l, $0e
    ld c, $0e
    inc c
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]

jr_028_5e7d:
    jr z, @+$0a

    ld c, $2e
    ld l, $0e
    ld c, $0e

jr_028_5e85:
    nop
    ld [$0a0b], sp
    ld a, [hl+]
    dec hl

jr_028_5e8b:
    ld [$0808], sp
    ld c, $2e
    ld [$0b08], sp
    dec bc
    nop
    ld [$2b0b], sp
    jr z, jr_028_5ea3

    dec bc
    dec bc
    ld [$080e], sp
    dec bc
    dec bc
    dec bc
    nop

jr_028_5ea3:
    nop
    ld [$0028], sp
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0b0b], sp
    dec bc
    nop
    nop
    nop
    nop
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    ld [$0b0b], sp
    dec c
    dec c
    dec bc
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    ld bc, $0001
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [bc], a
    inc bc
    inc b
    inc b
    inc bc
    ld [bc], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec b
    ld b, $07
    ld [$0708], sp
    ld b, $05
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $7f12
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld a, a
    jr nz, @+$23

    ld [hl+], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_028_5f7a

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_028_5f8a

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_028_5f9a

    ld a, [hl-]
    dec sp
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
    ld d, d

jr_028_5f7a:
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
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_028_5f8a:
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
    rst RST_38
    ld l, a
    ld [hl], b
    ld [hl], c

jr_028_5f9a:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0b0b
    dec hl
    dec hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $0b0b
    ld a, [bc]
    dec c
    dec l
    ld a, [hl+]
    dec hl
    dec hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a09
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $0901
    ld [$0808], sp
    ld [$0909], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0809
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0809
    ld [$0808], sp
    add hl, bc
    ld bc, $0909
    add hl, bc
    ld bc, $0101
    ld bc, $0d0b
    ld [$0d08], sp
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
    ld a, [bc]
    inc c
    inc c
    ld c, $08
    ld [$0909], sp
    dec bc
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0a
    ld c, $0d
    ld [$0808], sp
    ld c, $0b
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    inc c
    ld c, $0e
    dec c
    dec c
    dec c
    ld [$0e0e], sp
    ld c, $0a
    ld a, [bc]
    ld c, $0a
    ld a, [bc]
    ld c, $0d
    ld c, $0a
    ld a, [bc]
    ld c, $0a
    ld a, [bc]
    ld c, $0a
    ld a, [bc]
    ld c, $0a
    ld c, $0d
    ld c, $0e
    ld a, [bc]
    ld c, $00
    ld c, $0e
    ld c, $00
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0100
    rlca
    ld [$0100], sp
    ld bc, $0001
    ld bc, $4342
    nop
    ld bc, $0900
    ld a, [bc]
    dec bc
    inc c
    ld bc, $0101
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld bc, $0e0d
    rrca
    db $10
    ld de, $0112
    ld bc, $4a49
    ld c, e
    ld c, h
    ld c, l
    ld bc, $130d
    inc d
    dec d
    ld d, $17
    jr jr_028_60d3

    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $03
    inc bc
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    inc bc
    nop
    rra
    jr nz, jr_028_60f3

    ld [hl+], a

jr_028_60d3:
    inc hl
    inc b
    inc b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    inc b
    nop
    inc h
    dec h
    ld h, $27
    jr z, @+$42

    ld b, c
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    dec b
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2e
    dec l

jr_028_60f3:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld b, $00
    cpl
    jr nc, jr_028_612d

    ld [hl-], a
    inc sp
    inc [hl]
    inc [hl]
    dec [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld b, $36
    scf
    jr c, @+$3b

    ld a, [hl-]
    ld b, $06
    ld b, $00
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, $06
    ld b, $00
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [$0d0d], sp
    dec c
    ld [$0d0d], sp
    dec c
    ld [$0d0d], sp

jr_028_612d:
    dec c
    ld [$080d], sp
    dec c
    dec c
    dec c
    ld [$0d0d], sp
    dec c
    ld [$0d0d], sp
    dec c
    ld [$080d], sp
    dec c
    dec c
    dec c
    ld [$0d0d], sp
    dec c
    ld [$0d0d], sp
    dec c
    ld [$080d], sp
    dec c
    add hl, bc
    add hl, bc
    ld [$0d0d], sp
    dec c
    ld [$090d], sp
    add hl, bc
    ld [$080d], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    dec c
    dec c
    dec c
    dec bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    dec bc
    dec c
    ld [$0a09], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    dec c
    ld c, b
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    dec c
    dec c
    dec c
    ld [$090a], sp
    add hl, bc
    add hl, bc
    dec c
    ld [$090d], sp
    add hl, bc
    ld a, [bc]
    dec c
    dec c
    dec c
    ld [$090a], sp
    add hl, bc
    dec bc
    dec c
    ld [$0b0d], sp
    dec bc
    ld [$0d0d], sp
    dec c
    ld [$0b08], sp
    dec bc
    dec bc
    dec c
    ld [$090e], sp
    add hl, bc
    inc c
    ld [$2808], sp
    jr z, jr_028_61c4

    add hl, bc
    add hl, bc
    dec bc
    dec c
    ld [$090e], sp
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec l

jr_028_61c4:
    ld [$0909], sp
    add hl, bc
    inc c
    dec c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    dec c
    dec c
    dec c
    ld [$090e], sp
    add hl, bc
    add hl, bc
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec c
    dec c
    dec c
    ld [$090e], sp
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    ld bc, $0002
    inc bc
    nop
    ld bc, $0002
    inc de
    inc bc
    nop
    nop
    ld de, $1010
    db $10
    db $10
    ld de, $1010
    db $10
    ld [de], a
    db $10
    db $10
    ld [de], a
    db $10
    inc d
    rst RST_38
    rst RST_38
    rst RST_38
    dec b
    ld b, $07
    ld [$0a09], sp
    rst RST_38
    rst RST_38
    rst RST_38
    inc d
    rst RST_38
    inc b
    rst RST_38
    dec d
    ld d, $49
    ld c, d
    ld a, [de]
    rla
    jr jr_028_6234

    inc b
    rst RST_38
    rst RST_38
    inc b
    rst RST_38
    rst RST_38
    dec bc
    inc h
    dec h
    ld h, $27
    jr z, jr_028_6234

    dec c
    rst RST_38
    rst RST_38
    inc b
    rst RST_38
    inc b
    rst RST_38
    dec de
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_028_6234:
    jr c, jr_028_6252

    dec e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld c, $4a
    ld c, b
    ld c, c
    ld c, d
    ld a, [de]
    inc e
    rrca
    rst RST_38
    inc d
    rst RST_38
    inc b
    rst RST_38
    rst RST_38
    ld e, $29
    ld a, [hl+]
    dec hl
    inc l
    ld c, d
    ld a, [de]

jr_028_6252:
    rra
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    inc d
    rst RST_38
    inc hl
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld a, [de]
    ld c, b
    jr nz, @+$01

    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    dec l
    ld l, $2f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    jr nc, @+$01

    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    dec a
    ld a, $3f
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld hl, $ffff
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld [hl+], a
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld c, e
    ld c, h
    ld sp, $ffff
    rst RST_38
    ld b, h
    ld b, l
    ld b, h
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, l
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    ld d, h
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld d, a
    ld d, l
    ld d, h
    ld d, l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0101
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $0101
    add hl, bc
    ld bc, $0109
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    add hl, bc
    ld bc, $0901
    ld bc, $0a01
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld bc, $0901
    ld bc, $0109
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld bc, $0101
    ld bc, $0101
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld bc, $0109
    add hl, bc
    ld bc, $0a01
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld bc, $0101
    ld bc, $0109
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld bc, $0101
    ld bc, $0101
    ld [$0808], sp
    ld [$0808], sp
    ld [$010a], sp
    ld bc, $0101
    ld bc, $0801
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld bc, $0101
    ld bc, $0101
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld bc, $0101
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    ld bc, $0302
    inc b
    dec b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, $17
    jr jr_028_63b8

    ld a, [de]
    dec de
    inc e
    dec e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld e, $1f
    jr nz, jr_028_63cd

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $7f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    daa

jr_028_63b8:
    jr z, jr_028_63e3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $7f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cpl
    jr nc, jr_028_63fa

    ld [hl-], a
    inc sp
    inc [hl]
    ld a, a

jr_028_63cd:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec [hl]
    ld [hl], $37
    jr c, jr_028_6411

    ld a, [hl-]
    dec sp
    inc a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec a
    ld a, $3f
    ld b, b

jr_028_63e3:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld a, a
    ld c, c
    rst RST_38
    rst RST_38
    rst RST_38
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    rst RST_38
    rst RST_38
    rst RST_38
    ld d, b

jr_028_63fa:
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_028_6411:
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld bc, $0101
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0809
    ld [$0808], sp
    ld [$0908], sp
    ld bc, $0101
    ld bc, $0101
    inc c
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld bc, $0101
    ld bc, $0901
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0808
    ld [$0808], sp
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $080d
    ld [$0808], sp
    ld [$0d0e], sp
    ld bc, $0101
    ld bc, $0909
    dec c
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    ld bc, $0009
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld [bc], a
    dec bc
    nop
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    dec c
    ld d, $00
    nop
    rla
    jr @+$01

    rst RST_38
    ld a, [hl-]
    dec sp
    inc a
    rst RST_38
    rst RST_38
    rst RST_38
    jr jr_028_6538

    nop
    nop
    rla
    jr @+$01

    rst RST_38
    dec a
    ld a, $3f
    ld b, b
    rst RST_38
    rst RST_38
    jr jr_028_6546

    nop
    nop
    rla
    jr @+$01

    rst RST_38
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rst RST_38

jr_028_6538:
    rst RST_38
    jr jr_028_6554

    nop
    nop
    rla
    jr @+$01

    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    rst RST_38

jr_028_6546:
    rst RST_38
    jr jr_028_6562

    nop
    nop
    rla
    jr @+$01

    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_028_6554:
    rst RST_38
    jr jr_028_6570

    nop
    ld a, [de]
    rla
    jr @+$01

    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_028_6562:
    rst RST_38
    jr jr_028_657e

    nop
    dec de
    rla
    jr @+$58

    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_028_6570:
    rst RST_38
    jr jr_028_658c

    inc e
    dec e
    ld e, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra

jr_028_657e:
    rra
    rra
    jr nz, jr_028_65a3

    ld [hl+], a
    inc hl
    inc h
    inc h
    dec h
    inc hl
    inc h
    inc h
    ld h, $27

jr_028_658c:
    inc h
    inc h
    ld h, $22
    jr z, jr_028_65bb

    ld a, [hl+]
    ld a, [hl+]
    dec hl
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    inc l
    dec l
    ld l, $2a
    inc l
    jr z, @+$2a

    cpl
    jr nc, jr_028_65d3

    ld [hl-], a

jr_028_65a3:
    cpl
    jr nc, jr_028_65d6

    inc sp
    inc [hl]
    jr nc, jr_028_65da

    inc sp
    jr z, @+$2a

    dec [hl]
    ld [hl], $36
    scf
    dec [hl]
    ld [hl], $36
    jr c, jr_028_65ef

    ld [hl], $36
    jr c, @+$2a

    ld a, [bc]

jr_028_65bb:
    ld c, $0d
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    ld c, $2a
    ld a, [bc]
    ld c, $0d
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e

jr_028_65d3:
    dec l
    ld c, $2a

jr_028_65d6:
    ld a, [bc]
    ld c, $0e
    rlca

jr_028_65da:
    rlca
    ld [$0808], sp
    rlca
    rlca
    rlca
    ld l, $0e
    ld a, [hl+]
    ld a, [bc]
    ld c, $0e
    rlca
    rlca
    ld [$0808], sp
    ld [$0707], sp

jr_028_65ef:
    ld l, $0e
    ld a, [hl+]
    ld a, [bc]
    ld c, $0e
    rlca
    rlca
    ld [$0808], sp
    ld [$0707], sp
    ld l, $0e
    ld a, [hl+]
    ld a, [bc]
    ld c, $0e
    rlca
    ld [$0808], sp
    ld [$0708], sp
    rlca
    ld l, $0e
    ld a, [hl+]
    ld a, [bc]
    ld c, $0e
    rlca
    ld [$0808], sp
    ld [$0808], sp
    rlca
    ld l, $0e
    ld a, [hl+]
    ld a, [bc]
    ld c, $0e
    rlca
    ld [$0808], sp
    ld [$0808], sp
    rlca
    ld l, $0e
    ld a, [hl+]
    ld a, [bc]
    ld c, $0e
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$2e07], sp
    ld c, $0a
    dec bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec bc
    dec bc
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
    dec hl
    dec bc
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
    dec hl
    dec bc
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
    dec hl
    dec bc
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
    dec hl
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0000], sp
    add hl, bc
    ld a, [bc]
    db $10
    ld de, $1413
    dec d
    ld d, $17
    jr jr_028_66ae

    ld a, [de]
    dec de
    inc e
    dec e
    ld [de], a
    jr nz, @+$23

    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_028_66cc

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld [hl+], a
    dec bc
    inc c
    rra
    rra
    rra
    rra

jr_028_66ae:
    rra
    dec c
    ld c, $1f
    ld e, $1f
    rra
    ld e, $30
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_028_66f9

    ld a, [hl-]
    dec sp
    inc a
    dec a
    cpl
    ld a, a
    ld a, a
    ld a, a
    ld b, b
    ld b, c
    ld b, d
    ld b, e

jr_028_66cc:
    ld b, h
    ld b, l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b
    ld d, c
    ld d, d
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
    ld l, $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld a, $78
    ld a, c
    ld a, d
    ld a, e
    ccf

jr_028_66f9:
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld l, $80
    add c
    add d
    add e
    ld a, $88
    adc c
    adc d
    adc e
    ccf
    ld c, b
    ld c, c
    ld c, b
    ld l, $74
    ld [hl], l
    halt
    ld [hl], a
    ld a, $7c
    ld a, l
    ld a, [hl]
    ld a, a
    ccf
    ld c, d
    ld c, e
    ld c, h
    ld l, $84
    add l
    add [hl]
    add a
    ld a, $8c
    adc l
    adc [hl]
    adc a
    ccf
    ld c, l
    ld c, [hl]
    ld c, l
    ld e, a
    ld l, [hl]
    ld l, a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ld c, a
    ld e, [hl]
    ld c, a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc b
    sbc c
    sbc d
    sbc e
    sbc [hl]
    sbc b
    sbc c
    sbc d
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    add hl, bc
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    inc c
    inc c
    inc c
    add hl, bc
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
    inc c
    inc c
    inc c
    add hl, bc
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
    inc c
    inc c
    inc c
    add hl, bc
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
    inc c
    inc c
    inc c
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
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
