; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    nop
    ld b, c
    ld b, l
    ld b, c
    adc h
    ld b, c
    rla
    ld b, d
    or b
    ld b, d
    rst RST_18
    ld b, d
    dec e
    ld b, e
    ld [hl], c
    ld b, e
    adc e
    ld b, e
    or l
    ld b, e
    cp $43
    ld [hl], d
    ld b, h
    ldh a, [rLY]
    dec c
    ld b, [hl]
    sub [hl]
    ld b, [hl]
    rst RST_38
    ld b, [hl]
    ld l, b
    ld b, a
    rst RST_00
    ld b, a
    dec c
    ld c, b
    ld a, [hl-]
    ld c, b
    ld h, d
    ld c, b
    adc c
    ld c, b
    cp d
    ld c, c
    cp $49
    ld e, $4a
    inc sp
    ld c, d
    ld h, h
    ld c, d
    rst RST_30
    ld c, d
    dec sp
    ld c, e
    ld l, [hl]
    ld c, e
    ld bc, $3c4c
    ld c, h
    ld h, e
    ld c, h
    sbc h
    ld c, h
    and $4c
    inc d
    ld c, l
    scf
    ld c, l
    ld d, b
    ld c, l
    sub c
    ld c, l
    or c
    ld c, l
    ei
    ld c, l
    ld sp, $4b4e
    ld c, [hl]
    ld e, a
    ld c, [hl]
    adc b
    ld c, [hl]
    jr nz, jr_00e_40ab

    ld [hl], b
    ld c, a
    and d
    ld c, a
    sbc e
    ld d, b
    ldh [c], a
    ld d, b
    dec b
    ld d, c
    ld d, [hl]
    ld d, c
    bit 2, c
    add h
    ld d, d
    rst RST_18
    ld d, d
    xor e
    ld d, e
    ld [bc], a
    ld d, h
    push af
    ld d, h
    ld c, [hl]
    ld d, l
    sub d
    ld d, l
    or $55
    ld b, c
    ld d, [hl]
    add a
    ld d, [hl]
    or c
    ld d, [hl]
    db $e3
    ld d, a
    inc sp
    ld e, b
    cp b
    ld e, b
    rlca
    ld e, c
    dec a
    ld e, c
    ld a, [hl]
    ld e, c
    ld sp, hl
    ld e, c
    dec e
    ld e, d
    ld [hl], h
    ld e, d
    db $dd
    ld e, d
    ld a, [bc]
    ld e, e
    sbc a
    ld e, e
    rst RST_10
    ld e, e
    db $fc
    ld e, e
    ld a, [de]
    ld e, h
    ld h, l
    ld e, h
    and a
    ld e, h
    jp nc, Jump_000_0b5c

    ld e, l
    ld l, $5d
    sbc e
    ld e, l
    push de

jr_00e_40ab:
    ld e, l
    ldh a, [c]
    ld e, l
    cpl
    ld e, [hl]
    ld l, c
    ld e, [hl]
    call nc, $ed5e
    ld e, [hl]
    ld l, $5f
    ld c, b
    ld e, a
    ld [$265f], a
    ld h, b
    ld l, [hl]
    ld h, b
    db $fd
    ld h, b
    ld e, $61
    ld [hl-], a
    ld h, c
    ld l, e
    ld h, c
    or d
    ld h, c
    rst RST_28
    ld h, c
    rst RST_38
    ld h, d
    ld e, b
    ld h, e
    or l
    ld h, e
    db $e4
    ld h, e
    inc hl
    ld h, h
    ld a, [hl]
    ld h, h
    jp c, Jump_00e_4d64

    ld h, l
    ld h, e
    ld h, l
    adc [hl]
    ld h, l
    xor [hl]
    ld h, l
    and $65
    ld b, l
    ld h, a
    ld [hl], b
    ld h, a
    sbc e
    ld h, a
    call nz, $0167
    ld l, b
    ld h, [hl]
    ld l, b
    sub a
    ld l, b
    jp Jump_000_0068


    ld l, c
    add b
    ld l, c
    call nz, Call_000_3369
    ld l, d
    ld a, l
    ld l, d
    and $6a
    jr jr_00e_4110

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld a, [de]
    dec c
    ld c, $13
    rlca
    ld [$060d], sp
    dec e

jr_00e_4110:
    inc d
    dec c
    inc d
    ld [de], a
    inc d
    nop
    dec bc
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    dec bc
    inc d
    ld [de], a
    rlca
    ld a, [de]
    ld [$130d], sp
    inc b
    ld de, $0e08
    ld de, $0e1a
    dec b
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld c, $11
    inc b
    ld [$0d06], sp
    ld a, [de]
    ld [bc], a
    nop
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $00
    ld [de], a
    dec e
    rrca
    inc b
    inc bc
    nop
    dec bc
    jr nz, jr_00e_4175

    jr jr_00e_4169

    inc d
    ld a, [de]
    ld de, $1204
    ld [$1312], sp
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc d

jr_00e_4169:
    ld de, $0406
    ld a, [de]
    inc de
    ld c, $1a
    rrca
    inc d
    inc de
    ld a, [de]
    inc de

jr_00e_4175:
    rlca
    inc b
    dec e
    rrca
    inc b
    inc bc
    nop
    dec bc
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    inc c
    inc b
    inc de
    nop
    dec bc
    jr nz, jr_00e_41ab

    nop
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    inc b
    dec c
    inc de
    inc b
    ld de, $131a
    rlca
    inc b
    dec e
    ld de, $0e0e
    inc c
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $00
    dec bc
    dec bc

jr_00e_41ab:
    dec e
    ld [de], a
    dec bc
    ld [$0403], sp
    ld [de], a
    ld a, [de]
    ld [de], a
    rlca
    inc d
    inc de
    ld a, [de]
    ld bc, $0704
    ld [$030d], sp
    jr jr_00e_41ce

    inc d
    jr nz, jr_00e_41df

    ld c, $01
    dec d
    ld [$140e], sp
    ld [de], a
    dec bc
    jr jr_00e_41e7

    inc de

jr_00e_41ce:
    rlca
    ld [$1d12], sp
    inc b
    dec bc
    inc b
    dec d
    nop
    inc de
    ld c, $11
    ld a, [de]
    ld [$1a12], sp
    inc d

jr_00e_41df:
    ld [de], a
    inc b
    inc bc
    dec e
    nop
    ld [de], a
    ld a, [de]
    nop

jr_00e_41e7:
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    ld a, [de]
    inc c
    inc b
    nop
    dec c
    ld [de], a
    dec e
    inc de
    ld c, $1a
    ld b, $04
    inc de
    ld a, [de]
    ld [$1a0d], sp
    nop
    dec c
    inc bc
    ld a, [de]
    ld c, $14
    inc de
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, jr_00e_4236

    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    dec e
    ld bc, $0b14
    dec bc
    inc b
    inc de
    rrca
    ld de, $0e0e
    dec b
    ld a, [de]
    ld b, $0b
    nop
    ld [de], a
    ld [de], a
    dec e
    ld bc, $1304
    ld d, $04

jr_00e_4236:
    inc b
    dec c
    ld a, [de]
    jr jr_00e_4249

    inc d
    ld de, $0412
    dec bc
    dec b
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b

jr_00e_4249:
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $031d
    ld de, $1508
    inc b
    ld de, $1c20
    ld [de], a
    ld [$020d], sp
    inc b
    ld a, [de]
    jr jr_00e_426c

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    dec e
    rrca
    nop
    jr jr_00e_4284

    inc de
    rlca

jr_00e_426c:
    inc b
    ld a, [de]
    dec b
    nop
    ld de, $1d04
    inc bc
    ld [$0411], sp
    ld [bc], a
    inc de
    dec bc
    jr @+$27

    ld a, [de]
    jr jr_00e_428d

    inc d
    ld a, [de]
    dec c
    inc b
    inc b

jr_00e_4284:
    inc bc
    inc de
    ld c, $1a
    rrca
    inc d
    inc de
    ld a, [de]
    inc de

jr_00e_428d:
    rlca
    inc b
    ld a, [de]
    dec b
    nop
    ld de, $1d04
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    jr jr_00e_42bc

    ld [de], a
    dec bc
    ld c, $13
    dec e
    ld [$120d], sp
    inc de
    inc b
    nop
    inc bc
    jr nz, jr_00e_42cf

    inc de
    rlca
    ld [$1a12], sp
    ld [de], a
    inc de
    inc b
    inc b
    ld de, $0d08

jr_00e_42bc:
    ld b, $1d
    ld d, $07
    inc b
    inc b
    dec bc
    ld a, [de]
    rlca
    nop
    ld [de], a
    ld a, [de]
    nop
    dec e
    dec bc
    inc b
    nop
    inc de
    rlca

jr_00e_42cf:
    inc b
    ld de, $021a
    ld c, $15
    inc b
    ld de, $0e1a
    dec c
    dec e
    ld [$2013], sp
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [$0d06], sp
    ld [$0813], sp
    ld c, $0d
    jr nz, jr_00e_430e

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld d, $00
    ld [$0813], sp
    dec c
    ld b, $1d
    dec b
    ld c, $11
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld c, $0d

jr_00e_430e:
    inc b
    ld a, [de]
    inc de
    ld c, $1a
    ld de, $1504
    ld [$1a13], sp
    inc d
    rrca
    jr nz, jr_00e_433c

    jr @+$10

    inc d
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $161a
    rlca
    jr jr_00e_4349

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld [bc], a
    nop
    dec bc
    dec bc
    inc b
    inc bc
    ld a, [de]
    nop
    dec e
    ld b, $0b

jr_00e_433c:
    ld c, $15
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0c
    rrca
    nop
    ld de, $0c13
    inc b

jr_00e_4349:
    dec c
    inc de
    dec e
    ld d, $07
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $1a04
    inc d
    ld [de], a
    inc d
    nop
    dec bc
    dec bc
    jr jr_00e_435f

jr_00e_435f:
    ld de, $0d04
    ld a, [hl+]
    inc de
    ld a, [de]
    nop
    dec c
    jr jr_00e_4383

    ld b, $0b
    ld c, $15
    inc b
    ld [de], a
    jr nz, jr_00e_4390

    inc c
    inc c
    inc c
    inc c
    jr nz, jr_00e_4391

    inc de
    nop
    ld [de], a
    inc de
    inc b
    ld [de], a
    dec e
    rrca
    ld de, $1304
    inc de

jr_00e_4383:
    jr jr_00e_439f

    ld b, $0e
    ld c, $03
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]

jr_00e_4390:
    inc de

jr_00e_4391:
    rlca
    inc b
    ld a, [de]
    rlca
    ld c, $0e
    inc bc
    dec e
    ld de, $0b04
    inc b
    nop
    ld [de], a

jr_00e_439f:
    inc b
    jr nz, jr_00e_43bc

    ld [$1a13], sp
    ld c, $0f
    inc b
    dec c
    ld [de], a
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    ld c, $0e
    inc bc
    jr nz, jr_00e_43d4

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]

jr_00e_43bc:
    ld [bc], a
    nop
    ld de, $111d
    inc b
    ld b, $08
    ld [de], a
    inc de
    ld de, $1300
    ld [$0d0e], sp
    dec e
    inc c
    nop
    inc bc
    inc b
    ld a, [de]
    ld c, $14

jr_00e_43d4:
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    ld c, $0d
    inc b
    dec e
    add hl, bc
    ld c, $04
    jr jr_00e_43fc

    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [de]
    ld c, $05
    dec e
    ld sp, $3132
    ld [hl-], a
    ld a, [de]
    ld d, $04
    ld [de], a
    inc de
    ld a, [de]
    inc b
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    inc de

jr_00e_43fc:
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    ld c, $05
    dec e
    dec b
    ld c, $02
    inc d
    ld [de], a
    ld a, [de]
    ld [de], a
    dec c
    nop
    rrca
    ld [de], a
    rlca
    ld c, $13
    ld a, [de]
    ld c, $05
    dec e
    nop
    ld a, [de]
    dec b
    ld c, $14
    ld de, $071a
    inc d
    dec c
    inc bc
    ld de, $0304
    dec e
    rrca
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    ld d, $0e
    inc c
    nop
    dec c
    jr nz, @+$1e

    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    ld [bc], a
    ld de, $1300
    ld [bc], a
    rlca
    ld a, [de]
    jr @+$10

    inc d
    ld de, $071d
    inc b
    nop
    inc bc
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $0d08
    ld b, $1a
    ld d, $07
    jr @+$14

    rlca
    inc b
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e
    dec b
    nop
    inc c
    ld [$080b], sp
    nop
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc c
    nop
    rrca
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld [$1813], sp
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld [de], a
    jr nz, jr_00e_44ae

    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $00
    jr @+$1c

    inc de
    ld c, $1d
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
    ld a, [de]
    ld [$1d12], sp
    inc c
    nop

jr_00e_44ae:
    ld de, $040a
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    ld [$0a0d], sp
    jr nz, jr_00e_44d7

    nop
    ld a, [de]
    ld de, $0304
    ld a, [de]
    ld [bc], a
    ld [$0211], sp
    dec bc
    inc b
    dec e
    rlca
    ld [$0706], sp
    dec bc
    ld [$0706], sp
    inc de
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e

jr_00e_44d7:
    nop
    inc bc
    inc bc
    ld de, $1204
    ld [de], a
    inc h
    dec e
    ld sp, $3630
    jr nc, jr_00e_44ff

    rrca
    inc b
    ld c, $11
    ld [$1a00], sp
    ld [de], a
    inc de
    jr nz, jr_00e_450f

    jr jr_00e_4500

    inc d
    ld a, [de]
    dec c
    ld c, $13
    ld [$0402], sp
    ld a, [de]
    inc de
    rlca
    inc b
    dec e

jr_00e_44ff:
    ld [de], a

jr_00e_4500:
    dec bc
    inc d
    inc c
    rrca
    inc b
    inc bc
    ld a, [de]
    ld c, $15
    inc b
    ld de, $0c1a
    nop
    dec c

jr_00e_450f:
    dec e
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1a12
    inc de
    ld c, $1a
    rlca
    nop
    dec d
    inc b
    dec e
    ld bc, $0411
    nop
    inc de
    rlca
    inc b
    inc bc
    ld a, [de]
    rlca
    ld [$1a12], sp
    dec bc
    nop
    ld [de], a
    inc de
    dec e
    ld bc, $0411
    nop
    inc de
    rlca
    jr nz, jr_00e_4556

    jr jr_00e_454a

    inc d
    ld de, $0e1a
    ld bc, $0412
    ld de, $0015
    inc de
    ld [$0d0e], sp

jr_00e_454a:
    dec e
    ld [$1a12], sp
    rrca
    inc d
    dec c
    ld [bc], a
    inc de
    inc d
    nop
    inc de

jr_00e_4556:
    inc b
    inc bc
    ld a, [de]
    ld bc, $1d18
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
    rlca
    nop
    inc de
    dec e
    inc de
    rlca
    inc b
    ld de, $1a04
    nop
    ld de, $1a04
    inc de
    rlca
    ld de, $0404
    dec e
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld a, [de]
    rlca
    ld c, $0b
    inc b
    ld [de], a
    ld a, [de]
    ld [$1d0d], sp
    rlca
    ld [$200c], sp
    inc e
    jr jr_00e_459f

    inc d
    ld a, [de]
    ld [bc], a
    inc d
    ld de, $0412
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    nop

jr_00e_459f:
    ld [bc], a
    inc de
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec b
    nop
    inc c
    ld [$080b], sp
    nop
    ld de, $011a
    inc d
    inc de
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    ld [$1a0d], sp
    ld [$1a0d], sp
    jr jr_00e_45e1

    inc d
    ld de, $071d
    inc b
    nop
    inc bc
    ld a, [de]
    rrca
    ld de, $1504
    inc b
    dec c

jr_00e_45e1:
    inc de
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    dec e
    dec b
    ld de, $0c0e
    ld a, [de]
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    ld [$060d], sp
    dec e
    nop
    dec c
    jr jr_00e_4610

    rlca
    ld [$060d], sp
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    dec e
    rlca
    ld [$200c], sp
    rra
    jr jr_00e_461d

    inc d

jr_00e_4610:
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld de, $0b04
    inc b
    nop
    ld [de], a
    inc b
    inc bc
    dec e

jr_00e_461d:
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    ld c, $0e
    inc bc
    jr nz, jr_00e_4643

    ld [$1a13], sp
    rrca
    ld c, $0f
    ld [de], a
    ld a, [de]
    ld d, $08
    inc bc
    inc b
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    jr nz, @+$22

jr_00e_4643:
    jr nz, jr_00e_4661

    nop
    dec c
    ld a, [de]
    inc b
    nop
    ld de, $0713
    ld a, [de]
    ld [de], a
    rlca
    nop
    ld a, [bc]
    ld [$060d], sp
    dec e
    ld h, $0a
    nop
    ld hl, $0e01
    ld c, $0c
    daa
    ld h, $1a

jr_00e_4661:
    dec b
    ld [$0b0b], sp
    ld [de], a
    dec e
    jr jr_00e_4677

    inc d
    ld de, $161a
    ld c, $11
    dec bc
    inc bc
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    inc de
    rlca

jr_00e_4677:
    inc b
    dec e
    ld [bc], a
    nop
    ld de, $041a
    rla
    rrca
    dec bc
    ld c, $03
    inc b
    ld [de], a
    ld a, [de]
    ld [$130d], sp
    ld c, $1d
    inc de
    ld [$180d], sp
    ld a, [de]
    ld bc, $1308
    ld [de], a
    jr nz, jr_00e_46b5

    ld [$1a05], sp
    jr jr_00e_46a9

    inc d
    ld a, [de]
    ld d, $04
    ld de, $1a04
    ld [de], a
    inc de
    ld [$0b0b], sp
    dec e
    nop

jr_00e_46a9:
    dec bc
    ld [$0415], sp
    dec h
    ld a, [de]
    jr @+$10

    inc d
    ld a, [hl+]
    inc bc
    ld a, [de]

jr_00e_46b5:
    ld [bc], a
    inc d
    ld de, $0412
    jr jr_00e_46ca

    inc d
    ld de, $0b1a
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld c, $05
    dec e
    ld [bc], a
    nop
    inc d

jr_00e_46ca:
    inc de
    ld [$0d0e], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    nop
    dec bc
    dec bc
    ld c, $16
    inc b
    inc bc
    ld a, [de]
    jr jr_00e_46ec

    inc d
    ld a, [de]
    inc de
    ld c, $1d
    dec b
    nop
    dec bc
    dec bc
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]

jr_00e_46ec:
    inc de
    rlca
    ld [$1d12], sp
    inc bc
    inc b
    nop
    inc bc
    dec bc
    jr jr_00e_4712

    inc de
    ld de, $0208
    ld a, [bc]
    daa
    rra
    ld [$1a05], sp
    jr jr_00e_4712

    inc d
    ld a, [de]
    ld d, $04
    ld de, $1a04
    ld [de], a
    inc de
    ld [$0b0b], sp
    dec e
    nop

jr_00e_4712:
    dec bc
    ld [$0415], sp
    dec h
    ld a, [de]
    jr @+$10

    inc d
    ld a, [hl+]
    inc bc
    ld a, [de]
    ld [bc], a
    inc d
    ld de, $0412
    jr jr_00e_4733

    inc d
    ld de, $0b1a
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld c, $05
    dec e
    ld [bc], a
    nop
    inc d

jr_00e_4733:
    inc de
    ld [$0d0e], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    nop
    dec bc
    dec bc
    ld c, $16
    inc b
    inc bc
    ld a, [de]
    jr jr_00e_4755

    inc d
    ld a, [de]
    inc de
    ld c, $1d
    dec b
    nop
    dec bc
    dec bc
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]

jr_00e_4755:
    inc de
    rlca
    ld [$1d12], sp
    inc bc
    inc b
    nop
    inc bc
    dec bc
    jr jr_00e_477b

    inc de
    ld de, $0208
    ld a, [bc]
    daa
    rra
    jr jr_00e_4778

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$120d], sp
    ld [$0403], sp
    dec e
    rrca
    inc b

jr_00e_4778:
    inc de
    inc b
    ld a, [hl+]

jr_00e_477b:
    ld [de], a
    ld a, [de]
    nop
    dec bc
    dec bc
    ld a, [de]
    dec c
    ld [$0413], sp
    dec e
    ld b, $14
    dec c
    ld a, [de]
    rrca
    nop
    dec bc
    nop
    ld [bc], a
    inc b
    jr nz, jr_00e_47ae

    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    jr jr_00e_47b4

    ld bc, $0704
    ld [$030d], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $001a
    ld [de], a

jr_00e_47ae:
    ld a, [bc]
    ld [de], a
    dec h
    ld a, [de]
    ld h, $18

jr_00e_47b4:
    nop
    dec e
    ld d, $00
    dec c
    inc de
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$2a0d], sp
    jr z, @+$28

    rra
    inc de
    rlca
    ld [$1a12], sp
    ld b, $14
    jr @+$1c

    ld de, $0004
    dec bc
    dec bc
    jr @+$1f

    rlca
    nop
    ld [de], a
    ld a, [de]
    db $10
    inc d
    ld [$0413], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    inc de
    ld hl, $000c
    jr jr_00e_47ee

    inc b

jr_00e_47ee:
    ld a, [de]
    inc b
    rla
    inc b
    ld de, $0802
    ld [de], a
    ld [$060d], sp
    dec e
    ld d, $0e
    inc d
    dec bc
    inc bc
    ld a, [de]
    inc bc
    ld c, $1a
    rlca
    ld [$1a0c], sp
    ld b, $0e
    ld c, $03
    jr nz, jr_00e_482c

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    nop
    ld de, $1d03
    inc c
    ld [$080b], sp
    inc de
    nop
    ld de, $2118
    ld [$1212], sp
    inc d
    inc b
    dec e

jr_00e_482c:
    ld b, $04
    ld de, $000c
    dec c
    ld a, [de]
    dec bc
    inc d
    ld b, $04
    ld de, $1f20
    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec d
    inc b
    ld de, $1a18
    inc c
    inc d
    ld [bc], a
    rlca
    dec bc
    ld [$040a], sp
    ld a, [de]
    nop
    ld a, [de]
    add hl, sp
    inc c
    inc c
    dec e
    ld [bc], a
    nop
    ld de, $1113
    ld [$0603], sp
    inc b
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld [$0d06], sp
    ld a, [de]
    ld [de], a
    nop
    jr @+$14

    dec h
    dec e
    ld h, $13
    ld c, $0d
    ld [$0706], sp
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld [de], a
    rrca
    inc b
    ld [bc], a
    ld [$0b00], sp
    ld b, c
    ld [hl-], a
    jr nc, jr_00e_48a7

    ld h, $1f
    nop
    ld a, [de]
    ld d, $00
    dec d
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [$130d], sp
    inc b
    dec c
    ld [de], a
    inc b
    dec e
    rrca
    nop
    ld [$1a0d], sp
    ld [bc], a
    nop
    inc d
    ld [de], a
    inc b
    ld [de], a
    ld a, [de]

jr_00e_48a7:
    jr jr_00e_48b7

    inc d
    ld a, [de]
    inc de
    ld c, $11
    inc b
    inc b
    dec bc
    jr nz, jr_00e_48cd

    jr jr_00e_48c3

    inc d
    ld a, [de]

jr_00e_48b7:
    ld [bc], a
    nop
    inc de
    ld [bc], a
    rlca
    dec e
    jr jr_00e_48cd

    inc d
    ld de, $0412

jr_00e_48c3:
    dec bc
    dec b
    ld a, [de]
    ld bc, $0504
    ld c, $11
    inc b
    dec e

jr_00e_48cd:
    jr @+$10

    inc d
    ld a, [de]
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld c, $14
    inc de
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
    inc b
    rrca
    ld [$0e12], sp
    inc bc
    inc b
    dec e
    rrca
    nop
    ld [de], a
    ld [de], a
    inc b
    ld [de], a
    dec h
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld b, $11
    ld c, $16
    dec e
    ld [bc], a
    ld c, $0d
    ld [bc], a
    inc b
    ld de, $040d
    inc bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    inc de
    ld [$040c], sp
    ld a, [de]
    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1d04
    ld de, $0d14
    dec c
    ld [$060d], sp
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    dec b
    ld c, $11
    dec e
    jr jr_00e_493b

    inc d
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0d
    ld [de], a
    inc de
    nop
    dec c

jr_00e_493b:
    inc de
    ld a, [de]
    rrca
    nop
    ld [$1d0d], sp
    ld [$1a0d], sp
    jr jr_00e_4955

    inc d
    ld de, $071a
    inc b
    nop
    inc bc
    ld a, [de]
    ld [$1d12], sp
    ld c, $0d
    dec bc

jr_00e_4955:
    jr @+$1c

    ld b, $04
    inc de
    inc de
    ld [$060d], sp
    dec e
    ld d, $0e
    ld de, $0412
    daa
    inc e
    jr jr_00e_4976

    inc d
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    jr @+$10

jr_00e_4976:
    inc d
    dec e
    ld bc, $1304
    inc de
    inc b
    ld de, $031a
    ld c, $1d
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]
    ld c, $11
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1a04
    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    dec c
    inc bc
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $000e
    inc bc
    ld a, [de]
    dec b
    ld c, $11
    dec e
    jr jr_00e_49c5

    inc d
    daa
    rra
    jr jr_00e_49ca

    inc d
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    inc de
    rlca

jr_00e_49c5:
    inc b
    ld a, [de]
    ld b, $14
    dec c

jr_00e_49ca:
    ld a, [hl+]
    ld [de], a
    ld [bc], a
    rlca
    nop
    inc c
    ld bc, $1104
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    dec b
    ld [$030d], sp
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
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
    ld a, [de]
    ld [$1a0d], sp
    ld [$2013], sp
    rra
    jr jr_00e_4a0e

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

jr_00e_4a0e:
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0b14
    dec bc
    inc b
    inc de
    jr nz, jr_00e_4a3d

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    rlca
    nop
    inc c
    ld bc, $1104
    ld a, [de]
    ld [$1d12], sp
    dec b
    inc d
    dec bc
    dec bc
    jr nz, @+$21

    inc de
    rlca
    ld [$1a12], sp
    ld bc, $0b14
    dec bc
    inc b

jr_00e_4a3d:
    inc de
    ld a, [de]
    ld [$1a12], sp
    dec b
    ld c, $11
    nop
    ld a, [de]
    inc bc
    ld [$0505], sp
    inc b
    ld de, $0d04
    inc de
    ld a, [de]
    ld b, $14
    dec c
    jr nz, jr_00e_4a72

    ld [$1a13], sp
    ld d, $0e
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    dec b
    ld [$2013], sp
    rra
    ld a, [bc]
    nop
    ld hl, $0e01
    ld c, $0c
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a

jr_00e_4a72:
    dec bc
    inc b
    ld de, $1a0a
    ld de, $0004
    ld [bc], a
    inc de
    ld [de], a
    dec e
    dec b
    nop
    ld [de], a
    inc de
    inc b
    ld de, $131a
    rlca
    nop
    dec c
    ld a, [de]
    jr jr_00e_4a9a

    inc d
    dec e
    inc de
    rlca
    ld c, $14
    ld b, $07
    inc de
    ld a, [de]
    rrca
    ld c, $12
    ld [de], a

jr_00e_4a9a:
    ld [$0b01], sp
    inc b
    dec e
    dec b
    ld c, $11
    ld a, [de]
    ld c, $0d
    inc b
    ld a, [de]
    ld [de], a
    ld c, $1a
    ld bc, $0608
    jr nz, jr_00e_4acb

    nop
    ld a, [de]
    ld [de], a
    rlca
    ld c, $13
    ld b, $14
    dec c
    ld a, [de]
    ld bc, $000b
    ld [de], a
    inc de
    dec e
    dec b
    ld de, $0c0e
    ld a, [de]
    inc d
    dec c
    inc bc
    inc b
    ld de, $131d

jr_00e_4acb:
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $071a
    nop
    ld [de], a
    dec e
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld [de], a
    rlca
    ld de, $0304
    ld a, [de]
    jr jr_00e_4af5

    inc d
    dec e
    ld [$130d], sp
    ld c, $1a
    ld de, $0108
    ld bc, $0d0e
    ld [de], a

jr_00e_4af5:
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    ld de, $1a0a
    ld [de], a
    nop
    jr jr_00e_4b17

    ld a, [de]
    ld [$1d0d], sp
    nop
    ld a, [de]
    ld b, $11
    inc d
    dec b
    dec b
    ld a, [de]
    dec d
    ld c, $08
    ld [bc], a
    inc b
    dec h

jr_00e_4b17:
    dec e
    ld h, $08
    inc de
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    ld [bc], a
    ld c, $12
    inc de
    ld a, [de]
    jr jr_00e_4b26

jr_00e_4b26:
    dec e
    inc de
    ld d, $04
    dec c
    inc de
    jr @+$1c

    ld bc, $0214
    ld a, [bc]
    ld [de], a
    dec h
    dec e
    rrca
    nop
    dec bc
    daa
    ld h, $1f
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    ld de, $1a0a
    ld [de], a
    nop
    jr jr_00e_4b5b

    dec h
    dec e
    ld h, $08
    inc de
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    ld [bc], a
    ld c, $12
    inc de
    ld a, [de]
    jr jr_00e_4b59

jr_00e_4b59:
    dec e
    inc de

jr_00e_4b5b:
    ld d, $04
    dec c
    inc de
    jr @+$23

    dec b
    ld [$0415], sp
    dec e
    ld [bc], a
    inc b
    dec c
    inc de
    ld [de], a
    jr nz, jr_00e_4b93

    rra
    ld a, [bc]
    nop
    ld hl, $0e01
    ld c, $0c
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    ld de, $1a0a
    ld de, $0004
    ld [bc], a
    inc de
    ld [de], a
    dec e
    dec b
    nop
    ld [de], a
    inc de
    inc b
    ld de, $131a
    rlca
    nop
    dec c

jr_00e_4b93:
    ld a, [de]
    jr jr_00e_4ba4

    inc d
    dec e
    inc de
    rlca
    ld c, $14
    ld b, $07
    inc de
    ld a, [de]
    rrca
    ld c, $12
    ld [de], a

jr_00e_4ba4:
    ld [$0b01], sp
    inc b
    dec e
    dec b
    ld c, $11
    ld a, [de]
    ld c, $0d
    inc b
    ld a, [de]
    ld [de], a
    ld c, $1a
    ld bc, $0608
    jr nz, jr_00e_4bd5

    nop
    ld a, [de]
    ld [de], a
    rlca
    ld c, $13
    ld b, $14
    dec c
    ld a, [de]
    ld bc, $000b
    ld [de], a
    inc de
    dec e
    dec b
    ld de, $0c0e
    ld a, [de]
    inc d
    dec c
    inc bc
    inc b
    ld de, $131d

jr_00e_4bd5:
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $071a
    nop
    ld [de], a
    dec e
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld [de], a
    rlca
    ld de, $0304
    ld a, [de]
    jr jr_00e_4bff

    inc d
    dec e
    ld [$130d], sp
    ld c, $1a
    ld de, $0108
    ld bc, $0d0e
    ld [de], a

jr_00e_4bff:
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    jr @+$1c

    ld bc, $0704
    ld [$030d], sp
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec c
    inc de
    inc b
    ld de, $001a
    ld [de], a
    ld a, [bc]
    ld [de], a
    dec h
    dec e
    ld h, $02
    nop
    dec c
    ld a, [de]
    ld [$071a], sp
    inc b
    dec bc
    rrca
    ld a, [de]
    jr jr_00e_4c3e

    inc d
    dec e
    ld c, $11
    ld a, [de]
    ld d, $07
    nop
    inc de
    jr z, jr_00e_4c61

    rra
    inc de
    rlca

jr_00e_4c3e:
    inc b
    ld de, $1a04
    ld [$1a12], sp
    nop
    dec e
    ld bc, $0e0e
    ld a, [bc]
    inc c
    nop
    ld de, $1a0a
    ld bc, $1304
    ld d, $04
    inc b
    dec c
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    ld b, $04
    ld [de], a

jr_00e_4c61:
    jr nz, @+$21

    jr jr_00e_4c73

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc b

jr_00e_4c73:
    ld d, $04
    ld de, $1c20
    ld [de], a
    ld c, $1a
    inc c
    inc d
    ld [bc], a
    rlca
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    jr jr_00e_4c94

    inc d
    ld de, $0d1d
    inc b
    ld d, $1a
    rrca
    nop
    ld [$1a11], sp
    ld c, $05

jr_00e_4c94:
    ld a, [de]
    ld [de], a
    rlca
    ld c, $04
    ld [de], a
    jr nz, jr_00e_4cbb

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    nop
    inc bc
    inc bc
    inc b
    ld de, $0b1d
    inc b
    nop
    inc bc
    ld [$060d], sp
    ld a, [de]
    inc d
    rrca
    jr nz, @+$1e

    ld [$2a13], sp
    ld [de], a
    ld a, [de]

jr_00e_4cbb:
    rrca
    ld de, $1304
    inc de
    jr jr_00e_4cdc

    ld de, $1214
    inc de
    jr @+$22

    jr jr_00e_4cd8

    inc d
    ld a, [de]
    rlca
    ld c, $0f
    inc b
    ld a, [de]
    ld [$1a13], sp
    rlca
    ld c, $0b
    inc bc

jr_00e_4cd8:
    ld [de], a
    dec e
    jr jr_00e_4cea

jr_00e_4cdc:
    inc d
    ld a, [de]
    ld d, $04
    ld [$0706], sp
    inc de
    daa
    rra
    ld [$2a13], sp
    ld [de], a

jr_00e_4cea:
    ld a, [de]
    nop
    ld a, [de]
    inc de
    inc d
    dec c
    dec c
    inc b
    dec bc
    dec e
    dec bc
    inc b
    nop
    inc bc
    ld [$060d], sp
    ld a, [de]
    dec b
    inc d
    ld de, $0713
    inc b
    ld de, $031d
    ld c, $16
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    ld d, $04
    ld de, $1f20
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    dec bc
    ld c, $16
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    inc b
    ld d, $00
    ld b, $04
    ld [de], a
    inc c
    inc b
    dec bc
    dec bc
    ld [de], a
    ld a, [de]
    inc de
    inc b
    ld de, $0811
    ld bc, $040b
    jr nz, @+$21

    jr jr_00e_4d47

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$120d], sp
    ld [$0403], sp
    dec e
    inc de
    rlca

jr_00e_4d47:
    inc b
    ld a, [de]
    ld [de], a
    inc b
    ld d, $04
    ld de, $1f20
    jr jr_00e_4d60

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$120d], sp
    ld [$0403], sp
    dec e
    inc de
    rlca

jr_00e_4d60:
    inc b
    ld a, [de]
    ld [de], a
    inc b

Jump_00e_4d64:
    ld d, $04
    ld de, $1c20
    jr jr_00e_4d79

    inc d
    ld a, [hl+]
    inc bc
    ld a, [de]
    ld bc, $1304
    inc de
    inc b
    ld de, $011a
    inc b
    dec e

jr_00e_4d79:
    ld [bc], a
    nop
    ld de, $0504
    inc d
    dec bc
    ld a, [de]
    ld d, $07
    inc b
    ld de, $1a04
    jr @+$10

    inc d
    dec e
    ld [de], a
    inc de
    inc b
    rrca
    jr nz, @+$21

    jr jr_00e_4da1

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1d0d], sp
    nop
    ld a, [de]
    rrca
    ld [$0213], sp

jr_00e_4da1:
    rlca
    ld hl, $0b01
    nop
    ld [bc], a
    ld a, [bc]
    dec e
    inc de
    inc d
    dec c
    dec c
    inc b
    dec bc
    jr nz, jr_00e_4dd0

    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    inc d
    dec c
    dec c
    inc b
    dec bc
    ld a, [de]
    ld [$1a12], sp
    ld [de], a
    ld c, $1d
    inc bc
    nop
    ld de, $1a0a
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    jr jr_00e_4ddc

    inc d
    dec e

jr_00e_4dd0:
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
    jr @+$10

jr_00e_4ddc:
    inc d
    ld de, $071d
    nop
    dec c
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    ld c, $05
    dec e
    jr jr_00e_4e00

    inc d
    ld de, $051a
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

jr_00e_4e00:
    inc b
    ld d, $04
    ld de, $131a
    rlca
    nop
    inc de
    dec e
    jr jr_00e_4e1a

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    ld [de], a
    inc c
    inc b
    dec bc
    dec bc
    ld [de], a

jr_00e_4e1a:
    dec e
    ld de, $0004
    dec bc
    dec bc
    jr @+$27

    ld a, [de]
    ld de, $0004
    dec bc
    dec bc
    jr @+$1f

    dec c
    nop
    ld [de], a
    inc de
    jr jr_00e_4e57

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    nop
    inc bc
    inc bc
    inc b
    ld de, $061d
    ld c, $08
    dec c
    ld b, $1a
    inc bc
    ld c, $16
    dec c
    jr nz, jr_00e_4e6a

    jr jr_00e_4e5b

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    dec e

jr_00e_4e57:
    inc de
    inc d
    dec c
    dec c

jr_00e_4e5b:
    inc b
    dec bc
    jr nz, jr_00e_4e7e

    jr jr_00e_4e6f

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    inc de

jr_00e_4e6a:
    rlca
    inc b
    dec e
    inc bc
    inc b

jr_00e_4e6f:
    inc b
    rrca
    inc b
    ld [de], a
    inc de
    ld a, [de]
    rrca
    nop
    ld de, $1d13
    ld c, $05
    ld a, [de]
    inc de

jr_00e_4e7e:
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    ld d, $04
    ld de, $1f20
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    ld d, $00
    ld b, $04
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e
    ld de, $0004
    dec bc
    dec bc
    jr jr_00e_4eba

    inc bc
    inc b
    inc b
    rrca
    ld a, [de]
    ld de, $0608
    rlca
    inc de
    dec e
    rlca
    inc b
    ld de, $2004
    inc e
    jr jr_00e_4ec1

    inc d
    ld a, [de]
    inc de
    ld de, $1a18
    inc de

jr_00e_4eba:
    ld c, $1a
    ld bc, $1d04
    ld [bc], a
    nop

jr_00e_4ec1:
    ld de, $0504
    inc d
    dec bc
    dec h
    ld a, [de]
    ld bc, $0204
    nop
    inc d
    ld [de], a
    inc b
    dec e
    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [$1d05], sp
    jr jr_00e_4ef1

    inc d
    ld a, [de]
    ld d, $04
    ld de, $1a04
    inc de
    ld c, $1a
    inc bc
    ld de, $0f0e

jr_00e_4ef1:
    dec e
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]
    rlca
    inc b
    ld de, $2504
    dec e
    jr @+$10

    inc d
    ld a, [de]
    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    dec c
    inc b
    dec d
    inc b
    ld de, $121d
    inc b
    inc b
    ld a, [de]
    ld [$1a13], sp
    nop
    ld b, $00
    ld [$270d], sp
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
    dec e
    inc bc
    ld de, $0800
    dec c
    nop
    ld b, $04
    ld a, [de]
    inc de
    inc d
    dec c
    dec c
    inc b
    dec bc
    jr nz, @+$1e

    jr jr_00e_4f4e

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

jr_00e_4f4e:
    jr jr_00e_4f5e

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

jr_00e_4f5e:
    ld c, $1d
    ld b, $04
    inc de
    ld a, [de]
    inc de
    rlca
    ld de, $140e
    ld b, $07
    ld a, [de]
    ld [$2013], sp
    rra
    inc de
    rlca
    inc b
    ld de, $1a04
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
    nop
    ld [de], a
    ld [$1104], sp
    ld a, [de]
    ld d, $00
    jr @+$1c

    inc de
    rlca
    nop
    dec c
    dec e
    inc de
    rlca
    ld [$1a12], sp
    inc de
    ld c, $1a
    ld b, $04
    inc de
    ld a, [de]
    ld c, $14
    inc de
    jr nz, jr_00e_4fc1

    ld [$1a13], sp
    ld de, $0c04
    ld [$030d], sp
    ld [de], a
    ld a, [de]
    jr jr_00e_4fbd

    inc d
    ld a, [de]
    ld c, $05
    dec e
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp

jr_00e_4fbd:
    ld a, [de]
    jr jr_00e_4fce

    inc d

jr_00e_4fc1:
    ld a, [hl+]
    dec d
    inc b
    dec e
    ld [de], a
    inc b
    inc b
    dec c
    ld a, [de]
    dec b
    ld de, $0c0e

jr_00e_4fce:
    ld a, [de]
    jr jr_00e_4fdf

    inc d
    ld de, $021d
    rlca
    ld [$030b], sp
    rlca
    ld c, $0e
    inc bc
    jr nz, jr_00e_4ffb

jr_00e_4fdf:
    ld [$1a13], sp
    ld d, $00
    ld [de], a
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
    inc de
    ld [$040c], sp
    ld a, [de]
    jr jr_00e_5004

    inc d
    ld a, [de]
    inc de
    ld c, $0e

jr_00e_4ffb:
    ld a, [bc]
    dec e
    nop
    ld a, [de]
    ld bc, $1300
    rlca
    daa

jr_00e_5004:
    inc e
    jr jr_00e_5015

    inc d
    ld a, [de]
    ld d, $00
    inc de
    ld [bc], a
    rlca
    inc b
    inc bc
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    inc de

jr_00e_5015:
    rlca
    inc b
    ld d, $00
    inc de
    inc b
    ld de, $121a
    inc d
    ld [bc], a
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]
    jr @+$10

    inc d
    ld de, $051d
    nop
    dec d
    ld c, $11
    ld [$0413], sp
    ld a, [de]
    ld de, $0114
    ld bc, $1104
    dec e
    inc bc
    inc d
    ld [bc], a
    ld a, [bc]
    jr jr_00e_5059

    ld de, $0608
    rlca
    inc de
    ld a, [de]
    inc bc
    ld c, $16
    dec c
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld de, $0800
    dec c
    daa
    inc e
    jr jr_00e_5065

    inc d
    ld a, [de]

jr_00e_5059:
    ld [de], a
    rlca
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    jr jr_00e_506f

    inc d
    ld de, $071d

jr_00e_5065:
    inc b
    nop
    inc bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b

jr_00e_506f:
    dec e
    inc c
    inc b
    inc c
    ld c, $11
    jr @+$27

    ld a, [de]
    dec c
    ld c, $13
    ld a, [de]
    ld [de], a
    inc d
    ld de, $1d04
    ld d, $07
    inc b
    inc de
    rlca
    inc b
    ld de, $081a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld de, $0004
    dec bc
    dec e
    ld c, $11
    ld a, [de]
    dec c
    ld c, $13
    jr nz, jr_00e_50ba

    jr jr_00e_50ab

    inc d
    ld a, [de]
    ld b, $00
    add hl, de
    inc b
    ld a, [de]
    ld [$130d], sp
    inc b
    dec c
    inc de
    dec bc

jr_00e_50ab:
    jr jr_00e_50ca

    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rlca
    nop
    dec c
    inc bc
    ld d, $11

jr_00e_50ba:
    ld [$0813], sp
    dec c
    ld b, $20
    jr nz, jr_00e_50e2

    ld a, [de]
    ld [$1d13], sp
    inc bc
    ld c, $04
    ld [de], a

jr_00e_50ca:
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec e
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [hl+]
    ld [de], a
    daa
    rra

jr_00e_50e2:
    jr jr_00e_50f2

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    ld a, [de]
    ld [bc], a
    ld c, $0b
    inc bc

jr_00e_50f2:
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld [bc], a
    dec bc
    nop
    inc c
    inc c
    jr jr_00e_5118

    ld [de], a
    inc b
    ld d, $04
    ld de, $1f20
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
    dec e
    ld [bc], a
    ld c, $15
    inc b

jr_00e_5118:
    ld de, $1c20
    jr jr_00e_512b

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld c, $05
    inc de
    inc b
    dec c
    dec e
    ld d, $0e
    dec c

jr_00e_512b:
    inc bc
    inc b
    ld de, $0304
    ld a, [de]
    ld d, $07
    jr jr_00e_5152

    inc de
    rlca
    inc b
    jr jr_00e_5164

    ld de, $1a04
    ld de, $140e
    dec c
    inc bc
    dec e
    ld [$120d], sp
    inc de
    inc b
    nop
    inc bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [de], a
    db $10
    inc d
    nop

jr_00e_5152:
    ld de, $2804
    rra
    jr jr_00e_5166

    inc d
    ld a, [de]
    dec c
    inc b
    dec d
    inc b
    ld de, $131a
    rlca
    ld c, $14

jr_00e_5164:
    ld b, $07

jr_00e_5166:
    inc de
    dec e
    jr jr_00e_5178

    inc d
    ld a, [hl+]
    inc bc
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    nop

jr_00e_5178:
    jr jr_00e_51a1

    inc e
    nop
    dec c
    ld a, [de]
    nop
    dec bc
    dec bc
    ld [$0006], sp
    inc de
    ld c, $11
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    ld d, $04
    ld de, $1a12
    ld c, $05
    dec e
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    daa

jr_00e_51a1:
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld d, $07
    nop
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld d, $0e
    ld de, $0412
    dec h
    ld a, [de]
    ld [$1213], sp
    dec e
    ld bc, $0e0b
    ld [bc], a
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    jr jr_00e_51d1

    inc d
    ld de, $161a
    nop
    jr @+$29

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    nop
    dec bc

jr_00e_51d1:
    dec bc
    ld [$0006], sp
    inc de
    ld c, $11
    dec e
    rlca
    inc b
    nop
    inc bc
    ld [de], a
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0800
    ld b, $07
    inc de
    ld a, [de]
    dec b
    ld c, $11
    jr @+$10

    inc d
    daa
    inc e
    ld [$1213], sp
    ld a, [de]
    rlca
    nop
    ld de, $1a03
    inc de
    ld c, $1a
    inc de
    inc b
    dec bc
    dec bc
    dec h
    dec e
    ld bc, $1314
    ld a, [de]
    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e
    rlca
    inc d
    dec c
    ld b, $11
    jr @+$29

    ld a, [de]
    ld de, $0004
    dec bc
    dec bc
    jr jr_00e_523b

    rlca
    inc d
    dec c
    ld b, $11
    jr jr_00e_524c

    inc e
    ld a, [de]
    dec b
    ld [$0706], sp
    inc de
    ld [$060d], sp
    ld a, [de]
    ld c, $05
    dec b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    nop
    dec c

jr_00e_523b:
    ld [$2502], sp
    ld a, [de]
    jr jr_00e_524f

    inc d
    ld a, [de]
    inc de
    ld de, $1a18
    inc de
    ld c, $1d
    inc de
    rlca

jr_00e_524c:
    ld [$0a0d], sp

jr_00e_524f:
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    dec b
    nop
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]
    jr jr_00e_5278

    inc d
    dec e
    ld bc, $0204
    ld c, $0c
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc c

jr_00e_5278:
    nop
    ld [$1d0d], sp
    ld [bc], a
    ld c, $14
    ld de, $0412
    daa
    rra
    ld [de], a
    ld [$020d], sp
    inc b
    ld a, [de]
    ld de, $0004
    ld [de], a
    ld c, $0d
    ld [$060d], sp
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    ld [$1a13], sp
    ld [$1a12], sp
    ld c, $14
    inc de
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    db $10
    inc d
    inc b
    ld [de], a
    inc de
    ld [$0d0e], sp
    dec h
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec bc
    inc b
    nop
    dec d
    inc b
    ld [de], a
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_00e_52de

    inc de
    ld d, $0e
    dec e
    ld [bc], a
    rlca
    ld c, $08
    ld [bc], a
    inc b
    ld [de], a
    inc h
    dec e
    ld de, $0d14
    ld a, [de]
    ld c, $11
    ld a, [de]
    dec b
    ld [$0706], sp
    inc de
    daa

jr_00e_52de:
    rra
    nop
    ld [de], a
    ld a, [de]
    jr jr_00e_52f2

    inc d
    ld a, [de]
    inc de
    ld de, $1a18
    inc de
    ld c, $1a
    ld [de], a
    inc de
    ld c, $0f
    inc de

jr_00e_52f2:
    rlca
    inc b
    ld a, [de]
    ld de, $0d08
    ld b, $08
    dec c
    ld b, $1a
    ld [$1d0d], sp
    jr jr_00e_5310

    inc d
    ld de, $041a
    nop
    ld de, $2512
    ld a, [de]
    jr jr_00e_531b

    inc d
    ld a, [de]
    nop

jr_00e_5310:
    ld de, $1304
    rlca
    nop
    dec c
    ld a, [bc]
    dec b
    inc d
    dec bc
    ld a, [de]

jr_00e_531b:
    ld c, $05
    ld a, [de]
    inc de
    ld d, $0e
    dec e
    inc de
    rlca
    ld [$060d], sp
    ld [de], a
    jr nz, jr_00e_5346

    dec b
    ld [$1211], sp
    inc de
    dec h
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    jr jr_00e_5346

    inc d
    dec e
    inc c
    nop
    dec c
    nop
    ld b, $04
    inc bc
    ld a, [de]
    inc de
    ld c, $1a
    rlca

jr_00e_5346:
    ld [$1a13], sp
    nop
    dec c
    inc bc
    ld a, [bc]
    ld [$0b0b], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    nop
    inc de
    inc de
    nop
    ld [bc], a
    ld a, [bc]
    ld [$060d], sp
    nop
    dec bc
    dec bc
    ld [$0006], sp
    inc de
    ld c, $11
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    inc b
    ld [bc], a
    ld c, $0d
    inc bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    dec c
    ld c, $1a
    ld c, $0d
    inc b
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    rlca
    inc b
    nop
    ld de, $131a
    rlca
    inc b
    dec e
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld a, [de]
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    rlca
    inc b
    ld de, $1a04
    ld [$130d], sp
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    ld d, $04
    ld de, $2712
    rra
    ld [bc], a
    ld de, $0d14
    ld [bc], a
    rlca
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld c, $16
    inc b
    ld de, $1405
    dec bc
    ld a, [de]
    add hl, bc
    nop
    ld d, $12
    dec e
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    nop
    dec bc
    dec bc
    ld [$0006], sp
    inc de
    ld c, $11
    dec e
    ld [de], a
    dec c
    nop
    rrca
    ld a, [de]
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld de, $1300
    rlca
    inc b
    ld de, $0c1a
    inc b
    ld [de], a
    ld [de], a
    ld [$180b], sp
    ld a, [de]
    ld de, $0f08
    jr jr_00e_5406

    inc d
    ld a, [de]
    ld [$1a0d], sp
    inc de
    ld d, $0e
    jr nz, jr_00e_5421

    inc de
    rlca
    inc b
    ld a, [de]

jr_00e_5406:
    inc de
    rlca
    ld de, $010e
    ld bc, $0d08
    ld b, $1a
    ld [$1d0d], sp
    jr jr_00e_5423

    inc d
    ld de, $071a
    inc b
    nop
    inc bc
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc

jr_00e_5421:
    ld [de], a
    ld a, [de]

jr_00e_5423:
    nop
    ld [de], a
    ld [$1a05], sp
    ld [$1a13], sp
    ld d, $08
    dec bc
    dec bc
    ld a, [de]
    ld de, $0f08
    dec e
    jr @+$10

    inc d
    ld de, $121a
    ld a, [bc]
    inc d
    dec bc
    dec bc
    ld a, [de]
    nop
    rrca
    nop
    ld de, $1d13
    nop
    dec c
    jr jr_00e_5463

    inc c
    ld c, $0c
    inc b
    dec c
    inc de
    ld a, [de]
    dec c
    ld c, $16
    daa
    inc e
    inc de
    ld c, $1a
    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    inc de
    rlca
    ld [$060d], sp
    ld [de], a

jr_00e_5463:
    dec e
    ld d, $0e
    ld de, $0412
    dec h
    ld a, [de]
    jr jr_00e_547b

    inc d
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    dec e
    jr jr_00e_5484

    inc d
    ld de, $0c1a
    inc b

jr_00e_547b:
    inc c
    ld c, $11
    jr jr_00e_549d

    ld b, $04
    inc de
    inc de

jr_00e_5484:
    ld [$060d], sp
    ld a, [de]
    inc b
    dec d
    inc b
    dec c
    dec e
    ld d, $0e
    ld de, $0412
    daa
    inc e
    jr jr_00e_54a4

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    ld [bc], a

jr_00e_549d:
    inc b
    ld de, $0013
    ld [$1d0d], sp

jr_00e_54a4:
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [$1a05], sp
    jr jr_00e_54bc

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    dec e
    inc bc
    ld c, $1a
    ld [de], a
    ld c, $0c

jr_00e_54bc:
    inc b
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    ld c, $0e
    dec c
    dec h
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    jr jr_00e_54dd

    inc d
    ld de, $0b1a
    ld [$0405], sp
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld c, $0d
    dec bc

jr_00e_54dd:
    jr jr_00e_54f9

    ld bc, $1a04
    dec c
    inc d
    inc c
    ld bc, $1104
    inc b
    inc bc
    dec e
    ld [$1a0d], sp
    rlca
    ld c, $14
    ld de, $2712
    rra
    jr jr_00e_5505

    inc d
    ld a, [de]

jr_00e_54f9:
    rlca
    inc d
    dec c
    ld a, [bc]
    inc b
    ld de, $031a
    ld c, $16
    dec c
    dec e

jr_00e_5505:
    ld [$1a0d], sp
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
    ld [bc], a
    nop
    ld bc, $1c20
    jr jr_00e_552c

    inc d
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    ld c, $15
    inc b
    ld de, $131a
    rlca

jr_00e_552c:
    inc b
    dec e
    inc bc
    ld de, $1508
    inc b
    ld de, $1a25
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    dec e
    db $10
    inc d
    ld [$0413], sp
    ld a, [de]
    dec c
    inc b
    ld de, $0e15
    inc d
    ld [de], a
    jr nz, jr_00e_556d

    ld h, $07
    inc b
    jr jr_00e_556d

    inc c
    ld [$1312], sp
    inc b
    ld de, $1a25
    ld d, $07
    inc b
    ld de, $0304
    ld a, [hl+]
    jr jr_00e_5564

jr_00e_5564:
    ld a, [de]
    ld d, $00
    dec c
    dec c
    nop
    ld a, [de]
    ld b, $0e

jr_00e_556d:
    jr z, jr_00e_5595

    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld de, $1508
    inc b
    ld de, $001a
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [de]
    ld [$000d], sp
    ld a, [de]
    dec c
    inc b
    ld de, $0e15
    inc d
    ld [de], a
    ld a, [de]
    inc de
    ld c, $0d
    inc b
    jr nz, jr_00e_55b1

    ld d, $07
    inc b

jr_00e_5595:
    dec c
    ld a, [de]
    jr jr_00e_55a7

    inc d
    ld a, [de]
    nop
    ld de, $0811
    dec d
    inc b
    dec h
    dec e
    rlca
    inc b
    ld a, [de]
    dec bc

jr_00e_55a7:
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    nop
    inc de
    ld a, [de]
    inc de
    rlca

jr_00e_55b1:
    inc b
    dec e
    inc c
    inc b
    inc de
    inc b
    ld de, $001a
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    nop
    jr jr_00e_55d3

    dec h
    dec e
    ld h, $07
    inc b
    ld de, $1a04
    jr jr_00e_55cb

jr_00e_55cb:
    ld a, [de]
    nop
    ld de, $2704
    dec e
    inc de
    rlca

jr_00e_55d3:
    nop
    inc de
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    ld bc, $1d04
    ld [de], a
    inc b
    dec d
    inc b
    dec c
    inc de
    jr jr_00e_5605

    dec b
    ld [$0415], sp
    dec e
    ld [bc], a
    inc b
    dec c
    inc de
    ld [de], a
    dec h
    ld a, [de]
    inc c
    nop
    ld [bc], a
    daa
    ld h, $1f
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld de, $1508
    inc b
    ld de, $021a
    ld c, $14
    dec c

jr_00e_5605:
    inc de
    ld [de], a
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    rlca
    nop
    dec c
    ld b, $04
    jr nz, jr_00e_5631

    ld h, $31
    dec h
    ld a, [de]
    ld [hl-], a
    jr nz, jr_00e_563b

    jr nz, jr_00e_5637

    jr jr_00e_5633

    rrca
    dec h
    ld a, [de]
    inc sp
    dec e
    db $10
    inc d
    nop
    ld de, $0413
    ld de, $2012
    ld a, [de]
    inc de
    rlca
    nop

jr_00e_5631:
    dec c
    ld a, [bc]

jr_00e_5633:
    ld [de], a
    ld a, [de]
    nop
    dec bc

jr_00e_5637:
    ld c, $13
    dec h
    ld a, [de]

jr_00e_563b:
    ld bc, $0114
    daa
    ld h, $1f
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $031d
    ld de, $1508
    inc b
    ld de, $1c20
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
    dec e
    ld d, $07
    jr jr_00e_568e

    ld a, [de]
    ld bc, $1314
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    dec e
    dec d
    inc b
    ld de, $1a18
    ld [$0f0c], sp
    nop
    inc de
    ld [$0d04], sp
    inc de
    jr nz, jr_00e_56a6

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca

jr_00e_568e:
    inc b
    ld a, [de]
    ld [de], a
    dec bc
    ld c, $13
    dec e
    ld d, $07
    inc b
    ld de, $1a04
    jr @+$10

    inc d
    ld a, [de]
    rrca
    nop
    jr @+$1c

    inc de
    rlca
    inc b

jr_00e_56a6:
    dec e
    ld [bc], a
    nop
    ld bc, $051a
    nop
    ld de, $2004
    rra
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    ld d, $11
    ld [$0813], sp
    dec c
    ld b, $1a
    ld c, $0d
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    rrca
    ld a, [de]
    ld d, $07
    ld [$0702], sp
    dec e
    ld de, $0004
    inc bc
    ld [de], a
    dec h
    ld a, [de]
    ld h, $00
    ld [bc], a
    inc b
    dec h
    dec e
    dec b
    ld c, $0b
    dec bc
    ld c, $16
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    ld de, $140e
    inc de
    inc b
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $2020
    jr nz, jr_00e_571d

    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld d, $00
    jr jr_00e_5724

    jr @+$10

    inc d
    ld a, [hl+]
    dec bc
    dec bc
    dec e
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]
    ld [$1a05], sp
    jr jr_00e_5729

    inc d
    ld a, [hl+]

jr_00e_571d:
    ld de, $1d04
    ld bc, $0804
    dec c

jr_00e_5724:
    ld b, $1a
    dec b
    ld c, $0b

jr_00e_5729:
    dec bc
    ld c, $16
    inc b
    inc bc
    jr nz, jr_00e_574c

    nop
    dec c
    inc bc
    ld a, [de]
    ld bc, $1a04
    dec d
    inc b
    ld de, $1d18
    ld [bc], a
    nop
    ld de, $0504
    inc d
    dec bc
    dec h
    ld a, [de]
    jr jr_00e_5755

    inc d
    dec e
    inc bc
    ld c, $0d

jr_00e_574c:
    ld a, [hl+]
    inc de
    ld a, [de]
    ld d, $00
    dec c
    inc de
    ld a, [de]
    inc de

jr_00e_5755:
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $0f
    ld [de], a
    ld a, [de]
    dec b
    ld [$030d], sp
    ld [$060d], sp
    dec e
    inc c
    ld de, $2012
    ld a, [de]
    ld [de], a
    inc de
    inc b
    ld de, $160d
    ld c, $0e
    inc bc
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0d14
    ld a, [bc]
    jr nz, jr_00e_57a8

    inc e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0d14
    ld a, [bc]
    daa
    jr z, jr_00e_57af

    inc c
    ld de, $2012
    ld a, [de]
    ld [de], a
    inc de
    inc b
    ld de, $160d
    ld c, $0e
    inc bc
    daa
    jr z, jr_00e_57bf

    nop
    dec c
    ld a, [de]
    inc d
    dec c

jr_00e_57a8:
    inc b
    nop
    ld [de], a
    jr @+$1c

    dec b
    inc b

jr_00e_57af:
    inc b
    dec bc
    ld [$060d], sp
    dec e
    ld b, $11
    ld [$120f], sp
    ld a, [de]
    jr jr_00e_57cb

    inc d
    ld a, [de]

jr_00e_57bf:
    nop
    ld [de], a
    ld a, [de]
    jr jr_00e_57d2

    inc d
    dec e
    ld d, $0e
    dec c
    inc bc
    inc b

jr_00e_57cb:
    ld de, $161a
    rlca
    nop
    inc de
    ld a, [hl+]

jr_00e_57d2:
    ld [de], a
    dec e
    ld b, $0e
    ld [$060d], sp
    ld a, [de]
    ld c, $0d
    ld a, [de]
    rlca
    inc b
    ld de, $2804
    rra
    jr jr_00e_57f3

    inc d
    ld a, [de]
    inc de
    ld de, $1a18
    inc de
    ld c, $1a
    ld b, $08
    dec d
    inc b
    dec e

jr_00e_57f3:
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld de, $1508
    inc b
    ld de, $121a
    ld c, $0c
    inc b
    dec e
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld hl, $110f
    ld c, $0e
    dec b
    dec e
    ld b, $0b
    nop
    ld [de], a
    ld [de], a
    ld a, [de]
    ld [de], a
    inc de
    ld c, $0f
    ld [de], a
    ld a, [de]
    jr jr_00e_583e

    inc d
    jr nz, jr_00e_5852

    jr jr_00e_5843

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    nop

jr_00e_583e:
    ld b, $04
    inc bc
    dec e
    inc de

jr_00e_5843:
    ld c, $1a
    ld [de], a
    rlca
    ld c, $0e
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $0b14

jr_00e_5852:
    dec bc
    inc b
    inc de
    rrca
    ld de, $0e0e
    dec b
    ld a, [de]
    ld [de], a
    ld [bc], a
    ld de, $0404
    dec c
    ld bc, $1304
    ld d, $04
    inc b
    dec c
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $1801
    jr nz, jr_00e_5898

    jr @+$10

    inc d
    ld a, [de]
    ld c, $15
    inc b
    ld de, $0407
    nop
    ld de, $071a
    ld [$1d12], sp
    dec b
    ld de, $0d00
    inc de
    ld [$1a02], sp
    ld [bc], a
    nop
    dec bc

jr_00e_5898:
    dec bc
    ld [de], a
    ld a, [de]
    dec b
    ld c, $11
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld c, $0b
    ld [$0402], sp
    ld a, [de]
    ld c, $0d
    ld a, [de]
    rlca
    ld [$1d12], sp
    ld de, $0300
    ld [$270e], sp
    rra
    jr jr_00e_58c8

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    ld a, [de]
    ld bc, $0004
    inc de

jr_00e_58c8:
    dec e
    inc d
    rrca
    ld a, [de]
    jr jr_00e_58d2

    dec bc
    dec bc
    ld c, $16

jr_00e_58d2:
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $1c20
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $1801
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e
    dec bc
    ld [$040a], sp
    ld a, [de]
    nop
    ld a, [de]
    rrca
    dec bc
    inc b
    nop
    ld [de], a
    nop
    dec c
    inc de
    dec e
    inc b
    dec c
    ld c, $14
    ld b, $07
    ld a, [de]
    dec b
    inc b
    dec bc
    dec bc
    ld c, $16
    jr nz, jr_00e_5926

    ld h, $16
    rlca
    nop
    inc de
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld [$031a], sp
    ld c, $1d
    jr jr_00e_5926

    inc d
    ld a, [de]
    dec b
    ld c, $11
    jr z, jr_00e_5945

    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    nop

jr_00e_5926:
    ld bc, $1801
    ld a, [de]
    nop
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec e
    ld [de], a
    inc c
    ld [$040b], sp
    jr nz, jr_00e_595c

    jr @+$10

    inc d
    ld a, [de]
    ld b, $08
    dec d
    inc b

jr_00e_5945:
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $1801
    rlca
    ld [$1a12], sp
    dec b
    nop
    ld de, $2004
    inc e
    ld h, $13
    rlca

jr_00e_595c:
    nop
    dec c
    ld a, [bc]
    ld [de], a
    dec h
    ld a, [de]
    ld bc, $0114
    dec h
    ld h, $1a
    rlca
    inc b
    dec e
    ld [de], a
    nop
    jr jr_00e_5981

    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc c
    ld [$040b], sp
    jr nz, jr_00e_599d

    add hl, bc
    inc d
    ld [de], a

jr_00e_5981:
    inc de
    ld a, [de]
    ld d, $07
    inc b
    dec c
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    nop
    ld de, $1d04
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    inc de
    ld c, $1a
    ld [bc], a
    ld c, $0c
    rrca

jr_00e_599d:
    dec bc
    nop
    ld [$250d], sp
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    ld c, $0f
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $161d
    ld [$0713], sp
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    ld [bc], a
    ld de, $0404
    ld [bc], a
    rlca
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    nop
    jr jr_00e_59dc

    dec h
    inc e
    ld h, $07
    inc b
    ld de, $1a04
    jr jr_00e_59d4

jr_00e_59d4:
    ld a, [de]
    ld b, $0e
    dec h
    dec e
    inc de
    rlca
    nop

jr_00e_59dc:
    inc de
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    ld bc, $1d04
    ld [de], a
    inc b
    dec d
    inc b
    dec c
    inc de
    jr jr_00e_5a0d

    dec b
    ld [$0415], sp
    dec e
    ld [bc], a
    inc b
    dec c
    inc de
    ld [de], a
    daa
    ld h, $1f
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $1801
    ld a, [de]
    nop
    ld [de], a
    ld a, [bc]
    ld [de], a
    dec h
    dec e
    ld h, $16
    rlca
    inc b

jr_00e_5a0d:
    ld de, $1a04
    inc de
    ld c, $25
    dec e
    inc c
    ld [$1312], sp
    inc b
    ld de, $2628
    rra
    jr jr_00e_5a2d

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld c, $14
    inc de
    ld [de], a
    ld [$0403], sp
    dec e
    inc de

jr_00e_5a2d:
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    dec b
    ld c, $11
    inc bc
    ld a, [de]
    nop
    ld de, $120c
    dec h
    nop
    dec c
    ld a, [de]
    nop
    rrca
    nop
    ld de, $0c13
    inc b
    dec c
    inc de
    dec e
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    ld a, [de]
    ld [$1d0d], sp
    nop
    ld a, [de]
    dec d
    inc b
    ld de, $1a18
    inc d
    rrca
    ld [de], a
    ld [bc], a
    nop
    dec bc
    inc b
    dec e
    rrca
    nop
    ld de, $1a13
    ld c, $05
    ld a, [de]
    inc de
    ld c, $16
    dec c
    jr nz, jr_00e_5a93

    jr jr_00e_5a84

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    ld [$0f0c], sp
    ld de, $1204
    ld [de], a
    inc b

jr_00e_5a84:
    inc bc
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $0d
    ld [de], a

jr_00e_5a93:
    inc de
    ld de, $0214
    inc de
    ld [$0d0e], sp
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    jr nz, @+$1e

    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1a04
    nop
    dec e
    ld bc, $1308
    ld a, [de]
    inc de
    ld c, $0e
    ld a, [de]
    rrca
    ld de, $0208
    inc b
    jr jr_00e_5ae7

    dec b
    ld c, $11
    jr jr_00e_5ae0

    inc d
    ld de, $161a
    nop
    dec bc
    dec bc
    inc b
    inc de
    jr nz, @+$21

    inc de
    rlca
    inc b

jr_00e_5ae0:
    ld a, [de]
    nop
    rrca
    nop
    ld de, $0c13

jr_00e_5ae7:
    inc b
    dec c
    inc de
    dec e
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    ld a, [de]
    ld de, $1208
    inc b
    ld [de], a
    dec e
    rlca
    ld [$0706], sp
    ld a, [de]
    nop
    ld bc, $150e
    inc b
    ld a, [de]
    jr jr_00e_5b15

    inc d
    jr nz, jr_00e_5b29

    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc b
    ld [bc], a
    ld c, $11
    nop
    inc de

jr_00e_5b15:
    ld [$0415], sp
    dec e
    inc de
    ld c, $14
    ld [bc], a
    rlca
    inc b
    ld [de], a
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    dec bc

jr_00e_5b29:
    ld c, $01
    ld bc, $1a18
    nop
    ld de, $1a04
    nop
    ld a, [de]
    ld bc, $1308
    dec e
    inc de
    ld c, $0e
    ld a, [de]
    ld c, $0f
    inc d
    dec bc
    inc b
    dec c
    inc de
    ld a, [de]
    dec b
    ld c, $11
    dec e
    jr jr_00e_5b58

    inc d
    jr nz, jr_00e_5b69

    ld h, $08
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]

jr_00e_5b58:
    nop
    ld a, [de]
    ld de, $0d14
    dec e
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    nop
    rrca
    nop
    ld de, $0c13

jr_00e_5b69:
    inc b
    dec c
    inc de
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    ld [bc], a
    ld c, $02
    ld a, [bc]
    ld de, $000e
    ld [bc], a
    rlca
    inc b
    ld [de], a
    dec e
    nop
    dec c
    jr jr_00e_5b9c

    inc bc
    nop
    jr jr_00e_5bab

    ld h, $1a
    jr @+$10

    inc d
    dec e
    inc c
    inc d
    inc de
    inc de
    inc b
    ld de, $081a
    ld de, $0d0e
    ld [$0002], sp
    dec bc
    dec bc

jr_00e_5b9c:
    jr jr_00e_5bbe

    rra
    ld [$1a13], sp
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1a12
    inc de

jr_00e_5bab:
    ld c, $1d
    ld bc, $1a04
    nop
    ld a, [de]
    rrca
    ld de, $1508
    nop
    inc de
    inc b
    dec e
    inc b
    dec bc
    inc b
    dec d

jr_00e_5bbe:
    nop
    inc de
    ld c, $11
    ld a, [de]
    dec b
    ld c, $11
    dec e
    ld de, $1204
    ld [$0403], sp
    dec c
    inc de
    ld [de], a
    ld a, [de]
    ld c, $0d
    dec bc
    jr jr_00e_5bf6

    rra
    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1d04
    nop
    ld a, [de]
    ld [de], a
    dec bc
    ld c, $13
    ld a, [de]
    dec b
    ld c, $11
    dec e
    ld [de], a
    ld c, $0c
    inc b
    inc de

jr_00e_5bf6:
    rlca
    ld [$060d], sp
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
    ld [$1d12], sp
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    ld c, $01
    ld bc, $2018
    rra
    ld d, $07
    inc b
    dec c
    ld a, [de]
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
    ld [bc], a
    nop
    ld de, $1a03
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    dec bc
    ld c, $13
    dec h
    ld a, [de]
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
    inc bc
    ld c, $0e
    ld de, $1a12
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec e
    ld [de], a
    ld d, $0e
    ld c, $12
    rlca
    jr nz, jr_00e_5c84

    nop
    ld [de], a
    ld a, [de]
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
    ld [bc], a
    nop
    ld de, $1a03
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    dec bc

jr_00e_5c84:
    ld c, $13
    dec h
    ld a, [de]
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
    inc bc
    ld c, $0e
    ld de, $1a12
    ld [de], a
    dec bc
    ld [$0403], sp
    ld a, [de]
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    jr nz, jr_00e_5cc6

    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    dec bc
    ld [$040a], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    dec bc
    ld c, $13
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de

jr_00e_5cc6:
    rlca
    inc b
    dec e
    ld c, $14
    inc de
    ld [de], a
    ld [$0403], sp
    jr nz, @+$21

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
    inc c
    inc d
    ld [bc], a
    rlca
    ld a, [de]
    inc de
    ld c, $1a
    inc bc
    ld c, $1d
    ld [$120d], sp
    ld [$0403], sp
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    inc b
    dec bc
    inc b
    dec d
    nop
    inc de
    ld c, $11
    jr nz, jr_00e_5d2a

    jr jr_00e_5d1b

    inc d
    ld a, [de]
    rrca
    inc d
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    ld [de], a
    ld [de], a

jr_00e_5d1b:
    dec e
    ld [bc], a
    nop
    ld de, $1a03
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    dec bc

jr_00e_5d2a:
    ld c, $13
    jr nz, jr_00e_5d4d

    jr @+$10

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    ld a, [de]
    dec d
    inc b
    ld de, $1d18
    ld c, $11
    dec c
    nop
    inc de
    inc b
    dec bc
    jr @+$1c

    inc bc
    inc b
    ld [bc], a
    ld c, $11

jr_00e_5d4d:
    nop
    inc de
    inc b
    inc bc
    rrca
    inc b
    dec c
    inc de
    rlca
    ld c, $14
    ld [de], a
    inc b
    jr nz, jr_00e_5d78

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $14
    ld [bc], a
    rlca
    ld a, [de]
    nop
    dec bc
    ld c, $0d
    inc b
    dec e
    rrca
    ld de, $010e
    nop
    ld bc, $180b
    ld a, [de]
    ld [bc], a
    ld c, $12

jr_00e_5d78:
    inc de
    ld [de], a
    dec e
    inc c
    ld c, $11
    inc b
    ld a, [de]
    inc de
    rlca
    nop
    dec c
    ld a, [de]
    jr @+$10

    inc d
    ld de, $181d
    inc b
    nop
    ld de, $180b
    ld a, [de]
    inc b
    nop
    ld de, $080d
    dec c
    ld b, $12
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld de, $1218
    inc de
    nop
    dec bc
    dec e
    ld [bc], a
    rlca
    nop
    dec c
    inc bc
    inc b
    dec bc
    ld [$1104], sp
    ld a, [de]
    dec b
    ld [$1213], sp
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc b
    ld [bc], a
    ld c, $11
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld de, $0e0e
    inc c
    ld a, [de]
    dec c
    ld [$0402], sp
    dec bc
    jr jr_00e_5df4

    rra
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
    ld de, $021d
    ld c, $15
    inc b
    ld de, $0304
    ld a, [de]
    ld [de], a
    ld c, $05
    nop
    jr nz, jr_00e_5e11

    ld c, $0d

jr_00e_5df4:
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    nop
    inc bc
    inc c
    ld [$0411], sp
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    db $10
    inc d
    nop
    dec bc
    ld [$1813], sp
    ld a, [de]
    ld c, $05

jr_00e_5e11:
    dec e
    inc de
    rlca
    ld [$1a12], sp
    ld [bc], a
    rlca
    nop
    ld [$1a11], sp
    dec b
    ld c, $11
    dec e
    rlca
    ld c, $14
    ld de, $1a12
    ld c, $0d
    ld a, [de]
    inc b
    dec c
    inc bc
    jr nz, jr_00e_5e4e

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
    dec bc
    ld [$040a], sp
    ld a, [de]
    nop
    ld a, [de]
    ld b, $11
    inc b
    nop
    inc de
    ld a, [de]
    ld d, $0e

jr_00e_5e4e:
    ld de, $1d0a
    ld c, $05
    ld a, [de]
    nop
    ld de, $1a13
    dec b
    ld c, $11
    dec e
    ld [$120d], sp
    rrca
    ld [$0011], sp
    inc de
    ld [$0d0e], sp
    jr nz, jr_00e_5e88

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec b
    ld [$0411], sp
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    jr nz, jr_00e_5e97

    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    nop
    ld [bc], a
    ld a, [bc]

jr_00e_5e88:
    ld a, [de]
    ld c, $05
    dec e
    nop
    ld [de], a
    rlca
    inc b
    ld [de], a
    dec h
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]

jr_00e_5e97:
    ld b, $14
    inc b
    ld [de], a
    ld [de], a
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc d
    ld [de], a
    inc b
    inc bc
    dec e
    inc c
    ld c, $11
    inc b
    ld a, [de]
    dec b
    ld c, $11
    dec e
    inc bc
    inc b
    ld [bc], a
    ld c, $11
    nop
    inc de
    ld [$0d0e], sp
    ld a, [de]
    inc de
    rlca
    nop
    dec c
    dec e
    nop
    dec c
    jr jr_00e_5edc

    rlca
    ld [$060d], sp
    ld a, [de]
    inc b
    dec bc
    ld [de], a
    inc b
    jr nz, jr_00e_5ef3

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a

jr_00e_5edc:
    inc c
    nop
    dec bc
    dec bc
    dec h
    dec e
    dec bc
    ld c, $16
    ld a, [de]
    inc de
    nop
    ld bc, $040b
    jr nz, @+$21

    ld h, $01
    inc b
    inc de
    inc de
    inc b

jr_00e_5ef3:
    ld de, $071a
    ld c, $0c
    inc b
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    rrca
    inc b
    dec c
    inc de
    rlca
    ld c, $14
    ld [de], a
    inc b
    ld [de], a
    ld h, $1a
    ld [$1a12], sp
    dec c
    ld c, $13
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]
    jr jr_00e_5f2b

    inc d
    ld a, [de]
    ld de, $0004
    inc bc
    inc de
    ld c, $0e
    ld a, [de]
    ld c, $05
    inc de
    inc b

jr_00e_5f2b:
    dec c
    jr nz, jr_00e_5f4d

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0608
    dec h
    ld a, [de]
    ld de, $140e
    dec c
    inc bc
    dec e
    inc c
    ld [$1111], sp
    ld c, $11
    jr nz, jr_00e_5f67

    ld [$2a13], sp
    ld [de], a
    ld a, [de]

jr_00e_5f4d:
    nop
    ld a, [de]
    rrca
    rlca
    ld c, $13
    ld c, $06
    ld de, $0f00
    rlca
    dec e
    ld c, $05
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    rlca
    nop
    rrca
    inc b
    dec bc
    jr jr_00e_5f84

jr_00e_5f67:
    ld bc, $1411
    dec c
    inc b
    inc de
    inc de
    inc b
    jr nz, jr_00e_5f8b

    dec c
    ld c, $13
    dec e
    db $10
    inc d
    ld [$0413], sp
    ld a, [de]
    jr jr_00e_5f8b

    inc d
    ld de, $021a
    inc d
    rrca
    ld a, [de]

jr_00e_5f84:
    ld c, $05
    dec e
    inc de
    inc b
    nop
    daa

jr_00e_5f8b:
    inc e
    inc de
    inc d
    ld de, $080d
    dec c
    ld b, $1a
    inc de
    rlca
    inc b
    dec e
    rrca
    ld [$1302], sp
    inc d
    ld de, $1a04
    ld c, $15
    inc b
    ld de, $1a25
    jr @+$10

    inc d
    dec e
    dec b
    ld [$030d], sp
    ld a, [de]
    nop
    dec c
    ld a, [de]
    nop
    inc bc
    inc bc
    ld de, $1204
    ld [de], a
    ld a, [de]
    ld c, $0d
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    jr nz, @+$1c

    ld [$1d13], sp
    ld de, $0004
    inc bc
    ld [de], a
    inc h
    dec e
    dec [hl]
    ld [hl-], a
    jr nc, jr_00e_5fee

    ld [de], a
    jr nz, jr_00e_5ff1

    ld a, [bc]
    inc b
    inc bc
    add hl, de
    ld [$1a04], sp
    ld [$1d0d], sp
    ld [bc], a
    rlca
    ld [$0002], sp
    ld b, $0e
    jr nz, jr_00e_6009

    ld [$2a13], sp
    ld [de], a

jr_00e_5fee:
    ld a, [de]
    nop
    ld a, [de]

jr_00e_5ff1:
    ld bc, $0e0e
    ld a, [bc]
    ld [de], a
    rlca
    inc b
    dec bc
    dec b
    dec e
    dec b
    ld [$0b0b], sp
    inc b
    inc bc
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca

jr_00e_6009:
    ld [$0a02], sp
    dec e
    inc b
    dec c
    ld [bc], a
    jr @+$04

    dec bc
    ld c, $0f
    inc b
    inc bc
    ld [$1200], sp
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld bc, $0e0e
    ld a, [bc]
    ld [de], a
    jr nz, @+$21

    jr jr_00e_6036

    inc d
    ld de, $081a
    dec c
    ld [de], a
    inc de
    ld [$020d], sp
    inc de
    ld [de], a
    dec e
    inc de

jr_00e_6036:
    inc b
    dec bc
    dec bc
    ld a, [de]
    jr jr_00e_604a

    inc d
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $1a04
    ld [$1d12], sp
    ld [de], a
    ld c, $0c

jr_00e_604a:
    inc b
    inc de
    rlca
    ld [$060d], sp
    ld a, [de]
    jr @+$10

    inc d
    ld a, [hl+]
    ld de, $1d04
    inc c
    ld [$1212], sp
    ld [$060d], sp
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    ld [$1d12], sp
    ld de, $0e0e
    inc c
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld de, $0d14
    ld hl, $0e03
    ld d, $0d
    dec e
    ld bc, $0d14
    ld b, $00
    dec bc
    ld c, $16
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc b
    inc b
    inc bc
    ld [$1104], sp
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    inc de
    ld [$0d0e], sp
    ld a, [de]
    ld c, $05
    inc de
    ld c, $16
    dec c
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    ld [$130d], sp
    ld a, [de]
    ld [$1d12], sp
    ld [bc], a
    rlca
    ld [$0f0f], sp
    ld [$060d], sp
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $000e
    ld de, $1203
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1d04
    ld de, $130e
    inc de
    ld [$060d], sp
    ld hl, $011a
    nop
    ld [de], a
    ld [$0002], sp
    dec bc
    dec bc
    jr jr_00e_60ee

    inc de
    ld a, [de]
    ld de, $0c04
    ld [$030d], sp

jr_00e_60ee:
    ld [de], a
    ld a, [de]
    jr jr_00e_6100

    inc d
    ld a, [de]
    ld c, $05
    dec e
    rlca
    ld c, $0c
    inc b
    jr nz, jr_00e_611c

    jr @+$10

    inc d

jr_00e_6100:
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
    ld [$1d13], sp
    ld d, $07
    inc b
    dec c
    ld a, [de]
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld c, $0f
    inc b
    dec c

jr_00e_611c:
    jr nz, jr_00e_613d

    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $081a
    ld [de], a
    dec e
    dec bc
    ld c, $02
    ld a, [bc]
    inc b
    inc bc
    jr nz, jr_00e_6151

    jr jr_00e_6142

    inc d
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    dec c
    ld a, [hl+]
    inc de

jr_00e_613d:
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b

jr_00e_6142:
    dec e
    inc de
    rlca
    ld [$1a12], sp
    dec b
    nop
    ld de, $131a
    ld c, $1a
    dec bc
    inc b

jr_00e_6151:
    inc de
    ld a, [de]
    nop
    dec e
    dec bc
    ld c, $02
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $121a
    inc de
    ld c, $0f
    dec e
    jr jr_00e_6176

    inc d
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld de, $0d14
    ld a, [bc]
    ld a, [de]
    ld [de], a

jr_00e_6176:
    rrca
    ld de, $1800
    ld [de], a
    dec e
    inc c
    ld c, $11
    inc b
    ld a, [de]
    inc de
    rlca
    nop
    dec c
    ld a, [de]
    ld [de], a
    nop
    jr jr_00e_619c

    dec h
    dec e
    ld h, $07
    inc b
    jr jr_00e_61ab

    inc c
    nop
    ld [bc], a
    dec h
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    jr jr_00e_619c

jr_00e_619c:
    dec e
    ld [de], a
    rrca
    nop
    ld de, $1a04
    dec b
    ld [$1305], sp
    jr jr_00e_61c6

    ld [bc], a
    inc b

jr_00e_61ab:
    dec c
    inc de
    ld [de], a
    jr z, jr_00e_61d7

    ld h, $1f
    ld [bc], a
    dec bc
    ld [$0a02], sp
    daa
    inc e
    jr @+$10

    inc d
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

jr_00e_61c6:
    inc de
    ld de, $0608
    ld b, $04
    ld de, $1c20
    ld [$1a13], sp
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a

jr_00e_61d7:
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
    ld b, $14
    dec c
    ld a, [de]
    ld [$1a12], sp
    inc b
    inc c
    rrca
    inc de
    jr jr_00e_620e

    rra
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    ld d, $11
    ld [$0813], sp
    dec c
    ld b, $1a
    ld c, $0d
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    rrca
    ld a, [de]
    ld d, $07
    ld [$0702], sp

jr_00e_620e:
    dec e
    ld de, $0004
    inc bc
    ld [de], a
    dec h
    ld a, [de]
    ld h, $00
    ld [bc], a
    inc b
    dec h
    dec e
    dec b
    ld c, $0b
    dec bc
    ld c, $16
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    ld de, $140e
    inc de
    inc b
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $2020
    jr nz, jr_00e_625b

    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld d, $00
    jr jr_00e_6262

    jr @+$10

    inc d
    ld a, [hl+]
    dec bc
    dec bc
    dec e
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]
    ld [$1a05], sp
    jr jr_00e_6267

    inc d
    ld a, [hl+]

jr_00e_625b:
    ld de, $1d04
    ld bc, $0804
    dec c

jr_00e_6262:
    ld b, $1a
    dec b
    ld c, $0b

jr_00e_6267:
    dec bc
    ld c, $16
    inc b
    inc bc
    jr nz, jr_00e_628a

    nop
    dec c
    inc bc
    ld a, [de]
    ld bc, $1a04
    dec d
    inc b
    ld de, $1d18
    ld [bc], a
    nop
    ld de, $0504
    inc d
    dec bc
    dec h
    ld a, [de]
    jr jr_00e_6293

    inc d
    dec e
    inc bc
    ld c, $0d

jr_00e_628a:
    ld a, [hl+]
    inc de
    ld a, [de]
    ld d, $00
    dec c
    inc de
    ld a, [de]
    inc de

jr_00e_6293:
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $0f
    ld [de], a
    ld a, [de]
    dec b
    ld [$030d], sp
    ld [$060d], sp
    dec e
    inc c
    ld de, $2012
    ld a, [de]
    ld [de], a
    inc de
    inc b
    ld de, $160d
    ld c, $0e
    inc bc
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0d14
    ld a, [bc]
    jr nz, jr_00e_62e6

    inc e
    jr jr_00e_62d1

    inc d
    ld de, $081a
    dec c
    ld [de], a
    inc de
    ld [$020d], sp
    inc de
    ld [de], a
    dec e
    inc de

jr_00e_62d1:
    inc b
    dec bc
    dec bc
    ld a, [de]
    jr jr_00e_62e5

    inc d
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    inc c
    inc d
    ld [de], a
    inc de
    ld bc, $1a04

jr_00e_62e5:
    inc de

jr_00e_62e6:
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    rrca
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de
    ld [$040c], sp
    inc de
    nop
    ld bc, $040b
    daa
    rra
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
    dec b
    ld de, $0d0e
    inc de
    ld c, $05
    ld a, [de]
    nop
    ld a, [de]
    ld de, $0c00
    ld [de], a
    rlca
    nop
    ld [bc], a
    ld a, [bc]
    dec bc
    inc b
    dec e
    ld bc, $0d14
    ld b, $00
    dec bc
    ld c, $16
    jr nz, jr_00e_6347

    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    nop
    ld de, $040a
    inc bc
    dec e
    ld [bc], a
    nop
    ld bc, $081a
    inc bc
    dec bc
    ld [$060d], sp
    ld a, [de]

jr_00e_6347:
    ld bc, $1a18
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    inc d
    ld de, $1201
    ld [$0403], sp
    jr nz, @+$21

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
    ld [$120d], sp
    ld [$0403], sp
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0d14
    ld b, $00
    dec bc
    ld c, $16
    ld a, [de]
    ld [$1d12], sp
    ld [bc], a
    dec bc
    ld c, $18
    ld [$060d], sp
    jr nz, @+$1e

    jr jr_00e_6392

    inc d
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    ld a, [de]
    jr jr_00e_639c

    inc d
    ld a, [hl+]
    dec d
    inc b

jr_00e_6392:
    dec e
    ld [de], a
    inc c
    inc b
    dec bc
    dec bc
    inc b
    inc bc
    ld a, [de]
    inc de

jr_00e_639c:
    rlca
    ld [$1a12], sp
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
    ld bc, $0504
    ld c, $11
    inc b
    jr nz, jr_00e_63d4

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    ld [bc], a
    inc d
    dec b
    dec b
    inc b
    inc bc
    dec e
    dec c
    ld [$0706], sp
    inc de
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]

jr_00e_63d4:
    nop
    ld a, [de]
    inc bc
    ld de, $1600
    inc b
    ld de, $081d
    dec c
    ld a, [de]
    ld [$2013], sp
    rra
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
    rrca
    ld [$0204], sp
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    rrca
    nop
    rrca
    inc b
    ld de, $001a
    ld de, $1304
    rlca
    inc b
    ld a, [de]
    dec c
    inc d
    inc c
    ld bc, $1104
    ld [de], a
    inc h
    dec e
    ld [hl-], a
    dec [hl]
    dec h
    ld a, [de]
    inc sp
    dec h
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    inc [hl]
    dec [hl]
    jr nz, jr_00e_6442

    jr jr_00e_6433

    inc d
    ld a, [de]
    ld de, $0004
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec c
    inc d
    inc c

jr_00e_6433:
    ld bc, $1104
    ld [de], a
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    nop
    rrca

jr_00e_6442:
    inc b
    ld de, $1a25
    ld h, $33
    inc sp
    ld hl, $3432
    ld hl, $3633
    ld h, $20
    inc e
    rlca
    inc c
    inc c
    dec h
    ld a, [de]
    ld [de], a
    ld c, $14
    dec c
    inc bc
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
    jr jr_00e_647b

    inc d
    ld a, [hl+]
    dec d
    inc b
    dec e
    inc bc
    nop
    inc de
    inc b
    inc bc
    ld a, [de]
    ld c, $0d
    ld [bc], a

jr_00e_647b:
    inc b
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0304
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    inc c
    ld c, $11
    inc b
    dec bc
    ld [$040a], sp
    ld a, [de]
    nop
    dec c
    ld a, [de]
    nop
    ld de, $180c
    ld a, [de]
    ld [bc], a
    ld c, $13
    dec e
    inc de
    rlca
    nop
    dec c
    ld a, [de]
    nop
    dec c
    jr jr_00e_64bd

    rlca
    ld [$060d], sp
    dec e
    inc b
    dec bc
    ld [de], a
    inc b
    jr nz, jr_00e_64d1

    ld [$1a13], sp
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a

jr_00e_64bd:
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $16
    dec c
    inc b
    ld de, $0407
    ld de, $1a04
    ld [$1a12], sp
    dec d
    inc b

jr_00e_64d1:
    ld de, $1a18
    rrca
    ld c, $0e
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld b, $00
    inc d
    inc bc
    jr jr_00e_6504

    rrca
    nop
    ld [$1a11], sp
    ld c, $05
    ld a, [de]
    rrca
    inc b
    nop
    ld de, $1d0b
    inc b
    nop
    ld de, $0811
    dec c
    ld b, $12
    jr nz, @+$1e

    jr jr_00e_650f

    inc d
    ld a, [de]
    ld [bc], a

jr_00e_6504:
    nop
    dec c
    ld a, [de]
    inc de
    inc b
    dec bc
    dec bc
    dec e
    inc de
    rlca
    inc b

jr_00e_650f:
    jr jr_00e_653b

    ld de, $1a04
    dec b
    nop
    ld a, [bc]
    inc b
    dec e
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
    ld h, $0c
    nop
    inc bc
    inc b
    ld a, [de]
    ld [$1a0d], sp
    inc c
    ld c, $0d
    inc de
    nop
    dec c
    nop
    ld h, $1d
    ld [de], a

jr_00e_653b:
    inc de
    nop
    inc c
    rrca
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    jr nz, @+$21

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
    ld a, [bc]
    inc b
    jr @+$22

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld [$1100], sp
    jr jr_00e_658a

    ld d, $08
    inc de
    rlca
    dec e
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
    nop
    ld de, $0713
    nop
    ld h, $1d
    ld c, $0d
    ld a, [de]

jr_00e_658a:
    ld [$2013], sp
    rra
    jr jr_00e_659e

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$120d], sp
    ld [$0403], sp
    dec e
    nop
    ld a, [de]

jr_00e_659e:
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    ld a, [de]
    ld bc, $0d14
    ld b, $00
    dec bc
    ld c, $16
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0e0e
    ld a, [bc]
    inc c
    nop
    ld de, $1d0a
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [$080d], sp
    inc de
    ld [$0b00], sp
    ld [de], a
    dec e
    add hl, bc
    jr nz, jr_00e_65e5

    jr nz, @+$1c

    ld [$0f0c], sp
    ld de, $0d08
    inc de
    inc b
    inc bc
    ld a, [de]
    ld c, $0d
    dec e
    ld [$2013], sp

jr_00e_65e5:
    rra
    jr @+$10

    inc d
    ld a, [de]
    ld bc, $0604
    ld [$1a0d], sp
    ld de, $0004
    inc bc
    ld [$060d], sp
    dec h
    ld h, $03
    inc b
    ld [bc], a
    jr nz, @+$1c

    dec [hl]
    inc de
    rlca
    inc h
    ld a, [de]
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    dec e
    inc bc
    ld de, $0f0e
    rrca
    inc b
    inc bc
    ld a, [de]
    ld bc, $2118
    dec e
    rrca
    ld de, $010e
    nop
    ld bc, $180b
    ld a, [de]
    inc de
    ld c, $1d
    nop
    rrca
    ld c, $0b
    ld c, $06
    ld [$0419], sp
    ld a, [de]
    nop
    ld b, $00
    ld [$200d], sp
    inc e
    ld [$131a], sp
    ld c, $0b
    inc bc
    ld a, [de]
    rlca
    ld [$1a0c], sp
    inc de
    ld c, $1d
    ld b, $04
    inc de
    ld a, [de]
    dec bc
    ld c, $12
    inc de
    jr nz, @+$22

    jr nz, @+$1c

    ld [$021d], sp
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld a, [de]
    rlca
    ld [$1d12], sp
    add hl, bc
    inc b
    nop
    dec bc
    ld c, $14
    ld [de], a
    jr jr_00e_6688

    inc e
    ld [$131a], sp
    rlca
    ld [$0a0d], sp
    ld a, [de]
    ld [$152a], sp
    inc b
    ld a, [de]
    dec b
    ld c, $14
    dec c
    inc bc
    inc de
    rlca
    inc b
    ld a, [de]
    ld c, $0d
    inc b
    ld hl, $091a
    ld c, $07
    dec c

jr_00e_6688:
    dec e
    ld [de], a
    inc de
    inc b
    ld de, $160d
    ld c, $0e
    inc bc
    daa
    inc e
    inc b
    dec d
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    ld c, $14
    ld b, $07
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    ld [$1d12], sp
    inc c
    nop
    ld de, $0811
    inc b
    inc bc
    dec h
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    ld b, $08
    dec d
    inc b
    ld [de], a
    dec e
    inc c
    inc b
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $1318
    rlca
    ld [$060d], sp
    ld a, [de]
    ld [$001d], sp
    ld [de], a
    ld a, [bc]
    ld a, [de]
    dec b
    ld c, $11
    jr nz, jr_00e_66ed

    rlca
    ld [$1a12], sp
    inc c
    nop
    ld de, $0811
    nop
    ld b, $04
    ld a, [de]
    ld [$1d12], sp
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    nop
    dec c
    ld a, [de]
    ld c, $01
    ld [de], a
    inc de

jr_00e_66ed:
    nop
    ld [bc], a
    dec bc
    inc b
    ld hl, $0e1d
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    ld [$061a], sp
    inc b
    inc de
    ld a, [de]
    rlca
    ld [$1a0c], sp
    inc de
    ld c, $1d
    ld b, $04
    inc de
    ld a, [de]
    ld de, $0308
    ld a, [de]
    ld c, $05
    ld a, [de]
    rlca
    ld [$1d12], sp
    ld d, $08
    dec b
    inc b
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    ld [$0b2a], sp
    dec bc
    dec e
    ld de, $0004
    dec bc
    dec bc
    jr jr_00e_6745

    ld bc, $1a04
    dec bc
    ld [$0815], sp
    dec c
    ld b, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    ld [$0706], sp
    ld a, [de]
    dec bc
    ld [$0405], sp
    daa
    ld h, $1f

jr_00e_6745:
    jr @+$10

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
    inc bc
    ld [$1100], sp
    jr jr_00e_6772

    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld bc, $0e0e
    ld a, [bc]
    inc c
    nop
    ld de, $040a
    inc bc
    ld a, [de]
    rrca
    nop
    ld b, $04
    jr nz, @+$21

    jr jr_00e_6780

jr_00e_6772:
    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]

jr_00e_6780:
    ld c, $05
    nop
    ld a, [de]
    inc bc
    ld [$1311], sp
    jr @+$1c

    ld c, $05
    dec b
    ld [$0402], sp
    dec e
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    dec e
    dec bc
    ld [$040a], sp
    ld a, [de]
    nop
    dec c
    jr jr_00e_67ce

    ld c, $13
    rlca
    inc b
    ld de, $011d
    inc d
    ld [$030b], sp
    ld [$060d], sp
    jr nz, jr_00e_67e3

    jr @+$10

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld c, $0d
    ld a, [de]

jr_00e_67ce:
    nop
    ld a, [de]
    db $10
    inc d
    ld [$1304], sp
    dec e
    ld [de], a
    inc de
    ld de, $0404
    inc de
    jr nz, jr_00e_67fa

    jr jr_00e_67ee

    inc d
    ld a, [de]
    nop

jr_00e_67e3:
    ld de, $1a04
    nop
    inc c
    nop
    add hl, de
    inc b
    inc bc
    ld a, [de]
    nop

jr_00e_67ee:
    inc de
    dec e
    rlca
    ld c, $16
    ld a, [de]
    db $10
    inc d
    ld [$1304], sp
    ld a, [de]

jr_00e_67fa:
    ld [$1a13], sp
    ld [$2712], sp
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
    dec bc
    ld c, $01
    ld bc, $1a18
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld c, $05
    dec b
    ld [$0402], sp
    ld a, [de]
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    jr nz, jr_00e_6849

    inc de
    rlca
    inc b
    ld de, $1a04
    ld [$1a12], sp
    nop
    ld a, [de]
    rlca
    nop
    dec bc
    dec bc
    ld d, $00
    jr jr_00e_6848

    dec c
    ld a, [de]
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]

jr_00e_6848:
    nop

jr_00e_6849:
    dec c
    inc bc
    dec e
    nop
    ld a, [de]
    ld [de], a
    inc de
    nop
    ld [$0211], sp
    nop
    ld [de], a
    inc b
    ld a, [de]
    inc de
    ld c, $1d
    jr jr_00e_686b

    inc d
    ld de, $0b1a
    inc b
    dec b
    inc de
    jr nz, jr_00e_6885

    inc de
    rlca
    inc b
    ld a, [de]
    dec bc

jr_00e_686b:
    ld c, $0d
    ld b, $1a
    rlca
    nop
    dec bc
    dec bc
    ld d, $00
    jr @+$1f

    ld de, $0d14
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    inc b
    dec c
    ld b, $13

jr_00e_6885:
    rlca
    ld a, [de]
    ld c, $05
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    jr nz, jr_00e_68b6

    jr jr_00e_68a7

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    ld [$060d], sp
    ld a, [de]

jr_00e_68a7:
    ld bc, $1318
    rlca
    inc b
    ld a, [de]
    inc b
    dec c
    inc de
    ld de, $0d00
    ld [bc], a
    inc b
    ld a, [de]

jr_00e_68b6:
    inc de
    ld c, $1a
    nop
    dec c
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, @+$21

    inc de
    rlca
    ld [$1a12], sp
    ld b, $14
    jr jr_00e_68e6

    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    ld bc, $1a04
    ld [$1a0d], sp
    nop
    ld a, [de]
    dec bc
    ld c, $13
    ld a, [de]
    ld c, $05
    dec e
    rrca
    nop

jr_00e_68e6:
    ld [$270d], sp
    inc e
    jr @+$10

    inc d
    ld a, [de]
    rlca
    ld c, $0f
    inc b
    ld a, [de]
    rlca
    inc b
    dec e
    ld de, $0204
    ld c, $15
    inc b
    ld de, $2712
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    inc b
    ld de, $0b08
    inc b
    dec e
    dec b
    inc d
    ld de, $080d
    ld [de], a
    rlca
    ld [$060d], sp
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    nop
    dec e
    inc bc
    ld c, $02
    inc de
    ld c, $11
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld c, $05
    dec b
    ld [$0402], sp
    jr nz, @+$1e

    jr jr_00e_6943

    inc d
    ld a, [de]
    ld b, $0b
    nop
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    nop
    ld de, $140e
    dec c

jr_00e_6943:
    inc bc
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    inc b
    ld de, $0413
    inc bc
    ld a, [de]
    ld de, $0e0e
    inc c
    dec e
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $0d08
    ld b, $1a
    ld [$1a05], sp
    nop
    dec e
    dec c
    inc d
    ld de, $0412
    ld a, [de]
    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld [de], a
    rlca
    ld c, $16
    dec e
    inc d
    rrca
    ld a, [de]
    ld [de], a
    ld c, $0e
    dec c
    jr nz, @+$21

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
    ld [bc], a
    nop
    ld bc, $0d08
    inc b
    inc de
    ld a, [de]
    ld d, $07
    inc b
    ld de, $1d04
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $02
    inc de
    ld c, $11
    ld a, [de]
    ld a, [bc]
    inc b
    inc b
    rrca
    ld [de], a
    dec e
    dec d
    ld [$0b00], sp
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    jr nz, @+$21

    nop
    ld a, [de]
    ld [bc], a
    ld c, $0c
    ld bc, $0d08
    nop
    inc de
    ld [$0d0e], sp
    ld a, [de]
    dec bc
    ld c, $02
    ld a, [bc]
    ld a, [bc]
    inc b
    inc b
    rrca
    ld [de], a
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    dec b
    ld [$040b], sp
    dec e
    ld [bc], a
    nop
    ld bc, $0d08
    inc b
    inc de
    ld a, [de]
    dec bc
    ld c, $02
    ld a, [bc]
    inc b
    inc bc
    jr nz, jr_00e_6a12

    rrca
    inc b
    ld de, $0007
    rrca
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    ld a, [bc]
    inc b
    inc b
    rrca
    dec e
    ld c, $14
    inc de
    ld a, [de]
    ld d, $0e
    inc d
    dec bc
    inc bc
    ld hl, $0401

jr_00e_6a12:
    dec e
    ld [de], a
    dec c
    ld c, $0e
    rrca
    inc b
    ld de, $1a12
    ld c, $11
    dec e
    rrca
    ld de, $1508
    nop
    inc de
    inc b
    dec e
    inc bc
    inc b
    inc de
    inc b
    ld [bc], a
    inc de
    ld [$0415], sp
    ld [de], a
    jr nz, @+$21

    ld [$1a05], sp
    jr jr_00e_6a46

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld de, $0004
    inc bc
    dec e
    inc de

jr_00e_6a46:
    rlca
    inc b
    ld a, [de]
    inc b
    jr jr_00e_6a50

    ld a, [de]
    ld [bc], a
    rlca
    nop

jr_00e_6a50:
    ld de, $1a13
    dec b
    ld de, $0c0e
    ld d, $07
    inc b
    ld de, $1a04
    jr jr_00e_6a6d

    inc d
    ld a, [de]
    nop
    ld de, $2504
    dec e
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    jr jr_00e_6a7b

jr_00e_6a6d:
    inc d
    ld a, [de]
    dec c
    inc b
    inc b
    inc bc
    dec e
    ld b, $0b
    nop
    ld [de], a
    ld [de], a
    inc b
    ld [de], a

jr_00e_6a7b:
    daa
    rra
    jr jr_00e_6a8d

    inc d
    ld a, [de]
    ld de, $0004
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    nop
    inc de

jr_00e_6a8d:
    ld [$0d04], sp
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    dec b
    ld [$040b], sp
    jr nz, jr_00e_6ab6

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
    inc bc
    inc d
    ld de, $0d08
    ld b, $1a
    rlca
    ld [$1a12], sp
    dec bc
    nop
    ld [de], a

jr_00e_6ab6:
    inc de
    dec e
    rrca
    rlca
    jr jr_00e_6ace

    ld [$0002], sp
    dec bc
    ld a, [de]
    ld d, $00
    ld [de], a
    dec e
    ld [de], a
    inc de
    ld de, $0d0e
    ld b, $0b
    jr @+$1c

jr_00e_6ace:
    inc d
    ld de, $0406
    inc bc
    ld a, [de]
    inc de
    ld c, $1d
    db $10
    inc d
    ld [$1a13], sp
    ld [de], a
    inc c
    ld c, $0a
    ld [$060d], sp
    jr nz, jr_00e_6b0b

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld de, $0204
    inc b
    ld [$130f], sp
    jr nz, jr_00e_6b13

    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rlca
    nop
    dec c
    inc bc
    dec e
    ld d, $11
    ld [$1313], sp
    inc b

jr_00e_6b0b:
    dec c
    ld a, [de]
    dec c
    ld c, $13
    inc b
    ld a, [de]
    dec c

jr_00e_6b13:
    inc b
    nop
    ld de, $131d
    rlca
    inc b
    ld a, [de]
    ld bc, $130e
    inc de
    ld c, $0c
    ld a, [de]
    ld d, $07
    ld [$0702], sp
    dec e
    ld de, $0004
    inc bc
    ld [de], a
    inc h
    inc e
    ld h, $11
    inc b
    db $10
    inc d
    inc b
    ld [de], a
    inc de
    inc b
    inc bc
    dec e
    inc bc
    inc b
    dec bc
    ld [$0415], sp
    ld de, $1a18
    inc de
    ld c, $1a
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
    ld bc, $1a18
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc b
    ld [bc], a
    ld de, $1304
    nop
    ld de, $1a18
    inc c
    nop
    ld de, $0713
    nop
    dec e
    dec d
    ld [$0a02], sp
    inc b
    ld de, $2012
    ld h, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
