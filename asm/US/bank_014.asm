; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    nop
    ld b, c
    rla
    ld b, c
    ld c, c
    ld b, c
    ld h, d
    ld b, c
    sbc l
    ld b, c
    or h
    ld b, c
    pop af
    ld b, c
    inc d
    ld b, d
    cp $42
    ld b, b
    ld b, e
    ld h, l
    ld b, e
    pop hl
    ld b, e
    sbc a
    ld b, h
    rrca
    ld b, l
    ld h, c
    ld b, l
    and $45
    ld d, e
    ld b, [hl]
    cp h
    ld b, [hl]
    inc a
    ld b, a
    sub h
    ld b, a
    ld b, a
    ld c, b
    ld h, l
    ld c, b
    add d
    ld c, b
    and b
    ld c, b
    ld b, $49
    ld h, d
    ld c, c
    or c
    ld c, c
    ld b, $4a
    ld [hl], $4a
    ld c, l
    ld c, d
    adc e
    ld c, d
    dec [hl]
    ld c, e
    ld l, [hl]
    ld c, e
    and l
    ld c, e
    ld [$c84b], a
    ld c, h
    ld a, [bc]
    ld c, l
    add hl, sp
    ld c, l
    ld l, e
    ld c, l
    adc l
    ld c, l
    cp l
    ld c, l
    dec h
    ld c, [hl]
    adc d
    ld c, [hl]
    or d
    ld c, [hl]
    ret nz

    ld c, [hl]
    rst RST_20
    ld c, [hl]
    jr jr_014_40ad

    ld [hl], d
    ld c, a
    cp e
    ld c, a
    push hl
    ld c, a
    ld de, $3b50
    ld d, b
    ld [hl], h
    ld d, b
    cp h
    ld d, b
    db $db
    ld d, b
    db $fd
    ld d, b
    ld c, c
    ld d, c
    ld h, l
    ld d, c
    ld a, c
    ld d, c
    xor d
    ld d, c
    ld hl, sp+$51
    dec sp
    ld d, d
    ei
    ld d, e
    inc sp
    ld d, h
    ld a, b
    ld d, h
    or h
    ld d, h
    call c, Call_014_4d54
    ld d, l
    ld h, b
    ld d, l
    pop bc
    ld d, l
    ldh a, [c]
    ld d, l
    ccf
    ld d, [hl]
    ld a, [hl]
    ld d, [hl]
    or c
    ld d, [hl]
    ld sp, hl
    ld d, [hl]
    ld b, h
    ld d, a
    ld d, l
    ld d, a
    ld a, b
    ld d, a
    and c
    ld d, a
    pop bc
    ld d, a
    reti


    ld d, a
    ld [$4a58], sp
    ld e, b
    ld l, h
    ld e, b
    or [hl]
    ld e, b
    daa
    ld e, c
    ld a, [hl]

jr_014_40ad:
    ld e, c
    add $59
    jr nc, jr_014_410c

    ld e, c
    ld e, d
    ld [hl], b
    ld e, d
    db $e3
    ld e, d
    inc d
    ld e, e
    ld h, h
    ld e, e
    cp h
    ld e, e
    ld sp, hl
    ld e, h
    ld b, h
    ld e, l
    sbc b
    ld e, l
    cp e
    ld e, l
    dec a
    ld e, [hl]
    xor b
    ld e, [hl]
    jp hl


    ld e, [hl]
    ld [hl-], a
    ld e, a
    ld c, a
    ld e, a
    ld l, h
    ld e, a
    ld a, [hl+]
    ld h, c
    ld h, a
    ld h, c
    sub b
    ld h, c
    rlca
    ld h, d
    ld d, d
    ld h, d
    adc [hl]
    ld h, d
    bit 4, d
    db $10
    ld h, e
    ld b, [hl]
    ld h, e
    ld a, e
    ld h, e
    and [hl]
    ld h, e
    pop de
    ld h, e
    db $ed
    ld h, e
    ld h, h
    ld h, h
    sbc a
    ld h, h
    add hl, bc
    ld h, l
    inc sp
    ld h, l
    sub l
    ld h, l
    or b
    ld h, l
    ret z

    ld h, l
    jr jr_014_4162

    add e
    ld h, [hl]
    and l
    ld h, [hl]
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    dec c
    ld c, $13
    rlca

jr_014_410c:
    ld [$060d], sp
    dec e
    inc de
    rlca
    inc b
    ld de, $2004
    rra
    ld [bc], a
    ld c, $0d
    inc bc
    inc d
    ld [bc], a
    inc de
    ld c, $11
    ld [de], a
    ld a, [hl+]
    ld a, [de]
    ld [de], a
    rlca
    ld c, $14
    inc de
    ld [de], a
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    ld d, $07
    ld [$1312], sp
    dec bc
    inc b
    ld [de], a
    dec b
    ld [$0b0b], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    nop
    ld [$2011], sp
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    ld c, $0b
    inc bc
    ld a, [de]
    ld d, $0e
    ld c, $03
    inc b
    dec c
    ld bc, $0d04
    ld [bc], a
    rlca
    jr nz, jr_014_4181

jr_014_4162:
    nop
    ld a, [de]
    inc bc
    ld de, $0500
    inc de
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    ld [de], a
    ld c, $0c
    inc b
    ld d, $07
    inc b
    ld de, $1a04
    ld [de], a
    rlca
    inc d
    inc de
    ld [de], a
    dec e
    inc de
    rlca

jr_014_4181:
    inc b
    ld a, [de]
    ld bc, $0304
    ld de, $0e0e
    inc c
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $161d
    ld [$0713], sp
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    dec bc
    nop
    inc c
    jr nz, jr_014_41bc

    ld d, $00
    dec c
    dec c
    nop
    ld a, [de]
    ld bc, $1814
    dec e
    nop
    ld a, [de]
    dec c
    inc b
    ld d, $12
    rrca
    nop
    rrca
    inc b
    ld de, $1f28
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    ld c, $03

jr_014_41bc:
    inc b
    dec c
    dec e
    ld [de], a
    rlca
    inc d
    inc de
    inc de
    inc b
    ld de, $1a12
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld d, $0e
    ld de, $1203
    ld a, [de]
    ld h, $02
    dec bc
    ld c, $12
    inc b
    inc bc
    ld h, $1d
    rrca
    nop
    ld [$130d], sp
    inc b
    inc bc
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    inc c
    jr nz, jr_014_4210

    ld [$1213], sp
    ld a, [de]
    nop
    dec c
    ld a, [de]
    ld c, $0b
    inc bc
    dec h
    ld a, [de]
    ld bc, $080b
    dec c
    inc bc
    dec e
    dec c
    inc b
    ld d, $12
    rrca
    nop
    rrca
    inc b
    ld de, $021a
    dec bc
    inc b

jr_014_4210:
    ld de, $200a
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld [$060d], sp
    ld a, [de]
    inc b
    jr jr_014_4229

    dec e
    inc bc
    ld c, $06

jr_014_4229:
    jr nz, @+$1c

    rlca
    ld [$1a12], sp
    inc de
    nop
    ld b, $1a
    ld [de], a
    nop
    jr jr_014_4249

    dec e
    rlca
    ld [$1a12], sp
    dec c
    nop
    inc c
    inc b
    ld a, [de]
    ld [$1a12], sp
    ld c, $13
    inc de
    ld c, $20

jr_014_4249:
    inc e
    nop
    dec bc
    inc de
    rlca
    ld c, $14
    ld b, $07
    ld a, [de]
    rlca
    inc b
    dec e
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1a12
    inc de
    ld c, $1a
    ld bc, $1a04
    nop
    dec e
    rrca
    ld [$1a13], sp
    ld bc, $0b14
    dec bc
    ld hl, $0702
    ld [$1407], sp
    nop
    rlca
    inc d
    nop
    inc c
    ld [$2517], sp
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    ld [$030d], sp
    ld a, [de]
    ld c, $05
    dec e
    ld de, $0c04
    ld [$030d], sp
    ld [de], a
    ld a, [de]
    jr jr_014_42a0

    inc d
    ld a, [de]
    ld c, $05
    dec e
    jr jr_014_42a7

    inc d
    ld de, $0e1a
    dec bc
    inc bc
    ld a, [de]

jr_014_42a0:
    inc bc
    ld c, $06
    dec h
    dec e
    inc de
    nop

jr_014_42a7:
    ld [bc], a
    ld c, $20
    inc e
    rlca
    inc b
    ld a, [de]
    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_014_42bf

    inc b

jr_014_42bf:
    inc b
    dec c
    ld a, [de]
    nop
    ld a, [de]
    rrca
    ld c, $0e
    ld [bc], a
    rlca
    dec h
    ld a, [de]
    ld bc, $1314
    dec e
    nop
    inc de
    ld a, [de]
    dec bc
    inc b
    nop
    ld [de], a
    inc de
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    inc bc
    ld [$0d03], sp
    ld a, [hl+]
    inc de
    dec c
    nop
    ld b, $1a
    ld d, $07
    inc b
    dec c
    ld a, [de]
    jr jr_014_42fa

    inc d
    ld a, [de]
    ld [bc], a
    nop
    inc c
    inc b
    dec e
    rlca
    ld c, $0c
    inc b
    ld a, [de]
    dec bc
    nop

jr_014_42fa:
    inc de
    inc b
    jr nz, @+$21

    inc de
    rlca
    ld [$1a12], sp
    inc bc
    ld c, $06
    ld a, [de]
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $1a04
    nop
    ld de, $0004
    dec bc
    ld a, [de]
    dec b
    ld [$0706], sp
    inc de
    inc b
    ld de, $1c20
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    rlca
    ld [$1a12], sp
    dec b
    nop
    ld [$1d11], sp
    ld [de], a
    rlca
    nop
    ld de, $1a04
    ld c, $05
    ld a, [de]
    ld [de], a
    ld [bc], a
    nop
    ld de, $2012
    rra
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    nop
    dec c
    ld [de], a
    ld d, $04
    ld de, $021d
    nop
    inc d
    ld [de], a
    inc b
    ld a, [de]
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc bc
    ld c, $19
    ld [$060d], sp
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    inc b
    ld d, $12
    rrca
    nop
    rrca
    inc b
    ld de, $071d
    inc b
    nop
    inc bc
    dec bc
    ld [$040d], sp
    ld a, [de]
    ld de, $0004
    inc bc
    ld [de], a
    dec h
    dec e
    ld h, $06
    nop
    dec c
    ld b, $0b
    nop
    dec c
    inc bc
    ld a, [de]
    ld bc, $0600
    inc c
    nop
    dec c
    dec e
    inc c
    inc d
    ld de, $0403
    ld de, $0304
    jr nz, jr_014_43c4

    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    nop
    ld de, $0813
    ld [bc], a
    dec bc
    inc b
    ld a, [de]
    ld b, $0e
    inc b
    ld [de], a
    dec e
    ld c, $0d
    ld a, [de]
    inc de
    ld c, $1a
    inc b
    rla
    rrca
    dec bc
    nop
    ld [$1a0d], sp
    inc de
    rlca
    nop
    inc de
    inc de
    rlca

jr_014_43c4:
    inc b
    ld a, [de]
    ld bc, $030e
    jr jr_014_43e5

    ld [$1a12], sp
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld [bc], a
    ld [$1813], sp
    ld a, [de]
    inc c
    ld c, $11
    ld b, $14
    inc b
    jr nz, jr_014_4400

    inc de
    rlca
    inc b
    ld a, [de]

jr_014_43e5:
    ld [de], a
    inc de
    ld c, $11
    jr jr_014_4405

    ld de, $0f04
    ld c, $11
    inc de
    ld [de], a
    dec e
    nop
    ld a, [de]
    dec bc
    ld c, $02
    nop
    dec bc
    ld a, [de]
    inc c
    ld c, $01
    ld [de], a
    inc de

jr_014_4400:
    inc b
    ld de, $161d
    nop

jr_014_4405:
    ld [de], a
    ld a, [de]
    ld de, $0204
    inc b
    dec c
    inc de
    dec bc
    jr jr_014_442a

    ld [de], a
    dec bc
    nop
    ld [$000d], sp
    dec c
    inc bc
    ld a, [de]
    rrca
    ld c, $0b
    ld [$0402], sp
    ld a, [de]
    nop
    ld de, $1d04
    ld [$150d], sp
    inc b
    ld [de], a
    inc de

jr_014_442a:
    ld [$0006], sp
    inc de
    ld [$060d], sp
    ld a, [de]
    nop
    dec c
    jr jr_014_4453

    ld [bc], a
    ld c, $0d
    dec c
    inc b
    ld [bc], a
    inc de
    ld [$0d0e], sp
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0204
    inc b
    dec c
    inc de
    ld a, [de]
    inc bc
    inc b

jr_014_4453:
    nop
    inc de
    rlca
    dec e
    ld c, $05
    ld a, [de]
    add hl, bc
    ld c, $04
    jr jr_014_4479

    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld c, $11
    jr jr_014_448e

    ld [$030d], sp
    ld [$0002], sp
    inc de
    inc b

jr_014_4479:
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $030e
    jr @+$13

    inc b
    ld [de], a
    ld [$0403], sp
    ld [de], a
    ld a, [de]
    nop
    inc de
    ld a, [de]

jr_014_448e:
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld [$1813], sp
    ld a, [de]
    inc c
    ld c, $11
    ld b, $14
    inc b
    jr nz, jr_014_44be

    nop
    ld a, [de]
    dec b
    nop
    inc c
    ld [$080b], sp
    nop
    ld de, $051a
    nop
    ld [bc], a
    inc b
    dec e
    dec bc
    ld c, $0e
    inc c
    ld [de], a
    ld a, [de]
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]

jr_014_44be:
    ld c, $05
    dec e
    jr jr_014_44d1

    inc d
    jr nz, jr_014_44e6

    jr nz, @+$1e

    ld [de], a
    inc de
    ld c, $06
    ld [$1a04], sp
    inc c
    nop

jr_014_44d1:
    ld de, $0813
    dec c
    dec e
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $1d04
    ld bc, $0e0b

jr_014_44e6:
    ld d, $08
    dec c
    ld b, $1a
    rlca
    ld [$1a12], sp
    ld [de], a
    inc de
    nop
    dec bc
    inc b
    dec e
    ld [bc], a
    ld [$0006], sp
    ld de, $121a
    inc c
    ld c, $0a
    inc b
    ld a, [de]
    ld [$1d0d], sp
    jr jr_014_4514

    inc d
    ld de, $051a
    nop
    ld [bc], a
    inc b
    jr nz, jr_014_452e

    ld h, $18
    ld c, $14
    ld a, [de]

jr_014_4514:
    ld [de], a
    inc de
    ld [$0b0b], sp
    ld a, [de]
    rlca
    nop
    dec c
    ld b, $08
    dec c
    ld a, [hl+]
    nop
    ld de, $140e
    dec c
    inc bc
    ld a, [de]
    rlca
    inc b
    ld de, $2804
    inc e

jr_014_452e:
    jr jr_014_4530

jr_014_4530:
    ld a, [de]
    ld bc, $1304
    inc de
    inc b
    ld de, $071a
    inc d
    ld [de], a
    inc de
    dec bc
    inc b
    dec e
    rrca
    nop
    dec bc
    dec h
    ld a, [de]
    ld c, $11
    ld a, [de]
    jr jr_014_4557

    inc d
    ld a, [hl+]
    dec bc
    dec bc
    dec e
    inc c
    ld [$1212], sp
    ld a, [de]
    inc bc
    nop
    ld a, [de]
    inc bc

jr_014_4557:
    inc b
    nop
    inc bc
    dec bc
    ld [$040d], sp
    daa
    ld h, $1f
    ld h, $12
    inc de
    ld [$0b0b], sp
    ld a, [de]
    nop
    ld [$2a0d], sp
    inc de
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b
    dec e
    inc d
    rrca
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $14
    ld b, $07
    dec h
    inc b
    rlca
    ld a, [de]
    rlca
    nop
    ld de, $0803
    dec c
    ld b, $28
    inc e
    ld d, $04
    dec bc
    dec bc
    dec h
    ld a, [de]
    jr jr_014_4599

jr_014_4599:
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    dec e
    inc de
    ld [$040c], sp
    ld a, [de]
    jr @+$06

    inc de
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $120e
    ld [de], a
    ld a, [de]
    nop
    ld [$2a0d], sp
    inc de
    ld a, [de]
    ld de, $0004
    dec bc
    dec e
    dec b
    ld c, $11
    ld b, $08
    dec d
    ld [$2a0d], sp
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    dec e
    ld [de], a
    inc de
    inc d
    dec b
    dec b
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    inc bc
    ld [$2712], sp
    ld h, $1f
    ld h, $18
    nop
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec e
    jr jr_014_4604

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld b, $04
    inc de
    inc de
    ld [$060d], sp
    ld a, [hl+]
    ld a, [de]

jr_014_4604:
    dec c
    ld c, $16
    rlca
    inc b
    ld de, $1a04
    dec b
    nop
    ld [de], a
    inc de
    dec h
    ld a, [de]
    nop
    ld [bc], a
    inc b
    daa
    inc e
    jr @+$06

    ld de, $131a
    ld [$040c], sp
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    dec e
    rlca
    nop
    dec bc
    dec b
    ld a, [de]
    inc d
    rrca
    jr nz, jr_014_464b

    nop
    dec c
    inc bc
    dec e
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    ld a, [de]
    ld [$061a], sp
    ld c, $13
    ld a, [de]
    inc c
    jr @+$1f

    inc b
    jr jr_014_464e

    ld a, [de]

jr_014_464b:
    ld c, $0d
    ld a, [de]

jr_014_464e:
    jr jr_014_4650

jr_014_4650:
    daa
    ld h, $1f
    ld h, $03
    nop
    ld a, [de]
    ld bc, $120e
    ld [de], a
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    dec e
    dec bc
    ld [$040a], sp
    ld a, [de]
    dec c
    ld c, $01
    ld c, $03
    jr jr_014_4688

    inc de
    nop
    ld a, [bc]
    ld [$2a0d], sp
    dec b
    ld de, $0c0e
    ld a, [de]
    rlca
    ld [$200c], sp
    jr nz, jr_014_469f

    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [$0c1d], sp
    inc b

jr_014_4688:
    nop
    dec c
    ld a, [de]
    dec c
    ld c, $01
    ld c, $03
    jr jr_014_46b9

    ld a, [de]
    ld [de], a
    ld c, $1d
    jr jr_014_46a6

    inc d
    ld a, [hl+]
    inc bc
    ld a, [de]
    ld bc, $1304

jr_014_469f:
    inc de
    inc b
    ld de, $021a
    ld c, $0c

jr_014_46a6:
    inc b
    dec e
    inc d
    rrca
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    ld c, $14
    ld b, $07

jr_014_46b9:
    daa
    ld h, $1f
    ld h, $03
    ld [$1a12], sp
    ld [$1a12], sp
    jr jr_014_46d4

    inc d
    ld de, $0b1a
    nop
    ld [de], a
    inc de
    dec e
    ld d, $00
    ld de, $080d
    dec c

jr_014_46d4:
    ld b, $25
    ld a, [de]
    rlca
    nop
    ld de, $0803
    dec c
    ld b, $27
    inc e
    dec c
    inc b
    rla
    inc de
    ld a, [de]
    inc de
    ld [$040c], sp
    ld a, [de]
    ld d, $04
    ld a, [de]
    inc c
    inc b
    inc b
    inc de
    dec h
    ld [$2a13], sp
    dec bc
    dec bc
    ld a, [de]
    ld bc, $1a04
    inc bc
    nop
    ld a, [de]
    dec bc
    nop
    ld [de], a
    inc de
    jr nz, jr_014_4721

    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld b, $0e
    ld c, $03
    dec h
    dec e
    ld [bc], a
    inc d
    add hl, de
    ld a, [de]
    ld [$0c2a], sp
    ld a, [de]
    ld [de], a
    ld [$0a02], sp

jr_014_4721:
    ld a, [de]
    ld c, $05
    dec e
    ld a, [bc]
    inc b
    inc b
    rrca
    ld [$2a0d], sp
    ld a, [de]
    inc c
    jr jr_014_474a

    inc b
    jr jr_014_4737

    ld a, [de]
    ld c, $0d
    dec e

jr_014_4737:
    jr jr_014_4739

jr_014_4739:
    daa
    ld h, $1f
    rlca
    nop
    dec d
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    nop
    ld [$1a03], sp
    inc de
    rlca

jr_014_474a:
    nop
    inc de
    dec h
    dec e
    ld [de], a
    inc de
    ld c, $06
    ld [$1a04], sp
    ld d, $00
    dec bc
    ld a, [bc]
    ld [de], a
    ld a, [de]
    nop
    ld d, $00
    jr jr_014_4785

    dec bc
    inc b
    nop
    dec d
    ld [$060d], sp
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc de
    ld [$0a0d], sp
    ld [$060d], sp
    ld [bc], a
    dec bc
    ld c, $14
    inc bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [de], a
    inc c
    ld c, $0a
    inc b
    ld a, [de]
    inc de
    ld c, $1d
    inc c

jr_014_4785:
    nop
    ld de, $1a0a
    rlca
    ld [$1a12], sp
    dec d
    ld [$0812], sp
    inc de
    jr nz, jr_014_47b3

    ld h, $12
    ld c, $11
    ld de, $1a18
    nop
    ld [bc], a
    inc b
    dec h
    ld a, [de]
    jr jr_014_47b0

    inc d
    ld de, $131d
    ld [$040c], sp
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc d
    rrca
    daa
    ld a, [de]

jr_014_47b0:
    ld [bc], a
    ld c, $14

jr_014_47b3:
    ld b, $07
    dec e
    inc d
    rrca
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    ld c, $0d
    inc b
    jr @+$29

    inc e
    jr jr_014_47c6

jr_014_47c6:
    ld a, [de]
    ld [de], a
    nop
    jr jr_014_47e5

    jr jr_014_47cd

jr_014_47cd:
    ld a, [de]
    nop
    ld [$2a0d], sp
    inc de
    dec e
    ld b, $0e
    inc de
    ld a, [de]
    inc bc
    nop
    ld a, [de]
    ld sp, $3231
    dec h
    jr nc, jr_014_4811

    jr nc, jr_014_4800

    ld [de], a
    inc c

jr_014_47e5:
    nop
    ld [bc], a
    ld a, [bc]
    nop
    ld de, $0e0e
    ld [de], a
    jr z, @+$1e

    inc de
    ld [de], a
    ld a, [bc]
    dec h
    ld a, [de]
    inc de
    ld c, $0e
    ld a, [de]
    ld bc, $0300
    dec h
    ld a, [de]
    nop
    ld [bc], a
    inc b

jr_014_4800:
    daa
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    dec c
    ld c, $13
    ld a, [de]
    ld de, $0004
    dec bc
    dec bc
    jr jr_014_482e

jr_014_4811:
    rrca
    inc b
    ld de, $0e12
    dec c
    nop
    dec bc
    ld a, [de]
    jr jr_014_481c

jr_014_481c:
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    jr nz, jr_014_4840

    ld bc, $1314
    ld a, [de]
    ld [$061a], sp
    ld c, $13
    inc de
    nop

jr_014_482e:
    ld a, [de]
    dec b
    ld c, $0b
    dec bc
    ld c, $16
    inc bc
    nop
    ld a, [de]
    ld bc, $120e
    ld [de], a
    ld a, [hl+]
    ld a, [de]
    ld c, $11

jr_014_4840:
    inc bc
    inc b
    ld de, $2712
    ld h, $1f
    jr jr_014_4857

    inc d
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    ld a, [de]
    inc d
    rrca
    ld a, [de]
    inc de
    rlca
    inc b

jr_014_4857:
    dec e
    rrca
    ld c, $02
    ld a, [bc]
    inc b
    inc de
    ld a, [bc]
    dec c
    ld [$0405], sp
    jr nz, @+$21

    ld d, $07
    nop
    inc de
    ld a, [de]
    ld [de], a
    rlca
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    jr @+$10

    inc d
    dec e
    inc d
    ld [de], a
    inc b
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    ld c, $0d
    jr z, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    dec bc
    ld c, $02
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    daa
    rra
    jr @+$10

    inc d
    ld a, [de]
    ld de, $0004
    ld [bc], a
    rlca
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    inc de
    ld c, $1d
    rrca
    inc b
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $06
    jr nz, @+$1e

    jr jr_014_48c8

    ld a, [bc]
    inc b
    ld [de], a
    daa
    ld a, [de]
    jr jr_014_48d5

    inc d

jr_014_48c8:
    ld a, [de]
    ld bc, $1100
    inc b
    dec bc
    jr jr_014_48ed

    rrca
    inc d
    dec bc
    dec bc
    ld a, [de]

jr_014_48d5:
    jr @+$10

    inc d
    ld de, $071a
    nop
    dec c
    inc bc
    dec e
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    ld [$1a0d], sp
    inc de
    ld [$040c], sp
    daa
    inc e

jr_014_48ed:
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc bc
    ld c, $06
    ld a, [de]
    nop
    dec bc
    inc c
    ld c, $12
    inc de
    dec e
    ld bc, $1308
    ld a, [de]
    jr jr_014_4911

    inc d
    daa
    rra
    nop
    ld [de], a
    ld a, [de]
    jr jr_014_4919

    inc d
    ld a, [de]
    ld de, $0004
    ld [bc], a

jr_014_4911:
    rlca
    ld a, [de]
    dec b
    ld c, $11
    dec e
    nop
    ld a, [de]

jr_014_4919:
    dec c
    inc b
    ld d, $12
    rrca
    nop
    rrca
    inc b
    ld de, $1a25
    inc de
    rlca
    inc b
    dec e
    ld c, $0b
    inc bc
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    ld [de], a
    nop
    jr jr_014_4946

    dec h
    inc e
    ld h, $13
    rlca
    nop
    inc de
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    ld bc, $1a04
    ld [hl-], a
    dec [hl]
    dec e
    ld [bc], a

jr_014_4946:
    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    nop
    dec e
    dec c
    inc b
    ld d, $12
    rrca
    nop
    rrca
    inc b
    ld de, $1a25
    ld bc, $0114
    daa
    ld h, $1f
    ld h, $0f
    nop
    ld d, $25
    ld h, $1a
    jr jr_014_4979

    inc d
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc c
    nop
    dec c
    inc bc
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc

jr_014_4979:
    ld c, $06
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $06
    ld a, [de]
    rlca
    ld c, $0b
    inc bc
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    dec e
    ld [$1213], sp
    ld a, [de]
    rrca
    nop
    ld d, $1a
    inc de
    ld c, $1a
    jr @+$10

    inc d
    daa
    dec e
    ld d, $07
    nop
    inc de
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc c
    nop
    ld de, $1a13
    inc bc
    ld c, $06
    daa
    rra
    ld h, $0b
    ld [$1a04], sp
    inc bc
    ld c, $16
    dec c
    dec h
    ld h, $1a
    jr jr_014_49cd

    inc d
    dec e
    ld [de], a
    nop
    jr jr_014_49df

    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc

jr_014_49cd:
    ld c, $06
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $06
    ld a, [de]
    rlca
    ld c, $0b
    inc bc
    ld [de], a
    ld a, [de]

jr_014_49df:
    ld c, $14
    inc de
    dec e
    ld [$1213], sp
    ld a, [de]
    rrca
    nop
    ld d, $1a
    inc de
    ld c, $1a
    jr jr_014_49fe

    inc d
    daa
    dec e
    ld d, $07
    nop
    inc de
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc de
    inc d
    rrca

jr_014_49fe:
    ld [$1d03], sp
    inc bc
    ld c, $06
    daa
    rra
    ld h, $16
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    jr jr_014_4a1d

    inc d
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec e
    nop
    ld a, [de]
    dec c
    inc b
    ld d, $12
    rrca

jr_014_4a1d:
    nop
    rrca
    inc b
    ld de, $1c28
    inc de
    rlca
    inc b
    jr jr_014_4a52

    ld de, $1a04
    ld [hl-], a
    dec [hl]
    ld a, [de]
    ld [bc], a
    inc b
    dec c
    inc de
    ld [de], a
    jr nz, jr_014_4a5b

    rra
    ld h, $13
    rlca
    nop
    dec c
    ld a, [bc]
    ld a, [de]
    jr jr_014_4a4d

    inc d
    dec e
    dec d
    inc b
    ld de, $1a18
    inc c
    inc d
    ld [bc], a
    rlca
    jr nz, jr_014_4a72

    rra

jr_014_4a4d:
    ld [de], a
    inc d
    inc bc
    inc bc
    inc b

jr_014_4a52:
    dec c
    dec bc
    jr jr_014_4a7b

    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]

jr_014_4a5b:
    inc bc
    ld c, $06
    dec e
    dec bc
    inc b
    nop
    rrca
    ld [de], a
    ld a, [de]
    nop
    inc de
    ld a, [de]
    jr jr_014_4a78

    inc d
    dec h
    dec e
    dec bc
    ld c, $18
    nop
    dec bc

jr_014_4a72:
    dec bc
    jr jr_014_4a8f

    inc bc
    inc b
    dec b

jr_014_4a78:
    inc b
    dec c
    inc bc

jr_014_4a7b:
    ld [$060d], sp
    dec e
    ld [$1213], sp
    ld a, [de]
    inc c
    nop
    ld [de], a
    inc de
    inc b
    ld de, $1f20
    inc de
    rlca
    inc b
    ld a, [de]

jr_014_4a8f:
    inc bc
    ld c, $06
    ld a, [de]
    dec d
    ld [$0802], sp
    ld c, $14
    ld [de], a
    dec bc
    jr jr_014_4aba

    ld de, $0f08
    ld [de], a
    dec h
    ld a, [de]
    inc de
    inc b
    nop
    ld de, $1a12
    nop
    dec c
    inc bc
    dec e
    ld bc, $1308
    inc b
    ld [de], a
    ld a, [de]
    jr jr_014_4ac3

    inc d
    ld a, [de]
    inc de
    ld c, $1d

jr_014_4aba:
    ld de, $0108
    ld bc, $0d0e
    ld [de], a
    daa
    inc e

jr_014_4ac3:
    ld h, $13
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    dec c
    inc b
    dec d
    inc b
    ld de, $001a
    dec e
    inc bc
    ld c, $06
    ld a, [de]
    ld [bc], a
    nop
    inc de
    ld [bc], a
    rlca
    inc b
    ld de, $001a
    ld de, $140e
    dec c
    inc bc
    ld d, $07
    inc b
    dec c
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    dec c
    inc b
    inc b
    inc bc
    dec e
    ld c, $0d
    inc b
    dec h
    ld h, $1a
    jr @+$10

    inc d
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    ld a, [de]
    inc de
    ld c, $18
    ld c, $14
    ld de, $0412
    dec bc
    dec b
    jr nz, jr_014_4b2c

    inc d
    dec c
    dec b
    ld c, $11
    inc de
    inc d
    dec c
    nop
    inc de
    inc b
    dec bc
    jr @+$27

    ld a, [de]
    ld [$1213], sp
    jr jr_014_4b32

    inc d
    ld de, $0b1a
    nop
    ld [de], a
    inc de
    ld a, [de]

jr_014_4b2c:
    inc de
    rlca
    ld c, $14
    ld b, $07

jr_014_4b32:
    inc de
    daa
    rra
    ld c, $14
    ld [bc], a
    rlca
    daa
    inc e
    jr jr_014_4b4b

    inc d
    ld a, [de]
    ld b, $08
    dec c
    ld b, $04
    ld de, $180b
    ld a, [de]
    rrca
    inc d
    dec bc

jr_014_4b4b:
    dec bc
    dec e
    nop
    ld a, [de]
    ld [de], a
    rrca
    dec bc
    ld [$130d], sp
    inc b
    ld de, $051a
    ld de, $0c0e
    dec e
    jr @+$10

    inc d
    ld de, $011a
    nop
    ld [bc], a
    ld a, [bc]
    ld [de], a
    ld [$0403], sp
    jr nz, jr_014_4b8c

    jr nz, jr_014_4b8d

    jr jr_014_4b7e

    inc d
    ld a, [de]
    ld bc, $1308
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $06

jr_014_4b7e:
    jr nz, @+$1e

    dec c
    ld c, $13
    ld a, [de]
    ld [de], a
    inc d
    ld de, $110f
    ld [$0812], sp

jr_014_4b8c:
    dec c

jr_014_4b8d:
    ld b, $0b
    jr jr_014_4bb6

    dec e
    ld [$1a13], sp
    ld bc, $1308
    inc b
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $06
    ld a, [de]
    ld b, $0e
    ld bc, $0b01
    inc b
    ld [de], a
    ld a, [de]
    inc d

jr_014_4bb6:
    rrca
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0004
    inc de
    daa
    inc e
    jr jr_014_4bcc

    ld a, [bc]
    inc b
    ld [de], a
    daa
    ld a, [de]
    ld [$1a13], sp

jr_014_4bcc:
    nop
    dec bc
    inc c
    ld c, $12
    inc de
    dec e
    inc de
    nop
    ld a, [bc]
    inc b
    ld [de], a
    ld a, [de]
    jr jr_014_4be9

    inc d
    ld de, $051a
    ld [$060d], sp
    inc b
    ld de, $1312
    ld c, $0e
    daa

jr_014_4be9:
    rra
    jr @+$10

    inc d
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld [$0006], sp
    ld de, $111a
    ld [$060d], sp
    ld a, [de]
    ld c, $0d
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    jr nz, jr_014_4c2c

    jr jr_014_4c20

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    nop
    dec bc
    inc c
    ld c, $12
    inc de
    dec e
    rrca

jr_014_4c20:
    ld [$1302], sp
    inc d
    ld de, $1a04
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc

jr_014_4c2c:
    ld c, $0e
    ld a, [bc]
    dec e
    ld c, $0d
    ld a, [de]
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    dec b
    nop
    ld [bc], a
    inc b
    dec e
    ld d, $07
    inc b
    dec c
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld [de], a
    ld a, [de]
    inc de
    rlca
    ld [$2712], sp
    ld [$1a13], sp
    ld d, $08
    dec bc
    dec bc
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec e
    ld [de], a
    inc de
    ld c, $06
    ld [$2a04], sp
    ld [de], a
    ld a, [de]
    ld bc, $0404
    dec c
    dec e
    ld [de], a
    dec c
    ld c, $0f
    rrca
    ld [$060d], sp
    ld a, [de]
    nop
    ld de, $140e
    dec c
    inc bc
    dec e
    rlca
    inc b
    ld de, $2704
    inc e
    dec c
    ld c, $16
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_014_4cb1

    inc de
    rlca
    ld [$060d], sp
    dec bc
    inc b
    dec b
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    inc bc
    ld c, $1a
    ld [$1a12], sp
    inc de
    ld [$1d0f], sp
    ld c, $05
    dec b

jr_014_4cb1:
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0608
    ld a, [de]
    ld bc, $120e
    ld [de], a
    dec e
    rlca
    ld [$120c], sp
    inc b
    dec bc
    dec b
    daa
    rra
    ld h, $13
    rlca
    nop
    dec c
    ld a, [bc]
    ld a, [de]
    jr jr_014_4cdf

    inc d
    ld a, [de]
    dec d
    inc b
    ld de, $1d18
    inc c
    inc d
    ld [bc], a
    rlca
    dec h
    ld h, $1a

jr_014_4cdf:
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0b
    inc bc
    ld a, [de]
    inc c
    nop
    dec c
    ld [de], a
    nop
    jr jr_014_4d00

    jr nz, jr_014_4d0a

    ld h, $0f
    dec bc
    inc b
    nop
    ld [de], a
    inc b
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    nop
    ld a, [de]
    dec c
    inc b

jr_014_4d00:
    ld d, $12
    rrca
    nop
    rrca
    inc b
    ld de, $2620
    rra

jr_014_4d0a:
    ld h, $0c
    ld [$1312], sp
    inc b
    ld de, $1a25
    jr jr_014_4d23

    inc d
    ld a, [de]
    rrca
    nop
    ld [$1d03], sp
    dec b
    ld c, $11
    ld a, [de]
    nop
    ld a, [de]
    rrca

jr_014_4d23:
    nop
    rrca
    inc b
    ld de, $1a21
    rlca
    inc b
    dec bc
    rrca
    dec e
    jr jr_014_4d3e

    inc d
    ld de, $0412
    dec bc
    dec b
    daa
    ld h, $1f
    ld h, $13
    rlca
    nop
    dec c

jr_014_4d3e:
    ld a, [bc]
    ld [de], a
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    ld [$152a], sp
    inc b
    dec e
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld de, $0d14
    ld a, [de]

Call_014_4d54:
    ld c, $14
    inc de
    ld a, [de]
    ld c, $05
    dec e
    rrca
    nop
    rrca
    inc b
    ld de, $2012
    ld a, [de]
    ld [de], a
    ld c, $11
    ld de, $2018
    ld h, $1f
    ld h, $0d
    ld c, $1a
    inc de
    rlca
    nop
    dec c
    ld a, [bc]
    ld [de], a
    dec h
    ld a, [de]
    ld [$0e1a], sp
    dec c
    dec bc
    jr jr_014_4d7e

jr_014_4d7e:
    ld [bc], a
    ld [bc], a
    inc b
    rrca
    inc de
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    rlca
    jr nz, jr_014_4daa

    jr nz, jr_014_4db2

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $04
    dec bc
    dec bc
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    inc b
    inc bc
    dec e
    inc bc
    ld c, $06
    ld a, [de]
    ld [de], a
    ld d, $08
    dec b
    inc de
    dec bc
    jr jr_014_4dc4

jr_014_4daa:
    inc bc
    ld c, $03
    ld b, $04
    ld [de], a
    jr jr_014_4dc0

jr_014_4db2:
    inc d
    ld de, $001a
    inc de
    inc de
    nop
    ld [bc], a
    ld a, [bc]
    jr nz, jr_014_4ddc

    ld d, $08
    inc de

jr_014_4dc0:
    rlca
    ld a, [de]
    nop
    ld a, [de]

jr_014_4dc4:
    inc c
    ld [$0706], sp
    inc de
    jr jr_014_4de8

    ld de, $140e
    dec c
    inc bc
    rlca
    ld c, $14
    ld [de], a
    inc b
    dec h
    ld a, [de]
    jr jr_014_4de7

    inc d
    dec e
    inc bc

jr_014_4ddc:
    inc b
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0b
    inc bc

jr_014_4de7:
    ld a, [de]

jr_014_4de8:
    inc c
    nop
    dec c
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $06
    ld a, [de]
    ld b, $11
    ld c, $16
    dec bc
    ld [de], a
    dec e
    inc c
    inc b
    dec c
    nop
    ld [bc], a
    ld [$060d], sp
    dec bc
    jr @+$1c

    nop
    dec c
    inc bc
    dec e
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    ld [de], a
    rrca
    ld de, $0d08
    ld b, $12
    ld a, [de]
    ld [$130d], sp
    ld c, $1d
    nop
    ld [bc], a
    inc de
    ld [$0d0e], sp
    daa
    rra
    ld [$1a13], sp
    ld [$0c0c], sp
    inc b
    inc bc
    ld [$1300], sp
    inc b
    dec bc
    jr jr_014_4e51

    ld c, $0f
    inc b
    dec c
    ld [de], a
    ld a, [de]
    nop
    ld b, $00
    ld [$200d], sp
    inc e
    ld c, $0e
    rrca
    ld [de], a
    jr nz, jr_014_4e67

    jr nz, @+$1c

    jr jr_014_4e59

    inc d
    dec e
    inc c
    inc d
    ld [de], a
    inc de

jr_014_4e51:
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    rrca
    ld de, $1204

jr_014_4e59:
    ld [de], a
    inc b
    inc bc
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1314
    inc de
    ld c, $0d

jr_014_4e67:
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    dec b
    dec bc
    ld c, $0e
    ld de, $181a
    ld c, $14
    ld a, [de]
    ld d, $04
    ld de, $1d04
    nop
    dec bc
    ld de, $0004
    inc bc
    jr jr_014_4ea0

    ld c, $0d
    jr nz, jr_014_4ea9

    jr jr_014_4e9a

    inc d
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld a, [de]
    ld c, $0d
    ld a, [de]
    nop
    dec e
    rrca

jr_014_4e9a:
    dec bc
    nop
    inc de
    dec b
    ld c, $11

jr_014_4ea0:
    inc c
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e

jr_014_4ea9:
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    jr nz, jr_014_4ed1

    ld h, $00
    dec bc
    dec bc
    ld a, [de]
    nop
    ld bc, $000e
    ld de, $2703
    ld h, $1f
    rrca
    nop
    ld [de], a
    ld [de], a
    inc b
    dec c
    ld b, $04
    ld de, $1a12
    db $10
    inc d
    ld [$0a02], sp
    dec bc

jr_014_4ed1:
    jr jr_014_4ee5

    ld [bc], a
    ld de, $0c00
    ld bc, $040b
    ld a, [de]
    ld [$1a0d], sp
    nop
    dec c
    inc bc
    dec e
    ld c, $14
    inc de

jr_014_4ee5:
    jr nz, jr_014_4f06

    jr jr_014_4ef7

    inc d
    ld a, [de]
    add hl, bc
    inc d
    inc c
    rrca
    ld a, [de]
    ld c, $0d
    inc de
    ld c, $1a
    inc de
    rlca

jr_014_4ef7:
    inc b
    dec e
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    nop
    ld [de], a

jr_014_4f06:
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    ld c, $0e
    ld de, $1a12
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    jr nz, jr_014_4f37

    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $121a
    rlca
    inc d
    inc de
    ld [de], a
    dec e
    ld de, $0608
    rlca
    inc de
    ld a, [de]
    ld [$1a0d], sp
    jr @+$10

    inc d
    ld de, $051d
    nop

jr_014_4f37:
    ld [bc], a
    inc b
    daa
    inc e
    ld [$1a05], sp
    ld [$1a13], sp
    ld d, $04
    ld de, $0d04
    ld a, [hl+]
    inc de
    ld a, [de]
    dec b
    ld c, $11
    dec e
    ld bc, $0300
    ld a, [de]
    dec bc
    inc d
    ld [bc], a
    ld a, [bc]
    dec h
    ld a, [de]
    jr jr_014_4f67

    inc d
    ld a, [hl+]
    inc bc
    dec e
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    dec c
    ld c, $1a
    dec bc
    inc d

jr_014_4f67:
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    nop
    inc de
    dec e
    nop
    dec bc
    dec bc
    daa
    rra
    nop
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b
    ld [de], a
    ld a, [de]
    ld [$130d], sp
    ld c, $13
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    rlca
    ld [$1212], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [de], a
    inc de
    inc b
    nop
    inc c
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    ld [bc], a
    ld de, $0404
    ld [bc], a
    rlca
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld d, $07
    inc b
    inc b
    dec bc
    ld [de], a
    jr nz, jr_014_4fda

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0d
    inc bc
    inc d
    ld [bc], a
    inc de
    ld c, $11
    dec e
    jr jr_014_4fcf

    dec bc
    dec bc
    ld [de], a
    ld a, [de]

jr_014_4fcf:
    dec b
    ld de, $0c0e
    ld a, [de]
    nop
    ld a, [de]
    dec b
    inc b
    ld d, $1d

jr_014_4fda:
    dec b
    inc b
    inc b
    inc de
    ld a, [de]
    nop
    ld d, $00
    jr @+$22

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $1a12
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    ld a, [de]
    dec b
    ld c, $11
    dec e
    inc bc
    inc b
    rrca
    nop
    ld de, $1413
    ld de, $2004
    rra
    jr jr_014_5021

    inc d
    ld a, [de]
    rlca
    inc b
    nop
    ld de, $001a
    ld a, [de]
    inc de
    ld de, $0800
    dec c

jr_014_5021:
    dec e
    ld d, $07
    ld [$1312], sp
    dec bc
    inc b
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    inc bc
    ld [$1312], sp
    nop
    dec c
    ld [bc], a
    inc b
    jr nz, jr_014_505a

    jr @+$10

    inc d
    ld a, [de]
    rlca
    inc b
    nop
    ld de, $131a
    rlca
    inc b
    ld a, [de]
    dec b
    nop
    ld [$130d], sp
    jr @+$06

    dec bc
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a

jr_014_505a:
    ld c, $0d
    inc bc
    inc d
    ld [bc], a
    inc de
    ld c, $11
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld [$1312], sp
    nop
    dec c
    ld [bc], a
    inc b
    jr nz, @+$21

    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld a, [de]
    ld c, $14
    inc de
    ld [de], a
    ld [$0403], sp
    dec e
    ld c, $05
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    nop
    ld de, $0406
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    dec e
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    jr nz, @+$1c

    inc de
    rlca
    inc b
    ld de, $1a04
    ld [$1d12], sp
    nop
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $0f1a
    nop
    ld de, $040a
    inc bc
    ld a, [de]
    rlca
    inc b
    ld de, $2004
    rra
    jr jr_014_50cc

    inc d
    ld a, [de]
    nop
    ld de, $0811
    dec d
    inc b
    ld a, [de]
    nop
    inc de
    dec e
    ld [bc], a
    rlca

jr_014_50cc:
    ld [$0002], sp
    ld b, $0e
    ld a, [de]
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    jr nz, jr_014_50fa

    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld [$0d06], sp
    ld a, [de]
    ld de, $0004
    inc bc
    ld [de], a
    dec e
    ld h, $02
    rlca
    ld [$0002], sp
    ld b, $0e
    ld a, [de]
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp

jr_014_50fa:
    jr nz, @+$28

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    ld de, $1a0a
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr @+$1f

    ld bc, $0811
    dec c
    ld b, $12
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $170e
    jr nz, @+$1e

    ld h, $13
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    ld d, $04
    ld de, $1a04
    inc c
    ld de, $1d20
    ld bc, $0d0e
    inc bc
    ld d, $04
    dec bc
    dec bc
    ld a, [hl+]
    ld [de], a
    dec e
    ld bc, $0b04
    ld c, $0d
    ld b, $08
    dec c
    ld b, $12
    jr nz, jr_014_516e

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    nop
    ld de, $0406
    dec e
    nop
    ld de, $0702
    inc b
    inc bc
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld c, $16
    jr nz, @+$21

    ld de, $0608
    rlca
    inc de
    ld a, [de]
    ld c, $0d
    ld a, [de]

jr_014_516e:
    inc de
    rlca
    inc b
    dec e
    inc c
    ld c, $0d
    inc b
    jr jr_014_519f

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec b
    nop
    inc c
    ld [$080b], sp
    nop
    ld de, $181d
    inc b
    dec bc
    dec bc
    ld c, $16
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $081a
    inc bc
    dec bc
    ld [$060d], sp
    dec e
    ld [$1a0d], sp
    inc de

jr_014_519f:
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    jr nz, @+$21

    ld [$1a13], sp
    ld d, $0e
    inc d
    dec bc
    inc bc
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld bc, $1a04
    inc de
    rlca
    inc b
    ld [de], a
    inc c
    nop
    ld de, $0413
    ld [de], a
    inc de
    ld a, [de]
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]
    inc de
    ld c, $1d
    inc d
    rrca
    ld [de], a
    inc b
    inc de
    ld a, [de]
    ld b, $00
    ld bc, $1801
    daa
    ld a, [de]
    rlca
    inc b
    ld a, [hl+]
    inc bc
    dec e
    rrca
    ld de, $010e
    nop
    ld bc, $180b
    ld a, [de]
    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    jr jr_014_51fe

    inc d
    dec e
    ld d, $00
    dec bc
    ld a, [bc]
    daa
    rra
    jr jr_014_5208

    inc d
    ld a, [de]
    ld [de], a
    inc de

jr_014_51fe:
    ld c, $0f
    ld a, [de]
    jr jr_014_5211

    inc d
    ld de, $0412
    dec bc

jr_014_5208:
    dec b
    dec e
    dec b
    ld de, $0c0e
    ld a, [de]
    dec d
    nop

jr_014_5211:
    dec c
    inc bc
    nop
    dec bc
    ld [$0819], sp
    dec c
    ld b, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    ld [$120d], sp
    ld [$0403], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    jr @+$10

    inc d
    ld de, $1105
    ld [$0d04], sp
    inc bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $1f20
    jr jr_014_524b

    inc d
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e

jr_014_524b:
    ld de, $001d
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    inc de
    inc b
    rrca
    ld a, [de]
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    nop
    ld bc, $1c20
    ld d, $07
    jr @+$27

    ld a, [de]
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    dec c
    ld c, $0d
    inc b
    dec e
    ld c, $13
    rlca
    inc b
    ld de, $131a
    rlca
    nop
    dec c
    ld a, [de]
    jr jr_014_528e

    inc d
    ld de, $0e1d
    dec bc
    inc bc
    ld a, [de]
    rrca
    nop
    dec bc
    dec h
    ld a, [de]
    ld b, $00

jr_014_528e:
    ld bc, $1801
    daa
    inc e
    ld h, $07
    ld c, $16
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld [$1a13], sp
    ld b, $0e
    ld [$060d], sp
    dec h
    dec e
    ld b, $00
    ld bc, $1801
    jr z, jr_014_52d1

    ld a, [de]
    jr jr_014_52bc

    inc d
    ld a, [de]
    nop
    ld [de], a
    ld a, [bc]
    jr nz, @+$1f

    ld h, $18
    inc b
    ld [de], a
    dec h
    ld a, [de]
    inc de

jr_014_52bc:
    rlca
    nop
    dec c
    ld a, [bc]
    ld a, [de]
    jr jr_014_52d1

    inc d
    dec h
    ld h, $1d
    rlca
    inc b
    ld a, [de]
    ld de, $0f04
    dec bc
    ld [$1204], sp

jr_014_52d1:
    jr nz, jr_014_52ef

    jr jr_014_52e3

    inc d
    ld a, [de]
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    ld a, [de]
    inc de
    rlca
    inc b

jr_014_52e3:
    dec e
    dec b
    ld [$1211], sp
    inc de
    ld a, [de]
    inc de
    ld [$040c], sp
    ld a, [de]

jr_014_52ef:
    jr jr_014_52ff

    inc d
    ld a, [de]
    inc c
    inc b
    inc de
    ld b, $00
    ld bc, $1801
    jr nz, jr_014_5317

    jr jr_014_530d

jr_014_52ff:
    inc d
    ld a, [de]
    ld [de], a
    nop
    ld d, $1a
    rlca
    inc b
    dec e
    ld d, $00
    ld [de], a
    ld a, [de]
    dec c

jr_014_530d:
    inc b
    nop
    ld de, $180b
    ld a, [de]
    inc bc
    inc b
    nop
    dec b

jr_014_5317:
    ld a, [de]
    ld [de], a
    ld c, $18
    ld c, $14
    ld a, [de]
    rlca
    nop
    inc bc
    ld a, [de]
    inc de
    ld c, $1a
    dec bc
    inc b
    nop
    ld de, $1d0d
    inc de
    ld c, $1a
    ld [de], a
    rrca
    inc b
    nop
    ld a, [bc]
    ld a, [de]
    dec d
    inc b
    ld de, $1d18
    dec bc
    ld c, $14
    inc bc
    dec bc
    jr jr_014_535a

    ld [$1a0d], sp
    ld c, $11
    inc bc
    inc b
    ld de, $131a
    ld c, $02
    ld c, $0c
    inc c
    inc d
    dec c
    ld [$0002], sp
    inc de
    inc b
    jr nz, jr_014_5374

    ld c, $15

jr_014_535a:
    inc b
    ld de, $131a
    rlca
    inc b
    ld a, [de]
    jr jr_014_5367

    nop
    ld de, $2512

jr_014_5367:
    dec e
    jr jr_014_5378

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    rlca
    inc b
    dec bc
    rrca
    inc b

jr_014_5374:
    inc bc
    dec e
    ld b, $00

jr_014_5378:
    ld bc, $1801
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    ld c, $05
    dec e
    rrca
    dec bc
    inc b
    dec c
    inc de
    jr jr_014_53a4

    ld c, $05
    ld a, [de]
    ld [de], a
    ld [bc], a
    ld de, $0f00
    inc b
    ld [de], a
    jr nz, jr_014_53b2

    ld [de], a
    ld c, $25
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    nop
    dec bc
    ld d, $00
    jr @+$14

    dec e

jr_014_53a4:
    ld de, $1304
    inc d
    ld de, $040d
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b

jr_014_53b2:
    nop
    dec d
    ld c, $11
    ld bc, $1a18
    dec c
    inc b
    dec d
    inc b
    ld de, $021a
    rlca
    nop
    ld de, $0806
    dec c
    ld b, $1d
    jr jr_014_53d8

    inc d
    ld a, [de]
    inc de
    ld c, $1a
    ld de, $0308
    inc b
    ld a, [de]
    ld [$1a0d], sp
    rlca

jr_014_53d8:
    ld [$0212], sp
    nop
    ld bc, $1c20
    ld d, $07
    nop
    inc de
    ld a, [de]
    nop
    ld a, [de]
    rrca
    ld de, $0d08
    ld [bc], a
    inc b
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld b, $00
    ld bc, $1801
    ld a, [de]
    ld [$2712], sp
    rra
    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    ld [$0a0d], sp
    ld a, [de]
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    ld [$130d], sp
    ld c, $13
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0c
    dec b
    ld c, $11
    inc de
    nop
    ld bc, $040b
    dec e
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    ld [de], a
    inc b
    nop
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    nop
    ld bc, $1f20
    jr jr_014_5443

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld a, [de]
    inc c
    inc d

jr_014_5443:
    ld [bc], a
    rlca
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0004
    ld de, $1521
    ld [$1604], sp
    dec e
    inc c
    ld [$1111], sp
    ld c, $11
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    ld d, $07
    inc b
    ld de, $1d04
    jr jr_014_5478

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [de], a
    ld [$1313], sp
    ld [$060d], sp
    jr nz, jr_014_5497

jr_014_5478:
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $0801
    inc b
    ld a, [de]
    ld [de], a
    inc c
    ld [$040b], sp
    ld [de], a
    dec e
    nop
    ld [de], a
    ld a, [de]
    ld [$1a05], sp
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    dec e
    dec bc
    nop

jr_014_5497:
    inc d
    ld b, $07
    ld [$060d], sp
    ld a, [de]
    nop
    inc de
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    dec e
    rrca
    ld de, $1508
    nop
    inc de
    inc b
    ld a, [de]
    add hl, bc
    ld c, $0a
    inc b
    jr nz, jr_014_54d3

    ld b, $0e
    ld c, $03
    ld a, [de]
    ld c, $0b
    inc bc
    ld a, [de]
    ld b, $00
    ld bc, $1801
    daa
    ld a, [de]
    rlca
    inc b
    rlca
    nop
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [bc], a
    rlca
    nop
    dec c
    ld b, $04

jr_014_54d3:
    inc bc
    ld a, [de]
    nop
    dec e
    ld bc, $1308
    daa
    rra
    ld b, $00
    ld bc, $1801
    ld a, [de]
    rlca
    nop
    ld [de], a
    ld a, [de]
    nop
    dec bc
    ld d, $00
    jr jr_014_54fe

    dec e
    ld bc, $0404
    dec c
    ld a, [de]
    nop
    ld a, [de]
    dec b
    ld c, $0e
    inc de
    ld bc, $0b00
    dec bc
    dec e
    dec b

jr_014_54fe:
    nop
    dec c
    jr nz, jr_014_551e

    jr @+$10

    inc d
    ld a, [de]
    nop
    dec bc
    ld d, $00
    jr jr_014_551e

    ld a, [de]
    dec b
    ld [$1406], sp
    ld de, $0304
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld d, $00
    ld [de], a
    ld a, [de]
    nop

jr_014_551e:
    ld a, [de]
    dec bc
    ld c, $12
    ld [$060d], sp
    dec e
    ld [bc], a
    nop
    inc d
    ld [de], a
    inc b
    dec h
    ld a, [de]
    inc b
    ld [de], a
    rrca
    inc b
    ld [bc], a
    ld [$0b00], sp
    dec bc
    jr @+$1f

    ld [$1a0d], sp
    nop
    ld a, [de]
    inc de
    ld c, $16
    dec c
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec e
    inc de
    rlca
    ld [$2012], sp
    rra
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $1f20
    ld [$1a13], sp
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    jr nz, jr_014_558e

    ld b, $00
    ld bc, $1801
    ld a, [de]
    ld [de], a
    nop
    jr jr_014_558d

    dec h
    ld a, [de]
    ld h, $12
    ld c, $11
    ld de, $0018
    ld [bc], a
    inc b
    dec h
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]

jr_014_558d:
    inc bc

jr_014_558e:
    ld c, $0e
    ld de, $071d
    nop
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    inc b
    inc bc
    dec e
    ld [de], a
    ld [$020d], sp
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $00
    ld de, $0001
    ld b, $04
    dec e
    inc de
    ld de, $0214
    ld a, [bc]
    ld a, [de]
    rlca
    ld [$1a13], sp
    inc c
    inc b
    jr nz, jr_014_55e6

    rra
    ld h, $09
    inc d
    ld [de], a
    inc de
    ld a, [de]
    dec c
    nop
    inc c
    inc b
    ld a, [de]
    inc bc
    nop
    dec e
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    dec h
    ld a, [de]
    nop
    ld [bc], a
    inc b
    jr nz, jr_014_55fb

    jr nz, jr_014_55fa

    ld [$0b2a], sp
    dec bc
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]

jr_014_55e6:
    jr @+$10

    inc d
    dec e
    inc de
    rlca
    inc b
    ld de, $2004
    ld h, $1f
    ld b, $00
    ld bc, $1801
    ld a, [de]
    dec bc
    nop

jr_014_55fa:
    inc d

jr_014_55fb:
    ld b, $07
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    nop
    jr jr_014_5619

    dec h
    ld a, [de]
    ld h, $16
    inc b
    dec bc
    dec bc
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    nop
    dec bc
    ld c, $0e
    ld a, [bc]

jr_014_5619:
    ld a, [de]
    nop
    ld de, $140e
    dec c
    inc bc
    dec h
    ld a, [de]
    nop
    ld [bc], a
    inc b
    daa
    dec e
    inc bc
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld d, $07
    inc b
    ld de, $1a04
    ld d, $04
    ld a, [de]
    nop
    ld de, $0d04
    ld c, $16
    daa
    ld h, $1f
    ld [de], a
    ld [$020d], sp
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $1a04
    ld [$1a12], sp
    dec c
    ld c, $1d
    ld c, $13
    rlca
    inc b
    ld de, $141a
    ld [de], a
    inc b
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    ld [$2513], sp
    dec e
    jr @+$10

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    dec c
    inc b
    inc b
    inc bc
    dec e
    ld [$1a13], sp
    nop
    dec c
    jr jr_014_5685

    ld c, $11
    inc b
    jr nz, jr_014_569d

    ld h, $0b
    inc b
    nop
    dec d
    inc b
    ld a, [de]

jr_014_5685:
    ld [$1a13], sp
    inc de
    ld c, $1a
    inc c
    inc b
    dec h
    dec e
    nop
    ld [bc], a
    inc b
    daa
    ld h, $1a
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    nop

jr_014_569d:
    inc de
    dec e
    ld b, $00
    ld bc, $1801
    ld a, [de]
    inc bc
    ld de, $1508
    inc b
    ld [de], a
    ld a, [de]
    ld c, $05
    dec b
    jr nz, jr_014_56d0

    nop
    ld a, [de]
    rrca
    inc b
    inc b
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld de, $0114
    ld bc, $1104
    dec h
    dec e
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    ld d, $08
    ld [bc], a
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]
    inc de

jr_014_56d0:
    inc d
    ld de, $120d
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    ld [bc], a
    ld de, $0404
    ld [bc], a
    rlca
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld [$0411], sp
    ld [de], a
    ld a, [de]
    dec bc
    nop
    inc de
    inc b
    ld de, $2020
    jr nz, @+$21

    ld b, $00
    ld bc, $1801
    ld a, [de]
    ld [de], a
    inc de
    ld c, $0f
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    nop
    ld bc, $161a
    ld [$0713], sp
    ld a, [de]
    nop
    ld a, [de]
    add hl, bc
    inc b
    ld de, $200a
    dec e
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc c
    ld [$040b], sp
    ld [de], a
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    rlca
    inc b
    dec e
    ld [de], a
    nop
    jr jr_014_5740

    dec h
    ld a, [de]
    ld h, $07
    inc b
    ld de, $1a04
    ld d, $04
    dec e
    nop
    ld de, $2504
    ld a, [de]
    nop
    ld [bc], a

jr_014_5740:
    inc b
    daa
    ld h, $1f
    jr @+$10

    inc d
    ld a, [de]
    dec b
    ld [$0411], sp
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    rlca
    ld c, $13
    jr nz, jr_014_5774

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1300
    inc de
    inc b
    ld de, $1d18
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    dec c
    inc b
    inc b
    inc bc
    dec e
    ld [bc], a
    rlca
    nop
    dec c
    ld b, $08

jr_014_5774:
    dec c
    ld b, $20
    rra
    jr jr_014_5788

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    nop

jr_014_5788:
    dec e
    dec c
    inc b
    ld d, $1a
    ld bc, $1300
    inc de
    inc b
    ld de, $1a18
    inc de
    ld c, $1a
    rrca
    inc d
    inc de
    ld [$200d], sp
    jr nz, @+$22

    rra
    jr @+$10

    inc d
    ld de, $021a
    nop
    ld [de], a
    inc b
    ld a, [de]
    ld [$1d12], sp
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    inc bc
    jr nz, @+$22

    jr nz, jr_014_57d5

    dec b
    ld c, $11
    inc b
    dec d
    inc b
    ld de, $1f27
    jr jr_014_57d1

    inc d
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $161a
    rlca
    nop
    inc de
    ld a, [de]

jr_014_57d1:
    ld [$1213], sp
    nop

jr_014_57d5:
    jr jr_014_57e9

    jr z, jr_014_57f8

    ld h, $0d
    ld c, $1a
    inc de
    rlca
    nop
    dec c
    ld a, [bc]
    ld [de], a
    ld a, [de]
    nop
    ld [bc], a
    inc b
    dec h
    dec e

jr_014_57e9:
    ld [$021a], sp
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    nop
    ld [bc], a
    ld [bc], a
    inc b
    rrca
    inc de
    dec e

jr_014_57f8:
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    jr jr_014_5812

    inc d
    jr nz, jr_014_582d

    rra
    jr jr_014_5818

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp

jr_014_5812:
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]

jr_014_5818:
    ld c, $05
    nop
    ld a, [de]
    ld de, $0d14
    inc bc
    ld c, $16
    dec c
    dec h
    dec e
    nop
    rrca
    nop
    ld de, $0c13
    inc b
    dec c

jr_014_582d:
    inc de
    dec e
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    jr nz, jr_014_5855

    rlca
    ld c, $0c
    inc b
    ld a, [de]
    ld [de], a
    ld d, $04
    inc b
    inc de
    ld a, [de]
    rlca
    ld c, $0c
    inc b
    daa
    rra
    jr jr_014_585a

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    dec b

jr_014_5855:
    ld de, $0d0e
    inc de
    ld a, [de]

jr_014_585a:
    ld c, $05
    jr jr_014_586c

    inc d
    ld de, $001a
    rrca
    nop
    ld de, $0c13
    inc b
    dec c
    inc de
    jr nz, jr_014_588b

jr_014_586c:
    inc de
    rlca
    ld [$1a12], sp
    ld [de], a
    nop
    jr @+$14

    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    dec e
    nop
    ld a, [de]
    dec d
    nop
    ld [bc], a
    nop
    dec c
    ld [bc], a
    jr @+$1c

    ld [$1a0d], sp

jr_014_588b:
    inc de
    rlca
    inc b
    dec e
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    jr nz, jr_014_58b3

    jr jr_014_58a9

    inc d
    ld a, [de]
    rlca
    ld c, $0f
    inc b
    ld [$1a13], sp
    inc bc
    ld c, $04
    ld [de], a
    dec c

jr_014_58a9:
    ld a, [hl+]
    inc de
    ld a, [de]
    inc c
    inc b
    nop
    dec c
    dec e
    jr jr_014_58c1

jr_014_58b3:
    inc d
    daa
    rra
    ld h, $07
    inc b
    jr jr_014_58e0

    ld a, [de]
    jr jr_014_58cc

    inc d
    ld a, [de]
    nop

jr_014_58c1:
    ld de, $0d04
    ld a, [hl+]
    inc de
    ld a, [de]
    nop
    ld [bc], a
    ld c, $0f
    dec h

jr_014_58cc:
    ld a, [de]
    nop
    ld de, $1a04
    jr @+$10

    inc d
    daa
    jr z, jr_014_58fe

    dec e
    ld d, $07
    inc b
    ld de, $2a04
    inc bc
    ld a, [de]

jr_014_58e0:
    jr jr_014_58f0

    inc d
    ld a, [de]
    ld b, $04
    inc de
    dec e
    inc de
    rlca
    ld [$2812], sp
    ld h, $1c
    inc de

jr_014_58f0:
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    ld de, $1a0a
    ld [de], a
    ld c, $14
    dec c
    inc bc

jr_014_58fe:
    ld [de], a
    dec e
    nop
    ld a, [de]
    rlca
    ld [$0303], sp
    inc b
    dec c
    ld a, [de]
    nop
    dec bc
    nop
    ld de, $1d0c
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    nop
    dec bc
    inc b
    ld de, $1213
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    ld c, $0b
    ld [$0402], sp
    jr nz, jr_014_5946

    nop
    ld a, [de]
    inc bc
    ld [$0b0c], sp
    jr jr_014_5950

    dec bc
    ld [$1a13], sp
    rlca
    nop
    dec bc
    dec bc
    dec h
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    nop
    ld de, $0c0e
    nop
    ld a, [de]
    ld c, $05
    ld a, [de]

jr_014_5946:
    ld [bc], a
    rlca
    inc b
    nop
    rrca
    ld [bc], a
    ld c, $0b
    ld c, $06

jr_014_5950:
    dec c
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec bc
    inc b
    dec e
    rrca
    ld c, $0f
    ld [bc], a
    ld c, $11
    dec c
    jr nz, @+$22

    jr nz, jr_014_5982

    ld [$2a13], sp
    ld [de], a
    dec e
    ld b, $0e
    ld c, $03
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1a04
    rlca
    ld c, $0c
    inc b
    daa
    rra
    jr @+$10

    inc d
    ld a, [de]

jr_014_5982:
    nop
    inc bc
    inc c
    ld [$0411], sp
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld de, $0d14
    ld hl, $0e03
    ld d, $0d
    ld a, [de]
    ld [bc], a
    ld c, $0d
    inc bc
    ld [$0813], sp
    ld c, $0d
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    nop
    dec bc
    dec bc
    ld d, $00
    jr jr_014_59cb

    ld c, $14
    inc de
    ld [de], a
    ld [$0403], sp
    ld a, [de]
    jr jr_014_59c6

    inc d
    ld de, $001d
    rrca
    nop
    ld de, $0c13
    inc b
    dec c
    inc de
    jr nz, @+$21

jr_014_59c6:
    inc de
    rlca
    ld [$1a12], sp

jr_014_59cb:
    ld bc, $1300
    inc de
    inc b
    ld de, $0304
    dec e
    inc c
    nop
    ld [$010b], sp
    ld c, $17
    ld a, [de]
    rlca
    nop
    ld [de], a
    ld a, [de]
    jr jr_014_59f0

    inc d
    ld de, $0d1d
    nop
    inc c
    inc b
    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [$2013], sp

jr_014_59f0:
    ld a, [de]
    ld a, [bc]
    ld [$030d], sp
    dec e
    ld c, $05
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    nop
    dec e
    inc c
    inc b
    inc de
    nop
    rrca
    rlca
    ld c, $11
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    dec e
    jr jr_014_5a25

    inc d
    ld de, $0b1a
    ld [$0405], sp
    jr nz, jr_014_5a40

    jr nz, jr_014_5a3f

    ld c, $11
    ld a, [de]

jr_014_5a25:
    inc c
    nop
    jr jr_014_5a2a

    inc b

jr_014_5a2a:
    ld a, [de]
    dec c
    ld c, $13
    daa
    rra
    inc de
    rlca
    inc b
    ld de, $1a04
    nop
    ld de, $1a04
    ld a, [bc]
    dec c
    ld [$0405], sp

jr_014_5a3f:
    dec e

jr_014_5a40:
    ld [de], a
    ld [bc], a
    ld de, $1300
    ld [bc], a
    rlca
    inc b
    ld [de], a
    ld a, [de]
    dec c
    inc b
    nop
    ld de, $131d
    rlca
    inc b
    ld a, [de]
    dec bc
    ld c, $02
    ld a, [bc]
    jr nz, jr_014_5a78

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    inc b
    dec c
    inc de
    inc b
    inc bc
    dec e
    inc c
    nop
    ld [$010b], sp
    ld c, $17
    jr nz, jr_014_5a8f

    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]

jr_014_5a78:
    nop
    dec c
    dec e
    inc b
    dec c
    dec d
    inc b
    dec bc
    ld c, $0f
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    dec e
    ld [de], a
    dec c
    nop
    rrca
    ld [de], a

jr_014_5a8f:
    rlca
    ld c, $13
    ld a, [de]
    ld [$120d], sp
    ld [$0403], sp
    jr nz, jr_014_5ab7

    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld [$1302], sp
    inc d
    ld de, $1a04
    ld [de], a
    rlca
    ld c, $16
    ld [de], a
    dec e
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [de]
    nop
    dec c
    inc bc

jr_014_5ab7:
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    dec e
    ld c, $13
    rlca
    inc b
    ld de, $061a
    inc d
    jr @+$1c

    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld [$060d], sp
    ld c, $14
    inc de
    ld [de], a
    ld [$0403], sp
    ld a, [de]
    nop
    dec e
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    inc b
    ld de, $2012
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    ld de, $1d03
    ld h, $02
    ld c, $0d
    dec b
    ld [$0403], sp
    dec c
    inc de
    ld [$0b00], sp
    ld h, $1d
    ld [$1a12], sp
    ld d, $11
    ld [$1313], sp
    inc b
    dec c
    dec e
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld de, $0d0e
    inc de
    jr nz, jr_014_5b33

    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec b
    ld de, $0c00
    inc b
    inc bc
    dec e
    rrca
    ld [$1302], sp
    inc d
    ld de, $1a04
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b

jr_014_5b33:
    dec e
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    jr nz, jr_014_5b56

    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    jr @+$1c

    ld d, $08
    inc de
    rlca
    dec e
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [de]
    ld [$1a12], sp
    ld [$1a0d], sp
    inc de
    rlca

jr_014_5b56:
    ld [$1d12], sp
    rrca
    rlca
    ld c, $13
    ld c, $1a
    inc de
    ld c, $0e
    jr nz, @+$21

    jr jr_014_5b74

    inc d
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c

jr_014_5b74:
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld [$1302], sp
    inc d
    ld de, $1a04
    inc c
    nop
    jr jr_014_5b89

    inc b

jr_014_5b89:
    ld a, [de]
    ld [$0f0c], sp
    ld c, $11
    inc de
    nop
    dec c
    inc de
    jr nz, @+$22

    jr nz, jr_014_5bb3

    inc c
    nop
    jr jr_014_5b9c

    inc b

jr_014_5b9c:
    ld a, [de]
    ld [$1a05], sp
    jr jr_014_5bb0

    inc d
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld b, $04
    inc de
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a

jr_014_5bb0:
    dec bc
    ld c, $12

jr_014_5bb3:
    inc b
    ld de, $0b1a
    ld c, $0e
    ld a, [bc]
    jr nz, jr_014_5bdb

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $051d
    ld de, $0c0e
    ld a, [de]
    dec d
    ld [$0d0d], sp
    jr jr_014_5bf2

    inc de
    inc d
    dec bc
    inc d
    ld [de], a
    ld [de], a

jr_014_5bdb:
    nop
    dec h
    ld a, [de]
    jr jr_014_5bee

    inc d
    ld de, $081d
    dec c
    dec b
    ld c, $11
    inc c
    nop
    dec c
    inc de
    jr nz, jr_014_5c0a

jr_014_5bee:
    ld h, $00
    ld [bc], a
    inc b

jr_014_5bf2:
    dec h
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    ld d, $04
    ld [$0311], sp
    dec e
    ld [de], a
    inc de
    inc d
    dec b
    dec b
    ld a, [de]
    ld [$1a12], sp
    ld b, $0e

jr_014_5c0a:
    ld [$060d], sp
    ld a, [de]
    ld c, $0d
    dec e
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    ld c, $11
    inc bc
    ld [$1a02], sp
    ld [de], a
    rlca
    ld c, $04
    dec b
    nop
    ld [bc], a
    inc de
    ld c, $11
    jr jr_014_5c4b

    jr nz, jr_014_5c4d

    inc e
    ld [$071a], sp
    inc b
    nop
    ld de, $1a03
    inc de
    rlca
    inc b
    jr @+$1f

    ld [$150d], sp
    inc b
    ld [de], a
    inc de
    inc b
    inc bc
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    nop
    ld de, $0406

jr_014_5c4b:
    dec e
    nop

jr_014_5c4d:
    inc c
    ld c, $14
    dec c
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc c
    ld c, $0d
    inc b
    jr @+$1c

    ld [$130d], sp
    rlca
    inc b
    ld a, [de]
    ld [$0402], sp
    ld a, [de]
    ld [bc], a
    ld de, $0004
    inc c
    dec e
    rrca
    nop
    ld de, $0e0b
    ld de, $001a
    ld [bc], a
    ld de, $120e
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc de
    ld de, $0404
    inc de
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld de, $1a04
    nop
    ld de, $1a04
    nop
    dec bc
    ld [de], a
    ld c, $1d
    ld [de], a
    inc de
    ld de, $0d00
    ld b, $04
    ld a, [de]
    inc c
    ld [$0d03], sp
    ld [$0706], sp
    inc de
    dec e
    ld [de], a
    rlca
    ld [$0c0f], sp
    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    inc d
    dec c
    inc c
    nop
    ld de, $040a
    inc bc
    ld a, [de]
    ld [$0402], sp
    ld a, [de]
    ld [bc], a
    ld de, $0004
    inc c
    inc de
    ld de, $0214
    ld a, [bc]
    ld [de], a
    jr nz, jr_014_5ce9

    jr jr_014_5cdf

    inc d
    ld a, [de]
    ld [de], a
    rlca
    ld c, $14
    dec bc
    inc bc
    ld [bc], a
    rlca
    inc b
    ld [bc], a
    ld a, [bc]
    ld a, [de]

jr_014_5cdf:
    ld [$1a13], sp
    ld c, $14
    inc de
    jr nz, jr_014_5d04

    ld a, [de]
    ld a, [de]

jr_014_5ce9:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec d
    ld [$0d0d], sp
    jr jr_014_5d17

    ld h, $1f
    inc de
    rlca
    inc b
    ld de, $1a04
    nop
    ld de, $1a04
    inc de

jr_014_5d04:
    ld d, $0e
    dec e
    rrca
    ld [$1302], sp
    inc d
    ld de, $1204
    ld a, [de]
    ld c, $0d
    dec e
    inc de
    rlca
    inc b
    ld a, [de]

jr_014_5d17:
    ld d, $00
    dec bc
    dec bc
    jr nz, @+$22

    jr nz, jr_014_5d3b

    jr jr_014_5d2f

    inc d
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $161a
    rlca
    ld c, $1d
    inc de

jr_014_5d2f:
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    rrca
    inc b
    ld c, $0f
    dec bc
    inc b
    ld a, [de]

jr_014_5d3b:
    inc c
    ld [$0706], sp
    inc de
    ld bc, $2004
    rra
    inc bc
    nop
    dec c
    ld a, [de]
    ld [de], a
    inc c
    ld c, $11
    ld c, $0d
    ld a, [de]
    dec bc
    ld [$0415], sp
    ld [de], a
    dec e
    ld [$1a0d], sp
    ld h, $31
    ld [bc], a
    jr nz, @+$28

    ld a, [de]
    nop
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    ld b, $14
    jr jr_014_5d85

    inc b
    dec d
    inc b
    ld de, $131a
    rlca
    ld [$0a0d], sp
    ld [de], a
    dec e
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    ld [$1a12], sp
    ld [de], a
    rrca
    ld c, $11
    inc de

jr_014_5d85:
    ld [de], a
    dec h
    dec e
    ld [de], a
    rrca
    ld c, $11
    inc de
    ld [de], a
    dec h
    ld a, [de]
    ld [de], a
    rrca
    ld c, $11
    inc de
    ld [de], a
    daa
    rra
    jr jr_014_5da8

    inc d
    ld a, [de]
    dec d
    inc b
    ld de, $1a18
    ld c, $16
    dec c
    dec e
    nop
    rrca
    nop

jr_014_5da8:
    ld de, $0c13
    inc b
    dec c
    inc de
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $1d25
    ld h, $31
    nop
    jr nz, @+$28

    rra
    add hl, bc
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld bc, $0e11
    ld d, $0d
    ld a, [de]
    dec bc
    ld [$0415], sp
    ld [de], a
    dec e
    rlca
    inc b
    ld de, $2004
    ld a, [de]
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    dec bc
    ld d, $00
    jr @+$14

    dec e
    inc de
    ld de, $0818
    dec c
    ld b, $1a
    inc de
    ld c, $1a
    ld [de], a
    rlca
    ld c, $02
    ld a, [bc]
    dec e
    jr jr_014_5dfe

    inc d
    ld a, [de]
    ld bc, $1a18
    ld bc, $1814
    ld [$060d], sp
    dec e
    inc b
    rla

jr_014_5dfe:
    rrca
    inc b
    dec c
    ld [de], a
    ld [$0415], sp
    ld a, [de]
    ld [bc], a
    nop
    ld de, $2012
    inc e
    ld b, $0e
    ld c, $03
    ld a, [de]
    ld c, $0b
    ld a, [hl+]
    ld a, [de]
    add hl, bc
    nop
    ld [bc], a
    ld a, [bc]
    jr nz, jr_014_5e38

    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    dec bc
    ld d, $00
    jr jr_014_5e38

    ld a, [de]
    ld b, $0e
    inc de
    dec e
    rlca
    ld [$1a12], sp
    ld b, $18
    inc c
    ld a, [de]
    ld [de], a
    rlca
    ld c, $04
    ld [de], a

jr_014_5e38:
    ld a, [de]
    ld c, $0d
    jr nz, @+$21

    inc c
    nop
    jr jr_014_5e42

    inc b

jr_014_5e42:
    ld a, [de]
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [de]
    rlca
    nop
    ld [de], a
    dec e
    rrca
    dec bc
    nop
    dec c
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    ld [de], a
    inc de
    nop
    ld de, $1a13
    inc d
    rrca
    dec e
    rlca
    ld [$1a12], sp
    ld c, $16
    dec c
    dec e
    ld c, $0f
    inc b
    ld de, $1300
    ld [$0d0e], sp
    jr nz, jr_014_5e94

    jr nz, @+$1e

    inc c
    nop
    jr jr_014_5e7b

    inc b

jr_014_5e7b:
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    ld [$1212], sp
    ld [$060d], sp
    dec e
    inc c
    ld c, $0d
    inc b
    jr jr_014_5ea8

    ld [$1a12], sp
    ld bc, $0804

jr_014_5e94:
    dec c
    ld b, $1d
    inc d
    ld [de], a
    inc b
    inc bc
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    jr nz, jr_014_5ec6

    jr nz, jr_014_5ec7

jr_014_5ea8:
    ld [$1a05], sp
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [$1a12], sp
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    nop
    ld [de], a
    inc b
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    jr jr_014_5ed2

    inc d
    ld a, [hl+]

jr_014_5ec6:
    dec bc

jr_014_5ec7:
    dec bc
    dec e
    rrca
    ld de, $010e
    nop
    ld bc, $180b
    ld a, [de]

jr_014_5ed2:
    dec c
    inc b
    dec d
    inc b
    ld de, $051d
    ld [$030d], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc c
    ld c, $0d
    inc b
    jr @+$29

    rra
    jr jr_014_5ef9

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    dec c
    inc b
    dec d
    inc b
    ld de, $071a
    nop
    inc bc

jr_014_5ef9:
    dec e
    inc c
    inc d
    ld [bc], a
    rlca
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    rlca
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    jr jr_014_5f19

    inc d
    ld [de], a
    inc d
    ld de, $1a04
    inc bc
    ld c, $1a
    ld de, $0204
    ld c, $06

jr_014_5f19:
    dec c
    ld [$0419], sp
    dec e
    ld [$1a13], sp
    ld d, $07
    inc b
    dec c
    ld a, [de]
    jr jr_014_5f36

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b
    dec e
    ld [$2013], sp
    rra
    inc de
    rlca
    inc b
    ld a, [de]

jr_014_5f36:
    inc b
    dec bc
    inc b
    dec d
    nop
    inc de
    ld c, $11
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $081d
    ld [de], a
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    inc bc
    jr nz, jr_014_5f6e

    jr jr_014_5f5f

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    nop

jr_014_5f5f:
    dec c
    jr jr_014_5f63

    nop

jr_014_5f63:
    inc de
    inc de
    inc b
    ld de, $0408
    ld [de], a
    jr nz, jr_014_5f8b

    ld h, $0c

jr_014_5f6e:
    ld de, $1a20
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    dec h
    dec e
    ld [$152a], sp
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    nop
    ld [bc], a
    ld de, $120e
    ld [de], a
    dec e
    ld [de], a

jr_014_5f8b:
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0d00
    ld b, $04
    jr nz, jr_014_5fa5

    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld bc, $0404
    dec c

jr_014_5fa5:
    ld a, [de]
    inc c
    nop
    ld a, [bc]
    ld [$060d], sp
    dec e
    rrca
    nop
    jr jr_014_5fbd

    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e

jr_014_5fbd:
    ld [bc], a
    ld c, $0f
    ld [de], a
    ld a, [de]
    ld [$1a0d], sp
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    ld a, [de]
    ld c, $0d
    ld bc, $0704
    nop
    dec bc
    dec b
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    jr nz, @+$1e

    ld d, $07
    inc b
    dec c
    ld a, [de]
    add hl, bc
    ld c, $04
    jr @+$1c

    ld d, $00
    ld [de], a
    dec e
    ld [$0402], sp
    inc bc
    dec h
    ld a, [de]
    ld [$061a], sp
    ld de, $0100
    ld bc, $0304
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0e0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    ld bc, $0504
    ld c, $11
    inc b
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0f
    rrca
    inc b
    ld de, $1a12
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    jr nz, jr_014_6036

    rlca
    inc b
    ld a, [de]
    rrca
    nop
    jr jr_014_6036

    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    ld [$0c2a], sp
    dec e
    inc c
    nop
    ld a, [bc]

jr_014_6036:
    ld [$060d], sp
    ld a, [de]
    nop
    ld de, $0d04
    ld a, [hl+]
    inc de
    dec e
    ld de, $0204
    ld c, $11
    inc bc
    inc b
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $2704
    inc e
    inc bc
    jr nz, @+$17

    jr nz, @+$1c

    ld de, $0d14
    ld [de], a
    ld a, [de]
    inc de
    rlca
    ld [$060d], sp
    ld [de], a
    dec e
    rlca
    inc b
    ld de, $1a04
    rrca
    ld de, $1304
    inc de
    jr jr_014_6088

    inc de
    ld [$0706], sp
    inc de
    dec h
    ld [de], a
    ld c, $1a
    rlca
    inc b
    ld a, [de]
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    dec e
    nop
    ld bc, $140e

jr_014_6088:
    inc de
    ld a, [de]
    ld [$2513], sp
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    ld [$020d], sp
    inc b
    ld a, [de]
    ld [$1a13], sp
    nop
    ld [$2a0d], sp
    inc de
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0e0e
    ld a, [bc]
    ld [de], a
    dec h
    ld a, [de]
    jr jr_014_60bf

    inc d
    dec e
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]
    nop

jr_014_60bf:
    ld bc, $140e
    inc de
    dec e
    ld [$2713], sp
    inc e
    ld [$131a], sp
    rlca
    ld [$0a0d], sp
    ld a, [de]
    inc bc
    jr nz, jr_014_60e8

    jr nz, jr_014_60ef

    ld [$1d12], sp
    inc c
    nop
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    nop
    ld a, [de]
    rrca
    ld c, $16
    inc b
    ld de, $0f1d

jr_014_60e8:
    dec bc
    nop
    jr @+$1c

    nop
    dec c
    inc bc

jr_014_60ef:
    ld a, [de]
    ld [$1d12], sp
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    dec bc
    jr jr_014_6116

    inc c
    inc d
    ld [de], a
    ld [bc], a
    dec bc
    ld [$060d], sp
    dec e
    ld [$1a0d], sp
    ld c, $0d
    ld a, [de]
    jr jr_014_611b

    inc d
    ld de, $131d
    inc b
    ld de, $0811
    inc de

jr_014_6116:
    ld c, $11
    jr @+$22

    dec e

jr_014_611b:
    ld hl, $0e13
    inc c
    ld a, [de]
    ld bc, $0d0e
    inc bc
    ld d, $04
    dec bc
    dec bc
    ld h, $1f
    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    nop
    dec e
    ld de, $0e0e
    inc c
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e
    dec bc
    ld [$040a], sp
    ld a, [de]
    ld [$1a13], sp
    ld d, $00
    ld [de], a
    ld a, [de]
    inc de
    inc d
    ld de, $040d
    inc bc
    ld [$120d], sp
    ld [$0403], sp
    ld a, [de]
    ld c, $14
    inc de
    jr nz, jr_014_6186

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    inc b
    dec bc
    ld a, [bc]
    ld a, [de]
    rlca
    inc b
    nop
    inc bc
    dec e
    jr jr_014_6188

    inc d
    ld a, [de]
    ld d, $0e
    dec c
    ld a, [de]
    ld [$1a0d], sp
    nop
    ld a, [de]
    rrca

jr_014_6186:
    ld c, $0a

jr_014_6188:
    inc b
    ld de, $0006
    inc c
    inc b
    jr nz, jr_014_61af

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    ld [$1302], sp
    inc d
    ld de, $1a04
    ld c, $05
    dec e
    jr @+$10

    inc d
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    dec b
    nop
    inc de
    rlca

jr_014_61af:
    inc b
    ld de, $0e1d
    ld a, [hl+]
    inc c
    nop
    dec bc
    dec bc
    inc b
    jr jr_014_61db

    inc e
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    ld [$030d], sp
    ld a, [de]
    ld [de], a
    ld c, $14
    dec bc
    ld d, $07
    ld c, $1a
    ld b, $14
    ld [$0403], sp
    inc bc
    ld a, [de]
    jr jr_014_61e9

jr_014_61db:
    inc d
    ld a, [de]
    inc de
    ld c, $1d
    inc de
    rlca
    ld [$1a12], sp
    dec b
    ld [$040d], sp

jr_014_61e9:
    ld a, [de]
    dec bc
    ld [$0405], sp
    ld a, [de]
    ld c, $05
    dec e
    jr jr_014_6202

    inc d
    ld de, $2012
    ld a, [de]
    inc de
    rlca
    nop
    dec c
    ld a, [bc]
    ld [de], a
    dec e
    rrca
    nop

jr_014_6202:
    inc bc
    ld de, $2704
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld d, $07
    nop
    inc de
    ld a, [de]
    inc d
    ld [de], a
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $1d
    ld bc, $1a04
    jr @+$10

    inc d
    ld de, $021a
    ld c, $14
    ld [bc], a
    rlca
    dec h
    dec e
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld c, $06
    ld [$1a04], sp
    inc d
    ld [de], a
    inc b
    inc bc
    ld [$1a13], sp
    dec b
    ld c, $11
    ld a, [de]
    inc de
    nop
    ld de, $0406
    inc de
    dec e
    rrca
    ld de, $0200
    inc de
    ld [$0402], sp
    jr nz, @+$21

    jr jr_014_6262

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    nop
    dec bc
    ld d, $00
    jr @+$14

    dec e
    inc b
    dec c

jr_014_6262:
    add hl, bc
    ld c, $18
    inc b
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    jr jr_014_6272

    dec bc
    dec bc
    ld c, $16

jr_014_6272:
    ld a, [de]
    rrca
    nop
    inc de
    inc de
    inc b
    ld de, $1d0d
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    ld [bc], a
    inc d
    ld de, $0013
    ld [$120d], sp
    jr nz, jr_014_62ad

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    jr jr_014_62a3

    inc d
    ld de, $121a
    rrca
    nop
    ld de, $1d04
    ld [de], a
    inc d
    ld [$2013], sp

jr_014_62a3:
    inc e
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    ld [de], a

jr_014_62ad:
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    dec e
    rlca
    inc b
    nop
    dec d
    jr @+$1c

    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    rrca
    ld c, $02
    ld a, [bc]
    inc b
    inc de
    jr nz, jr_014_62ea

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    ld c, $0b
    jr @+$06

    ld [de], a
    inc de
    inc b
    ld de, $131d
    inc d
    rla
    ld a, [de]
    ld [bc], a
    ld c, $00
    inc de
    jr nz, jr_014_6300

    jr @+$10

    inc d
    ld a, [hl+]

jr_014_62ea:
    dec d
    inc b
    dec e
    dec c
    ld c, $1a
    ld [$0403], sp
    nop
    ld a, [de]
    ld d, $07
    jr jr_014_6313

    jr jr_014_6309

    inc d
    dec e
    inc b
    dec d
    inc b

jr_014_6300:
    ld de, $0f1a
    inc d
    ld de, $0702
    nop
    ld [de], a

jr_014_6309:
    inc b
    inc bc
    ld a, [de]
    ld [$2713], sp
    rra
    inc de
    rlca
    inc b

jr_014_6313:
    ld a, [de]
    jr nz, jr_014_6349

    jr c, jr_014_6332

    ld [$1a12], sp
    ld [de], a
    inc de
    ld [$0b0b], sp
    dec e
    rlca
    inc b
    ld de, $2004
    inc e
    ld b, $0e
    ld c, $03
    ld a, [de]
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]

jr_014_6332:
    ld [de], a
    inc de
    ld c, $06
    ld [$1d04], sp
    inc c
    ld [$1212], sp
    inc b
    inc bc
    ld a, [de]
    inc de
    rlca
    ld [$2712], sp
    rra
    ld [$2a13], sp

jr_014_6349:
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    jr nz, jr_014_6382

    jr c, jr_014_636e

    ld [de], a
    rrca
    inc b
    ld [bc], a
    ld [$0b00], sp
    add hl, hl
    ld a, [de]
    ld [bc], a
    rlca
    inc b
    nop
    rrca
    ld a, [de]
    ld bc, $1314
    ld c, $02
    ld [bc], a
    nop
    ld [de], a
    ld [$0d0e], sp
    nop
    dec bc
    dec bc

jr_014_636e:
    jr jr_014_638d

    inc b
    dec b
    dec b
    inc b
    ld [bc], a
    inc de
    ld [$0415], sp
    jr nz, jr_014_639a

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]

jr_014_6382:
    inc bc
    inc b
    dec c
    inc de
    inc b
    inc bc
    dec e
    ld bc, $1300
    inc de

jr_014_638d:
    inc b
    ld de, $2118
    ld c, $0f
    inc b
    ld de, $1300
    inc b
    inc bc
    dec e

jr_014_639a:
    dec b
    dec bc
    nop
    ld [de], a
    rlca
    dec bc
    ld [$0706], sp
    inc de
    jr nz, jr_014_63c5

    inc de
    rlca
    ld [$1a12], sp
    inc bc
    ld de, $1600
    inc b
    ld de, $081a
    ld [de], a
    dec e
    inc d
    ld [de], a
    inc d
    nop
    dec bc
    dec bc
    jr jr_014_63d7

    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    dec c

jr_014_63c5:
    ld [$0706], sp
    inc de
    ld a, [de]
    inc de
    nop
    ld bc, $040b
    jr nz, jr_014_63f0

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop

jr_014_63d7:
    ld a, [de]
    rrca
    dec bc
    nop
    ld [$1d0d], sp
    ld [bc], a
    nop
    ld de, $0103
    ld c, $00
    ld de, $1a03
    ld bc, $170e
    jr nz, @+$21

    inc bc
    nop
    dec c

jr_014_63f0:
    dec c
    jr @+$1c

    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [de]
    inc c
    inc d
    ld [de], a
    inc de
    ld bc, $1a04
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld de, $0608
    rlca
    inc de
    dec e
    rlca
    nop
    dec c
    inc bc
    ld a, [de]
    inc c
    nop
    dec c
    daa
    ld a, [de]
    ld [$1a05], sp
    inc de
    rlca
    nop
    inc de
    dec e
    ld [$1a12], sp
    ld [de], a
    ld c, $25
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    ld d, $07
    nop
    inc de
    dec e
    ld [$1a12], sp
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $08
    dec c
    ld b, $1a
    ld d, $08
    inc de
    rlca
    dec e
    nop
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    ld a, [de]
    ld c, $05
    dec b
    ld [$0402], sp
    dec e
    ld [$1a0d], sp
    nop
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    inc b
    ld de, $2812
    rra
    inc c
    ld c, $11
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    jr jr_014_647c

    inc d
    ld de, $261d
    ld b, $0e
    ld c, $03
    ld h, $1a
    dec bc
    inc d
    ld [bc], a
    ld a, [bc]

jr_014_647c:
    jr nz, @+$22

    jr nz, jr_014_649d

    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    dec c
    ld c, $13
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld de, $0f0e
    dec bc
    inc b
    dec b
    inc de
    ld a, [de]
    ld [$120d], sp
    ld [$0403], sp

jr_014_649d:
    jr nz, jr_014_64be

    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    nop
    inc c
    rrca
    ld a, [de]
    ld [$1d12], sp
    ld [bc], a
    ld de, $0200
    ld a, [bc]
    inc b
    inc bc
    jr nz, jr_014_64d0

    jr @+$10

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]

jr_014_64be:
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    ld [$1a05], sp
    ld [$1a13], sp
    ld d, $00
    ld [de], a
    ld a, [de]

jr_014_64d0:
    dec bc
    ld [$040a], sp
    dec e
    inc de
    rlca
    ld [$1a12], sp
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld c, $06
    ld [$0604], sp
    ld c, $13
    ld a, [de]
    rlca
    ld [$1a12], sp
    rrca
    nop
    ld d, $12
    ld a, [de]
    ld c, $0d
    dec e
    ld [$2013], sp
    ld a, [de]
    rrca
    ld de, $010e
    nop
    ld bc, $180b
    ld a, [de]
    ld d, $00
    ld [de], a
    daa
    rra
    inc de
    rlca
    ld [$1a12], sp
    inc bc
    ld a, [de]
    ld [bc], a
    inc b
    dec bc
    dec bc
    dec e
    ld bc, $1300
    inc de
    inc b
    ld de, $1a18
    rlca
    nop
    ld [de], a
    ld a, [de]
    ld bc, $0604
    inc d
    dec c
    dec e
    inc de
    ld c, $1a
    ld [bc], a
    ld c, $11
    ld de, $030e
    inc b
    jr nz, @+$21

    jr jr_014_6543

    inc d
    ld a, [de]
    dec b
    ld [$1406], sp
    ld de, $1a04
    inc de
    rlca
    nop
    inc de
    dec e

jr_014_6543:
    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1a04
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $0d
    dec c
    inc b
    ld [bc], a
    inc de
    ld [$0d0e], sp
    daa
    ld a, [de]
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld d, $00
    ld [de], a
    ld a, [de]
    rrca
    nop
    jr jr_014_6572

    dec c
    ld b, $1a
    ld c, $05
    dec b
    dec e
    ld [bc], a

jr_014_6572:
    ld c, $14
    ld de, $0408
    ld de, $401a
    jr nc, jr_014_6596

    nop
    dec c
    inc bc
    dec e
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [de]
    rlca
    nop
    inc bc
    ld a, [de]
    inc de
    ld c, $1d
    ld a, [bc]
    dec c
    ld c, $16
    daa
    rra
    inc de

jr_014_6596:
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc d
    ld de, $0e11
    inc d
    dec c
    inc bc
    ld [$060d], sp
    ld [de], a
    dec e
    dec bc
    ld [$0706], sp
    inc de
    ld a, [de]
    inc d
    rrca
    jr nz, jr_014_65cf

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    ld de, $0e1a
    dec bc
    inc bc
    dec e
    rrca
    inc b
    dec c
    ld a, [bc]
    dec c
    ld [$0405], sp
    jr nz, jr_014_65e7

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $000b

jr_014_65cf:
    inc bc
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    inc b
    dec c
    ld a, [bc]
    dec c
    ld [$0405], sp
    ld a, [de]
    ld [$1a12], sp
    ld [de], a
    inc c

jr_014_65e7:
    nop
    dec bc
    dec bc
    dec h
    ld bc, $1314
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0608
    rlca
    inc de
    dec e
    rlca
    nop
    dec c
    inc bc
    ld [de], a
    dec h
    ld a, [de]
    ld [$1a13], sp
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld bc, $1d04
    inc b
    dec b
    dec b
    inc b
    ld [bc], a
    inc de
    ld [$0415], sp
    jr nz, jr_014_6637

    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    dec e
    ld d, $00
    ld [de], a
    ld a, [de]
    ld [$150d], sp
    ld c, $0b
    dec d
    inc b
    inc bc
    ld a, [de]

jr_014_6637:
    ld [$1d0d], sp
    inc b
    dec d
    inc b
    dec c
    ld a, [de]
    inc c
    ld c, $11
    inc b
    ld a, [de]
    ld [de], a
    rlca
    nop
    inc bc
    jr @+$1f

    ld [de], a
    inc de
    inc d
    dec b
    dec b
    ld a, [de]
    inc de
    rlca
    nop
    dec c
    ld a, [de]
    jr jr_014_6665

    inc d
    dec e
    inc de
    rlca
    ld c, $14
    ld b, $07
    inc de
    jr nz, jr_014_667e

    jr jr_014_6672

    inc d

jr_014_6665:
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $161a
    rlca
    ld c, $2a
    ld [de], a

jr_014_6672:
    dec e
    ld [de], a
    ld [$0403], sp
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    ld d, $00
    ld [de], a

jr_014_667e:
    ld a, [de]
    ld c, $0d
    jr z, jr_014_66a2

    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    ld a, [de]
    ld bc, $0011
    ld [de], a
    ld [de], a
    dec e
    ld a, [bc]
    inc b
    jr jr_014_66b1

    ld [$1a12], sp
    inc de
    nop
    ld de, $080d
    ld [de], a
    rlca
    inc b

jr_014_66a2:
    inc bc
    jr nz, @+$21

    inc de
    rlca
    ld [$1a12], sp
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    dec e
    rrca

jr_014_66b1:
    ld de, $090e
    inc b
    ld [bc], a
    inc de
    ld [$040b], sp
    ld a, [de]
    ld d, $00
    ld [de], a
    dec e
    inc bc
    inc b
    ld [de], a
    ld [$0d06], sp
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1d04
    inc d
    ld [de], a
    inc b
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    nop
    ld a, [de]
    jr nz, jr_014_670d

    jr c, jr_014_66f9

    ld [de], a
    rrca
    inc b
    ld [bc], a
    ld [$0b00], sp
    jr nz, jr_014_6704

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_66f9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_6704:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_670d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
