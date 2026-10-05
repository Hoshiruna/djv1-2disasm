; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    nop
    ld b, c
    ld c, h
    ld b, c
    add b
    ld b, c
    db $db
    ld b, c
    rlca
    ld b, d
    daa
    ld b, d
    ld c, b
    ld b, d
    halt
    ld b, d
    xor d
    ld b, d
    ld [$6f43], sp
    ld b, e
    adc a
    ld b, e
    sbc $43
    cpl
    ld b, h
    ld e, [hl]
    ld b, h
    xor c
    ld b, h
    db $e3
    ld b, h
    inc bc
    ld b, l
    ld c, h
    ld b, l
    sub [hl]
    ld b, l
    or [hl]
    ld b, l
    db $dd
    ld b, l
    ld d, h
    ld b, [hl]
    ld bc, $5047
    ld b, a
    inc l
    ld c, b
    add d
    ld c, b
    call nz, $1848
    ld c, c
    or e
    ld c, c
    rst RST_30
    ld c, c
    ld a, [hl+]
    ld c, d
    ld b, d
    ld c, e
    ld [hl], a
    ld c, e
    and b
    ld c, h
    call c, Call_000_004c
    ld c, l
    jr z, jr_017_4099

    dec a
    ld c, l
    ld d, b
    ld c, l
    sub d
    ld c, l
    or [hl]
    ld c, l
    db $dd
    ld c, [hl]
    ld c, l
    ld c, a
    jp Jump_000_3350


    ld d, d
    cp [hl]
    ld d, e
    ld de, $5b54
    ld d, h
    and a
    ld d, h
    push de
    ld d, h
    di
    ld d, h
    dec h
    ld d, l
    ld b, a
    ld d, l
    ld a, l
    ld d, l
    xor e
    ld d, l
    rlca
    ld d, [hl]
    jr z, jr_017_40ca

    ld h, l
    ld d, [hl]
    sub [hl]
    ld d, [hl]
    jp Jump_017_6856


    ld d, a
    sub l
    ld d, a
    jp nz, $fc57

    ld d, a
    ld [hl+], a
    ld e, b
    ld e, h
    ld e, b
    call nc, Call_000_1c58
    ld e, c
    ld d, a
    ld e, c
    ld a, [hl]
    ld e, c
    and c
    ld e, c
    jp nc, $2059

    ld e, d
    ld a, e
    ld e, d
    sbc [hl]
    ld e, d
    cpl

jr_017_4099:
    ld e, e
    dec a
    ld e, h
    ld e, a
    ld e, h
    and b
    ld e, h
    db $d3
    ld e, h
    ld sp, hl
    ld e, h
    inc e
    ld e, l
    ld a, b
    ld e, l
    and h
    ld e, l
    db $dd
    ld e, l
    ld a, [bc]
    ld e, [hl]
    ld hl, $415e
    ld e, [hl]
    sbc e
    ld e, [hl]
    push de
    ld e, [hl]
    inc d
    ld e, a
    ld [hl], $5f
    ld d, e
    ld e, a
    adc c
    ld e, a
    and l
    ld e, a
    rst RST_18
    ld e, a
    jp nc, Jump_000_0c60

    ld h, c
    jr jr_017_412a

    ld c, d
    ld h, d

jr_017_40ca:
    adc b
    ld h, d
    sub l
    ld h, d
    db $e4
    ld h, d
    ldh a, [$ff62]
    ld c, b
    ld h, e
    ld d, b
    ld h, e
    ld l, d
    ld h, e
    jr jr_017_413e

    ld d, e
    ld h, h
    ld l, b
    ld h, h
    and a
    ld h, h
    pop bc
    ld h, h
    add hl, sp
    ld h, l
    ld a, e
    ld h, l
    pop bc
    ld h, l
    ld h, $66
    ld b, [hl]
    ld h, [hl]
    ld a, [bc]
    ld h, a
    add hl, hl
    ld h, a
    ld b, c
    ld h, a
    add h
    ld h, a
    jp c, $fe67

    ld h, a
    inc de
    ld l, b
    ld d, c
    ld l, b
    ld a, a
    ld l, b
    rst RST_20
    ld l, b
    ld [$1a13], sp
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
    ld bc, $0600
    ld b, $00
    ld b, $04
    ld a, [de]
    ld [bc], a
    dec bc
    nop
    ld [$1d0c], sp
    inc de
    ld [$0a02], sp
    inc b
    inc de
    ld a, [de]
    ld d, $08
    inc de

jr_017_412a:
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec c
    inc d
    inc c
    ld bc, $1104
    ld a, [de]
    ld h, $35
    ld [hl-], a
    ld [hl], $26
    dec e
    rrca

jr_017_413e:
    ld de, $0d08
    inc de
    inc b
    inc bc
    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [$2013], sp
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    nop
    ld de, $0103
    ld c, $00
    ld de, $1d03
    ld bc, $170e
    ld a, [de]
    dec bc
    nop
    ld bc, $0b04
    inc b
    inc bc
    dec h
    dec e
    ld h, $01
    ld c, $0d
    inc bc
    ld d, $04
    dec bc
    dec bc
    dec h
    ld a, [de]
    inc de
    rlca
    ld c, $0c
    nop
    ld [de], a
    dec e
    ld [de], a
    jr nz, jr_017_41a5

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld d, $00
    dec bc
    dec bc
    inc b
    inc de
    ld a, [de]
    inc c
    nop
    inc bc
    inc b
    ld c, $05
    ld a, [de]
    dec b
    ld [$040d], sp
    ld a, [de]
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    dec e
    dec bc
    inc b
    nop
    inc de
    rlca

jr_017_41a5:
    inc b
    ld de, $1a25
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [$080d], sp
    inc de
    ld [$0b00], sp
    ld [de], a
    ld a, [de]
    ld h, $13
    jr nz, jr_017_41d1

    jr nz, @+$03

    jr nz, @+$28

    dec e
    ld [de], a
    inc de
    nop
    inc c
    rrca
    inc b
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca

jr_017_41d1:
    inc b
    dec e
    ld [bc], a
    ld c, $11
    dec c
    inc b
    ld de, $1f20
    inc de
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    ld bc, $080b
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    ld d, $0e
    dec c
    ld a, [hl+]
    inc de
    ld c, $0f
    inc b
    dec c
    jr nz, jr_017_420d

    inc de
    rlca
    inc b
    jr jr_017_4212

    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, HeaderLogo
    ld de, $0a0e
    inc b
    dec c
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop

jr_017_420d:
    ld a, [de]
    rlca
    inc b
    nop
    dec d

jr_017_4212:
    jr jr_017_4235

    inc bc
    inc d
    inc de
    jr jr_017_4236

    dec b
    ld de, $0404
    add hl, de
    inc b
    ld de, $031a
    ld c, $0e
    ld de, $1f20
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

jr_017_4235:
    ld a, [de]

jr_017_4236:
    inc de
    ld c, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    ld de, $0e0e
    inc c
    jr nz, jr_017_4267

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
    ld d, $07
    ld [$040b], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b

jr_017_4267:
    ld de, $2a0a
    ld [de], a
    dec e
    ld d, $00
    inc de
    ld [bc], a
    rlca
    ld [$060d], sp
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    ld de, $1a0a
    ld [de], a
    inc de
    ld c, $0f
    ld [de], a
    dec e
    jr jr_017_4296

    inc d
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld [$060d], sp

jr_017_4296:
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $00
    inc de
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    nop
    jr jr_017_42ba

    dec h
    rra
    ld h, $12
    ld c, $11
    ld de, $1a18
    inc c
    nop
    ld [bc], a
    ld a, [bc]
    dec h
    dec e
    inc d
    dec c
    nop

jr_017_42ba:
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
    ld [de], a
    ld a, [de]
    nop
    ld [$2a0d], sp
    inc de
    dec e
    nop
    dec bc
    dec bc
    ld c, $16
    inc b
    inc bc
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    dec e
    inc de
    rlca
    inc b
    ld de, $2004
    jr nz, @+$22

    inc d
    dec c
    dec bc
    inc b
    ld [de], a
    ld [de], a
    dec h
    ld a, [de]
    ld c, $05
    ld [bc], a
    ld c, $14
    ld de, $0412
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    jr jr_017_4328

    ld de, $1d04
    inc bc
    inc b
    nop
    inc bc
    daa
    ld h, $1f
    ld h, $08
    ld a, [de]
    inc de
    rlca
    ld c, $14
    ld b, $07
    inc de
    ld a, [de]
    ld [$131a], sp
    ld c, $0b
    inc bc
    dec e
    jr @+$10

    inc d
    dec h
    ld a, [de]
    jr jr_017_432f

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de

jr_017_4328:
    ld a, [de]
    ld b, $0e
    dec e
    ld bc, $0200

jr_017_432f:
    ld a, [bc]
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $2704
    inc e
    ld c, $0d
    dec bc
    jr jr_017_4357

    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld de, $0f0e
    inc b
    ld de, $001d
    inc d
    inc de
    rlca
    ld c, $11
    ld [$0813], sp
    inc b
    ld [de], a
    ld a, [de]
    rlca
    nop
    dec d

jr_017_4357:
    inc b
    dec e
    nop
    ld [bc], a
    ld [bc], a
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    nop
    inc de
    dec e
    ld de, $0e0e
    inc c
    daa
    ld h, $1f
    jr jr_017_437f

    inc d
    ld a, [de]
    dec b
    dec bc
    ld [$0a02], sp
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    inc de

jr_017_437f:
    rlca
    inc b
    rrca
    ld c, $02
    ld a, [bc]
    inc b
    inc de
    ld a, [de]
    ld a, [bc]
    dec c
    ld [$0405], sp
    jr nz, jr_017_43ae

    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    inc d
    ld de, $0702
    dec h
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    dec bc
    inc b
    nop
    dec d
    inc b
    ld [de], a
    dec e

jr_017_43ae:
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    rrca
    inc b
    inc b
    inc bc
    ld [de], a
    ld a, [de]
    inc de
    ld c, $16
    nop
    ld de, $1203
    dec e
    ld [$1213], sp
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    inc de
    ld [$000d], sp
    inc de
    ld [$0d0e], sp
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0e0b
    ld d, $1a
    ld [de], a
    inc de
    nop
    ld b, $06
    inc b
    ld de, $1d12
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    ld de, $270a
    inc e
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    ld [de], a
    ld [de], a
    inc b
    ld [de], a
    dec e
    ld c, $14
    inc de
    dec h
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    nop
    ld b, $04
    ld [de], a
    ld a, [de]
    inc de
    ld c, $0f
    ld de, $1204
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    nop
    dec bc
    nop
    ld de, $200c
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld d, $00
    jr @+$0a

    dec c
    ld b, $1d
    inc c
    ld c, $13
    ld [$0d0e], sp
    ld a, [de]
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_017_4467

    dec bc
    inc d
    dec bc
    dec bc
    ld [de], a
    ld a, [de]
    jr jr_017_4460

    inc d
    ld a, [de]
    inc de
    ld c, $1d
    ld [de], a
    dec bc
    inc b
    inc b
    rrca
    jr nz, jr_017_447d

    ld [de], a
    inc de

jr_017_4460:
    nop
    ld de, $0b13
    inc b
    inc bc
    ld a, [de]

jr_017_4467:
    ld bc, $1a18
    jr jr_017_447a

    inc d
    ld de, $111d
    inc d
    inc bc
    inc b
    dec c
    inc b
    ld [de], a
    ld [de], a
    dec h
    ld a, [de]
    inc de

jr_017_447a:
    rlca
    inc b
    dec e

jr_017_447d:
    ld [bc], a
    dec bc
    inc b
    ld de, $1a0a
    rrca
    ld de, $1204
    ld [de], a
    inc b
    ld [de], a
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    nop
    dec bc
    nop
    ld de, $1a0c
    inc de
    ld c, $1a
    ld [bc], a
    nop
    dec bc
    dec bc
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld c, $0b
    ld [$0402], sp
    jr nz, @+$21

    jr jr_017_44b9

    inc d
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    inc de

jr_017_44b9:
    rlca
    inc b
    inc de
    ld de, $0800
    dec c
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    inc bc
    ld de, $0508
    inc de
    dec e
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_017_44ed

    ld c, $05
    dec b
    ld a, [de]
    inc de
    ld c, $1d
    ld [de], a
    dec bc
    inc b
    inc b
    rrca
    jr nz, jr_017_4501

    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    ld de, $1a0a

jr_017_44ed:
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    nop
    inc de
    jr jr_017_4505

    inc d
    ld de, $0b1a
    ld [$0402], sp
    dec c
    ld [de], a
    inc b

jr_017_4501:
    jr nz, jr_017_4522

    rlca
    inc b

jr_017_4505:
    ld a, [de]
    ld [de], a
    dec c
    ld c, $11
    inc de
    ld [de], a
    dec h
    dec e
    ld h, $0f
    ld de, $1508
    nop
    inc de
    inc b
    ld a, [de]
    inc bc
    ld [$0a02], sp
    dec h
    dec e
    inc b
    rlca
    jr z, jr_017_453b

    ld [de], a

jr_017_4522:
    ld c, $11
    ld de, $2518
    ld a, [de]
    ld c, $0d
    dec bc
    jr @+$1f

    inc d
    dec c
    ld [$0e05], sp
    ld de, $120c
    ld a, [de]
    nop
    ld de, $1d04
    nop

jr_017_453b:
    dec bc
    dec bc
    ld c, $16
    inc b
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    ld bc, $0200
    ld a, [bc]
    jr nz, jr_017_4571

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    ld de, $1a0a
    ld de, $1304
    inc d
    ld de, $120d
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    ld [$0402], sp
    dec c
    ld [de], a
    inc b
    dec h
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    nop

jr_017_4571:
    jr jr_017_4585

    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    dec c
    ld c, $1d
    ld c, $0d
    inc b
    ld a, [de]
    rlca
    inc b

jr_017_4585:
    ld de, $1a04
    ld bc, $1a18
    inc de
    rlca
    nop
    inc de
    dec e
    dec c
    nop
    inc c
    inc b
    jr nz, jr_017_45b5

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    ld de, $1a0a
    ld [de], a
    ld [$0706], sp
    ld [de], a
    ld a, [de]
    ld [$000d], sp
    ld a, [de]
    ld bc, $110e
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $0d
    inc b
    dec h

jr_017_45b5:
    rra
    ld h, $0d
    ld c, $0f
    inc b
    dec h
    ld a, [de]
    dec c
    ld c, $1d
    ld bc, $0b04
    ld c, $0d
    ld b, $08
    dec c
    ld b, $12
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    nop
    dec e
    inc c
    ld de, $1a20
    add hl, bc
    ld c, $0d
    inc b
    ld [de], a
    jr nz, @+$28

    rra
    jr jr_017_45ed

    inc d
    ld a, [de]
    ld de, $0114
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    dec bc
    inc b
    inc b

jr_017_45ed:
    rrca
    dec e
    dec b
    ld de, $0c0e
    ld a, [de]
    jr jr_017_4604

    inc d
    ld de, $041a
    jr @+$06

    ld [de], a
    jr nz, @+$22

    jr nz, jr_017_461d

    jr @+$10

    inc d

jr_017_4604:
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    dec e
    jr jr_017_4620

    inc d
    ld de, $121a
    inc b
    nop
    inc de
    ld a, [de]
    inc c
    nop
    ld a, [bc]

jr_017_461d:
    ld [$060d], sp

jr_017_4620:
    dec e
    ld [de], a
    inc d
    ld de, $1a04
    jr jr_017_4636

    inc d
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    dec e
    inc b
    dec d
    inc b
    ld de, $1318
    rlca

jr_017_4636:
    ld [$060d], sp
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    jr jr_017_464d

    inc d
    dec e
    ld b, $04
    inc de
    ld a, [de]
    ld c, $05
    dec b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]

jr_017_464d:
    inc de
    ld de, $0800
    dec c
    jr nz, jr_017_4673

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    ld de, $1a0a
    nop
    ld a, [bc]
    ld [de], a
    dec e
    ld [$1a0d], sp
    nop
    dec c
    ld a, [de]
    nop
    dec c
    ld b, $11
    jr jr_017_4688

    inc de
    ld c, $0d
    inc b
    dec h

jr_017_4673:
    dec e
    ld h, $09
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld d, $07
    nop
    inc de
    ld a, [de]
    inc bc
    ld c, $1a
    jr jr_017_4692

    inc d
    dec e
    ld d, $00

jr_017_4688:
    dec c
    inc de
    jr z, jr_017_46b3

    inc e
    ld [$1a05], sp
    jr jr_017_46a0

jr_017_4692:
    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    dec c
    ld c, $1d
    ld bc, $1214
    ld [$040d], sp

jr_017_46a0:
    ld [de], a
    ld [de], a
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    dec e
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    dec bc
    inc b
    nop
    dec d
    inc b

jr_017_46b3:
    daa
    ld h, $1c
    ld bc, $180e
    daa
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    ld b, $14
    jr @+$1c

    inc c
    inc d
    ld [de], a
    inc de
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    ld d, $0e
    ld a, [bc]
    inc b
    dec c
    ld a, [de]
    inc d
    rrca
    ld a, [de]
    ld c, $0d
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $11
    ld c, $0d
    ld b, $1a
    ld [de], a
    ld [$0403], sp
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0304
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    inc c
    ld c, $11
    dec c
    ld [$060d], sp
    daa
    rra
    ld h, $08
    dec b
    ld a, [de]
    jr jr_017_4715

    inc d
    ld a, [de]
    dec c
    inc b
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $1d
    ld [bc], a
    ld c, $0b
    dec bc

jr_017_4715:
    inc b
    ld [bc], a
    inc de
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld c, $0d
    inc b
    ld a, [hl+]
    ld [de], a
    dec e
    ld bc, $0b04
    ld c, $0d
    ld b, $08
    dec c
    ld b, $12
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    dec e
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $0811
    dec c
    ld b, $1a
    inc c
    inc b
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $04
    ld a, [de]
    inc de
    nop
    ld b, $20
    ld h, $1f
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec c
    ld a, [de]
    ld c, $03
    inc bc
    ld a, [de]
    ld b, $0b
    inc b
    nop
    inc c
    dec e
    ld [$1a0d], sp
    rlca
    ld [$1a12], sp
    inc b
    jr jr_017_4770

    dec h
    ld a, [de]
    inc de
    rlca

jr_017_4770:
    inc b
    dec e
    ld [bc], a
    dec bc
    inc b
    ld de, $1a0a
    ld [de], a
    nop
    jr jr_017_478e

    dec h
    inc e
    ld h, $08
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
    nop
    dec bc

jr_017_478e:
    dec bc
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc b
    inc de
    nop
    ld [$120b], sp
    dec h
    ld a, [de]
    ld bc, $1314
    dec e
    inc de
    rlca
    inc b
    jr jr_017_47c0

    ld [de], a
    nop
    jr jr_017_47c4

    ld bc, $0d0e
    inc bc
    ld d, $04
    dec bc
    dec bc
    dec e
    ld d, $00
    ld [de], a
    ld a, [de]
    dec b
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    nop
    inc de
    ld a, [de]

jr_017_47c0:
    inc de
    rlca
    inc b
    dec e

jr_017_47c4:
    ld bc, $130e
    inc de
    ld c, $0c
    ld a, [de]
    ld c, $05
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
    ld de, $1508
    inc b
    ld de, $2020
    jr nz, jr_017_47ff

    inc de
    rlca
    inc b
    jr jr_017_4802

    ld [de], a
    nop
    jr jr_017_4806

    rlca
    inc b
    ld a, [de]
    ld d, $00
    ld [de], a
    dec e
    ld d, $04
    nop
    ld de, $0d08
    ld b, $1a
    ld [bc], a
    ld c, $0d
    ld [bc], a

jr_017_47ff:
    ld de, $1304

jr_017_4802:
    inc b
    dec e
    ld [de], a
    rlca

jr_017_4806:
    ld c, $04
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    ld d, $00
    ld [de], a
    dec e
    ld de, $0308
    inc bc
    dec bc
    inc b
    inc bc
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld [de], a
    daa
    ld h, $1f
    dec c
    ld c, $13
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_017_484f

    ld [$1a12], sp
    inc de
    rlca
    ld [$1d12], sp
    ld de, $0e0e
    inc c
    ld a, [de]
    ld [bc], a
    ld c, $0b
    inc bc
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    ld [$1d13], sp

jr_017_484f:
    nop
    dec bc
    ld [de], a
    ld c, $1a
    rlca
    nop
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0d00
    ld b, $04
    ld [de], a
    inc c
    inc b
    dec bc
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    ld de, $130e
    inc de
    ld [$060d], sp
    daa
    ld a, [de]
    jr jr_017_4892

    ld [bc], a
    ld a, [bc]
    daa
    rra
    ld [bc], a
    rlca
    nop
    ld de, $0406
    inc bc
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    ld [bc], a
    ld c, $0b

jr_017_4892:
    inc bc
    ld hl, $0b01
    ld c, $0e
    inc bc
    inc b
    inc bc
    dec e
    inc c
    inc d
    ld de, $0403
    ld de, $1a25
    jr jr_017_48b4

    inc d
    ld a, [de]
    nop
    ld d, $00
    ld [$1d13], sp
    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    dec bc

jr_017_48b4:
    inc b
    ld [bc], a
    inc de
    ld de, $0208
    dec e
    ld [bc], a
    rlca
    nop
    ld [$2011], sp
    jr nz, jr_017_48e3

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld d, $04
    dec bc
    dec bc
    dec e
    rrca
    ld de, $1204
    inc b
    ld de, $0415
    inc bc
    ld a, [de]
    ld bc, $030e
    jr @+$22

    dec e
    jr jr_017_48f0

    inc d

jr_017_48e3:
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    ld [$1a13], sp
    inc d
    rrca
    ld a, [de]
    nop

jr_017_48f0:
    dec c
    inc bc
    inc bc
    ld c, $16
    dec c
    dec h
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $0d08
    ld b, $1d
    ld d, $07
    nop
    inc de
    ld a, [de]
    rlca
    nop
    rrca
    rrca
    inc b
    dec c
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $1d
    rlca
    ld [$200c], sp
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
    ld [de], a
    ld c, $0c
    inc b
    ld c, $0d
    inc b
    ld a, [de]
    inc d
    ld [de], a
    inc b
    inc bc
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    ld b, $14
    jr jr_017_4956

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
    daa
    inc e
    jr jr_017_4961

    inc d
    ld a, [de]
    dec c

jr_017_4956:
    ld c, $13
    ld [$0402], sp
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    ld [bc], a
    nop

jr_017_4961:
    ld de, $111d
    inc d
    dec c
    dec c
    ld [$060d], sp
    ld a, [de]
    inc de
    rlca
    ld de, $140e
    ld b, $07
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld [$0505], sp
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    dec bc
    inc b
    dec b
    inc de
    dec e
    inc b
    jr jr_017_498b

    jr nz, jr_017_49a3

    rlca
    inc b

jr_017_498b:
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    ld bc, $0404
    dec c
    ld a, [de]
    ld c, $0d
    inc b
    dec e

jr_017_49a3:
    inc de
    ld c, $14
    ld b, $07
    ld a, [de]
    ld [bc], a
    inc d
    ld [de], a
    inc de
    ld c, $0c
    inc b
    ld de, $1f27
    jr jr_017_49c3

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

jr_017_49c3:
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    dec e
    rlca
    nop
    rrca
    rrca
    inc b
    dec c
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $1a
    ld [bc], a
    nop
    inc d
    ld [de], a
    inc b
    dec e
    ld [de], a
    inc d
    ld [bc], a
    rlca
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
    inc b
    ld b, $14
    jr jr_017_4a1d

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld de, $1600
    inc b
    ld de, $081a
    dec c
    dec e
    ld d, $07
    ld [$0702], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld [$0505], sp
    ld [de], a
    dec e
    nop
    ld de, $1a04

jr_017_4a1d:
    ld a, [bc]
    inc b
    rrca
    inc de
    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [$0402], sp
    jr nz, jr_017_4a49

    inc d
    rlca
    ld hl, $070e
    daa
    ld a, [de]
    jr jr_017_4a41

    inc d
    ld a, [de]
    rlca
    inc b
    nop
    ld de, $051d
    ld c, $0e
    inc de
    ld [de], a
    inc de
    inc b

jr_017_4a41:
    rrca
    ld [de], a
    daa
    inc e
    ld c, $0d
    inc b
    ld a, [de]

jr_017_4a49:
    ld c, $05
    ld a, [de]
    inc de
    rlca
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
    rlca
    ld c, $0b
    inc bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    jr jr_017_4a74

    inc d
    ld de, $0e02
    dec bc
    dec bc
    nop
    ld de, $001a
    dec c
    inc bc
    ld a, [de]
    ld [de], a

jr_017_4a74:
    nop
    jr jr_017_4a89

    dec h
    dec e
    ld h, $12
    ld c, $1a
    jr jr_017_4a7f

jr_017_4a7f:
    ld a, [de]
    inc c
    nop
    dec c
    nop
    ld b, $04
    inc bc
    dec e
    inc de

jr_017_4a89:
    ld a, [hl+]
    ld b, $04
    inc de
    ld a, [de]
    dec bc
    ld c, $0e
    ld [de], a
    inc b
    dec h
    ld a, [de]
    inc b
    rlca
    jr z, jr_017_4ab5

    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    add hl, bc
    inc b
    ld [de], a
    ld a, [hl+]
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    dec e
    inc de
    rlca
    inc b
    ld de, $2504
    ld a, [de]
    inc c
    ld c, $0e
    ld [de], a

jr_017_4ab5:
    inc b
    dec h
    ld a, [de]
    dec bc
    inc b
    inc de
    dec e
    ld a, [hl+]
    ld [$1a0c], sp
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    ld [$1a13], sp
    ld a, [hl+]
    dec b
    ld c, $11
    inc b
    dec e
    rlca
    inc b
    ld a, [de]
    ld b, $04
    inc de
    ld [de], a
    ld a, [de]
    nop
    ld d, $00
    jr jr_017_4af8

    nop
    ld b, $00
    ld [$270d], sp
    ld h, $1c
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0608
    ld a, [de]
    ld c, $0d
    inc b
    ld a, [de]
    rrca
    inc d
    inc c
    rrca
    ld [de], a
    dec e
    jr jr_017_4b05

    inc d

jr_017_4af8:
    ld a, [de]
    ld [de], a
    ld c, $1a
    dec b
    inc d
    dec bc
    dec bc
    ld a, [de]
    ld c, $05
    dec e
    dec bc

jr_017_4b05:
    inc b
    nop
    inc bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    inc d
    rrca
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    nop
    dec e
    ld bc, $0300
    ld a, [de]
    ld [de], a
    dec bc
    ld [$0402], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [de], a
    ld d, $08
    ld [de], a
    ld [de], a
    ld [bc], a
    rlca
    inc b
    inc b
    ld [de], a
    inc b
    daa
    rra
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld [$0706], sp
    inc de
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld [$0505], sp
    ld [de], a
    ld a, [de]
    inc c
    nop
    ld a, [bc]
    inc b
    ld [de], a
    jr @+$10

    inc d
    ld de, $121a
    ld a, [bc]
    ld [$1a0d], sp
    ld [bc], a
    ld de, $1600
    dec bc
    jr nz, jr_017_4b96

    jr jr_017_4b87

    inc d
    ld a, [de]
    rlca
    inc b
    nop
    ld de, $001a
    ld a, [de]
    ld d, $0e
    ld de, $0811

jr_017_4b87:
    inc b
    inc bc
    dec d
    ld c, $08
    ld [bc], a
    inc b
    ld a, [de]
    ld [de], a
    nop
    jr @+$27

    ld a, [de]
    ld h, $14

jr_017_4b96:
    rlca
    ld hl, $070e
    dec e
    inc c
    ld c, $0e
    ld [de], a
    inc b
    daa
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    nop
    ld [$2a0d], sp
    inc de
    dec e
    rlca
    inc b
    ld de, $2704
    ld h, $1c
    nop
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    ld c, $0d
    inc bc
    ld a, [de]
    dec d
    ld c, $08
    ld [bc], a
    inc b
    dec e
    ld de, $0f04
    dec bc
    ld [$1204], sp
    dec h
    ld a, [de]
    ld h, $03
    nop
    ld a, [de]
    dec b
    ld de, $0d0e
    inc de
    inc bc
    ld c, $0e
    ld de, $122a
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    dec h
    dec e
    ld [de], a
    rrca
    ld [$040a], sp
    jr nz, @+$1c

    rlca
    inc b
    ld a, [de]
    inc c
    inc d
    ld [de], a
    inc de
    nop
    dec e
    ld b, $0e
    inc de
    ld a, [de]
    nop
    ld d, $00
    jr jr_017_4c20

    ld h, $1c
    ld h, $03
    nop
    ld a, [de]
    ld bc, $120e
    ld [de], a
    ld a, [de]
    ld [de], a
    inc d
    ld de, $1d04
    nop
    ld [$2a0d], sp
    inc de
    ld a, [de]
    ld b, $0e
    dec c
    dec c
    nop
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec e
    inc bc
    ld [$2512], sp
    ld h, $1a

jr_017_4c20:
    ld [de], a
    nop
    jr @+$14

    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec b
    ld [$1211], sp
    inc de
    dec h
    ld a, [de]
    ld h, $18
    ld c, $14
    ld a, [de]
    ld bc, $1304
    inc de
    inc b
    ld de, $0e06
    ld a, [de]
    inc de
    inc b
    dec bc
    dec bc
    ld a, [de]
    rlca
    ld [$210c], sp
    ld a, [de]
    rlca
    inc b
    dec e
    dec bc
    ld [$040a], sp
    ld [de], a
    ld a, [de]
    jr jr_017_4c61

    inc d
    ld a, [de]
    ld bc, $1304
    inc de
    inc b
    ld de, $001d
    dec c
    jr jr_017_4c76

    nop

jr_017_4c61:
    jr jr_017_4c75

    daa
    ld h, $1c
    jr jr_017_4c76

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

jr_017_4c75:
    inc b

jr_017_4c76:
    inc c
    dec e
    ld d, $00
    dec bc
    ld a, [bc]
    ld a, [de]
    nop
    ld d, $00
    jr @+$22

    jr nz, jr_017_4ca4

    dec e
    ld d, $07
    inc b
    ld d, $27
    ld a, [de]
    db $10
    inc d
    ld [$0a02], sp
    dec e
    inc de
    rlca
    ld [$0a0d], sp
    ld [$060d], sp
    dec h
    ld a, [de]
    nop
    ld [bc], a
    inc b
    daa
    rra
    ld [$2a13], sp
    ld [de], a

jr_017_4ca4:
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
    dec bc
    ld c, $12
    inc b
    dec e
    inc bc
    ld de, $1600
    inc b
    ld de, $1a12
    nop
    dec b
    inc de
    inc b
    ld de, $041d
    rla
    nop
    inc c
    ld [$000d], sp
    inc de
    ld [$0d0e], sp
    ld [de], a
    jr nz, jr_017_4d01

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $04
    ld a, [de]
    inc de
    nop
    ld b, $1a
    ld de, $0004
    inc bc
    ld [de], a
    dec e
    ld h, $09
    ld c, $0d
    inc b
    ld [de], a
    dec h
    ld a, [de]
    ld [de], a
    db $10
    inc d
    ld [$0b03], sp
    jr jr_017_4d1e

    ld h, $1f
    inc de

jr_017_4d01:
    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $04
    ld a, [de]
    inc de
    nop
    ld b, $1a
    ld de, $0004
    inc bc
    ld [de], a
    dec e
    ld h, $01
    ld c, $0d
    inc bc
    ld d, $04
    dec bc
    dec bc
    dec h
    ld a, [de]
    inc de

jr_017_4d1e:
    rlca
    ld c, $0c
    nop
    ld [de], a
    dec e
    ld [de], a
    jr nz, jr_017_4d4d

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
    inc b
    ld [de], a
    ld a, [bc]
    jr nz, @+$21

    inc de
    ld d, $0e
    ld a, [de]
    inc c
    inc b
    dec c
    ld a, [de]
    dec b
    ld de, $1208
    ld a, [bc]
    ld a, [de]
    jr @+$10

jr_017_4d4d:
    inc d
    jr nz, @+$21

    jr jr_017_4d60

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$120d], sp
    ld [$0403], sp
    ld a, [de]
    nop
    dec c

jr_017_4d60:
    dec e
    ld [$030d], sp
    inc d
    ld [de], a
    inc de
    ld de, $0008
    dec bc
    ld a, [de]
    ld [de], a
    ld [$0419], sp
    dec e
    dec bc
    nop
    inc d
    dec c
    inc bc
    ld de, $1a18
    rlca
    nop
    inc c
    rrca
    inc b
    ld de, $1d20
    rrca
    rlca
    inc b
    ld d, $27
    ld a, [de]
    ld [$1a13], sp
    ld [de], a
    inc de
    ld [$0a0d], sp
    ld [de], a
    jr nz, jr_017_4db1

    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c
    dec bc
    jr jr_017_4dc0

    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rlca
    inc b
    nop
    dec d
    jr jr_017_4dc0

    dec bc
    ld [$1a03], sp
    ld [de], a
    dec bc
    nop
    inc c
    ld [de], a
    dec e
    ld [de], a

jr_017_4db1:
    rlca
    inc d
    inc de
    daa
    rra
    jr jr_017_4dc6

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    dec b
    inc b

jr_017_4dc0:
    inc b
    dec bc
    dec e
    ld [de], a
    ld c, $0c

jr_017_4dc6:
    inc b
    ld c, $0d
    inc b
    ld a, [de]
    rrca
    inc d
    ld [de], a
    rlca
    ld [$060d], sp
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc d
    inc c
    rrca
    ld [de], a
    inc de
    inc b
    ld de, $1a27
    inc de
    rlca
    inc b
    dec e
    inc bc
    inc d
    inc c
    rrca
    ld [de], a
    inc de
    inc b
    ld de, $121a
    inc de
    ld c, $0f
    ld [de], a
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    add hl, bc
    ld c, $0b
    inc de
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    dec e
    ld [bc], a
    ld de, $1200
    rlca
    daa
    inc e
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    rlca
    ld c, $08
    ld [de], a
    inc de
    inc b
    inc bc
    ld a, [de]
    ld c, $0d
    inc de
    ld c, $1d
    nop
    ld a, [de]
    inc de
    ld de, $0214
    ld a, [bc]
    daa
    ld a, [de]
    nop
    ld a, [de]
    ld b, $11
    ld [$030d], sp
    dec e
    ld c, $05
    ld a, [de]
    ld b, $04
    nop
    ld de, $1a12
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de
    ld de, $0214
    ld a, [bc]
    ld a, [de]
    ld [$1a12], sp
    inc d
    dec c
    inc bc
    inc b
    ld de, $161d
    nop
    jr jr_017_4e7b

    inc e
    ld b, $0e
    ld c, $03
    ld a, [de]
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]
    jr jr_017_4e70

    inc d
    dec e
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]
    ld [bc], a
    nop

jr_017_4e70:
    ld de, $121d
    ld [$0a02], sp
    add hl, hl
    ld a, [de]
    ld [$2a13], sp

jr_017_4e7b:
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    ld c, $0d
    ld b, $1d
    ld de, $0308
    inc b
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
    ld de, $0308
    inc b
    ld a, [de]
    ld [$1d12], sp
    ld c, $15
    inc b
    ld de, $1a25
    jr @+$10

    inc d
    ld a, [hl+]
    ld de, $1d04
    rlca
    ld c, $08
    ld [de], a
    inc de
    inc b
    inc bc
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    nop
    ld b, $00
    ld [$1d0d], sp
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    ld [$1a03], sp
    ld [$1d12], sp
    ld c, $0f
    inc b
    dec c
    inc b
    inc bc
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec e
    ld bc, $0d00
    ld b, $20
    rra
    jr jr_017_4eed

    inc d
    ld a, [de]
    ld bc, $080b
    dec c
    ld a, [bc]
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b

jr_017_4eed:
    dec e
    ld bc, $0811
    ld b, $07
    inc de
    ld a, [de]
    dec bc
    ld [$0706], sp
    inc de
    ld a, [de]
    rrca
    ld c, $14
    ld de, $0812
    dec c
    jr nz, jr_017_4f24

    jr nz, jr_017_4f22

    jr jr_017_4f16

    inc d
    ld de, $041a
    jr @+$06

    ld [de], a
    ld a, [de]
    ld bc, $0604
    ld [$1a0d], sp

jr_017_4f16:
    inc de
    ld c, $00
    inc bc
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]

jr_017_4f22:
    jr @+$10

jr_017_4f24:
    inc d
    dec e
    dec c
    ld c, $13
    ld [$0402], sp
    ld a, [de]
    inc de
    ld d, $0e
    ld a, [de]
    ld bc, $1114
    dec bc
    jr jr_017_4f54

    inc de
    rlca
    inc d
    ld b, $12
    ld a, [de]
    ld b, $0b
    nop
    ld de, $0d08
    ld b, $1a
    nop
    inc de
    dec e
    jr jr_017_4f58

    inc d
    daa
    rra
    nop
    dec b
    inc de
    inc b
    ld de, $131a

jr_017_4f54:
    rlca
    inc b
    ld a, [de]
    inc de

jr_017_4f58:
    ld d, $0e
    dec e
    ld b, $0e
    ld c, $0d
    ld [de], a
    ld a, [de]
    dec b
    ld de, $1208
    ld a, [bc]
    ld a, [de]
    jr jr_017_4f77

    inc d
    dec h
    dec e
    inc de
    rlca
    inc b
    jr jr_017_4f8b

    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]

jr_017_4f77:
    dec b
    ld [$030d], sp
    dec e
    nop
    dec c
    jr @+$15

    rlca
    ld [$060d], sp
    ld a, [de]
    ld c, $05
    dec e
    ld [$130d], sp

jr_017_4f8b:
    inc b
    ld de, $1204
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    inc c
    nop
    ld a, [bc]
    inc b
    dec e
    ld [$1a13], sp
    ld d, $0e
    ld de, $0713
    ld d, $07
    ld [$040b], sp
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
    ld a, [de]
    nop
    dec bc
    ld [$0415], sp
    jr nz, jr_017_4fd6

    ld h, $03
    inc b
    ld de, $122a
    ld a, [de]
    dec c
    inc d
    inc de
    inc de
    ld [$2a0d], sp
    dec e
    rlca
    inc b
    ld de, $1a04
    inc bc
    nop
    inc de
    ld a, [de]
    ld [de], a
    rlca
    ld c, $16

jr_017_4fd6:
    ld [de], a
    ld a, [de]
    inc bc
    ld [$0612], sp
    inc d
    jr jr_017_4ff9

    ld [$1a12], sp
    ld [$0f0c], sp
    ld c, $11
    inc de
    nop
    dec c
    inc de
    dec e
    ld c, $11
    ld a, [de]
    dec c
    inc d
    inc de
    rlca
    ld [$2a0d], sp
    daa
    ld h, $1a

jr_017_4ff9:
    ld c, $0d
    inc b
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc d
    ld b, $12
    ld a, [de]
    ld [de], a
    nop
    jr jr_017_501c

    jr nz, @+$1e

    ld h, $03
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld de, $0608
    rlca
    inc de
    dec h
    dec e
    ld [de], a
    rrca

jr_017_501c:
    ld [$040a], sp
    dec h
    ld h, $1a
    ld de, $0f04
    dec bc
    ld [$1204], sp
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc d
    ld b, $0b
    ld [$1104], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de
    ld d, $0e
    dec h
    ld a, [de]
    ld h, $08
    ld a, [de]
    ld b, $14
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    ld d, $04
    dec e
    ld c, $14
    inc de
    inc de
    nop
    ld a, [de]
    ld de, $0114
    ld a, [de]
    ld a, [hl+]
    ld [$1d0c], sp
    ld c, $14
    inc de
    daa
    ld h, $1c
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    jr jr_017_5089

    inc bc
    ld c, $27
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    ld b, $0b
    inc b
    inc b
    dec b
    inc d
    dec bc
    dec e
    ld [de], a
    inc c
    ld [$040b], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca

jr_017_5089:
    inc b
    jr jr_017_50a6

    ld de, $140e
    ld b, $07
    dec e
    jr @+$10

    inc d
    ld a, [de]
    inc d
    rrca
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    ld bc, $0504
    ld c, $11
    inc b
    inc d
    ld [de], a

jr_017_50a6:
    ld [$060d], sp
    ld a, [de]
    jr jr_017_50ba

    inc d
    ld a, [de]
    dec b
    ld c, $11
    dec e
    inc de
    nop
    ld de, $0406
    inc de
    ld a, [de]
    rrca

jr_017_50ba:
    ld de, $0200
    inc de
    ld [$0402], sp
    daa
    rra
    nop
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld d, $0e
    ld a, [de]
    ld b, $0e
    ld c, $0d
    ld [de], a
    dec e
    dec b
    ld de, $1208
    ld a, [bc]
    ld a, [de]
    jr jr_017_50ea

    inc d
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    jr jr_017_5101

    dec b
    ld [$030d], sp
    ld a, [de]
    inc de

jr_017_50ea:
    rlca
    inc b
    ld a, [de]
    rrca
    ld [$1302], sp
    inc d
    ld de, $1d04
    ld c, $05
    ld a, [de]
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [de]
    ld [de], a
    rlca

jr_017_5101:
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
    inc de
    rlca
    inc b
    dec e
    inc d
    dec c
    ld a, [bc]
    dec c
    ld c, $16
    dec c
    ld a, [de]
    ld h, $03
    jr nz, jr_017_5137

    jr nz, @+$28

    inc e
    ld h, $07
    inc b
    jr jr_017_514f

    ld a, [de]
    inc c
    ld c, $0e
    ld [de], a
    inc b
    daa
    ld h, $1a
    ld [de], a
    nop
    jr jr_017_5149

jr_017_5137:
    ld c, $0d
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    inc d
    ld b, $12
    dec h
    dec e

jr_017_5149:
    ld h, $08
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]

jr_017_514f:
    nop
    ld a, [de]
    rrca
    ld [$1302], sp
    inc d
    ld de, $1a04
    ld c, $05
    inc bc
    nop
    ld a, [de]
    ld bc, $120e
    ld [de], a
    daa
    ld h, $1c
    ld h, $01
    ld [$1a06], sp
    inc bc
    inc b
    nop
    dec bc
    dec h
    ld a, [de]
    ld [de], a
    rrca
    ld [$040a], sp
    dec h
    ld h, $11
    inc b
    rrca
    dec bc
    ld [$1204], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $13
    rlca
    inc b
    ld de, $2625
    inc bc
    nop
    ld a, [de]
    ld bc, $120e
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld [de], a
    dec e
    rrca
    ld [$1302], sp
    inc d
    ld de, $1204
    ld hl, $031a
    ld [$1a12], sp
    ld b, $14
    jr jr_017_51c7

    nop
    ld [$2a0d], sp
    inc de
    ld a, [de]
    inc b
    dec d
    inc b
    dec c
    ld a, [de]
    ld [$1a0d], sp
    ld [$2713], sp
    dec e
    ld [$1a13], sp
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    inc c
    inc b

jr_017_51c7:
    nop
    dec c
    dec e
    dec c
    inc d
    inc de
    rlca
    ld [$2a0d], sp
    jr nz, jr_017_51f9

    inc e
    ld h, $18
    inc b
    nop
    rlca
    dec h
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    dec e
    ld de, $0608
    rlca
    inc de
    ld a, [de]
    inc c
    ld c, $0e
    ld [de], a
    inc b
    daa
    ld a, [de]
    ld [$061d], sp
    inc d
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    ld d, $04

jr_017_51f9:
    ld a, [de]
    ld bc, $1304
    inc de
    inc b
    ld de, $061d
    inc b
    inc de
    ld a, [de]
    ld de, $0308
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc bc
    ld [$1d12], sp
    ld bc, $0c14
    daa
    ld h, $1c
    nop
    dec c
    inc bc
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]
    ld de, $0308
    ld a, [de]
    ld c, $05
    dec e
    jr jr_017_5235

    inc d
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    jr jr_017_5249

    inc bc
    ld c, $27
    rra
    nop
    ld [de], a

jr_017_5235:
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld d, $0e
    ld a, [de]
    ld b, $0e
    ld c, $0d
    ld [de], a
    dec e
    dec b
    ld de, $1208
    ld a, [bc]

jr_017_5249:
    ld a, [de]
    jr jr_017_525a

    inc d
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    jr @+$1f

    dec b
    ld [$030d], sp
    ld a, [de]
    inc de

jr_017_525a:
    rlca
    inc b
    ld a, [de]
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $131a
    ld c, $0c
    nop
    dec bc
    ld c, $0d
    inc b
    jr nz, jr_017_528a

    ld h, $16
    ld c, $16
    dec h
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    inc c
    ld c, $0e
    ld [de], a
    inc b
    dec h
    ld h, $1a
    ld [de], a
    nop

jr_017_528a:
    jr jr_017_529e

    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    ld a, [bc]
    ld [$0d0d], sp
    ld [$1104], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de

jr_017_529e:
    rlca
    inc b
    dec e
    inc de
    ld d, $0e
    dec h
    ld a, [de]
    ld h, $07
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    nop
    dec e
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $131a
    ld c, $1a
    inc bc
    nop
    ld a, [de]
    ld bc, $0608
    dec e
    ld bc, $120e
    ld [de], a
    daa
    ld h, $1c
    ld h, $03
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
    ld a, [de]
    jr jr_017_52ee

    inc d
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    dec e
    inc bc
    ld [$1a12], sp
    ld b, $14

jr_017_52ee:
    jr @+$2c

    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0608
    dec e
    ld [de], a
    rlca
    ld c, $13
    ld a, [de]
    ld c, $11
    ld a, [de]
    ld [de], a
    inc d
    inc c
    inc de
    rlca
    ld [$2a0d], sp
    jr z, jr_017_5330

    ld de, $0f04
    dec bc
    ld [$1204], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc d
    ld b, $0b
    ld [$1104], sp
    ld c, $0d
    inc b
    jr nz, @+$1e

    ld h, $08
    ld a, [de]
    inc bc
    inc d
    dec c
    dec c
    ld c, $1a
    inc c
    ld c, $0e
    ld [de], a
    inc b
    dec h

jr_017_5330:
    dec e
    ld bc, $1314
    ld a, [de]
    dec bc
    inc b
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc de
    ld [$1a04], sp
    inc bc
    ld [$1d12], sp
    ld b, $14
    jr jr_017_5361

    inc d
    rrca
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld b, $0e
    ld a, [de]
    inc de
    inc b
    dec bc
    dec bc
    inc bc
    jr nz, jr_017_536d

    jr nz, @+$1c

    ld de, $0608
    rlca
    inc de
    ld a, [de]
    nop

jr_017_5361:
    ld d, $00
    jr jr_017_538c

    inc e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca

jr_017_536d:
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    jr jr_017_5392

    dec bc
    inc b
    nop
    dec d
    inc b
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    dec c
    ld c, $13
    dec e
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]
    inc de

jr_017_538c:
    rlca
    inc b
    jr jr_017_53aa

    ld b, $11

jr_017_5392:
    nop
    ld bc, $041d
    dec d
    inc b
    ld de, $1318
    rlca
    ld [$060d], sp
    ld a, [de]
    ld c, $05
    dec e
    ld [$130d], sp
    inc b
    ld de, $1204

jr_017_53aa:
    inc de
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    jr jr_017_53c1

    inc d
    ld de, $0e0f
    ld [bc], a
    ld a, [bc]
    inc b
    inc de
    ld [de], a
    jr nz, jr_017_53dd

    jr @+$10

    inc d

jr_017_53c1:
    ld a, [de]
    nop
    ld de, $1a04
    ld [$1a0d], sp
    nop
    dec e
    inc bc
    ld [$0b0c], sp
    jr jr_017_53f2

    dec bc
    ld [$1a13], sp
    dec bc
    nop
    inc d
    dec c
    inc bc
    ld de, $1d18

jr_017_53dd:
    ld de, $0e0e
    inc c
    jr nz, @+$1c

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
    inc bc
    inc b
    inc de

jr_017_53f2:
    inc b
    ld de, $0406
    dec c
    inc de
    dec e
    ld c, $15
    inc b
    ld de, $0716
    inc b
    dec bc
    inc c
    ld [de], a
    ld a, [de]
    jr jr_017_5414

    inc d
    ld de, $121d
    inc b
    dec c
    ld [de], a
    inc b
    ld [de], a
    jr nz, jr_017_5430

    ld [$2a13], sp

jr_017_5414:
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    rlca
    inc d
    inc de
    inc b
    ld a, [de]
    inc d
    ld [de], a
    inc b
    inc bc
    dec e
    inc de
    ld c, $1a
    inc bc
    inc b
    rrca
    ld c, $12
    ld [$1a13], sp
    inc de
    rlca

jr_017_5430:
    inc b
    dec e
    inc bc
    ld [$1311], sp
    jr jr_017_5452

    dec bc
    nop
    inc d
    dec c
    inc bc
    ld de, $1a18
    ld [$130d], sp
    ld c, $13
    rlca
    inc b
    ld a, [de]
    ld de, $0e0e
    inc c
    ld a, [de]
    dec b
    ld c, $11
    dec e
    ld [bc], a

jr_017_5452:
    dec bc
    inc b
    nop
    dec c
    ld [$060d], sp
    jr nz, jr_017_547a

    jr jr_017_546b

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
    inc c
    nop

jr_017_546b:
    inc bc
    inc b
    ld [de], a
    inc d
    ld de, $1a04
    jr @+$10

    inc d
    ld a, [de]
    dec bc
    ld c, $12
    inc de

jr_017_547a:
    dec e
    inc de
    rlca
    ld c, $12
    inc b
    ld a, [de]
    ld b, $0e
    ld c, $0d
    ld [de], a
    ld a, [de]
    ld bc, $0504
    ld c, $11
    inc b
    jr @+$10

    inc d
    ld a, [de]
    ld bc, $0604
    nop
    dec c
    ld a, [de]
    ld de, $000e
    inc c
    ld [$060d], sp
    dec e
    nop
    ld de, $140e
    dec c
    inc bc
    jr nz, jr_017_54c6

    jr jr_017_54b7

    inc d
    ld a, [hl+]
    inc bc
    ld a, [de]
    ld bc, $1304
    inc de
    inc b
    ld de, $061a
    inc b
    inc de

jr_017_54b7:
    dec e
    dec bc
    ld c, $0e
    ld [de], a
    inc b
    ld a, [de]
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]
    inc de

jr_017_54c6:
    rlca
    inc b
    jr jr_017_54e7

    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    inc d
    ld b, $12
    ld a, [de]
    inc de
    ld [$1a04], sp
    jr jr_017_54f3

    inc d
    dec e

jr_017_54e7:
    inc d
    rrca
    ld a, [de]
    inc de
    ld [$0706], sp
    inc de
    dec bc
    jr jr_017_5512

    rra

jr_017_54f3:
    ld bc, $0d04
    inc de
    ld a, [de]
    dec c
    nop
    ld [$120b], sp
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    rrca
    dec bc
    ld [$130d], sp
    inc b
    ld de, $1a12
    nop
    inc bc
    ld c, $11
    dec c
    dec e

jr_017_5512:
    inc de
    rlca
    ld [$1a12], sp
    ld d, $0e
    ld c, $03
    inc b
    dec c
    ld a, [de]
    ld [bc], a
    ld de, $1300
    inc b
    jr nz, jr_017_5544

    inc de
    rlca
    ld c, $12
    inc b
    ld a, [de]
    ld [de], a
    rlca
    nop
    ld de, $1a0f
    dec c
    nop
    ld [$120b], sp
    dec e
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    rlca
    nop
    add hl, de
    nop
    ld de, $0e03
    inc d

jr_017_5544:
    ld [de], a
    jr nz, jr_017_5566

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
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld bc, $1200
    ld a, [bc]
    inc b
    inc de
    dec h
    ld a, [de]

jr_017_5566:
    jr @+$10

    inc d
    ld a, [hl+]
    inc bc
    ld [de], a
    inc de
    ld [$0b0b], sp
    ld a, [de]
    ld bc, $1a04
    inc de
    ld [$0304], sp
    dec e
    inc d
    rrca
    jr nz, @+$21

    jr jr_017_558d

    inc d
    ld a, [de]
    rlca
    inc b
    nop
    ld de, $001a
    ld a, [de]
    dec d
    ld c, $08
    ld [bc], a
    inc b

jr_017_558d:
    dec e
    ld [de], a
    nop
    jr jr_017_55b7

    ld a, [de]
    ld h, $07
    inc b
    jr jr_017_55b2

    ld [de], a
    rrca
    ld [$040a], sp
    dec h
    dec e
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld b, $0e
    dec c
    inc b
    daa
    ld h, $1f
    nop
    ld a, [de]
    ld b, $11
    inc d
    dec b
    dec b

jr_017_55b2:
    ld a, [de]
    dec d
    ld c, $08
    ld [bc], a

jr_017_55b7:
    inc b
    dec e
    ld de, $0f04
    dec bc
    ld [$1204], sp
    dec h
    ld a, [de]
    ld h, $13
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    dec e
    dec c
    ld c, $1a
    ld [de], a
    ld [$0d06], sp
    ld a, [de]
    inc bc
    nop
    inc de
    ld a, [de]
    rlca
    inc b
    dec e
    dec bc
    inc b
    dec b
    inc de
    dec h
    ld a, [de]
    ld [de], a
    ld c, $1a
    rlca
    inc b
    ld a, [de]
    inc c
    inc d
    ld [de], a
    inc de
    dec e
    ld bc, $1a04
    rlca
    ld [$0803], sp
    dec c
    ld a, [hl+]
    ld a, [de]
    rlca
    inc b
    ld de, $2504
    dec e
    ld [de], a
    ld c, $0c
    inc b
    ld d, $07
    inc b
    ld de, $2004
    ld h, $1f
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    dec e
    ld [$030d], sp
    inc d
    ld [de], a
    inc de
    ld de, $0008
    dec bc
    ld hl, $0812
    add hl, de
    inc b
    inc bc
    dec e
    ld d, $00
    ld [de], a
    rlca
    inc b
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    dec bc
    nop
    inc d
    dec c
    inc bc
    ld de, $1a18
    ld [de], a
    ld c, $00
    rrca
    daa
    inc e
    jr jr_017_564b

    inc d
    ld a, [de]
    ld d, $00
    dec c
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    inc bc
    ld c, $1d
    dec bc

jr_017_564b:
    nop
    inc d
    dec c
    inc bc
    ld de, $1a18
    ld c, $11
    ld a, [de]
    ld [de], a
    ld c, $0b
    dec d
    inc b
    ld a, [de]
    nop
    inc c
    jr jr_017_5671

    inc de
    inc b
    ld de, $2818
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    nop
    ld bc, $0b04
    ld a, [de]
    ld c, $0d

jr_017_5671:
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $170e
    ld a, [de]
    ld de, $0004
    inc bc
    ld [de], a
    dec h
    dec e
    ld h, $0b
    nop
    inc d
    dec c
    inc bc
    ld de, $1d18
    inc bc
    inc b
    inc de
    inc b
    ld de, $0406
    dec c
    inc de
    jr nz, jr_017_56bb

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    inc d
    ld b, $04
    dec e
    dec bc
    nop
    inc d
    dec c
    inc bc
    ld de, $1a18
    rlca
    nop
    inc c
    rrca
    inc b
    ld de, $181d
    ld c, $14
    ld a, [de]
    ld de, $030e
    inc b

jr_017_56bb:
    ld a, [de]
    ld [$1a0d], sp
    ld c, $0d
    jr nz, @+$21

    inc de
    rlca
    ld c, $12
    inc b
    ld a, [de]
    inc de
    rlca
    inc d
    ld b, $12
    ld a, [de]
    nop
    ld de, $1d04
    ld [de], a
    inc d
    ld de, $1a04
    inc de
    ld c, $1a
    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    daa
    inc e
    ld bc, $1314
    ld a, [de]
    jr jr_017_56fa

    inc d
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]
    jr jr_017_5703

    inc d
    dec e
    ld [bc], a
    nop
    dec c

jr_017_56fa:
    ld a, [hl+]
    inc de
    ld a, [de]
    dec bc
    inc b
    nop
    dec d
    inc b
    dec h

jr_017_5703:
    dec e
    jr jr_017_5714

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0d

jr_017_5714:
    dec bc
    jr jr_017_5722

    inc b
    nop
    inc bc
    ld a, [de]
    jr jr_017_572b

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]

jr_017_5722:
    ld b, $0e
    inc de
    dec e
    dec bc
    inc b
    dec b
    inc de
    daa

jr_017_572b:
    inc e
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    dec h
    ld a, [de]
    ld de, $0b04
    ld [$0d00], sp
    inc de
    dec e
    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    inc b
    ld de, $2512
    dec e
    ld b, c
    ld sp, $3231
    dec h
    jr nc, @+$32

    jr nc, jr_017_576f

    ld a, [de]
    ld d, $07
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0d
    dec c
    inc b
    ld [bc], a
    inc de
    ld [$0d0e], sp
    jr z, jr_017_578e

    rra
    jr jr_017_5778

    inc d
    ld a, [de]
    ld [de], a
    inc b
    nop

jr_017_576f:
    ld de, $0702
    ld a, [de]
    dec b
    ld c, $11
    dec e
    ld [de], a

jr_017_5778:
    ld c, $0c
    inc b
    ld a, [de]
    ld d, $00
    jr @+$1c

    inc de
    ld c, $1a
    dec bc
    ld c, $12
    inc b
    dec e
    inc de
    rlca
    ld c, $12
    inc b
    ld a, [de]

jr_017_578e:
    ld b, $0e
    ld c, $0d
    ld [de], a
    daa
    rra
    jr jr_017_57a5

    inc d
    ld de, $131a
    ld [$0304], sp
    ld a, [de]
    rlca
    nop
    dec c
    inc bc
    ld [de], a
    dec e

jr_017_57a5:
    rrca
    ld de, $1504
    inc b
    dec c
    inc de
    ld a, [de]
    jr jr_017_57bd

    inc d
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    inc bc
    ld c, $08
    dec c
    ld b, $1a
    inc de

jr_017_57bd:
    rlca
    nop
    inc de
    daa
    rra
    jr @+$10

    inc d
    ld a, [de]
    dec d
    ld [$0e06], sp
    ld de, $140e
    ld [de], a
    dec bc
    jr @+$1f

    ld d, $0e
    ld de, $1a0a
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0f0e
    inc b
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
    ld c, $15
    inc b
    ld de, $131a
    rlca
    inc b
    dec c
    nop
    ld [$120b], sp
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0f0e
    inc b
    ld a, [de]
    ld bc, $0411
    nop
    ld a, [bc]
    ld [de], a
    daa
    inc e
    jr jr_017_581d

    inc d
    ld de, $071a
    nop
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    nop
    ld de, $1d04
    dec b

jr_017_581d:
    ld de, $0404
    daa
    rra
    inc d
    rlca
    ld hl, $070e
    daa
    ld a, [de]
    jr jr_017_5839

    inc d
    ld a, [de]
    rlca
    inc b
    nop
    ld de, $051d
    ld c, $0e
    inc de
    ld [de], a
    inc de
    inc b

jr_017_5839:
    rrca
    ld [de], a
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld d, $0e
    ld a, [de]
    ld b, $0e
    ld c, $0d
    ld [de], a
    ld a, [de]
    nop
    ld de, $1d04
    ld [bc], a
    ld c, $0c
    ld [$060d], sp
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    jr nz, jr_017_587b

    ld c, $0d
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $0e
    ld c, $0d
    ld [de], a
    dec e
    ld b, $11
    nop
    ld bc, $1a12
    jr jr_017_5883

    inc d
    ld a, [de]
    nop
    dec c
    inc bc
    dec e

jr_017_587b:
    ld [de], a
    nop
    jr jr_017_5891

    dec h
    ld a, [de]
    ld h, $03

jr_017_5883:
    nop
    ld a, [de]
    ld bc, $120e
    ld [de], a
    dec e
    ld [de], a
    nop
    jr @+$14

    ld a, [de]
    rlca
    inc b

jr_017_5891:
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    jr jr_017_589e

jr_017_589e:
    daa
    ld h, $1c
    ld h, $18
    inc b
    nop
    rlca
    dec h
    ld h, $1a
    ld [bc], a
    rlca
    ld [$040c], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld c, $13
    rlca
    inc b
    ld de, $0e1a
    dec c
    inc b
    dec h
    ld a, [de]
    ld h, $06
    ld c, $13
    dec e
    nop
    dec c
    jr jr_017_58e1

    dec bc
    nop
    ld [de], a
    inc de
    ld a, [de]
    ld d, $0e
    ld de, $1203
    jr z, jr_017_58f9

    rra
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]
    jr jr_017_58eb

    inc d
    ld a, [de]
    ld [bc], a
    nop

jr_017_58e1:
    dec c
    dec e
    inc d
    inc de
    inc de
    inc b
    ld de, $131a
    rlca

jr_017_58eb:
    ld c, $12
    inc b
    ld a, [de]
    dec bc
    nop
    ld [de], a
    inc de
    dec e
    ld d, $0e
    ld de, $1203

jr_017_58f9:
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $0e
    ld c, $0d
    ld [de], a
    dec e
    dec b
    ld [$0b0b], sp
    ld a, [de]
    jr jr_017_591a

    inc d
    ld a, [de]
    dec b
    inc d
    dec bc
    dec bc
    ld a, [de]
    ld c, $05
    dec e
    dec bc
    inc b
    nop
    inc bc

jr_017_591a:
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    inc de
    ld a, [de]
    inc de
    ld [$040c], sp
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    inc de
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    jr @+$10

    inc d
    dec e
    ld d, $08
    ld [de], a
    rlca
    ld a, [de]
    jr jr_017_5952

    inc d
    ld a, [de]
    ld d, $04
    ld de, $1a04
    nop
    dec e
    inc c
    nop
    ld b, $08
    ld [bc], a

jr_017_5952:
    ld [$0d00], sp
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $0e
    ld c, $0d
    ld [de], a
    ld a, [de]
    dec b
    ld [$030d], sp
    ld a, [de]
    jr @+$10

    inc d
    ld d, $00
    dec c
    inc bc
    inc b
    ld de, $0d08
    ld b, $1d
    nop
    ld [$0b0c], sp
    inc b
    ld [de], a
    ld [de], a
    dec bc
    jr jr_017_59a4

    rra
    jr jr_017_598e

    inc d
    ld a, [de]
    rrca
    ld c, $14
    ld de, $031a
    inc b
    inc de
    inc b
    ld de, $0406

jr_017_598e:
    dec c
    inc de
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $00
    ld [de], a
    rlca
    inc b
    ld de, $1f20
    jr jr_017_59b1

    inc d

jr_017_59a4:
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0d00

jr_017_59b1:
    ld b, $04
    inc d
    ld de, $0406
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    ld c, $05
    dec b
    dec e
    jr jr_017_59d4

    inc d
    ld de, $021a
    dec bc
    ld c, $13
    rlca
    inc b
    ld [de], a
    jr nz, @+$21

    jr @+$10

jr_017_59d4:
    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    dec c
    ld c, $1a
    ld [$0403], sp
    nop
    dec e
    ld d, $07
    nop
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    inc bc
    ld c, $1a
    dec c
    inc b
    rla
    inc de
    jr nz, jr_017_5a12

    jr nz, jr_017_5a10

    jr jr_017_5a04

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    dec c
    inc b
    dec d
    inc b
    ld de, $141a
    ld [de], a
    inc b

jr_017_5a04:
    inc bc
    dec e
    nop
    ld a, [de]
    ld d, $00
    ld [de], a
    rlca
    ld [$060d], sp
    ld a, [de]

jr_017_5a10:
    inc c
    nop

jr_017_5a12:
    ld [bc], a
    rlca
    ld [$040d], sp
    dec e
    ld bc, $0504
    ld c, $11
    inc b
    daa
    rra
    ld d, $07
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    inc d
    ld b, $12
    dec e
    inc bc
    ld de, $0600
    ld b, $04
    inc bc
    ld a, [de]
    jr jr_017_5a47

    inc d
    ld a, [de]
    ld c, $14
    inc de
    dec h
    dec e
    inc de
    rlca
    inc b
    jr jr_017_5a5f

    inc c
    inc d

jr_017_5a47:
    ld [de], a
    inc de
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    dec e
    ld bc, $0e11
    ld a, [bc]
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    ld [$2003], sp
    inc e

jr_017_5a5f:
    ld [$1a13], sp
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    dec e
    nop
    dec c
    jr jr_017_5a80

    ld c, $11
    inc b
    jr nz, jr_017_5a99

    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a

jr_017_5a80:
    rlca
    inc d
    inc de
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc de
    ld c, $0e
    dec e
    ld [de], a
    dec bc
    ld [$0f0f], sp
    inc b
    ld de, $1a18
    inc de
    ld c, $1a
    ld [bc], a
    dec bc

jr_017_5a99:
    ld [$010c], sp
    jr nz, @+$21

    ld c, $0d
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $0e
    ld c, $0d
    ld [de], a
    dec e
    ld [de], a
    inc c
    nop
    ld [bc], a
    ld a, [bc]
    ld [de], a
    ld a, [de]
    jr jr_017_5ac6

    inc d
    ld a, [de]
    rlca
    nop
    ld de, $1a03
    nop
    ld [de], a
    rlca
    inc b
    ld a, [de]
    ld [de], a
    nop

jr_017_5ac6:
    jr jr_017_5ada

    dec h
    ld a, [de]
    ld h, $00
    ld de, $1a04
    jr jr_017_5ad1

jr_017_5ad1:
    dec e
    inc de
    ld de, $0818
    dec c
    ld b, $1a
    inc de

jr_017_5ada:
    ld c, $1a
    inc b
    ld [de], a
    ld [bc], a
    nop
    rrca
    inc b
    jr z, jr_017_5b00

    ld [$061a], sp
    inc d
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    jr jr_017_5aee

jr_017_5aee:
    ld a, [de]
    inc bc
    ld [$0d03], sp
    ld a, [hl+]
    inc de
    dec e
    inc bc
    ld c, $1a
    ld [de], a
    inc d
    ld [bc], a
    rlca
    ld a, [de]
    nop
    ld a, [de]

jr_017_5b00:
    ld b, $0e
    ld c, $03
    ld a, [de]
    add hl, bc
    ld c, $01
    nop
    inc de
    ld a, [de]
    ld [$2513], sp
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld [$060d], sp
    ld [de], a
    ld a, [de]
    rlca
    ld c, $16
    ld d, $04
    ld a, [de]
    dec b
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    jr jr_017_5b25

jr_017_5b25:
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    nop
    dec bc
    dec bc
    daa
    rra
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
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]
    jr jr_017_5b45

jr_017_5b45:
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    rlca
    inc b
    dec e
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    ld [$1a13], sp
    inc de
    rlca
    nop
    inc de
    jr jr_017_5b61

jr_017_5b61:
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    inc bc
    nop
    inc de
    ld a, [de]
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $131d
    ld c, $1a
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    dec h
    ld a, [de]
    inc b
    ld [$0713], sp
    inc b
    ld de, $1c27
    ld [$061a], sp
    inc d
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    jr jr_017_5b8e

jr_017_5b8e:
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    dec e
    ld d, $07
    nop
    inc de
    ld a, [de]
    inc bc
    nop
    inc de
    ld a, [de]
    inc c
    inc b
    nop
    dec c
    ld [de], a
    jr nz, @+$22

    jr nz, @+$1f

    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [de], a
    rrca
    ld [$040a], sp
    dec h
    dec e
    dec bc
    inc b
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    rlca
    inc d
    ld de, $1811
    ld a, [de]
    inc bc
    ld [$1d12], sp
    inc d
    rrca
    ld hl, $081a
    ld a, [hl+]
    inc c
    ld a, [de]
    ld b, $04
    inc de
    inc de
    ld [$060d], sp
    ld a, [hl+]
    dec e
    rlca
    inc d
    dec c
    ld b, $11
    jr jr_017_5c04

    ld h, $1c
    ld h, $18
    inc b
    nop
    rlca
    dec h
    ld a, [de]
    inc c
    inc b
    ld a, [de]
    inc de
    ld c, $0e
    dec e
    inc c
    ld c, $0e
    ld [de], a
    inc b
    dec h
    ld h, $1a
    ld de, $0f04
    dec bc
    ld [$1204], sp
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $13
    rlca

jr_017_5c04:
    inc b
    ld de, $0e1a
    dec c
    inc b
    ld a, [de]
    nop
    ld [de], a
    dec e
    rlca
    inc b
    ld a, [de]
    ld d, $07
    ld [$120f], sp
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    rlca
    ld [$1d12], sp
    ld b, $14
    dec c
    jr nz, @+$1c

    ld h, $18
    nop
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    nop
    dec c
    jr @+$1f

    dec bc
    nop
    ld [de], a
    inc de
    ld a, [de]
    ld d, $0e
    ld de, $1203
    jr z, @+$28

    rra
    jr @+$10

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    ld a, [hl+]
    ld [de], a
    dec e
    rlca
    nop
    dec bc
    dec bc
    ld d, $00
    jr jr_017_5c7e

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
    ld d, $08
    dec c
    inc bc
    ld c, $16
    jr jr_017_5c81

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    inc b

jr_017_5c7e:
    inc c
    rrca
    inc de

jr_017_5c81:
    jr jr_017_5ca0

    ld [de], a
    inc de
    ld de, $0404
    inc de
    jr nz, jr_017_5ca5

    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    dec c
    ld c, $0e
    dec c
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $2704
    rra

jr_017_5ca0:
    ld [$2a13], sp
    ld [de], a
    ld a, [de]

jr_017_5ca5:
    nop
    ld a, [de]
    ld [de], a
    ld [$0d06], sp
    dec e
    dec bc
    ld [$1312], sp
    ld [$060d], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld de, $0208
    inc b
    ld [de], a
    ld c, $0d
    ld a, [de]
    dec bc
    nop
    inc d
    dec c
    inc bc
    ld de, $1d18
    ld [de], a
    inc b
    ld de, $0815
    ld [bc], a
    inc b
    ld [de], a
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    dec c
    ld c, $1a
    ld [bc], a
    dec bc
    inc b
    ld de, $1d0a
    ld bc, $0704
    ld [$030d], sp
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $1f20
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
    nop
    rrca
    rrca
    ld de, $000e
    ld [bc], a
    rlca
    inc b
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    nop
    jr jr_017_5d2c

    dec h
    rra
    inc de
    rlca
    ld c, $12
    inc b
    ld a, [de]
    ld b, $0e
    ld c, $0d
    ld [de], a
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]

jr_017_5d2c:
    inc de
    dec e
    ld [de], a
    inc b
    inc b
    inc c
    ld a, [de]
    inc de
    ld c, $0e
    ld a, [de]
    ld [de], a
    inc c
    nop
    ld de, $2513
    dec e
    inc de
    rlca
    inc b
    ld de, $1a04
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $1d04
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]
    inc de
    ld c, $1a
    inc bc
    ld c, $1a
    inc de
    ld c, $0c
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    inc c
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    dec e
    jr jr_017_5d7e

    inc d
    ld a, [de]
    dec bc
    inc b
    dec b
    inc de
    daa
    rra
    inc de
    rlca
    ld c, $12
    inc b
    ld a, [de]

jr_017_5d7e:
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
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    dec bc
    nop
    inc d
    dec c
    inc bc
    ld de, $1a18
    ld de, $0e0e
    inc c
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $161a
    ld [$0713], sp
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    ld de, $1a03
    ld h, $0e
    dec b
    dec b
    ld [$0402], sp
    ld h, $1d
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
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec c
    ld a, [de]
    inc b
    nop
    ld [de], a
    jr @+$1c

    rrca
    inc d
    dec bc
    dec bc
    dec h
    jr jr_017_5dff

    inc d
    ld a, [de]
    dec bc
    ld [$1305], sp
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $14

jr_017_5dff:
    dec c
    inc de
    inc b
    ld de, $031a
    ld c, $0e
    ld de, $1f20
    jr @+$10

    inc d
    ld a, [de]
    dec bc
    ld c, $16
    inc b
    ld de, $131a
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $1f20
    jr @+$10

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    ld a, [de]
    dec b
    nop
    ld [$0b11], sp
    jr jr_017_5e3f

    nop
    ld de, $0406
    ld a, [de]
    ld c, $05
    dec b
    ld [$0402], sp

jr_017_5e3f:
    jr nz, jr_017_5e60

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0608
    dec e
    inc bc
    nop
    ld de, $0113
    ld c, $00
    ld de, $2003
    inc e
    ld [bc], a
    ld c, $11
    ld a, [bc]
    ld a, [de]
    rrca
    nop
    dec c
    inc b

jr_017_5e60:
    dec bc
    ld [de], a
    dec e
    ld [de], a
    inc d
    ld de, $0e11
    inc d
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $000e
    ld de, $1a03
    inc de
    ld c, $1a
    ld a, [bc]
    inc b
    inc b
    rrca
    dec e
    ld [de], a
    inc de
    ld de, $1800
    ld a, [de]
    inc bc
    nop
    ld de, $1213
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
    ld d, $00
    dec bc
    dec bc
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    nop
    ld de, $1a13
    ld bc, $000e
    ld de, $1d03
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    ld [$1313], sp
    dec bc
    inc b
    ld a, [de]
    ld c, $14
    inc de
    ld c, $05
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    ld [$1d12], sp
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, jr_017_5ef4

    inc de
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    nop
    inc de
    inc de
    ld de, $0200
    inc de
    ld [$0415], sp
    dec e
    inc bc
    ld de, $0f00
    inc b
    ld [de], a
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    nop
    dec e

jr_017_5ef4:
    dec bc
    ld c, $15
    inc b
    dec bc
    jr jr_017_5f15

    ld bc, $0e11
    ld [bc], a
    nop
    inc bc
    inc b
    inc bc
    dec e
    dec b
    dec bc
    ld c, $11
    nop
    dec bc
    ld a, [de]
    rrca
    nop
    inc de
    inc de
    inc b
    ld de, $200d
    rra
    inc de

jr_017_5f15:
    rlca
    inc b
    ld a, [de]
    ld d, $00
    ld de, $1a0c
    ld [de], a
    inc d
    dec c
    dec bc
    ld [$0706], sp
    inc de
    dec e
    ld [de], a
    rlca
    ld [$040d], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    ld de, $140e
    ld b, $07
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    inc b
    nop
    inc de
    rlca
    inc b
    ld de, $0e1d
    dec b
    dec b
    ld [$0402], sp
    ld a, [de]
    ld [bc], a
    rlca
    nop
    ld [$2011], sp
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc c
    nop
    rlca
    ld c, $06
    nop
    dec c
    jr jr_017_5f80

    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec e
    ld b, $0b
    ld c, $12
    ld [de], a
    jr @+$27

    ld a, [de]
    ld [de], a
    rlca
    inc b
    dec bc
    dec bc
    nop
    ld [bc], a
    ld a, [bc]
    inc b

jr_017_5f80:
    inc bc
    dec b
    ld [$080d], sp
    ld [de], a
    rlca
    jr nz, jr_017_5fa8

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    inc d
    dec c
    inc c
    nop
    ld de, $040a
    inc bc
    dec e
    ld bc, $0011
    ld [de], a
    ld [de], a
    ld a, [de]
    ld a, [bc]
    inc b
    jr jr_017_5fc4

    rra
    ld [$2a13], sp

jr_017_5fa8:
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
    inc c
    nop
    ld b, $0d
    inc b
    inc de
    jr nz, @+$1e

    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec bc

jr_017_5fc4:
    ld [$040a], sp
    ld a, [de]
    nop
    dec e
    ld bc, $1314
    inc de
    ld c, $0d
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    dec e
    ld [de], a
    ld c, $11
    inc de
    jr nz, jr_017_5ffe

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
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    ld c, $13
    ld c, $11
    ld [$140e], sp
    ld [de], a

jr_017_5ffe:
    dec e
    nop
    dec c
    inc de
    rlca
    ld c, $0d
    jr jr_017_6021

    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    dec e
    ld [de], a
    rlca
    nop
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    nop
    dec c
    inc bc
    dec e
    ld c, $05

jr_017_6021:
    ld a, [de]
    nop
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    jr jr_017_6038

    inc d
    ld a, [de]
    inc bc
    ld c, $1d
    dec c
    ld c, $13
    ld a, [de]
    ld de, $0204
    ld c, $06

jr_017_6038:
    dec c
    ld [$0419], sp
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld a, [de]
    ld [$120d], sp
    ld [bc], a
    ld de, $0f08
    inc de
    ld [$0d0e], sp
    ld a, [de]
    ld c, $0d
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld [$1302], sp
    inc d
    ld de, $1a04
    ld de, $0004
    inc bc
    ld [de], a
    dec h
    ld h, $13
    ld c, $1a
    dec bc
    ld [$1313], sp
    dec bc
    inc b
    ld a, [de]
    inc bc
    nop
    dec c
    dec c
    jr @+$1f

    dec d
    jr nz, jr_017_609b

    ld a, [de]
    ld [$032a], sp
    ld a, [de]
    inc de
    ld de, $1214
    inc de
    ld a, [de]
    jr jr_017_6091

    inc d
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc c
    jr jr_017_60a7

    dec bc
    ld [$0405], sp

jr_017_6091:
    daa
    dec e
    ld hl, $2013
    inc c
    jr nz, jr_017_60bf

    inc e
    inc bc

jr_017_609b:
    nop
    dec c
    dec c
    jr jr_017_60ba

    dec d
    jr nz, jr_017_60cb

    ld a, [de]
    inc bc
    jr nz, jr_017_60bc

jr_017_60a7:
    jr nz, jr_017_60d0

    dec e
    inc bc
    nop
    dec c
    dec c
    jr jr_017_60ca

    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    daa
    dec e
    inc c

jr_017_60ba:
    nop
    dec bc

jr_017_60bc:
    ld c, $0d
    inc b

jr_017_60bf:
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld de, $0608
    rlca
    inc de
    dec e
    rlca
    nop

jr_017_60ca:
    dec c

jr_017_60cb:
    inc bc
    ld a, [de]
    inc c
    nop
    dec c

jr_017_60d0:
    daa
    rra
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $0504
    ld c, $11
    inc b
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
    dec h
    dec e
    ld [de], a
    inc de
    ld c, $06
    ld [$1a04], sp
    add hl, bc
    inc d
    inc c
    rrca
    ld [de], a
    dec e
    ld c, $0d
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0800
    dec c
    daa
    rra
    ld h, $07
    inc b
    jr jr_017_6136

    ld a, [de]
    inc bc
    ld [$1a12], sp
    inc de
    ld de, $0800
    dec c
    dec e
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    ld b, $0e
    ld a, [de]
    dec c
    ld c, $1a
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    jr jr_017_6143

    inc d

jr_017_6136:
    ld a, [de]
    ld [de], a
    rlca
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    ld bc, $0604
    ld c, $08

jr_017_6143:
    dec c
    ld a, [hl+]
    daa
    ld h, $1a
    rlca
    inc b
    ld a, [de]
    ld [de], a
    nop
    jr @+$14

    dec e
    inc de
    rlca
    ld de, $140e
    ld b, $07
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $14
    inc bc
    ld a, [de]
    ld c, $05
    ld [bc], a
    ld [$0006], sp
    ld de, $121a
    inc c
    ld c, $0a
    inc b
    jr nz, @+$1e

    ld h, $12
    ld c, $11
    ld de, $1a18
    rrca
    nop
    dec bc
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    jr jr_017_6181

jr_017_6181:
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $1a04
    ld de, $0d14
    dec c
    ld [$2a0d], sp
    dec e
    ld c, $05
    dec b
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    ld d, $00
    ld [de], a
    ld [bc], a
    dec bc
    inc b
    nop
    ld de, $0e1a
    dec c
    ld a, [de]
    ld d, $07
    nop
    inc de
    dec e
    ld d, $0e
    inc d
    dec bc
    inc bc
    ld a, [de]
    rlca
    nop
    rrca
    rrca
    inc b
    dec c
    ld a, [de]
    inc de
    ld c, $1a
    jr jr_017_61c3

jr_017_61c3:
    ld [$1a05], sp
    jr jr_017_61c8

jr_017_61c8:
    ld a, [de]
    inc bc
    ld [$1a03], sp
    inc bc
    nop
    inc de
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
    dec h
    ld a, [de]
    ld [de], a
    inc de
    ld c, $06
    ld [$1d04], sp
    nop
    inc bc
    inc c
    ld [$080d], sp
    ld [de], a
    inc de
    inc b
    ld de, $1a12
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $14
    rrca
    ld a, [de]
    inc bc
    inc b
    ld a, [de]
    ld b, $11
    nop
    ld [bc], a
    inc b
    daa
    dec e
    jr jr_017_6214

    inc d
    ld a, [hl+]
    ld de, $1a04
    rlca
    ld [$1312], sp
    ld c, $11
    jr jr_017_6230

    nop

jr_017_6214:
    ld [bc], a
    inc b
    daa
    rra
    ld d, $04
    dec bc
    dec bc
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    ld bc, $0004
    inc de
    ld a, [de]
    nop
    dec bc
    dec bc

jr_017_6230:
    daa
    inc e
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    dec e
    inc b
    dec c
    inc de
    ld de, $0d00
    ld [bc], a
    inc b
    jr nz, jr_017_6269

    jr jr_017_625a

    inc d
    ld a, [de]
    ld bc, $0d00
    ld b, $1a
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e

jr_017_625a:
    ld [bc], a
    ld c, $11
    ld a, [bc]
    ld a, [de]
    ld bc, $000e
    ld de, $2003
    ld a, [de]
    ld [$1a13], sp

jr_017_6269:
    rlca
    nop
    ld [de], a
    nop
    dec c
    ld a, [de]
    ld c, $03
    inc bc
    dec h
    ld a, [de]
    rlca
    ld c, $0b
    dec bc
    ld c, $16
    dec e
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    inc de
    ld c, $1a
    ld [$2013], sp
    rra
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    ld [de], a
    dec bc
    inc b
    inc b
    rrca
    jr nz, jr_017_62b4

    ld c, $15
    inc b
    ld de, $131a
    rlca
    inc b
    ld a, [de]
    jr jr_017_62a4

    nop
    ld de, $1d12

jr_017_62a4:
    jr jr_017_62b4

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    nop
    ld [bc], a
    db $10
    inc d
    ld [$0411], sp
    inc bc
    dec e

jr_017_62b4:
    inc c
    nop
    dec c
    jr jr_017_62d3

    inc de
    nop
    dec bc
    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    inc de
    rlca
    ld de, $160e
    ld [$060d], sp
    ld a, [de]
    inc bc
    nop
    ld de, $1213

jr_017_62d3:
    ld a, [de]
    ld [$1d12], sp
    ld c, $0d
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    inc c
    daa
    rra
    ld bc, $0b14
    dec bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc b
    jr jr_017_62f2

    daa
    rra
    inc de
    rlca

jr_017_62f2:
    inc b
    ld a, [de]
    inc bc
    nop
    ld de, $0113
    ld c, $00
    ld de, $1a03
    nop
    dec c
    inc bc
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    inc de
    ld [$0d0e], sp
    ld a, [de]
    ld c, $05
    dec e
    ld d, $00
    dec bc
    dec bc
    ld a, [de]
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc c
    ld c, $15
    inc b
    dec e
    nop
    ld [de], a
    ld [$0403], sp
    ld a, [de]
    inc de
    ld c, $1a
    ld de, $1504
    inc b
    nop
    dec bc
    ld a, [de]
    nop
    dec e
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
    ld d, $00
    jr jr_017_636e

    rra
    ld [de], a
    db $10
    inc d
    inc b
    nop
    ld a, [bc]
    daa
    rra
    jr jr_017_6360

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [de], a
    inc d
    ld de, $1a04
    ld b, $0e
    ld c, $03

jr_017_6360:
    dec e
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    ld [$2712], sp
    rra
    jr jr_017_637a

    inc d
    ld a, [de]

jr_017_636e:
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $161a
    rlca
    jr jr_017_6396

    ld [bc], a

jr_017_637a:
    ld c, $14
    ld de, $0408
    ld de, $401a
    jr nc, @+$1f

    ld [$0d12], sp
    ld a, [hl+]
    inc de
    ld a, [de]
    dec bc
    ld [$1312], sp
    inc b
    inc bc
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca

jr_017_6396:
    ld [$1a12], sp
    ld bc, $0e0e
    ld a, [bc]
    jr z, @+$1c

    inc bc
    ld c, $04
    ld [de], a
    dec e
    inc de
    rlca
    ld [$1a12], sp
    inc c
    inc b
    nop
    dec c
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [de]
    ld [$1a12], sp
    rlca
    ld [$0803], sp
    dec c
    ld b, $1d
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    rrca
    nop
    jr jr_017_63da

    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    dec b
    ld de, $0c0e
    inc c
    nop
    dec bc

jr_017_63da:
    ld c, $0d
    inc b
    jr z, @+$1e

    ld [$1a12], sp
    ld [$1a13], sp
    inc de
    ld de, $0414
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    rlca
    inc b
    ld a, [de]
    ld [$1a12], sp
    inc c
    inc d
    ld [de], a
    ld [bc], a
    dec bc
    ld [$060d], sp
    ld a, [de]
    ld [$1d0d], sp
    ld c, $0d
    ld a, [de]
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [hl+]
    ld [de], a
    dec e
    ld c, $0f
    inc b
    ld de, $1300
    ld [$0d0e], sp
    jr z, jr_017_6437

    ld d, $07
    jr jr_017_6436

    inc bc
    ld [$1a03], sp
    jr jr_017_6430

    inc d
    ld a, [de]
    ld [de], a
    inc de
    ld [$0a02], sp
    dec e
    jr jr_017_643a

    inc d
    ld de, $0412

jr_017_6430:
    dec bc
    dec b
    ld a, [de]
    ld d, $08
    inc de

jr_017_6436:
    rlca

jr_017_6437:
    ld a, [de]
    inc de
    rlca

jr_017_643a:
    inc b
    dec e
    inc bc
    nop
    ld de, $2813
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    dec e
    rrca
    ld c, $08
    dec c
    inc de
    dec bc
    inc b
    ld [de], a
    ld [de], a
    daa
    rra
    jr jr_017_6463

    inc d
    ld a, [de]
    rrca
    inc b
    inc b
    dec bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $0d00

jr_017_6463:
    nop
    dec c
    nop
    jr nz, @+$21

    jr @+$10

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
    ld c, $0c
    inc b
    ld c, $0d
    inc b
    ld a, [de]
    ld d, $0e
    inc d
    dec bc
    inc bc
    ld a, [de]
    ld [de], a
    dec bc
    ld [$080f], sp
    dec b
    ld a, [de]
    jr jr_017_649b

    inc d
    ld a, [de]
    dec bc
    inc b
    dec b
    inc de
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    ld c, $0d

jr_017_649b:
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $1f28
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    nop
    ld de, $0406
    ld a, [de]
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    dec bc
    inc b
    inc bc
    ld b, $04
    ld de, $1f20
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    inc b
    inc bc
    ld b, $04
    ld de, $0b1a
    ld [$1312], sp
    ld [de], a
    dec e
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
    jr jr_017_64ea

    inc b
    dec c
    inc de
    ld [de], a
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    nop
    rrca

jr_017_64ea:
    rrca
    inc b
    nop
    ld de, $081a
    dec c
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
    jr jr_017_6521

    inc e
    ld h, $13
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $1a04
    inc de
    rlca
    inc b
    ld de, $0004
    dec bc
    ld a, [de]
    ld bc, $0e0e
    ld a, [bc]
    ld [de], a
    dec h
    ld h, $1a

jr_017_6521:
    jr jr_017_6531

    inc d
    dec e
    inc c
    inc d
    inc de
    inc de
    inc b
    ld de, $131a
    ld c, $1d
    jr jr_017_653f

jr_017_6531:
    inc d
    ld de, $0412
    dec bc
    dec b
    jr nz, jr_017_6558

    inc de
    rlca
    ld [$1a12], sp
    ld [de], a

jr_017_653f:
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    ld [bc], a
    ld c, $0d
    inc de
    nop
    ld [$1a0d], sp
    nop
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a

jr_017_6558:
    nop
    inc c
    inc b
    ld a, [de]
    ld [$050d], sp
    ld c, $11
    inc c
    nop
    inc de
    ld [$0d0e], sp
    dec e
    nop
    ld [de], a
    ld a, [de]
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc bc
    ld [$1100], sp
    jr @+$22

    rra
    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c
    dec bc
    jr jr_017_659e

    jr @+$10

    inc d
    ld a, [de]
    nop
    ld de, $1d04
    rrca
    inc d
    dec bc
    dec bc
    inc b
    inc bc
    ld a, [de]
    ld de, $140e
    ld b, $07
    dec bc
    jr jr_017_65b5

    ld c, $14
    inc de

jr_017_659e:
    ld c, $05
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
    ld de, $1c20
    ld h, $00
    rlca
    dec h
    ld a, [de]
    inc de
    rlca
    inc b

jr_017_65b5:
    ld de, $1a04
    jr jr_017_65ba

jr_017_65ba:
    dec e
    nop
    ld de, $2704
    ld h, $1f
    rrca
    nop
    jr jr_017_65d1

    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    nop
    ld de, $1d04
    ld de, $0204

jr_017_65d1:
    ld c, $11
    inc bc
    inc b
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    ld [$1d12], sp
    ld bc, $0e0e
    ld a, [bc]
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld c, $14
    inc de
    dec e
    nop
    dec c
    jr jr_017_660f

    dec b
    inc d
    ld de, $0713
    inc b
    ld de, $081d
    dec c
    dec b
    ld c, $11
    inc c
    nop
    inc de
    ld [$0d0e], sp
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    jr jr_017_662c

jr_017_660f:
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    inc c
    inc b
    nop
    dec c
    ld a, [de]
    inc c
    inc d
    ld [bc], a
    rlca
    ld a, [de]
    inc de
    ld c, $18
    ld c, $14
    jr nz, @+$21

    inc de
    rlca
    nop
    inc de
    ld a, [de]
    dec bc

jr_017_662c:
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
    ld c, $14
    inc de
    inc b
    ld de, $0e1a
    dec b
    dec b
    ld [$0402], sp
    jr nz, @+$21

    jr jr_017_6656

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld bc, $1100
    inc b
    dec bc
    jr jr_017_6672

    inc c

jr_017_6656:
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
    ld [de], a
    ld [bc], a
    ld de, $0108
    ld bc, $080b
    dec c
    ld b, $12
    ld a, [de]
    ld a, [de]
    ld c, $0d
    dec e

jr_017_6672:
    inc de
    rlca
    ld [$1a12], sp
    rrca
    nop
    rrca
    inc b
    ld de, $2020
    jr nz, jr_017_669c

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1a04
    nop
    dec bc
    ld [$1312], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [bc], a
    rlca

jr_017_669c:
    ld [$0002], sp
    ld b, $0e
    dec e
    ld bc, $1200
    inc b
    inc bc
    ld a, [de]
    ld [bc], a
    ld c, $0c
    rrca
    nop
    dec c
    ld [$1204], sp
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    ld de, $1203
    dec e
    ld h, $00
    ld [bc], a
    ld [bc], a
    inc b
    rrca
    inc de
    ld h, $1a
    ld c, $11
    dec e
    ld h, $13
    inc b
    ld de, $080c
    dec c
    nop
    inc de
    inc b
    ld h, $1a
    dec c
    inc b
    rla
    inc de
    dec e
    inc de
    ld c, $1a
    inc b
    nop
    ld [bc], a
    rlca
    ld a, [de]
    ld c, $0d
    inc b
    jr nz, jr_017_6707

    rrca
    ld de, $1304
    inc de
    jr jr_017_670c

    ld c, $0c
    ld [$0e0d], sp
    inc d
    ld [de], a
    dec e
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    inc de
    inc d
    dec b

jr_017_6707:
    dec b
    daa
    rra
    inc de
    rlca

jr_017_670c:
    ld [$1a12], sp
    ld bc, $0d00
    nop
    dec c
    nop
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    dec e
    rrca
    ld de, $1304
    inc de
    jr jr_017_673d

    ld de, $0f08
    inc b
    jr nz, jr_017_6748

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld de, $0004
    dec bc
    dec bc
    jr jr_017_674f

    inc de
    ld c, $0e
    dec e
    ld [de], a
    ld c, $05
    inc de

jr_017_673d:
    jr nz, jr_017_675f

    jr nz, jr_017_6760

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]

jr_017_6748:
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    dec e

jr_017_674f:
    ld c, $05
    dec b
    ld [$0402], sp
    daa
    inc e
    jr jr_017_6767

    inc d
    ld a, [de]
    ld d, $0e
    dec c
    inc bc

jr_017_675f:
    inc b

jr_017_6760:
    ld de, $161a
    rlca
    nop
    inc de
    dec e

jr_017_6767:
    inc de
    jr @+$11

    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    rrca
    dec bc
    nop
    dec c
    ld [de], a
    ld a, [de]
    ld d, $04
    ld de, $0b04
    nop
    ld [$1a03], sp
    rlca
    inc b
    ld de, $2804
    rra
    inc de
    rlca
    ld [$1a12], sp
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1a04
    nop
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    ld [de], a
    inc de
    inc d
    dec b
    dec b
    jr jr_017_67ba

    ld c, $0e
    inc c
    daa
    ld a, [de]
    ld bc, $180e
    daa
    ld a, [de]
    ld [$1d13], sp
    dec c
    inc b
    inc b
    inc bc

jr_017_67ba:
    ld [de], a
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    nop
    ld [$1d11], sp
    ld [bc], a
    ld [$0211], sp
    inc d
    dec bc
    nop
    inc de
    ld [$0d0e], sp
    ld a, [de]
    ld [$1d0d], sp
    rlca
    inc b
    ld de, $2704
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0e11
    ld d, $0d
    dec h
    dec e
    dec bc
    inc b
    nop
    inc de
    rlca
    inc b
    ld de, $121a
    ld d, $08
    dec d
    inc b
    dec bc
    dec e
    ld [bc], a
    rlca
    nop
    ld [$2011], sp
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    dec e
    ld bc, $0e0b
    inc de
    inc de
    inc b
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld d, $04
    dec bc
    dec bc
    ld hl, $0e16
    dec d
    inc b
    dec c
    dec e
    ld [de], a
    inc de
    ld de, $1600
    ld a, [de]
    ld d, $00
    ld [de], a
    inc de
    inc b
    ld bc, $1200
    ld a, [bc]
    inc b
    inc de
    jr nz, jr_017_684e

    rlca
    nop
    inc de
    ld a, [de]
    inc bc
    ld c, $1a
    jr @+$10

    inc d
    ld a, [de]
    ld d, $00
    dec c
    inc de
    dec h
    dec e
    ld d, $08
    ld [bc], a
    ld a, [bc]
    inc b

jr_017_684e:
    ld de, $1f28
    ld [$2a13], sp
    ld [de], a
    ld a, [de]

Jump_017_6856:
    nop
    ld a, [de]
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    dec e
    ld c, $05
    dec b
    ld [$0402], sp
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    dec h
    ld a, [de]
    inc c
    nop
    inc bc
    inc b
    dec e
    ld c, $05
    ld a, [de]
    ld bc, $0e0b
    dec c
    inc bc
    inc b
    ld a, [de]
    ld c, $00
    ld a, [bc]
    jr nz, jr_017_689e

    jr jr_017_688f

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
    inc b

jr_017_688f:
    inc b
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    inc de
    ld c, $06
    ld [$2a04], sp
    ld [de], a
    dec e
    ld [bc], a

jr_017_689e:
    ld [$0006], sp
    ld de, $111a
    ld [$060d], sp
    ld a, [de]
    ld c, $0d
    ld a, [de]
    rlca
    ld [$1d12], sp
    inc bc
    inc b
    ld [de], a
    ld a, [bc]
    ld a, [de]
    ld d, $0e
    inc d
    dec bc
    inc bc
    ld a, [de]
    ld [bc], a
    nop
    inc d
    ld [de], a
    inc b
    dec e
    dec d
    inc b
    dec c
    inc de
    ld [$080d], sp
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    ld [$0a0d], sp
    dec e
    inc c
    nop
    dec bc
    ld c, $0d
    inc b
    ld a, [de]
    ld d, $00
    ld [de], a
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    ld c, $1d
    rlca
    ld [$280c], sp
    rra
    jr jr_017_68f7

    inc d
    ld a, [de]
    dec c
    inc d
    inc bc
    ld b, $04
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop

jr_017_68f7:
    dec c
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    rlca
    ld c, $16
    ld a, [de]
    rlca
    ld [$1a0c], sp
    jr jr_017_6916

    inc d
    ld de, $021d
    dec bc
    nop
    ld [$1a0c], sp
    inc de
    ld [$0a02], sp
    inc b

jr_017_6916:
    inc de
    jr nz, jr_017_6935

    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc de
    nop
    ld de, $2513
    ld a, [de]
    rlca
    inc b
    dec e
    ld d, $00
    ld a, [bc]
    inc b
    ld [de], a
    ld a, [de]
    inc d
    rrca
    dec h
    ld a, [de]
    dec bc

jr_017_6935:
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e
    inc d
    dec c
    inc bc
    inc b
    ld de, $131a
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $001d
    dec c
    inc bc
    ld a, [de]
    rrca
    inc d
    dec bc
    dec bc
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    nop
    dec e
    ld bc, $0608
    ld a, [de]
    ld [de], a
    inc d
    ld [$0213], sp
    nop
    ld [de], a
    inc b
    jr nz, jr_017_6989

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_6989:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
