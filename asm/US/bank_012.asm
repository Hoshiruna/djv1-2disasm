; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

    nop
    ld b, c
    inc h
    ld b, d
    and b
    ld b, e
    ld d, b
    ld b, l
    adc h
    ld b, l
    cp l
    ld b, l
    db $dd
    ld b, l
    ld a, [bc]
    ld b, [hl]
    ld h, l
    ld b, [hl]
    add a
    ld b, [hl]
    or l
    ld b, [hl]
    add sp, $46
    jr z, jr_012_4061

    ld d, l
    ld b, a
    ld h, d
    ld c, b
    sbc d
    ld c, b
    xor a
    ld c, b
    push bc
    ld c, b
    ld d, $49
    ld a, $49
    adc e
    ld c, c
    call Call_000_1e49
    ld c, d
    ld b, h
    ld c, d
    ld [hl], c
    ld c, d
    cp c
    ld c, d
    ldh a, [c]
    ld c, d
    add c
    ld c, e
    ld e, l
    ld c, h
    cp a
    ld c, h
    reti


    ld c, h
    inc b
    ld c, l
    ld c, e
    ld c, l
    and e
    ld c, l
    ldh a, [rKEY1]
    ld b, d
    ld c, [hl]
    sbc b
    ld c, [hl]
    jp z, Jump_000_224e

    ld c, a
    sub a
    ld c, a
    or e
    ld c, a
    call z, $fe4f
    ld c, a
    inc a
    ld d, b
    ld a, e
    ld d, b
    adc h
    ld d, b
    and e
    ld d, b
    xor c
    ld d, b
    ld d, d

jr_012_4061:
    ld d, c
    sbc c
    ld d, c
    sbc $51
    rra
    ld d, d
    adc [hl]
    ld d, d
    ld [$1152], a
    ld d, e
    ld d, l
    ld d, e
    and b
    ld d, e
    ld sp, hl
    ld d, e
    ld de, $3a54
    ld d, h
    ld l, [hl]
    ld d, h
    sbc l
    ld d, h
    and l
    ld d, l
    ld hl, $3c56
    ld d, [hl]
    ld l, b
    ld d, [hl]
    or e
    ld d, [hl]
    ld c, e
    ld d, a
    call nc, $da57
    ld d, a
    pop af
    ld d, a
    dec [hl]
    ld e, b
    adc e
    ld e, b
    xor c
    ld e, b
    db $db
    ld e, b
    nop
    ld e, c
    dec de
    ld e, c
    scf
    ld e, c
    ld e, c
    ld e, c
    add e
    ld e, c
    cp l
    ld e, c
    ld b, $5a
    ld b, a
    ld e, d
    ld l, [hl]
    ld e, d
    add l
    ld e, d
    xor c
    ld e, d
    push de
    ld e, d
    inc d
    ld e, e
    ld c, d
    ld e, e
    sub b
    ld e, e
    xor a
    ld e, e
    ld hl, sp+$5b
    ld l, $5c
    ld c, e
    ld e, h
    adc e
    ld e, h
    cp b
    ld e, h
    ld a, [$0f5c]
    ld e, l
    rra
    ld e, l
    ld a, [hl-]
    ld e, l
    pop hl
    ld e, l
    adc b
    ld e, [hl]
    rst RST_18
    ld e, [hl]
    ei
    ld e, [hl]
    ld e, $5f
    inc [hl]
    ld e, a
    ld h, l
    ld e, a
    sbc [hl]
    ld e, a
    cp d
    ld e, a
    dec [hl]
    ld h, b
    adc [hl]
    ld h, b
    add $60
    ld c, b
    ld h, c
    ld [hl], a
    ld h, c
    and b
    ld h, c
    reti


    ld h, c
    db $ec
    ld h, c
    dec b
    ld h, d
    ld d, e
    ld h, d
    add h
    ld h, d
    cp [hl]
    ld h, d
    add hl, bc
    ld h, e
    inc h
    ld h, e
    ld d, d
    ld h, e
    ld a, l
    ld h, e
    db $ec
    ld h, e
    ld e, $64
    ld c, d
    ld h, h
    jr jr_012_4110

    inc d
    ld a, [de]
    nop
    ld d, $00
    ld a, [bc]
    inc b
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    nop

jr_012_4110:
    dec e
    ld b, $11
    ld c, $06
    ld b, $18
    ld a, [de]
    ld [de], a
    inc de
    inc d
    rrca
    ld c, $11
    jr nz, jr_012_4140

    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    ld de, $010e
    ld bc, $0d08
    ld b, $1a
    rrca
    nop
    ld [$050d], sp
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0200

jr_012_4140:
    ld a, [bc]
    ld a, [de]
    ld c, $05
    dec e
    jr jr_012_4155

    inc d
    ld de, $071a
    inc b
    nop
    inc bc
    ld a, [de]
    ld [bc], a
    ld de, $0004
    inc de
    inc b

jr_012_4155:
    ld [de], a
    dec e
    nop
    dec c
    ld a, [de]
    inc d
    dec c
    inc b
    nop
    ld [de], a
    jr jr_012_417b

    ld [de], a
    inc b
    dec c
    ld [de], a
    inc b
    ld a, [de]
    ld c, $05
    inc bc
    inc b
    add hl, bc
    nop
    ld a, [de]
    dec d
    inc d
    daa
    inc e
    jr @+$10

    inc d
    ld a, [de]
    ld bc, $0411
    nop
    inc de

jr_012_417b:
    rlca
    inc b
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    ld [$0706], sp
    ld c, $05
    ld a, [de]
    ld de, $0b04
    ld [$0504], sp
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    jr jr_012_41a1

    inc d
    dec e
    ld de, $0004
    dec bc
    ld [$0419], sp
    ld a, [de]
    jr jr_012_41ad

    inc d
    ld a, [de]

jr_012_41a1:
    inc bc
    ld c, $1d
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    ld a, [de]

jr_012_41ad:
    jr jr_012_41bd

    inc d
    ld de, $0d1d
    nop
    inc c
    inc b
    jr nz, jr_012_41d8

    jr nz, jr_012_41d6

    nop
    ld [bc], a
    inc b

jr_012_41bd:
    ld a, [de]
    rlca
    nop
    ld de, $0803
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
    jr jr_012_41d6

    daa
    inc e
    ld d, $08

jr_012_41d6:
    inc de
    rlca

jr_012_41d8:
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc c
    inc b
    inc c
    ld c, $11
    jr @+$27

    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    dec d
    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld de, $1504
    ld [$140e], sp
    ld [de], a
    ld a, [de]
    inc [hl]
    jr c, @+$1f

    rlca
    ld c, $14
    ld de, $1a12
    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    dec e
    ld [$130d], sp
    ld c, $1a
    dec b
    ld c, $02
    inc d
    ld [de], a
    jr nz, @+$22

    jr nz, @+$21

    jr jr_012_4234

    inc d
    ld a, [de]
    ld d, $04
    ld de, $1a04
    nop
    ld bc, $1403
    ld [bc], a
    inc de
    inc b

jr_012_4234:
    inc bc
    dec e
    ld [$1a0d], sp
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    ld a, [de]
    ld bc, $1a18
    inc de
    ld d, $0e
    dec e
    inc de
    rlca
    inc d
    ld b, $12
    ld a, [de]
    ld d, $07
    ld c, $1a
    ld bc, $0e11
    inc d
    ld b, $07
    inc de
    dec e
    jr jr_012_426a

    inc d
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    dec c
    ld c, $13
    ld c, $11

jr_012_426a:
    ld [$140e], sp
    ld [de], a
    ld a, [de]
    dec bc
    nop
    ld [de], a
    dec e
    dec d
    inc b
    ld b, $00
    ld [de], a
    ld a, [de]
    inc c
    ld c, $01
    ld [de], a
    inc de
    inc b
    ld de, $2020
    jr nz, @+$1e

    inc de
    ld c, $0d
    jr jr_012_42a3

    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    daa
    inc e
    ld d, $0e
    ld de, $1a03
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de

jr_012_42a3:
    rlca
    nop
    inc bc
    ld a, [de]
    ld [$1a13], sp
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    nop
    dec c
    inc bc
    ld a, [de]
    add hl, bc
    ld c, $04
    jr @+$1c

    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    dec h
    dec e
    ld d, $07
    ld c, $2a
    ld [de], a
    ld a, [de]
    inc c
    inc d
    ld de, $0403
    ld de, $181a
    ld c, $14
    dec e
    ld d, $04
    ld de, $1a04
    ld de, $0204
    inc b
    dec c
    inc de
    dec bc
    jr jr_012_4302

    ld [bc], a
    dec bc
    inc b
    nop
    ld de, $0304
    ld a, [de]
    ld c, $05
    dec h
    ld a, [de]
    rlca
    nop
    inc bc
    dec e
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    ld [de], a
    ld c, $11
    inc de
    ld a, [de]
    ld c, $05
    dec e

jr_012_4302:
    ld [bc], a
    ld c, $0d
    dec c
    inc b
    ld [bc], a
    inc de
    ld [$0d0e], sp
    jr nz, @+$1e

    jr jr_012_431e

    inc d
    ld a, [de]
    inc bc
    ld [$0212], sp
    ld c, $15
    inc b
    ld de, $0304
    dec e
    inc de

jr_012_431e:
    rlca
    nop
    inc de
    ld a, [de]
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [de]
    ld d, $00
    ld [de], a
    dec e
    ld de, $0d14
    dec c
    ld [$060d], sp
    ld a, [de]
    ld de, $0200
    ld a, [bc]
    inc b
    inc de
    ld [de], a
    ld a, [de]
    ld [$020d], sp
    rlca
    ld [$0002], sp
    ld b, $0e
    ld a, [de]
    dec b
    ld c, $11
    dec e
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    jr nz, @+$22

    jr nz, jr_012_4371

    nop
    dec c
    inc bc
    ld a, [de]
    dec c
    ld c, $16
    ld a, [de]
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [de]
    ld d, $00
    ld [de], a
    inc bc
    inc b
    nop
    inc bc
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld b, c

jr_012_4371:
    ld sp, $3231
    dec h
    jr nc, @+$32

    jr nc, jr_012_4396

    ld c, $05
    ld a, [de]
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc c
    ld c, $0d
    inc b
    jr jr_012_43a8

    ld d, $00
    ld [de], a
    ld a, [de]
    inc c
    ld [$1212], sp
    ld [$060d], sp

jr_012_4396:
    ld a, [de]
    nop
    ld [de], a
    dec e
    ld d, $04
    dec bc
    dec bc
    daa
    rra
    ld [de], a
    ld [$020d], sp
    inc b
    ld a, [de]
    jr jr_012_43b6

jr_012_43a8:
    inc d
    ld a, [de]
    ld d, $04
    ld de, $1a04
    inc de
    rlca
    inc b
    dec bc
    nop
    ld [de], a
    inc de

jr_012_43b6:
    ld a, [de]
    ld c, $0d
    inc b
    ld a, [de]
    inc de
    ld c, $1a
    inc bc
    inc b
    nop
    dec bc
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    dec h
    dec e
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    dec b
    ld [$1406], sp
    ld de, $0304
    ld a, [de]
    jr jr_012_43ef

    inc d
    ld d, $04
    ld de, $1a04
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0d
    inc b
    ld a, [de]

jr_012_43ef:
    ld d, $07
    ld c, $1d
    dec bc
    inc b
    dec b
    inc de
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    rlca
    ld [$1d12], sp
    inc c
    ld c, $0d
    inc b
    jr @+$29

    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    dec d
    inc b
    ld b, $00
    ld [de], a
    ld a, [de]
    inc c
    ld c, $01
    ld [de], a
    inc de
    inc b
    ld de, $061d
    nop
    dec d
    inc b
    ld a, [de]
    jr jr_012_442f

    inc d
    ld a, [de]
    nop
    dec c
    ld a, [de]
    ld c, $05
    dec b
    inc b
    ld de, $181d
    ld c, $14

jr_012_442f:
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    dec c
    ld a, [hl+]
    inc de
    dec e
    ld de, $0504
    inc d
    ld [de], a
    inc b
    jr nz, @+$22

    jr nz, jr_012_445f

    inc b
    ld [$0713], sp
    inc b
    ld de, $111a
    inc b
    inc de
    inc d
    ld de, $1a0d
    rlca
    ld [$1d12], sp
    ld sp, $3231
    ld a, [de]
    ld b, $11
    nop
    dec c
    inc bc
    ld a, [de]

jr_012_445f:
    ld [$1a0d], sp
    ld c, $0d
    inc b
    dec e
    ld d, $04
    inc b
    ld a, [bc]
    ld a, [de]
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $2a04
    dec bc
    dec bc
    dec e
    ld bc, $1a04
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    nop
    ld [de], a
    ld [de], a
    ld [$1a02], sp
    ld h, $0e
    ld de, $0b04
    ld [de], a
    inc b
    ld h, $1a
    dec b
    ld c, $11
    ld a, [de]
    jr @+$10

    inc d
    daa
    inc e
    nop
    dec c
    inc bc
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    inc c
    nop
    ld a, [bc]
    inc b
    dec e
    ld [de], a
    inc d
    ld de, $1a04
    jr @+$10

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    inc de
    ld de, $0018
    dec c
    jr jr_012_44d9

    dec b
    inc d
    dec c
    dec c
    jr jr_012_44e2

    ld bc, $1214
    ld [$040d], sp
    ld [de], a
    ld [de], a
    dec h
    ld a, [de]
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [hl+]
    ld [de], a
    dec c
    inc d

jr_012_44d9:
    inc c
    ld bc, $1104
    ld a, [de]
    ld c, $0d
    inc b
    ld a, [de]

jr_012_44e2:
    rlca
    ld [$0c13], sp
    nop
    dec c
    dec h
    ld [de], a
    inc de
    ld c, $06
    ld [$1a04], sp
    inc c
    nop
    ld de, $0813
    dec c
    dec h
    dec e
    ld d, $08
    dec bc
    dec bc
    ld a, [de]
    ld a, [bc]
    inc b
    inc b
    rrca
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    dec e
    inc de
    nop
    ld bc, $1a12
    ld c, $0d
    ld a, [de]
    jr jr_012_4520

    inc d
    daa
    inc e
    ld h, $01
    ld c, $18
    dec h
    ld h, $1a
    jr jr_012_452c

    inc d
    ld a, [de]

jr_012_4520:
    inc c
    inc d
    inc de
    inc de
    inc b
    ld de, $131d
    ld c, $1a
    jr jr_012_453a

jr_012_452c:
    inc d
    ld de, $0412
    dec bc
    dec b
    dec h
    ld a, [de]
    ld h, $13
    rlca
    ld [$0712], sp

jr_012_453a:
    nop
    ld [de], a
    ld a, [de]
    dec c
    ld c, $13
    ld a, [de]
    ld bc, $0404
    dec c
    ld a, [de]
    inc c
    jr jr_012_4566

    ld d, $04
    inc b
    ld a, [bc]
    daa
    ld h, $1f
    jr jr_012_4560

    inc d
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld a, [de]
    inc d
    rrca
    dec e
    ld [de], a
    rlca
    nop

jr_012_4560:
    ld a, [bc]
    ld [$180b], sp
    dec h
    ld a, [de]

jr_012_4566:
    nop
    dec c
    inc bc
    dec e
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $161a
    rlca
    inc b
    ld de, $1a04
    inc de
    rlca
    nop
    inc de
    dec e
    inc c
    ld c, $0d
    inc b
    jr jr_012_459c

    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    ld bc, $2704
    rra
    jr jr_012_459c

    inc d
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    dec e
    rrca
    nop
    ld de, $0813
    ld [bc], a
    inc d

jr_012_459c:
    dec bc
    nop
    ld de, $180b
    ld a, [de]
    dec c
    nop
    ld a, [bc]
    inc b
    inc bc
    ld d, $08
    inc de
    rlca
    ld c, $14
    inc de
    ld a, [de]
    nop
    dec c
    jr jr_012_45cd

    rrca
    nop
    dec c
    inc de
    ld [de], a
    dec e
    ld c, $0d
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    ld [$1a11], sp
    ld c, $05
    ld a, [de]
    rrca
    nop
    dec c
    inc de

jr_012_45cd:
    ld [de], a
    dec e
    dec b
    ld [$1a13], sp
    jr @+$10

    inc d
    ld a, [de]
    ld d, $04
    dec bc
    dec bc
    jr nz, jr_012_45fc

    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld c, $0b
    ld [$0402], sp
    ld a, [de]
    inc d
    dec c
    ld [$0e05], sp
    ld de, $080c
    ld [de], a
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    inc de
    ld d, $0e
    ld a, [de]

jr_012_45fc:
    ld [de], a
    ld [$0419], sp
    ld [de], a
    inc de
    ld c, $0e
    ld a, [de]
    ld bc, $0608
    jr nz, @+$21

    ld h, $13
    rlca
    nop
    dec c
    ld a, [bc]
    ld a, [de]
    jr jr_012_4621

    inc d
    dec h
    ld h, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    ld [de], a
    nop

jr_012_4621:
    jr @+$14

    dec e
    inc b
    jr jr_012_462b

    ld [$060d], sp
    ld a, [de]

jr_012_462b:
    jr jr_012_463b

    inc d
    ld a, [de]
    ld d, $00
    ld de, $0b08
    jr jr_012_465b

    ld h, $01
    inc d
    inc de
    ld a, [de]

jr_012_463b:
    jr jr_012_464b

    inc d
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    dec bc
    ld [$040a], sp
    jr jr_012_4658

    inc d

jr_012_464b:
    ld a, [de]
    dec c
    inc b
    inc b
    inc bc
    ld a, [de]
    ld [$1a13], sp
    inc c
    ld c, $11
    inc b

jr_012_4658:
    dec e
    inc de
    rlca

jr_012_465b:
    nop
    dec c
    ld a, [de]
    ld [$031a], sp
    ld c, $27
    ld h, $1f
    jr jr_012_4675

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    ld a, [de]
    inc bc
    ld [$060d], sp

jr_012_4675:
    jr jr_012_4694

    rlca
    ld c, $13
    inc b
    dec bc
    ld a, [de]
    ld bc, $1300
    rlca
    ld de, $0e0e
    inc c
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    inc d
    ld bc, $071a
    nop
    ld [de], a
    ld a, [de]
    inc c

jr_012_4694:
    ld c, $11
    inc b
    dec e
    ld de, $0d08
    ld b, $12
    ld a, [de]
    nop
    ld de, $140e
    dec c
    inc bc
    ld a, [de]
    ld [$1d13], sp
    inc de
    rlca
    nop
    dec c
    ld a, [de]
    ld [de], a
    nop
    inc de
    inc d
    ld de, $200d
    rra
    nop
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    inc bc
    ld c, $19
    inc b
    ld [de], a
    ld a, [de]
    ld bc, $0704
    ld [$030d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $0e1a
    dec b
    ld a, [de]
    inc de
    rlca
    inc b
    dec bc
    inc d
    ld b, $06
    nop
    ld b, $04
    ld a, [de]
    ld [bc], a
    dec bc
    nop
    ld [$200c], sp
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld [$0d06], sp
    ld a, [de]
    ld [de], a
    nop
    jr jr_012_4707

    dec e
    ld h, $0f
    ld de, $1204
    inc b
    dec c
    inc de
    ld a, [de]
    jr jr_012_470f

    inc d
    ld de, $021d
    dec bc
    nop

jr_012_4707:
    ld [$1a0c], sp
    inc de
    nop
    ld b, $1a
    inc de

jr_012_470f:
    ld c, $1d
    ld de, $0204
    inc b
    ld [$0415], sp
    ld a, [de]
    jr jr_012_4729

    inc d
    ld de, $0b1d
    inc d
    ld b, $06
    nop
    ld b, $04
    jr nz, jr_012_474d

    rra
    inc de

jr_012_4729:
    ld de, $0800
    dec c
    ld a, [de]
    ld [de], a
    ld [bc], a
    rlca
    inc b
    inc bc
    inc d
    dec bc
    inc b
    ld [de], a
    dec e
    ld [de], a
    ld [$1a13], sp
    rlca
    nop
    rrca
    rlca
    nop
    add hl, de
    nop
    ld de, $0b03
    jr jr_012_4765

    ld [$1a0d], sp
    inc de
    rlca

jr_012_474d:
    ld [$1a12], sp
    ld bc, $170e
    jr nz, jr_012_4774

    jr jr_012_4765

    inc d
    ld a, [de]
    ld [de], a
    inc de
    nop
    ld de, $1a04
    ld [$130d], sp
    ld c, $1a
    inc de

jr_012_4765:
    rlca
    inc b
    inc c
    ld [$1111], sp
    ld c, $11
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    inc b

jr_012_4774:
    inc b
    dec e
    jr jr_012_4786

    inc d
    ld de, $0412
    dec bc
    dec b
    inc h
    ld a, [de]
    nop
    ld [bc], a
    inc b
    dec e
    rlca
    nop

jr_012_4786:
    ld de, $0803
    dec c
    ld b, $25
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    ld c, $0d
    inc bc
    dec e
    ld de, $1300
    inc b
    ld a, [de]
    inc bc
    inc b
    inc de
    inc b
    ld [bc], a
    inc de
    ld [$0415], sp
    jr nz, jr_012_47c0

    jr jr_012_47b4

    inc d
    ld de, $071a
    nop
    ld b, $06
    nop
    ld de, $1a03
    dec b
    nop
    ld [bc], a

jr_012_47b4:
    inc b
    dec e
    ld de, $0c04
    ld [$030d], sp
    ld [de], a
    ld a, [de]
    jr jr_012_47ce

jr_012_47c0:
    inc d
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    ld [$0706], sp
    inc de
    inc c

jr_012_47ce:
    nop
    ld de, $1208
    rlca
    ld a, [de]
    inc de
    ld [$040c], sp
    dec e
    ld d, $07
    inc b
    dec c
    ld a, [de]
    jr jr_012_47ee

    inc d
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    dec c
    ld a, [hl+]
    inc de
    dec e
    ld de, $0c04

jr_012_47ee:
    inc b
    inc c
    ld bc, $1104
    ld a, [de]
    jr @+$10

    inc d
    ld de, $0e1a
    ld d, $0d
    dec e
    dec c
    nop
    inc c
    inc b
    jr nz, jr_012_4823

    jr nz, jr_012_4821

    jr nz, jr_012_4827

    jr nz, jr_012_4809

jr_012_4809:
    dec c
    inc bc
    ld a, [de]
    jr jr_012_481c

    inc d
    ld a, [de]
    ld d, $04
    ld de, $1d04
    ld [bc], a
    rlca
    nop
    ld de, $0406
    inc bc

jr_012_481c:
    ld a, [de]
    ld d, $08
    inc de
    rlca

jr_012_4821:
    ld a, [de]
    inc de

jr_012_4823:
    rlca
    inc b
    dec e
    inc c

jr_012_4827:
    inc d
    ld de, $0403
    ld de, $0e1a
    dec b
    ld a, [de]
    add hl, bc
    ld c, $04
    jr jr_012_4852

    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $16
    dec c
    inc b
    ld de, $0e1d
    dec b
    ld a, [de]
    add hl, bc
    ld c, $04
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    rrca
    dec bc

jr_012_4852:
    nop
    ld [bc], a
    inc b
    ld a, [de]
    ld [$1d0d], sp
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    jr nz, jr_012_4881

    jr jr_012_4872

    inc d
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    jr @+$10

jr_012_4872:
    inc d
    dec e
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    ld bc, $0404
    dec c
    ld a, [de]
    ld de, $0d14

jr_012_4881:
    ld a, [de]
    ld c, $15
    inc b
    ld de, $1801
    ld a, [de]
    nop
    ld a, [de]
    dec b
    ld de, $0804
    ld b, $07
    inc de
    dec e
    inc de
    ld de, $0800
    dec c
    jr nz, @+$21

    inc de
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    nop
    ld a, [de]
    inc de
    ld c, $16
    inc b
    dec bc
    dec e
    ld de, $030e
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $00
    inc de
    inc b
    ld de, $081a
    ld [de], a
    dec e
    ld de, $0d14
    dec c
    ld [$060d], sp
    jr nz, jr_012_48e4

    rlca
    ld c, $13
    ld a, [de]
    ld d, $00
    inc de
    inc b
    ld de, $061a
    inc d
    ld [de], a
    rlca
    inc b
    ld [de], a
    dec e
    ld c, $14
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    nop
    inc d

jr_012_48e4:
    ld [bc], a
    inc b
    inc de
    jr nz, @+$1e

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
    jr jr_012_491c

    dec e
    jr jr_012_4908

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    dec c
    ld c, $1a
    inc de
    ld [$040c], sp
    ld a, [de]
    dec b

jr_012_4908:
    ld c, $11
    nop
    ld a, [de]
    ld bc, $1300
    rlca
    ld a, [de]
    dec c
    ld c, $16
    jr nz, @+$21

    ld [de], a
    inc de
    inc b
    nop
    inc c
    ld a, [de]

jr_012_491c:
    ld de, $1208
    inc b
    ld [de], a
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0d14
    dec c
    ld [$060d], sp
    ld a, [de]
    rlca
    ld c, $13
    dec e
    ld d, $00
    inc de
    inc b
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    jr jr_012_4953

    inc d
    ld de, $0b1a
    inc d
    ld [bc], a
    ld a, [bc]
    jr jr_012_496b

    inc de
    ld de, $0d04
    ld [bc], a

jr_012_4953:
    rlca
    ld a, [de]
    ld [bc], a
    ld c, $00
    inc de
    dec h
    dec e
    ld [bc], a
    ld c, $0c
    rrca
    dec bc
    inc b
    inc de
    inc b
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec e

jr_012_496b:
    dec c
    inc b
    ld d, $1a
    ld [de], a
    inc b
    inc de
    ld a, [de]
    ld c, $05
    dec e
    ld d, $11
    ld [$0a0d], sp
    dec bc
    inc b
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    inc de
    nop
    ld [$120d], sp
    jr nz, jr_012_49aa

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    jr jr_012_49a0

    inc d
    ld de, $0f1a
    nop
    ld [$1a11], sp
    ld c, $05
    dec e
    ld b, $11
    nop

jr_012_49a0:
    jr jr_012_49bc

    rrca
    nop
    dec c
    inc de
    ld [de], a
    ld a, [de]
    ld d, $07

jr_012_49aa:
    ld [$0702], sp
    dec e
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]

jr_012_49bc:
    ld bc, $0300
    dec e
    nop
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    ld de, $0e1a
    dec bc
    inc bc
    dec e
    dec bc
    inc b
    nop
    inc de
    rlca
    inc b
    ld de, $161a
    nop
    dec bc
    dec bc
    inc b
    inc de
    jr nz, jr_012_4a08

    jr @+$10

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld b, $0e
    inc de
    inc de
    inc b
    dec c
    ld a, [de]
    inc c
    ld c, $11
    inc b
    ld d, $04
    nop
    ld de, $0e1a
    inc d
    inc de
    ld a, [de]
    ld c, $05

jr_012_4a08:
    ld a, [de]
    ld [$1d13], sp
    inc de
    rlca
    nop
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $16
    ld a, [de]
    inc bc
    ld [$2003], sp
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    dec bc
    inc bc
    inc b
    ld de, $180b
    dec e
    nop
    inc de
    inc de
    inc b
    dec c
    inc bc
    nop
    dec c
    inc de
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e
    jr jr_012_4a4a

    inc d
    ld de, $161a
    nop
    jr jr_012_4a63

    rra
    inc de
    rlca
    ld [$1a12], sp
    ld [de], a

jr_012_4a4a:
    inc d
    ld [$0213], sp
    nop
    ld [de], a
    inc b
    ld a, [de]
    rlca
    nop
    ld [de], a
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [$080d], sp
    inc de
    ld [$0b00], sp
    ld [de], a
    dec e

jr_012_4a63:
    ld h, $13
    jr nz, @+$03

    jr nz, @+$28

    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [$2013], sp
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    rlca
    inc b
    nop
    rrca
    dec e
    inc b
    inc c
    ld bc, $0e11
    ld [$0403], sp
    ld de, $1a18
    ld c, $0d
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $16
    inc b
    dec bc
    ld a, [de]
    ld de, $0004
    inc bc
    ld [de], a
    dec h
    dec e
    ld h, $0b
    inc d
    ld [bc], a
    ld a, [bc]
    jr jr_012_4abb

    inc bc
    ld [$0402], sp
    ld a, [de]
    rlca
    ld c, $13
    inc b
    dec bc
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    ld [$0e0d], sp
    jr nz, @+$28

    rra
    jr jr_012_4ac9

jr_012_4abb:
    inc d
    ld a, [de]
    ld de, $0204
    ld c, $06
    dec c
    ld [$0419], sp
    ld a, [de]
    inc de
    rlca

jr_012_4ac9:
    inc b
    dec e
    ld d, $04
    dec bc
    dec bc
    ld a, [de]
    ld d, $0e
    ld de, $1a0d
    ld bc, $0011
    ld [de], a
    ld [de], a
    dec e
    ld a, [bc]
    inc b
    jr jr_012_4af9

    inc de
    ld c, $1a
    jr jr_012_4af2

    inc d
    ld de, $001d
    rrca
    nop
    ld de, $0c13
    inc b
    dec c
    inc de
    jr nz, jr_012_4b11

jr_012_4af2:
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]

jr_012_4af9:
    dec b
    nop
    inc bc
    inc b
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
    ld [$0f0f], sp
    ld [$060d], sp

jr_012_4b11:
    ld [de], a
    rlca
    ld c, $16
    ld [$060d], sp
    ld a, [de]
    jr jr_012_4b29

    inc d
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld bc, $170e
    ld [$060d], sp

jr_012_4b29:
    ld a, [de]
    ld de, $0d08
    ld b, $1a
    ld d, $08
    inc de
    rlca
    dec e
    jr jr_012_4b44

    inc d
    ld de, $0e1a
    dec bc
    inc bc
    ld a, [de]
    ld [de], a
    rrca
    nop
    ld de, $0811
    dec c

jr_012_4b44:
    ld b, $1d
    rrca
    nop
    ld de, $0d13
    inc b
    ld de, $1a25
    ld de, $0314
    jr jr_012_4b71

    ld a, [bc]
    ld c, $16
    nop
    dec bc
    ld [de], a
    ld a, [bc]
    ld [$2020], sp
    jr nz, @+$1c

    inc e
    inc de
    rlca
    ld c, $12
    inc b
    ld a, [de]
    ld d, $04
    ld de, $1a04
    ld bc, $1304
    inc de
    inc b

jr_012_4b71:
    ld de, $031d
    nop
    jr @+$14

    dec h
    ld a, [de]
    ld [$030d], sp
    inc b
    inc b
    inc bc
    daa
    rra
    inc de
    rlca
    ld [$1a12], sp
    dec c
    inc b
    ld d, $12
    rrca
    nop
    rrca
    inc b
    ld de, $021d
    dec bc
    ld [$0f0f], sp
    ld [$060d], sp
    ld a, [de]
    ld [$1d12], sp
    dec b
    ld c, $0b
    inc bc
    inc b
    inc bc
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    jr jr_012_4bb8

    inc d
    dec e
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld de, $0004
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b

jr_012_4bb8:
    dec e
    rlca
    inc b
    nop
    inc bc
    dec bc
    ld [$040d], sp
    inc h
    inc e
    ld h, $00
    ld [bc], a
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    nop
    ld de, $1a12
    dec c
    nop
    inc c
    inc b
    dec e
    rrca
    ld de, $1508
    nop
    inc de
    inc b
    ld a, [de]
    inc b
    jr @+$06

    ld a, [de]
    inc de
    inc d
    ld de, $120d
    dec e
    inc de
    nop
    ld bc, $040b
    ld [de], a
    ld a, [de]
    nop
    inc de
    ld a, [de]
    dec bc
    nop
    ld [de], a
    inc de
    daa
    ld h, $1c
    ld [$1a13], sp
    inc c
    inc b
    dec c
    inc de
    ld [$0d0e], sp
    ld [de], a
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
    dec h
    ld a, [de]
    ld d, $07
    inc b
    ld de, $1a04
    add hl, bc
    ld c, $04
    jr jr_012_4c47

    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [de]
    ld d, $00
    ld [de], a
    dec e
    inc c
    inc d
    ld de, $0403
    ld de, $0304
    inc h
    inc e
    ld sp, $3630
    jr nc, @+$1c

    ld [de], a
    jr nz, jr_012_4c61

jr_012_4c47:
    rrca
    inc b
    ld c, $11
    ld [$1a00], sp
    ld [de], a
    inc de
    jr nz, @+$04

    rlca
    ld [$0002], sp
    ld b, $0e
    dec h
    ld a, [de]
    ld [$1f0b], sp
    ld [$2a13], sp
    ld [de], a

jr_012_4c61:
    ld a, [de]
    nop
    dec c
    ld a, [de]
    ld [$0b0b], sp
    ld [$0e0d], sp
    ld [$1d12], sp
    inc bc
    ld de, $1508
    inc b
    ld de, $122a
    ld a, [de]
    dec bc
    ld [$0402], sp
    dec c
    ld [de], a
    inc b
    dec e
    ld d, $07
    ld [$0702], sp
    ld a, [de]
    ld de, $0004
    inc bc
    ld [de], a
    inc h
    inc e
    inc de
    rlca
    inc b
    ld c, $03
    ld c, $11
    inc b
    ld a, [de]
    rlca
    nop
    ld de, $0803
    dec c
    ld b, $1d
    ld [hl-], a
    jr nc, jr_012_4cd3

    inc [hl]
    ld a, [de]
    ld d, $20
    ld a, [de]
    nop
    inc bc
    inc bc
    ld [$0e12], sp
    dec c
    dec e
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    dec h
    ld a, [de]
    ld [$0b0b], sp
    ld [$0e0d], sp
    ld [$1f12], sp
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    inc b
    inc c
    rrca
    inc de
    jr jr_012_4ce7

    rrca
    nop
    ld [bc], a
    ld a, [bc]
    ld c, $05

jr_012_4cd3:
    ld a, [de]
    ld b, $14
    inc c
    jr nz, jr_012_4cf8

    ld bc, $180e
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    nop

jr_012_4ce7:
    ld a, [de]
    dec bc
    ld c, $13
    ld c, $05
    ld a, [de]
    inc bc
    ld [$1311], sp
    jr jr_012_4d0e

    dec bc
    ld [$040d], sp

jr_012_4cf8:
    dec c
    ld [de], a
    dec e
    ld [$1a0d], sp
    rlca
    inc b
    ld de, $2004
    rra
    jr jr_012_4d14

    inc d
    ld a, [de]
    ld [de], a
    inc de
    ld [$0a02], sp
    ld a, [de]

jr_012_4d0e:
    jr @+$10

    inc d
    ld de, $071d

jr_012_4d14:
    inc b
    nop
    inc bc
    ld a, [de]
    inc d
    dec c
    inc bc
    inc b
    ld de, $131a
    rlca
    inc b
    dec e
    dec b
    nop
    inc d
    ld [bc], a
    inc b
    inc de
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0b
    inc bc
    ld a, [de]
    ld d, $00
    inc de
    inc b
    ld de, $121d
    rlca
    ld c, $02
    ld a, [bc]
    ld [de], a
    ld a, [de]
    jr jr_012_4d50

    inc d
    ld a, [de]
    nop
    ld d, $00
    ld a, [bc]
    inc b
    daa
    rra
    jr jr_012_4d5b

    inc d
    ld a, [de]
    ld [de], a

jr_012_4d50:
    inc de
    ld [$0a02], sp
    ld a, [de]
    jr @+$10

    inc d
    ld de, $071d

jr_012_4d5b:
    inc b
    nop
    inc bc
    ld a, [de]
    inc d
    dec c
    inc bc
    inc b
    ld de, $131a
    rlca
    inc b
    dec e
    dec b
    dec bc
    ld c, $16
    ld [$060d], sp
    ld a, [de]
    ld d, $00
    inc de
    inc b
    ld de, $1c20
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    inc b
    rrca
    ld [$1a03], sp
    ld d, $00
    inc de
    inc b
    ld de, $051d
    inc b
    inc b
    dec bc
    ld [de], a
    ld a, [de]
    ld b, $0e
    ld c, $03
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld de, $0504
    ld de, $1204
    rlca
    ld [$060d], sp
    jr nz, jr_012_4dc2

    jr jr_012_4db3

    inc d
    ld a, [de]
    ld [de], a
    inc de
    ld [$0a02], sp
    ld a, [de]
    jr @+$10

    inc d
    ld de, $071d

jr_012_4db3:
    inc b
    nop
    inc bc
    ld a, [de]
    inc d
    dec c
    inc bc
    inc b
    ld de, $131a
    rlca
    inc b
    dec e
    dec b

jr_012_4dc2:
    nop
    inc d
    ld [bc], a
    inc b
    inc de
    jr nz, jr_012_4de5

    jr @+$10

    ld d, $02
    rlca
    daa
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    ld c, $13
    dec e
    ld d, $00
    inc de
    inc b
    ld de, $121a
    ld [bc], a
    nop
    dec bc
    inc bc
    ld [de], a
    ld a, [de]

jr_012_4de5:
    jr jr_012_4df5

    inc d
    ld de, $071d
    inc b
    nop
    inc bc
    daa
    rra
    jr jr_012_4e00

    inc d
    ld a, [de]
    ld [de], a

jr_012_4df5:
    ld c, $00
    ld a, [bc]
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $16

jr_012_4e00:
    inc b
    dec bc
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $00
    inc de
    inc b
    ld de, $001a
    dec c
    inc bc
    dec e
    inc bc
    nop
    ld [$130d], sp
    ld [$180b], sp
    ld a, [de]
    inc bc
    nop
    ld bc, $181a
    ld c, $14
    ld de, $051d
    ld c, $11
    inc b
    rlca
    inc b
    nop
    inc bc
    jr nz, jr_012_4e4b

    rlca
    ld c, $16
    ld a, [de]
    ld [de], a
    ld c, $0f
    rlca
    ld [$1312], sp
    ld [$0002], sp
    inc de
    inc b
    inc bc
    daa
    rra
    jr jr_012_4e52

    inc d
    ld a, [de]
    ld d, $08
    rrca
    inc b
    ld a, [de]

jr_012_4e4b:
    jr jr_012_4e5b

    inc d
    ld de, $051a
    nop

jr_012_4e52:
    ld [bc], a
    inc b
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca

jr_012_4e5b:
    inc b
    ld a, [de]
    inc de
    ld c, $16
    inc b
    dec bc
    dec e
    inc de
    ld de, $0818
    dec c
    ld b, $1a
    inc de
    ld c, $1a
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    dec e
    nop
    ld d, $00
    jr jr_012_4e92

    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $11
    ld [$040c], sp
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    ld [de], a
    inc de
    ld a, [de]
    dec b
    inc b
    ld d, $1a

jr_012_4e92:
    inc bc
    nop
    jr jr_012_4ea8

    jr nz, jr_012_4eb7

    inc c
    nop
    jr jr_012_4e9d

    inc b

jr_012_4e9d:
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    dec e
    ld d, $07
    inc b

jr_012_4ea8:
    ld de, $1a04
    inc de
    rlca
    inc b
    ld a, [de]
    ld sp, $3231
    dec h
    jr nc, jr_012_4ee5

    jr nc, @+$1f

jr_012_4eb7:
    ld [bc], a
    dec bc
    nop
    inc c
    ld [de], a
    ld a, [de]
    ld [$1a12], sp
    rlca
    ld [$0303], sp
    inc b
    dec c
    jr nz, jr_012_4ee8

    jr nz, jr_012_4ee9

    ld [de], a
    ld [bc], a
    ld de, $1600
    dec bc
    inc b
    inc bc
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    inc b
    dec c
    dec d
    inc b
    dec bc
    ld c, $0f
    inc b
    ld a, [de]
    nop

jr_012_4ee5:
    ld de, $1a04

jr_012_4ee8:
    inc de

jr_012_4ee9:
    rlca
    inc b
    dec e
    ld d, $0e
    ld de, $1203
    inc h
    dec e
    ld h, $00
    dec c
    inc de
    rlca
    ld c, $0d
    jr jr_012_4f16

    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    dec h
    dec e
    dec bc
    inc d
    ld [bc], a
    ld a, [bc]
    jr jr_012_4f24

    inc bc
    ld [$0402], sp
    ld a, [de]
    rlca
    ld c, $13
    inc b
    dec bc
    dec e
    nop

jr_012_4f16:
    dec c
    inc bc
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    ld [$0e0d], sp
    jr nz, jr_012_4f47

    rra
    ld d, $08

jr_012_4f24:
    inc de
    rlca
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $1a18
    ld bc, $0004
    inc de
    ld a, [de]
    ld c, $05
    jr jr_012_4f44

    inc d
    ld de, $071a
    inc b
    nop
    ld de, $2513
    ld a, [de]
    jr @+$10

    inc d
    dec e

jr_012_4f44:
    dec b
    inc b
    inc b

jr_012_4f47:
    dec bc
    ld a, [de]
    jr @+$10

    inc d
    ld de, $0b1a
    ld [$0405], sp
    dec e
    ld [de], a
    dec bc
    ld [$0f0f], sp
    ld [$060d], sp
    ld a, [de]
    nop
    ld d, $00
    jr jr_012_4f81

    jr nz, jr_012_4f83

    inc e
    ld [de], a
    ld c, $0e
    dec c
    dec h
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $1318
    rlca
    ld [$060d], sp
    dec e
    ld b, $0e
    inc b
    ld [de], a
    ld a, [de]
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    nop

jr_012_4f81:
    dec c
    inc bc

jr_012_4f83:
    ld a, [de]
    jr @+$10

    inc d
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]
    dec c
    ld c, $1a
    inc c
    ld c, $11
    inc b
    jr nz, jr_012_4fb5

    jr nz, jr_012_4fb6

    jr jr_012_4fa7

    inc d
    ld a, [de]
    rrca
    inc d
    inc de
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de

jr_012_4fa7:
    ld de, $0d04
    ld [bc], a
    rlca
    ld a, [de]
    ld [bc], a
    ld c, $00
    inc de
    jr nz, jr_012_4fd2

    jr jr_012_4fc3

jr_012_4fb5:
    inc d

jr_012_4fb6:
    ld a, [de]
    ld [de], a
    dec bc
    ld [$1a0f], sp
    ld [$130d], sp
    ld c, $1a
    jr jr_012_4fd1

jr_012_4fc3:
    inc d
    ld de, $000f
    dec c
    inc de
    ld [de], a
    jr nz, jr_012_4feb

    nop
    ld [de], a
    ld a, [de]
    jr jr_012_4fdf

jr_012_4fd1:
    inc d

jr_012_4fd2:
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    nop
    rrca

jr_012_4fdf:
    inc b
    ld de, $1a25
    nop
    dec c
    ld a, [de]
    ld c, $0b
    inc bc
    dec e
    ld [bc], a

jr_012_4feb:
    dec bc
    ld [$0f0f], sp
    ld [$060d], sp
    ld a, [de]
    dec b
    nop
    dec bc
    dec bc
    ld [de], a
    dec e
    ld c, $14
    inc de
    jr nz, jr_012_501d

    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1a04
    nop
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $1d20
    jr jr_012_5025

    rrca
    dec h
    ld a, [de]
    rlca
    nop
    dec c
    inc bc
    dec bc
    inc b
    ld a, [de]
    nop
    dec c

jr_012_501d:
    inc bc
    dec e
    rlca
    ld [$060d], sp
    inc b
    ld [de], a

jr_012_5025:
    ld hl, $081a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    dec e
    inc bc
    ld c, $0e
    ld de, $001a
    dec bc
    ld de, $0608
    rlca
    inc de
    daa
    rra
    dec b
    ld c, $11
    ld a, [de]
    dec c
    ld c, $1a
    ld c, $13
    rlca
    inc b
    ld de, $111d
    inc b
    nop
    ld [de], a
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    nop
    dec c
    ld a, [de]
    jr jr_012_5065

    inc d
    dec e
    ld [bc], a
    nop
    dec c
    dec h
    ld a, [de]
    jr jr_012_506e

    inc d
    ld a, [de]
    ld bc, $0e0b

jr_012_5065:
    ld d, $1a
    inc de
    rlca
    inc b
    dec e
    rrca
    ld c, $0e

jr_012_506e:
    ld de, $121a
    dec bc
    ld c, $01
    ld a, [de]
    nop
    ld d, $00
    jr jr_012_509a

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
    ld [de], a
    jr nz, @+$21

    ld d, $07
    nop
    inc de
    ld a, [de]
    nop
    ld de, $1a04
    jr jr_012_50a5

    inc d
    dec e
    inc bc

jr_012_509a:
    ld c, $08
    dec c
    ld b, $20
    jr nz, jr_012_50c1

    jr z, @+$21

    ld c, $14

jr_012_50a5:
    ld [bc], a
    rlca
    daa
    rra
    ld [$1a0d], sp
    inc de
    rlca
    ld [$1a12], sp
    rrca
    ld [$1302], sp
    inc d
    ld de, $2504
    dec e
    ld [de], a
    inc b
    ld [$0406], sp
    dec bc
    ld a, [de]

jr_012_50c1:
    ld [$1a12], sp
    ld [de], a
    rlca
    nop
    ld a, [bc]
    ld [$060d], sp
    dec e
    rlca
    nop
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    inc de
    rlca
    ld [$1d0d], sp
    ld b, $14
    jr jr_012_50fc

    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld h, $11
    inc b
    dec bc
    ld [$0d00], sp
    inc de
    dec e
    ld [bc], a

jr_012_50fc:
    dec bc
    inc b
    nop
    dec c
    inc b
    ld de, $2012
    ld h, $1c
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    ld de, $1d25
    jr jr_012_5126

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [$080d], sp
    inc de

jr_012_5126:
    ld [$0b00], sp
    ld [de], a
    ld a, [de]
    ld h, $03
    jr nz, jr_012_5144

    jr nz, @+$28

    dec e
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    ld [$1a0d], sp
    ld b, $14
    jr @+$2c

    ld [de], a
    dec e

jr_012_5144:
    rlca
    nop
    dec c
    inc bc
    ld a, [bc]
    inc b
    ld de, $0702
    ld [$0504], sp
    jr nz, @+$21

    jr jr_012_5162

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    ld a, [de]
    ld [bc], a
    rlca
    inc b
    nop

jr_012_5162:
    rrca
    dec h
    inc c
    inc b
    ld [de], a
    ld [de], a
    jr @+$1c

    rlca
    ld c, $13
    inc b
    dec bc
    ld a, [de]
    ld de, $0e0e
    inc c
    jr nz, @+$1f

    ld bc, $1314
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    nop
    ld b, $00
    ld [$250d], sp
    dec e
    ld d, $07
    ld c, $2a
    ld [de], a
    ld a, [de]
    ld [bc], a
    ld c, $0c
    rrca
    dec bc
    nop
    ld [$080d], sp
    dec c
    ld b, $27
    rra
    rlca
    inc c
    inc c
    ld a, [de]
    ld [$130d], sp
    inc b
    ld de, $1204
    inc de
    ld [$060d], sp
    jr nz, jr_012_51ca

    jr nz, @+$1a

    ld c, $14
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $161a
    rlca
    ld c, $1d
    inc de
    rlca
    ld [$1a12], sp
    ld b, $14
    jr @+$1c

    ld [$1a12], sp
    nop
    dec c
    inc bc
    dec e

jr_012_51ca:
    rlca
    ld c, $16
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    dec c
    inc b
    ld d, $1d
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    jr z, jr_012_51fd

    nop
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    ld de, $0404
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    ld c, $05
    dec e
    ld [bc], a
    ld [$0006], sp
    ld de, $121a
    inc c
    ld c, $0a
    inc b
    dec e
    nop
    rrca

jr_012_51fd:
    rrca
    inc b
    nop
    ld de, $1a12
    ld c, $14
    inc de
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $140b
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    nop
    jr jr_012_522d

    jr nz, jr_012_523d

    jr nz, @+$21

    ld h, $09
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104

jr_012_522d:
    dec e
    rrca
    nop
    dec bc
    dec h
    ld a, [de]
    ld [$061a], sp
    ld c, $13
    dec e
    ld [$120d], sp
    inc de

jr_012_523d:
    ld de, $0214
    inc de
    ld [$0d0e], sp
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    ld a, [bc]
    inc b
    inc b
    rrca
    ld a, [de]
    inc c
    jr jr_012_526b

    inc b
    jr jr_012_5258

    ld [de], a
    ld a, [de]
    ld c, $0d

jr_012_5258:
    dec e
    jr @+$10

    inc d
    jr nz, jr_012_527a

    ld [de], a
    ld c, $25
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    ld bc, $1d04

jr_012_526b:
    ld b, $04
    inc de
    inc de
    ld [$060d], sp
    ld a, [de]
    dec c
    ld c, $1a
    dec b
    inc d
    dec c
    dec c

jr_012_527a:
    jr jr_012_5299

    ld [$0403], sp
    nop
    ld [de], a
    ld a, [de]
    ld c, $11
    ld a, [de]
    dec c
    inc d
    inc de
    inc de
    ld [$200d], sp
    ld h, $1f
    ld [de], a
    inc de
    ld c, $06
    ld [$1a04], sp
    dec bc
    inc b
    nop
    dec d

jr_012_5299:
    inc b
    ld [de], a
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0e0e
    inc c
    jr nz, jr_012_52c0

    nop
    dec e
    inc bc
    ld [$0212], sp
    nop
    ld de, $0403
    inc bc
    ld a, [de]
    ld [bc], a
    ld [$0006], sp
    ld de, $111d
    ld [$060d], sp
    ld a, [de]
    ld [$1a12], sp

jr_012_52c0:
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_012_52e6

    ld [$030d], sp
    ld [$0002], sp
    inc de
    ld [$0d0e], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    rlca
    inc b
    ld d, $00
    ld [de], a
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $071a
    inc b

jr_012_52e6:
    ld de, $2004
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld c, $16
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc de
    ld c, $0e
    dec e
    ld b, $11
    ld [$180c], sp
    ld a, [de]
    inc de
    ld c, $1a
    ld [de], a
    inc b
    inc b
    dec e
    inc de
    rlca
    ld de, $140e
    ld b, $07
    jr nz, jr_012_5330

    jr jr_012_5321

    inc d
    ld a, [de]
    inc bc
    ld c, $14
    ld bc, $1a13
    inc de
    rlca
    nop
    inc de
    dec e
    nop

jr_012_5321:
    dec c
    jr jr_012_5332

    dec c
    inc b
    ld a, [de]
    ld d, $0e
    inc d
    dec bc
    inc bc
    ld a, [de]
    ld d, $00
    dec c

jr_012_5330:
    inc de
    dec e

jr_012_5332:
    inc de
    ld c, $1a
    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld de, $1204
    ld [de], a
    dec e
    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    inc bc
    ld de, $0f00
    inc b
    ld [de], a
    jr nz, jr_012_5374

    ld [$1a05], sp
    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    dec bc
    inc b
    inc b
    rrca
    ld a, [de]
    dec c
    ld c, $16
    dec h
    dec e
    jr jr_012_5377

    inc d
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    ld c, $0d
    dec bc
    jr @+$1c

    rlca

jr_012_5374:
    nop
    dec d
    inc b

jr_012_5377:
    dec e
    inc bc
    ld de, $0004
    inc c
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    dec e
    inc de
    inc b
    nop
    ld de, $0d08
    ld b, $1a
    jr @+$10

    inc d
    ld a, [de]
    inc de
    ld c, $1d
    rrca
    ld [$0204], sp
    inc b
    ld [de], a
    daa
    rra
    jr jr_012_53b0

    inc d
    ld a, [de]
    nop
    ld de, $1d04
    inc bc
    ld [$0012], sp
    rrca
    rrca
    ld c, $08

jr_012_53b0:
    dec c
    inc de
    inc b
    inc bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    inc de
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    dec c
    ld c, $13
    ld a, [de]
    nop
    dec e
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    dec d
    inc b
    dec bc
    dec d
    inc b
    inc de
    dec e
    rrca
    nop
    ld [$130d], sp
    ld [$060d], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    nop
    dec e
    inc c
    nop
    inc de
    nop
    inc bc
    ld c, $11
    ld a, [de]
    ld c, $11
    dec e
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    jr nz, jr_012_5418

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0004
    inc de
    ld a, [de]
    inc d
    rrca
    dec e
    inc bc
    ld de, $1204
    ld [de], a
    inc b
    ld de, $1f20
    inc de
    ld d, $0e
    ld a, [de]
    ld [$020d], sp

jr_012_5418:
    rlca
    inc b
    ld [de], a
    ld a, [de]
    ld c, $05
    dec e
    inc bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld [bc], a
    ld c, $00
    inc de
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    dec c
    ld [$0706], sp
    inc de
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    jr nz, jr_012_5459

    inc de
    rlca
    ld [$1a12], sp
    ld d, $00
    ld [de], a
    inc de
    inc b
    ld bc, $1200
    ld a, [bc]
    inc b
    inc de
    dec e
    ld [$1a12], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    inc b
    ld [de], a

jr_012_5459:
    inc de
    dec e
    ld [$0413], sp
    inc c
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    ld [$1a12], sp
    ld de, $0e0e
    inc c
    jr nz, jr_012_548d

    nop
    ld a, [de]
    dec b
    ld c, $0b
    inc bc
    inc b
    inc bc
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    dec e
    ld [de], a
    ld [bc], a
    rlca
    inc b
    inc bc
    inc d
    dec bc
    inc b
    ld a, [de]
    nop
    dec bc
    ld d, $00
    jr @+$14

    dec e

jr_012_548d:
    ld [bc], a
    ld c, $0c
    inc b
    ld [de], a
    ld a, [de]
    ld [$1a0d], sp
    rlca
    nop
    dec c
    inc bc
    jr jr_012_54bc

    rra
    ld h, $00
    ld a, [de]
    ld b, $14
    ld [$0403], sp
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    dec c
    inc b
    ld d, $1a
    ld [$050d], sp
    ld c, $11
    inc c
    nop
    inc de
    ld [$0d0e], sp

jr_012_54bc:
    dec e
    inc de
    nop
    ld bc, $040b
    inc h
    inc e
    ld [$010d], sp
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    ld hl, $1d21
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
    nop
    ld de, $0811
    dec d
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    rlca
    ld c, $11
    inc de
    dec bc
    jr jr_012_5512

    inc e
    nop
    ld de, $0811
    dec d
    inc b
    inc bc
    ld a, [de]
    ld hl, $1d21
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    rlca
    nop
    ld [de], a
    dec e
    nop
    ld de, $0811
    dec d
    inc b

jr_012_5512:
    inc bc
    jr nz, jr_012_5531

    ld bc, $000e
    ld de, $0803
    dec c
    ld b, $1a
    ld hl, $1d21
    rrca
    nop
    ld [de], a
    ld [de], a
    inc b
    dec c
    ld b, $04
    ld de, $1a12
    ld [bc], a
    nop
    dec c
    ld a, [de]
    dec c

jr_012_5531:
    ld c, $16
    ld bc, $000e
    ld de, $1a03
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    jr nz, @+$1e

    inc bc
    inc b
    rrca
    nop
    ld de, $0813
    dec c
    ld b, $1a
    ld hl, $1d21
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    ld [$1a12], sp
    nop
    ld bc, $140e
    inc de
    inc de
    ld c, $1a
    dec bc
    inc b
    nop
    dec d
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    jr nz, jr_012_5595

    ld c, $14
    inc de
    ld bc, $140e
    dec c
    inc bc
    ld a, [de]
    ld hl, $1d21
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    rlca
    nop
    ld [de], a
    ld a, [de]
    dec bc
    inc b

jr_012_5595:
    dec b
    inc de
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    jr nz, jr_012_55ca

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    ld [$0006], sp
    ld de, $111a
    ld [$060d], sp
    jr nz, jr_012_55b8

jr_012_55b8:
    rrca
    rrca
    nop
    ld de, $0d04
    inc de
    dec bc
    jr jr_012_55dc

    ld [de], a
    inc de
    ld c, $06
    ld [$1d04], sp
    inc c

jr_012_55ca:
    nop
    ld de, $0813
    dec c
    ld a, [de]
    inc bc
    ld de, $0f0e
    rrca
    inc b
    inc bc
    ld a, [de]
    ld [$2013], sp
    inc e

jr_012_55dc:
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1d04
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_012_560e

    ld b, $0e
    ld c, $0d
    ld a, [de]
    ld d, $07
    ld c, $1d
    ld [de], a
    inc c
    ld c, $0a
    inc b
    ld [de], a
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    ld bc, $0011
    dec c
    inc bc

jr_012_560e:
    dec e
    ld c, $05
    ld a, [de]
    ld [de], a
    inc c
    inc b
    dec bc
    dec bc
    jr @+$1c

    ld [bc], a
    ld [$0006], sp
    ld de, $2712
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rlca
    nop
    ld de, $2503
    dec e
    dec bc
    inc d
    inc c
    rrca
    jr jr_012_564e

    rrca
    ld [$0b0b], sp
    ld c, $16
    jr nz, jr_012_565b

    inc de
    rlca
    ld [$1a12], sp
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $081a
    ld [de], a
    dec e
    nop
    inc bc
    inc bc

jr_012_564e:
    ld de, $1204
    ld [de], a
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $1d
    nop
    dec c
    inc de

jr_012_565b:
    rlca
    ld c, $0d
    jr jr_012_567a

    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    jr nz, @+$21

    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $130e
    inc de
    ld c, $0c
    ld a, [de]
    ld c, $05
    dec e
    inc de

jr_012_567a:
    rlca
    inc b
    ld a, [de]
    dec b
    ld c, $0b
    inc bc
    inc b
    inc bc
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    dec e
    ld [de], a
    ld [bc], a
    rlca
    inc b
    inc bc
    inc d
    dec bc
    inc b
    ld a, [de]
    ld [$1a12], sp
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    ld a, [de]
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    dec e
    nop
    inc bc
    inc bc
    ld de, $1204
    ld [de], a
    jr nz, jr_012_56d2

    nop
    ld a, [de]
    dec bc
    ld [$1312], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    dec b
    nop
    ld de, $1204
    ld a, [de]
    ld [$0812], sp
    dec c
    ld [bc], a
    dec bc
    inc d
    inc bc
    inc b
    inc bc
    jr nz, jr_012_56eb

    dec bc
    nop
    ld [de], a

jr_012_56d2:
    ld a, [de]
    dec d
    inc b
    ld b, $00
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    ld a, [de]
    ld a, [de]
    dec c
    inc b
    ld d, $1a
    jr jr_012_56f2

    ld de, $1a0a
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld b, c

jr_012_56eb:
    inc sp
    dec [hl]
    dec e
    dec bc
    nop
    ld [de], a
    ld a, [de]

jr_012_56f2:
    dec d
    inc b
    ld b, $00
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    ld a, [de]
    ld a, [de]
    ld [de], a
    inc de
    jr nz, jr_012_571b

    dec bc
    ld c, $14
    ld [$1a12], sp
    ld a, [de]
    ld a, [de]
    ld b, c
    ld sp, $1d35
    dec bc
    nop
    ld [de], a
    ld a, [de]
    dec d
    inc b
    ld b, $00
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    ld a, [de]

jr_012_571b:
    ld a, [de]
    dec bc
    ld c, $12
    ld a, [de]
    nop
    dec c
    ld b, $04
    dec bc
    inc b
    ld [de], a
    ld a, [de]
    ld b, c
    ld sp, $1d35
    dec bc
    nop
    ld [de], a
    ld a, [de]
    dec d
    inc b
    ld b, $00
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    ld a, [de]
    ld a, [de]
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld b, c
    ld [hl-], a
    jr nc, jr_012_576a

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld de, $0c14
    rrca
    dec bc
    inc b
    inc bc
    ld a, [de]
    rrca
    ld [$0204], sp
    inc b
    ld c, $05
    ld a, [de]
    rrca
    nop
    rrca
    inc b
    ld de, $111a
    inc b
    nop
    inc bc

jr_012_576a:
    ld [de], a
    inc h
    inc e
    ld h, $12
    inc de
    ld c, $06
    ld [$2504], sp
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    nop
    jr jr_012_578a

    inc b
    dec c
    inc de
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    dec bc
    nop
    ld a, [de]

jr_012_578a:
    ld [$0e12], sp
    dec d
    inc b
    ld de, $1403
    inc b
    jr nz, jr_012_57af

    ld [bc], a
    rlca
    inc b
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld [$1d13], sp
    ld c, $14
    inc de
    ld a, [de]
    nop
    dec c
    inc bc
    dec h
    ld a, [de]
    ld [$1d05], sp
    dec c
    inc b
    ld [bc], a
    inc b
    ld [de], a

jr_012_57af:
    ld [de], a
    nop
    ld de, $2518
    ld a, [de]
    dec bc
    inc b
    nop
    dec c
    ld a, [de]
    ld c, $0d
    ld b, $08
    ld c, $0d
    inc b
    dec bc
    dec bc
    ld [$051a], sp
    ld c, $11
    ld a, [de]
    inc c
    inc b
    jr nz, jr_012_57ea

    ld hl, $2013
    inc c
    jr nz, @+$28

    rra
    ld bc, $0d00
    ld b, $27
    rra
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld d, $00
    ld [de], a
    dec e
    rrca
    ld de, $030e
    inc d
    ld [bc], a
    inc de

jr_012_57ea:
    ld [$0415], sp
    jr nz, jr_012_580f

    jr nz, jr_012_5810

    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    ld [bc], a
    ld de, $1300
    ld [bc], a
    rlca
    inc b
    inc bc
    ld a, [de]
    ld [$2713], sp
    inc e
    jr jr_012_5813

    inc d
    ld a, [de]
    ld b, $14
    ld [$130b], sp
    ld [$180b], sp

jr_012_580f:
    dec e

jr_012_5810:
    ld b, $0b
    nop

jr_012_5813:
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    nop
    ld de, $140e
    dec c
    inc bc
    dec e
    rlca
    ld c, $0f
    ld [$060d], sp
    ld a, [de]
    dec c
    ld c, $1a
    ld c, $0d
    inc b
    dec e
    dec c
    ld c, $13
    ld [$0402], sp
    inc bc
    jr nz, @+$21

    nop
    ld [de], a
    ld a, [de]
    jr jr_012_5848

    inc d
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca
    inc b

jr_012_5848:
    ld a, [de]
    rlca
    ld c, $13
    inc b
    dec bc
    ld a, [de]
    rlca
    nop
    dec bc
    dec bc
    ld d, $00
    jr jr_012_587c

    jr jr_012_5867

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    rlca
    inc b
    nop
    ld de, $131a
    rlca
    inc b

jr_012_5867:
    dec e
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld b, $00
    inc c
    ld bc, $080b
    dec c
    ld b, $08
    dec c

jr_012_587c:
    ld a, [de]
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
    jr nz, jr_012_58aa

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld [$1211], sp
    inc de
    dec e
    dec b
    dec bc
    ld c, $0e
    ld de, $071a
    nop
    dec bc
    dec bc
    ld d, $00
    jr jr_012_58c8

    rra
    inc de

jr_012_58aa:
    rlca
    ld [$1a12], sp
    inc de
    nop
    ld bc, $040b
    ld a, [de]
    ld bc, $040b
    dec c
    inc bc
    ld [de], a
    dec e
    ld [$1a0d], sp
    ld d, $04
    dec bc
    dec bc
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]

jr_012_58c8:
    inc de
    rlca
    inc b
    dec e
    rlca
    ld c, $13
    inc b
    dec bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc bc
    inc b
    ld [bc], a
    ld c, $11
    jr nz, jr_012_58fa

    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    ld [$0706], sp
    inc de
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    inc de
    ld [de], a
    ld a, [de]
    nop
    dec e
    ld d, $00
    ld de, $250c
    ld a, [de]
    ld b, $0e
    dec bc
    inc bc
    inc b
    dec c
    ld a, [de]

jr_012_58fa:
    ld b, $0b
    ld c, $16
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc de
    nop
    ld [bc], a
    ld a, [bc]
    jr jr_012_5927

    dec bc
    ld [$0706], sp
    inc de
    dec b
    ld [$1317], sp
    inc d
    ld de, $2004
    rra
    inc de
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    nop
    dec c
    dec e
    inc b

jr_012_5927:
    dec bc
    inc b
    dec d
    nop
    inc de
    ld c, $11
    ld a, [de]
    ld bc, $1314
    inc de
    ld c, $0d
    jr nz, jr_012_5956

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    ld [$0d06], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    ld de, $0004
    inc bc
    ld [de], a
    dec h
    ld a, [de]
    ld h, $02
    nop
    ld [de], a
    ld [$0e0d], sp

jr_012_5956:
    jr nz, @+$28

    rra
    inc de
    rlca
    ld [$1a12], sp
    rrca
    dec bc
    nop
    dec c
    inc de
    ld a, [de]
    ld [$1a12], sp
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
    ld d, $00
    inc de
    inc b
    ld de, $0d08
    ld b, $20
    rra
    ld h, $12
    ld c, $0d
    dec h
    ld a, [de]
    jr jr_012_5999

    inc d
    ld a, [de]
    ld de, $0004
    dec bc
    dec bc
    jr jr_012_59b1

    ld [de], a
    rlca
    ld c, $14
    dec bc

jr_012_5999:
    inc bc
    ld a, [de]
    db $10
    inc d
    ld [$2513], sp
    ld h, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    ld [de], a
    nop
    jr jr_012_59c0

    ld a, [de]
    ld d, $08

jr_012_59b1:
    inc de
    rlca
    dec e
    nop
    ld a, [de]
    dec b
    ld de, $160e
    dec c
    jr nz, jr_012_59dc

    jr @+$10

    inc d

jr_012_59c0:
    ld a, [de]
    rrca
    inc d
    inc de
    ld a, [de]
    jr jr_012_59d5

    inc d
    ld de, $041a
    nop
    ld de, $131d
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]

jr_012_59d5:
    inc bc
    ld c, $0e
    ld de, $1d25
    rlca

jr_012_59dc:
    ld c, $0f
    ld [$060d], sp
    ld a, [de]
    inc de
    ld c, $1a
    rlca
    inc b
    nop
    ld de, $121d
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    jr nz, jr_012_5a0f

    ld bc, $1314
    dec e
    nop
    dec bc
    dec bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    db $10
    inc d
    ld [$1304], sp
    jr nz, jr_012_5a25

    inc de
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    inc b
    dec bc
    inc b

jr_012_5a0f:
    dec d
    nop
    inc de
    ld c, $11
    dec e
    inc bc
    ld c, $0e
    ld de, $1a12
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    dec e

jr_012_5a25:
    ld de, $0204
    inc b
    dec c
    inc de
    dec bc
    jr jr_012_5a48

    ld bc, $0404
    dec c
    dec e
    rrca
    nop
    ld [$130d], sp
    inc b
    inc bc
    jr nz, jr_012_5a56

    inc de
    rlca
    inc b
    jr @+$1f

    ld de, $0404
    ld a, [bc]
    daa
    rra
    inc de

jr_012_5a48:
    rlca
    inc b
    ld a, [de]
    ld [hl-], a
    dec c
    inc bc
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $071d

jr_012_5a56:
    nop
    dec bc
    dec bc
    ld d, $00
    jr jr_012_5a77

    ld [$1a12], sp
    inc b
    inc b
    ld de, $0b08
    jr jr_012_5a84

    db $10
    inc d
    ld [$1304], sp
    jr nz, jr_012_5a8d

    dec c
    ld c, $13
    ld a, [de]
    ld bc, $0300
    ld a, [de]
    dec b

jr_012_5a77:
    ld c, $11
    ld a, [de]
    rlca
    ld c, $13
    inc b
    dec bc
    dec e
    nop
    ld de, $2013

jr_012_5a84:
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    dec bc
    nop
    dec c

jr_012_5a8d:
    inc de
    ld a, [de]
    rlca
    nop
    ld [de], a
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld [de], a
    inc de
    nop
    ld de, $0413
    inc bc
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $0e0b
    ld c, $0c
    jr nz, jr_012_5ac8

    inc de
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    ld c, $01
    dec d
    ld [$140e], sp
    ld [de], a
    dec bc
    jr jr_012_5ad8

    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $131a
    ld c, $1a
    nop

jr_012_5ac8:
    dec e
    rlca
    ld c, $13
    inc b
    dec bc
    ld a, [de]
    ld de, $0e0e
    inc c
    jr nz, jr_012_5af4

    nop
    ld a, [de]
    dec b

jr_012_5ad8:
    nop
    ld [$130d], sp
    ld a, [de]
    ld [de], a
    ld [bc], a
    inc d
    dec b
    dec b
    dec bc
    ld [$060d], sp
    dec e
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld bc, $1a04
    rlca
    inc b
    nop
    ld de, $1a03

jr_012_5af4:
    ld c, $0d
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $13
    rlca
    inc b
    ld de, $121a
    ld [$0403], sp
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    ld [$1a12], sp
    inc bc
    ld c, $0e
    ld de, $1f20
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    ld [$0311], sp
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $071d
    nop
    dec bc
    dec bc
    ld d, $00
    jr @+$1c

    ld [$1a12], sp
    inc c
    inc d
    ld [bc], a
    rlca
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    nop
    inc c
    inc b
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld de, $1204
    inc de
    jr nz, jr_012_5b69

    ld d, $07
    nop
    inc de
    ld a, [de]
    nop
    dec c
    ld a, [de]
    inc d
    ld b, $0b
    jr jr_012_5b71

    rrca
    ld [$0204], sp
    inc b
    ld c, $05
    ld a, [de]
    nop
    ld de, $2713
    ld a, [de]
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]

jr_012_5b69:
    rlca
    nop
    dec d
    inc b
    dec e
    ld bc, $0404

jr_012_5b71:
    dec c
    ld a, [de]
    rrca
    nop
    ld [$130d], sp
    inc b
    inc bc
    ld a, [de]
    ld bc, $1d18
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $16
    dec c
    inc b
    ld de, $122a
    ld a, [de]
    ld d, $08
    dec b
    inc b
    jr nz, jr_012_5baf

    inc de
    rlca
    ld [$1a12], sp
    rrca
    dec bc
    nop
    dec c
    inc de
    ld a, [de]
    rlca
    nop
    ld [de], a
    dec e
    dec bc
    ld [$1313], sp
    dec bc
    inc b
    ld a, [de]
    dec b
    dec bc
    ld c, $16
    inc b
    ld de, $2012
    rra

jr_012_5baf:
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc bc
    inc b
    inc bc
    inc d
    ld [bc], a
    inc de
    ld [$0415], sp
    dec e
    ld de, $0004
    ld [de], a
    ld c, $0d
    ld [$060d], sp
    dec h
    ld a, [de]
    jr jr_012_5bd9

    inc d
    dec e
    inc bc
    inc b
    inc bc
    inc d
    ld [bc], a
    inc b
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]

jr_012_5bd9:
    inc de
    rlca
    ld [$1d12], sp
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $1a04
    nop
    dec c
    dec e
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
    ld de, $1f20
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]
    ld [$1d12], sp
    ld d, $11
    ld [$1313], sp
    inc b
    dec c
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    ld [$0403], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    dec bc
    nop
    ld de, $0406
    rlca
    nop
    inc c
    rrca
    inc b
    ld de, $1f20
    ld [$1a13], sp
    ld de, $0004
    inc bc
    ld [de], a
    dec h
    ld a, [de]
    ld h, $11
    inc b
    dec bc
    ld [$0d00], sp
    inc de
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    inc b
    ld de, $2012
    ld h, $1f
    jr jr_012_5c5b

    inc d
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $081a
    dec b
    ld a, [de]
    inc de
    rlca

jr_012_5c5b:
    inc b
    jr jr_012_5c71

    nop
    ld a, [bc]
    inc b
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    rlca
    nop
    inc c
    rrca
    inc b
    ld de, $131d
    ld c, $1a

jr_012_5c71:
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    inc b
    ld de, $1d12
    inc b
    dec d
    inc b
    ld de, $1a18
    dec c
    ld [$0706], sp
    inc de
    jr nz, jr_012_5caa

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0604
    ld [$0d0d], sp
    ld [$060d], sp
    ld [de], a
    ld a, [de]
    ld c, $05
    dec e
    nop
    dec c
    ld a, [de]
    ld [$0403], sp
    nop
    ld a, [de]
    dec b
    ld c, $11
    inc c
    ld a, [de]

jr_012_5caa:
    ld [$1d0d], sp
    jr @+$10

    inc d
    ld de, $071a
    inc b
    nop
    inc bc
    jr nz, @+$21

    ld [$120d], sp
    ld [$0403], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    nop
    inc c
    rrca
    inc b
    ld de, $081d
    inc de
    ld a, [de]
    ld [de], a
    inc de
    ld [$0a0d], sp
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec e
    inc bc
    nop
    jr jr_012_5cfe

    ld c, $0b
    inc bc
    ld a, [de]
    ld [de], a
    ld c, $02
    ld a, [bc]
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    inc c
    inc b
    dec bc
    dec bc
    jr @+$1c

    ld [de], a
    rlca
    ld c, $11
    inc de
    ld [de], a
    jr nz, jr_012_5d19

    inc de
    rlca
    inc b
    ld a, [de]

jr_012_5cfe:
    ld a, [bc]
    inc b
    jr @+$1c

    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    dec e
    dec b
    ld [$2013], sp
    rra
    dec c
    ld c, $01
    ld c, $03
    jr jr_012_5d30

    nop
    dec c
    ld [de], a

jr_012_5d19:
    ld d, $04
    ld de, $2012
    rra
    ld b, $0b
    nop
    ld [de], a
    ld [de], a
    ld a, [de]
    ld [de], a
    rlca
    nop
    inc de
    inc de
    inc b
    ld de, $1d12
    inc b
    dec d

jr_012_5d30:
    inc b
    ld de, $1618
    rlca
    inc b
    ld de, $2004
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    nop
    inc c
    inc b
    ld [de], a
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    ld c, $0e
    ld de, $1a12
    nop
    ld de, $1d04
    dec b
    nop
    inc c
    ld [$080b], sp
    nop
    ld de, $1a24
    nop
    dec c
    inc de
    rlca
    ld c, $0d
    jr jr_012_5d84

    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    dec h
    ld a, [de]
    dec c
    ld c, $13
    ld c, $11
    ld [$140e], sp
    ld [de], a
    dec e
    dec d
    inc b
    ld b, $00
    ld [de], a
    ld a, [de]
    inc c
    ld c, $01
    ld [de], a
    inc de

jr_012_5d84:
    inc b
    ld de, $1a25
    nop
    dec c
    inc bc
    inc bc
    nop
    dec c
    dec c
    jr jr_012_5dab

    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    jr nz, @+$1e

    ld [$1a0d], sp
    dec b
    nop
    ld [bc], a
    inc de
    dec h
    ld a, [de]
    jr jr_012_5db3

    inc d
    dec e
    ld de, $0c04
    inc b

jr_012_5dab:
    inc c
    ld bc, $1104
    ld a, [de]
    ld de, $0004

jr_012_5db3:
    inc bc
    ld [$060d], sp
    dec e
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    inc c
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    rrca
    nop
    rrca
    inc b
    ld de, $001a
    ld a, [de]
    dec b
    inc b
    ld d, $1a
    ld d, $04
    inc b
    ld a, [bc]
    ld [de], a
    dec e
    nop
    ld b, $0e
    daa
    rra
    ld [$1a13], sp
    ld d, $00
    ld [de], a
    ld a, [de]
    ld de, $0c14
    ld c, $11
    inc b
    inc bc
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld [$1312], sp
    ld de, $0208
    inc de
    dec e
    nop
    inc de
    inc de
    ld c, $11
    dec c
    inc b
    jr jr_012_5e23

    rlca
    nop
    inc bc
    dec e
    ld [$1111], sp
    inc b
    dec b
    inc d
    inc de
    nop
    ld bc, $040b
    dec e
    inc b
    dec d
    ld [$0403], sp
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    inc de

jr_012_5e23:
    ld c, $1d
    ld [bc], a
    ld c, $0d
    dec d
    ld [$1302], sp
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec bc
    nop
    ld [de], a
    ld a, [de]
    dec d
    inc b
    ld b, $00
    ld [de], a
    dec e
    ld h, $01
    inc d
    ld [de], a
    ld [$040d], sp
    ld [de], a
    ld [de], a
    inc c
    inc b
    dec c
    jr nz, jr_012_5e6f

    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    rlca
    nop
    ld de, $0406
    ld [de], a
    ld a, [de]
    ld d, $04
    ld de, $1d04
    inc bc
    ld de, $0f0e
    rrca
    inc b
    inc bc
    dec h
    ld a, [de]
    rlca
    ld c, $16
    inc b
    dec d
    inc b
    ld de, $1d25
    ld d, $07

jr_012_5e6f:
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    nop
    ld a, [de]
    inc de
    inc d
    ld de, $040d
    inc bc
    inc d
    rrca
    ld a, [de]
    inc bc
    inc b
    nop
    inc bc
    jr nz, jr_012_5ea7

    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld c, $14
    ld de, $0713
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $0e1d
    dec b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    ld c, $13
    inc b
    dec bc
    ld a, [de]
    ld [de], a

jr_012_5ea7:
    inc b
    inc b
    inc c
    ld [de], a
    inc de
    ld c, $1a
    ld [bc], a
    ld c, $0d
    inc de
    nop
    ld [$1d0d], sp
    ld c, $05
    dec b
    ld [$0402], sp
    ld [de], a
    jr nz, jr_012_5edb

    ld [de], a
    ld [$0d06], sp
    ld [de], a
    ld a, [de]
    rlca
    nop
    dec c
    ld b, $1a
    nop
    ld bc, $150e
    inc b
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld d, $0e
    ld a, [de]
    inc bc
    ld c, $0e

jr_012_5edb:
    ld de, $2012
    rra
    jr @+$10

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec b
    ld c, $14
    ld de, $0713
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $1f20
    inc de
    rlca
    ld [$1a12], sp
    rrca
    ld c, $0e
    ld de, $131a
    ld de, $0404
    ld a, [de]
    ld [$1d12], sp
    ld d, $08
    inc de
    rlca
    inc b
    ld de, $0d08
    ld b, $1a
    nop
    ld a, [de]
    ld bc, $1308
    jr nz, jr_012_5f3d

    rlca
    inc c
    inc c
    jr nz, jr_012_5f43

    jr nz, jr_012_5f42

    ld [de], a
    db $10
    inc d
    inc b
    nop
    ld a, [bc]
    jr @+$1c

    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    jr nz, jr_012_5f53

    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld [$0d06], sp
    ld a, [de]

jr_012_5f3d:
    nop
    ld bc, $150e
    inc b

jr_012_5f42:
    dec e

jr_012_5f43:
    inc de
    rlca
    ld [$1a12], sp
    inc bc
    ld c, $0e
    ld de, $111a
    inc b
    nop
    inc bc
    ld [de], a
    dec h

jr_012_5f53:
    dec e
    ld h, $03
    nop
    dec c
    dec c
    jr @+$1c

    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    jr nz, jr_012_5f8a

    rra
    ld h, $00
    dec c
    inc de
    rlca
    ld c, $0d
    jr jr_012_5f88

    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld h, $1d
    ld [$1a12], sp
    rrca
    ld de, $0d08
    inc de
    inc b
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    ld b, $0e
    dec bc
    inc bc

jr_012_5f88:
    dec bc
    inc b

jr_012_5f8a:
    inc de
    inc de
    inc b
    ld de, $1a12
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    ld [de], a
    ld [$0d06], sp
    jr nz, @+$21

    inc d
    rlca
    ld a, [de]
    ld c, $07
    daa
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    nop
    ld de, $1d03
    ld [de], a
    rrca
    ld c, $13
    ld [de], a
    ld a, [de]
    jr jr_012_5fc5

    inc d
    daa
    rra
    ld h, $18
    ld c, $14
    ld a, [de]
    nop
    ld de, $1a04
    ld [de], a
    inc de

jr_012_5fc5:
    inc d
    rrca
    ld [$1d03], sp
    nop
    ld de, $0d04
    ld a, [hl+]
    inc de
    ld a, [de]
    jr jr_012_5fe1

    inc d
    jr z, @+$1c

    inc de
    ld de, $0818
    dec c
    ld a, [hl+]
    inc de
    nop
    ld a, [de]
    ld [de], a
    dec c

jr_012_5fe1:
    inc b
    nop
    ld a, [bc]
    ld a, [de]
    nop
    ld de, $140e
    dec c
    inc bc
    dec e
    rlca
    inc b
    ld de, $2804
    ld h, $1c
    rlca
    inc b
    ld a, [de]
    inc b
    jr jr_012_5ffd

    ld [de], a
    ld a, [de]
    jr jr_012_600b

jr_012_5ffd:
    inc d
    ld a, [de]
    inc d
    rrca
    ld a, [de]
    nop
    dec c
    inc bc
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    nop

jr_012_600b:
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    dec e
    ld [de], a
    nop
    jr jr_012_6029

    dec h
    ld a, [de]
    ld h, $13
    nop
    ld [de], a
    inc de
    inc b
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    dec e
    dec bc
    inc b
    nop
    inc bc

jr_012_6029:
    dec h
    ld a, [de]
    ld b, $14
    inc c
    ld [de], a
    rlca
    ld c, $04
    daa
    ld h, $1f
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    ld c, $08
    ld [de], a
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    inc c
    ld c, $0a
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $0c
    inc c
    jr @+$08

    inc d
    dec c
    ld a, [de]
    dec b
    ld [$0b0b], sp
    ld [de], a
    ld a, [de]
    jr jr_012_606f

    inc d
    ld de, $161d
    ld c, $11
    dec bc
    inc bc
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    jr jr_012_607d

jr_012_606f:
    inc d
    ld a, [de]
    dec b
    nop
    dec bc
    dec bc
    dec e
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]

jr_012_607d:
    ld b, $11
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    nop
    rlca
    inc b
    nop
    rrca
    jr nz, jr_012_60ad

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    ld [$0a0d], sp
    ld [$060d], sp
    dec e
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [bc], a
    rlca
    ld [$120f], sp
    dec e
    dec b
    dec bc

jr_012_60ad:
    ld c, $00
    inc de
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    ld c, $01
    ld bc, $2018
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $140e
    dec c
    ld [bc], a
    inc b
    ld de, $101d
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_012_60f4

    ld [de], a
    inc de
    inc b
    rrca
    ld [de], a
    dec e
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    jr jr_012_60fc

    inc d
    dec e
    nop
    dec c
    inc bc
    ld a, [de]

jr_012_60f4:
    ld [de], a
    nop
    jr jr_012_610a

    dec h
    inc e
    ld h, $07

jr_012_60fc:
    inc b
    jr jr_012_6124

    ld a, [de]
    ld a, [hl+]
    inc bc
    ld [$1a12], sp
    rlca
    inc b
    ld de, $1a04

jr_012_610a:
    ld [$0012], sp
    ld a, [de]
    ld [bc], a
    dec bc
    nop
    ld [de], a
    ld [de], a
    jr @+$1c

    ld a, [bc]
    ld [$030d], sp
    ld a, [de]
    ld c, $05
    dec e
    add hl, bc
    ld c, $08
    dec c
    inc de
    daa
    ld a, [de]

jr_012_6124:
    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    dec e
    ld d, $07
    inc b
    dec c
    ld a, [de]
    jr jr_012_6139

    ld de, $011a
    inc b

jr_012_6139:
    inc de
    inc de
    inc b
    ld de, $031d
    ld de, $1204
    ld [de], a
    inc b
    inc bc
    daa
    ld h, $1f
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $140e
    dec c
    ld [bc], a
    inc b
    ld de, $111d
    ld c, $14
    ld b, $07
    dec bc
    jr @+$1c

    inc de
    rlca
    ld de, $160e
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    ld [$0e0d], sp
    jr nz, jr_012_6196

    jr jr_012_6187

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld c, $0d
    ld a, [de]
    nop
    dec e
    rrca
    dec bc
    nop
    inc de

jr_012_6187:
    dec b
    ld c, $11
    inc c
    ld a, [de]
    ld [$1a0d], sp
    nop
    dec e
    inc de
    ld de, $0800
    dec c

jr_012_6196:
    ld a, [de]
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    jr nz, @+$21

    ld h, $0b
    inc d
    ld [bc], a
    ld a, [bc]
    jr jr_012_61c1

    inc bc
    ld [$0402], sp
    ld a, [de]
    rlca
    ld c, $13
    inc b
    dec bc
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    ld [$0e0d], sp
    ld h, $1a
    ld [$1d12], sp

jr_012_61c1:
    rrca
    ld de, $0d08
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
    nop
    ld [de], a
    rlca
    inc de
    ld de, $1800
    jr nz, jr_012_61f8

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $1214
    jr @+$1c

    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    jr nz, jr_012_620b

    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    inc de

jr_012_61f8:
    rlca
    inc b
    dec e
    inc b
    dec c
    inc de
    ld de, $0d00
    ld [bc], a
    inc b
    jr nz, jr_012_6224

    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop

jr_012_620b:
    ld [$130d], sp
    ld [$060d], sp
    dec e
    inc bc
    inc b
    rrca
    ld [$1302], sp
    ld [de], a
    ld a, [de]
    inc de
    ld d, $0e
    ld a, [de]
    inc c
    inc b
    dec c
    dec e
    dec b
    nop

jr_012_6224:
    ld [bc], a
    ld [$060d], sp
    ld a, [de]
    ld c, $05
    dec b
    ld a, [de]
    ld [$1a0d], sp
    nop
    dec e
    ld [bc], a
    dec bc
    nop
    ld [de], a
    ld [de], a
    ld [$1a02], sp
    ld c, $0b
    inc bc
    ld a, [de]
    ld d, $04
    ld [de], a
    inc de
    dec e
    ld [de], a
    inc de
    jr @+$0d

    inc b
    ld a, [de]
    ld [de], a
    rlca
    ld c, $16
    inc bc
    ld c, $16
    dec c
    jr nz, jr_012_6272

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc de
    nop
    ld [bc], a
    ld a, [bc]
    jr jr_012_6285

    ld a, [de]
    ld bc, $1314
    dec e
    ld [bc], a
    ld c, $0c
    dec b
    ld c, $11
    inc de
    nop
    ld bc, $040b
    dec h
    ld a, [de]

jr_012_6272:
    ld de, $0304
    dec e
    dec d
    inc b
    dec bc
    dec d
    inc b
    inc de
    ld a, [de]
    ld [bc], a
    rlca
    nop
    ld [$2011], sp
    rra
    inc de

jr_012_6285:
    rlca
    inc b
    jr @+$1c

    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    inc c
    nop
    ld a, [bc]
    inc b
    dec e
    ld [bc], a
    rlca
    nop
    ld [$1211], sp
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    nop
    dec c
    jr @+$0e

    ld c, $11
    inc b
    dec h
    ld a, [de]
    inc de
    rlca
    nop
    dec c
    ld a, [bc]
    dec e
    ld b, $0e
    ld c, $03
    dec c
    inc b
    ld [de], a
    ld [de], a
    jr nz, jr_012_62dd

    ld c, $14
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    nop
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $05
    dec b
    inc b
    inc b
    ld a, [de]
    inc de
    nop
    ld bc, $040b
    ld [de], a
    dec e
    jr @+$10

jr_012_62dd:
    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld [de], a
    inc b
    inc b
    dec c
    ld a, [de]
    ld [$1d0d], sp
    jr jr_012_62fa

    inc d
    ld de, $0b1a
    ld [$0405], sp
    dec h
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp

jr_012_62fa:
    ld [$0e12], sp
    dec c
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    inc c
    jr nz, jr_012_6328

    dec c
    ld c, $16
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    dec e
    ld bc, $0608
    ld a, [de]
    ld [de], a
    rrca
    ld [$1313], sp
    ld c, $0e
    dec c
    jr nz, jr_012_6343

    inc de
    rlca
    inc b
    ld a, [de]

jr_012_6328:
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    ld c, $05
    dec e
    ld [de], a
    rlca
    nop
    inc de
    inc de
    inc b
    ld de, $0d08
    ld b, $1a
    ld b, $0b
    nop
    ld [de], a
    ld [de], a
    dec e
    dec b

jr_012_6343:
    ld [$0b0b], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0e0e
    inc c
    daa
    rra
    ld h, $00
    dec c
    inc bc
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld d, $07
    nop
    inc de
    ld a, [de]
    inc bc
    ld c, $1d
    jr jr_012_6366

jr_012_6366:
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    ld a, [de]
    jr jr_012_637d

    inc d
    ld a, [hl+]
    ld de, $1d04
    inc bc
    ld c, $08
    dec c
    ld b, $27
    jr z, jr_012_63a2

    rra

jr_012_637d:
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld de, $1304
    inc de
    jr jr_012_63a2

    ld d, $0e
    inc c
    nop
    dec c
    dec e
    ld bc, $0704
    ld [$030d], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $140c

jr_012_63a2:
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $1a04
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    ld [$0e0d], sp
    ld [bc], a
    nop
    ld [de], a
    rlca
    ld [$1104], sp
    jr nz, jr_012_63d7

    ld [de], a
    rlca
    inc b
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    inc b
    rla
    ld [bc], a
    rlca
    nop
    dec c
    ld b, $04
    dec e
    inc c
    ld c, $0d
    inc b
    jr @+$1c

    dec b
    ld c, $11
    ld a, [de]
    ld [bc], a
    rlca

jr_012_63d7:
    ld [$120f], sp
    dec h
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    dec d
    ld [$0402], sp
    ld a, [de]
    dec d
    inc b
    ld de, $0012
    jr nz, jr_012_640b

    ld [bc], a
    ld c, $08
    dec c
    ld [bc], a
    ld [$0403], sp
    dec c
    inc de
    nop
    dec bc
    dec bc
    jr jr_012_6418

    inc b
    dec c
    ld c, $14
    ld b, $07
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld [$0d06], sp

jr_012_640b:
    dec e
    ld de, $0004
    inc bc
    ld [de], a
    dec h
    ld a, [de]
    ld h, $02
    nop
    ld [de], a
    rlca

jr_012_6418:
    ld [$1104], sp
    jr nz, jr_012_6443

    rra
    ld h, $0e
    dec c
    inc b
    ld a, [de]
    ld [bc], a
    rlca
    ld [$1a0f], sp
    ld [$1a12], sp
    ld b, c
    dec [hl]
    dec h
    ld h, $1d
    ld [de], a
    rlca
    inc b
    ld a, [de]
    ld [de], a
    nop
    jr jr_012_644a

    ld a, [de]
    ld [$1a0d], sp
    nop
    dec e
    ld bc, $110e
    inc b
    inc bc

jr_012_6443:
    ld a, [de]
    inc de
    ld c, $0d
    inc b
    jr nz, jr_012_6469

jr_012_644a:
    ld [de], a
    rlca
    inc b
    ld a, [de]
    inc b
    rla
    ld [bc], a
    rlca
    nop
    dec c
    ld b, $04
    ld [de], a
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    rlca
    dec b
    ld c, $11
    ld a, [de]
    ld [bc], a
    rlca
    ld [$120f], sp
    dec h
    ld a, [de]
    ld c, $11

jr_012_6469:
    ld a, [de]
    ld [$1d12], sp
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $13
    rlca
    inc b
    ld de, $161a
    nop
    jr jr_012_6480

jr_012_6480:
    ld de, $140e
    dec c
    inc bc
    jr z, jr_012_64a6

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_64a6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
