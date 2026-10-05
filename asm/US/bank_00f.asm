; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    add b
    ld b, b
    add hl, sp
    ld b, c
    and d
    ld b, h
    call z, $ab44
    ld b, l
    jp z, Jump_00f_6645

    ld b, [hl]
    jp z, Jump_000_0546

    ld b, a
    or e
    ld b, a
    ld [bc], a
    ld c, b
    ld c, c
    ld c, b
    push hl
    ld c, b
    ld h, l
    ld c, c
    adc l
    ld c, c
    ld b, $4a
    ld d, e
    ld c, d
    ld l, h
    ld c, d
    cp d
    ld c, d
    ld a, [bc]
    ld c, e
    ld [hl], $4b
    or d
    ld c, e
    db $e4
    ld c, h
    rra
    ld c, [hl]
    and d
    ld c, [hl]
    and e
    ld c, a
    ret nz

    ld d, c
    inc sp
    ld d, d
    ld l, l
    ld d, d
    rst RST_00
    ld d, d
    inc a
    ld d, h
    ld [hl], b
    ld d, h
    adc l
    ld d, h
    reti


    ld d, h
    add hl, hl
    ld d, l
    ld a, l
    ld d, l
    and e
    ld d, l
    ld l, e
    ld d, [hl]
    push bc
    ld d, [hl]
    ld l, $57
    ld c, b
    ld d, a
    or b
    ld d, a
    or $57
    ld l, d
    ld e, b
    ld a, e
    ld e, c
    xor l
    ld e, c
    jr nz, jr_00f_40b8

    ld e, d
    ld e, d
    ld l, h
    ld e, d
    or c
    ld e, d
    db $eb
    ld e, d
    cp b
    ld e, e
    dec d
    ld e, h
    dec sp
    ld e, h
    adc [hl]
    ld e, h
    xor h
    ld e, h
    inc b
    ld e, l
    ld c, c
    ld e, l
    ld l, l
    ld e, l
    adc l
    ld e, l
    rst RST_08
    ld e, [hl]
    rrca
    ld e, a
    scf
    ld e, a
    ld h, h
    ld e, a
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    nop
    inc de
    ld [$0d04], sp
    inc de
    ld a, [hl+]
    ld [de], a
    dec e
    inc c
    inc b
    inc bc
    ld [$0002], sp
    dec bc
    ld a, [de]
    ld de, $0204
    ld c, $11
    inc bc
    inc h
    inc e
    ld h, $12
    jr jr_00f_40b1

    rrca
    inc de
    ld c, $0c
    ld [de], a
    inc h
    dec e
    dec b
    nop
    ld [$130d], sp

jr_00f_40b1:
    ld [$060d], sp
    jr nz, jr_00f_40d0

    ld [de], a
    inc de

jr_00f_40b8:
    ld c, $0c
    nop
    ld [bc], a
    rlca
    dec e
    rrca
    nop
    ld [$120d], sp
    jr nz, jr_00f_40df

    dec b
    inc b
    dec d
    inc b
    ld de, $1208
    rlca
    jr nz, @+$1f

    dec d

jr_00f_40d0:
    ld c, $0c
    ld [$0813], sp
    dec c
    ld b, $20
    dec e
    ld hl, $1812
    inc c
    rrca
    inc de

jr_00f_40df:
    ld c, $0c
    ld [de], a
    ld a, [de]
    ld c, $05
    dec e
    rrca
    inc b
    ld de, $1308
    ld c, $0d
    ld [$0813], sp
    ld [de], a
    ld hl, $071c
    ld [$0706], sp
    ld a, [de]
    dec b
    inc b
    dec d
    inc b
    ld de, $1d20
    ld [bc], a
    ld c, $14
    ld b, $07
    ld [$060d], sp
    jr nz, jr_00f_4123

    dec c
    ld c, $1d
    nop
    rrca
    rrca
    inc b
    inc de
    ld [$0413], sp
    jr nz, @+$1f

    rlca
    inc b
    nop
    inc bc
    nop
    ld [bc], a
    rlca
    inc b
    jr nz, @+$1f

    ld hl, $1812

jr_00f_4123:
    inc c
    rrca
    inc de
    ld c, $0c
    ld [de], a
    ld a, [de]
    ld c, $05
    dec e
    rrca
    dec c
    inc b
    inc d
    inc c
    ld c, $0d
    ld [$2100], sp
    ld h, $1f
    inc de
    rlca
    ld [$1a12], sp
    ld [bc], a
    ld c, $0d
    inc de
    nop
    ld [$120d], sp
    ld a, [de]
    nop
    dec c
    dec e
    ld [$030d], sp
    inc b
    rla
    ld a, [de]
    ld c, $05
    dec e
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld [de], a
    inc h
    inc e
    ld h, $0e
    dec b
    ld de, $0404
    nop
    dec bc
    dec bc
    inc h
    dec e
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld a, [de]
    inc d
    ld [de], a
    inc b
    inc bc
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0004
    inc de
    inc c
    inc b
    dec c
    inc de
    dec e
    ld c, $05
    ld a, [de]
    rrca
    nop
    inc de
    ld [$0d04], sp
    inc de
    ld [de], a
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    rlca
    inc b
    nop
    ld de, $1a13
    inc c
    inc d
    ld de, $140c
    ld de, $2012
    dec e
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld bc, $1a04
    dec b
    nop
    inc de
    nop
    dec bc
    jr nz, jr_00f_41d2

    inc c
    inc b
    inc bc
    ld de, $1904
    ld [$040d], sp
    inc h
    dec e
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld a, [de]
    inc d
    ld [de], a
    inc b
    inc bc
    dec e
    ld [$1a0d], sp

jr_00f_41d2:
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0004
    inc de
    inc c
    inc b
    dec c
    inc de
    dec e
    ld c, $05
    ld a, [de]
    rrca
    nop
    inc de
    ld [$0d04], sp
    inc de
    ld [de], a
    dec e
    inc b
    rla
    rrca
    ld c, $12
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $1a
    dec c
    inc b
    ld de, $0415
    dec e
    ld b, $00
    ld [de], a
    jr nz, @+$1c

    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld bc, $1a04
    dec b
    nop
    inc de
    nop
    dec bc
    jr nz, jr_00f_422c

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
    inc h
    nop
    ld a, [de]
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b

jr_00f_422c:
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
    ld [bc], a
    nop
    inc d
    ld [de], a
    inc b
    dec e
    rrca
    inc b
    ld de, $000c
    dec c
    inc b
    dec c
    inc de
    ld a, [de]
    inc c
    inc b
    inc c
    ld c, $11
    jr jr_00f_426a

    dec bc
    ld c, $12
    ld [de], a
    ld a, [de]
    ld [$1a05], sp
    dec c
    ld c, $13
    dec e
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_00f_427b

    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $0304

jr_00f_426a:
    jr nz, jr_00f_4288

    ld [de], a
    ld c, $03
    ld [$0c14], sp
    dec e
    ld bc, $0208
    nop
    ld de, $0e01
    dec c

jr_00f_427b:
    nop
    inc de
    inc b
    inc h
    dec e
    nop
    ld a, [de]
    inc c
    inc b
    inc bc
    ld [$0802], sp

jr_00f_4288:
    dec c
    inc b
    ld a, [de]
    inc de
    ld c, $1d
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $0200
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
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
    jr nz, jr_00f_42cd

    ld [bc], a
    rlca
    inc b
    inc c
    ld c, $0f
    nop
    rrca
    nop
    ld [$240d], sp
    dec e
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld a, [de]
    inc d
    ld [de], a
    inc b
    inc bc
    ld a, [de]
    inc de

jr_00f_42cd:
    ld c, $1d
    ld [$030d], sp
    inc d
    ld [bc], a
    inc b
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc de
    nop
    inc de
    inc b
    ld a, [de]
    ld c, $05
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
    nop
    inc de
    rlca
    ld c, $0b
    inc h
    dec e
    ld [$030d], sp
    inc d
    ld [bc], a
    inc b
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc d
    ld bc, $0409
    ld [bc], a
    inc de
    ld a, [de]
    ld [$130d], sp
    ld c, $1a
    nop
    dec e
    ld [de], a
    inc de
    nop
    inc de
    inc b
    ld a, [de]
    ld c, $05
    dec e
    inc d
    dec c
    ld [bc], a
    ld c, $0d
    ld [de], a
    ld [bc], a
    ld [$140e], sp
    ld [de], a
    dec c
    inc b
    ld [de], a
    ld [de], a
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc c
    nop
    ld a, [bc]
    inc b
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    inc c
    dec e
    inc de
    inc b
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $1314
    rlca
    jr nz, @+$1e

    ld bc, $1208
    ld c, $03
    ld [$0c14], sp
    ld [$0813], sp
    ld [de], a
    inc h
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    nop
    dec c
    inc de
    ld [$0e03], sp
    inc de
    inc b
    ld a, [de]
    ld c, $05
    dec e
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
    jr nz, jr_00f_438e

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

jr_00f_438e:
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
    ld de, $1a18
    inc de
    ld c, $1d
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $2620
    inc e
    inc de
    rlca
    ld de, $140e
    ld b, $07
    ld a, [de]
    jr jr_00f_43c5

    inc d
    ld de, $0f1a
    nop
    ld [$1d0d], sp
    ld d, $11
    nop
    ld [bc], a
    ld a, [bc]
    inc b

jr_00f_43c5:
    inc bc
    ld a, [de]
    inc bc
    nop
    add hl, de
    inc b
    dec h
    ld a, [de]
    jr jr_00f_43dd

    inc d
    dec e
    inc de
    ld de, $1a18
    inc de
    ld c, $1a
    ld [bc], a
    ld c, $0d
    ld [bc], a
    inc b

jr_00f_43dd:
    dec c
    inc de
    ld de, $1300
    inc b
    inc d
    rrca
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [$050d], sp
    ld c, $11
    inc c
    nop
    inc de
    ld [$0d0e], sp
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
    jr nz, jr_00f_4428

    jr nz, jr_00f_4426

    nop
    dec c
    ld c, $13
    rlca
    inc b
    ld de, $161a
    nop
    dec d
    inc b
    ld a, [de]
    ld c, $05
    dec e
    rrca
    nop
    ld [$1a0d], sp
    inc c
    nop
    ld a, [bc]
    inc b
    ld [de], a
    ld a, [de]
    inc de

jr_00f_4426:
    rlca
    nop

jr_00f_4428:
    inc de
    dec e
    dec c
    inc b
    nop
    ld de, $081a
    inc c
    rrca
    ld c, $12
    ld [de], a
    ld [$0b01], sp
    inc b
    daa
    inc e
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld [de], a
    inc de
    nop
    ld de, $0813
    dec c
    ld b, $1a
    inc de
    ld c, $1d
    ld b, $04
    inc de
    ld a, [de]
    ld de, $0004
    dec bc
    ld a, [de]
    rlca
    nop
    ld de, $1a03
    inc de
    ld c, $1d
    ld bc, $0411
    nop
    inc de
    rlca
    dec h
    ld a, [de]
    jr jr_00f_4475

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    dec e
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]
    rlca

jr_00f_4475:
    ld c, $16
    ld a, [de]
    inc c
    inc d
    ld [bc], a
    rlca
    dec e
    dec bc
    ld c, $0d
    ld b, $04
    ld de, $181a
    ld c, $14
    ld a, [de]
    ld [bc], a
    nop
    dec c
    dec e
    ld a, [bc]
    inc b
    inc b
    rrca
    ld a, [de]
    ld b, $0e
    ld [$060d], sp
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec e
    inc de
    rlca
    ld [$2712], sp
    rra
    jr jr_00f_44b2

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]

jr_00f_44b2:
    ld c, $05
    nop
    ld a, [de]
    rrca
    ld de, $1508
    nop
    inc de
    inc b
    ld a, [de]
    inc b
    jr @+$06

    ld a, [hl+]
    ld [de], a
    dec e
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, jr_00f_44eb

    nop
    dec c
    ld c, $13
    rlca
    inc b
    ld de, $0c1a
    inc b
    inc c
    ld c, $11
    jr jr_00f_44f8

    dec b
    ld de, $0c0e
    ld a, [de]
    jr @+$10

    inc d
    ld de, $021d
    rlca
    ld [$030b], sp
    rlca

jr_00f_44eb:
    ld c, $0e
    inc bc
    ld a, [de]
    ld d, $00
    ld [de], a
    rlca
    inc b
    ld [de], a
    dec e
    ld c, $15

jr_00f_44f8:
    inc b
    ld de, $181a
    ld c, $14
    jr nz, jr_00f_4520

    jr nz, jr_00f_451f

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    jr jr_00f_4517

    inc d
    ld de, $0c1a
    ld c, $13
    rlca
    inc b
    ld de, $1c27
    ld [de], a
    rlca
    inc b

jr_00f_4517:
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld bc, $0a00
    inc b
    inc bc

jr_00f_451f:
    ld a, [de]

jr_00f_4520:
    nop
    ld a, [de]
    ld [bc], a
    nop
    ld a, [bc]
    inc b
    dec b
    ld c, $11
    ld a, [de]
    jr jr_00f_453a

    inc d
    ld de, $011a
    ld [$1311], sp
    rlca
    inc bc
    nop
    jr jr_00f_455f

    jr jr_00f_4548

jr_00f_453a:
    inc d
    ld de, $051a
    nop
    dec d
    ld c, $11
    ld [$0413], sp
    ld hl, $021d

jr_00f_4548:
    rlca
    ld c, $02
    ld c, $0b
    nop
    inc de
    inc b
    daa
    inc e
    ld d, $07
    inc b
    dec c
    ld a, [de]
    nop
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]

jr_00f_455f:
    ld c, $13
    rlca
    inc b
    ld de, $080a
    inc bc
    ld [de], a
    ld a, [de]
    inc bc
    ld [$0d03], sp
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [de], a
    rlca
    ld c, $16
    dec e
    inc d
    rrca
    dec h
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    inc bc
    ld [$0d03], sp
    ld a, [hl+]
    inc de
    dec e
    inc c
    ld [$030d], sp
    ld hl, $021a
    nop
    inc d
    ld [de], a
    inc b
    ld a, [de]
    jr jr_00f_45a0

    inc d
    dec e
    ld [de], a
    inc de
    ld [$0b0b], sp
    ld a, [de]
    rlca
    nop
    inc bc
    ld a, [de]
    jr jr_00f_45ae

jr_00f_45a0:
    inc d
    ld de, $0c1d
    ld c, $13
    rlca
    inc b
    ld de, $1f27
    ld [$2a13], sp

jr_00f_45ae:
    ld [de], a
    ld a, [de]
    rrca
    ld de, $1304
    inc de
    jr jr_00f_45d1

    db $10
    inc d
    ld [$1304], sp
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0e0e
    inc c
    jr nz, jr_00f_45e9

    jr jr_00f_45da

    inc d
    ld a, [de]
    ld de, $0404

jr_00f_45d1:
    dec bc
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    nop
    dec e

jr_00f_45da:
    inc c
    ld c, $0c
    inc b
    dec c
    inc de
    nop
    ld de, $1a18
    ld bc, $140e
    inc de
    dec e

jr_00f_45e9:
    ld c, $05
    ld a, [de]
    inc bc
    ld [$1919], sp
    ld [$040d], sp
    ld [de], a
    ld [de], a
    daa
    inc e
    rrca
    nop
    ld [$1a0d], sp
    inc b
    rla
    rrca
    dec bc
    ld c, $03
    inc b
    ld [de], a
    dec e
    ld bc, $0704
    ld [$030d], sp
    ld a, [de]
    jr jr_00f_461c

    inc d
    ld de, $041a
    jr jr_00f_4618

    ld [de], a
    dec e
    nop
    ld [de], a

jr_00f_4618:
    ld a, [de]
    jr jr_00f_4629

    inc d

jr_00f_461c:
    ld de, $071a
    inc b
    nop
    inc bc
    dec e
    rrca
    ld c, $14
    dec c
    inc bc
    ld [de], a

jr_00f_4629:
    jr nz, @+$1c

    jr @+$10

    inc d
    ld de, $021a
    rlca
    inc b
    ld [de], a
    inc de
    ld [bc], a
    ld c, $0d
    ld [de], a
    inc de
    ld de, $0208
    inc de
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    jr jr_00f_4654

    inc d
    dec b
    ld [$030d], sp
    ld a, [de]
    ld [$1a13], sp
    rlca
    nop
    ld de, $1a03

jr_00f_4654:
    inc de
    ld c, $1d
    inc bc
    ld de, $1600
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0411
    nop
    inc de
    rlca
    daa
    rra
    jr jr_00f_4676

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

jr_00f_4676:
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    dec e
    nop
    ld a, [de]
    ld b, $11
    ld [$180c], sp
    ld a, [de]
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, jr_00f_46ae

    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    ld de, $1203
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    ld c, $0e
    ld de, $111a
    inc b
    nop
    inc bc
    dec h
    dec e

jr_00f_46ae:
    ld h, $00
    ld [bc], a
    inc b
    ld a, [de]
    rlca
    nop
    ld de, $0803
    dec c
    ld b, $24
    dec e
    rrca
    ld de, $1508
    nop
    inc de
    inc b
    ld a, [de]
    inc b
    jr @+$06

    jr nz, jr_00f_46ef

    rra
    jr jr_00f_46da

    inc d
    ld a, [de]
    rrca
    inc d
    dec bc
    dec bc
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    inc de
    rlca
    inc b

jr_00f_46da:
    dec e
    ld b, $14
    dec c
    dec h
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    db $10
    inc d
    ld [$0a02], sp
    dec e
    nop
    ld [$1a0c], sp

jr_00f_46ef:
    nop
    dec c
    inc bc
    ld a, [de]
    rrca
    inc d
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de
    ld de, $0608
    ld b, $04
    ld de, $1f20
    nop
    ld a, [de]
    dec bc
    inc b
    inc de
    rlca
    nop
    dec bc
    ld a, [de]
    ld [de], a
    inc d
    ld de, $110f
    ld [$0412], sp
    daa
    inc e
    nop
    dec c
    ld a, [de]
    inc d
    dec c
    ld a, [bc]
    dec c
    ld c, $16
    dec c
    ld a, [de]
    inc c
    nop
    dec c
    dec e
    inc de
    nop
    ld a, [bc]
    inc b
    ld [de], a
    ld a, [de]
    inc bc
    inc b
    nop
    inc bc
    dec bc
    jr @+$1c

    nop
    ld [$1d0c], sp
    nop
    dec c
    inc bc
    ld a, [de]
    dec b
    ld [$0411], sp
    ld [de], a
    ld a, [de]
    nop
    ld d, $00
    jr jr_00f_4764

    ld d, $08
    inc de
    rlca
    ld a, [de]
    rlca
    ld [$1a12], sp
    inc de
    ld c, $0c
    inc c
    jr jr_00f_4773

    ld b, $14
    dec c
    daa
    inc e
    jr jr_00f_476b

    inc d
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]

jr_00f_4764:
    nop
    dec e
    rrca
    ld de, $050e
    inc b

jr_00f_476b:
    ld [de], a
    ld [de], a
    ld [$0d0e], sp
    nop
    dec bc
    ld a, [de]

jr_00f_4773:
    rlca
    ld [$1d13], sp
    ld d, $07
    inc b
    dec c
    ld a, [de]
    jr jr_00f_478c

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld a, [de]
    ld c, $0d
    inc b
    daa
    dec e
    inc d
    dec c
    dec b

jr_00f_478c:
    ld c, $11
    inc de
    inc d
    dec c
    nop
    inc de
    inc b
    dec bc
    jr jr_00f_47bc

    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [$1a12], sp
    jr jr_00f_47b0

    inc d
    ld de, $0b1a
    nop
    ld [de], a
    inc de
    dec e
    inc de
    rlca
    ld c, $14
    ld b, $07

jr_00f_47b0:
    inc de
    daa
    rra
    inc de
    rlca
    ld de, $140e
    ld b, $07
    ld a, [de]
    inc de

jr_00f_47bc:
    rlca
    inc b
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld c, $16
    jr jr_00f_47d5

    inc d
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
    ld a, [de]

jr_00f_47d5:
    dec b
    nop
    ld [$130d], sp
    ld a, [de]
    ld [de], a
    rlca
    nop
    inc bc
    ld c, $16
    dec e
    ld c, $05
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld c, $0d
    inc b
    ld a, [de]
    inc c
    ld c, $15
    ld [$060d], sp
    dec e
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    ld [$120d], sp
    ld [$0403], sp
    jr nz, jr_00f_4821

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld a, [de]
    rlca
    ld c, $0b
    inc b
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld c, $05

jr_00f_4821:
    dec e
    inc c
    ld c, $15
    inc b
    inc c
    inc b
    dec c
    inc de
    ld a, [de]
    inc de
    inc b
    dec bc
    dec bc
    ld [de], a
    dec e
    jr @+$10

    inc d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    ld de, $0004
    inc de
    dec e
    ld [$1a12], sp
    ld b, $0e
    dec c
    inc b
    jr nz, jr_00f_4868

    jr @+$10

    inc d
    ld a, [de]
    ld a, [bc]
    ld [$0a02], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    jr jr_00f_4877

    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $131a

jr_00f_4868:
    ld c, $1d
    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    ld [de], a
    inc d
    ld de, $1a04
    rlca
    inc b
    ld a, [de]

jr_00f_4877:
    ld [de], a
    inc de
    nop
    jr jr_00f_488e

    inc bc
    inc b
    nop
    inc bc
    daa
    ld a, [de]
    jr jr_00f_4892

    inc d
    ld a, [de]
    ld de, $0004
    dec bc
    dec bc
    jr jr_00f_48aa

    rlca

jr_00f_488e:
    nop
    inc de
    inc b
    inc bc

jr_00f_4892:
    ld a, [de]
    inc de
    ld c, $1a
    inc bc
    ld c, $1a
    inc de
    rlca
    nop
    inc de
    dec h
    dec e
    ld bc, $1314
    ld a, [de]
    ld [$1a13], sp
    ld d, $00
    ld [de], a
    ld a, [de]

jr_00f_48aa:
    rlca
    ld [$1a0c], sp
    ld c, $11
    dec e
    jr jr_00f_48c1

    inc d
    daa
    inc e
    nop
    inc de
    ld a, [de]
    dec bc
    inc b
    nop
    ld [de], a
    inc de
    dec h
    ld a, [de]
    inc de

jr_00f_48c1:
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld c, $11
    jr @+$1c

    jr jr_00f_48e1

    inc d
    ld a, [hl+]
    ld de, $1d04
    ld [de], a
    inc de
    ld [$0a02], sp
    ld [$060d], sp
    ld a, [de]

jr_00f_48e1:
    inc de
    ld c, $27
    rra
    jr @+$06

    ld [de], a
    dec h
    ld a, [de]
    ld [$1213], sp
    ld a, [de]
    ld [bc], a
    ld c, $0c
    ld [$060d], sp
    dec e
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    inc de
    ld c, $1a
    jr jr_00f_490d

    inc d
    jr nz, @+$22

    jr nz, @+$1f

    nop
    ld [bc], a
    inc b
    jr z, jr_00f_4923

    nop
    ld [bc], a
    inc b
    dec e

jr_00f_490d:
    rlca
    nop
    ld de, $0803
    dec c
    ld b, $28
    jr nz, jr_00f_4937

    jr nz, @+$1c

    inc e
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp

jr_00f_4923:
    ld a, [de]
    ld [bc], a
    dec bc
    ld [$0a02], sp
    ld [de], a
    dec e
    ld [$1a0d], sp
    jr jr_00f_493e

    inc d
    ld de, $071a
    inc b
    nop
    inc bc

jr_00f_4937:
    daa
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [hl+]

jr_00f_493e:
    ld [de], a
    ld a, [de]
    ld [$2713], sp
    ld a, [de]
    jr jr_00f_4954

    inc d
    ld a, [hl+]
    ld de, $1d04
    nop
    ld [bc], a
    inc b
    ld a, [de]
    rlca
    nop
    ld de, $0803

jr_00f_4954:
    dec c
    ld b, $25
    dec e
    rrca
    ld de, $1508
    nop
    inc de
    inc b
    ld a, [de]
    inc b
    jr jr_00f_4967

    daa
    rra
    nop
    ld a, [de]

jr_00f_4967:
    inc de
    jr @+$11

    ld [$0002], sp
    dec bc
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    inc h
    dec e
    dec b
    ld c, $14
    ld de, $0b1a
    inc b
    ld b, $12
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    dec e
    inc bc
    ld de, $1600
    inc b
    ld de, $1f20
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc b
    nop
    inc bc
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    dec bc
    nop
    jr jr_00f_49b0

    dec e
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $081a
    dec c
    ld a, [de]
    nop

jr_00f_49b0:
    dec e
    rrca
    ld c, $0e
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    rlca
    ld [$1a12], sp
    ld c, $16
    dec c
    dec e
    ld bc, $0e0b
    ld c, $03
    jr nz, jr_00f_49e4

    inc de
    ld c, $0e
    ld a, [de]
    ld bc, $0300
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec b
    dec bc
    ld c, $0e
    ld de, $1a12
    dec bc
    ld c, $0e
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]
    dec bc

jr_00f_49e4:
    ld [$040a], sp
    inc de
    rlca
    inc b
    jr jr_00f_4a16

    dec d
    inc b
    ld a, [de]
    ld bc, $0404
    dec c
    dec e
    ld de, $0204
    inc b
    dec c
    inc de
    dec bc
    jr jr_00f_4a17

    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    inc b
    inc bc
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld [$040b], sp
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $0d08
    inc b
    inc de

jr_00f_4a16:
    dec e

jr_00f_4a17:
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    ld c, $0b
    inc bc
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld d, $0e
    ld de, $200d
    ld a, [de]
    nop
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [hl+]
    ld [de], a
    dec e
    dec b
    ld [$040b], sp
    ld [de], a
    ld a, [de]
    ld [de], a
    nop
    jr jr_00f_4a4f

    ld a, [de]
    nop
    ld a, [de]
    dec bc
    ld c, $13
    dec e
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    rlca
    ld [$120c], sp
    inc b

jr_00f_4a4f:
    dec bc
    dec b
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld [$000b], sp
    rrca
    ld [$0003], sp
    inc de
    inc b
    inc bc
    ld [de], a
    rlca
    inc b
    dec bc
    dec b
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld c, $16
    jr nz, jr_00f_4a97

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld [de], a
    ld c, $1a
    ld b, $11
    ld [$180c], sp
    dec h
    dec e
    jr jr_00f_4a9a

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld bc, $1100
    inc b
    dec bc

jr_00f_4a97:
    jr @+$1c

    ld [de], a

jr_00f_4a9a:
    inc b
    inc b
    inc de
    rlca
    ld de, $140e
    ld b, $07
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld a, [de]
    ld bc, $1804
    ld c, $0d
    inc bc
    jr nz, jr_00f_4ad9

    jr jr_00f_4aca

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    ld a, [de]
    inc bc
    ld [$0b0c], sp

jr_00f_4aca:
    jr jr_00f_4ae9

    dec bc
    ld [$1a13], sp
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, jr_00f_4af2

    inc de

jr_00f_4ad9:
    rlca
    inc b
    dec e
    ld bc, $1100
    ld de, $0d04
    ld a, [de]
    dec b
    inc d
    ld de, $080d
    ld [de], a

jr_00f_4ae9:
    rlca
    ld [$060d], sp
    ld [de], a
    ld [de], a
    nop
    jr @+$14

jr_00f_4af2:
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    ld c, $13
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    dec e
    ld [$1213], sp
    ld a, [de]
    ld c, $16
    dec c
    inc b
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc b
    inc c
    rrca
    inc de
    jr jr_00f_4b35

    inc e
    ld [$1a13], sp
    ld d, $0e
    inc d
    dec bc
    inc bc
    ld a, [de]
    ld bc, $1d04
    inc d
    ld [de], a
    inc b
    dec bc
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    ld a, [bc]
    inc b
    inc b
    rrca
    ld a, [de]
    ld [$2013], sp

jr_00f_4b35:
    rra
    jr @+$10

    inc d
    ld de, $121a
    rlca
    ld c, $13
    ld a, [de]
    ld d, $00
    ld [de], a
    dec e
    ld de, $0608
    rlca
    inc de
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    nop
    ld de, $0406
    inc de
    jr nz, @+$1e

    jr jr_00f_4b65

    inc d
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    dec c
    ld c, $1d
    rrca
    dec bc
    inc b
    nop

jr_00f_4b65:
    ld [de], a
    inc d
    ld de, $1a04
    ld [$1a0d], sp
    jr @+$10

    inc d
    ld de, $001d
    ld [bc], a
    inc de
    ld [$0d0e], sp
    ld [de], a
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    jr @+$10

    inc d
    dec e
    ld [bc], a
    ld c, $0d
    ld [de], a
    ld c, $0b
    inc b
    ld a, [de]
    jr @+$10

    inc d
    ld de, $0412
    dec bc
    dec b
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [$1a13], sp
    ld d, $00
    ld [de], a
    ld a, [de]
    inc b
    ld [$0713], sp
    inc b
    ld de, $0807
    inc c
    ld a, [de]
    ld c, $11
    ld a, [de]
    jr jr_00f_4bbd

    inc d
    daa
    rra
    nop
    dec c
    ld c, $13
    rlca
    inc b
    ld de, $0c1a
    inc b
    inc c

jr_00f_4bbd:
    ld c, $11
    jr @+$1f

    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c
    dec bc
    jr jr_00f_4be4

    rlca
    ld [$1213], sp
    ld a, [de]
    jr @+$10

    inc d
    dec e
    nop
    ld [de], a
    ld a, [de]
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
    dec e
    inc de

jr_00f_4be4:
    nop
    ld a, [bc]
    inc b
    ld [de], a
    ld a, [de]
    inc b
    dec b
    dec b
    inc b
    ld [bc], a
    inc de
    jr nz, jr_00f_4c11

    jr nz, jr_00f_4c0f

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    nop
    ld [bc], a
    ld c, $25
    ld a, [de]
    jr jr_00f_4c0e

    inc d
    ld de, $051d
    nop
    dec d
    ld c, $11
    ld [$0413], sp
    ld a, [de]
    rrca
    inc b

jr_00f_4c0e:
    inc de

jr_00f_4c0f:
    ld a, [de]
    inc bc

jr_00f_4c11:
    ld c, $06
    dec e
    dec b
    ld de, $0c0e
    ld a, [de]
    jr jr_00f_4c29

    inc d
    dec c
    ld b, $04
    ld de, $031a
    nop
    jr @+$14

    jr nz, jr_00f_4c43

    ld [de], a
    nop

jr_00f_4c29:
    jr @+$1c

    ld h, $16
    ld c, $0e
    dec b
    ld h, $25
    dec e
    inc de
    nop
    ld [bc], a
    ld c, $27
    ld a, [de]
    ld d, $00
    dec c
    inc de
    ld a, [de]
    inc de
    ld c, $1d
    rrca
    dec bc

jr_00f_4c43:
    nop
    jr jr_00f_4c6b

    ld a, [de]
    inc de
    nop
    ld [bc], a
    ld c, $28
    inc e
    inc de
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld b, $0e
    ld c, $03
    ld a, [de]
    ld bc, $180e
    dec e
    inc de
    nop
    ld [bc], a
    ld c, $27
    ld a, [de]
    inc de
    nop
    ld [bc], a
    ld c, $28
    ld a, [de]

jr_00f_4c6b:
    dec c
    ld c, $1d
    ld d, $00
    ld [$2513], sp
    ld a, [de]
    inc de
    nop
    ld [bc], a
    ld c, $27
    jr z, jr_00f_4c95

    ld d, $00
    ld [$2713], sp
    inc e
    inc de
    nop
    ld [bc], a
    ld c, $1a
    ld [de], a
    inc b
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    inc de
    ld c, $1d
    inc de
    rlca

jr_00f_4c95:
    inc b
    ld a, [de]
    rlca
    ld c, $12
    rrca
    ld [$0013], sp
    dec bc
    ld a, [de]
    dec b
    ld c, $11
    dec e
    ld [de], a
    inc de
    ld [$0213], sp
    rlca
    inc b
    ld [de], a
    jr nz, jr_00f_4cc8

    ld c, $0d
    dec e
    ld [de], a
    inc b
    ld [bc], a
    ld c, $0d
    inc bc
    ld a, [de]
    inc de
    rlca
    ld c, $14
    ld b, $07
    inc de
    dec h
    ld a, [de]
    rlca
    inc b
    ld d, $00
    ld [de], a
    dec c
    ld a, [hl+]

jr_00f_4cc8:
    inc de
    ld a, [de]
    ld de, $0004
    dec bc
    dec bc
    jr @+$1c

    inc c
    inc d
    ld [bc], a
    rlca
    ld c, $05
    ld a, [de]
    nop
    ld a, [de]
    dec b
    nop
    dec d
    ld c, $11
    ld [$0413], sp
    daa
    rra
    nop
    dec c
    ld c, $13
    rlca
    inc b
    ld de, $051a
    dec bc
    nop
    ld [de], a
    rlca
    ld bc, $0200
    ld a, [bc]
    dec e
    ld [bc], a
    ld c, $0c
    inc b
    ld [de], a
    ld a, [de]
    inc d
    dec c
    ld bc, $0308
    inc bc
    inc b
    dec c
    dec h
    dec e
    ld [de], a
    ld [$0d06], sp
    nop
    dec bc
    ld [$060d], sp
    ld a, [de]
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    jr jr_00f_4d26

    inc d
    ld de, $0c1a
    inc b
    inc c
    ld c, $11
    jr jr_00f_4d3c

    rlca
    nop
    ld [de], a
    dec e

jr_00f_4d26:
    nop
    dec bc
    inc c
    ld c, $12
    inc de
    ld a, [de]
    ld de, $1304
    inc d
    ld de, $040d
    inc bc
    jr nz, jr_00f_4d57

    jr nz, jr_00f_4d55

    ld [$2a13], sp

jr_00f_4d3c:
    ld [de], a
    ld a, [de]
    ld [de], a
    inc d
    add hl, de
    jr jr_00f_4d5d

    db $10
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld b, $08
    ld de, $1a0b
    dec c
    inc b
    rla
    inc de
    ld a, [de]
    inc bc

jr_00f_4d55:
    ld c, $0e

jr_00f_4d57:
    ld de, $1c20
    ld [de], a
    ld d, $04

jr_00f_4d5d:
    inc b
    inc de
    ld a, [de]
    ld [de], a
    inc d
    add hl, de
    jr jr_00f_4d7f

    db $10
    daa
    ld a, [de]
    ld [de], a
    rlca
    inc b
    dec e
    ld b, $00
    dec d
    inc b
    ld a, [de]
    jr jr_00f_4d81

    inc d
    ld a, [de]
    jr @+$10

    inc d
    ld de, $051d
    ld [$1211], sp
    inc de

jr_00f_4d7f:
    ld a, [de]
    ld a, [bc]

jr_00f_4d81:
    ld [$1212], sp
    jr nz, jr_00f_4da0

    jr @+$10

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
    ld de, $0d14
    dec e
    nop
    ld d, $00
    jr jr_00f_4db8

    nop
    dec c

jr_00f_4da0:
    inc bc
    ld a, [de]
    inc c
    nop
    ld de, $0811
    inc b
    inc bc
    dec e
    rlca
    inc b
    ld de, $081a
    dec b
    ld a, [de]
    jr jr_00f_4dc1

    inc d
    ld a, [de]
    rlca
    nop
    inc bc

jr_00f_4db8:
    ld a, [de]
    inc de
    rlca
    inc b
    ld [bc], a
    rlca
    nop
    dec c
    ld [bc], a

jr_00f_4dc1:
    inc b
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    ld [$1a0d], sp
    dec b
    inc d
    dec bc
    dec bc
    jr jr_00f_4df0

    ld [de], a
    inc d
    ld bc, $0812
    inc bc
    inc b
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    jr jr_00f_4df0

    inc d
    dec e
    dec b
    inc b
    inc b
    dec bc
    ld a, [de]
    nop
    dec bc
    inc c
    ld c, $12
    inc de
    dec e

jr_00f_4df0:
    ld [bc], a
    ld c, $0c
    rrca
    dec bc
    inc b
    inc de
    inc b
    ld a, [de]
    nop
    ld [de], a
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
    ld c, $05
    ld a, [de]
    jr @+$10

    inc d
    ld de, $081d
    inc bc
    inc b
    dec c
    inc de
    ld [$1813], sp
    ld a, [de]
    ld de, $1304
    inc d
    ld de, $120d
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    inc b
    ld b, $0b
    ld [$0406], sp
    dec c
    inc de
    dec e
    ld [de], a
    ld [bc], a
    ld de, $1600
    dec bc
    ld a, [de]
    ld [$1a12], sp
    rlca
    nop
    ld de, $1a03
    inc de
    ld c, $1d
    ld de, $0004
    inc bc
    dec h
    ld a, [de]
    ld h, $12
    inc d
    ld b, $00
    ld de, $121a
    rlca
    nop
    ld [bc], a
    ld a, [bc]
    ld [$1a12], sp
    ld a, [bc]
    dec c
    ld c, $16
    dec c
    ld a, [de]
    inc de
    ld c, $1a
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    nop
    inc bc
    inc b
    inc b
    rrca
    ld a, [de]
    rlca
    nop
    inc de
    ld de, $0304
    ld a, [de]
    ld c, $05
    dec e
    add hl, bc
    ld c, $04
    jr jr_00f_4e91

    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    jr nz, jr_00f_4e99

    inc c
    inc d
    ld [de], a
    inc de
    dec e
    inc bc
    ld [$0212], sp
    ld c, $15
    inc b
    ld de, $161a
    rlca
    nop
    inc de

jr_00f_4e91:
    ld a, [de]
    rlca
    inc b
    dec e
    inc bc
    ld [$1a03], sp

jr_00f_4e99:
    inc de
    ld c, $1a
    rlca
    inc b
    ld de, $2620
    rra
    jr jr_00f_4eb2

    inc d
    ld a, [de]
    ld de, $0004
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0b
    inc bc

jr_00f_4eb2:
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
    ld [$0f0f], sp
    ld [$060d], sp
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld [$040b], sp
    dec h
    inc e
    ld h, $12
    inc d
    ld b, $00
    ld de, $121a
    rlca
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    inc d
    ld [de], a
    inc b
    inc bc
    dec e
    rlca
    inc b
    ld de, $0b1a
    ld [$1313], sp
    dec bc
    inc b
    ld a, [de]
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    dec e
    ld bc, $0e0e
    ld a, [bc]
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    inc c
    nop
    ld [$1d0b], sp
    nop
    dec bc
    inc bc
    inc b
    ld de, $000c
    dec c
    ld a, [de]
    inc de
    ld c, $0c
    dec e
    ld d, $0e
    rrca
    nop
    inc de
    jr nz, @+$1e

    ld bc, $0204
    nop
    inc d
    ld [de], a
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc b
    dec b
    dec b
    ld c, $11
    inc de
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    rrca
    ld de, $1508
    nop
    inc de
    inc b
    ld [$150d], sp
    inc b
    ld [de], a
    inc de
    ld [$0006], sp
    inc de
    ld c, $11
    ld a, [de]
    nop
    ld [bc], a
    inc b
    dec e
    rlca
    nop
    ld de, $0803
    dec c
    ld b, $25
    inc e
    rlca
    inc b
    ld de, $0f1a
    dec bc
    ld c, $13
    ld a, [de]
    ld d, $00
    ld [de], a
    dec e
    inc bc
    ld [$0212], sp
    ld c, $15
    inc b
    ld de, $0304
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    rlca
    inc b
    ld [$1a12], sp
    inc bc
    ld c, $08
    dec c
    ld b, $1a
    dec [hl]
    ld a, [de]
    jr jr_00f_4f86

    nop
    ld de, $1d12

jr_00f_4f86:
    ld [$1a0d], sp
    add hl, bc
    ld c, $0b
    ld [$1304], sp
    ld a, [de]
    inc c
    nop
    rla
    ld [$140c], sp
    inc c
    dec e
    ld [de], a
    inc b
    ld [bc], a
    inc d
    ld de, $1308
    jr jr_00f_4fc1

    ld h, $1f
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    nop
    dec c
    inc bc
    ld d, $11
    ld [$1313], sp
    inc b
    dec c
    dec e
    dec c
    ld c, $13
    inc b
    ld a, [de]
    ld de, $0004
    inc bc
    ld [de], a
    dec h
    ld a, [de]
    ld h, $00

jr_00f_4fc1:
    ld [bc], a
    inc b
    dec h
    dec e
    jr jr_00f_4fd5

    inc d
    ld a, [de]
    ld c, $16
    inc b
    ld a, [de]
    inc c
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    inc de

jr_00f_4fd5:
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_00f_5002

    ld d, $00
    jr jr_00f_5003

    inc de
    ld c, $1a
    ld b, $04
    inc de
    ld a, [de]
    ld c, $05
    dec b
    ld a, [de]
    inc de
    rlca
    inc b
    rlca
    ld c, $0e
    ld a, [bc]
    jr nz, @+$1e

    ld [$2a13], sp
    ld [de], a
    ld a, [de]

jr_00f_5002:
    nop

jr_00f_5003:
    ld a, [de]
    ld [de], a
    ld [$0f0c], sp
    dec bc
    inc b
    dec e
    ld a, [bc]
    ld [$0d03], sp
    nop
    rrca
    ld a, [de]
    add hl, bc
    ld c, $01
    jr nz, @+$1c

    ld [$071a], sp
    nop
    dec d
    inc b
    nop
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc b
    inc de
    nop
    ld [$120b], sp
    dec e
    ld d, $0e
    ld de, $040a
    inc bc
    ld a, [de]
    ld c, $14
    inc de
    jr nz, jr_00f_5055

    ld [$071a], sp
    nop
    dec d
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    inc b
    ld de, $0405
    ld [bc], a
    inc de
    ld d, $04
    nop
    dec bc
    inc de
    rlca
    jr jr_00f_506d

    ld d, $0e

jr_00f_5055:
    inc c
    nop
    dec c
    ld a, [de]
    nop
    dec bc
    dec bc
    dec e
    rrca
    ld [$0a02], sp
    inc b
    inc bc
    ld a, [de]
    ld c, $14
    inc de
    jr nz, jr_00f_5083

    jr jr_00f_5079

    inc d
    dec e

jr_00f_506d:
    ld b, $11
    nop
    ld bc, $071a
    inc b
    ld de, $001a
    dec c
    inc bc

jr_00f_5079:
    dec e
    inc bc
    inc b
    dec bc
    ld [$0415], sp
    ld de, $071a

jr_00f_5083:
    inc b
    ld de, $071a
    inc b
    ld de, $1d04
    inc de
    ld c, $1a
    inc c
    inc b
    jr nz, jr_00f_50ae

    ld [$0b2a], sp
    dec bc
    ld a, [de]
    ld [bc], a
    ld c, $0b
    dec bc
    inc b
    ld [bc], a
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld de, $0d00
    ld [de], a
    ld c, $0c
    ld a, [de]
    nop
    dec c
    inc bc
    dec e

jr_00f_50ae:
    ld [bc], a
    ld c, $0d
    ld [de], a
    ld [$0403], sp
    ld de, $181a
    ld c, $14
    ld de, $061d
    nop
    inc c
    ld bc, $080b
    dec c
    ld b, $1a
    inc bc
    inc b
    ld bc, $1a13
    rrca
    nop
    ld [$0803], sp
    dec c
    ld a, [de]
    dec b
    inc d
    dec bc
    dec bc
    jr nz, @+$1e

    ld bc, $1314
    ld a, [de]
    ld [$161a], sp
    nop
    ld de, $1a0d
    jr jr_00f_50f2

    inc d
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [$1a05], sp
    jr jr_00f_50fe

    inc d
    ld a, [de]

jr_00f_50f2:
    ld bc, $0d14
    ld b, $0b
    inc b
    ld [$2513], sp
    ld a, [de]
    jr jr_00f_510c

jr_00f_50fe:
    inc d
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    dec e
    inc de
    rlca
    inc b
    ld a, [de]

jr_00f_510c:
    ld de, $0f00
    jr nz, jr_00f_512b

    jr jr_00f_5121

    inc d
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    dec e
    ld [$061a], sp
    ld c, $13
    ld a, [de]
    ld [bc], a

jr_00f_5121:
    ld c, $0d
    dec c
    inc b
    ld [bc], a
    inc de
    ld [$0d0e], sp
    ld [de], a

jr_00f_512b:
    dec e
    ld [de], a
    ld c, $1a
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]
    ld [bc], a
    inc d
    inc de
    inc b
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc c
    inc b
    jr nz, @+$1e

    dec b
    ld de, $0d00
    ld a, [bc]
    dec bc
    jr @+$1c

    nop
    ld [bc], a
    inc b
    dec h
    ld a, [de]
    jr jr_00f_5164

    inc d
    dec e
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

jr_00f_5164:
    ld [bc], a
    inc b
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca
    ld [$2012], sp
    ld a, [de]
    ld [de], a
    ld [$020d], sp
    inc b
    ld a, [de]
    jr jr_00f_5186

    inc d
    dec e
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    rrca
    nop
    jr jr_00f_519e

    inc c
    inc b

jr_00f_5186:
    ld a, [de]
    ld d, $07
    nop
    inc de
    dec e
    jr @+$10

    inc d
    ld a, [de]
    ld c, $16
    inc b
    dec h
    ld a, [de]
    ld [$1213], sp
    dec e
    inc b
    ld [$0713], sp
    inc b

jr_00f_519e:
    ld de, $131a
    rlca
    ld [$1a12], sp
    ld c, $11
    dec e
    jr jr_00f_51b8

    inc d
    ld de, $0b1a
    ld [$0405], sp
    jr nz, jr_00f_51cd

    jr jr_00f_51c3

    inc d
    dec e
    inc bc

jr_00f_51b8:
    inc b
    ld [bc], a
    ld [$0403], sp
    daa
    ld h, $1f
    jr jr_00f_51d0

    inc d

jr_00f_51c3:
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld a, [de]
    ld c, $0d
    ld a, [de]

jr_00f_51cd:
    inc de
    rlca
    inc b

jr_00f_51d0:
    dec e
    ld [de], a
    rrca
    ld de, $1600
    dec bc
    ld [$060d], sp
    ld a, [de]
    ld b, $11
    ld c, $14
    dec c
    inc bc
    ld [de], a
    dec e
    ld c, $05
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    nop
    ld de, $0406
    ld a, [de]
    inc b
    ld [de], a
    inc de
    nop
    inc de
    inc b
    jr nz, jr_00f_5212

    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $1204
    inc b
    inc c
    ld bc, $000b
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    inc de
    ld c, $13
    nop
    ld de, $1a00
    dec b
    ld de, $0c0e
    ld a, [de]

jr_00f_5212:
    ld h, $06
    ld c, $0d
    inc b
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld h, $1a
    ld [$1d12], sp
    inc d
    dec c
    ld [bc], a
    nop
    dec c
    dec c
    jr jr_00f_5259

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc c
    nop
    ld [$1a0b], sp
    ld bc, $170e
    jr nz, @+$1f

    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    inc d
    inc c
    ld bc, $1104
    ld a, [de]
    ld [hl], $32
    ld [hl], $1a
    ld [$1d12], sp
    dec c
    inc b
    nop

jr_00f_5259:
    inc de
    dec bc
    jr @+$1c

    rrca
    nop
    ld [$130d], sp
    inc b
    inc bc
    ld a, [de]
    ld c, $0d
    dec e
    ld [$2013], sp
    ld a, [de]
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    nop
    inc c
    inc b
    ld a, [de]
    ld h, $0c
    ld de, $1d20
    ld [de], a
    inc de
    inc b
    ld de, $160d
    ld c, $0e
    inc bc
    ld h, $1a
    ld [$1d12], sp
    rrca
    nop
    ld [de], a
    inc de
    inc b
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
    ld a, [de]
    inc d
    ld [de], a
    ld [$060d], sp
    dec e
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $1a12
    ld [bc], a
    inc d
    inc de
    ld a, [de]
    ld c, $14
    inc de
    dec e
    dec b
    ld de, $0c0e
    ld a, [de]
    dec c
    inc b
    ld d, $12
    rrca
    nop
    rrca
    inc b
    ld de, $2012
    rra
    ld [$1a13], sp
    ld [$1a12], sp
    ld [bc], a
    dec bc
    inc b
    nop
    ld de, $180b
    ld a, [de]
    nop
    dec e
    ld de, $0d00
    ld [de], a
    ld c, $0c
    ld a, [de]
    dec c
    ld c, $13
    inc b
    jr nz, jr_00f_52fe

    ld [$1d13], sp
    ld de, $0004
    inc bc
    ld [de], a
    dec h
    ld a, [de]
    ld h, $12
    inc de
    inc b
    ld de, $160d
    ld c, $0e
    inc bc
    dec h
    ld d, $04
    ld a, [de]
    rlca
    nop

jr_00f_52fe:
    dec d
    inc b
    ld a, [de]
    jr jr_00f_5311

    inc d
    ld de, $161a
    ld [$0405], sp
    jr nz, @+$1e

    jr @+$10

    inc d
    ld a, [de]
    rlca

jr_00f_5311:
    nop
    dec d
    inc b
    ld a, [de]
    inc b
    rla
    nop
    ld [bc], a
    inc de
    dec bc
    jr jr_00f_533a

    ld [hl-], a
    inc [hl]
    ld a, [de]
    rlca
    ld c, $14
    ld de, $1a12
    inc de
    ld c, $1a
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
    ld b, c
    ld [hl-], a
    jr nc, jr_00f_535f

jr_00f_533a:
    jr nc, @+$32

    jr nc, @+$1c

    ld c, $11
    jr jr_00f_5350

    inc d
    ld a, [de]
    ld d, $08
    dec bc
    dec bc
    ld a, [de]
    dec c
    inc b
    dec d
    inc b
    ld de, $121a

jr_00f_5350:
    inc b
    inc b
    rlca
    inc b
    ld de, $001a
    ld b, $00
    ld [$200d], sp
    inc e
    rrca
    dec bc

jr_00f_535f:
    nop
    ld [bc], a
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    ld c, $0d
    inc b
    jr jr_00f_5387

    ld [$140d], sp
    dec c
    inc c
    nop
    ld de, $040a
    inc bc
    ld a, [de]
    ld bc, $0b08
    dec bc
    ld [de], a
    ld a, [de]
    ld [$1d0d], sp
    nop
    ld a, [de]
    ld bc, $000b
    ld [bc], a

jr_00f_5387:
    ld a, [bc]
    ld a, [de]
    ld bc, $0811
    inc b
    dec b
    ld [bc], a
    nop
    ld [de], a
    inc b
    jr nz, jr_00f_53b0

    ld bc, $1a04
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld [$060d], sp
    ld a, [de]
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld [bc], a
    ld c, $11
    dec c
    inc b
    ld de, $0e1a
    dec b
    ld a, [de]

jr_00f_53b0:
    rrca
    inc b
    ld c, $11
    ld [$1d00], sp
    nop
    dec c
    inc bc
    ld a, [de]
    inc b
    dec bc
    inc c
    ld a, [de]
    nop
    inc de
    ld a, [de]
    inc b
    rla
    nop
    ld [bc], a
    inc de
    dec bc
    jr jr_00f_53fb

    ld [hl-], a
    ld a, [de]
    inc c
    ld [$0d03], sp
    ld [$0706], sp
    inc de
    jr nz, jr_00f_53f2

    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $1a04
    jr jr_00f_53f1

    inc d
    ld a, [hl+]
    dec bc
    dec bc
    dec e
    ld bc, $1a04
    ld [bc], a
    ld c, $0d
    inc de
    nop
    ld [bc], a

jr_00f_53f1:
    inc de

jr_00f_53f2:
    inc b
    inc bc
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    dec b

jr_00f_53fb:
    inc d
    ld de, $0713
    inc b
    ld de, $081d
    dec c
    ld [de], a
    inc de
    ld de, $0214
    inc de
    ld [$0d0e], sp
    ld [de], a
    jr nz, jr_00f_542c

    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    dec h
    ld a, [de]
    dec c
    ld c, $1d
    rrca
    ld c, $0b
    ld [$0402], sp
    ld a, [de]
    ld c, $11
    ld a, [de]
    ld [de], a
    rlca
    inc b
    ld a, [hl+]
    ld [de], a

jr_00f_542c:
    ld a, [de]
    nop
    dec e
    inc bc
    inc b
    nop
    inc bc
    ld a, [de]
    ld d, $0e
    inc c
    nop
    dec c
    daa
    ld h, $1f
    ld d, $07
    ld c, $04
    dec d
    inc b
    ld de, $0e1a
    ld d, $0d
    ld [de], a
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
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld de, $0004
    dec bc
    dec bc
    jr jr_00f_547d

    rlca
    nop
    dec d
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0214
    ld a, [bc]
    ld [de], a
    daa
    rra
    jr jr_00f_5480

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

jr_00f_547d:
    dec e
    nop
    dec c

jr_00f_5480:
    jr jr_00f_5490

    dec c
    inc b
    ld a, [de]
    nop
    ld de, $140e
    dec c
    inc bc
    jr nz, jr_00f_54ac

    jr @+$10

    inc d

jr_00f_5490:
    ld a, [hl+]
    ld de, $1a04
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
    ld c, $0e
    ld de, $0e1a
    dec b
    dec e
    inc de
    rlca
    inc b

jr_00f_54ac:
    ld a, [de]
    inc c
    nop
    dec c
    ld [de], a
    ld [$0d0e], sp
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $071a
    nop
    ld [de], a
    dec e
    nop
    ld a, [de]
    rlca
    inc d
    ld b, $04
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $02
    ld a, [bc]
    inc b
    ld de, $0e1d
    dec c
    ld a, [de]
    ld [$2013], sp
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $111a
    inc b
    dec b
    inc d
    ld [de], a
    inc b
    ld [de], a
    dec e
    inc de
    ld c, $1a
    ld bc, $0314
    ld b, $04
    jr nz, jr_00f_5510

    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1a04
    ld bc, $1304
    inc de
    inc b
    ld de, $131a
    ld c, $13
    ld de, $1a18
    ld [bc], a
    ld c, $0c
    inc c
    ld c, $0d

jr_00f_5510:
    ld a, [de]
    ld [de], a
    inc b
    dec c
    ld [de], a
    inc b
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    ld de, $1a18
    ld a, [bc]
    dec c
    ld c, $02
    ld a, [bc]
    ld [$060d], sp
    jr nz, @+$21

    ld [$1a0d], sp
    jr jr_00f_553c

    inc d
    ld de, $041d
    rla
    ld [bc], a
    ld [$0413], sp
    inc c
    inc b
    dec c
    inc de
    dec h

jr_00f_553c:
    ld a, [de]
    jr jr_00f_554d

    inc d
    ld de, $001d
    ld [$1a0c], sp
    ld [$1a12], sp
    ld d, $00
    jr jr_00f_5567

jr_00f_554d:
    ld c, $05
    dec b
    daa
    inc e
    ld [$1a13], sp
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    jr jr_00f_5570

    inc d
    dec e
    rlca
    nop
    dec d

jr_00f_5567:
    inc b
    ld a, [de]
    inc c
    ld [$1212], sp
    inc b
    inc bc
    ld a, [de]

jr_00f_5570:
    jr jr_00f_5580

    inc d
    ld de, $131d
    nop
    ld de, $0406
    inc de
    daa
    rra
    jr jr_00f_558d

    inc d

jr_00f_5580:
    ld a, [de]
    ld de, $0f00
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, [bc]
    dec c
    ld c, $02

jr_00f_558d:
    ld a, [bc]
    inc b
    ld de, $001a
    ld b, $00
    ld [$120d], sp
    inc de
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $1f20
    nop
    dec c
    ld a, [de]
    ld c, $0b
    inc bc
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b
    ld [de], a
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    dec c
    ld [de], a
    ld d, $04
    ld de, $1a12
    inc de
    rlca
    inc b
    dec e
    inc bc
    ld c, $0e
    ld de, $1a20
    ld [$1a0d], sp
    nop
    dec e
    ld [bc], a
    ld c, $0d
    inc bc
    inc b
    ld [de], a
    ld [bc], a
    inc b
    dec c
    inc bc
    ld [$060d], sp
    dec e
    inc de
    ld c, $0d
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1314
    dec bc
    inc b
    ld de, $041d
    rla
    rrca
    dec bc
    nop
    ld [$120d], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    rlca
    inc b
    dec e
    rlca
    nop
    ld [de], a
    ld a, [de]
    ld c, $11
    inc bc
    inc b
    ld de, $1a12
    dec c
    ld c, $13
    ld a, [de]
    inc de
    ld c, $1d
    dec bc
    inc b
    inc de
    ld a, [de]
    nop
    dec c
    jr jr_00f_5626

    dec c
    inc b
    ld a, [de]
    ld [$200d], sp
    inc e
    rlca
    inc b
    ld a, [de]
    nop
    inc bc
    inc bc
    ld [de], a

jr_00f_5626:
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    rlca
    ld [$1d12], sp
    inc b
    inc c
    rrca
    dec bc
    ld c, $18
    inc b
    ld de, $071a
    nop
    ld [de], a
    ld a, [de]
    rlca
    nop
    inc bc
    ld a, [de]
    nop
    inc bc
    ld [$0505], sp
    ld [$1402], sp
    dec bc
    inc de
    ld a, [de]
    dec c
    ld [$0706], sp
    inc de
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld [$1a12], sp
    ld [bc], a
    inc d
    ld de, $0411
    dec c
    inc de
    dec bc
    jr jr_00f_5680

    nop
    ld [de], a
    dec bc
    inc b
    inc b
    rrca
    jr nz, jr_00f_568a

    inc de
    rlca
    ld [$1a12], sp
    ld c, $0b
    inc bc
    ld a, [de]
    ld bc, $1314
    dec bc
    inc b
    ld de, $0b1d
    ld c, $0e
    ld a, [bc]
    ld [de], a

jr_00f_5680:
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    rlca
    inc b
    dec e
    inc c

jr_00f_568a:
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1a04
    nop
    dec e
    rrca
    ld de, $010e
    dec bc
    inc b
    inc c
    dec h
    ld a, [de]
    ld bc, $1314
    dec e
    jr jr_00f_56b1

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    dec c
    ld c, $1a
    inc bc
    ld c, $14
    ld bc, $1d13

jr_00f_56b1:
    jr jr_00f_56c1

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    rlca
    nop
    dec c
    inc bc
    dec bc
    inc b
    dec e
    rlca

jr_00f_56c1:
    ld [$200c], sp
    rra
    ld [bc], a
    dec bc
    ld [$0a02], sp
    daa
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $1d04
    nop
    ld de, $0d04
    ld a, [hl+]
    inc de
    ld a, [de]
    nop
    dec c
    jr jr_00f_56f7

    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld [de], a
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    dec c
    jr nz, jr_00f_570c

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1314

jr_00f_56f7:
    dec bc
    inc b
    ld de, $021a
    nop
    dec bc
    inc c
    dec bc
    jr jr_00f_571f

    nop
    ld [de], a
    ld a, [bc]
    ld [de], a
    dec h
    ld a, [de]
    ld h, $16
    ld c, $14

jr_00f_570c:
    dec bc
    inc bc
    ld a, [de]
    jr jr_00f_571f

    inc d
    dec e
    rrca
    dec bc
    inc b
    nop
    ld [de], a
    inc b
    ld a, [de]
    rrca
    inc d
    inc de
    ld a, [de]
    inc de

jr_00f_571f:
    rlca
    nop
    inc de
    dec e
    inc de
    ld c, $18
    ld a, [de]
    nop
    ld d, $00
    jr jr_00f_574c

    ld h, $1f
    rlca
    inc c
    inc c
    inc c
    jr nz, jr_00f_5751

    inc de
    rlca
    ld [$1a12], sp
    ld a, [bc]
    inc b
    jr @+$1c

    ld d, $0e
    dec c
    ld a, [hl+]
    inc de
    dec e
    dec b
    ld [$2013], sp
    rra
    ld [$2a13], sp
    ld [de], a

jr_00f_574c:
    ld a, [de]
    rrca
    ld de, $010e

jr_00f_5751:
    nop
    ld bc, $180b
    ld a, [de]
    ld c, $0d
    inc b
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    nop
    ld de, $0406
    ld [de], a
    inc de
    dec e
    ld [bc], a
    rlca
    nop
    dec c
    inc bc
    inc b
    dec bc
    ld [$1104], sp
    ld [de], a
    ld a, [de]
    jr jr_00f_5785

    inc d
    ld a, [hl+]
    dec d
    inc b
    inc b
    dec d
    inc b
    ld de, $121a
    inc b
    inc b
    dec c
    daa

jr_00f_5785:
    inc e
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc c
    inc d
    ld [bc], a
    rlca
    ld a, [de]
    inc de
    ld c, $0e
    dec e
    ld bc, $0811
    ld b, $07
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    nop
    inc de
    dec e
    dec b
    ld c, $11
    ld a, [de]
    dec bc
    ld c, $0d
    ld b, $20
    rra
    jr jr_00f_57c0

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    inc c
    nop

jr_00f_57c0:
    dec c
    ld [de], a
    ld [$0d0e], sp
    ld a, [de]
    dec d
    inc b
    ld [de], a
    inc de
    ld [$1401], sp
    dec bc
    inc b
    jr nz, @+$15

    rlca
    ld [$1a12], sp
    ld de, $0e0e
    inc c
    ld a, [de]
    ld [$1d12], sp
    ld bc, $0608
    ld b, $04
    ld de, $131a
    rlca
    nop
    dec c
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    ld [$1813], sp
    ld bc, $0e0b
    ld [bc], a
    ld a, [bc]
    daa
    rra
    ld [de], a
    dec bc
    nop
    inc c
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1314
    dec bc
    inc b
    ld de, $131a
    rlca
    ld de, $160e
    ld [de], a
    dec e
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
    daa
    ld a, [de]
    ld [$1d05], sp
    jr jr_00f_5830

    inc d
    ld a, [de]
    rlca
    nop
    inc bc
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld c, $05
    dec e
    add hl, bc
    inc d

jr_00f_5830:
    inc c
    rrca
    inc b
    inc bc
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    dec h
    ld a, [de]
    jr @+$10

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
    ld bc, $0404
    dec c
    dec e
    ld [bc], a
    dec bc
    ld c, $01
    ld bc, $1104
    inc b
    inc bc
    ld a, [de]
    ld bc, $1a18
    inc de
    rlca
    inc b
    dec e
    ld a, [bc]
    dec c
    ld c, $02
    ld a, [bc]
    inc b
    ld de, $2712
    rra
    jr jr_00f_587a

    inc d
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    inc bc
    inc b
    nop
    inc bc
    dec bc
    jr jr_00f_5897

jr_00f_587a:
    nop
    ld [$1a0c], sp
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    rlca
    ld c, $13
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    dec c
    ld c, $0e
    inc de
    jr jr_00f_58ac

    ld bc, $1314
    dec bc
    inc b

jr_00f_5897:
    ld de, $1a27
    inc de
    rlca
    inc b
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    ld bc, $0811
    dec c
    ld b, $12
    ld a, [de]
    nop
    dec e

jr_00f_58ac:
    ld bc, $0d14
    ld [bc], a
    rlca
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [de], a
    inc de
    nop
    ld de, $0b13
    inc b
    inc bc
    dec e
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    inc b
    ld de, $0015
    dec c
    inc de
    ld [de], a
    dec e
    ld d, $07
    ld c, $1a
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [$1d0d], sp
    rlca
    ld c, $11
    ld de, $110e
    jr nz, jr_00f_5903

    rrca
    ld de, $010e
    nop
    ld bc, $180b
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $1308
    ld a, [de]
    inc de
    ld c, $0e
    inc bc
    ld de, $1200
    inc de
    ld [$2502], sp
    ld a, [de]
    nop

jr_00f_5903:
    ld [bc], a
    inc b
    daa
    inc e
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
    dec bc
    ld c, $0d
    ld b, $1a
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $0f
    ld [de], a
    ld a, [de]
    nop
    ld de, $0811
    dec d
    inc b
    dec h
    dec e
    nop
    dec bc
    inc b
    ld de, $0413
    inc bc
    ld a, [de]
    ld bc, $1a18
    inc de
    rlca
    inc b
    dec e
    dec b
    ld de, $0608
    rlca
    inc de
    inc b
    dec c
    inc b
    inc bc
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec b
    dec b
    jr nz, jr_00f_5972

    jr jr_00f_5965

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_00f_5982

jr_00f_5965:
    ld [bc], a
    inc d
    dec b
    dec b
    inc b
    inc bc
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    rlca
    nop

jr_00f_5972:
    inc d
    dec bc
    inc b
    inc bc
    dec e
    ld [$270d], sp
    rra
    jr jr_00f_598b

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b

jr_00f_5982:
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld c, $0d
    inc b
    ld a, [hl+]

jr_00f_598b:
    ld [de], a
    dec e
    ld [de], a
    rlca
    nop
    inc bc
    ld c, $16
    ld a, [de]
    inc c
    ld c, $15
    ld [$060d], sp
    dec e
    ld bc, $1804
    ld c, $0d
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $0b
    nop
    ld [de], a
    ld [de], a
    jr nz, jr_00f_59cc

    jr jr_00f_59bd

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $02
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]
    inc de

jr_00f_59bd:
    rlca
    inc b
    ld bc, $1314
    dec bc
    inc b
    ld de, $0e1a
    inc d
    inc de
    ld a, [de]
    ld d, $08

jr_00f_59cc:
    inc de
    rlca
    ld a, [de]
    nop
    dec e
    inc de
    ld de, $0c04
    inc b
    dec c
    inc bc
    ld c, $14
    ld [de], a
    dec e
    ld de, $140e
    dec c
    inc bc
    rlca
    ld c, $14
    ld [de], a
    inc b
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    add hl, bc
    nop
    ld d, $27
    inc e
    rlca
    inc b
    ld a, [de]
    dec bc
    ld [$1204], sp
    ld a, [de]
    ld [$1a0d], sp
    nop
    dec c
    dec e
    inc d
    dec c
    ld [bc], a
    ld c, $0d
    ld [de], a
    ld [bc], a
    ld [$140e], sp
    ld [de], a
    ld a, [de]
    rlca
    inc b
    nop
    rrca
    dec e
    nop
    inc de
    ld a, [de]
    jr @+$10

    inc d
    ld de, $051a
    inc b
    inc b
    inc de
    jr nz, jr_00f_5a3f

    jr @+$10

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1d0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    ld [$0213], sp
    rlca
    inc b
    dec c
    jr nz, jr_00f_5a53

    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a

jr_00f_5a3f:
    inc b
    ld a, [de]
    ld [$1a12], sp
    ld [de], a
    ld c, $1d
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    ld a, [de]
    ld [$1a13], sp
    ld [de], a
    rrca
    nop

jr_00f_5a53:
    ld de, $0b0a
    inc b
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
    ld a, [de]
    add hl, bc
    nop
    ld de, $1f20
    ld d, $0e
    ld d, $27
    ld a, [de]
    ld d, $07
    nop
    inc de
    ld a, [de]
    nop
    ld a, [de]
    ld de, $1214
    rlca
    daa
    inc e
    inc b
    nop
    inc de
    ld [$060d], sp
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
    ld [de], a
    inc d
    ld b, $00
    ld de, $061a
    ld [$0415], sp
    ld [de], a
    ld a, [de]
    jr jr_00f_5aaa

    inc d
    ld a, [de]
    nop
    dec e
    ld bc, $1114
    ld [de], a
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc b

jr_00f_5aaa:
    dec c
    inc b
    ld de, $1806
    daa
    rra
    rlca
    inc c
    inc c
    daa
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    ld [$1313], sp
    dec bc
    inc b
    dec e
    rrca
    nop
    ld [de], a
    inc de
    jr jr_00f_5aea

    ld a, [de]
    ld bc, $1314
    ld a, [de]
    ld [$1d13], sp
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    inc de
    nop
    ld [de], a
    inc de
    inc b
    ld a, [de]
    inc de
    ld c, $0e
    dec e
    ld bc, $0300
    ld a, [de]
    nop
    inc de
    ld a, [de]
    nop
    dec bc
    dec bc
    daa

jr_00f_5aea:
    rra
    ld d, $07
    nop
    inc de
    ld a, [de]
    ld [de], a
    inc de
    nop
    ld de, $0413
    inc bc
    ld a, [de]
    ld c, $14
    inc de
    dec e
    nop
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0300
    ld a, [de]
    inc bc
    nop
    jr @+$1c

    add hl, bc
    inc d
    ld [de], a
    inc de
    dec e
    ld b, $0e
    inc de
    ld a, [de]
    ld d, $0e
    ld de, $0412
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld [$0612], sp
    ld de, $0d14
    inc de
    dec bc
    inc b
    inc bc
    dec e
    ld [bc], a
    nop
    ld bc, $1801
    ld a, [de]
    ld [bc], a
    nop
    dec bc
    dec bc
    inc b
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    ld c, $0b
    ld [$0402], sp
    ld a, [de]
    ld c, $0d
    ld a, [de]
    jr @+$10

    inc d
    jr nz, jr_00f_5b65

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0f
    ld [de], a
    ld a, [de]
    dec b
    ld de, $160e
    dec c
    ld a, [de]
    ld c, $0d
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    nop
    ld [bc], a
    inc de
    ld a, [de]
    inc de

jr_00f_5b65:
    rlca
    nop
    inc de
    ld a, [de]
    jr jr_00f_5b79

    inc d
    dec e
    ld [de], a
    inc de
    ld [$0505], sp
    inc b
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]

jr_00f_5b79:
    ld [bc], a
    nop
    ld bc, $031d
    ld de, $1508
    inc b
    ld de, $1c27
    nop
    ld a, [de]
    ld bc, $0811
    inc b
    dec b
    ld a, [de]
    inc de
    ld de, $0008
    dec bc
    ld a, [de]
    ld [$1d12], sp
    nop
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    dec c
    inc b
    inc b
    inc bc
    inc b
    inc bc
    dec e
    inc de
    ld c, $1a
    ld [bc], a
    ld c, $0d
    dec d
    ld [$1302], sp
    ld a, [de]
    jr jr_00f_5bc3

    inc d
    jr nz, jr_00f_5bd7

    inc de
    rlca
    ld [$1a12], sp
    rrca
    nop
    dec c
    ld a, [de]
    ld d, $00

jr_00f_5bc3:
    ld [de], a
    ld a, [de]
    inc c
    nop
    inc bc
    inc b
    dec e
    dec b
    ld c, $11
    ld a, [de]
    dec b
    ld de, $0818
    dec c
    ld a, [hl+]
    dec h
    dec e
    nop

jr_00f_5bd7:
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
    add hl, bc
    inc d
    ld [de], a
    inc de
    dec e
    ld d, $07
    nop
    inc de
    ld a, [de]
    jr jr_00f_5bfb

    inc d
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    inc bc
    ld c, $1a
    ld [$1d05], sp
    jr @+$10

    inc d

jr_00f_5bfb:
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [de], a
    inc de
    ld c, $0f
    dec e
    ld d, $00
    ld [de], a
    inc de
    ld [$060d], sp
    ld a, [de]
    inc de
    ld [$040c], sp
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec b
    ld [$040d], sp
    dec bc
    jr jr_00f_5c40

    inc bc
    inc b
    inc de
    nop
    ld [$040b], sp
    inc bc
    ld a, [de]
    rrca
    ld c, $11
    ld [bc], a
    inc b
    dec bc
    nop
    ld [$030d], sp
    ld [$0712], sp
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]

jr_00f_5c40:
    nop
    ld a, [de]
    ld d, $00
    inc de
    inc b
    ld de, $0f1d
    ld [$0213], sp
    rlca
    inc b
    ld de, $1c20
    ld bc, $1314
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    dec c
    ld c, $1d
    ld d, $00
    inc de
    inc b
    ld de, $081a
    dec c
    ld a, [de]
    ld [$2013], sp
    jr nz, @+$22

    ld a, [de]
    ld [de], a
    ld c, $1d
    inc c
    nop
    jr jr_00f_5c78

    inc b

jr_00f_5c78:
    ld a, [de]
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    nop
    dec e
    rrca
    ld [$0213], sp
    rlca
    inc b
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $1308
    ld a, [de]
    ld c, $05
    dec e
    ld [de], a
    dec bc
    ld [$0402], sp
    inc bc
    ld a, [de]
    ld [de], a
    nop
    inc d
    ld [de], a
    nop
    ld b, $04
    jr nz, @+$21

    inc de
    rlca
    ld [$1a12], sp
    inc de
    nop
    ld bc, $040b
    ld a, [de]
    ld [$1d12], sp
    dec d
    inc b
    ld de, $1a18
    ld [$130d], sp
    inc b
    ld de, $1204
    inc de
    ld [$060d], sp
    jr nz, jr_00f_5ce8

    ld c, $0d
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    dec e
    rlca
    inc b
    ld de, $1a04
    dec b
    ld c, $11
    ld a, [de]
    rlca
    ld c, $14

jr_00f_5ce8:
    ld de, $1d12
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    nop
    inc bc
    inc c
    ld [$0811], sp
    dec c
    ld b, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    nop
    ld [$120b], sp
    jr nz, @+$21

    jr jr_00f_5d14

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    inc d

jr_00f_5d14:
    ld b, $04
    ld a, [bc]
    ld [$0213], sp
    rlca
    inc b
    dec c
    jr nz, jr_00f_5d3b

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
    dec e
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $131a
    ld c, $1a
    ld bc, $1d04
    nop

jr_00f_5d3b:
    dec c
    jr jr_00f_5d4c

    dec c
    inc b
    ld a, [de]
    nop
    ld de, $140e
    dec c
    inc bc
    jr nz, @+$21

    ld d, $07
    nop

jr_00f_5d4c:
    inc de
    ld a, [de]
    ld d, $0e
    inc d
    dec bc
    inc bc
    ld a, [de]
    jr jr_00f_5d64

    inc d
    dec e
    dec bc
    ld [$040a], sp
    ld a, [de]
    inc de
    ld c, $1a
    inc d
    ld [de], a
    inc b
    ld a, [de]

jr_00f_5d64:
    inc de
    rlca
    ld [$1d12], sp
    ld c, $0d
    jr z, jr_00f_5d8c

    jr jr_00f_5d7d

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

jr_00f_5d7d:
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
    jr jr_00f_5dac

jr_00f_5d8c:
    rra
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
    dec e
    ld bc, $0604
    ld [$120d], sp
    ld a, [de]
    inc de
    ld c, $1a
    ld d, $0e
    ld de, $200a
    inc e
    jr jr_00f_5dba

jr_00f_5dac:
    inc d
    ld de, $071a
    inc b
    nop
    inc bc
    ld a, [de]
    ld [de], a
    inc de
    nop
    ld de, $1213

jr_00f_5dba:
    dec e
    inc de
    ld c, $1a
    ld [bc], a
    dec bc
    inc b
    nop
    ld de, $001a
    dec c
    inc bc
    ld a, [de]
    nop
    dec e
    inc c
    inc b
    inc c
    ld c, $11
    jr @+$1c

    ld de, $0b0e
    dec bc
    ld [de], a
    ld a, [de]
    ld [$1d0d], sp
    dec b
    ld de, $0c0e
    ld a, [de]
    jr jr_00f_5def

    inc d
    ld de, $021d
    rlca
    ld [$030b], sp
    rlca
    ld c, $0e
    inc bc
    jr nz, jr_00f_5e0f

jr_00f_5def:
    jr nz, jr_00f_5e0b

    inc e
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    dec b
    nop
    inc de
    rlca
    inc b
    ld de, $0e1d
    ld a, [hl+]
    inc c
    nop
    dec bc
    dec bc
    inc b
    jr jr_00f_5e21

    dec b
    ld de, $0c0e

jr_00f_5e0b:
    dec e
    inc de
    rlca
    inc b

jr_00f_5e0f:
    ld a, [de]
    inc bc
    inc b
    inc c
    ld [$0b0b], sp
    inc b
    dec e
    ld bc, $000e
    ld de, $0803
    dec c
    ld b, $1a

jr_00f_5e21:
    ld [de], a
    ld [bc], a
    rlca
    ld c, $0e
    dec bc
    jr nz, jr_00f_5e45

    ld b, $0e
    ld c, $03
    ld a, [de]
    ld c, $0b
    ld a, [hl+]
    ld a, [de]
    rrca
    nop
    inc bc
    ld de, $2704
    dec e
    ld d, $07
    inc b
    dec c
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $0e18
    dec c

jr_00f_5e45:
    inc b
    ld a, [de]
    inc b
    dec bc
    ld [de], a
    inc b
    ld b, $00
    dec d
    inc b
    ld a, [de]
    inc d
    rrca
    ld a, [de]
    ld c, $0d
    ld a, [de]
    jr @+$10

    inc d
    dec h
    ld a, [de]
    rlca
    inc b
    ld d, $00
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0d
    inc b
    ld a, [de]
    ld d, $07
    ld c, $1d
    ld bc, $0b04
    ld [$1504], sp
    inc b
    inc bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    jr jr_00f_5e8b

    inc d
    dec e
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    ld bc, $1a04
    ld [de], a
    ld c, $0c

jr_00f_5e8b:
    inc b
    ld c, $0d
    inc b
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    ld [$1a0d], sp
    inc b
    nop
    ld [de], a
    inc b
    ld [de], a
    daa
    dec e
    jr @+$10

    inc d
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    ld a, [de]
    jr jr_00f_5eba

    inc d
    ld a, [de]
    inc c
    ld [$0706], sp
    inc de
    nop
    ld [bc], a
    inc de
    inc d
    nop
    dec bc
    dec bc

jr_00f_5eba:
    jr jr_00f_5ed6

    ld bc, $1d04
    ld b, $04
    inc de
    inc de
    ld [$060d], sp
    ld a, [de]
    ld bc, $1304
    inc de
    inc b
    ld de, $1f27
    jr jr_00f_5edf

    inc d
    ld a, [hl+]
    ld de, $1a04

jr_00f_5ed6:
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    inc c
    nop

jr_00f_5edf:
    ld [de], a
    inc de
    inc b
    ld de, $011a
    inc b
    inc bc
    ld de, $0e0e
    inc c
    jr nz, jr_00f_5f09

    inc de
    rlca
    inc b
    ld de, $1a04
    ld [$1a12], sp
    nop
    ld a, [de]
    inc c
    nop
    dec c
    dec e
    nop
    ld [de], a
    dec bc
    inc b
    inc b
    rrca
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b

jr_00f_5f09:
    ld a, [de]
    ld bc, $0304
    jr nz, jr_00f_5f2e

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0304
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    inc c
    ld de, $1a20
    ld [de], a
    inc de
    inc b
    ld de, $160d
    ld c, $0e
    inc bc

jr_00f_5f2e:
    ld a, [de]
    dec bc
    ld [$1204], sp
    ld [$200d], sp
    rra
    nop
    ld [de], a
    ld a, [de]
    dec b
    nop
    ld de, $001a
    ld [de], a
    ld a, [de]
    dec bc
    nop
    inc c
    rrca
    ld [de], a
    dec e
    ld b, $0e
    dec h
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    ld c, $0d
    inc b
    ld a, [de]
    ld [$1d12], sp
    rrca
    ld de, $1304
    inc de
    jr jr_00f_5f78

    dec c
    ld [$0402], sp
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    dec e
    ld bc, $0811
    inc b
    dec b
    ld [bc], a
    nop

jr_00f_5f78:
    ld [de], a
    inc b
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld a, [bc]
    ld [$030d], sp
    ld a, [de]
    rrca
    ld de, $0504
    inc b
    ld de, $0411
    inc bc
    ld a, [de]
    ld bc, $1d18
    ld a, [bc]
    ld [$0d03], sp
    nop
    rrca
    rrca
    inc b
    ld de, $1d12
    inc b
    dec d
    inc b
    ld de, $1618
    rlca
    inc b
    ld de, $2704
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

Jump_00f_6645:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
