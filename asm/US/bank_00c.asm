; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    nop
    ld b, c
    ld a, l
    ld b, e
    or a
    ld b, e
    db $e4
    ld b, e
    dec bc
    ld b, h
    ld h, e
    ld b, h
    ld [hl], a
    ld b, h
    ret nc

    ld b, h
    rst RST_38
    ld b, h
    dec sp
    ld b, l
    ld h, l
    ld b, l
    db $e3
    ld b, l
    ld e, a
    ld b, [hl]
    adc a
    ld b, [hl]
    call c, Call_000_0746
    ld b, a
    ld c, d
    ld b, a
    xor d
    ld b, a
    rst RST_18
    ld b, a
    jr nz, jr_00c_4070

    ld b, c
    ld c, b
    ld d, h
    ld c, b
    xor e
    ld c, b
    cp [hl]
    ld c, b
    ldh a, [c]
    ld c, b
    jr c, jr_00c_407d

    cp l
    ld c, c
    ld [bc], a
    ld c, d
    dec de
    ld c, d
    dec bc
    ld c, e
    ld [hl], l
    ld c, e
    cp [hl]
    ld c, e
    dec l
    ld c, h
    ld e, h
    ld c, h
    xor b
    ld c, h
    rst RST_30
    ld c, h
    ld b, [hl]
    ld c, l
    ld h, [hl]
    ld c, l
    adc a
    ld c, l
    xor d
    ld c, l
    ret


    ld c, l
    db $e3
    ld c, l
    inc h
    ld c, [hl]
    or a
    ld c, [hl]
    db $e3
    ld c, [hl]
    inc bc
    ld c, a
    ld d, b
    ld c, a
    ld l, a
    ld c, a
    sbc e
    ld c, a
    and $4f
    dec d
    ld d, b
    ld d, b
    ld d, b
    and h
    ld d, b
    add sp, $50
    dec hl
    ld d, c
    or a
    ld d, c

jr_00c_4070:
    ldh a, [rHDMA1]
    ld b, l
    ld d, d
    and a
    ld d, d
    ld hl, $8f53
    ld d, e
    rst RST_08
    ld d, e
    inc c

jr_00c_407d:
    ld d, h
    ld a, [hl-]
    ld d, h
    ld h, c
    ld d, h
    add h
    ld d, h
    pop hl
    ld d, h
    push af
    ld d, h
    dec e
    ld d, l
    ld [hl], e
    ld d, l
    xor d
    ld d, l
    db $dd
    ld d, l
    ld [$3156], sp
    ld d, [hl]
    ld a, d
    ld d, [hl]
    or d
    ld d, [hl]
    sub $56
    push hl
    ld d, [hl]
    ld [hl+], a
    ld d, a
    sub a
    ld d, a
    ret nz

    ld d, a
    rst RST_30
    ld d, a
    ld d, c
    ld e, b
    ld [hl], b
    ld e, b
    add e
    ld e, b
    cp c
    ld e, b
    add hl, hl
    ld e, c
    ld e, l
    ld e, c
    sub e
    ld e, c
    call c, $e959
    ld e, c
    ld b, e
    ld e, d
    inc [hl]
    ld e, e
    add b
    ld e, e
    add [hl]
    ld e, e
    adc h
    ld e, e
    pop de
    ld e, e
    ld sp, hl
    ld e, e
    sub b
    ld e, h
    cp a
    ld e, h
    ld [hl], l
    ld e, l
    and a
    ld e, l
    cp a
    ld e, l
    sub $5d
    dec c
    ld e, [hl]
    ld c, d
    ld e, [hl]
    ld [hl], c
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    or h
    ld e, [hl]
    push de
    ld e, [hl]
    db $f4
    ld e, [hl]
    dec de
    ld e, a
    ccf
    ld e, a
    and e
    ld e, a
    ld l, $60
    ld h, a
    ld h, b
    di
    ld h, b
    inc c
    ld h, c
    ld [hl], h
    ld h, c
    and b
    ld h, c
    ld a, [bc]
    ld h, d
    sub e
    ld h, d
    xor h
    ld h, d
    inc d
    ld h, e
    ld d, d
    ld h, e
    ld a, [hl]
    ld h, e
    sbc b
    ld h, e
    bit 4, e
    jr jr_00c_4110

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

jr_00c_4110:
    dec e
    inc bc
    nop
    add hl, de
    inc b
    inc bc
    ld a, [de]
    ld [de], a
    inc de
    inc d
    rrca
    ld c, $11
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    dec b
    inc b
    inc b
    dec bc
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    nop
    ld a, [de]
    dec d
    inc b
    ld de, $1d18
    ld bc, $0300
    ld a, [de]
    rlca
    inc b
    nop
    inc bc
    nop
    ld [bc], a
    rlca
    inc b
    ld a, [de]
    nop
    dec b
    inc de
    inc b
    ld de, $1a00
    dec bc
    ld c, $0d
    ld b, $1a
    nop
    dec c
    inc bc
    dec e
    inc b
    rla
    inc de
    ld de, $0c04
    inc b
    dec bc
    jr jr_00c_4176

    inc d
    dec c
    dec bc
    inc d
    ld [bc], a
    ld a, [bc]
    jr @+$1f

    ld d, $04
    inc b
    ld a, [bc]
    ld a, [de]
    ld [de], a
    rrca
    inc b
    dec c
    inc de
    ld a, [de]
    ld [$1d0d], sp
    dec d
    inc b
    ld b, $00

jr_00c_4176:
    ld [de], a
    jr nz, jr_00c_4195

    inc de
    nop
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    ld [$150d], sp
    inc b
    dec c
    inc de
    ld c, $11
    jr @+$1f

    ld c, $05
    ld a, [de]
    jr @+$10

    inc d
    ld de, $0412
    dec bc
    dec b

jr_00c_4195:
    dec h
    ld a, [de]
    jr @+$10

    inc d
    dec e
    dec c
    ld c, $13
    ld [$0402], sp
    ld a, [de]
    jr jr_00c_41b2

    inc d
    ld de, $111a
    ld [$0706], sp
    inc de
    dec e
    rlca
    nop
    dec c
    inc bc
    ld a, [de]

jr_00c_41b2:
    ld [$1a12], sp
    ld [bc], a
    ld c, $15
    inc b
    ld de, $0304
    dec e
    ld d, $08
    inc de
    rlca
    ld a, [de]
    ld bc, $0e0b
    ld c, $03
    dec h
    ld a, [de]
    inc de
    rlca
    ld c, $14
    ld b, $07
    ld [de], a
    inc de
    ld de, $0d00
    ld b, $04
    dec bc
    jr @+$27

    ld a, [de]
    jr jr_00c_41ea

    inc d
    dec e
    dec c
    inc b
    ld [$0713], sp
    inc b
    ld de, $121a
    inc b
    inc b
    ld a, [de]

jr_00c_41ea:
    dec c
    ld c, $11
    dec e
    dec b
    inc b
    inc b
    dec bc
    ld a, [de]
    nop
    dec c
    jr jr_00c_4211

    ld d, $0e
    inc d
    dec c
    inc bc
    ld [de], a
    jr nz, @+$1e

    dec b
    inc b
    inc b
    dec bc
    ld [$060d], sp
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    rlca
    nop
    ld de, $1d0f
    rrca
    nop

jr_00c_4211:
    ld [$1a0d], sp
    ld c, $0d
    ld a, [de]
    jr @+$10

    inc d
    ld de, $0b1a
    inc b
    dec b
    inc de
    dec e
    dec b
    ld c, $11
    inc b
    nop
    ld de, $250c
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld de, $0b0e
    dec bc
    dec e
    inc d
    rrca
    ld a, [de]
    jr jr_00c_4246

    inc d
    ld de, $121a
    dec bc
    inc b
    inc b
    dec d
    inc b
    jr nz, jr_00c_425d

    nop
    dec e
    ld [de], a

jr_00c_4246:
    inc c
    nop
    dec bc
    dec bc
    ld a, [de]
    rrca
    inc d
    dec c
    ld [bc], a
    inc de
    inc d
    ld de, $1d04
    ld b, $08
    dec d
    inc b
    ld [de], a
    ld a, [de]
    jr jr_00c_426a

    inc d

jr_00c_425d:
    ld a, [de]
    rrca
    nop
    inc d
    ld [de], a
    inc b
    jr nz, jr_00c_4285

    jr nz, jr_00c_4283

    ld h, $07
    nop

jr_00c_426a:
    dec d
    inc b
    ld a, [de]
    ld [$011a], sp
    inc b
    inc b
    dec c
    dec e
    ld b, $08
    dec d
    inc b
    dec c
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp

jr_00c_4283:
    jr z, jr_00c_42ab

jr_00c_4285:
    dec e
    jr @+$10

    inc d
    ld a, [de]
    inc c
    inc d
    inc de
    inc de
    inc b
    ld de, $1d25
    rlca
    inc b
    nop
    ld de, $0d08
    ld b, $1a
    nop
    ld a, [de]
    dec d
    ld c, $08
    ld [bc], a
    inc b
    dec e
    ld d, $07
    ld [$0702], sp
    ld a, [de]
    ld [de], a
    ld c, $14

jr_00c_42ab:
    dec c
    inc bc
    ld [de], a
    dec e
    ld [de], a
    inc de
    ld de, $0d00
    ld b, $04
    ld a, [de]
    inc de
    ld c, $1a
    jr jr_00c_42ca

    inc d
    ld de, $041d
    nop
    ld de, $2012
    inc e
    ld d, $08
    inc de
    rlca
    ld a, [de]

jr_00c_42ca:
    inc bc
    nop
    ld d, $0d
    ld [$060d], sp
    dec e
    rlca
    ld c, $11
    ld de, $110e
    dec h
    ld a, [de]
    jr jr_00c_42ea

    inc d
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    dec e
    ld de, $0004
    dec bc
    ld [$0419], sp

jr_00c_42ea:
    jr nz, jr_00c_430c

    jr nz, jr_00c_4308

    jr @+$10

    inc d
    dec e
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    ld a, [de]
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    ld a, [de]
    ld d, $07
    ld c, $18
    ld c, $14
    ld a, [de]

jr_00c_4308:
    nop
    ld de, $2704

jr_00c_430c:
    inc e
    jr @+$10

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    dec c
    ld c, $1a
    ld [$0403], sp
    nop
    ld a, [de]
    ld d, $07
    jr @+$1a

    ld c, $14
    ld a, [hl+]
    ld de, $1a04
    rlca
    inc b
    ld de, $2504
    ld a, [de]
    ld c, $11
    dec e
    inc b
    dec d
    inc b
    dec c
    ld a, [de]
    ld d, $07
    inc b
    ld de, $1a04
    ld h, $07
    inc b
    ld de, $2604
    dec e
    ld [$2712], sp
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $1318
    rlca
    ld [$060d], sp
    ld a, [hl+]
    ld [de], a
    dec e
    nop
    ld a, [de]
    rlca
    nop
    add hl, de
    jr jr_00c_4373

    ld bc, $000b
    dec c
    ld a, [bc]
    daa
    inc e
    jr @+$10

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    dec c
    ld c, $1a
    inc c
    inc b
    inc c
    ld c, $11
    jr @+$1f

    ld d, $07

jr_00c_4373:
    nop
    inc de
    ld [de], a
    ld c, $04
    dec d
    inc b
    ld de, $1f27
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $0e11
    ld d, $0d
    inc de
    ld de, $0d04
    ld [bc], a
    rlca
    ld a, [de]
    ld [bc], a
    ld c, $00
    inc de
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    dec e
    inc c
    nop
    inc de
    ld [bc], a
    rlca
    inc b
    ld [de], a
    ld a, [de]
    jr @+$10

    inc d
    ld de, $131d
    ld de, $140e
    ld [de], a
    inc b
    ld de, $2012
    rra
    jr @+$10

    inc d
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    inc de
    rlca
    ld [$060d], sp
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld c, $02
    ld a, [bc]
    inc b
    inc de
    ld a, [de]
    ld c, $05
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $00
    inc de
    jr nz, @+$21

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
    inc de
    jr @+$11

    ld [$0002], sp
    dec bc
    ld a, [de]
    ld [bc], a
    inc b
    ld [$080b], sp
    dec c
    ld b, $1d
    dec bc
    ld [$0706], sp
    inc de
    jr nz, jr_00c_442a

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
    ld de, $0b0e
    dec bc
    dec e
    ld c, $05
    ld a, [de]
    inc de
    ld c, $08
    dec bc
    inc b
    inc de
    ld a, [de]
    rrca
    nop
    rrca
    inc b

jr_00c_442a:
    ld de, $1c20
    ld [$1a13], sp
    inc de
    inc b
    dec c
    inc bc
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    ld [bc], a
    ld c, $0c
    inc b
    dec e
    ld [$1a0d], sp
    rlca
    nop
    dec c
    inc bc
    jr jr_00c_4461

    ld [$1d0d], sp
    ld [de], a
    inc d
    ld de, $0e11
    inc d
    dec c
    inc bc
    ld [$060d], sp
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec e
    inc de
    rlca
    inc b
    ld [de], a
    inc b

jr_00c_4461:
    jr nz, jr_00c_4482

    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $0b
    nop
    ld [de], a
    ld [de], a
    ld a, [de]
    ld [$1d12], sp
    inc b
    inc c
    rrca
    inc de
    jr @+$22

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld b, $0e
    dec bc
    inc bc

jr_00c_4482:
    ld a, [de]
    rrca
    dec bc
    nop
    inc de
    inc b
    inc bc
    dec bc
    ld [$0706], sp
    inc de
    inc b
    ld de, $1a20
    dec d
    inc b
    ld de, $1d18
    dec c
    ld [$0402], sp
    daa
    inc e
    jr @+$10

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
    ld [$080d], sp
    inc de
    ld [$0b00], sp
    ld [de], a
    ld a, [de]
    ld h, $09
    jr nz, jr_00c_44cb

    jr nz, @+$28

    dec e
    inc b
    inc de
    ld [bc], a
    rlca
    inc b
    inc bc
    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [$1213], sp
    dec e
    ld [de], a

jr_00c_44cb:
    ld [$0403], sp
    jr nz, jr_00c_44ef

    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    rlca
    ld [$180d], sp
    ld a, [de]
    ld b, $0b
    ld [$130d], sp
    ld a, [de]
    ld c, $05
    nop
    ld a, [de]
    db $10
    inc d
    nop
    ld de, $0413
    ld de, $021a
    nop
    inc de

jr_00c_44ef:
    ld [bc], a
    rlca
    inc b
    ld [de], a
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    ld [$0706], sp
    inc de
    jr nz, jr_00c_451e

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
    rrca
    nop
    ld de, $0813
    ld [bc], a
    inc d
    dec bc
    nop
    ld de, $180b
    dec e
    ld [de], a
    rrca

jr_00c_451e:
    inc b
    ld [bc], a
    ld [$0b00], sp
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    inc de
    rlca
    ld [$2012], sp
    inc sp
    jr c, @+$1c

    ld [de], a
    rrca
    inc b
    ld [bc], a
    ld [$0b00], sp
    jr nz, jr_00c_455a

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    jr nz, jr_00c_4577

    jr c, jr_00c_4563

    ld [de], a
    rrca
    inc b
    ld [bc], a
    ld [$0b00], sp
    ld a, [de]
    ld de, $140e
    dec c
    inc bc
    dec c
    ld c, $12
    inc b
    dec h
    dec bc
    inc b

jr_00c_455a:
    nop
    inc bc
    ld a, [de]
    ld bc, $0b14
    dec bc
    inc b
    inc de

jr_00c_4563:
    jr nz, jr_00c_4584

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
    nop
    inc de

jr_00c_4577:
    ld a, [de]
    jr jr_00c_4588

    inc d
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    nop
    jr @+$14

jr_00c_4584:
    dec h
    dec e
    ld h, $12

jr_00c_4588:
    ld c, $11
    ld de, $1a18
    rrca
    nop
    dec bc
    dec h
    ld a, [de]
    ld [$001d], sp
    ld [$2a0d], sp
    inc de
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    nop
    dec c
    jr @+$1f

    ld [bc], a
    rlca
    nop
    dec c
    ld b, $04
    daa
    inc e
    ld bc, $1314
    ld a, [de]
    jr jr_00c_45be

    inc d
    ld a, [de]
    inc bc
    ld c, $0d
    ld a, [hl+]
    inc de
    dec e
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    inc de

jr_00c_45be:
    ld c, $1a
    rrca
    nop
    jr jr_00c_45e1

    ld bc, $0204
    nop
    inc d
    ld [de], a
    inc b
    ld a, [de]
    inc de
    ld c, $03
    nop
    jr jr_00c_45ec

    ld [$1d12], sp
    ld [de], a
    rrca
    inc b
    ld [bc], a
    ld [$0b00], sp
    ld a, [de]
    inc bc
    nop
    jr jr_00c_4608

jr_00c_45e1:
    ld h, $1f
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    nop

jr_00c_45ec:
    ld de, $1a03
    ld d, $08
    inc de
    rlca
    dec e
    ld [de], a
    inc b
    dec d
    inc b
    ld de, $0b00
    ld a, [de]
    rlca
    ld c, $0b
    inc b
    ld [de], a
    dec e
    rrca
    inc d
    dec c
    ld [bc], a
    rlca
    inc b

jr_00c_4608:
    inc bc
    ld a, [de]
    ld [$130d], sp
    ld c, $1a
    ld [$2013], sp
    inc e
    ld d, $11
    ld [$1313], sp
    inc b
    dec c
    ld a, [de]
    nop
    ld [bc], a
    ld de, $120e
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld bc, $130e
    inc de
    ld c, $0c
    ld a, [de]
    nop
    ld de, $1a04
    inc de
    rlca
    inc b
    dec e
    ld d, $0e
    ld de, $1203
    dec h
    ld a, [de]
    ld h, $0f
    ld de, $1508
    nop
    inc de
    inc b
    dec e
    nop
    ld [bc], a
    ld [bc], a
    inc b
    ld [de], a
    ld [de], a
    dec h
    ld a, [de]
    rrca
    inc b
    dec c
    inc de
    rlca
    ld c, $14
    ld [de], a
    inc b
    dec e
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    jr nz, @+$28

    rra
    jr jr_00c_466f

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

jr_00c_466f:
    ld c, $1d
    rrca
    inc d
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    inc c
    ld a, [de]
    ld c, $0d
    jr nz, @+$1e

    inc de
    rlca
    inc b
    jr jr_00c_46ad

    ld de, $1a04
    inc de
    ld c, $0e
    ld a, [de]
    ld bc, $0608
    jr nz, jr_00c_46ae

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec d
    inc b
    ld de, $1a18
    ld d, $0e
    ld de, $1d0d
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

jr_00c_46ad:
    inc de

jr_00c_46ae:
    jr nz, jr_00c_46cc

    jr @+$10

    inc d
    ld a, [hl+]
    inc bc
    ld a, [de]
    rlca
    nop
    inc de
    inc b
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1d04
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $16
    ld a, [de]
    inc de
    rlca
    nop

jr_00c_46cc:
    inc de
    ld a, [de]
    ld [$1d13], sp
    ld [bc], a
    nop
    inc c
    inc b
    ld a, [de]
    dec b
    ld de, $0c0e
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    ld [$0204], sp
    inc b
    ld a, [de]
    ld c, $05
    dec e
    jr jr_00c_46fc

    inc d
    ld de, $051a
    nop
    dec d
    ld c, $11
    ld [$0413], sp
    dec e
    ld [bc], a
    rlca

jr_00c_46fc:
    inc b
    ld d, $08
    dec c
    ld b, $1a
    ld b, $14
    inc c
    jr nz, jr_00c_4726

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
    rlca
    nop
    dec c
    inc bc
    ld a, [bc]
    inc b
    ld de, $0702
    ld [$0504], sp
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    inc de

jr_00c_4726:
    rlca
    inc b
    ld a, [de]
    ld [$080d], sp
    inc de
    ld [$0b00], sp
    ld [de], a
    ld a, [de]
    add hl, bc
    jr nz, @+$14

    jr nz, jr_00c_4754

    inc b
    inc c
    ld bc, $0e11
    ld [$0403], sp
    ld de, $0304
    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [$2013], sp
    rra
    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec bc

jr_00c_4754:
    ld [$040a], sp
    dec e
    nop
    ld a, [de]
    rrca
    nop
    ld [$1a11], sp
    ld c, $05
    dec e
    ld [de], a
    inc d
    dec c
    ld b, $0b
    nop
    ld [de], a
    ld [de], a
    inc b
    ld [de], a
    jr nz, @+$1e

    jr jr_00c_477e

    inc d
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    ld a, [de]
    jr jr_00c_4788

    inc d
    ld a, [hl+]
    inc bc
    dec e

jr_00c_477e:
    ld [bc], a
    inc d
    inc de
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    nop
    ld [de], a
    rlca

jr_00c_4788:
    ld [$060d], sp
    dec e
    dec b
    ld [$1406], sp
    ld de, $1a04
    ld d, $04
    nop
    ld de, $0d08
    ld b, $1d
    inc de
    rlca
    inc b
    inc c
    ld a, [de]
    nop
    inc de
    ld a, [de]
    dec c
    ld [$0706], sp
    inc de
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld a, [bc]
    inc b
    jr @+$1c

    ld d, $08
    inc de
    rlca
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    ld de, $2503
    dec e
    ld h, $0e
    dec b
    dec b
    ld [$0402], sp
    dec h
    ld h, $1d
    ld [$120d], sp
    ld [bc], a
    ld de, $0108
    inc b
    inc bc
    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [$2013], sp
    rra
    jr jr_00c_47ef

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    ld a, [de]
    inc de
    ld c, $08
    dec bc

jr_00c_47ef:
    inc b
    inc de
    ld [de], a
    inc de
    nop
    dec bc
    dec bc
    jr nz, jr_00c_4812

    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc de
    inc b
    dec c
    ld [bc], a
    rlca
    dec e
    ld [$1a12], sp
    inc c
    ld c, $11
    inc b
    ld a, [de]
    inc de
    rlca
    nop
    dec c
    ld a, [de]
    jr jr_00c_4820

jr_00c_4812:
    inc d
    dec e
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
    daa
    rra

jr_00c_4820:
    ld d, $07
    nop
    inc de
    ld a, [de]
    inc bc
    ld c, $1a
    jr @+$10

    inc d
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    dec e
    jr @+$10

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    inc bc
    ld c, $08
    dec c
    ld b, $28
    rra
    jr jr_00c_4851

    inc d
    ld a, [de]
    ld [bc], a
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

jr_00c_4851:
    inc de
    jr nz, jr_00c_4873

    jr jr_00c_4864

    inc d
    ld a, [de]
    rrca
    ld c, $0f
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld b, $14
    inc c
    dec e

jr_00c_4864:
    ld [$130d], sp
    ld c, $1a
    jr @+$10

    inc d
    ld de, $0c1a
    ld c, $14
    inc de
    rlca

jr_00c_4873:
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    ld bc, $0604
    ld [$1a0d], sp
    ld [bc], a
    rlca
    inc b
    ld d, $08
    dec c
    ld b, $20
    inc e
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
    ld a, [de]
    ld [$1d13], sp
    dec bc
    ld c, $12
    inc b
    ld [de], a
    ld a, [de]
    ld [$1213], sp
    ld a, [de]
    dec b
    dec bc
    nop
    dec d
    ld c, $11
    jr nz, jr_00c_48ca

    jr @+$10

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
    ld [$2013], sp
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

jr_00c_48ca:
    ld [$060d], sp
    dec e
    inc c
    ld c, $11
    inc b
    ld a, [de]
    rlca
    nop
    dec c
    inc bc
    jr jr_00c_48f3

    inc de
    rlca
    nop
    dec c
    dec e
    nop
    ld a, [de]
    jr nz, jr_00c_4915

    jr c, @+$1c

    nop
    inc de
    ld a, [de]
    jr jr_00c_48f7

    inc d
    ld de, $121d
    ld [$0403], sp
    daa
    rra
    inc de

jr_00c_48f3:
    rlca
    inc b
    ld a, [de]
    ld [bc], a

jr_00c_48f7:
    nop
    ld bc, $1801
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e
    nop
    inc de
    ld a, [de]
    jr jr_00c_4915

    inc d
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld [de], a
    nop
    jr @+$14

    dec h
    dec e
    ld h, $12

jr_00c_4915:
    ld c, $11
    ld de, $1a18
    rrca
    nop
    dec bc
    dec h
    ld a, [de]
    ld [$001d], sp
    ld [$2a0d], sp
    inc de
    ld a, [de]
    ld b, $0e
    inc de
    ld a, [de]
    nop
    dec c
    jr jr_00c_494c

    ld [bc], a
    rlca
    nop
    dec c
    ld b, $04
    daa
    ld h, $1f
    ld h, $16
    nop
    ld [$1a13], sp
    nop
    ld a, [de]
    inc c
    ld [$140d], sp
    inc de
    inc b
    dec h
    ld h, $1d
    jr jr_00c_4959

    inc d

jr_00c_494c:
    ld a, [de]
    inc c
    inc d
    inc c
    ld bc, $040b
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    jr jr_00c_4967

jr_00c_4959:
    inc d
    dec e
    ld [de], a
    inc de
    ld c, $0f
    ld a, [de]
    jr @+$10

    inc d
    ld de, $0412
    dec bc

jr_00c_4967:
    dec b
    jr nz, @+$1e

    ld h, $08
    dec b
    ld a, [de]
    ld [$0b1a], sp
    inc b
    nop
    dec d
    inc b
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    rlca
    inc b
    ld de, $2504
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    ld c, $0d
    inc b
    ld a, [de]
    ld [$1d12], sp
    ld [de], a
    inc d
    ld de, $1a04
    inc de
    ld c, $1a
    dec b
    ld [$030d], sp
    ld a, [de]
    ld [$2713], sp
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld bc, $1d04
    nop
    ld a, [de]
    ld bc, $0300
    ld a, [de]
    inc de
    rlca
    ld [$060d], sp
    daa
    ld h, $1f
    ld d, $07
    nop
    inc c
    daa
    ld a, [de]
    jr jr_00c_49d3

    inc d
    ld de, $071a
    nop
    dec c
    inc bc
    dec e
    ld [$0f0c], sp
    nop
    ld [bc], a
    inc de

jr_00c_49d3:
    ld [de], a
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    dec e
    ld [de], a
    rlca
    nop
    ld de, $1a0f
    ld [de], a
    inc de
    nop
    ld bc, $0e1a
    dec b
    ld a, [de]
    rrca
    nop
    ld [$000d], sp
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec c
    ld a, [de]
    ld b, $0e
    inc b
    ld [de], a
    dec e
    dec c
    inc d
    inc c
    ld bc, $1f27
    ld d, $07
    ld c, $1a
    nop
    ld de, $1a04
    jr jr_00c_4a1a

    inc d
    dec e
    ld [de], a
    rrca
    inc b
    nop
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    inc de
    ld c, $28

jr_00c_4a1a:
    rra
    jr jr_00c_4a2b

    inc d
    ld de, $151a
    ld [$0812], sp
    ld c, $0d
    ld a, [de]
    ld [de], a
    ld d, $08
    inc c

jr_00c_4a2b:
    ld [de], a
    dec e
    nop
    dec c
    inc bc
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    inc de
    inc d
    inc c
    ld bc, $040b
    dec e
    nop
    ld d, $0a
    ld d, $00
    ld de, $0b03
    jr @+$29

    inc e
    ld [bc], a
    nop
    inc de
    ld [bc], a
    rlca
    ld [$060d], sp
    ld a, [de]
    jr jr_00c_4a61

    inc d
    ld de, $0412
    dec bc
    dec b
    dec h
    jr @+$10

    inc d
    ld a, [de]
    ld de, $0114

jr_00c_4a61:
    ld a, [de]
    jr jr_00c_4a72

    inc d
    ld de, $131d
    rlca
    ld de, $010e
    ld bc, $0d08
    ld b, $1a
    inc de

jr_00c_4a72:
    inc b
    inc c
    rrca
    dec bc
    inc b
    ld [de], a
    daa
    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    nop
    ld [$1a0d], sp
    ld bc, $0704
    ld [$030d], sp
    dec e
    jr jr_00c_4a9a

    inc d
    ld de, $041a
    jr @+$06

    ld [de], a
    ld a, [de]
    ld [$1d12], sp
    ld b, $04
    inc de

jr_00c_4a9a:
    inc de
    ld [$060d], sp
    ld a, [de]
    ld d, $0e
    ld de, $0412
    daa
    ld a, [de]
    jr @+$10

    inc d
    ld d, $08
    ld [de], a
    rlca
    ld a, [de]
    jr jr_00c_4abe

    inc d
    ld a, [de]
    ld a, [bc]
    dec c
    inc b
    ld d, $1a
    ld d, $07
    nop
    inc de
    inc de
    ld c, $1a

jr_00c_4abe:
    inc bc
    ld c, $1a
    nop
    ld bc, $140e
    inc de
    ld a, [de]
    jr jr_00c_4ad7

    inc d
    ld de, $0c1d
    inc b
    inc c
    ld c, $11
    jr jr_00c_4aed

    dec bc
    ld c, $12
    ld [de], a

jr_00c_4ad7:
    daa
    inc e
    inc c
    nop
    jr jr_00c_4ade

    inc b

jr_00c_4ade:
    ld a, [de]
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
    rlca
    inc b
    dec bc

jr_00c_4aed:
    rrca
    ld a, [de]
    nop
    dec bc
    dec bc
    inc b
    dec d
    ld [$1300], sp
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    inc de
    inc b
    ld de, $0811
    ld bc, $040b
    ld a, [de]
    rrca
    nop
    ld [$270d], sp
    rra
    jr jr_00c_4b1b

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    ld a, [de]
    inc bc
    nop
    dec c
    ld a, [bc]

jr_00c_4b1b:
    dec h
    dec e
    inc bc
    ld [$060d], sp
    jr jr_00c_4b3d

    ld d, $00
    ld [de], a
    rlca
    ld de, $0e0e
    inc c
    jr nz, @+$1e

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
    nop
    dec c

jr_00c_4b3d:
    inc bc
    dec e
    ld [de], a
    inc c
    inc b
    dec bc
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [$2513], sp
    ld a, [de]
    jr jr_00c_4b5c

    inc d
    dec e
    dec b
    ld [$1406], sp
    ld de, $1a04
    inc de
    rlca
    inc b
    ld a, [de]
    add hl, bc

jr_00c_4b5c:
    nop
    dec c
    ld [$0e13], sp
    ld de, $140c
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $1a04
    ld c, $0d
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0a08
    inc b
    jr nz, jr_00c_4b94

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $131a
    rlca
    nop
    inc de
    dec e
    dec bc
    inc b
    nop
    inc bc
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de

jr_00c_4b94:
    rlca
    inc b
    dec e
    ld d, $00
    ld [de], a
    rlca
    ld de, $0e0e
    inc c
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    inc c
    ld c, $12
    inc de
    ld a, [de]
    dec bc
    ld [$040a], sp
    dec bc
    jr @+$1c

    ld [$130d], sp
    ld c, $1d
    inc de
    ld de, $140e
    ld bc, $040b
    jr nz, @+$21

    jr jr_00c_4bce

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld a, [de]
    jr jr_00c_4bd6

    inc d
    ld de, $0412
    dec bc
    dec b

jr_00c_4bce:
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]

jr_00c_4bd6:
    inc c
    ld [$1111], sp
    ld c, $11
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0600
    ld b, $04
    inc bc
    ld a, [de]
    dec b
    nop
    ld [bc], a
    inc b
    ld a, [de]
    ld c, $05
    nop
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0d00
    ld b, $04
    ld de, $121a
    inc de
    nop
    ld de, $1204
    dec e
    ld bc, $0200
    ld a, [bc]
    jr nz, @+$1c

    jr jr_00c_4c18

    inc d
    ld a, [de]
    ld [de], a
    inc de
    ld [$0b0b], sp
    dec e
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]

jr_00c_4c18:
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    ld a, [de]
    ld d, $07
    ld c, $18
    ld c, $14
    ld a, [de]
    nop
    ld de, $2704
    rra
    nop
    dec c
    ld a, [de]
    inc b
    dec bc
    inc b
    ld [bc], a
    inc de
    ld de, $0208
    ld a, [de]
    dec bc
    ld [$0706], sp
    inc de
    dec e
    ld [$1a12], sp
    rlca
    nop
    dec c
    ld b, $08
    dec c
    ld b, $1a
    dec b
    ld de, $0c0e
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    inc b
    ld [$080b], sp
    dec c
    ld b, $20
    rra
    ld [$1a13], sp
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1a12
    inc de
    ld c, $1a
    ld bc, $1d04
    nop
    ld a, [de]
    ld [de], a
    ld [$0a0d], sp
    jr nz, jr_00c_4c8f

    ld de, $1214
    inc de
    dec e
    ld [de], a
    inc de
    nop
    ld [$120d], sp
    ld a, [de]
    ld [de], a
    rlca
    ld c, $16
    ld a, [de]
    ld d, $07
    inc b
    ld de, $1d04
    inc de
    rlca
    inc b

jr_00c_4c8f:
    ld a, [de]
    ld d, $00
    inc de
    inc b
    ld de, $021d
    ld c, $0d
    ld [de], a
    inc de
    nop
    dec c
    inc de
    dec bc
    jr jr_00c_4cbb

    inc bc
    ld de, $0f08
    ld [de], a
    jr nz, @+$21

    jr @+$10

    inc d
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $040b
    ld d, $1a
    nop
    ld d, $00
    jr jr_00c_4cce

jr_00c_4cbb:
    rlca
    inc b
    ld a, [de]
    inc c
    ld [$1111], sp
    ld c, $11
    jr nz, jr_00c_4ce0

    ld [$1d13], sp
    ld [de], a
    rlca
    nop
    inc de
    inc de

jr_00c_4cce:
    inc b
    ld de, $1a12
    ld [de], a
    inc b
    dec c
    inc bc
    ld [$060d], sp
    dec e
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    ld a, [de]

jr_00c_4ce0:
    ld [de], a
    rlca
    nop
    ld de, $1203
    ld a, [de]
    inc b
    dec d
    inc b
    ld de, $1618
    rlca
    ld [$0702], sp
    ld a, [de]
    ld d, $00
    jr jr_00c_4d1d

    rra
    inc de
    rlca
    ld [$1a12], sp
    ld d, $00
    ld [de], a
    rlca
    ld de, $0e0e
    inc c
    dec e
    ld de, $0004
    dec bc
    dec bc
    jr jr_00c_4d26

    dec c
    inc b
    inc b
    inc bc
    ld [de], a
    dec e
    nop
    ld a, [de]
    ld b, $0e
    ld c, $03
    ld a, [de]
    ld [bc], a
    dec bc
    inc b
    nop

jr_00c_4d1d:
    dec c
    ld [$060d], sp
    jr nz, jr_00c_4d40

    dec c
    ld c, $20

jr_00c_4d26:
    jr nz, jr_00c_4d48

    ld a, [de]
    inc c
    nop
    ld a, [bc]
    inc b
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    nop
    dec e
    ld b, $0e
    ld c, $03
    ld a, [de]
    dec b
    inc d
    inc c
    ld [$0006], sp

jr_00c_4d40:
    inc de
    ld [$0d0e], sp
    daa
    rra
    inc de
    rlca

jr_00c_4d48:
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $0b1a
    inc b
    nop
    inc bc
    ld [de], a
    ld a, [de]
    ld c, $14
    inc de
    inc de
    ld c, $1a
    nop
    ld a, [de]
    rlca
    nop
    dec bc
    dec bc
    ld d, $00
    jr jr_00c_4d85

    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc c
    ld [$1111], sp
    ld c, $11
    ld a, [de]
    ld d, $08
    inc de
    rlca
    nop
    ld a, [de]
    ld [de], a
    ld [$0f0c], sp
    dec bc
    inc b
    ld a, [de]
    ld d, $0e
    ld c, $03

jr_00c_4d85:
    inc b
    dec c
    dec e
    dec b
    ld de, $0c00
    inc b
    jr nz, @+$21

    jr jr_00c_4d9f

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    ld a, [de]
    inc bc
    ld [$060d], sp

jr_00c_4d9f:
    jr jr_00c_4dbe

    rlca
    nop
    dec bc
    dec bc
    ld d, $00
    jr jr_00c_4dc9

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
    inc d
    inc bc
    inc bc
    dec bc
    inc b
    dec e
    ld c, $0d
    ld a, [de]

jr_00c_4dbe:
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $1f20

jr_00c_4dc9:
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    dec bc
    nop
    ld [$1d0d], sp
    ld d, $0e
    ld c, $03
    inc b
    dec c
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $1f20
    inc de
    rlca
    ld [$1a12], sp
    inc bc
    ld c, $0e
    ld de, $071a
    nop
    ld [de], a
    dec e
    ld [de], a
    ld [bc], a
    inc d
    dec b
    dec b
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    ld [bc], a
    ld de, $1300
    ld [bc], a
    rlca
    inc b
    ld [de], a
    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [$2013], sp
    inc e
    ld [$1a13], sp
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $1a04
    inc d
    ld [de], a
    inc b
    inc bc
    dec e
    nop
    ld a, [de]
    dec bc
    ld c, $13
    jr nz, @+$21

    jr jr_00c_4e34

    inc d
    ld a, [de]
    ld [de], a
    inc de
    inc b
    rrca
    ld a, [de]
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca

jr_00c_4e34:
    inc b
    dec e
    rrca
    ld c, $0b
    ld [$0402], sp
    ld a, [de]
    ld [de], a
    inc de
    nop
    inc de
    ld [$0d0e], sp
    jr nz, jr_00c_4e62

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
    jr jr_00c_4e74

    ld [de], a
    inc d
    ld de, $0e11
    inc d
    dec c
    inc bc
    ld a, [de]
    jr jr_00c_4e70

jr_00c_4e62:
    inc d
    ld a, [de]
    ld d, $08
    inc de
    rlca
    dec e
    inc de
    rlca
    inc b
    ld [$1a11], sp
    rlca

jr_00c_4e70:
    nop
    dec c
    inc bc
    ld [de], a

jr_00c_4e74:
    ld a, [de]
    ld c, $0d
    dec e
    inc de
    rlca
    inc b
    ld [$1a11], sp
    ld [bc], a
    dec bc
    inc d
    ld bc, $1a12
    nop
    dec c
    inc bc
    dec e
    ld b, $14
    dec c
    ld [de], a
    jr nz, @+$1e

    inc de
    rlca
    inc b
    jr @+$1c

    ld [de], a
    inc b
    inc b
    inc c
    ld a, [de]
    dec d
    inc b
    ld de, $1d18
    inc b
    nop
    ld b, $04
    ld de, $131a
    ld c, $1a
    rlca
    inc b
    nop
    ld de, $181d
    ld c, $14
    ld de, $121a
    inc de
    ld c, $11
    jr jr_00c_4ed6

    rra
    inc de
    rlca
    inc b
    ld de, $1a04
    ld [$1a12], sp
    dec c
    ld c, $13
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
    ld a, [de]
    nop
    ld bc, $140e
    inc de
    ld a, [de]

jr_00c_4ed6:
    inc de
    rlca
    ld [$0712], sp
    nop
    dec bc
    dec bc
    ld d, $00
    jr @+$22

    rra
    jr jr_00c_4ef3

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld d, $0e

jr_00c_4ef3:
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
    jr nz, @+$21

    nop
    ld a, [de]
    dec b
    nop
    ld [$130d], sp
    ld a, [de]
    ld d, $07
    ld [$0413], sp
    ld a, [de]
    dec b
    ld [$0c0b], sp
    ld [bc], a
    ld c, $15
    inc b
    ld de, $1a12
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    ld [$1111], sp
    ld c, $11
    jr nz, @+$0a

    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    ld b, $11
    ld [$180c], sp
    ld a, [de]
    nop
    ld [de], a
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $1204
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    nop
    ld de, $0406
    ld a, [de]
    inc c
    inc b
    inc de
    nop
    dec bc
    ld d, $00
    ld [de], a
    inc de
    inc b
    ld bc, $1200
    ld a, [bc]
    inc b
    inc de
    jr nz, @+$21

    inc de
    rlca
    ld [$1a12], sp
    dec bc
    ld [$0706], sp
    inc de
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e
    dec bc
    ld [$040a], sp
    ld a, [de]
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [$1213], sp
    dec e
    dec bc
    nop
    ld [de], a
    inc de
    ld a, [de]
    dec bc
    inc b
    ld b, $20
    rra
    jr jr_00c_4fab

    inc d
    ld a, [de]
    dec b
    ld [$1406], sp
    ld de, $1a04
    ld [$1a05], sp
    jr @+$10

jr_00c_4fab:
    inc d
    dec e
    ld d, $00
    ld [de], a
    rlca
    inc b
    inc bc
    ld a, [de]
    jr jr_00c_4fc4

    inc d
    ld de, $071a
    nop
    dec c
    inc bc
    ld [de], a
    dec e
    ld [$1a0d], sp
    inc de
    rlca

jr_00c_4fc4:
    ld [$1a12], sp
    ld [de], a
    ld [$0a0d], sp
    dec h
    dec e
    inc de
    rlca
    inc b
    jr jr_00c_4ffc

    inc bc
    ld a, [de]
    add hl, bc
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld b, $04
    inc de
    dec e
    inc bc
    ld [$1311], sp
    ld [$1104], sp
    jr nz, jr_00c_5005

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    inc b
    dec c
    inc de
    ld de, $0d00
    ld [bc], a
    inc b
    dec e
    inc de
    ld c, $1a
    inc de

jr_00c_4ffc:
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    inc c
    inc b
    dec c
    ld a, [hl+]

jr_00c_5005:
    ld [de], a
    dec e
    inc de
    ld c, $08
    dec bc
    inc b
    inc de
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec bc
    dec bc
    jr nz, jr_00c_5034

    jr jr_00c_5025

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    dec bc
    nop

jr_00c_5025:
    inc bc
    ld [$1204], sp
    ld a, [de]
    ld de, $0e0e
    inc c
    jr nz, jr_00c_504d

    ld [de], a
    ld c, $0c
    inc b

jr_00c_5034:
    rlca
    ld c, $16
    dec h
    ld a, [de]
    jr jr_00c_5049

    inc d
    ld a, [de]
    dec b
    inc b
    inc b
    dec bc
    dec e
    ld c, $14
    inc de
    ld a, [de]
    ld c, $05
    ld a, [de]

jr_00c_5049:
    rrca
    dec bc
    nop
    ld [bc], a

jr_00c_504d:
    inc b
    daa
    rra
    jr jr_00c_5060

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    nop
    dec c
    ld a, [de]
    inc b
    inc c
    rrca

jr_00c_5060:
    inc de
    jr @+$14

    inc de
    nop
    dec bc
    dec bc
    jr nz, jr_00c_5085

    jr jr_00c_5079

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld a, [de]
    nop
    ld a, [de]
    ld [bc], a
    ld de, $0200
    ld a, [bc]
    dec e

jr_00c_5079:
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $08
    dec bc
    inc b

jr_00c_5085:
    inc de
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld d, $00
    inc de
    inc b
    ld de, $0b1a
    inc b
    nop
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    ld c, $14
    inc de
    dec e
    ld c, $05
    ld a, [de]
    ld [$2013], sp
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld de, $0b0e
    dec bc
    ld a, [de]
    ld c, $05
    dec e
    inc de
    ld c, $08
    dec bc
    inc b
    inc de
    ld a, [de]
    rrca
    nop
    rrca
    inc b
    ld de, $1c20
    ld [$1a13], sp
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040a], sp
    ld a, [de]
    ld [$1d13], sp
    rlca
    nop
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld bc, $0404
    dec c
    ld a, [de]
    inc d
    ld [de], a
    inc b
    inc bc
    dec e
    jr @+$06

    inc de
    jr nz, jr_00c_5107

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    rrca
    inc d
    inc bc
    inc bc
    dec bc
    inc b
    ld a, [de]
    ld c, $05
    dec e
    ld d, $00
    inc de
    inc b
    ld de, $131a
    rlca
    nop
    inc de
    ld a, [de]
    nop
    rrca
    rrca

jr_00c_5107:
    inc b
    nop
    ld de, $1312
    ld c, $1a
    ld bc, $1a04
    ld [bc], a
    ld c, $0c
    ld [$060d], sp
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
    inc de
    ld c, $08
    dec bc
    inc b
    inc de
    jr nz, jr_00c_514a

    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    ld c, $11
    ld [bc], a
    inc b
    dec bc
    nop
    ld [$1a0d], sp
    ld c, $05
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $08
    dec bc
    inc b
    inc de
    ld a, [de]
    ld [de], a
    inc b
    inc b

jr_00c_514a:
    inc c
    ld [de], a
    dec e
    inc de
    ld c, $1a
    rlca
    nop
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
    jr jr_00c_517d

    ld [bc], a
    ld de, $0200
    ld a, [bc]
    inc b
    inc bc
    jr nz, jr_00c_5188

    ld d, $00
    inc de
    inc b
    ld de, $121a
    dec bc
    ld c, $16
    dec bc
    jr @+$1f

    inc de
    ld de, $0208

jr_00c_517d:
    ld a, [bc]
    dec bc
    inc b
    ld [de], a
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    inc de

jr_00c_5188:
    rlca
    inc b
    dec e
    ld bc, $160e
    dec bc
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    dec b
    ld c, $11
    inc c
    ld [de], a
    ld a, [de]
    nop
    dec e
    rrca
    inc d
    inc bc
    inc bc
    dec bc
    inc b
    ld a, [de]
    ld c, $14
    inc de
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    rlca
    nop
    dec bc
    dec bc
    ld d, $00
    jr jr_00c_51d6

    rra
    ld a, [de]
    jr jr_00c_51c8

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    ld de, $0b04
    ld [$1504], sp
    inc b
    inc bc

jr_00c_51c8:
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    jr jr_00c_51de

    inc d
    ld a, [de]
    dec b
    ld [$030d], sp

jr_00c_51d6:
    dec e
    dec c
    ld c, $13
    rlca
    ld [$060d], sp

jr_00c_51de:
    ld a, [de]
    dec b
    dec bc
    ld c, $00
    inc de
    ld [$060d], sp
    dec e
    ld [$120d], sp
    ld [$0403], sp
    jr nz, @+$21

    inc de
    rlca
    inc b
    ld a, [de]
    dec d
    nop
    ld b, $14
    inc b
    dec e
    ld de, $0204
    ld c, $0b
    dec bc
    inc b
    ld [bc], a
    inc de
    ld [$0d0e], sp
    ld a, [de]
    ld c, $05
    dec e
    jr jr_00c_521a

    inc d
    ld de, $0c1a
    ld c, $13
    rlca
    inc b
    ld de, $131d
    inc b
    dec bc
    dec bc

jr_00c_521a:
    ld [$060d], sp
    ld a, [de]
    jr jr_00c_522e

    inc d
    ld a, [de]
    inc de
    ld c, $1a
    rrca
    inc d
    inc de
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b

jr_00c_522e:
    nop
    inc de
    ld a, [de]
    inc bc
    ld c, $16
    dec c
    dec e
    ld [bc], a
    ld c, $0c
    inc b
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    inc c
    ld [$030d], sp
    jr nz, jr_00c_5264

    ld [$1a13], sp
    ld [$1a12], sp
    dec d
    inc b
    ld de, $1a18
    db $10
    inc d
    ld [$1304], sp
    dec e
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $0e
    inc c
    inc b
    dec c
    ld a, [hl+]
    ld [de], a

jr_00c_5264:
    dec e
    inc de
    ld c, $08
    dec bc
    inc b
    inc de
    ld a, [de]
    ld [de], a
    inc de
    nop
    dec bc
    dec bc
    jr nz, jr_00c_528d

    jr jr_00c_5283

    inc d
    dec e
    rlca
    inc b
    nop
    ld de, $0d1a
    ld c, $13
    rlca
    ld [$060d], sp

jr_00c_5283:
    dec e
    inc b
    rla
    ld [bc], a
    inc b
    rrca
    inc de
    ld a, [de]
    inc de
    rlca

jr_00c_528d:
    inc b
    ld a, [de]
    dec b
    nop
    ld [$130d], sp
    dec e
    inc de
    ld de, $0208
    ld a, [bc]
    dec bc
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld d, $00
    inc de
    inc b
    ld de, $1f20
    jr jr_00c_52b7

    inc d
    ld de, $121a
    inc de
    ld c, $11
    jr jr_00c_52cc

    nop
    dec c
    inc bc
    dec e
    inc de

jr_00c_52b7:
    rlca
    inc b
    ld a, [de]
    inc de
    rlca
    ld de, $0404
    ld a, [de]
    rrca
    ld [$0204], sp
    inc b
    ld [de], a
    dec e
    ld c, $05
    ld a, [de]
    inc b
    dec d

jr_00c_52cc:
    ld [$0403], sp
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    inc c
    nop
    inc bc
    inc b
    dec e
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
    dec bc
    ld c, $0e
    ld a, [bc]
    dec e
    ld [de], a
    inc d
    ld [de], a
    rrca
    ld [$0802], sp
    ld c, $14
    ld [de], a
    jr nz, jr_00c_531b

    ld bc, $1314
    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]
    ld [bc], a
    nop
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld bc, $1d04
    ld [bc], a
    inc b
    ld de, $0013
    ld [$1a0d], sp
    ld c, $05
    ld a, [de]

jr_00c_531b:
    inc de
    rlca
    nop
    inc de
    jr nz, jr_00c_5340

    jr jr_00c_5331

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    ld d, $07
    nop
    inc de
    dec e
    ld [de], a

jr_00c_5331:
    inc b
    inc b
    inc c
    ld [de], a
    ld a, [de]
    inc de
    ld c, $1a
    ld bc, $1a04
    nop
    dec e
    inc bc
    nop

jr_00c_5340:
    ld de, $250a
    ld a, [de]
    inc b
    inc c
    rrca
    inc de
    jr jr_00c_5367

    ld de, $1204
    inc de
    nop
    inc d
    ld de, $0d00
    inc de
    jr nz, jr_00c_5372

    ld [$1a13], sp
    ld [$1a12], sp
    inc b
    ld [$0713], sp
    inc b
    ld de, $021d
    dec bc
    ld c, $12

jr_00c_5367:
    inc b
    inc bc
    ld a, [de]
    ld c, $11
    ld a, [de]
    inc b
    dec bc
    ld [de], a
    inc b
    dec e

jr_00c_5372:
    jr jr_00c_5382

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld [de], a
    ld [bc], a
    nop
    ld de, $0304
    dec e
    inc b
    dec d

jr_00c_5382:
    inc b
    ld de, $0e18
    dec c
    inc b
    ld a, [de]
    nop
    ld d, $00
    jr jr_00c_53ae

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
    jr @+$10

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld a, [de]
    nop
    dec c
    ld a, [de]
    inc b
    inc c

jr_00c_53ae:
    rrca
    inc de
    jr jr_00c_53cf

    ld [de], a
    inc de
    ld de, $0404
    inc de
    ld a, [de]
    ld d, $08
    inc de
    rlca
    ld a, [de]
    dec c
    ld c, $1d
    ld c, $0d
    inc b
    ld a, [de]
    ld [$1a0d], sp
    ld [de], a
    ld [$0706], sp
    inc de
    jr nz, jr_00c_53ee

jr_00c_53cf:
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld de, $0208
    ld a, [bc]
    inc b
    inc de
    jr jr_00c_53fb

    ld [de], a
    inc de
    nop
    ld [$0211], sp
    nop
    ld [de], a
    inc b
    ld a, [de]
    ld d, $07
    ld [$0702], sp
    dec e

jr_00c_53ee:
    dec bc
    inc b
    nop
    inc bc
    ld [de], a
    ld a, [de]
    inc d
    rrca
    ld a, [de]
    inc de
    ld c, $1a
    inc de

jr_00c_53fb:
    rlca
    inc b
    dec e
    ld [de], a
    inc b
    ld [bc], a
    ld c, $0d
    inc bc
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $1f20
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $071a
    nop
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld d, $0e
    ld de, $1a03
    ld h, $02
    inc b
    dec bc
    dec bc
    nop
    ld de, $1d26
    ld d, $11
    ld [$1313], sp
    inc b
    dec c
    ld a, [de]
    ld c, $0d
    ld a, [de]
    ld [$2013], sp
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
    ld de, $0e1a
    dec b
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld de, $1204
    inc de
    nop
    inc d
    ld de, $0d00
    inc de
    jr nz, jr_00c_5480

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    rlca
    ld c, $13
    ld a, [de]
    ld b, $0b
    nop
    ld [de], a
    ld [de], a
    dec e
    dec b
    inc d
    dec bc
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [de], a
    inc b
    dec bc
    inc de
    add hl, de

jr_00c_5480:
    inc b
    ld de, $1f20
    ld [$2a13], sp
    ld [de], a
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
    ld de, $0e13
    rrca
    jr nz, jr_00c_54b5

    jr @+$10

    inc d
    ld a, [de]
    ld [bc], a
    nop
    inc de
    ld [bc], a
    rlca
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    dec bc
    ld [$0706], sp
    inc de
    ld de, $0504
    dec bc
    inc b
    ld [bc], a
    inc de
    ld [$0d0e], sp

jr_00c_54b5:
    ld a, [de]
    ld c, $05
    dec e
    jr jr_00c_54c9

    inc d
    ld de, $0412
    dec bc
    dec b
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e

jr_00c_54c9:
    rlca
    ld [$0706], sp
    dec bc
    jr jr_00c_54ea

    rrca
    ld c, $0b
    ld [$0712], sp
    inc b
    inc bc
    dec e
    dec b
    ld [$080d], sp
    ld [de], a
    rlca
    jr nz, @+$21

    inc de
    rlca
    ld [$1a12], sp
    ld de, $0e0e
    inc c

jr_00c_54ea:
    ld a, [de]
    ld [$1d12], sp
    inc b
    inc c
    rrca
    inc de
    jr @+$22

    rra
    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $161a
    ld c, $0d
    ld a, [hl+]
    inc de
    dec e
    ld c, $0f
    inc b
    dec c
    jr nz, jr_00c_5526

    ld [$1a13], sp
    inc c
    inc d
    ld [de], a
    inc de
    ld a, [de]
    ld bc, $1d04
    dec bc
    ld c, $02
    ld a, [bc]
    inc b
    inc bc
    jr nz, @+$21

    jr jr_00c_552d

    inc d
    ld a, [de]
    db $10
    inc d
    ld [$0a02], sp

jr_00c_5526:
    dec bc
    jr jr_00c_5543

    inc bc
    ld c, $16
    dec c

jr_00c_552d:
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    inc b
    dec bc
    inc de
    add hl, de
    inc b
    ld de, $1c20
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    dec c
    ld c, $13

jr_00c_5543:
    ld a, [de]
    jr jr_00c_5554

    inc d
    ld de, $0f1d
    ld de, $0504
    inc b
    ld de, $0411
    inc bc
    ld a, [de]
    inc bc

jr_00c_5554:
    ld de, $0d08
    ld a, [bc]
    dec h
    dec e
    ld bc, $1314
    ld a, [de]
    ld [$2a13], sp
    dec bc
    dec bc
    ld a, [de]
    inc bc
    ld c, $1a
    ld [$1a0d], sp
    nop
    dec e
    rrca
    ld [$020d], sp
    rlca
    daa
    rra
    ld d, $08
    inc de
    rlca
    ld a, [de]
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
    dec e
    ld [bc], a
    dec bc
    ld [$0a02], sp
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    inc b
    jr jr_00c_55af

    inc d
    dec c
    dec bc
    ld c, $02
    ld a, [bc]
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
    ld de, $1f20
    ld d, $08
    inc de
    rlca
    ld a, [de]

jr_00c_55af:
    nop
    ld a, [de]
    ld bc, $0d00
    ld b, $1a
    nop
    dec c
    inc bc
    ld a, [de]
    nop
    dec e
    ld [bc], a
    ld de, $1200
    rlca
    dec h
    ld a, [de]
    jr jr_00c_55d3

    inc d
    ld a, [de]
    ld bc, $0e0b
    ld d, $1d
    nop
    ld d, $00
    jr jr_00c_55eb

    inc de
    rlca

jr_00c_55d3:
    inc b
    ld a, [de]
    ld d, $08
    dec c
    inc bc
    ld c, $16
    jr nz, @+$21

    jr jr_00c_55ed

    inc d
    ld a, [de]
    inc de
    ld de, $1a18
    inc de
    ld c, $1a
    ld c, $0f
    inc b

jr_00c_55eb:
    dec c
    dec e

jr_00c_55ed:
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $0d14
    ld a, [bc]
    ld a, [de]
    ld bc, $1314
    dec e
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    dec bc
    ld c, $02
    ld a, [bc]
    inc b
    inc bc
    jr nz, @+$21

    inc de
    rlca
    ld [$1a12], sp
    ld [de], a
    inc de
    nop
    ld [$1611], sp
    nop
    jr jr_00c_5633

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
    ld [de], a
    inc b
    ld [bc], a
    ld c, $0d
    inc bc
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $1f20
    jr jr_00c_5641

jr_00c_5633:
    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    inc b

jr_00c_5641:
    dec bc
    dec bc
    nop
    ld de, $1c20
    inc de
    rlca
    inc b
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [de], a
    dec e
    dec bc
    ld [$040a], sp
    ld a, [de]
    ld [$1a13], sp
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    inc d
    ld [de], a
    inc b
    dec e
    nop
    ld a, [de]
    ld b, $0e
    ld c, $03
    ld a, [de]
    ld [de], a
    ld d, $04
    inc b
    rrca
    ld [$060d], sp
    jr nz, jr_00c_5699

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld a, [bc]
    ld [$030d], sp
    ld a, [de]
    ld c, $05
    dec e
    dec bc
    ld [$0706], sp
    inc de
    ld a, [de]
    jr jr_00c_56a1

    inc d
    ld a, [hl+]
    inc bc
    ld a, [de]
    inc b
    rla

jr_00c_5699:
    rrca
    inc b
    ld [bc], a
    inc de
    inc de
    ld c, $1a
    dec b

jr_00c_56a1:
    ld [$030d], sp
    ld a, [de]
    ld [$1a0d], sp
    nop
    dec e
    ld [bc], a
    inc b
    dec bc
    dec bc
    nop
    ld de, $1f20
    nop
    ld a, [de]
    ld bc, $1100
    ld de, $0b04
    ld a, [de]
    ld [$1a12], sp
    ld [de], a
    inc b
    inc de
    ld a, [de]
    inc d
    rrca
    nop
    ld b, $00
    ld [$120d], sp
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $00
    dec bc
    dec bc
    jr nz, jr_00c_56f5

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    rrca
    ld [$0e06], sp
    inc de
    jr nz, jr_00c_5704

    jr jr_00c_56f5

    inc d
    ld a, [de]
    nop
    ld de, $1a04
    inc c
    inc b
    ld [de], a
    inc c
    inc b
    ld de, $1908

jr_00c_56f5:
    inc b
    inc bc
    ld bc, $1a18
    inc de
    rlca
    inc b
    ld a, [de]
    ld [$130d], sp
    ld de, $0208

jr_00c_5704:
    nop
    inc de
    inc b
    dec e
    inc bc
    inc b
    ld [de], a
    ld [$0d06], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a
    rrca
    ld [$0403], sp
    ld de, $161a
    inc b
    ld bc, $1f27
    ld de, $160e
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    ld de, $160e
    ld [de], a
    ld a, [de]
    ld c, $05
    dec e
    inc bc
    inc d
    ld [de], a
    inc de
    jr jr_00c_5753

    ld bc, $130e
    inc de
    dec bc
    inc b
    ld [de], a
    ld a, [de]
    dec bc
    ld [$040d], sp
    inc de
    rlca
    ld [$1a12], sp
    ld de, $0200
    ld a, [bc]
    jr nz, jr_00c_576c

    ld c, $0d
    inc b

jr_00c_5753:
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $130e
    inc de
    dec bc
    inc b
    ld [de], a
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld de, $0608

jr_00c_576c:
    rlca
    inc de
    ld a, [de]
    rlca
    nop
    dec c
    inc bc
    dec e
    ld [de], a
    ld [$0403], sp
    ld a, [de]
    nop
    rrca
    rrca
    inc b
    nop
    ld de, $1a12
    inc de
    ld c, $1a
    ld bc, $1404
    dec c
    inc d
    ld [de], a
    inc d
    nop
    dec bc
    dec bc
    jr @+$1c

    ld [bc], a
    dec bc
    inc b
    nop
    dec c
    jr nz, jr_00c_57b6

    jr jr_00c_57a7

    inc d
    ld a, [de]
    dec c
    ld c, $13
    ld [$0402], sp
    ld a, [de]
    nop
    dec e
    dec bc
    nop
    ld [bc], a

jr_00c_57a7:
    ld a, [bc]
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc bc
    inc d
    ld [de], a
    inc de
    jr nz, @+$1e

    rlca
    ld c, $16
    ld a, [de]

jr_00c_57b6:
    rrca
    inc b
    ld [bc], a
    inc d
    dec bc
    ld [$1100], sp
    daa
    rra
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
    ld bc, $1100
    ld de, $0b04
    ld a, [de]
    ld b, $14
    ld [de], a
    rlca
    inc b
    ld [de], a
    dec e
    ld c, $14
    inc de
    ld a, [de]
    ld c, $0d
    inc de
    ld c, $1a
    jr jr_00c_57fb

    inc d
    ld de, $121d
    rlca
    ld c, $04
    ld [de], a
    jr nz, jr_00c_5816

    ld d, $07
    inc b
    dec c

jr_00c_57fb:
    ld a, [de]
    jr jr_00c_580c

    inc d
    ld a, [de]
    rlca
    ld [$1d13], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $130e
    inc de

jr_00c_580c:
    dec bc
    inc b
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld d, $07

jr_00c_5816:
    ld c, $0b
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
    inc de
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld [$0403], sp
    jr nz, jr_00c_584f

    nop
    ld a, [de]
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
    dec e
    ld [$1a12], sp
    ld de, $1504
    inc b
    nop
    dec bc
    inc b
    inc bc

jr_00c_584f:
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    nop
    inc c
    rrca
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    inc bc
    ld de, $0004
    ld de, $1a18
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
    ld bc, $0608
    ld a, [de]
    ld bc, $1100
    ld de, $0b04
    jr nz, jr_00c_58a2

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
    ld [bc], a
    ld c, $0d
    dec c
    inc b
    ld [bc], a
    inc de
    ld [$060d], sp
    ld a, [de]
    ld de, $0e0e
    inc c
    dec e
    inc c
    nop

jr_00c_58a2:
    inc bc
    inc b
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld [de], a
    inc de
    ld c, $0d
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    ld bc, $0811
    ld [bc], a
    ld a, [bc]
    jr nz, jr_00c_58d8

    jr jr_00c_58c9

    inc d
    ld a, [de]
    ld [de], a
    inc b
    inc b
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    rlca
    nop
    dec b
    inc de
    dec e

jr_00c_58c9:
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    nop
    inc bc
    inc bc
    inc b
    ld de, $0b1d

jr_00c_58d8:
    inc b
    nop
    inc bc
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    inc de
    ld de, $0800
    ld b, $07
    inc de
    dec e
    inc bc
    ld c, $16
    dec c
    jr nz, jr_00c_590a

    jr jr_00c_58fe

    inc d
    ld a, [de]
    nop
    dec bc
    inc c
    ld c, $12
    inc de
    ld a, [de]
    ld de, $1304
    ld [bc], a
    rlca

jr_00c_58fe:
    dec e
    nop
    inc de
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    nop
    ld [de], a
    inc de

jr_00c_590a:
    jr jr_00c_5926

    ld [de], a
    inc c
    inc b
    dec bc
    dec bc
    ld de, $1208
    ld [$060d], sp
    ld a, [de]
    dec b
    ld de, $0c0e
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    inc b
    rrca
    inc de
    rlca

jr_00c_5926:
    ld [de], a
    jr nz, jr_00c_5948

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld de, $140e
    dec c
    inc bc
    dec e
    ld d, $0e
    ld c, $03
    inc b
    dec c
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $1c20
    ld [de], a
    inc de
    ld de, $0d00

jr_00c_5948:
    ld b, $04
    ld a, [de]
    inc bc
    inc b
    ld [de], a
    ld [$0d06], sp
    ld a, [de]
    dec b
    ld c, $11
    nop
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $1f27
    ld d, $00
    ld [$1a13], sp
    nop
    ld a, [de]
    inc c
    ld [$140d], sp
    inc de
    inc b
    daa
    dec e
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    ld [$1a13], sp
    ld bc, $2804
    ld a, [de]
    jr @+$06

    ld [de], a
    dec h
    dec e
    ld [$1a13], sp
    ld [$2712], sp
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    ld [$0706], sp
    inc de
    dec e
    ld bc, $0b14
    ld bc, $1f27
    jr jr_00c_59a3

    inc d
    ld a, [de]
    ld b, $00
    ld b, $1a
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld [de], a

jr_00c_59a3:
    inc de
    nop
    dec bc
    inc b
    ld a, [de]
    nop
    ld [$2011], sp
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
    ld [bc], a
    ld c, $14
    dec bc
    inc bc
    ld a, [de]
    inc d
    ld [de], a
    inc b
    dec e
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    ld [bc], a
    ld [$0211], sp
    inc d
    dec bc
    nop
    inc de
    ld [$0d0e], sp
    dec e
    ld [$1a0d], sp
    rlca
    inc b
    ld de, $2704
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $1f20
    jr jr_00c_59f9

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

jr_00c_59f9:
    dec bc
    dec e
    ld de, $0e0e
    inc c
    ld a, [de]
    ld [de], a
    inc b
    inc de
    ld a, [de]
    inc d
    rrca
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    nop
    dec e
    ld [bc], a
    nop
    ld [de], a
    ld [$0e0d], sp
    jr nz, @+$1e

    inc de
    rlca
    inc b
    ld a, [de]
    ld [de], a
    ld [$040b], sp
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    ld [$1d0d], sp
    inc de
    rlca
    ld [$1a12], sp
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    ld a, [de]
    ld [$1d12], sp
    nop
    dec bc
    inc c
    ld c, $12
    inc de
    ld a, [de]
    inc bc
    inc b
    nop
    dec b
    inc b
    dec c
    ld [$060d], sp
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    ld c, $0f
    ld [de], a
    ld a, [de]
    dec b
    ld [$030d], sp
    dec e
    ld [de], a
    ld c, $0c
    inc b
    ld a, [de]
    ld [$020d], sp
    ld de, $0c08
    ld [$000d], sp
    inc de
    ld [$060d], sp
    inc b
    dec d
    ld [$0403], sp
    dec c
    ld [bc], a
    inc b
    ld a, [de]
    nop
    dec c
    inc bc
    dec e
    inc de
    rlca
    inc b
    jr @+$1c

    ld [de], a
    inc d
    ld [de], a
    rrca
    inc b
    ld [bc], a
    inc de
    dec e
    jr @+$10

    inc d
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc c
    ld [$1313], sp
    inc b
    inc bc
    ld a, [de]
    add hl, bc
    ld c, $04
    jr jr_00c_5aa2

    ld [$0604], sp
    inc b
    dec bc
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    inc c
    inc d
    ld de, $0403
    ld de, $001d
    dec c
    inc bc

jr_00c_5aa2:
    ld a, [de]
    ld a, [bc]
    ld [$0d03], sp
    nop
    rrca
    rrca
    inc b
    inc bc
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
    jr nz, jr_00c_5ad9

    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $0300
    ld a, [de]
    ld bc, $0e0b
    ld c, $03
    dec e
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

jr_00c_5ad9:
    inc bc
    dec e
    ld [de], a
    ld [$0604], sp
    inc b
    dec bc
    ld a, [de]
    ld d, $00
    ld [de], a
    ld a, [de]
    ld d, $04
    dec bc
    dec bc
    dec e
    ld a, [bc]
    dec c
    ld c, $16
    dec c
    jr nz, @+$1e

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
    rlca
    inc b
    inc c
    ld a, [de]
    dec bc
    ld c, $0d
    ld b, $1a
    ld bc, $0504
    ld c, $11
    inc b
    dec e
    inc de
    rlca
    inc b
    jr jr_00c_5b32

    ld bc, $0811
    dec c
    ld b, $1a
    jr jr_00c_5b2e

    inc d
    dec e
    ld bc, $0504
    ld c, $11
    inc b
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    add hl, bc

jr_00c_5b2e:
    inc d
    inc bc
    ld b, $04

jr_00c_5b32:
    jr nz, jr_00c_5b53

    ld bc, $1314
    ld a, [de]
    inc de
    rlca
    inc b
    ld de, $1a04
    ld [$1a12], sp
    inc de
    ld c, $0e
    dec e
    dec bc
    ld [$1313], sp
    dec bc
    inc b
    ld a, [de]
    inc b
    dec d
    ld [$0403], sp
    dec c
    ld [bc], a

jr_00c_5b53:
    inc b
    dec e
    inc de
    rlca
    nop
    inc de
    ld a, [de]
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
    dec d
    ld [$0a02], sp
    inc b
    ld de, $1a12
    ld d, $04
    ld de, $1d04
    ld [$150d], sp
    ld c, $0b
    dec d
    inc b
    inc bc
    jr nz, jr_00c_5b9e

    jr nz, jr_00c_5b9f

    inc b
    ld de, $0e11
    ld de, $041f
    ld de, $0e11
    ld de, $181f
    ld c, $14
    ld a, [de]
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec bc

jr_00c_5b9e:
    nop

jr_00c_5b9f:
    ld [de], a
    inc de
    ld a, [de]
    inc de
    ld [$040c], sp
    ld a, [de]
    jr jr_00c_5bb7

    inc d
    dec e
    rrca
    dec bc
    nop
    jr @+$06

    inc bc
    ld a, [de]
    ld de, $140e
    dec bc
    inc b

jr_00c_5bb7:
    inc de
    inc de
    inc b
    jr nz, jr_00c_5bdc

    jr nz, jr_00c_5bf0

    jr nc, jr_00c_5bda

    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    ld hl, $181a
    ld c, $14
    dec e
    dec bc
    ld c, $12
    inc de
    daa
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld [de], a
    dec bc

jr_00c_5bda:
    ld c, $13

jr_00c_5bdc:
    dec e
    inc c
    nop
    ld [bc], a
    rlca
    ld [$040d], sp
    jr nz, jr_00c_5c02

    inc bc
    ld c, $1a
    jr jr_00c_5bf9

    inc d
    ld a, [de]
    dec b
    inc b
    inc b

jr_00c_5bf0:
    dec bc
    ld a, [de]
    dec bc
    inc d
    ld [bc], a
    ld a, [bc]
    jr @+$2a

    rra

jr_00c_5bf9:
    ld d, $08
    inc de
    rlca
    ld a, [de]
    nop
    ld a, [de]
    rrca
    inc d

jr_00c_5c02:
    dec bc
    dec bc
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec bc
    inc b
    dec d
    inc b
    ld de, $1a25
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $07
    inc b
    inc b
    dec bc
    ld [de], a
    dec e
    ld [de], a
    rrca
    ld [$1a0d], sp
    nop
    dec c
    inc bc
    ld a, [de]
    ld [bc], a
    dec bc
    nop
    dec c
    ld b, $1d
    nop
    ld d, $00
    jr @+$29

    inc e
    jr @+$10

    inc d
    ld de, $001a
    dec c
    inc de
    ld [$0802], sp
    rrca
    nop
    inc de
    ld [$0d0e], sp
    dec e
    rlca
    inc b
    ld [$0706], sp
    inc de
    inc b
    dec c
    ld [de], a
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc b
    rla
    ld [bc], a
    ld [$0413], sp
    inc c
    inc b
    dec c
    inc de
    ld a, [de]
    ld bc, $0814
    dec bc
    inc bc
    ld [de], a
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

    jr nz, jr_00c_5c8d

    ld [bc], a
    dec bc
    nop
    dec c
    ld a, [bc]
    dec h
    ld a, [de]
    ld [bc], a
    dec bc
    nop
    dec c
    ld a, [bc]
    dec h
    dec e
    ld [bc], a
    dec bc
    nop
    dec c
    ld a, [bc]
    ld hl, $181a
    ld c, $14
    ld a, [de]
    dec bc
    ld c, $12

jr_00c_5c8d:
    inc b
    jr nz, @+$21

    ld d, $04
    dec bc
    dec bc
    ld a, [de]
    nop
    inc de
    ld a, [de]
    dec bc
    inc b
    nop
    ld [de], a
    inc de
    ld a, [de]
    jr jr_00c_5cae

    inc d
    ld de, $140b
    ld [bc], a
    ld a, [bc]
    ld a, [de]
    ld [$1d12], sp
    ld [bc], a
    ld c, $0d
    ld [de], a

jr_00c_5cae:
    ld [$1312], sp
    inc b
    dec c
    inc de
    ld hl, $001a
    dec bc
    dec bc
    dec e
    ld bc, $0300
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld d, $07
    inc b
    inc b
    dec bc
    ld [de], a
    ld a, [de]
    ld bc, $0604
    ld [$1d0d], sp
    inc de
    ld c, $1a
    ld [de], a
    rrca
    ld [$1a0d], sp
    nop
    dec c
    inc bc
    ld a, [de]
    inc de
    rlca
    ld [$1d12], sp
    inc de
    ld [$040c], sp
    ld a, [de]
    jr jr_00c_5cf6

    inc d
    ld a, [de]
    ld [bc], a
    ld de, $120e
    ld [de], a
    dec e
    jr jr_00c_5d00

    inc d
    ld de, $051a

jr_00c_5cf6:
    ld [$060d], sp
    inc b
    ld de, $1d12
    dec b
    ld c, $11

jr_00c_5d00:
    ld a, [de]
    dec bc
    inc d
    ld [bc], a
    ld a, [bc]
    jr nz, jr_00c_5d23

    ld [bc], a
    dec bc
    nop
    dec c
    ld a, [bc]
    dec h
    ld a, [de]
    ld [bc], a
    dec bc
    nop
    dec c
    ld a, [bc]
    dec h
    dec e
    ld [bc], a
    dec bc
    nop
    dec c
    ld a, [bc]
    jr nz, jr_00c_5d3c

    jr nz, jr_00c_5d2f

    ld [$060d], sp
    daa
    inc e

jr_00c_5d23:
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    inc d
    ld [de], a
    ld [$1a02], sp
    ld c, $05

jr_00c_5d2f:
    dec e
    add hl, bc
    nop
    dec c
    ld b, $0b
    ld [$060d], sp
    ld a, [de]
    db $10
    inc d
    nop

jr_00c_5d3c:
    ld de, $0413
    ld de, $1d12
    dec b
    ld [$0b0b], sp
    ld a, [de]
    jr jr_00c_5d57

    inc d
    ld de, $041a
    nop
    ld de, $1a12
    nop
    ld [de], a
    dec e
    jr jr_00c_5d64

    inc d

jr_00c_5d57:
    ld de, $161a
    ld [$0d0d], sp
    ld [$060d], sp
    ld [de], a
    ld a, [de]
    dec b
    nop

jr_00c_5d64:
    dec bc
    dec bc
    ld [$130d], sp
    ld c, $1a
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld de, $1800
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld bc, $1801
    dec e
    nop
    ld [bc], a
    ld [bc], a
    inc b
    dec bc
    inc b
    ld de, $1300
    inc b
    ld [de], a
    ld a, [de]
    ld [$1a0d], sp
    nop
    dec e
    ld [de], a
    inc d
    inc bc
    inc bc
    inc b
    dec c
    ld a, [de]
    ld bc, $1114
    ld [de], a
    inc de
    ld a, [de]
    ld c, $05
    dec e
    ld [de], a
    rrca
    inc b
    inc b
    inc bc
    daa
    rra
    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a
    nop
    ld [de], a
    ld [$0e0d], sp
    ld a, [de]
    ld [$1d12], sp
    inc bc
    inc b
    ld [de], a
    inc b
    ld de, $0413
    inc bc
    jr nz, jr_00c_5dde

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld de, $140e
    dec bc
    inc b
    inc de
    inc de
    inc b
    dec e
    ld d, $07
    inc b
    inc b
    dec bc
    jr nz, jr_00c_5df5

    jr jr_00c_5de6

    inc d
    ld a, [de]
    nop
    ld de, $1a04

jr_00c_5dde:
    inc de
    rlca
    ld de, $160e
    dec c
    dec e
    nop

jr_00c_5de6:
    ld de, $140e
    dec c
    inc bc
    ld a, [de]
    ld bc, $1a18
    inc de
    rlca
    inc b
    dec e
    ld [bc], a
    nop

jr_00c_5df5:
    ld bc, $1801
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    ld de, $0204
    ld a, [bc]
    dec bc
    inc b
    ld [de], a
    ld [de], a
    dec e
    inc bc
    ld de, $1508
    ld [$060d], sp
    jr nz, @+$21

    ld [$1a13], sp
    ld d, $0e
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    ld c, $0f
    inc b
    dec c
    jr nz, jr_00c_5e38

    jr @+$10

    inc d
    ld a, [de]
    ld d, $0e
    dec c
    inc bc
    inc b
    ld de, $081a
    dec b
    ld a, [de]
    ld [$1d13], sp
    ld [bc], a
    nop
    dec c
    ld a, [de]
    ld bc, $1a04
    ld c, $0f
    inc b
    dec c

jr_00c_5e38:
    inc b
    inc bc
    ld a, [de]
    dec b
    ld de, $0c0e
    inc de
    rlca
    ld [$1a12], sp
    ld [de], a
    ld [$0403], sp
    jr nz, jr_00c_5e69

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
    ld [de], a
    inc c
    nop
    dec bc
    dec bc
    dec e
    inc b
    dec bc

jr_00c_5e69:
    inc b
    dec d
    nop
    inc de
    ld c, $11
    jr nz, @+$21

    inc b
    ld de, $0e11
    ld de, $181f
    ld c, $14
    ld a, [hl+]
    ld de, $1a04
    ld [$120d], sp
    ld [$0403], sp
    dec e
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
    jr nz, jr_00c_5eaf

    ld d, $07
    ld [$0702], sp
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $031a
    ld c, $1a
    jr @+$10

    inc d
    ld d, $08
    ld [de], a
    rlca
    ld a, [de]
    inc de
    ld c, $1a
    ld b, $0e

jr_00c_5eaf:
    ld a, [de]
    inc de
    ld c, $28
    rra
    inc de
    rlca
    ld [$1a12], sp
    ld bc, $1314
    inc de
    ld c, $0d
    ld a, [de]
    ld [$1a12], sp
    dec b
    ld c, $11
    inc de
    rlca
    inc b
    ld a, [de]
    inc de
    ld c, $0f
    ld a, [de]
    dec b
    dec bc
    ld c, $0e
    ld de, $1f20
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
    ld c, $0d
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1314
    inc de
    ld c, $0d
    jr nz, jr_00c_5f13

    inc de
    rlca
    ld [$1a12], sp
    ld [$1a12], sp
    inc de
    rlca
    inc b
    ld a, [de]
    ld bc, $1314
    inc de
    ld c, $0d
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    ld a, [de]
    dec b
    ld [$1211], sp
    inc de

jr_00c_5f13:
    dec e
    dec b
    dec bc
    ld c, $0e
    ld de, $1f20
    jr jr_00c_5f2b

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$120d], sp
    ld [$0403], sp
    ld a, [de]
    inc de
    rlca

jr_00c_5f2b:
    inc b
    dec e
    ld [bc], a
    ld de, $0c00
    rrca
    inc b
    inc bc
    ld a, [de]
    inc b
    dec bc
    inc b
    dec d
    nop
    inc de
    ld c, $11
    jr nz, jr_00c_5f5e

    nop
    ld [de], a
    ld a, [de]
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
    dec h
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc b
    dec bc

jr_00c_5f5e:
    inc b
    dec d
    nop
    inc de
    ld c, $11
    ld a, [de]
    dec bc
    inc d
    ld de, $0702
    inc b
    ld [de], a
    dec e
    inc de
    ld c, $1a
    dec bc
    ld [$0405], sp
    jr nz, jr_00c_5f92

    ld d, $08
    inc de
    rlca
    ld [$1a0d], sp
    inc c
    ld c, $0c
    inc b
    dec c
    inc de
    ld [de], a
    dec h
    dec e
    ld [$1a13], sp
    ld [de], a
    inc de
    ld c, $0f
    ld [de], a
    ld a, [de]
    nop
    dec c
    inc bc

jr_00c_5f92:
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc bc
    ld c, $0e
    ld de, $0e1a
    rrca
    inc b
    dec c
    ld [de], a
    jr nz, jr_00c_5fc2

    inc de
    rlca
    inc b
    ld a, [de]
    inc bc
    ld c, $0e
    ld de, $021a
    dec bc
    ld c, $12
    inc b
    ld [de], a
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
    db $10
    inc d
    ld [$0a02], sp
    dec bc

jr_00c_5fc2:
    jr @+$1f

    ld c, $0f
    inc b
    dec c
    ld [de], a
    ld a, [de]
    nop
    ld b, $00
    ld [$200d], sp
    inc e
    jr @+$10

    inc d
    ld a, [de]
    rrca
    inc d
    ld [de], a
    rlca
    inc b
    inc bc
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    ld bc, $1314
    inc de
    ld c, $0d
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    dec b
    dec bc
    ld c, $0e
    ld de, $131a
    rlca
    nop
    inc de
    ld a, [de]
    jr jr_00c_600a

    inc d
    dec e
    nop
    ld de, $1a04
    nop
    dec bc
    ld de, $0004
    inc bc
    jr jr_00c_6024

jr_00c_600a:
    ld c, $0d
    jr nz, jr_00c_602a

    ld bc, $180e
    dec h
    ld a, [de]
    jr jr_00c_6023

    inc d
    ld a, [de]
    ld [de], a
    inc d
    ld de, $1a04
    ld d, $04
    dec c
    inc de
    dec c
    ld c, $16

jr_00c_6023:
    rlca

jr_00c_6024:
    inc b
    ld de, $1a04
    dec b
    nop

jr_00c_602a:
    ld [de], a
    inc de
    daa
    rra
    ld d, $07
    nop
    inc de
    ld a, [de]
    ld a, [bc]
    ld [$030d], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    ld de, $0e0e
    inc c
    dec e
    ld [$1a12], sp
    inc de
    rlca
    ld [$2812], sp
    inc e
    jr jr_00c_6059

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

jr_00c_6059:
    ld d, $04
    dec c
    inc de
    ld a, [de]
    ld c, $0d
    ld a, [de]
    rlca
    inc b
    ld de, $2804
    rra
    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $1908
    nop
    ld de, $0411
    dec e
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [$060d], sp
    ld a, [de]
    ld [bc], a
    rlca
    nop
    ld [$2011], sp
    inc e
    ld de, $1204
    inc de
    ld de, $0800
    dec c
    inc de
    ld [de], a
    ld a, [de]
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    nop
    ld de, $120c
    ld a, [de]
    nop
    dec c
    inc bc
    ld a, [de]
    rlca
    inc b
    nop
    inc bc
    ld a, [de]
    rlca
    nop
    dec d
    inc b
    ld bc, $0404
    dec c
    ld a, [de]
    ld bc, $0814
    dec bc
    inc de
    ld a, [de]
    ld [$130d], sp
    ld c, $1d
    ld [$2013], sp
    inc e
    ld [$1a13], sp
    inc bc
    ld c, $04
    ld [de], a
    dec c
    ld a, [hl+]
    inc de
    ld a, [de]
    dec bc
    ld c, $0e
    ld a, [bc]
    dec e
    inc de
    ld c, $1a
    ld bc, $1a04
    inc de
    rlca
    inc b
    ld a, [de]
    inc c
    ld c, $12
    inc de
    dec e
    ld [bc], a
    ld c, $0c
    dec b
    ld c, $11
    inc de
    nop
    ld bc, $040b
    ld a, [de]
    ld c, $05
    dec e
    ld [bc], a
    rlca
    nop
    ld [$1211], sp
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
    ld d, $00
    ld [de], a
    inc de
    inc b
    ld bc, $1200
    ld a, [bc]
    inc b
    inc de
    jr nz, jr_00c_612b

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
    jr jr_00c_6137

    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld a, [de]
    dec d
    ld [$0b00], sp
    jr nz, jr_00c_6145

    ld h, $12

jr_00c_612b:
    ld c, $03
    ld [$0c14], sp
    ld a, [de]
    rrca
    inc b
    dec c
    inc de
    ld c, $13

jr_00c_6137:
    rlca
    nop
    dec bc
    ld h, $08
    ld [de], a
    ld a, [de]
    ld d, $11
    ld [$1313], sp
    inc b
    dec c

jr_00c_6145:
    ld a, [de]
    ld c, $0d
    dec e
    inc de
    rlca
    inc b
    ld a, [de]
    dec bc
    nop
    ld bc, $0b04
    jr nz, jr_00c_6170

    jr jr_00c_6164

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
    ld a, [de]

jr_00c_6164:
    ld [$1613], sp
    nop
    ld [de], a
    ld a, [de]
    inc d
    ld [de], a
    inc b
    inc bc
    ld a, [de]
    dec b

jr_00c_6170:
    ld c, $11
    jr z, jr_00c_6193

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
    dec d
    ld [$0b00], sp
    ld a, [hl+]
    ld [de], a
    ld a, [de]
    dec bc
    nop
    ld bc, $0b04
    ld a, [de]
    ld de, $0004
    inc bc
    ld [de], a

jr_00c_6193:
    ld h, $0c
    inc b
    inc bc
    ld de, $1904
    ld [$040d], sp
    jr nz, jr_00c_61c5

    rra
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
    jr jr_00c_61cb

    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld a, [de]
    dec d
    ld [$0b00], sp
    ld a, [de]
    ld c, $05
    dec e
    ld h, $03
    ld [$1304], sp
    rlca

jr_00c_61c5:
    nop
    dec c
    ld c, $0b
    dec e
    inc de

jr_00c_61cb:
    ld de, $0c08
    inc b
    dec c
    inc b
    jr nz, jr_00c_61f9

    inc e
    inc de
    rlca
    inc b
    ld a, [de]
    dec c
    nop
    inc c
    inc b
    ld a, [de]
    ld [de], a
    ld c, $14
    dec c
    inc bc
    ld [de], a
    dec e
    dec b
    nop
    inc c
    ld [$080b], sp
    nop
    ld de, $1a25
    ld bc, $1314
    ld a, [de]
    jr @+$10

    inc d
    dec e
    ld [bc], a
    nop
    dec c

jr_00c_61f9:
    ld a, [hl+]
    inc de
    ld a, [de]
    ld de, $0c04
    inc b
    inc c
    ld bc, $1104
    dec e
    ld d, $07
    jr jr_00c_6229

    rra
    inc de
    rlca
    inc b
    ld de, $2a04
    ld [de], a
    ld a, [de]
    nop
    ld a, [de]
    dec bc
    ld [$1313], sp
    dec bc
    inc b
    dec e
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
    dec e

jr_00c_6229:
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
    jr nz, @+$1e

    inc de
    rlca
    ld [$0a0d], sp
    ld [$060d], sp
    ld a, [de]
    ld c, $05
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    rrca
    nop
    ld [$1a0d], sp
    ld [$1a0d], sp
    jr jr_00c_6261

    inc d
    ld de, $001d
    ld de, $200c
    jr nz, jr_00c_627c

    ld a, [de]
    jr @+$10

    inc d
    ld a, [de]

jr_00c_6261:
    rlca
    nop
    dec d
    inc b
    ld a, [de]
    nop
    dec c
    ld [$0a0d], sp
    dec bc
    ld [$060d], sp
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [$1d13], sp
    inc c
    ld [$0706], sp

jr_00c_627c:
    inc de
    ld a, [de]
    ld [de], a
    ld c, $0c
    inc b
    rlca
    ld c, $16
    dec e
    ld [$150d], sp
    ld c, $0b
    dec d
    inc b
    ld a, [de]
    jr jr_00c_629e

    inc d
    jr nz, jr_00c_62b2

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop
    dec c
    ld a, [de]
    inc b
    dec bc
    inc b

jr_00c_629e:
    dec d
    nop
    inc de
    ld c, $11
    dec e
    ld bc, $1314
    inc de
    ld c, $0d
    jr nz, jr_00c_62cb

    ld [$2a13], sp
    ld [de], a
    ld a, [de]
    nop

jr_00c_62b2:
    dec c
    ld a, [de]
    inc d
    dec c
    inc d
    ld [de], a
    inc b
    inc bc
    dec e
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld a, [de]
    ld [bc], a
    nop
    rrca
    ld [de], a
    inc d
    dec bc
    inc b

jr_00c_62cb:
    jr nz, jr_00c_62e9

    jr jr_00c_62dd

    inc d
    ld a, [hl+]
    dec d
    inc b
    ld a, [de]
    ld [de], a
    inc b
    inc b
    dec c
    dec e
    inc bc
    ld c, $02
    inc de

jr_00c_62dd:
    ld c, $11
    ld [de], a
    ld a, [de]
    rrca
    dec bc
    nop
    ld [bc], a
    inc b
    dec e
    inc c
    inc b

jr_00c_62e9:
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld a, [de]
    ld [$1a0d], sp
    inc de
    rlca
    inc b
    ld [de], a
    inc b
    dec e
    dec b
    ld c, $11
    ld a, [de]
    inc de
    rlca
    inc b
    ld [$1a11], sp
    rrca
    nop
    inc de
    ld [$0d04], sp
    inc de
    ld [de], a
    inc de
    ld c, $1a
    inc de
    nop
    ld a, [bc]
    inc b
    jr nz, jr_00c_6333

    jr jr_00c_6324

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
    nop
    rrca

jr_00c_6324:
    ld [de], a
    inc d
    dec bc
    inc b
    ld [de], a
    dec h
    ld a, [de]
    inc de
    rlca
    ld [$0a0d], sp
    ld [$060d], sp

jr_00c_6333:
    inc de
    rlca
    inc b
    jr jr_00c_6352

    inc c
    ld [$0706], sp
    inc de
    ld a, [de]
    ld [bc], a
    ld c, $0c
    inc b
    ld a, [de]
    ld [$070d], sp
    nop
    dec c
    inc bc
    jr jr_00c_6365

    dec bc
    nop
    inc de
    inc b
    ld de, $1f20

jr_00c_6352:
    jr jr_00c_6362

    inc d
    ld a, [hl+]
    ld de, $1a04
    ld [$120d], sp
    ld [$0403], sp
    dec e
    nop
    ld a, [de]

jr_00c_6362:
    ld [de], a
    inc c
    nop

jr_00c_6365:
    dec bc
    dec bc
    dec h
    dec e
    ld [bc], a
    dec bc
    nop
    inc d
    ld [de], a
    inc de
    ld de, $0f0e
    rlca
    ld c, $01
    ld [$1d02], sp
    ld de, $0e0e
    inc c
    jr nz, jr_00c_639d

    dec c
    ld c, $13
    rlca
    ld [$060d], sp
    ld a, [de]
    ld [de], a
    inc b
    inc b
    inc c
    inc b
    inc bc
    ld a, [de]
    inc de
    ld c, $1d
    rlca
    nop
    rrca
    rrca
    inc b
    dec c
    jr nz, jr_00c_63b7

    inc de
    rlca
    inc b
    ld a, [de]
    ld [bc], a

jr_00c_639d:
    nop
    rrca
    ld [de], a
    inc d
    dec bc
    inc b
    dec e
    nop
    dec bc
    ld de, $0004
    inc bc
    jr @+$1c

    ld [bc], a
    ld c, $0d
    inc de
    nop
    ld [$120d], sp
    dec e
    nop
    ld a, [de]

jr_00c_63b7:
    inc bc
    ld c, $12
    nop
    ld b, $04
    ld a, [de]
    ld c, $05
    dec e
    inc c
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    jr nz, @+$21

    inc c
    inc b
    inc bc
    ld de, $1904
    ld [$040d], sp
    ld a, [de]
    ld c, $0d
    dec bc
    jr @+$1f

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
    jr jr_00c_6406

    ld d, $07
    inc b
    dec c
    ld a, [de]
    ld c, $0d
    inc b
    ld a, [de]
    rlca
    nop
    ld [de], a
    dec e
    ld bc, $0404
    dec c
    ld a, [de]
    ld b, $08
    dec d
    inc b
    dec c
    ld a, [de]
    nop
    dec e
    dec bc
    inc b
    inc de

jr_00c_6406:
    rlca
    nop
    dec bc
    ld a, [de]
    inc bc
    ld c, $12
    inc b
    dec e
    ld c, $05
    ld a, [de]
    dec c
    inc b
    ld de, $0415
    ld a, [de]
    ld b, $00
    ld [de], a
    jr nz, jr_00c_6439

    ld [de], a
    ld [$020d], sp
    inc b
    ld a, [de]
    inc de
    rlca
    nop
    inc de
    ld a, [de]
    ld [$1a12], sp
    dec c
    ld c, $13
    dec e
    jr jr_00c_643f

    inc d
    ld de, $021a
    nop
    ld [de], a
    inc b
    dec h

jr_00c_6439:
    ld a, [de]
    inc de
    rlca
    inc b
    dec e
    inc c

jr_00c_643f:
    inc b
    inc bc
    ld [$0802], sp
    dec c
    inc b
    ld a, [de]
    rrca
    ld de, $150e
    inc b
    ld [de], a
    ld a, [de]
    inc de
    ld c, $01
    inc b
    ld a, [de]
    dec b
    nop
    inc de
    nop
    dec bc
    daa
    inc e
    jr jr_00c_646a

    inc d
    ld de, $151a
    ld [$0812], sp
    ld c, $0d
    ld a, [de]
    ld [de], a
    ld d, $08
    inc c

jr_00c_646a:
    ld [de], a
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
    ld bc, $000b
    ld [bc], a
    ld a, [bc]
    dec c
    inc b
    ld [de], a
    ld [de], a
    inc de
    nop
    ld a, [bc]
    inc b
    ld [de], a
    ld a, [de]
    jr jr_00c_6494

    inc d
    ld a, [de]
    nop
    ld [de], a
    ld a, [de]
    jr jr_00c_649b

    inc d
    dec e
    db $10
    inc d
    ld [$0a02], sp

jr_00c_6494:
    dec bc
    jr jr_00c_64b1

    dec bc
    ld c, $12
    inc b

jr_00c_649b:
    dec e
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
    daa
    rra
    nop
    nop
    nop
    nop
    nop
    nop

jr_00c_64b1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
