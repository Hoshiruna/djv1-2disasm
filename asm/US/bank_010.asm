; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    add b
    ld b, b
    and b
    ld b, b
    ret nc

    ld b, b
    inc [hl]
    ld b, c
    ld c, [hl]
    ld b, c
    ld e, c
    ld b, d
    ld [hl], h
    ld b, d
    push hl
    ld b, e
    ldh a, [c]
    ld b, e
    ld a, b
    ld b, h
    adc b
    ld b, h
    rst RST_00
    ld b, h
    add l
    ld b, l
    and h
    ld b, l
    jp z, $f445

    ld b, l
    ld h, e
    ld b, [hl]
    add e
    ld b, [hl]
    sbc d
    ld b, [hl]
    nop
    ld b, a
    dec a
    ld b, a
    cp c
    ld b, a
    sub [hl]
    ld c, e
    pop de
    ld c, h
    db $fd
    ld c, h
    cp l
    ld c, l
    adc l
    ld c, [hl]
    ld c, $4f
    sub l
    ld c, a
    rst RST_08
    ld c, a
    ld h, $50
    ld c, [hl]
    ld d, b
    ld l, [hl]
    ld d, b
    rla
    ld d, c
    add b
    ld d, c
    or $51
    or e
    ld d, d
    inc [hl]
    ld d, e
    sbc h
    ld d, e
    ret nc

    ld d, e
    inc hl
    ld d, h
    adc h
    ld d, h
    xor c
    ld d, h
    sbc h
    ld d, l
    db $fd
    ld d, l
    ld d, c
    ld d, [hl]
    sbc d
    ld d, [hl]
    pop de
    ld d, [hl]
    dec [hl]
    ld d, a
    ld [hl], h
    ld d, a
    ld c, h
    ld e, b
    xor [hl]
    ld e, b
    db $fd
    ld e, b
    ld [hl], a
    ld e, c
    db $dd
    ld e, c
    xor a
    ld e, d
    dec d
    ld e, e
    ld b, l
    ld e, e
    adc b
    ld e, [hl]
    and a
    ld h, b
    inc b
    ld h, d
    ld a, b
    ld h, d
    dec [hl]
    ld h, e
    rst RST_10
    ld h, e
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
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
    inc bc
    ld de, $1600
    inc b
    ld de, $2012
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
    inc c
    ld de, $1a20
    ld [de], a
    inc de
    inc b
    ld de, $160d
    ld c, $0e
    inc bc
    ld a, [de]
    ld [$1d12], sp
    ld [$1a0d], sp
    nop
    ld a, [de]
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
    jr nz, jr_010_40ef

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $170e
    ld a, [de]
    ld c, $05
    dec e
    inc de
    ld [$1212], sp
    inc d
    inc b
    ld [de], a
    jr nz, @+$1e

    jr jr_010_40f7

    inc d
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16

jr_010_40ef:
    ld a, [de]
    rlca
    ld c, $16
    ld a, [de]
    inc de
    ld c, $1d

jr_010_40f7:
    inc d
    ld [de], a
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    inc c
    dec h
    dec e
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    jr jr_010_4117

    inc d
    jr z, jr_010_4128

    jr jr_010_411c

    inc d
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    rrca
    inc d

jr_010_4117:
    inc de
    ld a, [de]
    ld c, $0d
    inc b

jr_010_411c:
    dec e
    inc de
    ld c, $1a
    jr @+$10

    inc d
    ld de, $0d1a
    ld c, $12

jr_010_4128:
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld bc, $0e0b
    ld d, $20
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $170e
    ld a, [de]
    ld c, $05
    dec e
    ld [bc], a
    rlca
    ld c, $02
    ld c, $0b
    nop
    inc de
    inc b
    ld [de], a
    jr nz, jr_010_416d

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
    ld de, $131a
    rlca
    nop
    inc de
    ld [de], a
    nop
    jr @+$14

    dec h
    ld a, [de]
    ld h, $12
    inc de
    inc b
    ld de, $160d

jr_010_416d:
    ld c, $0e
    inc bc
    dec h
    dec e
    inc de
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    inc c
    jr jr_010_4197

    dec b
    ld [$000d], sp
    dec bc
    dec e
    ld d, $00
    ld de, $080d
    dec c
    ld b, $20
    inc e
    ld a, [bc]
    inc b
    inc b
    rrca
    ld a, [de]
    nop
    ld d, $00
    jr jr_010_41b0

    dec b

jr_010_4197:
    ld de, $0c0e
    dec e
    dec d
    ld [$0a02], sp
    inc b
    ld de, $2512
    ld a, [de]
    ld c, $11
    dec e
    jr jr_010_41b7

    inc d
    ld de, $161a
    ld [$0405], sp

jr_010_41b0:
    ld a, [de]
    ld d, $08
    dec bc
    dec bc
    dec e
    dec bc

jr_010_41b7:
    inc b
    nop
    ld de, $1a0d
    nop
    dec bc
    dec bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    inc b
    inc de
    nop
    ld [$120b], sp
    jr nz, jr_010_41e9

    ld [$031a], sp
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    ld a, [de]
    jr jr_010_41eb

    inc d
    ld de, $0811
    ld [bc], a
    rlca
    ld a, [de]
    ld d, $08
    dec b
    inc b
    ld a, [de]

jr_010_41e9:
    ld d, $08

jr_010_41eb:
    dec bc
    dec bc
    dec e
    dec bc
    ld c, $0e
    ld a, [bc]
    ld a, [de]
    inc de
    ld c, $0e
    ld a, [de]
    dec b
    nop
    dec d
    ld c, $11
    nop
    ld bc, $180b
    inc d
    rrca
    ld c, $0d
    ld a, [de]
    jr jr_010_4215

    inc d
    ld a, [de]
    ld [$1a0d], sp
    rlca
    inc b
    ld de, $161d
    ld [$0b0b], sp
    ld a, [de]

jr_010_4215:
    nop
    dec b
    inc de
    inc b
    ld de, $131a
    rlca
    nop
    inc de
    daa
    inc e
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    dec h
    ld a, [de]
    ld [$0c2a], sp
    dec e
    ld d, $00
    inc de
    ld [bc], a
    rlca
    ld [$060d], sp
    ld a, [de]
    jr jr_010_4248

    inc d
    jr nz, jr_010_4257

    ld [de], a
    ld c, $1d
    ld [de], a
    inc de
    nop
    jr jr_010_425f

    nop
    ld d, $00

jr_010_4248:
    jr jr_010_4264

    dec b
    ld de, $0c0e
    ld a, [de]
    inc c
    jr jr_010_426f

    ld b, $08
    ld de, $270b

jr_010_4257:
    ld h, $1f
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop

jr_010_425f:
    ld a, [de]
    rrca
    ld [$0204], sp

jr_010_4264:
    inc b
    ld a, [de]
    ld c, $05
    dec e
    ld [bc], a
    rlca
    ld c, $02
    ld c, $0b

jr_010_426f:
    nop
    inc de
    inc b
    jr nz, jr_010_4293

    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    inc de
    inc b
    dec c
    ld [de], a
    inc b
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    ld de, $0b04
    nop
    rla
    inc b
    ld [de], a
    ld a, [de]

jr_010_4293:
    nop
    ld [de], a
    dec e
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
    inc de
    nop
    ld a, [bc]
    inc b
    ld [de], a
    inc b
    dec b
    dec b
    inc b
    ld [bc], a
    inc de
    jr nz, jr_010_42cc

    rlca
    inc b
    ld a, [de]
    ld bc, $0604
    ld [$120d], sp
    ld a, [de]
    inc de
    ld c, $1d
    inc c
    inc d
    inc c
    ld bc, $040b
    dec h
    ld a, [de]
    ld h, $06
    ld c, $13
    inc de
    nop
    dec e

jr_010_42cc:
    dec b
    ld c, $0b
    dec bc
    ld c, $16
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
    ld de, $001a
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    dec e
    inc bc
    inc b
    ld [de], a
    inc de
    ld de, $180e
    ld a, [de]
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
    ld d, $07
    inc b
    dec c
    dec e
    ld d, $04
    ld a, [hl+]
    ld de, $1a04
    inc bc
    ld c, $0d
    inc b
    jr nz, jr_010_433e

    jr nz, jr_010_433c

    ld [$2a13], sp
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
    nop
    ld [bc], a
    inc b
    ld a, [de]
    inc bc
    ld [$1a03], sp
    nop
    dec bc
    dec bc
    ld a, [de]

jr_010_433c:
    inc de
    rlca

jr_010_433e:
    inc b
    dec e
    inc bc
    ld [$1311], sp
    jr jr_010_4360

    ld d, $0e
    ld de, $1a0a
    nop
    dec c
    inc bc
    dec e
    inc de
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
    inc de

jr_010_4360:
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    ld [de], a
    inc de
    inc b
    ld de, $080c
    dec c
    inc bc
    jr nz, jr_010_438f

    jr nz, @+$1e

    ld [$0c2a], sp
    ld a, [de]
    dec c
    ld c, $13
    ld a, [de]
    ld d, $0e
    ld de, $0811
    inc b
    inc bc
    dec e
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    ld de, $2012

jr_010_438f:
    jr nz, jr_010_43b1

    dec e
    ld [de], a
    rlca
    inc b
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    ld [de], a
    inc d
    dec b
    dec b
    ld c, $02
    nop
    inc de
    inc b
    dec e
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]
    nop
    dec c
    jr jr_010_43bc

    dec c
    inc b
    ld a, [de]

jr_010_43b1:
    ld [bc], a
    nop
    dec c
    dec e
    dec b
    ld [$030d], sp
    ld a, [de]
    rlca
    inc b

jr_010_43bc:
    ld de, $2020
    jr nz, @+$28

    inc e
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    inc bc
    ld de, $0508
    inc de
    ld [de], a
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    dec e
    ld [$130d], sp
    ld c, $1a
    nop
    ld a, [de]
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
    jr nz, jr_010_4404

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $1f20
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc b
    inc bc
    ld de, $1904
    ld [$040d], sp
    dec e
    nop
    rrca
    rrca
    inc b

jr_010_4404:
    nop
    ld de, $1a12
    inc de
    ld c, $1a
    ld bc, $1d04
    rlca
    nop
    dec d
    ld [$060d], sp
    ld a, [de]
    nop
    ld a, [de]
    ld de, $1300
    rlca
    inc b
    ld de, $001d
    inc bc
    dec d
    inc b
    ld de, $0412
    ld a, [de]
    inc b
    dec b
    dec b
    inc b
    ld [bc], a
    inc de
    ld a, [de]
    ld c, $0d
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    dec bc
    inc b
    inc b
    rrca
    ld [$060d], sp
    ld a, [de]
    inc c
    nop
    dec c
    jr nz, jr_010_445e

    rlca
    inc b
    ld a, [de]
    ld b, $08
    dec d
    inc b
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    rlca
    ld c, $11
    inc de
    dec h
    dec e
    ld [de], a
    inc de
    ld de, $0d00
    ld b, $0b
    inc b
    inc bc
    ld a, [de]

jr_010_445e:
    ld [bc], a
    ld de, $1a18
    nop
    dec c
    inc bc
    dec e
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    db $10
    inc d
    ld [$1304], sp
    ld [de], a
    ld a, [de]
    inc bc
    ld c, $16
    dec c
    jr nz, jr_010_4497

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0304
    ld de, $0e0e
    inc c
    jr nz, jr_010_44a7

    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    inc c
    nop
    dec c
    ld a, [de]
    ld [$1d12], sp
    ld [de], a
    dec c

jr_010_4497:
    ld c, $11
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    ld c, $1a
    dec bc
    ld c, $14
    inc bc
    dec bc
    jr @+$27

jr_010_44a7:
    jr @+$10

    inc d
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]
    ld [de], a
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld [$1d0d], sp
    nop
    ld a, [de]
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
    jr nz, jr_010_44e6

    jr jr_010_44d7

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    ld a, [de]
    ld [de], a
    inc c
    nop
    dec bc

jr_010_44d7:
    dec bc
    dec e
    ld bc, $0304
    ld de, $0e0e
    inc c
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld a, [de]

jr_010_44e6:
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
    ld a, [de]
    jr jr_010_451b

    inc d
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    dec e
    jr jr_010_4524

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]

jr_010_451b:
    ld [de], a
    inc c
    inc b
    dec bc
    dec bc
    inc b
    inc bc
    dec e
    inc de

jr_010_4524:
    rlca
    nop
    inc de
    ld a, [de]
    dec b
    ld de, $0600
    ld de, $0d00
    ld [bc], a
    inc b
    dec e
    ld bc, $0504
    ld c, $11
    inc b
    daa
    inc e
    rlca
    inc b
    nop
    dec d
    jr jr_010_455a

    ld [de], a
    dec c
    ld c, $11
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
    ld bc, $0304
    ld a, [de]
    ld [$030d], sp
    ld [$0002], sp

jr_010_455a:
    inc de
    inc b
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    inc c
    nop
    dec c
    dec e
    inc de
    rlca
    inc b
    ld de, $1a04
    ld [$1a12], sp
    ld [$1a0d], sp
    nop
    ld a, [de]
    inc bc
    inc b
    inc b
    rrca
    ld [de], a
    dec bc
    inc b
    inc b
    rrca
    jr nz, jr_010_45a4

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
    dec bc
    inc b
    dec c
    ld b, $13
    rlca
    ld d, $00
    dec bc
    dec bc
    ld a, [de]
    inc c
    ld [$1111], sp
    ld c, $11
    jr nz, jr_010_45c3

jr_010_45a4:
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld de, $1300
    rlca
    inc b
    ld de, $041d
    rla
    rrca
    inc b
    dec c
    ld [de], a
    ld [$0415], sp
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [$060d], sp

jr_010_45c3:
    dec e
    dec bc
    nop
    inc c
    rrca
    jr nz, @+$21

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0304
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    inc c
    ld [$1212], sp
    ld a, [de]
    dec d
    ld [$0a02], sp
    inc b
    ld de, $1a12
    ld [$1d12], sp
    dec bc
    jr jr_010_45f5

    dec c
    ld b, $1a
    ld c, $0d
    jr nz, jr_010_4613

    inc de

jr_010_45f5:
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    inc c
    nop
    dec c
    ld a, [de]
    ld [$1a12], sp
    nop
    dec e
    ld de, $0004
    dec bc
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    inc b
    ld de, $1c27
    jr jr_010_4620

    inc d

jr_010_4613:
    ld a, [de]
    ld a, [bc]
    dec c
    ld c, $16
    ld a, [de]
    jr @+$10

    inc d
    ld a, [hl+]
    dec d
    inc b
    dec e

jr_010_4620:
    ld [de], a
    inc b
    inc b
    dec c
    ld a, [de]
    rlca
    inc b
    ld de, $011a
    inc b
    dec b
    ld c, $11
    inc b
    jr nz, jr_010_464e

    nop
    dec c
    inc bc
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    ld d, $07
    nop
    inc de
    ld a, [de]
    jr jr_010_464f

    inc d
    dec e
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    dec h
    ld a, [de]
    ld [de], a

jr_010_464e:
    rlca

jr_010_464f:
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    dec e
    ld de, $0004
    dec bc
    ld a, [de]
    ld [de], a
    ld [bc], a
    rlca
    inc b
    inc c
    inc b
    ld de, $1f27
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    nop
    ld [$1a11], sp
    ld c, $05
    dec e
    ld de, $0004
    inc bc
    ld [$060d], sp
    ld a, [de]
    ld b, $0b
    nop
    ld [de], a
    ld [de], a
    inc b
    ld [de], a
    jr nz, jr_010_46a2

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $0b00
    dec bc
    ld hl, $0e0f
    ld [$130d], sp
    dec e
    rrca
    inc b
    dec c
    jr nz, @+$21

    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a

jr_010_46a2:
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1a04
    nop
    dec e
    ld bc, $000b
    dec c
    ld a, [bc]
    ld a, [de]
    dec c
    ld c, $13
    inc b
    rrca
    nop
    inc bc
    jr nz, jr_010_46d6

    jr jr_010_46ca

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

jr_010_46ca:
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $0f
    ld a, [de]
    ld [de], a
    rlca
    inc b
    inc b

jr_010_46d6:
    inc de
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    inc bc
    ld a, [de]
    rlca
    nop
    ld [de], a
    ld a, [de]
    inc c
    nop
    dec c
    jr jr_010_4709

    ld [$030d], sp
    inc b
    dec c
    inc de
    nop
    inc de
    ld [$0d0e], sp
    ld [de], a
    ld a, [de]
    ld c, $0d
    dec e
    ld [$2013], sp
    rra
    dec c
    ld c, $13
    rlca
    ld [$060d], sp
    ld a, [de]
    rlca

jr_010_4709:
    nop
    rrca
    rrca
    inc b
    dec c
    ld [de], a
    dec e
    ld d, $07
    inc b
    dec c
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    inc d
    ld [de], a
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    inc b
    dec c
    jr nz, jr_010_4742

    ld [$1a13], sp
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $1a04
    ld c, $14
    inc de
    dec e
    ld c, $05
    ld a, [de]
    ld [$0a0d], sp
    jr nz, @+$21

    jr jr_010_474d

    inc d
    ld a, [de]
    inc d

jr_010_4742:
    ld [de], a
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    inc b
    dec c
    ld [bc], a

jr_010_474d:
    ld [$130b], sp
    ld c, $1a
    ld [de], a
    rlca
    nop
    inc bc
    inc b
    ld a, [de]
    ld c, $15
    inc b
    ld de, $131d
    rlca
    inc b
    ld a, [de]
    ld [$030d], sp
    inc b
    dec c
    inc de
    nop
    inc de
    ld [$0d0e], sp
    ld [de], a
    dec e
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    inc bc
    jr nz, jr_010_479a

    jr nz, jr_010_4796

    jr jr_010_4782

    ld [de], a
    dec h
    jr jr_010_4790

jr_010_4782:
    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    dec c
    ld c, $16
    ld a, [de]
    ld de, $0004
    inc bc

jr_010_4790:
    dec e
    ld d, $07
    nop
    inc de
    ld a, [de]

jr_010_4796:
    ld d, $00
    ld [de], a
    ld a, [de]

jr_010_479a:
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
    rrca
    ld de, $1504
    ld [$140e], sp
    ld [de], a
    dec e
    ld [de], a
    rlca
    inc b
    inc b
    inc de
    daa
    rra
    ld h, $21
    ld a, [de]
    inc de
    ld [$040c], sp
    inc de
    nop
    ld bc, $040b
    ld a, [de]
    ld hl, $321c
    inc h
    ld sp, $1a35
    nop
    inc c
    inc h
    dec e
    ld bc, $1a04
    ld [de], a
    inc d
    ld de, $1a04
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
    ld [bc], a
    dec bc
    ld c, $12
    inc b
    inc bc
    ld a, [de]
    inc d
    rrca
    nop
    dec c
    inc bc
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $0e18
    dec c
    inc b
    ld a, [de]
    ld [$1d12], sp
    ld b, $0e
    dec c
    inc b
    jr nz, jr_010_4823

    ld [hl-], a
    inc h
    inc sp
    jr nc, jr_010_4826

    nop
    inc c
    inc h
    dec e
    rrca
    inc d
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    ld de, $2012
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca
    inc b

jr_010_4823:
    ld a, [de]
    ld d, $0e

jr_010_4826:
    inc c
    inc b
    dec c
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec bc
    dec bc
    jr nz, jr_010_483f

    nop
    ld a, [bc]
    inc b
    ld a, [de]
    ld [de], a
    inc d
    ld de, $1a04
    ld [de], a
    rlca
    inc b

jr_010_483f:
    ld a, [de]
    ld [$1d12], sp
    ld bc, $140e
    dec c
    inc bc
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    inc d
    dec c
    ld [bc], a
    ld c, $0d
    ld [de], a
    ld [bc], a
    ld [$140e], sp
    ld [de], a
    jr nz, jr_010_4876

    ld [hl-], a
    inc h
    inc [hl]
    dec [hl]
    ld a, [de]
    nop
    inc c
    inc h
    dec e
    ld bc, $1a04
    ld d, $00
    ld [$0813], sp
    dec c
    ld b, $1a
    dec c
    inc b
    nop
    ld de, $131d
    rlca
    inc b

jr_010_4876:
    ld a, [de]
    dec b
    ld de, $0d0e
    inc de
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $051a
    ld c, $11
    nop
    ld [bc], a
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    ld de, $0811
    dec d
    nop
    dec bc
    jr nz, jr_010_48b0

    inc sp
    inc h
    jr nc, @+$32

    ld a, [de]
    nop
    inc c
    inc h
    dec e
    add hl, bc
    inc d
    inc c
    rrca
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    jr nz, jr_010_48b1

    jr nz, jr_010_48c5

    nop
    dec c
    inc bc
    dec e
    rrca

jr_010_48b0:
    dec bc

jr_010_48b1:
    nop
    ld [bc], a
    inc b
    ld a, [de]
    rlca
    ld [$1a0c], sp
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc de
    nop
    dec bc
    dec bc

jr_010_48c5:
    jr nz, jr_010_48e1

    ld bc, $1a04
    ld [de], a
    inc d
    ld de, $1d04
    rlca
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc d
    dec c
    ld [bc], a
    ld c, $0d
    ld [de], a
    ld [bc], a
    ld [$140e], sp
    ld [de], a
    jr nz, jr_010_48fd

jr_010_48e1:
    inc d
    ld [de], a
    inc b
    ld a, [de]
    ld sp, $0230
    ld [bc], a
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

jr_010_48fd:
    inc b
    dec e
    ld c, $0d
    ld a, [de]
    rlca
    ld [$200c], sp
    dec e
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    rlca
    ld [$1a12], sp
    ld b, $14
    dec c
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    inc de
    inc d
    dec b
    dec b
    jr nz, jr_010_493b

    inc sp
    inc h
    ld sp, $1a35
    nop
    inc c
    inc h
    dec e
    ld [bc], a
    nop
    inc de
    ld [bc], a
    rlca
    ld a, [de]
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    dec e
    ld bc, $0504
    ld c, $11
    inc b

jr_010_493b:
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    dec bc
    inc b
    nop
    dec d
    inc b
    ld [de], a
    dec e
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    ld [$0706], sp
    inc de
    jr nz, @+$1e

    inc sp
    inc h
    inc sp
    jr nc, jr_010_4974

    nop
    inc c
    inc h
    dec e
    ld b, $04
    inc de
    ld a, [de]
    add hl, bc
    ld c, $04
    jr jr_010_4981

    ld bc, $0704
    ld [$030d], sp
    dec e
    rlca
    ld [$1a12], sp
    inc bc
    inc b

jr_010_4974:
    ld [de], a
    ld a, [bc]
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    dec e
    ld [de], a
    rlca
    ld c, $0e

jr_010_4981:
    inc de
    ld a, [de]
    rlca
    ld [$1a0c], sp
    ld d, $08
    inc de
    rlca
    dec e
    nop
    ld [bc], a
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld b, $14
    dec c
    jr nz, jr_010_49b4

    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    rlca
    ld [$1a12], sp
    ld [bc], a
    nop
    ld de, $0a1a
    inc b
    jr jr_010_49ba

    jr nz, @+$1e

    inc sp
    inc h
    inc [hl]
    dec [hl]
    ld a, [de]
    nop
    inc c
    inc h
    dec e
    rrca

jr_010_49b4:
    dec bc
    nop
    dec c
    inc de
    ld a, [de]
    ld [de], a

jr_010_49ba:
    ld [$0604], sp
    inc b
    dec bc
    ld a, [hl+]
    ld [de], a
    dec e
    inc de
    rlca
    ld [$060d], sp
    ld [de], a
    ld a, [de]
    ld c, $0d
    ld a, [de]
    nop
    ld [bc], a
    inc b
    jr nz, @+$1f

    rrca
    inc d
    inc de
    ld a, [de]
    nop
    ld [bc], a
    inc b
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld b, $14
    dec c
    dec e
    ld bc, $0200
    ld a, [bc]
    jr nz, jr_010_49ff

    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    ld [de], a
    inc d
    ld de, $1d04
    rlca
    ld [$1a12], sp
    dec b
    ld [$060d], sp
    inc b
    ld de, $110f
    ld [$130d], sp
    ld [de], a

jr_010_49ff:
    dec e
    nop
    ld de, $1a04
    ld c, $0d
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $1318
    rlca
    ld [$060d], sp
    jr nz, @+$1e

    inc [hl]
    inc h
    jr nc, jr_010_4a47

    ld a, [de]
    nop
    inc c
    inc h
    dec e
    inc bc
    inc d
    inc c
    rrca
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0608
    ld a, [de]
    ld c, $0b
    inc bc
    dec e
    ld bc, $1300
    inc de
    dec bc
    inc b
    nop
    rla
    inc b
    ld a, [de]
    ld [$1d0d], sp
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc de
    ld de, $0d14

jr_010_4a47:
    ld a, [bc]
    jr nz, jr_010_4a67

    rrca
    inc d
    inc de
    ld a, [de]
    inc c
    nop
    rrca
    ld a, [de]
    ld [$1d0d], sp
    ld b, $0b
    ld c, $15
    inc b
    ld a, [de]
    ld bc, $170e
    jr nz, jr_010_4a7c

    inc [hl]
    inc h
    inc sp
    jr nc, jr_010_4a7f

    nop
    inc c

jr_010_4a67:
    inc h
    dec e
    dec bc
    inc b
    nop
    dec d
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0814
    dec bc
    inc bc
    ld [$060d], sp
    nop

jr_010_4a7c:
    dec c
    inc bc
    ld a, [de]

jr_010_4a7f:
    dec bc
    ld c, $02
    ld a, [bc]
    ld a, [de]
    inc d
    rrca
    jr nz, jr_010_4aa4

    dec [hl]
    inc h
    jr nc, jr_010_4abc

    ld a, [de]
    nop
    inc c
    inc h
    dec e
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $00
    jr jr_010_4ab6

    rlca
    ld c, $0c
    inc b
    dec h
    dec e
    rrca
    dec bc

jr_010_4aa4:
    nop
    dec c
    inc de
    ld a, [de]
    dec c
    inc b
    ld d, $1a
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    dec e
    dec bc
    inc b
    inc de

jr_010_4ab6:
    inc de
    inc b
    ld de, $081a
    dec c

jr_010_4abc:
    ld a, [de]
    nop
    ld [bc], a
    inc b
    ld a, [hl+]
    ld [de], a
    dec e
    dec b
    ld [$040b], sp
    jr nz, jr_010_4aef

    inc e
    jr jr_010_4ada

    inc d
    ld a, [de]
    ld [de], a
    rlca
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    jr jr_010_4ae4

    inc d
    ld de, $071d

jr_010_4ada:
    inc b
    nop
    inc bc
    ld a, [de]
    ld [$1a0d], sp
    nop
    inc c
    nop

jr_010_4ae4:
    add hl, de
    inc b
    inc c
    inc b
    dec c
    inc de
    dec h
    ld d, $07
    nop
    inc de

jr_010_4aef:
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    inc b
    inc de
    inc d
    rrca
    daa
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld d, $07
    nop
    inc de
    ld a, [de]
    nop
    ld a, [de]
    dec c
    ld [$0706], sp
    inc de
    inc c
    nop
    ld de, $1d04
    inc de
    ld c, $0e
    daa
    inc e
    ld [$1a05], sp
    jr jr_010_4b26

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b
    dec e
    inc d

jr_010_4b26:
    rrca
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    rrca
    ld de, $0e0e
    dec b
    ld a, [de]
    ld c, $05
    dec e
    jr jr_010_4b46

    inc d
    ld de, $081a
    dec c
    dec c
    ld c, $02
    inc b
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    nop

jr_010_4b46:
    dec c
    inc bc
    ld bc, $0811
    dec c
    ld b, $1a
    ld [$1a13], sp
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $0f
    ld [de], a
    ld a, [de]
    ld [de], a
    ld c, $0e
    dec c
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    dec e
    jr jr_010_4b78

    inc d
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    ld bc, $1a04
    ld [bc], a
    rlca
    nop
    ld de, $0406

jr_010_4b78:
    inc bc
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc c
    inc d
    ld de, $0403
    ld de, $001a
    dec c
    inc bc
    dec e
    ld a, [bc]
    ld [$0d03], sp
    nop
    rrca
    rrca
    ld [$060d], sp
    jr nz, jr_010_4bb5

    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    inc c
    nop
    dec c
    ld a, [de]
    ld de, $0004
    ld [bc], a
    inc de
    ld [de], a
    dec e
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c

jr_010_4bb5:
    inc b
    ld a, [de]
    nop
    ld [de], a
    ld [$1a13], sp
    inc de
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
    jr nz, jr_010_4be6

    ld [de], a
    rlca
    inc b
    ld a, [de]
    ld bc, $0604
    ld [$120d], sp
    ld a, [de]
    inc de
    ld c, $1d
    ld [de], a
    dec bc
    inc d
    ld de, $1a25
    ld h, $18
    ld c, $14
    ld a, [de]
    inc bc
    ld c, $0d

jr_010_4be6:
    ld a, [hl+]
    inc de
    dec e
    ld c, $16
    dec c
    ld a, [de]
    inc c
    inc b
    ld a, [de]
    add hl, bc
    ld c, $04
    jr jr_010_4c1c

    ld a, [de]
    ld [$0c2a], sp
    dec e
    inc de
    rlca
    ld de, $140e
    ld b, $07
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    jr jr_010_4c17

    inc d
    daa
    inc e
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld [de], a
    ld [$0f0c], sp
    dec bc
    inc b

jr_010_4c17:
    jr nz, jr_010_4c36

    jr @+$10

    inc d

jr_010_4c1c:
    ld a, [hl+]
    ld de, $1a04
    ld b, $0e
    dec c
    dec c
    nop
    ld a, [de]
    inc bc
    ld [$2004], sp
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld [$0c2a], sp
    ld a, [de]
    ld b, $0e
    dec c

jr_010_4c36:
    dec c
    nop
    dec e
    ld [bc], a
    ld c, $0d
    inc de
    ld [$140d], sp
    inc b
    ld a, [de]
    inc de
    ld c, $1a
    ld [de], a
    inc b
    inc b
    dec e
    add hl, bc
    ld c, $07
    dec c
    jr nz, @+$1e

    ld [de], a
    inc b
    inc b
    jr z, jr_010_4c6e

    inc de
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    dec b
    ld c, $11
    dec e
    jr @+$10

    inc d
    daa
    ld a, [de]
    inc de
    rlca
    ld [$1a12], sp
    ld b, $14
    dec c
    ld a, [de]

jr_010_4c6e:
    ld [$1d12], sp
    ld d, $07
    nop
    inc de
    ld a, [de]
    jr jr_010_4c86

    inc d
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]
    dec b
    ld c, $11
    dec e
    inc c
    inc b
    inc bc
    inc bc

jr_010_4c86:
    dec bc
    ld [$060d], sp
    ld a, [de]
    ld [$1a0d], sp
    inc c
    jr jr_010_4cae

    dec bc
    ld [$0405], sp
    daa
    ld h, $1c
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    rlca
    inc d
    inc bc
    inc bc
    inc b
    ld de, $121a
    rlca
    inc b
    inc bc
    ld de, $0508

jr_010_4cae:
    inc de
    ld [de], a
    ld a, [de]
    db $10
    inc d
    ld [$1304], sp
    dec bc
    jr jr_010_4cd6

    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    ld [$130d], sp
    ld c, $1a
    nop
    ld a, [de]
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
    jr nz, jr_010_4cf0

    inc de
    rlca
    ld [$1a12], sp

jr_010_4cd6:
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    inc b
    ld de, $011d
    inc b
    inc bc
    ld de, $0e0e
    inc c
    ld a, [de]
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $1d04
    inc de
    rlca

jr_010_4cf0:
    inc b
    ld a, [de]
    ld b, $14
    inc b
    ld [de], a
    inc de
    ld de, $0e0e
    inc c
    jr nz, jr_010_4d1c

    jr jr_010_4d0d

    inc d
    ld a, [de]
    dec d
    nop
    ld b, $14
    inc b
    dec bc
    jr jr_010_4d23

    ld de, $0204
    nop

jr_010_4d0d:
    dec bc
    dec bc
    nop
    ld a, [de]
    inc de
    rlca
    ld de, $0004
    inc de
    ld a, [de]
    ld d, $07
    inc b
    dec c

jr_010_4d1c:
    ld a, [de]
    jr jr_010_4d2d

    inc d
    dec e
    ld b, $0e

jr_010_4d23:
    inc de
    ld a, [de]
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [hl+]
    ld [de], a

jr_010_4d2d:
    dec e
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $1c20
    jr jr_010_4d46

    inc d
    ld a, [de]
    dec b
    ld [$1406], sp
    ld de, $0304
    ld a, [de]
    ld [$1d13], sp
    inc c

jr_010_4d46:
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1a04
    nop
    ld a, [de]
    inc de
    ld de, $0f00
    dec e
    ld bc, $1314
    ld a, [de]
    jr jr_010_4d69

    inc d
    ld a, [de]
    rlca
    nop
    inc bc
    ld a, [de]
    inc de
    ld c, $1a
    ld b, $0e
    dec e
    nop
    dec bc

jr_010_4d69:
    ld c, $0d
    ld b, $1a
    inc de
    ld c, $1a
    ld bc, $1a04
    ld [de], a
    inc d
    ld de, $2004
    inc e
    inc de
    rlca
    inc b
    jr jr_010_4d98

    inc c
    inc b
    dec c
    inc de
    ld [$0d0e], sp
    inc b
    inc bc
    ld a, [de]
    nop
    dec e
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    inc c
    nop
    ld [$1a0b], sp
    ld [de], a
    ld [bc], a
    rlca
    inc b

jr_010_4d98:
    inc c
    inc b
    dec e
    ld bc, $1314
    ld a, [de]
    jr jr_010_4daf

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    dec e
    ld de, $0204
    nop
    dec bc
    dec bc

jr_010_4daf:
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    inc b
    inc de
    nop
    ld [$120b], sp
    jr nz, jr_010_4ddc

    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c
    dec bc
    jr jr_010_4deb

    ld a, [de]
    ld [$1a13], sp
    ld [bc], a
    ld c, $0c
    inc b
    ld [de], a
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    inc de
    ld c, $1a
    jr jr_010_4de7

    inc d
    jr nz, jr_010_4dfc

jr_010_4ddc:
    jr nz, jr_010_4dfa

    jr @+$10

    inc d
    ld a, [de]
    ld de, $0c04
    inc b
    inc c

jr_010_4de7:
    ld bc, $1104
    ld a, [de]

jr_010_4deb:
    ld b, $0e
    ld [$060d], sp
    inc de
    ld c, $1a
    add hl, bc
    ld c, $04
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    rrca

jr_010_4dfa:
    dec bc
    nop

jr_010_4dfc:
    ld [bc], a
    inc b
    dec e
    nop
    ld de, $140e
    dec c
    inc bc
    ld a, [de]
    ld [hl-], a
    inc h
    inc [hl]
    dec [hl]
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    inc c
    ld c, $11
    dec c
    ld [$060d], sp
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    nop
    ld [de], a
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $081d
    dec c
    ld [de], a
    inc de
    ld de, $0214
    inc de
    inc b
    inc bc
    jr nz, jr_010_4e54

    ld bc, $1314
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld d, $00
    dec bc
    ld a, [bc]
    inc b
    inc bc
    dec e
    ld [$120d], sp
    ld [$0403], sp
    dec h
    ld a, [de]
    jr @+$10

jr_010_4e54:
    inc d
    ld a, [de]
    ld d, $04
    ld de, $1d04
    rlca
    ld [$1a13], sp
    rlca
    nop
    ld de, $1a03
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $0200
    ld a, [bc]
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rlca
    inc b
    nop
    inc bc
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]
    ld c, $14
    inc de
    jr nz, jr_010_4eac

    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc b
    inc bc
    ld de, $1904
    ld [$040d], sp
    dec e
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1a12
    inc de
    ld c, $1d
    ld bc, $1a04
    rlca
    nop
    dec d

jr_010_4eac:
    ld [$060d], sp
    ld a, [de]
    nop
    ld a, [de]
    ld de, $1300
    rlca
    inc b
    ld de, $0300
    dec d
    inc b
    ld de, $0412
    ld a, [de]
    inc b
    dec b
    dec b
    inc b
    ld [bc], a
    inc de
    ld a, [de]
    ld c, $0d
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    dec bc
    inc b
    inc b
    rrca
    ld [$060d], sp
    dec e
    dec b
    ld c, $11
    inc c
    jr nz, jr_010_4ef9

    jr jr_010_4eed

    inc d
    ld a, [de]
    rlca
    inc b
    nop
    ld de, $001a
    ld a, [de]
    ld [de], a
    rlca
    ld c, $11
    inc de

jr_010_4eed:
    dec h
    dec e
    nop
    ld b, $0e
    dec c
    ld [$0419], sp
    inc bc
    ld a, [de]
    ld [bc], a

jr_010_4ef9:
    ld de, $1a18
    nop
    dec c
    inc bc
    dec e
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    dec c
    ld c, $13
    rlca
    ld [$060d], sp
    jr nz, jr_010_4f2d

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
    inc de
    ld de, $0608
    ld b, $04
    ld de, $001a
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    rlca
    ld c, $0e
    inc de
    dec e

jr_010_4f2d:
    jr jr_010_4f3d

    inc d
    ld de, $061a
    inc d
    dec c
    jr nz, jr_010_4f53

    nop
    ld a, [de]
    rrca
    nop
    ld [de], a
    ld [de], a

jr_010_4f3d:
    inc b
    ld de, $1801
    ld a, [de]
    ld de, $0d14
    ld [de], a
    dec e
    dec b
    ld c, $11
    ld a, [de]
    ld [bc], a
    ld c, $15
    inc b
    ld de, $001a
    dec c

jr_010_4f53:
    inc bc
    dec e
    ld bc, $0604
    ld [$120d], sp
    ld a, [de]
    jr @+$06

    dec bc
    dec bc
    ld [$060d], sp
    ld a, [de]
    dec b
    ld c, $11
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0f
    ld [de], a
    jr nz, jr_010_4f8d

    inc de
    rlca
    inc b
    jr jr_010_4f90

    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_010_4f9b

    nop
    rrca
    rrca
    inc b
    nop
    ld de, $001a
    dec c
    inc bc
    ld a, [de]
    nop
    ld de, $0411

jr_010_4f8d:
    ld [de], a
    inc de
    dec e

jr_010_4f90:
    jr @+$10

    inc d
    jr nz, jr_010_4fb4

    inc de
    rlca
    inc b
    ld de, $2a04

jr_010_4f9b:
    ld [de], a
    ld a, [de]
    nop
    ld bc, $0e12
    dec bc
    inc d
    inc de
    inc b
    dec bc
    jr jr_010_4fb5

    ld c, $1a
    ld [bc], a
    rlca
    nop
    dec c
    ld b, $04
    jr nz, @+$1e

    inc de
    rlca

jr_010_4fb4:
    inc b

jr_010_4fb5:
    ld a, [de]
    ld d, $0e
    inc c
    nop
    dec c
    ld a, [de]
    ld [$1d12], sp
    ld [de], a
    inc de
    ld [$0b0b], sp
    ld a, [de]
    ld [de], a
    dec bc
    inc b
    inc b
    rrca
    ld [$060d], sp
    jr nz, jr_010_4fee

    inc de
    rlca
    ld de, $140e
    ld b, $07
    ld a, [de]
    jr jr_010_4fe7

    inc d
    ld de, $051a
    ld c, $06
    dec h
    dec e
    jr jr_010_4ff1

    inc d
    ld a, [de]
    ld d, $0e

jr_010_4fe7:
    dec c
    inc bc
    inc b
    ld de, $161a
    rlca

jr_010_4fee:
    nop
    inc de
    ld a, [hl+]

jr_010_4ff1:
    ld [de], a
    dec e
    ld b, $0e
    ld [$060d], sp
    ld a, [de]
    ld c, $0d
    jr z, jr_010_5019

    nop
    dec c
    inc bc
    ld a, [de]
    ld d, $07
    nop
    inc de
    ld a, [de]
    nop
    ld de, $1a04
    jr jr_010_501a

    inc d
    dec e
    inc bc
    ld c, $08
    dec c
    ld b, $1a
    ld d, $08
    inc de
    rlca
    ld a, [de]

jr_010_5019:
    inc de

jr_010_501a:
    rlca
    ld [$1d12], sp
    ld [bc], a
    ld c, $11
    rrca
    ld [de], a
    inc b
    daa
    rra
    jr @+$06

    rrca
    dec h
    ld a, [de]
    jr jr_010_503b

    inc d
    ld a, [de]
    inc bc
    ld [$1a03], sp
    ld c, $16
    inc b
    dec e
    ld [de], a
    ld [$0604], sp

jr_010_503b:
    inc b
    dec bc
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    ld c, $13
    ld a, [de]
    ld c, $05
    dec e
    inc c
    ld c, $0d
    inc b
    jr jr_010_5074

    rra
    nop
    ld a, [de]
    ld b, $11
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    inc d
    ld de, $1a04
    nop
    ld [$2a0d], sp
    inc de
    ld [bc], a
    rlca
    ld [$0a02], sp
    inc b
    dec c
    ld a, [de]
    dec b
    inc b
    inc b
    inc bc
    daa
    rra
    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c

jr_010_5074:
    dec bc
    jr jr_010_509c

    ld a, [de]
    nop
    ld a, [de]
    inc c
    inc d
    ld b, $06
    inc b
    ld de, $1409
    inc c
    rrca
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    ld [$1a0d], sp
    dec b
    ld de, $0d0e
    inc de
    ld c, $05
    ld a, [de]
    jr jr_010_50a5

    inc d
    daa
    inc e
    ld h, $0c

jr_010_509c:
    nop
    ld a, [de]
    nop
    dec bc
    ld d, $00
    jr @+$14

    ld a, [de]

jr_010_50a5:
    inc de
    ld c, $0b
    inc bc
    ld a, [de]
    inc c
    inc b
    ld [$1a13], sp
    ld d, $00
    ld [de], a
    ld a, [de]
    ld d, $11
    ld c, $0d
    ld b, $1a
    inc de
    nop
    dec e
    ld [de], a
    inc de
    inc b
    nop
    dec bc
    jr nz, jr_010_50df

    ld [de], a
    rlca
    inc b
    ld a, [de]
    nop
    dec bc
    ld [de], a
    ld c, $1a
    ld [de], a
    nop
    ld [$1a03], sp
    ld [$1d13], sp
    ld d, $00
    ld [de], a
    ld a, [de]
    ld d, $11
    ld c, $0d
    ld b, $1a
    inc de

jr_010_50df:
    nop
    ld a, [de]
    ld a, [bc]
    ld [$0b0b], sp
    dec h
    ld [de], a
    ld c, $1a
    add hl, bc
    inc b
    add hl, de
    ld a, [de]
    ld b, $08
    dec d
    inc b
    ld a, [de]
    inc c
    inc b
    ld a, [de]
    nop
    dec bc
    dec bc
    jr @+$06

    ld de, $0c1a
    ld c, $0d
    inc b
    jr jr_010_511c

    nop
    dec c
    inc bc
    dec e
    jr @+$10

    inc d
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    ld bc, $1a04
    dec b
    ld [$040d], sp
    daa
    ld h, $1f
    rlca
    inc b
    ld a, [de]
    nop
    ld [bc], a

jr_010_511c:
    ld [bc], a
    inc b
    rrca
    inc de
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    ld de, $0a1d
    ld [$030d], sp
    ld a, [de]
    ld c, $05
    dec b
    inc b
    ld de, $161a
    ld [$0713], sp
    dec e
    rlca
    ld [$1a12], sp
    inc c
    ld c, $13
    rlca
    inc b
    ld de, $122a
    dec e
    inc de
    rlca
    nop
    dec c
    ld a, [bc]
    ld [de], a
    jr nz, @+$1e

    jr jr_010_515c

    inc d
    ld a, [de]
    ld d, $00
    inc de
    ld [bc], a
    rlca
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    rlca
    inc b
    dec e

jr_010_515c:
    ld [de], a
    ld a, [bc]
    ld [$120f], sp
    ld a, [de]
    nop
    ld d, $00
    jr jr_010_5181

    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec e
    rlca
    ld c, $0f
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    ld a, [de]
    ld b, $08
    ld b, $06
    dec bc
    inc b
    jr nz, jr_010_519f

    ld [de], a

jr_010_5181:
    ld c, $02
    ld a, [bc]
    ld c, $27
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc d
    ld b, $06
    inc b
    ld de, $0f1a
    ld c, $14
    dec c
    ld [bc], a
    inc b
    ld [de], a
    ld c, $0d
    ld a, [de]
    jr jr_010_51ac

    inc d

jr_010_519f:
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc c
    ld c, $15
    inc b
    ld [de], a
    dec e
    nop

jr_010_51ac:
    ld [de], a
    ld a, [de]
    dec b
    nop
    ld [de], a
    inc de
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    nop
    inc de
    daa
    inc e
    nop
    ld a, [de]
    dec bc
    inc b
    dec b
    inc de
    dec h
    ld a, [de]
    nop
    ld a, [de]
    ld de, $0608
    rlca
    inc de
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    ld a, [de]
    ld de, $140e
    dec c
    inc bc
    rlca
    ld c, $14
    ld [de], a
    inc b
    daa
    dec e
    jr jr_010_51ef

    inc d
    ld a, [de]
    ld b, $0e
    ld a, [de]
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    ld [$1a0d], sp
    nop

jr_010_51ef:
    dec e
    rlca
    inc b
    nop
    rrca
    daa
    rra
    ld h, $13
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    dec e
    ld [bc], a
    rlca
    nop
    dec c
    ld b, $04
    daa
    ld h, $1a
    inc de
    rlca
    inc b
    dec e
    inc c
    inc d
    ld b, $06
    inc b
    ld de, $181a
    inc b
    dec bc
    dec bc
    ld [de], a
    daa
    inc e
    rlca
    inc b
    ld a, [de]
    inc d
    dec c
    dec bc
    ld c, $00
    inc bc
    ld [de], a
    ld a, [de]
    nop
    dec e
    ld d, $08
    ld [bc], a
    ld a, [bc]
    inc b
    inc bc
    ld a, [de]
    dec bc
    inc b
    dec b
    inc de
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [bc], a
    nop
    inc de
    ld [bc], a
    rlca
    inc b
    ld [de], a
    ld a, [de]
    jr jr_010_5255

    inc d
    ld a, [de]
    ld de, $0608
    rlca
    inc de
    dec e
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b

jr_010_5255:
    ld a, [de]
    ld a, [bc]
    ld [$1212], sp
    inc b
    ld de, $1c27
    rlca
    ld [$1a12], sp
    rrca
    inc d
    dec c
    ld [bc], a
    rlca
    ld a, [de]
    ld d, $00
    ld [de], a
    ld a, [de]
    nop
    dec e
    ld bc, $0004
    inc d
    inc de
    jr @+$22

    jr nz, jr_010_5297

    ld a, [de]
    jr jr_010_5288

    inc d
    ld a, [de]
    ld b, $0e
    dec e
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    ld [$1a0d], sp
    nop

jr_010_5288:
    ld a, [de]
    rlca
    inc b
    nop
    rrca
    dec h
    dec e
    ld c, $14
    inc de
    ld a, [de]
    ld [bc], a
    ld c, $0b
    inc bc

jr_010_5297:
    ld a, [de]
    ld bc, $0504
    ld c, $11
    inc b
    dec e
    jr jr_010_52af

    inc d
    ld a, [de]
    rlca
    ld [$1a13], sp
    inc de
    rlca
    inc b
    dec e
    ld b, $11
    ld c, $14

jr_010_52af:
    dec c
    inc bc
    daa
    rra
    ld h, $00
    ld de, $1a04
    jr jr_010_52c8

    inc d
    ld a, [de]
    ld a, [bc]
    ld [$0303], sp
    ld [$060d], sp
    jr z, jr_010_52eb

    inc de
    rlca
    inc b

jr_010_52c8:
    ld a, [de]
    inc c
    inc d
    ld b, $06
    inc b
    ld de, $121a
    nop
    jr jr_010_52e6

    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    ld [de], a
    dec bc
    inc d
    ld b, $12
    ld a, [de]
    jr @+$10

jr_010_52e6:
    inc d
    ld [$1a0d], sp
    inc de

jr_010_52eb:
    rlca
    inc b
    ld a, [de]
    dec b
    nop
    ld [bc], a
    inc b
    ld a, [de]
    ld bc, $0504
    ld c, $11
    inc b
    jr jr_010_5309

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [de]
    nop
    dec c
    ld [de], a
    ld d, $04
    ld de, $1c20

jr_010_5309:
    ld [de], a
    inc de
    nop
    ld de, $1a12
    inc b
    rla
    rrca
    dec bc
    ld c, $03
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    jr jr_010_532b

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    ld c, $14
    inc de
    ld a, [de]
    dec bc
    ld [$040a], sp

jr_010_532b:
    ld a, [de]
    nop
    dec bc
    ld [$0706], sp
    inc de
    daa
    rra
    jr jr_010_5344

    inc d
    ld a, [de]
    ld [de], a
    rlca
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    jr jr_010_534e

    inc d
    ld de, $071d

jr_010_5344:
    inc b
    nop
    inc bc
    ld a, [de]
    ld b, $11
    ld c, $06
    ld b, $08

jr_010_534e:
    dec bc
    jr jr_010_536b

    nop
    ld [de], a
    dec e
    jr jr_010_5364

    inc d
    ld a, [de]
    ld b, $04
    inc de
    ld a, [de]
    inc d
    rrca
    jr nz, jr_010_537c

    jr jr_010_5370

    inc d
    ld a, [de]

jr_010_5364:
    dec c
    ld c, $13
    ld [$0402], sp
    ld a, [de]

jr_010_536b:
    inc de
    rlca
    inc b
    dec e
    inc c

jr_010_5370:
    inc d
    ld b, $06
    inc b
    ld de, $081a
    ld [de], a
    ld a, [de]
    dec c
    ld c, $16

jr_010_537c:
    ld a, [de]
    ld b, $0e
    dec c
    inc b
    nop
    ld [de], a
    ld a, [de]
    jr jr_010_5394

    inc d
    ld a, [de]
    ld [bc], a
    rlca
    inc b
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    jr jr_010_539e

    inc d
    ld de, $0f1d

jr_010_5394:
    ld c, $02
    ld a, [bc]
    inc b
    inc de
    ld [de], a
    jr nz, jr_010_53bb

    rlca
    inc b

jr_010_539e:
    ld a, [de]
    ld [de], a
    nop
    jr jr_010_53b5

    dec h
    dec e
    ld h, $06
    ld c, $1a
    ld c, $0d
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    dec e

jr_010_53b5:
    ld c, $0d
    inc b
    jr nz, jr_010_53d4

    inc de

jr_010_53bb:
    rlca
    inc b
    dec c
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    dec e
    rrca
    nop
    jr jr_010_53e5

    inc c
    inc b
    daa
    ld h, $1f
    jr jr_010_53e0

    inc d
    ld a, [de]

jr_010_53d4:
    ld [bc], a
    inc d
    ld de, $0412
    ld a, [de]
    jr jr_010_53ea

    inc d
    ld de, $0b1d

jr_010_53e0:
    inc d
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    nop

jr_010_53e5:
    ld [de], a
    ld a, [de]
    jr jr_010_53f7

    inc d

jr_010_53ea:
    dec e
    inc bc
    ld [$0212], sp
    ld c, $15
    inc b
    ld de, $131a
    rlca
    inc b

jr_010_53f7:
    ld de, $1a04
    ld [$1d12], sp
    dec c
    ld c, $13
    ld a, [de]
    nop
    ld a, [de]
    rrca
    inc b
    dec c
    dec c
    jr jr_010_5423

    dec bc
    inc b
    dec b
    inc de
    jr nz, jr_010_542b

    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $0e
    ld a, [bc]
    dec e
    inc b
    dec d
    inc b
    ld de, $1318
    rlca
    ld [$060d], sp
    daa
    rra

jr_010_5423:
    jr nz, @+$22

    jr nz, @+$08

    ld c, $0e
    inc bc
    ld a, [de]

jr_010_542b:
    add hl, bc
    ld c, $01
    jr nz, @+$1e

    ld d, $07
    nop
    inc de
    ld a, [de]
    nop
    ld a, [de]
    ld b, $11
    inc b
    nop
    inc de
    ld a, [de]
    ld d, $00
    jr @+$1f

    inc de
    ld c, $1a
    ld b, $0e
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    nop
    ld a, [de]
    ld bc, $0d00
    ld b, $27
    inc e
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    ld c, $1a
    inc de
    rlca
    ld [$0a0d], sp
    ld a, [de]
    jr jr_010_5475

    inc d
    dec e
    rlca
    nop
    inc bc
    ld a, [de]
    ld [de], a
    ld c, $1a
    inc c
    nop
    dec c
    jr jr_010_548f

jr_010_5475:
    inc bc
    ld de, $0004
    inc c
    ld [de], a
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    ld [de], a
    rrca
    ld [$0011], sp
    inc de
    ld [$0d0e], sp
    ld [de], a
    daa
    rra
    dec c
    ld c, $13

jr_010_548f:
    rlca
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1d
    ld bc, $1a04
    inc c
    ld [$1212], sp
    ld [$060d], sp
    jr nz, jr_010_54c8

    jr jr_010_54b9

    inc d
    ld a, [de]
    ld [de], a
    rlca
    ld c, $0e
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc c
    inc d

jr_010_54b9:
    ld b, $06
    inc b
    ld de, $0e1a
    dec c
    dec bc
    jr @+$1c

    inc de
    ld c, $1d
    rlca
    nop

jr_010_54c8:
    dec d
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0f
    ld [de], a
    ld a, [de]
    ld [de], a
    rlca
    ld c, $16
    inc d
    rrca
    ld a, [de]
    inc c
    ld c, $0c
    inc b
    dec c
    inc de
    ld [de], a
    ld a, [de]
    dec bc
    nop
    inc de
    inc b
    ld de, $1c20
    ld bc, $180e
    dec h
    ld a, [de]
    ld d, $07
    inc b
    ld de, $1a04
    ld d, $04
    ld de, $1d04
    inc de
    rlca
    inc b
    jr jr_010_5519

    nop
    ld a, [de]
    dec b
    inc b
    ld d, $1a
    inc c
    ld [$140d], sp
    inc de
    inc b
    ld [de], a
    nop
    ld b, $0e
    ld a, [de]
    ld d, $07
    inc b
    dec c
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]

jr_010_5519:
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    ld de, $0004
    dec bc
    dec bc
    jr jr_010_5544

    inc d
    ld [de], a
    inc b
    inc bc
    dec e
    inc de
    rlca
    inc b
    inc c
    daa
    inc e
    jr jr_010_5545

    inc d
    ld de, $0f1a
    dec bc
    inc b
    nop
    ld [de], a
    ld a, [de]
    ld c, $05
    dec e
    ld [de], a

jr_010_5544:
    inc b

jr_010_5545:
    dec bc
    dec b
    ld hl, $0403
    dec b
    inc b
    dec c
    ld [de], a
    inc b
    ld a, [de]
    ld [$1d12], sp
    inc de
    ld c, $14
    ld b, $07
    ld a, [de]
    inc de
    ld c, $1a
    ld [de], a
    inc b
    dec bc
    dec bc
    ld a, [de]
    ld d, $07
    inc b
    dec c
    ld [$1a13], sp
    ld [$1a12], sp
    dec c
    ld c, $13
    ld [$0402], sp
    inc bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    jr @+$1c

    inc bc
    ld [$0d03], sp
    ld a, [hl+]
    inc de
    dec e
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    nop
    ld a, [de]
    ld d, $04
    nop
    rrca
    ld c, $0d
    ld a, [de]
    ld c, $0d
    dec e
    rlca
    ld [$200c], sp
    rra
    nop
    ld a, [de]
    inc c
    inc d
    ld b, $06
    inc b
    ld de, $011a
    dec bc
    ld c, $02
    ld a, [bc]
    ld [de], a
    dec e
    jr jr_010_55bc

    inc d
    ld de, $161a
    nop
    jr jr_010_55d5

    ld a, [de]
    rlca
    inc b
    ld a, [de]
    ld d, $00
    dec c

jr_010_55bc:
    inc de
    ld [de], a
    nop
    dec bc
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    jr jr_010_55d5

    inc d
    ld de, $0c1a
    ld c, $0d
    inc b
    jr jr_010_55f7

    inc e
    jr @+$10

    inc d
    ld a, [de]

jr_010_55d5:
    rrca
    ld c, $0d
    inc bc
    inc b
    ld de, $131a
    rlca
    inc b
    dec e
    ld d, $08
    ld [de], a
    inc bc
    ld c, $0c
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld d, $07
    nop
    inc de
    ld a, [de]
    inc de
    ld c, $1d
    inc bc
    ld c, $1a
    dec c
    inc b

jr_010_55f7:
    rla
    inc de
    jr nz, jr_010_561b

    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld [de], a
    ld a, [de]
    jr jr_010_561b

    inc d
    ld de, $0e0c
    dec c
    inc b
    jr jr_010_562f

    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    ld a, [bc]

jr_010_561b:
    ld [$120f], sp
    dec e
    nop
    ld d, $00
    jr jr_010_563e

    ld [de], a
    nop
    jr jr_010_5630

    dec c
    ld b, $25
    dec e
    ld h, $07
    nop

jr_010_562f:
    ld a, [de]

jr_010_5630:
    rlca
    nop
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    dec c
    dec e
    ld d, $00

jr_010_563e:
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    inc b
    dec d
    inc b
    dec c
    dec e
    dec bc
    ld c, $00
    inc bc
    inc b
    inc bc
    daa
    ld h, $1f
    ld h, $18
    ld c, $14
    ld a, [hl+]
    ld de, $1a04
    rlca
    ld c, $0b
    inc bc
    ld [$060d], sp
    dec e
    ld c, $14
    inc de
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc c
    inc b
    daa
    ld h, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    nop
    dec c
    ld a, [de]
    jr jr_010_567b

    dec bc
    dec bc
    ld [de], a
    ld a, [de]

jr_010_567b:
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
    rlca
    ld [$1a12], sp
    ld b, $14
    dec c
    ld [$130d], sp
    ld c, $1a
    jr jr_010_56a5

    inc d
    daa
    rra
    jr jr_010_56aa

    inc d
    ld a, [de]
    ld d, $04
    ld de, $1a04
    nop
    ld a, [de]

jr_010_56a5:
    ld bc, $1308
    dec e
    ld [de], a

jr_010_56aa:
    dec bc
    ld c, $16
    ld a, [de]
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc de
    ld de, $0608
    ld b, $04
    ld de, $1c20
    rlca
    inc b
    ld a, [de]
    ld [de], a
    rlca
    ld c, $13
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    dec b
    ld [$1211], sp
    inc de
    jr nz, jr_010_56f0

    ld [de], a
    ld c, $02
    ld a, [bc]
    ld c, $27
    inc e
    nop
    ld a, [de]
    db $10
    inc d
    ld [$0a02], sp
    ld a, [de]
    add hl, bc
    nop
    ld bc, $131a
    ld c, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc d
    ld b, $06
    inc b

jr_010_56f0:
    ld de, $122a
    ld a, [de]
    inc b
    jr jr_010_56fb

    dec e
    ld [de], a
    inc de
    inc d

jr_010_56fb:
    dec c
    ld [de], a
    ld a, [de]
    rlca
    ld [$200c], sp
    inc e
    rlca
    inc b
    ld a, [de]
    ld de, $0d14
    ld [de], a
    ld a, [de]
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld a, [de]
    ld [de], a
    rlca
    ld c, $14
    inc de
    ld [$060d], sp
    dec h
    dec e
    ld h, $08
    ld a, [hl+]
    dec bc
    dec bc
    ld a, [de]
    ld bc, $1a04
    ld bc, $0200
    ld a, [bc]
    daa
    ld h, $1f
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc d
    ld b, $06
    inc b
    ld de, $122a
    ld a, [de]
    ld b, $0e
    inc de
    dec e
    nop
    dec c
    ld a, [de]
    ld [$0213], sp
    rlca
    jr jr_010_5769

    inc de
    ld de, $0608
    ld b, $04
    ld de, $051d
    ld [$060d], sp
    inc b
    ld de, $001a
    dec c
    inc bc
    ld a, [de]
    dec bc
    inc b
    inc de
    ld [de], a
    dec e
    jr jr_010_5777

jr_010_5769:
    inc d
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    ld [$2013], sp
    rra
    inc de
    rlca
    inc b

jr_010_5777:
    ld a, [de]
    inc c
    inc d
    ld b, $06
    inc b
    ld de, $011a
    dec bc
    ld c, $02
    ld a, [bc]
    ld [de], a
    dec e
    jr @+$10

    inc d
    ld de, $161a
    nop
    jr jr_010_57af

    inc e
    rlca
    ld [$1a12], sp
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    inc b
    jr @+$06

    dec e
    ld [de], a
    rlca
    ld [$040d], sp
    ld [de], a
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    nop
    dec e
    ld [de], a
    ld c, $14
    dec d
    inc b

jr_010_57af:
    dec c
    ld [$1a11], sp
    ld c, $05
    ld a, [de]
    jr jr_010_57c6

    inc d
    ld de, $0b1d
    nop
    ld [de], a
    inc de
    ld a, [de]
    inc b
    dec c
    ld [bc], a
    ld c, $14
    dec c

jr_010_57c6:
    inc de
    inc b
    ld de, $1c20
    ld h, $0e
    ld a, [bc]
    dec h
    ld a, [de]
    rlca
    ld c, $13
    ld [de], a
    rlca
    ld c, $13
    daa
    ld a, [de]
    ld [$161d], sp
    ld c, $14
    dec bc
    inc bc
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    inc de
    ld de, $1a18
    inc de
    rlca
    nop
    inc de
    dec e
    nop
    ld b, $00
    ld [$1a0d], sp
    ld [$1a05], sp
    ld [$161a], sp
    inc b
    ld de, $1d04
    jr jr_010_580d

    inc d
    jr nz, jr_010_581e

    ld b, $08
    dec d
    inc b
    ld a, [de]
    inc c
    inc b
    ld a, [de]
    nop
    dec bc
    dec bc

jr_010_580d:
    ld a, [de]
    jr jr_010_581e

    inc d
    ld de, $0c1d
    ld c, $0d
    inc b
    jr @+$27

    ld a, [de]
    dec c
    ld c, $16
    daa

jr_010_581e:
    ld h, $1a
    rlca
    inc b
    dec e
    dec b
    ld [$080d], sp
    ld [de], a
    rlca
    inc b
    ld [de], a
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    nop
    ld bc, $1308
    ld a, [de]
    inc d
    dec c
    ld [de], a
    inc d
    ld de, $1a04
    ld c, $05
    dec e
    rlca
    ld [$120c], sp
    inc b
    dec bc
    dec b
    jr nz, jr_010_586b

    ld [de], a
    ld c, $02
    ld a, [bc]
    ld c, $27
    inc e
    nop
    ld a, [de]
    ld [de], a
    ld d, $08
    dec b
    inc de
    ld a, [de]
    add hl, bc
    nop
    ld bc, $131a
    ld c, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc d
    ld b, $06
    inc b

jr_010_586b:
    ld de, $122a
    ld a, [de]
    dec bc
    inc b
    dec b
    inc de
    dec e
    inc b
    jr jr_010_587b

    ld a, [de]
    ld [de], a
    inc b
    dec c

jr_010_587b:
    inc bc
    ld [de], a
    ld a, [de]
    rlca
    ld [$1d0c], sp
    ld de, $0404
    dec bc
    ld [$060d], sp
    ld a, [de]
    ld bc, $0200
    ld a, [bc]
    dec e
    ld [$1a0d], sp
    rrca
    nop
    ld [$200d], sp
    inc e
    rlca
    inc b
    ld a, [de]
    db $10
    inc d
    ld [$0a02], sp
    dec bc
    jr jr_010_58bd

    ld de, $0d14
    ld [de], a
    dec e
    nop
    ld d, $00
    jr jr_010_58cd

    rra
    jr @+$10

    inc d
    ld a, [de]
    ld b, $08
    dec d
    inc b
    ld a, [de]
    rlca
    ld [$1a0c], sp
    ld b, c
    ld [hl-], a

jr_010_58bd:
    jr nc, jr_010_58df

    inc e
    rlca
    inc b
    ld a, [de]
    ld b, $11
    nop
    ld bc, $1a12
    ld [$1a13], sp
    nop

jr_010_58cd:
    dec c
    inc bc
    dec e
    ld de, $0d14
    ld [de], a
    ld a, [de]
    nop
    ld d, $00
    jr jr_010_58f4

    ld [de], a
    nop
    jr @+$0a

    dec c

jr_010_58df:
    ld b, $25
    dec e
    ld h, $00
    ld bc, $140e
    inc de
    ld a, [de]
    inc de
    ld [$040c], sp
    ld a, [de]
    jr jr_010_58fe

    inc d
    dec e
    ld d, $08

jr_010_58f4:
    ld [de], a
    inc b
    inc bc
    ld a, [de]
    inc d
    rrca
    daa
    ld h, $1f
    inc de

jr_010_58fe:
    rlca
    inc b
    ld a, [de]
    inc c
    inc d
    ld b, $06
    inc b
    ld de, $011a
    dec bc
    ld c, $02
    ld a, [bc]
    ld [de], a
    dec e
    jr jr_010_591f

    inc d
    ld de, $161a
    nop
    jr jr_010_5932

    nop
    ld b, $00
    ld [$250d], sp
    dec e

jr_010_591f:
    inc de
    rlca
    ld [$1a12], sp
    inc de
    ld [$040c], sp
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    inc de
    ld d, $0e
    ld a, [de]

jr_010_5932:
    dec c
    nop
    ld [de], a
    inc de
    jr jr_010_5952

    ld [de], a
    rlca
    ld [$040d], sp
    ld de, $2012
    inc e
    ld [$1a0d], sp
    nop
    ld a, [de]
    inc c
    inc b
    dec c
    nop
    ld [bc], a
    ld [$060d], sp
    ld a, [de]
    inc de
    ld c, $0d

jr_010_5952:
    inc b
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    ld de, $0004
    inc de
    inc b
    dec c
    ld [de], a
    dec h
    dec e
    ld h, $06
    ld [$0415], sp
    ld a, [de]
    inc c
    inc b
    ld a, [de]
    jr jr_010_597a

    inc d
    ld de, $0c1d
    ld c, $0d
    inc b
    jr @+$29

    ld h, $1f
    ld [de], a
    ld c, $02

jr_010_597a:
    ld a, [bc]
    ld c, $27
    inc e
    nop
    ld a, [de]
    dec bc
    ld [$0706], sp
    inc de
    dec c
    ld [$060d], sp
    ld a, [de]
    dec b
    nop
    ld [de], a
    inc de
    dec e
    dec b
    ld [$1312], sp
    ld a, [de]
    rlca
    ld [$1213], sp
    ld a, [de]
    rlca
    ld [$1d0c], sp
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    ld c, $12
    inc b
    jr nz, jr_010_59c6

    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    inc d
    inc c
    ld bc, $040b
    ld [de], a
    ld a, [de]
    dec b
    ld c, $11
    dec e
    nop
    ld a, [de]
    inc c
    ld c, $0c
    inc b
    dec c
    inc de
    ld a, [de]
    nop
    dec c
    inc bc

jr_010_59c6:
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    dec e
    ld de, $0d14
    ld [de], a
    ld a, [de]
    nop
    ld d, $00
    jr @+$1c

    nop
    ld b, $00
    ld [$200d], sp
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc d
    ld b, $06
    inc b
    ld de, $011a
    dec bc
    ld c, $02
    ld a, [bc]
    ld [de], a
    dec e
    jr @+$10

    inc d
    ld de, $161a
    nop
    jr jr_010_5a12

    ld c, $0d
    ld [bc], a
    inc b
    dec e
    nop
    ld b, $00
    ld [$250d], sp
    ld a, [de]
    ld c, $01
    dec d
    ld [$140e], sp
    ld [de], a
    dec bc
    jr @+$1f

    ld [de], a
    inc d
    dec b
    dec b

jr_010_5a12:
    inc b
    ld de, $0d08
    ld b, $1a
    dec b
    ld de, $0c0e
    dec e
    nop
    ld a, [de]
    ld bc, $0e11
    ld a, [bc]
    inc b
    dec c
    ld a, [de]
    dec c
    ld c, $12
    inc b
    jr nz, @+$1e

    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    ld de, $1300
    rlca
    inc b
    ld de, $141d
    dec c
    ld [de], a
    inc de
    nop
    ld bc, $040b
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    inc de
    ld [$040c], sp
    dec h
    ld a, [de]
    ld [de], a
    nop
    jr jr_010_5a5c

    dec c
    ld b, $25
    dec e
    ld h, $13
    rlca
    nop

jr_010_5a5c:
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld [$2513], sp
    ld a, [de]
    dec c
    ld c, $16
    dec e
    ld [$0c2a], sp
    ld a, [de]
    ld de, $0004
    dec bc
    dec bc
    jr jr_010_5a8d

    inc c
    nop
    inc bc
    daa
    inc e
    ld [$1a05], sp
    jr jr_010_5a8b

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    rrca
    nop
    jr jr_010_5aa6

    inc d
    rrca

jr_010_5a8b:
    ld a, [de]
    dec c

jr_010_5a8d:
    ld c, $16
    dec h
    ld a, [de]
    ld [$0b2a], sp
    dec bc
    ld a, [de]
    rrca
    dec bc
    inc d
    ld b, $1d
    jr jr_010_5aab

    inc d
    ld a, [de]
    dec b
    inc d
    dec bc
    dec bc
    ld a, [de]
    ld c, $05

jr_010_5aa6:
    dec e
    rlca
    ld c, $0b
    inc b

jr_010_5aab:
    ld [de], a
    daa
    ld h, $1f
    ld bc, $000b
    inc c
    daa
    ld a, [de]
    ld bc, $000b
    inc c
    daa
    ld a, [de]
    ld bc, $000b
    inc c
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc d
    ld b, $06
    inc b
    ld de, $011a
    dec bc
    ld c, $16
    ld [de], a
    dec e
    jr jr_010_5ae2

    inc d
    ld a, [de]
    nop
    ld d, $00
    jr jr_010_5af8

    ld de, $0f04
    inc b
    nop
    inc de
    inc b

jr_010_5ae2:
    inc bc
    dec bc
    jr @+$29

    inc e
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    rlca
    inc b
    ld a, [de]
    ld d, $00
    ld [de], a
    ld a, [de]
    inc de
    ld [$0411], sp

jr_010_5af8:
    inc bc
    ld c, $05
    ld a, [de]
    nop
    ld de, $1406
    ld [$060d], sp
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    jr jr_010_5b19

    inc d
    ld de, $051a
    ld [$1312], sp
    ld [de], a
    jr nz, jr_010_5b34

    jr @+$10

    inc d
    ld a, [de]

jr_010_5b19:
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $161a
    rlca
    jr @+$1c

    jr jr_010_5b34

    inc d
    ld bc, $130e
    rlca
    inc b
    ld de, $0304
    ld a, [de]
    ld d, $00
    ld [de], a
    inc de

jr_010_5b34:
    ld [$060d], sp
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0b14
    dec bc
    inc b
    inc de
    ld [de], a
    jr z, @+$21

    jr jr_010_5b55

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    rlca
    nop

jr_010_5b55:
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    ld c, $0b
    ld [$0402], sp
    jr nz, jr_010_5b84

    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    dec d
    ld [$0403], sp
    dec c
    ld [bc], a
    inc b
    dec e
    jr jr_010_5b85

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld bc, $0e11
    inc d
    ld b, $07
    inc de
    ld a, [de]

jr_010_5b84:
    inc de

jr_010_5b85:
    ld c, $1d
    inc de
    rlca
    inc b
    inc c
    ld a, [de]
    rrca
    ld de, $150e
    inc b
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1d04
    ld [$130d], sp
    inc b
    ld de, $1204
    inc de
    ld [$060d], sp
    dec h
    dec e
    inc b
    ld [de], a
    rrca
    inc b
    ld [bc], a
    ld [$0b00], sp
    dec bc
    jr jr_010_5bcb

    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld c, $14
    ld de, $1113
    ld c, $0e
    inc c
    ld a, [de]
    ld d, $07
    inc b
    ld de, $1d04
    jr @+$10

    inc d

jr_010_5bcb:
    ld a, [de]
    inc b
    dec d
    inc b
    dec c
    inc de
    inc d
    nop
    dec bc
    dec bc
    jr jr_010_5bf4

    ld d, $08
    dec c
    inc bc
    ld a, [de]
    inc d
    rrca
    jr nz, jr_010_5bfc

    inc bc
    inc d
    ld de, $0d08
    ld b, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0008
    dec bc
    dec e
    ld c, $05
    ld a, [de]

jr_010_5bf4:
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    ld [$0d03], sp

jr_010_5bfc:
    nop
    rrca
    rrca
    ld [$060d], sp
    dec e
    ld c, $05
    ld a, [de]
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
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc d
    ld de, $0403
    ld de, $0e1a
    dec b
    dec e
    add hl, bc
    ld c, $04
    jr jr_010_5c46

    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    dec h
    ld a, [de]
    inc sp
    dec e
    ld bc, $1308
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc b
    dec d
    ld [$0403], sp
    dec c
    ld [bc], a
    inc b

jr_010_5c46:
    dec e
    rrca
    ld de, $150e
    inc b
    inc bc
    ld a, [de]
    dec d
    nop
    dec bc
    inc d
    nop
    ld bc, $040b
    inc h
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld [$1100], sp
    jr jr_010_5c7c

    dec b
    ld de, $0c0e
    dec e
    dec d
    ld [$0a02], sp
    inc b
    ld de, $2a12
    ld a, [de]
    ld bc, $0d14
    ld b, $00
    dec bc
    ld c, $16
    dec h
    inc de
    rlca
    inc b

jr_010_5c7c:
    ld a, [de]
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    inc c
    nop
    ld [$1d0b], sp
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $001a
    dec c
    inc bc
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
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    ld [de], a
    inc de
    inc b
    ld de, $160d
    ld c, $0e
    inc bc
    ld a, [hl+]
    ld [de], a
    dec e
    ld bc, $0304
    ld de, $0e0e
    inc c
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [de]
    inc sp
    ld a, [de]
    ld [$0413], sp
    inc c
    ld [de], a
    dec h
    dec e
    rrca
    inc d
    inc de
    ld a, [de]
    inc de
    ld c, $06
    inc b
    inc de
    rlca
    inc b
    ld de, $1d25
    rrca
    nop
    ld [$130d], sp
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld [$1302], sp
    inc d
    ld de, $1d04
    ld c, $05
    ld a, [de]
    nop
    ld a, [de]
    rrca
    dec bc
    ld c, $13
    ld a, [de]
    ld bc, $1d18
    ld [de], a
    inc de
    inc b
    ld de, $160d
    ld c, $0e
    inc bc
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    dec d
    ld [$0a02], sp
    inc b
    ld de, $1a12
    inc de
    ld c, $1a
    ld a, [bc]
    ld [$0b0b], sp
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
    jr nz, jr_010_5d50

    nop
    dec c
    inc bc
    ld a, [de]
    nop
    dec bc
    ld [de], a
    ld c, $1a
    inc de
    ld c, $1a
    inc c
    nop
    ld a, [bc]
    inc b
    dec e
    jr jr_010_5d55

    inc d
    ld a, [de]
    inc de
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    inc de
    rlca

jr_010_5d50:
    inc b
    ld a, [de]
    dec b
    nop
    dec bc

jr_010_5d55:
    dec bc
    dec e
    dec b
    ld c, $11
    ld a, [de]
    ld [$2013], sp
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld [$1100], sp
    jr jr_010_5d83

    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    inc c
    nop
    ld [$1a0b], sp
    dec bc
    inc b
    inc de
    inc de
    inc b
    ld de, $0f1d

jr_010_5d83:
    ld de, $150e
    ld [$0403], sp
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc c
    ld c, $13
    ld [$0415], sp
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    ld de, $0c08
    inc b
    jr nz, jr_010_5dc1

    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld [$040c], sp
    inc de
    nop
    ld bc, $040b
    dec e
    ld [$030d], sp
    ld [$0002], sp
    inc de
    inc b
    inc bc
    ld a, [de]

jr_010_5dc1:
    rlca
    ld c, $16
    ld a, [de]
    inc de
    rlca
    inc b
    jr jr_010_5dcd

    ld [$1a03], sp

jr_010_5dcd:
    ld [$2013], sp
    inc e
    ld [de], a
    inc de
    inc b
    ld de, $160d
    ld c, $0e
    inc bc
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    dec d
    ld [$0a02], sp
    inc b
    ld de, $1a12
    ld d, $04
    ld de, $1d04
    inc c
    inc b
    ld de, $0802
    dec bc
    inc b
    ld [de], a
    ld [de], a
    dec bc
    jr @+$1f

    ld b, $11
    ld [$0b0b], sp
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
    inc de
    dec c
    inc b
    ld [de], a
    ld [de], a
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec c
    inc bc
    jr nz, jr_010_5e32

    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $04
    ld [$0706], sp
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
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
    nop

jr_010_5e32:
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    ld a, [bc]
    ld [$0b0b], sp
    inc b
    inc bc
    ld a, [de]
    inc de
    nop
    ld [bc], a
    inc de
    ld [$1202], sp
    ld a, [de]
    ld c, $05
    jr jr_010_5e5b

    inc d
    ld de, $0b1a
    nop
    ld d, $18
    inc b
    ld de, $1a25
    inc c
    nop
    inc bc

jr_010_5e5b:
    inc b
    dec e
    dec d
    ld [$0a02], sp
    inc b
    ld de, $1a12
    nop
    inc bc
    inc c
    ld [$1a13], sp
    inc de
    ld c, $1d
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld de, $0c08
    inc b
    jr nz, jr_010_5e95

    ld d, $00
    jr @+$1c

    inc de
    ld c, $1a
    ld b, $0e
    ld a, [de]
    nop
    ld [bc], a
    inc b
    daa
    rra
    ld [bc], a
    dec bc
    ld [$0a02], sp
    daa
    ld a, [de]
    ld [bc], a
    inc d
    dec b
    dec b
    inc b
    inc bc

jr_010_5e95:
    ld a, [de]
    ld bc, $1d18
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0f
    ld [de], a
    jr nz, @+$1e

    jr @+$10

    inc d
    ld de, $121a
    inc de
    ld c, $11
    jr jr_010_5ecb

    ld [$130d], sp
    inc b
    ld de, $1204
    inc de
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    inc c
    ld a, [de]
    ld [de], a
    ld c, $1d
    inc de
    rlca
    inc b
    jr jr_010_5edf

    ld [$150d], sp
    inc b
    ld [de], a
    inc de

jr_010_5ecb:
    ld [$0006], sp
    inc de
    inc b
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc d
    ld de, $0403
    ld de, $001a
    dec c
    inc bc

jr_010_5edf:
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [bc]
    ld [$0d03], sp
    nop
    rrca
    rrca
    ld [$060d], sp
    jr nz, @+$1e

    dec d
    nop
    ld de, $0e08
    inc d
    ld [de], a
    dec e
    ld [$130d], sp
    inc b
    ld de, $1204
    inc de
    ld [$060d], sp
    ld a, [de]
    dec b
    nop
    ld [bc], a
    inc de
    ld [de], a
    dec e
    nop
    ld de, $1a04
    ld bc, $0e11
    inc d
    ld b, $07
    inc de
    ld a, [de]
    inc de
    ld c, $1d
    dec bc
    ld [$0706], sp
    inc de
    jr nz, jr_010_5f3b

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
    jr jr_010_5f52

    dec e
    inc de
    rlca
    inc b
    jr jr_010_5f4d

    dec b
    ld [$030d], sp
    ld a, [de]
    jr jr_010_5f48

    inc d

jr_010_5f3b:
    ld de, $061d
    inc d
    dec c
    ld a, [de]
    nop
    inc c
    ld c, $0d
    ld b, $1a
    inc de

jr_010_5f48:
    rlca
    inc b
    dec e
    inc b
    dec d

jr_010_5f4d:
    ld [$0403], sp
    dec c
    ld [bc], a

jr_010_5f52:
    inc b
    jr nz, @+$1e

    ld d, $08
    inc de
    rlca
    ld a, [de]
    jr jr_010_5f6a

    inc d
    ld de, $051d
    ld [$060d], sp
    inc b
    ld de, $110f
    ld [$130d], sp

jr_010_5f6a:
    ld [de], a
    ld a, [de]
    nop
    dec bc
    dec bc
    dec e
    ld c, $15
    inc b
    ld de, $081a
    inc de
    ld a, [de]
    nop
    dec c
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
    ld [de], a
    ld a, [de]
    inc c
    nop
    inc de
    ld [bc], a
    rlca
    inc b
    inc bc
    ld a, [de]
    inc d
    rrca
    ld d, $08
    inc de
    rlca
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    dec bc
    inc d
    ld b, $12
    dec e
    rrca
    inc d
    dec bc
    dec bc
    inc b
    inc bc
    ld a, [de]
    dec b
    ld de, $0c0e
    dec e
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld bc, $030e
    jr jr_010_5fdb

    jr nz, jr_010_5fdd

    inc e
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld bc, $1200
    ld [$0002], sp
    dec bc
    dec bc
    jr jr_010_5fe7

    nop
    dec c
    dec e
    ld c, $0f
    inc b
    dec c
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    rlca

jr_010_5fdb:
    inc d
    inc de

jr_010_5fdd:
    dec e
    ld [bc], a
    nop
    ld [de], a
    inc b
    daa
    ld a, [de]
    inc de
    rlca
    inc b

jr_010_5fe7:
    jr jr_010_6003

    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    dec e
    ld bc, $1814
    ld a, [de]
    jr jr_010_6003

    inc d
    ld de, $121a
    inc de
    ld c, $11
    jr jr_010_601b

    inc de
    rlca
    nop
    inc de
    ld a, [de]

jr_010_6003:
    ld [de], a
    inc de
    inc b
    ld de, $160d
    ld c, $0e
    inc bc
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    dec d
    ld [$0a02], sp
    inc b
    ld de, $1a12
    ld d, $04

jr_010_601b:
    ld de, $1d04
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    inc d
    dec bc
    rrca
    ld de, $1308
    ld [de], a
    jr nz, @+$22

    jr nz, jr_010_604a

    inc b
    ld [de], a
    rrca
    inc b
    ld [bc], a
    ld [$0b00], sp
    dec bc
    jr jr_010_6053

    ld [de], a
    ld [$020d], sp
    inc b
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    dec c
    ld a, [de]
    ld [$1a12], sp

jr_010_604a:
    inc c
    ld c, $11
    inc b
    dec e
    inc de
    rlca
    nop
    dec c

jr_010_6053:
    ld a, [de]
    inc b
    dec c
    ld c, $14
    ld b, $07
    ld a, [de]
    rrca
    ld de, $0e0e
    dec b
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld d, $04
    ld de, $1d04
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    ld [$0b0b], sp
    inc b
    ld de, $1c20
    ld [de], a
    ld c, $11
    ld de, $1a18
    nop
    ld [bc], a
    inc b
    dec h
    ld a, [de]
    ld bc, $1314
    ld a, [de]
    ld [$1d13], sp
    ld [de], a
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    jr jr_010_60a3

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld c, $14
    inc de
    dec e
    ld c, $05
    ld a, [de]
    dec bc
    inc d

jr_010_60a3:
    ld [bc], a
    ld a, [bc]
    daa
    rra
    ld [bc], a
    dec bc
    ld [$0a02], sp
    daa
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0f
    ld [de], a
    dec e
    ld [de], a
    dec c
    nop
    rrca
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
    ld a, [de]
    ld c, $0d
    dec e
    jr jr_010_60d9

    inc d
    daa
    inc e
    jr jr_010_60de

    inc d
    ld a, [de]
    nop
    ld de, $1d04
    db $10
    inc d
    inc b

jr_010_60d9:
    ld [de], a
    inc de
    ld [$0d0e], sp

jr_010_60de:
    inc b
    inc bc
    ld a, [de]
    ld c, $15
    inc b
    ld de, $001d
    dec c
    inc bc
    ld a, [de]
    ld c, $15
    inc b
    ld de, $001a
    ld bc, $140e
    inc de
    dec e
    jr jr_010_6105

    inc d
    ld de, $161a
    rlca
    inc b
    ld de, $0004
    ld bc, $140e
    inc de
    ld [de], a

jr_010_6105:
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    ld [bc], a
    inc de
    ld [$0d0e], sp
    ld [de], a
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec bc
    nop
    ld [de], a
    inc de
    ld a, [de]
    ld [hl-], a
    inc [hl]
    ld a, [de]
    rlca
    ld c, $14
    ld de, $2712
    inc e
    ld [de], a
    ld [$020d], sp
    inc b
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    dec e
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    ld a, [de]
    nop
    ld a, [de]
    inc de
    rlca
    ld [$060d], sp
    dec e
    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec bc
    ld [$040a], sp
    dec bc
    ld [$1204], sp
    inc de
    dec e
    ld [bc], a
    nop
    dec c
    inc bc
    ld [$0003], sp
    inc de
    inc b
    ld a, [de]
    dec b
    ld c, $11
    dec e
    ld [bc], a
    ld c, $0c
    inc c
    ld [$1313], sp
    ld [$060d], sp
    ld a, [de]
    inc c
    inc d
    ld de, $0403
    ld de, $001d
    dec c
    inc bc
    ld a, [de]
    ld a, [bc]
    ld [$0d03], sp
    nop
    rrca
    rrca
    ld [$060d], sp
    jr nz, jr_010_61ab

    ld [de], a
    ld [$020d], sp
    inc b
    ld a, [de]
    jr @+$10

    inc d
    ld a, [hl+]
    ld de, $1d04
    inc d
    dec c
    nop
    ld bc, $040b
    ld a, [de]
    inc de
    ld c, $1a
    ld [bc], a
    inc d
    ld de, $1d04

jr_010_61ab:
    jr jr_010_61bb

    inc d
    ld de, $021a
    ld c, $0d
    inc bc
    ld [$0813], sp
    ld c, $0d
    dec h
    dec e

jr_010_61bb:
    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    rrca
    inc b
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld de, $0c04
    nop
    ld [$030d], sp
    inc b
    ld de, $0e1a
    dec b
    ld a, [de]
    jr jr_010_61e6

    inc d
    ld de, $0b1d
    ld [$0405], sp
    ld a, [de]
    ld [$1a0d], sp
    nop
    ld a, [de]
    rrca

jr_010_61e6:
    nop
    inc bc
    inc bc
    inc b
    inc bc
    dec e
    ld [bc], a
    inc b
    dec bc
    dec bc
    ld a, [de]
    ld [$1a0d], sp
    nop
    dec c
    dec e
    ld [$120d], sp
    inc de
    ld [$1413], sp
    inc de
    ld [$0d0e], sp
    jr nz, jr_010_6223

    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    dec c
    inc de
    inc b
    dec c
    ld [bc], a
    inc b
    dec e
    rrca
    nop
    ld [de], a
    ld [de], a
    inc b
    inc bc
    ld a, [de]
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    ld d, $00
    ld [de], a
    dec e
    inc de
    inc b

jr_010_6223:
    dec c
    ld a, [de]
    jr jr_010_622b

    nop
    ld de, $1a12

jr_010_622b:
    ld [$1d0d], sp
    inc c
    nop
    rla
    ld [$140c], sp
    inc c
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    inc d
    ld de, $1308
    jr jr_010_6266

    inc e
    jr jr_010_6250

    inc d
    ld de, $021a
    inc b
    dec bc
    dec bc
    ld a, [de]
    nop
    ld d, $00
    ld [$1213], sp

jr_010_6250:
    dec e
    jr jr_010_6261

    inc d
    ld a, [de]
    nop
    inc de
    ld a, [de]
    add hl, bc
    ld c, $0b
    ld [$1304], sp
    dec e
    inc c
    nop

jr_010_6261:
    rla
    ld [$140c], sp
    inc c

jr_010_6266:
    ld a, [de]
    ld [de], a
    inc b
    ld [bc], a
    inc d
    ld de, $1308
    jr jr_010_628d

    rrca
    ld de, $1208
    ld c, $0d
    daa
    rra
    ld [$1a05], sp
    ld [de], a
    inc de
    inc b
    ld de, $160d
    ld c, $0e
    inc bc
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    dec d
    ld [$0a02], sp

jr_010_628d:
    inc b
    ld de, $1a12
    inc bc
    ld [$0d03], sp
    ld a, [hl+]
    inc de
    dec e
    ld a, [bc]
    ld [$0b0b], sp
    ld a, [de]
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld a, [bc]
    ld [$0d03], sp
    nop
    rrca
    ld a, [de]
    inc c
    ld de, $2012
    dec e
    ld [de], a
    inc de
    inc b
    ld de, $160d
    ld c, $0e
    inc bc
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    dec e
    jr jr_010_62d4

    inc d
    ld a, [hl+]
    ld de, $1a04
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    inc b
    rla
    inc de
    dec e

jr_010_62d4:
    ld bc, $1204
    inc de
    ld a, [de]
    ld [de], a
    inc d
    ld [de], a
    rrca
    inc b
    ld [bc], a
    inc de
    jr nz, jr_010_62fe

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0f
    ld [de], a
    ld a, [de]
    inc d
    dec c
    ld [bc], a
    ld c, $15
    inc b
    ld de, $131d
    rlca
    inc b
    ld a, [de]
    ld bc, $0300
    ld a, [de]
    ld bc, $0e0b

jr_010_62fe:
    ld c, $03
    dec e
    ld bc, $1304
    ld d, $04
    inc b
    dec c
    ld a, [de]
    jr jr_010_6319

    inc d
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [de]
    nop

jr_010_6319:
    dec c
    inc bc
    ld a, [de]
    ld bc, $0811
    dec c
    ld b, $1d
    jr jr_010_6332

    inc d
    ld a, [de]
    inc d
    rrca
    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [bc], a
    rlca
    nop
    ld de, $0406

jr_010_6332:
    ld [de], a
    jr nz, jr_010_6354

    jr @+$10

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld b, $08
    dec d
    inc b
    dec c
    ld a, [de]
    inc de
    rlca
    ld de, $0404
    ld [bc], a
    ld c, $0d
    ld [de], a
    inc b
    ld [bc], a
    inc d
    inc de
    ld [$0415], sp
    ld a, [de]
    dec bc

jr_010_6354:
    ld [$0405], sp
    dec e
    ld [de], a
    inc b
    dec c
    inc de
    inc b
    dec c
    ld [bc], a
    inc b
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $0604
    ld [$080d], sp
    inc c
    inc c
    inc b
    inc bc
    ld [$1300], sp
    inc b
    dec bc
    jr jr_010_639d

    inc e
    jr @+$10

    inc d
    ld de, $0d1a
    ld c, $13
    ld c, $11
    ld [$1304], sp
    jr jr_010_63a0

    ld [$1d12], sp
    ld [de], a
    rlca
    ld c, $11
    inc de
    ld hl, $080b
    dec d
    inc b
    inc bc
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    inc b

jr_010_639d:
    ld d, $12
    ld a, [de]

jr_010_63a0:
    inc bc
    ld [$1204], sp
    ld a, [de]
    inc bc
    ld c, $16
    dec c
    ld a, [de]
    nop
    dec c
    inc bc
    jr jr_010_63bd

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    dec b
    ld c, $11
    ld b, $0e
    inc de
    inc de
    inc b

jr_010_63bd:
    dec c
    dec e
    nop
    ld [de], a
    ld a, [de]
    jr jr_010_63d2

    inc d
    ld a, [de]
    ld de, $130e
    ld a, [de]
    nop
    ld d, $00
    jr @+$1c

    ld [$090d], sp

jr_010_63d2:
    nop
    ld [$270b], sp
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $170e
    ld a, [de]
    ld c, $05
    dec e
    nop
    inc c
    inc c
    ld c, $20
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
