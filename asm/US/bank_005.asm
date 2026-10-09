; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    sbc h
    ld b, b
    ret nz

    ld b, b
    db $e4
    ld b, b
    ld [$3341], sp
    ld b, c
    ld d, b
    ld b, c
    ld a, e
    ld b, c
    and [hl]
    ld b, c
    jp $e041


    ld b, c
    rst RST_28
    ld b, c
    inc de
    ld b, d
    ld c, h
    ld b, d
    ld [hl], a
    ld b, d
    xor c
    ld b, d
    add $42
    push de
    ld b, d
    db $eb
    ld b, d
    inc h
    ld b, e
    ld b, c
    ld b, e
    ld d, a
    ld b, e
    ld e, a
    ld b, e
    ld h, a
    ld b, e
    ld a, l
    ld b, e
    sub e
    ld b, e
    sub h
    ld b, e
    or c
    ld b, e
    adc $43
    db $eb
    ld b, e
    ld [$1744], sp
    ld b, h
    rra
    ld b, h
    ld l, $44
    ld [hl], $44
    ld b, l
    ld b, h
    ld h, d
    ld b, h
    sub h
    ld b, h
    sbc h
    ld b, h
    ld b, $45
    inc e
    ld b, l
    ld [hl-], a
    ld b, l
    ld b, c
    ld b, l
    ld d, b
    ld b, l
    sub a
    ld b, l
    jp nz, $d145

    ld b, l
    reti


    ld b, l
    ld b, e
    ld b, [hl]
    ld h, a
    ld b, [hl]
    sbc c
    ld b, [hl]
    xor b
    ld b, [hl]
    push bc
    ld b, [hl]
    add $46
    rst RST_38
    ld b, [hl]
    ld c, $47
    add hl, sp
    ld b, a
    ld h, h
    ld b, a
    ld l, h
    ld b, a
    add d
    ld b, a
    adc d
    ld b, a
    sbc c
    ld b, a
    xor b
    ld b, a
    or a
    ld b, a
    cp b
    ld b, a
    call c, Call_000_0047
    ld c, b
    rrca
    ld c, b
    ld e, $48
    dec l
    ld c, b
    inc a
    ld c, b
    ld c, e
    ld c, b
    ld e, d
    ld c, b
    ld l, c
    ld c, b
    ld a, b
    ld c, b
    add a
    ld c, b
    adc a
    ld c, b
    and l
    ld c, b
    jp nz, Jump_000_2c48

    ld c, h
    jr nc, @+$71

    add h
    nop
    ld b, c
    jr nc, jr_005_40e4

    jr nc, jr_005_4106

    add h
    ld [bc], a
    ld b, d
    jr z, jr_005_40f3

    nop
    inc c
    nop
    nop
    rst RST_38
    ld h, b
    ld l, a
    ld h, b
    ld l, a
    nop
    ld bc, $18ff
    ld d, a
    jr nz, jr_005_412b

    dec b
    nop
    rst RST_38
    rst RST_38
    jr z, @+$49

    inc b
    dec d
    nop
    ld [bc], a
    rst RST_38
    db $10
    cpl
    jr @+$46

    add b
    inc bc
    nop
    db $10
    scf
    ld d, b
    ld h, a
    nop
    inc b
    rst RST_38
    ld d, b
    ld l, a
    jr jr_005_4148

    dec b
    ld bc, $30ff
    ld b, a
    jr jr_005_4107

    nop
    dec bc
    rst RST_38
    rst RST_38

jr_005_40e4:
    ld hl, $604a
    ld l, a
    nop
    dec b
    rst RST_38
    nop
    jr nz, jr_005_40f1

    ld l, a
    dec b
    ld [bc], a

jr_005_40f1:
    rst RST_38
    ld d, l

jr_005_40f3:
    ld l, a
    ld b, $4f
    dec b
    inc bc
    rst RST_38
    ld h, $2f
    jr nc, jr_005_413c

    nop
    ld c, $ff
    ld b, d
    ld c, a
    inc hl
    dec [hl]
    nop
    ld l, h

jr_005_4106:
    rst RST_38

jr_005_4107:
    rst RST_38
    jr c, jr_005_4151

    ld h, b
    ld l, a
    ld [bc], a
    ld bc, $2949
    ld b, l
    nop
    dec d
    nop
    ld b, $ff
    db $10
    cpl
    add hl, de
    ld b, e
    add b
    rlca
    ld bc, $3710
    ld d, b
    ld l, a
    nop
    ld [$50ff], sp
    ld l, a
    jr jr_005_4197

    dec b
    ld [bc], a
    rst RST_38

jr_005_412b:
    nop
    rrca
    nop
    ld l, a
    dec b
    inc b
    rst RST_38
    rst RST_38
    ld b, b
    ld l, a
    ld l, b
    ld l, a
    nop
    add hl, bc
    rst RST_38
    nop
    rlca

jr_005_413c:
    ld b, b
    ld c, a
    nop
    ld a, [bc]
    rst RST_38
    jr nz, jr_005_4192

    jr z, jr_005_41ac

    ld bc, $ff0c

jr_005_4148:
    db $10
    rra
    db $10
    rra
    nop
    ld l, l
    rst RST_38
    rst RST_38
    ld h, b

jr_005_4151:
    ld h, a
    ld c, b
    ld c, a
    add e
    daa
    ld a, [de]
    nop
    rra
    ld b, b
    ld l, a
    dec b
    rlca
    rst RST_38
    ld d, b
    ld l, a
    jr c, jr_005_41d1

    nop
    inc c
    rst RST_38
    jr nz, jr_005_41b6

    ld [$802f], sp
    dec c
    ld [bc], a
    inc b
    ld [de], a
    inc b
    ccf
    dec b
    dec b
    rst RST_38
    ld d, l
    ld l, a
    inc b
    scf
    dec b
    ld b, $ff
    rst RST_38
    db $10
    rra
    ld b, d
    ld d, e
    nop
    inc de
    rst RST_38
    nop
    rra
    nop
    ld l, a
    dec b
    ld [$30ff], sp
    ld c, c
    dec [hl]
    ld l, a
    nop
    rrca
    rst RST_38
    dec [hl]
    dec sp

jr_005_4192:
    nop
    rrca
    nop
    db $10
    rst RST_38

jr_005_4197:
    ld d, d
    ld e, a
    ld c, b
    ld d, e
    add b
    ld [de], a
    inc bc
    ld b, b
    ld l, a
    nop
    ld h, a
    nop
    ld de, $ffff
    dec [hl]
    inc a
    nop
    daa
    nop
    inc d

jr_005_41ac:
    rst RST_38
    ld h, b
    ld h, a
    inc h
    ld l, a
    dec b
    ld [$00ff], sp
    rrca

jr_005_41b6:
    jr nz, jr_005_4217

    dec b
    add hl, bc
    rst RST_38
    inc h
    ld c, d
    ld h, h
    ld l, a
    dec b
    ld a, [bc]
    rst RST_38
    rst RST_38
    inc d
    ld a, [hl+]
    jr nc, jr_005_4206

    nop
    dec d
    rst RST_38
    inc c
    rra
    db $10
    ld h, $00
    ld d, $ff

jr_005_41d1:
    inc h
    scf
    db $10
    ld h, $00
    rla
    rst RST_38
    ld d, c
    ld l, a
    nop
    cpl
    dec b
    add hl, bc
    rst RST_38
    rst RST_38
    ld e, b
    ld h, c
    ccf
    ld c, b
    nop
    jr @+$01

    jr jr_005_4238

    dec c
    ld l, a
    dec b
    inc c
    rst RST_38
    rst RST_38
    ld e, [hl]
    ld l, d
    jr nc, jr_005_422a

    nop
    add hl, de
    rst RST_38
    ld e, [hl]
    ld l, d
    jr c, jr_005_4239

    nop
    ld a, [de]
    rst RST_38
    ld e, [hl]
    ld l, d
    ld b, b
    ld b, a
    nop
    dec de
    rst RST_38
    ld e, [hl]
    ld l, d

jr_005_4206:
    ld c, b
    ld c, a
    nop
    inc e
    rst RST_38
    rrca
    ld c, a
    nop
    ld l, a
    dec b
    inc c
    rst RST_38
    rst RST_38
    add hl, bc
    rla
    ld h, b
    ld l, a

jr_005_4217:
    ld [bc], a
    nop
    ld c, e
    db $10
    jr jr_005_425d

    ld b, a
    nop
    dec e
    rst RST_38
    add hl, de
    ld c, [hl]
    jr z, jr_005_4294

    nop
    ld e, $ff
    ld d, h
    ld e, e

jr_005_422a:
    ld h, b
    ld h, a
    add e
    jr z, jr_005_424a

    ld e, l
    ld h, h
    ld h, d
    ld l, c
    add e
    add hl, hl
    inc e
    ld h, [hl]
    ld l, l

jr_005_4238:
    ld h, [hl]

jr_005_4239:
    ld l, l
    add e
    ld a, [hl+]
    dec e
    nop
    ld [$6f18], sp
    dec b
    rrca
    rst RST_38
    ld e, b
    ld l, a
    dec d
    ld e, e
    dec b
    db $10

jr_005_424a:
    rst RST_38
    rst RST_38
    ld [$1828], sp
    cpl
    ld bc, $ff02
    ld b, a
    ld e, [hl]
    ld e, [hl]
    ld h, a
    nop
    rra
    rst RST_38
    ld e, b
    ld l, a
    db $10

jr_005_425d:
    inc [hl]
    nop
    jr nz, @+$01

    jr nc, @+$59

    nop
    cpl
    dec b
    ld [de], a
    rst RST_38
    nop
    ld c, e
    ld b, h
    ld l, a
    ld bc, $ff01
    dec c
    ld d, l
    jr nc, jr_005_42d0

    ld bc, $ff00
    rst RST_38
    ld a, [hl+]
    ld c, h
    dec bc
    inc sp
    nop
    ld hl, $53ff
    ld l, a
    dec bc
    inc sp
    nop
    ld hl, $28ff
    ld [hl], $35
    ld b, l
    nop
    ld [hl+], a
    rst RST_38
    add hl, sp
    ld c, h
    ld a, [hl-]
    ld b, l
    nop
    inc hl
    rst RST_38
    ld d, b

jr_005_4294:
    ld e, l
    dec a
    ld b, h
    nop
    inc h
    rst RST_38
    ld [bc], a
    dec de
    inc b
    ld e, [hl]
    dec b
    inc d
    rst RST_38
    ld [hl+], a
    ld e, a
    ld b, [hl]
    ld h, e
    ld bc, $ff03
    rst RST_38
    ld [$1817], sp
    ld b, [hl]
    nop
    dec h
    rst RST_38
    ld e, a
    ld l, a
    dec de
    ccf
    nop
    ld h, $ff
    ld d, c
    ld e, l
    jr nz, jr_005_42f6

    nop
    daa
    rst RST_38
    inc h
    ld c, e
    inc d
    ld e, b
    dec b
    dec d
    rst RST_38
    rst RST_38
    nop
    ld l, a
    inc h
    ld l, a
    nop
    ld sp, $5bff
    ld l, h
    nop

jr_005_42d0:
    rra
    dec b
    db $10
    rst RST_38
    rst RST_38
    ld h, a
    ld l, a
    nop
    daa
    dec b
    ld [de], a
    rst RST_38
    nop
    ld l, a
    jr jr_005_434f

    nop
    ld [hl-], a
    rst RST_38
    jr c, jr_005_4344

    jr nz, jr_005_431e

    dec b
    ld de, $ffff
    scf
    ld l, b
    inc de
    jr z, jr_005_42f0

jr_005_42f0:
    jr z, @+$01

    dec c
    daa
    inc l
    ld c, a

jr_005_42f6:
    dec b
    ld b, a
    rst RST_38
    inc c
    daa
    ld a, [hl-]
    ld c, a
    dec b
    ld b, a
    rst RST_38
    inc d
    dec hl
    inc de
    add hl, sp
    dec b
    ld b, $ff
    ld b, b
    ld e, e
    add hl, hl
    ld e, h
    dec b
    dec de
    rst RST_38
    jr nc, jr_005_437f

    jr z, jr_005_4371

    nop
    add hl, hl
    rst RST_38
    nop
    dec c
    nop
    ld c, l
    dec b
    ld d, $ff
    jr nc, jr_005_436d

jr_005_431e:
    ld l, b
    ld l, a
    dec b
    jr @+$01

    rst RST_38
    jr c, jr_005_4375

    jr z, jr_005_435f

    nop
    dec hl
    rst RST_38
    ld b, a
    ld e, d
    ld a, $51
    add e
    dec hl
    ld e, $17
    ld e, b
    ld d, $51
    nop
    ld [hl], h
    rst RST_38
    inc d
    ld e, e
    rlca
    ld h, b
    nop
    ld a, [hl+]
    rst RST_38
    rst RST_38
    ld [$2858], sp

jr_005_4344:
    ld d, a
    add b
    inc l
    dec d
    db $10
    rra
    ld e, b
    ld l, a
    ld [bc], a
    inc bc
    ld c, l

jr_005_434f:
    ld h, b
    ld l, a
    jr z, jr_005_43c2

    dec b
    ld e, $ff
    rst RST_38
    ld [$3068], sp
    ld l, a
    dec b
    inc hl
    rst RST_38
    rst RST_38

jr_005_435f:
    ld [$3068], sp
    ld l, a
    dec b
    jr z, @+$01

    rst RST_38
    nop
    daa
    nop
    db $10
    dec b
    inc de

jr_005_436d:
    rst RST_38
    scf
    ld h, c
    ld e, d

jr_005_4371:
    ld l, a
    dec b
    ld [hl+], a
    rst RST_38

jr_005_4375:
    jr nc, jr_005_43de

    nop
    ld c, a
    dec b
    ld d, $ff
    rst RST_38
    nop
    inc c

jr_005_437f:
    ld [$003f], sp
    dec l
    rst RST_38
    ld h, e
    ld l, a
    ld [$003f], sp
    dec l
    rst RST_38
    jr nz, jr_005_43dc

    jr jr_005_43df

    dec b
    jr nz, @+$01

    rst RST_38
    rst RST_38
    ld [hl-], a
    ld c, e
    inc e
    ld c, a
    dec b
    dec l
    rst RST_38
    nop
    cpl
    ld b, [hl]
    ld l, a
    dec b
    inc h
    rst RST_38
    ld b, b
    ld l, a
    ld b, l
    ld l, a
    dec b
    add hl, hl
    rst RST_38
    nop
    ld l, a
    nop
    ld d, a
    nop
    ld c, d
    rst RST_38
    rst RST_38
    inc sp
    ld c, e
    nop
    jr nc, jr_005_43bb

    ld sp, $00ff
    cpl
    ld b, l

jr_005_43bb:
    ld l, a
    dec b
    dec h
    rst RST_38
    ld b, b
    ld l, a
    ld b, l

jr_005_43c2:
    ld l, a
    dec b
    ld a, [hl+]
    rst RST_38
    jr jr_005_4437

    nop
    ld e, a
    nop
    ld d, a
    rst RST_38
    rst RST_38
    jr nz, jr_005_4411

    rra
    ld d, b
    dec b
    inc sp
    rst RST_38
    nop
    ld d, a
    ld b, l
    ld l, a
    dec b
    ld h, $ff

jr_005_43dc:
    ld b, b
    ld l, a

jr_005_43de:
    ld b, l

jr_005_43df:
    ld l, a
    dec b
    dec hl
    rst RST_38
    nop
    ld l, a
    nop
    ld e, b
    nop
    ld e, b
    rst RST_38
    rst RST_38
    ld d, b
    ld h, a
    jr c, jr_005_445e

    ld bc, $ff09
    nop
    cpl
    ld b, l
    ld l, a
    dec b
    daa
    rst RST_38
    nop
    cpl
    ld b, l
    ld l, a
    dec b
    inc l
    rst RST_38
    nop
    ld l, a
    db $10
    ld b, h
    dec b
    add hl, sp
    rst RST_38
    rst RST_38
    dec h
    ld c, d
    ld [hl+], a
    ld l, a
    dec b
    ld b, c
    rst RST_38
    ld [bc], a
    ld l, h

jr_005_4411:
    nop
    ld hl, $1805
    rst RST_38
    rst RST_38
    nop
    ld l, a
    jr jr_005_448a

    nop
    cpl
    rst RST_38
    rst RST_38
    nop
    ld c, h
    ld d, $6f
    nop
    ld [hl], $ff
    ld c, l
    ld l, a
    ld c, b
    ld l, a
    ld [bc], a
    ld [bc], a
    rst RST_38
    rst RST_38
    jr jr_005_448c

    ld [$006f], sp
    inc [hl]
    rst RST_38
    rst RST_38
    ld [bc], a

jr_005_4437:
    rla
    ld c, b
    ld e, c
    add h
    ld b, $43
    ld [$1c5e], sp
    ld a, a
    nop
    dec [hl]
    rst RST_38
    rst RST_38
    nop
    ld l, a
    nop
    inc de
    nop
    inc a

Jump_005_444b:
    rst RST_38
    nop
    ld l, a
    inc d
    ld l, a
    dec b
    ld b, a
    rst RST_38
    ld h, $3d
    ld [hl+], a
    inc l
    add e
    inc l
    rra
    jr jr_005_44b5

    jr jr_005_44b7

jr_005_445e:
    nop
    ccf
    rst RST_38
    rst RST_38
    ld d, b
    ld l, a
    inc sp
    ld b, d
    add c
    inc b
    rst RST_38
    jr z, jr_005_449a

    ld d, b
    ld e, a
    nop
    scf
    rst RST_38
    jr jr_005_4494

    ld d, b
    ld e, b
    nop
    jr c, @+$01

    ld [$5012], sp
    ld e, b
    nop
    add hl, sp
    rst RST_38
    ld [$202f], sp
    ld b, a
    nop
    ld a, [hl-]
    rst RST_38
    jr nc, jr_005_44bd

    scf
    ld a, $00

jr_005_448a:
    dec sp
    rst RST_38

jr_005_448c:
    nop
    rlca
    ld c, b
    ld c, a
    nop
    ld a, $ff
    rst RST_38

jr_005_4494:
    nop
    ld c, a
    nop
    ld l, a
    nop
    ld l, d

jr_005_449a:
    rst RST_38
    rst RST_38
    db $10
    ld e, a
    ld h, b
    ld l, a
    nop
    ld b, c
    rst RST_38
    ld a, [hl+]
    ld c, b
    inc [hl]
    ld e, e
    add h
    ld de, $1a44
    ld hl, $3d36
    add e
    ld c, d
    jr nz, jr_005_44d4

    add hl, hl
    ld [hl], $3d

jr_005_44b5:
    add e
    ld c, a

jr_005_44b7:
    ld hl, $211a
    ld b, [hl]
    ld c, l
    add e

jr_005_44bd:
    ld d, b
    ld [hl+], a
    ld [hl+], a
    add hl, hl
    ld b, [hl]
    ld c, l
    add e
    ld d, c
    inc hl
    ld a, [de]
    ld hl, $5d56
    add e
    ld d, d
    inc h
    ld [hl+], a
    add hl, hl
    ld d, [hl]
    ld e, l
    add e
    ld d, e
    dec h

jr_005_44d4:
    ld d, d
    ld e, c
    ld [hl], $3d
    add e
    dec a
    ld h, $5a
    ld h, c
    ld [hl], $3d
    add e
    ld a, $27
    ld d, d
    ld e, c
    ld b, [hl]
    ld c, l
    add e
    ccf
    jr z, @+$5c

    ld h, c
    ld b, [hl]
    ld c, l
    add e
    ld b, b
    add hl, hl
    ld d, d
    ld e, c
    ld d, [hl]
    ld e, l
    add e
    ld b, c
    ld a, [hl+]
    ld e, d
    ld h, c
    ld d, [hl]
    ld e, l
    add e
    ld b, d
    dec hl
    ld [$006a], sp
    jr z, jr_005_4503

jr_005_4503:
    ld b, b
    rst RST_38
    rst RST_38
    nop
    ld [hl], $17
    ld d, c
    nop
    ld b, d
    rst RST_38
    ld d, b
    ld l, a
    ld b, d
    ld c, a
    nop
    ld b, e
    rst RST_38
    jr c, jr_005_4585

    ld e, b
    ld l, a
    nop
    ld b, h
    rst RST_38
    rst RST_38
    nop
    ld [hl], $17
    ld d, c
    nop
    ld b, [hl]
    rst RST_38
    ld d, b
    ld l, a
    ld b, d
    ld c, a
    nop
    ld b, e
    rst RST_38
    jr c, jr_005_459b

    ld e, b
    ld l, a
    nop
    ld c, b
    rst RST_38
    rst RST_38
    ld c, b
    ld c, a
    jr z, jr_005_4565

    nop
    ld c, e
    rst RST_38
    jr z, @+$49

    jr jr_005_4585

    dec b
    cpl
    rst RST_38
    rst RST_38
    ld e, l
    ld l, d
    jr nc, jr_005_458e

    nop
    ld c, h
    rst RST_38
    rlca
    ld d, b
    nop
    ld l, a
    dec b
    cpl
    rst RST_38
    rst RST_38
    ld hl, $5031
    ld e, b
    add e
    ld l, $2c
    ld c, l
    ld e, l
    jr nc, jr_005_4591

    add e
    cpl
    dec l
    nop
    rla
    ld d, d
    ld l, a
    nop
    ld c, [hl]
    rst RST_38

jr_005_4565:
    nop
    dec sp
    jr nc, jr_005_45b8

    nop
    ld c, a
    rst RST_38
    ld h, b
    ld l, a
    ld b, [hl]
    ld h, c
    nop
    ld d, c
    rst RST_38
    ld c, b
    ld e, c
    ld [hl], $53
    nop
    ld d, b
    rst RST_38
    ld [$082f], sp
    cpl
    nop
    ld d, d
    rst RST_38
    jr @+$49

    ld d, b
    ld h, d

jr_005_4585:
    nop
    ld d, e
    rst RST_38
    ld e, d
    ld l, [hl]
    inc bc
    cpl
    add b
    ld d, h

jr_005_458e:
    add hl, bc
    jr nc, jr_005_45e0

jr_005_4591:
    nop
    dec e
    nop
    ld c, l
    rst RST_38
    rst RST_38
    inc b
    dec bc
    jr c, jr_005_45da

jr_005_459b:
    add e
    jr nc, @+$30

    inc c
    inc de
    jr c, jr_005_45e1

    add e
    ld sp, $142f
    dec de
    jr c, jr_005_45e8

    add e
    ld [hl-], a
    jr nc, jr_005_45dc

    ld l, a
    dec a
    ld l, a
    nop
    ld d, l
    rst RST_38
    ld [$0429], sp
    inc l
    nop

jr_005_45b8:
    ld d, [hl]
    rst RST_38
    nop
    daa
    jr c, jr_005_461d

    ld bc, $ff05
    rst RST_38
    nop
    cpl
    ld [$056f], sp
    dec [hl]
    rst RST_38
    jr nc, jr_005_461b

    jr nc, jr_005_461d

    dec b
    scf
    rst RST_38
    rst RST_38
    ld c, $60
    nop
    ld l, a
    dec b
    ld [hl], $ff
    rst RST_38
    ld d, b

jr_005_45da:
    ld h, a
    rlca

jr_005_45dc:
    jr z, jr_005_45de

jr_005_45de:
    ld e, c
    rst RST_38

jr_005_45e0:
    ld b, h

jr_005_45e1:
    ld e, e
    ld [hl-], a
    ld b, c
    add c
    ld b, $18
    rrca

jr_005_45e8:
    rla
    dec d
    inc e
    add e
    inc sp
    ld sp, $211a
    ld d, $1d
    add e
    ld e, b
    ld [hl-], a
    add hl, hl
    ld sp, $1e17
    add e
    ld d, l
    inc sp
    inc sp
    dec sp
    jr @+$21

    add e
    inc [hl]
    inc [hl]
    inc c
    ld d, $23
    ld a, [hl+]
    add e
    dec [hl]
    dec [hl]
    jr jr_005_462d

    inc h
    dec hl
    add e
    ld [hl], $36
    jr z, jr_005_4643

    inc h
    dec hl
    add e
    ld e, d
    scf
    ld sp, $2539

jr_005_461b:
    inc l
    add e

jr_005_461d:
    ld e, c
    jr c, jr_005_4626

    db $10
    ld b, e
    ld c, d
    add e
    ld e, e
    add hl, sp

jr_005_4626:
    ld de, $4219
    ld c, c
    add e
    ld d, [hl]
    ld a, [hl-]

jr_005_462d:
    rra
    daa
    ld b, c
    ld c, b
    add e
    ld d, a
    dec sp
    ld a, [hl+]
    inc sp
    ld b, b
    ld c, a
    add e
    ld e, h
    inc a
    nop
    ccf
    ld a, [bc]
    ld l, a
    nop
    ld e, d
    rst RST_38
    rst RST_38

jr_005_4643:
    ld a, [de]
    ld d, l
    ld a, [bc]
    ld c, l
    add b
    ld l, e
    ld d, $09
    ld h, a
    nop
    ld a, a
    dec b
    jr c, @+$01

    nop
    rlca
    inc hl
    ccf
    nop
    ld l, [hl]
    rst RST_38
    ld l, b
    ld a, a
    inc c
    inc h
    nop
    ld [hl], b
    rst RST_38
    ld l, b
    ld a, a
    add hl, sp
    ld d, a
    nop
    ld [hl], c
    rst RST_38
    rst RST_38
    nop
    ld d, b
    ld c, b
    ld l, a
    ld bc, $ff07
    nop
    rla
    ld [hl-], a
    ccf
    add c
    ld [$1e19], sp
    dec sp
    ld b, $31
    nop
    ld e, e
    rst RST_38
    ld d, c
    ld h, c
    ld d, c
    ld h, a
    nop
    ld e, h
    rst RST_38
    ld d, h
    ld l, a
    ld d, $28
    nop
    ld [hl], d
    rst RST_38
    ld [hl], $57
    nop
    ld b, a
    nop
    inc sp
    rst RST_38
    ld [bc], a
    rrca
    nop
    ld c, $00
    dec a
    rst RST_38
    rst RST_38
    inc hl
    ld c, h
    nop
    inc l
    nop
    ld e, [hl]
    rst RST_38
    rlca
    ld l, b
    nop
    ld l, a
    dec b
    ld c, c
    rst RST_38
    rst RST_38
    jr jr_005_4702

    db $10
    ld l, a
    nop
    ld e, a
    rst RST_38
    jr c, @+$59

    nop
    rra
    nop
    ld h, b
    rst RST_38
    ld d, e
    ld h, h
    jr nz, jr_005_46f9

    dec b
    inc a
    rst RST_38
    ld c, $4f
    inc b
    ld h, c
    dec b
    dec a
    rst RST_38
    rst RST_38
    rst RST_38
    ld c, b
    ld c, a
    inc [hl]
    dec a
    add h
    dec bc
    ld b, l
    ld [de], a
    dec e
    inc e
    dec l
    add h
    inc c
    ld b, [hl]
    jr nz, jr_005_4702

    inc e
    dec hl
    add h
    db $10
    ld b, a
    jr nc, jr_005_471c

    ld a, [hl-]
    ld b, l
    add e
    scf
    dec a
    ld b, b
    ld c, h
    ld d, $25
    add e
    jr c, jr_005_4727

    jr nc, jr_005_4729

    nop
    rla
    add e
    add hl, sp
    ccf
    ld d, e
    ld e, a
    inc d
    dec h
    add e
    ld a, [hl-]
    ld b, b
    jr jr_005_4760

jr_005_46f9:
    jr c, jr_005_4762

    nop
    ld h, c
    rst RST_38
    rst RST_38
    ld b, a
    ld h, b
    dec bc

jr_005_4702:
    ld c, b
    dec b
    ld a, $ff
    ld [$0820], sp
    ld h, d
    dec b
    ccf
    rst RST_38
    rst RST_38
    jr nz, @+$41

    jr z, jr_005_4743

    add h
    rrca
    ld c, b
    jr c, jr_005_4759

    dec de
    dec l
    nop
    ld h, d
    rst RST_38

jr_005_471c:
    jr nz, jr_005_4765

    ld a, [hl+]
    ccf
    ld bc, $ff0a
    jr c, @+$6c

    inc l
    ld b, [hl]

jr_005_4727:
    nop
    ld h, h

jr_005_4729:
    rst RST_38
    nop
    ld e, $00
    add hl, sp
    dec b
    ld b, b
    rst RST_38
    db $10
    ld l, a
    db $10
    ld e, a
    nop
    ld h, e
    rst RST_38
    rst RST_38
    ld a, [bc]
    inc h
    nop
    inc d
    add b
    ld h, l
    inc d
    add hl, sp
    ld c, c
    add hl, de

jr_005_4743:
    ld sp, $6600
    rst RST_38
    inc sp
    ld e, a
    dec l
    ld b, h
    ld bc, $ff0b
    ld c, $49
    ld l, $47
    nop
    ld l, b
    rst RST_38
    ld h, h
    ld l, a
    nop
    dec a

jr_005_4759:
    dec b
    ld b, b
    rst RST_38
    ld [$1b69], sp
    ld h, c

jr_005_4760:
    nop
    ld h, a

jr_005_4762:
    rst RST_38
    rst RST_38
    ld [hl+], a

jr_005_4765:
    ld l, h
    dec e
    ld h, [hl]
    dec b
    ld b, l
    rst RST_38
    rst RST_38
    dec b
    ld sp, $6b28
    dec b
    ld b, e
    rst RST_38
    ld b, b
    ld l, [hl]
    jr z, jr_005_47e2

    dec b
    ld b, h
    rst RST_38
    dec de
    ld d, d
    nop
    ld [hl+], a
    dec b
    ld b, d
    rst RST_38
    rst RST_38
    dec de
    ld d, d
    nop
    ld e, b
    dec b
    ld a, [bc]
    rst RST_38
    rst RST_38
    inc b
    inc e
    nop
    ld sp, $4105
    rst RST_38
    ld [hl+], a
    ld l, h
    dec e
    ld h, [hl]
    dec b
    ld b, e
    rst RST_38
    rst RST_38
    db $10
    ld e, a
    jr nz, jr_005_47fc

    ld [bc], a
    inc b
    rst RST_38
    ld e, b
    ld l, a
    nop
    rrca
    dec b
    ld b, [hl]
    rst RST_38
    rst RST_38
    dec h
    ld c, d
    ld [hl+], a
    ld l, a
    dec b
    ld b, d
    rst RST_38
    ld [bc], a
    ld l, h
    nop
    ld hl, $2205
    rst RST_38
    rst RST_38
    rst RST_38
    ld e, [hl]
    ld l, d
    jr nc, jr_005_47f3

    nop
    add hl, de
    rst RST_38
    ld e, [hl]
    ld l, d
    jr c, jr_005_4802

    nop
    ld a, [de]
    rst RST_38
    ld e, [hl]
    ld l, d
    ld b, b
    ld b, a
    nop
    dec de
    rst RST_38
    ld e, [hl]
    ld l, d
    ld c, b
    ld c, a
    nop
    inc e
    rst RST_38
    rrca
    ld c, a
    nop
    ld l, a
    dec b
    ld c, $ff
    rst RST_38
    ld e, [hl]
    ld l, d
    jr nc, @+$39

    nop
    add hl, de

jr_005_47e2:
    rst RST_38
    ld e, [hl]
    ld l, d
    jr c, @+$41

    nop
    ld a, [de]
    rst RST_38
    ld e, [hl]
    ld l, d
    ld b, b
    ld b, a
    nop
    dec de
    rst RST_38
    ld e, [hl]
    ld l, d

jr_005_47f3:
    ld c, b
    ld c, a
    nop
    inc e
    rst RST_38
    rrca
    ld c, a
    nop
    ld l, a

jr_005_47fc:
    dec b
    rrca
    rst RST_38
    rst RST_38
    ld e, l
    ld l, d

jr_005_4802:
    jr nc, @+$4b

    nop
    ld c, h
    rst RST_38
    rlca
    ld d, b
    nop
    ld l, a
    dec b
    jr nc, @+$01

    rst RST_38
    nop
    ld [hl], $17
    ld d, c
    nop
    ld b, d
    rst RST_38
    jr c, @+$71

    ld e, b
    ld l, a
    nop
    ld b, h
    ld [$00ff], sp
    ld [hl], $17
    ld d, c
    nop
    ld b, [hl]
    rst RST_38
    jr c, jr_005_4896

    ld e, b
    ld l, a
    nop
    ld c, b
    ld [$00ff], sp
    ld [hl], $17
    ld d, c
    nop
    ld b, d
    rst RST_38
    jr c, jr_005_48a5

    ld e, b
    ld l, a
    nop
    ld b, h
    ld [$00ff], sp
    ld [hl], $17
    ld d, c
    nop
    ld b, [hl]
    rst RST_38
    jr c, jr_005_48b4

    ld e, b
    ld l, a
    nop
    ld c, b
    ld [$00ff], sp
    ld [hl], $17
    ld d, c
    nop
    ld b, d
    rst RST_38
    jr c, @+$71

    ld e, b
    ld l, a
    nop
    ld b, h
    ld [$00ff], sp
    ld [hl], $17
    ld d, c
    nop
    ld b, [hl]
    rst RST_38
    jr c, jr_005_48d2

    ld e, b
    ld l, a
    nop
    ld c, b
    ld [$00ff], sp
    ld [hl], $17
    ld d, c
    nop
    ld b, d
    rst RST_38
    jr c, jr_005_48e1

    ld e, b
    ld l, a
    nop
    ld b, h
    ld [$00ff], sp
    ld [hl], $17
    ld d, c
    nop
    ld b, [hl]
    rst RST_38
    jr c, jr_005_48f0

    ld e, b
    ld l, a
    nop
    ld c, b
    ld [$10ff], sp
    ld e, [hl]
    jr @+$71

    nop
    ld l, $ff
    rst RST_38
    ld b, b
    ld b, a
    jr z, jr_005_48c2

    add b
    ld [hl], l
    dec b

jr_005_4896:
    jr nc, @+$39

    jr z, @+$31

    add b
    halt
    ld b, $10
    ld e, [hl]
    jr jr_005_4910

    nop
    ld l, $ff
    rst RST_38

jr_005_48a5:
    ld b, b
    ld b, a
    jr z, jr_005_48d8

    add b
    ld [hl], l
    dec b
    jr nc, jr_005_48e5

    jr z, jr_005_48df

    add b
    halt
    ld b, $38

jr_005_48b4:
    ccf
    jr nc, jr_005_48f6

    add b
    ld [hl], a
    rlca
    db $10
    ld e, [hl]
    jr jr_005_492d

    nop
    ld l, $ff
    rst RST_38

jr_005_48c2:
    jr nc, jr_005_48fb

    jr z, @+$31

    add b
    halt
    ld b, $10
    ld e, [hl]
    jr jr_005_493c

    nop
    ld l, $ff
    rst RST_38
Case2RoomObjects:
    db LOW(Case2BathroomObjects)
jr_005_48d2:
    db HIGH(Case2BathroomObjects)
    ld h, c
    ld c, d
    cp l
    ld c, d
    db $fd

jr_005_48d8:
    ld c, d
    cpl
    ld c, e
    ld c, h
    ld c, e
    db $f4
    ld d, a

jr_005_48df:
    ld [hl], b
    ld c, e

jr_005_48e1:
    jp c, Jump_005_444b

    ld c, h

jr_005_48e5:
    xor [hl]
    ld c, h
    jr jr_005_4936

    ld e, a
    ld c, l
    or h
    ld c, l
    jr jr_005_493d

    ld b, e

jr_005_48f0:
    ld c, [hl]
    sbc b
    ld c, [hl]
    jp z, $f54e

jr_005_48f6:
    ld c, [hl]
    ld [de], a
    ld c, a
    ld [hl], $4f

jr_005_48fb:
    ld h, c
    ld c, a
    cp l
    ld c, a
    or $4f
    inc de
    ld d, b
    jr nc, jr_005_4955

    ld c, l
    ld d, b
    ld l, d
    ld d, b
    call nc, Call_005_6a50
    ld d, b
    call nc, Call_005_6a50

jr_005_4910:
    ld d, b
    call nc, Call_005_6a50
    ld d, b
    call nc, Call_005_6a50
    ld d, b
    call nc, Call_005_6a50
    ld d, b
    call nc, Call_005_6a50
    ld d, b
    call nc, Call_005_6a50
    ld d, b
    call nc, Call_000_3050
    ld d, c
    and c
    ld d, c
    cp [hl]
    ld d, c

jr_005_492d:
    db $db
    ld d, c
    ld hl, sp+$51
    dec d
    ld d, d
    ld d, l
    ld d, d
    ld a, c

jr_005_4936:
    ld d, d
    adc b
    ld d, d
    ret z

    ld d, d
    ld b, b

jr_005_493c:
    ld d, e

jr_005_493d:
    ld a, c
    ld d, e
    sub [hl]
    ld d, e
    db $eb
    ld d, e
    add hl, sp
    ld d, h
    ld d, [hl]
    ld d, h
    ld l, h
    ld d, h
    sub a
    ld d, h
    ret


    ld d, h
    db $f4
    ld d, h
    ld h, $55
    ld c, d
    ld d, l
    and [hl]
    ld d, l

jr_005_4955:
    rst RST_18
    ld d, l
    dec sp
    ld d, [hl]
    ld c, d
    ld d, [hl]
    sbc b
    ld d, [hl]
    and $4d
    and $56
    dec sp
    ld d, a
    ld [hl], h
    ld d, a
    ret


    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    db $f4
    ld d, a
    ld d, l
    ld d, d
    ld d, l
    ld d, d
    ld d, l
    ld d, d
    ld d, l
    ld d, d
    push af
    ld c, [hl]
    push af
    ld d, a
    push af
    ld d, a
    jr nz, jr_005_49f5

    push af
    ld c, [hl]
    push af
    ld d, a
    jr nz, jr_005_49fb

    push af
    ld c, [hl]
    push af
    ld d, a
    jr nz, jr_005_4a01

    push af
    ld c, [hl]
    push af
    ld d, a

jr_005_49ad:
    jr nz, jr_005_4a07

    push af
    ld c, [hl]
    push af
    ld d, a
    jr nz, jr_005_4a0d

    push af
    ld c, [hl]
    push af
    ld d, a
    jr nz, jr_005_4a13

    push af
    ld c, [hl]
    push af
    ld d, a
    push af
    ld d, a
    jr nz, jr_005_4a1b

    push af
    ld c, [hl]
    push af
    ld d, a
    jr nz, @+$5a

    push af
    ld c, [hl]
    push af
    ld d, a
    jr nz, @+$5a

    push af
    ld c, [hl]
    push af
    ld d, a
    jr nz, jr_005_4a2d

    push af
    ld c, [hl]
    push af
    ld d, a
    jr nz, @+$5a

    push af
    ld c, [hl]
    push af
    ld d, a
    jr nz, jr_005_4a39

    push af
    ld c, [hl]
    push af
    ld d, a
    jr nz, jr_005_4a3f

    push af
    ld c, [hl]
    push af
    ld d, a
    jr nz, jr_005_4a45

    push af
    ld c, [hl]
    push af
    ld d, a
    jr nz, @+$5a

    push af
    ld c, [hl]

jr_005_49f5:
    push af
    ld d, a
    jr nz, jr_005_4a51

    push af
    ld c, [hl]

jr_005_49fb:
    push af
    ld d, a
    jr nz, jr_005_4a57

    push af
    ld c, [hl]

jr_005_4a01:
    push af
    ld d, a
    jr nz, jr_005_4a5d

    push af
    ld c, [hl]

jr_005_4a07:
    push af
    ld d, a
    jr nz, jr_005_4a63

    push af
    ld c, [hl]

jr_005_4a0d:
    push af
    ld d, a
    jr nz, jr_005_4a69

    push af
    ld c, [hl]

jr_005_4a13:
Case2BathroomObjects:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/objects.hitboxes", $0, $8
jr_005_4a1b:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/objects.hitboxes", $8, $12
jr_005_4a2d:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/objects.hitboxes", $1a, $7
jr_005_4a34:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/objects.hitboxes", $21, $5
jr_005_4a39:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/objects.hitboxes", $26, $6
jr_005_4a3f:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/objects.hitboxes", $2c, $6
jr_005_4a45:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/objects.hitboxes", $32, $c
jr_005_4a51:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/objects.hitboxes", $3e, $6
jr_005_4a57:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/objects.hitboxes", $44, $6
jr_005_4a5d:
    INCBIN "../../res/shared/case2/scenes/00-bathroom/objects.hitboxes", $4a, $4
    ld b, a
    ld e, b

jr_005_4a63:
    ld [$801f], sp
    ld [$4705], sp

jr_005_4a69:
    ld e, b
    ld [$001f], sp
    ld [$55ff], sp
    ld e, e
    ld e, a
    ld h, l
    add e
    ld c, $06
    ld l, b
    ld l, a
    nop
    ld a, $80
    ld b, $07
    ld l, b
    ld l, a
    nop
    ld a, $00
    ld b, $89
    ld c, d
    ld d, [hl]
    ld h, $2a
    add e
    ld de, $0f08
    inc hl
    inc l
    inc [hl]
    add e
    rrca
    add hl, bc
    ld h, b
    ld h, a
    nop
    inc a
    nop
    rlca
    add b
    ld h, b
    ld l, a
    nop
    ccf
    nop
    rlca
    add c
    nop
    ld h, $20

jr_005_4aa3:
    ld e, a
    nop
    add hl, bc
    rst RST_38
    ld de, $0822
    jr jr_005_4aac

jr_005_4aac:
    ld a, [bc]
    rst RST_38
    ccf
    ld e, a

jr_005_4ab0:
    daa
    ld c, b
    ld bc, $ff00
    daa
    jr c, jr_005_4ae6

    ld b, a
    ld bc, $ff01
    rst RST_38
    ld h, $49
    nop
    rlca
    nop
    rrca
    rst RST_38
    nop
    ld c, $40
    ld c, a
    add e
    ld [de], a
    ld a, [bc]
    ld h, $49
    ld [$0530], sp
    ld [bc], a
    rst RST_38
    ld [$001a], sp
    ld b, a
    dec b
    inc b
    rst RST_38
    ld d, l
    ld h, c
    nop
    ld c, c
    dec b
    inc bc
    rst RST_38
    nop
    db $10
    ld c, b
    ld h, l
    nop
    dec bc

jr_005_4ae6:
    rst RST_38
    ld h, a
    ld l, a
    ld bc, $0011
    inc c
    rst RST_38
    nop
    rlca
    ld bc, $0011
    dec c
    rst RST_38
    nop
    rlca
    rra
    jr z, jr_005_4afa

jr_005_4afa:
    ld c, $ff
    rst RST_38
    dec hl
    ld [hl-], a
    ld b, [hl]
    ld c, d
    add e
    inc d
    dec bc
    ld e, c
    ld h, [hl]
    inc sp
    ld b, c
    add e
    inc de
    inc c
    ld l, b
    ld l, a
    ld [$0547], sp
    ld [bc], a
    rst RST_38
    rra
    ld c, b
    rrca
    add hl, hl
    nop
    db $10
    rst RST_38
    ld b, b
    ld d, a
    jr nc, jr_005_4b6c

    nop
    ld [de], a
    rst RST_38
    db $10
    ld h, $30
    ld c, a
    nop
    ld de, $27ff
    ld b, b
    ld b, a
    ld d, e
    nop
    inc de
    rst RST_38
    rst RST_38
    ld a, [bc]
    ld h, l
    nop
    rrca
    nop
    inc d
    rst RST_38
    dec l
    ld b, d
    ld d, a
    ld l, h
    nop
    dec d
    rst RST_38
    jr z, @+$49

    jr jr_005_4b77

    nop
    rla
    rst RST_38
    inc b
    ld l, e
    nop
    ld l, a
    nop
    ld d, $ff
    rst RST_38
    ld hl, $3a32
    ccf
    add b
    dec de
    dec c
    ld a, $48
    daa
    cpl
    nop
    ld a, [de]
    rst RST_38
    jr nz, jr_005_4bab

    rra
    ccf
    nop
    dec de
    rst RST_38
    dec l
    ld b, c
    ld [$001e], sp
    dec de
    rst RST_38
    nop
    ld l, a
    ld b, b
    ld l, a

jr_005_4b6c:
    nop
    jr @+$01

    rst RST_38
    ld c, b
    ld h, a
    rla
    ld l, a
    dec b
    inc b
    rst RST_38

jr_005_4b77:
    rrca
    add hl, hl
    jr nc, jr_005_4bbb

    nop
    ld e, $ff
    jr c, @+$3f

    ld d, h
    ld e, e
    nop
    jr nz, @+$01

    jr c, jr_005_4bc4

    ld c, h
    ld d, e
    nop
    ld hl, $38ff
    dec a
    ld b, h
    ld c, e
    nop
    ld [hl+], a
    rst RST_38
    jr c, jr_005_4bd2

    ld d, h
    ld e, e
    add b
    nop
    db $10
    jr c, jr_005_4bd9

    ld c, h
    ld d, e
    add b
    nop
    ld e, $38
    dec a
    ld b, h
    ld c, e
    add b
    nop
    rra
    jr c, @+$3f

    inc a

jr_005_4bab:
    ld b, e
    add b
    nop
    jr nz, jr_005_4be8

    dec a
    inc a
    ld b, e
    add e
    rla
    rrca
    ld c, c
    ld c, a
    dec bc
    inc de
    add b

jr_005_4bbb:
    and a
    ld de, $554e
    ld [$8011], sp
    and a
    ld [de], a

jr_005_4bc4:
    ld d, h
    ld e, e
    dec b
    dec c
    add b
    and a
    inc de
    ld e, e
    ld h, d
    ld bc, $800a
    and a
    inc d

jr_005_4bd2:
    ld [hl-], a
    ccf
    jr c, jr_005_4c35

    nop
    rra
    rst RST_38

jr_005_4bd9:
    rst RST_38
    ld c, b
    ld h, a
    rla
    ld l, a
    dec b
    add hl, bc
    rst RST_38
    rrca
    add hl, hl
    jr nc, jr_005_4c25

    nop
    ld e, $ff

jr_005_4be8:
    jr c, @+$3f

    ld d, h
    ld e, e
    nop
    jr nz, @+$01

    jr c, jr_005_4c2e

    ld c, h
    ld d, e
    nop
    ld hl, $38ff
    dec a
    ld b, h
    ld c, e
    nop
    ld [hl+], a
    rst RST_38
    jr c, jr_005_4c3c

    ld d, h
    ld e, e
    add b
    nop
    db $10
    jr c, jr_005_4c43

    ld c, h
    ld d, e
    add b
    nop
    ld e, $38
    dec a
    ld b, h
    ld c, e
    add b
    nop
    rra
    jr c, @+$3f

    inc a
    ld b, e
    add b
    nop
    jr nz, jr_005_4c52

    dec a
    inc a
    ld b, e
    add e
    rla
    rrca
    ld c, c
    ld c, a
    dec bc
    inc de
    add b

jr_005_4c25:
    and a
    ld de, $554e
    ld [$8011], sp
    and a
    ld [de], a

jr_005_4c2e:
    ld d, h
    ld e, e
    dec b
    dec c
    add b
    and a
    inc de

jr_005_4c35:
    ld e, e
    ld h, d
    ld bc, $800a
    and a
    inc d

jr_005_4c3c:
    ld [hl-], a
    ccf
    jr c, jr_005_4c9f

    nop
    rra
    rst RST_38

jr_005_4c43:
    rst RST_38
    ld c, b
    ld h, a
    rla
    ld l, a
    dec b
    inc c
    rst RST_38
    rrca
    add hl, hl
    jr nc, jr_005_4c8f

    nop
    ld e, $ff

jr_005_4c52:
    jr c, @+$3f

    ld d, h
    ld e, e
    nop
    jr nz, @+$01

    jr c, jr_005_4c98

    ld c, h
    ld d, e
    nop
    ld hl, $38ff
    dec a
    ld b, h
    ld c, e
    nop
    ld [hl+], a
    rst RST_38
    jr c, jr_005_4ca6

    ld d, h
    ld e, e
    add b
    nop
    db $10
    jr c, jr_005_4cad

    ld c, h
    ld d, e
    add b
    nop
    ld e, $38
    dec a
    ld b, h
    ld c, e
    add b
    nop
    rra
    jr c, @+$3f

    inc a
    ld b, e
    add b
    nop
    jr nz, jr_005_4cbc

    dec a
    inc a
    ld b, e
    add e
    rla
    rrca
    ld c, c
    ld c, a
    dec bc
    inc de
    add b

jr_005_4c8f:
    and a
    ld de, $554e
    ld [$8011], sp
    and a
    ld [de], a

jr_005_4c98:
    ld d, h
    ld e, e
    dec b
    dec c
    add b
    and a
    inc de

jr_005_4c9f:
    ld e, e
    ld h, d
    ld bc, $800a
    and a
    inc d

jr_005_4ca6:
    ld [hl-], a
    ccf
    jr c, jr_005_4d09

    nop
    rra
    rst RST_38

jr_005_4cad:
    rst RST_38
    ld c, b
    ld h, a
    rla
    ld l, a
    dec b
    ld c, $ff
    rrca
    add hl, hl
    jr nc, jr_005_4cf9

    nop
    ld e, $ff

jr_005_4cbc:
    jr c, @+$3f

    ld d, h
    ld e, e
    nop
    jr nz, @+$01

    jr c, jr_005_4d02

    ld c, h
    ld d, e
    nop
    ld hl, $38ff
    dec a
    ld b, h
    ld c, e
    nop
    ld [hl+], a
    rst RST_38
    jr c, jr_005_4d10

    ld d, h
    ld e, e
    add b
    nop
    db $10
    jr c, jr_005_4d17

    ld c, h
    ld d, e
    add b
    nop
    ld e, $38
    dec a
    ld b, h
    ld c, e
    add b
    nop
    rra
    jr c, jr_005_4d25

    inc a
    ld b, e
    add b
    nop
    jr nz, jr_005_4d26

    dec a
    inc a
    ld b, e
    add e
    rla
    rrca
    ld c, c
    ld c, a
    dec bc
    inc de
    add b

jr_005_4cf9:
    and a
    ld de, $554e
    ld [$8011], sp
    and a
    ld [de], a

jr_005_4d02:
    ld d, h
    ld e, e
    dec b
    dec c
    add b
    and a
    inc de

jr_005_4d09:
    ld e, e
    ld h, d
    ld bc, $800a
    and a
    inc d

jr_005_4d10:
    ld [hl-], a
    ccf
    jr c, jr_005_4d73

    nop
    rra
    rst RST_38

jr_005_4d17:
    rst RST_38
    ld bc, $3d0c
    ld c, a
    add e
    dec d
    dec d
    cpl
    ld b, b
    ld b, $30
    dec b
    dec bc

jr_005_4d25:
    rst RST_38

jr_005_4d26:
    ld h, c
    ld l, b
    nop
    ld c, h
    dec b
    inc bc
    rst RST_38
    db $10
    rla
    nop
    ld b, c
    dec b
    ld a, [bc]
    rst RST_38
    ld d, a
    ld e, [hl]
    rlca
    ld d, $00
    inc hl
    rst RST_38
    nop
    db $10
    ld c, b
    ld h, h
    nop
    dec bc
    rst RST_38
    ld b, h
    ld d, h
    nop
    inc d
    nop
    inc c
    rst RST_38
    dec de
    dec hl
    nop
    inc d
    nop
    dec c
    rst RST_38
    nop
    rlca
    nop
    ld de, $0c00
    rst RST_38
    ld l, b
    ld l, a
    nop
    ld de, $0d00
    rst RST_38
    rst RST_38
    ld h, d
    ld l, a
    ld b, c
    ld c, a
    add e
    ld d, $16
    inc d
    inc l
    dec e
    add hl, sp
    dec b
    dec c
    add d
    ld [de], a
    inc l
    db $10
    add hl, sp
    dec b
    dec c

jr_005_4d73:
    add e
    cpl
    ld b, b
    ld b, $30
    dec b
    dec bc
    rst RST_38
    ld e, b
    ld e, a
    nop
    ld b, d
    dec b
    inc bc
    rst RST_38
    rlca
    ld c, $00
    ld c, d
    dec b
    ld a, [bc]
    rst RST_38
    db $10
    jr jr_005_4d8d

    rrca

jr_005_4d8d:
    nop
    inc h
    rst RST_38
    ld e, a
    ld l, a
    ld c, b
    ld h, l
    nop
    dec bc
    rst RST_38
    ld b, h
    ld d, h
    nop
    inc d
    nop
    inc c
    rst RST_38
    dec de
    dec hl
    nop
    inc d
    nop
    dec c
    rst RST_38
    nop
    rlca
    nop
    ld de, $0c00
    rst RST_38
    ld l, b
    ld l, a
    nop
    ld de, $0d00
    rst RST_38
    rst RST_38
    rra
    ccf
    ld c, h
    ld d, a
    nop
    adc e
    rst RST_38
    ld b, b
    ld h, [hl]
    ld c, a
    ld d, a
    nop
    adc e
    rst RST_38
    nop
    rrca
    ld e, e
    ld l, a
    nop
    adc e
    rst RST_38
    db $10
    ld l, a
    ld e, b
    ld l, a
    nop
    adc e
    rst RST_38
    db $10
    ld e, a
    nop
    ld c, $05
    dec c
    rst RST_38
    nop
    rrca
    nop
    inc c
    dec b
    dec c
    rst RST_38
    ld h, b
    ld l, a
    nop
    inc c
    dec b
    dec c
    rst RST_38
    rst RST_38
    rra
    ccf
    ld c, h
    ld d, a
    nop
    adc e
    rst RST_38
    ld b, b
    ld h, [hl]
    ld c, a
    ld d, a
    nop
    adc e
    rst RST_38
    nop
    rrca
    ld e, e
    ld l, a
    nop
    adc e
    rst RST_38
    db $10
    ld l, a
    ld e, b
    ld l, a
    nop
    adc e
    rst RST_38
    db $10
    ld e, a
    nop
    ld c, $05
    ld l, e
    rst RST_38
    nop
    rrca
    nop
    inc c
    dec b
    ld l, e
    rst RST_38
    ld h, b
    ld l, a
    nop
    inc c
    dec b
    ld l, e
    rst RST_38
    rst RST_38
    ld a, [hl+]
    ld b, h
    db $10
    ld [hl], $00
    sbc c
    rst RST_38
    jr z, @+$51

    ld [$001b], sp
    sbc d
    rst RST_38
    jr z, @+$51

    ld [$801b], sp
    sbc d
    rla
    ld d, a
    ld e, a
    nop
    dec a
    dec b
    db $10
    rst RST_38
    db $10
    add hl, de
    nop
    inc a
    dec b
    rrca
    rst RST_38
    nop
    rrca
    scf
    ld d, a
    nop
    dec bc
    rst RST_38
    rst RST_38
    ld b, e
    ld d, h
    ld c, l
    ld d, c
    add e
    ld b, a
    jr jr_005_4e8e

    ld d, b
    ld b, e
    ld d, d
    add e
    ld c, b
    add hl, de
    ld b, e
    ld d, h
    ld b, e
    ld d, d
    add e
    ld b, [hl]
    ld a, [de]
    nop
    rrca
    ld [$0365], sp
    ld b, l
    rst RST_38
    jr jr_005_4eb0

    db $10
    inc [hl]
    nop
    sbc h
    adc d
    ld h, a
    ld l, a
    inc c
    ld b, c
    nop
    sbc l
    adc e
    jr jr_005_4ebe

    ld [$0010], sp
    sbc [hl]
    add h
    jr @+$51

    ld [$0034], sp
    sbc [hl]
    add l
    ld h, a
    ld l, a
    ld [bc], a
    inc c
    nop
    sbc a
    add [hl]
    ld h, a
    ld l, a
    ld [bc], a
    ld b, c
    nop
    sbc a
    add a
    jr z, jr_005_4eca

    dec [hl]
    ld b, a
    nop

jr_005_4e8e:
    sbc e
    rst RST_38
    ld [$4868], sp
    ld l, a
    ld bc, $ff0b
    rst RST_38
    ld [$0517], sp
    ld c, e
    dec b
    db $10
    rst RST_38
    ld b, a
    ld e, b
    jr nz, jr_005_4ed1

    nop
    and b
    rst RST_38
    jr c, jr_005_4f07

    ld bc, $0027
    and e
    adc b
    cpl
    ld l, b
    nop

jr_005_4eb0:
    ld l, $00
    and h
    rst RST_38
    jr z, jr_005_4f1a

    cpl
    ld c, a
    ld [bc], a
    inc bc
    rst RST_38
    nop
    dec b
    ld a, [bc]

jr_005_4ebe:
    rla
    nop
    and c
    rst RST_38
    jr @+$20

    ld c, $17
    nop
    and d
    rst RST_38
    rst RST_38

jr_005_4eca:
    jr z, @+$49

    jr nz, @+$51

    dec b
    ld b, $ff

jr_005_4ed1:
    ld e, b
    ld l, a
    ld [$000f], sp
    dec h
    rst RST_38
    ld h, b
    ld l, a
    db $10
    cpl
    nop
    dec h
    rst RST_38
    nop
    rla
    ld [$000f], sp
    ld h, $ff
    nop
    rrca
    db $10
    cpl
    nop
    ld h, $ff
    db $10
    ld e, a
    rlca
    rra
    nop
    daa
    rst RST_38
    rst RST_38
    ld d, b
    ld h, a
    jr z, jr_005_4f50

    add b
    jr z, jr_005_4f59

    db $10
    daa
    jr nz, jr_005_4f4f

    add b
    jr z, jr_005_4f5f

    jr c, jr_005_4f4c

    ld c, b
    ld d, a

jr_005_4f07:
    add b
    ld a, [hl+]
    ld e, [hl]
    jr nz, jr_005_4f3b

    ld e, b
    ld h, a
    add b
    ld a, [hl+]
    ld e, a
    rst RST_38
    jr jr_005_4f74

    nop
    rrca
    nop
    sub a
    rst RST_38
    cpl

jr_005_4f1a:
    ld e, b
    rla
    jr nc, jr_005_4f1e

jr_005_4f1e:
    sbc b
    rst RST_38
    ld h, c
    ld l, a
    ld de, $0543
    dec d
    rst RST_38
    nop
    inc c
    inc c
    ld a, $05
    inc d
    sbc h
    nop
    inc c
    inc c
    ld a, $05
    inc d
    sbc e
    rst RST_38
    rla
    ld c, b
    inc hl
    ld d, a
    dec b

jr_005_4f3b:
    add hl, de
    rst RST_38
    jr jr_005_4f96

    rla
    jr nz, jr_005_4f42

jr_005_4f42:
    jr nc, @+$01

    ld e, [hl]
    ld l, a
    rla
    ld b, b
    add b
    ld l, $22
    ld e, [hl]

jr_005_4f4c:
    ld l, a
    rla
    ld b, b

jr_005_4f4f:
    nop

jr_005_4f50:
    ld l, $ff
    nop
    ld de, $4017
    add b
    cpl
    inc hl

jr_005_4f59:
    nop
    ld de, $4017
    nop
    cpl

jr_005_4f5f:
    rst RST_38
    rst RST_38
    ld a, [de]
    ld [hl-], a
    inc a
    ld d, [hl]
    add b
    scf
    dec de
    ld e, b
    ld l, a
    rlca
    jr jr_005_4f6d

jr_005_4f6d:
    ld [hl], $ff
    jr jr_005_4f90

    ld [$000f], sp

jr_005_4f74:
    ld [hl-], a
    rst RST_38
    jr nc, @+$39

    jr @+$21

    nop
    inc sp
    rst RST_38
    jr c, jr_005_4fbe

    jr @+$21

    nop
    inc [hl]
    rst RST_38
    ld d, b
    ld d, a
    ld [$000f], sp
    dec [hl]
    rst RST_38
    jr @+$59

    ld e, b
    ld l, a
    nop

jr_005_4f90:
    ld sp, $22ff
    ld c, l
    ld b, b
    ld d, a

jr_005_4f96:
    nop
    ld sp, $33ff
    inc a
    inc sp
    ccf
    nop
    ld sp, $18ff
    rra
    db $10
    ld b, d
    dec b
    dec e
    rst RST_38
    jr nc, jr_005_4fe0

    jr nz, @+$34

    dec b
    ld e, $ff
    jr c, jr_005_4fef

    jr nz, @+$34

    dec b
    rra
    rst RST_38
    ld d, b
    ld d, a
    db $10
    ld b, d
    dec b
    jr nz, @+$01

    rst RST_38
    ld d, a

jr_005_4fbe:
    ld e, l
    jr nc, @+$38

    add e
    ld a, [de]
    inc e
    ld b, c
    ld c, e
    ld c, c
    ld e, b
    add h
    inc b
    dec e
    ld a, $4d
    ld c, c
    ld e, b
    add h
    inc b
    ld hl, $2f18
    ld [hl+], a
    inc a
    nop
    inc a
    rst RST_38
    ld b, a
    ld h, b
    nop
    ld [$3800], sp
    rst RST_38

jr_005_4fe0:
    ld b, a
    ld h, b
    add hl, bc
    jr jr_005_4fe5

jr_005_4fe5:
    add hl, sp
    rst RST_38
    rlca
    ld b, b
    rlca
    rla
    nop
    ld a, [hl-]
    rst RST_38
    ld c, a

jr_005_4fef:
    ld h, c
    jr nc, jr_005_502f

    nop
    dec sp
    rst RST_38
    rst RST_38
    jr nz, jr_005_5047

    inc b
    ld de, $3d80
    inc h
    jr jr_005_5026

    jr jr_005_5036

    dec b
    ld hl, $10a7
    ld e, a
    ld [$003f], sp
    ld a, $a7
    jr nc, jr_005_504c

    nop
    rla
    dec b
    inc hl
    rst RST_38
    rst RST_38
    jr nz, jr_005_5064

    inc b
    ld de, $3d80
    dec h
    jr jr_005_5043

    jr jr_005_5053

    dec b
    inc h
    and a
    db $10
    ld e, a
    ld [$003f], sp

jr_005_5026:
    ld a, $a7
    jr nc, jr_005_5069

    nop
    rla
    dec b
    ld h, $ff

jr_005_502f:
    rst RST_38
    jr nz, @+$51

    inc b
    ld de, $3d80

jr_005_5036:
    ld h, $18
    daa
    jr jr_005_5070

    dec b
    daa
    and a
    db $10
    ld e, a
    ld [$003f], sp

jr_005_5043:
    ld a, $a7
    jr nc, jr_005_5086

jr_005_5047:
    nop
    rla
    dec b
    add hl, hl
    rst RST_38

jr_005_504c:
    rst RST_38
    jr nz, jr_005_509e

    inc b
    ld de, $3d80

jr_005_5053:
    daa
    jr jr_005_507d

    jr jr_005_508d

    dec b
    ld a, [hl+]
    and a
    db $10
    ld e, a
    ld [$003f], sp
    ld a, $a7
    jr nc, @+$41

jr_005_5064:
    nop
    rla
    dec b
    inc l
    rst RST_38

jr_005_5069:
    rst RST_38
    dec sp
    ld c, a
    ld sp, $003f
    ld b, h

jr_005_5070:
    xor c
    ld h, a
    ld l, a
    ld [hl-], a
    ccf
    nop
    ld b, l
    xor d
    ld c, $1d
    ld [de], a
    rra
    nop

jr_005_507d:
    ld b, [hl]
    xor e
    ld [$006a], sp
    ld l, a
    nop
    ld b, e
    xor b

jr_005_5086:
    nop
    dec c
    ld [bc], a
    dec e
    nop
    ld b, b
    xor h

jr_005_508d:
    jr nz, jr_005_50bd

    ld [bc], a
    ld d, $00
    ld b, c
    xor l
    ld b, c
    ld c, h
    inc b
    dec c
    nop
    ld b, d
    xor [hl]
    ld d, b
    ld e, a
    nop

jr_005_509e:
    rra
    dec b
    dec l
    xor a
    jr nc, jr_005_5113

    ld b, b
    ld l, a
    nop
    ccf
    or b
    ld d, b
    ld h, a
    jr nz, jr_005_50ec

    nop
    ccf
    or b
    nop
    daa
    jr nz, jr_005_5103

    nop
    ccf
    or b
    jr nz, @+$3b

    jr jr_005_50da

    nop
    ccf

jr_005_50bd:
    or b
    jr z, jr_005_50ff

    jr nz, jr_005_50f9

    nop
    ccf
    or b
    jr z, jr_005_50f6

    jr c, jr_005_5110

    nop
    ccf
    or b
    ld c, b
    ld c, a
    jr z, jr_005_50ff

    nop
    ccf
    or b
    rst RST_38
    ld [$006a], sp
    ld l, a
    nop
    ld b, e

jr_005_50da:
    xor b
    ld h, c
    ld l, a
    ld [bc], a
    inc e
    nop
    ld b, b
    xor h
    ld b, l
    ld c, a
    ld [bc], a
    ld d, $00
    ld b, c
    xor l
    inc hl
    ld l, $04

jr_005_50ec:
    dec c
    nop
    ld b, d
    xor [hl]
    ld [hl-], a
    ld a, $00
    rla
    dec b
    ld [hl+], a

jr_005_50f6:
    xor [hl]
    ld [hl-], a
    scf

jr_005_50f9:
    jr jr_005_511a

    dec b
    ld [hl+], a
    xor [hl]
    nop

jr_005_50ff:
    jr nz, jr_005_5121

    add hl, hl
    nop

jr_005_5103:
    ccf
    or b
    nop
    jr z, jr_005_5132

    ccf
    nop
    ccf
    or b
    nop
    ccf
    ld b, b
    ld l, a

jr_005_5110:
    nop
    ccf
    or b

jr_005_5113:
    ld c, b
    ld l, a
    jr nz, jr_005_5166

    nop
    ccf
    or b

jr_005_511a:
    ld [hl], $18
    ld e, b
    rra
    nop
    ccf
    or b

jr_005_5121:
    cpl
    jr nz, jr_005_5163

    ld [hl], $00
    ccf
    or b
    ld b, b
    jr nz, jr_005_5172

    ld b, e
    nop
    ccf
    or b
    rst RST_38
    ld h, c
    ld l, [hl]

jr_005_5132:
    add hl, de
    ld h, $83
    dec de
    inc l
    ld h, c
    ld l, [hl]
    add hl, sp
    ld b, [hl]
    add e
    inc e
    dec l
    ld d, b
    ld e, [hl]
    jr nz, jr_005_5189

    add b
    ld c, a
    ld l, $53
    ld l, c
    ld c, l
    ld e, b
    add b
    ld d, b
    cpl
    ld [de], a
    add hl, de
    db $10
    ld d, $00
    ld b, a
    rst RST_38
    jr nz, jr_005_5181

    ld [de], a
    rla
    nop
    ld c, b
    rst RST_38
    inc sp
    ccf
    ld [de], a
    rla
    nop
    ld c, c
    rst RST_38
    ld b, [hl]
    ld c, h

jr_005_5163:
    db $10
    ld d, $00

jr_005_5166:
    ld c, d
    rst RST_38
    ld c, $51
    ld b, a
    ld l, b
    nop
    ld c, e
    rst RST_38
    ld d, b
    ld l, a
    nop

jr_005_5172:
    rlca
    nop
    ld c, h
    rst RST_38
    ld d, b
    ld l, a
    ld [$0017], sp
    ld c, l
    rst RST_38
    ld e, b
    ld l, a
    jr @+$49

jr_005_5181:
    nop
    ld c, [hl]
    rst RST_38
    inc de
    add hl, de
    rla
    ld a, [hl-]
    dec b

jr_005_5189:
    dec [hl]
    rst RST_38
    jr nz, jr_005_51b9

    jr jr_005_51c1

    dec b
    ld [hl], $ff
    inc sp
    ccf
    jr @+$34

    dec b
    scf
    rst RST_38
    ld b, [hl]
    ld c, h
    rla
    ld a, [hl-]
    dec b
    jr c, @+$01

    rst RST_38
    jr nz, jr_005_51f2

    inc b
    ld de, $3d80
    jr z, jr_005_51c1

    daa
    jr jr_005_51e1

    dec b
    ld a, [hl-]
    and a
    db $10
    ld e, a
    ld [$003f], sp
    ld a, $a7
    jr nc, jr_005_51f7

    nop

jr_005_51b9:
    rla
    dec b
    inc a
    rst RST_38
    rst RST_38
    jr nz, jr_005_520f

    inc b

jr_005_51c1:
    ld de, $3d80
    add hl, hl
    jr jr_005_51ee

    jr jr_005_51fe

    dec b
    dec a
    and a
    db $10
    ld e, a
    ld [$003f], sp
    ld a, $a7
    jr nc, jr_005_5214

    nop
    rla
    dec b
    ccf
    rst RST_38
    rst RST_38
    jr nz, @+$51

    inc b
    ld de, $3d80

jr_005_51e1:
    ld a, [hl+]
    jr jr_005_520b

    jr jr_005_521b

    dec b
    ld b, b
    and a
    db $10
    ld e, a
    ld [$003f], sp

jr_005_51ee:
    ld a, $a7
    jr nc, jr_005_5231

jr_005_51f2:
    nop
    rla
    dec b
    ld b, d
    rst RST_38

jr_005_51f7:
    rst RST_38
    jr nz, jr_005_5249

    inc b
    ld de, $3d80

jr_005_51fe:
    dec hl
    jr jr_005_5228

    jr @+$37

    dec b
    ld b, e
    and a
    db $10
    ld e, a
    ld [$003f], sp

jr_005_520b:
    ld a, $a7
    jr nc, @+$41

jr_005_520f:
    nop
    rla
    dec b
    ld b, l
    rst RST_38

jr_005_5214:
    rst RST_38
    add hl, de
    ld d, [hl]
    ld b, $10
    nop
    ld d, c

jr_005_521b:
    rst RST_38
    ld h, c
    ld l, a
    rrca
    cpl
    nop
    ld d, d
    rst RST_38
    ld h, c
    ld l, a
    rrca
    cpl
    nop

jr_005_5228:
    ld d, d

jr_005_5229:
    jr nc, jr_005_522b

jr_005_522b:
    ld c, $0f
    cpl
    nop
    ld d, e
    rst RST_38

jr_005_5231:
    nop
    ld c, $0f
    cpl
    nop
    ld d, e
    ld sp, $4728
    ld de, $053f
    add hl, sp
    rst RST_38
    jr z, jr_005_5288

    ld de, $853f
    add hl, sp
    ld [hl-], a
    ld d, l
    ld l, a
    ld b, l

jr_005_5249:
    ld d, a
    dec b
    ld b, [hl]
    rst RST_38
    jr c, jr_005_52be

    ld e, b
    ld l, a
    dec b
    ld b, [hl]
    rst RST_38
    rst RST_38
    dec l
    ccf
    rlca
    rrca
    nop
    ld d, h
    rst RST_38
    nop
    scf
    add hl, sp
    ld c, a
    nop
    ld d, l
    rst RST_38
    nop
    jr nz, jr_005_5282

    jr c, jr_005_5268

jr_005_5268:
    ld d, l
    rst RST_38
    ld d, b
    ld l, l
    ld b, d
    ld c, a
    nop
    ld d, [hl]
    rst RST_38
    jr c, jr_005_52e2

    ld e, b
    ld l, a
    nop
    ld d, a
    rst RST_38
    rst RST_38
    daa
    scf
    dec b
    ld d, $00
    ld e, b
    rst RST_38
    ld c, a
    ld h, b

jr_005_5282:
    nop
    ld b, c
    dec b
    ld c, h
    rst RST_38
    rst RST_38

jr_005_5288:
    ld h, b
    ld l, h
    db $10
    jr nc, @-$7d

    ld [bc], a
    dec sp
    ld h, b
    ld l, h
    db $10
    jr nc, jr_005_5295

    ld [bc], a

jr_005_5295:
    rst RST_38
    ld e, d
    ld e, a
    db $10
    dec hl
    add b
    ld e, d
    ld a, [hl-]
    ld e, d
    ld e, a
    db $10
    dec hl
    nop
    ld e, d
    rst RST_38
    ld d, h
    ld e, c
    db $10
    jr z, jr_005_5229

    ld e, e
    add hl, sp
    ld d, h
    ld e, c
    db $10
    jr z, jr_005_52b0

jr_005_52b0:
    ld e, e
    rst RST_38
    inc e
    inc sp
    nop
    scf
    dec b
    ld c, l
    rst RST_38
    ld b, l
    ld d, d
    nop
    ld d, h
    dec b

jr_005_52be:
    ld c, [hl]
    rst RST_38
    nop
    ld a, [bc]
    nop
    ld d, b
    dec b
    ld c, a
    rst RST_38
    rst RST_38
    nop
    rrca
    ld a, [bc]
    ld sp, $0884
    inc sp
    jr z, jr_005_5308

    ld l, d
    ld l, a
    add h
    ld a, [bc]
    inc [hl]
    ld e, c
    ld l, a
    ld e, d
    ld h, a
    add h
    dec bc
    dec [hl]
    jr c, jr_005_5326

    ld d, c
    ld d, a
    add e

jr_005_52e2:
    ld e, $36
    jr c, @+$49

    ld d, c
    ld d, a
    add e
    ld e, $37
    ld e, b
    ld l, [hl]
    ld c, e
    ld d, a
    add e
    rra
    jr c, jr_005_5333

    ld c, b
    ld l, b
    ld l, a
    add e
    ld e, e
    ld h, l
    ld b, a
    ld c, a
    nop
    ld d, b
    nop
    ld e, a
    adc h
    ld l, b
    ld l, a
    nop
    ld d, b
    nop
    ld e, a
    adc h
    ld b, a

jr_005_5308:
    ld l, a
    nop
    ld d, b
    nop
    ld e, a
    adc l
    ld d, h
    ld h, a
    add hl, bc
    ccf
    dec b
    ld c, l
    adc [hl]
    inc b
    daa
    ld [bc], a
    inc c
    nop
    ld e, h
    rst RST_38
    dec bc
    ld hl, $1d0d
    nop
    ld e, h
    rst RST_38
    dec bc
    ld e, $18

jr_005_5326:
    dec h
    nop
    ld e, h
    rst RST_38
    dec hl
    ld b, d
    ld b, $1b
    nop
    ld e, l
    rst RST_38
    nop
    inc h

jr_005_5333:
    ld [hl-], a
    ld l, a
    nop
    ld e, [hl]
    rst RST_38
    dec h
    jr c, jr_005_537b

    ld h, a
    nop
    ld e, [hl]
    rst RST_38
    rst RST_38
    ld h, d
    ld l, a
    jr c, jr_005_538b

    dec b
    ld c, d
    rst RST_38
    ld c, b
    ld l, a
    ld c, b
    ld h, a
    dec b
    ld c, d
    rst RST_38
    ld [$0611], sp
    ld e, e
    nop
    ld h, c
    rst RST_38
    jr nc, jr_005_53a6

    ld l, b
    ld l, a
    dec b
    ld d, d
    rst RST_38
    inc d
    inc sp
    inc d
    ld d, e
    dec b
    ld d, e
    rst RST_38
    scf
    ld h, a
    inc d
    ccf
    nop
    ld h, b
    rst RST_38
    nop
    rlca
    nop
    ld e, a
    dec b
    ld d, c
    rst RST_38
    ld d, c
    ld l, b
    ld l, b
    ld l, a
    dec b
    ld c, d
    rst RST_38
    rst RST_38
    ld [hl-], a
    inc a

jr_005_537b:
    nop
    ld c, e
    nop
    ld h, d
    rst RST_38
    jr c, jr_005_53d9

    ld e, e
    ld l, l
    dec b
    ld d, a
    rst RST_38
    rlca
    daa
    nop
    db $10

jr_005_538b:
    dec b
    ld d, l
    rst RST_38
    jr nc, @+$69

    nop
    ld c, a
    dec b
    ld d, c
    rst RST_38
    rst RST_38
    ld c, b
    ld d, l
    ld a, [hl-]
    ld b, a
    add b
    ld l, a
    dec a
    ld b, h
    ld b, a
    ld b, e
    ld c, d
    add b
    ld l, a
    dec a
    ld c, b
    ld d, l

jr_005_53a6:
    ld b, b
    ld h, l
    add b
    ld l, a
    dec a
    ld e, a
    ld l, a
    nop
    daa
    add b
    ld [hl], b
    inc a
    ld h, b
    ld l, a
    nop
    ld [$7000], sp
    rst RST_38
    ld h, b
    ld h, a
    add hl, bc
    ld [hl+], a
    nop
    ld [hl], b
    rst RST_38
    ld h, [hl]
    ld l, a
    ld a, [bc]
    daa
    dec b
    ld e, b
    rst RST_38
    db $10
    ld e, b
    jr @+$71

    nop
    ld [hl], c
    rst RST_38
    nop
    rrca
    dec e
    ld l, a
    nop
    ld [hl], c
    rst RST_38
    ld e, b
    ld e, a
    jr z, jr_005_5448

jr_005_53d9:
    nop
    ld [hl], c
    rst RST_38
    ld h, b
    ld h, a
    jr nc, jr_005_544f

    nop
    ld [hl], c
    rst RST_38
    ld l, b
    ld l, a
    jr c, jr_005_5456

    nop
    ld [hl], c
    rst RST_38
    rst RST_38
    ld [$172a], sp
    cpl
    ld bc, $ff06
    nop
    ld c, e
    ld c, b
    ld l, a
    ld bc, $ff05
    ld e, b
    ld l, a
    db $10
    inc [hl]
    ld bc, $ff07
    jr c, jr_005_5452

    ld [$000f], sp
    ld [hl], d
    adc a
    ld b, b
    ld d, b
    db $10
    inc de
    nop
    ld [hl], d
    adc a
    ld b, e
    ld d, b
    inc d
    rra
    nop
    ld [hl], d
    adc a
    ld b, a
    ld d, b
    jr jr_005_545c

    nop
    ld [hl], d
    adc a
    jr c, jr_005_5466

    jr jr_005_5463

    dec b
    ld e, b
    sub b
    jr nc, jr_005_547c

    nop
    rlca
    nop
    ld [hl], e
    rst RST_38
    jr nz, jr_005_545b

    nop
    rrca
    nop
    adc h
    rst RST_38
    ld c, b
    ld h, a
    ld e, b
    ld l, a
    nop
    xor b
    rst RST_38
    rst RST_38
    ld sp, $4a4e
    ld e, a
    add h
    ld c, $3e
    ld d, d
    ld e, h
    ld e, h
    ld h, h
    add e
    inc l
    ccf
    dec e

jr_005_5448:
    jr z, jr_005_547a

    ld b, c
    add d
    ld [bc], a
    ld c, a
    ld d, [hl]

jr_005_544f:
    ld h, b
    dec c
    ld b, a

jr_005_5452:
    dec b
    ld e, e
    rst RST_38
    rst RST_38

jr_005_5456:
    nop
    daa
    ld hl, $0055

jr_005_545b:
    ld h, e

jr_005_545c:
    rst RST_38
    ld d, l
    ld l, a
    dec b
    ld d, b
    dec b
    ld e, h

jr_005_5463:
    rst RST_38
    nop
    inc hl

jr_005_5466:
    nop
    ld l, a
    dec b
    ld e, l
    rst RST_38
    rst RST_38
    ld d, b
    ld l, a
    jr c, jr_005_54df

    nop
    ld h, [hl]
    rst RST_38
    inc e
    ld d, e
    dec b
    inc [hl]
    nop
    ld l, b
    rst RST_38

jr_005_547a:
    nop
    rlca

jr_005_547c:
    ld b, b
    ld l, a
    dec b
    ld h, b
    rst RST_38
    ld [$481f], sp
    ld l, a
    dec b
    ld h, b
    rst RST_38
    ld [$0710], sp
    ld b, a
    dec b
    ld e, a
    rst RST_38
    ld d, a
    ld l, a
    ld b, $37
    dec b
    ld d, e
    rst RST_38
    rst RST_38
    ld de, $4a49
    ld d, d
    nop
    ld l, c
    sub d
    ld d, d
    ld e, a
    ld c, d
    ld d, l
    nop
    ld l, e
    rst RST_38
    ld b, b
    ld l, a
    nop
    ld l, b
    nop
    ld l, d
    rst RST_38
    nop
    rra
    nop
    ld l, a
    nop
    ld l, h
    sub c
    nop
    rra
    nop
    ld l, a
    dec b
    ld h, c
    rst RST_38
    jr nc, jr_005_54fb

    jr nz, jr_005_54f1

    nop
    ld h, h
    rst RST_38
    dec hl
    ld c, d
    ld e, c
    ld l, a
    nop
    ld h, a
    rst RST_38
    rst RST_38
    ld [hl], $3b
    nop
    dec h
    nop
    ld l, l
    rst RST_38
    ld e, a
    ld l, b
    ld hl, $056f
    ld h, c
    rst RST_38
    nop
    inc d
    jr nz, jr_005_553a

    dec b
    ld h, d
    rst RST_38
    dec h

jr_005_54df:
    ld c, d
    ld h, e
    rst RST_38
    dec b
    ld d, d
    rst RST_38
    nop
    rra
    nop
    rra
    nop
    ld h, l
    rst RST_38
    nop
    ld c, $60
    ld l, a
    nop

jr_005_54f1:
    xor c
    rst RST_38
    rst RST_38
    inc h
    scf
    db $10
    ld h, $01
    inc bc
    rst RST_38

jr_005_54fb:
    inc c
    rra
    db $10
    ld h, $01
    inc b
    rst RST_38
    nop
    daa
    ld b, b
    ld e, d
    nop
    ld l, [hl]
    rst RST_38
    inc b
    ld [hl], $38
    ccf
    nop
    ld l, [hl]
    rst RST_38
    ld d, h
    ld l, a
    nop
    inc l
    dec b
    ld h, d
    rst RST_38
    inc c
    scf
    jr nc, jr_005_5552

    nop
    ld l, [hl]
    rst RST_38
    jr z, jr_005_554f

    ld b, b
    ld d, [hl]
    nop
    ld l, [hl]
    rst RST_38
    rst RST_38
    ld d, c
    ld e, l
    jr nz, jr_005_5565

    nop

jr_005_552b:
    ld [hl], h
    rst RST_38
    ld e, a
    ld l, a
    dec de
    ccf
    nop
    ld [hl], l
    rst RST_38
    ld [$1817], sp
    ld b, [hl]
    nop
    halt

jr_005_553a:
    rst RST_38
    ld h, $49
    ld d, $58
    dec b
    ld h, h
    rst RST_38
    jr jr_005_5563

    ld b, b
    ld c, a
    nop
    ld e, c
    rst RST_38
    rst RST_38
    nop
    inc c
    ld [$0017], sp

jr_005_554f:
    ld [hl], a
    rst RST_38
    inc bc

jr_005_5552:
    ld b, $18
    ccf
    nop
    ld [hl], a
    rst RST_38
    ld h, e
    ld l, a
    ld [$0017], sp
    ld [hl], a
    rst RST_38
    ld l, c
    ld l, h
    jr jr_005_55a2

jr_005_5563:
    nop
    ld [hl], a

jr_005_5565:
    rst RST_38
    db $10
    ld e, a
    nop
    ld c, $00
    xor d
    rst RST_38
    ld h, b
    ld l, a
    jr jr_005_55a8

    add b
    xor e
    ld b, e
    ld h, b
    ld l, a
    jr jr_005_55af

    nop
    xor e
    rst RST_38
    nop
    rrca
    jr jr_005_55b6

    add b
    xor h
    ld b, d
    nop
    rrca
    jr jr_005_55bd

    nop
    xor h
    rst RST_38
    jr c, jr_005_55da

    jr jr_005_55dc

    add l
    ld h, l
    ld b, c
    jr c, jr_005_55e1

    jr jr_005_55e3

    dec b
    ld h, l
    rst RST_38
    jr nz, jr_005_55d0

    jr jr_005_55ea

    add l
    ld h, l
    ld b, b
    jr nz, jr_005_55d7

    jr jr_005_55f1

jr_005_55a2:
    dec b
    ld h, l
    rst RST_38
    rst RST_38
    nop
    rrca

jr_005_55a8:
    nop
    jr nc, jr_005_552b

    ld a, b
    ld b, l
    nop
    rrca

jr_005_55af:
    nop
    jr nc, jr_005_55b2

jr_005_55b2:
    ld a, b
    rst RST_38
    ld c, $17

jr_005_55b6:
    ld c, h
    ld h, c
    nop
    ld a, c
    rst RST_38
    ld d, l
    ld l, c

jr_005_55bd:
    ld a, [bc]
    inc e
    add b
    ld a, d
    ld b, h
    ld d, l
    ld l, a
    dec e
    inc h
    add b
    ld a, d
    rst RST_38
    jr c, jr_005_5612

    ld a, $57
    add l
    ld h, [hl]
    ld b, [hl]

jr_005_55d0:
    jr c, jr_005_5619

    ld a, $57
    dec b
    ld h, [hl]
    rst RST_38

jr_005_55d7:
    cpl
    ld a, [hl-]
    nop

jr_005_55da:
    add hl, de
    dec b

jr_005_55dc:
    ld h, a
    rst RST_38
    rst RST_38
    ld e, l
    ld h, a

jr_005_55e1:
    ld d, l
    ld e, a

jr_005_55e3:
    add e
    inc sp
    ld c, d
    ld c, d
    ld e, [hl]
    jr nc, jr_005_5629

jr_005_55ea:
    add e
    inc [hl]
    ld c, b
    nop
    dec bc
    ld b, d
    ld c, l

jr_005_55f1:
    add e
    dec [hl]
    ld c, c
    inc sp
    ld b, l
    scf
    ld b, e
    add e
    ld [hl], $47
    ld e, b
    ld h, d
    add hl, bc
    ld d, $00
    ld a, e
    rst RST_38
    nop
    add hl, bc
    ld c, b
    ld d, a
    nop
    ld a, l
    rst RST_38
    ld a, [bc]
    db $10
    ld c, d
    ld d, l
    nop
    ld a, l
    rst RST_38
    nop
    dec b

jr_005_5612:
    ld e, b
    ld l, a
    nop
    ld a, l
    rst RST_38
    ld h, b
    ld l, a

jr_005_5619:
    scf
    ld d, a
    ld bc, $ff08
    nop
    rla
    inc bc
    ld b, a
    ld bc, $ff09
    ld c, [hl]
    ld l, c
    rla
    ld d, c

jr_005_5629:
    nop
    ld a, h
    rst RST_38
    jr jr_005_566f

    daa
    ld d, l
    nop
    ld a, h
    rst RST_38
    ld b, d
    ld c, l
    ld l, $54
    nop
    ld a, h
    rst RST_38
    rst RST_38
    jr nz, jr_005_5681

    inc c
    rra
    nop
    ld a, [hl]
    rst RST_38
    jr nz, jr_005_5687

    jr nz, jr_005_5695

    dec b
    ld l, b
    rst RST_38
    rst RST_38
    jr z, jr_005_5688

    inc a
    ld b, [hl]
    add h
    inc de
    ld c, e
    add hl, hl
    dec sp
    dec a
    ld b, [hl]
    add h
    inc de
    ld c, h
    jr z, jr_005_56a1

    ld [$0027], sp
    ld a, a
    rst RST_38
    dec c
    ld e, $18
    daa
    nop
    add e
    rst RST_38
    ld bc, $2826
    ld b, b
    nop
    add e
    rst RST_38
    nop
    ccf

jr_005_566f:
    ld b, c
    ld l, a
    nop
    add b
    rst RST_38
    ld b, b
    ld l, a
    ld c, a
    ld l, a
    nop
    add c
    sub e
    ld b, b
    ld c, l
    ld b, a
    ld l, a
    nop
    add c

jr_005_5681:
    sub h
    ld e, d
    ld l, a
    ld b, a
    ld l, a
    nop

jr_005_5687:
    add c

jr_005_5688:
    sub h
    ld d, b
    ld h, l
    nop
    add hl, bc
    nop
    add d
    rst RST_38
    ld d, b
    ld h, b
    rrca
    cpl
    dec b

jr_005_5695:
    ld l, c
    rst RST_38
    rst RST_38
    add hl, bc
    db $10
    ld a, [de]
    ld hl, $8400
    rst RST_38
    ld e, e
    ld h, e

jr_005_56a1:
    ld d, $21
    nop
    add l
    rst RST_38
    ld [bc], a
    ld [$3e37], sp
    add e
    ld d, c
    ld c, l
    ld a, [hl+]
    ld [hl-], a
    ld [hl], $3d
    add e
    ld d, d
    ld c, [hl]
    ld [bc], a
    jr @+$2a

    ld a, $00
    add [hl]
    sub a
    jr nc, jr_005_5727

    jr nc, jr_005_570c

    nop
    add a
    sbc d
    nop
    ld [bc], a
    ld h, $3e
    nop
    adc b
    sub [hl]
    ld bc, $2519
    dec a
    nop
    adc b
    sub l
    add hl, sp
    ld d, h
    dec h
    cpl
    nop
    adc c
    sbc c
    ld d, h
    ld l, e
    ld [hl+], a
    ld d, d
    nop
    adc c
    sbc b
    ld [$002f], sp
    rrca
    nop
    adc d
    rst RST_38
    rst RST_38
    dec sp
    ld b, h
    ld [bc], a
    rrca
    add h
    dec d
    ld d, b
    inc hl
    ld b, d
    ld d, h
    ld e, a
    nop
    adc l
    sbc l
    jr nz, jr_005_573b

    ld b, b
    ld l, a
    nop
    adc [hl]
    sbc [hl]
    jr nz, jr_005_5744

    jr nc, jr_005_575b

    dec b
    ld l, e
    rst RST_38
    ld c, b
    ld h, b
    jr jr_005_573d

    ld [bc], a
    nop
    rst RST_38
    nop
    rla
    ld e, b

jr_005_570c:
    ld l, a
    nop
    adc a
    rst RST_38
    ld c, b
    ld l, a
    ld c, b
    ld l, a
    dec b
    ld l, d
    rst RST_38
    ld e, b
    ld l, a
    ld b, b
    ld b, a
    dec b
    ld l, d
    rst RST_38
    ld h, b
    ld l, a
    jr c, @+$41

    dec b
    ld l, d
    rst RST_38
    ld l, b
    ld l, a

jr_005_5727:
    ld sp, $0537
    ld l, d
    rst RST_38
    nop
    rrca
    db $10
    scf
    dec b
    inc d
    rst RST_38
    db $10
    rra
    jr nz, jr_005_577b

    dec b
    inc d
    rst RST_38
    rst RST_38

jr_005_573b:
    dec e
    inc l

jr_005_573d:
    ld [$0023], sp
    sub b
    rst RST_38
    ld b, $19

jr_005_5744:
    dec b
    ld d, b
    dec b
    dec d
    rst RST_38
    ld e, c
    ld l, a
    daa
    scf
    nop
    sub d
    sbc a
    ld d, a
    ld l, a
    jr c, @+$57

    nop
    sub d
    sbc a
    ld e, [hl]
    ld l, a
    jr nz, jr_005_57b0

jr_005_575b:
    nop
    sub d
    and b
    ld l, b
    ld l, a
    ld [$052b], sp
    ld l, h
    rst RST_38
    ld e, c
    ld h, d
    inc d
    ld hl, $9100
    rst RST_38
    rlca
    ld c, b
    rlca
    daa
    dec b
    ld l, d
    rst RST_38
    rst RST_38
    ld b, [hl]
    ld c, a
    cpl
    scf
    add e
    ld b, e
    ld d, c

jr_005_577b:
    ld [de], a
    rla
    ld de, $8317
    ld b, a
    ld d, d
    ld a, [hl+]
    cpl
    ld de, $8317
    ld b, a
    ld e, e
    ld c, e
    ld d, a
    dec hl
    inc [hl]
    nop
    sub [hl]
    rst RST_38
    ld c, h
    ld e, l
    dec bc
    ld a, [hl+]
    nop
    sub l
    and c
    ld b, h
    ld c, d
    ld [$002f], sp
    sub h
    and e
    ld e, [hl]
    ld h, a
    add hl, bc
    ld [hl], $00
    sub h
    and e
    ld b, h
    ld h, a
    ld [$0036], sp
    sub h
    and d
    jr nc, jr_005_580d

    jr nc, jr_005_57ff

jr_005_57b0:
    ld bc, $ff0a
    rlca
    rra
    rlca
    jr c, jr_005_57b8

jr_005_57b8:
    sub e
    and h
    rra
    scf
    rlca
    jr c, jr_005_57bf

jr_005_57bf:
    sub e
    and l
    add hl, bc
    ld e, $09
    scf
    dec b
    ld l, l
    and [hl]
    rst RST_38
    inc h
    ld a, [hl+]
    ld c, d
    ld d, b
    add e
    ld c, $54
    inc h
    ld a, [hl+]
    ld c, d
    ld d, b
    add e
    ld e, e
    ld h, [hl]
    db $10
    ccf
    ld c, d
    ld d, l
    add e
    ld c, e
    ld d, e
    ld h, b
    ld l, a
    ld e, l
    ld l, a
    ld [bc], a
    ld bc, $18ff
    scf
    daa
    ld c, a
    nop
    and l
    rst RST_38
    nop
    ld e, a
    ld c, b
    ld l, a
    ld bc, $ff0c
    rst RST_38
    rst RST_38
    ld c, b
    ld d, a
    jr c, jr_005_5853

    add b
    dec l
    ld h, b
    db $10
    ld h, $30

jr_005_57ff:
    ld d, l
    add b
    dec l
    ld h, c
    ld h, b
    ld l, a
    ld b, b
    ld c, e
    add b
    ld a, [hl+]
    ld h, d
    nop
    rrca
    ld h, b

jr_005_580d:
    ld l, e
    add b
    ld a, [hl+]
    ld h, e
    ld sp, $6046
    ld l, [hl]
    nop
    inc l
    rst RST_38
    add hl, de
    ld l, $58
    ld h, [hl]
    nop
    inc l
    rst RST_38
    rst RST_38
    ld b, c
    ld d, [hl]
    ld [hl+], a
    jr c, jr_005_5825

jr_005_5825:
    add hl, hl
    rst RST_38
    ld c, e
    ld d, e
    add hl, sp
    ccf
    nop
    add hl, hl
    rst RST_38
    ld c, b
    ld e, a
    ld c, b
    ld c, a
    nop
    inc l
    rst RST_38
    ld d, b
    ld h, a
    ld l, b
    ld l, a
    nop
    inc l
    rst RST_38
    jr z, jr_005_5875

    ld b, c
    ld b, [hl]
    nop
    inc l
    rst RST_38
    nop
    rrca
    ld d, c
    ld d, [hl]
    nop
    inc l
    rst RST_38
    ld c, b
    ld e, a
    ld d, b
    ld e, a
    add b
    dec hl
    ld h, h
    rst RST_38
    and l

jr_005_5853:
    ld e, b
    ld d, [hl]
    ld e, b
    ld a, d
    ld e, b
    add c
    ld e, b
    add l
    ld e, b
    add a
    ld e, b
    adc c
    ld e, b
    adc e
    ld e, b
    adc l
    ld e, b
    sub c
    ld e, b
    sub e
    ld e, b
    sub l
    ld e, b
    sub a
    ld e, b
    sbc c
    ld e, b
    sbc e
    ld e, b
    sbc l
    ld e, b
    sbc a
    ld e, b
    and c

jr_005_5875:
    ld e, b
    and d
    ld e, b
    and e
    ld e, b
    nop
    ld bc, $0302
    inc b
    ld h, c
    rst RST_38
    dec b
    ld b, $07
    rst RST_38
    ld [$0eff], sp
    rst RST_38
    rrca
    rst RST_38
    db $10
    rst RST_38
    inc d
    ld d, h
    ld h, a
    rst RST_38
    ld b, e
    rst RST_38
    ld d, $ff
    ld c, c
    rst RST_38
    ld e, $ff
    rra
    rst RST_38
    jr nz, @+$01

    ld [hl+], a
    rst RST_38
    inc hl
    rst RST_38
    rst RST_38
    rst RST_38
    dec l
    rst RST_38
    cp a
    ld e, b
    pop bc
    ld e, b
    call nz, $c758
    ld e, b
    ret


    ld e, b
    call $d058
    ld e, b
    push de
    ld e, b
    rst RST_10
    ld e, b
    db $db
    ld e, b
    db $dd
    ld e, b
    pop hl
    ld e, b
    push hl
    ld e, b
    dec bc
    rst RST_38
    inc c
    dec c
    rst RST_38
    ld h, e
    ld h, h
    rst RST_38
    ld h, l
    rst RST_38
    ld de, $1312
    rst RST_38
    dec d
    ld l, b
    rst RST_38
    rla
    jr jr_005_58ec

    ld a, [de]
    rst RST_38
    ld l, c
    rst RST_38
    dec de
    inc e
    dec e
    rst RST_38
    ld l, d
    rst RST_38
    ld hl, $6d6e
    rst RST_38
    inc h
    dec h
    ld h, $ff
    rst RST_38
    db $f4
    ld e, b
    cpl
    ld e, c
    db $ec
    ld e, b

jr_005_58ec:
    inc a
    push bc
    ld b, h
    push bc
    ld c, h
    push bc
    ld d, h
    push bc
    ld c, $59
    rrca

jr_005_58f7:
    ld e, c
    ld de, $1359
    ld e, c
    ld c, $59
    ld d, $59
    ld c, $59
    jr jr_005_595d

    ld a, [de]
    ld e, c
    inc e
    ld e, c
    ld hl, $2359
    ld e, c
    jr z, @+$5b

    rst RST_38
    db $10
    rst RST_38
    add a
    rst RST_38
    jr nc, jr_005_5944

    rst RST_38
    ld sp, $32ff
    rst RST_38
    dec sp
    rst RST_38
    ld a, [hl-]
    scf
    jr c, @-$6e

    rst RST_38
    sub [hl]
    rst RST_38
    ld b, c
    ld b, h
    ld c, c
    sub a
    rst RST_38
    ld c, h
    ld c, l
    ld c, [hl]
    ld d, b
    ld c, a
    ld d, e
    rst RST_38
    ld e, a
    ld e, c
    ld h, c
    ld e, c
    ld h, h
    ld e, c
    ld l, e
    ld e, c
    ld l, l
    ld e, c
    ld l, a
    ld e, c
    ld [hl], d
    ld e, c
    ld [hl], h
    ld e, c
    halt
    ld e, c
    ld a, e
    ld e, c
    add e

jr_005_5944:
    ld e, c
    add l
    ld e, c
    adc c
    ld e, c
    sub b
    ld e, c
    sub c
    ld e, c
    add d
    ld e, c
    sub h
    ld e, c
    sub [hl]
    ld e, c
    sbc b
    ld e, c
    sbc d
    ld e, c
    sbc l
    ld e, c
    and c
    ld e, c
    and e
    ld e, c

jr_005_595d:
    and l
    ld e, c
    dec c
    rst RST_38
    add d
    ld b, $ff
    add e
    ld [$0a09], sp
    dec bc
    inc c
    rst RST_38
    rlca
    rst RST_38
    add l
    rst RST_38
    jr jr_005_58f7

    rst RST_38
    add hl, de
    rst RST_38
    dec e
    rst RST_38
    adc c
    jr nz, jr_005_599a

    ld [hl+], a
    rst RST_38
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    rst RST_38
    rst RST_38
    inc hl
    rst RST_38
    adc h
    inc h
    dec h
    rst RST_38
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    rst RST_38
    rst RST_38
    ld l, $2d
    rst RST_38
    sub c
    rst RST_38
    sub d
    rst RST_38
    add hl, sp
    rst RST_38

jr_005_599a:
    sub h
    inc a
    rst RST_38
    dec a
    ld a, $3f
    rst RST_38
    ld b, b
    rst RST_38
    ld b, d
    rst RST_38
    ld c, d
    rst RST_38

Call_005_59a7:
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8d4
    add hl, bc
    ld [hl], a
    ld bc, $c8d4
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    srl a
    ld l, a
    ld h, $00
    ld a, [$c599]
    cp $00
    jr nz, jr_005_59d8

    ld bc, $5a09
    jr jr_005_59db

jr_005_59d8:
    ld bc, $5a0f

jr_005_59db:
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8d3
    add hl, bc
    ld [hl], a
    cp $03
    jr z, jr_005_5a08

    ld bc, $c8d4
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $1f
    ld b, a
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    ld a, b
    ld bc, $c8d4
    add hl, bc
    ld [hl], a

jr_005_5a08:
    ret


    inc bc
    inc bc
    inc bc
    inc b
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc b
    ld bc, $0602
    ld a, [$c85f]
    ld l, a
    ld h, $00
    ld a, [$c599]
    cp $00
    jr nz, jr_005_5a2c

    ld bc, $5a73
    ld de, $5852
    jr jr_005_5a32

jr_005_5a2c:
    ld bc, $5a79
    ld de, $58e6

jr_005_5a32:
    add hl, bc
    ld a, [hl]
    ld [$c855], a
    bit 7, a
    ret nz

    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c860]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $ff
    ld [$c85b], a
    ld [$c85c], a
    ld [$c85d], a
    ld [$c85e], a
    ld [$c85f], a
    ld [$c860], a
    ld bc, $c85b

jr_005_5a64:
    ld a, [hl+]
    cp $ff
    ret z

    push bc
    push hl
    call $5a7f
    pop hl
    pop bc
    ld [bc], a
    inc bc
    jr jr_005_5a64

    rst RST_38
    nop
    rst RST_38
    rst RST_38
    ld bc, $ffff
    nop
    ld [bc], a
    rst RST_38
    ld bc, $eaff
    ld d, [hl]
    ret z

    ld a, [$c855]
    cp $02
    jr z, jr_005_5af8

    ld a, [$c856]
    call Call_005_59a7
    ld bc, $c8d3
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $04
    jr z, jr_005_5acb

    ld bc, $c8d4
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1d66
    ld a, [$c523]
    push af
    ld bc, $c8d4
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_1da4
    pop af
    ld d, a
    ld a, [$c523]
    or d
    and $01
    jr z, jr_005_5af8

    ld a, $ff
    ret


jr_005_5acb:
    ld bc, $c8d4
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_35fe
    ld a, [$c523]
    push af
    ld bc, $c8d4
    ldh a, [$ffa0]
    ld l, a
    ldh a, [$ffa1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call Call_000_3558
    pop af
    ld d, a
    ld a, [$c523]
    or d
    and $01
    jr z, jr_005_5af8

    ld a, $ff
    ret


jr_005_5af8:
    ld a, [$c856]
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_005_6a50:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
