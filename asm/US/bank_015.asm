; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    nop
    ld b, c
    ld d, $41
    ld l, [hl]
    ld b, c
    dec hl
    ld b, d
    ld e, b
    ld b, d
    ld a, e
    ld b, d
    sub c
    ld b, d
    xor [hl]
    ld b, d
    call c, $ff42
    ld b, d
    ld d, $43
    ld h, a
    ld b, e
    xor b
    ld b, e
    ld c, d
    ld b, h
    ld a, d
    ld b, h
    adc h
    ld b, h
    or b
    ld b, h
    ldh a, [c]
    ld b, h
    dec h
    ld b, l
    ld b, a
    ld b, l
    ld h, c
    ld b, l
    add d
    ld b, l
    or c
    ld b, l
    pop hl
    ld b, l
    ld c, $46
    ld d, c
    ld b, [hl]
    ld h, d
    ld b, [hl]
    xor d
    ld b, [hl]
    sbc $46
    inc bc
    ld b, a
    ld c, b
    ld b, a
    ld [hl], b
    ld b, a
    add a
    ld b, a
    call nc, Call_000_3147
    ld c, b
    ld e, c
    ld c, b
    add d
    ld c, b
    xor b
    ld c, b
    db $fd
    ld c, b
    jr z, jr_015_4099

    ld b, e
    ld c, c
    ld e, b
    ld c, c
    ld a, a
    ld c, c
    cp b
    ld c, c
    push af
    ld c, c
    inc [hl]
    ld c, d
    ld [hl], b
    ld c, d
    ld [hl-], a
    ld c, h
    ld d, l
    ld c, h
    ld a, b
    ld c, h
    or a
    ld c, h
    sub $4c
    ld [$754d], sp
    ld c, l
    xor b
    ld c, l
    ld [$384d], a
    ld c, [hl]
    and d
    ld c, [hl]
    ld [$2a4e], a
    ld c, a
    ccf
    ld c, a
    ld [hl], b
    ld c, a
    ld l, e
    ld d, b
    sbc h
    ld d, b
    ldh a, [c]
    ld d, b
    inc [hl]
    ld d, c
    ld d, l
    ld d, c
    ld l, c
    ld d, c
    adc h
    ld d, c
    ret nz

    ld d, c
    ld [$0751], a
    ld d, d
    ld hl, $4b53
    ld d, e
    xor h
    ld d, e
    adc $53
    dec a

jr_015_4099:
    ld d, h
    ld h, $55
    jr c, jr_015_40f3

    inc d
    ld d, [hl]
    dec hl
    ld d, [hl]
    ld b, a
    ld d, [hl]
    push de
    ld d, a
    add hl, de
    ld e, b
    ld l, e
    ld e, b
    jp c, Jump_000_0658

    ld e, c
    ld e, c
    ld e, c
    adc l
    ld e, c
    scf
    ld e, e
    sbc l
    ld e, e
    and $5b
    ld a, [de]
    ld e, h
    ld b, d
    ld e, h
    add a
    ld e, h
    xor a
    ld e, h
    inc a
    ld e, l
    ld h, c
    ld e, l
    add c
    ld e, l
    xor l
    ld e, l
    rst RST_00
    ld e, l
    ld hl, sp+$5d
    jr jr_015_412c

    dec [hl]
    ld e, [hl]
    ld d, b
    ld e, a
    adc e
    ld e, a
    rst RST_38
    ld e, a
    inc a
    ld h, b
    jr c, jr_015_413c

    ld [hl], l
    ld h, d
    sbc h
    ld h, d
    add $62
    ld e, $63
    ld c, h
    ld h, e
    ld a, [hl]
    ld h, e
    sub [hl]
    ld h, e
    xor h
    ld h, e
    ldh [c], a
    ld h, e
    ld hl, $3b64
    ld h, h
    ld h, h
    ld h, h
    and h

jr_015_40f3:
    ld h, h
    ret


    ld h, h
    ldh a, [$ff64]
    ld de, $3665
    ld h, l
    ld e, a
    ld h, l
    adc e
    ld h, l
    jr @+$10

    inc d
    ld a, [de]
    rrca
    ld de, $1204
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $1314
    inc de
    ld c, $0d
    jr nz, jr_015_4135

    jr jr_015_4126

    inc d
    ld a, [de]
    inc de
    ld de, $1a18
    inc de
    ld c, $1a
    ld de, $0d14
    dec h
    dec e

jr_015_4126:
    ld bc, $1314
    ld a, [de]
    rlca
    inc b

jr_015_412c:
    ld a, [de]
    ld [$0c0c], sp
    inc b
    inc bc
    ld [$1300], sp

jr_015_4135:
    inc b
    dec bc
    jr jr_015_413b

    nop
    inc de

jr_015_413b:
    ld [bc], a

jr_015_413c:
    rlca
    inc b
    ld [de], a
    ld a, [de]
    jr jr_015_4150

    inc d
    jr nz, jr_015_4161

    jr jr_015_4155

    inc d
    ld a, [de]
    ld [de], a
    rlca
    ld c, $14
    dec bc
    inc bc
    dec c

jr_015_4150:
    ld a, [hl+]
    inc de
    ld a, [de]
    rlca
    nop

jr_015_4155:
    dec d
    inc b
    inc bc
    ld [$1312], sp
    inc d
    ld de, $0401
    inc bc
    ld a, [de]

jr_015_4161:
    rlca
    ld [$1d12], sp
    ld de, $0004
    inc bc
    ld [$060d], sp
    jr nz, jr_015_418d

    nop
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0d00
    ld b, $04
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    ld [$060d], sp
    dec e
    ld c, $15
    inc b
    ld de, $0e02
    inc c
    inc b
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d

jr_015_418d:
    ld hl, $0b1d
    ld [$040a], sp
    ld a, [de]
    jr jr_015_41a4

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld bc, $0804
    dec c
    ld b, $1d
    ld d, $00
    inc de

jr_015_41a4:
    ld [bc], a
    rlca
    inc b
    inc bc
    daa
    inc e
    jr jr_015_41ba

    inc d
    ld a, [de]
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr @+$1c

    rrca
    inc d
    dec bc
    dec bc

jr_015_41ba:
    dec e
    nop
    ld [de], a
    ld [$0403], sp
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    inc d
    ld de, $0013
    ld [$120d], sp
    dec h
    ld a, [de]
    ld bc, $1314
    dec e
    dec c
    ld c, $01
    ld c, $03
    jr jr_015_41f4

    ld [$1a12], sp
    inc de
    rlca
    inc b
    ld de, $2004
    inc e
    ld h, $08
    ld a, [hl+]
    inc c
    ld a, [de]
    ld b, $04
    inc de
    inc de
    ld [$060d], sp
    ld a, [de]
    inc de
    ld c, $0e

jr_015_41f4:
    dec e
    ld c, $0b
    inc bc
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    ld [de], a
    inc de
    inc d
    dec b
    dec b
    dec h
    ld h, $1a
    jr @+$10

    inc d
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    dec e
    inc c
    ld [$0412], sp
    ld de, $0100
    dec bc
    jr jr_015_4238

    inc de
    ld c, $1d
    jr @+$10

    inc d
    ld de, $0412
    dec bc
    dec b
    jr nz, jr_015_424a

    jr jr_015_423b

    inc d
    ld a, [de]
    ld de, $0f04
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    inc de

jr_015_4238:
    rlca
    inc b
    dec e

jr_015_423b:
    ld bc, $1300
    inc de
    inc b
    ld de, $0408
    ld [de], a
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca

jr_015_424a:
    inc b
    dec e
    dec b
    dec bc
    nop
    ld [de], a
    rlca
    dec bc
    ld [$0706], sp
    inc de
    jr nz, jr_015_4277

    inc de
    rlca
    inc b
    ld de, $1a04
    nop
    ld de, $1a04
    nop
    dec bc
    ld de, $0004
    inc bc
    jr @+$1f

    ld bc, $1300
    inc de
    inc b
    ld de, $0408
    ld [de], a
    ld a, [de]
    ld [$1a0d], sp

jr_015_4277:
    ld [$2013], sp
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    dec bc
    nop
    ld [de], a
    rlca
    dec bc
    ld [$0706], sp
    inc de
    dec e
    ld [$1a12], sp
    ld c, $0d
    jr nz, jr_015_42b0

    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    dec bc
    nop
    ld [de], a
    rlca
    dec bc
    ld [$0706], sp
    inc de
    ld a, [hl+]
    ld [de], a
    dec e
    dec bc
    ld [$0706], sp
    inc de
    ld a, [de]
    inc bc
    ld [$120c], sp
    jr nz, jr_015_42cd

    inc de
    rlca

jr_015_42b0:
    inc b
    ld a, [de]
    ld [de], a
    ld [$0d06], sp
    ld a, [de]
    ld de, $0004
    inc bc
    ld [de], a
    dec e
    ld h, $0f
    ld c, $0b
    ld [$0402], sp
    ld h, $1a
    ld [$1a0d], sp
    ld bc, $0608
    dec h

jr_015_42cd:
    dec e
    ld bc, $0b0e
    inc bc
    ld a, [de]
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $2012
    rra
    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c
    dec bc
    jr @+$27

    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec b
    dec bc
    nop
    ld [de], a
    rlca
    dec bc
    ld [$0706], sp
    inc de
    ld a, [de]
    ld b, $0e
    inc b
    ld [de], a
    dec e
    ld c, $14
    inc de
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    dec bc
    nop
    ld [de], a
    rlca
    dec bc
    ld [$0706], sp
    inc de
    dec e
    ld [$1a12], sp
    ld c, $05
    dec b
    jr nz, jr_015_4335

    nop
    ld a, [de]
    ld [bc], a
    ld c, $0f
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $0016
    jr jr_015_4355

jr_015_4335:
    inc e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    ld b, $14
    ld [$130b], sp
    jr @+$1f

    ld b, $0b
    nop
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    dec h
    ld a, [de]
    jr @+$10

    inc d

jr_015_4355:
    dec e
    inc bc
    inc b
    ld [bc], a
    ld [$0403], sp
    ld a, [de]
    inc de
    ld c, $1a
    ld de, $0d14
    jr nz, @+$22

    jr nz, jr_015_4386

    jr jr_015_4377

    inc d
    ld a, [de]
    inc de
    inc d
    ld de, $1a0d
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e

jr_015_4377:
    dec b
    dec bc
    nop
    ld [de], a
    rlca
    dec bc
    ld [$0706], sp
    inc de
    dec h
    ld a, [de]
    ld bc, $1314

jr_015_4386:
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1300
    inc de
    inc b
    ld de, $0408
    ld [de], a
    dec e
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $131a
    ld c, $1a
    ld bc, $1a04
    inc bc
    inc b
    nop
    inc bc
    jr nz, jr_015_43c7

    dec bc
    ld [$040a], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $121d
    nop
    ld [$2503], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $1a04
    inc c
    inc d
    ld [de], a

jr_015_43c7:
    inc de
    dec e
    ld bc, $1a04
    nop
    ld a, [de]
    ld de, $0204
    ld c, $11
    inc bc
    ld a, [de]
    ld c, $05
    dec e
    inc c
    ld c, $0d
    inc b
    jr jr_015_43f8

    inc de
    ld de, $0d00
    ld [de], a
    nop
    ld [bc], a
    inc de
    ld [$0d0e], sp
    ld [de], a
    ld [de], a
    ld c, $0c
    inc b
    ld d, $07
    inc b
    ld de, $2004
    inc e
    ld [$1a05], sp

jr_015_43f8:
    jr jr_015_4408

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    dec b
    ld [$030d], sp
    dec e
    inc de
    rlca
    nop

jr_015_4408:
    inc de
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    inc c
    nop
    jr jr_015_4415

    inc b

jr_015_4415:
    dec e
    jr jr_015_4426

    inc d
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    ld bc, $1a04
    nop
    ld bc, $040b
    ld a, [de]
    inc de

jr_015_4426:
    ld c, $1d
    inc de
    ld de, $0200
    ld a, [bc]
    ld a, [de]
    inc bc
    ld c, $16
    dec c
    dec e
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld sp, $3231
    ld a, [de]
    ld bc, $0608
    dec e
    ld c, $0d
    inc b
    ld [de], a
    daa
    rra
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $000b
    inc bc
    inc b
    dec e
    dec b
    ld c, $0b
    inc bc
    inc b
    inc bc
    ld a, [de]
    ld [$250d], sp
    ld a, [de]
    ld [$2a13], sp
    ld [de], a
    dec e
    dec c
    inc b
    rla
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    inc d
    ld [de], a
    inc b
    dec bc
    inc b
    ld [de], a
    ld [de], a
    jr nz, jr_015_4499

    jr jr_015_448a

    inc d
    ld a, [de]
    dec bc
    ld c, $00
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    dec c

jr_015_448a:
    jr nz, jr_015_44ab

    inc de
    rlca
    inc b
    ld de, $1a04
    nop
    ld de, $1a04
    ld c, $0d
    dec bc

jr_015_4499:
    jr jr_015_44b5

    ld [hl], $1d
    ld [bc], a
    rlca
    nop
    inc c
    ld bc, $1104
    ld [de], a
    ld a, [de]
    ld [$1a0d], sp
    nop
    ld a, [de]

jr_015_44ab:
    jr nz, jr_015_44e0

    jr c, @+$29

    rra
    jr jr_015_44c0

    inc d
    ld a, [de]
    inc de

jr_015_44b5:
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    nop
    ld [$250c], sp
    ld a, [de]
    rrca
    inc d

jr_015_44c0:
    dec bc
    dec bc
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0608
    ld b, $04
    ld de, $2020
    jr nz, jr_015_44ee

    nop
    dec c
    inc bc
    jr nz, jr_015_44f7

    jr nz, jr_015_44f3

    ld [bc], a
    dec bc
    ld [$0a02], sp
    jr z, jr_015_4507

jr_015_44e0:
    inc e
    rlca
    inc c
    inc c
    dec h
    ld a, [de]
    dec c
    ld c, $1a
    ld bc, $0b14
    dec bc
    inc b

jr_015_44ee:
    inc de
    ld [de], a
    daa
    rra
    inc de

jr_015_44f3:
    rlca
    ld [$1a12], sp

jr_015_44f7:
    ld [$0d12], sp
    ld a, [hl+]
    inc de
    ld a, [de]
    nop
    ld a, [de]
    inc de
    ld c, $18
    daa
    inc e
    rrca
    dec bc
    nop

jr_015_4507:
    jr jr_015_4511

    dec c
    ld b, $1a
    ld d, $08
    inc de
    rlca
    ld a, [de]

jr_015_4511:
    ld b, $14
    dec c
    ld [de], a
    dec e
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld bc, $1a04
    ld [de], a
    inc de
    inc d
    rrca
    ld [$2703], sp
    rra
    ld [bc], a
    ld c, $0e
    dec bc
    ld a, [de]
    rrca
    inc b
    ld c, $0f
    dec bc
    inc b
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    dec e
    rrca
    dec bc
    nop
    jr jr_015_4556

    ld d, $08
    inc de
    rlca
    ld a, [de]
    ld b, $14
    dec c
    ld [de], a
    daa
    rra
    jr jr_015_4557

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [bc], a
    nop
    ld de, $1811

jr_015_4556:
    dec e

jr_015_4557:
    nop
    dec c
    jr jr_015_4575

    inc c
    ld c, $11
    inc b
    jr nz, @+$21

    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c
    dec bc
    jr jr_015_4584

    inc de
    ld d, $0e
    ld a, [de]
    inc c
    inc b
    dec c
    dec e
    ld bc, $0e0b

jr_015_4575:
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    jr jr_015_4588

    inc d
    ld de, $161a
    nop
    jr jr_015_45a1

    rra
    jr jr_015_4592

jr_015_4584:
    inc d
    ld a, [de]
    rrca
    inc d

jr_015_4588:
    inc de
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a

jr_015_4592:
    ld c, $00
    inc de
    jr nz, jr_015_45b3

    rlca
    inc c
    inc c
    jr nz, @+$22

    jr nz, @+$1c

    db $10
    inc d
    nop

jr_015_45a1:
    dec bc
    ld [$1813], sp
    dec e
    rrca
    ld c, $0b
    jr @+$06

    ld [de], a
    inc de
    inc b
    ld de, $1f27
    ld d, $07

jr_015_45b3:
    jr jr_015_45da

    ld a, [de]
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    jr jr_015_45cb

    inc d
    ld de, $051d
    nop
    dec d
    ld c, $11
    ld [$0413], sp
    ld a, [de]
    ld c, $0b

jr_015_45cb:
    inc bc
    dec e
    rlca
    nop
    inc d
    dec c
    inc de
    dec h
    ld a, [de]
    add hl, bc
    ld c, $04
    ld a, [hl+]
    ld [de], a
    dec e

jr_015_45da:
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld a, [de]
    ld [$1d0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    add hl, bc
    ld c, $04
    ld a, [hl+]
    ld [de], a
    dec e
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    ld [$1a12], sp
    inc b
    inc c
    rrca
    inc de
    jr jr_015_462d

    rra
    ld bc, $000e
    ld de, $1203
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    ld bc, $0404
    dec c
    dec e
    dec c
    nop
    ld [$040b], sp
    inc bc
    ld a, [de]
    ld c, $15
    inc b
    ld de, $131a
    rlca

jr_015_462d:
    inc b
    dec e
    rlca
    inc d
    ld b, $04
    ld a, [de]
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld c, $16
    dec e
    ld c, $05
    ld a, [de]
    add hl, bc
    ld c, $04
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    jr nz, jr_015_4670

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    nop
    inc c
    rrca
    rrca
    ld c, $12
    inc de
    jr nz, jr_015_4681

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc c
    nop
    dec c
    rlca
    ld c, $0b
    inc b

jr_015_4670:
    dec h
    dec e
    ld [de], a
    ld c, $0c
    inc b
    inc bc
    nop
    jr jr_015_4694

    inc de
    ld c, $1a
    ld bc, $1d04
    inc bc

jr_015_4681:
    inc d
    ld bc, $0401
    inc bc
    ld a, [de]
    rrca
    inc b
    ld de, $0e12
    dec c
    rlca
    ld c, $0b
    inc b
    dec h
    nop
    inc de

jr_015_4694:
    ld a, [de]
    dec bc
    inc b
    nop
    ld [de], a
    inc de
    ld a, [de]
    ld [$1d0d], sp
    ld [bc], a
    nop
    dec bc
    ld [$0e05], sp
    ld de, $080d
    nop
    daa
    rra
    jr jr_015_46ba

    inc d
    ld de, $161a
    nop
    jr jr_015_46cd

    ld [$1d12], sp
    ld bc, $0e0b
    ld [bc], a

jr_015_46ba:
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]
    ld bc, $1a18
    nop
    ld a, [de]
    rlca
    inc d
    ld b, $04
    dec e
    ld [bc], a
    ld c, $0d
    ld [de], a
    inc de

jr_015_46cd:
    ld de, $0214
    inc de
    ld [$0d0e], sp
    dec e
    ld bc, $1100
    ld de, $0408
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    nop
    dec bc
    dec bc
    inc b
    jr @+$18

    nop
    jr jr_015_470c

    ld bc, $0704
    ld [$030d], sp
    ld a, [de]
    add hl, bc
    ld c, $04
    ld a, [hl+]
    ld [de], a
    dec e
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    jr nz, jr_015_4722

    jr jr_015_4713

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de

jr_015_470c:
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    dec e
    nop

jr_015_4713:
    dec c
    jr @+$15

    rlca
    ld [$060d], sp
    ld a, [de]
    inc b
    dec bc
    ld [de], a
    inc b
    jr nz, jr_015_473d

    inc de

jr_015_4722:
    rlca
    inc b
    ld de, $1a04
    nop
    ld de, $1a04
    inc de
    ld c, $0e
    ld a, [de]
    inc c
    nop
    dec c
    jr jr_015_4747

    rlca
    ld [$060d], sp
    ld [de], a
    ld a, [de]
    ld c, $0f
    inc b

jr_015_473d:
    dec c
    dec e
    nop
    dec bc
    ld de, $0004
    inc bc
    jr jr_015_476e

jr_015_4747:
    rra
    jr @+$10

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    inc d
    ld [de], a
    inc b
    dec e
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]
    jr jr_015_4770

    inc d
    dec e
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    rlca
    nop
    dec d
    inc b

jr_015_476e:
    daa
    rra

jr_015_4770:
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    rlca
    ld c, $0b
    inc b
    ld a, [de]
    ld [$1d12], sp
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    inc bc
    jr nz, jr_015_47a6

    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    rlca
    nop
    ld [$210d], sp
    dec e
    dec bc
    ld [$0a0d], sp
    ld a, [de]
    dec b
    inc b
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    inc de
    rlca
    inc b

jr_015_47a6:
    ld de, $1d04
    inc de
    ld c, $1a
    ld a, [bc]
    inc b
    inc b
    rrca
    ld a, [de]
    ld a, [bc]
    ld [$1203], sp
    ld a, [de]
    ld c, $14
    inc de
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $0d
    ld [de], a
    inc de
    ld de, $0214
    inc de
    ld [$0d0e], sp
    ld a, [de]
    nop
    ld de, $0004
    jr nz, jr_015_47f3

    ld de, $0f04
    ld c, $11
    inc de
    ld [de], a
    ld a, [de]
    ld c, $05
    dec e
    ld [bc], a
    ld de, $020e
    ld c, $03
    ld [$040b], sp
    ld [de], a
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc b

jr_015_47f3:
    ld d, $04
    ld de, $1a12
    rrca
    ld de, $0c0e
    rrca
    inc de
    inc b
    inc bc
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    nop
    dec c
    ld [$0013], sp
    inc de
    ld [$0d0e], sp
    dec e
    inc bc
    inc b
    rrca
    nop
    ld de, $0c13
    inc b
    dec c
    inc de
    ld a, [de]
    inc de
    ld c, $1d
    ld [de], a
    inc b
    nop
    dec bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    rlca
    ld c, $0b
    inc b
    ld [de], a
    jr nz, jr_015_4850

    inc de
    rlca
    ld [$1a12], sp
    inc bc
    nop
    ld de, $1a0a
    nop
    dec bc
    dec bc
    inc b
    jr jr_015_485e

    ld [bc], a
    ld c, $0d
    dec c
    inc b
    ld [bc], a
    inc de
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b

jr_015_4850:
    dec e
    ld [de], a
    inc de
    ld de, $0404
    inc de
    jr nz, jr_015_4878

    inc de
    rlca
    inc b
    ld a, [de]
    inc c

jr_015_485e:
    nop
    dec c
    rlca
    ld c, $0b
    inc b
    dec e
    rrca
    ld de, $010e
    nop
    ld bc, $180b
    ld a, [de]
    dec bc
    inc b
    nop
    inc bc
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    inc de

jr_015_4878:
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    ld d, $04
    ld de, $1f20
    ld [$1a13], sp
    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1a04
    ld [de], a
    inc de
    inc d
    ld de, $1803
    inc b
    dec c
    ld c, $14
    ld b, $07
    ld a, [de]
    inc de
    ld c, $1a
    ld [bc], a
    dec bc
    ld [$010c], sp
    dec e
    ld c, $0d
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc b
    inc de
    nop
    dec bc
    dec e
    rrca
    dec bc
    nop
    inc de
    dec b
    ld c, $11
    inc c
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    dec bc
    nop
    inc bc
    inc bc
    inc b
    ld de, $1a12
    nop
    ld de, $1d04
    ld [bc], a
    ld c, $0d
    dec c
    inc b
    ld [bc], a
    inc de
    inc b
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    ld [de], a
    inc d
    ld [bc], a
    rlca
    dec e
    nop
    ld a, [de]
    ld d, $00
    jr jr_015_48fe

    nop
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    dec b
    ld c, $11
    inc c
    ld a, [de]
    nop
    dec b
    ld [$0411], sp
    ld a, [de]
    inc b
    ld [de], a
    ld [bc], a
    nop
    rrca
    inc b
    jr nz, jr_015_491c

    inc de

jr_015_48fe:
    rlca
    inc b
    ld a, [de]
    nop
    dec bc
    dec bc
    inc b
    jr @+$1f

    ld [bc], a
    ld c, $0d
    inc de
    ld [$140d], sp
    inc b
    ld [de], a
    ld a, [de]
    dec b
    inc d
    ld de, $0713
    inc b
    ld de, $031d
    ld c, $16

jr_015_491c:
    dec c
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld d, $00
    jr @+$22

    rra
    ld d, $07
    inc b
    ld de, $1a04
    ld [de], a
    rlca
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    jr jr_015_4945

    inc d
    dec e
    dec bc
    inc b
    nop
    dec d
    inc b
    ld a, [de]
    ld [$2813], sp
    rra
    ld d, $07

jr_015_4945:
    inc b
    ld de, $1a04
    ld [de], a
    rlca
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    jr jr_015_4960

    inc d
    dec e
    ld b, $0e
    jr z, jr_015_4977

    jr jr_015_4968

    inc d
    ld a, [de]
    nop
    ld de, $1a04

jr_015_4960:
    ld c, $0d
    ld a, [de]
    nop
    dec e
    ld de, $1300

jr_015_4968:
    rlca
    inc b
    ld de, $121a
    rlca
    nop
    ld a, [bc]
    jr jr_015_498c

    dec b
    ld [$0411], sp
    dec e

jr_015_4977:
    inc b
    ld [de], a
    ld [bc], a
    nop
    rrca
    inc b
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld c, $16
    ld a, [de]
    rlca
    nop

jr_015_498c:
    ld [de], a
    dec e
    ld bc, $0404
    dec c
    ld a, [de]
    ld bc, $000e
    ld de, $0403
    inc bc
    ld a, [de]
    inc d
    rrca
    jr nz, @+$1f

    ld c, $0d
    inc b
    ld a, [de]
    ld bc, $000e
    ld de, $1a03
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1d12
    dec bc
    ld c, $0e
    ld [de], a
    inc b
    jr nz, jr_015_49d7

    inc de
    rlca
    inc b
    ld de, $1a04
    ld [$1a12], sp
    dec c
    ld c, $16
    ld a, [de]
    nop
    dec c
    dec e
    ld c, $0f
    inc b
    dec c
    ld [$060d], sp
    ld a, [de]
    dec bc
    nop
    ld de, $0406
    dec e
    inc b

jr_015_49d7:
    dec c
    ld c, $14
    ld b, $07
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    jr jr_015_49f1

    inc d
    ld a, [de]
    inc de
    ld c, $1d
    dec b
    ld [$1a13], sp
    inc de
    rlca
    ld de, $140e

jr_015_49f1:
    ld b, $07
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $140e
    ld b, $07
    ld a, [de]
    ld d, $0e
    ld c, $03
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    ld [$1a12], sp
    ld bc, $000e
    ld de, $1a03
    ld [$1d12], sp
    ld [bc], a
    ld c, $15
    inc b
    ld de, $0304
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    add hl, bc
    nop
    ld b, $06
    inc b
    inc bc
    ld a, [de]
    ld [de], a
    rrca
    dec bc
    ld [$130d], sp
    inc b
    ld de, $2012
    rra
    inc de
    rlca
    ld [$1a12], sp
    ld c, $05
    dec b
    inc b
    ld de, $1d12
    inc b
    dec c
    inc de
    ld de, $0d00
    ld [bc], a
    inc b
    ld a, [de]
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc b
    ld [bc], a
    ld c, $0d
    inc bc
    ld a, [de]
    ld [de], a
    inc de
    ld c, $11
    jr jr_015_4a79

    ld c, $05
    ld a, [de]
    dec e
    add hl, bc
    ld c, $04
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    jr nz, @+$21

    ld c, $0d
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca

jr_015_4a79:
    inc b
    ld a, [de]
    inc de
    rlca
    inc d
    ld b, $12
    dec e
    ld b, $11
    nop
    ld bc, $1a12
    jr jr_015_4a97

    inc d
    ld a, [de]
    ld de, $140e
    ld b, $07
    dec bc
    jr @+$1f

    ld bc, $1a18
    inc de

jr_015_4a97:
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0b
    dec bc
    nop
    ld de, $001a
    dec c
    inc bc
    dec e
    ld [de], a
    nop
    jr jr_015_4abb

    dec h
    ld a, [de]
    ld h, $03
    inc b
    ld de, $1a04
    jr jr_015_4ac1

    inc d
    dec e
    nop
    ld de, $2704
    inc e
    inc bc

jr_015_4abb:
    nop
    ld a, [de]
    ld bc, $120e
    ld [de], a

jr_015_4ac1:
    ld a, [de]
    ld d, $0e
    inc d
    dec bc
    inc bc
    nop
    ld a, [de]
    rlca
    nop
    inc bc
    inc d
    ld [de], a
    ld a, [de]
    ld [de], a
    ld a, [bc]
    ld [$0d0d], sp
    inc b
    inc bc
    ld a, [de]
    nop
    dec bc
    ld [$0415], sp
    dec e
    ld [$1a05], sp
    ld d, $04
    ld a, [de]
    dec bc
    ld c, $12
    inc de
    ld a, [de]
    jr jr_015_4aea

jr_015_4aea:
    daa
    dec e
    ld de, $0608
    rlca
    inc de
    ld a, [de]
    inc c
    ld c, $0e
    ld [de], a
    inc b
    jr z, jr_015_4b1f

    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0608
    ld b, $04
    ld de, $0e1a
    dec b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de
    ld d, $0e
    ld a, [de]
    ld de, $0f04
    dec bc
    ld [$1204], sp
    dec h
    dec e
    ld h, $03
    inc d
    rlca
    jr nz, jr_015_4b3f

jr_015_4b1f:
    jr nz, jr_015_4b3b

    jr jr_015_4b27

    nop
    rlca
    daa
    dec e

jr_015_4b27:
    inc de
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld de, $0608
    rlca
    inc de
    dec e
    ld [de], a
    rrca
    ld [$040a], sp
    daa
    inc e

jr_015_4b3b:
    nop
    rlca
    dec h
    ld a, [de]

jr_015_4b3f:
    ld [de], a
    rrca
    ld [$040a], sp
    jr z, jr_015_4b60

    ld [$1a12], sp
    ld [$1d13], sp
    inc c
    jr jr_015_4b69

    inc de
    inc d
    ld de, $1a0d
    inc de
    rlca
    ld [$1d12], sp
    inc de
    ld [$040c], sp
    jr z, @+$28

    inc e

jr_015_4b60:
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld [$1211], sp
    inc de

jr_015_4b69:
    ld a, [de]
    inc de
    rlca
    inc d
    ld b, $1d
    ld de, $0f04
    dec bc
    ld [$1204], sp
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec e
    ld [de], a
    dec c
    ld [$0a02], sp
    inc b
    ld de, $1a25
    ld h, $18
    nop
    rlca
    dec e
    inc c
    ld c, $0e
    ld [de], a
    inc b
    dec h
    ld a, [de]
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    jr jr_015_4ba8

    inc d
    ld de, $131d
    inc d
    ld de, $200d
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]

jr_015_4ba8:
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    dec e
    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    ld [$1a13], sp
    inc de
    ld c, $0e
    dec e
    inc c
    inc b
    ld [de], a
    ld [de], a
    jr jr_015_4be0

    ld h, $1c
    rlca
    inc b
    ld a, [de]
    inc de
    inc d
    ld de, $120d
    ld a, [de]
    inc de
    ld c, $1a
    jr jr_015_4bde

    inc d
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    nop
    jr jr_015_4bec

    dec h
    ld a, [de]
    ld h, $12

jr_015_4bde:
    ld c, $11

jr_015_4be0:
    ld de, $1d18
    ld bc, $0114
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]

jr_015_4bec:
    ld c, $11
    inc bc
    inc b
    ld de, $1a12
    ld [$0e12], sp
    ld de, $0403
    ld de, $1a12
    nop
    dec c
    inc bc
    ld a, [de]
    jr jr_015_4c10

    inc d
    ld a, [de]
    ld d, $00
    ld [de], a
    ld [de], a
    dec c
    inc b
    nop
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]

jr_015_4c10:
    nop
    ld de, $140e
    dec c
    inc bc
    dec e
    ld d, $04
    ld de, $1a04
    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    rlca
    ld c, $14
    dec bc
    inc bc
    dec c
    ld a, [hl+]
    inc de
    ld c, $14
    ld b, $07
    inc de
    nop
    jr nz, jr_015_4c57

    rra
    jr @+$10

    inc d
    ld a, [de]
    inc c
    nop
    dec c
    nop
    ld b, $04
    ld a, [de]
    inc de
    ld c, $1a
    rrca
    ld de, $1d18
    ld c, $0d
    inc b
    ld a, [de]
    ld bc, $000e
    ld de, $1a03
    dec bc
    ld c, $0e
    ld [de], a
    inc b
    jr nz, jr_015_4c74

    inc de
    rlca

jr_015_4c57:
    inc b
    ld a, [de]
    ld bc, $000e
    ld de, $1203
    ld a, [de]
    ld bc, $0e0b
    ld [bc], a
    ld a, [bc]
    dec e
    jr jr_015_4c76

    inc d
    ld de, $161a
    nop
    jr jr_015_4c89

    inc de
    rlca
    ld de, $140e

jr_015_4c74:
    ld b, $07

jr_015_4c76:
    jr nz, jr_015_4c97

    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    nop
    inc bc
    inc bc
    inc b
    ld de, $0b1a
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e

jr_015_4c89:
    inc c
    inc d
    ld [bc], a
    rlca
    ld a, [de]
    inc de
    ld c, $0e
    ld a, [de]
    ld de, $0208
    ld a, [bc]
    inc b

jr_015_4c97:
    inc de
    jr jr_015_4cb7

    dec b
    ld c, $11
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    inc de
    ld c, $1a
    ld [bc], a
    dec bc
    ld [$010c], sp
    dec e
    nop
    dec c
    jr jr_015_4cc9

    rlca
    ld [$0706], sp
    inc b
    ld de, $1f20

jr_015_4cb7:
    jr jr_015_4cc7

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    rrca
    inc d

jr_015_4cc7:
    dec bc
    dec bc

jr_015_4cc9:
    ld c, $05
    dec b
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $000e
    ld de, $2703
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $000e
    ld de, $1a03
    dec b
    nop
    dec bc
    dec bc
    ld [de], a
    ld a, [de]
    inc de
    ld c, $13
    rlca
    inc b
    ld a, [de]
    dec b
    ld [$0411], sp
    ld a, [de]
    inc b
    ld [de], a
    ld [bc], a
    nop
    rrca
    inc b
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    dec bc
    nop
    inc de
    inc de
    inc b
    ld de, $1f20
    ld [de], a
    inc c
    nop
    ld [bc], a
    ld a, [bc]
    daa
    ld a, [de]
    rrca
    ld c, $16
    daa
    inc e
    jr jr_015_4d24

    inc d
    ld a, [de]
    ld bc, $0004
    inc de
    ld a, [de]
    inc d
    rrca
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de

jr_015_4d24:
    rlca
    inc b
    rrca
    ld c, $0e
    ld de, $1a25
    inc bc
    inc b
    dec b
    inc b
    dec c
    ld [de], a
    inc b
    dec bc
    inc b
    ld [de], a
    ld [de], a
    dec e
    ld bc, $000e
    ld de, $2003
    jr nz, jr_015_4d60

    inc e
    nop
    dec c
    inc bc
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]
    nop
    ld a, [de]
    dec c
    nop
    ld [$1d0b], sp
    ld [de], a
    inc de
    inc d
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld [$1a0d], sp
    jr jr_015_4d69

    inc d
    ld de, $071a
    nop

jr_015_4d60:
    dec c
    inc bc
    dec b
    ld c, $11
    ld a, [de]
    jr @+$10

    inc d

jr_015_4d69:
    ld de, $131a
    ld de, $140e
    ld bc, $040b
    ld [de], a
    daa
    rra
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec bc
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    jr @+$10

    inc d
    ld de, $121d
    inc de
    ld de, $0d04
    ld b, $13
    rlca
    dec h
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld b, $08
    dec d
    inc b
    nop
    ld a, [de]
    inc c
    ld [$0706], sp
    inc de
    jr jr_015_4dbb

    rlca
    inc b
    nop
    dec d
    inc b
    daa
    rra
    jr jr_015_4db8

    inc d
    ld a, [de]
    inc de
    ld de, $1a18
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec bc
    dec bc

jr_015_4db8:
    dec e
    jr @+$10

jr_015_4dbb:
    inc d
    ld de, $121a
    inc de
    ld de, $0d04
    ld b, $13
    rlca
    jr nz, jr_015_4de8

    jr nz, @+$1e

    jr nz, jr_015_4dec

    jr nz, jr_015_4dcf

    inc d

jr_015_4dcf:
    inc de
    ld a, [de]
    ld [$1a13], sp
    ld [de], a
    inc de
    ld [$0b0b], sp
    dec e
    ld d, $0e
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    ld c, $05
    dec b

jr_015_4de8:
    daa
    rra
    jr jr_015_4dfa

jr_015_4dec:
    inc d
    ld a, [de]
    nop
    inc de
    inc de
    inc b
    inc c
    rrca
    inc de
    ld a, [de]
    inc de
    ld c, $1d
    dec bc

jr_015_4dfa:
    inc b
    dec d
    inc b
    ld de, $0600
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $000e
    ld de, $1603
    ld [$0713], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    dec c
    ld [$0405], sp
    jr nz, jr_015_4e38

    ld bc, $1314
    ld a, [de]
    ld [$1a13], sp
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    dec e
    ld [de], a
    inc b
    inc b
    inc c
    ld a, [de]
    inc de
    ld c, $1a
    ld d, $0e
    ld de, $200a
    rra

jr_015_4e38:
    jr jr_015_4e48

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    dec c
    dec e
    ld c, $05
    dec b

jr_015_4e48:
    ld [$0402], sp
    jr nz, jr_015_4e69

    ld [$1a0d], sp
    dec b
    nop
    ld [bc], a
    inc de
    ld a, [de]
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    nop
    inc c
    inc b
    ld a, [de]
    ld c, $05
    dec b
    ld [$0402], sp

jr_015_4e69:
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    jr jr_015_4e7f

    inc d
    ld a, [de]
    dec b
    ld [$1211], sp
    inc de
    dec e
    inc bc
    ld [$0212], sp
    ld c, $15

jr_015_4e7f:
    inc b
    ld de, $0304
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    inc b
    nop
    inc bc
    ld a, [de]
    ld bc, $030e
    jr jr_015_4eac

    ld c, $05
    ld a, [de]
    add hl, bc
    ld c, $04
    jr @+$1f

    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    jr nz, jr_015_4ec1

    jr jr_015_4eb2

    inc d
    ld a, [de]
    nop
    dec bc
    inc c
    ld c, $12
    inc de

jr_015_4eac:
    ld a, [de]
    inc b
    ld [de], a
    ld [bc], a
    nop
    rrca

jr_015_4eb2:
    inc b
    jr nz, @+$1e

    ld [de], a
    ld c, $0c
    inc b
    rlca
    ld c, $16
    ld a, [de]
    jr jr_015_4ecd

    inc d
    ld a, [de]

jr_015_4ec1:
    ld [de], a
    rlca
    ld c, $14
    dec bc
    inc bc
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    ld [bc], a

jr_015_4ecd:
    ld c, $15
    inc b
    ld de, $0304
    ld a, [de]
    jr jr_015_4ee4

    inc d
    ld de, $131d
    ld de, $0200
    ld a, [bc]
    ld [de], a
    ld a, [de]
    ld bc, $1304
    inc de

jr_015_4ee4:
    inc b
    ld de, $2020
    jr nz, jr_015_4f09

    rlca
    nop
    dec d
    ld [$060d], sp
    ld a, [de]
    ld de, $0c04
    ld c, $15
    inc b
    inc bc
    ld a, [de]
    nop
    dec e
    ld bc, $000e
    ld de, $2503
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a

jr_015_4f09:
    ld a, [de]
    nop
    dec e
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    ld a, [de]
    ld [de], a
    rrca
    nop
    ld [bc], a
    inc b
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld bc, $1a04
    ld [de], a
    inc b
    inc b
    dec c
    jr nz, jr_015_4f49

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $080b
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    nop
    ld de, $1d04
    ld c, $0f
    inc b
    dec c
    jr nz, jr_015_4f5e

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    rlca
    nop
    ld de, $1a03

jr_015_4f49:
    inc de
    ld c, $1a
    ld [de], a
    inc b
    inc b
    dec e
    ld c, $14
    inc de
    ld [de], a
    ld [$0403], sp
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de

jr_015_4f5e:
    rlca
    inc b
    dec e
    ld bc, $080b
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    inc bc
    jr nz, @+$21

    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    inc de
    ld c, $0f
    ld a, [de]
    ld [$1d12], sp
    nop
    ld a, [de]
    rrca
    ld c, $0e
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc bc
    ld de, $0408
    inc bc
    dec e
    ld bc, $0e0b
    ld c, $03
    jr nz, @+$1e

    jr @+$10

    inc d
    ld a, [de]
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    dec e
    dec b
    ld [$030d], sp
    ld [$060d], sp
    ld a, [de]
    add hl, bc
    ld c, $04
    jr @+$1f

    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [de]
    inc bc
    ld de, $0f00
    inc b
    inc bc
    ld a, [de]
    ld c, $15
    inc b
    ld de, $1308
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    ld de, $0404
    dec e
    ld [de], a
    dec bc
    inc d
    ld b, $12
    ld a, [de]
    ld [$1a0d], sp
    rlca
    ld [$200c], sp
    inc e
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [de]
    ld d, $00
    ld [de], a
    ld a, [de]
    jr jr_015_4ffc

    inc d
    ld de, $011d
    ld c, $0e
    ld a, [bc]
    ld [$1a04], sp
    nop
    dec c
    inc bc
    ld a, [de]

jr_015_4ffc:
    jr @+$10

    inc d
    dec e
    ld d, $04
    ld de, $1a04
    nop
    ld a, [de]
    dec bc
    ld c, $14
    ld [de], a
    jr jr_015_502a

    ld b, $00
    inc c
    ld bc, $040b
    ld de, $2020
    jr nz, jr_015_5034

    jr jr_015_5028

    inc d
    ld a, [de]
    ld d, $0e
    inc d
    dec bc
    inc bc
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    dec e
    dec b

jr_015_5028:
    inc b
    dec bc

jr_015_502a:
    inc de
    ld a, [de]
    inc c
    ld c, $11
    inc b
    ld a, [de]
    ld de, $0c04

jr_015_5034:
    ld c, $11
    ld [de], a
    inc b
    dec e
    nop
    inc de
    ld a, [de]
    rlca
    ld [$1a12], sp
    inc c
    inc d
    ld de, $0403
    ld de, $1a25
    ld bc, $1314
    jr jr_015_505b

    inc d
    ld a, [de]
    inc bc
    ld [$1a03], sp
    ld c, $16
    inc b
    ld a, [de]
    rlca
    ld [$1a0c], sp

jr_015_505b:
    nop
    dec e
    dec bc
    ld c, $13
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc c
    ld c, $0d
    inc b
    jr @+$22

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc de
    nop
    ld [$0b0d], sp
    inc b
    ld [de], a
    ld [de], a
    ld hl, $121d
    inc de
    inc b
    inc b
    dec bc
    ld a, [de]
    ld [de], a
    nop
    dec b
    inc b
    ld a, [de]
    inc c
    ld c, $14
    dec c
    inc de
    inc b
    inc bc
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $00
    dec bc
    dec bc
    jr nz, jr_015_50bb

    add hl, bc
    ld c, $04
    jr jr_015_50bb

    ld a, [bc]
    inc b
    rrca
    inc de
    ld a, [de]
    rlca
    ld [$1d12], sp
    ld [$0f0c], sp
    ld c, $11
    inc de
    nop
    dec c
    inc de
    ld a, [de]
    inc de
    rlca
    ld [$060d], sp
    ld [de], a
    dec e

jr_015_50bb:
    rlca
    inc b
    ld de, $2004
    jr nz, jr_015_50e2

    inc e
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [$020d], sp
    dec bc
    inc d
    inc bc
    inc b
    inc bc
    dec e
    nop
    ld a, [de]
    dec bc
    nop
    ld de, $0406
    ld a, [de]
    nop
    inc c
    ld c, $14
    dec c

jr_015_50e2:
    inc de
    ld a, [de]
    ld c, $05
    dec e
    jr jr_015_50f7

    inc d
    ld de, $081a
    ld c, $14
    ld [de], a
    daa
    rra
    dec c
    ld c, $16
    ld a, [de]
    inc de

jr_015_50f7:
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    dec e
    ld [de], a
    inc de
    ld de, $0d00
    ld b, $04
    dec h
    ld a, [de]
    jr jr_015_5116

    inc d
    ld a, [de]
    dec c
    inc b
    dec d
    inc b
    ld de, $0e0d
    inc de
    ld [$0402], sp
    inc bc

jr_015_5116:
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    dec e
    ld a, [bc]
    dec c
    ld c, $01
    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [$1a13], sp
    ld bc, $0504
    ld c, $11
    inc b
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    ld c, $0b
    inc bc
    dec e
    dec b
    nop
    ld [de], a
    rlca
    ld [$0d0e], sp
    inc b
    inc bc
    dec e
    inc de
    inc b
    dec bc
    inc b
    rrca
    rlca
    ld c, $0d
    inc b
    jr nz, jr_015_5174

    nop
    dec c
    ld a, [de]
    ld c, $11
    inc bc
    ld [$000d], sp
    ld de, $1d18
    rrca
    inc b
    dec c
    ld [bc], a
    ld [$200b], sp
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc c
    nop
    dec bc

jr_015_5174:
    dec bc
    dec e
    inc d
    dec c
    inc d
    ld [de], a
    inc d
    nop
    dec bc
    dec bc
    jr @+$1c

    ld [de], a
    rlca
    nop
    rrca
    inc b
    inc bc
    dec e
    ld a, [bc]
    inc b
    jr jr_015_51ab

    rra
    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c
    dec bc
    jr jr_015_51af

    ld [de], a
    inc de
    ld c, $06
    ld [$1d04], sp
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1a12
    ld [$1a0d], sp
    dec b
    ld de, $0d0e

jr_015_51ab:
    inc de
    dec e
    ld c, $05

jr_015_51af:
    ld a, [de]
    jr jr_015_51c0

    inc d
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld b, $11
    ld c, $16
    dec bc
    ld [de], a
    dec h
    rra

jr_015_51c0:
    ld bc, $1804
    ld c, $0d
    inc bc
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    inc bc
    ld c, $0e
    ld de, $081d
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    nop
    ld de, $2a18
    ld [de], a
    dec e
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, jr_015_5209

    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    inc b
    dec c
    ld [bc], a
    ld [$2a0b], sp
    ld [de], a
    ld a, [de]
    dec bc
    inc b
    nop
    inc bc
    dec e
    ld [$1a12], sp
    ld bc, $0e11
    ld a, [bc]
    inc b
    dec c
    jr nz, jr_015_5226

    ld h, $08

jr_015_5209:
    inc de
    ld a, [de]
    ld d, $00
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    ld [de], a
    dec c
    inc d
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld [$130d], sp
    ld c, $1a
    inc bc
    nop
    dec e

jr_015_5226:
    ld bc, $120e
    ld [de], a
    ld a, [hl+]
    ld a, [de]
    ld c, $05
    dec b
    ld [$0402], sp
    dec h
    dec e
    ld de, $0608
    rlca
    inc de
    daa
    jr z, @+$1e

    jr jr_015_5252

    rrca
    dec h
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld d, $07
    nop
    inc de
    dec e
    inc c
    nop
    dec bc
    ld c, $0d

jr_015_5252:
    inc b
    ld a, [de]
    ld [de], a
    nop
    ld [$2003], sp
    ld a, [de]
    ld d, $00
    ld [de], a
    dec e
    jr @+$10

    inc d
    ld a, [de]
    rlca
    ld c, $0f
    ld [$060d], sp
    ld a, [de]
    inc de
    ld c, $1d
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    inc c
    nop
    ld [$1a0b], sp
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc bc
    nop
    inc de
    ld a, [de]
    inc b
    dec d
    ld [$0403], sp
    dec c
    ld [bc], a
    inc b
    jr z, @+$1e

    ld d, $07
    nop
    inc de
    ld a, [de]
    ld d, $04
    ld de, $1a04
    jr jr_015_529c

jr_015_529c:
    ld a, [de]
    ld b, $0e
    dec c
    dec c
    nop
    inc bc
    ld c, $21
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    ld [$1a13], sp
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld [bc], a
    ld c, $0f
    ld [de], a
    ld a, [de]
    ld c, $11
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    jr z, @+$1e

    ld d, $04
    dec bc
    dec bc
    ld a, [de]
    inc bc
    nop
    ld a, [de]
    ld bc, $120e
    ld [de], a
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    dec bc
    ld [$040a], sp
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1d04
    inc de
    rlca
    ld de, $0004
    inc de
    inc b
    dec c
    inc b
    inc bc
    jr nz, jr_015_5310

    jr nz, jr_015_530c

    ld [de], a
    ld c, $1a
    ld [$0e06], sp
    inc de
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld de, $1d04
    ld c, $05
    ld a, [de]
    inc de

jr_015_530c:
    rlca
    inc b
    ld a, [de]
    dec b

jr_015_5310:
    nop
    inc c
    ld [$180b], sp
    dec e
    ld bc, $1214
    ld [$040d], sp
    ld [de], a
    ld [de], a
    daa
    ld h, $1f
    inc de
    rlca
    inc b
    ld a, [de]
    nop
    dec bc
    dec bc
    inc b
    jr @+$18

    nop
    jr jr_015_534b

    ld bc, $0704
    ld [$030d], sp
    ld a, [de]
    add hl, bc
    ld c, $04
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld [$1a12], sp
    dec b
    ld [$130b], sp
    rlca
    jr jr_015_536a

    rra

jr_015_534b:
    inc de
    rlca
    ld [$1a12], sp
    ld b, $00
    ld de, $0001
    ld b, $04
    dec e
    ld [de], a
    inc de
    ld [$0a0d], sp
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld de, $130e
    inc de
    inc b
    dec c
    dec e
    dec b

jr_015_536a:
    ld c, $0e
    inc bc
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    inc bc
    ld [$0212], sp
    nop
    ld de, $0403
    inc bc
    inc bc
    ld de, $0004
    inc c
    ld [de], a
    jr nz, @+$22

    jr nz, jr_015_539f

    ld d, $07
    ld c, $00
    dec h
    dec e
    ld d, $04
    ld de, $1a04
    inc bc
    ld [$1a03], sp
    inc de
    rlca
    nop
    inc de
    dec e
    inc de
    rlca
    ld c, $14
    ld b, $07

jr_015_539f:
    inc de
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    dec b
    ld de, $0c0e
    jr z, @+$21

    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    rlca
    ld c, $14
    dec bc
    inc bc
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld bc, $0404
    dec c
    inc c
    ld c, $11
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld de, $0504
    inc d
    dec bc
    jr nz, jr_015_53ec

    jr nz, jr_015_53ed

    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0e0e
    inc c
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    nop
    ld [de], a
    dec e
    ld [$1a05], sp
    nop
    ld a, [de]
    ld [bc], a
    jr @+$04

    dec bc
    ld c, $0d
    inc b

jr_015_53ec:
    ld a, [de]

jr_015_53ed:
    rlca
    ld [$1d13], sp
    ld [$2013], sp
    jr nz, @+$22

    inc e
    nop
    ld a, [de]
    ld [bc], a
    jr @+$04

    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    dec c
    nop
    inc c
    inc b
    inc bc
    dec e
    ld [de], a
    inc de
    ld c, $06
    ld [$2504], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [$2712], sp
    dec e
    jr jr_015_5428

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld [de], a
    inc de
    ld [$0b0b], sp
    dec e
    ld [de], a
    inc c

jr_015_5428:
    inc b
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec bc
    inc b
    dec e
    ld [de], a
    inc c
    ld c, $0a
    inc b
    jr nz, jr_015_545c

    ld d, $04
    dec bc
    dec bc
    dec h
    ld a, [de]
    jr jr_015_5453

    inc d
    ld a, [de]
    inc de
    rlca
    ld c, $14
    ld b, $07
    inc de
    dec e
    inc de
    rlca
    nop
    inc de

jr_015_5453:
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    ld d, $0e
    inc d

jr_015_545c:
    dec bc
    inc bc
    dec e
    ld bc, $1a04
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1204
    inc de
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    dec e
    inc de
    ld c, $1a
    ld [de], a
    inc de
    nop
    ld de, $1a13
    jr jr_015_548a

    inc d
    ld de, $121d
    inc b
    nop
    ld de, $0702
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]

jr_015_548a:
    inc de
    rlca
    inc b
    dec e
    inc c
    ld c, $0d
    inc b
    jr jr_015_54ae

    nop
    dec c
    inc bc
    dec e
    nop
    rrca
    rrca
    nop
    ld de, $0d04
    inc de
    dec bc
    jr @+$1c

    ld [de], a
    ld c, $1a
    inc bc
    ld [$1d03], sp
    ld [de], a
    ld c, $0c
    inc b

jr_015_54ae:
    ld c, $0d
    inc b
    ld a, [de]
    inc b
    dec bc
    ld [de], a
    inc b
    daa
    inc e
    jr jr_015_54c8

    inc d
    ld de, $131a
    rlca
    ld c, $14
    ld b, $07
    inc de
    ld [de], a
    ld a, [de]
    ld b, $0e

jr_015_54c8:
    dec e
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    dec c
    ld [$0706], sp
    inc de
    nop
    inc de
    ld a, [de]
    add hl, bc
    ld c, $04
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    daa
    dec e
    inc c
    nop
    jr jr_015_54f0

    inc b

jr_015_54f0:
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec c
    inc b
    rla
    inc de
    ld a, [de]
    ld bc, $1204
    inc de
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    inc de
    ld c, $05
    ld [$030d], sp
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    ld d, $07
    nop
    inc de
    dec e
    rlca
    nop
    rrca
    rrca
    inc b
    dec c
    inc b
    inc bc
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc c
    ld c, $0b
    inc bc
    jr jr_015_554d

    ld bc, $170e
    jr nz, @+$21

    ld h, $07
    inc b
    jr @+$1c

    nop
    ld [bc], a
    inc b
    dec h
    ld a, [de]
    inc bc
    nop
    ld a, [de]
    ld bc, $120e
    ld [de], a
    dec e
    ld [de], a
    inc b
    dec c

jr_015_554d:
    inc de
    ld a, [de]
    inc c
    inc b
    jr nz, @+$22

    jr nz, jr_015_5571

    dec c
    ld [$0402], sp
    ld a, [de]
    inc de
    ld de, $0208
    ld a, [bc]
    dec h
    ld a, [de]
    inc de
    ld de, $0818
    dec c
    ld b, $13
    ld c, $1a
    inc de
    inc d
    ld de, $1a0d
    inc bc
    nop

jr_015_5571:
    ld a, [de]
    ld bc, $120e
    ld [de], a
    dec e
    nop
    ld b, $00
    ld [$120d], sp
    inc de
    ld a, [de]
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    daa
    inc e
    ld [de], a
    ld c, $11
    ld de, $1a18
    rrca
    nop
    dec bc
    dec h
    ld a, [de]
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    dec e
    ld d, $00
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [bc], a
    ld c, $0d
    dec d
    ld [$020d], sp
    inc b
    inc bc
    dec e
    ld bc, $1a18
    jr @+$10

    inc d
    ld de, $051a
    dec bc
    ld [$120c], sp
    jr jr_015_55d7

    inc b
    dec d
    ld [$0403], sp
    dec c
    ld [bc], a
    inc b
    jr nz, @+$22

    jr nz, jr_015_55e2

    ld bc, $1304
    inc de
    inc b
    ld de, $0b1a
    inc d
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    dec c
    inc b
    rla
    inc de
    dec e

jr_015_55d7:
    inc de
    ld [$040c], sp
    jr nz, jr_015_55fd

    jr nz, @+$1c

    ld bc, $1314

jr_015_55e2:
    ld a, [de]
    ld [$061d], sp
    inc d
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $1a04
    ld d, $0e
    dec c
    ld a, [hl+]
    inc de
    dec e
    ld bc, $1a04
    nop
    ld a, [de]
    dec c

jr_015_55fd:
    inc b
    rla
    inc de
    ld a, [de]
    inc de
    ld [$040c], sp
    dec h
    dec e
    ld d, $08
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $2804
    ld h, $1f
    nop
    ld a, [de]
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    ld a, [de]
    ld [bc], a
    nop
    ld de, $0103
    ld c, $00
    ld de, $1d03
    ld bc, $170e
    jr nz, jr_015_564a

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec b
    dec bc
    nop
    inc de
    inc de
    inc b
    dec c
    inc b
    inc bc
    dec e
    add hl, bc
    inc d
    ld [$0402], sp
    ld a, [de]
    ld [bc], a
    nop
    dec c
    jr nz, jr_015_5666

    inc de
    rlca
    inc b

jr_015_564a:
    ld a, [de]
    ld [de], a
    inc de
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc de
    ld c, $1d
    ld bc, $1114
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc c
    nop
    ld [bc], a
    rlca
    ld [$040d], sp
    dec e

jr_015_5666:
    ld b, $14
    dec c
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de
    rlca
    inc d
    dec c
    inc bc
    inc b
    ld de, $0e1a
    dec b
    dec e
    inc b
    rla
    rrca
    dec bc
    ld c, $12
    ld [$0d0e], sp
    ld [de], a
    ld a, [de]
    dec b
    ld [$0b0b], sp
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    nop
    ld [de], a
    ld a, [de]
    dec d
    inc b
    ld b, $00
    ld [de], a
    ld a, [de]
    nop
    ld [$2711], sp
    inc e
    ld [de], a
    inc d
    ld [de], a
    rrca
    inc b
    ld [bc], a
    inc de
    inc b
    inc bc
    ld a, [de]
    ld b, $00
    dec c
    ld b, $1d
    ld a, [bc]
    ld [$060d], sp
    rrca
    ld [$1a0d], sp
    nop
    dec c
    inc de
    rlca
    ld c, $0d
    jr @+$1f

    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    dec e
    dec b
    ld c, $11
    ld b, $08
    dec d
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $1304
    ld de, $1800
    nop
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld c, $0d
    inc b
    ld a, [de]
    ld c, $05
    rlca
    ld [$1a12], sp
    inc c
    ld c, $12
    inc de
    ld a, [de]
    inc de
    ld de, $1214
    inc de
    inc b
    inc bc
    dec e
    dec bc
    ld [$1404], sp
    inc de
    inc b
    dec c
    nop
    dec c
    inc de
    ld [de], a
    jr nz, jr_015_5729

    jr nz, @+$1e

    nop
    dec bc
    dec bc
    inc b
    ld b, $04
    inc bc
    ld a, [de]
    inc c
    ld c, $01
    ld [de], a
    inc de
    inc b
    ld de, $031d
    nop
    dec c
    ld [$0b04], sp
    ld a, [de]
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp

jr_015_5729:
    dec e
    rrca
    ld de, $0f04
    nop
    ld de, $1204
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    nop
    dec e
    ld b, $00
    dec c
    ld b, $1a
    ld d, $00
    ld de, $131a
    rlca
    nop
    inc de
    ld a, [de]
    rlca
    inc b
    dec e
    ld a, [bc]
    dec c
    ld c, $16
    ld [de], a
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    ld [$1a12], sp
    dec c
    ld c, $13
    dec e
    jr @+$06

    inc de
    ld a, [de]
    ld de, $0004
    inc bc
    jr jr_015_577e

    dec b
    ld c, $11
    jr nz, @+$22

    jr nz, jr_015_5787

    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    ld c, $01
    ld [de], a
    inc de
    inc b
    ld de, $1d12
    nop
    inc de
    inc de
    nop
    ld [bc], a
    ld a, [bc]

jr_015_577e:
    ld a, [de]
    inc b
    nop
    ld [bc], a
    rlca
    ld a, [de]
    ld c, $13
    rlca

jr_015_5787:
    inc b
    ld de, $081d
    dec c
    ld a, [de]
    nop
    ld a, [de]
    ld de, $0800
    dec c
    ld a, [de]
    ld c, $05
    dec e
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld bc, $0e0b
    ld c, $03
    daa
    inc e
    ld d, $07
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc d
    ld [de], a
    inc de
    dec e
    ld [de], a
    inc b
    inc de
    inc de
    dec bc
    inc b
    ld [de], a
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    jr @+$1c

    nop
    ld de, $1d04
    ld bc, $130e
    rlca
    ld a, [de]
    inc bc
    inc b
    nop
    inc bc
    daa
    rra
    jr jr_015_57e5

    inc d
    ld a, [de]
    ld de, $0204
    ld c, $06
    dec c
    ld [$0419], sp
    ld a, [de]
    nop
    dec e

jr_015_57e5:
    dec b
    nop
    inc c
    ld [$080b], sp
    nop
    ld de, $121a
    jr @+$0e

    ld bc, $0b0e
    ld a, [de]
    ld c, $05
    nop
    ld a, [de]
    ld b, $04
    ld de, $000c
    dec c
    ld a, [de]
    dec bc
    inc d
    rla
    inc d
    ld de, $1d18
    ld [bc], a
    nop
    ld de, $0e1a
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    inc b
    jr jr_015_5836

    jr nz, jr_015_5838

    rra
    jr jr_015_5829

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    dec c
    ld c, $13
    dec e
    dec b
    ld c, $0b
    dec bc

jr_015_5829:
    ld c, $16
    inc b
    inc bc
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    dec e
    dec bc

jr_015_5836:
    inc b
    nop

jr_015_5838:
    dec d
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld [$1813], sp
    jr nz, jr_015_5861

    jr jr_015_5855

    inc d
    ld de, $0f1a
    dec bc
    nop
    dec c
    ld a, [de]
    inc c
    ld [$0706], sp
    inc de
    dec e

jr_015_5855:
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    nop
    ld [bc], a
    inc de
    inc d
    nop
    dec bc
    dec bc

jr_015_5861:
    jr jr_015_5880

    ld d, $0e
    ld de, $040a
    inc bc
    daa
    rra
    ld [de], a
    ld c, $0c
    inc b
    ld c, $0d
    inc b
    ld a, [de]
    dec bc
    inc b
    dec b
    inc de
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    dec e
    rrca
    inc b
    ld a, [bc]

jr_015_5880:
    ld [$060d], sp
    ld a, [de]
    inc bc
    inc d
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld bc, $0004
    dec c
    ld a, [de]
    ld [de], a
    nop
    inc d
    ld [bc], a
    inc b
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $1200
    rlca
    jr nz, jr_015_58c9

    inc c
    inc c
    inc c
    dec h
    ld a, [de]
    inc bc
    inc b
    dec bc
    ld [$0802], sp
    ld c, $14
    ld [de], a
    ld a, [de]
    ld [$1d05], sp
    ld [$1a13], sp
    ld d, $04
    ld de, $0d04
    ld a, [hl+]
    inc de

jr_015_58c9:
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    inc c
    nop
    ld b, $06
    ld c, $13
    ld [de], a
    daa
    rra
    inc c
    inc b
    nop
    dec c
    ld d, $07
    ld [$040b], sp
    dec h
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld [$1813], sp
    ld a, [de]
    ld c, $05
    dec e
    dec bc
    nop
    ld [de], a
    ld a, [de]
    dec d
    inc b
    ld b, $00
    ld [de], a
    jr nz, jr_015_5924

    jr nz, jr_015_5925

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $0d08
    inc de
    ld c, $1a
    add hl, bc
    ld c, $04
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    rrca

jr_015_5924:
    dec bc

jr_015_5925:
    nop
    ld [bc], a
    inc b
    jr nz, jr_015_5946

    jr @+$10

    inc d
    ld de, $0a1a
    inc b
    inc b
    dec c
    ld a, [de]
    inc b
    jr @+$06

    dec e
    rrca
    ld [$0a02], sp
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e

jr_015_5946:
    ld [bc], a
    rlca
    inc b
    nop
    rrca
    dec bc
    jr jr_015_5968

    inc c
    nop
    inc bc
    inc b
    ld a, [de]
    dec bc
    ld c, $02
    ld a, [bc]
    jr nz, jr_015_5978

    ld d, $08
    inc de
    rlca
    ld c, $14
    inc de
    ld a, [de]
    nop
    ld a, [de]
    ld a, [bc]
    inc b
    jr @+$27

    ld a, [de]

jr_015_5968:
    jr jr_015_5978

    inc d
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $071a
    ld c, $16
    ld a, [de]
    jr @+$10

jr_015_5978:
    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    inc bc
    ld c, $0e
    ld de, $1f28
    ld b, $00
    dec c
    ld b, $1a
    ld a, [bc]
    ld [$060d], sp
    rrca
    ld [$1d0d], sp
    nop
    dec c
    inc de
    rlca
    ld c, $0d
    jr jr_015_59bc

    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    dec e
    dec c
    ld c, $13
    ld [$0402], sp
    ld [de], a
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    dec e
    inc bc

jr_015_59bc:
    ld [$0505], sp
    inc b
    ld de, $0d04
    inc de
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    dec e
    rlca
    ld [$1a12], sp
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    ld a, [de]
    ld [$1a0d], sp
    rlca
    ld [$1d12], sp
    rrca
    ld de, $1508
    nop
    inc de
    inc b
    ld a, [de]
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, jr_015_5a07

    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $15
    inc b
    ld de, $0716
    inc b
    dec bc
    inc c
    ld [$060d], sp
    dec e
    inc b
    dec d
    ld [$0403], sp
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    ld c, $05

jr_015_5a07:
    dec e
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc bc
    ld [$1100], sp
    jr jr_015_5a3c

    dec e
    ld bc, $0d0e
    inc bc
    ld d, $04
    dec bc
    dec bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $0025
    dec c
    inc bc
    ld a, [de]
    inc c
    ld [bc], a
    inc c
    inc d
    ld de, $070f
    jr jr_015_5a61

    ld [de], a
    dec e
    dec c
    ld c, $13

jr_015_5a3c:
    inc b
    ld a, [de]
    rrca
    ld de, $150e
    inc b
    ld a, [de]
    nop
    dec e
    ld bc, $1304
    ld de, $1800
    nop
    dec bc
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    dec b
    nop
    inc c
    ld [$180b], sp
    daa
    inc e
    inc c
    nop
    dec bc

jr_015_5a61:
    ld c, $0d
    inc b
    ld a, [de]
    ld [$1a12], sp
    inc b
    dec c
    ld de, $0600
    inc b
    inc bc
    dec e
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $14
    ld bc, $040b
    ld hl, $021d
    ld de, $120e
    ld [de], a
    ld [$060d], sp
    ld a, [de]
    ld c, $05
    dec e
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    dec h
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld c, $0d
    inc b
    dec e
    ld d, $07
    ld c, $0c
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    rlca
    nop
    inc bc
    dec e
    inc de
    ld de, $0004
    inc de
    inc b
    inc bc
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    rlca
    ld [$1d12], sp
    ld c, $16
    dec c
    ld a, [de]
    ld [de], a
    ld c, $0d
    daa
    inc e
    nop
    ld [bc], a
    inc de
    ld [$060d], sp
    ld a, [de]
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_015_5aeb

    nop
    dec c
    inc bc
    ld d, $08
    inc de
    rlca
    ld c, $14
    inc de
    ld a, [de]
    inc c
    inc b
    ld de, $1802
    dec h
    dec e
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    inc bc

jr_015_5aeb:
    ld [$0f12], sp
    nop
    inc de
    ld [bc], a
    rlca
    inc b
    ld [de], a
    dec e
    rlca
    ld [$1a12], sp
    ld b, $0e
    ld c, $0d
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    ld [bc], a
    nop
    inc de
    ld [bc], a
    rlca
    inc de
    rlca
    inc b
    ld a, [de]
    jr jr_015_5b1b

    inc d
    dec c
    ld b, $04
    ld de, $151d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [de]

jr_015_5b1b:
    inc d
    dec c
    nop
    ld d, $00
    ld de, $1d04
    nop
    dec c
    inc bc
    ld a, [de]
    inc bc
    ld [$0f12], sp
    ld c, $12
    inc b
    ld a, [de]
    ld c, $05
    dec e
    rlca
    ld [$200c], sp
    rra
    ld b, $14
    dec bc
    rrca
    daa
    ld a, [de]
    jr jr_015_5b4d

    inc d
    ld a, [de]
    ld b, $0e
    ld bc, $0b01
    inc b
    dec e
    inc bc
    ld c, $16
    dec c
    ld a, [de]

jr_015_5b4d:
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc d
    ld [bc], a
    ld a, [bc]
    daa
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld bc, $0004
    dec c
    dec e
    ld [de], a
    nop
    inc d
    ld [bc], a
    inc b
    ld a, [de]
    ld [$1a12], sp
    ld b, $11
    inc b
    nop
    inc de
    daa
    inc e
    nop
    dec bc
    inc c
    ld c, $12
    inc de
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    ld b, $0e
    ld c, $03
    dec e
    nop
    ld [de], a
    ld a, [de]
    jr @+$16

    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld a, [hl+]
    ld bc, $1114
    ld bc, $2712
    rra
    ld a, [de]
    jr jr_015_5bae

    inc d
    ld a, [de]
    dec b
    inc d
    inc c
    ld bc, $040b
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e

jr_015_5bae:
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    dec c
    ld [$0405], sp
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [$120d], sp
    inc b
    ld de, $1a13
    ld [$1a13], sp
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    dec bc
    ld c, $02
    ld a, [bc]
    jr nz, jr_015_5bf0

    ld [de], a
    ld [bc], a
    ld de, $0808
    inc de
    ld [bc], a
    rlca
    jr nz, @+$22

    jr nz, @+$04

    dec bc
    ld [$0a02], sp
    daa
    rra
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc c
    ld c, $11
    inc b
    ld a, [de]

jr_015_5bf0:
    dec bc
    inc d
    ld [bc], a
    ld a, [bc]
    dec e
    inc de
    rlca
    nop
    dec c
    ld a, [de]
    ld [de], a
    ld a, [bc]
    ld [$0b0b], sp
    dec h
    ld a, [de]
    jr jr_015_5c11

    inc d
    dec e
    add hl, bc
    ld [$0c0c], sp
    jr @+$1c

    ld c, $0f
    inc b
    dec c
    ld a, [de]
    inc de

jr_015_5c11:
    rlca
    inc b
    dec e
    dec bc
    ld c, $02
    ld a, [bc]
    daa
    rra
    jr jr_015_5c2a

    inc d
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    nop
    ld [$1a0c], sp
    nop
    dec c
    inc bc

jr_015_5c2a:
    dec e
    ld [de], a
    db $10
    inc d
    inc b
    inc b
    add hl, de
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de
    ld de, $0608
    ld b, $04
    ld de, $2020
    jr nz, jr_015_5c61

    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    ld c, $02
    ld a, [bc]
    ld a, [de]
    ld [$1a12], sp
    ld bc, $0e0b
    ld d, $0d
    dec e
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    ld a, [de]
    ld c, $05
    dec b
    daa
    inc e
    jr jr_015_5c6f

jr_015_5c61:
    inc d
    ld a, [de]
    nop
    ld de, $1a04
    rrca
    dec bc
    inc b
    nop
    ld [de], a
    inc b
    inc bc
    dec e

jr_015_5c6f:
    ld d, $08
    inc de
    rlca
    ld a, [de]
    jr @+$10

    inc d
    ld de, $0c1d
    nop
    ld de, $120a
    inc c
    nop
    dec c
    ld [de], a
    rlca
    ld [$270f], sp
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    nop
    ld de, $0e11
    ld d, $1d
    ld [bc], a
    ld c, $11
    ld de, $0308
    ld c, $11
    ld a, [de]
    ld [$1a12], sp
    inc bc
    nop
    ld de, $1d0a
    nop
    dec c
    inc bc
    ld a, [de]
    ld b, $0b
    ld c, $0e
    inc c
    jr jr_015_5cce

    rra
    nop
    ld [de], a
    ld a, [de]
    jr jr_015_5cc2

    inc d
    ld a, [de]
    inc de
    ld de, $1a18
    inc de
    ld c, $1d
    ld de, $0004
    inc bc
    ld a, [de]

jr_015_5cc2:
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    rrca
    inc b
    ld de, $1d25
    inc de

jr_015_5cce:
    rlca
    inc b
    ld a, [de]
    ld c, $0b
    inc bc
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    ld [de], a
    nop
    jr jr_015_5cef

    dec h
    inc e
    ld h, $18
    ld c, $14
    ld a, [de]
    nop
    ld [$2a0d], sp
    inc de
    ld a, [de]
    dec c
    ld c, $1d
    ld [bc], a
    rlca

jr_015_5cef:
    nop
    ld de, $1308
    jr @+$1c

    ld [bc], a
    nop
    ld [de], a
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [$0800], sp
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    dec c
    ld c, $1a
    inc c
    ld c, $13
    rlca
    inc b
    ld de, $131d
    inc b
    ld de, $1204
    nop
    daa
    inc e
    ld bc, $1814
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    rrca
    inc b
    ld de, $081a
    dec b
    dec e
    jr @+$10

    inc d
    ld a, [de]
    ld d, $00
    dec c
    dec c
    nop
    ld a, [de]
    ld de, $0004
    inc bc
    dec e
    ld [$2713], sp
    ld h, $1f
    inc de
    rlca
    ld [$1a12], sp
    rlca
    nop
    dec bc
    dec bc
    ld d, $00
    jr @+$1f

    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [de], a
    inc c
    inc b
    dec bc
    dec bc
    ld a, [de]
    dec d
    inc b
    ld de, $0618
    ld c, $0e
    inc bc
    jr nz, jr_015_5d80

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $000e
    ld de, $1203
    ld a, [de]
    nop
    ld de, $1d04
    dec c
    nop
    ld [$040b], sp
    inc bc
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    inc d
    ld de, $0b04
    jr jr_015_5da0

jr_015_5d80:
    rra
    ld d, $07
    nop
    inc de
    ld a, [de]
    nop
    ld a, [de]
    rrca
    inc b
    ld de, $0405
    ld [bc], a
    inc de
    dec e
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    ld [de], a

jr_015_5da0:
    rrca
    ld [$0403], sp
    ld de, $122a
    ld a, [de]
    ld d, $04
    ld bc, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    nop
    ld de, $0406
    ld a, [de]
    inc bc
    inc d
    ld [de], a
    inc de
    jr jr_015_5dc2

    ld c, $01

jr_015_5dc2:
    ld d, $04
    ld bc, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $0b1d
    inc b
    nop
    inc bc
    ld [$060d], sp
    ld a, [de]
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld d, $0e
    inc c
    nop
    dec c
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld bc, $1300
    rlca
    ld de, $0e0e
    inc c
    jr nz, @+$21

    inc de
    rlca
    nop
    inc de
    ld a, [de]
    dec bc
    inc b
    nop
    inc bc
    ld [de], a
    ld a, [de]
    ld [$130d], sp
    ld c, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc b
    dec c
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld de, $0e0e
    inc c
    jr nz, jr_015_5e37

    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $0b1a
    inc b
    nop
    inc bc
    ld [de], a
    dec e
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1100
    jr nz, @+$21

    nop
    inc de

jr_015_5e37:
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    nop
    inc c
    inc b
    ld a, [de]
    inc de
    ld [$040c], sp
    dec h
    dec e
    inc c
    ld c, $01
    ld [de], a
    inc de
    inc b
    ld de, $031a
    nop
    dec c
    ld [$0b04], sp
    dec e
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [de]
    inc bc
    ld [$0212], sp
    ld c, $15
    inc b
    ld de, $1d12
    nop
    ld a, [de]
    inc de
    inc b
    dec bc
    dec bc
    inc de
    nop
    dec bc
    inc b
    ld a, [de]
    ld [bc], a
    ld [$0006], sp
    ld de, $111d
    ld [$060d], sp
    ld a, [de]
    ld [$1a0d], sp
    rlca
    ld [$1a12], sp
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    ld c, $05
    dec b
    ld [$0402], sp
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld c, $14
    inc de
    ld [de], a
    ld a, [bc]
    ld [$1311], sp
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    ld c, $16
    dec c
    jr nz, jr_015_5ec8

    ld a, [bc]
    dec c
    ld c, $16
    ld [$060d], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld c, $0d
    dec bc
    jr jr_015_5edd

    inc c
    inc b
    nop
    dec c
    ld a, [de]

jr_015_5ec8:
    inc de
    rlca
    nop
    inc de
    dec e
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    ld [$1a12], sp
    ld c, $0d
    ld a, [de]
    inc de
    ld c, $1d

jr_015_5edd:
    rlca
    ld [$250c], sp
    ld a, [de]
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [de]
    nop
    ld [bc], a
    inc de
    ld [de], a
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_015_5f15

    ld d, $00
    jr jr_015_5f19

    rlca
    inc b
    ld [bc], a
    nop
    dec c
    jr nz, jr_015_5f26

    jr nz, jr_015_5f24

    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]

jr_015_5f15:
    dec b
    inc b
    ld d, $1d

jr_015_5f19:
    dec bc
    ld c, $18
    nop
    dec bc
    ld a, [de]
    inc c
    inc b
    dec c
    ld a, [de]
    rlca

jr_015_5f24:
    inc b
    ld a, [de]

jr_015_5f26:
    rlca
    nop
    ld [de], a
    dec e
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    inc d
    ld [bc], a
    ld a, [bc]
    jr jr_015_5f51

    inc bc
    ld [$0402], sp
    dec e
    rlca
    ld c, $13
    inc b
    dec bc
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [bc], a
    nop
    ld [de], a
    ld [$0e0d], sp
    jr nz, jr_015_5f6e

    jr nz, jr_015_5f6f

    inc de

jr_015_5f51:
    rlca
    inc b
    ld a, [de]
    ld b, $00
    dec c
    ld b, $1a
    ld d, $00
    ld de, $041d
    rla
    rrca
    dec bc
    ld c, $03
    inc b
    ld [de], a
    ld a, [de]
    nop
    ld [bc], a
    ld de, $120e
    ld [de], a
    dec e
    inc de

jr_015_5f6e:
    rlca

jr_015_5f6f:
    inc b
    ld a, [de]
    db $10
    inc d
    ld [$1304], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    inc b
    ld [de], a
    inc b
    ld de, $1a13
    ld [bc], a
    ld [$1813], sp
    jr nz, jr_015_5faa

    jr jr_015_5f9b

    inc d
    ld a, [de]
    ld b, $11
    ld c, $0f
    inc b
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    dec e

jr_015_5f9b:
    ld bc, $080b
    dec c
    inc bc
    dec bc
    jr jr_015_5fbd

    inc de
    rlca
    ld de, $140e
    ld b, $07

jr_015_5faa:
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    nop
    ld de, $0d0a
    inc b
    ld [de], a
    ld [de], a
    jr nz, jr_015_5fd5

    jr jr_015_5fc9

    inc d
    ld a, [de]

jr_015_5fbd:
    ld d, $04
    ld de, $1a04
    dec c
    inc b
    dec d
    inc b
    ld de, $0c1d

jr_015_5fc9:
    inc d
    ld [bc], a
    rlca
    ld a, [de]
    ld b, $0e
    ld c, $03
    ld a, [de]
    nop
    inc de
    dec e

jr_015_5fd5:
    ld b, $11
    ld c, $0f
    ld [$060d], sp
    dec h
    ld a, [de]
    ld [de], a
    ld c, $1a
    jr jr_015_5ff1

    inc d
    dec e
    ld [de], a
    dec bc
    ld [$1a0f], sp
    nop
    dec c
    inc bc
    ld a, [de]
    ld bc, $0411

jr_015_5ff1:
    nop
    ld a, [bc]
    dec e
    jr jr_015_6004

    inc d
    ld de, $0d1a
    inc b
    ld [bc], a
    ld a, [bc]
    daa
    rra
    jr jr_015_600f

    inc d
    ld a, [de]
    inc bc

jr_015_6004:
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    dec e
    inc de

jr_015_600f:
    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $0e
    dec bc
    ld [de], a
    ld a, [de]
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de
    ld [$040c], sp
    ld a, [de]
    inc de
    ld c, $1a
    ld de, $0c04
    ld c, $15
    inc b
    dec e
    inc de
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    ld bc, $000e
    ld de, $1203
    daa
    rra
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
    ld de, $1d12
    inc de
    ld de, $0c14
    rrca
    inc b
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0608
    dec e
    dec c
    inc b
    ld d, $12
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    nop
    ld [de], a
    inc de
    dec e
    dec b
    inc b
    ld d, $1a
    inc bc
    nop
    jr jr_015_6086

    jr nz, @+$22

    jr nz, @+$1e

    ld h, $21
    ld b, $11
    inc b
    nop
    inc de
    ld a, [de]
    dec bc
    nop
    ld [de], a
    ld a, [de]
    dec d
    inc b

jr_015_6086:
    ld b, $00
    ld [de], a
    dec e
    ld [de], a
    rlca
    ld c, $0e
    inc de
    ld c, $14
    inc de
    ld hl, $031a
    ld c, $14
    ld bc, $040b
    dec e
    rlca
    ld [$1213], sp
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc c
    ld c, $01
    ld [de], a
    inc de
    inc b
    ld de, $0a1d
    ld [$060d], sp
    rrca
    ld [$120d], sp
    daa
    ld h, $1c
    jr @+$10

    inc d
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc de
    ld c, $11
    ld [$1204], sp
    ld a, [de]
    ld c, $15
    inc b
    ld de, $001a
    ld [de], a
    dec e
    jr @+$10

    inc d
    ld a, [de]
    ld a, [bc]
    ld [$0a02], sp
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    ld [$1d0d], sp
    jr jr_015_60f4

    inc d
    ld de, $111a
    inc d
    dec c
    ld hl, $0e03
    ld d, $0d
    dec e
    ld c, $05

jr_015_60f4:
    dec b
    ld [$0402], sp
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    ld [$1d0d], sp
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    jr nz, @+$1e

    jr jr_015_611a

    inc d
    ld de, $131a
    rlca
    ld c, $14
    ld b, $07
    inc de
    ld [de], a
    ld a, [de]
    inc de
    inc d

jr_015_611a:
    ld de, $130d
    ld c, $1a
    add hl, bc
    ld c, $04
    jr jr_015_613e

    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    dec h
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    ld c, $1a
    ld b, $0e
    ld c, $03
    ld a, [de]
    dec bc
    ld c, $00
    dec c
    dec e
    ld [de], a

jr_015_613e:
    rlca
    nop
    ld de, $1a0a
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    jr jr_015_615c

    inc d
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    ld [$1a12], sp
    inc c
    inc b
    ld [de], a

jr_015_615c:
    ld [de], a
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld [$1211], sp
    inc de
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    jr nz, @+$1e

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    rlca
    nop
    ld de, $1a03
    inc de
    ld c, $1d
    ld bc, $0b04
    ld [$1504], sp
    inc b
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [de], a
    ld [$020d], sp
    inc b
    rlca
    inc b
    ld a, [de]
    inc bc
    ld [$0304], sp
    dec h
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    dec c
    inc b
    nop
    ld de, $180b
    ld b, $0e
    inc de
    ld a, [de]
    jr jr_015_61b7

    inc d
    ld a, [de]
    ld a, [bc]
    ld [$0b0b], sp
    inc b
    inc bc
    dec e
    inc de
    ld d, $08
    ld [bc], a
    inc b

jr_015_61b7:
    daa
    inc e
    nop
    rlca
    ld a, [de]
    ld d, $04
    dec bc
    dec bc
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld [$1813], sp
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    rrca
    dec bc
    inc b
    dec c
    inc de
    jr jr_015_61f5

    inc c
    ld c, $11
    inc b
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    rlca
    ld [$1a0c], sp
    ld [$1d0d], sp
    ld [$2013], sp
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [$2a13], sp
    dec bc

jr_015_61f5:
    dec bc
    ld a, [de]
    dec c
    inc b
    inc b
    inc bc
    nop
    ld a, [de]
    ld b, $0e
    ld c, $03
    ld a, [de]
    ld b, $14
    inc c
    ld [de], a
    rlca
    ld c, $04
    dec e
    dec bc
    ld [$040a], sp
    ld a, [de]
    jr jr_015_621f

    inc d
    ld a, [de]
    inc de
    ld c, $1a
    ld [de], a
    inc de
    nop
    jr jr_015_6238

    ld c, $0d
    ld a, [de]
    inc de

jr_015_621f:
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    inc b
    inc e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    jr nz, jr_015_624f

    jr nz, jr_015_6244

    rlca
    inc b
    ld a, [de]
    inc b
    dec c
    inc bc
    rra

jr_015_6238:
    ld [$120d], sp
    ld [$0403], sp
    ld a, [de]
    add hl, bc
    ld c, $04
    ld a, [hl+]
    ld [de], a

jr_015_6244:
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld [$2a13], sp
    ld [de], a
    ld a, [de]

jr_015_624f:
    inc b
    inc c
    rrca
    inc de
    jr jr_015_626f

    nop
    dec c
    inc bc
    ld a, [de]
    ld [$1d0d], sp
    dec c
    inc b
    inc b
    inc bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    nop
    ld a, [de]
    ld b, $0e
    ld c, $03
    dec e
    ld [bc], a
    dec bc
    inc b
    nop

jr_015_626f:
    dec c
    ld [$060d], sp
    jr nz, jr_015_6294

    inc de
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    ld [de], a
    inc de
    nop
    ld [$1211], sp
    ld a, [de]
    dec bc
    inc b
    nop
    inc bc
    dec e
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    ld c, $0d
    inc bc

jr_015_6294:
    dec e
    dec b
    dec bc
    ld c, $0e
    ld de, $1f20
    nop
    ld a, [de]
    inc de
    rlca
    ld [$0a02], sp
    ld a, [de]
    dec bc
    nop
    jr jr_015_62ac

    ld de, $0e1a
    dec b

jr_015_62ac:
    dec e
    inc bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld [bc], a
    ld c, $15
    inc b
    ld de, $1a12
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rlca
    inc d
    ld b, $04
    ld a, [de]
    ld [de], a
    rrca
    ld [$0403], sp
    ld de, $0816
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    dec b
    dec bc
    jr @+$1c

    ld [bc], a
    nop
    inc d
    ld b, $07
    inc de
    dec e
    ld [$1a0d], sp
    ld [$2013], sp
    ld a, [de]
    ld h, $08
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]
    rlca
    ld c, $16
    jr jr_015_630c

    inc d
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    dec h
    ld h, $1a
    jr jr_015_6317

    inc d
    dec e
    inc c

jr_015_630c:
    inc d
    inc de
    inc de
    inc b
    ld de, $131a
    ld c, $1a
    inc de
    rlca

jr_015_6317:
    inc b
    ld a, [de]
    dec b
    dec bc
    jr jr_015_633d

    rra
    ld [$1a13], sp
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1a12
    inc de
    rlca
    inc b
    dec e
    inc b
    dec d
    ld [$0403], sp
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    ld d, $00
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    dec e

jr_015_633d:
    ld [de], a
    inc de
    ld de, $0d0e
    ld b, $1a
    inc b
    dec c
    ld c, $14
    ld b, $07
    jr nz, jr_015_636b

    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    ld de, $1a03
    ld h, $02
    inc b
    dec bc
    dec bc
    nop
    ld de, $1d26
    ld [$1a12], sp
    ld [bc], a
    dec bc
    inc b
    nop
    ld de, $180b
    ld a, [de]
    inc c
    nop

jr_015_636b:
    ld de, $040a
    inc bc
    dec e
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    inc bc
    ld c, $0e
    ld de, $1f20
    jr jr_015_638e

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    nop

jr_015_638e:
    dec c
    jr @+$0e

    ld c, $11
    inc b
    jr nz, @+$21

    jr @+$10

    inc d
    ld a, [hl+]
    inc bc
    ld a, [de]
    ld bc, $1304
    inc de
    inc b
    ld de, $061a
    ld [$0415], sp
    dec e
    inc d
    rrca
    jr nz, jr_015_63cb

    inc de
    rlca
    inc b
    ld a, [de]
    nop
    ld [$1a11], sp
    ld [$1a12], sp
    ld [de], a
    inc de
    nop
    dec bc
    inc b
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld [$1a0c], sp
    nop
    dec c
    inc bc

jr_015_63cb:
    dec e
    inc bc
    ld [$1311], sp
    jr @+$1c

    ld [de], a
    inc de
    ld c, $11
    nop
    ld b, $04
    dec e
    ld [bc], a
    inc b
    dec bc
    dec bc
    nop
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    rrca
    ld [$0e06], sp
    inc de
    dec h
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
    nop
    dec bc
    dec bc
    ld c, $16
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0d
    inc de
    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    ld a, [bc]
    ld a, [de]
    ld c, $14
    inc de
    jr nz, jr_015_6440

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    ld c, $0b
    inc bc
    dec h
    ld a, [de]
    inc b
    inc c
    rrca
    inc de
    jr jr_015_6435

    nop

jr_015_6435:
    ld de, $0411
    dec bc
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]

jr_015_6440:
    nop
    ld a, [de]
    ld bc, $130e
    inc de
    dec bc
    inc b
    ld a, [de]
    ld de, $0200
    ld a, [bc]
    dec b
    inc d
    dec bc
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc bc
    inc d
    ld [de], a
    inc de
    jr jr_015_6478

    ld bc, $130e
    inc de
    dec bc
    inc b
    ld [de], a
    jr nz, jr_015_6483

    jr @+$10

    inc d
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    dec bc
    jr jr_015_6492

    nop
    inc de
    ld a, [de]

jr_015_6478:
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $130e
    inc de
    dec bc
    inc b
    ld [de], a

jr_015_6483:
    ld a, [de]
    nop
    dec c
    inc bc
    dec c
    ld c, $13
    ld [$0402], sp
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b

jr_015_6492:
    inc de
    rlca
    ld [$060d], sp
    dec e
    ld [de], a
    inc d
    ld [de], a
    rrca
    ld [$0802], sp
    ld c, $14
    ld [de], a
    jr nz, @+$21

    nop
    ld a, [de]
    dec b
    nop
    ld [$130d], sp
    ld a, [de]
    ld bc, $0411
    inc b
    add hl, de
    inc b
    dec e
    ld bc, $0e0b
    ld d, $12
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    ld bc, $0704
    ld [$030d], sp
    dec e
    ld [$2013], sp
    rra
    nop
    ld a, [de]
    rrca
    nop
    ld [de], a
    ld [de], a
    nop
    ld b, $04
    ld a, [de]
    dec bc
    inc b
    nop
    inc bc
    ld [de], a
    dec e
    ld c, $05
    dec b
    ld a, [de]
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    inc bc
    nop
    ld de, $0d0a
    inc b
    ld [de], a
    ld [de], a
    jr nz, jr_015_650f

    jr jr_015_6500

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
    dec e

jr_015_6500:
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    inc c
    inc b
    nop
    dec c

jr_015_650f:
    jr z, jr_015_6530

    inc de
    rlca
    ld [$1a12], sp
    ld bc, $130e
    inc de
    dec bc
    inc b
    ld a, [de]
    ld [$1a12], sp
    dec c
    ld c, $13
    ld [bc], a
    ld c, $15
    inc b
    ld de, $0304
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]

jr_015_6530:
    inc bc
    inc d
    ld [de], a
    inc de
    jr nz, jr_015_6555

    jr jr_015_6546

    inc d
    ld a, [de]
    inc de
    inc d
    ld de, $1a0d
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    nop
    rrca

jr_015_6546:
    dec h
    dec e
    ld bc, $1314
    ld a, [de]
    dec c
    ld c, $13
    rlca
    ld [$060d], sp
    ld a, [de]
    ld [bc], a

jr_015_6555:
    ld c, $0c
    inc b
    ld [de], a
    dec e
    ld c, $14
    inc de
    jr nz, @+$21

    jr jr_015_656f

    inc d
    ld a, [de]
    add hl, bc
    ld [$0606], sp
    dec bc
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rlca

jr_015_656f:
    nop
    dec c
    inc bc
    dec bc
    inc b
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    dec c
    ld c, $13
    rlca
    ld [$060d], sp
    ld [bc], a
    ld c, $0c
    inc b
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    jr nz, @+$21

    jr jr_015_659b

    inc d
    ld a, [de]
    rlca
    ld [$1a13], sp
    inc de
    rlca
    inc b
    dec e
    ld bc, $130e
    inc de

jr_015_659b:
    dec bc
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc b
    dec c
    inc de
    ld [$0411], sp
    ld a, [de]
    ld de, $0200
    ld a, [bc]
    dec e
    ld [de], a
    dec bc
    ld [$0403], sp
    ld [de], a
    ld a, [de]
    nop
    ld [de], a
    ld [$0403], sp
    jr nz, @+$1e

    jr jr_015_65d0

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    dec b
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    nop
    dec e
    ld [de], a

jr_015_65d0:
    inc b
    ld [bc], a
    ld de, $1304
    ld a, [de]
    rrca
    nop
    ld [de], a
    ld [de], a
    nop
    ld b, $04
    daa
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
