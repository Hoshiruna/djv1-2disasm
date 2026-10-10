; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (USA).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03e", ROMX[$4000], BANK[$3e]

    push af
    call Call_03e_4019
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $4031
    add hl, bc
    ld c, l
    ld b, h
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    call ReadBgMap
    ret


Call_03e_4019:
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $5667
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld d, $40
    ld hl, $dbc0

jr_03e_402a:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_03e_402a

    ret


    ld e, c
    ld b, b
    and e
    ld b, c
    xor c
    ld b, d
    or h
    ld b, e
    rst RST_28
    ld b, h
    ld b, $46
    cp $46
    or $47
    ld c, $49
    ld b, b
    ld c, d
    cpl
    ld c, e
    ld h, e
    ld c, h
    sub c
    ld c, l
    cp e
    ld c, [hl]
    db $fc
    ld c, a
    daa
    ld d, c
    ld b, c
    ld d, d
    ld c, e
    ld d, e
    ld a, d
    ld d, h
    ld [hl], d
    ld d, l
    rla
    inc d
    ld [de], a
    nop
    nop
    ld a, a
    ld d, $20
    ld hl, $2322
    inc h
    dec h
    ld d, [hl]
    sbc h
    sbc l
    sbc [hl]
    ld d, [hl]
    dec hl
    inc l
    dec l
    nop
    ld a, a
    dec b
    ld b, b
    ld [bc], a
    inc bc
    inc b
    jr nc, jr_03e_40ac

    ld d, [hl]
    sbc h
    sbc l
    sbc [hl]
    ld d, [hl]
    dec sp
    inc a
    dec a
    nop
    ld a, a
    dec b
    ld b, b
    ld [de], a
    inc de
    inc d
    ld [hl], b
    ld d, l
    ld d, [hl]
    sbc h
    sbc l
    sbc [hl]
    ld d, [hl]
    ld c, e
    ld c, h
    ld c, l
    nop
    ld a, a
    dec b
    ld d, b
    adc h
    adc l
    adc [hl]
    adc a
    ld d, l
    ld d, [hl]
    sbc a
    sbc l
    sbc [hl]
    ld d, [hl]
    ld e, e
    ld e, h
    ld e, l
    nop
    ld a, a
    dec b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_03e_40ac:
    ld a, h
    sbc [hl]
    ld d, [hl]
    ld l, e
    ld l, h
    ld l, l
    nop
    ld a, a
    dec b
    ld h, b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, l
    ld d, [hl]
    ld a, e
    ld h, b
    ld h, b
    nop
    ld a, a
    dec b
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    ld h, b
    ld h, b
    nop
    ld a, a
    dec b
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld h, b
    ld h, b
    nop
    ld a, a
    dec b
    ld b, $07
    ld [$0a09], sp
    ld d, $17
    jr jr_03e_410a

    ld a, [de]
    ld h, $00
    ld h, b
    ld [bc], a
    nop
    ld a, a
    dec b
    daa
    jr z, jr_03e_4125

    ld a, [hl+]
    ld [hl], $37
    jr c, jr_03e_413a

    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld b, a
    ld h, b
    ld h, b
    nop
    ld a, a
    adc [hl]

jr_03e_410a:
    nop
    rlca
    ld d, $00
    inc c
    dec b
    nop
    ld [$2803], sp
    nop
    inc c
    ld [bc], a
    nop
    rlca
    dec b
    inc c
    nop
    ld [$0c03], sp
    nop
    ld [$2803], sp
    ld a, [bc]
    ld a, [bc]

jr_03e_4125:
    inc c
    nop
    rlca
    dec b
    inc c
    nop
    ld [$0c03], sp
    nop
    ld [$2803], sp
    nop
    inc c
    ld [bc], a
    nop
    rlca
    dec b
    inc c
    nop

jr_03e_413a:
    ld [$0c03], sp
    nop
    ld [$2803], sp
    nop
    inc c
    ld [bc], a
    nop
    rlca
    dec b
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld [$2808], sp
    nop
    inc c
    ld [bc], a
    nop
    rlca
    dec b
    nop
    ld a, [bc]
    inc bc
    dec bc
    dec bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0c28], sp
    ld a, [bc]
    ld a, [bc]
    nop
    rlca
    dec b
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0a0c], sp
    ld a, [bc]
    nop
    rlca
    dec b
    nop
    dec c
    ld [bc], a
    add hl, bc
    add hl, bc
    nop
    dec c
    inc bc
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    nop
    rlca
    dec b
    nop
    dec c
    ld [bc], a
    add hl, bc
    add hl, bc
    nop
    dec c
    inc bc
    inc c
    nop
    ld a, [bc]
    inc bc
    nop
    rlca
    dec b
    nop
    dec c
    ld [$090c], sp
    nop
    ld a, [bc]
    ld [bc], a
    nop
    rlca
    adc [hl]
    rla
    inc d
    ld [de], a
    ld bc, $7f01
    ld d, $ff
    daa
    ld h, [hl]
    ld bc, $0268
    ld h, a
    ld bc, $0537
    jr z, jr_03e_41b7

    ld a, a

jr_03e_41b7:
    dec b
    rst RST_38
    daa
    halt
    ld c, b
    ld c, c
    ld e, d
    ld [hl], a
    adc h
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr c, jr_03e_41c8

    ld a, a

jr_03e_41c8:
    dec b
    rst RST_38
    daa
    halt
    ld e, b
    ld e, c
    ld b, a
    ld [hl], a
    adc h
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    jr c, jr_03e_41d9

    ld a, a

jr_03e_41d9:
    dec b
    rst RST_38
    daa
    halt
    ld b, [hl]
    ld c, d
    ld d, a
    inc hl
    inc sp
    ld l, e
    ld l, h
    ld l, a
    ld l, $2f
    jr c, jr_03e_41ea

    ld a, a

jr_03e_41ea:
    dec b
    rst RST_38
    daa
    halt
    ld d, [hl]
    ld b, l
    jr nz, @+$23

    ld [hl+], a
    ld a, e
    ld a, h
    ld a, a
    ld a, $3f
    jr c, jr_03e_41fb

    ld a, a

jr_03e_41fb:
    dec b
    rst RST_38
    daa
    ld b, e
    ld b, h
    ld d, l
    jr nc, jr_03e_4234

    ld [hl-], a
    ld l, l
    ld l, [hl]
    add b
    add c
    ld b, b
    ld d, b
    ld bc, $057f
    rst RST_38
    ld d, e
    ld d, h
    ld e, a
    dec c
    ld c, $1d
    ld e, $7d
    ld a, [hl]
    add d
    add e
    inc [hl]
    inc de
    ld bc, $057f
    ld h, $42
    rla
    jr jr_03e_423c

    ld a, [bc]
    dec bc
    inc c
    add h
    add l
    add l
    add [hl]
    ld [bc], a
    inc bc
    ld bc, $057f
    ld [hl], $41
    ld d, c
    ld [de], a
    inc de

jr_03e_4234:
    ld [de], a
    ld a, [de]
    rrca
    add a
    rst RST_38
    rst RST_38
    adc b
    ld [de], a

jr_03e_423c:
    inc de
    ld bc, $057f
    dec [hl]
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    rra
    adc c
    adc d
    adc d
    adc e
    inc h
    dec h
    ld bc, $8e7f
    ld bc, $1607
    nop
    ld bc, $0c08
    ld bc, $0507
    nop
    ld bc, $0c08
    ld bc, $0507
    nop
    ld bc, $0c08
    ld bc, $0507
    nop
    ld bc, $0c08
    ld bc, $0507
    nop
    ld bc, $0c08
    ld bc, $0507
    nop
    ld bc, $0c08
    ld bc, $0507
    nop
    ld bc, $0b08
    ld c, b
    ld bc, $0507
    ld bc, $0d08
    ld bc, $0507
    ld bc, $0208
    ld c, b
    ld c, b
    ld l, b
    ld bc, $0308
    nop
    ld bc, $0208
    ld bc, $0507
    ld [$0908], sp
    ld [$2808], sp
    add hl, bc
    ld bc, $0608
    ld bc, $8e07
    rla
    inc d
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld a, a
    ld d, $10
    ld de, $6261
    ld h, e
    ld h, h
    ld h, l
    ld [bc], a
    ld c, h
    inc b
    ld de, $0210
    ld a, a
    dec b
    jr nz, jr_03e_42e2

    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, h
    ld hl, $0220
    ld a, a
    dec b
    jr nc, jr_03e_4303

    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, a
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, e
    ld sp, $0230
    ld a, a
    dec b
    nop

jr_03e_42e2:
    ld bc, $7271
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    halt
    ld bc, $0200
    ld a, a
    dec b
    db $10
    ld de, $7c7b
    ld a, l
    ld a, [hl]
    ld l, a
    ld [bc], a
    ld c, a
    inc b
    ld de, $0210
    ld a, a
    dec b
    jr nz, jr_03e_4324

jr_03e_4303:
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc b
    add a
    ld hl, $0220
    ld a, a
    dec b
    jr nc, jr_03e_4345

    jr c, jr_03e_434f

    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec sp
    ld a, $39
    jr c, jr_03e_4350

    jr nc, jr_03e_4323

    ld a, a
    dec b

jr_03e_4323:
    nop

jr_03e_4324:
    inc b
    ld a, [hl+]
    dec hl
    ld a, a
    ld a, a
    inc l
    dec l
    ld a, a
    ld a, a
    dec hl
    ld a, [hl+]
    inc b
    nop
    ld [bc], a
    ld a, a
    dec b
    dec b
    ld b, $3f
    ld a, [hl+]
    ld a, a
    ld a, a
    ld l, $2f
    ld a, a
    ld a, a
    ld a, [hl+]
    ccf
    ld b, $05
    ld [bc], a
    ld a, a
    dec b

jr_03e_4345:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_03e_434f:
    ld b, e

jr_03e_4350:
    ld b, d
    ld b, c
    ld b, b
    ld [bc], a
    ld a, a
    adc [hl]
    ld [bc], a
    rlca
    ld d, $02
    ld [$280b], sp
    jr z, jr_03e_4361

    rlca
    dec b

jr_03e_4361:
    ld [bc], a
    ld [$280b], sp
    jr z, jr_03e_4369

    rlca
    dec b

jr_03e_4369:
    ld [bc], a
    ld [$280b], sp
    jr z, jr_03e_4371

    rlca
    dec b

jr_03e_4371:
    ld [bc], a
    ld [$280b], sp
    jr z, jr_03e_4379

    rlca
    dec b

jr_03e_4379:
    ld [bc], a
    ld [$280b], sp
    jr z, jr_03e_4381

    rlca
    dec b

jr_03e_4381:
    ld [bc], a
    ld [$0209], sp
    jr z, jr_03e_438a

    ld [bc], a
    rlca
    dec b

jr_03e_438a:
    ld [bc], a
    ld [$0209], sp
    jr z, jr_03e_4393

    ld [bc], a
    rlca
    dec b

jr_03e_4393:
    ld [bc], a
    ld [$0209], sp
    jr z, jr_03e_439c

    ld [bc], a
    rlca
    dec b

jr_03e_439c:
    ld [bc], a
    ld [$6802], sp
    ld [bc], a
    ld [$4805], sp
    ld [bc], a
    jr z, jr_03e_43a9

    ld [bc], a
    rlca

jr_03e_43a9:
    dec b
    ld [bc], a
    ld [$0209], sp
    jr z, @+$04

    ld [$0702], sp
    adc [hl]
    rla
    inc d
    ld [de], a
    ld bc, $7f01
    ld d, $02
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld bc, $057f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_03e_43ef

    ld a, [de]
    dec de
    ld de, $0110
    ld a, a
    dec b
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03e_4404

    ld [hl+], a
    ld [hl+], a
    ld hl, $1f20
    ld e, $1d
    inc e
    ld bc, $057f
    inc hl

jr_03e_43ef:
    inc h
    dec h
    ld h, $27
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    inc hl
    ld bc, $057f
    jr z, jr_03e_442a

    ld a, [hl+]
    dec hl
    inc l

jr_03e_4404:
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld h, l
    dec hl
    ld h, [hl]
    ld h, a
    jr z, jr_03e_440f

    ld a, a

jr_03e_440f:
    dec b
    dec l
    ld l, $2f
    nop
    jr nc, @+$80

    ld a, a
    add b
    add c
    ld l, b
    nop
    ld l, c
    ld l, d
    ld l, e
    ld bc, $057f
    ld sp, $3332
    inc [hl]
    dec [hl]
    add d
    add e
    add h
    add l

jr_03e_442a:
    ld l, h
    inc [hl]
    ld l, l
    ld l, [hl]
    ld l, a
    ld bc, $057f
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    ld a, d
    add [hl]
    add a
    ld a, l
    ld [hl], b
    add hl, sp
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld bc, $057f
    dec sp
    dec sp
    inc a
    dec sp
    dec a
    adc b
    adc c
    adc d
    adc e
    ld [hl], h
    dec sp
    ld [hl], l
    dec sp
    dec sp
    ld bc, $057f
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, e
    ld b, d
    ld b, c
    ld b, b
    ld a, $3f
    ld bc, $8e7f
    ld bc, $1607
    add hl, bc
    add hl, bc
    ld [$0b01], sp
    rlca
    ld bc, $0209
    ld bc, $0507
    ld [$0108], sp
    dec bc
    add hl, bc
    jr z, @+$2a

    ld bc, $0507
    ld bc, $0608
    ld bc, $0628
    ld bc, $0507
    ld bc, $0309
    dec bc
    ld bc, $0308
    dec bc
    ld bc, $0209
    add hl, hl
    ld bc, $0507
    add hl, bc
    ld [$0909], sp
    dec bc
    ld bc, $0308
    dec bc
    add hl, bc
    add hl, bc
    ld [$0129], sp
    rlca
    dec b
    ld bc, $0208
    add hl, bc
    dec bc
    ld bc, $0308
    dec bc
    add hl, bc
    ld [$0908], sp
    ld bc, $0507
    ld bc, $0308
    dec bc
    ld bc, $0308
    dec bc
    ld bc, $0308
    ld bc, $0507
    ld bc, $0308
    dec bc
    ld bc, $0308
    dec bc
    ld bc, $0308
    ld bc, $0507
    ld bc, $0308
    dec bc
    ld bc, $0308
    dec bc
    ld bc, $0308
    ld bc, $0507
    ld bc, $0409
    ld bc, $0208
    jr z, jr_03e_44e9

    add hl, hl

jr_03e_44e9:
    ld [bc], a
    add hl, bc
    add hl, bc
    ld bc, $8e07
    rla
    inc d
    ld [de], a
    ld bc, $7f01
    ld d, $7e
    ld a, a
    add b
    sbc c
    inc b
    dec b
    rst RST_38
    rst RST_38
    jr z, jr_03e_4529

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld bc, $057f
    add c
    add d
    add e
    sub a
    ld b, $07
    rst RST_38
    rst RST_38
    ld l, $2f
    jr nc, jr_03e_4544

    ld [hl-], a
    inc sp
    ld bc, $057f
    add h
    add l
    add [hl]
    sbc b
    ld [$6a09], sp
    ld l, e
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03e_455f

    ld bc, $057f

jr_03e_4529:
    add a
    adc b
    adc c
    sbc c
    ld a, [bc]
    dec bc
    ld l, h
    ld l, l
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $057f
    adc d
    add d
    add e
    sub a
    inc c
    dec c
    rst RST_38
    ld l, [hl]
    ld b, b
    ld b, c

jr_03e_4544:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld bc, $057f
    adc e
    adc h
    adc l
    sbc b
    ld c, $0f
    rst RST_38
    rst RST_38
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld bc, $057f
    add a
    adc [hl]
    adc a

jr_03e_455f:
    sbc c
    db $10
    ld de, $ffff
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld bc, $057f
    sub b
    add d
    sub c
    sub a
    ld [de], a
    inc de
    rst RST_38
    rst RST_38
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld bc, $057f
    sub d
    sub e
    sub h
    sbc b
    inc d
    dec d
    ld bc, $02ff
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld bc, $057f
    sub l
    sub [hl]
    adc c
    sbc c
    ld d, $17
    rst RST_38
    ld l, a
    ld [hl], b
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld bc, $8e7f
    ld bc, $1607
    ld bc, $0508
    nop
    nop
    ld bc, $0508
    ld bc, $0507
    ld bc, $0508
    nop
    nop
    ld bc, $0508
    ld bc, $0507
    ld bc, $0d08
    ld bc, $0507
    ld bc, $0d08
    ld bc, $0507
    ld bc, $0508
    nop
    ld bc, $0608
    ld bc, $0507
    ld bc, $0508
    nop
    nop
    ld bc, $0508
    ld bc, $0507
    ld bc, $0508
    nop
    nop
    ld bc, $0508
    ld bc, $0507
    ld bc, $0508
    nop
    nop
    ld bc, $0508
    ld bc, $0507
    ld bc, $0508
    ld bc, $0200
    ld bc, $0408
    ld bc, $0507
    ld bc, $0508
    nop
    ld bc, $0608
    ld bc, $8e07
    rla
    inc d
    ld [de], a
    ld c, $0e
    ld a, a
    ld d, $00
    ld c, $01
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    ld c, c
    ld c, d
    ld c, e
    ld c, e
    ld e, a
    rrca
    ld c, $7f
    dec b
    db $10
    ld b, $07
    ld [$1312], sp
    inc d
    dec d
    add c
    add d
    add e
    add h
    add l
    rrca
    ld c, $7f
    dec b
    jr nz, jr_03e_4647

    rla
    jr jr_03e_4656

    inc hl
    inc h
    dec h
    add [hl]
    add a
    adc b
    adc c
    adc d
    rra
    ld c, $7f
    dec b
    jr nc, jr_03e_4668

    daa
    jr z, jr_03e_4677

    inc sp
    inc [hl]

jr_03e_4647:
    dec [hl]
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    cpl
    ld c, $7f
    dec b
    add b
    ld [hl], $37
    jr c, jr_03e_4658

jr_03e_4656:
    inc bc
    inc b

jr_03e_4658:
    dec b
    adc e
    add a
    adc l
    adc [hl]
    adc a
    ccf
    ld c, $7f
    dec b
    ld b, b
    ld b, [hl]
    ld b, a
    ld c, b
    ld b, d
    ld b, e

jr_03e_4668:
    ld b, h
    ld b, l
    sub b
    sub c
    sub d
    sub e
    adc a
    ld c, a
    ld c, $7f
    dec b
    ld d, b
    ld d, [hl]
    ld d, a
    ld e, b

jr_03e_4677:
    ld de, $0921
    ld a, [bc]
    dec bc
    inc c
    dec c
    sub h
    sub l
    ld c, a
    ld c, $7f
    dec b
    rst RST_38
    ld sp, $5141
    rst RST_38
    rst RST_38
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $5a
    ld c, h
    ld c, $7f
    dec b
    ld c, $ff
    dec b
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $6a
    ld c, l
    ld c, $7f
    dec b
    rst RST_38
    add hl, sp
    ld c, $3a
    dec b
    dec sp
    inc a
    dec a
    ld a, $7a
    ld c, [hl]
    ld c, $7f
    adc [hl]
    ld c, $07
    ld d, $0e
    ld [$0e0d], sp
    rlca
    dec b
    ld c, $08
    dec c
    ld c, $07
    dec b
    ld c, $08
    dec c
    ld c, $07
    dec b
    ld c, $08
    dec c
    ld c, $07
    dec b
    ld c, $08
    dec c
    ld c, $07
    dec b
    ld c, $08
    dec c
    ld c, $07
    dec b
    ld c, $08
    ld [$0e09], sp
    ld [$0e03], sp
    rlca
    dec b
    nop
    ld c, $08
    ld [bc], a
    nop
    nop
    ld c, $08
    rlca
    ld c, $07
    dec b
    ld c, $00
    dec b
    ld c, $08
    rlca
    ld c, $07
    dec b
    nop
    ld c, $08
    inc c
    ld c, $07
    adc [hl]
    rla
    inc d
    ld [de], a
    ld h, $26
    ld a, a
    ld d, $00
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld h, $7f
    dec b
    db $10
    ld de, $1302
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc c
    dec c
    ld h, $7f
    dec b
    ld c, $0f
    inc e
    dec e
    dec e
    ld e, $26
    rra
    inc b
    ld [de], a
    jr nz, jr_03e_4760

    ld h, $7f
    dec b
    ld h, e
    ld h, h
    ld h, $0d
    ld [bc], a
    ld [hl-], a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    jr c, jr_03e_4764

    ld l, $26
    ld a, a
    dec b
    ld h, l
    ld h, [hl]
    ld h, $0d
    ld [bc], a
    ld [hl-], a
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    jr c, @+$24

    cpl
    ld h, $7f
    dec b
    ld h, a
    ld l, b
    ld h, $0d
    ld [bc], a
    inc sp
    ld d, d
    ld d, e

jr_03e_4760:
    ld d, h
    ld d, l
    ld d, [hl]
    scf

jr_03e_4764:
    inc hl
    jr nc, jr_03e_478d

    ld a, a
    dec b
    ld l, c
    ld l, d
    ld d, a
    ld e, b
    ld e, c
    inc [hl]
    ld h, $35
    inc b
    ld [hl], $21
    ld sp, $7f26
    dec b
    ld l, e
    ld l, h
    ld e, d
    ld e, e
    ld e, e
    ld e, h
    ld h, $0d
    dec b
    inc h
    dec hl
    ld h, $7f
    dec b
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]

jr_03e_478d:
    ld a, a
    add b
    add c
    add d
    ld a, h
    dec h
    inc l
    ld h, $7f
    dec b
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    ld h, $7f
    adc [hl]
    ld h, $07
    ld d, $26
    ld [$0c0b], sp
    inc c
    ld h, $07
    dec b
    add hl, bc
    add hl, bc
    ld h, $08
    dec bc
    ld h, $07
    dec b
    ld [$2609], sp
    ld [$260b], sp
    rlca
    dec b
    add hl, bc
    add hl, bc
    ld h, $08
    dec bc
    ld h, $07
    dec b
    add hl, bc
    ld h, $08
    inc c
    ld h, $07
    dec b
    add hl, bc
    ld h, $08
    inc c
    ld h, $07
    dec b
    add hl, bc
    ld h, $08
    inc c
    ld h, $07
    dec b
    add hl, bc
    add hl, bc
    ld h, $08
    dec bc
    ld h, $07
    dec b
    ld h, $08
    dec bc
    add hl, bc
    add hl, bc
    ld h, $07
    dec b
    ld h, $08
    dec c
    ld h, $07
    adc [hl]
    rla
    inc d
    ld [de], a
    dec b
    dec b
    ld a, a
    ld d, $10
    inc de
    ld bc, $0e02
    rrca
    ld d, $0f
    ld c, $02
    ld bc, $3614
    ld [hl], b
    dec b
    ld a, a
    dec b
    nop
    inc bc
    ld de, $0720
    dec c
    dec c
    ld [$2109], sp
    ld de, $3704
    ld [hl], c
    dec b
    ld a, a
    dec b
    db $10
    inc de
    ld bc, $1730
    ld a, [bc]
    ld a, [de]
    jr jr_03e_4841

    ld sp, $1401
    ld [hl], $71
    dec b
    ld a, a
    dec b
    add hl, hl
    ld a, [hl+]
    dec hl
    jr nz, jr_03e_4840

    inc c
    dec de
    inc e
    dec e
    ld hl, $0411
    scf
    ld [hl], d
    dec b
    ld a, a

jr_03e_4840:
    dec b

jr_03e_4841:
    add hl, sp
    ld a, [hl-]
    dec sp
    ld [bc], a
    ld e, $1f
    ld e, $1f
    ld e, $02
    ld bc, $3614
    ld [hl], e
    dec b
    ld a, a
    dec b
    inc l
    dec l
    ld a, $3f
    ld de, $1112
    ld [de], a
    ld de, $3e3f
    inc b
    scf
    ld [hl], c
    dec b
    ld a, a
    dec b
    inc a
    dec a
    ld b, b
    ld b, c
    ld d, e
    ld c, b
    ld c, c
    ld d, a
    ld d, h
    ld b, c
    ld b, b
    ld c, e
    jr z, jr_03e_48e2

    dec b
    ld a, a
    dec b
    ld l, $2f
    ld d, b
    ld d, c
    ld b, d
    ld e, b
    ld e, c
    ld e, b
    ld b, d
    ld d, c
    ld d, b
    ld c, d
    jr c, jr_03e_48f6

    dec b
    ld a, a
    dec b
    ld c, h
    ld c, l
    ld b, e
    ld b, h
    ld d, d
    ld b, l
    ld b, [hl]
    ld b, a
    ld d, d
    ld b, h
    ld b, e
    ld e, d
    ld e, e
    ld h, [hl]
    dec b
    ld a, a
    dec b
    ld e, h
    ld e, l
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    dec b
    ld a, a
    adc [hl]
    dec b
    rlca
    ld d, $05
    dec bc
    dec b
    ld [$0b05], sp
    ld b, $05
    rlca
    dec b
    dec b
    dec bc
    dec c
    dec b
    rlca
    dec b
    dec b
    dec bc
    dec c
    dec b
    rlca
    dec b
    dec b
    dec c
    ld [bc], a
    dec b
    dec bc
    ld a, [bc]
    dec b
    rlca
    dec b
    dec b
    dec c
    ld [bc], a
    dec b
    dec bc
    ld a, [bc]
    dec b
    rlca
    dec b
    dec c
    dec c
    ld [$0508], sp
    dec bc
    inc b
    jr z, jr_03e_4903

    dec b
    dec bc
    ld [bc], a
    dec b
    rlca
    dec b
    dec b

jr_03e_48e2:
    ld [$2808], sp
    jr z, @+$0a

    ld [$050b], sp
    rlca
    dec b
    dec b
    ld [$0506], sp
    jr z, @+$05

    dec b
    ld [$0502], sp

jr_03e_48f6:
    rlca
    dec b
    dec b
    ld [$0507], sp
    jr z, @+$04

    ld [$0c08], sp
    dec b
    rlca

jr_03e_4903:
    dec b
    dec b
    ld [$2806], sp
    dec b
    ld [$0505], sp
    rlca
    adc [hl]
    rla
    inc d
    ld [de], a
    nop
    nop
    ld a, a
    ld d, $0c
    dec c
    ld c, $0f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    add h
    add l
    add [hl]
    add a
    inc [hl]
    nop
    ld a, a
    dec b
    inc e
    dec e
    ld e, $1f
    jr nc, jr_03e_495d

    ld [hl-], a
    rra
    inc sp
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    inc [hl]
    nop
    ld a, a
    dec b
    inc e
    dec e
    ld e, $1f
    jr nc, jr_03e_496e

    ld [hl-], a
    rra
    inc sp
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    inc [hl]
    nop
    ld a, a
    dec b
    inc e
    dec e
    ld e, $1f
    jr nc, jr_03e_497f

    ld [hl-], a
    rra
    inc sp
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    inc [hl]
    nop
    ld a, a
    dec b
    inc e
    add hl, hl
    ld h, $27

jr_03e_495d:
    jr z, jr_03e_4998

    ld [hl-], a
    rra
    inc sp
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    inc [hl]
    nop
    ld a, a
    dec b
    dec sp
    add hl, hl
    ld [hl], $37

jr_03e_496e:
    jr c, jr_03e_49a9

    ld b, b
    ld b, c
    inc sp
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    inc [hl]
    nop
    ld a, a
    dec b
    inc l
    ld a, [hl+]
    nop
    dec hl

jr_03e_497f:
    ld [bc], a
    ld a, [hl-]
    ld d, b
    ld d, c
    inc sp
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    inc [hl]
    nop
    ld a, a
    dec b
    inc a
    dec l
    ld l, $2f
    dec a
    ld a, $42
    ld b, e
    inc sp
    ld l, b
    ld l, c
    ld l, d

jr_03e_4998:
    ld l, e
    inc [hl]
    nop
    ld a, a
    dec b
    inc e
    dec e
    ld e, $1f
    jr nc, jr_03e_49d4

    ld d, d
    ld d, e
    inc sp
    ld a, b
    ld a, c
    ld a, d

jr_03e_49a9:
    ld a, e
    inc [hl]
    nop
    ld a, a
    dec b
    inc e
    dec e
    ld e, $1f
    jr nc, jr_03e_49e5

    ld b, h
    ld d, h
    inc sp
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    inc [hl]
    nop
    ld a, a
    adc [hl]
    nop
    rlca
    ld d, $00
    ld [$0005], sp
    inc c
    ld [bc], a
    nop
    ld [$0004], sp
    rlca
    dec b
    nop
    ld [$0005], sp
    inc c
    ld [bc], a

jr_03e_49d4:
    nop
    ld [$0004], sp
    rlca
    dec b
    nop
    ld [$0005], sp
    inc c
    ld [bc], a
    nop
    ld [$0004], sp
    rlca

jr_03e_49e5:
    dec b
    nop
    ld [$0005], sp
    inc c
    ld [bc], a
    nop
    ld [$0004], sp
    rlca
    dec b
    ld [$0008], sp
    add hl, bc
    ld [bc], a
    ld [$0c00], sp
    ld [bc], a
    nop
    ld [$0004], sp
    rlca
    dec b
    ld [$0008], sp
    add hl, bc
    ld [bc], a
    ld [$090c], sp
    inc c
    nop
    ld [$0004], sp
    rlca
    dec b
    nop
    ld [$0c05], sp
    add hl, bc
    inc c
    nop
    ld [$0004], sp
    rlca
    dec b
    nop
    ld [$0c05], sp
    add hl, bc
    inc c
    nop
    ld [$0004], sp
    rlca
    dec b
    nop
    ld [$0c05], sp
    add hl, bc
    inc c
    nop
    ld [$0004], sp
    rlca
    dec b
    nop
    ld [$0c05], sp
    add hl, bc
    inc c
    nop
    ld [$0004], sp
    rlca
    adc [hl]
    rla
    inc d
    ld [de], a
    nop
    nop
    ld a, a
    ld d, $0c
    dec c
    ld c, $0f
    ld l, $2f
    ld l, $1e
    rra
    ld l, $2f
    ld l, $2f
    ld l, $00
    ld a, a
    dec b
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld a, a
    dec b
    jr nz, jr_03e_4a8c

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03e_4a9c

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    ld a, a
    dec b
    jr nc, jr_03e_4aad

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03e_4abd

    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    ld a, a
    dec b
    ld b, b

jr_03e_4a8c:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    nop
    ld a, a
    dec b

jr_03e_4a9c:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    nop
    ld a, a
    dec b

jr_03e_4aad:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    nop
    ld a, a

jr_03e_4abd:
    dec b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    nop
    sub b
    rlca
    nop
    ld a, a
    dec b
    sub b
    halt
    ld [hl], a
    halt
    ld [hl], a
    ld a, b
    nop
    sub b
    rlca
    nop
    ld a, a
    dec b
    nop
    sub b
    inc b
    ld a, c
    nop
    sub b
    rlca
    nop
    ld a, a
    adc [hl]
    nop
    rlca
    ld d, $09
    add hl, bc
    ld a, [bc]
    nop
    add hl, bc
    ld a, [bc]
    nop
    rlca
    dec b
    nop
    add hl, bc
    dec c
    nop
    rlca
    dec b
    nop
    add hl, bc
    dec c
    nop
    rlca
    dec b
    nop
    add hl, bc
    dec c
    nop
    rlca
    dec b
    nop
    add hl, bc
    dec c
    nop
    rlca
    dec b
    nop
    add hl, bc
    dec c
    nop
    rlca
    dec b
    nop
    add hl, bc
    dec c
    nop
    rlca
    dec b
    ld [$0900], sp
    inc b
    nop
    ld [$0007], sp
    rlca
    dec b
    ld [$0900], sp
    inc b
    nop
    ld [$0007], sp
    rlca
    dec b
    nop
    ld [$0903], sp
    add hl, bc
    nop
    ld [$0007], sp
    rlca
    adc [hl]
    rla
    inc d
    ld [de], a
    nop
    nop
    ld a, a
    ld d, $10
    ld hl, $2322
    inc h
    nop
    dec h
    inc bc
    ld h, $23
    ld de, $2127
    nop
    ld a, a
    dec b
    db $10
    jr nc, jr_03e_4b7a

    inc hl
    ld [hl-], a
    ld b, $04
    dec b
    ld b, $37
    ld [hl+], a
    ld hl, $3938
    nop
    ld a, a
    dec b
    ld [hl+], a
    ld b, b
    ld b, c
    ld [hl+], a
    ld [hl-], a
    rlca
    ld [$0a09], sp
    scf
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    ld a, a
    dec b
    ld [hl+], a
    ld c, d
    ld c, e
    daa
    ld [hl-], a
    dec bc
    inc c
    dec c
    ld c, $37
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    ld a, a
    dec b
    ld [hl+], a

jr_03e_4b7a:
    ld d, b
    ld d, c
    daa
    ld [hl-], a
    dec d
    ld d, $17
    jr jr_03e_4bba

    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    nop
    ld a, a
    dec b
    ld [hl+], a
    ld e, d
    ld e, e
    daa
    ld [hl-], a
    add hl, de
    ld a, [de]
    add hl, de
    ld a, [de]
    scf
    ld h, b
    ld h, c
    jr nz, jr_03e_4bf5

    nop
    ld a, a
    dec b
    ld [hl+], a
    ld e, [hl]
    ld e, a
    daa
    ld [hl-], a
    nop
    dec de
    ld [bc], a
    inc e
    scf
    daa
    ld de, $1127
    nop
    ld a, a
    dec b
    ld [hl+], a
    nop
    daa
    ld [bc], a
    ld [hl-], a
    nop
    dec e
    ld [bc], a
    ld e, $37
    daa
    ld de, $2127

jr_03e_4bba:
    nop
    ld a, a
    dec b
    ld [hl+], a
    daa
    inc l
    ld a, [hl-]
    ccf
    nop
    rra
    inc bc
    ccf
    ld a, [hl-]
    dec hl
    daa
    ld hl, $7f00
    dec b
    ld [hl+], a
    dec l
    ld l, $2f
    nop
    rrca
    dec b
    cpl
    ld l, $2d
    ld de, $7f00
    adc [hl]
    nop
    rlca
    ld d, $00
    add hl, bc
    dec c
    nop
    rlca
    dec b
    add hl, bc
    dec bc
    nop
    add hl, bc
    ld [bc], a
    nop
    inc c
    inc bc
    nop
    add hl, bc
    inc b
    nop
    rlca
    dec b
    add hl, bc
    dec bc
    dec bc

jr_03e_4bf5:
    add hl, bc
    add hl, bc
    nop
    inc c
    inc bc
    add hl, bc
    add hl, bc
    nop
    dec bc
    ld [bc], a
    nop
    rlca
    dec b
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    nop
    inc c
    inc bc
    add hl, bc
    nop
    dec bc
    inc bc
    nop
    rlca
    dec b
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    nop
    inc c
    inc bc
    add hl, bc
    nop
    dec bc
    inc bc
    nop
    rlca
    dec b
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    nop
    ld a, [bc]
    inc bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    nop
    rlca
    dec b
    nop
    add hl, bc
    inc b
    nop
    ld a, [bc]
    inc bc
    nop
    add hl, bc
    inc b
    nop
    rlca
    dec b
    nop
    add hl, bc
    inc b
    nop
    ld a, [bc]
    inc bc
    nop
    add hl, bc
    inc b
    nop
    rlca
    dec b
    add hl, bc
    add hl, bc
    dec c
    dec c
    add hl, bc
    nop
    ld a, [bc]
    inc bc
    add hl, hl
    dec l
    nop
    add hl, bc
    ld [bc], a
    nop
    rlca
    dec b
    add hl, bc
    nop
    dec c
    ld [$2d00], sp
    ld [bc], a
    add hl, bc
    nop
    rlca
    adc [hl]
    rla
    inc d
    ld [de], a
    nop
    nop
    ld a, a
    ld d, $02
    rra
    inc bc
    daa
    xor h
    inc l
    dec l
    ld l, $2f
    xor h
    ld d, l
    ld e, c
    ld c, h
    ld c, l
    nop
    ld a, a
    dec b
    ld [de], a
    rra
    inc de
    daa
    ld b, b
    inc a
    dec a
    ld a, $3f
    ld d, b
    ld b, [hl]
    ld e, c
    ld e, h
    ld e, l
    nop
    ld a, a
    dec b
    inc b
    rra
    dec b
    jr z, jr_03e_4cd2

    ld b, d
    ld d, c
    ld d, d
    ld b, e
    ld b, h
    ld d, [hl]
    ld c, d
    ld c, [hl]
    ld c, a
    nop
    ld a, a
    dec b
    inc d
    jr nz, jr_03e_4cb5

    jr c, jr_03e_4ca2

jr_03e_4ca2:
    ld d, e
    ld [bc], a
    ld d, h
    ld d, e
    ld d, e
    ld b, a
    ld e, d
    ld e, [hl]
    ld e, a
    nop
    ld a, a
    dec b
    ld b, $1f
    rlca
    add hl, hl
    nop
    ld h, c
    dec b

jr_03e_4cb5:
    ld d, a
    ld c, e
    ld e, e
    ld e, e
    nop
    ld a, a
    dec b
    ld d, $1f
    rla
    add hl, sp
    nop
    ld [hl], b
    dec b
    add h
    add l
    add [hl]
    add a
    nop
    ld a, a
    dec b
    ld [$2430], sp
    dec h
    ld h, d
    ld h, e
    ld h, h
    ld h, l

jr_03e_4cd2:
    ld h, [hl]
    ld h, a
    sub h
    sub l
    sub [hl]
    sub a
    nop
    ld a, a
    dec b
    jr jr_03e_4ce6

    inc [hl]
    dec [hl]
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    adc b

jr_03e_4ce6:
    adc c
    adc d
    adc e
    nop
    ld a, a
    dec b
    ld a, [bc]
    jr jr_03e_4d08

    dec c
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    sbc b
    sbc c
    sbc d
    xor h
    nop
    ld a, a
    dec b
    inc c
    ld a, [de]
    jr jr_03e_4d1e

    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    add c

jr_03e_4d08:
    adc h
    adc l
    adc [hl]
    nop
    ld a, a
    adc [hl]
    nop
    rlca
    ld d, $09
    dec bc
    add hl, bc
    add hl, bc
    nop
    ld a, [bc]
    dec b
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    nop
    rlca

jr_03e_4d1e:
    dec b
    add hl, bc
    dec bc
    nop
    add hl, bc
    ld [bc], a
    nop
    ld a, [bc]
    inc bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    nop
    rlca
    dec b
    add hl, bc
    dec bc
    nop
    add hl, bc
    ld [$0a0b], sp
    dec bc
    nop
    rlca
    dec b
    ld [$080b], sp
    ld [$0900], sp
    dec b
    ld [$090b], sp
    add hl, bc
    nop
    rlca
    dec b
    ld [$000b], sp
    ld [$0008], sp
    dec bc
    ld [bc], a
    nop
    rlca
    dec b
    ld [$080b], sp
    nop
    dec bc
    ld b, $00
    ld [$0003], sp
    rlca
    dec b
    ld a, [bc]
    dec bc
    nop
    ld a, [bc]
    rlca
    nop
    ld [$0902], sp
    nop
    rlca
    dec b
    nop
    ld a, [bc]
    add hl, bc
    dec bc
    nop
    ld [$0002], sp
    rlca
    dec b
    nop
    ld a, [bc]
    ld [bc], a
    dec bc
    nop
    ld a, [bc]
    dec b
    dec bc
    nop
    ld [$0002], sp
    rlca
    dec b
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    nop
    ld a, [bc]
    dec b
    dec bc
    dec bc
    ld [$0008], sp
    rlca
    adc [hl]
    rla
    inc d
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld a, a
    rla
    inc hl
    inc h
    ld [hl+], a
    jr nz, jr_03e_4dbe

    ld [hl+], a
    ld [bc], a
    ld a, a
    ld [bc], a
    rlca
    adc b
    rst RST_38
    rst RST_38
    ld [bc], a
    ld a, a
    ld b, $30
    ld sp, $3032
    ld sp, $0232
    ld a, a
    ld [bc], a
    rla
    adc c
    adc d
    rst RST_38
    ld [bc], a
    ld a, a
    dec b
    inc sp
    inc [hl]
    ld b, c
    ld b, d
    ld b, b
    ld b, c

jr_03e_4dbe:
    ld b, d
    ld c, $0f
    ld a, a
    add hl, bc
    adc e
    adc h
    adc l
    ld [bc], a
    ld a, a
    dec b
    dec h
    ld h, $27
    rra
    daa
    ld h, $28
    ld e, $13
    inc d
    inc d
    add hl, de
    ld a, [de]
    adc [hl]
    ld [bc], a
    ld a, a
    dec b
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld e, b
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld [bc], a
    ld a, a
    dec b
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld [bc], a
    ld a, a
    dec b
    ld a, [hl-]
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld c, c
    ld [bc], a
    ld a, a
    dec b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [bc], a
    ld a, a
    dec b
    ld [bc], a
    dec [hl]
    ld [bc], a
    ld [hl], $37
    ld d, c
    ld b, h
    ld [hl], a
    dec [hl]
    ld a, b
    ld a, c
    dec [hl]
    ld a, d
    ld a, e
    ld [bc], a
    ld a, a
    dec b
    ld [bc], a
    ld b, l
    ld [bc], a
    ld b, [hl]
    ld b, a
    ld h, c
    add d
    ld a, h
    ld a, l
    ld [bc], a
    ld b, l
    ld [bc], a
    ld b, [hl]
    add h
    ld [bc], a
    ld a, a
    adc [hl]
    ld [bc], a
    rlca
    ld d, $01
    ld [bc], a
    add hl, bc
    dec b
    ld [bc], a
    ld bc, $0902
    ld [$0000], sp
    ld [bc], a
    rlca
    dec b
    ld bc, $0902
    dec b
    ld [bc], a
    ld bc, $0902
    ld [$0008], sp
    ld [bc], a
    rlca
    dec b
    ld [bc], a
    add hl, bc
    ld [$0901], sp
    add hl, bc
    ld [$0208], sp
    rlca
    dec b
    ld [bc], a
    ld [$020d], sp
    rlca
    dec b
    ld [bc], a
    ld [$0202], sp
    add hl, bc
    inc bc
    ld [bc], a
    ld [$0206], sp
    rlca
    dec b
    ld [$0208], sp
    add hl, bc
    inc bc
    ld [bc], a
    ld [$0202], sp
    add hl, bc
    inc bc
    ld [$0702], sp
    dec b
    ld [$0902], sp
    inc bc
    ld [bc], a
    ld [$0202], sp
    add hl, bc
    inc b
    ld [$0702], sp
    dec b
    ld [bc], a
    add hl, bc
    inc b
    ld [bc], a
    ld [$0202], sp
    add hl, bc
    inc b
    ld [$0702], sp
    dec b
    ld [bc], a
    add hl, bc
    inc bc
    ld [bc], a
    ld [$0903], sp
    ld [$0908], sp
    ld [$0208], sp
    rlca
    dec b
    ld [bc], a
    ld [$020d], sp
    rlca
    adc [hl]
    rla
    inc d
    ld [de], a
    nop
    nop
    ld a, a
    ld d, $86
    add a
    jr nz, jr_03e_4ee7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @-$5f

    xor e
    cp e
    nop
    ld a, a
    dec b
    sub [hl]
    sub a
    jr nc, jr_03e_4f08

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @-$46

    xor d
    xor h
    nop
    ld a, a
    dec b
    sbc e
    adc b
    add hl, hl

jr_03e_4ee7:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld b, b
    ld b, c
    xor c
    cp d
    or l
    nop
    ld a, a
    dec b
    sbc e
    sbc b
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld d, b
    ld d, c
    xor c
    cp d
    or l
    nop
    ld a, a
    dec b
    sbc e
    adc c

jr_03e_4f08:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    cp c
    xor [hl]
    xor a
    nop
    ld a, a
    dec b
    sbc e
    sbc c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    or d
    cp l
    or c
    nop
    ld a, a
    dec b
    sbc e
    adc d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    or d
    cp l
    or c
    nop
    ld a, a
    dec b
    sbc e
    sbc d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    cp h
    xor l
    or c
    nop
    ld a, a
    dec b
    sbc e
    adc e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    ld a, a
    dec b
    sbc e
    adc h
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    ld a, a
    adc a
    nop
    rlca
    ld d, $08
    ld [$0900], sp
    ld [$0a00], sp
    ld [bc], a
    nop
    rlca
    dec b
    ld [$0008], sp
    add hl, bc
    ld [$0b0a], sp
    dec bc
    nop
    rlca
    dec b
    ld [$0008], sp
    add hl, bc
    ld [bc], a
    ld [$0008], sp
    add hl, bc
    inc bc
    ld a, [bc]
    dec bc
    dec bc
    nop
    rlca
    dec b
    ld [$0908], sp
    add hl, bc
    nop
    ld [$0003], sp
    add hl, bc
    ld [bc], a
    ld a, [bc]
    dec bc
    dec bc
    nop
    rlca
    dec b
    ld [$0908], sp
    add hl, bc
    nop
    ld [$0003], sp
    add hl, bc
    ld [bc], a
    ld a, [bc]
    dec bc
    dec bc
    nop
    rlca
    dec b
    nop
    ld [$0002], sp
    add hl, bc
    rlca
    ld a, [bc]
    dec bc
    dec bc
    nop
    rlca
    dec b
    ld [$0008], sp
    add hl, bc
    inc bc
    ld [$0008], sp
    add hl, bc
    ld [bc], a
    ld a, [bc]
    dec bc
    dec bc
    nop
    rlca
    dec b
    ld [$0908], sp
    add hl, bc
    nop
    ld [$0905], sp
    ld a, [bc]
    dec bc
    dec bc
    nop
    rlca
    dec b
    ld [$0908], sp
    ld [$0900], sp
    inc b
    ld [$0009], sp
    ld a, [bc]
    ld [bc], a
    nop
    rlca
    dec b
    nop
    ld [$0003], sp
    add hl, bc
    inc bc
    ld [$0008], sp
    add hl, bc
    ld [bc], a
    ld a, [bc]
    nop
    rlca
    adc [hl]
    rla
    inc d
    ld [de], a
    ld c, d
    ld c, d
    ld a, a
    ld d, $77
    ld b, a
    ld c, b
    ld [hl], l
    halt
    ld l, [hl]
    halt
    halt
    ld l, [hl]
    halt
    ld [hl], a
    ld h, b
    ld h, c
    ld [hl], l
    ld c, d
    ld a, a
    dec b
    ld l, a
    ld d, a
    ld e, b
    ld l, l
    ld c, d
    ld l, [hl]
    dec b
    ld l, a
    ld [hl], b
    ld [hl], c
    ld l, l
    ld c, d
    ld a, a
    dec b
    ld l, a
    ld h, e
    ld h, c
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld d, l
    ld c, d
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld c, c
    ld h, d
    ld l, l
    ld c, d
    ld a, a
    dec b
    ld l, a
    ld [hl], e
    ld [hl], c
    ld l, l
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $46
    ld [hl], d
    ld l, l
    ld c, d
    ld a, a
    dec b
    ld l, a
    ld h, h
    ld [hl], h
    ld l, l
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $56
    ld c, b
    ld l, l
    ld c, d
    ld a, a
    dec b
    ld l, a
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    jr nz, jr_03e_5082

    ld [hl+], a
    ld l, l
    ld c, d
    ld a, a
    dec b
    ld a, b
    rla
    jr jr_03e_5083

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nc, jr_03e_50a3

    ld [hl-], a
    ld a, c
    ld c, d
    ld a, a
    dec b
    cpl
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03e_50a8

    ld a, [hl+]
    dec hl
    inc l

jr_03e_5082:
    dec l

jr_03e_5083:
    ld l, $50
    ld c, d
    ld a, a
    dec b
    ccf
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03e_50c9

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $41
    ld c, d
    ld a, a
    dec b
    ld b, b
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld c, d
    rst RST_38
    inc b
    ld d, d
    ld d, e

jr_03e_50a3:
    ld d, h
    ld d, c
    ld c, d
    ld a, a
    adc [hl]

jr_03e_50a8:
    ld c, d
    rlca
    ld d, $0c
    ld [$0c08], sp
    inc c
    add hl, bc
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    ld [$0c08], sp
    ld c, d
    rlca
    dec b
    inc c
    ld [$0c08], sp
    ld c, d
    add hl, bc
    dec b
    inc c
    ld [$0c08], sp
    ld c, d
    rlca

jr_03e_50c9:
    dec b
    inc c
    ld [$0c08], sp
    ld c, d
    add hl, bc
    dec b
    inc c
    ld [$0c08], sp
    ld c, d
    rlca
    dec b
    inc c
    ld [$0c08], sp
    ld c, d
    add hl, bc
    ld b, $08
    ld [$4a0c], sp
    rlca
    dec b
    inc c
    ld [$0c08], sp
    ld c, d
    add hl, bc
    ld b, $08
    ld [$4a0c], sp
    rlca
    dec b
    inc c
    ld a, [bc]
    ld a, [bc]
    ld c, d
    dec bc
    rlca
    ld a, [bc]
    ld [$4a0c], sp
    rlca
    dec b
    ld [$4a0a], sp
    dec bc
    add hl, bc
    ld a, [bc]
    ld [$074a], sp
    dec b
    ld [$0b4a], sp
    dec bc
    ld [$074a], sp
    dec b
    ld [$0b4a], sp
    dec bc
    ld [$074a], sp
    dec b
    ld [$4a08], sp
    dec bc
    ld [bc], a
    ld c, d
    nop
    inc b
    dec bc
    dec bc
    ld [$4a08], sp
    rlca
    adc [hl]
    rla
    inc d
    ld [de], a
    nop
    nop
    ld a, a
    ld d, $04
    jr nz, jr_03e_5152

    dec b
    ld b, $22
    inc hl
    inc l
    dec l
    ld l, $94
    sub l
    sub [hl]
    sub a
    nop
    ld a, a
    dec b
    inc d
    jr nc, jr_03e_5173

    dec d
    ld d, $32
    inc sp
    inc a
    dec a
    ld a, $a4
    and l
    and [hl]
    and a
    nop
    ld a, a
    dec b
    inc h
    inc [hl]

jr_03e_5152:
    rlca
    ld [$0900], sp
    inc b
    ld a, [bc]
    or h
    or l
    or [hl]
    or a
    nop
    ld a, a
    dec b
    rla
    jr jr_03e_516d

    dec h
    ld h, $27
    jr z, jr_03e_5190

    ld a, [hl+]
    dec hl
    sbc b
    sbc c
    sbc d
    sbc e

jr_03e_516d:
    nop
    ld a, a
    dec b
    ld b, b
    ld b, c
    dec de

jr_03e_5173:
    dec [hl]
    ld [hl], $37
    jr c, jr_03e_51b1

    ld a, [hl-]
    dec sp
    xor b
    xor c
    xor d
    xor e
    nop
    ld a, a
    dec b
    ld d, b
    ld d, c
    ld a, [de]
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ccf
    cp b
    cp c
    cp d
    cp e
    nop

jr_03e_5190:
    ld a, a
    dec b
    ld h, b
    ld h, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    sbc h
    sbc l
    sbc [hl]
    sbc a
    nop
    ld a, a
    dec b
    ld [hl], b
    ld [hl], c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    cpl
    xor h
    xor l
    xor [hl]

jr_03e_51b1:
    nop
    ld a, a
    dec b
    ld h, d
    ld h, e
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    cp h
    cp l
    nop
    ld a, a
    dec b
    ld [hl], d
    ld [hl], e
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    cp [hl]
    cp a
    nop
    ld a, a
    adc [hl]
    nop
    rlca
    ld d, $09
    nop
    ld a, [bc]
    ld [$0900], sp
    inc bc
    nop
    rlca
    dec b
    add hl, bc
    nop
    ld a, [bc]
    ld [$0900], sp
    inc bc
    nop
    rlca
    dec b
    add hl, bc
    ld a, [bc]
    nop
    ld [$0007], sp
    add hl, bc
    inc bc
    nop
    rlca
    dec b
    nop
    ld [$0a08], sp
    nop
    add hl, bc
    inc bc
    nop
    rlca
    dec b
    inc c
    add hl, bc
    nop
    ld [$0007], sp
    add hl, bc
    inc bc
    nop
    rlca
    dec b
    inc c
    inc c
    ld [$0c00], sp
    ld b, $00
    add hl, bc
    inc bc
    nop
    rlca
    dec b
    nop
    inc c
    add hl, bc
    nop
    add hl, bc
    inc bc
    nop
    rlca
    dec b
    add hl, bc
    add hl, bc
    nop
    inc c
    rlca
    dec bc
    nop
    add hl, bc
    ld [bc], a
    nop
    rlca
    dec b
    nop
    ld [$0a09], sp
    dec bc
    dec bc
    add hl, bc
    nop
    rlca
    dec b
    nop
    ld [$0a0a], sp
    dec bc
    dec bc
    nop
    rlca
    adc [hl]
    rla
    inc d
    ld [de], a
    nop
    nop
    ld a, a
    ld d, $00
    dec bc
    rlca
    inc b
    dec bc
    dec bc
    db $10
    ld de, $0012
    ld a, a
    dec b
    dec bc
    adc d
    inc d
    nop
    dec bc
    inc bc
    add $c7
    ret z

    ret


    add hl, de
    ld a, [de]
    dec de
    nop
    ld a, a
    dec b
    adc e
    adc h
    adc l
    adc [hl]
    dec bc
    dec bc
    jr nz, @+$23

    inc b
    dec bc
    dec bc
    ld [hl+], a
    inc hl
    inc h
    nop
    ld a, a
    dec b
    adc a
    sub b
    sub c
    sub d
    sub e
    ld a, [hl+]
    dec hl
    inc l
    inc b
    dec l
    ld l, $2f
    jr nc, jr_03e_52b4

    nop
    ld a, a
    dec b
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03e_52c7

    inc b
    scf
    ld a, [hl-]
    dec sp
    inc a
    dec bc
    nop
    ld a, a
    dec b
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc b
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    ld a, a
    dec b
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    inc b
    ld d, d
    ld d, e
    ld d, h

jr_03e_52b4:
    ld d, l
    sbc a
    nop
    ld a, a
    dec b
    rst RST_38
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    inc b
    sbc [hl]
    ld e, a
    ld h, b
    ld h, c
    and b

jr_03e_52c7:
    nop
    ld a, a
    dec b
    nop
    ld h, e
    rlca
    ld h, h
    nop
    ld h, e
    inc b
    nop
    ld a, a
    dec b
    and c
    and d
    and e
    and d
    and e
    and h
    and l
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    nop
    ld a, a
    adc [hl]
    nop
    rlca
    ld d, $00
    ld a, [bc]
    dec c
    nop
    rlca
    dec b
    ld a, [bc]
    ld [$0008], sp
    ld a, [bc]
    ld a, [bc]
    nop
    rlca
    dec b
    nop
    ld [$0003], sp
    ld a, [bc]
    add hl, bc
    nop
    rlca
    dec b
    nop
    ld [$0003], sp
    inc c
    inc bc
    ld a, [bc]
    nop
    inc c
    inc b
    nop
    rlca
    dec b
    nop
    ld a, [bc]
    inc bc
    nop
    inc c
    inc bc
    add hl, bc
    nop
    inc c
    inc b
    nop
    rlca
    dec b
    nop
    ld a, [bc]
    inc bc
    nop
    inc c
    inc bc
    add hl, bc
    nop
    inc c
    inc b
    nop
    rlca
    dec b
    nop
    add hl, bc
    rlca
    ld a, [bc]
    add hl, bc
    nop
    ld a, [bc]
    inc bc
    nop
    rlca
    dec b
    inc b
    nop
    add hl, bc
    dec b
    nop
    ld a, [bc]
    ld b, $00
    rlca
    dec b
    nop
    ld a, [bc]
    dec c
    nop
    rlca
    dec b
    nop
    ld a, [bc]
    ld b, $00
    dec bc
    ld b, $00
    rlca
    adc [hl]
    rla
    inc d
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld a, a
    ld d, $0c
    nop
    ld bc, $2516
    ld h, $27
    jr z, jr_03e_5384

    ld a, [hl+]
    ld b, $10
    ld de, $021f
    ld a, a
    dec b
    inc c
    nop
    ld bc, $3516
    ld [hl], $37
    jr c, jr_03e_53a5

    ld a, [hl-]
    ld b, $10
    ld de, $0220
    ld a, a
    dec b
    dec c
    nop
    ld bc, $2516
    dec hl
    inc l
    inc l
    dec sp
    inc a
    ld b, $10
    ld de, $0230
    ld a, a

jr_03e_5384:
    dec b
    dec e
    nop
    ld bc, $2516
    ld a, $2d
    ld l, $2f
    ccf
    ld b, $10
    ld de, $020c
    ld a, a
    dec b
    ld c, $00
    ld bc, $2516
    dec hl
    dec a
    dec a
    inc l
    inc l
    ld b, $10
    ld de, $020c

jr_03e_53a5:
    ld a, a
    dec b
    ld e, $00
    ld bc, $4016
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld d, d
    ld b, $10
    ld de, $0221
    ld a, a
    dec b
    inc c
    nop
    ld bc, $2516
    ld d, h
    ld b, e
    ld b, h
    ld d, e
    inc l
    ld b, $10
    ld de, $0231
    ld a, a
    dec b
    inc c
    nop
    ld bc, $1312
    ld [bc], a
    inc d
    inc bc
    inc de
    dec d
    ld [$2211], sp
    ld [bc], a
    ld a, a
    dec b
    inc e
    nop
    ld bc, $1b02
    rlca
    jr jr_03e_53f2

    ld [hl-], a
    ld [bc], a
    ld a, a
    dec b
    inc hl
    nop
    ld bc, $1b02
    ld b, $10
    add hl, bc
    ld de, $0223
    ld a, a
    adc [hl]

jr_03e_53f2:
    ld [bc], a
    rlca
    ld d, $09
    ld [bc], a
    ld [$0202], sp
    ld a, [bc]
    inc b
    dec bc
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    rlca
    dec b
    add hl, bc
    ld [bc], a
    ld [$0202], sp
    ld a, [bc]
    inc b
    dec bc
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    rlca
    dec b
    add hl, bc
    ld [bc], a
    ld [$0202], sp
    ld a, [bc]
    inc b
    dec bc
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    rlca
    dec b
    add hl, bc
    ld [bc], a
    ld [$0a02], sp
    ld [bc], a
    add hl, bc
    inc bc
    ld a, [bc]
    ld [bc], a
    ld [$2902], sp
    ld [bc], a
    rlca
    dec b
    add hl, bc
    ld [bc], a
    ld [$0a02], sp
    ld a, [bc]
    add hl, bc
    add hl, hl
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld [$2902], sp
    ld [bc], a
    rlca
    dec b
    add hl, bc
    ld [bc], a
    ld [$0202], sp
    ld a, [bc]
    dec b
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    rlca
    dec b
    add hl, bc
    ld [bc], a
    ld [$0202], sp
    ld a, [bc]
    dec b
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    rlca
    dec b
    add hl, bc
    ld [bc], a
    ld [$2807], sp
    ld [bc], a
    ld [$0902], sp
    ld [bc], a
    rlca
    dec b
    add hl, bc
    ld [bc], a
    ld [$090b], sp
    ld [bc], a
    rlca
    dec b
    ld [bc], a
    ld [$280c], sp
    ld [bc], a
    rlca
    adc [hl]
    rla
    inc d
    ld [de], a
    nop
    nop
    ld a, a
    ld d, $20
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_03e_54b4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    ld a, a
    dec b
    jr nc, jr_03e_54c5

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03e_54d5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    ld a, a
    dec b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    nop
    ld a, a
    dec b

jr_03e_54b4:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    nop
    ld a, a
    dec b

jr_03e_54c5:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    nop
    ld a, a

jr_03e_54d5:
    dec b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    nop
    ld a, a
    dec b
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    nop
    ld a, a
    dec b
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    nop
    ld a, a
    dec b
    ld c, $0f
    ld c, [hl]
    ld c, a
    adc [hl]
    adc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    nop
    ld a, a
    dec b
    ld e, $1f
    ld e, [hl]
    ld e, a
    sbc [hl]
    sbc a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    add hl, bc
    nop
    ld a, a
    adc [hl]
    nop
    rlca
    ld d, $00
    ld [$000d], sp
    rlca
    dec b
    nop
    add hl, bc
    ld [bc], a
    nop
    ld [$000a], sp
    rlca
    dec b
    nop
    add hl, bc
    dec bc
    ld [$0008], sp
    rlca
    dec b
    nop
    add hl, bc
    dec c
    nop
    rlca
    dec b
    nop
    add hl, bc
    dec c
    nop
    rlca
    dec b
    nop
    add hl, bc
    dec c
    nop
    rlca
    dec b
    nop
    add hl, bc
    dec c
    nop
    rlca
    dec b
    nop
    add hl, bc
    dec c
    nop
    rlca
    dec b
    nop
    add hl, bc
    dec c
    nop
    rlca
    dec b
    nop
    ld [$0003], sp
    add hl, bc
    add hl, bc
    nop
    rlca
    adc [hl]
    rla
    inc d
    ld [de], a
    ld bc, $7f01
    ld d, $20
    ld hl, $2423
    dec h
    ld h, $27
    jr z, jr_03e_55ab

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld [hl+], a
    ld bc, $057f
    dec bc
    inc c
    ld bc, $041f
    dec c
    ld c, $1f
    ld e, $1f
    rra
    ld e, $01
    ld a, a
    dec b
    jr nc, jr_03e_55cc

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03e_55dc

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld bc, $057f
    cpl

jr_03e_55ab:
    ld bc, $027f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld bc, $097f
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld bc, $057f
    ld h, b
    ld h, c
    ld h, d
    ld h, e

jr_03e_55cc:
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld bc, $057f
    ld l, $70
    ld [hl], c

jr_03e_55dc:
    ld [hl], d
    ld [hl], e
    ld a, $78
    ld a, c
    ld a, d
    ld a, e
    ccf
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld bc, $057f
    ld l, $80
    add c
    add d
    add e
    ld a, $88
    adc c
    adc d
    adc e
    ccf
    ld c, b
    ld c, c
    ld c, b
    ld bc, $057f
    ld l, $74
    ld [hl], l
    halt
    ld [hl], a
    ld a, $7c
    ld a, l
    ld a, [hl]
    ld a, a
    ccf
    ld c, d
    ld c, e
    ld c, h
    ld bc, $057f
    ld l, $84
    add l
    add [hl]
    add a
    ld a, $8c
    adc l
    adc [hl]
    adc a
    ccf
    ld c, l
    ld c, [hl]
    ld c, l
    ld bc, $8e7f
    ld bc, $1607
    ld bc, $0d08
    ld bc, $0507
    ld bc, $0908
    jr z, @+$03

    ld [$0102], sp
    rlca
    dec b
    ld bc, $0d08
    ld bc, $0507
    ld [$0001], sp
    ld [bc], a
    ld bc, $0508
    ld bc, $0300
    ld bc, $0507
    ld bc, $0d08
    ld bc, $0507
    ld bc, $0d08
    ld bc, $0507
    ld bc, $0d08
    ld bc, $0507
    ld bc, $0d08
    ld bc, $0507
    ld bc, $0d08
    ld bc, $0507
    ld bc, $0d08
    ld bc, $8e07
    adc a
    ld d, [hl]
    rst RST_08
    ld d, [hl]
    rrca
    ld d, a
    ld c, a
    ld d, a
    adc a
    ld d, a
    rst RST_08
    ld d, a
    rrca
    ld e, b
    ld c, a
    ld e, b
    adc a
    ld e, b
    rst RST_08
    ld e, b
    rrca
    ld e, c
    ld c, a
    ld e, c
    adc a
    ld e, c
    rst RST_08
    ld e, c
    rrca
    ld e, d
    ld c, a
    ld e, d
    adc a
    ld e, d
    rst RST_08
    ld e, d
    rrca
    ld e, e
    ld c, a
    ld e, e
    inc h
    nop
    inc h
    nop
    db $ed
    nop
    ld a, c
    ld a, [hl+]
    inc h
    nop
    sub d
    ld de, $2a79
    db $ed
    nop
    inc h
    nop
    ld a, c
    ld a, [hl+]
    db $ed
    nop
    sub d
    ld de, $0024
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $7c1f
    inc h
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $1192
    inc h
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $00ed
    ccf
    ld [bc], a
    rra
    ld a, h
    rra
    ld a, h
    nop
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld e, $00
    nop
    nop
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $1192
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    inc h
    nop
    sub d
    ld de, $2a79
    db $ed
    nop
    inc h
    nop
    sub d
    ld de, $00ed
    ld a, c
    ld a, [hl+]
    adc d
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $1192
    ccf
    ld [bc], a
    ld b, [hl]
    ld b, b
    call z, Call_000_006d
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld e, $00
    nop
    nop
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $1192
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    inc h
    nop
    sub d
    ld de, $2a79
    db $ed
    nop
    inc h
    nop
    sub d
    ld de, $00ed
    ld a, c
    ld a, [hl+]
    adc d
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $1192
    ccf
    ld [bc], a
    ld b, [hl]
    ld b, b
    call z, Call_000_006d
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld e, $00
    nop
    nop
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $1192
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    inc h
    nop
    sub d
    ld de, $2a79
    db $ed
    nop
    inc h
    nop
    sub d
    ld de, $00ed
    ld a, c
    ld a, [hl+]
    adc d
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $1192
    ccf
    ld [bc], a
    ld b, [hl]
    ld b, b
    call z, Call_000_006d
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld e, $00
    nop
    nop
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $1192
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    inc h
    nop
    sub d
    ld de, $2a79
    db $ed
    nop
    inc h
    nop
    sub d
    ld de, $00ed
    ld a, c
    ld a, [hl+]
    adc d
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $1192
    ccf
    ld [bc], a
    ld b, [hl]
    ld b, b
    call z, Call_000_006d
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld e, $00
    nop
    nop
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $1192
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    inc h
    nop
    sub d
    ld de, $2a79
    db $ed
    nop
    inc h
    nop
    sub d
    ld de, $00ed
    ld a, c
    ld a, [hl+]
    adc d
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $1192
    ccf
    ld [bc], a
    ld b, [hl]
    ld b, b
    call z, Call_000_006d
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld e, $00
    nop
    nop
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $1192
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    inc h
    nop
    sub d
    ld de, $2a79
    db $ed
    nop
    inc h
    nop
    sub d
    ld de, $00ed
    ld a, c
    ld a, [hl+]
    adc d
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $1192
    ccf
    ld [bc], a
    ld b, [hl]
    ld b, b
    call z, Call_000_006d
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld e, $00
    nop
    nop
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $1192
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    inc h
    nop
    sub d
    ld de, $2a79
    db $ed
    nop
    inc h
    nop
    sub d
    ld de, $00ed
    ld a, c
    ld a, [hl+]
    adc d
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $1192
    ccf
    ld [bc], a
    ld b, [hl]
    ld b, b
    call z, Call_000_006d
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld e, $00
    nop
    nop
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $1192
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    inc h
    nop
    sub d
    ld de, $2a79
    db $ed
    nop
    inc h
    nop
    sub d
    ld de, $00ed
    ld a, c
    ld a, [hl+]
    adc d
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $1192
    ccf
    ld [bc], a
    ld b, [hl]
    ld b, b
    call z, Call_000_006d
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld e, $00
    nop
    nop
    inc h
    nop
    db $ed
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $0024
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    db $ed
    nop
    ld a, c
    ld a, [hl+]
    ld a, c
    ld a, [hl+]
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ccf
    ld [bc], a
    ld e, $00
    ld e, $00
    nop
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld e, $00
    nop
    nop
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    sub d
    ld de, $00ed
    sub d
    ld de, $0024
    inc h
    nop
    db $ed
    nop
    db $ed
    nop
    sub d
    ld de, $1192
    ld a, c
    ld a, [hl+]
    ld a, c
    ld a, [hl+]
    inc h
    nop
    inc h
    nop
    sub d
    ld de, $2a79
    db $ed
    nop
    db $ed
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $0024
    ccf
    ld [bc], a
    rra
    ld a, h
    rra
    ld a, h
    nop
    nop
    add b
    ld a, a
    ldh [$ff03], a
    rra
    ld a, h
    nop
    nop
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    inc h
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    sub d
    ld de, $00ed
    ld a, c
    ld a, [hl+]
    inc h
    nop
    adc $00
    adc $00
    ld a, c
    ld a, [hl+]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ccf
    ld [bc], a
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    nop
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld [bc], a
    ld a, [hl]
    nop
    nop
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    db $ed
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $023f
    ret nz

    ld bc, $01c0
    nop
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ret nz

    ld bc, $0000
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    db $ed
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $0024
    db $ed
    nop
    db $ed
    nop
    sub d
    ld de, $0024
    ld a, c
    ld a, [hl+]
    db $ed
    nop
    sub d
    ld de, $7e02
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ccf
    ld [bc], a
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    nop
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld [bc], a
    ld a, [hl]
    nop
    nop
    inc h
    nop
    sub d
    ld de, $2a79
    db $ed
    nop
    inc h
    nop
    sub d
    ld de, $00cc
    sub d
    ld de, $0024
    sub d
    ld de, $1192
    ld a, c
    ld a, [hl+]
    inc h
    nop
    call z, $9200
    ld de, $2a79
    inc h
    nop
    sub d
    ld de, $00cc
    inc h
    nop
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ccf
    ld [bc], a
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    nop
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld [bc], a
    ld a, [hl]
    nop
    nop
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    sub d
    ld de, $2a79
    db $ed
    nop
    inc h
    nop
    sub d
    ld de, $00ed
    ld a, c
    ld a, [hl+]
    inc h
    nop
    sub d
    ld de, $2a79
    ld a, c
    ld a, [hl+]
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $00ed
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ccf
    ld [bc], a
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    nop
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld [bc], a
    ld a, [hl]
    nop
    nop
    inc h
    nop
    db $ed
    nop
    db $ed
    nop
    ld a, c
    ld a, [hl+]
    inc h
    nop
    db $ed
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $0024
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    inc h
    nop
    sub d
    ld de, $2a79
    db $ed
    nop
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ccf
    ld [bc], a
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    nop
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld [bc], a
    ld a, [hl]
    nop
    nop
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    inc h
    nop
    sub d
    ld de, $2a79
    db $ed
    nop
    inc h
    nop
    db $ed
    nop
    inc h
    nop
    ld a, c
    ld a, [hl+]
    inc h
    nop
    inc h
    nop
    sub d
    ld de, $2a79
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    ccf
    ld [bc], a
    rra
    ld a, h
    rra
    ld a, h
    nop
    nop
    add b
    ld a, a
    ldh [$ff03], a
    rra
    ld a, h
    nop
    nop
    inc h
    nop
    db $ed
    nop
    ld a, c
    ld a, [hl+]
    sub d
    ld de, $0024
    db $ed
    nop
    sub d
    ld de, $2a79
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ccf
    ld [bc], a
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    nop
    nop
    add b
    ld a, a
    ldh [$ff03], a
    ld [bc], a
    ld a, [hl]
    nop
    nop
    inc h
    nop
    db $ed
    nop
    sub d
    ld de, $2a79
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    ccf
    ld [bc], a
    rra
    ld a, h
    rra
    ld a, h
    nop
    nop
    add b
    ld a, a
    ldh [$ff03], a
    rra
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
