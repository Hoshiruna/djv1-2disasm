; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

    ld b, d
    ld b, b
    jp z, Jump_026_5241

    ld b, e
    jp c, $6244

    ld b, [hl]
    ld [$7247], a
    ld c, c
    ld a, [$824a]
    ld c, h
    ld a, [bc]
    ld c, [hl]
    sub d
    ld c, a
    ld a, [de]
    ld d, c
    and d
    ld d, d
    ld a, [hl+]
    ld d, h
    or d
    ld d, l
    ld a, [hl-]
    ld d, a
    jp nz, Jump_026_4a58

    ld e, d
    jp nc, Jump_026_5a5b

    ld e, l
    ldh [c], a
    ld e, [hl]
    ld l, d
    ld h, b
    ldh a, [c]
    ld h, c
    ld a, d
    ld h, e
    ld [bc], a
    ld h, l
    adc d
    ld h, [hl]
    ld [de], a
    ld l, b
    sbc d
    ld l, c
    ld [hl+], a
    ld l, e
    xor d
    ld l, h
    ld [hl-], a
    ld l, [hl]
    cp d
    ld l, a
    ld b, d
    ld [hl], c
    nop
    ld bc, $0302
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
    jr jr_026_4075

    ld a, [de]
    dec de
    inc c
    dec c
    ld c, $0f
    jr nz, jr_026_4085

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_026_4095

    inc e
    dec e
    ld e, $1f
    jr nc, jr_026_40a3

    ld [hl-], a
    inc sp
    inc [hl]

jr_026_4075:
    dec [hl]
    ld [hl], $37
    jr c, jr_026_40b3

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

jr_026_4085:
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

jr_026_4095:
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

jr_026_40a3:
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

jr_026_40b3:
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
    ld bc, $1c02
    inc bc
    inc b
    dec b
    dec b
    inc b
    inc bc
    dec e
    ld e, $0f
    nop
    nop
    ld bc, $1c02
    inc de
    inc d
    dec d
    dec d
    inc d
    ld a, [bc]
    dec bc
    ld e, $0f
    nop
    nop
    ld bc, $2212
    inc hl
    inc h
    dec h
    ld [hl-], a
    inc sp
    inc [hl]
    ld a, [de]
    dec de
    rrca
    nop
    nop
    db $10
    ld b, $06
    ld b, $07
    ld [$3635], sp
    scf
    ld b, $06
    rrca
    nop
    nop
    jr nz, @+$0b

    inc c
    inc c
    rla
    jr jr_026_4242

    add hl, sp
    ld a, [hl-]
    dec c
    ld c, $0f
    nop
    nop
    jr nz, jr_026_4215

    ld h, $1c

jr_026_4215:
    daa
    jr z, jr_026_4253

    inc a
    ld h, $1d
    ld a, $3f
    nop
    nop
    jr nz, jr_026_4223

    ld h, $0a

jr_026_4223:
    dec bc
    ld e, $02
    ld h, $0a
    dec bc
    ld b, c
    ld b, d
    nop
    nop
    ld de, $2212
    inc hl
    ld a, [de]
    dec de
    ld [de], a
    ld [hl+], a
    inc hl
    ld a, [de]
    ld a, [hl+]
    dec hl
    nop
    nop
    ld hl, $0606
    ld b, $06
    ld b, $06

jr_026_4242:
    ld b, $06
    ld b, $2c
    dec l
    nop
    nop
    ld hl, $0c09
    inc c
    dec c
    ld c, $09
    inc c
    inc c
    dec c

jr_026_4253:
    ld l, $2f
    nop
    nop
    ld hl, $2602
    inc e
    dec e
    ld e, $02
    ld h, $1c
    dec e
    jr nc, jr_026_4294

    nop
    nop
    ld hl, $2602
    ld a, [bc]
    dec bc
    ld e, $02
    ld h, $0a
    dec bc
    ld e, $0f
    nop
    nop
    ld hl, $2212
    inc hl
    ld a, [de]
    dec de
    ld [de], a
    ld [hl+], a
    inc hl
    ld a, [de]
    dec de
    rrca
    nop
    nop
    ld hl, $0606
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rrca
    nop
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec c
    dec c

jr_026_4294:
    ld [$2d28], sp
    dec l
    dec bc
    ld a, [bc]
    dec bc
    add hl, hl
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec c
    ld [$2d28], sp
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    add hl, hl
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    ld [$0c08], sp
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    add hl, hl
    add hl, bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld a, [bc]
    ld a, [bc]
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    add hl, hl
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    add hl, hl
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    add hl, hl
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    add hl, hl
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld c, $0e
    add hl, hl
    add hl, bc
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
    ld c, $0e
    add hl, hl
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld c, $0e
    add hl, hl
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld c, $0e
    add hl, hl
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    add hl, hl
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    add hl, hl
    add hl, bc
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
    dec bc
    add hl, hl
    nop
    ld bc, $0f02
    rrca
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_026_4388

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_026_4398

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_026_43a8

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_026_43b8

    ld [hl-], a

jr_026_4388:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_43c8

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_026_4398:
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

jr_026_43a8:
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

jr_026_43b8:
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

Call_026_43c5:
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_026_43c8:
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
    rst RST_38
    and l
    rst RST_38
    rst RST_38
    rst RST_38
    and [hl]
    and a
    xor b
    xor c
    xor d
    rst RST_38
    rst RST_38
    xor e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    xor h
    xor l
    xor [hl]
    xor a
    or b
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
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
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    ld [$0808], sp
    ld [$0d09], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    ld [$0808], sp
    ld [$0908], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$080a], sp
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld [$0808], sp
    ld [$0d0b], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld [$0808], sp
    ld [$0d0b], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0d0b], sp
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
    inc c
    inc c
    dec c
    dec c
    dec c
    dec c
    nop
    dec c
    nop
    nop
    nop
    inc c
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc bc
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    db $10
    ld de, $1312
    inc bc
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    jr nz, jr_026_4519

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_026_4529

    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr nc, jr_026_4537

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_4547

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
    ld b, [hl]

jr_026_4519:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_026_4529:
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

jr_026_4537:
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

jr_026_4547:
    ld a, e
    ld a, h
    ld a, l
    add b
    add c
    add d
    add e
    add h
    add l
    halt
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
    halt
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    and b
    and c
    and d
    and e
    and h
    and l
    halt
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    or b
    or c
    or d
    or e
    or h
    or l
    halt
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    ld c, $0f
    ld l, $2f
    ld c, [hl]
    ld c, a
    ld l, [hl]
    ld l, a
    adc [hl]
    adc a
    xor [hl]
    xor a
    call z, $1ecf
    rra
    ld a, $3f
    ld e, [hl]
    ld e, a
    ld a, [hl]
    ld a, a
    sbc [hl]
    sbc a
    cp [hl]
    cp a
    inc d
    ret nc

    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld [$0a08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0e0e], sp
    ld c, $0e
    ld [$0a08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0d0a], sp
    ld [$0a0a], sp
    ld a, [bc]
    inc c
    ld [$0908], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0908], sp
    add hl, bc
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0908], sp
    add hl, bc
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b0b], sp
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
    nop
    ld bc, $0302
    inc bc
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    db $10
    ld de, $1312
    inc bc
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    jr nz, jr_026_46a1

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_026_46b1

    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr nc, jr_026_46bf

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

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
    ld b, [hl]

jr_026_46a1:
    ld b, a
    ld c, b
    ld c, c
    and [hl]
    jp nc, $4dc5

    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_026_46b1:
    ld e, c
    call nz, $c6d1
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

jr_026_46bf:
    ld l, c
    call nz, $c6d1
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
    call nz, $c6d1
    ld a, l
    add b
    add c
    add d
    add e
    add h
    add l
    halt
    add a
    adc b
    adc c
    inc b
    adc e
    rst RST_00
    adc l
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    halt
    sub a
    sbc b
    sbc c
    add [hl]
    sbc e
    ret z

    sbc l
    and b
    and c
    and d
    and e
    and h
    and l
    halt
    and a
    xor b
    xor c
    ret nz

    xor e
    ret


    xor l
    or b
    or c
    or d
    or e
    or h
    or l
    halt
    or a
    cp b
    cp c
    call $cabb
    cp l
    ld c, $0f
    ld l, $2f
    ld c, [hl]
    ld c, a
    ld l, [hl]
    ld l, a
    adc [hl]
    adc a
    adc $af
    set 1, a
    ld e, $1f
    ld a, $3f
    ld e, [hl]
    ld e, a
    ld a, [hl]
    ld a, a
    sbc [hl]
    sbc a
    cp [hl]
    cp a
    inc d
    ret nc

    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld [$0a08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0e0e], sp
    ld c, $0e
    ld [$0a08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0d0a], sp
    ld [$0a0a], sp
    ld a, [bc]
    inc c
    ld [$0908], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0908], sp
    add hl, bc
    ld [$0a08], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0908], sp
    add hl, bc
    ld [$0a08], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0a08], sp
    dec bc
    dec bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b0b], sp
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    ld [$1009], sp
    inc d
    dec d
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    ld a, [bc]
    dec bc
    db $10
    ld d, $17
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    inc c
    dec c
    db $10
    jr jr_026_482c

    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    rlca
    ld c, $0f
    ld de, $1b1a
    inc e
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0401
    dec b
    ld b, $12

jr_026_482c:
    inc de
    dec e
    ld e, $1f
    ld a, a
    jr nz, jr_026_4854

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_026_4864

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_026_4874

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_4884

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_026_4854:
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

jr_026_4864:
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

jr_026_4874:
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

jr_026_4884:
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
    nop
    nop
    nop
    nop
    dec c
    dec l
    nop
    nop
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    dec c
    dec l
    nop
    nop
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    dec c
    ld l, l
    nop
    nop
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    dec c
    ld l, l
    nop
    dec c
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec c
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
    dec c
    dec c
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
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
    ld [$0100], sp
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    ld [$0b0a], sp
    ld c, e
    ld c, h
    ld c, l
    inc c
    dec b
    ld b, $07
    ld c, $6b
    ld l, h
    ld l, l
    ld c, $0a
    dec bc
    ld c, [hl]
    ld c, a
    ld d, b
    dec c
    dec b
    ld b, $07
    rrca
    ld l, [hl]
    ld l, a
    ld [hl], b
    rrca
    ld a, [bc]
    dec bc
    ld c, [hl]
    ld d, c
    ld d, d
    dec c
    dec b
    ld b, $07
    rrca
    ld [hl], c
    ld [hl], d
    ld [hl], e
    rrca
    ld a, [bc]
    dec bc
    ld d, e
    ld d, h
    ld d, l
    dec c
    dec b
    ld b, $07
    rrca
    ld [hl], h
    ld [hl], l
    halt
    rrca
    ld a, [bc]
    dec bc
    ld d, [hl]
    ld d, a
    ld e, b
    dec c
    dec b
    ld b, $07
    rrca
    ld [hl], a
    ld a, b
    ld a, c
    rrca
    daa
    dec bc
    ld e, c
    ld e, d
    ld e, e
    dec c
    dec b
    ld b, $07
    rrca
    ld a, d
    ld a, e
    ld a, h
    rrca
    jr z, jr_026_49e0

    ld e, c
    ld e, h
    ld e, l
    dec c
    dec b
    ld b, $07
    rrca
    ld a, l
    ld b, h
    ld h, e

jr_026_49e0:
    rrca
    add hl, hl
    dec bc
    ld e, [hl]
    ld e, a
    ld h, b
    dec c
    dec b
    ld b, $25
    ld h, $7e
    ld a, a
    ld a, [hl]
    ld h, $2a
    dec bc
    ld h, c
    ld h, d
    ld h, e
    dec c
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_026_4a16

    dec hl
    dec bc
    ld h, h
    ld h, l
    ld h, [hl]
    inc e
    dec e
    ld e, $1f
    jr nz, jr_026_4a29

    ld [hl+], a
    inc hl
    inc h
    inc l
    dec bc
    ld h, a
    ld l, b
    ld l, c
    jr nc, jr_026_4a43

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]

jr_026_4a16:
    ld [hl], $37
    jr c, jr_026_4a47

    db $10
    ld l, d
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld l, $11

jr_026_4a29:
    ccf
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, h
    ld a, $3f
    ld c, b
    ld c, c
    ld c, d
    ld b, e
    cpl
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl

jr_026_4a43:
    ld [$0908], sp
    add hl, bc

jr_026_4a47:
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

Jump_026_4a58:
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0829], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$2908], sp
    ld [$0908], sp
    add hl, bc
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0b08], sp
    add hl, hl
    dec bc
    ld [$0808], sp
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    add hl, hl
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    add hl, hl
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$2808], sp
    add hl, hl
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    jr z, @+$0a

    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    ld [$0b0a], sp
    ld c, e
    ld c, h
    ld c, l
    inc c
    dec b
    ld b, $07
    ld c, $92
    sub e
    sub e
    ld c, $0a
    dec bc
    ld c, [hl]
    ld c, a
    ld d, b
    dec c
    dec b
    ld b, $07
    rrca
    sub h
    sub l
    sub [hl]
    rrca
    ld a, [bc]
    dec bc
    ld c, [hl]
    ld d, c
    ld d, d
    dec c
    dec b
    ld b, $07
    rrca
    sub a
    sbc b
    sbc c

jr_026_4b30:
    rrca
    ld a, [bc]
    dec bc
    ld d, e
    ld d, h
    ld d, l
    dec c
    dec b
    ld b, $07
    rrca
    sub a
    sbc b
    sbc c
    rrca
    ld a, [bc]
    dec bc
    ld d, [hl]
    ld d, a
    ld e, b
    dec c
    dec b
    ld b, $07
    rrca
    sub a
    sbc b
    sbc c
    rrca
    daa
    dec bc
    ld e, c
    ld e, d
    ld e, e
    dec c
    dec b
    ld b, $07
    rrca
    sub a
    sbc b
    sbc c
    rrca
    jr z, jr_026_4b68

    ld e, c
    ld e, h
    ld e, l
    dec c
    dec b
    ld b, $07
    rrca
    sub a
    sbc b
    sbc c

jr_026_4b68:
    rrca
    add hl, hl
    dec bc
    ld e, [hl]
    ld e, a
    ld h, b
    dec c
    dec b
    ld b, $25
    ld h, $9a
    sbc e
    sbc h
    ld h, $2a
    dec bc
    ld h, c
    ld h, d
    ld h, e
    dec c
    ld [de], a
    inc de
    inc d
    dec d
    sbc l
    sbc [hl]
    sbc a
    add hl, de
    dec hl
    dec bc
    ld h, h
    ld h, l
    ld h, [hl]
    inc e
    dec e
    ld e, $1f
    jr nz, jr_026_4b30

    and c
    and b
    inc h
    inc l
    dec bc
    ld h, a
    ld l, b
    ld l, c
    jr nc, jr_026_4bcb

    ld [hl-], a
    inc sp
    inc [hl]
    and b
    and d
    and b
    jr c, jr_026_4bcf

    db $10
    ld l, d
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    and e
    and h
    sub b
    ld b, e
    ld l, $11
    ccf
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, h
    ld a, $3f
    and l
    and [hl]
    and [hl]
    ld b, e
    cpl
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl

jr_026_4bcb:
    ld [$0908], sp
    add hl, bc

jr_026_4bcf:
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    inc c
    inc c
    inc c
    add hl, hl
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    ld [$0908], sp
    add hl, bc
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    dec bc
    ld [$0808], sp
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    inc c
    inc c
    inc c
    add hl, hl
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, c
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    jr z, jr_026_4c7f

    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc

jr_026_4c7f:
    add hl, bc
    ld [$0008], sp
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    ld [$0b0a], sp
    add b
    add c
    add d
    inc c
    dec b
    ld b, $07
    ld c, $6b
    ld l, h
    ld l, l
    ld c, $0a
    dec bc
    add e
    add h
    add l
    dec c
    dec b
    ld b, $07
    rrca
    ld l, [hl]
    ld l, a
    ld [hl], b
    rrca
    ld a, [bc]
    dec bc
    add [hl]
    add a
    adc b
    dec c
    dec b
    ld b, $07
    rrca
    ld [hl], c
    ld [hl], d
    ld [hl], e
    rrca
    ld a, [bc]
    dec bc
    add [hl]
    add a
    adc b
    dec c
    dec b
    ld b, $07
    rrca
    ld [hl], h
    ld [hl], l
    halt
    rrca
    ld a, [bc]
    dec bc
    add [hl]
    add a
    adc b
    dec c
    dec b
    ld b, $07
    rrca
    ld [hl], a
    ld a, b
    ld a, c
    rrca
    daa
    dec bc
    add [hl]
    add a
    adc b
    dec c
    dec b
    ld b, $07
    rrca
    ld a, d
    ld a, e
    ld a, h
    rrca
    jr z, jr_026_4cf0

    add [hl]
    add a
    adc b
    dec c
    dec b
    ld b, $07
    rrca
    ld a, l
    ld b, h
    ld h, e

jr_026_4cf0:
    rrca
    add hl, hl
    dec bc
    add [hl]
    add a
    adc b
    dec c
    dec b
    ld b, $25
    ld h, $7e
    ld a, a
    ld a, [hl]
    ld h, $2a
    dec bc
    add [hl]
    add a
    adc b
    dec c
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_026_4d26

    dec hl
    dec bc
    adc c
    adc d
    adc e
    inc e
    dec e
    ld e, $1f
    jr nz, jr_026_4d39

    ld [hl+], a
    inc hl
    inc h
    inc l
    dec bc
    adc h
    adc l
    adc [hl]
    jr nc, jr_026_4d53

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]

jr_026_4d26:
    ld [hl], $37
    jr c, jr_026_4d57

    db $10
    adc a
    sub b
    sub c
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld l, $11

jr_026_4d39:
    sub b
    sub b
    sub c
    ld b, [hl]
    ld b, a
    ld b, h
    ld a, $3f
    ld c, b
    ld c, c
    ld c, d
    ld b, e
    cpl
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl

jr_026_4d53:
    ld [$0908], sp
    add hl, bc

jr_026_4d57:
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0829], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$2908], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0b08], sp
    add hl, hl
    dec bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    add hl, hl
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    add hl, hl
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$2808], sp
    add hl, hl
    ld [$0908], sp
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
    add hl, bc
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
    add hl, bc
    ld [$0e0d], sp
    add hl, bc
    add hl, bc
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
    dec b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    ld [$0b0a], sp
    add b
    add c
    add d
    inc c
    dec b
    ld b, $07
    ld c, $92
    sub e
    sub e
    ld c, $0a
    dec bc
    add e
    add h
    add l
    dec c
    dec b
    ld b, $07
    rrca
    sub h
    sub l
    sub [hl]
    rrca
    ld a, [bc]
    dec bc
    add [hl]
    add a
    adc b
    dec c
    dec b
    ld b, $07
    rrca
    sub a
    sbc b
    sbc c

jr_026_4e40:
    rrca
    ld a, [bc]
    dec bc
    add [hl]
    add a
    adc b
    dec c
    dec b
    ld b, $07
    rrca
    sub a
    sbc b
    sbc c
    rrca
    ld a, [bc]
    dec bc
    add [hl]
    add a
    adc b
    dec c
    dec b
    ld b, $07
    rrca
    sub a
    sbc b
    sbc c
    rrca
    daa
    dec bc
    add [hl]
    add a
    adc b
    dec c
    dec b
    ld b, $07
    rrca
    sub a
    sbc b
    sbc c
    rrca
    jr z, jr_026_4e78

    add [hl]
    add a
    adc b
    dec c
    dec b
    ld b, $07
    rrca
    sub a
    sbc b
    sbc c

jr_026_4e78:
    rrca
    add hl, hl
    dec bc
    add [hl]
    add a
    adc b
    dec c
    dec b
    ld b, $25
    ld h, $9a
    sbc e
    sbc h
    ld h, $2a
    dec bc
    add [hl]
    add a
    adc b
    dec c
    ld [de], a
    inc de
    inc d
    dec d
    sbc l
    sbc [hl]
    sbc a
    add hl, de
    dec hl
    dec bc
    adc c
    adc d
    adc e
    inc e
    dec e
    ld e, $1f
    jr nz, jr_026_4e40

    and c
    and b
    inc h
    inc l
    dec bc
    adc h
    adc l
    adc [hl]
    jr nc, jr_026_4edb

    ld [hl-], a
    inc sp
    inc [hl]
    and b
    and d
    and b
    jr c, jr_026_4edf

    db $10
    adc a
    sub b
    sub c
    dec sp
    inc a
    dec a
    ld a, $3f
    and e
    and h
    sub b
    ld b, e
    ld l, $11
    sub b
    sub b
    sub c
    ld b, [hl]
    ld b, a
    ld b, h
    ld a, $3f
    and l
    and [hl]
    and [hl]
    ld b, e
    cpl
    ld [$0808], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl

jr_026_4edb:
    ld [$0908], sp
    add hl, bc

jr_026_4edf:
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    inc c
    inc c
    inc c
    add hl, hl
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    dec bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    inc c
    inc c
    inc c
    add hl, hl
    ld [$0908], sp
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
    add hl, bc
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
    add hl, bc
    ld [$0e0d], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, c
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0008], sp
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $05
    ld b, $02
    nop
    nop
    nop
    nop
    db $10
    ld de, $2322
    inc h
    dec h
    ld h, $00
    ld bc, $0002
    nop
    nop
    nop
    jr nz, jr_026_4ff4

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    ld bc, $0002
    dec c
    ld c, $0f
    jr nc, jr_026_5012

    rla
    jr jr_026_4ffd

    ld a, [de]
    dec de
    rlca
    ld [$0c09], sp
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    daa
    jr z, jr_026_501b

    ld a, [hl+]
    dec hl

jr_026_4ff4:
    ld a, [bc]
    dec bc
    ld a, l
    ld a, l
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_026_4ffd:
    scf
    jr c, jr_026_5039

    ld a, [hl-]
    dec sp
    ld a, l
    ld a, l
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    inc e
    dec e
    ld e, $1f
    ld b, b
    ld a, l
    ld d, [hl]

jr_026_5012:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    inc l
    dec l

jr_026_501b:
    ld l, $2f
    ld d, b
    ld a, l
    ld a, l
    ld c, [hl]
    ld c, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    inc a
    dec a
    ld a, $3f
    ld a, a
    ld a, l
    ld a, l
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld b, [hl]
    ld h, l
    ld a, a
    ld a, a

jr_026_5039:
    ld a, a
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    nop
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c0c], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d0d], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    dec c
    ld [$0e09], sp
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec c
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $06
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld c, $0e
    ld b, $06
    ld b, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $06
    ld b, $06
    ld b, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $00
    ld l, a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $00
    ld l, a
    ld [bc], a
    nop
    nop
    nop
    nop
    db $10
    ld de, $2322
    inc h
    dec h
    ld h, $00
    ld l, a
    ld [bc], a
    nop
    nop
    nop
    nop
    jr nz, jr_026_517c

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    ld l, a
    ld [bc], a
    nop
    dec c
    ld c, $0f
    jr nc, jr_026_519a

    rla
    jr jr_026_5185

    ld a, [de]
    dec de
    ld a, c
    ld a, d
    add hl, bc
    inc c
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    daa
    jr z, jr_026_51a3

    ld a, [hl+]
    dec hl

jr_026_517c:
    ld a, e
    ld a, h
    ld a, l
    ld a, l
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_026_5185:
    scf
    jr c, jr_026_51c1

    ld a, [hl-]
    dec sp
    ld a, l
    ld a, l
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    inc e
    dec e
    ld e, $1f
    ld b, b
    ld a, l
    ld d, [hl]

jr_026_519a:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    inc l
    dec l

jr_026_51a3:
    ld l, $2f
    ld d, b
    ld a, l
    ld a, l
    ld c, [hl]
    ld c, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    inc a
    dec a
    ld a, $3f
    ld a, a
    ld a, l
    ld a, l
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld b, [hl]
    ld h, l
    ld a, a
    ld a, a

jr_026_51c1:
    ld a, a
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    nop
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [$0809], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0809], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0809], sp
    ld [$0808], sp
    ld [$0c0c], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0809], sp
    ld [$0808], sp
    ld [$0d0d], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0809], sp
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    dec c
    add hl, bc

Jump_026_5241:
    add hl, bc
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec c
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $06
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld c, $0e
    ld b, $06
    ld b, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $06
    ld b, $06
    ld b, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $7f
    nop
    ld bc, $0302
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc b
    rrca
    ld [hl], a
    ld a, a
    ld a, a
    db $10
    ld de, $1312
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc b
    rrca
    ld [hl], a
    ld a, a
    ld a, a
    jr nz, jr_026_52e2

    ld [hl+], a
    inc hl
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc b
    rrca
    ld a, d
    ld a, e
    ld a, a
    dec b
    ld b, $07
    ld [$7f09], sp
    ld a, [bc]
    dec bc
    inc c
    inc b
    rrca
    add b
    add c
    ld a, a
    dec d
    ld d, $17
    jr jr_026_52f9

    ld a, a
    ld a, [de]

jr_026_52e2:
    dec de
    inc e
    inc b
    rrca
    ld [hl], a
    ld a, a
    ld a, a
    dec h
    ld h, $27
    jr z, @+$2b

    inc d
    ld a, [hl+]
    dec hl
    inc l
    inc h
    ld c, $77
    ld a, a
    ld a, a
    jr nc, jr_026_532a

jr_026_52f9:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_533a

    ld a, [hl-]
    ld a, b
    ld a, c
    dec c
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
    dec l
    ld l, $1d
    dec sp
    inc a
    dec a
    ld a, $3f
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld a, a
    ld e, $4b
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a

jr_026_532a:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    cpl
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

jr_026_533a:
    ld e, e
    ld a, a
    cpl
    cpl
    cpl
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    rra
    cpl
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld a, a
    cpl
    cpl
    cpl
    cpl
    cpl
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld a, a
    ld a, a
    nop
    ld [$0c0c], sp
    ld [$0000], sp
    nop
    nop
    nop
    ld [$0c0c], sp
    inc b
    nop
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    nop
    ld [$0c0c], sp
    inc b
    nop
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    nop
    ld [$0c0c], sp
    inc c
    nop
    ld [$0808], sp
    ld [$0008], sp
    inc c
    inc c
    inc c
    ld [$0c0c], sp
    inc c
    nop
    ld [$0808], sp
    ld [$0008], sp
    inc c
    inc c
    inc c
    ld [$0c0c], sp
    inc b
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c0c], sp
    inc b
    nop
    ld [$0c0c], sp
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld [$0809], sp
    ld [$0c0c], sp
    ld [$0c08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    dec c
    dec bc
    dec bc
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
    dec b
    dec c
    dec c
    dec c
    dec bc
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
    dec bc
    dec bc
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec b
    dec b
    dec b
    dec b
    dec b
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
    dec b
    dec b
    ld a, a
    nop
    ld bc, $0302
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc b
    rrca
    add d
    add e
    ld a, a
    db $10
    ld de, $1312
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc b
    rrca
    add d
    add e
    ld a, a
    jr nz, jr_026_546a

    ld [hl+], a
    inc hl
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc b
    rrca
    add d
    add e
    ld a, a
    dec b
    ld b, $07
    ld [$7f09], sp
    ld a, [bc]
    dec bc
    inc c
    inc b
    rrca
    add d
    add e
    ld a, a
    dec d
    ld d, $17
    jr jr_026_5481

    ld a, a
    ld a, [de]

jr_026_546a:
    dec de
    inc e
    inc b
    rrca
    add h
    add l
    ld a, a
    dec h
    ld h, $27
    jr z, @+$2b

    inc d
    ld a, [hl+]
    dec hl
    inc l
    inc h
    ld c, $86
    add a
    ld a, a
    jr nc, jr_026_54b2

jr_026_5481:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_54c2

    ld a, [hl-]
    add [hl]
    add a
    dec c
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
    adc b
    adc c
    dec e
    dec sp
    inc a
    dec a
    ld a, $3f
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld a, a
    ld e, $4b
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a

jr_026_54b2:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    cpl
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

jr_026_54c2:
    ld e, e
    ld a, a
    cpl
    cpl
    cpl
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    rra
    cpl
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld a, a
    cpl
    cpl
    cpl
    cpl
    cpl
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld a, a
    ld a, a
    nop
    ld [$0c0c], sp
    ld [$0000], sp
    nop
    nop
    nop
    ld [$0e0c], sp
    ld c, $00
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    nop
    ld [$0e0c], sp
    ld c, $00
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    nop
    ld [$0e0c], sp
    ld c, $00
    ld [$0808], sp
    ld [$0008], sp
    inc c
    inc c
    inc c
    ld [$0e0c], sp
    ld c, $00
    ld [$0808], sp
    ld [$0008], sp
    inc c
    inc c
    inc c
    ld [$0e0c], sp
    ld c, $00
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0e0c], sp
    ld c, $00
    ld [$0c0c], sp
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld [$0809], sp
    ld [$0e0e], sp
    ld [$0c08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    dec c
    dec bc
    dec bc
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
    dec b
    dec c
    dec c
    dec c
    dec bc
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
    dec bc
    dec bc
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec b
    dec b
    dec b
    dec b
    dec b
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
    dec b
    dec b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec e
    ld a, $42
    ld b, e
    ld c, [hl]
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld bc, $1302
    inc h
    dec h
    ld h, $27
    jr z, jr_026_5601

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld a, $42
    ld b, e
    ld c, [hl]
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_561f

    ld a, [hl-]
    dec sp
    inc a
    ld e, l
    nop
    ld bc, $1302
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld e, l
    db $10
    ld de, $1312
    ld d, h
    ld d, l
    ld d, [hl]
    adc d
    adc d

jr_026_5601:
    adc d
    adc d
    ld e, e
    ld e, h
    ld e, l
    ld hl, $3f61
    jr nz, jr_026_566f

    ld h, l
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    ld l, h
    ld l, l
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    adc d
    adc d
    adc d
    adc d
    adc d

jr_026_561f:
    adc d
    ld a, h
    ld a, l
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    adc d
    adc d
    adc d
    adc d
    adc e
    adc h
    adc l
    ld d, a
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
    jr nc, jr_026_5671

    ld [hl-], a
    inc hl
    ld b, b
    ld b, c
    adc a
    ld [hl], a
    ld d, b
    ld d, c
    ld a, d
    ld a, e
    ld h, b
    ld e, l
    ld d, a
    sub b
    ld [hl+], a
    inc sp
    sbc [hl]
    ld e, b
    adc [hl]
    adc a
    ld a, [hl]
    ld a, a
    ld l, [hl]
    ld l, a
    ld e, [hl]
    ld e, l
    jr nc, @-$6d

    ccf
    ld l, $2f
    ld e, $1f
    ld c, $0f
    add a
    adc b
    adc c
    ld l, b
    ld a, e
    ld d, a
    ld h, c
    ld e, c
    cpl
    ld h, [hl]
    ld h, a
    ld l, b

jr_026_566f:
    ld l, c
    ld l, d

jr_026_5671:
    ld l, e
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld c, $0e
    ld c, $0e
    ld c, $08
    dec bc
    dec bc
    add hl, bc
    ld c, $0b
    dec bc
    add hl, bc
    ld c, $0e
    dec bc
    dec c
    ld c, $0e
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld c, $0b
    dec bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0d
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld c, $0b
    dec bc
    add hl, bc
    ld c, $0e
    dec bc
    dec c
    ld c, $09
    add hl, bc
    ld [$090b], sp
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $09
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld c, $0e
    dec bc
    dec c
    ld c, $09
    ld c, $0e
    ld [$0808], sp
    ld [$0909], sp
    ld c, $0e
    dec bc
    dec bc
    dec c
    ld [$0809], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    ld c, $0b
    dec bc
    dec c
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld c, $0b
    dec bc
    dec bc
    ld [$0908], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    ld c, $0b
    dec bc
    dec bc
    ld c, $0a
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0b
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    inc c
    ld [$0909], sp
    add hl, bc
    ld c, $0c
    ld c, $0e
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld c, $0e
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld c, $0e
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    inc c
    inc c
    ld a, [bc]
    ld [$0e09], sp
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    db $10
    ld de, $1312
    inc d
    dec d
    rla
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    jr nz, jr_026_5789

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_026_5789

    dec de
    dec hl
    inc l
    dec l
    jr nz, jr_026_5797

    ld b, e
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_57a7

    dec de
    dec sp
    inc a
    dec l
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    scf
    ld c, b
    add hl, sp
    dec de
    ld c, e
    ld c, h
    ld c, l
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    scf
    ld e, b

jr_026_5789:
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld c, l
    ld h, b
    ld h, c
    ld h, d
    rst RST_38
    ld h, h
    ld h, l
    ld h, [hl]
    scf
    ld l, b

jr_026_5797:
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
    scf
    ld a, b
    ld a, c
    ld a, d

jr_026_57a7:
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
    scf
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
    scf
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    scf
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    scf
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    ld c, $0f
    ld l, $2f
    ld c, [hl]
    ld c, a
    ld l, [hl]
    scf
    adc [hl]
    adc a
    xor [hl]
    xor a
    ret nz

    pop bc
    ld e, $1f
    ld a, $3f
    ld e, [hl]
    ld e, b
    ld a, [hl]
    ld a, a
    sbc [hl]
    sbc a
    cp [hl]
    cp a
    jp nz, $0bc3

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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec hl
    dec bc
    dec bc
    dec bc
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
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
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
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    nop
    ld [$0b0b], sp
    dec bc
    ld a, [bc]
    dec bc
    ld [$0b0b], sp
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0808], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0b0b], sp
    ld a, [bc]
    dec bc
    ld [$0a0a], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0b0b], sp
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld [$0a0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld [$0a0b], sp
    dec bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    inc c
    inc c
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    dec c
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    db $10
    ld de, $1312
    inc d
    dec d
    rla
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    jr nz, @+$33

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    dec de
    dec hl
    inc l
    dec l
    jr nz, jr_026_591f

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_591f

    dec de
    dec sp
    inc a
    dec l
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld a, [hl+]
    ld a, [hl-]
    ld c, d
    ld e, l
    add hl, hl
    dec de
    ld c, e
    ld c, h
    ld c, l
    ld d, b
    ret nc

    pop de
    ld b, e
    db $d3
    dec [hl]
    ld [hl], $37
    jr c, jr_026_593b

    dec de
    ld c, e
    rst RST_38
    ld c, l
    ld d, b
    push de
    jp nc, $d343

    ld a, [hl+]
    ld a, [hl-]
    ld c, d
    ld e, l

jr_026_591f:
    add hl, hl
    dec de
    ld c, e
    rst RST_38
    ld h, e
    ld d, b
    call nc, Call_026_43c5
    jp z, Jump_000_3635

    scf
    jr c, @+$2b

    ld c, e
    ld c, e
    rst RST_38
    ld d, $50
    add $c5
    ld b, e
    rst RST_00
    ld a, [hl+]
    ld a, [hl-]
    ld c, d
    ld e, l

jr_026_593b:
    add hl, hl
    ld c, e
    ld c, e
    rst RST_38
    ld d, $50
    call nc, $c5c5
    swap l
    ld [hl], $37
    jr c, jr_026_5973

    ld e, a
    ld c, e
    rst RST_38
    sub $50
    add $c5
    push bc
    ld c, c
    dec [hl]
    ld [hl], $37
    jr c, jr_026_5981

    ld l, a
    dec hl
    rst RST_38
    dec de
    or b
    ret z

    ret


    push bc
    ld c, c
    dec de
    or [hl]
    scf
    ld b, a
    call $cfce
    rst RST_38
    add a
    ld c, $c4
    or a
    ld [hl], a
    dec de
    dec de
    ld l, [hl]
    scf
    ld d, a

jr_026_5973:
    add hl, sp
    rlca
    ld [hl], d
    rst RST_38
    sub a
    ld e, $32
    dec de
    jr nc, jr_026_5998

    dec de
    ld a, [hl]
    ld a, a
    ld h, a

jr_026_5981:
    add hl, sp
    dec a
    ld hl, $a7ff
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_026_5998:
    dec bc
    dec bc
    dec hl
    dec bc
    dec bc
    dec bc
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
    ld a, [bc]
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
    inc c
    inc c
    nop
    dec bc
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
    dec c
    dec bc
    nop
    dec bc
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec e
    ld e, d
    ld b, d
    ld b, e

Jump_026_5a5b:
    ld e, a
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    inc h
    dec h
    ld h, $27
    jr z, jr_026_5a99

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld e, d
    ld b, d
    ld b, e
    ld e, a
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_5ab7

    ld a, [hl-]
    dec sp
    inc a
    ld e, l
    ld d, d
    ld d, e
    ld h, d

jr_026_5a85:
    ld h, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld e, l
    dec a
    ld b, d
    ld [de], a
    ld c, l
    ld d, h
    ld d, l
    ld d, [hl]
    adc d
    adc d

jr_026_5a99:
    adc d
    adc d
    ld e, e
    ld e, h
    ld e, l
    ld c, a
    ld h, c
    ccf
    dec c
    ld h, h
    ld h, l
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    ld l, h
    ld l, l
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    adc d
    adc d
    adc d
    adc d
    adc d

jr_026_5ab7:
    adc d
    ld a, h
    ld a, l
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    adc d
    adc d
    adc d
    adc d
    adc e
    adc h
    adc l
    ld d, a
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
    jr nc, jr_026_5b09

    ld [hl-], a
    inc hl
    ld b, b
    ld b, c
    adc a
    ld [hl], a
    ld d, b
    ld d, c
    ld a, d
    ld a, e
    ld h, b
    ld e, l
    ld d, a
    sub b
    ld [hl+], a
    inc sp
    sbc [hl]
    ld e, b
    adc [hl]
    adc a
    ld a, [hl]
    ld a, a
    ld l, [hl]
    ld l, a
    ld e, [hl]
    ld e, l
    jr nc, jr_026_5a85

    ccf
    ld l, $2f
    ld e, $1f
    ld c, $0f
    add a
    adc b
    adc c
    ld l, b
    ld a, e
    ld d, a
    ld h, c
    ld e, c
    cpl
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d

jr_026_5b09:
    ld l, e
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld c, $0e
    ld c, $0e
    ld c, $08
    dec bc
    dec bc
    add hl, bc
    ld c, $0b
    dec bc
    add hl, bc
    ld c, $0e
    dec bc
    dec c
    ld c, $0e
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld c, $0b
    dec bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0d
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld c, $0b
    dec bc
    add hl, bc
    ld c, $0e
    dec bc
    dec c
    ld c, $09
    add hl, bc
    ld [$090b], sp
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $09
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld c, $0e
    dec bc
    dec c
    ld c, $09
    ld c, $0e
    ld [$0808], sp
    ld [$0909], sp
    ld c, $0e
    dec bc
    dec bc
    ld c, $08
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld c, $0b
    dec bc
    dec c
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld c, $0b
    dec bc
    dec bc
    ld [$0908], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    ld c, $0b
    dec bc
    dec bc
    ld c, $0a
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0b
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    inc c
    ld [$0909], sp
    add hl, bc
    ld c, $0c
    ld c, $0e
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld c, $0e
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld c, $0e
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0909], sp
    inc c
    inc c
    ld a, [bc]
    ld [$0e09], sp
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a7f], sp
    dec bc
    rst RST_38
    rst RST_38
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
    jr nz, jr_026_5c11

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_026_5c21

    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr nc, jr_026_5c2f

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_5c3f

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
    ld b, [hl]

jr_026_5c11:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_026_5c21:
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

jr_026_5c2f:
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

jr_026_5c3f:
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
    ld c, $0f
    ld c, [hl]
    ld c, a
    adc [hl]
    adc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    ld e, $1f
    ld e, [hl]
    ld e, a
    sbc [hl]
    sbc a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    add hl, bc
    ld l, $2f
    ld l, [hl]
    ld l, a
    ld e, $1f
    ld e, [hl]
    ld e, a
    xor d
    xor e
    xor h
    xor l
    inc c
    dec c
    ld a, $3f
    ld a, [hl]
    ld a, a
    xor [hl]
    xor a
    xor b
    xor c
    ld e, $1f
    ld e, [hl]
    ld e, a
    rst RST_38
    xor e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc bc
    inc c
    inc c
    nop
    nop
    dec bc
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
    inc c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
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
    dec bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    nop
    add hl, bc
    ld c, a
    ld a, [hl]
    halt
    ld a, b
    sbc d
    sbc d
    ld d, e
    dec e
    dec c
    or a
    cp b
    cp a
    xor a
    ld c, a
    and b
    add a
    ld a, h
    ld [hl], a
    ld [hl], c
    ld d, e
    ld d, e
    ld e, b
    ld a, [de]
    rla
    inc h
    dec h
    ld [de], a
    and b
    ld h, [hl]
    ld h, a
    ld l, b
    sub [hl]
    sub a
    sbc b
    ld l, a
    rst RST_38
    rst RST_38
    rst RST_38
    inc d
    inc bc
    inc b
    dec b
    jr nc, @+$0a

    add hl, bc
    ld a, [bc]
    dec bc
    jr jr_026_5da4

    add hl, de
    dec de
    ld h, $27
    jr z, jr_026_5dba

    dec a
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
    ld b, h
    ld c, e
    ld c, h
    ld c, l
    ld d, b
    ld d, c
    ld d, d
    ld d, e

jr_026_5da4:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld d, a
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld [hl], b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld a, a
    ld a, a
    ld a, a
    ld l, c
    ld l, d
    ld l, e

jr_026_5dba:
    ld l, h
    ld l, l
    ld [hl], b
    ld d, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld a, a
    ld a, a
    ld a, a
    ld a, c
    ld a, d
    ld a, e
    ld l, h
    ld a, l
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add [hl]
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
    ld a, a
    ld a, a
    ld a, a
    sbc c
    ld a, a
    sbc e
    sbc h
    sbc l
    sub b
    and c
    and d
    ld a, a
    and h
    and l
    and [hl]
    and [hl]
    xor b
    xor c
    xor d
    xor e
    sbc h
    xor l
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or [hl]
    or [hl]
    cp c
    cp d
    cp e
    cp h
    cp l
    ld c, $0f
    ld l, $2f
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, a
    sbc [hl]
    sbc a
    cp [hl]
    xor l
    ld e, $1f
    ld a, $3f
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, [hl]
    adc [hl]
    adc a
    xor [hl]
    ld [bc], a
    and a
    and e
    dec c
    dec c
    dec bc
    dec bc
    dec c
    dec l
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec l
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    ld [$0d08], sp
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec l
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec c
    ld [$0000], sp
    nop
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
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $2e
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld c, $0e
    ld [$0808], sp
    ld c, $09
    ld c, $0d
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld c, $0e
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    ld c, $0a
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld c, $0e
    ld bc, $0101
    add hl, bc
    add hl, bc
    ld c, $0a
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld c, $09
    ld c, $0a
    dec c
    dec c
    dec c
    add hl, bc
    ld c, $0e
    ld c, $00
    nop
    nop
    ld c, $01
    ld c, $0a
    dec c
    dec c
    ld [$0009], sp
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0a
    dec c
    dec c
    ld [$0909], sp
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    dec c
    ld [$0909], sp
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    ld [$0909], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld [$4f0e], sp
    ld bc, $0202
    ld [bc], a
    dec d
    ld b, $07
    ld b, $07
    ld b, $07
    inc c
    ld c, a
    db $10
    ld de, $0202
    ld [bc], a
    dec d
    ld d, $06
    rlca
    ld b, $07
    ld b, $1c
    and b
    jr nz, jr_026_5f21

    ld [hl+], a
    inc hl
    ld [bc], a
    dec d
    ld b, $07
    ld b, $07
    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr nc, jr_026_5f3f

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_5f4f

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
    ld b, [hl]

jr_026_5f21:
    ld b, a
    ld c, b
    ld c, c
    ld b, h
    ld c, e
    ld c, h
    ld c, l
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld d, a
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld [hl], b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld a, a
    ld a, a
    ld a, a

jr_026_5f3f:
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld [hl], b
    ld d, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld a, a
    ld a, a
    ld a, a
    ld a, c
    ld a, d

jr_026_5f4f:
    ld a, e
    ld l, h
    ld a, l
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add [hl]
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
    ld a, a
    ld a, a
    ld a, a
    sbc c
    ld a, a
    sbc e
    sbc h
    sbc l
    sub b
    and c
    and d
    ld a, a
    and h
    and l
    and [hl]
    and [hl]
    xor b
    xor c
    xor d
    xor e
    sbc h
    xor l
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or [hl]
    or [hl]
    cp c
    cp d
    cp e
    cp h
    cp l
    ld c, $0f
    ld l, $2f
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, a
    sbc [hl]
    sbc a
    cp [hl]
    xor l
    ld e, $1f
    ld a, $3f
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, [hl]
    adc [hl]
    adc a
    xor [hl]
    ld [bc], a
    and a
    and e
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec l
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec l
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    add hl, bc
    inc c
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
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $2e
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld c, $0e
    ld [$0808], sp
    ld c, $09
    ld c, $0d
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld c, $0e
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    ld c, $0a
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld c, $0e
    ld bc, $0101
    add hl, bc
    add hl, bc
    ld c, $0a
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld c, $09
    ld c, $0a
    dec c
    dec c
    dec c
    add hl, bc
    ld c, $0e
    ld c, $00
    nop
    nop
    ld c, $01
    ld c, $0a
    dec c
    dec c
    ld [$0009], sp
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0a
    dec c
    dec c
    ld [$0909], sp
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    dec c
    ld [$0909], sp
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    ld [$0909], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld [$5e0e], sp
    jr c, jr_026_60a5

    jr c, @+$61

    ld e, a
    ld d, b
    ld c, b
    ld c, c
    ld c, d
    ld l, b
    ld l, c
    ld e, [hl]
    jr c, @+$3a

    jr c, jr_026_60da

    ld e, [hl]
    jr c, jr_026_60b6

    jr z, jr_026_60d8

    ld e, c
    ld e, d
    ld d, b
    ld d, b
    jr c, jr_026_60e6

    ld [$3838], sp
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld h, b
    ld d, b
    ld h, b
    jr c, jr_026_60f4

    ld b, b
    jr c, jr_026_60d1

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [$3850], sp
    ld h, b
    jr c, jr_026_60ac

    add hl, bc

jr_026_60a5:
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    ld l, d

jr_026_60ac:
    ld d, b
    ld [$386f], sp
    jr c, jr_026_60ca

    add hl, de
    ld a, [de]
    dec de
    inc e

jr_026_60b6:
    dec e
    ld e, $1f
    ld l, h
    ld [$3860], sp
    ld l, [hl]
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld c, e
    ld c, h
    ld c, l
    ld d, b

jr_026_60ca:
    ld e, [hl]
    jr c, jr_026_60dd

    ld de, $1312
    inc d

jr_026_60d1:
    dec d
    ld d, $17
    ld l, d
    ld l, e
    ld d, b
    ld e, a

jr_026_60d8:
    jr c, @+$71

jr_026_60da:
    jr nz, jr_026_60fd

    ld [hl+], a

jr_026_60dd:
    inc hl
    inc h
    dec h
    ld h, $27
    ld b, b
    ld b, c
    ld d, b
    ld d, b

jr_026_60e6:
    ld e, [hl]
    ld l, a
    jr nc, jr_026_611b

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld d, b
    ld d, b
    ld e, [hl]
    ld h, b

jr_026_60f4:
    ld l, [hl]
    jr c, jr_026_6137

    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_026_60fd:
    ld b, a
    ld l, e
    ld b, c
    ld h, b
    ld e, a
    jr c, @+$3a

    ld d, b
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld h, a
    ld d, b
    jr c, @+$3a

    ld e, a
    ld h, b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_026_611b:
    ld d, b
    jr c, jr_026_617c

    ld d, b
    jr c, jr_026_6180

    ld e, [hl]
    ld l, a
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    jr c, jr_026_617b

    ld h, b
    ld h, b
    jr c, jr_026_6138

    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc

jr_026_6137:
    dec bc

jr_026_6138:
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0b0c], sp
    add hl, bc
    add hl, bc
    ld [$0909], sp
    ld [$0b08], sp
    ld [$0808], sp
    ld [$0b0b], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0809], sp
    add hl, bc
    ld [$0c08], sp
    inc c
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    inc c
    inc c
    inc c
    inc c
    dec bc

jr_026_617b:
    dec bc

jr_026_617c:
    inc c
    add hl, bc
    add hl, bc
    add hl, bc

jr_026_6180:
    ld [$0909], sp
    add hl, bc
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c09], sp
    ld c, $0c
    ld c, $0b
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0809], sp
    add hl, bc
    ld c, $0c
    ld c, $0e
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
    ld c, $0e
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    ld [$385e], sp
    jr c, jr_026_622e

    ld e, a
    ld e, a
    ld d, b
    ld c, b
    ld c, c
    ld c, d
    ld l, b
    ld l, c
    ld e, [hl]
    jr c, @+$3a

    jr c, jr_026_6262

    ld e, [hl]
    jr c, jr_026_623e

    jr z, jr_026_6260

    ld e, c
    ld e, d
    ld d, b
    ld d, b
    jr c, jr_026_626e

    ld [$3838], sp
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld h, b
    ld d, b
    ld h, b
    jr c, jr_026_627c

    ld b, b
    jr c, jr_026_6259

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [$3850], sp
    ld h, b
    jr c, jr_026_6234

    add hl, bc
    ld a, [bc]

jr_026_622e:
    dec bc
    inc c
    dec c
    ld c, $0f
    ld l, d

jr_026_6234:
    ld d, b
    ld [$386f], sp
    jr c, jr_026_6252

    add hl, de
    ld a, [de]
    dec de
    inc e

jr_026_623e:
    dec e
    ld e, $1f
    ld l, h
    ld [$3860], sp
    ld l, [hl]
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld c, e
    ld c, h
    ld c, l
    ld d, b

jr_026_6252:
    ld e, [hl]
    jr c, jr_026_6265

    ld de, $1312
    inc d

jr_026_6259:
    dec d
    ld d, $17
    ld l, d
    ld l, e
    ld d, b
    ld e, a

jr_026_6260:
    jr c, jr_026_62d1

jr_026_6262:
    jr nz, jr_026_6285

    ld [hl+], a

jr_026_6265:
    inc hl
    inc h
    dec h
    ld h, $27
    ld b, b
    ld b, c
    ld d, b
    ld d, b

jr_026_626e:
    ld e, [hl]
    ld l, a
    jr nc, jr_026_62a3

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld d, b
    ld d, b
    ld e, [hl]
    ld h, b

jr_026_627c:
    ld l, [hl]
    jr c, jr_026_62bf

    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_026_6285:
    ld b, a
    ld l, e
    ld b, c
    ld h, b
    ld e, a
    jr c, jr_026_62c4

    ld d, b
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld h, a
    ld d, b
    jr c, jr_026_62d1

    ld e, a
    ld h, b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_026_62a3:
    ld d, b
    jr c, jr_026_6304

    ld d, b
    jr c, jr_026_6308

    ld e, [hl]
    ld l, a
    ld e, e
    ld e, h
    ld e, l
    ld c, [hl]
    ld c, a
    ld h, b
    jr c, jr_026_6303

    ld h, b
    ld h, b
    jr c, jr_026_62c0

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc

jr_026_62bf:
    dec bc

jr_026_62c0:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_026_62c4:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b0b], sp
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_026_62d1:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld [$0c0c], sp
    inc c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c0c], sp
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
    ld [$0c0c], sp
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
    inc c
    inc c
    inc c
    inc c
    dec bc

jr_026_6303:
    dec bc

jr_026_6304:
    ld [$0909], sp
    add hl, bc

jr_026_6308:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    ld [$0b0c], sp
    dec bc
    dec bc
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
    ld c, $0b
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0e09], sp
    dec c
    dec c
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
    add hl, bc
    dec c
    dec c
    dec c
    ld a, [bc]
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
    dec c
    ld a, [bc]
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    jr z, jr_026_63d1

    ld a, [hl+]
    dec hl
    inc l
    dec e
    jr nz, jr_026_63cf

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld [hl], $37
    jr c, jr_026_63ef

    ld a, [hl-]
    dec sp
    inc a
    dec l
    jr nc, jr_026_63ed

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

jr_026_63cf:
    ld d, a
    ld c, c

jr_026_63d1:
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

jr_026_63ed:
    ld c, c
    ld c, c

jr_026_63ef:
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
    jr c, jr_026_6451

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
    jr z, jr_026_644f

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

jr_026_644f:
    ld c, $0e

jr_026_6451:
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
    ld bc, $0201
    nop
    nop
    nop
    ld bc, $0101
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    ld bc, $0300
    inc b
    dec b
    ld b, $07
    ld [$0000], sp
    inc c
    dec c
    ld c, $0f
    stop
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $11
    ld [de], a
    ld c, $13
    inc d
    daa
    jr z, jr_026_6558

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    dec d
    ld d, $17
    jr jr_026_6553

    jr nc, jr_026_656d

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_655e

    dec de
    inc e
    dec e
    ld e, $39
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e

jr_026_6553:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_026_6558:
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]

jr_026_655e:
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

jr_026_656d:
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
    and [hl]
    and a
    nop
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
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c0c], sp
    dec c
    ld [$0c08], sp
    add hl, bc
    add hl, bc
    dec c
    dec c
    ld [$0808], sp
    ld [$0e0a], sp
    ld a, [bc]
    inc c
    ld [$090c], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld c, $0a
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    dec c
    ld c, $0a
    add hl, bc
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
    ld c, $0a
    add hl, bc
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
    ld [$0a0e], sp
    add hl, bc
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
    ld [$0100], sp
    ld a, [hl]
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add b
    nop
    ld bc, $7d10
    ld a, a
    ld a, a
    ld a, a
    ld c, $0f
    ld e, $1f
    ld a, a
    ld a, a
    ld a, a
    ld a, l
    ld de, $7f7f
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld a, a
    ld a, a
    ld [bc], a
    ld a, a
    inc d
    dec d
    ld d, $17
    jr jr_026_66d5

    ld a, [de]
    dec de
    inc e
    dec e
    ld a, a
    inc de
    ld [bc], a
    ld a, a
    ld a, a
    ld a, a
    jr nz, jr_026_66e9

    ld [hl+], a
    jr nc, jr_026_66fc

    ld [hl-], a
    ld a, a
    ld a, a
    ld a, a
    inc de
    ld [bc], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_026_66d5:
    ld a, a
    inc hl
    inc sp
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc de
    ld [bc], a
    inc h
    dec h
    ld h, $27
    jr z, jr_026_670e

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_026_66e9:
    ld l, $2f
    inc de
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_672c

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc de
    ld [bc], a
    ld b, b

jr_026_66fc:
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
    inc de
    ld [bc], a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h

jr_026_670e:
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    inc de
    ld [bc], a
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    inc de
    add c
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld l, b
    ld l, c
    ld l, d

jr_026_672c:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    add c
    nop
    ld a, l
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
    ld a, l
    ld bc, $1110
    ld a, d
    ld a, e
    ld a, h
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    db $10
    ld de, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    nop
    nop
    ld [$0808], sp
    ld [$0000], sp
    nop
    add hl, hl
    add hl, bc
    add hl, bc
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2900], sp
    add hl, bc
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0900], sp
    add hl, bc
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, hl
    add hl, bc
    ld c, c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0969], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    jr jr_026_6887

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
    jr nz, jr_026_68a7

    ld [hl+], a

jr_026_6887:
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

jr_026_68a7:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld b, $00
    cpl
    jr nc, jr_026_68e1

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

jr_026_68e1:
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
    jr z, jr_026_6978

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

jr_026_6978:
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
    jr jr_026_69e8

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
    jr z, jr_026_69e8

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

jr_026_69e8:
    jr c, jr_026_6a06

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

jr_026_6a06:
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0700
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    dec c
    inc c
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$0e07], sp
    rrca
    db $10
    ld de, $1312
    inc d
    inc d
    inc de
    ld [de], a
    ld de, $0f10
    ld c, $15
    ld d, $17
    jr jr_026_6b6a

    ld a, [de]
    dec de
    dec de
    ld a, [de]
    add hl, de
    jr jr_026_6b6f

    ld d, $15
    inc e
    dec e
    ld e, $1f
    jr nz, jr_026_6b81

    ld [hl+], a
    ld [hl+], a
    ld hl, $1f20
    ld e, $1d
    inc e
    inc hl
    inc h

jr_026_6b6a:
    dec h
    ld h, $27
    jr z, jr_026_6b98

jr_026_6b6f:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    inc hl
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]

jr_026_6b81:
    dec sp
    inc a
    jr nc, jr_026_6bb5

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
    jr nc, jr_026_6bb6

    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_026_6b98:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    inc hl
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    ld [hl+], a
    ld hl, $1f20
    ld e, $1d
    inc e
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de

jr_026_6bb5:
    dec de

jr_026_6bb6:
    ld a, [de]
    add hl, de
    jr jr_026_6bd1

    ld d, $15
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    inc d
    inc de
    ld [de], a
    ld de, $0f10
    ld c, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c

jr_026_6bd1:
    dec c
    inc c
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$0007], sp
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0800
    ld [$0808], sp
    add hl, bc
    ld [$2808], sp
    jr z, jr_026_6c19

    jr z, jr_026_6c1a

    jr z, jr_026_6c1c

    ld [$0908], sp
    ld [$0909], sp
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, hl
    jr z, jr_026_6c29

    jr z, jr_026_6c2a

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]

jr_026_6c19:
    add hl, hl

jr_026_6c1a:
    ld a, [hl+]
    add hl, hl

jr_026_6c1c:
    add hl, hl
    add hl, hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]

jr_026_6c29:
    ld a, [hl+]

jr_026_6c2a:
    ld a, [hl+]
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
    ld a, [hl+]
    ld c, d
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
    ld l, d
    ld c, d
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
    ld l, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    ld c, d
    ld l, d
    ld l, d
    ld l, c
    ld l, d
    ld l, c
    ld l, c
    ld l, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld c, b
    ld c, b
    ld c, c
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld l, c
    ld l, c
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, c
    ld c, b
    ld c, b
    ld l, b
    ld l, b
    ld l, c
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $6d
    ld l, h
    ld l, e
    ld l, d
    ld l, c
    ld l, b
    ld h, a
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld h, [hl]
    ld h, l
    ld h, h
    ld h, e
    ld h, d
    ld h, c
    ld h, b
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    ld e, a
    ld e, [hl]
    ld e, l
    ld e, h
    ld e, e
    ld e, d
    ld e, c
    dec d
    ld d, $17
    jr jr_026_6cf2

    ld a, [de]
    dec de
    ld e, b
    ld d, a
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, e
    ld d, d
    inc e
    dec e
    ld e, $1f
    jr nz, jr_026_6d09

    ld [hl+], a
    ld d, c
    ld d, b
    ld c, a
    ld c, [hl]
    ld c, l
    ld c, h
    ld c, e
    inc hl
    inc h

jr_026_6cf2:
    dec h
    ld h, $27
    jr z, jr_026_6d20

    ld a, [hl+]
    dec hl
    inc l
    ld b, h
    ld b, e
    ld b, d
    ld b, c
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $3a

jr_026_6d09:
    add hl, sp
    jr c, @+$39

    scf
    jr c, jr_026_6d48

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    jr nc, jr_026_6d47

    ld l, $2d
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_026_6d20:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld h, $25
    inc h
    inc hl
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld [hl+], a
    ld hl, $1f20
    ld e, $1d
    inc e
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    dec de
    ld a, [de]
    add hl, de
    jr jr_026_6d59

    ld d, $15
    ld e, c
    ld e, d
    ld e, e

jr_026_6d47:
    ld e, h

jr_026_6d48:
    ld e, l
    ld e, [hl]
    ld e, a
    inc d
    inc de
    ld [de], a
    ld de, $0f10
    ld c, $60
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]

jr_026_6d59:
    dec c
    inc c
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$6707], sp
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld b, $05
    inc b
    inc bc
    ld [bc], a
    ld bc, $0800
    ld [$0808], sp
    ld [$0808], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld c, b
    ld l, b
    ld l, b
    ld l, b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $6d
    ld l, h
    ld l, e
    ld l, d
    ld l, c
    ld l, b
    ld h, a
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld h, [hl]
    ld h, l
    ld h, h
    ld h, e
    ld h, d
    ld h, c
    ld h, b
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    ld e, a
    ld e, [hl]
    ld e, l
    ld e, h
    ld e, e
    ld e, d
    ld e, c
    dec d
    ld d, $17
    jr jr_026_6e7a

    ld a, [de]
    dec de
    ld e, b
    ld d, a
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, e
    ld d, d
    inc e
    dec e
    ld e, $1f
    jr nz, jr_026_6e91

    ld [hl+], a
    ld d, c
    ld d, b
    ld c, a
    ld c, [hl]
    ld c, l
    ld c, h
    ld c, e
    inc hl
    inc h

jr_026_6e7a:
    dec h
    ld h, $27
    jr z, jr_026_6ea8

    ld a, [hl+]
    dec hl
    inc l
    ld b, h
    ld b, e
    ld b, d
    ld b, c
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $3a

jr_026_6e91:
    add hl, sp
    jr c, @+$39

    scf
    jr c, jr_026_6ed0

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    jr nc, jr_026_6ecf

    ld l, $2d
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_026_6ea8:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld h, $25
    inc h
    inc hl
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld [hl+], a
    ld hl, $1f20
    ld e, $1d
    inc e
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    dec de
    ld a, [de]
    add hl, de
    jr jr_026_6ee1

    ld d, $15
    ld e, c
    ld e, d
    ld e, e

jr_026_6ecf:
    ld e, h

jr_026_6ed0:
    ld e, l
    ld e, [hl]
    ld e, a
    inc d
    inc de
    ld [de], a
    ld de, $0f10
    ld c, $60
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]

jr_026_6ee1:
    dec c
    inc c
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$6707], sp
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld b, $05
    inc b
    inc bc
    ld [bc], a
    ld bc, $0800
    ld [$0808], sp
    ld [$0808], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld [$0808], sp
    ld [$0808], sp
    ld [$6868], sp
    ld l, b
    ld c, b
    ld l, b
    ld l, b
    ld l, b
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    dec b
    ld b, $07
    ld [$0a09], sp
    rlca
    ld [$0a09], sp
    rlca
    ld [$0a09], sp
    rlca
    add hl, de
    rlca
    ld e, l
    ld e, [hl]
    ld e, a
    rlca
    ld c, e
    ld c, h
    ld c, l
    rlca
    jr nc, @+$33

    ld [hl-], a
    rlca
    add hl, de
    dec bc
    ld h, b
    ld h, c
    ld h, d
    dec bc
    ld c, [hl]
    ld c, a
    ld d, b
    dec bc
    inc sp
    inc [hl]
    dec [hl]
    dec bc
    add hl, de
    inc c
    ld h, e
    ld h, h
    ld h, l
    inc c
    ld d, c
    ld d, d
    ld d, e
    inc c
    ld [hl], $37
    jr c, @+$0e

    ld a, [de]
    inc c
    db $10
    ld de, $0c12
    db $10
    ld de, $0c12
    db $10
    ld de, $0c12
    dec de
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0f
    inc e
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_026_7056

    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    ld e, $1f
    rra
    jr nz, jr_026_7067

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc h
    inc h

jr_026_7056:
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    dec h
    ld h, $27
    jr z, jr_026_708e

    add hl, hl

jr_026_7067:
    ld a, [hl+]
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    inc l
    dec l
    ld h, $2e
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
    ld l, $2d
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]

jr_026_708e:
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
    ld [$080a], sp
    ld [$0a08], sp
    ld [$0808], sp
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    ld [$0d0a], sp
    dec c
    dec c
    ld a, [bc]
    ld c, $0e
    ld c, $0a
    dec c
    dec c
    dec c
    ld a, [bc]
    ld [$0d0a], sp
    dec c
    dec c
    ld a, [bc]
    ld c, $0e
    ld c, $0a
    dec c
    dec c
    dec c
    ld a, [bc]
    ld [$0d0a], sp
    dec c
    dec c
    ld a, [bc]
    ld c, $0e
    ld c, $0a
    dec c
    dec c
    dec c
    ld a, [bc]
    ld [$080a], sp
    ld [$0a08], sp
    ld [$0808], sp
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
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
    inc c
    inc c
    inc c
    inc c
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    inc c
    inc l
    inc c
    ld [$0b0b], sp
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
    add hl, bc
    add hl, bc
    add hl, bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    dec bc
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
    jr z, jr_026_7199

    ld a, [hl+]
    dec hl
    inc l
    dec e
    jr nz, jr_026_7197

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld [hl], $37
    jr c, jr_026_71b7

    ld a, [hl-]
    dec sp
    inc a
    dec l
    jr nc, jr_026_71b5

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

jr_026_7197:
    ld d, a
    ld c, c

jr_026_7199:
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

jr_026_71b5:
    ld c, c
    ld c, c

jr_026_71b7:
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
    jr c, jr_026_7219

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
    jr z, jr_026_7217

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

jr_026_7217:
    ld c, $0e

jr_026_7219:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
