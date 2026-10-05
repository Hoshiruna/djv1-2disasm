; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

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
    jr jr_024_4062

    and b
    ld c, a
    jr z, jr_024_4069

    or b
    ld d, d
    jr c, jr_024_4070

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
    jr nz, jr_024_409e

    xor b
    ld l, c
    jr nc, jr_024_40a5

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
    ld bc, $6060
    ld h, b
    dec b
    ld d, [hl]
    sbc h
    sbc l
    sbc [hl]
    ld d, [hl]
    dec bc
    ld h, b
    ld h, b
    db $10
    ld de, $6060

jr_024_4062:
    ld h, b
    dec d
    ld d, [hl]
    sbc h
    sbc l
    sbc [hl]
    ld d, [hl]

jr_024_4069:
    dec de
    inc e
    dec e
    jr nz, jr_024_408f

    ld [hl+], a
    inc hl

jr_024_4070:
    inc h
    dec h
    ld d, [hl]
    sbc h
    sbc l
    sbc [hl]
    ld d, [hl]
    dec hl
    inc l
    dec l
    ld b, b
    ld [bc], a
    inc bc
    inc b
    jr nc, jr_024_40b5

    ld d, [hl]
    sbc h
    sbc l
    sbc [hl]
    ld d, [hl]
    dec sp
    inc a
    dec a
    ld b, b
    ld [de], a
    inc de
    inc d
    ld [hl], b
    ld d, l
    ld d, [hl]

jr_024_408f:
    sbc h
    sbc l
    sbc [hl]
    ld d, [hl]
    ld c, e
    ld c, h
    ld c, l
    ld d, b
    adc h
    adc l
    adc [hl]
    adc a
    ld d, l
    ld d, [hl]
    sbc a

jr_024_409e:
    sbc l
    sbc [hl]
    ld d, [hl]
    ld e, e
    ld e, h
    ld e, l
    ld h, b

jr_024_40a5:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld a, h
    sbc [hl]
    ld d, [hl]
    ld l, e
    ld l, h
    ld l, l
    ld h, b
    ld [hl], c
    ld [hl], d

jr_024_40b5:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, l
    ld d, [hl]
    ld a, e
    ld h, b
    ld h, b
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
    ld h, b
    ld h, b
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
    ld h, b
    ld h, b
    ld b, $07
    ld [$0a09], sp
    ld d, $17
    jr jr_024_40fe

    ld a, [de]
    ld h, $60
    ld h, b
    ld h, b
    daa
    jr z, jr_024_4116

    ld a, [hl+]
    ld [hl], $37
    jr c, jr_024_412b

    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld b, a
    ld h, b
    ld h, b
    ld c, b
    ld c, c
    ld c, d
    ld e, d
    ld l, d
    ld a, d

jr_024_40fe:
    dec c
    ld c, $0f
    ld e, $1f
    ld l, $60
    ld h, b
    cpl
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    inc c
    inc c

jr_024_4116:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0808], sp
    ld [$0c28], sp
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0808], sp

jr_024_412b:
    ld [$0c28], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0c28], sp
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld [$0808], sp
    jr z, @+$0c

    ld a, [bc]
    inc c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld [$0808], sp
    jr z, jr_024_4164

    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld [$0808], sp

jr_024_4164:
    jr z, @+$0e

    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld [$2808], sp
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0c28], sp
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0a0c], sp
    ld a, [bc]
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld bc, $6060
    ld h, b
    dec b
    ld d, [hl]
    inc c
    ld a, a
    ld a, a
    ld d, [hl]
    dec bc
    ld h, b
    ld h, b
    db $10
    ld de, $6060
    ld h, b
    dec d
    ld d, [hl]
    inc c
    ld a, a
    ld a, a
    ld d, [hl]
    dec de
    inc e
    dec e
    jr nz, jr_024_4217

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld d, [hl]
    inc c
    ld a, a
    ld a, a
    ld d, [hl]
    dec hl
    inc l
    dec l
    ld b, b
    ld [bc], a
    inc bc
    inc b
    jr nc, jr_024_423d

    ld d, [hl]
    inc c
    ld a, a
    ld a, a
    ld d, [hl]
    dec sp
    inc a
    dec a
    ld b, b
    ld [de], a
    inc de
    inc d
    ld [hl], b
    ld d, l
    ld d, [hl]

jr_024_4217:
    inc c
    ld a, a
    ld a, a
    ld d, [hl]
    ld c, e
    ld c, h
    ld c, l
    ld d, b
    adc h
    adc l
    adc [hl]
    adc a
    ld d, l
    ld d, [hl]
    ld d, a
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
    ld l, c
    ld d, [hl]
    ld l, e
    ld l, h
    ld l, l
    ld h, b
    ld [hl], c
    ld [hl], d

jr_024_423d:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld d, [hl]
    ld a, e
    ld h, b
    ld h, b
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
    ld h, b
    ld h, b
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
    ld h, b
    ld h, b
    ld b, $07
    ld [$0a09], sp
    ld d, $17
    jr jr_024_4286

    ld a, [de]
    ld h, $60
    ld h, b
    ld h, b
    daa
    jr z, jr_024_429e

    ld a, [hl+]
    ld [hl], $37
    jr c, jr_024_42b3

    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld b, a
    ld h, b
    ld h, b
    ld c, b
    ld c, c
    ld c, d
    ld e, d
    ld l, d
    ld a, d

jr_024_4286:
    dec c
    ld c, $0f
    ld e, $1f
    ld l, $60
    ld h, b
    cpl
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    inc c
    inc c

jr_024_429e:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0b0e], sp
    dec bc
    jr z, jr_024_42b4

    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0b0e], sp

jr_024_42b3:
    dec bc

jr_024_42b4:
    jr z, jr_024_42c2

    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0b0e], sp
    dec bc

jr_024_42c2:
    jr z, jr_024_42d0

    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld c, $0b
    dec bc

jr_024_42d0:
    jr z, @+$0c

    ld a, [bc]
    inc c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld c, $0b
    dec bc
    jr z, @+$0e

    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld c, $0e
    ld c, $28
    inc c
    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    jr z, @+$0e

    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld c, $28
    inc c
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0a0c], sp
    ld a, [bc]
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld bc, $6060
    ld h, b
    dec b
    ld d, [hl]
    sbc h
    sbc l
    sbc [hl]
    ld d, [hl]
    dec bc
    ld h, b
    ld h, b
    db $10
    ld de, $6060
    ld h, b
    dec d
    ld d, [hl]
    sbc h
    sbc l
    sbc [hl]
    ld d, [hl]
    dec de
    inc e
    dec e
    jr nz, jr_024_439f

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld d, [hl]
    sbc h
    sbc l
    sbc [hl]
    ld d, [hl]
    dec hl
    inc l
    dec l
    ld b, b
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld d, [hl]
    sbc h
    sbc l
    sbc [hl]
    ld d, [hl]
    dec sp
    inc a
    dec a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld d, l
    ld d, [hl]

jr_024_439f:
    sbc h
    sbc l
    sbc [hl]
    ld d, [hl]
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
    sbc a
    sbc l
    sbc [hl]
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
    ld a, h
    sbc [hl]
    ld d, [hl]
    ld l, e
    ld l, h
    ld l, l
    ld h, b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, l
    ld d, [hl]
    ld a, e
    ld h, b
    ld h, b
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
    ld h, b
    ld h, b
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
    ld h, b
    ld h, b
    ld b, $07
    ld [$0a09], sp
    ld d, $17
    jr jr_024_440e

    ld a, [de]
    ld h, $60
    ld h, b
    ld h, b
    daa
    jr z, jr_024_4426

    ld a, [hl+]
    ld [hl], $37
    jr c, jr_024_443b

    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld b, a
    ld h, b
    ld h, b
    ld c, b
    ld c, c
    ld c, d
    ld e, d
    ld l, d
    ld a, d

jr_024_440e:
    dec c
    ld c, $0f
    ld e, $1f
    ld l, $60
    ld h, b
    cpl
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    inc c
    inc c

jr_024_4426:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0808], sp
    ld [$0c28], sp
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0808], sp

jr_024_443b:
    ld [$0c28], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0c28], sp
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld [$0808], sp
    jr z, @+$0c

    ld a, [bc]
    inc c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld [$0808], sp
    jr z, jr_024_4474

    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld [$0808], sp

jr_024_4474:
    jr z, @+$0e

    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld [$2808], sp
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0c28], sp
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0a0c], sp
    ld a, [bc]
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld bc, $6060
    ld h, b
    dec b
    ld d, [hl]
    inc c
    ld a, a
    ld a, a
    ld d, [hl]
    dec bc
    ld h, b
    ld h, b
    db $10
    ld de, $6060
    ld h, b
    dec d
    ld d, [hl]
    inc c
    ld a, a
    ld a, a
    ld d, [hl]
    dec de
    inc e
    dec e
    jr nz, jr_024_4527

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld d, [hl]
    inc c
    ld a, a
    ld a, a
    ld d, [hl]
    dec hl
    inc l
    dec l
    ld b, b
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld d, [hl]
    inc c
    ld a, a
    ld a, a
    ld d, [hl]
    dec sp
    inc a
    dec a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld d, l
    ld d, [hl]

jr_024_4527:
    inc c
    ld a, a
    ld a, a
    ld d, [hl]
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
    ld l, c
    ld d, [hl]
    ld l, e
    ld l, h
    ld l, l
    ld h, b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld d, [hl]
    ld a, e
    ld h, b
    ld h, b
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
    ld h, b
    ld h, b
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
    ld h, b
    ld h, b
    ld b, $07
    ld [$0a09], sp
    ld d, $17
    jr jr_024_4596

    ld a, [de]
    ld h, $60
    ld h, b
    ld h, b
    daa
    jr z, jr_024_45ae

    ld a, [hl+]
    ld [hl], $37
    jr c, jr_024_45c3

    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld b, a
    ld h, b
    ld h, b
    ld c, b
    ld c, c
    ld c, d
    ld e, d
    ld l, d
    ld a, d

jr_024_4596:
    dec c
    ld c, $0f
    ld e, $1f
    ld l, $60
    ld h, b
    cpl
    ld a, $3f
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    inc c
    inc c

jr_024_45ae:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0b0e], sp
    dec bc
    jr z, jr_024_45c4

    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$0b0e], sp

jr_024_45c3:
    dec bc

jr_024_45c4:
    jr z, jr_024_45d2

    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0b0e], sp
    dec bc

jr_024_45d2:
    jr z, jr_024_45e0

    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld c, $0b
    dec bc

jr_024_45e0:
    jr z, @+$0c

    ld a, [bc]
    inc c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld c, $0b
    dec bc
    jr z, @+$0e

    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$080c], sp
    ld c, $0e
    ld c, $28
    inc c
    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    jr z, @+$0e

    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld c, $28
    inc c
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0a0c], sp
    ld a, [bc]
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld bc, $0302
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, h
    ld a, d
    ld a, e
    ld a, h
    ld a, e
    ld a, h
    ld a, d
    db $10
    ld d, b
    ld d, c
    ld de, $1275
    inc de
    inc de
    inc de
    inc d
    ld [de], a
    inc de
    inc de
    inc de
    db $10
    ld d, d
    ld d, e
    ld hl, $2276
    inc b
    dec b
    ld b, $07
    dec d
    ld d, $17
    jr jr_024_46ab

    ld h, d
    ld h, e
    ld hl, $3276
    ld [$0a09], sp
    inc h
    dec d
    ld d, $17
    jr jr_024_46b9

    ld d, d
    ld d, e

jr_024_46ab:
    ld hl, $2377
    dec bc
    inc c
    inc c
    inc [hl]
    dec d
    ld d, $17
    jr jr_024_46c7

    ld h, b
    ld h, c

jr_024_46b9:
    ld hl, $2378
    dec c
    ld c, $0f
    inc [hl]
    ld [hl-], a
    ld [$0a09], sp
    db $10
    ld d, h
    ld d, l

jr_024_46c7:
    ld sp, $1979
    ld a, [de]
    dec de
    dec de
    inc e
    dec e
    ld e, $1b
    dec de
    db $10
    ld h, h
    ld h, l
    ld hl, $254d
    ld h, $27
    jr z, jr_024_4705

    ld a, [hl+]
    dec hl
    ld a, l
    ld a, [hl]
    db $10
    ld d, d
    ld d, e
    ld hl, $2d2c
    ld l, $2f
    dec [hl]
    ld [hl], $37
    jr c, jr_024_4726

    ld e, c
    db $10
    ld d, [hl]
    ld d, a
    ld l, c
    ld a, [hl-]
    dec sp
    inc a
    dec a
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    jr nz, jr_024_4764

    ld h, a
    ld l, b
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, h

jr_024_4705:
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    adc c
    jr nc, jr_024_4764

    ld [hl], b
    ld l, h
    ld b, d
    ld c, c
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ld c, h
    ld [hl], c
    ld c, [hl]
    adc b
    ld l, h
    ld l, h
    add h
    add l
    rra
    inc sp
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, a
    add [hl]
    add a

jr_024_4726:
    add b
    add c
    add d
    add e
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    add hl, bc
    add hl, bc
    add hl, bc
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
    inc l
    add hl, bc
    dec bc
    dec bc
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
    dec bc
    dec bc
    add hl, bc
    inc c
    add hl, bc
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $0e
    ld c, $09
    dec bc
    dec bc
    add hl, bc
    inc c
    add hl, bc

jr_024_4764:
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $0e
    ld c, $09
    dec bc
    dec bc
    add hl, bc
    inc c
    add hl, bc
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $0e
    ld c, $09
    dec bc
    dec bc
    add hl, bc
    inc c
    add hl, bc
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $0e
    ld c, $09
    dec bc
    dec bc
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
    dec bc
    dec bc
    add hl, bc
    inc c
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
    ld a, [bc]
    inc c
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    dec bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d0a], sp
    ld [$0d08], sp
    dec c
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
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
    nop
    ld bc, $0302
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, h
    ld a, d
    ld a, e
    ld a, h
    ld a, e
    ld a, h
    ld a, d
    db $10
    ld e, d
    ld e, e
    ld de, $1275
    inc de
    inc de
    inc de
    inc d
    ld [de], a
    inc de
    inc de
    inc de
    db $10
    ld l, d
    ld l, e
    ld hl, $2276
    inc b
    dec b
    ld b, $07
    dec d
    ld d, $17
    jr jr_024_4833

    ld e, h
    ld e, l
    ld hl, $3276
    ld [$0a09], sp
    inc h
    dec d
    ld d, $17
    jr jr_024_4841

    ld e, h
    ld e, l

jr_024_4833:
    ld hl, $2377
    dec bc
    inc c
    inc c
    inc [hl]
    dec d
    ld d, $17
    jr jr_024_484f

    ld e, h
    ld e, l

jr_024_4841:
    ld hl, $2378
    dec c
    ld c, $0f
    inc [hl]
    ld [hl-], a
    ld [$0a09], sp
    db $10
    ld e, h
    ld e, l

jr_024_484f:
    ld hl, $1979
    ld a, [de]
    dec de
    dec de
    inc e
    dec e
    ld e, $1b
    dec de
    db $10
    ld e, h
    ld e, l
    ld hl, $254d
    ld h, $27
    jr z, jr_024_488d

    ld a, [hl+]
    dec hl
    ld a, l
    ld a, [hl]
    db $10
    ld e, [hl]
    ld e, a
    ld hl, $2d2c
    ld l, $2f
    dec [hl]
    ld [hl], $37
    jr c, jr_024_48ae

    ld e, c
    db $10
    ld l, [hl]
    ld l, a
    ld l, c
    ld a, [hl-]
    dec sp
    inc a
    dec a
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    jr nz, @+$6e

    ld l, l
    ld l, b
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, h

jr_024_488d:
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    adc c
    jr nc, @+$6e

    ld l, h
    ld l, h
    ld b, d
    ld c, c
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ld c, h
    ld [hl], c
    ld c, [hl]
    adc b
    ld l, h
    ld l, h
    add h
    add l
    rra
    inc sp
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, a
    add [hl]
    add a

jr_024_48ae:
    add b
    add c
    add d
    add e
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    add hl, bc
    add hl, bc
    add hl, bc
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
    inc l
    add hl, bc
    dec bc
    dec bc
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
    dec bc
    dec bc
    add hl, bc
    inc c
    add hl, bc
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $0e
    ld c, $09
    dec bc
    dec bc
    add hl, bc
    inc c
    add hl, bc
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $0e
    ld c, $09
    dec bc
    dec bc
    add hl, bc
    inc c
    add hl, bc
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $0e
    ld c, $09
    dec bc
    dec bc
    add hl, bc
    inc c
    add hl, bc
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $0e
    ld c, $09
    dec bc
    dec bc
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
    dec bc
    dec bc
    add hl, bc
    inc c
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
    ld a, [bc]
    inc c
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    dec c
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d0a], sp
    ld [$0d0d], sp
    dec c
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
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
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $1000
    ld de, $1312
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc de
    ld [de], a
    daa
    ld hl, $2110
    ld [hl+], a
    inc hl
    inc h
    dec h
    dec h
    dec h
    dec h
    ld h, $23
    ld de, $2127
    db $10
    jr nc, jr_024_49de

    inc hl
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld [hl+], a
    ld hl, $3938
    ld [hl+], a
    ld b, b
    ld b, c
    ld [hl+], a
    ld [hl-], a
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    scf
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld [hl+], a
    ld c, d
    ld c, e
    daa
    ld [hl-], a
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    scf
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld [hl+], a
    ld d, b
    ld d, c
    daa
    ld [hl-], a
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    scf

jr_024_49de:
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld [hl+], a
    ld e, d
    ld e, e
    daa
    ld [hl-], a
    ld h, a
    ld l, b
    ld l, c
    ld h, d
    scf
    ld h, b
    ld h, c
    jr nz, jr_024_4a4d

    ld [hl+], a
    ld e, [hl]
    ld e, a
    daa
    ld [hl-], a
    ld d, d
    ld d, e
    ld d, h
    ld a, $37
    daa
    ld de, $1127
    ld [hl+], a
    daa
    daa
    daa
    ld [hl-], a
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    scf
    daa
    ld de, $2127
    ld [hl+], a
    daa
    inc l
    ld a, [hl-]
    ccf
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ccf
    ld a, [hl-]
    dec hl
    daa
    ld hl, $2d22
    ld l, $2f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    cpl
    ld l, $2d
    ld de, $3b3a
    inc a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    inc a
    dec sp
    ld a, [hl-]
    jr z, jr_024_4a61

    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    jr z, jr_024_4a4e

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_024_4a4d:
    add hl, bc

jr_024_4a4e:
    add hl, hl
    add hl, hl
    add hl, hl
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
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc

jr_024_4a61:
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$090a], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$090a], sp
    dec bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$0b0a], sp
    dec bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$0b0a], sp
    dec bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$0b0a], sp
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$090a], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$090a], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    ld a, [bc]
    ld [$0808], sp
    ld [$2d2a], sp
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
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
    dec c
    dec l
    dec l
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $1000
    ld de, $1312
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc de
    ld [de], a
    daa
    ld hl, $2110
    ld [hl+], a
    inc hl
    inc h
    dec h
    dec h
    dec h
    dec h
    ld h, $23
    ld de, $2127
    db $10
    jr nc, jr_024_4b66

    inc hl
    ld [hl-], a
    ld b, $04
    dec b
    ld b, $37
    ld [hl+], a
    ld hl, $3938
    ld [hl+], a
    ld b, b
    ld b, c
    ld [hl+], a
    ld [hl-], a
    rlca
    ld [$0a09], sp
    scf
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld [hl+], a
    ld c, d
    ld c, e
    daa
    ld [hl-], a
    dec bc
    inc c
    dec c
    ld c, $37
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld [hl+], a
    ld d, b
    ld d, c
    daa
    ld [hl-], a
    dec d
    ld d, $17
    jr jr_024_4b9d

jr_024_4b66:
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld [hl+], a
    ld e, d
    ld e, e
    daa
    ld [hl-], a
    add hl, de
    ld a, [de]
    add hl, de
    ld a, [de]
    scf
    ld h, b
    ld h, c
    jr nz, jr_024_4bd5

    ld [hl+], a
    ld e, [hl]
    ld e, a
    daa
    ld [hl-], a
    dec de
    dec de
    dec de
    inc e
    scf
    daa
    ld de, $1127
    ld [hl+], a
    daa
    daa
    daa
    ld [hl-], a
    dec e
    dec e
    dec e
    ld e, $37
    daa
    ld de, $2127
    ld [hl+], a
    daa
    inc l
    ld a, [hl-]
    ccf
    rra
    rra
    rra
    rra

jr_024_4b9d:
    ccf
    ld a, [hl-]
    dec hl
    daa
    ld hl, $2d22
    ld l, $2f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    cpl
    ld l, $2d
    ld de, $3b3a
    inc a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    inc a
    dec sp
    ld a, [hl-]
    jr z, jr_024_4be9

    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    jr z, jr_024_4bd6

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_024_4bd5:
    add hl, bc

jr_024_4bd6:
    add hl, hl
    add hl, hl
    add hl, hl
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
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc

jr_024_4be9:
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    add hl, bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    dec bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld c, $0e
    ld c, $0e
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
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld a, [hl+]
    dec l
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
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
    dec c
    dec l
    dec l
    rst RST_38
    daa
    jr z, jr_024_4cbc

    jr z, jr_024_4cbe

    jr z, jr_024_4cc0

    jr z, jr_024_4cc2

    jr z, jr_024_4cc4

    jr z, jr_024_4cc6

    rst RST_38
    daa
    jr z, jr_024_4cca

    jr z, jr_024_4ccc

    jr z, jr_024_4cce

    jr z, jr_024_4cd0

    jr z, jr_024_4cd2

    jr z, jr_024_4cd4

    rst RST_38
    daa
    ld h, [hl]
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_4cbc:
    halt
    ld c, b

jr_024_4cbe:
    ld c, c
    ld e, d

jr_024_4cc0:
    ld [hl], a
    adc h

jr_024_4cc2:
    add hl, hl
    ld a, [hl+]

jr_024_4cc4:
    dec hl
    inc l

jr_024_4cc6:
    dec l
    jr c, @+$01

    daa

jr_024_4cca:
    halt
    ld e, b

jr_024_4ccc:
    ld e, c
    ld b, a

jr_024_4cce:
    ld [hl], a
    adc h

jr_024_4cd0:
    add hl, sp
    ld a, [hl-]

jr_024_4cd2:
    dec sp
    inc a

jr_024_4cd4:
    dec a
    jr c, @+$01

    daa
    halt
    ld b, [hl]
    ld c, d
    ld d, a
    inc hl
    inc sp
    ld l, e
    ld l, h
    ld l, a
    ld l, $2f
    jr c, @+$01

    daa
    halt
    ld d, [hl]
    ld b, l
    jr nz, jr_024_4d0c

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, a
    ld a, $3f
    jr c, @+$01

    daa
    ld b, e
    ld b, h
    ld d, l
    jr nc, jr_024_4d2a

    ld [hl-], a
    ld l, l
    ld l, [hl]
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    ld d, e
    ld d, h
    ld e, a
    dec c
    ld c, $1d
    ld e, $7d
    ld a, [hl]
    add d
    add e

jr_024_4d0c:
    inc [hl]
    inc de
    ld h, $42
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add l
    add [hl]
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    add a
    rst RST_38
    rst RST_38
    adc b
    ld [de], a
    inc de

jr_024_4d2a:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc c
    adc d
    adc d
    adc e
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $0504
    dec b
    inc b
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
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
    nop
    ld a, [bc]
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
    nop
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec bc
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0e
    ld c, $08
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0c08], sp
    nop
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0808], sp
    ld [$0800], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_4e44

    jr z, jr_024_4e46

    jr z, jr_024_4e48

    jr z, jr_024_4e4a

    jr z, jr_024_4e4c

    jr z, jr_024_4e4e

    rst RST_38
    daa
    jr z, jr_024_4e52

    jr z, jr_024_4e54

    jr z, jr_024_4e56

    jr z, jr_024_4e58

    jr z, jr_024_4e5a

    jr z, jr_024_4e5c

    rst RST_38
    daa
    ld h, [hl]
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_4e44:
    halt
    ld c, b

jr_024_4e46:
    ld c, c
    ld e, d

jr_024_4e48:
    ld [hl], a
    sub b

jr_024_4e4a:
    add hl, hl
    ld a, [hl+]

jr_024_4e4c:
    dec hl
    inc l

jr_024_4e4e:
    dec l
    jr c, @+$01

    daa

jr_024_4e52:
    halt
    ld e, b

jr_024_4e54:
    ld e, c
    ld b, a

jr_024_4e56:
    ld [hl], a
    sub b

jr_024_4e58:
    add hl, sp
    ld a, [hl-]

jr_024_4e5a:
    dec sp
    inc a

jr_024_4e5c:
    dec a
    jr c, @+$01

    daa
    halt
    ld b, [hl]
    ld c, d
    ld d, a
    inc hl
    inc sp
    ld l, e
    ld l, h
    ld l, l
    ld l, $2f
    jr c, @+$01

    daa
    halt
    ld d, [hl]
    ld b, l
    jr nz, jr_024_4e94

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, l
    ld a, $3f
    jr c, @+$01

    daa
    ld b, e
    ld b, h
    ld d, l
    jr nc, jr_024_4eb2

    ld [hl-], a
    ld l, [hl]
    ld l, a
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    ld d, e
    ld d, h
    ld e, a
    dec c
    ld c, $1d
    ld e, $7e
    ld a, a
    add d
    add e

jr_024_4e94:
    inc [hl]
    inc de
    ld h, $42
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add [hl]
    adc e
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    adc b
    adc c
    adc d
    adc e
    ld [de], a
    inc de

jr_024_4eb2:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc h
    adc l
    adc [hl]
    adc a
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $0504
    dec b
    inc b
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
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
    nop
    ld a, [bc]
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
    nop
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec bc
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld [$0b0b], sp
    ld [$0b0b], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0e
    ld c, $08
    dec bc
    dec bc
    ld c, $0b
    ld [$0808], sp
    inc c
    nop
    ld c, $08
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    add hl, bc
    ld [$4909], sp
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_4fcc

    jr z, jr_024_4fce

    jr z, jr_024_4fd0

    jr z, jr_024_4fd2

    jr z, jr_024_4fd4

    jr z, jr_024_4fd6

    rst RST_38
    daa
    jr z, jr_024_4fda

    jr z, jr_024_4fdc

    jr z, jr_024_4fde

    jr z, jr_024_4fe0

    jr z, jr_024_4fe2

    jr z, jr_024_4fe4

    rst RST_38
    daa
    ld h, [hl]
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_4fcc:
    halt
    ld c, b

jr_024_4fce:
    ld c, c
    ld e, d

jr_024_4fd0:
    ld [hl], a
    adc h

jr_024_4fd2:
    add hl, hl
    ld a, [hl+]

jr_024_4fd4:
    dec hl
    inc l

jr_024_4fd6:
    dec l
    jr c, @+$01

    daa

jr_024_4fda:
    halt
    ld e, b

jr_024_4fdc:
    ld e, c
    ld b, a

jr_024_4fde:
    ld [hl], a
    adc h

jr_024_4fe0:
    add hl, sp
    ld a, [hl-]

jr_024_4fe2:
    dec sp
    inc a

jr_024_4fe4:
    dec a
    jr c, @+$01

    ld c, h
    ld c, l
    ld b, [hl]
    ld c, d
    ld d, a
    inc hl
    inc sp
    ld l, e
    ld l, h
    ld l, a
    ld l, $2f
    jr c, @+$01

    ld e, h
    ld e, l
    ld c, a
    ld b, l
    jr nz, jr_024_501c

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, a
    ld a, $3f
    jr c, @+$01

    daa
    ld c, e
    ld c, [hl]
    ld d, l
    jr nc, jr_024_503a

    ld [hl-], a
    ld l, l
    ld l, [hl]
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    daa
    ld e, e
    ld e, a
    dec c
    ld c, $1d
    ld e, $7d
    ld a, [hl]
    add d
    add e

jr_024_501c:
    inc [hl]
    inc de
    ld h, $52
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add l
    add [hl]
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    add a
    rst RST_38
    rst RST_38
    adc b
    ld [de], a
    inc de

jr_024_503a:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc c
    adc d
    adc d
    adc e
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $0504
    dec b
    inc b
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
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
    nop
    ld a, [bc]
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
    nop
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec bc
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0b
    dec bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$080e], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0c08], sp
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0808], sp
    ld [$0800], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_5154

    jr z, jr_024_5156

    jr z, jr_024_5158

    jr z, jr_024_515a

    jr z, jr_024_515c

    jr z, jr_024_515e

    rst RST_38
    daa
    jr z, jr_024_5162

    jr z, jr_024_5164

    jr z, jr_024_5166

    jr z, jr_024_5168

    jr z, jr_024_516a

    jr z, jr_024_516c

    rst RST_38
    daa
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld l, d
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_5154:
    ld a, c
    rst RST_38

jr_024_5156:
    rst RST_38
    rst RST_38

jr_024_5158:
    ld a, d
    adc h

jr_024_515a:
    add hl, hl
    ld a, [hl+]

jr_024_515c:
    dec hl
    inc l

jr_024_515e:
    dec l
    jr c, @+$01

    daa

jr_024_5162:
    ld a, c
    rst RST_38

jr_024_5164:
    rst RST_38
    rst RST_38

jr_024_5166:
    ld a, d
    adc h

jr_024_5168:
    add hl, sp
    ld a, [hl-]

jr_024_516a:
    dec sp
    inc a

jr_024_516c:
    dec a
    jr c, @+$01

    daa
    ld a, c
    rst RST_38
    rst RST_38
    ld [hl], b
    ld [hl], c
    inc sp
    ld l, e
    ld l, h
    ld l, a
    ld l, $2f
    jr c, @+$01

    daa
    ld a, c
    rst RST_38
    ld h, d
    jr nz, jr_024_51a4

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, a
    ld a, $3f
    jr c, @+$01

    daa
    ld h, b
    ld h, c
    ld [hl], d
    jr nc, jr_024_51c2

    ld [hl-], a
    ld l, l
    ld l, [hl]
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    ld d, e
    ld d, h
    ld e, a
    dec c
    ld c, $1d
    ld e, $7d
    ld a, [hl]
    add d
    add e

jr_024_51a4:
    inc [hl]
    inc de
    ld h, $42
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add l
    add [hl]
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    add a
    rst RST_38
    rst RST_38
    adc b
    ld [de], a
    inc de

jr_024_51c2:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc c
    adc d
    adc d
    adc e
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $0504
    dec b
    inc b
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0b08], sp
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$080b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0e
    ld c, $08
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0c08], sp
    nop
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0808], sp
    ld [$0800], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_52dc

    jr z, jr_024_52de

    jr z, jr_024_52e0

    jr z, jr_024_52e2

    jr z, jr_024_52e4

    jr z, jr_024_52e6

    rst RST_38
    daa
    jr z, jr_024_52ea

    jr z, jr_024_52ec

    jr z, jr_024_52ee

    jr z, jr_024_52f0

    jr z, jr_024_52f2

    jr z, jr_024_52f4

    rst RST_38
    daa
    ld h, [hl]
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_52dc:
    halt
    ld c, b

jr_024_52de:
    ld c, c
    ld e, d

jr_024_52e0:
    ld [hl], a
    adc h

jr_024_52e2:
    add hl, hl
    ld a, [hl+]

jr_024_52e4:
    dec hl
    inc l

jr_024_52e6:
    dec l
    jr c, @+$01

    daa

jr_024_52ea:
    halt
    ld e, b

jr_024_52ec:
    ld e, c
    ld b, a

jr_024_52ee:
    ld [hl], a
    adc h

jr_024_52f0:
    add hl, sp
    ld a, [hl-]

jr_024_52f2:
    dec sp
    inc a

jr_024_52f4:
    dec a
    jr c, @+$01

    daa
    halt
    ld b, [hl]
    ld c, d
    ld d, a
    inc hl
    inc sp
    ld l, e
    ld l, h
    ld l, a
    ld l, $2f
    jr c, @+$01

    daa
    halt
    ld d, [hl]
    ld b, l
    jr nz, jr_024_532c

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, a
    ld a, $3f
    jr c, @+$01

    daa
    ld b, e
    ld b, h
    ld d, l
    jr nc, jr_024_534a

    ld [hl-], a
    ld l, l
    ld l, [hl]
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    ld d, e
    ld d, h
    ld e, a
    dec c
    ld c, $1d
    ld e, $7d
    ld a, [hl]
    add d
    add e

jr_024_532c:
    inc [hl]
    inc de
    ld h, $42
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add l
    add [hl]
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    add a
    rst RST_38
    rst RST_38
    adc b
    ld [de], a
    inc de

jr_024_534a:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc c
    adc d
    adc d
    adc e
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $1514
    dec d
    inc d
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
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
    nop
    ld a, [bc]
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
    nop
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec bc
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0e
    ld c, $08
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0c08], sp
    nop
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0808], sp
    ld [$0800], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_5464

    jr z, jr_024_5466

    jr z, jr_024_5468

    jr z, jr_024_546a

    jr z, jr_024_546c

    jr z, jr_024_546e

    rst RST_38
    daa
    jr z, jr_024_5472

    jr z, jr_024_5474

    jr z, jr_024_5476

    jr z, jr_024_5478

    jr z, jr_024_547a

    jr z, jr_024_547c

    rst RST_38
    daa
    ld h, [hl]
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_5464:
    halt
    ld c, b

jr_024_5466:
    ld c, c
    ld e, d

jr_024_5468:
    ld [hl], a
    sub b

jr_024_546a:
    add hl, hl
    ld a, [hl+]

jr_024_546c:
    dec hl
    inc l

jr_024_546e:
    dec l
    jr c, @+$01

    daa

jr_024_5472:
    halt
    ld e, b

jr_024_5474:
    ld e, c
    ld b, a

jr_024_5476:
    ld [hl], a
    sub b

jr_024_5478:
    add hl, sp
    ld a, [hl-]

jr_024_547a:
    dec sp
    inc a

jr_024_547c:
    dec a
    jr c, @+$01

    ld c, h
    ld c, l
    ld b, [hl]
    ld c, d
    ld d, a
    inc hl
    inc sp
    ld l, e
    ld l, h
    ld l, l
    ld l, $2f
    jr c, @+$01

    ld e, h
    ld e, l
    ld c, a
    ld b, l
    jr nz, jr_024_54b4

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, l
    ld a, $3f
    jr c, @+$01

    daa
    ld c, e
    ld c, [hl]
    ld d, l
    jr nc, jr_024_54d2

    ld [hl-], a
    ld l, [hl]
    ld l, a
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    daa
    ld e, e
    ld e, a
    dec c
    ld c, $1d
    ld e, $7e
    ld a, a
    add d
    add e

jr_024_54b4:
    inc [hl]
    inc de
    ld h, $52
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add [hl]
    adc e
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    adc b
    adc c
    adc d
    adc e
    ld [de], a
    inc de

jr_024_54d2:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc h
    adc l
    adc [hl]
    adc a
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $0504
    dec b
    inc b
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
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
    nop
    ld a, [bc]
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
    nop
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec bc
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0b
    dec bc
    ld [$0b0b], sp
    ld [$0b0b], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$080e], sp
    dec bc
    dec bc
    ld c, $0b
    ld [$0808], sp
    inc c
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    add hl, bc
    ld [$4909], sp
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_55ec

    jr z, jr_024_55ee

    jr z, jr_024_55f0

    jr z, jr_024_55f2

    jr z, jr_024_55f4

    jr z, jr_024_55f6

    rst RST_38
    daa
    jr z, jr_024_55fa

    jr z, jr_024_55fc

    jr z, jr_024_55fe

    jr z, jr_024_5600

    jr z, jr_024_5602

    jr z, jr_024_5604

    rst RST_38
    daa
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld l, d
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_55ec:
    ld a, c
    rst RST_38

jr_024_55ee:
    rst RST_38
    rst RST_38

jr_024_55f0:
    ld a, d
    sub b

jr_024_55f2:
    add hl, hl
    ld a, [hl+]

jr_024_55f4:
    dec hl
    inc l

jr_024_55f6:
    dec l
    jr c, @+$01

    daa

jr_024_55fa:
    ld a, c
    rst RST_38

jr_024_55fc:
    rst RST_38
    rst RST_38

jr_024_55fe:
    ld a, d
    sub b

jr_024_5600:
    add hl, sp
    ld a, [hl-]

jr_024_5602:
    dec sp
    inc a

jr_024_5604:
    dec a
    jr c, @+$01

    daa
    ld a, c
    rst RST_38
    rst RST_38
    ld [hl], b
    ld [hl], c
    inc sp
    ld l, e
    ld l, h
    ld l, l
    ld l, $2f
    jr c, @+$01

    daa
    ld a, c
    rst RST_38
    ld h, d
    jr nz, jr_024_563c

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, l
    ld a, $3f
    jr c, @+$01

    daa
    ld h, b
    ld h, c
    ld [hl], d
    jr nc, jr_024_565a

    ld [hl-], a
    ld l, [hl]
    ld l, a
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    ld d, e
    ld d, h
    ld e, a
    dec c
    ld c, $1d
    ld e, $7e
    ld a, a
    add d
    add e

jr_024_563c:
    inc [hl]
    inc de
    ld h, $42
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add [hl]
    adc e
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    adc b
    adc c
    adc d
    adc e
    ld [de], a
    inc de

jr_024_565a:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc h
    adc l
    adc [hl]
    adc a
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $0504
    dec b
    inc b
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0b08], sp
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$080b], sp
    dec bc
    dec bc
    ld [$0b0b], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0e
    ld c, $08
    dec bc
    dec bc
    ld c, $0b
    ld [$0808], sp
    inc c
    nop
    ld c, $08
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    add hl, bc
    ld [$4909], sp
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_5774

    jr z, jr_024_5776

    jr z, jr_024_5778

    jr z, jr_024_577a

    jr z, jr_024_577c

    jr z, jr_024_577e

    rst RST_38
    daa
    jr z, jr_024_5782

    jr z, jr_024_5784

    jr z, jr_024_5786

    jr z, jr_024_5788

    jr z, jr_024_578a

    jr z, jr_024_578c

    rst RST_38
    daa
    ld h, [hl]
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_5774:
    halt
    ld c, b

jr_024_5776:
    ld c, c
    ld e, d

jr_024_5778:
    ld [hl], a
    sub b

jr_024_577a:
    add hl, hl
    ld a, [hl+]

jr_024_577c:
    dec hl
    inc l

jr_024_577e:
    dec l
    jr c, @+$01

    daa

jr_024_5782:
    halt
    ld e, b

jr_024_5784:
    ld e, c
    ld b, a

jr_024_5786:
    ld [hl], a
    sub b

jr_024_5788:
    add hl, sp
    ld a, [hl-]

jr_024_578a:
    dec sp
    inc a

jr_024_578c:
    dec a
    jr c, @+$01

    daa
    halt
    ld b, [hl]
    ld c, d
    ld d, a
    inc hl
    inc sp
    ld l, e
    ld l, h
    ld l, l
    ld l, $2f
    jr c, @+$01

    daa
    halt
    ld d, [hl]
    ld b, l
    jr nz, jr_024_57c4

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, l
    ld a, $3f
    jr c, @+$01

    daa
    ld b, e
    ld b, h
    ld d, l
    jr nc, jr_024_57e2

    ld [hl-], a
    ld l, [hl]
    ld l, a
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    ld d, e
    ld d, h
    ld e, a
    dec c
    ld c, $1d
    ld e, $7e
    ld a, a
    add d
    add e

jr_024_57c4:
    inc [hl]
    inc de
    ld h, $42
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add [hl]
    adc e
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    adc b
    adc c
    adc d
    adc e
    ld [de], a
    inc de

jr_024_57e2:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc h
    adc l
    adc [hl]
    adc a
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $1514
    dec d
    inc d
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
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
    nop
    ld a, [bc]
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
    nop
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec bc
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld [$0b0b], sp
    ld [$0b0b], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0e
    ld c, $08
    dec bc
    dec bc
    ld c, $0b
    ld [$0808], sp
    inc c
    nop
    ld c, $08
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    add hl, bc
    ld [$4909], sp
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_58fc

    jr z, jr_024_58fe

    jr z, jr_024_5900

    jr z, jr_024_5902

    jr z, jr_024_5904

    jr z, jr_024_5906

    rst RST_38
    daa
    jr z, jr_024_590a

    jr z, jr_024_590c

    jr z, jr_024_590e

    jr z, jr_024_5910

    jr z, jr_024_5912

    jr z, jr_024_5914

    rst RST_38
    daa
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld l, d
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_58fc:
    ld a, c
    rst RST_38

jr_024_58fe:
    rst RST_38
    rst RST_38

jr_024_5900:
    ld a, d
    adc h

jr_024_5902:
    add hl, hl
    ld a, [hl+]

jr_024_5904:
    dec hl
    inc l

jr_024_5906:
    dec l
    jr c, @+$01

    daa

jr_024_590a:
    ld a, c
    rst RST_38

jr_024_590c:
    rst RST_38
    rst RST_38

jr_024_590e:
    ld a, d
    adc h

jr_024_5910:
    add hl, sp
    ld a, [hl-]

jr_024_5912:
    dec sp
    inc a

jr_024_5914:
    dec a
    jr c, @+$01

    ld c, h
    ld h, e
    rst RST_38
    rst RST_38
    ld [hl], b
    ld [hl], c
    inc sp
    ld l, e
    ld l, h
    ld l, a
    ld l, $2f
    jr c, @+$01

    ld e, h
    ld e, l
    ld h, h
    ld h, d
    jr nz, jr_024_594c

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, a
    ld a, $3f
    jr c, @+$01

    daa
    ld h, l
    ld [hl], h
    ld [hl], d
    jr nc, jr_024_596a

    ld [hl-], a
    ld l, l
    ld l, [hl]
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    daa
    ld [hl], l
    ld e, a
    dec c
    ld c, $1d
    ld e, $7d
    ld a, [hl]
    add d
    add e

jr_024_594c:
    inc [hl]
    inc de
    ld h, $52
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add l
    add [hl]
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    add a
    rst RST_38
    rst RST_38
    adc b
    ld [de], a
    inc de

jr_024_596a:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc c
    adc d
    adc d
    adc e
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $0504
    dec b
    inc b
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0b08], sp
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0b
    dec bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$080e], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0c08], sp
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0808], sp
    ld [$0800], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_5a84

    jr z, jr_024_5a86

    jr z, jr_024_5a88

    jr z, jr_024_5a8a

    jr z, jr_024_5a8c

    jr z, jr_024_5a8e

    rst RST_38
    daa
    jr z, jr_024_5a92

    jr z, jr_024_5a94

    jr z, jr_024_5a96

    jr z, jr_024_5a98

    jr z, jr_024_5a9a

    jr z, jr_024_5a9c

    rst RST_38
    daa
    ld h, [hl]
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_5a84:
    halt
    ld c, b

jr_024_5a86:
    ld c, c
    ld e, d

jr_024_5a88:
    ld [hl], a
    adc h

jr_024_5a8a:
    add hl, hl
    ld a, [hl+]

jr_024_5a8c:
    dec hl
    inc l

jr_024_5a8e:
    dec l
    jr c, @+$01

    daa

jr_024_5a92:
    halt
    ld e, b

jr_024_5a94:
    ld e, c
    ld b, a

jr_024_5a96:
    ld [hl], a
    adc h

jr_024_5a98:
    add hl, sp
    ld a, [hl-]

jr_024_5a9a:
    dec sp
    inc a

jr_024_5a9c:
    dec a
    jr c, @+$01

    ld c, h
    ld c, l
    ld b, [hl]
    ld c, d
    ld d, a
    inc hl
    inc sp
    ld l, e
    ld l, h
    ld l, a
    ld l, $2f
    jr c, @+$01

    ld e, h
    ld e, l
    ld c, a
    ld b, l
    jr nz, jr_024_5ad4

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, a
    ld a, $3f
    jr c, @+$01

    daa
    ld c, e
    ld c, [hl]
    ld d, l
    jr nc, jr_024_5af2

    ld [hl-], a
    ld l, l
    ld l, [hl]
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    daa
    ld e, e
    ld e, a
    dec c
    ld c, $1d
    ld e, $7d
    ld a, [hl]
    add d
    add e

jr_024_5ad4:
    inc [hl]
    inc de
    ld h, $52
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add l
    add [hl]
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    add a
    rst RST_38
    rst RST_38
    adc b
    ld [de], a
    inc de

jr_024_5af2:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc c
    adc d
    adc d
    adc e
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $1514
    dec d
    inc d
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
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
    nop
    ld a, [bc]
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
    nop
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec bc
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0b
    dec bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$080e], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0c08], sp
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0808], sp
    ld [$0800], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_5c0c

    jr z, jr_024_5c0e

    jr z, jr_024_5c10

    jr z, jr_024_5c12

    jr z, jr_024_5c14

    jr z, jr_024_5c16

    rst RST_38
    daa
    jr z, jr_024_5c1a

    jr z, jr_024_5c1c

    jr z, jr_024_5c1e

    jr z, jr_024_5c20

    jr z, jr_024_5c22

    jr z, jr_024_5c24

    rst RST_38
    daa
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld l, d
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_5c0c:
    ld a, c
    rst RST_38

jr_024_5c0e:
    rst RST_38
    rst RST_38

jr_024_5c10:
    ld a, d
    adc h

jr_024_5c12:
    add hl, hl
    ld a, [hl+]

jr_024_5c14:
    dec hl
    inc l

jr_024_5c16:
    dec l
    jr c, @+$01

    daa

jr_024_5c1a:
    ld a, c
    rst RST_38

jr_024_5c1c:
    rst RST_38
    rst RST_38

jr_024_5c1e:
    ld a, d
    adc h

jr_024_5c20:
    add hl, sp
    ld a, [hl-]

jr_024_5c22:
    dec sp
    inc a

jr_024_5c24:
    dec a
    jr c, @+$01

    daa
    ld a, c
    rst RST_38
    rst RST_38
    ld [hl], b
    ld [hl], c
    inc sp
    ld l, e
    ld l, h
    ld l, a
    ld l, $2f
    jr c, @+$01

    daa
    ld a, c
    rst RST_38
    ld h, d
    jr nz, jr_024_5c5c

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, a
    ld a, $3f
    jr c, @+$01

    daa
    ld h, b
    ld h, c
    ld [hl], d
    jr nc, jr_024_5c7a

    ld [hl-], a
    ld l, l
    ld l, [hl]
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    ld d, e
    ld d, h
    ld e, a
    dec c
    ld c, $1d
    ld e, $7d
    ld a, [hl]
    add d
    add e

jr_024_5c5c:
    inc [hl]
    inc de
    ld h, $42
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add l
    add [hl]
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    add a
    rst RST_38
    rst RST_38
    adc b
    ld [de], a
    inc de

jr_024_5c7a:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc c
    adc d
    adc d
    adc e
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $1514
    dec d
    inc d
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0b08], sp
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$080b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0e
    ld c, $08
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0c08], sp
    nop
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0808], sp
    ld [$0800], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_5d94

    jr z, jr_024_5d96

    jr z, jr_024_5d98

    jr z, jr_024_5d9a

    jr z, jr_024_5d9c

    jr z, jr_024_5d9e

    rst RST_38
    daa
    jr z, jr_024_5da2

    jr z, jr_024_5da4

    jr z, jr_024_5da6

    jr z, jr_024_5da8

    jr z, jr_024_5daa

    jr z, jr_024_5dac

    rst RST_38
    daa
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld l, d
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_5d94:
    ld a, c
    rst RST_38

jr_024_5d96:
    rst RST_38
    rst RST_38

jr_024_5d98:
    ld a, d
    sub b

jr_024_5d9a:
    add hl, hl
    ld a, [hl+]

jr_024_5d9c:
    dec hl
    inc l

jr_024_5d9e:
    dec l
    jr c, @+$01

    daa

jr_024_5da2:
    ld a, c
    rst RST_38

jr_024_5da4:
    rst RST_38
    rst RST_38

jr_024_5da6:
    ld a, d
    sub b

jr_024_5da8:
    add hl, sp
    ld a, [hl-]

jr_024_5daa:
    dec sp
    inc a

jr_024_5dac:
    dec a
    jr c, @+$01

    ld c, h
    ld h, e
    rst RST_38
    rst RST_38
    ld [hl], b
    ld [hl], c
    inc sp
    ld l, e
    ld l, h
    ld l, l
    ld l, $2f
    jr c, @+$01

    ld e, h
    ld e, l
    ld h, h
    ld h, d
    jr nz, jr_024_5de4

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, l
    ld a, $3f
    jr c, @+$01

    daa
    ld h, l
    ld [hl], h
    ld [hl], d
    jr nc, jr_024_5e02

    ld [hl-], a
    ld l, [hl]
    ld l, a
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    daa
    ld [hl], l
    ld e, a
    dec c
    ld c, $1d
    ld e, $7e
    ld a, a
    add d
    add e

jr_024_5de4:
    inc [hl]
    inc de
    ld h, $52
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add [hl]
    adc b
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    adc b
    adc c
    adc d
    adc e
    ld [de], a
    inc de

jr_024_5e02:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc h
    adc l
    adc [hl]
    adc a
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $0504
    dec b
    inc b
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    rlca
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0b08], sp
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0b
    dec bc
    ld [$0b0b], sp
    ld [$0b0b], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$080e], sp
    dec bc
    dec bc
    ld c, $0b
    ld [$0808], sp
    inc c
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    add hl, bc
    ld [$4909], sp
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_5f1c

    jr z, jr_024_5f1e

    jr z, jr_024_5f20

    jr z, jr_024_5f22

    jr z, jr_024_5f24

    jr z, jr_024_5f26

    rst RST_38
    daa
    jr z, jr_024_5f2a

    jr z, jr_024_5f2c

    jr z, jr_024_5f2e

    jr z, jr_024_5f30

    jr z, jr_024_5f32

    jr z, jr_024_5f34

    rst RST_38
    daa
    ld h, [hl]
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_5f1c:
    halt
    ld c, b

jr_024_5f1e:
    ld c, c
    ld e, d

jr_024_5f20:
    ld [hl], a
    sub b

jr_024_5f22:
    add hl, hl
    ld a, [hl+]

jr_024_5f24:
    dec hl
    inc l

jr_024_5f26:
    dec l
    jr c, @+$01

    daa

jr_024_5f2a:
    halt
    ld e, b

jr_024_5f2c:
    ld e, c
    ld b, a

jr_024_5f2e:
    ld [hl], a
    sub b

jr_024_5f30:
    add hl, sp
    ld a, [hl-]

jr_024_5f32:
    dec sp
    inc a

jr_024_5f34:
    dec a
    jr c, @+$01

    ld c, h
    ld c, l
    ld b, [hl]
    ld c, d
    ld d, a
    inc hl
    inc sp
    ld l, e
    ld l, h
    ld l, l
    ld l, $2f
    jr c, @+$01

    ld e, h
    ld e, l
    ld c, a
    ld b, l
    jr nz, jr_024_5f6c

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, l
    ld a, $3f
    jr c, @+$01

    daa
    ld c, e
    ld c, [hl]
    ld d, l
    jr nc, jr_024_5f8a

    ld [hl-], a
    ld l, [hl]
    ld l, a
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    daa
    ld e, e
    ld e, a
    dec c
    ld c, $1d
    ld e, $7e
    ld a, a
    add d
    add e

jr_024_5f6c:
    inc [hl]
    inc de
    ld h, $52
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add [hl]
    adc e
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    adc b
    adc c
    adc d
    adc e
    ld [de], a
    inc de

jr_024_5f8a:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc h
    adc l
    adc [hl]
    adc a
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $1514
    dec d
    inc d
    nop
    ld bc, $0100
    nop
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
    rlca
    ld a, [bc]
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
    nop
    ld a, [bc]
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
    nop
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec bc
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0b
    dec bc
    ld [$0b0b], sp
    ld [$0b0b], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$080e], sp
    dec bc
    dec bc
    ld c, $0b
    ld [$0808], sp
    inc c
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    add hl, bc
    ld [$4909], sp
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_60a4

    jr z, jr_024_60a6

    jr z, jr_024_60a8

    jr z, jr_024_60aa

    jr z, jr_024_60ac

    jr z, jr_024_60ae

    rst RST_38
    daa
    jr z, jr_024_60b2

    jr z, jr_024_60b4

    jr z, jr_024_60b6

    jr z, jr_024_60b8

    jr z, jr_024_60ba

    jr z, jr_024_60bc

    rst RST_38
    daa
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld l, d
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_60a4:
    ld a, c
    rst RST_38

jr_024_60a6:
    rst RST_38
    rst RST_38

jr_024_60a8:
    ld a, d
    sub b

jr_024_60aa:
    add hl, hl
    ld a, [hl+]

jr_024_60ac:
    dec hl
    inc l

jr_024_60ae:
    dec l
    jr c, @+$01

    daa

jr_024_60b2:
    ld a, c
    rst RST_38

jr_024_60b4:
    rst RST_38
    rst RST_38

jr_024_60b6:
    ld a, d
    sub b

jr_024_60b8:
    add hl, sp
    ld a, [hl-]

jr_024_60ba:
    dec sp
    inc a

jr_024_60bc:
    dec a
    jr c, @+$01

    daa
    ld a, c
    rst RST_38
    rst RST_38
    ld [hl], b
    ld [hl], c
    inc sp
    ld l, e
    ld l, h
    ld l, l
    ld l, $2f
    jr c, @+$01

    daa
    ld a, c
    rst RST_38
    ld h, d
    jr nz, jr_024_60f4

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, l
    ld a, $3f
    jr c, @+$01

    daa
    ld h, b
    ld h, c
    ld [hl], d
    jr nc, jr_024_6112

    ld [hl-], a
    ld l, [hl]
    ld l, a
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    ld d, e
    ld d, h
    ld e, a
    dec c
    ld c, $1d
    ld e, $7e
    ld a, a
    add d
    add e

jr_024_60f4:
    inc [hl]
    inc de
    ld h, $42
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add [hl]
    adc e
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    adc b
    adc c
    adc d
    adc e
    ld [de], a
    inc de

jr_024_6112:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc h
    adc l
    adc [hl]
    adc a
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $1514
    dec d
    inc d
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0b08], sp
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$080b], sp
    dec bc
    dec bc
    ld [$0b0b], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0e
    ld c, $08
    dec bc
    dec bc
    ld c, $0b
    ld [$0808], sp
    inc c
    nop
    ld c, $08
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    add hl, bc
    ld [$4909], sp
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_622c

    jr z, jr_024_622e

    jr z, jr_024_6230

    jr z, jr_024_6232

    jr z, jr_024_6234

    jr z, jr_024_6236

    rst RST_38
    daa
    jr z, jr_024_623a

    jr z, jr_024_623c

    jr z, jr_024_623e

    jr z, jr_024_6240

    jr z, jr_024_6242

    jr z, jr_024_6244

    rst RST_38
    daa
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld l, d
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_622c:
    ld a, c
    rst RST_38

jr_024_622e:
    rst RST_38
    rst RST_38

jr_024_6230:
    ld a, d
    adc h

jr_024_6232:
    add hl, hl
    ld a, [hl+]

jr_024_6234:
    dec hl
    inc l

jr_024_6236:
    dec l
    jr c, @+$01

    daa

jr_024_623a:
    ld a, c
    rst RST_38

jr_024_623c:
    rst RST_38
    rst RST_38

jr_024_623e:
    ld a, d
    adc h

jr_024_6240:
    add hl, sp
    ld a, [hl-]

jr_024_6242:
    dec sp
    inc a

jr_024_6244:
    dec a
    jr c, @+$01

    ld c, h
    ld h, e
    rst RST_38
    rst RST_38
    ld [hl], b
    ld [hl], c
    inc sp
    ld l, e
    ld l, h
    ld l, a
    ld l, $2f
    jr c, @+$01

    ld e, h
    ld e, l
    ld h, h
    ld h, d
    jr nz, jr_024_627c

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, a
    ld a, $3f
    jr c, @+$01

    daa
    ld h, l
    ld [hl], h
    ld [hl], d
    jr nc, jr_024_629a

    ld [hl-], a
    ld l, l
    ld l, [hl]
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    daa
    ld [hl], l
    ld e, a
    dec c
    ld c, $1d
    ld e, $7d
    ld a, [hl]
    add d
    add e

jr_024_627c:
    inc [hl]
    inc de
    ld h, $52
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add l
    add [hl]
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    add a
    rst RST_38
    rst RST_38
    adc b
    ld [de], a
    inc de

jr_024_629a:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc c
    adc d
    adc d
    adc e
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $1514
    dec d
    inc d
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0b08], sp
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0b
    dec bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$080e], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0c08], sp
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0808], sp
    ld [$0800], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    daa
    jr z, jr_024_63b4

    jr z, jr_024_63b6

    jr z, jr_024_63b8

    jr z, jr_024_63ba

    jr z, jr_024_63bc

    jr z, jr_024_63be

    rst RST_38
    daa
    jr z, jr_024_63c2

    jr z, jr_024_63c4

    jr z, jr_024_63c6

    jr z, jr_024_63c8

    jr z, jr_024_63ca

    jr z, jr_024_63cc

    rst RST_38
    daa
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld l, d
    scf
    scf
    scf
    scf
    scf
    scf
    jr z, @+$01

    daa

jr_024_63b4:
    ld a, c
    rst RST_38

jr_024_63b6:
    rst RST_38
    rst RST_38

jr_024_63b8:
    ld a, d
    sub b

jr_024_63ba:
    add hl, hl
    ld a, [hl+]

jr_024_63bc:
    dec hl
    inc l

jr_024_63be:
    dec l
    jr c, @+$01

    daa

jr_024_63c2:
    ld a, c
    rst RST_38

jr_024_63c4:
    rst RST_38
    rst RST_38

jr_024_63c6:
    ld a, d
    sub b

jr_024_63c8:
    add hl, sp
    ld a, [hl-]

jr_024_63ca:
    dec sp
    inc a

jr_024_63cc:
    dec a
    jr c, @+$01

    ld c, h
    ld h, e
    rst RST_38
    rst RST_38
    ld [hl], b
    ld [hl], c
    inc sp
    ld l, e
    ld l, h
    ld l, l
    ld l, $2f
    jr c, @+$01

    ld e, h
    ld e, l
    ld h, h
    ld h, d
    jr nz, jr_024_6404

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, l
    ld a, $3f
    jr c, @+$01

    daa
    ld h, l
    ld [hl], h
    ld [hl], d
    jr nc, jr_024_6422

    ld [hl-], a
    ld l, [hl]
    ld l, a
    add b
    add c
    ld b, b
    ld d, b
    rst RST_38
    daa
    ld [hl], l
    ld e, a
    dec c
    ld c, $1d
    ld e, $7e
    ld a, a
    add d
    add e

jr_024_6404:
    inc [hl]
    inc de
    ld h, $52
    rla
    jr @+$1b

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add [hl]
    adc e
    ld [bc], a
    inc bc
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    rrca
    adc b
    adc c
    adc d
    adc e
    ld [de], a
    inc de

jr_024_6422:
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc h
    adc l
    adc [hl]
    adc a
    inc h
    dec h
    ld bc, $1110
    ld [de], a
    inc de
    ld [de], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld bc, $0100
    nop
    ld bc, $1514
    dec d
    inc d
    nop
    ld bc, $0100
    nop
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
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0b08], sp
    ld c, $08
    ld [$0b08], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld c, $0b
    dec bc
    ld [$0b0b], sp
    ld [$0b0b], sp
    dec c
    dec c
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$080e], sp
    dec bc
    dec bc
    ld c, $0b
    ld [$0808], sp
    inc c
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    add hl, bc
    ld [$4909], sp
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    dec c
    ld c, c
    ld c, c
    ld l, c
    ld [$0e08], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst RST_38
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rst RST_38
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rst RST_38
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld bc, $00ff
    ld [de], a
    dec b
    inc d
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $09
    ld a, [bc]
    dec bc
    ld de, $00ff
    ld [de], a
    dec d
    scf
    jr c, jr_024_6588

    ld a, [hl-]
    dec sp
    inc a
    ld d, $17
    jr jr_024_6567

    rst RST_38
    nop
    ld [de], a
    rra
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    inc hl
    inc c
    dec c
    ld de, $00ff
    adc c

jr_024_6567:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    inc h
    add hl, de
    ld a, [de]
    ld de, $22ff
    ld e, $4a
    rst RST_38
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    dec h
    ld h, $1b
    jr nz, @+$01

    ld hl, $5150
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_024_6588:
    ld d, [hl]
    ld d, a
    ld e, b
    daa
    ld c, $31
    ld [$591d], sp
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    jr z, jr_024_65c7

    dec l
    inc de
    inc e
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    add hl, hl
    jr nc, jr_024_65db

    rrca
    ld l, $6b
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld b, $07
    dec hl
    cpl
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
    rst RST_38
    rst RST_38
    ld a, [hl+]

jr_024_65c7:
    dec hl
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
    ld a, [hl+]
    dec hl
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_024_65db:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
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
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld [$0008], sp
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld [$0e08], sp
    ld c, $0d
    dec c
    inc c
    dec c
    dec c
    ld [$0908], sp
    ld l, c
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    ld [$080b], sp
    add hl, bc
    add hl, bc
    ld c, $0c
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    ld bc, $0901
    add hl, bc
    ld c, $0c
    inc c
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $2e
    cpl
    ld l, $2f
    ld l, $2f
    ld l, $07
    ld [$0a09], sp
    dec bc
    ld l, $2f
    ld l, $2f
    ld l, $2e
    cpl
    ld l, $2f
    inc c
    dec c
    ld c, $0f
    ld l, $2f
    ld l, $1e
    rra
    ld l, $2f
    ld l, $2f
    ld l, $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    jr nz, jr_024_66f3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_024_6703

    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr nc, jr_024_6711

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_024_6721

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

jr_024_66f3:
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

jr_024_6703:
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

jr_024_6711:
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
    sub b
    sub b
    sub b
    sub b
    sub b

jr_024_6721:
    sub b
    sub b
    sub b
    sub b
    halt
    ld [hl], a
    halt
    ld [hl], a
    ld a, b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    ld a, c
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    rst RST_38
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    add b
    add c
    add d
    add e
    add h
    add l
    adc [hl]
    adc a
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    ld [$0c08], sp
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
    inc c
    inc c
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
    inc c
    dec c
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
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
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
    inc c
    inc c
    dec bc
    dec bc
    inc c
    inc c
    ld a, [bc]
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
    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d0c], sp
    dec c
    dec c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080d], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0e0e], sp
    ld c, $0e
    ld c, $08
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $2e
    cpl
    ld l, $2f
    ld l, $2f
    ld l, $07
    ld [$0a09], sp
    dec bc
    ld l, $2f
    ld l, $2f
    ld l, $2e
    cpl
    ld l, $2f
    inc c
    dec c
    ld c, $0f
    ld l, $2f
    ld l, $1e
    rra
    ld l, $2f
    ld l, $2f
    ld l, $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    jr nz, jr_024_687b

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_024_688b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr nc, jr_024_6899

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_024_68a9

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

jr_024_687b:
    ld b, a
    ld c, b
    ld c, c
    ld e, [hl]
    ld e, a
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
    ld e, b

jr_024_688b:
    ld e, c
    ld l, [hl]
    ld l, a
    ccf
    ccf
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b

jr_024_6899:
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
    sub b
    sub b
    sub b
    sub b
    sub b

jr_024_68a9:
    sub b
    sub b
    sub b
    sub b
    halt
    ld [hl], a
    halt
    ld [hl], a
    ld a, b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    ld a, c
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    rst RST_38
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    add b
    add c
    add d
    add e
    add h
    add l
    adc [hl]
    adc a
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    ld [$0c08], sp
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
    inc c
    inc c
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
    inc c
    dec c
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
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
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
    inc c
    inc c
    dec bc
    dec bc
    inc c
    inc c
    ld a, [bc]
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
    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0d0c], sp
    dec c
    dec c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080d], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0e0e], sp
    ld c, $0e
    ld c, $08
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
    nop
    rst RST_38
    rst RST_38
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    rst RST_38
    dec c
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_024_69d9

    ld a, [de]
    dec de
    inc e
    dec e
    jr nz, jr_024_69e7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_024_69f7

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld bc, $0f0e
    jr nc, jr_024_6a08

    ld [hl-], a
    inc sp

jr_024_69d9:
    inc [hl]
    inc [hl]
    dec [hl]
    ld [hl], $37
    rra
    ld bc, $1e02
    rst RST_38
    jr c, jr_024_6a1e

    ld a, [hl-]
    rst RST_38

jr_024_69e7:
    rst RST_38
    dec sp
    inc a
    dec a
    rst RST_38
    ld bc, $2e0c
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_024_69f7:
    ld b, [hl]
    ld b, a
    ld c, b
    rst RST_38
    cpl
    ld c, c
    ld c, d
    ld c, e
    rst RST_38
    rst RST_38
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    rst RST_38
    rst RST_38
    ld d, b

jr_024_6a08:
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld d, c
    ld d, d
    rst RST_38
    rst RST_38
    ld d, e
    ld d, h
    rst RST_38
    rst RST_38
    ld d, l
    ld d, [hl]
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld d, a
    ld e, b
    ld e, c

jr_024_6a1e:
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    rst RST_38
    rst RST_38
    rst RST_38
    ld e, a
    ld h, b
    rst RST_38
    rst RST_38
    rst RST_38
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    rst RST_38
    rst RST_38
    rst RST_38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    rst RST_38
    rst RST_38
    ld l, e
    ld l, h
    rst RST_38
    rst RST_38
    ld l, l
    ld l, [hl]
    ld l, a
    ld h, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, c
    rst RST_38
    ld a, d
    ld [hl], b
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, [hl]
    ld a, a
    add b
    add b
    ld a, a
    ld a, [hl]
    ld a, [hl]
    add c
    ld a, h
    ld a, e
    add d
    add e
    add h
    add l
    add l
    add l
    add l
    add l
    add l
    add l
    add l
    add l
    add e
    add d
    ld [$0101], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0808
    add hl, bc
    add hl, bc
    add hl, bc
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
    ld [$0828], sp
    ld [$0a00], sp
    ld a, [bc]
    dec bc
    nop
    nop
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld c, b
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld [$0b0b], sp
    dec bc
    nop
    nop
    ld a, [bc]
    ld [$0a08], sp
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    ld [$0008], sp
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0000], sp
    nop
    ld a, [bc]
    ld a, [bc]
    inc c
    ld a, [bc]
    ld [$0008], sp
    nop
    ld [$0008], sp
    nop
    ld [$0b0b], sp
    inc l
    inc c
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    nop
    dec bc
    inc l
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    ld [$0808], sp
    ld [$0b28], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$000b], sp
    ld bc, $ffff
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    inc b
    db $10
    ld de, $ff12
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld [bc], a
    inc de
    inc d
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    ld c, $0f
    inc c
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    rst RST_38
    rst RST_38
    dec e
    ld e, $1f
    dec d
    jr nz, @+$01

    rst RST_38
    rst RST_38
    inc h
    dec h
    ld h, $27
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    jr z, jr_024_6ba7

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld hl, $2322
    jr c, jr_024_6bb4

    jr nc, jr_024_6bae

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
    ld a, [hl+]
    add hl, hl
    add hl, sp
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
    ld a, [hl-]
    add hl, sp
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_024_6ba7:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld b, a
    ld b, [hl]
    ld b, l

jr_024_6bae:
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_024_6bb4:
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld d, a
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
    ld [hl], c
    ld l, d
    ld l, e
    ld h, h
    ld h, e
    ld h, d
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, c
    ld a, d
    ld a, e
    rst RST_38
    ld [hl], b
    ld [hl], d
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, a
    add b
    add c
    add c
    add b
    ld l, a
    ld l, a
    add c
    ld l, l
    ld l, h
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, l
    ld a, h
    ld [$0009], sp
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
    ld [$0908], sp
    add hl, bc
    nop
    nop
    nop
    nop
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d0d], sp
    dec c
    dec c
    nop
    nop
    ld [$0808], sp
    jr z, jr_024_6c35

    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    nop

jr_024_6c35:
    nop
    nop
    nop
    nop
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec bc
    dec bc
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec bc
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec bc
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [hl+]
    ld a, [hl+]
    inc l
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0800], sp
    inc l
    ld [$0808], sp
    ld [$0808], sp
    ld [$2808], sp
    ld [$0808], sp
    ld [$0828], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0828], sp
    ld [$0100], sp
    ld [bc], a
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
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    ld l, c
    ld l, d
    ld l, e
    ld [$0d0c], sp
    nop
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_024_6cfa

    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    ld e, $1f
    jr nz, jr_024_6cf0

jr_024_6cf0:
    nop
    ld hl, $2322
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h

jr_024_6cfa:
    dec h
    ld h, $27
    nop
    jr z, jr_024_6d29

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_024_6d37

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $36
    dec hl
    scf
    jr c, jr_024_6d4c

    ld a, [hl-]
    dec sp
    inc a
    dec hl
    ld [hl], $3d
    ld [hl], $3e
    ld a, $3e
    ccf
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, c
    ld b, d
    ld a, $3e
    ld a, $43

jr_024_6d29:
    ld b, e
    ld b, e
    ld b, h
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_024_6d37:
    ld b, e
    ld b, e
    ld c, b
    ld c, c
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld c, d
    ld c, e
    ld b, e
    ld b, e
    ld b, e
    ld a, $3e
    ld a, $47
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_024_6d4c:
    ld d, b
    ld d, c
    ld b, a
    ld a, $3e
    ld a, $52
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld d, a
    ld d, a
    ld d, [hl]
    ld d, l
    ld e, c
    ld e, d
    ld e, c
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld l, b
    ld e, a
    ld h, b
    ld h, c
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld h, d
    ld l, b
    ld h, e
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld h, h
    ld l, b
    ld h, l
    ld h, [hl]
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    ld l, b
    ld [$0909], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
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
    ld [$0908], sp
    add hl, bc
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
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $2a
    add hl, bc
    add hl, bc
    add hl, bc
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
    inc c
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
    ld a, [bc]
    inc c
    inc c
    inc c
    ld l, h
    ld l, h
    ld l, h
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld l, h
    ld l, h
    ld l, h
    inc c
    inc c
    inc c
    ld a, [hl+]
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
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$0d0c], sp
    nop
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_024_6e82

    nop
    nop
    ld a, [de]
    dec de
    ld [hl], $37
    jr c, jr_024_6eaa

    ld a, [hl-]
    dec sp
    inc a
    inc e
    dec e
    ld e, $00
    nop
    rra
    jr nz, jr_024_6eb9

    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e

jr_024_6e82:
    ld b, h
    ld b, l
    ld hl, $2200
    inc hl
    inc h
    dec h
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld h, $27
    jr z, jr_024_6ebd

    ld a, [hl+]
    dec hl
    dec hl
    dec h
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    dec h
    dec hl
    inc l
    dec hl
    dec l
    dec l
    dec l
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_024_6eaa:
    ld d, a
    ld e, b
    ld l, $2d
    dec l
    dec l
    cpl
    cpl
    cpl
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_024_6eb9:
    ld e, a
    ld h, b
    cpl
    cpl

jr_024_6ebd:
    cpl
    cpl
    cpl
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    cpl
    cpl
    cpl
    dec l
    dec l
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
    dec l
    dec l
    jr nc, jr_024_6f50

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
    ld [hl-], a
    ld sp, $7f33
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
    dec [hl]
    inc [hl]
    dec [hl]
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
    dec [hl]
    ld [$0909], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    inc c
    inc c

jr_024_6f50:
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    add hl, bc
    add hl, bc
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
    ld a, [hl+]
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    inc c
    dec c
    dec c
    ld a, [bc]
    inc c
    inc c
    inc c
    ld l, h
    ld l, h
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    ld l, h
    ld l, h
    ld l, h
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0c
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0c
    inc c
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
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
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    db $10
    ld [bc], a
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    ld [bc], a
    db $10
    ld h, c
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld h, c
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_024_7013

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld bc, $0202
    db $10
    db $10
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $10
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, @+$23

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

jr_024_7013:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $20
    daa
    jr z, jr_024_7049

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    daa
    inc h
    jr nc, jr_024_705b

    jr nz, @+$29

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_024_7075

    daa
    inc h
    jr nc, @+$3b

    jr nz, @+$29

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    daa
    inc h
    jr nc, jr_024_707f

    jr nz, jr_024_706f

    ld b, d

jr_024_7049:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    cpl
    daa
    inc h
    jr nc, @+$3b

    jr nz, jr_024_707d

    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_024_705b:
    ld c, [hl]
    ld c, a
    ld d, b
    daa
    inc h
    jr nc, jr_024_709b

    jr nz, jr_024_708b

    ld d, c
    ld d, d
    ld d, e
    ld d, e
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    daa
    inc h
    ld d, a

jr_024_706f:
    ld e, b
    ld de, $5a12
    ld e, e
    ld e, h

jr_024_7075:
    ld e, l
    ld e, [hl]
    ld e, h
    ld e, l
    ld e, [hl]
    ld l, l
    ld l, [hl]
    ld h, d

jr_024_707d:
    ld h, e
    ld h, h

jr_024_707f:
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, c
    ld l, d
    ld l, e

jr_024_708b:
    ld l, h
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b08], sp

jr_024_709b:
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    dec bc
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
    ld c, e
    ld c, e
    ld c, e
    ld a, [bc]
    ld a, [bc]
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld a, [bc]
    ld c, e
    ld c, e
    ld c, e
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0d0d], sp
    ld [$090d], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec l
    ld [$0c0d], sp
    ld [$090d], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, c
    dec l
    ld [$0c0d], sp
    ld [$090d], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec l
    ld [$0c0d], sp
    ld [$090d], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec l
    ld [$0c0d], sp
    ld [$090d], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec l
    ld [$0c0d], sp
    ld [$0e0d], sp
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec l
    ld [$0d0d], sp
    ld [$0e0c], sp
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0d0d], sp
    ld [$0e08], sp
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d0d], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    db $10
    ld [bc], a
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    ld [bc], a
    db $10
    ld h, c
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld h, c
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_024_719b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld bc, $0202
    db $10
    db $10
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $10
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, @+$23

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

jr_024_719b:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc h
    ld e, c
    ld e, a
    jr nz, jr_024_71cd

    jr z, jr_024_71d1

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    daa
    inc h
    ld h, b
    ld l, a
    jr nz, jr_024_71db

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_024_71fd

    daa
    inc h
    ld h, b
    ld l, a
    jr nz, jr_024_71e9

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    daa
    inc h
    ld h, b

jr_024_71cd:
    ld l, a
    jr nz, jr_024_71f7

    ld b, d

jr_024_71d1:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    cpl
    daa
    inc h
    ld h, b

jr_024_71db:
    ld l, a
    jr nz, jr_024_7205

    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    daa
    inc h
    ld h, b

jr_024_71e9:
    ld l, a
    jr nz, jr_024_7213

    ld d, c
    ld d, d
    ld d, e
    ld d, e
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    daa
    inc h
    ld h, b

jr_024_71f7:
    ld l, a
    ld de, $5a12
    ld e, e
    ld e, h

jr_024_71fd:
    ld e, l
    ld e, [hl]
    ld e, h
    ld e, l
    ld e, [hl]
    ld l, l
    ld l, [hl]
    ld h, b

jr_024_7205:
    ld l, a
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, c
    ld l, d
    ld h, b

jr_024_7213:
    ld l, a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    dec bc
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
    ld c, e
    ld c, e
    ld c, e
    ld a, [bc]
    ld a, [bc]
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld a, [bc]
    ld c, e
    ld c, e
    ld c, e
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0d0d], sp
    ld [$090d], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec l
    ld [$0d0d], sp
    ld [$090d], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, c
    dec l
    ld [$0d0d], sp
    ld [$090d], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec l
    ld [$0d0d], sp
    ld [$090d], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec l
    ld [$0d0d], sp
    ld [$090d], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec l
    ld [$0d0d], sp
    ld [$0e0d], sp
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec l
    ld [$0d0d], sp
    ld [$0e0c], sp
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0d0d], sp
    ld [$0e08], sp
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d0d], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    db $10
    ld [bc], a
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    ld [bc], a
    db $10
    ld bc, $0403
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld bc, $1413
    dec d
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    ld d, $17
    jr jr_024_7329

    ld bc, $0202
    db $10
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_024_732b

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [de]
    dec de
    inc e
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    dec e

jr_024_7329:
    ld e, $1f

jr_024_732b:
    jr nz, jr_024_7347

    ld hl, $ffff
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rst RST_38
    ld hl, $221e
    inc hl
    ld a, [de]
    ld hl, $ffff
    rst RST_38
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    rst RST_38
    ld hl, $221e

jr_024_7347:
    inc h
    ld a, [de]
    ld hl, $49ff
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld e, $22
    inc h
    ld a, [de]
    ld hl, $5251
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld [hl+], a
    inc h
    ld a, [de]
    ld hl, $5c5b
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld [hl+], a
    inc h
    ld a, [de]
    ld hl, $6665
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    dec h
    ld h, $11
    ld [de], a
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
    daa
    jr z, jr_024_73b8

    ld a, [hl+]
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
    dec hl
    inc l
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]

jr_024_73b8:
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
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0707], sp
    ld [$0c0c], sp
    inc c
    inc c
    rlca
    jr z, jr_024_7404

    ld [$0809], sp
    ld [$0707], sp
    rlca
    inc c

jr_024_7404:
    inc c
    inc c
    inc c
    rlca
    jr z, jr_024_7412

    ld [$0809], sp
    ld [$0e07], sp
    ld c, $0d

jr_024_7412:
    dec c
    inc c
    dec c
    dec c
    ld [$0808], sp
    add hl, bc
    ld [$0d08], sp
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    ld [$0908], sp
    ld [$0e08], sp
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    ld [$0908], sp
    ld [$0e08], sp
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    add hl, bc
    ld c, $0c
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0c0e], sp
    inc c
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0008], sp
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_024_747d

jr_024_747d:
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_024_74a7

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_024_74b9

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_024_7498

jr_024_7498:
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_024_74da

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_024_74a7:
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

jr_024_74b9:
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
    ld h, e
    ld h, h
    add b
    add c
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

jr_024_74da:
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
    ld a, d
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    add b
    add c
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
    dec bc
    dec bc
    dec bc
    ld [$0b0b], sp
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b0d], sp
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
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
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
    ld [$0d08], sp
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
    dec c
    dec c
    ld d, c
    ld d, h
    ld d, l
    ld c, [hl]
    ld d, b
    ld d, c
    ld [hl], b
    ld [hl], c
    ld c, a
    ld d, b
    ld d, c
    ld l, h
    ld l, l
    ld c, a
    ld d, c
    ld d, [hl]
    ld d, a
    ld c, l
    ld d, b
    ld d, c
    ld [hl], d
    ld [hl], e
    ld c, a
    ld d, b
    ld d, c
    ld e, [hl]
    ld h, e
    ld c, a
    ld d, c
    ld e, b
    ld e, c
    ld c, l
    ld d, b
    ld d, c
    ld l, h
    ld e, l
    ld c, a
    ld d, b
    ld d, c
    ld h, b
    ld l, c
    ld c, a
    ld d, c
    ld e, d
    ld e, e
    ld c, [hl]
    ld d, b
    ld d, c
    ld h, h
    ld h, l
    ld c, a
    ld d, b
    ld d, c
    ld h, h
    ld h, l
    ld c, a
    ld d, c
    ld e, h
    ld e, l
    ld c, l
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld c, a
    ld d, b
    ld d, c
    ld l, b
    ld l, c
    ld c, a
    ld d, c
    ld e, [hl]
    ld e, a
    ld c, l
    ld d, b
    ld d, c
    ld h, d
    ld h, e
    ld c, a
    ld d, b
    ld d, c
    ld l, d
    ld l, e
    ld c, a
    ld d, c
    ld h, [hl]
    ld l, c
    ld c, [hl]
    ld d, b
    ld d, c
    ld h, [hl]
    ld h, a
    ld c, a
    ld d, b
    ld d, c
    ld e, h
    ld e, c
    ld c, a
    ld d, c
    ld l, d
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld d, c
    ld e, d
    ld e, e
    ld c, a
    ld d, c
    ld h, b
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    ld d, c
    ld e, h
    ld d, l
    ld c, a
    ld d, c
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    jr nz, jr_024_7692

    ld [hl+], a
    inc hl
    ld c, a
    ld d, d
    jr jr_024_7690

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nc, jr_024_76b0

    ld [hl-], a
    inc sp
    ld d, e
    ld b, a
    inc h
    dec h
    ld h, $27
    jr z, jr_024_76b2

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld c, d

jr_024_7690:
    ld c, b
    inc [hl]

jr_024_7692:
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld c, e
    ld c, c
    ld b, b
    ld b, c
    ld b, d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld c, h
    add hl, bc
    ld [$0908], sp

jr_024_76b0:
    add hl, bc
    add hl, bc

jr_024_76b2:
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0b08], sp
    dec bc
    dec bc
    ld a, [bc]
    ld c, $0b
    dec bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0b0a], sp
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    dec c
    add hl, bc
    ld [$0e0a], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    ld [$0c08], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    ld [$0d08], sp
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    ld [$0808], sp
    dec c
    dec c
    ld [$0808], sp
    ld [$0d08], sp
    dec c
    ld c, $08
    ld [$0905], sp
    ld a, [bc]
    inc bc
    dec b
    dec b
    ld hl, $0422
    dec b
    dec b
    ld e, $1f
    inc b
    dec b
    dec bc
    inc c
    ld [bc], a
    dec b
    dec b
    inc hl
    inc h
    inc b
    dec b
    dec b
    jr nz, jr_024_77a1

    inc b
    dec b
    dec c
    ld c, $02
    dec b
    dec b
    ld e, $12
    inc b
    dec b
    dec b
    dec d
    dec de
    inc b
    dec b
    rrca
    db $10
    inc bc
    dec h
    ld h, $27

jr_024_77a1:
    jr z, jr_024_77cc

    ld a, [hl+]
    dec b
    rla
    jr jr_024_77ac

    dec b
    ld de, $0212

jr_024_77ac:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_024_77b8

    ld a, [de]
    dec de
    inc b
    dec b
    inc de

jr_024_77b8:
    inc d
    ld [bc], a
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $05
    inc e
    dec e
    inc b
    dec b
    add hl, de
    dec de
    inc bc
    scf
    jr c, jr_024_7804

    ld a, [hl-]

jr_024_77cc:
    dec sp
    inc a
    dec b
    ld de, $040e
    dec b
    inc e
    nop
    dec a
    ld bc, $3f3e
    ld b, b
    ld b, c
    ld b, d
    dec b
    rrca
    db $10
    inc b
    dec b
    dec d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    dec b
    ld de, $040a
    dec b
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
    ld d, [hl]
    inc b
    rlca
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l

jr_024_7804:
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld [$6385], sp
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
    adc d
    add [hl]
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
    adc e
    add a
    adc b
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
    adc c
    adc h
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0908], sp
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0908], sp
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0908], sp
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0908], sp
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0b08], sp
    dec bc
    inc c
    inc c
    inc c
    inc c
    dec bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0a0a], sp
    ld c, $0d
    dec c
    inc c
    dec c
    dec c
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0e0d], sp
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld [$0e0a], sp
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld [$0a08], sp
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld [$0a08], sp
    ld c, $0c
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld [$0808], sp
    ld c, $0c
    inc c
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$6608], sp
    ld h, b
    ld c, a
    ld h, l
    ld h, [hl]
    ld l, [hl]
    ld h, l
    ld h, [hl]
    ld l, [hl]
    ld h, l
    ld h, [hl]
    ld c, e
    ld c, h
    ld h, l
    ld l, b
    ld [hl], b
    ld e, a
    ld h, a
    ld l, b
    ld l, [hl]
    ld h, a
    ld l, b
    ld l, [hl]
    ld h, a
    ld l, b
    ld e, e
    ld e, h
    ld h, a
    ld l, d
    ld c, c
    ld c, d
    ld l, c
    ld l, d
    ld l, [hl]
    ld l, c
    ld l, d
    ld l, [hl]
    ld l, c
    ld l, d
    ld c, l
    ld c, [hl]
    ld l, c
    ld l, h
    ld e, c
    ld e, d
    ld l, e
    ld l, h
    ld l, [hl]
    ld l, e
    ld l, h
    ld l, [hl]
    ld l, e
    ld l, h
    ld e, l
    ld e, [hl]
    ld l, e
    ld [hl], a
    ld b, a
    ld c, b
    ld [hl], l
    halt
    ld l, [hl]
    halt
    halt
    ld l, [hl]
    halt
    ld [hl], a
    ld h, b
    ld h, c
    ld [hl], l
    ld l, a
    ld d, a
    ld e, b
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld l, l
    ld l, a
    ld h, e
    ld h, c
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld d, l
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld c, c
    ld h, d
    ld l, l
    ld l, a
    ld [hl], e
    ld [hl], c
    ld l, l
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $46
    ld [hl], d
    ld l, l
    ld l, a
    ld h, h
    ld [hl], h
    ld l, l
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $56
    ld c, b
    ld l, l
    ld l, a
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    jr nz, jr_024_79a3

    ld [hl+], a
    ld l, l
    ld a, b
    rla
    jr jr_024_79a1

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nc, jr_024_79c1

    ld [hl-], a
    ld a, c
    cpl
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_024_79c3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $50
    ccf

jr_024_79a1:
    inc sp
    inc [hl]

jr_024_79a3:
    dec [hl]
    ld [hl], $37
    jr c, jr_024_79e1

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $41
    ld b, b
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld d, d
    ld d, e
    ld d, h
    ld d, c
    dec c
    ld [$0d08], sp
    dec c

jr_024_79c1:
    add hl, bc
    dec c

jr_024_79c3:
    dec c
    add hl, bc
    dec c
    dec c
    ld [$0d08], sp
    dec bc
    ld [$0b08], sp
    dec bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    ld [$0b08], sp
    dec bc
    ld [$0b08], sp
    dec bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc

jr_024_79e1:
    dec bc
    dec bc
    ld [$0b08], sp
    dec c
    ld [$0d08], sp
    dec c
    add hl, bc
    dec c
    dec c
    add hl, bc
    dec c
    dec c
    ld [$0d08], sp
    inc c
    ld [$0c08], sp
    inc c
    add hl, bc
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    ld [$0c08], sp
    inc c
    ld [$0c08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    ld [$0c08], sp
    inc c
    ld [$0c08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    ld [$0c08], sp
    inc c
    ld [$0c08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c08], sp
    inc c
    ld [$0c08], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c08], sp
    inc c
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld [$080c], sp
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld [$0d08], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $08
    ld [$0d0d], sp
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    ld [$0808], sp
    ld c, $0d
    dec c
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    ld [$0008], sp
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0109], sp
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    add hl, de
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    rra
    jr nz, jr_024_7ad0

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_024_7ab7

jr_024_7ab7:
    add hl, hl
    ld a, [hl+]
    nop
    rra
    dec hl
    inc l
    dec l
    ld l, $2f
    dec l
    jr nc, jr_024_7af4

    jr z, jr_024_7ac5

jr_024_7ac5:
    ld [hl-], a
    inc sp
    nop
    rra
    dec hl
    inc [hl]
    dec l
    dec [hl]
    ld [hl], $2d
    scf

jr_024_7ad0:
    jr c, jr_024_7afa

    nop
    add hl, sp
    inc sp
    nop
    rra
    dec hl
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    jr z, jr_024_7ae1

jr_024_7ae1:
    add hl, sp
    inc sp
    nop
    rra
    dec hl
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld sp, $0028
    add hl, sp
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_024_7af4:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_024_7afa:
    ld d, c
    ld c, c
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
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld l, c
    ld l, c
    ld h, a
    ld l, l
    ld l, [hl]
    ld h, l
    ld h, h
    ld l, d
    ld l, e
    ld l, h
    ld h, h
    ld h, l
    ld h, a
    ld l, b
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld h, [hl]
    ld l, b
    ld h, l
    ld h, h
    ld l, a
    ld h, h
    ld h, l
    ld l, c
    ld l, c
    ld l, c
    ld h, [hl]
    ld l, l
    ld l, [hl]
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld h, l
    ld h, h
    ld h, l
    ld l, l
    ld l, [hl]
    ld l, b
    ld h, [hl]
    ld l, c
    ld l, c
    ld l, b
    ld h, [hl]
    ld l, b
    ld l, l
    ld l, [hl]
    ld l, c
    ld h, l
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    inc c
    ld [$0a08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld [$0c08], sp
    inc c
    ld [$0a08], sp
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld [$0c08], sp
    inc c
    ld [$0a08], sp
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld [$0c08], sp
    inc c
    ld [$0a08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld [$0c08], sp
    inc c
    ld [$0a08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld [$0c08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0109], sp
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    add hl, de
    jr jr_024_7c47

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    rra
    jr nz, @+$01

    ld hl, $2322
    inc h
    rst RST_38
    dec h
    ld h, $00
    daa
    jr z, jr_024_7c42

jr_024_7c42:
    rra
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l

jr_024_7c47:
    dec l
    ld l, $2f
    jr nc, jr_024_7c72

    nop
    ld sp, $0032
    rra
    add hl, hl
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_024_7c89

    ld h, $00
    ld a, [hl-]
    ld [hl-], a
    nop
    rra
    add hl, hl
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    jr nc, jr_024_7c8e

    nop
    ld a, [hl-]
    ld [hl-], a
    nop
    rra
    add hl, hl
    rst RST_38
    ld b, d
    ld b, e
    ld b, h

jr_024_7c72:
    ld b, l
    rst RST_38
    jr nc, jr_024_7c9c

    nop
    ld a, [hl-]
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
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_024_7c89:
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_024_7c8e:
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
    ld l, h
    ld l, l
    ld l, b
    ld l, b

jr_024_7c9c:
    ld h, l
    ld h, [hl]
    ld h, h
    ld h, e
    ld l, c
    ld l, d
    ld l, e
    ld h, e
    ld h, h
    ld h, a
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    ld l, h
    ld l, l
    ld h, h
    ld h, e
    ld l, [hl]
    ld h, e
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    ld l, h
    ld l, l
    ld l, b
    ld l, b
    ld h, l
    ld l, b
    ld h, h
    ld h, e
    ld h, h
    ld l, b
    ld l, b
    ld h, [hl]
    ld l, b
    ld l, b
    ld l, b
    ld h, l
    ld l, b
    ld l, b
    ld h, l
    ld l, h
    ld l, l
    ld h, h
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
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
    inc c
    ld [$0a08], sp
    inc bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc bc
    ld a, [bc]
    ld [$0c08], sp
    inc c
    ld [$0a08], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld [$0c08], sp
    inc c
    ld [$0a08], sp
    dec bc
    ld c, $0e
    ld c, $0e
    dec bc
    ld a, [bc]
    ld [$0c08], sp
    inc c
    ld [$0a08], sp
    dec bc
    ld c, $0e
    ld c, $0e
    dec bc
    ld a, [bc]
    ld [$0c08], sp
    inc c
    ld [$0a08], sp
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    inc bc
    ld a, [bc]
    ld [$0c08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
