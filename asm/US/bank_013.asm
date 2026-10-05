; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

    nop
    ld b, c
    ld a, [hl+]
    ld b, c
    ld l, h
    ld b, c
    adc d
    ld b, c
    cp l
    ld b, c
    ld e, b
    ld b, d
    ld [hl], l
    ld b, d
    sub b
    ld b, d
    rst RST_00
    ld b, d
    db $e3
    ld b, d
    ld d, $43
    inc sp
    ld b, e
    adc b
    ld b, e
    and e
    ld b, e
    jp z, Jump_013_5043

    ld b, h
    add e
    ld b, h
    xor l
    ld b, h
    ld b, [hl]
    ld b, a
    db $f4
    ld b, a
    jr nz, jr_013_4072

    add d
    ld c, b
    and a
    ld c, b
    db $e3
    ld c, b
    rst RST_30
    ld c, b
    ld a, $49
    ld e, b
    ld c, c
    ld [hl], c
    ld c, c
    adc e
    ld c, c
    daa
    ld c, d
    ld e, b
    ld c, d
    or a
    ld c, d
    ret c

    ld c, d
    ld [$4c4b], sp
    ld c, e
    adc d
    ld c, e
    db $e4
    ld c, e
    ld h, $4c
    ld c, a
    ld c, h
    sub h
    ld c, h
    ld [hl+], a
    ld c, l
    ld [hl], c
    ld c, l
    cp h
    ld c, l
    inc b
    ld c, [hl]
    jr nc, jr_013_40a8

    ld c, h
    ld c, [hl]
    ld h, h
    ld c, [hl]
    add e
    ld c, [hl]
    and d
    ld c, [hl]
    ld [bc], a
    ld c, a
    add b
    ld c, a
    cp c
    ld c, a
    rst RST_38
    ld c, a
    add hl, sp
    ld d, b
    ld e, c
    ld d, b
    ld a, a
    ld d, b
    inc h
    ld d, c

jr_013_4072:
    ld h, l
    ld d, c
    adc b
    ld d, c
    db $e3
    ld d, d
    add e
    ld d, e
    push de
    ld d, e
    ld e, [hl]
    ld d, h
    ld a, c
    ld d, h
    sub h
    ld d, h
    or l
    ld d, h
    ld [hl], l
    ld d, l
    ld e, $56
    adc h
    ld d, [hl]
    db $dd
    ld d, [hl]
    ld a, [bc]
    ld d, a
    ld h, b
    ld d, a
    add sp, $57
    db $fd
    ld d, a
    add hl, hl
    ld e, b
    ld e, b
    ld e, b
    and c
    ld e, b
    db $f4
    ld e, b
    ld sp, $6a59
    ld e, c
    xor a
    ld e, c
    ldh [c], a
    ld e, c
    cp $59
    jr jr_013_4102

jr_013_40a8:
    jr nc, @+$5c

    ld d, l
    ld e, d
    ld a, [$075a]
    ld e, e
    ld [hl], a
    ld e, e
    sbc l
    ld e, e
    jp hl


    ld e, e
    or c
    ld e, h
    nop
    ld e, l
    ld [hl], c
    ld e, l
    ld [hl], a
    ld e, l
    cp $5d
    and b
    ld e, [hl]
    bit 3, [hl]
    call c, Call_000_095e
    ld e, a
    rla
    ld e, a
    ld c, e
    ld e, a
    ld a, d
    ld e, a
    or c
    ld e, a
    sbc $5f
    ld a, [$3b5f]
    ld h, b
    ld h, [hl]
    ld h, b
    sbc l
    ld h, b
    call nc, $1760
    ld h, c
    bit 4, c
    ld a, [$1c61]
    ld h, d
    ld e, d
    ld h, d
    add [hl]
    ld h, d
    dec [hl]
    ld h, e
    ld e, c
    ld h, e
    ld l, l
    ld h, e
    sub [hl]
    ld h, e
    or l
    ld h, e
    db $e3
    ld h, e
    cpl
    ld h, h
    ld d, l
    ld h, h
    or [hl]
    ld h, h
    ld d, l
    ld h, l
    and h
    ld h, l
    ld a, e
    ld h, [hl]
    inc de
    rlca

jr_013_4102:
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0e0b
    dec c
    inc bc
    inc b
    dec e
    dec bc
    nop
    inc bc
    jr jr_013_4130

    ld bc, $0704
    ld [$030d], sp
    ld a, [de]
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
    nop
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d

jr_013_4130:
    ld a, [de]
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
    ld de, $0e0e
    inc c
    dec h
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc bc
    jr jr_013_4166

    dec bc
    ld c, $0e
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
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

jr_013_4166:
    ld a, [de]
    jr jr_013_4177

    inc d
    daa
    rra
    jr @+$10

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    dec b
    ld c, $11

jr_013_4177:
    ld [bc], a
    inc b
    inc bc
    dec e
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0e0e
    inc c
    jr nz, jr_013_41a9

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $140e
    dec c
    ld [bc], a
    inc b
    ld de, $131a
    ld c, $12
    ld [de], a
    inc b
    ld [de], a
    jr jr_013_41ac

    inc d
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]

jr_013_41a9:
    nop
    dec e
    ld [de], a

jr_013_41ac:
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld c, $05
    ld a, [de]
    rrca
    ld c, $13
    nop
    inc de
    ld c, $04
    ld [de], a
    jr nz, jr_013_41dc

    jr @+$10

    inc d
    ld a, [de]
    inc c
    inc d
    ld [de], a
    inc de
    inc b
    ld de, $001a
    dec bc
    dec bc
    dec e
    jr jr_013_41dc

    inc d
    ld de, $021a
    rlca
    nop
    ld de, $1a0c
    nop
    dec c
    inc bc
    dec e
    ld [de], a

jr_013_41dc:
    nop
    jr @+$27

    ld a, [de]
    ld h, $07
    inc b
    jr jr_013_41ff

    inc de
    ld c, $0e
    inc de
    ld [de], a
    jr z, @+$1f

    ld d, $07
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec c
    ld [$0402], sp
    ld a, [de]
    ld b, $08
    ld de, $0b0b

jr_013_41ff:
    ld [$040a], sp
    ld a, [de]
    jr jr_013_4213

    inc d
    ld a, [de]
    inc bc
    ld c, $08
    dec c
    ld b, $1a
    ld [$1d0d], sp
    nop
    ld a, [de]
    rrca

jr_013_4213:
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec e
    inc de
    rlca
    ld [$2812], sp
    ld h, $1c
    ld [de], a
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
    ld de, $0f04
    dec bc
    jr jr_013_4256

    jr jr_013_4246

    inc d
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $081a
    dec b
    ld a, [de]
    ld [de], a
    rlca

jr_013_4246:
    inc b
    dec e
    inc b
    dec d
    inc b
    dec c
    ld a, [de]
    rlca
    inc b
    nop
    ld de, $1a03
    jr jr_013_4263

    inc d

jr_013_4256:
    jr nz, jr_013_4277

    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    inc c
    nop
    dec c
    ld a, [de]
    inc c

jr_013_4263:
    inc d
    inc c
    ld bc, $040b
    ld [de], a
    dec e
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    jr nz, jr_013_4294

    inc de
    rlca

jr_013_4277:
    inc b
    ld a, [de]
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    nop
    ld [bc], a
    ld a, [bc]
    dec e
    inc bc
    inc b
    nop
    dec bc
    inc b
    ld de, $121a
    nop
    jr @+$14

    dec h
    rra
    ld h, $02
    ld a, [hl+]
    inc c

jr_013_4294:
    ld c, $0d
    ld a, [de]
    inc de
    ld de, $1a18
    jr jr_013_42ab

    inc d
    ld de, $0b1d
    inc d
    ld [bc], a
    ld a, [bc]
    daa
    ld a, [de]
    inc de
    rlca
    inc b
    ld [de], a
    inc b

jr_013_42ab:
    ld a, [de]
    ld [bc], a
    nop
    ld de, $1203
    dec e
    nop
    ld de, $1a04
    ld [de], a
    inc d
    ld de, $1a04
    rlca
    ld c, $13
    dec e
    inc de
    ld c, $03
    nop
    jr jr_013_42ec

    ld h, $1f
    inc de
    rlca
    ld [$1a12], sp
    ld [de], a
    inc d
    ld de, $1a04
    ld [$1a12], sp
    nop
    dec e
    db $10
    inc d
    ld [$1304], sp
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    jr nz, jr_013_4302

    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc b
    nop
    dec bc
    inc b

jr_013_42ec:
    ld de, $031a
    inc b
    nop
    dec bc
    ld [de], a
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld de, $1203
    ld a, [de]
    nop
    inc de
    ld a, [de]
    inc de

jr_013_4302:
    rlca
    inc b
    dec e
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    inc de
    nop
    ld bc, $040b
    jr nz, @+$21

    ld b, $11
    inc b
    inc b
    dec c
    ld a, [de]
    dec b
    inc b
    dec bc
    inc de
    ld a, [de]
    ld [bc], a
    ld c, $15
    inc b
    ld de, $1d12
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    nop
    ld bc, $040b
    jr nz, jr_013_4352

    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    ld [de], a
    inc d
    ld [de], a
    rrca
    ld [$0802], sp
    ld c, $14
    ld [de], a
    dec bc
    jr jr_013_4351

    ld [$040a], sp
    ld a, [de]
    nop
    ld a, [de]
    inc de
    ld de, $0800
    dec c

jr_013_4351:
    ld a, [de]

jr_013_4352:
    inc de
    ld c, $1d
    jr jr_013_4365

    inc d
    jr nz, jr_013_4374

    ld bc, $180e
    dec h
    ld a, [de]
    jr jr_013_436f

    inc d
    ld de, $031d

jr_013_4365:
    inc b
    inc de
    inc b
    ld [bc], a
    inc de
    ld [$0415], sp
    ld a, [de]
    ld [de], a

jr_013_436f:
    ld a, [bc]
    ld [$0b0b], sp
    ld [de], a

jr_013_4374:
    dec e
    nop
    ld de, $1a04
    ld [$1a0d], sp
    dec b
    inc d
    dec bc
    dec bc
    ld a, [de]
    ld [de], a
    ld d, $08
    dec c
    ld b, $27
    rra
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
    inc b
    inc c
    inc b
    ld de, $0406
    dec c
    ld [bc], a
    jr jr_013_43b7

    inc b
    rla
    ld [$2013], sp
    rra
    ld de, $0314
    jr jr_013_43c2

    ld b, $0b
    nop
    dec c
    ld [bc], a
    inc b
    ld [de], a
    ld a, [de]
    nop
    inc de
    dec e
    inc de
    rlca
    inc b
    ld a, [de]

jr_013_43b7:
    nop
    ld de, $0813
    ld [bc], a
    dec bc
    inc b
    ld a, [de]
    nop
    dec c
    inc bc

jr_013_43c2:
    dec e
    ld d, $08
    dec c
    ld a, [bc]
    ld [de], a
    jr nz, @+$21

    ld h, $12
    inc d
    ld de, $2a04
    ld [de], a
    ld a, [de]
    ld bc, $0404
    dec c
    ld a, [de]
    nop
    dec e
    dec bc
    ld c, $0d
    ld b, $1a
    inc de
    ld [$040c], sp
    dec h
    ld a, [de]
    nop
    ld [bc], a
    inc b
    dec h
    ld h, $1d
    rlca
    inc b
    ld a, [de]
    ld d, $07
    ld [$0f12], sp
    inc b
    ld de, $2512
    ld a, [de]
    ld h, $08
    dec e
    inc de
    rlca
    ld [$0a0d], sp
    ld a, [de]
    jr jr_013_4410

    inc d
    ld de, $0b1a
    inc d
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld [$0012], sp
    ld bc, $140e

jr_013_4410:
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    inc d
    ld de, $270d
    ld h, $1c
    ld b, $0e
    ld c, $03
    daa
    ld a, [de]
    jr jr_013_4432

    inc d
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    inc bc
    ld c, $16
    ld [$0713], sp

jr_013_4432:
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    ld b, $0e
    ld c, $03
    dec e
    dec bc
    inc d
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    rlca
    nop
    dec c
    ld b, $04
    daa
    rra
    ld h, $08
    ld a, [de]
    inc c
    ld [$1212], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0b
    inc bc
    dec e
    inc bc
    nop
    jr jr_013_4476

    dec h
    ld a, [de]
    nop
    ld [bc], a
    inc b
    dec h
    ld h, $1a
    ld de, $0314
    jr jr_013_448e

    ld [de], a
    nop
    jr jr_013_4487

    ld a, [de]

jr_013_4476:
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    ld [$0706], sp
    jr nz, @+$21

    ld h, $02
    nop
    dec c

jr_013_4487:
    ld a, [de]
    jr jr_013_4498

    inc d
    ld a, [de]
    inc de
    inc b

jr_013_448e:
    dec bc
    dec bc
    ld a, [de]
    inc c
    inc b
    dec e
    nop
    ld bc, $140e

jr_013_4498:
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    ld [$0e0d], sp
    dec e
    ld c, $16
    dec c
    inc b
    ld de, $2628
    rra
    ld h, $13
    rlca
    inc b
    ld a, [de]
    ld c, $01
    add hl, bc
    inc b
    ld [bc], a
    inc de
    ld a, [de]
    ld [$1a12], sp
    dec b
    ld c, $11
    jr jr_013_44cf

    inc d
    ld de, $021a
    nop
    ld de, $1203
    ld a, [de]
    inc de
    ld c, $1a
    nop
    inc bc

jr_013_44cf:
    inc bc
    dec e
    inc d
    rrca
    ld a, [de]
    inc de
    ld c, $1a
    ld [hl-], a
    ld sp, $1a25
    ld d, $08
    inc de
    rlca
    ld c, $14
    inc de
    dec e
    ld b, $0e
    ld [$060d], sp
    ld a, [de]
    ld c, $15
    inc b
    ld de, $1c20
    dec b
    ld [$1211], sp
    inc de
    dec h
    ld a, [de]
    ld [$0b2a], sp
    dec bc
    ld a, [de]
    inc bc
    inc b
    nop
    dec bc
    dec e
    ld [hl-], a
    ld a, [de]
    ld [bc], a
    nop
    ld de, $1203
    jr nz, jr_013_4523

    ld c, $0d
    inc b
    ld a, [de]
    dec b
    nop
    ld [bc], a
    inc b
    dec e
    inc bc
    ld c, $16
    dec c
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $13
    rlca
    inc b
    ld de, $051d

jr_013_4523:
    nop
    ld [bc], a
    inc b
    ld a, [de]
    inc d
    rrca
    jr nz, jr_013_4547

    inc bc
    inc b
    ld [bc], a
    ld [$0403], sp
    ld a, [de]
    rlca
    ld c, $16
    ld a, [de]
    inc c
    inc d
    ld [bc], a
    rlca
    dec e
    jr jr_013_454b

    inc d
    ld a, [de]
    ld d, $00
    dec c
    inc de
    ld a, [de]
    inc de
    ld c, $1a

jr_013_4547:
    ld bc, $1304
    dec h

jr_013_454b:
    dec e
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    jr jr_013_4562

    inc d
    ld de, $011a
    inc b
    inc de
    dec h
    dec e
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    inc de

jr_013_4562:
    inc d
    ld de, $1a0d
    ld c, $15
    inc b
    ld de, $181d
    ld c, $14
    ld de, $0e1a
    inc de
    rlca
    inc b
    ld de, $021a
    nop
    ld de, $2003
    inc e
    ld [$1a05], sp
    jr jr_013_458f

    inc d
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    ld a, [de]
    jr jr_013_4599

    inc d
    dec e
    ld [bc], a
    nop

jr_013_458f:
    dec c
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $12

jr_013_4599:
    inc b
    ld de, $131d
    ld c, $1a
    ld [hl-], a
    ld sp, $1a25
    jr jr_013_45b3

    inc d
    ld a, [de]
    inc c
    nop
    jr jr_013_45c5

    nop
    ld [de], a
    ld a, [bc]
    dec b
    ld c, $11
    ld a, [de]
    nop

jr_013_45b3:
    dec c
    ld c, $13
    rlca
    inc b
    ld de, $021a
    nop
    ld de, $2003
    inc e
    inc de
    rlca
    ld [$1a12], sp

jr_013_45c5:
    ld [$1a12], sp
    ld [bc], a
    nop
    dec bc
    dec bc
    inc b
    inc bc
    ld a, [de]
    nop
    dec e
    ld h, $07
    ld [$2013], sp
    ld h, $1a
    jr jr_013_45e8

    inc d
    ld a, [de]
    inc c
    nop
    jr jr_013_45fd

    ld h, $07
    ld [$2613], sp
    ld a, [de]
    inc d
    rrca

jr_013_45e8:
    ld a, [de]
    inc de
    ld c, $1a
    inc [hl]
    dec e
    inc de
    ld [$040c], sp
    ld [de], a
    jr nz, jr_013_4611

    ld bc, $1a04
    ld [bc], a
    nop
    ld de, $0504

jr_013_45fd:
    inc d
    dec bc
    ld a, [de]
    inc de
    rlca
    ld c, $14
    ld b, $07
    dec h
    ld [$1a05], sp
    jr jr_013_461a

    inc d
    ld a, [de]
    ld b, $0e
    ld a, [de]

jr_013_4611:
    ld c, $15
    inc b
    ld de, $321a
    ld sp, $181d

jr_013_461a:
    ld c, $14
    ld a, [de]
    ld h, $01
    inc d
    ld [de], a
    inc de
    ld h, $1a
    nop
    dec c
    inc bc
    dec e
    dec bc
    ld c, $12
    inc b
    jr nz, jr_013_464a

    ld [$1a05], sp
    jr @+$10

    inc d
    ld a, [de]
    rlca
    ld [$1a13], sp
    ld [hl-], a
    ld sp, $1a25
    jr jr_013_464d

    inc d
    ld d, $08
    dec c
    daa
    inc e
    ld [$1a05], sp
    jr jr_013_4658

jr_013_464a:
    inc d
    ld a, [de]
    rlca

jr_013_464d:
    nop
    dec d
    inc b
    ld a, [de]
    dec bc
    inc b
    ld [de], a
    ld [de], a
    dec e
    inc de
    rlca

jr_013_4658:
    nop
    dec c
    ld a, [de]
    ld [hl-], a
    ld sp, $161a
    rlca
    inc b
    dec c
    ld a, [de]
    jr jr_013_4673

    inc d
    dec e
    ld [de], a
    inc de
    ld c, $0f
    dec h
    ld a, [de]
    jr jr_013_467d

    inc d
    ld a, [de]
    ld [bc], a
    nop

jr_013_4673:
    dec c
    dec e
    ld [de], a
    inc de
    ld [$0b0b], sp
    ld a, [de]
    ld d, $08

jr_013_467d:
    dec c
    ld a, [de]
    ld [$1a05], sp
    jr jr_013_4692

    inc d
    dec e
    ld bc, $0004
    inc de
    ld a, [de]
    inc c
    jr jr_013_46a8

    inc de
    ld c, $13
    nop

jr_013_4692:
    dec bc
    dec h
    ld a, [de]
    ld c, $11
    dec e
    ld [$1a05], sp
    ld [$011a], sp
    inc d
    ld [de], a
    inc de
    jr nz, jr_013_46bf

    dec b
    nop
    ld [bc], a
    inc b
    ld a, [de]

jr_013_46a8:
    ld [bc], a
    nop
    ld de, $1203
    ld a, [de]
    nop
    ld de, $1d04
    nop
    dec bc
    ld d, $00
    jr jr_013_46ca

    ld a, [de]
    ld d, $0e
    ld de, $0713
    ld a, [de]

jr_013_46bf:
    ld sp, $2530
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    ld [bc], a
    inc b

jr_013_46ca:
    ld [de], a
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld bc, $1d04
    ld d, $0e
    ld de, $0713
    ld a, [de]
    ld sp, $0e1a
    ld de, $311a
    ld sp, $1c20
    ld [$1a05], sp
    jr jr_013_46f5

    inc d
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]
    nop
    ld a, [de]
    dec b
    nop
    ld [bc], a
    inc b
    dec e
    ld [bc], a

jr_013_46f5:
    nop
    ld de, $1a03
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    dec c
    ld a, [de]
    nop
    ld [bc], a
    inc b
    dec h
    dec e
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld [bc], a
    nop
    dec bc
    dec bc
    inc b
    inc bc
    dec e
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    jr jr_013_472f

    inc d
    dec e
    ld d, $08
    dec c
    ld a, [de]
    ld sp, $3520
    ld a, [de]
    inc de
    ld [$040c], sp

jr_013_472f:
    ld [de], a
    ld a, [de]
    jr jr_013_4741

    inc d
    ld de, $0401
    inc de
    jr nz, jr_013_4754

    ld b, $0e
    ld c, $03
    ld a, [de]
    dec bc
    inc d

jr_013_4741:
    ld [bc], a
    ld a, [bc]
    daa
    ld h, $1f
    db $10
    inc d
    ld [$1304], sp
    dec bc
    jr jr_013_4773

    ld a, [de]
    rlca
    inc b
    dec e
    nop
    dec c

jr_013_4754:
    ld [de], a
    ld d, $04
    ld de, $1a12
    jr jr_013_476a

    inc d
    jr nz, @+$1e

    ld h, $0c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    rlca
    nop
    ld [de], a

jr_013_476a:
    ld a, [de]
    rlca
    ld [$1d12], sp
    rlca
    nop
    dec c
    inc bc

jr_013_4773:
    ld [de], a
    ld a, [de]
    ld [$1a0d], sp
    inc bc
    ld [$1311], sp
    jr jr_013_479b

    dec bc
    nop
    inc d
    dec c
    inc bc
    ld de, $1a18
    nop
    dec bc
    dec bc
    ld a, [de]
    ld c, $15
    inc b
    ld de, $131d
    rlca
    inc b
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    jr nz, @+$1e

    inc b

jr_013_479b:
    rla
    inc de
    ld c, $11
    inc de
    ld [$0d0e], sp
    dec h
    ld a, [de]
    ld bc, $0811
    ld bc, $1204
    dec h
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $0405
    ld [$0813], sp
    dec c
    ld b, $25
    dec e
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    inc c
    nop
    ld [$250b], sp
    jr nz, jr_013_47e8

    jr nz, @+$1c

    jr jr_013_47da

    inc d
    dec e
    dec c
    nop
    inc c
    inc b
    ld a, [de]
    ld [$2713], sp
    inc e
    rlca
    inc b
    ld a, [de]

jr_013_47da:
    nop
    ld [$2a0d], sp
    inc de
    ld a, [de]
    dec c
    ld c, $1a
    ld bc, $180e
    dec e
    ld [de], a

jr_013_47e8:
    ld [bc], a
    ld c, $14
    inc de
    dec h
    ld a, [de]
    nop
    ld [bc], a
    inc b
    jr nz, jr_013_4819

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld [de], a
    dec e
    ld [$1213], sp
    ld a, [de]
    ld d, $07
    ld [$1312], sp
    dec bc
    inc b
    ld a, [de]
    dec b
    ld c, $11
    dec e
    inc bc
    inc b
    rrca
    nop

jr_013_4819:
    ld de, $1413
    ld de, $2004
    rra
    ld de, $0314
    jr jr_013_483f

    ld b, $08
    dec d
    inc b
    ld [de], a
    ld a, [de]
    jr jr_013_483b

    inc d
    ld a, [de]
    nop
    dec e
    ld [de], a
    dec bc
    jr jr_013_484f

    ld b, $11
    ld [$250d], sp
    ld a, [de]

jr_013_483b:
    ld h, $00
    ld [bc], a
    inc b

jr_013_483f:
    dec h
    dec e
    jr jr_013_4851

    inc d
    ld a, [de]
    ld d, $08
    dec c
    ld a, [de]
    ld [$1d0d], sp
    ld d, $07
    nop

jr_013_484f:
    inc de
    inc b

jr_013_4851:
    dec d
    inc b
    ld de, $181a
    ld c, $14
    ld a, [de]
    inc bc
    ld c, $25
    dec e
    ld d, $07
    inc b
    inc de
    rlca
    inc b
    ld de, $081a
    inc de
    ld a, [hl+]
    ld [de], a
    dec e
    ld bc, $170e
    ld [$060d], sp
    ld a, [de]
    ld c, $11
    dec e
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    nop
    ld [bc], a
    ld a, [bc]
    jr nz, jr_013_489f

    jr nz, jr_013_48a7

    rra
    rlca
    ld [$1a12], sp
    dec c
    nop
    inc c
    inc b
    ld a, [de]
    inc de
    nop
    ld b, $1d
    ld de, $0004
    inc bc
    ld [de], a
    dec h
    ld a, [de]
    ld h, $11
    inc d
    inc bc
    jr jr_013_48b9

    ld a, [bc]
    ld c, $16

jr_013_489f:
    nop
    dec bc
    ld [de], a
    ld a, [bc]
    ld [$2620], sp
    rra

jr_013_48a7:
    nop
    ld a, [de]
    ld [de], a
    inc b
    dec c
    ld [de], a
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc bc
    inc b
    add hl, bc
    nop
    ld a, [de]
    dec d
    inc d

jr_013_48b9:
    rlca
    ld [$1213], sp
    ld a, [de]
    jr jr_013_48ce

    inc d
    jr nz, @+$1c

    inc de
    rlca
    ld [$1a12], sp
    ld b, $14
    jr jr_013_48d7

    ld c, $0e

jr_013_48ce:
    ld a, [bc]
    ld [de], a
    ld a, [de]
    nop
    ld d, $05
    inc d
    dec bc
    dec bc

jr_013_48d7:
    jr jr_013_48f6

    dec b
    nop
    inc c
    ld [$080b], sp
    nop
    ld de, $1f20
    ld de, $0314
    jr @+$1c

    ld [de], a
    inc c
    ld [$040b], sp
    ld [de], a
    dec e
    ld d, $00
    ld de, $0b0c
    jr jr_013_4916

jr_013_48f6:
    rra
    ld [$1a13], sp
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
    ld [bc], a
    ld c, $14
    ld de, $0408
    ld de, $401a
    jr nc, jr_013_4931

    rrca
    nop

jr_013_4916:
    jr @+$0e

    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1d04
    ld bc, $0811
    ld bc, $1204
    ld a, [de]
    inc de
    ld c, $1a
    inc de

jr_013_4931:
    rlca
    inc b
    dec e
    rrca
    ld c, $0b
    ld [$0402], sp
    jr nz, jr_013_495c

    jr nz, jr_013_495d

    ld h, $13
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    dec c
    ld c, $13
    dec e
    inc b
    dec c
    ld c, $14
    ld b, $07
    dec h
    ld a, [de]
    rrca
    nop
    dec bc
    jr nz, @+$28

    rra
    ld h, $13
    rlca
    nop

jr_013_495c:
    dec c

jr_013_495d:
    ld a, [bc]
    ld a, [de]
    jr jr_013_496f

    inc d
    jr nz, jr_013_4981

    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    nop
    ld b, $00
    ld [$200d], sp

jr_013_496f:
    ld h, $1f
    ld h, $07
    inc b
    jr jr_013_499d

    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    ld [$0d12], sp
    ld a, [hl+]
    inc de

jr_013_4981:
    dec e
    inc b
    dec c
    ld c, $14
    ld b, $07
    daa
    ld h, $1f
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    nop
    ld de, $140e
    dec c
    inc bc
    dec h
    dec e
    rlca
    inc b

jr_013_499d:
    ld a, [de]
    ld [de], a
    nop
    jr jr_013_49b4

    dec h
    dec e
    ld h, $12
    rlca
    rlca
    rlca
    jr nz, jr_013_49cb

    jr nz, jr_013_49c7

    ld [$121a], sp
    inc b
    dec bc
    dec bc
    dec e

jr_013_49b4:
    inc de
    rlca
    ld [$060d], sp
    ld [de], a
    ld a, [de]
    jr jr_013_49cb

    inc d
    ld a, [de]
    inc c
    ld [$0706], sp
    inc de
    dec e
    dec c
    inc b

jr_013_49c7:
    inc b
    inc bc
    dec h
    ld a, [de]

jr_013_49cb:
    inc de
    nop
    rla
    ld a, [de]
    dec b
    ld de, $0404
    dec h
    dec e
    ld [$1a05], sp
    jr jr_013_49e8

    inc d
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]
    inc c
    jr @+$1f

    inc bc
    ld de, $0508
    inc de

jr_013_49e8:
    jr nz, jr_013_4a0a

    jr nz, @+$1e

    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    inc de
    ld c, $03
    nop
    jr @+$2c

    ld [de], a
    dec e
    ld [de], a
    rrca
    inc b
    ld [bc], a
    ld [$0b00], sp
    ld [de], a
    inc h
    dec e
    inc sp
    ld a, [de]
    ld bc, $1300

jr_013_4a0a:
    inc de
    inc b
    ld de, $0408
    ld [de], a
    ld hl, $411a
    dec [hl]
    jr nc, @+$1f

    ld [hl], $1a
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld [de], a
    ld hl, $3141
    jr nc, jr_013_4a54

    jr nz, jr_013_4a4c

    rra
    jr jr_013_4a37

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$120d], sp
    ld [$0403], sp
    ld a, [de]
    inc de
    rlca

jr_013_4a37:
    inc b
    dec e
    ld [bc], a
    ld de, $0c00
    rrca
    inc b
    inc bc
    ld a, [de]
    ld [de], a
    rrca
    nop
    ld [bc], a
    inc b
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca

jr_013_4a4c:
    inc b
    ld a, [de]
    inc b
    dec bc
    inc b
    dec d
    nop
    inc de

jr_013_4a54:
    ld c, $11
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    dec e
    nop
    inc bc
    dec d
    inc b
    ld de, $0813
    ld [de], a
    inc b
    inc c
    inc b
    dec c
    inc de
    inc h
    inc e
    ld h, $21
    ld b, $04
    inc de
    ld a, [de]
    ld de, $0208
    rlca
    ld a, [de]
    db $10
    inc d
    ld [$0a02], sp
    daa
    ld hl, $000c
    ld a, [bc]
    inc b
    ld a, [de]
    jr jr_013_4a96

    inc d
    ld de, $031a
    ld de, $0004
    inc c
    ld [de], a
    dec e
    ld [bc], a
    ld c, $0c
    inc b

jr_013_4a96:
    ld a, [de]
    inc de
    ld de, $0414
    ld a, [de]
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec bc
    inc d
    ld [bc], a
    ld a, [bc]
    jr jr_013_4ac3

    inc bc
    ld [$0402], sp
    dec e
    ld [bc], a
    nop
    ld [de], a
    ld [$0e0d], sp
    daa
    ld h, $1f
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    nop
    dec c
    inc b
    dec bc

jr_013_4ac3:
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    inc de
    rlca
    ld de, $0404
    ld a, [de]
    ld bc, $1314
    inc de
    ld c, $0d
    ld [de], a
    jr nz, @+$21

    jr jr_013_4ae8

    inc d
    ld a, [de]
    dec c
    ld c, $13
    ld [$0402], sp
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    rrca
    nop

jr_013_4ae8:
    ld [bc], a
    inc b
    nop
    ld bc, $150e
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    ld [$0311], sp
    dec e
    dec b
    dec bc
    ld c, $0e
    ld de, $011a
    inc d
    inc de
    inc de
    ld c, $0d
    daa
    rra
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    inc de
    ld c, $08
    dec c
    ld [de], a
    inc b
    ld de, $1a13
    nop
    ld a, [de]
    inc c
    nop
    ld b, $0d
    inc b
    inc de
    ld [$1d02], sp
    ld bc, $1314
    inc de
    ld c, $0d
    ld a, [de]
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de
    ld c, $0f
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    dec c
    inc b
    dec bc
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    rrca
    inc d
    dec bc
    dec bc
    ld [de], a
    dec e
    nop
    ld d, $00
    jr @+$27

    ld a, [de]
    dec bc
    inc b
    nop
    dec d
    ld [$060d], sp
    ld a, [de]
    jr jr_013_4b7a

    inc d
    dec e
    ld bc, $0704
    ld [$030d], sp
    ld a, [de]
    ld [$1a0d], sp
    nop
    ld a, [de]

jr_013_4b7a:
    ld [bc], a
    dec bc
    ld c, $14
    inc bc
    dec e
    ld c, $05
    ld a, [de]
    ld [de], a
    inc c
    ld c, $0a
    inc b
    jr nz, jr_013_4ba9

    jr jr_013_4b9a

    inc d
    ld a, [de]
    nop
    ld [de], a
    ld [de], a
    inc d
    inc c
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc c

jr_013_4b9a:
    nop
    ld b, $0d
    inc b
    inc de
    ld [$1d02], sp
    ld bc, $1314
    inc de
    ld c, $0d
    ld a, [de]

jr_013_4ba9:
    inc b
    dec c
    ld [de], a
    inc d
    ld de, $1204
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_013_4bd5

    ld [bc], a
    inc b
    ld de, $0013
    ld [$1d0d], sp
    rrca
    inc b
    ld c, $0f
    dec bc
    inc b
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]
    nop
    ld [bc], a
    ld [bc], a
    inc b
    ld [de], a
    ld [de], a
    dec e

jr_013_4bd5:
    inc de
    ld c, $1a
    inc de
    rlca
    ld [$1a12], sp
    dec b
    dec bc
    ld c, $0e
    ld de, $1f20
    inc de
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    db $10
    inc d
    ld [$0413], sp
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc de
    jr @+$0d

    ld [$0712], sp
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $1c20
    jr jr_013_4c13

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    dec c
    inc b
    dec d
    inc b
    ld de, $121a
    inc b
    inc b

jr_013_4c13:
    dec c
    dec e
    nop
    dec c
    ld c, $13
    rlca
    inc b
    ld de, $0b1a
    ld [$040a], sp
    ld a, [de]
    ld [$2713], sp
    rra
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    add hl, bc
    inc b
    ld de, $250a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
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
    nop
    ld de, $1213
    dec e
    inc c
    ld c, $15
    ld [$060d], sp
    jr nz, jr_013_4c6e

    ld [bc], a
    dec bc
    ld [$0a02], sp
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    ld b, $0d
    inc b
    inc de
    ld [$1d02], sp
    ld bc, $1314
    inc de
    ld c, $0d
    ld a, [de]
    dec b
    ld [$1213], sp

jr_013_4c6e:
    ld a, [de]
    ld [$1a0d], sp
    inc de
    ld c, $1d
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $0f
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    dec c
    inc b
    dec bc
    jr nz, jr_013_4cb3

    inc de
    rlca
    ld [$1a12], sp
    ld c, $05
    dec b
    ld [$0402], sp
    ld a, [de]
    rlca
    nop
    ld [de], a
    ld a, [de]
    nop
    dec e
    db $10
    inc d
    ld [$0413], sp
    ld a, [de]
    nop
    ld a, [de]
    dec d
    ld [$1604], sp
    daa

jr_013_4cb3:
    dec e
    inc bc
    inc b
    ld [de], a
    inc b
    ld de, $1a13
    nop
    ld [de], a
    ld a, [de]
    dec b
    nop
    ld de, $001a
    ld [de], a
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    jr jr_013_4cd0

    ld a, [de]
    ld [bc], a
    nop
    dec c

jr_013_4cd0:
    ld a, [de]
    ld [de], a
    inc b
    inc b
    daa
    inc e
    ld b, $04
    inc b
    dec h
    ld a, [de]
    ld d, $07
    nop
    inc de
    ld a, [de]
    jr jr_013_4cf0

    inc d
    dec e
    ld d, $0e
    inc d
    dec bc
    inc bc
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld b, $08
    dec d

jr_013_4cf0:
    inc b
    ld a, [de]
    dec b
    ld c, $11
    dec e
    nop
    ld a, [de]
    dec d
    ld [$1604], sp
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    inc de
    rlca
    ld [$2512], sp
    dec e
    jr @+$10

    inc d
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    ld a, [de]
    ld [de], a
    inc de
    ld [$0b05], sp
    ld [$060d], sp
    nop
    ld a, [de]
    jr jr_013_4d1e

jr_013_4d1e:
    ld d, $0d
    jr nz, @+$21

    jr jr_013_4d32

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
    ld d, $00

jr_013_4d32:
    dec c
    inc de
    inc b
    inc bc
    ld a, [de]
    ld c, $0d
    inc b
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    ld c, $12
    inc b
    ld a, [de]
    inc b
    rla
    rrca
    inc b
    dec c
    ld [de], a
    ld [$0415], sp
    dec e
    dec bc
    inc b
    nop
    inc de
    rlca
    inc b
    ld de, $021a
    rlca
    nop
    ld [$1211], sp
    ld a, [de]
    dec b
    ld c, $11
    jr @+$10

    inc d
    ld de, $0e1a
    ld d, $0d
    ld a, [de]
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, @+$21

    jr jr_013_4d81

    inc d
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    ld c, $15
    inc b

jr_013_4d81:
    ld de, $131d
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld [$1813], sp
    ld hl, $0d1a
    ld [$0402], sp
    dec e
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    jr jr_013_4dac

    inc d
    dec e
    ld d, $0e
    inc d
    dec bc
    inc bc
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld d, $00
    dec c

jr_013_4dac:
    inc de
    ld a, [de]
    inc de
    ld c, $1d
    dec bc
    ld [$0415], sp
    ld a, [de]
    rlca
    inc b
    ld de, $2704
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld [$1813], sp
    ld a, [de]
    dec bc
    ld [$1204], sp
    dec e
    ld bc, $0b04
    ld c, $16
    dec h
    ld a, [de]
    ld d, $00
    ld [$0813], sp
    dec c
    ld b, $1a
    inc de
    ld c, $1d
    inc bc
    ld de, $0800
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    rlca
    dec e
    dec b
    ld de, $0c0e
    ld a, [de]
    inc d
    dec c
    ld [de], a
    inc d
    ld [de], a
    rrca
    inc b
    ld [bc], a
    inc de
    ld [$060d], sp
    dec e
    ld [de], a
    ld c, $14
    dec bc
    ld [de], a
    jr nz, jr_013_4e23

    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    ld [$1a0d], sp
    ld bc, $080b
    dec c
    inc bc
    ld [de], a
    dec e
    rrca
    nop
    ld de, $0813
    nop
    dec bc
    dec bc
    jr @+$1c

    ld c, $01
    ld [de], a
    ld [bc], a
    inc d

jr_013_4e23:
    ld de, $1d04
    inc de
    rlca
    inc b
    ld a, [de]
    dec d
    ld [$1604], sp
    jr nz, jr_013_4e4f

    ld d, $07
    ld [$0413], sp
    ld a, [de]
    ld bc, $080b
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    rlca
    nop
    dec c
    ld b, $1d
    ld c, $15
    inc b
    ld de, $0407
    nop
    inc bc
    jr nz, jr_013_4e6b

    ld [$2a13], sp

jr_013_4e4f:
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    ld [de], a
    ld c, $0b
    ld [$1a03], sp
    ld d, $0e
    ld c, $03
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    jr nz, jr_013_4e83

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]

jr_013_4e6b:
    rrca
    dec bc
    nop
    ld [$250d], sp
    dec e
    ld bc, $0e11
    ld d, $0d
    ld a, [de]
    rrca
    nop
    rrca
    inc b
    ld de, $011a
    nop
    ld b, $20
    rra

jr_013_4e83:
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    ld c, $11
    dec c
    nop
    inc de
    inc b
    dec e
    ld bc, $0011
    ld [de], a
    ld [de], a
    ld a, [de]
    rlca
    nop
    inc de
    ld hl, $0011
    ld [bc], a
    ld a, [bc]
    jr nz, jr_013_4ec1

    inc de
    rlca
    ld [$1a12], sp
    rrca
    nop
    rrca
    inc b
    ld de, $0416
    ld [$0706], sp
    inc de
    dec e
    ld [$1a12], sp
    ld [de], a
    rlca
    nop
    rrca
    inc b
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    inc de

jr_013_4ec1:
    rlca
    inc b
    dec e
    dec b
    ld c, $11
    inc c
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    inc de
    jr jr_013_4ee3

    inc b
    dec e
    ld c, $05
    ld a, [de]
    ld bc, $1108
    inc bc
    jr nz, jr_013_4efb

    ld [$1213], sp
    ld a, [de]

jr_013_4ee3:
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1d04
    dec bc
    ld c, $0e
    ld [de], a
    inc b
    ld a, [de]
    nop
    inc de
    ld a, [de]
    ld [$1213], sp

jr_013_4efb:
    ld a, [de]
    ld bc, $1200
    inc b
    jr nz, jr_013_4f21

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
    ld de, $1a04
    inc de
    rlca
    inc b
    dec e
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
    ld [bc], a

jr_013_4f21:
    ld c, $14
    ld de, $0408
    ld de, $401a
    jr nc, jr_013_4f48

    rrca
    nop
    jr jr_013_4f3b

    inc b
    dec c
    inc de
    ld [de], a
    jr nz, jr_013_4f51

    inc de
    rlca
    inc b
    ld a, [de]
    nop
    inc c

jr_013_4f3b:
    ld c, $14
    dec c
    inc de
    ld a, [de]
    ld d, $11
    ld [$1313], sp
    inc b
    dec c
    rlca

jr_013_4f48:
    inc b
    ld de, $1a04
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]

jr_013_4f51:
    ld bc, $1a04
    inc de
    rlca
    inc b
    dec e
    rrca
    nop
    jr jr_013_4f68

    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    inc c
    ld [bc], a

jr_013_4f68:
    inc c
    inc d
    ld de, $070f
    jr jr_013_4f89

    ld b, $0e
    inc de
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    ld [de], a
    inc b
    ld [$0406], sp
    dec bc
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $0f
    ld a, [de]
    rrca

jr_013_4f89:
    nop
    ld de, $1d13
    ld c, $05
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    rrca
    nop
    rrca
    inc b
    ld de, $0416
    ld [$0706], sp
    inc de
    ld a, [de]
    ld [$1d12], sp
    ld [de], a
    rlca
    nop
    rrca
    inc b
    inc bc
    ld a, [de]
    dec bc
    ld [$040a], sp
    inc bc
    ld a, [de]
    nop
    dec e
    inc bc
    nop
    ld de, $2013
    rra
    ld [$1a13], sp
    nop
    dec bc
    inc c
    ld c, $12
    inc de
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    nop
    ld [de], a
    inc de
    rlca
    ld c, $14
    ld b, $07
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld bc, $030e
    jr jr_013_4ff8

    inc bc
    inc b
    ld [de], a
    ld [$0d06], sp
    inc b
    inc bc
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    ld bc, $1108
    inc bc
    ld a, [de]
    inc de
    ld c, $1a
    nop
    ld [bc], a
    inc de
    inc d
    nop
    dec bc
    dec bc

jr_013_4ff8:
    jr jr_013_5017

    dec b
    dec bc
    jr jr_013_5025

    rra
    jr jr_013_500f

    inc d
    ld a, [de]
    dec c
    ld c, $13
    ld [$0402], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e

jr_013_500f:
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1108
    inc bc

jr_013_5017:
    ld a, [de]
    rrca
    nop
    ld de, $1a13
    rlca
    nop
    ld [de], a
    dec e
    inc bc
    inc b
    inc de
    nop

jr_013_5025:
    ld [bc], a
    rlca
    inc b
    inc bc
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $1200
    inc b
    daa
    rra
    jr jr_013_5049

    inc d
    ld a, [de]
    ld [de], a
    inc de
    inc b
    rrca
    ld a, [de]
    inc bc

Jump_013_5043:
    ld c, $16
    dec c
    ld a, [de]
    ld c, $0d

jr_013_5049:
    inc de
    ld c, $13
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0200
    ld a, [bc]
    ld [de], a
    jr nz, @+$22

    jr nz, jr_013_5078

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc de
    inc b
    ld de, $080b
    dec c
    ld b, $1d
    ld [de], a
    ld [$150b], sp
    inc b
    ld de, $0b1a
    inc b
    inc de
    inc de
    inc b
    ld de, $0e1d

jr_013_5078:
    rrca
    inc b
    dec c
    inc b
    ld de, $1f20
    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c
    dec bc
    jr jr_013_50ad

    ld a, [de]
    nop
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    dec e
    ld bc, $1100
    ld de, $0b04
    ld [de], a
    ld a, [de]
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    ld a, [de]
    nop
    dec c
    inc bc

jr_013_50ad:
    dec e
    ld [bc], a
    ld de, $1214
    rlca
    inc b
    ld [de], a
    ld a, [de]
    jr jr_013_50c6

    inc d
    ld a, [de]
    inc d
    dec c
    inc bc
    inc b
    ld de, $081d
    inc de
    ld [de], a
    ld a, [de]
    ld d, $04

jr_013_50c6:
    ld [$0706], sp
    inc de
    daa
    inc e
    jr jr_013_50dc

    inc d
    ld de, $0b1a
    nop
    ld [de], a
    inc de
    ld a, [de]
    inc de
    rlca
    ld c, $14
    ld b, $07

jr_013_50dc:
    inc de
    dec e
    ld [$1a12], sp
    ld c, $05
    ld a, [de]
    jr jr_013_50f4

    inc d
    ld de, $0c1a
    ld c, $0c
    inc c
    nop
    dec e
    ld d, $07
    ld c, $1a
    nop

jr_013_50f4:
    dec bc
    ld d, $00
    jr @+$14

    ld a, [de]
    ld d, $00
    ld de, $040d
    inc bc
    dec e
    jr jr_013_5111

    inc d
    ld a, [de]
    dec c
    ld c, $13
    ld a, [de]
    inc de
    ld c, $1a
    rrca
    dec bc
    nop
    jr jr_013_512e

jr_013_5111:
    dec c
    inc b
    nop
    ld de, $131a
    ld de, $0800
    dec c
    ld a, [de]
    inc de
    ld de, $0200
    ld a, [bc]
    ld [de], a
    daa
    rra
    nop
    dec c
    ld a, [de]
    ld c, $0b
    inc bc
    ld a, [de]
    rrca
    nop
    ld [de], a

jr_013_512e:
    inc de
    ld de, $0c00
    ld [$0e1a], sp
    dec c
    ld de, $0418
    daa
    ld a, [de]
    ld [$1a05], sp
    ld [$1a13], sp
    ld d, $00
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    dec e
    ld [de], a
    inc de
    nop
    dec bc
    inc b
    ld a, [de]
    jr jr_013_515e

    inc d
    ld a, [de]
    inc c
    ld [$0706], sp
    inc de
    dec e
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    nop

jr_013_515e:
    ld a, [de]
    ld bc, $1308
    inc b
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    nop
    ld de, $0406
    dec e
    dec bc
    inc b
    nop
    inc de
    rlca
    inc b
    ld de, $0121
    ld c, $14
    dec c
    inc bc
    dec e
    dec bc
    inc b
    inc bc
    ld b, $04
    ld de, $1f20
    inc de
    rlca
    ld [$1a12], sp
    dec bc
    inc b
    inc bc
    ld b, $04
    ld de, $0b1a
    ld [$1312], sp
    ld [de], a
    dec e
    rrca
    nop
    jr @+$0e

    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    inc c
    nop
    inc bc
    inc b
    ld a, [de]
    inc de
    ld c, $1d
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    dec d
    ld [$1a00], sp
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec d
    nop
    ld de, $0e08
    inc d
    ld [de], a
    dec e
    ld c, $0f
    inc b
    ld de, $1300
    ld [$0d0e], sp
    ld [de], a
    ld a, [de]
    nop
    ld de, $140e
    dec c
    inc bc
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec c
    inc de
    ld de, $2018
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    ld b, $04
    ld a, [de]
    dec bc
    nop
    ld bc, $0b04
    inc b
    inc bc
    dec e
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    ld a, [de]
    dec bc
    ld [$1312], sp
    ld [de], a
    ld a, [de]
    add hl, bc
    ld c, $04
    jr jr_013_5223

    ld [$0604], sp
    inc b
    dec bc
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec bc
    ld c, $02
    nop
    dec bc

jr_013_5223:
    ld a, [de]
    dec b
    ld de, $0d0e
    inc de
    inc c
    nop
    dec c
    ld a, [de]
    nop
    dec c
    inc bc
    ld [de], a
    rlca
    ld c, $16
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec b
    ld c, $0b
    dec bc
    ld c, $16
    ld [$060d], sp
    inc h
    inc e
    ld h, $0c
    nop
    ld de, $3220
    inc [hl]
    dec h
    dec e
    ld a, [de]
    dec c
    ld c, $20
    ld sp, $1a1a
    ld b, c
    ld sp, $3831
    dec h
    jr nc, jr_013_528c

    jr nc, jr_013_527b

    nop
    rrca
    ld de, $3120
    jr c, jr_013_528a

    dec e
    ld a, [de]
    dec c
    ld c, $20
    inc sp
    ld a, [de]
    ld a, [de]
    ld b, c
    ld sp, $3534
    dec h
    jr nc, jr_013_52a4

    jr nc, @+$1f

    nop
    rrca
    ld de, $3220

jr_013_527b:
    dec [hl]
    dec h
    dec e
    ld a, [de]
    dec c
    ld c, $20
    ld [hl-], a
    ld a, [de]
    ld a, [de]
    ld b, c
    ld sp, $3133
    dec h

jr_013_528a:
    jr nc, jr_013_52bc

jr_013_528c:
    jr nc, jr_013_52ab

    inc c
    nop
    jr jr_013_52ac

    ld sp, $2539
    dec e
    ld a, [de]
    dec c
    ld c, $20
    ld [hl], $1a
    ld a, [de]
    ld b, c
    ld sp, $3832
    dec h
    jr nc, jr_013_52d4

jr_013_52a4:
    jr nc, @+$1e

    add hl, bc
    inc d
    dec c
    jr nz, @+$34

jr_013_52ab:
    inc [hl]

jr_013_52ac:
    dec h
    dec e
    ld a, [de]
    dec c
    ld c, $20
    dec [hl]
    ld a, [de]
    ld a, [de]
    ld b, c
    ld sp, $3336
    dec h
    jr nc, jr_013_52ec

jr_013_52bc:
    jr nc, @+$1f

    add hl, bc
    inc d
    dec bc
    jr nz, jr_013_52f4

    jr nc, jr_013_52ea

    dec e
    ld a, [de]
    dec c
    ld c, $20
    inc [hl]
    ld a, [de]
    ld a, [de]
    ld b, c
    ld sp, $3833
    dec h
    jr nc, jr_013_5304

jr_013_52d4:
    jr nc, jr_013_52f3

    jr nz, jr_013_52f8

    jr nz, jr_013_52fa

    jr nz, @+$22

    jr nz, jr_013_52e2

    inc de
    ld [bc], a
    jr nz, @+$28

jr_013_52e2:
    rra
    rlca
    inc c
    inc c
    jr nz, @+$22

    jr nz, jr_013_5306

jr_013_52ea:
    inc de
    rlca

jr_013_52ec:
    ld [$1a12], sp
    ld bc, $0e0e
    ld a, [bc]

jr_013_52f3:
    ld a, [de]

jr_013_52f4:
    inc c
    ld [$0706], sp

jr_013_52f8:
    inc de
    ld a, [de]

jr_013_52fa:
    ld bc, $0804
    inc bc
    inc b
    dec c
    inc de
    ld [$0002], sp

jr_013_5304:
    dec bc
    ld a, [de]

jr_013_5306:
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld c, $13
    rlca
    inc b
    ld de, $0e1a
    dec c
    inc b
    ld a, [de]
    ld [$1a05], sp
    ld [$1d13], sp
    ld d, $04
    ld de, $0d04
    ld a, [hl+]
    inc de
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec b
    nop
    ld [bc], a
    inc de
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
    ld h, $0d
    ld c, $20
    jr nc, jr_013_5367

    ld a, [de]
    rrca
    nop
    jr jr_013_5352

    inc b
    dec c
    inc de
    ld [de], a
    dec e
    nop
    ld de, $0d04
    ld a, [hl+]
    inc de
    ld a, [de]

jr_013_5352:
    dec bc
    ld [$1312], sp
    inc b
    inc bc
    dec e
    rlca
    inc b
    ld de, $2004
    inc e
    jr jr_013_536f

    inc d
    ld a, [de]
    ld d, $0e
    dec c
    inc bc

jr_013_5367:
    inc b
    ld de, $161a
    rlca
    jr jr_013_538b

    inc de

jr_013_536f:
    rlca
    ld c, $12
    inc b
    ld a, [de]
    nop
    ld de, $0d04
    ld a, [hl+]
    inc de
    dec e
    dec bc
    ld [$1312], sp
    inc b
    inc bc
    jr z, jr_013_53a2

    jr jr_013_5393

    inc d
    ld a, [de]
    ld [de], a
    ld [bc], a
    nop
    dec c

jr_013_538b:
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $1204

jr_013_5393:
    inc de
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0e0e
    ld a, [bc]
    jr nz, jr_013_53c2

jr_013_53a2:
    jr nz, jr_013_53c0

    ld bc, $1314
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld c, $0b
    dec bc
    ld c, $16
    ld [$060d], sp
    rrca
    nop
    ld b, $04
    ld [de], a
    ld a, [de]
    rlca
    ld c, $0b
    inc bc

jr_013_53c0:
    ld a, [de]
    dec c

jr_013_53c2:
    ld c, $1d
    ld [$130d], sp
    inc b
    ld de, $1204
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    jr jr_013_53e0

    inc d
    jr nz, jr_013_53f4

    jr jr_013_53e5

    inc d
    ld a, [de]
    jr jr_013_53db

jr_013_53db:
    dec c
    ld a, [bc]
    ld a, [de]
    rlca
    nop

jr_013_53e0:
    ld de, $1a03
    nop
    dec c

jr_013_53e5:
    inc bc
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1108
    inc bc
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b

jr_013_53f4:
    ld [de], a
    dec e
    nop
    ld d, $00
    jr jr_013_5415

    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $1200
    inc b
    jr nz, jr_013_5426

    ld [de], a
    inc de
    ld de, $0d00
    ld b, $04
    dec h
    ld a, [de]
    inc de
    rlca

jr_013_5415:
    inc b
    ld a, [de]
    ld bc, $1108
    inc bc
    dec e
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    ld [de], a
    ld c, $1a
    dec bc

jr_013_5426:
    ld [$0405], sp
    dec bc
    ld [$040a], sp
    dec e
    nop
    ld [de], a
    ld a, [de]
    ld [$1a05], sp
    ld [$1a13], sp
    inc c
    ld [$0706], sp
    inc de
    dec e
    inc bc
    nop
    ld de, $1a13
    dec b
    ld de, $0c0e
    ld a, [de]
    jr jr_013_5457

    inc d
    ld de, $071d
    nop
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    nop
    dec c
    jr @+$1c

    inc c

jr_013_5457:
    ld [$140d], sp
    inc de
    inc b
    jr nz, jr_013_547d

    jr jr_013_546e

    inc d
    ld a, [de]
    ld b, $00
    ld b, $1a
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    inc de
    rlca
    inc b

jr_013_546e:
    dec e
    ld c, $0b
    inc bc
    ld a, [de]
    dec b
    ld c, $0e
    inc bc
    jr nz, jr_013_5498

    inc de
    rlca
    inc b
    ld a, [de]

jr_013_547d:
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    ld bc, $0e0b
    ld [bc], a
    ld a, [bc]
    ld [de], a
    dec e
    jr jr_013_549a

    inc d
    ld de, $161a
    nop
    jr jr_013_54b3

    rra
    ld [$2a13], sp
    ld [de], a

jr_013_5498:
    ld a, [de]
    nop

jr_013_549a:
    ld a, [de]
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld a, [de]
    dec b
    ld c, $11
    dec e
    nop
    ld a, [de]
    jr nz, jr_013_54dd

    jr c, jr_013_54c6

    ld [de], a
    rrca
    inc b
    ld [bc], a
    ld [$0b00], sp

jr_013_54b3:
    jr nz, jr_013_54d4

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

jr_013_54c6:
    dec e
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    inc c
    nop
    ld a, [bc]
    ld [$060d], sp

jr_013_54d4:
    dec e
    nop
    ld a, [de]
    ld [de], a
    rrca
    inc b
    inc b
    ld [bc], a
    rlca

jr_013_54dd:
    ld a, [de]
    nop
    inc de
    ld a, [de]
    nop
    dec e
    ld bc, $0d00
    db $10
    inc d
    inc b
    inc de
    ld a, [de]
    rlca
    inc b
    dec bc
    inc bc
    ld a, [de]
    ld [$1d0d], sp
    rlca
    ld c, $0d
    ld c, $11
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc bc
    nop
    dec c
    dec e
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    jr nz, jr_013_5525

    ld de, $0c14
    ld c, $11
    ld a, [de]
    rlca
    nop
    ld [de], a
    ld a, [de]
    ld [$1a13], sp
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
    ld de, $1204

jr_013_5525:
    ld [bc], a
    inc d
    inc b
    inc bc
    ld a, [de]
    nop
    dec e
    jr @+$10

    inc d
    dec c
    ld b, $1a
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [de]
    dec b
    ld de, $0c0e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    rlca
    nop
    ld [de], a
    ld a, [de]
    inc de
    ld de, $0004
    inc de
    inc b
    inc bc
    ld a, [de]
    rlca
    ld [$1d0c], sp
    dec bc
    ld [$040a], sp
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    ld c, $0d
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $121d
    ld [$020d], sp
    inc b
    jr nz, jr_013_5594

    dec bc
    ld c, $0e
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    ld [$1302], sp
    inc d
    ld de, $2504
    ld a, [de]
    jr jr_013_559d

    inc d
    dec e
    ld d, $0e
    dec c

jr_013_5594:
    inc bc
    inc b
    ld de, $081a
    dec b
    ld a, [de]
    dec d
    inc b

jr_013_559d:
    dec c
    inc de
    ld [$080d], sp
    dec e
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    nop
    inc de
    ld a, [de]
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    nop
    ld [de], a
    dec b
    nop
    inc de
    rlca
    inc b
    ld de, $051a
    ld [$1406], sp
    ld de, $2804
    inc e
    jr @+$10

    inc d
    ld a, [de]
    inc bc
    ld c, $14
    ld bc, $1a13
    ld [$2513], sp
    dec e
    ld bc, $0204
    nop
    inc d
    ld [de], a
    inc b
    ld a, [de]
    ld d, $0e
    ld de, $1a03
    ld c, $0d
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld a, [de]
    ld [$1a12], sp
    inc de
    rlca
    nop
    inc de
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [de]
    ld [$1a12], sp
    inc b
    dec d
    inc b
    dec c
    dec e
    inc c
    ld c, $11
    inc b
    ld a, [de]
    ld de, $1314
    rlca
    dec bc
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    inc de
    rlca
    nop
    dec c
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    daa
    rra
    jr jr_013_562e

    inc d
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $001a
    ld bc, $140e
    inc de

jr_013_562e:
    dec e
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    dec e
    inc bc
    inc b
    nop
    dec bc
    ld [$060d], sp
    ld [de], a
    ld a, [de]
    ld [$1d0d], sp
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    daa
    ld a, [de]
    inc bc
    ld c, $04
    ld [de], a
    dec e
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]
    inc de
    rlca
    ld [$2812], sp
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld d, $0e
    inc d
    dec bc
    inc bc
    ld a, [de]
    rlca
    inc b
    dec e
    ld bc, $0b04
    ld [$1504], sp
    inc b
    ld a, [de]
    ld [$1a13], sp
    nop
    dec c
    jr jr_013_569e

    nop
    jr @+$2a

    rra
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld d, $07
    nop
    inc de
    ld a, [de]
    jr @+$10

    inc d
    ld a, [hl+]
    inc bc
    dec e
    inc b
    rla

jr_013_569e:
    rrca
    inc b
    ld [bc], a
    inc de
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $120e
    ld [de], a
    ld a, [hl+]
    ld a, [de]
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, @+$1e

    inc b
    dec d
    inc b
    ld de, $1318
    rlca
    ld [$060d], sp
    ld a, [de]
    rlca
    inc b
    ld de, $1a04
    ld [$1612], sp
    ld c, $11
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    dec b
    ld c, $11
    inc de
    inc d
    dec c
    inc b
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    rla
    rrca
    inc b
    dec c
    ld [de], a
    ld [$0415], sp
    dec e
    dec bc
    inc b
    nop
    inc de
    rlca
    inc b
    ld de, $0b1a
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec d
    inc b
    ld de, $0218
    ld c, $0c
    dec b
    ld c, $11
    inc de
    nop
    ld bc, $040b
    jr nz, jr_013_5729

    jr @+$10

    inc d
    ld a, [de]
    inc bc
    inc b
    ld [bc], a
    ld [$0403], sp
    ld a, [de]
    nop
    ld b, $00
    ld [$120d], sp
    inc de
    ld d, $00
    ld [de], a
    inc de
    ld [$060d], sp
    ld a, [de]
    inc de
    ld c, $0e
    ld a, [de]
    inc c

jr_013_5729:
    inc d
    ld [bc], a
    rlca
    dec e
    inc de
    ld [$040c], sp
    jr nz, jr_013_574f

    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc de
    rlca
    ld de, $0004
    inc de
    dec e
    ld d, $00
    ld [de], a
    dec h
    ld a, [de]
    nop
    dec b
    inc de
    inc b
    ld de, $001a

jr_013_574f:
    dec bc
    dec bc
    dec h
    dec e
    db $10
    inc d
    ld [$0413], sp
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    nop
    ld de, $1f27
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
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    rlca
    ld c, $0b
    inc bc
    ld [$060d], sp
    ld a, [de]
    inc d
    rrca
    ld a, [de]
    nop
    ld a, [de]
    rlca
    inc d
    ld b, $04
    dec e
    inc de
    inc d
    dec c
    nop
    daa
    inc e
    jr jr_013_57ac

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

jr_013_57ac:
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
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
    rrca
    nop
    ld [$1a03], sp
    nop
    ld a, [de]
    rrca
    ld de, $1304
    inc de
    jr jr_013_57e8

    rrca
    inc b
    dec c
    dec c
    jr jr_013_57eb

    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    dec b
    ld [$0712], sp
    ld [$060d], sp
    ld a, [de]
    inc de
    ld de, $0f08
    daa
    rra

jr_013_57e8:
    nop
    ld a, [de]
    dec b

jr_013_57eb:
    ld [$040d], sp
    ld a, [de]
    ld [de], a
    ld [$0a0b], sp
    dec e
    ld [bc], a
    inc d
    ld de, $0013
    ld [$200d], sp
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    inc b
    rla
    rrca
    inc b
    dec c
    ld [de], a
    ld [$0415], sp
    dec e
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    ld a, [de]
    inc c
    nop
    inc bc
    inc b
    ld a, [de]
    ld c, $05
    dec e
    ld [bc], a
    rlca
    inc b
    ld de, $1811
    ld a, [de]
    ld d, $0e
    ld c, $03
    jr nz, jr_013_5848

    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld a, [bc]
    inc b
    inc b
    rrca
    dec e
    rlca
    ld [$1a12], sp
    ld [$0f0c], sp
    ld c, $11
    inc de
    nop
    dec c
    inc de
    dec e

jr_013_5848:
    inc bc
    ld c, $02
    inc d
    inc c
    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    rlca
    inc b
    ld de, $2004
    rra
    inc de
    rlca
    ld [$1a12], sp
    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1a04
    inc de
    rlca
    inc b
    dec e
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    inc de
    ld c, $1a
    dec bc
    inc b
    nop
    dec d
    inc b
    dec e
    ld [bc], a
    ld c, $0d
    ld [bc], a
    ld de, $1304
    inc b
    ld a, [de]
    rrca
    ld de, $0e0e
    dec b
    ld a, [de]
    ld c, $05
    dec e
    ld d, $07
    nop
    inc de
    ld a, [de]
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [de]
    ld [$1a12], sp
    inc d
    rrca
    inc de
    ld c, $20
    rra
    jr jr_013_58b1

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

jr_013_58b1:
    ld c, $14
    inc de
    ld [de], a
    ld [$0403], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    nop
    dec c
    ld [bc], a
    jr @+$1f

    ld bc, $0811
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    dec b
    nop
    ld [bc], a
    nop
    inc bc
    inc b
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    inc d
    ld [bc], a
    ld a, [bc]
    jr jr_013_58f7

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
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    ld [$0e0d], sp
    jr nz, @+$21

    inc de
    rlca
    inc b

jr_013_58f7:
    ld a, [de]
    dec b
    ld de, $0d0e
    inc bc
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    ld [$0f12], sp
    nop
    dec bc
    inc c
    ld a, [de]
    inc de
    ld de, $0404
    ld a, [de]
    rrca
    ld de, $150e
    ld [$0403], sp
    dec e
    nop
    ld a, [de]
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    ld a, [de]
    inc c
    inc b
    nop
    ld [de], a
    inc d
    ld de, $1a04
    ld c, $05
    ld [de], a
    rlca
    nop
    inc bc
    inc b
    jr nz, jr_013_5950

    nop
    ld a, [de]
    inc c
    inc b
    inc bc
    ld [$0c14], sp
    ld a, [de]
    ld [de], a
    ld [$0419], sp
    ld a, [de]
    rrca
    nop
    dec bc
    inc c
    inc de
    ld de, $0404
    ld a, [de]
    dec b
    dec bc
    nop
    dec c
    ld a, [bc]
    ld [de], a
    ld a, [de]
    inc de

jr_013_5950:
    rlca
    inc b
    dec e
    inc b
    dec c
    inc de
    ld de, $0d00
    ld [bc], a
    inc b
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    rlca
    ld c, $13
    inc b
    dec bc
    jr nz, jr_013_5989

    inc de
    rlca
    inc b
    ld a, [de]
    nop
    ld d, $0d
    ld [$060d], sp
    ld a, [de]
    ld de, $0004
    inc bc
    ld [de], a
    dec e
    ld [$1a0d], sp
    ld bc, $0608
    ld a, [de]
    ld bc, $0b0e
    inc bc
    dec e
    dec bc
    inc b

jr_013_5989:
    inc de
    inc de
    inc b
    ld de, $2512
    ld a, [de]
    ld h, $0b
    inc d
    ld [bc], a
    ld a, [bc]
    jr @+$1f

    inc bc
    ld [$0402], sp
    ld a, [de]
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
    jr nz, jr_013_59d4

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1100
    ld de, $0d04
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    inc b
    ld de, $1d13
    ld [de], a
    inc de
    ld de, $1304
    ld [bc], a
    rlca
    inc b
    ld [de], a
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    dec b
    nop
    ld de, $001d
    ld [de], a

jr_013_59d4:
    ld a, [de]
    jr jr_013_59e5

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld [de], a
    inc b
    inc b
    jr nz, jr_013_5a01

    ld c, $0e
    rrca

jr_013_59e5:
    ld [de], a
    jr nz, @+$22

    jr nz, jr_013_5a04

    ld b, $0e
    inc de
    inc de
    nop
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld [$1a13], sp
    dec b
    ld [$1211], sp
    inc de
    daa
    rra
    inc de
    rlca
    nop

jr_013_5a01:
    inc de
    ld a, [hl+]
    ld [de], a

jr_013_5a04:
    ld a, [de]
    nop
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
    jr nz, jr_013_5a37

    rlca
    inc c
    inc c
    jr nz, jr_013_5a3d

    jr nz, @+$1f

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
    jr nz, jr_013_5a4f

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1100

jr_013_5a37:
    ld de, $0d04
    dec e
    ld d, $00

jr_013_5a3d:
    ld [de], a
    inc de
    inc b
    dec bc
    nop
    dec c
    inc bc
    ld a, [de]
    ld b, $0e
    inc b
    ld [de], a
    ld a, [de]
    ld c, $0d
    dec e
    nop
    dec c

jr_013_5a4f:
    inc bc
    ld a, [de]
    ld c, $0d
    jr nz, @+$21

    jr @+$10

    inc d
    ld a, [de]
    rlca
    ld c, $0f
    inc b
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld bc, $1d18
    dec bc
    inc b
    nop
    dec d
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    inc de
    ld c, $06
    ld [$2a04], sp
    ld [de], a
    dec e
    ld [bc], a
    ld [$0006], sp
    ld de, $161a
    ld de, $0f00
    rrca
    inc b
    ld de, $0e1a
    dec c
    dec e
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    ld a, [de]
    ld [$1d0d], sp
    rlca
    ld [$1a12], sp
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    dec e
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, jr_013_5acd

    jr nz, @+$1e

    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc c
    nop
    jr jr_013_5ab9

    inc b

jr_013_5ab9:
    ld a, [de]
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld d, $08
    dec bc
    dec bc
    ld a, [de]
    rrca
    nop
    dec c
    ld [$1a02], sp
    nop

jr_013_5acd:
    dec c
    inc bc
    dec e
    inc de
    rlca
    ld [$0a0d], sp
    ld a, [de]
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
    dec e
    ld [$1a12], sp
    ld c, $0d
    ld a, [de]
    inc de
    ld c, $1a
    rlca
    ld [$1d12], sp
    ld [de], a
    ld [bc], a
    rlca
    inc b
    inc c
    inc b
    ld [de], a
    jr nz, @+$22

    jr nz, jr_013_5b19

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    dec bc
    ld c, $02
    ld a, [bc]
    inc b
    inc bc
    jr nz, jr_013_5b26

    ld [de], a
    inc de
    ld c, $06
    ld [$1a04], sp
    nop
    ld [$120c], sp
    ld a, [de]
    rlca
    ld [$1d12], sp
    ld b, $14

jr_013_5b19:
    dec c
    ld a, [de]
    nop
    inc de
    ld a, [de]
    jr jr_013_5b2e

    inc d
    jr nz, jr_013_5b3d

    rlca
    inc b
    dec e

jr_013_5b26:
    dec c
    inc b
    inc b
    inc bc
    ld [de], a
    ld a, [de]
    ld c, $0d

jr_013_5b2e:
    dec bc
    jr @+$1c

    ld c, $0d
    inc b
    dec e
    ld [de], a
    rlca
    ld c, $13
    ld a, [de]
    inc de
    ld c, $1a

jr_013_5b3d:
    inc b
    dec c
    inc bc
    ld a, [de]
    jr @+$10

    inc d
    ld de, $0b1d
    ld [$0405], sp
    jr nz, jr_013_5b68

    ld h, $08
    ld a, [de]
    dec bc
    ld c, $15
    inc b
    ld a, [de]
    inc c
    jr jr_013_5b71

    add hl, bc
    ld c, $01
    dec h
    ld h, $1d
    rlca
    inc b
    ld a, [de]
    ld [de], a
    nop
    jr jr_013_5b76

    ld a, [de]
    nop
    ld [de], a
    ld a, [de]

jr_013_5b68:
    rlca
    inc b
    dec e
    ld d, $00
    dec bc
    ld a, [bc]
    ld [de], a
    ld a, [de]

jr_013_5b71:
    nop
    ld d, $00
    jr @+$22

jr_013_5b76:
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc d
    dec c
    ld a, [de]
    ld bc, $0004
    inc de
    ld [de], a
    ld a, [de]
    inc bc
    ld c, $16
    dec c
    inc c
    inc b
    ld de, $0802
    dec bc
    inc b
    ld [de], a
    ld [de], a
    dec bc
    jr @+$1c

    ld c, $0d
    dec e
    jr jr_013_5ba8

    inc d
    jr nz, jr_013_5bbc

    dec c
    ld c, $1a
    ld [de], a
    rlca
    nop
    inc bc
    inc b
    dec h
    ld a, [de]
    dec c

jr_013_5ba8:
    ld c, $1d
    ld d, $00
    inc de
    inc b
    ld de, $2020
    jr nz, jr_013_5bcf

    jr jr_013_5bc3

    inc d
    ld a, [de]
    ld [de], a
    ld d, $04
    nop
    inc de

jr_013_5bbc:
    dec e
    rrca
    ld de, $050e
    inc d
    ld [de], a

jr_013_5bc3:
    inc b
    dec bc
    jr jr_013_5bec

    ld a, [de]
    rlca
    ld c, $0f
    ld [$060d], sp
    dec e

jr_013_5bcf:
    dec b
    ld c, $11
    ld a, [de]
    nop
    dec c
    ld a, [de]
    inc b
    dec c
    inc bc
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    ld [$0312], sp
    inc b
    ld [de], a
    inc b
    ld de, $2013
    rra
    nop
    ld a, [de]
    ld [bc], a

jr_013_5bec:
    ld c, $0f
    ld a, [de]
    rrca
    nop
    inc de
    ld de, $0b0e
    dec bc
    ld [$060d], sp
    dec e
    rlca
    ld [$1a12], sp
    ld bc, $0004
    inc de
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b
    ld [de], a
    dec e
    ld c, $15
    inc b
    ld de, $131a
    ld c, $1a
    ld [de], a
    inc b
    inc b
    ld a, [de]
    ld d, $07
    nop
    inc de
    dec e
    nop
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0214
    ld a, [bc]
    inc d
    ld [de], a
    ld a, [de]
    ld [$1d12], sp
    nop
    ld bc, $140e
    inc de
    jr nz, jr_013_5c4f

    jr @+$10

    inc d
    ld a, [de]
    inc c
    ld c, $14
    inc de
    rlca
    ld a, [de]
    ld c, $05
    dec b
    ld a, [de]
    inc de
    ld c, $1d
    rlca
    ld [$1a0c], sp
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    rrca

jr_013_5c4f:
    ld c, $0b
    ld [$0402], sp
    dec e
    ld bc, $1411
    inc de
    nop
    dec bc
    ld [$1813], sp
    ld hl, $121d
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]
    rlca
    inc b
    dec e
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    nop
    ld b, $11
    inc b
    inc b
    dec e
    ld d, $08
    inc de
    rlca
    ld hl, $121a
    ld c, $1a
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc d
    ld bc, $1d12
    jr jr_013_5c9d

    inc d
    ld a, [de]
    ld c, $15
    inc b
    ld de, $131a
    rlca
    inc b
    ld a, [de]
    rlca
    inc b
    nop

jr_013_5c9d:
    inc bc
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    rlca
    nop
    dec bc
    dec bc
    ld [de], a
    ld a, [de]
    jr jr_013_5cb9

    inc d
    ld a, [de]
    ld [$270d], sp
    rra
    ld h, $16
    nop
    inc de
    inc b
    ld de, $2625

jr_013_5cb9:
    ld a, [de]
    jr jr_013_5cca

    inc d
    dec e
    ld [bc], a
    ld de, $000e
    ld a, [bc]
    jr nz, @+$1e

    ld [$2a13], sp
    ld [de], a
    ld a, [de]

jr_013_5cca:
    ld c, $0d
    dec bc
    jr jr_013_5ce9

    nop
    ld a, [de]
    inc c
    nop
    inc de
    inc de
    inc b
    ld de, $050e
    ld a, [de]
    inc de
    ld [$040c], sp
    ld a, [de]
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]
    jr @+$10

    inc d

jr_013_5ce9:
    ld bc, $0204
    ld c, $0c
    inc b
    ld a, [de]
    ld bc, $1914
    add hl, de
    nop
    ld de, $1d03
    ld bc, $0800
    inc de
    jr nz, @+$22

    jr nz, jr_013_5d1f

    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    ld [$1a13], sp
    ld bc, $2804
    ld a, [de]
    ld d, $07
    jr jr_013_5d2e

    jr @+$06

    ld [de], a
    dec h
    ld a, [de]
    ld [$1a13], sp
    ld [$2712], sp
    dec e
    jr nz, jr_013_5d3f

jr_013_5d1f:
    jr nz, jr_013_5d21

jr_013_5d21:
    ld a, [de]
    dec bc
    inc b
    inc c
    ld c, $0d
    nop
    inc bc
    inc b
    dec e
    ld [de], a
    inc de
    nop

jr_013_5d2e:
    dec c
    inc bc
    daa
    inc e
    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    inc de
    nop
    ld b, $06
    inc b
    ld de, $0e1a

jr_013_5d3f:
    dec d
    inc b
    ld de, $131d
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld de, $1200
    rrca
    dec h
    ld a, [de]
    ld h, $16
    nop
    inc de
    inc b
    ld de, $1a27
    ld [$0d1d], sp
    inc b
    inc b
    inc bc
    ld a, [de]
    ld d, $00
    inc de
    inc b
    ld de, $2627
    rra
    inc b
    ld de, $0e11
    ld de, $091f
    inc d
    ld [de], a
    inc de
    ld a, [de]
    nop
    ld a, [de]
    inc c
    ld [$0011], sp
    ld b, $04
    daa
    dec e
    jr jr_013_5d96

    inc d
    ld a, [de]
    ld [de], a
    rlca
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    dec e

jr_013_5d96:
    ld a, [bc]
    dec c
    ld c, $16
    dec c
    daa
    inc e
    jr @+$10

    inc d
    ld a, [de]
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $1a04
    dec c
    inc b
    nop
    ld de, $131d
    rlca
    inc b
    ld a, [de]
    inc b
    dec c
    inc bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    jr @+$10

    inc d
    ld de, $041d
    dec c
    inc bc
    inc d
    ld de, $0d00
    ld [bc], a
    inc b
    ld a, [de]
    ld bc, $0204
    nop
    inc d
    ld [de], a
    inc b
    dec e
    jr jr_013_5de0

    inc d
    ld de, $0c1a
    ld [$030d], sp
    ld a, [de]
    ld [$1d12], sp
    ld bc, $0604

jr_013_5de0:
    ld [$0d0d], sp
    ld [$060d], sp
    ld a, [de]
    inc de
    ld c, $1a
    rrca
    dec bc
    nop
    jr jr_013_5e0c

    inc de
    ld de, $0208
    ld a, [bc]
    ld [de], a
    ld a, [de]
    ld c, $0d
    ld a, [de]
    jr jr_013_5e09

    inc d
    daa
    rra
    jr @+$10

    inc d
    ld a, [de]
    dec b
    nop
    dec bc
    dec bc
    ld a, [de]
    dec b
    nop

jr_013_5e09:
    ld [bc], a
    inc b
    ld a, [de]

jr_013_5e0c:
    inc bc
    ld c, $16
    dec c
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    nop
    dec c
    inc bc
    jr nz, jr_013_5e37

    jr jr_013_5e2d

    inc d
    dec e
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    inc c
    nop
    dec c
    nop
    ld b, $04

jr_013_5e2d:
    dec e
    nop
    dec c
    ld c, $13
    rlca
    inc b
    ld de, $121a

jr_013_5e37:
    inc de
    inc b
    rrca
    jr nz, jr_013_5e5c

    jr nz, jr_013_5e5a

    jr jr_013_5e4e

    inc d
    ld a, [de]
    dec bc
    ld [$1a04], sp
    dec b
    ld c, $11
    ld a, [de]
    ld d, $07
    nop
    inc de

jr_013_5e4e:
    dec e
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    ld c, $0d

jr_013_5e5a:
    ld b, $1a

jr_013_5e5c:
    inc de
    ld [$040c], sp
    dec e
    ld d, $00
    ld [$0813], sp
    dec c
    ld b, $1a
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc b
    dec c
    inc bc
    ld a, [de]
    inc de
    ld c, $1a
    ld [bc], a
    ld c, $0c
    inc b
    jr nz, jr_013_5e9a

    ld [$1a13], sp
    inc bc
    ld c, $04
    ld [de], a
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    ld bc, $1314
    dec e
    dec c
    ld c, $13
    ld a, [de]
    ld [de], a
    ld c, $0e
    dec c
    ld a, [de]
    inc b
    dec c

jr_013_5e9a:
    ld c, $14
    ld b, $07
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    ld c, $11
    dec c
    ld [de], a
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    ld [$0212], sp
    nop
    ld [bc], a
    inc de
    inc d
    ld [de], a
    ld a, [de]
    nop
    ld de, $1a04
    dec c
    inc b
    inc b
    inc bc
    dec bc
    inc b
    dec e
    ld [de], a
    rlca
    nop
    ld de, $270f
    rra
    ld [$021a], sp
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    inc bc
    ld c, $1a
    inc de
    rlca
    nop
    inc de
    jr nz, jr_013_5efb

    inc de
    rlca
    ld [$1a12], sp
    inc de
    ld de, $0404
    ld a, [de]
    ld [de], a
    inc d
    ld de, $1a04
    ld [$1d12], sp
    ld b, $11
    ld c, $16
    ld [$060d], sp
    ld a, [de]
    ld d, $04
    dec bc
    dec bc
    dec h

jr_013_5efb:
    dec e
    ld [bc], a
    ld c, $0d
    ld [de], a
    ld [$0403], sp
    ld de, $0d08
    ld b, $20
    rra
    jr nz, jr_013_5f2b

    jr nz, jr_013_5f1a

    ld c, $1a
    nop
    dec c
    ld [de], a
    ld d, $04
    ld de, $1f20
    ld [$2a13], sp

jr_013_5f1a:
    ld [de], a
    ld a, [de]
    ld [de], a
    ld c, $1a
    rlca
    ld c, $13
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    jr jr_013_5f38

    inc d

jr_013_5f2b:
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    dec b
    ld de, $1a18
    nop
    dec c

jr_013_5f38:
    dec e
    inc b
    ld b, $06
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    ld de, $020e
    ld a, [bc]
    daa
    rra
    ld [$1a05], sp
    jr @+$10

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
    dec e
    ld [$2513], sp
    ld a, [de]
    jr jr_013_5f71

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    dec e
    inc de
    rlca
    ld de, $160e
    ld a, [de]

jr_013_5f71:
    ld [$1a13], sp
    nop
    ld d, $00
    jr @+$22

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc d
    dec c
    ld hl, $011d
    dec bc
    inc b
    nop
    ld [bc], a
    rlca
    inc b
    inc bc
    ld a, [de]
    ld [de], a
    ld a, [bc]
    inc d
    dec bc
    dec bc
    dec e
    dec b
    ld de, $0c0e
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    rlca
    nop
    rrca
    dec bc
    inc b
    ld [de], a
    ld [de], a
    dec e
    nop
    dec c
    ld [$000c], sp
    dec bc
    jr nz, jr_013_5fd0

    inc de
    rlca
    ld [$1a12], sp
    ld b, $11
    nop
    ld [de], a
    ld [de], a
    ld a, [de]
    ld [$1d12], sp
    inc de
    ld de, $0818
    dec c
    ld b, $1a
    dec d
    inc b
    ld de, $1a18
    rlca
    nop
    ld de, $1d03

jr_013_5fd0:
    inc de
    ld c, $1a
    ld b, $11
    ld c, $16
    ld a, [de]
    rlca
    inc b
    ld de, $2004
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    ld [$1a03], sp
    inc de
    ld c, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    nop
    inc c
    rrca
    inc b
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    inc c
    nop
    add hl, de
    ld [$060d], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    inc de
    rlca
    ld [$1a12], sp
    ld [bc], a
    nop
    ld [bc], a
    inc de
    inc d
    ld [de], a
    ld a, [de]
    ld [bc], a
    nop
    dec c
    dec e
    ld b, $11
    ld c, $16
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    ld [$1d12], sp
    ld bc, $1100
    ld de, $0d04
    ld a, [de]
    ld d, $00
    ld [de], a
    inc de
    inc b
    dec bc
    nop
    dec c
    inc bc
    jr nz, @+$21

    jr jr_013_604b

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

jr_013_604b:
    dec c
    inc b
    nop
    ld de, $131a
    rlca
    inc b
    ld a, [de]
    ld c, $14
    inc de
    ld [de], a
    ld a, [bc]
    ld [$1311], sp
    ld [de], a
    ld c, $05
    ld a, [de]
    inc de
    ld c, $16
    dec c
    jr nz, @+$21

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
    ld h, $11
    inc b
    dec bc
    ld [$0d00], sp
    inc de
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    inc b
    ld de, $2612
    ld [$1a0d], sp
    ld bc, $0608
    dec h
    ld a, [de]
    ld bc, $0b0e
    inc bc
    dec e
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $2012
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    ld de, $1203
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
    ld de, $2612
    ld a, [de]
    nop
    ld de, $1d04
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
    dec e
    ld d, $08
    dec c
    inc bc
    ld c, $16
    jr nz, jr_013_60f3

    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    rlca
    inc d
    inc de
    inc de
    inc b
    ld de, $081a
    ld [de], a
    dec e
    dec b
    ld [$130b], sp
    rlca
    jr jr_013_610a

    ld a, [de]
    ld bc, $0300
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]

jr_013_60f3:
    nop
    dec e
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    inc b
    ld de, $122a
    ld a, [de]
    ld [$000c], sp
    ld b, $04
    dec h
    dec e
    inc bc
    ld c, $0d
    ld a, [hl+]

jr_013_610a:
    inc de
    ld a, [de]
    jr jr_013_611c

    inc d
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    jr z, jr_013_6136

    ld [de], a
    inc d
    inc bc
    inc bc
    inc b

jr_013_611c:
    dec c
    dec bc
    jr jr_013_6145

    ld a, [de]
    nop
    ld a, [de]
    ld d, $0e
    inc c
    nop
    dec c
    dec e
    add hl, bc
    inc d
    inc c
    rrca
    ld [de], a
    ld a, [de]
    ld [$1a0d], sp
    dec b
    ld de, $0d0e

jr_013_6136:
    inc de
    ld a, [de]
    ld c, $05
    dec e
    jr jr_013_614b

    inc d
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    dec bc

jr_013_6145:
    nop
    rrca
    ld [de], a
    ld a, [de]
    jr jr_013_6159

jr_013_614b:
    inc d
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    nop
    ld [bc], a
    inc b
    daa

jr_013_6159:
    inc e
    ld [de], a
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld [bc], a
    ld a, [bc]
    dec bc
    inc b
    ld [de], a
    dec h
    dec e
    ld h, $13
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    nop
    dec bc
    dec bc
    dec e
    inc de
    rlca
    ld c, $12
    inc b
    ld a, [de]
    inc de
    ld [$040c], sp
    ld [de], a
    dec h
    ld a, [de]
    jr jr_013_6194

    inc d
    dec e
    ld [bc], a
    ld de, $0404
    rrca
    daa
    ld h, $1c
    ld [de], a
    rlca
    inc b
    ld a, [de]

jr_013_6194:
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    ld de, $0d14
    ld [de], a
    ld a, [de]
    ld c, $05
    dec b
    dec e
    dec bc
    inc b
    nop
    dec d
    ld [$060d], sp
    ld a, [de]
    jr jr_013_61ba

    inc d
    ld a, [de]
    dec d
    inc b
    ld de, $1d18
    rrca
    inc b
    ld de, $0b0f
    inc b
    rla

jr_013_61ba:
    inc b
    inc bc
    jr nz, jr_013_61d8

    ld d, $07
    ld c, $1a
    ld d, $00
    ld [de], a
    inc de
    rlca
    nop
    inc de
    jr z, @+$21

    ld h, $07
    inc b
    jr jr_013_61f7

    ld a, [de]
    jr jr_013_61e1

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c

jr_013_61d8:
    ld a, [hl+]
    inc de
    dec e
    ld d, $00
    dec bc
    ld a, [bc]
    ld a, [de]
    nop

jr_013_61e1:
    ld de, $140e
    dec c
    inc bc
    ld a, [de]
    rlca
    inc b
    ld de, $1d04
    ld [de], a
    inc de
    nop
    ld de, $1a0a
    dec c
    nop
    ld a, [bc]
    inc b
    inc bc

jr_013_61f7:
    daa
    ld h, $1f
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    inc b
    ld de, $1a13
    inc b
    rla
    inc de
    inc b
    dec c
    inc bc
    ld [de], a
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    ld c, $11
    ld [$0e19], sp
    dec c
    jr nz, @+$21

    nop
    ld a, [de]
    dec bc
    nop
    ld de, $0406
    ld a, [de]
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    dec e
    rlca
    ld c, $14
    ld [de], a
    ld [$060d], sp
    ld a, [de]
    inc de
    rlca
    inc b
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
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld [de], a
    dec e
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]
    jr jr_013_6265

    inc d
    jr nz, jr_013_6279

    inc de
    rlca
    ld [$1a12], sp
    dec bc
    nop
    ld de, $0406
    ld a, [de]

jr_013_6265:
    nop
    ld de, $0702
    inc b
    inc bc
    dec e
    ld d, $08
    dec c
    inc bc
    ld c, $16
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e

jr_013_6279:
    rrca
    ld c, $0e
    ld de, $180b
    ld a, [de]
    inc c
    nop
    inc bc
    inc b
    jr nz, jr_013_62a5

    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc b
    dec bc
    inc b
    dec d
    nop
    inc de
    ld c, $11
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld [de], a
    dec h
    dec e
    ld [de], a
    ld c, $0c

jr_013_62a5:
    inc b
    ld a, [de]
    inc de
    rlca
    inc d
    ld b, $1a
    ld [de], a
    inc de
    inc b
    rrca
    ld [de], a
    ld a, [de]
    ld [$000d], sp
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    nop
    jr jr_013_62ce

    dec h
    inc e
    ld h, $07
    inc b
    jr jr_013_62e8

    ld a, [de]
    rlca
    ld c, $16
    ld a, [hl+]
    inc bc
    ld a, [de]
    jr jr_013_62da

    inc d
    dec e

jr_013_62ce:
    ld b, $04
    inc de
    ld a, [de]
    inc de
    rlca
    ld [$2812], sp
    ld a, [de]
    jr jr_013_62e8

jr_013_62da:
    inc d
    dec e
    nop
    ld [$2a0d], sp
    inc de
    ld a, [de]
    nop
    dec bc
    dec bc
    ld c, $16
    inc b

jr_013_62e8:
    inc bc
    dec e
    inc d
    rrca
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $120e
    ld [de], a
    ld a, [hl+]
    dec e
    ld c, $05
    dec b
    ld [$0402], sp
    daa
    ld a, [de]
    ld [de], a
    ld c, $11
    ld de, $1a18
    ld bc, $0114
    dec h
    dec c
    ld c, $13
    rlca
    ld [$060d], sp
    ld a, [de]
    rrca
    inc b
    ld de, $0e12
    dec c
    nop
    dec bc
    daa
    ld h, $1c
    ld de, $1204
    inc de
    ld a, [de]
    ld [$1a0d], sp
    rrca
    inc b
    nop
    ld [bc], a
    inc b
    dec h
    dec e
    nop
    ld [bc], a
    inc b
    jr nz, jr_013_6353

    jr nz, @+$21

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
    ld h, $0b
    nop
    ld [de], a
    ld a, [de]
    dec d
    inc b
    ld b, $00
    ld [de], a
    dec e
    ld [de], a
    inc de
    nop
    inc de

jr_013_6353:
    ld [$0d0e], sp
    jr nz, jr_013_637e

    rra
    nop
    ld a, [de]
    ld [bc], a
    rlca
    ld [$1a0f], sp
    ld [$1a12], sp
    ld d, $0e
    ld de, $0713
    dec e
    ld b, c
    dec [hl]
    jr nz, jr_013_638c

    jr jr_013_637d

    inc d
    ld de, $081a
    dec c
    ld [de], a
    ld [$0403], sp
    ld a, [de]
    inc de
    rlca
    inc b
    dec e

jr_013_637d:
    dec bc

jr_013_637e:
    nop
    ld [de], a
    ld a, [de]
    dec d
    inc b
    ld b, $00
    ld [de], a
    ld a, [de]
    inc de
    ld de, $0800
    dec c

jr_013_638c:
    dec e
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    jr nz, jr_013_63b5

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld d, $04
    dec bc
    dec bc
    ld hl, $0e16
    ld de, $1d0d
    ld d, $0e
    ld c, $03
    inc b
    dec c
    ld a, [de]
    ld bc, $0d04
    ld [bc], a
    rlca
    jr nz, @+$21

jr_013_63b5:
    inc de
    rlca
    ld [$1a12], sp
    ld [de], a
    ld [$0d06], sp
    ld a, [de]
    rrca
    ld c, $08
    dec c
    inc de
    ld [de], a
    dec e
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    ld h, $01
    nop
    ld b, $06
    nop
    ld b, $04
    dec e
    ld [bc], a
    dec bc
    nop
    ld [$1a0c], sp
    nop
    ld de, $0004
    jr nz, jr_013_6408

    rra
    jr @+$10

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
    ld a, [de]
    ld [$1d05], sp
    jr jr_013_6405

    inc d
    ld de, $0d1a
    inc b
    ld de, $0415
    ld [de], a
    ld a, [de]
    nop
    ld de, $1d04

jr_013_6405:
    nop
    ld [bc], a
    inc de

jr_013_6408:
    ld [$060d], sp
    ld a, [de]
    inc d
    rrca
    dec h
    ld a, [de]
    ld bc, $1314
    dec e
    inc de
    rlca
    ld [$1a12], sp
    ld b, $14
    jr jr_013_6437

    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    dec e
    ld [de], a
    inc d
    ld [de], a
    rrca
    ld [$0802], sp
    ld c, $14
    ld [de], a
    jr nz, @+$21

    inc de
    rlca
    ld [$1a12], sp
    dec bc
    inc b
    nop

jr_013_6437:
    inc bc
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    dec bc
    inc d
    ld b, $06
    nop
    ld b, $04
    ld a, [de]
    ld [bc], a
    dec bc
    nop
    ld [$1d0c], sp
    nop
    ld de, $0004
    jr nz, jr_013_6474

    jr @+$10

    inc d
    ld a, [de]
    dec c
    nop
    ld [$1a0b], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    jr @+$1f

    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    ld d, $08
    ld [bc], a
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]

jr_013_6474:
    dec bc
    inc b
    dec b
    inc de
    rlca
    ld c, $0e
    ld a, [bc]
    daa
    inc e
    jr jr_013_648e

    inc d
    ld de, $071a
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    ld [bc], a
    rlca
    inc b
    ld [de], a
    ld a, [de]

jr_013_648e:
    nop
    dec e
    ld bc, $1308
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    ld bc, $180e
    ld a, [de]
    inc bc
    ld [$1d03], sp
    jr jr_013_64b1

    inc d
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    ld a, [de]
    rlca
    ld [$1d12], sp
    ld [bc], a
    dec bc

jr_013_64b1:
    ld c, $02
    ld a, [bc]
    daa
    rra
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
    jr jr_013_64e9

    dec e
    inc de
    rlca
    ld [$1a12], sp
    ld [$0d12], sp
    ld a, [hl+]
    inc de
    ld a, [de]
    nop
    dec e
    ld bc, $170e
    ld [$060d], sp
    ld a, [de]
    ld de, $0d08
    ld b, $20
    jr nz, jr_013_6500

    inc e
    nop
    ld a, [de]
    ld [bc], a
    ld c, $0f
    ld a, [de]
    db $10
    inc d

jr_013_64e9:
    ld [$0a02], sp
    dec bc
    jr jr_013_650c

    ld [bc], a
    ld c, $0c
    inc b
    ld [de], a
    ld a, [de]
    ld c, $15
    inc b
    ld de, $131a
    ld c, $1d
    ld [de], a
    inc b
    inc b

jr_013_6500:
    ld a, [de]
    ld d, $07
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rlca
    inc d

jr_013_650c:
    ld bc, $1401
    ld bc, $081a
    ld [de], a
    ld a, [de]
    nop
    dec bc
    dec bc
    dec e
    nop
    ld bc, $140e
    inc de
    jr nz, jr_013_653b

    ld [de], a
    dec bc
    nop
    rrca
    rrca
    ld [$060d], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    inc d
    dec b
    dec b
    ld [de], a
    ld c, $0d
    ld a, [de]
    jr @+$10

    inc d
    dec h
    ld a, [de]
    rlca
    inc b

jr_013_653b:
    ld a, [de]
    ld [bc], a
    rlca
    nop
    ld de, $0406
    ld [de], a
    jr jr_013_6553

    inc d
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld [de], a
    ld [de], a
    nop
    inc d
    dec bc
    inc de

jr_013_6553:
    jr nz, jr_013_6574

    inc de
    rlca
    inc b
    jr jr_013_6574

    ld a, [bc]
    inc b
    inc b
    rrca
    ld a, [de]
    jr jr_013_656f

    inc d
    ld a, [de]
    ld [$1d0d], sp
    add hl, bc
    nop
    ld [$250b], sp
    ld a, [de]
    nop
    inc de
    ld a, [de]

jr_013_656f:
    inc de
    rlca
    inc b
    ld a, [de]
    inc b

jr_013_6574:
    dec c
    inc bc
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $04
    inc b
    ld a, [bc]
    dec h
    dec e
    ld [de], a
    inc de
    ld c, $06
    ld [$1a04], sp
    ld [de], a
    rlca
    ld c, $16
    ld [de], a
    ld a, [de]
    inc d
    rrca
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    rrca
    ld c, $12
    inc de
    ld [de], a
    ld a, [de]
    ld bc, $0800
    dec bc
    jr nz, jr_013_65c3

    ld h, $08
    ld a, [hl+]
    inc c
    ld a, [de]
    ld b, $0e
    dec c
    dec c
    nop
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    dec e
    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    dec c

jr_013_65c3:
    ld [$0402], sp
    nop
    dec c
    inc bc
    ld a, [de]
    db $10
    inc d
    ld [$1304], sp
    dec h
    ld a, [de]
    nop
    ld [bc], a
    inc b
    dec h
    ld h, $1d
    rlca
    inc b
    ld a, [de]
    ld [de], a
    nop
    jr @+$14

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
    ld de, $1a20
    jr @+$10

    inc d
    ld a, [de]
    ld bc, $0604
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    ld [$0a0d], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    ld [de], a
    inc de
    ld c, $06
    ld [$2a04], sp
    ld [de], a
    ld a, [de]
    dec c
    ld c, $13
    ld a, [de]
    ld [de], a
    ld c, $1d
    ld bc, $0300
    ld a, [de]
    nop
    dec b
    inc de
    inc b
    ld de, $001a
    dec bc
    dec bc
    jr nz, @+$22

    jr nz, jr_013_6643

    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    db $10
    inc d
    ld [$1304], sp
    ld a, [de]
    ld [$1d12], sp
    ld [de], a
    rlca
    nop
    inc de
    inc de
    inc b
    ld de, $0304
    ld a, [de]

jr_013_6643:
    ld bc, $1a18
    nop
    dec e
    ld [de], a
    rlca
    ld c, $13
    ld b, $14
    dec c
    ld a, [de]
    ld bc, $000b
    ld [de], a
    inc de
    ld a, [de]
    nop
    ld [de], a
    dec e
    rlca
    inc b
    ld a, [de]
    inc b
    inc c
    rrca
    inc de
    ld [$1204], sp
    ld a, [de]
    ld bc, $130e
    rlca
    dec e
    ld bc, $1100
    ld de, $0b04
    ld [de], a
    ld a, [de]
    ld [$130d], sp
    ld c, $1a
    jr @+$10

    inc d
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    ld d, $07
    ld [$0f12], sp
    inc b
    ld de, $1d12
    inc de
    ld c, $1a
    jr jr_013_669f

    inc d
    dec h
    ld a, [de]
    ld h, $07
    inc b
    jr @+$29

    dec e
    rrca
    ld [de], a
    ld [de], a
    inc de
    daa

jr_013_669f:
    ld a, [de]
    jr jr_013_66b0

    inc d
    ld a, [hl+]
    ld de, $1d04
    nop
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0d00
    ld b, $04

jr_013_66b0:
    ld de, $111a
    ld c, $14
    dec c
    inc bc
    dec e
    rlca
    inc b
    ld de, $1a04
    nop
    ld [$2a0d], sp
    inc de
    ld a, [de]
    jr jr_013_66c5

jr_013_66c5:
    jr z, jr_013_66e3

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    dec c
    ld c, $13
    ld a, [de]
    ld [de], a
    inc c
    nop
    ld de, $1a13
    inc de
    ld c, $1d
    inc c
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]

jr_013_66e3:
    inc bc
    nop
    ld a, [de]
    ld bc, $0608
    dec e
    ld bc, $120e
    ld [de], a
    dec h
    ld a, [de]
    ld [$1a05], sp
    jr jr_013_66f5

jr_013_66f5:
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    dec e
    ld d, $07
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld b, $0e
    ld c, $03
    ld a, [de]
    dec b
    ld c, $11
    dec e
    jr jr_013_670d

jr_013_670d:
    jr nz, jr_013_672b

    ld bc, $1314
    dec h
    ld a, [de]
    ld [$0c1a], sp
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1d04
    nop
    ld bc, $040b
    ld a, [de]
    inc de
    ld c, $1a
    rlca
    inc b
    dec bc
    rrca

jr_013_672b:
    jr nz, @+$1c

    jr jr_013_673d

    inc d
    dec e
    ld [de], a
    inc b
    inc b
    dec h
    ld a, [de]
    ld [$152a], sp
    inc b
    ld a, [de]
    ld b, $0e

jr_013_673d:
    inc de
    dec e
    ld [bc], a
    ld c, $0d
    dec c
    inc b
    ld [bc], a
    inc de
    ld [$0d0e], sp
    ld [de], a
    jr nz, @+$1c

    ld [bc], a
    ld c, $0c
    inc b
    dec e
    ld [de], a
    inc b
    inc b
    ld a, [de]
    inc c
    inc b
    ld a, [de]
    ld [$1a05], sp
    jr jr_013_675d

jr_013_675d:
    ld a, [de]
    dec c
    inc b
    inc b
    inc bc
    dec e
    nop
    dec c
    jr jr_013_677a

    rlca
    ld [$060d], sp
    jr nz, jr_013_6793

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

jr_013_677a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_6793:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
