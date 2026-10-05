; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    nop
    ld b, c
    inc h
    ld b, c
    call nc, $0041
    ld b, d
    ld a, [hl+]
    ld b, d
    ld b, h
    ld b, d
    adc [hl]
    ld b, d
    ld sp, hl
    ld b, d
    daa
    ld b, e
    ld l, l
    ld b, e
    and e
    ld b, e
    add $43
    rrca
    ld b, h
    ld l, $44
    sub d
    ld b, l
    or b
    ld b, l
    ld d, [hl]
    ld b, a
    add e
    ld b, a
    call $0647
    ld c, b
    ld h, $48
    adc b
    ld c, b
    reti


    ld c, b
    inc [hl]
    ld c, c
    ld [hl], e
    ld c, c
    ldh a, [c]
    ld c, c
    add hl, de
    ld c, d
    jr nc, jr_016_4082

    ld c, [hl]
    ld c, d
    ld [hl], h
    ld c, d
    sbc e
    ld c, d
    jr jr_016_408b

    add l
    ld c, e
    or a
    ld c, e
    call c, $014b
    ld c, h
    ld c, a
    ld c, h
    add d
    ld c, h
    and b
    ld c, h
    ei
    ld c, h
    ld c, b
    ld c, l
    ld a, h
    ld c, l
    xor l
    ld c, l
    rla
    ld c, [hl]
    add e
    ld c, [hl]
    or c
    ld c, [hl]
    ld sp, hl
    ld c, [hl]
    dec d
    ld c, a
    ld e, l
    ld c, a
    or c
    ld c, a
    ret nc

    ld c, a
    ld hl, $6350
    ld d, b
    push af
    ld d, b
    ld c, l
    ld d, c
    sub $51
    ld d, h
    ld d, d
    and $52
    ld a, [hl+]
    ld d, e
    ld b, c
    ld d, e
    ld l, d
    ld d, e
    adc e
    ld d, e
    add sp, $53
    ld de, $3d54
    ld d, h

jr_016_4082:
    ld a, h
    ld d, h
    xor a
    ld d, h
    add sp, $54
    ld h, d
    ld d, l
    sbc c

jr_016_408b:
    ld d, l
    cp a
    ld d, l
    add hl, bc
    ld d, [hl]
    dec e
    ld d, [hl]
    ccf
    ld d, [hl]
    ld a, d
    ld d, [hl]
    reti


    ld d, [hl]
    dec h
    ld d, a
    ld [hl], d
    ld d, a
    ld a, c
    ld d, a
    or b
    ld e, c
    ld d, b
    ld e, d
    ld h, a
    ld e, d
    ret


    ld e, d
    ld e, l
    ld e, e
    sub h
    ld e, e
    push hl
    ld e, e
    add b
    ld e, h
    xor a
    ld e, h
    ret nc

    ld e, h
    jp hl


    ld e, h
    dec bc
    ld e, l
    ld b, a
    ld e, l
    and l
    ld e, l
    push de
    ld e, l
    ld [hl], e
    ld e, [hl]
    sbc e
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    inc de
    ld e, a
    ld d, a
    ld e, a
    ld [hl], a
    ld e, a
    add hl, bc
    ld h, b
    ld l, h
    ld h, b
    and c
    ld h, b
    push hl
    ld h, b
    rra
    ld h, c
    ld b, l
    ld h, c
    ld [hl], l
    ld h, c
    or [hl]
    ld h, c
    push hl
    ld h, c
    ld d, $62
    adc l
    ld h, e
    xor h
    ld h, e
    rst RST_30
    ld h, e
    ld [hl], h
    ld h, h
    sbc l
    ld h, h
    cp d
    ld h, h
    di
    ld h, h
    ld e, d
    ld h, l
    adc d
    ld h, l
    ld hl, $4067
    ld h, a
    ld [hl], a
    ld h, a
    and e
    ld h, a
    sbc $67
    ld c, c
    ld l, b
    sbc e
    ld l, b
    jp c, Jump_000_1c68

    ld l, c
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    ld a, [de]
    dec b
    ld c, $14
    dec bc
    ld hl, $0c12
    inc b
    dec bc
    dec bc
    ld [$060d], sp
    ld a, [de]
    ld [bc], a
    rlca
    nop
    inc c
    ld bc, $1104
    jr nz, jr_016_4143

    jr jr_016_4134

    inc d
    ld a, [de]
    inc bc
    ld [$0212], sp
    ld c, $15
    inc b
    ld de, $131a
    rlca
    inc b

jr_016_4134:
    dec e
    ld [de], a
    inc de
    inc d
    dec b
    dec b
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld d, $00
    ld [de], a

jr_016_4143:
    dec e
    inc de
    nop
    ld a, [bc]
    inc b
    dec c
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    jr jr_016_415f

    inc d
    jr nz, jr_016_4170

    jr @+$10

    inc d
    ld a, [de]
    ld [bc], a
    nop
    ld de, $0504
    inc d
    dec bc

jr_016_415f:
    dec bc
    jr @+$1f

    ld [bc], a
    ld c, $0d
    ld [de], a
    ld [$0403], sp
    ld de, $161a
    rlca
    nop
    inc de
    ld a, [de]

jr_016_4170:
    inc de
    ld c, $1d
    inc bc
    ld c, $1a
    dec c
    inc b
    rla
    inc de
    jr nz, jr_016_419c

    jr nz, jr_016_419a

    jr @+$10

    inc d
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    ld [$0a0d], sp
    dec e
    ld c, $05
    ld a, [de]
    nop
    ld a, [de]
    ld d, $00
    jr @+$1c

    ld [de], a

jr_016_419a:
    ld c, $1a

jr_016_419c:
    inc de
    rlca
    inc b
    dec e
    inc de
    rlca
    inc d
    ld b, $12
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    dec e
    jr jr_016_41c2

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld bc, $0404
    dec c
    dec e
    ld [de], a
    dec c
    ld c, $0e

jr_016_41c2:
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
    rra
    ld [de], a
    inc b
    ld d, $04
    ld de, $051a
    inc d
    inc c
    inc b
    ld [de], a
    ld a, [de]
    ld d, $00
    dec b
    inc de
    dec e
    inc d
    rrca
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    inc bc
    ld a, [de]
    ld [de], a
    rlca
    nop
    dec b
    inc de
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $1100
    inc b
    dec e
    dec bc
    ld [$0706], sp
    inc de
    ld bc, $0b14
    ld bc, $161a
    ld [$0713], sp
    ld a, [de]
    nop
    dec e
    ld [bc], a
    ld de, $0200
    ld a, [bc]
    ld a, [de]
    ld [$1a0d], sp
    ld [$2013], sp
    rra
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
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
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
    rlca
    ld [$0303], sp
    inc b
    dec c
    dec e
    ld [bc], a
    nop
    ld [de], a
    ld [$0e0d], sp
    jr nz, @+$1c

    rlca
    inc b
    jr jr_016_4283

    dec e
    nop
    ld de, $0d04
    ld a, [hl+]
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld [de], a
    inc b
    dec e
    inc de
    rlca
    ld [$060d], sp
    ld [de], a
    ld a, [de]
    ld [$0b0b], sp
    inc b
    ld b, $00
    dec bc
    dec e
    ld c, $14
    inc de
    ld [de], a
    ld [$0403], sp
    ld a, [de]

jr_016_4283:
    ld c, $05
    ld a, [de]
    dec c
    inc b
    dec d
    nop
    inc bc
    nop
    jr z, @+$21

    jr jr_016_429e

    inc d
    ld a, [de]
    ld bc, $0604
    ld [$1a0d], sp
    inc de
    ld c, $1d
    ld [de], a
    inc b
    nop

jr_016_429e:
    ld de, $0702
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec bc
    ld [$1313], sp
    dec bc
    inc b
    ld a, [de]
    ld bc, $0b00
    dec bc
    dec e
    inc d
    ld [de], a
    inc d
    nop
    dec bc
    dec bc
    jr jr_016_42d8

    nop
    ld [de], a
    ld [de], a
    ld c, $02
    ld [$1300], sp
    inc b
    inc bc
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    inc de
    nop
    ld bc, $040b

jr_016_42d8:
    ld [de], a
    jr nz, jr_016_42f3

    ld c, $14
    ld a, [de]
    dec b
    nop
    ld [$1a0b], sp
    inc de
    ld c, $1a
    dec b
    ld [$030d], sp
    dec e
    ld c, $0d
    inc b
    dec h
    ld a, [de]
    rlca
    ld c, $16

jr_016_42f3:
    inc b
    dec d
    inc b
    ld de, $1f20
    ld d, $04
    dec bc
    dec bc
    dec h
    ld a, [de]
    ld d, $04
    dec bc
    dec bc
    ld hl, $001a
    ld a, [de]
    ld [de], a
    dec bc
    ld c, $13
    inc c
    nop
    ld [bc], a
    rlca
    ld [$040d], sp
    jr nz, jr_016_432e

    inc bc
    ld c, $1a
    jr jr_016_4327

    inc d
    dec e
    dec b
    inc b
    inc b
    dec bc
    ld a, [de]
    dec bc
    inc d
    ld [bc], a
    ld a, [bc]
    jr jr_016_434e

    rra

jr_016_4327:
    jr jr_016_4337

    inc d
    ld de, $031a
    inc b

jr_016_432e:
    inc de
    inc b
    ld [bc], a
    inc de
    ld [$0415], sp
    dec e
    ld [de], a

jr_016_4337:
    ld a, [bc]
    ld [$0b0b], sp
    ld [de], a
    ld a, [de]
    inc de
    inc b
    dec bc
    dec bc
    ld a, [de]
    jr @+$10

    inc d
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    nop
    ld a, [de]
    ld a, [bc]

jr_016_434e:
    inc b
    jr jr_016_436b

    ld d, $0e
    inc d
    dec bc
    inc bc
    dec e
    rrca
    ld de, $010e
    nop
    ld bc, $180b
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    ld [$1412], sp
    rrca

jr_016_436b:
    daa
    rra
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld d, $0e
    inc d
    dec bc
    inc bc
    dec e
    rrca
    ld de, $010e
    nop
    ld bc, $180b
    ld a, [de]
    ld bc, $1a04
    inc de
    rlca
    inc b
    dec e
    inc b
    nop
    ld [de], a
    ld [$1204], sp
    inc de
    ld a, [de]
    ld d, $00
    jr jr_016_43ae

    inc de
    ld c, $1d
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    ld [$1a13], sp
    inc d
    rrca
    daa
    rra
    nop
    ld a, [de]
    inc bc
    ld [$1100], sp
    jr @+$1c

    ld [$1a12], sp

jr_016_43ae:
    rlca
    ld [$0303], sp
    inc b
    dec c
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    ld [$1a12], sp
    inc c
    nop
    ld [bc], a
    rlca
    ld [$040d], sp
    jr nz, @+$21

    ld [$1a13], sp
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $131d
    rlca
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    ld [de], a
    dec bc
    ld c, $13
    dec e
    inc c
    nop
    ld [bc], a
    rlca
    ld [$040d], sp
    ld a, [de]
    rlca
    nop
    ld [de], a
    ld a, [de]
    ld bc, $0404
    dec c
    dec e
    inc d
    ld [de], a
    inc b
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    db $10
    inc d
    ld [$0413], sp
    ld a, [de]
    nop
    dec e
    ld d, $07
    ld [$040b], sp
    jr nz, jr_016_442e

    inc de
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    nop
    dec c
    ld a, [de]
    inc b
    inc c
    rrca
    inc de
    jr jr_016_443d

    ld [de], a
    dec bc
    ld c, $13
    ld a, [de]
    inc c
    nop
    ld [bc], a
    rlca
    ld [$040d], sp
    jr nz, jr_016_444d

jr_016_442e:
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $1214
    ld [$040d], sp
    ld [de], a
    ld [de], a

jr_016_443d:
    dec e
    ld [bc], a
    nop
    ld de, $1a03
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld de, $0004
    inc bc
    ld [de], a

jr_016_444d:
    dec h
    dec e
    ld h, $12
    inc d
    ld b, $00
    ld de, $121a
    rlca
    nop
    ld [bc], a
    ld a, [bc]
    dec e
    inc [hl]
    ld sp, $3731
    ld a, [de]
    ld [de], a
    jr nz, jr_016_447e

    ld [bc], a
    ld c, $13
    inc de
    nop
    ld b, $04
    dec e
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    dec h
    ld a, [de]
    ld [$260b], sp
    inc e
    jr @+$10

    inc d
    ld a, [de]
    dec c

jr_016_447e:
    ld c, $13
    ld [$0402], sp
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld d, $0e
    ld de, $1203
    dec h
    ld a, [de]
    ld h, $02
    ld c, $0c
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    inc b
    inc b
    ld a, [de]
    inc c
    inc b
    dec h
    ld a, [de]
    add hl, bc
    ld c, $04
    jr jr_016_44cb

    ld h, $1d
    ld [de], a
    ld [bc], a
    ld de, $1600
    dec bc
    inc b
    inc bc
    ld a, [de]
    ld c, $0d
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [$2013], sp
    inc e
    ld [de], a
    inc d
    ld b, $00
    ld de, $2827

jr_016_44cb:
    ld a, [de]
    ld [de], a
    inc d
    ld b, $00
    ld de, $001a
    dec c
    inc bc
    dec e
    jr @+$10

    inc d
    ld a, [de]
    ld b, $0e
    ld a, [de]
    ld d, $00
    jr jr_016_44fb

    ld bc, $0200
    ld a, [bc]
    jr nz, @+$22

    jr nz, jr_016_4505

    jr jr_016_44f9

    inc d
    ld a, [de]
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    ld a, [de]
    inc c
    nop
    dec c

jr_016_44f9:
    jr jr_016_4518

jr_016_44fb:
    rlca
    ld c, $13
    ld a, [de]
    dec c
    ld [$0706], sp
    inc de
    ld [de], a

jr_016_4505:
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de
    ld c, $16
    dec c
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    rlca

jr_016_4518:
    inc b
    ld de, $1a20
    jr jr_016_452c

    inc d
    nop
    dec bc
    ld [de], a
    ld c, $1a
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104

jr_016_452c:
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec bc
    nop
    ld [de], a
    inc de
    ld a, [de]
    inc de
    ld [$040c], sp
    ld a, [de]
    jr jr_016_454b

    inc d
    ld a, [de]
    ld [de], a
    nop
    ld d, $1d
    rlca
    inc b
    ld de, $2020
    jr nz, jr_016_4566

    ld [de], a

jr_016_454b:
    rlca
    inc b
    ld a, [de]
    ld d, $00
    ld [de], a
    ld a, [de]
    ld [bc], a
    nop
    ld de, $1811
    ld [$060d], sp
    ld a, [de]
    nop
    ld b, $11
    inc d
    inc bc
    ld b, $04
    dec h
    ld a, [de]
    nop
    ld a, [de]

jr_016_4566:
    jr nz, jr_016_459b

    jr c, jr_016_458f

    ld a, [de]
    nop
    dec c
    inc bc
    ld [de], a
    ld [$1a17], sp
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld [de], a
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    jr jr_016_458f

    inc d
    ld de, $0d1a
    nop
    inc c
    inc b
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b

jr_016_458f:
    inc c
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld [de], a
    ld [$0604], sp

jr_016_459b:
    inc b
    dec bc
    ld a, [hl+]
    ld [de], a
    dec e
    rrca
    inc b
    ld de, $0e12
    dec c
    nop
    dec bc
    ld a, [de]
    inc bc
    ld [$1100], sp
    jr @+$22

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld [$1100], sp
    jr jr_016_45d4

    ld [bc], a
    ld c, $0d
    inc de
    nop
    ld [$120d], sp
    nop
    ld a, [de]
    dec bc
    ld [$1312], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    rrca
    nop
    jr jr_016_45dc

    inc b
    dec c
    inc de
    ld [de], a

jr_016_45d4:
    dec b
    ld c, $11
    ld a, [de]
    inc bc
    ld [$0505], sp

jr_016_45dc:
    inc b
    ld de, $0d04
    inc de
    dec e
    nop
    inc c
    ld c, $14
    dec c
    inc de
    ld [de], a
    jr nz, jr_016_4605

    jr jr_016_45fb

    inc d
    ld a, [de]
    ld [de], a
    inc de
    nop
    ld de, $1313
    ld c, $1a
    ld [de], a
    ld [bc], a
    nop
    dec c

jr_016_45fb:
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    nop
    ld b, $04
    ld [de], a

jr_016_4605:
    jr nz, @+$22

    jr nz, jr_016_4625

    inc c
    nop
    ld de, $3220
    inc [hl]
    ld a, [de]
    ld hl, $1a1d
    ld a, [de]
    dec c
    ld c, $20
    ld sp, $1a1a
    ld b, c
    ld sp, $3831
    dec h
    jr nc, @+$32

    jr nc, @+$1f

    nop
    rrca

jr_016_4625:
    ld de, $3120
    dec [hl]
    ld a, [de]
    ld hl, $1a1d
    ld a, [de]
    dec c
    ld c, $20
    jr nc, jr_016_464d

    ld a, [de]
    ld b, c
    ld a, [de]
    ld [hl-], a
    inc [hl]
    dec h
    jr nc, @+$32

    jr nc, @+$1f

    nop
    rrca
    ld de, $3120
    jr c, jr_016_465e

    ld hl, $1a1d
    ld a, [de]
    dec c
    ld c, $20
    inc sp
    ld a, [de]

jr_016_464d:
    ld a, [de]
    ld b, c
    ld sp, $3534
    dec h
    jr nc, jr_016_4685

    jr nc, @+$1f

    nop
    rrca
    ld de, $3220
    dec [hl]
    ld a, [de]

jr_016_465e:
    ld hl, $1a1d
    ld a, [de]
    dec c
    ld c, $20
    ld [hl-], a
    ld a, [de]
    ld a, [de]
    ld b, c
    ld sp, $3133
    dec h
    jr nc, @+$32

    jr nc, jr_016_468d

    inc c
    nop
    jr jr_016_468f

    ld sp, $1a35
    ld hl, $1a1d
    ld a, [de]
    dec c
    ld c, $20
    jr nc, jr_016_469b

    ld a, [de]
    ld b, c
    ld a, [de]
    ld [hl-], a

jr_016_4685:
    scf
    dec h
    jr nc, jr_016_46b9

    jr nc, jr_016_46a8

    inc c
    nop

jr_016_468d:
    jr @+$1c

jr_016_468f:
    ld sp, $1a39
    ld hl, $1a1d
    ld a, [de]
    dec c
    ld c, $20
    ld [hl], $1a

jr_016_469b:
    ld a, [de]
    ld b, c
    ld sp, $3832
    dec h
    jr nc, @+$32

    jr nc, jr_016_46c2

    add hl, bc
    inc d
    dec c

jr_016_46a8:
    jr nz, jr_016_46db

    dec [hl]
    ld a, [de]
    ld hl, $1a1d
    ld a, [de]
    dec c
    ld c, $20
    jr nc, jr_016_46cf

    ld a, [de]
    ld b, c
    ld a, [de]
    inc sp

jr_016_46b9:
    ld [hl-], a
    dec h
    jr nc, @+$32

    jr nc, jr_016_46dc

    add hl, bc
    inc d
    dec c

jr_016_46c2:
    jr nz, jr_016_46f6

    inc [hl]
    ld a, [de]
    ld hl, $1a1d
    ld a, [de]
    dec c
    ld c, $20
    dec [hl]
    ld a, [de]

jr_016_46cf:
    ld a, [de]
    ld b, c
    ld sp, $3336
    dec h
    jr nc, jr_016_4707

    jr nc, jr_016_46f5

    add hl, bc
    inc d

jr_016_46db:
    dec bc

jr_016_46dc:
    jr nz, jr_016_470f

    jr nc, jr_016_46fa

    ld hl, $1a1d
    ld a, [de]
    dec c
    ld c, $20
    inc [hl]
    ld a, [de]
    ld a, [de]
    ld b, c
    ld sp, $3833
    dec h
    jr nc, @+$32

    jr nc, jr_016_4710

    add hl, bc
    inc d

jr_016_46f5:
    dec bc

jr_016_46f6:
    jr nz, @+$33

    dec [hl]
    ld a, [de]

jr_016_46fa:
    ld hl, $1a1d
    ld a, [de]
    dec c
    ld c, $20
    jr nc, jr_016_471d

    ld a, [de]
    ld b, c
    ld a, [de]
    ld [hl-], a

jr_016_4707:
    add hl, sp
    dec h
    jr nc, @+$32

    jr nc, @+$1e

    inc de
    rlca

jr_016_470f:
    inc b

jr_016_4710:
    ld a, [de]
    dec bc
    ld [$1312], sp
    ld a, [de]
    ld [bc], a
    ld c, $0d
    inc de
    ld [$140d], sp

jr_016_471d:
    inc b
    ld [de], a
    ld bc, $1314
    ld a, [de]
    jr jr_016_4733

    inc d
    ld a, [de]
    dec c
    ld c, $13
    ld [$0402], sp
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]

jr_016_4733:
    ld [bc], a
    ld c, $14
    ld de, $0408
    ld de, $261d
    dec c
    ld c, $20
    jr nc, jr_016_4767

    ld a, [de]
    ld [$1a12], sp
    dec c
    ld c, $13
    dec e
    ld [de], a
    rlca
    ld c, $16
    dec c
    ld a, [de]
    nop
    ld b, $00
    ld [$200d], sp
    rra
    inc de
    rlca
    inc b
    ld de, $1a04
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1a12
    inc de
    ld c, $1d

jr_016_4767:
    ld bc, $1a04
    dec c
    ld c, $1a
    rrca
    ld c, $16
    inc b
    ld de, $131a
    ld c, $1a
    inc de
    rlca
    inc b
    inc b
    dec bc
    inc b
    dec d
    nop
    inc de
    ld c, $11
    jr nz, @+$21

    jr jr_016_4793

    inc d
    ld a, [de]
    ld [bc], a
    inc d
    ld de, $1a01
    jr jr_016_479c

    inc d
    ld de, $061d
    nop

jr_016_4793:
    inc c
    ld bc, $080b
    dec c
    ld b, $1d
    inc de
    inc b

jr_016_479c:
    dec c
    inc bc
    inc b
    dec c
    ld [bc], a
    ld [$1204], sp
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld b, $04
    inc de
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    ld c, $14
    ld b, $07
    inc de
    ld [de], a
    dec e
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    inc b
    jr nz, @+$21

    nop
    ld a, [de]
    dec bc
    inc b
    nop
    inc bc
    ld a, [de]
    ld [bc], a
    ld c, $08
    dec c
    ld a, [de]
    ld [$1d12], sp
    ld [de], a
    inc de
    inc d
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    dec bc
    ld c, $13
    jr nz, jr_016_4802

    rlca
    ld [$1a12], sp
    inc c
    nop
    ld [bc], a
    rlca
    ld [$040d], sp
    ld a, [de]
    ld d, $0e
    dec c
    ld a, [hl+]
    inc de
    ld d, $0e

jr_016_4802:
    ld de, $200a
    rra
    jr jr_016_4816

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    inc d
    rrca

jr_016_4816:
    ld [de], a
    inc de
    nop
    ld [$1211], sp
    ld a, [de]
    rlca
    nop
    dec bc
    dec bc
    ld d, $00
    jr jr_016_4845

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    ld c, $12
    inc de
    inc b
    ld de, $0e1a
    dec b
    dec e
    jr @+$10

    inc d
    dec h
    ld a, [de]
    ld [$1a0d], sp
    jr jr_016_484f

    inc d
    ld de, $041a

jr_016_4845:
    nop
    ld de, $180b
    jr jr_016_484f

    nop
    ld de, $1a12

jr_016_484f:
    nop
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $170e
    inc b
    ld de, $1d20
    inc de
    ld de, $1314
    rlca
    ld a, [de]
    inc de
    inc b
    dec bc
    dec bc
    dec h
    ld a, [de]
    jr jr_016_4877

    inc d
    dec e
    ld d, $04
    ld de, $1a04
    dec c
    inc b
    dec d
    inc b
    ld de, $111a

jr_016_4877:
    inc b
    nop
    dec bc
    dec bc
    jr @+$1f

    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld b, $0e
    ld c, $03
    jr nz, jr_016_48a7

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    ld c, $12
    inc de
    inc b
    ld de, $0e1a
    dec b
    dec e
    ld h, $0f
    inc d
    dec b
    dec b
    ld h, $1a
    inc c
    nop
    ld [bc], a
    inc c
    inc d
    dec b
    dec b

jr_016_48a7:
    ld [$200d], sp
    dec e
    dec c
    ld c, $01
    ld c, $03
    jr jr_016_48cc

    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    dec e
    nop
    ld a, [de]
    inc bc
    ld [$0415], sp
    ld a, [de]
    nop
    ld [de], a
    dec e
    ld b, $11
    nop
    ld [bc], a
    inc b

jr_016_48cc:
    dec b
    inc d
    dec bc
    dec bc
    jr jr_016_48ec

    nop
    ld [de], a
    ld a, [de]
    rlca
    inc b
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    ld c, $12
    inc de
    inc b
    ld de, $0e1a
    dec b
    dec e
    ld h, $03

jr_016_48ec:
    ld c, $06
    rlca
    ld c, $14
    ld [de], a
    inc b
    ld h, $1a
    ld de, $0b08
    inc b
    jr jr_016_491c

    dec e
    nop
    ld a, [de]
    ld bc, $170e
    inc b
    ld de, $161a
    rlca
    ld c, $1a
    ld d, $00
    ld [de], a
    dec e
    dec c
    inc b
    dec d
    inc b
    ld de, $111a
    inc b
    nop
    dec bc
    dec bc
    jr @+$1c

    inc de
    nop
    dec bc

jr_016_491c:
    dec bc
    dec h
    inc de
    rlca
    ld c, $14
    ld b, $07
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0408
    inc bc
    ld a, [de]
    inc de
    ld c, $01
    inc b
    jr nz, @+$21

    nop
    ld a, [de]
    dec bc
    nop
    ld de, $0406
    ld a, [de]
    ld [de], a
    ld [$0d06], sp
    ld a, [de]
    inc de
    inc b
    dec bc
    dec bc
    ld [de], a
    jr jr_016_4956

    inc d
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_016_496e

    inc de
    rlca

jr_016_4956:
    inc b
    dec e
    rrca
    ld de, $1508
    ld [$040b], sp
    ld b, $04
    inc bc
    ld a, [de]
    inc c
    nop
    jr jr_016_4984

    inc b
    dec c
    inc de
    inc b
    ld de, $071a

jr_016_496e:
    inc b
    ld de, $2004
    rra
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    inc d
    dec b
    dec b
    dec e

jr_016_4984:
    inc de
    rlca
    inc b
    jr jr_016_49a3

    inc de
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    ld c, $05
    dec b
    ld a, [de]
    ld c, $05
    dec e
    jr @+$10

    inc d
    daa
    inc e
    jr jr_016_49aa

    inc d
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp

jr_016_49a3:
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld a, [bc]
    dec c

jr_016_49aa:
    ld c, $16
    ld d, $07
    jr jr_016_49ca

    inc de
    rlca
    ld [$1a12], sp
    ld d, $00
    ld [de], a
    ld a, [de]
    ld [de], a
    ld c, $1d
    ld [$0f0c], sp
    ld c, $11
    inc de
    nop
    dec c
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    inc de

jr_016_49ca:
    rlca
    inc b
    inc c
    daa
    ld [$1a05], sp
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    rlca
    ld [$1d12], sp
    rlca
    nop
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld [de], a
    inc b
    jr nz, jr_016_4a10

    jr nz, jr_016_4a11

    jr jr_016_4a02

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    dec e

jr_016_4a02:
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld c, $0b
    ld [$0402], sp
    dec e

jr_016_4a10:
    ld [de], a

jr_016_4a11:
    inc de
    nop
    inc de
    ld [$0d0e], sp
    jr nz, jr_016_4a38

    inc de
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc de
    jr jr_016_4a31

    ld [$0712], sp
    dec e
    dec bc
    nop
    inc c
    rrca
    daa
    rra
    inc de

jr_016_4a31:
    rlca
    inc b
    ld a, [de]
    ld bc, $0d00
    nop

jr_016_4a38:
    dec c
    nop
    ld a, [de]
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1312
    ld c, $1a
    ld bc, $1a04
    ld de, $0f08
    inc b
    jr nz, jr_016_4a6d

    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    ld c, $0e
    ld de, $081a
    dec c
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc de

jr_016_4a6d:
    nop
    inc de
    ld [$0d0e], sp
    jr nz, @+$21

    jr jr_016_4a84

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    dec c
    inc b
    dec d
    inc b
    ld de, $011a
    inc b
    inc b

jr_016_4a84:
    dec c
    dec e
    inc c
    inc d
    ld [bc], a
    rlca
    ld a, [de]
    ld c, $05
    ld a, [de]
    nop
    ld a, [de]
    dec b
    ld de, $0814
    inc de
    dec e
    ld b, $14
    jr @+$22

    rra
    jr jr_016_4aab

    inc d
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]
    dec bc
    ld [$1313], sp
    dec bc
    inc b
    dec e
    rlca

jr_016_4aab:
    inc b
    dec bc
    rrca
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    ld c, $0b
    ld [$0402], sp
    dec h
    ld a, [de]
    ld d, $07
    ld c, $1a
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    dec e
    ld [bc], a
    nop
    ld de, $1a04
    dec bc
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    dec e
    jr @+$10

    inc d
    ld de, $161a
    ld [$030b], sp
    ld a, [de]
    ld [de], a
    inc de
    ld c, $11
    ld [$1204], sp
    jr nz, jr_016_4af5

    dec c
    ld [de], a
    inc de
    inc b
    nop
    inc bc
    dec h
    ld a, [de]

jr_016_4af5:
    inc de
    rlca
    inc b
    jr @+$1f

    inc bc
    inc b
    inc de
    nop
    ld [$1a0d], sp
    jr jr_016_4b11

    inc d
    ld a, [de]
    dec b
    ld c, $11
    dec e
    db $10
    inc d
    inc b
    ld [de], a
    inc de
    ld [$0d0e], sp

jr_016_4b11:
    ld [$060d], sp
    jr nz, jr_016_4b36

    jr nz, @+$21

    dec d
    nop
    dec c
    inc bc
    nop
    dec bc
    ld [$0819], sp
    dec c
    ld b, $1a
    ld [$1d12], sp
    ld bc, $0300
    daa
    ld a, [de]
    dec d
    nop
    dec c
    inc bc
    nop
    dec bc
    ld [$0819], sp
    dec c

jr_016_4b36:
    ld b, $1a
    nop
    rrca
    ld c, $0b
    ld [$0402], sp
    ld a, [de]
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    ld a, [de]
    ld [$1d12], sp
    ld bc, $0300
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    inc de
    inc d
    rrca
    ld [$2703], sp
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0f
    ld [de], a
    ld a, [de]
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_016_4b89

    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    nop
    ld de, $0411
    ld [de], a
    inc de
    ld a, [de]
    jr jr_016_4b90

    inc d
    jr nz, jr_016_4ba4

    jr jr_016_4b95

    inc d
    ld a, [de]

jr_016_4b89:
    ld de, $0004
    dec bc
    ld [$0419], sp

jr_016_4b90:
    ld a, [de]
    inc de
    rlca
    nop
    inc de

jr_016_4b95:
    dec e
    inc b
    dec d
    inc b
    dec c
    ld a, [de]
    inc c
    ld c, $0d
    ld a, [bc]
    inc b
    jr jr_016_4bb4

    ld a, [de]
    inc bc

jr_016_4ba4:
    ld c, $0d
    ld a, [hl+]
    inc de
    inc b
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    inc b
    inc b
    dec bc

jr_016_4bb4:
    ld [de], a
    jr nz, jr_016_4bd6

    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    ld [$1d12], sp
    ld de, $1300
    rlca
    inc b
    ld de, $161a
    nop
    ld de, $1a0c
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    inc de

jr_016_4bd6:
    inc d
    dec b
    dec b
    jr @+$22

    rra
    inc de
    rlca
    inc b
    ld de, $1a04
    nop
    ld de, $1a04
    dec c
    ld c, $1d
    rrca
    nop
    ld [de], a
    ld [de], a
    inc b
    dec c
    ld b, $04
    ld de, $1a12
    ld [$1d0d], sp
    inc de
    rlca
    ld [$1a12], sp
    ld [bc], a
    nop
    ld de, $1f20
    inc de
    rlca
    ld [$1a12], sp
    ld [de], a
    inc b
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    dec e
    ld [de], a
    inc b
    nop
    inc de
    ld [de], a
    ld a, [de]
    ld [$1a12], sp
    inc bc
    inc b
    ld [de], a
    ld [$0d06], sp
    inc b
    inc bc
    dec e
    dec b
    ld c, $11
    ld a, [de]
    inc c
    nop
    rla
    ld [$140c], sp
    inc c
    dec e
    ld [bc], a
    ld c, $0c
    dec b
    ld c, $11
    inc de
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    dec bc
    ld c, $0d
    ld b, $1d
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    inc de
    ld de, $0f08
    ld [de], a
    jr nz, jr_016_4c6e

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    inc bc
    ld a, [de]
    ld bc, $080b
    dec c
    inc bc
    ld [de], a
    dec e
    rrca
    ld de, $1504
    inc b
    dec c
    inc de
    ld a, [de]
    jr jr_016_4c79

    inc d
    ld a, [de]
    dec b

jr_016_4c6e:
    ld de, $0c0e
    dec e
    ld [de], a
    inc b
    inc b
    ld [$060d], sp
    ld a, [de]

jr_016_4c79:
    ld c, $14
    inc de
    ld [de], a
    ld [$0403], sp
    jr nz, @+$21

    jr jr_016_4c92

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]

jr_016_4c92:
    ld c, $05
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld c, $16
    jr nz, jr_016_4cbf

    jr jr_016_4cb0

    inc d
    ld a, [de]
    inc bc
    ld [$0212], sp
    ld c, $15
    inc b
    ld de, $121d
    ld c, $0c

jr_016_4cb0:
    inc b
    inc de
    rlca
    ld [$060d], sp
    dec e
    ld [$130d], sp
    inc b
    ld de, $1204
    inc de

jr_016_4cbf:
    ld [$060d], sp
    daa
    inc e
    nop
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    jr jr_016_4cdc

    inc b
    dec c
    inc de
    ld [de], a
    dec e
    dec b
    ld c, $11
    ld a, [de]
    ld [bc], a
    ld c, $14

jr_016_4cdc:
    ld de, $0408
    ld de, $401a
    jr nc, @+$1f

    nop
    inc bc
    inc bc
    ld a, [de]
    inc d
    rrca
    ld a, [de]
    inc de
    ld c, $20
    jr nz, jr_016_4d10

    dec e
    ld b, c
    ld sp, $3231
    dec h
    jr nc, jr_016_4d28

    jr nc, jr_016_4d21

    rra
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
    dec h
    dec e
    ld h, $0d
    ld c, $13
    ld a, [de]

jr_016_4d10:
    ld de, $1204
    rrca
    ld c, $0d
    ld [de], a
    ld [$0b01], sp
    inc b
    dec e
    dec b
    ld c, $11
    ld a, [de]
    dec bc

jr_016_4d21:
    ld c, $12
    inc de
    ld a, [de]
    ld c, $11
    ld a, [de]

jr_016_4d28:
    ld [de], a
    inc de
    ld c, $0b
    inc b
    dec c
    ld [$0413], sp
    inc c
    ld [de], a
    jr nz, jr_016_4d52

    ld a, [de]
    ld hl, $0713
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    nop
    ld b, $04
    inc c
    inc b
    dec c
    inc de
    jr nz, jr_016_4d6d

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0d
    inc bc
    inc d
    ld [bc], a

jr_016_4d52:
    inc de
    ld c, $11
    dec e
    ld d, $00
    ld [$1213], sp
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec e
    ld b, $11
    inc d
    inc c
    rrca
    jr jr_016_4d84

    dec bc
    ld c, $0e

jr_016_4d6d:
    ld a, [bc]
    ld a, [de]
    ld c, $0d
    dec e
    rlca
    ld [$1a12], sp
    dec b
    nop
    ld [bc], a
    inc b
    jr nz, jr_016_4d9b

    ld d, $07
    nop
    inc de
    ld a, [de]
    nop
    ld a, [de]
    dec c

jr_016_4d84:
    nop
    ld b, $20
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    inc c
    ld c, $14
    inc de
    rlca
    ld a, [de]
    ld [$1a12], sp
    ld b, $0e
    ld [$060d], sp

jr_016_4d9b:
    ld a, [de]
    nop
    dec e
    inc c
    ld [$040b], sp
    ld hl, $2100
    inc c
    ld [$140d], sp
    inc de
    inc b
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld c, $0b
    ld [$0402], sp
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    nop
    dec e
    inc bc
    ld [$1a0c], sp
    dec d
    ld [$1604], sp
    ld a, [de]
    inc d
    rrca
    ld c, $0d
    dec e
    inc de
    ld de, $140e
    ld bc, $040b
    inc c
    nop
    ld a, [bc]
    inc b
    ld de, $1a12
    dec bc
    ld [$040a], sp
    jr @+$10

    inc d
    jr nz, jr_016_4e00

    jr jr_016_4df4

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_016_4e11

jr_016_4df4:
    nop
    ld de, $0411
    ld [de], a
    inc de
    inc b
    inc bc
    ld a, [de]
    dec b
    ld c, $11

jr_016_4e00:
    dec e
    inc bc
    ld [$1312], sp
    inc d
    ld de, $0801
    dec c
    ld b, $1a
    inc de
    rlca
    inc b
    dec e
    rrca

jr_016_4e11:
    inc b
    nop
    ld [bc], a
    inc b
    jr nz, jr_016_4e36

    jr jr_016_4e27

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld [$060d], sp
    dec e

jr_016_4e27:
    ld c, $14
    inc de
    ld [de], a
    ld [$0403], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    nop
    dec e
    inc de
    inc b

jr_016_4e36:
    dec c
    inc b
    inc c
    inc b
    dec c
    inc de
    jr nz, jr_016_4e58

    inc de
    rlca
    ld [$1d12], sp
    rrca
    nop
    ld de, $1a13
    ld c, $05
    ld a, [de]
    inc de
    ld c, $16
    dec c
    ld a, [de]
    ld [$1a12], sp
    ld [de], a
    ld c, $01
    nop
    inc bc

jr_016_4e58:
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc b
    dec d
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    ld a, [de]
    rrca
    ld c, $0b
    ld [$0402], sp
    dec e
    ld [de], a
    inc de
    inc b
    inc b
    ld de, $021a
    dec bc
    inc b
    nop
    ld de, $1f20
    inc de
    rlca
    ld [$1a12], sp
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld a, [de]
    ld de, $0d14
    ld [de], a
    dec e
    rrca
    nop
    ld [de], a
    inc de
    ld a, [de]
    ld [de], a
    inc d
    ld b, $00
    ld de, $121a
    rlca
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [hl+]
    ld [de], a
    nop
    rrca
    nop
    ld de, $0c13
    inc b
    dec c
    inc de
    jr nz, @+$21

    jr jr_016_4ec1

    inc d
    ld a, [de]
    ld c, $14
    ld b, $07
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1d04

jr_016_4ec1:
    nop
    ld [de], a
    rlca
    nop
    inc c
    inc b
    inc bc
    ld a, [de]
    ld c, $05
    dec e
    jr @+$10

    inc d
    ld de, $0412
    dec bc
    dec b
    dec h
    ld a, [de]
    rrca
    inc b
    inc b
    rrca
    ld [$060d], sp
    dec e
    ld [$1a0d], sp
    ld c, $13
    rlca
    inc b
    ld de, $0f1a
    inc b
    ld c, $0f
    dec bc
    inc b
    ld a, [hl+]
    ld [de], a
    dec e
    ld d, $08
    dec c
    inc bc
    ld c, $16
    ld [de], a
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    dec e
    ld bc, $1100
    ld de, $0304
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld c, $16
    jr nz, jr_016_4f34

    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    ld [$1a12], sp
    ld bc, $0c14
    dec h
    ld a, [de]
    jr jr_016_4f40

    inc d
    dec e

jr_016_4f34:
    dec b
    ld [$1406], sp
    ld de, $1a04
    rlca
    inc b
    ld a, [de]
    inc c
    inc d

jr_016_4f40:
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $1d04
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    inc b
    ld [$0706], sp
    ld bc, $110e
    rlca
    ld c, $0e
    inc bc
    dec e
    dec bc
    inc d
    ld [de], a
    rlca
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld de, $0d0e
    inc de
    dec e
    inc bc
    ld c, $0e
    ld de, $131a
    ld c, $1a
    ld [de], a
    inc d
    ld b, $00
    ld de, $121d
    rlca
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld bc, $1200
    inc b
    inc c
    inc b
    dec c
    inc de
    dec e
    nop
    rrca
    nop
    ld de, $0c13
    inc b
    dec c
    inc de
    jr nz, jr_016_4fb2

    ld [$1a13], sp
    rlca
    nop
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    rlca
    inc b
    nop
    rrca
    dec e
    dec bc
    ld c, $02
    ld a, [bc]
    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [$2013], sp
    rra
    nop

jr_016_4fb2:
    dec c
    ld c, $13
    rlca
    inc b
    ld de, $0b1a
    ld c, $02
    ld a, [bc]
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    nop
    ld b, $00
    ld [$1a0d], sp
    dec c
    ld c, $1a
    ld a, [bc]
    inc b
    jr @+$29

    rra
    jr jr_016_4fe0

    inc d
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $081a
    dec b
    dec e
    inc de
    rlca

jr_016_4fe0:
    inc b
    ld de, $1a04
    ld [$1a12], sp
    nop
    dec c
    jr @+$1c

    dec bc
    ld [$040d], sp
    dec e
    ld c, $05
    ld a, [de]
    ld d, $0e
    ld de, $1a0a
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld bc, $0411
    nop
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    inc b
    dec c
    inc de
    inc b
    ld de, $0d08
    ld b, $1d
    inc bc
    inc b
    rrca
    nop
    ld de, $0c13
    inc b
    dec c
    inc de
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0c14
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld [de], a
    ld [$1213], sp
    dec e
    inc de
    rlca
    inc b
    ld de, $1a04
    ld de, $020e
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    nop
    dec c
    inc bc
    ld a, [de]
    dec b
    ld c, $11
    inc de
    rlca
    ld a, [de]
    inc c
    inc d
    inc c
    ld bc, $080b
    dec c
    ld b, $13
    ld c, $1a
    rlca
    ld [$120c], sp
    inc b
    dec bc
    dec b
    jr nz, jr_016_5082

    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0c14
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    ld [$0403], sp
    ld d, $00
    dec bc
    ld a, [bc]
    ld a, [de]
    ld d, $11
    nop
    rrca
    ld [de], a
    dec e

jr_016_5082:
    rlca
    ld [$120c], sp
    inc b
    dec bc
    dec b
    ld a, [de]
    nop
    ld de, $140e
    dec c
    inc bc
    dec e
    jr jr_016_50a1

    inc d
    ld de, $0b1a
    inc b
    ld b, $25
    ld a, [de]
    ld bc, $0604
    ld b, $08
    dec c

jr_016_50a1:
    ld b, $1d
    dec b
    ld c, $11
    ld a, [de]
    nop
    ld a, [de]
    dec c
    ld [$0a02], sp
    inc b
    dec bc
    jr nz, @+$1e

    dec c
    ld c, $13
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_016_50d4

    ld [$1a12], sp
    inc de
    rlca
    ld [$1d12], sp
    nop
    dec c
    dec c
    ld c, $18
    ld [$060d], sp
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    ld [$1d13], sp
    rrca

jr_016_50d4:
    ld de, $1504
    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    jr jr_016_50ec

    inc d
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    ld b, $0e
    ld [$060d], sp
    ld a, [de]
    nop

jr_016_50ec:
    dec c
    jr jr_016_5105

    rlca
    inc b
    ld de, $2004
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0c14
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    dec e
    ld [de], a
    inc de

jr_016_5105:
    nop
    ld de, $0b13
    inc b
    inc bc
    ld a, [de]
    ld bc, $1a18
    jr jr_016_511f

    inc d
    daa
    inc e
    ld h, $16
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc de
    rlca
    nop

jr_016_511f:
    inc de
    dec h
    ld h, $1a
    rlca
    inc b
    dec e
    ld [de], a
    dec bc
    inc d
    ld de, $2512
    ld a, [de]
    ld h, $18
    ld c, $14
    ld a, [de]
    ld d, $00
    dec c
    inc de
    dec e
    inc de
    ld c, $1a
    ld bc, $1814
    ld a, [de]
    inc c
    inc b
    ld a, [de]
    nop
    dec e
    inc bc
    ld [$0d0d], sp
    inc b
    ld de, $2728
    ld h, $1f
    ld h, $00
    dec bc
    ld de, $0608
    rlca
    inc de
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    ld [$161d], sp
    nop
    dec c
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    ld b, $0e
    ld a, [de]
    inc de
    ld c, $1a
    ld [de], a
    ld c, $0c
    inc b
    dec b
    nop
    dec c
    ld [bc], a
    jr jr_016_518f

    ld [de], a
    ld [bc], a
    rlca
    inc c
    nop
    dec c
    ld [bc], a
    jr @+$1f

    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    daa
    ld h, $1a
    rlca
    inc b
    dec e
    dec b
    ld [$080d], sp
    ld [de], a
    rlca

jr_016_518f:
    inc b
    ld [de], a
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec e
    ld bc, $0b04
    ld [bc], a
    rlca
    daa
    inc e
    jr jr_016_51b0

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    dec e

jr_016_51b0:
    inc de
    rlca
    ld [$1a12], sp
    ld b, $14
    jr jr_016_51d3

    ld [$1d12], sp
    rrca
    dec bc
    nop
    jr jr_016_51c9

    dec c
    ld b, $1a
    ld d, $08
    inc de
    rlca
    ld a, [de]

jr_016_51c9:
    nop
    dec e
    dec b
    inc d
    dec bc
    dec bc
    ld a, [de]
    inc bc
    inc b
    ld [bc], a

jr_016_51d3:
    ld a, [bc]
    daa
    rra
    jr jr_016_51e6

    inc d
    ld a, [de]
    ld b, $08
    dec d
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0c14

jr_016_51e6:
    dec e
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    inc c
    ld c, $0d
    inc b
    jr jr_016_5212

    inc e
    ld [de], a
    rrca
    ld de, $1800
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    rrca
    ld [$1313], sp
    dec bc
    inc b
    dec e
    nop
    dec bc
    dec bc
    ld a, [de]
    ld c, $15
    inc b
    ld de, $181a
    ld c, $14
    dec h
    ld a, [de]

jr_016_5212:
    rlca
    inc b
    dec e
    ld [de], a
    nop
    jr jr_016_522b

    dec h
    ld a, [de]
    ld h, $06
    inc b
    inc b
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
    dec bc
    dec h

jr_016_522b:
    ld a, [de]
    ld [$0b2a], sp
    dec bc
    ld a, [de]
    ld b, $0b
    nop
    inc bc
    dec bc
    jr jr_016_5255

    rrca
    nop
    jr @+$1c

    jr jr_016_524c

    inc d
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    dec c
    inc b
    rla
    inc de
    dec e
    inc de
    inc d

jr_016_524c:
    inc b
    ld [de], a
    inc bc
    nop
    jr jr_016_5279

    ld h, $1f
    ld [de], a

jr_016_5255:
    ld c, $02
    ld a, [bc]
    ld c, $27
    inc e
    jr jr_016_526b

    inc d
    ld de, $041a
    rla
    rrca
    inc b
    ld de, $0408
    dec c
    ld [bc], a
    inc b
    ld a, [de]

jr_016_526b:
    nop
    ld [de], a
    nop
    ld a, [de]
    ld bc, $170e
    inc b
    ld de, $141a
    ld [de], a
    inc d
    nop

jr_016_5279:
    dec bc
    dec bc
    jr jr_016_529a

    ld [de], a
    inc b
    ld de, $0415
    ld [de], a
    ld a, [de]
    jr jr_016_5294

    inc d
    ld a, [de]
    rrca
    ld de, $1304
    inc de
    jr jr_016_52ac

    ld d, $04
    dec bc
    dec bc
    dec h

jr_016_5294:
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    inc de

jr_016_529a:
    rlca
    ld [$1a12], sp
    ld b, $14
    jr jr_016_52a5

    ld c, $04
    ld [de], a

jr_016_52a5:
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    dec b
    inc b
    inc b

jr_016_52ac:
    dec bc
    ld a, [de]
    nop
    dec e
    inc de
    rlca
    ld [$060d], sp
    jr nz, jr_016_52d3

    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1d04
    nop
    dec c
    inc b
    ld [de], a
    inc de
    rlca
    inc b
    inc de
    ld [$0419], sp
    inc bc
    ld a, [de]

jr_016_52d3:
    ld bc, $1d18
    nop
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld bc, $0e0e
    add hl, de
    inc b
    jr nz, jr_016_5305

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0c14
    ld a, [de]
    ld b, $11
    nop
    ld bc, $1a12
    inc de
    rlca
    inc b
    dec e
    dec b
    ld c, $0e
    inc bc
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [bc], a
    rlca
    ld c, $16

jr_016_5305:
    ld [de], a
    dec e
    inc bc
    ld c, $16
    dec c
    jr nz, jr_016_5327

    ld bc, $180e
    dec h
    ld a, [de]
    rlca
    inc b
    dec e
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld bc, $0404
    dec c
    dec e
    rlca
    inc d
    dec c
    ld b, $11

jr_016_5327:
    jr jr_016_5350

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    ld [$1a12], sp
    dec c
    ld c, $03
    inc bc
    ld [$060d], sp
    ld c, $05
    dec b
    jr nz, @+$21

    ld [de], a
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld de, $0004
    dec bc
    dec bc
    jr jr_016_5368

    db $10
    inc d

jr_016_5350:
    ld [$0413], sp
    nop
    inc de
    inc de
    ld de, $0200
    inc de
    ld [$0415], sp
    dec h
    ld a, [de]
    ld [$0d12], sp
    ld a, [hl+]
    inc de
    dec e
    ld [de], a
    rlca
    inc b

jr_016_5368:
    jr z, @+$21

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
    ld a, [de]
    ld d, $00
    jr jr_016_5393

    inc de
    ld c, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $13
    rlca
    inc b
    ld de, $021a
    nop
    ld de, $1f20
    jr jr_016_539b

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [de], a

jr_016_5393:
    inc de
    nop
    dec c
    inc bc
    ld [$060d], sp
    ld a, [de]

jr_016_539b:
    ld [$120d], sp
    inc d
    ld b, $00
    ld de, $121a
    rlca
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [hl+]
    ld [de], a
    dec e
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    jr nz, jr_016_53d2

    jr nz, jr_016_53d0

    ld d, $07
    nop
    inc de
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    inc d
    inc c
    rrca
    daa
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    inc c
    nop
    ld a, [bc]
    inc b

jr_016_53d0:
    ld [de], a
    ld a, [de]

jr_016_53d2:
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc b
    ld d, $04
    ld de, $1a12
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    ld b, $0e
    ld c, $03
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc c
    inc b
    dec bc
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [bc], a
    rlca
    inc b
    nop
    rrca
    rrca
    inc b
    ld de, $1405
    inc c
    inc b
    ld a, [de]
    dec b
    ld [$0b0b], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    nop
    ld [$2011], sp
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $00
    dec bc
    dec bc
    ld a, [de]
    dec b
    ld [$1317], sp
    inc d
    ld de, $1d04
    rrca
    ld de, $150e
    ld [$0403], sp
    ld [de], a
    ld a, [de]
    inc c
    ld [$080d], sp
    inc c
    nop
    dec bc
    dec e
    dec bc
    ld [$0706], sp
    inc de
    ld [$060d], sp
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld d, $0e
    ld de, $1d0d
    inc c
    nop
    inc de
    inc de
    ld de, $1204
    ld [de], a
    jr nz, jr_016_546d

    ld [$1a13], sp
    ld [de], a
    nop
    ld b, $12
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    ld [$0303], sp
    dec bc
    inc b
    ld a, [de]
    dec b
    ld de, $0c0e

jr_016_546d:
    inc b
    rla
    ld [bc], a
    inc b
    ld [de], a
    ld [de], a
    ld [$0415], sp
    ld a, [de]
    inc d
    ld [de], a
    inc b
    jr nz, jr_016_549b

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld de, $1204
    ld [de], a
    ld [$060d], sp
    dec e
    inc de
    nop
    ld bc, $040b
    ld a, [de]
    ld d, $07
    ld [$0702], sp
    ld a, [de]
    ld [$1d12], sp

jr_016_549b:
    ld [de], a
    inc de
    ld de, $0004
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    inc bc
    inc d
    ld [de], a
    inc de
    jr nz, jr_016_54ce

    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    ld [$0a02], sp
    ld a, [de]
    inc bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld c, $0d
    dec e
    inc de
    rlca
    ld [$1a12], sp
    dec c
    ld [$0706], sp
    inc de
    ld a, [de]
    inc de
    nop

jr_016_54ce:
    ld bc, $040b
    dec e
    inc c
    nop
    ld a, [bc]
    inc b
    ld [de], a
    ld a, [de]
    jr jr_016_54e8

    inc d
    ld de, $0d1a
    ld c, $12
    inc b
    dec e
    ld [$0213], sp
    rlca
    jr nz, jr_016_5507

jr_016_54e8:
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    nop
    ld de, $0406
    dec e
    ld [bc], a
    dec bc
    ld c, $13
    rlca
    inc b
    ld [de], a
    ld a, [de]
    ld d, $00
    ld de, $1103
    ld c, $01
    inc b
    jr nz, jr_016_5523

jr_016_5507:
    nop
    ld a, [de]
    ld b, $0b
    nop
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    inc c
    ld [$1111], sp
    ld c, $11
    dec h
    ld a, [de]
    inc de
    inc b
    dec bc
    dec bc

jr_016_5523:
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    jr jr_016_553e

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    dec c
    ld c, $13
    dec e
    ld [$1a0d], sp
    nop

jr_016_553e:
    dec c
    jr @+$1c

    ld bc, $1304
    inc de
    inc b
    ld de, $021d
    ld c, $0d
    inc bc
    ld [$0813], sp
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    nop
    dec c
    dec e
    inc de
    rlca
    ld [$1a12], sp
    ld de, $0e0e
    inc c
    jr nz, jr_016_5581

    inc de
    rlca
    inc b
    ld a, [de]
    add hl, bc
    nop
    ld b, $06
    inc b
    inc bc
    ld a, [de]
    nop
    dec c
    ld b, $0b
    inc b
    ld [de], a
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1214
    inc de
    inc b
    inc bc

jr_016_5581:
    dec e
    inc c
    ld [$1111], sp
    ld c, $11
    ld a, [de]
    dec b
    nop
    ld [de], a
    ld [bc], a
    ld [$000d], sp
    inc de
    inc b
    ld [de], a
    dec e
    jr jr_016_55a4

    inc d
    jr nz, jr_016_55b8

    ld bc, $1804
    ld c, $0d
    inc bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de

jr_016_55a4:
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $081d
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    dec e
    rrca
    dec bc
    nop

jr_016_55b8:
    inc de
    dec b
    ld c, $11
    inc c
    jr nz, jr_016_55de

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc de
    ld [$1212], sp
    inc d
    inc b
    jr nz, jr_016_55ea

    jr jr_016_55de

    inc d
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]
    rlca
    ld c, $16
    ld a, [de]
    inc de
    ld c, $1d

jr_016_55de:
    inc d
    ld [de], a
    inc b
    ld a, [de]
    ld [$2113], sp
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de

jr_016_55ea:
    ld a, [de]
    rrca
    inc d
    inc de
    dec e
    ld [$1a13], sp
    inc de
    ld c, $1a
    jr @+$10

    inc d
    ld de, $0d1a
    ld c, $12
    inc b
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld bc, $0e0b
    ld d, $20
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc d
    ld [de], a
    inc b
    inc bc
    dec e
    inc de
    ld [$1212], sp
    inc d
    inc b
    jr nz, @+$21

    inc de
    rlca
    nop
    inc de
    ld a, [de]
    rrca
    ld [$0b0b], sp
    ld c, $16
    ld a, [de]
    rlca
    nop
    ld [de], a
    dec e
    ld [de], a
    inc b
    inc b
    dec c
    ld a, [de]
    ld bc, $1304
    inc de
    inc b
    ld de, $031a
    nop
    jr jr_016_564f

    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $130e
    inc de
    dec bc
    inc b
    ld a, [de]
    ld c, $05

jr_016_564f:
    dec e
    ld [de], a
    inc d
    ld b, $00
    ld de, $122a
    ld a, [de]
    dec b
    nop
    dec d
    ld c, $11
    ld [$0413], sp
    dec e
    rrca
    inc b
    ld de, $1405
    inc c
    inc b
    dec h
    ld a, [de]
    ld h, $0e
    inc bc
    inc b
    ld a, [de]
    inc bc
    inc d
    dec e
    rrca
    ld [$1104], sp
    inc b
    jr nz, jr_016_569f

    rra
    inc de
    rlca
    ld [$1a12], sp
    rrca
    nop
    rrca
    inc b
    ld de, $081a
    ld [de], a
    dec e
    ld c, $0f
    inc b
    dec c
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld c, $01
    ld [$1413], sp
    nop
    ld de, $0408

jr_016_569f:
    ld [de], a
    jr nz, jr_016_56bc

    jr jr_016_56b2

    inc d
    dec e
    dec c
    ld c, $13
    ld [$0402], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]

jr_016_56b2:
    ld [de], a
    inc d
    ld b, $00
    ld de, $121d
    rlca
    nop
    ld [bc], a

jr_016_56bc:
    ld a, [bc]
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    ld [bc], a
    inc d
    inc de
    ld a, [de]
    ld c, $0d
    inc b
    ld a, [de]
    ld c, $14
    inc de
    jr nz, jr_016_56f8

    inc de
    rlca
    ld [$1a12], sp
    ld [de], a
    inc d
    ld de, $1a04
    ld [$1a12], sp
    nop
    dec e
    ld [de], a
    dec bc
    ld [$0a0d], sp
    jr jr_016_5709

    inc bc
    ld de, $1204
    ld [de], a
    daa
    ld a, [de]
    jr @+$10

jr_016_56f8:
    inc d
    dec e
    dec b
    ld [$030d], sp
    ld a, [de]
    ld [$1a13], sp
    nop
    inc de
    inc de
    ld de, $0200
    inc de

jr_016_5709:
    ld [$0415], sp
    ld [$1a0d], sp
    nop
    ld a, [de]
    ld b, $00
    ld de, $1208
    rlca
    ld a, [de]
    ld [de], a
    ld c, $11
    inc de
    dec e
    ld c, $05
    ld a, [de]
    ld d, $00
    jr @+$22

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    ld [$040b], sp
    ld a, [de]
    ld c, $05
    dec e
    ld [de], a
    inc d
    ld b, $00
    ld de, $121a
    rlca
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [hl+]
    ld [de], a
    dec e
    inc bc
    ld [$1311], sp
    jr @+$1c

    ld [bc], a
    dec bc
    ld c, $13
    rlca
    inc b
    ld [de], a
    jr nz, jr_016_576b

    jr jr_016_5761

    inc d
    dec b
    ld [$1406], sp
    ld de, $1a04
    inc de
    ld c, $03
    nop
    jr @+$1c

jr_016_5761:
    ld [$1d12], sp
    dec c
    ld c, $13
    ld a, [de]
    ld d, $00
    ld [de], a

jr_016_576b:
    rlca
    ld a, [de]
    inc bc
    nop
    jr jr_016_5798

    rra
    ld [de], a
    ld d, $08
    ld [de], a
    rlca
    daa
    rra
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
    ld de, $051a
    ld de, $0c0e
    rrca
    ld c, $0b
    ld [$0402], sp
    inc c
    nop
    dec c
    ld a, [de]
    inc c
    ld [bc], a
    inc c

jr_016_5798:
    inc d
    ld de, $070f
    jr @+$15

    rlca
    nop
    inc de
    ld a, [de]
    ld de, $0004
    inc bc
    ld [de], a
    jr nz, jr_016_57c9

    jr nz, jr_016_57c7

    ld h, $02
    ld c, $0d
    ld [de], a
    ld [$0403], sp
    ld de, $131a
    rlca
    ld [$1a12], sp
    nop
    dec e
    inc bc
    inc b
    nop
    inc de
    rlca
    ld a, [de]
    ld bc, $0304
    dec e
    inc de

jr_016_57c7:
    inc b
    ld [de], a

jr_016_57c9:
    inc de
    ld [$0e0c], sp
    dec c
    jr jr_016_57f5

    ld a, [de]
    ld [bc], a
    nop
    inc d
    ld [de], a
    inc b
    dec e
    ld [$1a05], sp
    ld [$001a], sp
    ld [$2a0d], sp
    inc de
    ld a, [de]
    inc bc
    inc b
    nop
    inc bc
    dec e
    dec c
    ld c, $16
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    ld [de], a

jr_016_57f5:
    ld c, $0e
    dec c
    dec e
    nop
    ld [de], a
    ld a, [de]
    ld d, $0e
    ld de, $1a03
    ld c, $05
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $061a
    inc b
    inc de
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    ld hl, $081a
    ld [de], a
    ld c, $0e
    dec c
    ld a, [de]
    ld d, $08
    dec bc
    dec bc
    ld a, [de]
    ld bc, $2704
    inc e
    ld [$0c1a], sp
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1a04
    ld b, $0e
    ld [$060d], sp
    dec e
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    ld c, $15
    inc b
    ld de, $131a
    rlca
    ld [$2512], sp
    dec e
    ld bc, $1314
    ld a, [de]
    ld [$161a], sp
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    ld bc, $1d04
    inc de
    nop
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    nop
    dec bc
    dec bc
    dec e
    nop
    dec bc
    ld c, $0d
    inc b
    daa
    inc e
    add hl, bc
    ld c, $04
    jr jr_016_588f

    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld bc, $0404
    dec c
    rrca
    nop
    jr jr_016_588e

    dec c
    ld b, $1a
    ld c, $05
    dec b
    ld a, [de]
    ld [bc], a

jr_016_588e:
    nop

jr_016_588f:
    rrca
    inc de
    nop
    ld [$020d], sp
    nop
    ld de, $120b
    inc de
    ld c, $0d
    ld a, [de]
    ld c, $15
    inc b
    ld de, $121a
    ld c, $0c
    inc b
    dec c
    inc b
    ld d, $1a
    ld de, $0200
    ld a, [bc]
    inc b
    inc de
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld [de], a
    inc b
    inc de
    inc de
    ld [$060d], sp
    ld a, [de]
    inc d
    rrca
    jr nz, jr_016_58e4

    nop
    dec bc
    dec bc
    ld a, [de]
    ld [$031a], sp
    ld c, $0d
    inc b
    dec h
    ld a, [de]
    ld [$1a12], sp
    nop
    ld [bc], a
    inc de
    nop
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0600
    inc c

jr_016_58e4:
    nop
    dec c
    jr nz, jr_016_5908

    jr nz, @+$1e

    ld [de], a
    ld [$0604], sp
    dec bc
    inc b
    ld a, [de]
    ld b, $08
    dec d
    inc b
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    ld c, $14
    ld b, $07
    ld a, [de]
    inc de
    ld c, $1a
    ld [de], a
    ld c, $0c
    inc b

jr_016_5908:
    ld a, [de]
    inc de
    ld d, $0e
    ld hl, $0801
    inc de
    ld a, [de]
    inc de
    rlca
    inc d
    ld b, $1a
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec e
    ld [de], a
    ld [bc], a
    nop
    ld de, $111a
    inc d
    dec c
    dec c
    ld [$060d], sp
    dec e
    inc de
    rlca
    ld de, $140e
    ld b, $07
    ld a, [de]
    rlca
    ld [$1a12], sp
    inc b
    jr jr_016_593d

    dec h
    dec e
    inc de
    rlca

jr_016_593d:
    ld [$1a12], sp
    inc de
    rlca
    inc d
    ld b, $1a
    ld b, $08
    dec d
    inc b
    ld [de], a
    ld a, [de]
    ld [$1313], sp
    ld c, $1a
    inc c
    inc b
    dec h
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [$061a], sp
    ld [$0415], sp
    dec e
    ld [$1a13], sp
    inc de
    ld c, $1a
    ld [bc], a
    nop
    ld de, $120b
    inc de
    ld c, $0d
    jr nz, @+$1e

    ld [$031a], sp
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    dec e
    inc b
    rla
    nop
    ld [bc], a
    inc de
    dec bc
    jr jr_016_599e

    ld d, $07
    nop
    inc de
    dec e
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [de]
    ld [$1a12], sp
    inc d
    rrca
    ld a, [de]
    inc de
    ld c, $25
    dec e
    ld [$0c2a], sp
    ld a, [de]

jr_016_599e:
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $0600
    inc c
    nop
    dec c
    daa
    ld h, $1f
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    ld c, $0f
    rrca
    inc b
    ld de, $122a
    dec e
    inc d
    dec c
    ld [$0e05], sp
    ld de, $270c
    inc e
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    ld a, [de]
    inc b
    rla
    nop
    inc c
    ld [$000d], sp
    inc de
    ld [$0d0e], sp
    dec e
    ld de, $1504
    inc b
    nop
    dec bc
    ld [de], a
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld c, $16
    dec c
    inc b
    ld de, $081a
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
    ld [de], a
    ld b, $13
    jr nz, jr_016_5a27

    inc c
    nop
    ld [bc], a
    inc c
    inc d
    ld de, $070f
    jr @+$29

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
    dec b
    dec bc
    nop
    inc de
    dec b
    ld c, $0e
    inc de
    dec e

jr_016_5a27:
    ld d, $07
    ld c, $1a
    rrca
    ld [$0a02], sp
    inc b
    inc bc
    ld a, [de]
    jr jr_016_5a42

    inc d
    ld a, [de]
    inc d
    rrca
    dec e
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a

jr_016_5a42:
    ld [$0604], sp
    inc b
    dec bc
    dec e
    inc c
    inc d
    ld de, $0403
    ld de, $1f27
    jr jr_016_5a60

    inc d
    ld a, [de]
    inc de
    rlca
    ld de, $160e
    ld a, [de]
    nop
    ld a, [de]
    dec b
    ld [$1104], sp

jr_016_5a60:
    ld [bc], a
    inc b
    add hl, bc
    nop
    ld bc, $1f27
    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c
    dec bc
    jr jr_016_5a8a

    jr jr_016_5a80

    inc d
    ld a, [hl+]
    ld de, $1d04
    ld [de], a
    nop
    ld [$080b], sp
    dec c
    ld b, $1a
    inc de

jr_016_5a80:
    rlca
    ld de, $140e
    ld b, $07
    dec e
    inc de
    rlca
    inc b

jr_016_5a8a:
    ld a, [de]
    nop
    ld [$2711], sp
    ld a, [de]
    nop
    ld a, [de]
    add hl, bc
    ld c, $0b
    inc de
    ld a, [de]
    ld c, $05
    rrca
    nop
    ld [$1a0d], sp
    rlca
    ld [$1213], sp
    ld a, [de]
    jr jr_016_5ab3

    inc d
    ld a, [de]
    nop
    ld [de], a
    dec e
    jr jr_016_5aba

    inc d
    ld a, [de]
    dec bc
    nop
    dec c
    inc bc
    ld a, [de]

jr_016_5ab3:
    rlca
    nop
    ld de, $1a03
    ld c, $0d

jr_016_5aba:
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    dec bc
    nop
    inc de
    dec b
    ld c, $11
    inc c
    jr nz, jr_016_5ae8

    ld h, $03
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    jr jr_016_5ae0

    inc d
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    dec e
    nop
    dec c
    jr @+$1c

    ld de, $1204

jr_016_5ae0:
    rrca
    inc b
    ld [bc], a
    inc de
    ld a, [de]
    dec b
    ld c, $11

jr_016_5ae8:
    dec e
    jr jr_016_5aef

    ld de, $041a
    dec bc

jr_016_5aef:
    inc bc
    inc b
    ld de, $2712
    ld a, [de]
    ld bc, $180e
    dec h
    dec e
    ld a, [bc]
    ld [$1203], sp
    ld a, [de]
    dec c
    ld c, $16
    nop
    inc bc
    nop
    jr @+$14

    daa
    dec e
    nop
    ld [de], a
    ld [de], a
    nop
    inc d
    dec bc
    inc de
    ld [$060d], sp
    ld a, [de]
    nop
    dec e
    rlca
    nop
    ld de, $0b0c
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    ld c, $0b
    inc bc
    dec e
    ld [bc], a
    ld c, $0d
    inc bc
    inc d
    ld [bc], a
    inc de
    ld c, $11
    daa
    ld h, $1c
    ld [$1a05], sp
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    rlca
    nop
    ld de, $0b0c
    inc b
    ld [de], a
    ld [de], a
    dec h
    dec e
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    jr @+$10

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld de, $020e
    ld a, [bc]
    jr @+$1f

    inc c
    nop
    ld de, $0802
    nop
    dec c
    ld c, $27
    rra
    jr jr_016_5b6d

    inc d
    ld a, [de]
    inc c
    inc d
    inc c
    ld bc, $040b
    dec e
    inc d
    dec c
    ld [bc], a
    ld c, $0d

jr_016_5b6d:
    dec d
    ld [$020d], sp
    ld [$060d], sp
    dec bc
    jr jr_016_5b94

    ld h, $08
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec c
    ld [$0402], sp
    ld a, [de]
    inc bc
    nop
    jr jr_016_5bad

    dec e
    ld [$0d12], sp
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [$2813], sp
    ld h, $1f

jr_016_5b94:
    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    nop
    dec e
    ld bc, $0d14
    ld [bc], a
    rlca
    ld a, [de]
    ld c, $05
    ld a, [de]

jr_016_5bad:
    ld bc, $0d00
    ld a, [bc]
    dec e
    inc bc
    inc b
    rrca
    ld c, $12
    ld [$1a13], sp
    ld [de], a
    dec bc
    ld [$120f], sp
    dec e
    ld bc, $0d14
    inc bc
    dec bc
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $06
    inc b
    inc de
    rlca
    inc b
    ld de, $161d
    ld [$0713], sp
    ld a, [de]
    nop
    ld a, [de]
    ld de, $0114
    ld bc, $1104
    dec e
    ld bc, $0d00
    inc bc
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld de, $1a04
    nop
    ld de, $1a04
    dec b
    ld c, $14
    ld de, $011d
    nop
    dec c
    ld a, [bc]
    ld a, [de]
    inc bc
    inc b
    rrca
    ld c, $12
    ld [$1a13], sp
    ld [de], a
    dec bc
    ld [$120f], sp
    ld [de], a
    inc de
    nop
    rrca
    dec bc
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $06
    inc b
    inc de
    rlca
    inc b
    ld de, $1c20
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    nop
    inc de
    inc b
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    nop
    inc c
    ld c, $14
    dec c
    inc de
    ld [de], a
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    dec bc
    ld [$120f], sp
    ld a, [de]
    nop
    ld de, $2404
    inc e
    inc [hl]
    inc l
    ld sp, $2c35
    inc sp
    add hl, sp
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld b, c
    ld sp, $3032
    jr nc, @+$1f

    dec [hl]
    inc l
    ld sp, $2c35
    inc sp
    add hl, sp
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld b, c
    ld sp, $3533
    jr nc, @+$1f

    ld [hl], $2c
    ld sp, $2c35
    inc sp
    add hl, sp
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld b, c
    ld sp, $3036
    jr nc, jr_016_5c8d

    scf
    inc l
    ld sp, $2c35
    inc sp
    add hl, sp
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld b, c
    ld sp, $3534
    jr nc, jr_016_5c9f

    ld d, $07
    ld c, $00
    dec h
    ld a, [de]
    inc bc
    inc b
    add hl, bc
    nop
    ld a, [de]
    dec d
    inc d

jr_016_5c8d:
    jr nz, jr_016_5caf

    jr nz, @+$1f

    rlca
    nop
    dec d
    inc b
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    inc b

jr_016_5c9f:
    inc b
    dec c
    dec e
    inc de
    rlca
    ld [$1a12], sp
    ld bc, $0504
    ld c, $11
    inc b
    jr z, @+$21

jr_016_5caf:
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0011
    dec c
    inc bc
    ld a, [de]
    dec c
    inc b
    ld d, $1d
    dec d
    nop
    ld [bc], a
    inc d
    inc d
    inc c
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    inc b
    ld de, $1f20
    ld [$1a13], sp
    rlca
    nop
    ld [de], a
    ld a, [de]
    nop
    dec e
    inc bc
    ld [$0f12], sp
    ld c, $12
    nop
    ld bc, $040b
    ld a, [de]
    ld bc, $0600
    jr nz, jr_016_5d08

    jr jr_016_5cf9

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]
    nop
    dec e

jr_016_5cf9:
    ld d, $0e
    ld de, $1a03
    ld [$1a0d], sp
    inc b
    inc bc
    ld b, $04
    ld d, $08
    ld [de], a

jr_016_5d08:
    inc b
    daa
    rra
    jr jr_016_5d1b

    inc d
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $081a
    dec b
    dec e
    ld [de], a
    inc d

jr_016_5d1b:
    ld b, $00
    ld de, $0a1a
    dec c
    ld c, $16
    ld [de], a
    ld a, [de]
    ld d, $07
    nop
    inc de
    dec e
    inc de
    ld c, $1a
    inc bc
    ld c, $1a
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec e
    dec d
    nop
    ld [bc], a
    inc d
    inc d
    inc c
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    inc b
    ld de, $1f28
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec b
    inc d
    dec bc
    dec bc
    ld a, [de]
    dec d
    nop
    ld [bc], a
    inc d
    inc d
    inc c
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    inc b
    ld de, $011a
    nop
    ld b, $27
    inc e
    ld [$1a13], sp
    ld [bc], a
    inc b
    ld de, $0013
    ld [$0b0d], sp
    jr @+$1f

    inc bc
    ld [$0d03], sp
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    ld de, $0e0e
    inc c
    jr nz, jr_016_5da5

    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    dec e
    dec b
    ld [$130b], sp
    rlca
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $1618
    rlca
    inc b
    ld de, $2704
    rra

jr_016_5da5:
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec d
    nop
    ld [bc], a
    inc d
    inc d
    inc c
    dec e
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    inc b
    ld de, $011a
    nop
    ld b, $1a
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld bc, $0608
    ld a, [de]
    ld b, $00
    ld [de], a
    rlca
    ld a, [de]
    ld [$1a0d], sp
    ld [$2013], sp
    rra
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec c
    ld c, $13
    inc b
    dec e
    ld [de], a
    ld [bc], a
    ld de, $0108
    ld bc, $040b
    inc bc
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc b
    dec c
    dec d
    inc b
    dec bc
    ld c, $0f
    inc b
    dec h
    ld a, [de]
    ld [$1d13], sp
    ld de, $0004
    inc bc
    ld [de], a
    dec h
    inc e
    ld h, $12
    inc d
    ld b, $00
    ld de, $1a25
    ld [$1a05], sp
    ld [$0c2a], sp
    dec e
    ld a, [bc]
    dec c
    ld c, $02
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]
    ld c, $05
    dec b
    dec h
    ld a, [de]
    ld b, $08
    dec d
    inc b
    dec e
    inc de
    rlca
    ld [$1a12], sp
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    rlca
    ld [$0504], sp
    dec e
    ld c, $05
    ld a, [de]
    rrca
    ld c, $0b
    ld [$0402], sp
    jr nz, jr_016_5e63

    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    ld [de], a
    inc d
    ld de, $1a04
    ld [bc], a
    nop
    rrca
    inc de
    nop
    ld [$1d0d], sp
    ld [bc], a
    nop
    ld de, $120b
    inc de
    ld c, $0d
    ld a, [de]
    inc bc

jr_016_5e63:
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    dec e
    ld [de], a
    inc b
    inc b
    ld a, [de]
    ld [$2713], sp
    ld h, $1f
    jr @+$10

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    ld [$1d13], sp
    ld d, $08
    inc de
    rlca
    ld a, [de]
    jr @+$10

    inc d
    ld de, $011a
    nop
    ld de, $1d04
    rlca
    nop
    dec c
    inc bc
    ld [de], a
    jr nz, jr_016_5eba

    rlca
    inc b
    ld a, [de]
    rrca
    nop
    jr jr_016_5eb4

    ld a, [de]
    jr jr_016_5eb3

    inc d
    ld a, [de]
    dec c
    ld c, $1d
    nop
    inc de
    inc de
    inc b
    dec c
    inc de
    ld [$0d0e], sp

jr_016_5eb3:
    dec h

jr_016_5eb4:
    ld a, [de]
    ld [$120d], sp
    inc de
    inc b

jr_016_5eba:
    nop
    inc bc
    rlca
    inc b
    ld a, [de]
    dec c
    ld c, $03
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld d, $0e
    inc c
    nop
    dec c
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec e
    dec d
    nop
    ld [bc], a
    nop
    dec c
    inc de
    dec h
    ld a, [de]
    ld b, $0b
    nop
    add hl, de
    inc b
    inc bc
    dec e
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    ld [$1a0d], sp
    rlca
    ld [$1a12], sp
    inc b
    jr jr_016_5efa

    ld [de], a
    jr nz, jr_016_5f18

    rlca

jr_016_5efa:
    ld c, $0d
    ld a, [bc]
    daa
    inc e
    jr @+$10

    inc d
    ld a, [de]
    ld bc, $040b
    ld d, $1a
    jr jr_016_5f18

    inc d
    ld de, $0d1d
    ld c, $12
    inc b
    jr nz, jr_016_5f32

    jr jr_016_5f23

    inc d
    ld a, [hl+]
    dec d

jr_016_5f18:
    inc b
    ld a, [de]
    rlca
    inc b
    nop
    ld de, $1a03
    ld c, $05
    dec e

jr_016_5f23:
    rlca
    nop
    dec d
    ld [$060d], sp
    ld a, [de]
    dec b
    ld [$0401], sp
    ld de, $081a
    dec c

jr_016_5f32:
    dec e
    jr jr_016_5f43

    inc d
    ld de, $031a
    ld [$1304], sp
    jr nz, jr_016_5f5e

    jr nz, jr_016_5f5a

    ld bc, $1314

jr_016_5f43:
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld de, $0308
    ld [$1402], sp
    dec bc
    ld c, $14
    ld [de], a
    daa
    rra
    dec c
    ld c, $1a

jr_016_5f5a:
    inc de
    rlca
    nop
    dec c

jr_016_5f5e:
    ld a, [bc]
    ld [de], a
    dec h
    ld a, [de]
    jr jr_016_5f72

    inc d
    ld a, [hl+]
    dec bc
    dec bc
    dec e
    rrca
    nop
    ld [de], a
    ld [de], a
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de

jr_016_5f72:
    rlca
    nop
    inc de
    daa
    rra
    jr jr_016_5f87

    inc d
    ld a, [de]
    dec bc
    ld [$1a04], sp
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    ld c, $0d
    dec e

jr_016_5f87:
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0304
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    nop
    dec e
    inc c
    ld c, $0c
    inc b
    dec c
    inc de
    jr nz, @+$1e

    nop
    dec b
    inc de
    inc b
    ld de, $001a
    ld a, [de]
    inc c
    ld c, $0c
    inc b
    dec c
    inc de
    dec h
    dec e
    jr jr_016_5fbd

    inc d
    ld a, [de]
    ld bc, $0604
    ld [$1a0d], sp
    inc de
    ld c, $1d
    ld [$0213], sp

jr_016_5fbd:
    rlca
    jr nz, @+$22

    jr nz, jr_016_5fde

    jr jr_016_5fd2

    inc d
    ld a, [de]
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_016_5fe8

    ld b, $04
    inc de
    dec e

jr_016_5fd2:
    inc d
    rrca
    dec h
    ld a, [de]
    dec c
    ld c, $13
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16

jr_016_5fde:
    ld [$060d], sp
    dec e
    ld d, $07
    nop
    inc de
    ld a, [de]
    inc de

jr_016_5fe8:
    jr jr_016_5ff9

    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld bc, $0304
    dec e
    ld bc, $0614
    ld [de], a
    ld a, [de]
    inc c

jr_016_5ff9:
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1d04
    ld bc, $1308
    ld [$060d], sp
    daa
    rra
    rlca
    inc c
    inc c
    dec h
    ld a, [de]
    dec c
    ld c, $13
    ld a, [de]
    inc de
    ld c, $0e
    ld a, [de]
    ld bc, $0300
    daa
    dec e
    nop
    inc bc
    inc bc
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    ld [$1313], sp
    dec bc
    inc b
    dec e
    dec bc
    ld [$120f], sp
    inc de
    ld [$0a02], sp
    dec h
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    dec e
    ld de, $140e
    ld b, $04
    jr nz, jr_016_605e

    jr nz, jr_016_605c

    jr jr_016_6046

    rrca
    dec h
    ld a, [de]
    nop

jr_016_6046:
    ld [bc], a
    inc b
    dec h
    ld a, [de]
    jr jr_016_605a

    inc d
    dec e
    ld d, $0e
    inc d
    dec bc
    inc bc
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    inc c

jr_016_605a:
    nop
    inc bc

jr_016_605c:
    inc b
    dec e

jr_016_605e:
    db $10
    inc d
    ld [$0413], sp
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    nop
    inc c
    inc b
    daa
    rra
    ld b, $14
    dec bc
    rrca
    daa
    ld a, [de]
    jr jr_016_6078

    inc b
    ld [bc], a
    rlca
    daa

jr_016_6078:
    inc e
    jr jr_016_6089

    inc d
    ld de, $131a
    ld c, $0d
    ld b, $14
    inc b
    ld a, [de]
    dec c
    ld c, $16
    dec e

jr_016_6089:
    ld [de], a
    inc c
    inc b
    dec bc
    dec bc
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    nop
    dec e
    ld bc, $110e
    inc bc
    inc b
    dec bc
    dec bc
    ld c, $27
    rra
    jr jr_016_60b1

    inc d
    ld a, [de]
    inc de
    ld de, $1a18
    inc de
    ld c, $1a
    inc de
    rlca
    ld [$0a0d], sp

jr_016_60b1:
    dec e
    ld c, $05
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    dec d
    inc b
    ld de, $0e1d
    rrca
    inc b
    dec c
    ld [$060d], sp
    ld a, [de]
    dec bc
    ld [$040d], sp
    dec h
    ld a, [de]
    ld bc, $1314
    dec e
    ld d, $0e
    ld de, $1203
    ld a, [de]
    inc b
    ld [de], a
    ld [bc], a
    nop
    rrca
    inc b
    ld a, [de]
    jr jr_016_60f0

    inc d
    jr nz, jr_016_6104

    inc de
    rlca
    inc b
    ld a, [de]
    dec d
    nop
    ld [bc], a
    inc d
    inc d
    inc c
    ld a, [de]

jr_016_60f0:
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld d, $0e
    ld de, $200a
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0d00
    ld b, $04

jr_016_6104:
    dec bc
    jr jr_016_6124

    inc b
    dec c
    ld c, $14
    ld b, $07
    dec h
    ld a, [de]
    jr jr_016_611f

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld a, [de]
    dec c
    ld c, $0f
    dec bc
    inc d
    ld b, $27
    rra

jr_016_611f:
    jr jr_016_612f

    inc d
    ld a, [de]
    ld [de], a

jr_016_6124:
    dec bc
    nop
    ld [de], a
    rlca
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    inc de

jr_016_612f:
    rlca
    inc b
    ld bc, $0600
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, [bc]
    dec c
    ld [$0405], sp
    jr nz, jr_016_6164

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0600
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    ld c, $12
    inc de
    dec e
    ld [bc], a
    nop
    inc d
    ld [de], a
    inc b
    dec h
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c

jr_016_6164:
    ld a, [hl+]
    inc de
    dec e
    dec b
    ld [$1a17], sp
    ld [$1a13], sp
    dec c
    ld c, $16
    jr nz, jr_016_6193

    jr nz, jr_016_6194

    ld [$1a13], sp
    ld d, $0e
    inc d
    dec bc
    inc bc
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    dec b
    ld [$1d13], sp
    jr jr_016_6195

    inc d
    dec h
    ld a, [de]
    ld bc, $1204
    ld [$0403], sp
    ld [de], a
    ld a, [de]
    inc de

jr_016_6193:
    rlca

jr_016_6194:
    inc b

jr_016_6195:
    dec e
    ld [bc], a
    ld c, $0b
    ld c, $11
    ld a, [de]
    ld d, $0e
    inc d
    dec bc
    inc bc
    ld a, [de]
    inc bc
    ld c, $1d
    dec c
    ld c, $13
    rlca
    ld [$060d], sp
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    jr @+$10

    inc d
    daa
    rra
    ld [de], a
    rlca
    inc b
    ld a, [de]
    rrca
    ld de, $010e
    nop
    ld bc, $180b
    dec e
    inc de
    rlca
    ld [$0a0d], sp
    ld [de], a
    ld a, [de]
    jr jr_016_61da

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [de], a
    ld c, $0c
    inc b
    ld [de], a
    ld c, $11
    inc de
    ld a, [de]

jr_016_61da:
    ld c, $05
    ld a, [de]
    ld d, $04
    ld [$0311], sp
    ld c, $20
    rra
    inc de
    rlca
    ld [$1a12], sp
    rrca
    ld c, $0b
    ld [$0402], sp
    dec e
    inc d
    dec c
    ld [$0e05], sp
    ld de, $1a0c
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    dec e
    dec bc
    ld c, $0e
    ld [de], a
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld bc, $0600
    ld b, $18
    ld a, [de]
    ld c, $0d
    jr jr_016_6221

    inc d
    jr nz, jr_016_6235

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0f
    dec h
    ld a, [de]
    inc de
    rlca

jr_016_6221:
    ld [$0a0d], sp
    ld [$060d], sp
    dec e
    jr jr_016_6238

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    nop
    ld a, [de]
    ld [bc], a
    ld c, $0c

jr_016_6235:
    ld de, $0300

jr_016_6238:
    inc b
    dec h
    ld [bc], a
    ld c, $0c
    inc b
    ld [de], a
    ld a, [de]
    ld c, $15
    inc b
    ld de, $001a
    dec c
    inc bc
    dec e
    ld [de], a
    inc de
    nop
    ld de, $1213
    ld a, [de]
    inc de
    ld c, $1a
    nop
    ld [de], a
    ld a, [bc]
    ld a, [de]
    ld [$1d05], sp
    jr jr_016_626a

    inc d
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    jr jr_016_6272

    inc d
    ld de, $161d
    inc b
    inc b

jr_016_626a:
    ld a, [bc]
    dec bc
    jr jr_016_6288

    rrca
    nop
    jr jr_016_6293

jr_016_6272:
    ld c, $05
    dec b
    dec e
    jr jr_016_627c

    inc de
    jr nz, jr_016_6297

    nop

jr_016_627c:
    dec b
    inc de
    inc b
    ld de, $061a
    inc b
    inc de
    inc de
    ld [$060d], sp

jr_016_6288:
    ld a, [de]
    nop
    dec e
    ld [de], a
    inc b
    ld [bc], a
    ld c, $0d
    inc bc
    ld a, [de]
    dec bc

jr_016_6293:
    ld c, $0e
    ld a, [bc]
    ld a, [de]

jr_016_6297:
    nop
    inc de
    ld a, [de]
    jr @+$10

    inc d
    nop
    dec c
    inc bc
    ld a, [de]
    jr @+$10

    inc d
    ld de, $011a
    nop
    inc bc
    ld b, $04
    dec e
    dec c
    inc d
    inc c
    ld bc, $1104
    dec h
    ld a, [de]
    rlca
    inc b
    dec e
    inc bc
    ld [$0212], sp
    ld c, $15
    inc b
    ld de, $1a12
    rlca
    ld [$1d12], sp
    inc c
    ld [$1312], sp
    nop
    ld a, [bc]
    inc b
    daa
    inc e
    rlca
    inc b
    ld a, [de]
    inc de
    inc b
    dec bc
    dec bc
    ld [de], a
    ld a, [de]
    jr jr_016_62e7

    inc d
    ld a, [de]
    inc de
    ld c, $1d
    ld de, $0004
    ld [bc], a
    rlca
    ld a, [de]
    dec b
    ld c, $11

jr_016_62e7:
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    inc b
    ld [$080b], sp
    dec c
    ld b, $1a
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    ld c, $1d
    ld a, [bc]
    inc b
    inc b
    rrca
    ld a, [de]
    jr @+$10

    inc d
    ld de, $071a
    nop
    dec c
    inc bc
    ld [de], a
    dec e
    ld d, $07
    inc b
    ld de, $1a04
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld [de], a
    inc b
    inc b
    dec e
    inc de
    rlca
    inc b
    inc c
    daa
    inc e
    ld de, $140e
    ld b, $07
    dec bc
    jr jr_016_6344

    add hl, bc
    inc b
    ld de, $080a
    dec c
    ld b, $1d
    jr jr_016_6342

    inc d
    ld a, [de]
    nop
    dec bc
    ld c, $0d
    ld b, $25
    ld a, [de]
    rlca
    inc b
    dec e
    rlca
    nop

jr_016_6342:
    inc d
    dec bc

jr_016_6344:
    ld [de], a
    ld a, [de]
    jr jr_016_6356

    inc d
    ld a, [de]
    ld [$1a0d], sp
    dec b
    ld c, $11
    dec e
    db $10
    inc d
    inc b
    ld [de], a
    inc de

jr_016_6356:
    ld [$0d0e], sp
    ld [$060d], sp
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    dec e
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld d, $07
    inc b
    ld de, $1a04
    jr jr_016_637e

    inc d
    ld a, [de]
    ld b, $0e
    inc de
    jr jr_016_6385

    inc d
    ld de, $0d1a
    ld [$0402], sp

jr_016_637e:
    ld a, [de]
    ld bc, $140b
    inc b
    dec e
    inc d

jr_016_6385:
    dec c
    ld [$0e05], sp
    ld de, $270c
    rra
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0b
    dec bc
    inc b
    ld [bc], a
    inc de
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec b
    nop
    ld de, $1a04
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    nop
    jr jr_016_63bc

    dec h
    rra
    ld h, $13
    rlca
    nop
    dec c
    ld a, [bc]
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    inc c
    nop
    ld a, [bc]
    inc b

jr_016_63bc:
    dec e
    jr jr_016_63cd

    inc d
    ld de, $0412
    dec bc
    dec b
    dec e
    ld [bc], a
    ld c, $0c
    dec b
    ld c, $11
    inc de

jr_016_63cd:
    nop
    ld bc, $040b
    jr nz, jr_016_63ef

    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    ld d, $08
    dec bc
    dec bc
    ld a, [de]
    ld bc, $1d04
    dec bc
    inc b
    nop
    dec d
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    rlca

jr_016_63ef:
    ld c, $11
    inc de
    dec bc
    jr jr_016_6415

    ld h, $1f
    ld [$1a05], sp
    jr jr_016_640a

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    inc bc
    ld c, $1a
    inc de
    rlca
    nop
    inc de
    nop

jr_016_640a:
    dec c
    inc bc
    ld a, [de]
    ld de, $1504
    inc b
    nop
    dec bc
    dec e
    dec d

jr_016_6415:
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld [de], a
    ld [bc], a
    rlca
    inc b
    inc c
    inc b
    dec e
    inc de
    ld c, $1a
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    ld c, $0c
    inc b
    rlca
    ld c, $16
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    ld c, $05
    inc de
    ld c, $16
    dec c
    ld a, [de]
    ld [de], a
    nop
    dec b
    inc b
    dec bc
    jr jr_016_6471

    jr nz, jr_016_6473

    ld a, [de]
    inc e
    jr @+$10

    inc d
    ld a, [de]
    inc c
    nop
    jr jr_016_6477

    dec bc
    ld [$0415], sp
    dec e
    inc de
    rlca
    ld de, $140e
    ld b, $07
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    jr @+$06

jr_016_6471:
    inc de
    daa

jr_016_6473:
    rra
    jr jr_016_6484

    inc d

jr_016_6477:
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]

jr_016_6484:
    ld c, $05
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld [bc], a
    ld [$1813], sp
    dec e
    inc c
    ld c, $11
    ld b, $14
    inc b
    jr nz, jr_016_64bc

    ld h, $12
    ld [$2011], sp
    jr nz, jr_016_64c4

    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    ld [$0d12], sp
    ld a, [hl+]
    inc de
    inc b
    dec c
    ld c, $14
    ld b, $07
    jr nz, @+$22

    jr nz, @+$28

    rra
    inc de
    rlca

jr_016_64bc:
    inc b
    ld a, [de]
    ld [de], a
    ld [$0d06], sp
    ld a, [de]
    rrca

jr_016_64c4:
    nop
    ld [$130d], sp
    inc b
    inc bc
    dec e
    nop
    ld bc, $150e
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $0016
    jr jr_016_64fa

    ld de, $0004
    inc bc
    ld [de], a
    dec h
    ld a, [de]
    ld h, $02
    ld [$1813], sp
    dec e
    inc c
    ld c, $11
    ld b, $14
    inc b
    jr nz, jr_016_6518

    rra
    ld h, $08
    dec b
    ld a, [de]
    jr jr_016_6507

    inc d

jr_016_64fa:
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    dec c
    ld c, $1d
    ld [bc], a
    nop

jr_016_6507:
    ld [de], a
    rlca
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    jr jr_016_6520

    inc d
    dec e
    ld [bc], a
    nop
    dec c
    ld a, [hl+]

jr_016_6518:
    inc de
    ld a, [de]
    ld de, $0308
    inc b
    ld a, [de]
    inc de

jr_016_6520:
    rlca
    inc b
    dec e
    inc de
    ld de, $0800
    dec c
    daa
    ld h, $1c
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0b
    inc bc
    dec e
    inc c
    nop
    dec c
    ld a, [de]
    ld a, [bc]
    ld [$0a02], sp
    ld [de], a
    ld a, [de]
    jr jr_016_6557

    inc d
    ld a, [de]
    ld c, $05
    dec b
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0800

jr_016_6557:
    dec c
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    ld c, $11
    ld b, $14
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    ld de, $1d0a
    ld [de], a
    ld [$1213], sp
    ld a, [de]
    ld [de], a
    ld [$040b], sp
    dec c
    inc de
    dec bc
    jr jr_016_6596

    ld bc, $0704
    ld [$030d], sp
    ld a, [de]
    rlca
    ld [$1a12], sp
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    jr nz, jr_016_65a9

    nop
    ld a, [de]
    dec c
    inc d
    inc c
    ld bc, $1104
    ld a, [de]
    ld c, $05
    dec e

jr_016_6596:
    ld [bc], a
    dec bc
    ld [$0f0f], sp
    ld [$060d], sp
    ld [de], a
    ld a, [de]
    nop
    ld de, $1d04
    inc de
    nop
    ld [bc], a
    ld a, [bc]
    inc b

jr_016_65a9:
    inc bc
    ld a, [de]
    ld c, $0d
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld d, $00
    dec bc
    dec bc
    jr nz, jr_016_65d4

    jr @+$10

    inc d
    ld a, [de]
    ld de, $0004
    inc bc
    ld a, [de]
    nop
    dec e
    dec b
    inc b
    ld d, $1a
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    inc c
    jr nz, jr_016_65f2

    jr nz, jr_016_65f0

jr_016_65d4:
    ld h, $21
    dec bc
    inc b
    dec c
    dec c
    jr jr_016_65f6

    ld h, $13
    rlca
    inc b
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld d, $04
    nop
    ld [de], a
    dec bc
    inc b
    ld h, $1a
    ld d, $0e
    dec bc

jr_016_65f0:
    dec b
    dec e

jr_016_65f2:
    rlca
    inc b
    ld a, [de]
    inc de

jr_016_65f6:
    ld de, $0600
    ld [$0002], sp
    dec bc
    dec bc
    jr @+$1f

    ld [bc], a
    rlca
    ld c, $0a
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $1a
    inc bc
    inc b
    nop
    inc de
    rlca
    ld a, [de]
    ld c, $0d
    rlca
    ld [$1a12], sp
    ld c, $16
    dec c
    ld a, [de]
    ld d, $0e
    ld de, $1203
    jr nz, jr_016_6647

    inc e
    ld h, $21
    ld bc, $0e0b
    ld c, $03
    jr jr_016_6645

    ld bc, $1304
    inc de
    jr jr_016_664e

    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec bc
    inc d
    rrca
    ld [$0e0d], sp
    ld hl, $121d
    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $0e

jr_016_6645:
    ld a, [bc]
    ld a, [de]

jr_016_6647:
    nop
    ld a, [de]
    dec b
    nop
    inc de
    nop
    dec bc

jr_016_664e:
    dec e
    ld c, $15
    inc b
    ld de, $0e03
    ld [de], a
    inc b
    ld a, [de]
    ld c, $05
    dec e
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld bc, $120e
    jr nz, jr_016_668b

    inc e
    ld h, $21
    ld [de], a
    inc de
    inc b
    dec d
    inc b
    ld a, [de]
    ld h, $13
    rlca
    inc b
    dec e
    nop
    inc bc
    inc c
    ld [$0011], sp
    dec bc
    ld h, $1a
    rlca
    nop
    dec bc
    dec bc
    ld [de], a
    inc b
    jr jr_016_66a5

    dec e
    nop
    ld a, [de]
    dec b
    ld c, $11
    inc c

jr_016_668b:
    inc b
    ld de, $031a
    ld de, $0c14
    inc c
    inc b
    ld de, $161d
    rlca
    ld c, $1a
    nop
    ld [bc], a
    ld [bc], a
    ld [$0403], sp
    dec c
    inc de
    nop
    dec bc
    dec bc

jr_016_66a5:
    jr jr_016_66c4

    ld [$0f0c], sp
    nop
    dec bc
    inc b
    inc bc
    ld a, [de]
    rlca
    ld [$120c], sp
    inc b
    dec bc
    dec b
    ld a, [de]
    ld c, $0d
    nop
    ld a, [de]
    inc bc
    ld de, $0c14
    ld [de], a
    inc de
    ld [$0a02], sp

jr_016_66c4:
    jr nz, jr_016_66ec

    inc e
    ld h, $21
    dec c
    ld c, $13
    ld [$0402], sp
    ld hl, $0f1d
    dec bc
    inc b
    nop
    ld [de], a
    inc b
    ld a, [de]
    ld de, $0c04
    ld c, $15
    inc b
    ld a, [de]
    nop
    dec bc
    dec bc
    dec e
    rrca
    inc b
    ld de, $0e12
    dec c
    nop
    dec bc
    ld a, [de]

jr_016_66ec:
    inc de
    rlca
    ld [$060d], sp
    ld [de], a
    dec e
    dec b
    ld de, $0c0e
    ld a, [de]
    ld bc, $030e
    ld [$1204], sp
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld a, [bc]
    inc b
    inc b
    rrca
    ld a, [de]
    inc de
    rlca
    inc b
    inc c
    ld a, [de]
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    jr nz, jr_016_6746

    rra
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
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    ld [$0f0c], sp
    nop
    inc de
    ld [$0d04], sp
    inc de
    jr nz, jr_016_675f

    inc de
    rlca
    ld [$1a12], sp
    ld [bc], a

jr_016_6746:
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $081a
    ld [de], a
    dec e
    ld [de], a
    inc c
    inc d
    inc bc
    ld b, $04
    inc bc
    jr nz, jr_016_6773

    ld d, $07
    ld c, $1a
    ld a, [bc]
    dec c

jr_016_675f:
    ld c, $16
    ld [de], a
    ld d, $07
    nop
    inc de
    ld a, [de]
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    ld c, $0d
    dec e

jr_016_6773:
    ld [$2013], sp
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
    dec bc
    ld a, [de]
    ld b, $00
    inc de
    inc b
    dec e
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    inc c
    ld c, $11
    ld b, $14
    inc b
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld [$0d06], sp
    ld a, [de]
    ld c, $15
    inc b
    ld de, $131a
    rlca
    inc b
    dec e
    inc bc
    ld c, $0e
    ld de, $111a
    inc b
    nop
    inc bc
    ld [de], a
    dec h
    dec e
    ld h, $00
    inc d
    inc de
    rlca
    ld c, $11
    ld [$0419], sp
    inc bc
    dec e
    rrca
    inc b
    ld de, $0e12
    dec c
    dec c
    inc b
    dec bc
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_016_67fc

    ld h, $1f
    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    rlca
    inc d
    inc bc
    inc bc
    inc b
    ld de, $001a
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    dec c
    ld c, $13
    ld [$0402], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de

jr_016_67fc:
    ld [$0b13], sp
    inc b
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0e0e
    ld a, [bc]
    ld a, [de]
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    dec e
    ld de, $0004
    inc bc
    ld [$060d], sp
    dec h
    ld a, [de]
    ld h, $0c
    inc d
    ld de, $0403
    ld de, $081d
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0414
    ld a, [de]
    inc c
    ld c, $11
    ld b, $14
    inc b
    ld h, $01
    jr @+$1c

    inc b
    inc bc
    ld b, $00
    ld de, $001a
    dec bc
    dec bc
    inc b
    dec c
    dec e
    rrca
    ld c, $04
    daa
    rra
    jr jr_016_6859

    inc d
    ld a, [de]
    dec b
    ld [$1406], sp
    ld de, $1a04
    inc de
    rlca
    ld [$1d12], sp

jr_016_6859:
    ld a, [bc]
    inc b
    jr jr_016_6877

    inc c
    nop
    jr jr_016_687b

    ld bc, $0b04
    ld c, $0d
    ld b, $1a
    inc de
    ld c, $1d
    ld bc, $0d0e
    inc bc
    ld d, $04
    dec bc
    dec bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    rlca

jr_016_6877:
    ld c, $14
    ld [de], a
    inc b

jr_016_687b:
    jr nz, jr_016_689a

    nop
    dec bc
    inc de
    rlca
    ld c, $14
    ld b, $07
    dec h
    ld a, [de]
    jr @+$10

    inc d
    dec e
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    ld bc, $1a04
    ld d, $11
    ld c, $0d
    ld b, $20

jr_016_689a:
    rra
    ld h, $00
    inc de
    inc de
    inc b
    dec c
    inc de
    ld [$0d0e], sp
    ld a, [de]
    nop
    dec bc
    dec bc
    dec e
    rrca
    nop
    ld [de], a
    ld [de], a
    inc b
    dec c
    ld b, $04
    ld de, $2512
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    ld d, $08
    dec bc
    dec bc
    ld a, [de]
    ld [de], a
    ld c, $0e
    dec c
    ld a, [de]
    ld bc, $0304
    inc b
    rrca
    nop
    ld de, $0813
    dec c
    ld b, $20
    jr nz, jr_016_68f8

    ld h, $1f
    ld h, $08
    dec b
    ld a, [de]
    jr jr_016_68ee

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    dec e
    rrca
    nop
    jr jr_016_6906

    inc de
    rlca

jr_016_68ee:
    inc b
    ld a, [de]
    dec b
    nop
    ld de, $2504
    ld a, [de]
    inc de
    rlca

jr_016_68f8:
    inc b
    dec c
    jr @+$10

    inc d
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]

jr_016_6906:
    inc de
    ld c, $1a
    ld b, $04
    inc de
    ld c, $05
    dec b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    daa
    ld h, $1f
    jr jr_016_692c

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    inc d
    dec c
    nop
    ld bc, $040b
    ld a, [de]
    inc de

jr_016_692c:
    ld c, $1d
    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    nop
    inc bc
    inc bc
    ld de, $1204
    ld [de], a
    ld a, [de]
    ld c, $0d
    dec e
    ld bc, $0d0e
    inc bc
    ld d, $04
    dec bc
    dec bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc bc
    ld de, $1508
    inc b
    ld de, $0b12
    ld [$0402], sp
    dec c
    ld [de], a
    inc b
    jr nz, jr_016_6980

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_6980:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
