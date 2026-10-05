; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

    nop
    ld b, c
    ld [de], a
    ld b, c
    inc hl
    ld b, c
    ld [hl], $41
    ld c, c
    ld b, c
    ld e, h
    ld b, c
    ld [hl], c
    ld b, c
    adc l
    ld b, c
    or a
    ld b, c
    call nc, $eb41
    ld b, c
    ld sp, hl
    ld b, c
    dec e
    ld b, d
    ld d, l
    ld b, d
    ld d, l
    ld b, d
    adc a
    ld b, d
    cp e
    ld b, d
    db $eb
    ld b, d
    dec de
    ld b, e
    inc [hl]
    ld b, e
    inc [hl]
    ld b, e
    inc [hl]
    ld b, e
    ld c, b
    ld b, e
    ld e, b
    ld b, e
    ld [hl], a
    ld b, e
    jp nz, $d643

    ld b, e
    db $ed
    ld b, e
    cp $43
    rrca
    ld b, h
    jr nz, @+$46

    ld sp, $3144
    ld b, h
    ld c, d
    ld b, h
    cp [hl]
    ld b, h
    rst RST_20
    ld b, h
    db $10
    ld b, l
    dec [hl]
    ld b, l
    ld h, b
    ld b, l
    ld a, h
    ld b, l
    sbc c
    ld b, l
    cp l
    ld b, l
    rst RST_20
    ld b, l
    inc c
    ld b, [hl]
    ld [hl], $46
    ld b, a
    ld b, [hl]
    ld c, l
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld e, c
    ld b, [hl]
    adc a
    ld b, [hl]
    or h
    ld b, [hl]
    push hl
    ld b, [hl]
    ld hl, sp+$46
    jr nc, @+$49

    adc h
    ld b, a
    xor $47
    ld b, $48
    ld l, e
    ld c, b
    ld [hl], c
    ld c, b
    inc b
    ld c, c
    ld e, $49
    ld b, l
    ld c, c
    ld l, l
    ld c, c
    sbc d
    ld c, c
    call z, $fa49
    ld c, c
    ld e, e
    ld c, d
    add a
    ld c, d
    cp [hl]
    ld c, d
    jp hl


    ld c, d
    or $4a
    ld e, [hl]
    ld c, h
    add [hl]
    ld c, h
    xor c
    ld c, h
    xor a
    ld c, h
    rst RST_10
    ld c, h
    ld hl, sp+$4c
    rrca
    ld c, l
    jr z, jr_011_40eb

    ld l, b
    ld c, l
    sbc d
    ld c, l
    cp [hl]
    ld c, l
    call nc, $f94d
    ld c, l
    ld c, e
    ld c, [hl]
    ld d, c
    ld c, [hl]
    ld a, c
    ld c, [hl]
    sbc a
    ld c, [hl]
    cp [hl]
    ld c, [hl]
    ldh [$ff4e], a
    rra
    ld c, a
    ld e, e
    ld c, a
    ld e, l
    ld d, b
    ld l, [hl]
    ld d, b
    ret c

    ld d, b
    jr z, @+$53

    ld d, d
    ld d, c
    sub e
    ld d, c
    cp e
    ld d, c
    ld h, a
    ld d, d
    adc l
    ld d, d
    and a
    ld d, d
    sub $52
    db $f4
    ld d, d
    dec de
    ld d, e
    ld b, b
    ld d, e
    add d
    ld d, e
    cp c
    ld d, e
    ret c

    ld d, e
    dec h
    ld d, h
    sub a
    ld d, h
    ld a, [$5d54]
    ld d, l
    add a
    ld d, l
    cp d
    ld d, l
    db $d3
    ld d, l
    ld c, $56
    inc d

jr_011_40eb:
    ld d, [hl]
    scf
    ld d, [hl]
    ld h, a
    ld d, [hl]
    ld a, l
    ld d, [hl]
    sub e
    ld d, [hl]
    rst RST_08
    ld d, [hl]
    ldh a, [c]
    ld d, [hl]
    add hl, de
    ld d, a
    dec sp
    ld d, a
    ld [hl], h
    ld d, a
    ld b, h
    ld e, b
    jr jr_011_4110

    inc d
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, $37
    push bc

jr_011_4110:
    jr nz, jr_011_4131

    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec e
    ld [$1a12], sp
    ld c, $0f
    inc b
    dec c
    jr nz, jr_011_4142

    jr jr_011_4133

    inc d
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e

jr_011_4131:
    ld a, $37

jr_011_4133:
    push bc
    jr nz, jr_011_4155

    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec e
    ld [$1a12], sp
    ld [bc], a

jr_011_4142:
    dec bc
    ld c, $12
    inc b
    inc bc
    jr nz, jr_011_4168

    jr jr_011_4159

    inc d
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    inc de
    rlca
    inc b

jr_011_4155:
    ld a, [de]
    dec e
    ld a, $37

jr_011_4159:
    push bc
    jr nz, jr_011_417b

    jr jr_011_416c

    inc d
    ld a, [de]
    inc bc
    ld [$0212], sp
    nop
    ld de, $1a03

jr_011_4168:
    inc de
    rlca
    inc b
    dec e

jr_011_416c:
    ld a, $37
    push bc
    jr nz, jr_011_4190

    jr jr_011_4181

    inc d
    ld a, [de]
    rrca
    inc d
    inc de
    dec e
    ld a, $37

jr_011_417b:
    push bc
    dec e
    ld [$1a0d], sp
    inc de

jr_011_4181:
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    rrca
    ld [de], a
    inc d
    dec bc
    inc b
    jr nz, @+$21

    ld [$1a13], sp

jr_011_4190:
    ld [$1d12], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec e
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld a, [de]
    dec d
    ld [$0b00], sp
    jr nz, jr_011_41c6

    ld [$1a13], sp
    ld [$1a12], sp
    inc b
    inc c
    rrca
    inc de
    jr jr_011_41d6

    rra
    ld [$1a13], sp
    ld [$1d12], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    dec e
    inc c

jr_011_41c6:
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld a, [de]
    dec d
    ld [$0b00], sp
    jr nz, jr_011_41f3

    ld a, $37

jr_011_41d6:
    push bc
    ld a, [de]
    ld [$1d12], sp
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    rrca
    ld [de], a
    inc d
    dec bc
    inc b
    jr nz, jr_011_420a

    ld a, $37
    push bc
    ld a, [de]
    ld [$1d12], sp
    inc b

jr_011_41f3:
    inc c
    rrca
    inc de
    jr @+$22

    rra
    inc de
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    rrca
    inc b
    ld c, $11
    ld [$1a00], sp
    ld [de], a
    inc de

jr_011_420a:
    jr nz, jr_011_420c

jr_011_420c:
    ld a, [de]
    ld a, $37
    push bc
    dec e
    ld [$1a12], sp
    ld d, $00
    ld [$0813], sp
    dec c
    ld b, $20
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld de, $1508
    inc b
    ld de, $081a
    ld [de], a
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    jr nz, @+$1e

    rlca
    inc b
    ld a, [de]
    ld [$1a12], sp
    ld d, $00
    ld [$0813], sp
    dec c
    ld b, $1d
    dec b
    ld c, $11
    ld a, [de]
    rrca
    nop
    ld [de], a
    ld [de], a
    inc b
    dec c
    ld b, $04
    ld de, $2012
    rra
    dec c
    ld c, $13
    rlca
    ld [$060d], sp
    ld a, [de]
    rlca
    nop
    rrca
    rrca
    inc b
    dec c
    inc b
    inc bc
    jr nz, jr_011_4283

    ld [de], a
    rlca
    inc b
    ld a, [de]
    ld [$1a12], sp
    rrca
    ld de, $010e
    nop
    ld bc, $180b
    dec e
    ld [$0c0c], sp
    inc d
    dec c
    inc b
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca

jr_011_4283:
    inc b
    dec e
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    jr nz, @+$21

    jr jr_011_429f

    inc d
    ld a, [de]
    inc bc
    ld [$0212], sp
    nop
    ld de, $1a03
    inc de
    rlca
    inc b
    dec e

jr_011_429f:
    ld a, $37
    push bc
    jr nz, jr_011_42c1

    ld [$1a13], sp
    ld [de], a
    ld [$0a0d], sp
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    ld c, $05
    dec e
    ld [de], a
    ld [$0706], sp
    inc de
    daa
    rra
    ld a, $37
    push bc
    ld a, [de]
    ld d, $00

jr_011_42c1:
    ld [de], a
    dec e
    dec bc
    ld [$1a13], sp
    ld bc, $1a18
    inc de
    rlca
    inc b
    dec e
    dec bc
    ld [$0706], sp
    inc de
    inc b
    ld de, $1c20
    ld [$1a13], sp
    ld bc, $1114
    dec c
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $1d
    nop
    ld [de], a
    rlca
    inc b
    ld [de], a
    jr nz, jr_011_430a

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
    nop
    ld d, $00
    jr jr_011_4327

    ld a, [de]
    ld [de], a
    ld c, $1a
    inc de
    rlca
    inc b
    dec e

jr_011_430a:
    ld a, $37
    push bc
    ld a, [de]
    ld [$1d12], sp
    dec c
    ld c, $16

jr_011_4314:
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    jr nz, @+$21

    ld h, $02
    dec bc
    ld [$0a02], sp
    jr nz, @+$22

    jr nz, jr_011_4345

    jr nz, @+$29

jr_011_4327:
    ld h, $1c
    ld [$1a13], sp
    ld [$1a12], sp
    ld a, $38
    push bc
    jr nz, jr_011_4353

jr_011_4334:
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    ld c, $14
    inc de
    dec e
    ccf
    jr c, @-$39

    ld a, [de]
    ld [bc], a
    ld c, $08
    dec c

jr_011_4345:
    ld [de], a
    jr nz, jr_011_4367

    ld b, $04
    inc de
    ld a, [de]
    ccf
    jr c, jr_011_4314

    ld a, [de]
    ld bc, $0b14

jr_011_4353:
    dec bc
    inc b
    inc de
    jr nz, jr_011_4377

    jr jr_011_4368

    inc d
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    nop
    ld a, [de]
    inc de
    ld c, $13
    nop

jr_011_4367:
    dec bc

jr_011_4368:
    dec e
    ld c, $05
    ld a, [de]
    ccf
    jr c, jr_011_4334

    ld a, [de]
    ld [bc], a
    ld c, $08
    dec c
    ld [de], a
    jr nz, jr_011_4396

jr_011_4377:
    jr jr_011_4387

    inc d
    ld de, $0b1a
    inc d
    ld [bc], a

jr_011_437f:
    ld a, [bc]
    ld a, [de]
    rlca
    nop
    ld [de], a
    dec e
    ld [bc], a
    inc b

jr_011_4387:
    ld de, $0013
    ld [$0b0d], sp
    jr jr_011_43a9

    ld [bc], a
    rlca
    nop
    dec c
    ld b, $04
    inc bc

jr_011_4396:
    daa
    jr jr_011_43a7

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    rlca
    ld [$1a13], sp
    inc de
    rlca
    inc b
    dec e
    add hl, bc

jr_011_43a7:
    nop
    ld [bc], a

jr_011_43a9:
    ld a, [bc]
    rrca
    ld c, $13
    daa
    inc e
    jr jr_011_43bf

    inc d
    ld a, [de]
    ld b, $0e
    inc de
    dec e
    ccf
    jr c, jr_011_437f

    ld a, [de]
    ld [bc], a
    ld c, $08
    dec c

jr_011_43bf:
    ld [de], a
    jr nz, jr_011_43e1

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld c, $12
    inc b
    ld a, [de]
    ld c, $05
    dec e
    ld a, $37
    push bc
    jr nz, jr_011_43f5

    ld h, $13
    rlca
    nop
    dec c
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec b
    ld c, $11

jr_011_43e1:
    dec e
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, $37
    push bc
    jr nz, jr_011_4412

    rra
    ld b, $04
    inc de
    ld a, [de]
    ld a, $5c
    push bc
    ld a, [de]

jr_011_43f5:
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld [de], a
    jr nz, jr_011_441d

    ld b, $04
    inc de
    ld a, [de]
    ld a, $5d
    push bc
    ld a, [de]
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld [de], a
    jr nz, jr_011_442e

    ld b, $04
    inc de

jr_011_4412:
    ld a, [de]
    ld a, $5e
    push bc
    ld a, [de]
    ld bc, $0b14
    dec bc
    inc b
    inc de

jr_011_441d:
    ld [de], a
    jr nz, @+$21

    ld b, $04
    inc de
    ld a, [de]
    ccf
    ld h, b
    push bc
    ld a, [de]
    ld bc, $0b14
    dec bc
    inc b
    inc de

jr_011_442e:
    ld [de], a
    jr nz, jr_011_4450

    inc de
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    dec c
    ld c, $13
    ld a, [de]
    inc b
    dec c
    ld c, $14
    ld b, $07
    dec e
    ld [bc], a
    ld c, $08
    dec c
    ld [de], a
    jr nz, jr_011_4469

    dec c
    ld c, $16
    ld a, [de]
    inc de
    rlca

jr_011_4450:
    nop
    inc de
    ld a, [de]
    ld [$1a12], sp
    ld c, $0d
    inc b
    dec e
    dec bc
    nop
    ld de, $0406
    ld a, [de]
    ld d, $0e
    inc c
    nop
    dec c
    daa
    ld a, [de]
    ld [de], a
    rlca

jr_011_4469:
    inc b
    ld a, [hl+]
    ld [de], a
    ld b, $0e
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1a04
    nop
    inc de
    ld a, [de]
    dec bc
    inc b
    nop
    ld [de], a
    inc de
    inc [hl]
    jr nc, jr_011_44b1

    ld a, [de]
    dec bc
    ld bc, $2712
    inc e
    jr jr_011_4497

    inc d
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    nop
    dec c
    ld a, [de]
    inc d
    dec c
    inc b
    nop

jr_011_4497:
    ld [de], a
    jr @+$07

    inc b
    inc b
    dec bc
    ld [$060d], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    jr @+$10

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld [de], a
    inc b
    inc b
    dec c

jr_011_44b1:
    ld a, [de]
    rlca
    inc b
    ld de, $011d
    inc b
    dec b
    ld c, $11
    inc b
    jr nz, jr_011_44dd

    jr @+$10

    inc d
    ld a, [de]
    rrca
    inc d
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca

jr_011_44dd:
    inc b
    ld a, [de]
    ld bc, $130e
    inc de
    dec bc
    inc b
    jr nz, jr_011_4506

    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    dec c
    ld c, $1d
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld a, [de]
    dec bc
    inc b
    dec b
    inc de
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca
    inc b

jr_011_4506:
    ld a, [de]
    ld [bc], a
    nop
    rrca
    ld [de], a
    inc d
    dec bc
    inc b
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    inc b
    jr jr_011_4537

    ld [bc], a
    nop
    ld de, $1d03
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    nop
    rrca
    nop
    ld de, $0c13
    inc b
    dec c
    inc de
    jr nz, jr_011_4554

    inc de
    rlca

jr_011_4537:
    inc b
    ld a, [de]
    jr @+$10

    inc d
    dec c
    ld b, $1a
    rrca
    inc d
    dec c
    ld a, [bc]
    ld a, [de]
    ld [$1d12], sp
    rrca
    ld c, $08
    dec c
    inc de
    ld [$060d], sp
    ld a, [de]
    rlca
    ld [$1a12], sp

jr_011_4554:
    ld b, $14
    dec c
    dec e
    nop
    inc de
    ld a, [de]
    jr @+$10

    inc d
    daa
    rra
    jr jr_011_4570

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$120d], sp
    ld [$0403], sp
    ld a, [de]
    inc de
    rlca

jr_011_4570:
    inc b
    dec e
    ld b, $14
    dec c
    ld a, [de]
    ld [de], a
    rlca
    ld c, $0f
    jr nz, @+$21

    jr jr_011_458c

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$120d], sp
    ld [$0403], sp
    dec e
    inc de
    rlca

jr_011_458c:
    inc b
    ld a, [de]
    nop
    rrca
    nop
    ld de, $0c13
    inc b
    dec c
    inc de
    jr nz, jr_011_45b8

    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    rrca
    ld c, $12
    ld [de], a
    ld [$0b01], sp
    jr jr_011_45c7

    ld bc, $1a04
    jr jr_011_45c0

    inc d
    ld de, $0e1d
    dec b
    dec b

jr_011_45b8:
    ld [$0402], sp
    jr z, jr_011_45dc

    jr @+$10

    inc d

jr_011_45c0:
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]

jr_011_45c7:
    ld b, $04
    inc de
    ld a, [de]
    ld de, $0308
    dec e
    ld c, $05
    ld a, [de]
    ld d, $07
    nop
    inc de
    ld a, [de]
    jr jr_011_45e7

    inc d
    ld a, [de]
    inc bc

jr_011_45dc:
    ld [$0d03], sp
    ld a, [hl+]
    inc de
    inc de
    nop
    ld a, [bc]
    inc b
    daa
    rra

jr_011_45e7:
    jr @+$10

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld bc, $1114
    dec c
    dec e
    ld d, $07
    nop
    inc de
    ld a, [de]
    jr jr_011_460b

    inc d
    ld a, [de]
    inc bc
    ld [$0d03], sp
    ld a, [hl+]
    inc de
    dec e
    inc de
    nop
    ld a, [bc]
    inc b
    daa

jr_011_460b:
    rra
    ld [bc], a
    rlca
    ld c, $0e
    ld [de], a
    inc b
    ld a, [de]
    ld c, $0d
    inc b
    ld a, [de]
    ld [de], a
    rrca
    inc b
    inc b
    inc bc
    dec e
    dec bc
    inc b
    dec d
    inc b
    dec bc
    jr nz, jr_011_4640

    dec b
    nop
    ld [de], a
    inc de
    dec e
    ld de, $0604
    inc d
    dec bc
    nop
    ld de, $121d
    dec bc
    ld c, $16
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0d14

jr_011_4640:
    ld b, $00
    dec bc
    ld c, $16
    jr nz, jr_011_4666

    inc b
    ld de, $0e11
    ld de, $041f
    ld de, $0e11
    ld de, $041f
    ld de, $0e11
    ld de, $131f
    rlca
    inc b
    ld a, [de]
    dec bc
    ld [$040d], sp
    ld a, [de]
    ld [$1a12], sp
    inc bc

jr_011_4666:
    inc b
    nop
    inc bc
    jr nz, jr_011_4687

    jr jr_011_467b

    inc d
    ld a, [de]
    rlca
    ld c, $0f
    inc b
    ld a, [de]
    jr jr_011_4684

    inc d
    ld a, [de]
    inc bc
    ld c, $0d

jr_011_467b:
    ld a, [hl+]
    inc de
    ld d, $08
    dec c
    inc bc
    ld a, [de]
    inc d
    rrca

jr_011_4684:
    ld a, [de]
    inc de
    rlca

jr_011_4687:
    inc b
    ld a, [de]
    ld [de], a
    nop
    inc c
    inc b
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0d14
    ld a, [bc]
    ld a, [de]
    ld a, [bc]
    inc b
    jr jr_011_46a7

    ld c, $11
    ld a, [de]
    nop
    dec c

jr_011_46a7:
    ld a, [de]
    nop
    inc d
    inc de
    ld c, $0c
    ld c, $01
    ld [$040b], sp
    jr nz, jr_011_46d3

    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec d
    inc b
    ld de, $1a18
    dec b
    nop
    inc de
    ld d, $0e
    inc c
    nop
    dec c
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]

jr_011_46d3:
    inc de
    ld de, $0d14
    ld a, [bc]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    ld [bc], a
    nop
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec b
    nop
    ld de, $1a04
    inc c
    inc b
    inc de
    inc b
    ld de, $1f20
    jr jr_011_4708

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    dec e
    ld [de], a
    inc d
    ld [bc], a
    ld [bc], a

jr_011_4708:
    inc b
    ld [de], a
    ld [de], a
    dec b
    inc d
    dec bc
    dec bc
    jr jr_011_472e

    ld [de], a
    dec bc
    inc d
    ld b, $06
    inc b
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $0b14
    dec bc
    inc b
    inc de
    rrca
    ld de, $0e0e
    dec b
    dec e
    ld b, $0b
    nop
    ld [de], a
    ld [de], a

jr_011_472e:
    jr nz, jr_011_474f

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1314
    dec bc
    inc b
    ld de, $121a
    ld c, $14
    dec c
    inc bc
    ld [de], a
    dec e
    inc de
    ld de, $140e
    ld bc, $040b
    inc bc
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    rlca

jr_011_474f:
    inc b
    dec e
    ld [de], a
    nop
    jr jr_011_4767

    dec h
    ld a, [de]
    ld h, $13
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    dec e
    dec c
    ld c, $13
    rlca
    ld [$060d], sp

jr_011_4767:
    ld a, [de]
    ld [$021a], sp
    nop
    dec c
    ld a, [de]
    inc de
    inc b
    dec bc
    dec bc
    jr jr_011_4782

    inc d
    jr nz, jr_011_4797

    jr nz, @+$1e

    ld [de], a
    ld c, $25
    ld a, [de]
    rrca
    dec bc
    inc b
    nop
    ld [de], a

jr_011_4782:
    inc b
    ld a, [de]
    dec bc
    inc b
    nop
    dec d
    inc b
    daa
    ld h, $1f
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    rrca
    inc b
    ld de, $0e12
    dec c

jr_011_4797:
    ld a, [de]
    inc c
    inc d
    ld [de], a
    inc de
    dec e
    ld de, $0004
    dec bc
    dec bc
    jr jr_011_47be

    ld bc, $1a04
    ld [$1a0d], sp
    nop
    dec e
    inc bc
    inc b
    inc b
    rrca
    ld a, [de]
    ld [de], a
    dec bc
    inc b
    inc b
    rrca
    daa
    inc e
    dec c
    ld c, $1a
    inc c
    nop
    inc de

jr_011_47be:
    inc de
    inc b
    ld de, $071a
    ld c, $16
    ld a, [de]
    rlca
    nop
    ld de, $1803
    ld c, $14
    ld a, [de]
    ld [de], a
    rlca
    nop
    ld a, [bc]
    inc b
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    jr jr_011_47f7

    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld d, $0e
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld d, $00
    ld a, [bc]
    inc b
    dec e
    inc d
    rrca
    jr nz, jr_011_480d

    jr jr_011_47fe

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de

jr_011_47f7:
    ld a, [de]
    inc bc
    ld c, $1a
    inc de
    rlca
    nop

jr_011_47fe:
    inc de
    dec e
    rlca
    inc b
    ld de, $2004
    rra
    ld [$1a13], sp
    nop
    rrca
    rrca
    inc b

jr_011_480d:
    nop
    ld de, $1a12
    inc de
    ld c, $1a
    ld bc, $1d04
    ld [bc], a
    ld c, $0c
    ld [$060d], sp
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld d, $0e
    inc c
    inc b
    dec c
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld d, $00
    ld [de], a
    rlca
    ld de, $0e0e
    inc c
    jr nz, jr_011_4855

    jr jr_011_4849

    inc d
    ld a, [de]
    rlca
    ld c, $0f
    inc b
    ld a, [de]
    ld [$1a13], sp
    ld [$0d12], sp
    ld a, [hl+]

jr_011_4849:
    inc de
    dec e
    ld [de], a
    ld c, $0c
    inc b
    ld c, $0d
    inc b
    ld a, [de]
    ld d, $07

jr_011_4855:
    ld c, $1a
    ld [$1d12], sp
    rlca
    nop
    dec d
    ld [$060d], sp
    ld a, [de]
    inc de
    ld de, $140e
    ld bc, $040b
    ld [de], a
    daa
    rra
    inc b
    ld de, $0e11
    ld de, $131f
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $1801
    ld a, [de]
    inc b
    jr jr_011_4882

    ld [de], a
    ld a, [de]
    jr jr_011_4890

jr_011_4882:
    inc d
    ld [de], a
    inc d
    ld [de], a
    rrca
    ld [$0802], sp
    ld c, $14
    ld [de], a
    dec bc
    jr jr_011_48b5

jr_011_4890:
    dec e
    ld h, $18
    ld c, $14
    ld a, [hl+]
    ld de, $1a04
    inc bc
    nop
    ld a, [de]
    ld b, $14
    jr jr_011_48bd

    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld de, $0d00
    ld a, [de]
    nop
    ld d, $00
    jr jr_011_48cb

    ld d, $08
    inc de
    rlca
    ld c, $14
    inc de

jr_011_48b5:
    ld a, [de]
    rrca
    nop
    jr jr_011_48c2

    dec c
    ld b, $25

jr_011_48bd:
    dec e
    nop
    ld [$2a0d], sp

jr_011_48c2:
    inc de
    ld a, [de]
    jr jr_011_48c6

jr_011_48c6:
    jr z, @+$1e

    ld [$031a], sp

jr_011_48cb:
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    ld b, $08
    dec d
    inc b
    ld a, [de]
    ld de, $0308
    inc b
    ld [de], a
    inc de
    nop
    ld a, [de]
    ld de, $1300
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    jr jr_011_48f7

    inc d
    jr nz, jr_011_4909

    dec c
    ld c, $16
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]
    ld c, $14
    inc de

jr_011_48f7:
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc c
    jr jr_011_491b

    ld [bc], a
    nop
    ld bc, $2627
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]

jr_011_4909:
    nop
    ld a, [de]
    ld bc, $0608
    ld a, [de]
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    dec e
    ld [bc], a
    nop
    ld bc, $0d08
    inc b

jr_011_491b:
    inc de
    jr nz, jr_011_493d

    rlca
    ld [$1313], sp
    ld [$060d], sp
    ld a, [de]
    ld [$1a13], sp
    inc c
    ld [$0706], sp
    inc de
    dec e
    dec c
    ld c, $13
    ld a, [de]
    ld bc, $1a04
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1204

jr_011_493d:
    inc de
    dec e
    ld [$0403], sp
    nop
    jr nz, jr_011_4964

    inc de
    rlca
    ld [$1a12], sp
    ld [bc], a
    nop
    ld [de], a
    inc b
    ld a, [de]
    ld [$1d12], sp
    ld [de], a
    inc de
    nop
    ld de, $0813
    dec c
    ld b, $1a
    inc de
    ld c, $1a
    ld [bc], a
    ld c, $0c
    inc b
    dec e
    inc de

jr_011_4964:
    ld c, $06
    inc b
    inc de
    rlca
    inc b
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $130e
    inc de
    dec bc
    inc b
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    inc b
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $1f20
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0200
    ld a, [bc]
    ld a, [de]
    ld [de], a
    dec bc
    ld [$0403], sp
    ld [de], a
    dec e
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld de, $1504
    inc b
    nop
    dec bc
    ld [de], a
    ld a, [de]
    nop
    ld [de], a
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
    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec e
    nop
    ld a, [de]
    ld [de], a
    dec bc
    ld c, $13
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    nop
    ld de, $1d03
    ld c, $11
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    jr nz, jr_011_4a19

    inc de
    rlca
    inc b
    ld a, [de]
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
    ld de, $121d
    dec bc
    ld [$0403], sp
    ld [de], a
    ld a, [de]
    ld [de], a
    rlca
    inc d
    inc de
    ld a, [de]
    nop

jr_011_4a19:
    dec c
    inc bc
    dec e
    ld bc, $0604
    ld [$120d], sp
    ld a, [de]
    inc c
    ld c, $15
    ld [$060d], sp
    jr nz, jr_011_4a47

    jr jr_011_4a3b

    inc d
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    dec c
    ld c, $1a
    ld [bc], a
    rlca
    ld c, $08

jr_011_4a3b:
    ld [bc], a
    inc b
    ld bc, $1314
    ld a, [de]
    inc de
    ld c, $1a
    ld b, $0e
    ld a, [de]

jr_011_4a47:
    nop
    dec bc
    ld c, $0d
    ld b, $1d
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0308
    inc b
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    dec bc
    inc b
    dec d
    nop
    inc de
    ld c, $11
    ld a, [de]
    ld [de], a
    inc de
    ld c, $0f
    ld [de], a
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $121d
    dec bc
    ld [$0403], sp
    ld [de], a
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    jr nz, jr_011_4aa6

    ld [de], a
    ld d, $0e
    ld c, $12
    rlca
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
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
    ld de, $0212
    dec bc
    ld c, $12
    inc b

jr_011_4aa6:
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [$1d13], sp
    ld bc, $0604
    ld [$120d], sp
    ld a, [de]
    inc de
    ld c, $1a
    inc c
    ld c, $15
    inc b
    jr nz, jr_011_4add

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    rlca
    ld c, $13
    ld c, $1a
    ld c, $05
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $00
    dec bc
    ld a, [de]
    nop
    ld [de], a
    dec bc
    inc b
    inc b
    rrca
    dec e

jr_011_4add:
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0304
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    dec bc
    ld c, $02
    ld a, [bc]
    inc b
    inc bc
    jr nz, jr_011_4b15

    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld a, [de]
    dec c
    nop
    inc c
    inc b
    ld [de], a
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld [$1a11], sp
    inc b
    dec b
    dec b

jr_011_4b15:
    inc b
    ld [bc], a
    inc de
    ld [de], a
    dec e
    nop
    ld de, $1a04
    ld [de], a
    rlca
    ld c, $16
    dec c
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    dec b
    ld [$040b], sp
    ld [de], a
    inc h
    inc e
    ld h, $0c
    inc b
    inc bc
    ld de, $1904
    ld [$040d], sp
    ld hl, $001d
    ld a, [de]
    dec c
    inc b
    ld de, $0415
    ld a, [de]
    nop
    dec c
    inc de
    ld [$0e03], sp
    inc de
    inc b
    jr nz, jr_011_4b6e

    inc bc
    ld [$1304], sp
    rlca
    nop
    dec c
    ld c, $0b
    ld a, [de]
    inc de
    ld de, $0c08
    inc b
    dec c
    inc b
    ld hl, $0002
    inc d
    ld [de], a
    inc b
    ld [de], a
    ld a, [de]
    inc c
    inc b
    inc c

jr_011_4b6e:
    ld c, $11
    jr jr_011_4b8f

    dec bc
    ld c, $12
    ld [de], a
    jr nz, @+$1e

    ld [de], a
    ld c, $03
    ld [$0c14], sp
    ld a, [de]
    ld bc, $0208
    nop
    ld de, $0e01
    dec c
    nop
    inc de
    inc b
    inc b
    nop
    ld [de], a
    inc b
    ld [de], a

jr_011_4b8f:
    ld a, [de]
    rrca
    nop
    ld [$1a0d], sp
    ld c, $05
    dec e
    ld c, $15
    inc b
    ld de, $0004
    inc de
    ld [$060d], sp
    jr nz, jr_011_4bc0

    ld [bc], a
    rlca
    inc b
    inc c
    ld c, $0f
    nop
    rrca
    nop
    ld [$210d], sp
    dec e
    ld [$030d], sp
    inc d
    ld [bc], a
    inc b
    ld [de], a
    ld a, [de]
    ld b, $0b
    inc b
    inc b
    dec b
    inc d
    dec bc

jr_011_4bc0:
    dec e
    inc b
    inc d
    rrca
    rlca
    ld c, $11
    ld [$2000], sp
    inc e
    ld [de], a
    ld c, $03
    ld [$0c14], sp
    ld a, [de]
    rrca
    inc b
    dec c
    inc de
    ld c, $13
    rlca
    nop
    dec bc
    ld hl, $021d
    nop
    inc d
    ld [de], a
    inc b
    ld [de], a
    ld a, [de]
    rrca
    inc b
    ld de, $0e12
    dec c
    ld a, [de]
    inc de
    ld c, $1d
    ld [de], a
    rrca
    inc b
    nop
    ld a, [bc]
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $1314
    rlca
    dec e
    ld d, $07
    inc b
    dec c
    ld a, [de]
    inc d
    dec c
    ld [bc], a
    ld c, $0d
    ld [de], a
    ld [bc], a
    ld [$140e], sp
    ld [de], a
    jr nz, jr_011_4c2c

    ld bc, $1208
    ld c, $03
    ld [$0c14], sp
    ld [$1213], sp
    ld a, [de]
    ld hl, $001d
    dec c
    inc de
    ld [$0313], sp
    ld c, $13
    inc b
    ld a, [de]
    inc de
    ld c, $1d
    inc bc

jr_011_4c2c:
    ld [$1304], sp
    rlca
    nop
    dec c
    ld c, $0b
    ld a, [de]
    inc de
    ld de, $0c08
    inc b
    dec c
    inc b
    jr nz, jr_011_4c4a

    ld c, $11
    inc b
    ld a, [de]
    inc de
    rlca
    nop
    dec c
    ld a, [de]
    ld c, $0d
    inc b

jr_011_4c4a:
    ld a, [de]
    inc bc
    ld c, $12
    inc b
    ld [$1a12], sp
    dec c
    inc b
    ld [bc], a
    inc b
    ld [de], a
    ld [de], a
    nop
    ld de, $2018
    ld h, $1f
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    ld [$1a12], sp
    ld [$1a0d], sp
    nop
    dec c
    dec e
    ld [$0f0c], sp
    ld c, $12
    ld [de], a
    ld [$0b01], sp
    jr jr_011_4c94

    inc bc
    inc b
    inc b
    rrca
    dec e
    ld [de], a
    dec bc
    inc b
    inc b
    rrca
    jr nz, jr_011_4ca5

    jr jr_011_4c96

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
    ld a, [de]

jr_011_4c94:
    ld d, $07

jr_011_4c96:
    nop
    inc de
    jr @+$10

    inc d
    ld a, [de]
    inc bc
    ld [$0d03], sp
    ld a, [hl+]
    inc de
    ld a, [de]
    inc de
    nop

jr_011_4ca5:
    ld a, [bc]
    inc b
    jr nz, jr_011_4cc8

    inc b
    ld de, $0e11
    ld de, $0c1f
    nop
    jr jr_011_4cb4

    inc b

jr_011_4cb4:
    ld a, [de]
    nop
    ld a, [de]
    dec c
    nop
    rrca
    ld a, [de]
    ld d, $0e
    inc d
    dec bc
    inc bc
    dec e
    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    jr @+$10

jr_011_4cc8:
    inc d
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    dec e
    ld bc, $1304
    inc de
    inc b
    ld de, $1f20
    rlca
    inc c
    inc c
    inc c
    jr nz, jr_011_4cfd

    jr nz, jr_011_4cfb

    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld d, $00
    ld [de], a
    ld a, [de]
    dec c
    ld c, $1d
    ld [$0f0c], sp
    ld de, $150e
    inc b
    inc c
    inc b
    dec c
    inc de
    daa
    rra
    jr @+$10

    inc d

jr_011_4cfb:
    ld a, [de]
    inc bc

jr_011_4cfd:
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    dec e
    ld bc, $1304
    inc de
    inc b
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    ld c, $03
    inc bc
    ld a, [de]
    ld [de], a
    rlca
    nop
    rrca
    inc b
    inc bc
    ld [bc], a
    rlca
    nop
    ld [$2011], sp
    rra
    inc de
    rlca
    ld de, $140e
    ld b, $07
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $11
    ld [$180c], sp
    dec e
    ld d, $08
    dec c
    inc bc
    ld c, $16
    ld a, [de]
    jr jr_011_4d51

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    dec e
    ld bc, $1100
    inc b
    dec bc
    jr @+$1c

    inc c

jr_011_4d51:
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    ld c, $14
    inc de
    dec e
    nop
    ld a, [de]
    ld de, $0e0e
    inc c
    ld a, [de]
    ld bc, $1804
    ld c, $0d
    inc bc
    jr nz, jr_011_4d87

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc de
    ld de, $0d14
    ld a, [bc]
    ld a, [de]
    dec b
    inc d
    dec bc
    dec bc
    dec e
    ld c, $05
    ld a, [de]
    add hl, bc
    inc d
    dec c
    ld a, [bc]
    jr nz, jr_011_4d9f

    ld bc, $1314
    ld a, [de]

jr_011_4d87:
    ld d, $00
    ld [$2513], sp
    ld a, [de]
    ld d, $07
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    dec e
    inc de
    rlca
    ld [$2812], sp
    rra
    jr jr_011_4daa

    inc d
    ld a, [de]
    inc bc

jr_011_4d9f:
    inc b
    ld [bc], a
    ld [$0403], sp
    ld a, [de]
    dec c
    ld c, $13
    ld a, [de]
    inc de

jr_011_4daa:
    ld c, $1d
    ld bc, $1114
    dec c
    ld a, [de]
    ld [$1a13], sp
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    jr @+$06

    inc de
    jr nz, jr_011_4ddd

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0011
    ld a, [bc]
    inc b
    dec e
    rrca
    inc b
    inc bc
    nop
    dec bc
    jr nz, jr_011_4df3

    jr jr_011_4de4

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de

jr_011_4ddd:
    ld a, [de]
    inc d
    ld [de], a
    inc b
    ld a, [de]
    ld d, $07

jr_011_4de4:
    nop
    inc de
    jr jr_011_4df6

    inc d
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    inc de

jr_011_4df3:
    nop
    ld a, [bc]
    inc b

jr_011_4df6:
    dec c
    jr nz, jr_011_4e18

    jr @+$10

    inc d
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    rlca
    ld c, $02
    ld c, $0b
    nop
    inc de
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    rrca
    ld c, $0f
    dec e

jr_011_4e18:
    ld [$1a13], sp
    ld [$1a0d], sp
    jr jr_011_4e2e

    inc d
    ld de, $0c1a
    ld c, $14
    inc de
    rlca
    jr nz, @+$1e

    inc d
    ld b, $07
    daa

jr_011_4e2e:
    ld a, [de]
    ld de, $0c14
    ld bc, $0b00
    dec bc
    ld [de], a
    daa
    ld a, [de]
    jr jr_011_4e49

    inc d
    rlca
    nop
    inc de
    inc b
    ld a, [de]
    ld de, $0c14
    ld bc, $0b00
    dec bc
    ld [de], a

jr_011_4e49:
    daa
    rra
    inc b
    ld de, $0e11
    ld de, $181f
    ld c, $14
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $161a
    rlca
    inc b
    ld de, $1d04
    jr jr_011_4e72

    inc d
    ld a, [de]
    ld [de], a
    rlca
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    dec bc
    inc b
    nop
    dec d
    inc b

jr_011_4e72:
    dec e
    inc de
    rlca
    ld [$2812], sp
    rra
    jr jr_011_4e89

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    dec bc
    inc b
    nop
    dec d
    inc b
    dec e

jr_011_4e89:
    ld d, $07
    nop
    inc de
    ld a, [de]
    jr jr_011_4e9e

    inc d
    ld a, [de]
    inc bc
    ld [$0d03], sp
    ld a, [hl+]
    inc de
    dec e
    inc de
    nop
    ld a, [bc]
    inc b
    daa

jr_011_4e9e:
    rra
    inc c
    nop
    jr jr_011_4ea4

    inc b

jr_011_4ea4:
    ld a, [de]
    jr jr_011_4eb5

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    dec e
    dec bc
    inc b
    nop
    dec d
    inc b
    ld a, [de]

jr_011_4eb5:
    ld [$1a13], sp
    rlca
    inc b
    ld de, $2004
    rra
    jr jr_011_4ece

    inc d
    ld a, [de]
    rrca
    inc d
    inc de
    ld a, [de]
    ld [$1a13], sp
    ld bc, $0200
    ld a, [bc]
    dec e

jr_011_4ece:
    ld d, $07
    inc b
    ld de, $1a04
    jr jr_011_4ee4

    inc d
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    ld [$2013], sp
    rra
    jr jr_011_4ef0

    inc d
    ld a, [de]

jr_011_4ee4:
    dec b
    inc b
    inc b
    dec bc
    dec e
    nop
    ld bc, $0e12
    dec bc
    inc d
    inc de

jr_011_4ef0:
    inc b
    dec bc
    jr jr_011_4f0e

    ld b, $11
    inc b
    nop
    inc de
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    ld de, $010e
    ld bc, $0d08
    ld b, $1a
    ld [$1d0d], sp
    jr jr_011_4f1c

jr_011_4f0e:
    inc d
    ld de, $071a
    inc b
    nop
    inc bc
    ld a, [de]
    ld [$1a12], sp
    ld b, $0e
    dec c

jr_011_4f1c:
    inc b
    daa
    rra
    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c
    dec bc
    jr jr_011_4f4d

    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld d, $0e
    ld de, $030b
    ld a, [de]
    ld bc, $0604
    ld [$120d], sp
    dec e
    ld [de], a
    rrca
    ld [$0d0d], sp
    ld [$060d], sp
    jr nz, @+$22

    jr nz, jr_011_4f60

    jr jr_011_4f56

    inc d
    ld a, [hl+]
    ld de, $0f04

jr_011_4f4d:
    nop
    ld [de], a
    ld [de], a
    ld [$060d], sp
    ld a, [de]
    ld c, $14

jr_011_4f56:
    inc de
    jr nz, jr_011_4f79

    jr nz, jr_011_4f7a

    ld [$1a13], sp
    nop
    rrca

jr_011_4f60:
    rrca
    inc b
    nop
    ld de, $1a12
    jr jr_011_4f76

    inc d
    ld de, $131d
    ld [$040c], sp
    ld a, [de]
    ld [$1a12], sp
    inc d
    rrca
    ld a, [de]

jr_011_4f76:
    nop
    dec c
    inc bc

jr_011_4f79:
    dec e

jr_011_4f7a:
    jr @+$10

    inc d
    ld de, $0b1a
    inc d
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    rlca
    nop
    ld [de], a
    ld a, [de]
    ld de, $0d14
    dec e
    ld c, $14
    inc de
    dec h
    ld a, [de]
    nop
    ld [bc], a
    inc b
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    ld de, $010e
    ld bc, $0d08
    ld b, $1a
    nop
    dec c
    inc bc
    dec e
    inc bc
    ld [$0e12], sp
    ld de, $0408
    dec c
    inc de
    nop
    inc de
    ld [$0d0e], sp
    dec e
    ld de, $0004
    ld [bc], a
    rlca
    inc b
    ld [de], a
    ld a, [de]
    ld [de], a
    inc d
    ld [bc], a
    rlca
    ld a, [de]
    nop
    dec e
    rrca
    inc b
    nop
    ld a, [bc]
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    jr jr_011_4fe0

    inc d
    ld de, $011d
    ld de, $0800
    dec c
    ld a, [de]
    ld [de], a
    ld [$0f0c], sp
    dec bc

jr_011_4fe0:
    jr jr_011_4fff

    ld de, $0504
    inc d
    ld [de], a
    inc b
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    ld d, $0e
    ld de, $1d0a
    nop
    dec c
    jr jr_011_5002

    ld c, $11
    inc b
    jr nz, @+$1e

    jr jr_011_500b

    inc d
    ld a, [de]

jr_011_4fff:
    ld bc, $000b

jr_011_5002:
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld c, $14
    inc de
    dec e
    dec c
    inc b

jr_011_500b:
    dec d
    inc b
    ld de, $131a
    ld c, $1a
    inc de
    ld de, $0b14
    jr jr_011_5035

    nop
    ld d, $00
    ld a, [bc]
    inc b
    dec c
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $0c
    nop
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [bc], a
    nop
    inc c

jr_011_5035:
    inc b
    dec e
    dec b
    ld de, $0c0e
    ld a, [de]
    ld d, $07
    nop
    inc de
    inc b
    dec d
    inc b
    ld de, $021d
    nop
    inc d
    ld [de], a
    inc b
    inc bc
    ld a, [de]
    jr jr_011_505c

    inc d
    ld de, $0c1a
    inc b
    inc c
    ld c, $11
    jr jr_011_5063

    ld c, $12
    ld [de], a
    daa

jr_011_505c:
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de

jr_011_5063:
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc d
    inc de
    ld [bc], a
    rlca
    jr nz, @+$21

    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec c
    ld a, [de]
    nop
    dec c
    ld b, $11
    jr jr_011_5099

    dec b
    ld de, $160e
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld de, $1508
    inc b
    ld de, $121d
    nop
    jr @+$14

    dec h
    ld a, [de]
    ld h, $07
    inc b
    jr @+$1c

    rrca

jr_011_5099:
    nop
    dec bc
    daa
    ld a, [de]
    jr jr_011_509f

jr_011_509f:
    ld [de], a
    inc de
    ld [$0b0b], sp
    ld a, [de]
    ld c, $16
    inc b
    ld a, [de]
    inc c
    inc b
    daa
    inc e
    nop
    dec c
    inc bc
    ld a, [de]
    jr jr_011_50b3

jr_011_50b3:
    ld a, [de]
    ld bc, $1304
    inc de
    inc b
    ld de, $0f1a
    nop
    jr @+$1f

    inc d
    rrca
    ld a, [de]
    ld c, $11
    ld a, [de]
    ld [$0b2a], sp
    dec bc
    ld a, [de]
    ld [bc], a
    nop
    dec bc
    dec bc
    ld a, [de]
    inc bc
    nop
    ld [bc], a
    ld c, $0f
    ld [de], a
    daa
    ld h, $1f
    ld h, $07
    inc b
    jr jr_011_50f7

    ld bc, $0114
    dec h
    ld a, [de]
    jr jr_011_50e4

jr_011_50e4:
    dec e
    rlca
    nop
    dec d
    inc b
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    rrca
    nop
    ld [$1a03], sp
    inc c
    inc b
    dec e
    jr jr_011_50fb

jr_011_50f7:
    inc de
    daa
    ld h, $1a

jr_011_50fb:
    jr jr_011_5101

    dec bc
    dec bc
    ld [de], a
    ld a, [de]

jr_011_5101:
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    nop
    ld bc, $1801
    jr nz, jr_011_5128

    ld h, $18
    nop
    ld a, [de]
    ld bc, $1304
    inc de
    inc b
    ld de, $0f1a
    nop
    jr jr_011_5135

    inc c
    inc b
    dec e
    ld c, $11
    ld a, [de]
    inc b
    dec bc
    ld [de], a
    inc b
    daa
    ld h, $1f

jr_011_5128:
    nop
    ld a, [de]
    ld [bc], a
    ld c, $08
    dec c
    ld a, [de]
    ld [$1a12], sp
    dec bc
    inc b
    dec b

jr_011_5135:
    inc de
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    dec bc
    ld c, $13
    ld a, [de]
    inc c
    nop
    ld [bc], a
    rlca
    ld [$040d], sp
    ld a, [hl+]
    ld [de], a
    inc bc
    ld [$0712], sp
    daa
    rra
    jr @+$10

    inc d
    ld a, [de]
    ld b, $0b
    nop
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    ld c, $15
    inc b
    ld de, $001d
    inc de
    ld a, [de]
    jr jr_011_5175

    inc d
    ld de, $0412
    dec bc
    dec b
    dec h
    dec e
    nop
    inc c
    nop
    add hl, de
    inc b
    inc bc

jr_011_5175:
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    jr jr_011_518b

    inc d
    ld a, [hl+]
    dec d
    inc b
    inc c
    nop
    inc bc
    inc b
    ld a, [de]
    ld [$1a13], sp
    inc de
    rlca

jr_011_518b:
    ld [$1a12], sp
    dec b
    nop
    ld de, $1f27
    inc de
    rlca
    inc b
    ld de, $1a04
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    inc de
    ld c, $1a
    ld bc, $1a04
    nop
    ld a, [de]
    rrca
    rlca
    ld c, $0d
    inc b
    dec e
    dec c
    inc d
    inc c
    ld bc, $1104
    jr nz, jr_011_51da

    inc de
    ld c, $0e
    ld a, [de]
    ld bc, $0300
    ld a, [de]
    nop
    ld [bc], a
    inc b
    daa
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0604
    ld [$0d0d], sp
    ld [$060d], sp

jr_011_51da:
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld c, $03
    inc bc
    ld [de], a
    ld a, [de]
    ld d, $04
    ld de, $1a04
    ld [de], a
    inc de
    nop
    ld [bc], a
    ld a, [bc]
    inc b
    inc bc
    dec e
    nop
    ld b, $00
    ld [$120d], sp
    inc de
    ld a, [de]
    jr @+$10

    inc d
    daa
    inc e
    ld [$1a13], sp
    ld [de], a
    inc b
    inc b
    inc c
    inc b
    inc bc
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_011_5227

    nop
    dec e
    inc c
    nop
    inc de
    inc de
    inc b
    ld de, $0e1a
    dec b
    ld a, [de]
    inc de
    ld [$040c], sp
    dec e
    inc d
    dec c
    inc de
    ld [$1a0b], sp
    jr jr_011_5234

    inc d

jr_011_5227:
    ld a, [de]
    ld de, $0004
    ld [bc], a
    rlca
    inc b
    inc bc
    dec e
    inc de
    rlca
    inc b
    ld a, [de]

jr_011_5234:
    inc b
    dec c
    inc bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    jr @+$10

    inc d
    ld de, $001d
    inc bc
    dec d
    inc b
    dec c
    inc de
    inc d
    ld de, $1204
    jr nz, @+$1e

    ld [de], a
    ld c, $11
    ld de, $1a18
    rrca
    nop
    dec bc
    dec h
    ld a, [de]
    jr jr_011_5267

    inc d
    ld a, [hl+]
    ld de, $1d04
    rlca
    ld [$1312], sp
    ld c, $11
    jr jr_011_528d

    rra

jr_011_5267:
    ld [$1a13], sp
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld bc, $1d04
    inc c
    ld c, $15
    inc b
    inc bc
    ld a, [de]
    ld [$1a05], sp
    ld [$2a13], sp
    ld [de], a
    dec e
    dec c
    ld c, $13
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    inc b
    inc bc
    daa
    rra

jr_011_528d:
    nop
    rlca
    rlca
    dec h
    ld a, [de]
    ld [$1a13], sp
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    dec c
    inc b
    inc b
    inc bc
    ld [de], a
    nop
    ld a, [de]
    ld [bc], a
    ld c, $08
    dec c
    daa
    rra
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    dec c
    ld c, $13
    rlca
    ld [$060d], sp
    dec e
    rlca
    inc b
    ld de, $1a04
    inc b
    rla
    ld [bc], a
    inc b
    rrca
    inc de
    ld a, [de]
    dec b
    ld c, $11
    dec e
    ld [bc], a
    ld de, $0200
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]
    ld d, $00
    dec bc
    dec bc
    ld [de], a
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld de, $1a04
    nop
    ld de, $1a04
    ld [bc], a
    ld de, $0200
    ld a, [bc]
    ld [de], a
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $00
    dec bc
    dec bc
    jr nz, @+$21

    ld d, $07
    ld c, $0e
    ld [de], a
    rlca
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    dec bc
    inc b
    dec d
    nop
    inc de
    ld c, $11
    dec e
    inc bc
    ld c, $0e
    ld de, $1a12
    ld [de], a
    dec bc
    ld [$0403], sp
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    jr nz, jr_011_533a

    ld d, $07
    ld c, $0e
    ld [de], a
    rlca
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $1a12
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]

jr_011_533a:
    ld bc, $0d00
    ld b, $20
    rra
    jr jr_011_5350

    inc d
    ld a, [hl+]
    inc bc
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    inc b

jr_011_5350:
    dec bc
    dec bc
    rlca
    ld [$1a0c], sp
    ld d, $07
    inc b
    ld de, $1a04
    inc de
    ld c, $1a
    ld b, $0e
    dec h
    dec e
    ld bc, $1314
    ld a, [de]
    jr jr_011_5377

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    inc de
    rlca

jr_011_5377:
    inc b
    ld a, [de]
    nop
    inc bc
    inc bc
    ld de, $1204
    ld [de], a
    daa
    rra
    ld bc, $1204
    ld [$0403], sp
    ld [de], a
    ld a, [de]
    ld [$1a13], sp
    ld bc, $0804
    dec c
    ld b, $1d
    ld bc, $0e11
    ld a, [bc]
    inc b
    dec c
    dec h
    ld a, [de]
    jr jr_011_53ab

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b
    dec e
    dec c
    ld c, $13
    rlca
    ld [$060d], sp
    ld a, [de]

jr_011_53ab:
    inc b
    dec bc
    ld [de], a
    inc b
    dec e
    inc d
    dec c
    inc d
    ld [de], a
    inc d
    nop
    dec bc
    jr nz, jr_011_53d8

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0b08
    dec bc
    ld a, [de]
    ld d, $0e
    dec c
    ld a, [hl+]
    inc de
    dec e
    ld b, $0e
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    dec bc
    ld c, $13
    daa
    rra

jr_011_53d8:
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
    nop
    jr jr_011_53f9

    dec h
    dec e
    ld h, $03
    ld c, $16
    dec c
    ld a, [de]
    ld c, $0d
    ld a, [de]
    jr jr_011_53f8

    ld de, $0b1a
    inc d

jr_011_53f8:
    ld [bc], a

jr_011_53f9:
    ld a, [bc]
    dec h
    rrca
    nop
    dec bc
    jr z, jr_011_541c

    ld c, $0a
    nop
    jr jr_011_542a

    ld a, [de]
    ld d, $04
    dec bc
    dec bc
    ld a, [de]
    jr jr_011_541b

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    rrca
    nop
    jr jr_011_5430

    inc c
    inc b
    ld a, [de]
    dec c
    inc b

jr_011_541b:
    rla

jr_011_541c:
    inc de
    ld a, [de]
    inc de
    ld [$040c], sp
    jr nz, jr_011_544a

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a

jr_011_542a:
    nop
    ld bc, $1801
    ld a, [de]
    ld [de], a

jr_011_5430:
    nop
    jr @+$14

    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    rlca
    ld [$130d], sp
    ld a, [de]
    ld c, $05
    dec e
    ld [bc], a
    ld c, $0c
    rrca
    nop
    ld [de], a
    ld [de], a

jr_011_544a:
    ld [$0d0e], sp
    dec h
    ld a, [de]
    ld h, $16
    inc b
    dec bc
    dec bc
    dec e
    ld d, $04
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    nop
    dec bc
    dec bc
    ld a, [de]
    ld b, $0e
    inc de
    dec e
    inc de
    ld de, $140e
    ld bc, $040b
    ld [de], a
    ld a, [de]
    dec c
    ld c, $16
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld d, $04
    daa
    inc e
    jr jr_011_5489

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    rrca
    nop
    jr @+$1c

    inc c
    inc b
    ld a, [de]
    inc de

jr_011_5489:
    rlca
    inc b
    dec c
    inc b
    rla
    inc de
    ld a, [de]
    inc de
    ld [$040c], sp
    jr nz, jr_011_54bc

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $1801
    ld a, [de]
    inc c
    inc d
    inc de
    inc de
    inc b
    ld de, $1d12
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    rlca
    ld [$130d], sp
    ld a, [de]
    ld c, $05
    dec e
    nop
    dec c
    ld b, $04

jr_011_54bc:
    ld de, $1a25
    ld h, $07
    inc b
    jr jr_011_54e9

    ld a, [de]
    rrca
    nop
    dec bc
    daa
    inc e
    jr jr_011_54cc

jr_011_54cc:
    ld a, [de]
    ld b, $0e
    dec c
    dec c
    nop
    ld a, [de]
    rrca
    nop
    jr jr_011_54f1

    inc c
    inc b
    dec e
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    ld c, $0d
    inc b
    jr jr_011_5503

jr_011_54e9:
    ld [$011d], sp
    ld c, $11
    ld de, $160e

jr_011_54f1:
    inc b
    inc bc
    ld a, [de]
    jr jr_011_54f6

jr_011_54f6:
    jr z, jr_011_551f

    ld h, $1f
    ld h, $07
    inc b
    jr jr_011_5524

    ld a, [de]
    inc c
    nop
    ld [bc], a

jr_011_5503:
    ld a, [bc]
    daa
    ld h, $1a
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    nop
    ld bc, $1801
    ld a, [de]
    nop
    dec c
    ld b, $11
    ld [$180b], sp
    dec e
    ld [de], a
    nop
    jr @+$14

    dec h
    inc e

jr_011_551f:
    ld h, $08
    ld a, [hl+]
    inc c
    ld a, [de]

jr_011_5524:
    dec b
    ld de, $1204
    rlca
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    ld c, $05
    dec e
    ld [bc], a
    rlca
    nop
    ld de, $1308
    jr jr_011_555e

    ld a, [de]
    dec c
    ld c, $16
    ld a, [de]
    rrca
    nop
    jr jr_011_555f

    inc c
    inc b
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld de, $0308
    inc b
    dec e
    ld c, $11
    ld a, [de]
    inc b
    dec bc
    ld [de], a
    inc b
    daa
    ld h, $1f
    inc de

jr_011_555e:
    rlca

jr_011_555f:
    inc b
    ld de, $1a04
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    inc de
    ld c, $1a
    ld bc, $1a04
    nop
    dec c
    jr jr_011_558c

    rlca
    ld [$060d], sp
    dec e
    inc d
    dec c
    inc d
    ld [de], a
    inc d
    nop
    dec bc
    jr nz, jr_011_55a6

    ld [$1a13], sp
    ld [de], a
    inc b

jr_011_558c:
    inc b
    inc c
    ld [de], a
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc de
    ld c, $0e
    dec e
    inc c
    nop
    dec c
    jr jr_011_55b8

    inc de
    rlca
    ld [$060d], sp
    ld [de], a
    ld a, [de]
    rlca

jr_011_55a6:
    nop
    dec d
    inc b
    dec e
    ld bc, $0404
    dec c
    ld a, [de]
    dec bc
    inc b
    dec b
    inc de
    ld a, [de]
    ld c, $0f
    inc b
    dec c

jr_011_55b8:
    jr nz, jr_011_55d9

    inc de
    rlca
    inc b
    ld de, $1a04
    nop
    ld de, $1a04
    dec c
    ld c, $1a
    inc c
    ld c, $11
    inc b
    dec e
    ld [bc], a
    ld c, $08
    dec c
    ld [de], a
    jr nz, jr_011_55f2

    jr jr_011_55e3

    inc d
    ld a, [de]
    rlca
    nop

jr_011_55d9:
    dec d
    inc b
    ld a, [de]
    inc de
    ld c, $0e
    ld a, [de]
    inc c
    nop
    dec c

jr_011_55e3:
    jr jr_011_5602

    inc de
    rlca
    ld [$060d], sp
    ld [de], a
    jr nz, jr_011_5609

    jr jr_011_55fd

    inc d
    ld a, [de]
    inc c

jr_011_55f2:
    nop
    jr jr_011_560f

    rlca
    nop
    dec d
    inc b
    ld a, [de]
    inc de
    ld c, $1d

jr_011_55fd:
    dec bc
    inc b
    nop
    dec d
    inc b

jr_011_5602:
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca

jr_011_5609:
    ld [$060d], sp
    daa
    rra
    inc b

jr_011_560f:
    ld de, $0e11
    ld de, $141f
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
    jr jr_011_5647

    ld a, [de]
    jr jr_011_5633

    inc d
    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    inc d
    rrca
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    ld c, $12

jr_011_5633:
    inc b
    ld de, $1f20
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $00
    ld [de], a
    inc de
    inc b
    ld bc, $1200
    ld a, [bc]
    inc b
    inc de
    dec e

jr_011_5647:
    ld [$1a12], sp
    dec b
    inc d
    dec bc
    dec bc
    jr nz, @+$1e

    ld [$1a13], sp
    ld d, $0e
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    rlca
    ld c, $0b
    inc bc
    dec e
    nop
    dec c
    jr jr_011_566e

    ld c, $11
    inc b
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld de, $1a04
    nop

jr_011_566e:
    ld de, $1a04
    dec c
    ld c, $1d
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld [de], a
    jr nz, jr_011_569c

    inc de
    rlca
    inc b
    ld de, $1a04
    nop
    ld de, $1a04
    dec c
    ld c, $1d
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld [de], a
    jr nz, jr_011_56b2

    inc de
    nop
    dec bc
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    inc de

jr_011_569c:
    ld c, $1d
    jr @+$10

    inc d
    ld de, $0412
    dec bc
    dec b
    ld a, [de]
    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1d04
    dec b
    inc d

jr_011_56b2:
    dec c
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    ld [$1a13], sp
    ld [$0d12], sp
    ld a, [hl+]
    inc de
    dec e
    dec d
    inc b
    ld de, $1a18
    rlca
    inc b
    dec bc
    rrca
    dec b
    inc d
    dec bc
    daa
    rra
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    rrca
    nop
    inc de
    ld a, [de]
    jr @+$10

    inc d
    ld de, $0412
    dec bc
    dec b
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    jr jr_011_56f3

    inc de
    jr nz, @+$21

    dec c

jr_011_56f3:
    ld c, $13
    rlca
    ld [$060d], sp
    ld a, [de]
    rlca
    nop
    rrca
    rrca
    inc b
    dec c
    ld [de], a
    jr nz, jr_011_571f

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    rrca
    ld [de], a
    inc d
    dec bc
    inc b
    ld a, [de]
    ld [$1d12], sp
    inc b
    inc c
    rrca
    inc de
    jr jr_011_5738

    rra
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]

jr_011_571f:
    inc b
    dec d
    inc b
    dec c
    ld a, [de]
    ld bc, $130e
    rlca
    inc b
    ld de, $131d
    ld c, $1a
    inc de
    ld de, $1a18
    ld [$2513], sp
    ld a, [de]
    nop
    ld [bc], a

jr_011_5738:
    inc b
    jr nz, @+$21

    rlca
    ld c, $0b
    inc bc
    ld a, [de]
    ld c, $0d
    daa
    inc e
    ld [$1a05], sp
    jr jr_011_5757

    inc d
    ld a, [de]
    inc bc
    ld c, $1a
    inc de
    rlca
    nop
    inc de
    dec h
    dec e
    ld [$1a13], sp

jr_011_5757:
    inc c
    nop
    jr @+$1c

    ld [bc], a
    nop
    inc d
    ld [de], a
    inc b
    ld a, [de]
    jr jr_011_5771

    inc d
    dec e
    inc de
    ld de, $140e
    ld bc, $040b
    ld a, [de]
    dec bc
    nop
    inc de
    inc b

jr_011_5771:
    ld de, $1f20
    jr jr_011_5784

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld c, $0d
    ld a, [de]
    inc de
    ld de, $0008
    dec bc
    dec e

jr_011_5784:
    dec b
    ld c, $11
    ld a, [de]
    nop
    inc de
    inc de
    inc b
    inc c
    rrca
    inc de
    inc b
    inc bc
    dec e
    inc c
    inc d
    ld de, $0403
    ld de, $1c20
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld de, $120e
    inc b
    ld [bc], a
    inc d
    inc de
    ld [$0d0e], sp
    dec e
    rlca
    nop
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    ld c, $0b
    ld [$1a03], sp
    ld [bc], a
    nop
    ld [de], a
    inc b
    dec e
    nop
    ld b, $00
    ld [$120d], sp
    inc de
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    inc c
    nop
    dec c
    jr jr_011_57eb

    inc b
    jr jr_011_57d8

    ld d, $08
    inc de
    dec c

jr_011_57d8:
    inc b
    ld [de], a
    ld [de], a
    inc b
    ld [de], a
    jr nz, jr_011_57fb

    inc b
    dec d
    inc b
    dec c
    ld a, [de]
    jr jr_011_57f4

    inc d
    ld de, $0b1a
    nop

jr_011_57eb:
    ld d, $18
    inc b
    ld de, $071d
    nop
    ld [de], a
    ld a, [de]

jr_011_57f4:
    ld b, $08
    dec d
    inc b
    dec c
    ld a, [de]
    inc d

jr_011_57fb:
    rrca
    ld a, [de]
    ld c, $0d
    dec e
    jr jr_011_5810

    inc d
    ld de, $031a
    inc b
    dec b
    inc b
    dec c
    ld [de], a
    inc b
    ld a, [de]
    nop
    dec c
    inc bc

jr_011_5810:
    dec e
    ld d, $00
    dec c
    inc de
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    nop
    dec e
    inc bc
    inc b
    nop
    dec bc
    daa
    ld a, [de]
    ld [$1a13], sp
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    dec e
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    ld b, $0e
    ld c, $03
    ld a, [de]
    nop
    inc de
    ld a, [de]
    nop
    dec bc
    dec bc
    daa
    rra
    ld [$1a13], sp
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    dec e
    inc de
    ld c, $0e
    ld a, [de]
    dec bc
    ld c, $0d
    ld b, $1a
    dec b
    ld c, $11
    ld a, [de]
    nop
    dec e
    add hl, bc
    inc d
    ld de, $1a18
    ld c, $05
    ld a, [de]
    jr jr_011_587b

    inc d
    ld de, $0f1a
    inc b
    inc b
    ld de, $1312
    ld c, $1a
    ld [bc], a
    ld c, $0d

jr_011_587b:
    dec d
    ld [$1302], sp
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld c, $05
    dec e
    dec b
    ld [$1211], sp
    inc de
    ld a, [de]
    inc bc
    inc b
    ld b, $11
    inc b
    inc b
    dec e
    inc c
    inc d
    ld de, $0403
    ld de, $001a
    dec c
    inc bc
    dec e
    ld [de], a
    inc b
    dec c
    inc de
    inc b
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    inc de
    ld c, $1d
    inc bc
    inc b
    nop
    inc de
    rlca
    jr nz, jr_011_58d2

    ld [$1a13], sp
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1a12
    jr jr_011_58d1

    inc d
    ld de, $021d
    nop
    ld [de], a
    inc b
    ld bc, $0e0e
    ld a, [bc]
    ld a, [de]
    ld d, $08

jr_011_58d1:
    dec bc

jr_011_58d2:
    dec bc
    ld a, [de]
    ld bc, $1d04
    dec b
    ld c, $11
    inc b
    dec d
    inc b
    ld de, $021a
    dec bc
    ld c, $12
    inc b
    inc bc
    dec h
    dec e
    nop
    ld [bc], a
    inc b
    daa
    rra
    rra
    ld [bc], a
    ld c, $08
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    ld [$0706], sp
    inc de
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, $14
    inc c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rlca
    nop
    dec c
    ld a, [bc]
    jr jr_011_5942

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc d
    dec c
    ld b, $0b
    nop
    ld [de], a
    ld [de], a
    inc b
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, [bc]
    inc b
    jr jr_011_5972

    rra

jr_011_5942:
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    nop
    ld de, $1f03
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, c
    ld [hl-], a
    jr nc, jr_011_5982

    ld bc, $0b08
    dec bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b

jr_011_5972:
    inc de
    ld sp, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra

jr_011_5982:
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    nop
    rrca
    ld [de], a
    inc d
    dec bc
    inc b
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, [bc]
    inc b
    jr @+$34

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    inc b
    dec c
    ld [bc], a
    ld [$1f0b], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, [bc]
    inc b
    jr jr_011_59f4

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    ld c, $13
    inc b
    ld sp, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, [bc]
    inc b
    jr jr_011_5a15

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b08
    dec bc
    rra
    rra
    rra

jr_011_59f4:
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    ld c, $13
    inc b
    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    nop
    rrca
    rra
    rra
    rra
    rra
    rra

jr_011_5a15:
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    dec c
    nop
    rrca
    ld [de], a
    rlca
    ld c, $13
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld c, $12
    inc c
    inc b
    inc de
    ld [$1f02], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, [bc]
    inc b
    jr jr_011_5a76

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0e0e
    ld a, [bc]
    inc c
    nop
    ld de, $1f0a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec b
    ld [$040b], sp
    ld sp, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec b
    ld [$040b], sp
    ld [hl-], a
    rra
    rra
    rra
    rra

jr_011_5a76:
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec b
    ld [$040b], sp
    inc sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec b
    ld [$040b], sp
    inc [hl]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec b
    ld [$040b], sp
    dec [hl]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec b
    ld [$040b], sp
    ld [hl], $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec b
    ld [$040b], sp
    scf
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $1f31
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc d
    ld b, $00
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec b
    dec bc
    ld c, $14
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    ld [$1212], sp
    inc d
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $1f32
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    nop
    dec c
    inc bc
    jr jr_011_5b42

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    inc b
    inc c
    ld c, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b00
    dec bc
    ld a, [de]

jr_011_5b42:
    rrca
    inc b
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, $0b
    nop
    ld [de], a
    ld [de], a
    inc b
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc b
    dec bc
    inc de
    add hl, de
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    inc b
    inc bc
    ld [de], a
    ld sp, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    inc b
    inc bc
    ld [de], a
    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld [$1304], sp
    rlca
    nop
    dec c
    ld c, $0b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    inc b
    ld d, $12
    rrca
    nop
    rrca
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    ld b, $00
    ld b, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    nop
    ld b, $00
    add hl, de
    ld [$040d], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rlca
    ld c, $13
    ld c, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc b
    nop
    ld de, $0811
    dec c
    ld b, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    ld c, $13
    inc b
    inc sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    ld c, $13
    inc b
    inc [hl]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    inc b
    inc bc
    ld [de], a
    inc [hl]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    inc b
    inc bc
    ld [de], a
    dec [hl]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    inc b
    inc bc
    ld [de], a
    ld [hl], $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    inc b
    inc bc
    ld [de], a
    inc sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    nop
    inc d
    ld [de], a
    nop
    ld b, $04
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld [$0712], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec b
    ld de, $0818
    dec c
    ld b, $1a
    rrca
    nop
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    ld [$0213], sp
    rlca
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld c, $00
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld d, $00
    dec bc
    dec bc
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    jr nz, jr_011_5d42

    jr c, jr_011_5d30

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec b
    ld c, $0b
    inc bc
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $170e

jr_011_5d30:
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc b
    dec c
    dec d
    inc b
    dec bc

jr_011_5d42:
    ld c, $0f
    inc b
    ld sp, $1f1f
    rra
    rra
    rra
    rra
    rra
    rlca
    nop
    dec c
    inc bc
    ld bc, $0600
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rlca
    nop
    dec c
    inc bc
    ld b, $14
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld [$1100], sp
    jr jr_011_5d92

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    nop
    inc c
    inc c
    ld c, $02
    nop
    ld [de], a
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc b
    dec c
    dec d
    inc b
    dec bc

jr_011_5d92:
    ld c, $0f
    inc b
    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $160e
    dec bc
    ld sp, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $160e
    dec bc
    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc b
    dec c
    dec d
    inc b
    dec bc
    ld c, $0f
    inc b
    inc sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    nop
    dec c
    inc bc
    jr @+$03

    ld c, $17
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    nop
    ld [de], a
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $160e
    dec bc
    inc sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    inc d
    ld b, $04
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $0b14
    ld bc, $1f1f
    rra
    rra
    rra
    rra
    ld de, $1204
    inc de
    ld de, $0e0e
    inc c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    ld [$1111], sp
    ld c, $11
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $1200
    ld [$1f0d], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    inc d
    inc bc
    inc bc
    dec bc
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld d, $08
    dec c
    inc bc
    ld c, $16
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld de, $0200
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld d, $04
    ld bc, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $1100
    ld de, $0b04
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    rrca
    ld [$0e06], sp
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $130e
    inc de
    dec bc
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld de, $140e
    dec bc
    inc b
    inc de
    inc de
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    dec bc
    ld c, $13
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $1314
    inc de
    ld c, $0d
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    rlca
    nop
    ld [$1f11], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld de, $0204
    inc b
    ld [$0415], sp
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rlca
    ld c, $0d
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    nop
    inc c
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    jr @+$11

    inc b
    ld d, $11
    ld [$0413], sp
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rrca
    ld c, $12
    inc de
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    nop
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec c
    inc b
    ld d, $12
    ld a, [de]
    ld bc, $180e
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    ld [$0d06], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    nop
    inc c
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    inc d
    ld b, $06
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    rlca
    inc d
    ld b, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    ld de, $0d14
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc d
    ld b, $00
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld de, $0d14
    ld a, [bc]
    nop
    ld de, $1f03
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, $00
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0011
    ld a, [bc]
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    dec bc
    inc d
    inc de
    ld [bc], a
    rlca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld d, $07
    inc b
    inc b
    dec bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [$0d06], sp
    ld [$0813], sp
    ld c, $0d
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rlca
    ld c, $0e
    inc bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld d, $0e
    inc c
    nop
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    dec bc
    inc b
    ld de, $1f0a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    ld de, $0208
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld de, $1508
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    inc b
    inc de
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec b
    nop
    ld de, $1204
    dec bc
    ld c, $13
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld de, $0300
    ld [$1f0e], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    nop
    rrca
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld [$0213], sp
    rlca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    ld [$0706], sp
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    ld c, $05
    nop
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec b
    ld [$0411], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    rlca
    inc b
    dec bc
    dec b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    ld [$1302], sp
    inc d
    ld de, $1f04
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    nop
    ld bc, $040b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0304
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $0d14
    ld b, $00
    dec bc
    ld c, $16
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld c, $05
    dec b
    ld [$0402], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc b
    jr @+$06

    ld [bc], a
    rlca
    nop
    ld de, $1f13
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    rlca
    inc b
    dec bc
    dec b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    nop
    dec c
    ld [de], a
    ld [$0d0e], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, [bc]
    dec c
    ld c, $02
    ld a, [bc]
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $1314
    dec bc
    inc b
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, $00
    inc de
    ld c, $11
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld de, $0200
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld d, $04
    ld [de], a
    inc de
    inc b
    dec c
    inc bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, [bc]
    inc b
    inc bc
    add hl, de
    ld [$1f04], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    rlca
    inc b
    ld de, $000c
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    inc b
    ld c, $11
    ld [$1f00], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    nop
    inc d
    ld bc, $1114
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld c, $0e
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld bc, $140b
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    jr jr_011_6413

    dec bc
    dec bc
    ld c, $16

jr_011_6413:
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $1f1f
    rra
    rra
    rra
    rra
    rrca
    inc b
    dec c
    inc de
    ld c, $13
    rlca
    nop
    dec bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    inc b
    inc bc
    ld de, $1904
    ld [$040d], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    ld [$1304], sp
    rlca
    nop
    dec c
    ld c, $0b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld c, $05
    ld de, $0404
    nop
    dec bc
    dec bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    rlca
    inc b
    inc c
    ld c, $0f
    nop
    rrca
    nop
    ld [$1f0d], sp
    rra
    rra
    rra
    rra
    ld bc, $1208
    ld c, $03
    ld [$0c14], sp
    ld [$0813], sp
    ld [de], a
    rra
    rra
    rra
    rra
    ld bc, $0208
    nop
    ld de, $0e01
    dec c
    nop
    inc de
    inc b
    rra
    rra
    rra
    rra
    rra
    inc c
    nop
    dec c
    rlca
    ld c, $0b
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld c, $0f
    inc b
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, $0e
    ld c, $03
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    nop
    inc bc
    inc bc
    ld de, $1204
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld de, $0200
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, c
    ld [hl-], a
    jr nc, jr_011_6522

    ld bc, $0b08
    dec bc
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [hl-], a
    dec [hl]
    ld hl, $0402
    dec c
    inc de
    ld [de], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    ld c, $02
    ld a, [bc]
    inc b

jr_011_6522:
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    ld c, $02
    ld a, [bc]
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec bc
    ld [$1f03], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    db $10
    inc d
    nop
    ld de, $0413
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc d
    ld [$1f13], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld d, $00
    dec bc
    dec bc
    ld [de], a
    nop
    dec b
    inc b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    nop
    ld [de], a
    rlca
    ld bc, $0311
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    nop
    ld bc, $0d08
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    nop
    ld bc, $0d08
    inc b
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc c
    nop
    ld [$1a0b], sp
    ld bc, $170e
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    nop
    ld bc, $040b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    nop
    ld bc, $040b
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc b
    nop
    inc de
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    ld de, $1200
    rlca
    ld a, [de]
    ld [bc], a
    nop
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    ld de, $1200
    rlca
    ld a, [de]
    ld [bc], a
    nop
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    ld de, $1200
    rlca
    ld a, [de]
    ld [bc], a
    nop
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc de
    ld de, $1200
    rlca
    ld a, [de]
    ld [bc], a
    nop
    dec c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc b
    ld d, $04
    ld de, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
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
