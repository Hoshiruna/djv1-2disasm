; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    ld hl, $761d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_050c
    ld hl, $7562
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Call_009_400f:
    call Call_000_05ce
    ld a, $e4
    ldh [rBGP], a
    ld a, $c1
    ldh [rLCDC], a

Jump_009_401a:
    jp Jump_009_401a


    dec hl
    ld b, b
    rst RST_10
    ld b, b
    xor b
    ld b, d
    ld e, $44
    rlca
    ld b, l
    push hl
    ld b, l
    inc bc
    ld b, [hl]
    rla
    inc d
    ld [de], a
    ld bc, $fe01
    dec d
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
    ld l, [hl]
    ld bc, $18fe
    ld l, a
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
    ld a, [hl]
    ld bc, $17fe
    ld a, a
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
    adc [hl]
    adc a
    ld bc, $16fe
    ld a, a
    add b
    add c
    add d
    add e
    add h
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    ld bc, $1afe
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    sub a
    sbc b
    sbc c
    sbc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    ld bc, $18fe
    ld a, a
    add b
    add c
    add d
    add e
    sbc e
    sbc h
    sbc l
    sbc [hl]
    ld bc, $23fe
    sbc a
    and b
    and c
    and d
    and e
    and h
    ld bc, $0bfe
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    ld bc, $1cfe
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    ld bc, $04fe
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $0001
    rst RST_38
    ld bc, $6700
    rla
    inc d
    ld [de], a
    dec sp
    nop
    ld bc, $0302
    inc b
    adc a
    adc a
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    adc a
    ld b, a
    ld c, b
    ld c, c
    dec sp
    adc a
    inc bc
    db $10
    ld de, $1312
    inc d
    dec sp
    adc a
    dec b
    ld b, [hl]
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld a, d
    ld a, e
    xor l
    adc a
    jr nz, jr_009_4122

    ld [hl+], a
    inc hl
    inc h
    ld a, [hl+]
    dec sp
    adc a
    ld [bc], a
    ld d, d
    ld h, d
    ld h, e
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld c, h
    ld c, l
    ld c, [hl]
    adc a
    dec b
    ld b, $07
    ld [$3a09], sp
    adc a
    ld a, $40
    ld b, c
    ld [hl], d
    ld [hl], e
    halt
    ld [hl], a
    ld a, b

jr_009_4122:
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    adc a
    dec d
    ld d, $17
    jr jr_009_4145

    rrca
    inc l
    dec l
    ld d, b
    ld d, c
    ld b, h
    ld b, l
    ld h, h
    ld h, l
    ld c, d
    ld c, e
    ld c, a
    ld e, a
    dec sp
    adc a
    ld [bc], a
    ld a, [bc]
    dec bc
    inc c
    dec c

Call_009_4140:
    ld c, $3c
    dec a
    ld h, b
    ld h, c

jr_009_4145:
    ld d, h
    ld d, l
    ld [hl], h
    ld [hl], l
    ld e, d
    ld e, e
    or b
    or c
    or d
    or e
    adc e
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $2e
    cpl
    ld [hl], b
    ld [hl], c
    adc a
    ld a, h
    ld a, l
    ld l, d
    ld l, e
    or h
    or l
    or [hl]
    or a
    cp h
    rra
    jr nc, jr_009_4197

    ld [hl-], a
    inc sp
    inc [hl]
    rst RST_10
    ld b, d
    ld b, e
    ld d, e
    adc l
    sub $d5
    call nc, $b9b8
    ret nc

    cp d
    cp e
    adc l
    dec hl
    dec h
    ld h, $27
    jr z, jr_009_41a6

    ret c

    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $d9
    jp c, $2b88

    dec [hl]
    ld [hl], $37
    jr c, jr_009_41ca

    ccf
    rst RST_08
    ld l, h
    ld l, l
    ld l, [hl]
    xor a

jr_009_4197:
    rst RST_00
    ret z

    ret


    jp z, $cccb

    call $3bd2
    xor a
    ld [bc], a
    rst RST_38
    xor a
    rst RST_38
    dec sp

jr_009_41a6:
    xor a
    inc bc
    rst RST_38
    xor a
    xor a
    rst RST_38
    xor a
    rst RST_38
    xor a
    xor a
    adc $3b
    xor a
    ld [$3bff], sp
    xor a
    ld [bc], a
    rst RST_38
    dec sp
    xor a
    dec bc
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    dec sp
    xor a
    rlca
    rst RST_38

jr_009_41ca:
    xor a
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    rst RST_38
    dec sp
    xor a
    ld [$3bff], sp
    xor a
    inc bc
    rst RST_38
    xor a
    xor a
    rst RST_38
    dec sp
    xor a
    ld [$3bff], sp
    xor a
    inc bc
    rst RST_38
    dec sp
    xor a
    ld [bc], a
    rst RST_38
    xor a
    xor a
    rst RST_38
    dec sp
    xor a
    dec bc
    rst RST_38
    dec sp
    xor a
    ld [bc], a
    rst RST_38
    dec sp
    xor a
    ld [de], a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    dec sp
    ld bc, $3b02
    ld [bc], a
    add hl, bc
    dec sp
    dec b
    ld [bc], a
    dec sp
    ld [bc], a
    inc bc
    dec sp
    ld bc, $3b02
    ld [bc], a
    rlca
    dec sp
    dec b
    ld [bc], a
    inc b
    inc b
    inc bc
    dec b
    dec b
    ld [bc], a
    dec sp
    ld bc, $0202
    ld [bc], a
    inc bc
    dec sp
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    inc bc
    dec sp
    inc b
    ld [bc], a
    nop
    nop
    inc bc
    inc bc
    dec sp
    ld [bc], a
    dec b
    inc bc
    ld [bc], a
    dec sp
    inc bc
    ld [bc], a
    inc b
    nop
    nop
    inc b
    inc b
    inc bc
    nop
    inc bc
    inc bc
    dec sp
    ld [bc], a
    dec b
    nop
    inc bc
    inc bc
    dec sp
    inc b
    ld [bc], a
    nop
    inc bc
    nop
    nop
    dec sp
    inc bc
    ld [bc], a
    dec sp
    ld [bc], a
    ld [bc], a
    dec sp
    dec b
    inc bc
    dec sp
    nop
    ld [bc], a
    inc b
    inc b
    dec b
    inc bc
    inc bc
    nop
    dec sp
    inc bc
    dec b
    ld [bc], a
    nop
    dec sp
    inc b
    inc bc
    dec sp
    nop
    inc bc
    dec sp
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    nop
    dec sp
    inc b
    ld [bc], a
    nop
    ld [bc], a
    dec sp
    nop
    ld [bc], a
    dec sp
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    dec sp
    nop
    inc b
    ld [bc], a
    dec sp
    nop
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld b, d
    ld [bc], a
    dec sp
    nop
    ld [bc], a
    dec sp
    ld [bc], a
    inc b
    ld b, d
    dec sp
    nop
    rlca
    ld [bc], a
    dec sp
    rlca
    ld de, $3b00
    rlca
    adc h
    rla
    inc d
    ld [de], a
    dec sp
    nop
    ld bc, $0302
    inc b
    adc a
    adc a
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    adc a
    ld b, a
    ld c, b
    ld c, c
    dec sp
    adc a
    inc bc
    db $10
    ld de, $1312
    inc d
    dec sp
    adc a
    dec b
    ld b, [hl]
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld a, d
    ld a, e
    xor l
    adc a
    jr nz, jr_009_42f3

    ld [hl+], a
    inc hl
    inc h
    ld a, [hl+]
    dec sp
    adc a
    ld [bc], a
    ld d, d
    ld h, d
    ld h, e
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld c, h
    ld c, l
    ld c, [hl]
    adc a
    dec b
    ld b, $07
    ld [$3a09], sp
    adc a
    ld a, $40
    ld b, c
    ld [hl], d
    ld [hl], e
    halt
    ld [hl], a
    ld a, b

jr_009_42f3:
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    adc a
    dec d
    ld d, $17
    jr jr_009_4316

    rrca
    inc l
    dec l
    ld d, b
    ld d, c
    ld b, h
    ld b, l
    ld h, h
    ld h, l
    ld c, d
    ld c, e
    ld c, a
    ld e, a
    dec sp
    adc a
    ld [bc], a
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $3c
    dec a
    ld h, b
    ld h, c

jr_009_4316:
    ld d, h
    ld d, l
    ld [hl], h
    ld [hl], l
    ld e, d
    ld e, e
    sbc b
    sbc c
    sbc d
    sbc e
    adc e
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $2e
    cpl
    ld [hl], b
    ld [hl], c
    adc a
    ld a, h
    ld a, l
    ld l, d
    ld l, e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    xor [hl]
    rra
    jr nc, jr_009_4368

    ld [hl-], a
    inc sp
    inc [hl]
    ccf
    ld b, d
    ld b, e
    ld d, e
    adc l
    ld a, [hl]
    xor h
    ld a, [hl]
    xor b
    xor c
    and a
    xor d
    xor e
    adc l
    dec hl
    dec h
    ld h, $27
    jr z, jr_009_4377

    ccf
    ccf
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld a, l
    ld a, h
    adc [hl]
    add b
    add b
    xor a
    add h
    adc b
    dec hl
    dec [hl]
    ld [hl], $37
    jr c, jr_009_439b

    ccf
    ccf
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a

jr_009_4368:
    xor h
    ld a, [hl]
    adc d
    add b
    add b
    ld a, a
    add l
    adc c
    dec sp
    ld a, a
    sbc a
    dec sp
    ld bc, $3b02

jr_009_4377:
    ld [bc], a
    add hl, bc
    dec sp
    dec b
    ld [bc], a
    dec sp
    ld [bc], a
    inc bc
    dec sp
    ld bc, $3b02
    ld [bc], a
    rlca
    dec sp
    dec b
    ld [bc], a
    inc b
    inc b
    inc bc
    dec b
    dec b
    ld [bc], a
    dec sp
    ld bc, $0202
    ld [bc], a
    inc bc
    dec sp
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    inc bc
    dec sp

jr_009_439b:
    inc b
    ld [bc], a
    nop
    nop
    inc bc
    inc bc
    dec sp
    ld [bc], a
    dec b
    inc bc
    ld [bc], a
    dec sp
    inc bc
    ld [bc], a
    inc b
    nop
    nop
    inc b
    inc b
    inc bc
    nop
    inc bc
    inc bc
    dec sp
    ld [bc], a
    dec b
    nop
    inc bc
    inc bc
    dec sp
    inc b
    ld [bc], a
    nop
    inc bc
    nop
    nop
    dec sp
    inc bc

Jump_009_43c1:
    ld [bc], a
    dec sp
    ld [bc], a
    ld [bc], a
    dec sp
    dec b
    inc bc
    dec sp
    nop
    ld [bc], a
    inc b
    inc b
    dec b
    inc bc
    inc bc
    nop
    dec sp
    inc bc
    dec b
    ld [bc], a
    nop
    dec sp
    inc b
    inc bc
    dec sp
    nop
    inc bc
    dec sp
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    nop
    dec sp
    inc b
    ld [bc], a
    nop
    ld [bc], a
    dec sp
    nop
    ld [bc], a
    dec sp
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    dec sp
    nop
    inc b
    dec sp
    ld [bc], a
    ld b, $22
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    nop
    ld [bc], a
    ld [bc], a
    ld b, d
    ld [bc], a
    dec sp
    nop
    ld [bc], a
    dec sp
    ld [bc], a
    ld [bc], a
    dec sp
    ld b, d
    inc bc
    ld [bc], a
    ld h, d
    ld [bc], a
    ld b, d
    ld h, d
    nop
    ld [bc], a
    ld [bc], a
    dec sp
    rlca
    sbc a
    rla
    inc d
    jr nz, jr_009_4422

jr_009_4422:
    nop
    rst RST_38
    ld hl, $7776
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    nop
    rst RST_38
    dec c
    ld a, c
    ld a, [hl-]
    dec sp
    ld a, a
    inc a
    dec a
    nop
    rst RST_38
    dec c
    ld a, c
    ld c, d

Jump_009_4439:
    ld c, e
    ld a, a
    ld c, h
    ld c, l
    nop
    rst RST_38
    dec c
    ld a, d
    nop
    ld a, e
    inc b
    nop
    rst RST_38
    dec c
    halt
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    nop
    rst RST_38
    dec c
    ld a, c
    nop
    ld [hl], b
    inc b
    nop
    rst RST_38
    dec c
    ld a, c
    nop
    ld [hl], b
    inc b
    nop
    rst RST_38
    dec c
    ld a, c
    nop
    ld [hl], b
    inc b
    nop
    rst RST_38
    dec c
    ld a, c
    nop
    ld [hl], b
    inc b
    nop
    rst RST_38
    dec c
    ld a, c
    nop
    ld [hl], b
    inc b
    nop
    rst RST_38
    dec c
    ld a, c
    ld a, a
    ld a, a
    ld a, $3f
    ld a, a
    nop
    rst RST_38
    dec c
    ld a, c
    ld a, a
    ld a, a
    ld c, [hl]
    ld c, a
    ld a, a
    nop
    rst RST_38
    dec c
    ld a, d
    nop
    ld a, e
    inc b
    ld a, b
    ld [hl], a
    nop
    ld a, b
    inc b
    ld [hl], a
    nop
    ld a, b
    inc bc
    ld [hl], a
    nop
    ld a, b
    inc b
    ld [hl], a
    ld a, b
    ld a, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld a, a
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld a, a
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld a, a
    ld a, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld a, a
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld a, a
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld a, a
    nop
    ld a, h
    inc de
    nop

Call_009_44c4:
    ld a, a
    inc de
    ld [hl], c
    ld [hl], h
    ld a, l
    nop
    ld a, a
    rlca
    ld a, [hl]
    ld [hl], l
    ld [hl], c
    nop
    ld a, a
    dec b
    nop
    ld a, h
    inc de
    nop
    ld a, a
    inc de
    ld [hl], c
    nop
    ld a, a
    ld [$0071], sp
    ld a, a
    inc e
    ld [hl], c
    nop
    ld a, a
    ld [$0071], sp
    ld a, a
    inc e
    ld [hl], c
    nop
    ld a, a
    ld [$0071], sp
    ld a, a
    inc e
    ld [hl], c
    nop
    ld a, a
    ld [$0071], sp
    ld a, a
    ld [$7b00], sp
    inc de
    nop
    rst RST_38
    daa
    nop
    rlca
    rst RST_38
    nop
    rlca
    rst RST_38
    nop
    rlca
    ld a, a
    rla
    inc d
    ld [de], a
    ccf
    ccf
    cp $66
    add hl, de
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0000
    ld bc, $0302
    inc b
    dec b
    ccf
    cp $05
    add hl, bc
    dec de
    inc e
    ld b, $fe
    cp $1d
    ld e, $fe
    rra
    cp $fe
    ld b, $07
    ld [$3e09], sp
    cp $fe
    dec bc
    ld a, [bc]
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_009_4566

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld a, [bc]
    dec bc
    cp $fe
    inc c
    cp $30
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_009_458a

    ld a, [hl-]
    dec sp
    inc a
    dec a
    cp $0c
    cp $fe
    ld c, $0d
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

jr_009_4566:
    ld c, e
    ld c, h
    ld c, l
    dec c
    ld c, $3f
    cp $02
    jr jr_009_45bf

    ld a, [de]
    ccf
    cp $04
    ld l, $2f
    cp $fe
    dec d
    ld d, $17
    jr @+$41

    cp $05
    inc d
    inc de
    ld [de], a
    ld de, $0f10
    rrca
    db $10
    ld de, $1312

jr_009_458a:
    inc d
    ccf
    cp $56
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
    ccf
    cp $16
    ccf
    nop
    ld h, a
    ccf
    jr nz, jr_009_45a8

    ccf
    nop
    dec c

jr_009_45a8:
    jr nz, jr_009_45aa

jr_009_45aa:
    nop
    jr nz, jr_009_45cd

    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ccf
    nop
    ld [$2020], sp
    ccf
    nop
    inc b
    ld bc, $023f
    ld [bc], a
    ccf

jr_009_45bf:
    nop
    ld [$3f20], sp
    nop
    ld b, $02
    ld [bc], a
    ld bc, $003f
    ld [$2020], sp

jr_009_45cd:
    ccf
    nop
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    ccf
    nop
    add hl, bc
    jr nz, @+$41

    nop
    ld b, $02
    ld [bc], a
    ccf
    nop
    dec bc
    ccf
    jr nz, jr_009_45e5

    ccf
    nop
    add e

jr_009_45e5:
    rla
    inc d
    ld [de], a
    nop
    nop
    ld a, a
    rlca
    jp hl


    sbc d
    ld hl, sp+$7f
    rst RST_28
    sub d
    sbc l
    sub e
    nop
    ld a, a
    rlc b
    ld [hl], a
    inc de
    nop
    ld a, a
    ld [hl], a
    nop
    ld b, $db
    nop
    rlca
    adc e
    rla
    inc d
    ld [de], a
    nop
    nop
    ld a, a
    rst RST_38
    nop
    ld a, a
    ld h, a
    nop
    rlca
    rst RST_38

Call_009_4610:
    nop
    rlca
    ld h, a
    daa
    ld b, [hl]
    ld [$ef4c], sp
    ld d, b
    call z, $c556
    ld e, e
    ld a, [bc]
    ld h, c
    rst RST_28
    ld h, l
    ld a, [bc]
    ld l, d
    rst RST_08
    ld l, h
    ld [$1d71], a
    nop
    add b
    rst RST_38
    nop
    nop
    inc bc
    nop
    ld e, $01
    dec bc
    rlca
    rst RST_38
    scf
    rrca
    cpl
    rra
    ld a, a
    rra
    ld e, a
    ccf
    rst RST_38
    rst RST_38
    nop
    sbc c
    ld a, [hl]
    rst RST_38
    rst RST_38
    ld sp, hl
    rst RST_38
    rst RST_18
    db $fc
    rst RST_38
    ld hl, sp-$01
    rst RST_38
    rla
    nop
    add b
    nop
    rst RST_38
    add b
    nop
    ld a, b
    add b
    ret nc

    ldh [$ff6c], a
    ldh a, [rIE]
    ld [hl], h
    ld hl, sp-$02
    ld hl, sp+$2a
    db $fc
    ld a, [bc]
    push af
    db $db
    dec b
    ld a, [$0130]
    ld [bc], a
    db $fd
    ld [hl], $01
    ld bc, $6ffe
    xor a
    ld d, b
    ld d, a
    xor b
    ld b, b
    ld bc, $54ab
    ld b, [hl]
    ld bc, $55ef
    xor d
    nop
    rst RST_38
    ld d, b
    inc bc
    add b
    ld a, a
    ld b, h
    rst RST_30
    cp e
    xor d
    ld d, l
    ld c, [hl]
    rlca
    nop
    rst RST_38
    ld de, $7eee
    ld e, h
    rlca
    ld bc, $08fe
    rst RST_30
    dec d
    ld [$015c], a
    rst RST_38
    ld a, [hl+]
    push de
    dec d
    ld [$d52a], a
    ld d, l
    xor d
    db $fc
    ld e, h
    ld bc, $015c
    or b
    ld b, b
    ld d, b
    and b
    add b
    ld b, b
    ei
    ld b, b
    add b
    sub h
    ld bc, $00c0
    ret nz

    nop
    pop bc
    ld a, a
    pop bc
    ret nz

    sbc $e0
    rst RST_28
    ldh a, [$fff7]
    and [hl]
    nop
    cp l
    di
    xor d
    ld bc, $f8f8
    nop
    rlca
    ld d, b
    nop
    cp $67
    ld bc, $1fc0
    cp c
    ld [bc], a
    or d
    ld [bc], a
    rst RST_38
    nop
    ld d, b
    ld [bc], a
    rst RST_30
    ldh a, [rP1]
    ldh a, [$ffc1]
    inc bc
    rst RST_38
    nop
    ccf
    ret nz

    ld a, a
    inc bc
    db $fc
    nop
    ld a, a
    nop
    ccf
    add b
    sbc l
    nop
    cp a
    cp $5c
    cp $06
    rst RST_38
    ld [bc], a
    rst RST_20
    ld bc, $f77f
    add b
    ccf
    nop
    ldh a, [rP1]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    db $fc
    ldh a, [rSB]
    ldh a, [rP1]
    ld bc, $3fff
    cp a
    ld a, a
    cp a
    di
    ld a, a
    rst RST_38
    dec b
    db $10
    ld [bc], a
    ld [de], a
    ccf
    or $ff
    di
    cp $11
    db $10
    or $ff
    adc [hl]
    rst RST_38
    rst RST_08
    rst RST_38
    ei
    rst RST_38
    rst RST_38
    xor c
    rst RST_38
    ld h, a
    db $fc
    push af
    cp $9d
    ei
    cp $0d
    dec h
    db $10
    dec e
    cp $fd
    cp $13
    ld bc, $3cfc
    ld bc, $013c
    ld [hl], h
    ld bc, $013c
    ld c, h
    ld bc, $1940
    adc b
    dec b
    rst RST_38
    xor d
    ld d, l
    push de
    ld a, [hl+]
    ld [$ff15], a
    nop
    sbc b
    ld d, b
    rla
    ld d, [hl]
    inc de
    ld h, b
    dec de
    ld e, a
    and b
    ld e, h
    ld bc, $1340
    ld d, a
    rla
    xor b
    cp a
    ld b, b
    ld hl, sp+$03
    ld h, [hl]
    sub h
    db $10
    ldh a, [$ff03]
    ldh a, [rP1]
    ld sp, hl
    inc bc
    or d
    nop
    and e
    db $10
    ld h, b
    ld h, a
    ld h, b
    ld h, e
    ld h, b
    rst RST_38
    ld h, e
    nop
    ld bc, $df1f
    rra
    rst RST_18
    rrca
    ld sp, $b4ef
    rla
    and [hl]
    ld [bc], a
    pop bc
    ld [de], a
    ld hl, sp-$05
    jp z, $b211

    inc de
    ei
    rlca
    rst RST_30
    sub $14
    ldh a, [c]
    add b
    cp a
    ret nz

    sbc $fa
    and d
    nop
    db $ec
    and $11
    ldh a, [rHDMA4]
    ldh a, [$ffa4]
    rrca
    rst RST_18
    nop
    rrca
    nop
    xor a
    and b
    ldh a, [c]
    rla
    ld e, a
    ccf
    rst RST_38
    ld a, d
    rra
    cpl
    rra
    halt
    rrca
    dec bc
    rlca
    rst RST_30
    ld a, $01
    inc bc
    ldh a, [rP1]
    jp Jump_000_22ff


    rst RST_38
    rst RST_38
    ld [hl], b
    rst RST_38
    or e
    rst RST_38
    ret


    rst RST_38
    rst RST_30
    rst RST_38
    rst RST_38
    add c
    ld a, [hl]
    rst RST_38
    nop
    ld a, [bc]
    db $fc
    ld d, $f8
    ld a, a
    inc [hl]
    ld hl, sp-$12
    ldh a, [$ff98]
    ldh [$ff7d], a
    sbc e
    nop
    db $e3
    nop
    nop
    jr c, @+$05

    ld [hl], $03
    jr nc, jr_009_47de

    xor d

jr_009_47de:
    ld d, h
    ld d, h
    rst RST_18
    xor d
    xor d
    ld d, h
    ld d, [hl]
    xor b
    ld b, h
    ld hl, $50a0
    or e
    ld d, b
    and b
    sub h
    ld de, $1396
    nop
    ld bc, $215a
    inc bc
    cp a
    ld a, b
    inc sp
    ld a, b
    ld a, e
    ld hl, sp+$7b
    jp z, $f810

    dec de
    ld hl, sp-$04
    ld b, $10
    db $fc
    ld bc, $2070
    jp nz, $c603

    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rra
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst RST_38
    db $fc
    nop
    pop bc
    inc bc
    rrca
    ccf
    inc a
    rst RST_38
    rst RST_38
    ld hl, sp-$04
    sbc $1e
    cp [hl]
    ld a, $7e
    ld a, [hl]
    ld a, l
    cp $96
    ld [hl+], a
    ld e, $fe
    nop
    ld e, $7f
    db $db
    nop
    adc b
    and b
    dec h
    ldh a, [rNR11]
    ld hl, sp+$03
    call z, Call_000_20b6
    or d
    inc hl
    jp z, $8001

    push af
    inc bc
    pop af
    db $10
    ccf
    db $db
    nop
    ei
    nop
    pop af
    ldh [$ff5d], a
    rrca
    or d
    nop
    add e
    nop
    pop af
    add l

jr_009_4855:
    jr nz, jr_009_4855

    jp c, $f720

    rst RST_38
    ld a, [hl]
    ld a, a
    dec b
    ld [de], a
    rst RST_38
    ccf
    ld a, a
    rrca
    rst RST_38
    ccf
    inc bc
    rlca
    ret nz

    ret nz

    ld [bc], a
    rrca
    dec c
    rst RST_38
    sbc a
    sbc [hl]
    rst RST_38
    cp $ff

jr_009_4872:
    db $fc
    cp $f8
    rst RST_18
    ld sp, hl
    ret nz

    rst RST_20
    ld bc, $5a07
    jr nz, jr_009_487e

jr_009_487e:
    ld h, b
    pop af
    ld h, c
    xor d
    inc de
    ldh a, [rSB]
    sub $12
    or $07
    push af
    rlca
    rst RST_10
    ldh a, [c]
    rlca

jr_009_488e:
    ldh a, [rNR30]
    jr nc, jr_009_4902

    jp z, $d310

    ld hl, sp+$5f
    xor e
    ld hl, sp+$43
    ld hl, sp+$03
    ld [hl], b
    ld [hl+], a
    ld bc, $3016
    db $ec
    dec de
    ld sp, $301b
    rrca
    ldh [$ff3a], a
    ld sp, $04f0
    ldh a, [rIE]
    ld b, $f0
    ld b, $e4
    ld c, $e2
    ld c, $e6
    ccf
    ld c, $ee
    ld c, $ce
    ld e, $02
    ld hl, sp+$04
    ld d, b
    dec h
    inc sp
    inc bc
    rrca
    ld a, [bc]
    inc sp
    ld d, b
    dec h
    rst RST_38
    rst RST_38
    dec e
    jr nz, jr_009_4941

    jr c, jr_009_4872

    ret nz

    ldh [rNR42], a
    nop
    add h
    ld a, $b6
    dec h
    nop
    xor e
    ld [hl+], a
    inc bc
    db $f4
    and e
    jr c, jr_009_488e

    ld a, $e0
    ret nz

    jr nc, jr_009_4955

    ld bc, $027b
    ld a, a
    ld a, a
    rla
    ld a, a
    cpl
    ld a, a
    ld a, [hl]
    ld a, a
    jp c, $ff20

    db $fc
    nop
    ld hl, sp+$40
    pop af
    add b
    db $e3
    nop
    sbc a
    jp $8700


    nop
    rlca
    ld d, c
    inc bc

jr_009_4902:
    call z, $f801
    rra
    inc bc
    ld hl, sp+$03
    ldh a, [rTAC]
    cp b
    dec h
    cp b
    daa
    jp z, Jump_009_7c01

    pop af
    db $10
    ld d, c
    inc bc
    cp $c0
    rra
    ldh [$ff0c], a
    ldh a, [rP1]
    db $fc
    db $db
    ld hl, $21db
    ld c, $c1
    jp Jump_000_0301


    inc bc
    rst RST_18
    rlca
    rst RST_00
    rst RST_08
    jp $b2c7


    inc hl
    ld b, $0e
    ccf
    nop
    adc h
    ret nz

    ldh [rIE], a
    rst RST_38
    jp c, Jump_000_0d30

    ld hl, $c3f7
    jr @-$23

jr_009_4941:
    ld b, b
    ld b, b
    jp c, $d819

    rra
    rst RST_10
    rst RST_18
    inc e
    call c, Call_009_4140
    ld a, [hl]
    db $dd
    nop
    ld a, a
    nop

jr_009_4952:
    rst RST_38
    rst RST_08
    nop

jr_009_4955:
    ld b, $30
    jr nc, jr_009_4952

    ld e, a
    rst RST_38
    sbc c
    ld a, [hl+]
    dec de
    nop
    ld e, a
    ld b, e
    ldh a, [$fff0]
    ret z

    inc de
    ld e, a
    ld b, [hl]
    rst RST_38
    cp a
    cp $fe
    ret nz

    pop bc
    ret nz

    rst RST_18
    ld e, a
    ld b, e
    ld hl, sp-$19
    ld hl, sp-$40
    rst RST_00
    ret z

    jr nz, jr_009_49ca

    nop
    rst RST_38

jr_009_497b:
    rst RST_38
    ret nz

    rst RST_38
    ret nz

    nop
    ld a, $01
    db $fd
    inc bc
    ei
    inc bc
    rst RST_38
    ei
    ld bc, $00fd
    cp $e1
    inc bc
    pop af
    rst RST_38
    inc bc
    ld hl, sp+$01
    ld sp, hl
    inc bc
    di
    rlca
    rst RST_20
    cp a
    rrca
    rst RST_08
    rra
    sbc a
    ccf
    db $e4
    and $10
    adc $53
    ldh [$ffcf], a
    or l
    ld b, [hl]
    or d
    nop
    rra
    xor e
    ld [hl+], a
    rst RST_20
    ret z

    ld b, b
    rst RST_38
    di
    nop
    di
    rrca
    add b
    rlca
    ret nz

    inc bc
    rst RST_18
    ret nz

    ld bc, $01e0
    ldh [$ffcb], a
    ld bc, $f800
    ld hl, sp+$61
    ld b, $50
    nop
    call c, RST_00

jr_009_49ca:
    ccf
    ccf
    rra
    ccf
    di
    rlca
    rra
    or d
    nop
    ld hl, $c000
    nop
    db $e3
    nop
    adc a
    nop
    db $fc
    ld bc, $02fd
    ld d, c
    ret c

    ld [hl+], a
    and b
    jr nz, @-$1e

    rst RST_38
    and $f0
    or $f0
    and [hl]
    ldh a, [rRP]
    ldh [$ff97], a
    and [hl]
    nop
    ld c, $da
    jr nz, jr_009_497b

    ldh [rBGP], a
    pop de
    jr nc, jr_009_49fb

    rst RST_38

jr_009_49fb:
    ret nz

    inc bc
    db $e4
    ld c, $cc
    ld c, $1c
    ld a, $ee
    ld hl, sp+$20
    db $fc
    nop
    ld a, b
    ld hl, sp+$40
    add b
    db $10
    jp $555c


    ld b, b
    ld [$0f41], a
    ldh a, [$fff0]
    ld e, a
    ld b, c
    inc d
    or l
    ld [bc], a
    ld a, b
    add d
    ld hl, $0451
    dec de
    nop
    pop hl
    pop hl
    add b
    sbc [hl]
    db $db
    nop
    cp $b5
    ld bc, $e000
    db $e3
    db $fc
    db $fc
    ldh a, [$fff3]
    db $ec
    jp nz, $c340

    ld [bc], a
    ld hl, sp+$03
    ld h, b
    ld b, $f8
    inc bc
    add e
    db $fc
    call nc, $1611
    ld b, h
    add [hl]
    ld b, b
    ld e, [hl]

jr_009_4a46:
    add b
    cp [hl]
    add b
    adc a
    cp [hl]
    nop
    ld a, [hl]
    ccf
    pop hl
    jr nz, jr_009_4ac7

    ld b, d
    rst RST_30
    jr nz, jr_009_4a46

    ccf
    ld hl, sp-$39
    ldh a, [$ff9f]
    ret nz

    sbc a
    cp c
    nop
    ld d, [hl]
    ld d, e
    cp a
    cp $00
    inc e
    nop
    nop
    ld sp, hl
    ret nz

    ld d, b
    db $fc
    rst RST_38
    ld [$14fc], sp
    rst RST_38
    dec hl
    rst RST_38
    ld d, a
    ld a, a
    rst RST_38
    ccf
    ld a, a
    nop
    ld hl, sp+$28

jr_009_4a79:
    db $fc
    ld e, a
    rst RST_38
    db $fd
    ccf
    push af
    jr nz, jr_009_4a79

    cp $e0
    ldh a, [$ffe0]
    ldh a, [$ffad]
    ccf
    jp nz, $8041

    rlca
    call nz, Call_000_0720
    add $22
    pop bc
    ccf
    ldh [$ffc3], a
    ldh [$ff03], a
    ret nz

    rrca
    jp nz, $8b40

    ld b, d
    ld a, [hl]
    rst RST_38
    ld b, d
    nop
    ld a, [hl]
    nop
    cp [hl]
    nop
    sbc $08
    ld h, e
    di
    ld [hl], b
    halt
    ld [de], a
    ld d, b
    inc de
    ld h, e
    and $f0
    ld d, [hl]
    ldh a, [$fffd]
    and [hl]
    inc e
    nop
    db $fc
    ld hl, sp-$05
    ldh [$ffe7], a
    add b
    ld a, l
    sbc a
    jp z, $0421

    pop hl
    db $fc
    ld bc, $317c

jr_009_4ac7:
    ld h, b
    rst RST_38
    ld a, [hl]
    nop
    ld a, $80
    ld a, $80
    ld e, $c0
    rst RST_38
    ld b, $e0
    ld b, b
    rst RST_30
    nop
    ld [hl], a
    add b
    scf
    rst RST_38
    add b
    scf
    nop
    ld [hl], a
    ld bc, $01f7
    rst RST_20
    ei
    ld bc, $ba83
    ld bc, $e00f
    adc a
    ldh [$ff67], a
    db $fc
    xor b
    ld bc, $10ca
    ccf
    cp a
    rra
    db $d3
    rrca
    db $e3
    cp a
    rrca
    db $eb
    rlca
    pop af
    rlca
    push af
    db $eb
    jr nc, jr_009_4b7c

    ld l, [hl]
    call nz, $fc19
    db $fd
    db $fc
    sub a
    ld b, b
    ld [bc], a
    ld a, [$6382]
    xor d
    ret nz

    ld d, d
    ld sp, hl
    inc b
    ld h, b
    db $fc
    sub d
    ld h, h
    ei
    sbc d
    ld h, c
    ld a, a
    scf
    ld a, a
    ld a, b

Jump_009_4b1e:
    ld a, a
    inc hl
    nop
    add b
    sbc b
    xor b
    ld h, b
    ldh a, [rSB]
    rst RST_38
    ld [$00c1], sp
    daa
    add b
    ccf
    ret nz

    ld e, $ff
    ldh [$ff08], a
    ret nz

    inc e
    add b
    inc a
    inc b
    ld a, [hl]
    inc h
    sub d
    ld b, b
    dec sp
    ld b, d
    jp Jump_009_4439


    ld hl, sp+$03
    sbc h
    sub $60
    jp nc, Jump_000_2263

    ld hl, sp+$03
    rst RST_20
    and $60
    ldh [c], a
    ld h, e
    ld hl, sp+$03
    jr c, @-$08

    ld h, b
    ldh a, [c]
    ld h, e
    rst RST_18
    adc d
    sbc $14
    cp [hl]
    ld l, $92
    ld [hl+], a
    adc [hl]
    adc [hl]
    ld e, l
    ld b, $0c
    ld [hl], b
    ldh a, [c]
    ld b, $f6
    ld de, $f476
    dec de
    ld [hl], b
    rst RST_28
    ld e, $9c
    ld a, a
    ld a, d
    rla
    nop
    ld a, [$fcff]
    rst RST_38
    ei
    ld a, [$9999]

jr_009_4b7c:
    jr jr_009_4bd8

    ld d, b
    ld hl, sp-$01
    jr c, jr_009_4bff

    sbc h
    ld a, $de
    rra
    rst RST_28
    rrca
    ld a, a
    rst RST_30
    rlca
    ei
    inc bc
    db $fd
    ld bc, $2979
    inc [hl]
    sbc $17
    ld b, e
    rst RST_38
    nop
    ld sp, hl
    db $fc
    ld d, c
    ld [hl], b
    db $fd
    db $fd
    db $e4
    dec de
    nop
    dec b
    ld [de], a
    ld a, a
    ld sp, $0461
    ld h, b
    ld a, $80
    sbc a
    rst RST_38
    ret nz

    rst RST_08
    ret nz

    rst RST_28
    ldh [$ffef], a
    cp $7e
    rst RST_38
    cp $be
    rst RST_38
    ld [hl], l
    rst RST_38
    ld a, [hl+]
    ld a, a
    db $10
    cp a
    ld a, a
    ld b, b
    ccf
    add b
    ccf
    and b
    ret nz

    ld d, d
    ld a, c
    rst RST_38
    nop
    ld a, c
    add b
    cp e
    add b
    dec sp
    ret nz

    ld e, e
    ei

jr_009_4bd1:
    ldh [$ff2b], a
    sbc d
    ld h, d
    ld sp, hl
    jr nz, jr_009_4bd1

jr_009_4bd8:
    ld d, b
    ldh a, [$ffbf]
    and b
    ldh a, [rSVBK]
    ldh a, [$ffe4]
    ldh a, [rNR43]
    ld d, a
    ld hl, sp-$18
    sbc l
    nop
    cp $00

jr_009_4be9:
    push af
    jr nz, jr_009_4be9

    or e
    ld [hl], b
    dec e
    rra
    dec e
    ld e, a
    rra
    ld c, $0f
    rrca
    adc a
    ld hl, sp+$03
    add hl, de
    add $72
    ld [bc], a
    ld [hl], h
    scf

jr_009_4bff:
    sbc c
    sub $72
    jp nz, $c67b

    ld a, l
    ld sp, hl
    ld [hl], e
    dec e
    add b
    add b
    ld b, l
    nop
    nop
    ld [bc], a
    add hl, de
    ld b, $00
    ld [bc], a
    inc bc
    nop
    inc bc
    sbc c
    ld d, $00
    ld h, b
    ld [de], a
    inc bc
    ld [$0805], sp
    dec b
    jr jr_009_4c27

    jr @+$07

    jr jr_009_4c3e

    nop

jr_009_4c27:
    inc bc
    call z, Call_000_0904
    jr nz, @+$0b

    dec d
    dec d
    nop
    ld bc, $0760
    ld d, h
    ld d, h
    ldh [rP1], a
    ld bc, $0970
    ld b, d
    dec b
    ld d, $07

jr_009_4c3e:
    jr nc, @+$0d

    nop
    nop
    ld d, l
    db $fd
    ld d, l
    and d
    rlca
    rst RST_38
    nop
    ld a, [$d505]
    ld a, [hl+]
    sbc a
    xor d
    ld d, l
    push af
    ld a, [bc]
    rst RST_38
    xor a
    nop
    cp d
    ld bc, $7faa
    ld d, l
    ld d, l
    xor d
    nop
    rst RST_38
    ld d, b

jr_009_4c5f:
    xor a
    or [hl]
    dec b
    rst RST_38
    xor e
    ld d, h
    ld d, l
    xor d
    xor d
    ld d, l
    nop
    rst RST_38
    cp a
    and d
    ld e, l
    ld d, l
    xor d
    cp $01
    cp d
    ld bc, $ff7f
    add b
    xor a
    ld d, b
    nop
    rst RST_38
    ld bc, $5ffe
    rst RST_20
    and b
    cp a
    ld b, b
    cp d
    dec b
    cp d
    dec b
    rlca
    rlca
    ld [$08ff], sp
    inc de
    inc de
    inc d
    inc d
    inc de
    inc de
    ld [$08ff], sp
    rlca
    rlca
    nop
    nop
    add h
    add h
    ld c, h
    ei
    ld c, h
    inc h
    inc d
    ld [de], a
    ld b, h
    ld b, h
    adc [hl]
    adc [hl]
    nop
    rst RST_28
    nop
    ld h, e
    ld h, e
    sub h
    ld [hl+], a
    db $10
    ld [hl], e
    ld [hl], e
    db $10
    rst RST_38

jr_009_4cb0:
    db $10
    sub h
    sub h
    ld h, e

jr_009_4cb4:
    ld h, e
    nop
    nop
    jr jr_009_4cb4

    jr jr_009_4c5f

    ld [hl-], a
    db $10
    sbc h
    sbc h
    add h
    add h
    and h
    db $fd
    and h
    ld b, b
    ld bc, $1111
    ld [de], a
    ld [de], a
    inc d
    inc d
    rst RST_38
    jr jr_009_4ce7

    inc d
    inc d
    ld [de], a
    ld [de], a
    ld de, $df11
    nop
    nop
    ld a, d
    ld a, d
    ld b, e
    ld d, d
    db $10
    ld [hl], d
    ld [hl], d
    db $fd
    ld b, d
    ld e, b
    db $10
    ld a, d
    ld a, d
    nop
    nop

jr_009_4ce7:
    ld h, $26
    rst RST_38
    ld l, c
    ld l, c
    add sp, -$18
    xor b
    xor b
    jr z, @+$2a

    rst RST_38
    add hl, hl
    add hl, hl
    ld h, $26
    nop
    nop
    jr nc, jr_009_4d2b

    call Call_009_7248
    ld d, $30
    jr nc, jr_009_4cb0

    ld bc, $03ba
    db $fc
    nop
    xor l
    ldh [rP1], a
    nop
    db $10
    jr c, jr_009_4d8c

    ld b, $1f
    sbc b
    db $10
    jr jr_009_4d8f

    nop
    inc e
    nop
    inc bc
    ld bc, $0000
    add [hl]
    xor a
    nop
    rst RST_10
    ld b, e
    nop
    rst RST_20
    cp d
    dec b
    ld a, a
    or a
    db $10
    ccf
    add b
    rst RST_38
    ccf

jr_009_4d2b:
    add b
    inc c
    ldh [rTMA], a

jr_009_4d2f:
    ldh a, [rSC]
    ld hl, sp-$01
    ld [bc], a
    ld a, b
    jr nz, jr_009_4d2f

    ld d, b
    ld hl, sp+$28
    db $fc
    rst RST_38
    ld e, b
    ld a, h
    jr z, jr_009_4d84

    ld b, h
    ld b, h
    ld a, h
    jr z, @+$01

    add hl, sp
    db $10
    ld l, h
    add hl, sp
    ld h, a
    ld c, l
    ld h, a
    ld b, d
    cp a
    ld a, a
    dec a
    ld [$041c], sp
    inc c
    ldh [rNR10], a
    inc e
    ld sp, hl
    inc c
    rst RST_20
    db $10
    ldh [c], a
    db $10
    jr jr_009_4d61

    rst RST_20
    add h

jr_009_4d61:
    rst RST_20
    rst RST_38
    ld b, b
    and $a4
    and $e0
    and $e6

jr_009_4d6a:
    rst RST_20
    rst RST_28
    and $e7
    ld b, d
    ld b, e
    nop
    ld bc, $0c10
    ld bc, $10db
    ld de, $2108
    nop
    dec e
    ld b, d
    inc b
    ld [$7fc6], sp
    ld c, b
    ld c, b
    ld c, [hl]

jr_009_4d84:
    ld b, h
    ld b, d
    nop
    xor [hl]
    and b
    inc d
    rst RST_38
    and b

jr_009_4d8c:
    ld b, c
    and c
    and c

jr_009_4d8f:
    pop hl
    pop hl
    add c
    nop
    db $fd
    pop hl
    nop
    ld [bc], a
    ld b, b
    add b
    dec d
    ld c, b
    sub l
    sub l
    push af
    ld d, l
    and h
    nop
    db $dd
    nop
    inc bc
    db $10
    ld b, b
    sub h
    ld d, h
    cp a
    ld d, h
    ld e, b
    ld e, b
    ld d, h
    nop
    call nc, Call_000_0300
    jr nz, jr_009_4d6a

    nop
    ld h, b
    jr nz, jr_009_4e0f

    ld hl, $7000
    nop
    ld [bc], a
    ld d, b
    rst RST_38
    jr nz, jr_009_4dc0

jr_009_4dc0:
    ld d, b
    db $10
    db $10
    jr nz, @+$22

    ld b, b
    db $fc
    ld e, l
    inc h
    inc b
    rlca
    nop
    nop
    ld a, [bc]
    ld a, [hl]
    sub [hl]
    ld a, $ff
    jp z, $e71f

    rrca
    rst RST_08
    rra
    adc $1e
    rst RST_38
    rst RST_20
    rrca
    ldh [rTAC], a
    ld [hl], b
    ld a, b
    jr nz, jr_009_4e53

    rst RST_38
    jr nz, jr_009_4e16

    jr nc, jr_009_4e20

    db $10
    jr @+$7a

    ld a, h
    ld a, a
    ret nz

    db $fc
    nop
    ret nz

    rlca
    rra
    nop
    dec c
    db $10
    ld sp, hl
    add b
    and [hl]
    jr nz, jr_009_4dfb

jr_009_4dfb:
    ld bc, $1818
    cp h
    cp $18
    sbc c
    ld a, [hl]
    sbc h
    db $10
    ld b, d
    inc b
    jr jr_009_4e21

    ld d, $01
    jr nc, jr_009_4e14

    sbc c
    rst RST_38

jr_009_4e0f:
    sbc c
    rrca
    rst RST_38
    rst RST_30
    rst RST_38

jr_009_4e14:
    dec de
    rst RST_38

jr_009_4e16:
    ld l, e
    cp $d3
    ld [hl+], a
    rst RST_30
    rst RST_38
    rrca
    rst RST_38
    rra
    ret nz

jr_009_4e20:
    ccf

jr_009_4e21:
    adc e
    add b
    ld a, a
    or e
    ld d, $7f
    cpl
    db $10
    or [hl]
    daa
    ld b, b
    inc b
    ld a, a
    db $e3
    nop
    ld [hl], $05
    inc [hl]
    or a
    stop
    nop
    ld a, h
    nop
    ld h, c
    ld l, a
    ld h, c
    ld h, c
    ld a, c
    ld a, c
    dec d
    jr nc, jr_009_4e42

jr_009_4e42:
    ld h, b
    nop
    ld bc, $e77f
    nop
    or [hl]
    or [hl]
    or [hl]

jr_009_4e4b:
    or a
    or a
    dec h
    jr nc, jr_009_4e4b

    nop
    and $00

jr_009_4e53:
    ld bc, $009f
    add $c6
    add $db
    add [hl]
    add [hl]
    dec [hl]
    jr nc, jr_009_4e5f

jr_009_4e5f:
    add $00
    ld bc, $009e
    rst RST_38
    inc sp
    jr nc, jr_009_4e98

    ld e, $1e
    inc bc
    inc bc
    inc sp
    ei
    nop
    ld e, $00
    ld bc, $007d
    ld h, b
    ld h, b
    ld h, b
    db $e3
    ld a, b
    ld a, b
    ld d, l
    jr nc, jr_009_4e8f

    jr nc, jr_009_4e7f

jr_009_4e7f:
    nop
    ei
    nop
    ld h, e
    cp [hl]
    ld d, l
    jr nc, jr_009_4ee7

    ld h, c
    ld h, c
    ld h, e
    nop
    dec l
    stop
    rst RST_38

jr_009_4e8f:
    nop
    rst RST_28
    nop
    db $ec
    ld c, h
    ld c, h
    adc a
    adc a
    rst RST_20

jr_009_4e98:
    inc c
    inc c
    db $ec
    ld [hl], d
    jr nc, jr_009_4e9e

jr_009_4e9e:
    nop
    and e
    nop
    inc sp
    rst RST_38
    dec sp
    dec sp
    ccf
    ccf
    scf
    scf
    inc sp
    nop
    dec e
    or c
    nop
    ld bc, $0079
    call Call_000_3495
    sub d
    jr nc, jr_009_4eb7

jr_009_4eb7:
    nop
    rst RST_38
    dec de
    nop
    sbc b
    ret c

    ret c

    ld hl, sp-$08
    cp b
    rst RST_28
    cp b
    sbc b
    nop
    adc b
    nop
    ld bc, $00f7
    jp $b5f6


    inc [hl]
    nop
    rst RST_00
    ld a, a
    ccf
    nop
    nop
    ld h, [hl]
    nop
    db $ed
    ld h, [hl]
    push de
    inc [hl]
    nop
    inc a
    nop
    ld bc, $00fd
    pop bc
    adc a
    pop bc
    pop bc
    ld sp, hl
    ld sp, hl
    push hl

jr_009_4ee7:
    jr nc, @-$1c

    jr nc, jr_009_4eeb

jr_009_4eeb:
    nop
    ldh a, [$ffbf]
    nop
    sbc b
    sbc b
    sbc b
    ldh a, [$fff0]
    push af
    jr nc, jr_009_4ef7

jr_009_4ef7:
    or l
    sbc b
    nop
    ld bc, $d43c
    ld sp, $7e7e
    jp c, Jump_009_6631

    inc c
    rrca
    inc sp
    push de
    jr nc, jr_009_4f85

    ld a, h
    jp c, Jump_009_5e31

    ld [hl-], a
    inc bc
    ld b, b
    ld h, [hl]
    ld sp, $6043
    ld h, b
    call c, $1334

jr_009_4f18:
    ld b, d
    ret c

    inc sp
    ld e, [hl]
    ld [hl-], a
    ld a, [hl]
    ld d, h
    ld sp, $7c8b
    ld a, h
    ld e, d
    ld sp, $3f7e
    ld c, h
    ld e, $32
    inc hl
    ld b, d
    ld l, [hl]
    ld de, $da6e
    ld [hl], $d3
    ld [hl-], a
    ld [$3c48], sp
    ld sp, hl
    ld [hl+], a
    ld a, [$de22]
    ld [hl-], a
    rst RST_20
    ld b, $00
    ld b, $95
    ld b, c
    jp c, Jump_009_6236

    nop
    ld h, [hl]
    rla
    ld l, h
    ld l, h
    ld a, b
    xor b
    ld b, b
    ld l, h
    dec c
    ld b, e
    ld e, h
    ld b, b
    or l
    ld b, h
    cp $4d
    ld b, e
    ld b, c
    nop

jr_009_4f59:
    ld h, e
    ld [hl], a
    ld [hl], a
    ld l, e
    ld l, e
    ld sp, hl
    ld h, e
    inc l
    db $10
    ld l, [hl]
    ld [hl-], a
    ld b, [hl]
    nop
    ld h, [hl]
    halt
    halt
    inc bc
    ld a, [hl]
    ld a, [hl]
    ld l, b
    ld b, b
    and d
    ld b, b
    nop
    ld b, l
    ret c

    jr c, @+$35

    ld b, h
    ld c, b
    ld b, b
    ld a, h
    ld e, l
    ld b, [hl]
    push de
    ld sp, $6a6a
    ld h, h
    nop
    ld a, [hl-]
    rrca
    ld c, h
    inc c

jr_009_4f85:
    ld a, [hl]
    ld b, h
    dec h
    ld b, b
    inc a
    inc a
    sbc b
    ld b, b
    db $dd
    inc sp
    or e
    jr nz, jr_009_4f18

    ld b, l
    ldh a, [rSTAT]
    ld [bc], a
    db $d3
    dec a
    ld l, h
    jr nc, jr_009_4fa0

    ld sp, $1c1c
    inc e
    nop

jr_009_4fa0:
    push af
    ld [$544f], sp
    ld l, e
    ld h, [hl]
    ld d, b
    ld a, $3e
    ld [hl], $00
    db $fd
    ld [hl+], a
    ccf
    ld d, h
    inc a
    inc a
    jr jr_009_4fcb

    inc a
    inc a
    ld hl, sp+$0c
    ld b, h
    ld [hl], e
    ld d, h
    ld a, [hl-]
    ld d, [hl]
    ld a, [hl]
    nop
    ld a, [hl]
    inc c
    inc c
    rst RST_08
    jr jr_009_4fdc

    jr nc, @+$32

    sub e
    ld d, b
    xor d
    ld [hl+], a
    nop

jr_009_4fcb:
    jr c, jr_009_4f59

    ld [hl], $5a
    inc bc
    ld b, b
    ld b, $06
    sub [hl]
    ld d, d
    ld c, l
    ld b, e
    or e
    ld d, d
    inc e
    ld b, c
    inc e

jr_009_4fdc:
    ld a, [hl+]
    ld d, [hl]
    inc bc
    ld b, d
    sub [hl]
    ld d, c
    and c
    ld d, c
    nop
    nop
    inc h
    ld bc, $8540
    inc a
    push de
    ld sp, $0d7e
    ld b, e
    ld a, [hl]
    ld b, $b9
    ld b, d
    ld bc, $3e44
    add c
    ld a, $ca
    ld e, e
    and $52
    db $dd
    inc sp
    di
    daa
    ld d, h
    jr nz, jr_009_5013

    dec h
    inc c
    rst RST_08
    inc c
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld e, l
    ld d, e
    nop
    ld bc, $a1bd
    cp a
    and c

jr_009_5013:
    cp c
    cp c
    and c
    nop
    cp l
    ld b, d
    dec b
    db $10
    ld a, a
    db $10
    db $10

jr_009_501e:
    ld d, b
    ld d, b
    or b
    nop
    db $10
    rst RST_08
    ld e, a
    rst RST_38
    nop
    ccf
    nop
    ccf
    rla
    scf
    rrca
    jr z, jr_009_501e

    rla
    jr c, @+$09

    ccf
    nop
    ld [bc], a
    ld hl, sp+$00
    call nc, $f8ff
    cp $dc
    ld [hl+], a
    call c, $d824
    ld hl, sp-$02
    ld a, [hl]
    rlca
    add hl, bc
    dec c
    dec c
    dec bc
    dec bc
    add hl, bc
    nop
    ld l, l
    add hl, bc
    ld b, d
    dec b
    ld [hl-], a
    ld c, d
    xor b
    ld h, c
    nop
    ld sp, $0542
    rst RST_10
    ld d, c
    ld d, c
    ld d, c
    xor d
    ld h, c
    add h
    ld b, d
    dec b
    ld a, c
    ld b, d
    sbc a
    ld b, d
    ld [hl], e
    ld [hl], e
    ld b, d
    nop
    ld e, l
    stop
    inc bc
    sub d
    ld a, a
    ld d, d
    ld d, d
    jp nc, $52d2

    nop
    ld c, h
    ld b, d
    dec b
    db $db
    rrca
    ld [$61e8], sp
    nop
    rrca
    ld b, d
    dec b
    ld [hl+], a
    and d
    pop af
    and d
    ld [hl+], a
    db $10
    dec a
    ld h, a
    scf
    ld l, l
    cp [hl]
    and b
    and b
    cp h
    cpl
    cp h
    and b
    nop
    cp [hl]
    ld b, d
    dec b
    adc b
    daa
    ld [hl], d
    ld e, l
    inc hl
    jr nz, @+$3e

    ld d, h
    ei
    dec h
    ccf
    ld b, d
    ld b, [hl]
    ld [hl], b
    rst RST_28
    ld e, d
    ei
    ld e, b
    inc hl
    ld l, $66
    call $a6e0
    ld hl, $0080
    xor c
    ld [hl+], a
    sub e
    ld l, a
    nop
    nop
    rst RST_38
    ld c, e
    ld c, d
    ld c, d
    ld c, e
    ld c, e
    ld c, d
    nop
    inc sp
    cp $42
    dec b
    pop de
    ld de, $8a11
    adc d
    ld a, [bc]
    nop
    ret


    call nz, $0542
    ld [hl], c
    inc de
    nop
    ld a, l
    db $10

jr_009_50d2:
    sub c
    inc [hl]
    db $fd
    db $fd
    jp nc, $319a

    call Call_000_3fef
    nop
    inc bc
    jr c, jr_009_5137

    ld h, b
    db $10
    db $10
    dec c
    nop
    adc a
    ld d, $7c
    jr z, jr_009_50d2

    ld [hl], c
    ld e, l
    inc sp
    ldh a, [c]
    ld a, d
    dec e
    nop
    add b
    rst RST_38
    nop
    nop
    inc bc
    nop
    ld e, $01
    dec bc
    rlca
    rst RST_38
    scf
    rrca
    cpl
    rra
    ld a, a
    rra
    ld e, a
    ccf
    rst RST_38
    rst RST_38
    nop
    sbc c
    ld a, [hl]
    rst RST_38
    rst RST_38
    ld sp, hl
    rst RST_38
    rst RST_18
    db $fc
    rst RST_38
    ld hl, sp-$01
    rst RST_38
    rla
    nop
    add b
    nop
    rst RST_38
    add b
    nop
    ld a, b
    add b
    ret nc

    ldh [$ff6c], a
    ldh a, [rIE]
    ld [hl], h
    ld hl, sp-$02
    ld hl, sp+$2a
    db $fc
    ld a, [bc]
    push af
    db $db
    dec b
    ld a, [$0130]
    ld [bc], a
    db $fd
    ld [hl], $01
    ld bc, $6ffe
    xor a
    ld d, b

jr_009_5137:
    ld d, a
    xor b
    ld b, b
    ld bc, $54ab
    ld b, [hl]
    ld bc, $55ef
    xor d
    nop
    rst RST_38
    ld d, b
    inc bc
    add b
    ld a, a
    ld b, h
    rst RST_30
    cp e
    xor d
    ld d, l
    ld c, [hl]
    rlca
    nop
    rst RST_38
    ld de, $7eee
    ld e, h
    rlca
    ld bc, $08fe
    rst RST_30
    dec d
    ld [$015c], a
    rst RST_38
    ld a, [hl+]
    push de
    dec d
    ld [$d52a], a
    ld d, l
    xor d
    db $fc
    ld e, h
    ld bc, $015c
    or b
    ld b, b
    ld d, b
    and b
    add b
    ld b, b
    ei
    ld b, b
    add b
    sub h
    ld bc, $00c0
    ret nz

    nop
    pop bc
    ld a, a
    pop bc
    ret nz

    sbc $e0
    rst RST_28
    ldh a, [$fff7]
    and [hl]
    nop
    cp l
    di
    xor d
    ld bc, $f8f8
    nop
    rlca
    ld d, b
    nop
    cp $67
    ld bc, $1fc0
    cp c
    ld [bc], a
    or d
    ld [bc], a
    rst RST_38
    nop
    ld d, b
    ld [bc], a
    rst RST_30
    ldh a, [rP1]
    ldh a, [$ffc1]
    inc bc
    rst RST_38
    nop
    ccf
    ret nz

    ld a, a
    inc bc
    db $fc
    nop
    ld a, a
    nop
    ccf
    add b
    sbc l
    nop
    cp a
    cp $5c
    cp $06
    rst RST_38
    ld [bc], a
    rst RST_20
    ld bc, $f77f
    add b
    ccf
    nop
    ldh a, [rP1]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld h, h
    db $fc
    ldh a, [rSB]
    ldh a, [rP1]
    ld bc, $3fff
    cp a
    ld a, a
    cp a
    di
    ld a, a
    rst RST_38
    dec b
    db $10
    ld [bc], a
    ld [de], a
    ccf
    or $ff
    di
    cp $11
    db $10
    or $ff
    adc [hl]
    rst RST_38
    rst RST_08
    rst RST_38
    ei
    rst RST_38
    rst RST_38
    xor c
    rst RST_38
    ld h, a
    db $fc
    push af
    cp $9d
    ei
    cp $0d
    dec h
    db $10
    dec e
    cp $fd
    cp $13
    ld bc, $3cfc
    ld bc, $013c
    ld [hl], h
    ld bc, $013c
    ld c, h
    ld bc, $1940
    adc b
    dec b
    rst RST_38
    xor d
    ld d, l
    push de
    ld a, [hl+]
    ld [$ff15], a
    nop
    sbc b
    ld d, b
    rla
    ld d, [hl]
    inc de
    ld h, b
    dec de
    ld e, a
    and b
    ld e, h
    ld bc, $1340
    ld d, a
    rla
    xor b
    cp a
    ld b, b
    ld hl, sp+$03
    ld h, [hl]
    sub h
    db $10
    ldh a, [$ff03]
    ldh a, [rP1]
    ld sp, hl
    inc bc
    or d
    nop
    and e
    db $10
    ld h, b
    ld h, a
    ld h, b
    ld h, e
    ld h, b
    rst RST_38
    ld h, e
    nop
    ld bc, $df1f
    rra
    rst RST_18
    rrca
    ld sp, $b4ef
    rla
    and [hl]
    ld [bc], a
    pop bc
    ld [de], a
    ld hl, sp-$05
    jp z, $b211

    inc de
    ei
    rlca
    rst RST_30
    sub $14
    ldh a, [c]
    add b
    cp a
    ret nz

    sbc $fa
    and d
    nop
    db $ec
    and $11
    ldh a, [rHDMA4]
    ldh a, [$ffa4]
    rrca
    rst RST_18
    nop
    rrca
    nop
    xor a
    and b
    ldh a, [c]
    rla
    ld e, a
    ccf
    rst RST_38
    ld a, d
    rra
    cpl
    rra
    halt
    rrca
    dec bc
    rlca
    rst RST_30
    ld a, $01
    inc bc
    ldh a, [rP1]
    jp Jump_000_22ff


    rst RST_38
    rst RST_38
    ld [hl], b
    rst RST_38
    or e
    rst RST_38
    ret


    rst RST_38
    rst RST_30
    rst RST_38
    rst RST_38
    add c
    ld a, [hl]
    rst RST_38
    nop
    ld a, [bc]
    db $fc
    ld d, $f8
    ld a, a
    inc [hl]
    ld hl, sp-$12
    ldh a, [$ff98]
    ldh [$ff7d], a
    sbc e
    nop
    db $e3
    nop
    nop
    jr c, @+$05

    ld [hl], $03
    jr nc, jr_009_52a6

    xor d

jr_009_52a6:
    ld d, h
    ld d, h
    rst RST_18
    xor d
    xor d
    ld d, h
    ld d, [hl]
    xor b
    ld b, h
    ld hl, $50a0
    or e
    ld d, b
    and b
    sub h
    ld de, $1396
    nop
    ld bc, $215a
    inc bc
    cp a
    ld a, b
    inc sp
    ld a, b
    ld a, e
    ld hl, sp+$7b
    jp z, $f810

    dec de
    ld hl, sp-$04
    ld b, $10
    db $fc
    ld bc, $2070
    jp nz, $c603

    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rra
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst RST_38
    db $fc
    nop
    pop bc
    inc bc
    rrca
    ccf
    inc a
    rst RST_38
    rst RST_38
    ld hl, sp-$04
    sbc $1e
    cp [hl]
    ld a, $7e
    ld a, [hl]
    ld a, l
    cp $96
    ld [hl+], a
    ld e, $fe
    nop
    ld e, $7f
    db $db
    nop
    adc b
    and b
    dec h
    ldh a, [rNR11]
    ld hl, sp+$03
    call z, Call_000_20b6
    or d
    inc hl
    jp z, $8001

    push af
    inc bc
    pop af
    db $10
    ccf
    db $db
    nop
    ei
    nop
    pop af
    ldh [$ff5d], a
    rrca
    or d
    nop
    add e
    nop
    pop af
    add l

jr_009_531d:
    jr nz, jr_009_531d

    jp c, $f720

    rst RST_38
    ld a, [hl]
    ld a, a
    dec b
    ld [de], a
    rst RST_38
    ccf
    ld a, a
    rrca
    rst RST_38
    ccf
    inc bc
    rlca
    ret nz

    ret nz

    ld [bc], a
    rrca
    dec c
    rst RST_38
    sbc a
    sbc [hl]
    rst RST_38
    cp $ff

jr_009_533a:
    db $fc
    cp $f8
    rst RST_18
    ld sp, hl
    ret nz

    rst RST_20
    ld bc, $5a07
    jr nz, jr_009_5346

jr_009_5346:
    ld h, b
    pop af
    ld h, c
    xor d
    inc de
    ldh a, [rSB]
    sub $12
    or $07
    push af
    rlca
    rst RST_10
    ldh a, [c]
    rlca

jr_009_5356:
    ldh a, [rNR30]
    jr nc, jr_009_53ca

    jp z, $d310

    ld hl, sp+$5f
    xor e
    ld hl, sp+$43
    ld hl, sp+$03
    ld [hl], b
    ld [hl+], a
    ld bc, $3016
    db $ec
    dec de
    ld sp, $301b
    rrca
    ldh [$ff3a], a
    ld sp, $04f0
    ldh a, [rIE]
    ld b, $f0
    ld b, $e4
    ld c, $e2
    ld c, $e6
    ccf
    ld c, $ee
    ld c, $ce
    ld e, $02
    ld hl, sp+$04
    ld d, b
    dec h
    inc sp
    inc bc
    rrca
    ld a, [bc]
    inc sp
    ld d, b
    dec h
    rst RST_38
    rst RST_38
    dec e
    jr nz, jr_009_5409

    jr c, jr_009_533a

    ret nz

    ldh [rNR42], a
    nop
    add h
    ld a, $b6
    dec h
    nop
    xor e
    ld [hl+], a
    inc bc
    db $f4
    and e
    jr c, jr_009_5356

    ld a, $e0
    ret nz

    jr nc, @+$73

    ld bc, $027b
    ld a, a
    ld a, a
    rla
    ld a, a
    cpl
    ld a, a
    ld a, [hl]
    ld a, a
    jp c, $ff20

    db $fc
    nop
    ld hl, sp+$40
    pop af
    add b
    db $e3
    nop
    sbc a
    jp $8700


    nop
    rlca
    ld d, c
    inc bc

jr_009_53ca:
    call z, $f801
    rra
    inc bc
    ld hl, sp+$03
    ldh a, [rTAC]
    cp b
    dec h
    cp b
    daa
    jp z, Jump_009_7c01

    pop af
    db $10
    ld d, c
    inc bc
    cp $c0
    rra
    ldh [$ff0c], a

jr_009_53e3:
    ldh a, [rP1]
    db $fc
    db $db
    ld hl, $21db
    ld c, $c1
    jp Jump_000_0301


    inc bc
    rst RST_18
    rlca
    rst RST_00
    rst RST_08
    jp $f8c7


    inc bc
    ld b, $0e
    ccf
    nop
    adc h
    ret nz

    ldh [rIE], a
    rst RST_38
    jp c, $f830

    ld [bc], a
    ei
    jr jr_009_53e3

    ld b, b

jr_009_5409:
    ld b, b
    jp c, $d819

    rra
    rst RST_18
    db $eb
    inc e
    call c, Call_009_4140
    ld a, [hl]
    db $dd
    nop
    ld a, a
    nop

jr_009_5419:
    rst RST_08
    rst RST_38
    nop
    ld b, $30
    jr nc, jr_009_5419

Call_009_5420:
    ld e, a
    rst RST_38
    ld a, [hl+]
    call z, Call_000_001b
    ld e, a
    ld b, e
    ldh a, [$fff0]
    ret z

    inc de
    ld e, a
    ld b, [hl]
    rst RST_38
    cp $df
    cp $c0
    pop bc
    ret nz

    rst RST_18
    ld e, a
    ld b, e
    ld hl, sp-$08
    di
    ret nz

    rst RST_00
    ret z

    jr nz, jr_009_5491

    nop
    rst RST_38

jr_009_5442:
    rst RST_38
    ret nz

    ret nz

    rst RST_38
    nop
    ld a, $01
    db $fd
    inc bc
    ei
    inc bc
    ei
    rst RST_38
    ld bc, $00fd
    cp $e1
    inc bc
    pop af
    inc bc
    rst RST_38
    ld hl, sp+$01
    ld sp, hl
    inc bc
    di
    rlca
    rst RST_20
    rrca
    rst RST_18
    rst RST_08
    rra
    sbc a
    ccf
    db $e4
    and $10
    adc $e0
    xor c
    rst RST_08
    or l
    ld b, [hl]
    or d
    nop
    rra
    xor e
    ld [hl+], a
    rst RST_20
    ret z

    ld b, b
    di
    rst RST_38
    nop
    di
    rrca
    add b
    rlca
    ret nz

    inc bc
    ret nz

    ld l, a
    ld bc, $01e0
    ldh [$ffcb], a
    ld bc, $f800
    ld h, c
    ld b, $fc

jr_009_548c:
    ld d, b
    nop
    call c, RST_00

jr_009_5491:
    ccf
    ccf
    rra
    ccf
    rlca
    ld sp, hl
    rra
    or d
    nop
    ld hl, $c000
    nop
    db $e3
    nop
    nop
    rst RST_00
    db $fc
    ld bc, $02fd
    ld d, c
    ret c

    ld [hl+], a
    and b
    jr nz, jr_009_548c

    and $ff
    ldh a, [$fff6]
    ldh a, [$ffa6]
    ldh a, [rRP]
    ldh [$ffa6], a
    rlc b
    ld c, $da
    jr nz, jr_009_5442

    ldh [rBGP], a
    pop de
    jr nc, jr_009_54c2

    ret nz

jr_009_54c2:
    ld a, a
    inc bc
    db $e4
    ld c, $cc
    ld c, $1c
    ld a, $f8
    jr nz, jr_009_5504

    db $fc
    nop
    ld a, b
    ldh a, [rSB]
    db $10
    jp $4055


    ld [$1741], a
    rrca
    ldh a, [$fff0]
    ld e, a
    ld b, c
    inc d
    or l
    ld [bc], a
    add d
    ld hl, $0451
    sbc [hl]
    dec de
    nop
    pop hl
    pop hl
    add b
    sbc [hl]
    db $db
    nop
    or l
    ld bc, $3f00
    ldh [$ffe3], a
    db $fc
    db $fc
    ldh a, [$fff3]
    jp nz, $c340

    ld [bc], a
    dec sp
    ld hl, sp+$03
    ld h, b
    ld b, $f8
    inc bc
    add e

jr_009_5504:
    call nc, $1611
    ld b, h
    rst RST_38
    add [hl]
    ld b, b
    ld e, [hl]

jr_009_550c:
    add b
    cp [hl]
    add b
    cp [hl]

Call_009_5510:
    nop
    db $e3
    ld a, [hl]
    ccf
    pop hl
    jr nz, jr_009_558d

    ld b, d
    rst RST_30
    jr nz, jr_009_550c

    ld hl, sp-$39
    rst RST_08
    ldh a, [$ff9f]
    ret nz

    sbc a
    cp c
    nop
    ld d, [hl]
    ld d, e
    cp $00
    rst RST_28
    inc e
    nop
    nop
    ld sp, hl
    ret nz

    ld d, b
    db $fc
    ld [$fffc], sp
    inc d
    rst RST_38
    dec hl
    rst RST_38
    ld d, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    nop
    ld hl, sp+$28
    db $fc
    ld e, a
    rst RST_38
    ccf
    push af
    jr nz, jr_009_55c5

    ld hl, sp-$02
    ldh [$fff0], a
    ldh [$fff0], a
    ccf
    jp nz, $eb41

    add b
    rlca
    call nz, Call_000_0720
    add $22
    pop bc
    ldh [$ffc3], a
    adc a
    ldh [$ff03], a
    ret nz

    rrca
    jp nz, $8b40

    ld b, d
    rst RST_38
    ld b, d
    nop
    rst RST_18
    ld a, [hl]
    nop
    cp [hl]
    nop
    sbc $08
    ld h, e
    ld [hl], b
    halt
    ld a, h
    ld [de], a
    ld d, b
    inc de
    ld h, e
    and $f0
    ld d, [hl]
    ldh a, [$ffa6]
    inc e
    nop
    ld a, a
    db $fc
    ld hl, sp-$05
    ldh [$ffe7], a
    add b
    sbc a
    jp z, $df21

    inc b
    pop hl
    db $fc
    ld bc, $317c

jr_009_558d:
    ld h, b
    ld a, [hl]
    nop
    rst RST_38
    ld a, $80
    ld a, $80
    ld e, $c0
    ld b, $e0
    rst RST_38
    ld b, b
    rst RST_30

Call_009_559c:
    nop
    ld [hl], a
    add b
    scf
    add b
    scf
    rst RST_38
    nop
    ld [hl], a
    ld bc, $01f7
    rst RST_20
    ld bc, $3e83
    cp d
    ld bc, $e00f
    adc a
    ldh [$ff67], a
    xor b
    ld bc, $10ca
    rst RST_38
    ccf
    cp a
    rra
    db $d3
    rrca
    db $e3
    rrca
    db $eb
    xor a
    rlca
    pop af
    rlca
    push af

jr_009_55c5:
    db $eb
    jr nc, jr_009_5642

    call nz, $fc19
    sbc e
    db $fd
    db $fc
    sub a
    ld b, b
    ld [bc], a
    ld a, [$6382]
    ret nz

    ld d, d
    ld sp, hl
    ld [$6004], a
    db $fc
    sub d
    ld h, h
    ei
    sbc d
    ld h, c
    ld a, a
    ld a, a
    ld a, b
    call $237f
    nop
    add b
    sbc b
    xor b
    ld h, b
    ldh a, [rSB]
    ld [$ffc1], sp
    nop
    daa
    add b
    ccf
    ret nz

    ld e, $e0
    ld [$c0bf], sp
    inc e
    add b
    inc a
    inc b
    ld a, [hl]
    ld hl, sp+$03
    jp $c690


    ld h, b
    ld a, h
    ld [hl-], a
    inc l
    ld hl, $00f0
    sbc h
    sub $60

jr_009_560e:
    ld [hl], h
    add hl, sp
    rst RST_20
    db $e4
    and $60
    ld [hl], h
    add hl, sp
    jr c, jr_009_560e

    ld h, b
    ld hl, sp+$03
    adc d
    sbc $14
    cp e
    cp [hl]
    ld l, $92
    ld [hl+], a
    adc [hl]
    adc [hl]
    ld b, $0c
    ld [hl], b
    ldh a, [c]
    db $eb
    ld b, $f6
    ld de, $f476
    dec de
    ld [hl], b
    ld e, $9c
    ld a, a
    db $fd
    ld a, d
    rla
    nop
    ld a, [$fcff]
    ei
    ld a, [$ff99]
    sbc c
    jr jr_009_569c

jr_009_5642:
    ld d, b
    ld hl, sp+$38
    ld a, h
    sbc h
    rst RST_38
    ld a, $de
    rra
    rst RST_28
    rrca
    rst RST_30
    rlca
    ei
    rst RST_08
    inc bc
    db $fd
    ld bc, $2979
    inc [hl]
    rla
    ld b, e
    rst RST_38
    nop
    sbc e
    ld sp, hl
    db $fc
    ld d, c
    ld [hl], b
    db $fd
    db $fd
    dec de
    nop
    dec b
    ld [de], a
    ld a, a
    db $fc
    ld sp, $0461
    ld h, b
    ld a, $80
    sbc a
    ret nz

    rst RST_08
    ret nz

    rst RST_38
    rst RST_28
    ldh [$ffef], a
    cp $7e
    cp $be
    rst RST_38
    rst RST_38
    ld [hl], l
    rst RST_38
    ld a, [hl+]
    ld a, a
    db $10
    ld a, a
    ld b, b
    ccf
    rst RST_30
    add b
    ccf
    and b
    ret nz

    ld d, d
    ld a, c
    nop
    ld a, c
    add b
    ld a, a
    cp e
    add b
    dec sp
    ret nz

    ld e, e
    ldh [$ff2b], a
    sbc d
    ld h, d
    rst RST_38
    ld sp, hl
    jr nz, @-$05

jr_009_569c:
    ld d, b
    ldh a, [$ffa0]
    ldh a, [rSVBK]
    rla
    ldh a, [$ffe4]
    ldh a, [rNR43]
    ld d, a
    ld hl, sp-$63
    nop
    cp $00

jr_009_56ac:
    push af
    jr nz, jr_009_56ac

    db $fd
    or e
    ld [hl], b
    dec e
    rra
    dec e
    rra
    ld c, $0f
    ld c, e
    rrca
    adc a
    ld hl, sp+$03
    add hl, de
    add $72
    ld [hl], h
    scf
    sbc c
    sub $72
    nop
    jp nz, $c67b

    ld a, l
    ld sp, hl
    ld [hl], e
    dec e
    add b
    add b
    ld b, l
    nop
    nop
    ld [bc], a
    add hl, de
    ld b, $00
    ld [bc], a
    inc bc
    nop
    inc bc
    sbc c
    ld d, $00
    ret nz

    ld [de], a
    inc bc
    ld [$0805], sp
    dec b
    jr @+$07

    jr jr_009_56ed

    nop
    ld bc, $1515
    inc c

jr_009_56ed:
    ld b, b
    rlca
    nop
    ld bc, $5454
    ld d, b
    rlca
    ld b, h
    add hl, bc
    ld b, h
    ld bc, $0954
    ldh a, [rHDMA4]
    inc bc
    ld c, h
    dec b
    ld d, $07
    jr nc, @+$0d

    nop
    nop
    ld d, l
    ld d, l
    cp $a2
    rlca
    rst RST_38
    nop
    ld a, [$d505]
    ld a, [hl+]
    xor d
    rst RST_08
    ld d, l
    push af
    ld a, [bc]
    rst RST_38
    xor a
    nop
    cp d
    ld bc, $55aa
    cp a
    ld d, l
    xor d
    nop
    rst RST_38
    ld d, b
    xor a
    or [hl]
    dec b
    xor e
    rst RST_38
    ld d, h
    ld d, l
    xor d
    xor d
    ld d, l
    nop
    rst RST_38
    and d
    rst RST_18
    ld e, l
    ld d, l
    xor d
    cp $01
    cp d
    ld bc, $807f
    rst RST_38
    xor a
    ld d, b
    nop
    rst RST_38
    ld bc, $5ffe
    and b
    di
    cp a
    ld b, b
    cp d
    dec b
    cp d
    dec b
    rlca
    rlca
    ld [$ff08], sp
    inc de
    inc de
    inc d
    inc d
    inc de
    inc de
    ld [$ff08], sp
    rlca
    rlca
    nop
    nop
    add h
    add h
    ld c, h
    ld c, h
    db $fd
    inc h
    inc d
    ld [de], a
    ld b, h
    ld b, h
    adc [hl]
    adc [hl]
    nop
    nop
    rst RST_30
    ld h, e
    ld h, e
    sub h
    ld [hl+], a
    db $10
    ld [hl], e
    ld [hl], e
    db $10
    db $10
    rst RST_38
    sub h
    sub h
    ld h, e
    ld h, e
    nop
    nop
    jr jr_009_5795

    db $fd
    and h
    ld [hl-], a
    db $10
    sbc h
    sbc h
    add h
    add h
    and h
    and h
    rst RST_38
    jr jr_009_57a2

    nop
    nop
    ld de, $1211
    ld [de], a
    rst RST_38
    inc d
    inc d
    jr jr_009_57ad

jr_009_5795:
    inc d
    inc d
    ld [de], a
    ld [de], a
    ld a, a
    ld de, $0011
    nop
    ld a, d
    ld a, d
    ld b, e
    ld d, d

jr_009_57a2:
    db $10
    rst RST_30
    ld [hl], d
    ld [hl], d
    ld b, d
    ld e, b
    db $10
    ld a, d
    ld a, d
    nop
    nop

jr_009_57ad:
    rst RST_38
    ld h, $26
    ld l, c
    ld l, c
    add sp, -$18
    xor b
    xor b
    rst RST_38
    jr z, jr_009_57e1

    add hl, hl
    add hl, hl
    ld h, $26
    nop
    nop
    or a
    jr nc, jr_009_57f2

    ld c, b
    ld [hl], d
    ld d, $30
    jr nc, jr_009_57c8

jr_009_57c8:
    inc bc
    cp $3f
    nop
    ld h, e
    ld h, c
    ld h, c
    ld h, c
    nop
    adc c
    inc de
    ld c, h
    inc b
    rst RST_20
    add b
    add b
    nop
    sbc c
    inc de
    and b
    rra
    nop
    ld b, $00
    adc a

jr_009_57e1:
    ld c, $0e
    ld b, $06
    or e
    db $10
    cp c
    ld de, $1fc0
    nop
    rst RST_38
    rra
    nop
    ld sp, $6021

jr_009_57f2:
    ld h, b
    nop
    ld h, b
    rst RST_28
    nop
    ld [hl], b
    ld b, h
    jr c, jr_009_57fb

jr_009_57fb:
    ld bc, $0040
    ret nz

    ld a, [hl]
    and $10
    inc b
    ld b, h
    inc c
    inc b
    rra
    rra
    add $1c
    or $ef
    inc e
    dec c
    dec b
    ld a, [hl]
    rlca
    inc b
    inc b
    inc c
    inc b
    cp a
    sbc [hl]
    sbc a
    ld [bc], a
    ld h, c
    nop
    ld a, [hl]
    jp c, $6010

    cp $27
    ld [hl+], a
    nop
    ldh a, [rP1]
    jr jr_009_582f

    nop
    add hl, sp
    di
    nop
    jr jr_009_585c

    db $10
    scf

jr_009_582f:
    jr nz, jr_009_5850

    nop
    ld c, $00
    rst RST_38
    rst RST_00
    ld b, a
    ld [bc], a
    call z, $cc00
    nop
    rst RST_00
    rst RST_38
    pop bc
    pop bc
    ret z

    ret z

    xor $00
    rlc b
    rst RST_38
    and b

jr_009_5848:
    and [hl]
    add b
    ld h, a

jr_009_584b:
    nop
    daa
    nop
    ld b, $ff

jr_009_5850:
    add $c6
    ld h, [hl]
    ld h, [hl]
    and $00
    rst RST_08
    nop
    sbc a
    nop
    ldh [$ff80], a

jr_009_585c:
    jr nc, jr_009_585e

jr_009_585e:
    ld h, e
    jr nz, @+$69

    ld [hl+], a
    nop
    rst RST_38
    ld a, b
    nop
    ld hl, $101e
    rrca
    inc b
    inc bc
    rst RST_38
    nop
    ld bc, $4040
    ld h, b
    ld h, b
    ld [hl], c
    nop
    rst RST_38
    ld e, a
    nop
    nop
    inc c
    add b
    inc c
    ld b, b
    adc h
    ei
    nop
    call z, Call_000_2187
    adc l
    nop
    rlca
    nop
    inc sp
    rst RST_38
    ld sp, $3100
    nop
    rlca
    inc b
    add hl, de
    ld sp, $98fe
    jr nz, @+$35

    nop
    ld e, $00
    sbc a
    sbc a
    ld bc, $8c33
    nop
    and e
    jr nz, jr_009_5848

    ld [hl+], a
    nop
    sbc $86
    jr nz, jr_009_584b

    jr nz, jr_009_5920

    inc c
    nop
    inc c
    or a
    ld hl, $010d
    rlca
    dec d
    ld [bc], a
    cp $30
    rlca
    sbc c
    sbc c
    rrca
    rst RST_38
    rst RST_30
    rst RST_38
    dec de
    ld a, e
    rst RST_38
    ld l, e
    db $d3
    ld [hl+], a
    rst RST_30
    rst RST_38
    rrca
    rst RST_38
    jp nz, Jump_009_5c1f

    xor $2b
    cp d
    dec b
    db $fc
    nop
    ldh [rP1], a
    nop
    db $10
    rst RST_18
    ld [de], a
    ld [$14cf], a
    rra
    inc [hl]
    jr nz, jr_009_58f8

    nop
    inc bc
    ld bc, $0000
    ld e, l
    add [hl]
    xor a
    nop
    ld b, e
    nop
    rst RST_20
    cp d
    dec b
    ld a, a
    scf
    jr nc, @+$01

    ccf
    add b
    ccf
    add b
    inc c
    ldh [rTMA], a

jr_009_58f5:
    ldh a, [rIE]

jr_009_58f7:
    ld [bc], a

jr_009_58f8:
    ld hl, sp+$02
    ld a, b
    jr nz, jr_009_58f5

    ld d, b

jr_009_58fe:
    ld hl, sp-$01
    jr z, jr_009_58fe

    ld e, b
    ld a, h
    jr z, jr_009_594a

    ld b, h
    ld b, h
    rst RST_38
    ld a, h
    jr z, jr_009_5945

    db $10
    ld l, h
    add hl, sp
    ld h, a
    ld c, l
    rst RST_38
    ld h, a
    ld b, d
    ld a, a
    dec a
    ld [$041c], sp
    inc c
    and $60
    jr nc, jr_009_593a

    inc c
    ld h, a

jr_009_5920:
    jr nc, jr_009_5984

    jr nc, jr_009_593c

    ld [bc], a
    rst RST_20
    rst RST_38
    add h
    rst RST_20
    ld b, b
    and $a4
    and $e0
    and $ff
    and $e7
    and $e7
    ld b, d
    ld b, e
    ld a, [bc]
    ld a, [hl]
    rst RST_38
    sub [hl]

jr_009_593a:
    ld a, $ca

jr_009_593c:
    rra
    rst RST_20
    rrca
    rst RST_08
    rra
    rst RST_38
    adc $1e
    rst RST_20

jr_009_5945:
    rrca
    ldh [rTAC], a
    ld [hl], b
    ld a, b

jr_009_594a:
    rst RST_38
    jr nz, @+$72

    jr nz, jr_009_597f

    jr nc, jr_009_5989

    db $10
    jr @+$01

    ld a, b
    ld a, h
    ret nz

    db $fc
    nop
    ret nz

    rlca
    rra
    ldh a, [$ff8d]
    jr nz, jr_009_58f7

    db $10
    sbc b
    stop
    ld [bc], a
    cp h
    cp $18
    ld a, [hl]
    ld a, b
    inc [hl]
    jr nz, jr_009_59b9

    inc b
    ld a, [hl-]
    jr nz, @-$3e

    ccf
    add b
    ld a, a
    inc sp
    ld [hl], $fd
    ld a, a
    nop
    ld bc, $00fa
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

jr_009_597f:
    inc hl
    rst RST_08
    inc hl
    ld [hl+], a
    ld [hl+], a

jr_009_5984:
    nop
    db $db
    ld sp, $0200

jr_009_5989:
    ret nz

    rst RST_00
    cp a
    jr z, jr_009_59b6

    cpl
    cpl
    nop
    jr z, jr_009_59e7

    jr nz, jr_009_5995

jr_009_5995:
    sbc $8d
    jr nz, @+$0a

    ld [$8808], sp
    ld hl, sp+$30
    nop
    ld [$00db], sp
    add a
    sub e
    inc de
    nop
    inc e
    inc d
    ld de, $a400
    ei
    nop
    ld a, [de]
    ld c, h
    inc b
    ld a, c
    add d
    add d
    ld [hl], e
    ld [hl], e
    xor a

jr_009_59b6:
    nop

jr_009_59b7:
    ld a, [bc]
    nop

jr_009_59b9:
    pop af
    nop
    nop
    ld [$30fc], sp
    rst RST_08
    xor a
    jr z, jr_009_59eb

    add sp, -$18
    db $fc
    jr nc, jr_009_59b7

    ld c, h
    inc b
    inc e

jr_009_59cb:
    xor l
    and d
    jr c, jr_009_5a0f

    nop
    and d
    ld e, $32
    ld [bc], a
    ld b, d
    ld b, b
    ld [hl], d
    rst RST_38
    adc d
    adc d
    adc e
    adc e
    nop
    adc d
    nop
    ld [hl], d
    xor $4c
    inc b
    ld h, a
    adc b
    adc b
    inc c

jr_009_59e7:
    db $10
    add b
    nop
    ld l, a

jr_009_59eb:
    cp d
    ld c, h
    inc b
    add a
    push af
    jr nc, jr_009_59fa

    nop
    adc b
    and d
    ld sp, $ff00
    jr nz, jr_009_59fa

jr_009_59fa:
    jr nz, jr_009_5a4c

    ld d, c
    ld d, d
    ld d, d
    adc d
    ld h, l
    adc d
    jp nc, $8930

    ld c, h
    inc b
    rst RST_20
    jr nc, jr_009_5a19

    rrca
    db $ec
    jr nc, jr_009_59cb

    rst RST_00

jr_009_5a0f:
    jr nz, jr_009_5a54

    ld [$8f08], sp
    adc a
    ld a, [$8832]
    ld c, [hl]

jr_009_5a19:
    ld [bc], a
    ld b, d
    add b
    add b
    sbc h
    ld [hl-], a
    ld de, $400c
    sbc d
    ld c, h
    inc b
    rst RST_38
    or e
    call nz, $84c4
    add h
    nop
    add h

jr_009_5a2d:
    nop
    cp l
    add e
    pop hl
    ld [de], a
    ld d, b
    nop
    rst RST_00
    ld d, h
    ret z

    ld b, b
    nop
    or a
    ld d, h
    nop
    call nc, $044c
    adc [hl]
    ld d, c
    ret c

    ld b, b
    nop
    rlca
    ld c, a
    nop

jr_009_5a47:
    ld b, c
    sbc l
    jr nz, jr_009_5a2d

    ld c, a

jr_009_5a4c:
    add [hl]
    ld [hl+], a
    ldh a, [c]
    ld b, e
    nop
    dec bc
    nop
    add d

jr_009_5a54:
    dec c
    ld [bc], a
    dec bc
    ld [$3c01], sp
    ld de, $112e
    jr nc, jr_009_5ab2

    inc b
    inc bc
    ld [$0859], sp

jr_009_5a64:
    ret nz

    daa
    ld a, [hl-]
    ld e, l
    scf
    ld [hl+], a
    jr jr_009_5a64

    ld b, l
    ld hl, sp+$43
    and $11
    ld a, d
    ld e, c
    cp $f8
    ld b, d
    inc c
    nop
    ld [de], a
    nop
    db $10
    cp b
    cp b
    ccf
    sub b
    sub b
    nop
    sub b
    nop
    db $10
    jr c, jr_009_5adb

    inc b
    ld e, b
    rst RST_38
    inc a
    nop
    ld h, [hl]
    ld b, $06
    inc c
    inc c
    jr @-$0b

    jr @+$32

    ld [hl+], a
    jr nz, jr_009_5a47

    ld d, l
    inc e
    inc e
    ld b, $06
    add hl, de
    ld h, [hl]
    or d
    ld d, b
    or b
    ld d, e
    ld h, [hl]
    ld h, [hl]
    cp b
    ld d, c
    ld l, $10
    nop
    ld bc, $24f5
    or c
    ld d, b
    inc a
    push de
    ld d, b
    ld h, [hl]

jr_009_5ab2:
    ld a, [hl]
    nop
    ld h, [hl]
    jr @-$1a

    ld c, d
    add hl, hl
    ld [hl+], a
    pop de
    ld d, h
    ld a, $3e
    jp z, $e65b

    ld d, d
    call $f253
    or a
    ld [hl], $18
    ld [hl], d
    ld b, b
    ld c, h
    inc b
    ld [$0c0c], sp
    ld a, [bc]
    di
    ld a, [bc]
    add hl, bc
    db $fc
    jr nc, jr_009_5b22

    inc b
    cp l
    and c
    and c
    cp c

jr_009_5adb:
    rst RST_28
    cp c
    and c
    nop
    cp l
    ld c, h
    dec b
    db $10
    db $10
    db $10
    rst RST_18
    ld d, b
    ld d, b
    or b
    nop
    db $10
    rst RST_08
    ld e, a
    nop
    ccf
    rst RST_38
    nop
    ccf
    rla
    scf

jr_009_5af4:
    rrca
    jr z, jr_009_5b0e

    jr c, jr_009_5af4

    rlca
    ccf
    nop
    ld [bc], a
    ld hl, sp+$00
    call nc, $fef8
    cp a
    call c, $dc22
    inc h
    ret c

    ld hl, sp+$0a
    ld d, a
    add hl, bc
    ld a, a
    dec c

jr_009_5b0e:
    dec c
    dec bc
    dec bc
    add hl, bc
    nop
    add hl, bc
    ld c, h
    dec b
    add e
    ld [hl-], a
    ld c, d
    xor b
    ld h, c
    sub d
    jr nz, @+$4e

    inc b
    ret c

    ld b, b
    xor d

jr_009_5b22:
    ld h, c
    add h
    cp $4c
    dec b
    ld a, c
    ld b, d
    ld b, d
    ld [hl], e
    ld [hl], e
    ld b, d
    nop
    db $fc
    ld e, l
    stop
    inc bc
    sub d
    ld d, d
    ld d, d
    jp nc, $52d2

    db $eb
    nop
    ld c, h
    ld c, h
    dec b
    rrca
    ld l, b
    ld b, c
    ld [$0f00], sp
    adc [hl]
    ld c, h
    dec b
    ld [hl+], a
    and d
    and d
    ld [hl+], a
    db $10
    dec a
    ld h, a
    scf
    ld l, l
    cp [hl]
    ld a, a
    and b
    and b
    cp h
    cp h
    and b
    nop
    cp [hl]
    ld c, h
    dec b
    inc b
    ld hl, sp+$31
    ld a, [$7030]
    rst RST_38
    ld l, a
    sub e
    inc de
    ld sp, hl
    ld h, b
    ld sp, hl
    ld sp, $419f
    ld h, $00
    ld [bc], a
    ei
    jr nz, jr_009_5bc9

    ld [hl], c
    dec l
    ld h, a
    ldh [$ffa6], a
    ld sp, $189d
    cp $97
    ld l, l
    ld c, e
    ld c, d
    ld c, d
    ld c, e
    ld c, e
    ld c, d
    nop
    db $fd
    inc sp
    ld c, h
    dec b
    pop de
    ld de, $8a11
    adc d
    ld a, [bc]
    jp $c400


    ld c, h
    dec b
    ld [hl], c
    inc de
    ld h, h
    jr nz, jr_009_5bab

    ld b, c
    nop
    call $cd6f
    call $fdfd
    or l
    ld [hl], b
    nop
    call Boot
    ld a, a
    ldh a, [rP1]

jr_009_5ba8:
    sbc b
    sbc b
    sbc b

jr_009_5bab:
    ldh a, [$fff0]
    push bc
    ld [hl], b
    db $eb
    nop
    sbc b
    ld c, h
    dec b
    jr c, jr_009_5c0d

    ld h, b
    db $10
    stop
    ld [hl], $0f
    ld [hl], $7c
    jr z, jr_009_5ba8

    ld [hl], c
    nop
    ld a, h
    db $e4
    ld c, [hl]
    dec e
    nop
    add b
    dec de

jr_009_5bc9:
    rst RST_38
    nop
    nop
    ld bc, $ff00
    rlca
    nop
    ld bc, $0002
    inc bc
    rst RST_30

jr_009_5bd6:
    ccf
    rst RST_38
    ret nz

    add hl, bc
    dec bc
    nop
    inc bc
    rst RST_38
    inc a
    db $fd
    ccf
    ld a, [bc]
    add hl, bc
    cp a
    add b
    ld b, $fe
    cp b
    ccf
    ld a, l
    cp $0b
    ld [$00ff], sp
    scf
    ldh a, [$ffc3]
    add hl, bc
    ld a, [bc]
    cp a
    rst RST_38
    nop
    ld a, a
    nop
    db $ec
    rrca
    ld a, $0b
    cpl
    ld a, a

jr_009_5bff:
    ldh [$ffc5], a
    db $fc
    ret c

    rra
    ei
    inc bc
    inc l
    dec bc
    rst RST_38
    cpl
    ldh [rWX], a
    ld a, b

jr_009_5c0d:
    jp nc, $f41e

    rlca
    ei
    db $fd
    ld bc, $0b2c
    ccf

jr_009_5c17:
    ldh [rNR22], a
    ld [hl], b
    and e
    rst RST_38
    jr c, jr_009_5bff

    inc c

Jump_009_5c1f:
    ldh a, [rTMA]
    ld hl, sp+$03
    db $fc
    push af
    ld bc, $093e
    ld a, a
    scf
    nop
    ld a, a
    ret nz

    sbc a
    ret nz

    rst RST_38
    ccf
    ld h, b
    rst RST_08
    ld h, b
    adc a
    jr nz, jr_009_5bd6

    jr nc, jr_009_5c17

    add $01
    adc a
    jr nz, jr_009_5c0d

    ld h, b
    nop
    ld bc, $00fe
    rst RST_38
    db $fc
    ld bc, $03f8
    ldh a, [rTMA]
    pop hl
    inc c
    rst RST_38
    db $eb
    jr c, @+$41

    ld h, b
    sbc a
    ret nz

    ld a, a
    ret nz

    ldh [$ffba], a
    nop
    ccf
    ld a, [bc]
    nop
    nop
    or $03
    dec bc
    ld b, $f8
    rst RST_38
    rlca
    ld a, [hl]
    add hl, bc
    ld [$1f9e], sp
    ld bc, $cfff
    ret nz

    ld a, [bc]
    dec b
    rst RST_18
    call c, Call_000_031f
    rst RST_38
    rst RST_18
    dec de
    inc d
    or $07
    ld l, a
    ld h, c
    ld a, a
    dec de
    ld hl, sp-$18
    rlca
    cpl
    ldh [$ffe8], a
    ld c, $fc
    dec bc
    ld [$093e], sp
    db $fd
    ld bc, $0fe8
    push bc
    db $fc
    cp $68
    ld de, $07f4
    jp nc, Jump_009_4b1e

    ld a, b
    cpl
    rst RST_38
    ldh [$ffbf], a
    add b
    rst RST_38
    nop
    rra
    ld [hl], b
    rra
    cp h
    push hl
    nop
    ld c, h
    ld e, $0c
    di
    ld e, $e3
    sbc c
    db $10
    pop af
    ccf
    ld e, $1f
    ldh [$ff3f], a
    ldh [$ff1f], a
    db $e3
    nop
    ld [hl], $01
    rst RST_38
    rla
    ldh a, [$ffa2]
    ld a, $e1
    ld c, $f1
    ld c, $ff
    ldh a, [$ff0e]
    ldh a, [rIF]
    pop de
    rra
    ld b, c
    ld a, a
    rst RST_38
    add hl, hl
    rst RST_28
    or c
    add a
    db $f4
    rlca
    and e
    ccf
    rst RST_08
    sbc e
    ld hl, sp+$5f
    ret nz

    add sp, $0d
    ld a, $00
    ld bc, $fbfe
    ld bc, $8fff
    ld b, $3f
    add b
    rra
    ret nz

    rra
    rst RST_30
    ret nz

    ccf
    ldh [$ff0a], a
    add hl, bc
    ld e, a
    ld [hl], b
    rrca
    ld hl, sp+$2b

jr_009_5cf3:
    ld hl, sp+$07
    nop
    dec h
    db $fc
    add hl, bc
    jr nz, jr_009_5cf3

    ld [hl], a
    ld [bc], a
    add sp, $00
    db $dd
    add b
    ld d, $21
    ld a, a
    add b
    ld a, $85
    ld a, [de]
    rst RST_28
    inc c
    ld [hl], e
    pop bc
    cp $50
    dec bc
    adc [hl]
    add hl, bc
    call z, Call_009_400f
    add sp, $00
    cp $0a
    rlca
    rra
    ldh a, [rIF]
    ld hl, sp+$0f

jr_009_5d1e:
    ld hl, sp-$71
    rst RST_38
    ldh [$ff1f], a
    ld [hl], b
    add a
    ld [hl], b
    adc e

jr_009_5d27:
    ld a, b
    add l
    cp a
    ld a, h
    add d
    ld a, [hl]
    pop bc
    ld a, a
    add b

Call_009_5d30:
    dec a

jr_009_5d31:
    nop
    db $fd
    rst RST_30
    ld bc, $03fe

jr_009_5d37:
    xor b
    nop
    rlca
    ldh a, [rTAC]
    ld a, b
    rst RST_08
    rrca
    or b
    sbc a
    rlca
    ld e, l
    jr nz, jr_009_5dbe

    jr nz, jr_009_5d37

jr_009_5d47:
    rra
    xor $87
    jr nz, jr_009_5d5b

    ldh [rIF], a
    rst RST_28
    jr jr_009_5d31

    nop
    ldh [$ffc3], a
    ld a, a
    add b
    ld c, a
    dec bc

jr_009_5d58:
    cp e
    nop
    ld d, b

jr_009_5d5b:
    rra
    ld a, [bc]
    rlca
    and b
    ccf
    ld h, b
    ld a, [$840b]
    ld bc, $10de
    pop hl
    inc h
    ld a, $03
    rrca
    ldh a, [$fff0]
    daa
    cp a
    adc a
    ldh [$ff5f], a
    ld b, b
    db $fc
    inc bc
    nop
    inc sp
    cp $9c
    rlca
    jr nc, jr_009_5d27

    nop
    ld bc, $cf68
    ld e, c
    inc d
    ld a, $00
    jr nc, jr_009_5d1e

    rst RST_38
    ld [hl], h
    rst RST_00
    db $db
    db $10
    db $fc
    sbc $20
    add c
    inc b
    dec c
    dec hl
    db $fc
    db $f4
    add [hl]
    jr nz, jr_009_5d58

    and b
    db $10

jr_009_5d9a:
    ret nz

    scf
    jr nc, @+$38

    jr nc, jr_009_5d47

    rra
    rlca
    rst RST_38
    adc b
    ld hl, $030b
    cp [hl]
    rla

jr_009_5da9:
    jr nz, jr_009_5d9a

    ld a, [$12ef]
    inc bc
    call c, Call_009_7f12
    ld a, [hl]
    rst RST_38
    nop
    add b
    rst RST_38
    ccf
    add b
    ccf
    add h
    ccf
    adc $7b

jr_009_5dbe:
    rst RST_08
    rst RST_38
    ld a, c
    rst RST_00
    ld a, b
    add e
    jr c, @-$7b

    jr c, jr_009_5dcb

    rst RST_38
    rst RST_38
    rlca

jr_009_5dcb:
    db $fd
    ld c, $f9
    ld e, $f1
    ld a, $f7
    pop hl
    cp $c1
    ldh [rNR42], a
    rra
    ld bc, $031e
    rst RST_28
    ld e, $03
    inc e
    rlca
    add [hl]
    inc sp
    ld e, $03
    nop
    rst RST_10
    rst RST_38
    add hl, bc
    ld sp, hl
    dec sp
    ld sp, $eb7f
    db $10
    rla
    ldh a, [$ffcf]
    ld b, $fe
    ccf
    ret nz

    ld d, $20
    or a
    ld h, $06
    rlca
    ld a, [$3021]
    ld bc, $3304
    db $fc
    ld bc, $7177
    inc bc
    rst RST_38
    ld hl, sp+$00
    rst RST_38
    ld [de], a
    di
    ld l, $e0
    cpl
    ld e, a
    ldh [rNR22], a
    ldh a, [rDIV]
    db $fc

jr_009_5e15:
    dec d
    ld hl, $5b17
    jr nz, @+$01

    add e

jr_009_5e1c:
    ld hl, sp+$47
    ld a, h
    rst RST_00
    ld a, h
    add a
    db $fc
    db $fd
    dec bc
    add e
    jr nz, jr_009_5da9

    inc a
    ld a, [hl]
    ld b, d
    ld b, d
    cp c
    ld a, e
    ld e, d
    and l
    db $e4

Jump_009_5e31:
jr_009_5e31:
    ld sp, $427e
    add c
    inc a
    jp hl


    dec c
    ld h, c
    cp $db
    stop
    ld b, c
    xor d
    nop
    ld bc, $7d32
    pop bc
    scf
    ld sp, $ecfa
    ld de, $191f
    ld b, d
    nop
    rst RST_38
    ld b, b
    ld a, a
    ret nc

    ei
    rra
    di
    ld [hl], a
    ld b, $f0
    rst RST_18
    jr c, @-$0f

    ld a, [de]
    xor e
    db $e3
    ld a, [hl]
    dec de
    ld d, $3f
    rra
    ld b, b
    nop
    rla
    nop
    rst RST_28
    push de
    rrca
    jr c, jr_009_5eb2

    rrca
    add a
    jr nz, @+$01

    rst RST_28
    inc d
    add a
    inc a
    ccf
    jp $e73c


    inc a
    rst RST_28
    jr jr_009_5e31

    daa
    ld [hl], b
    ld b, e
    ld d, $e0
    dec h
    rra
    pop hl
    ld a, [de]
    ld b, e
    rra
    adc l
    jr nz, jr_009_5e15

    jr nz, jr_009_5ed0

    jr nc, jr_009_5e1c

    add b
    rst RST_38
    ret c

    rra
    swap b
    dec bc
    inc b
    dec bc
    inc bc
    ld sp, hl
    push de
    ld hl, sp+$0a
    dec b
    inc bc
    add e
    jr nz, @+$61

    xor a
    jr z, @-$22

    rra
    add $8e
    dec bc
    cpl
    ldh [$ffb4], a
    ld c, c
    sbc [hl]
    ld b, l
    dec bc
    rlca
    db $fc
    inc bc
    cp a

jr_009_5eb2:
    cp [hl]
    add e
    inc l
    pop hl
    ld c, e
    ld a, c
    adc d
    ld b, $20
    cp d
    nop
    ld e, b
    ld a, $00
    nop
    rst RST_20
    rst RST_38
    ld c, b
    ld [de], a
    ld d, [hl]
    rst RST_20
    xor [hl]
    nop
    nop
    ld a, $ff
    and b
    nop
    ld d, b
    inc a

jr_009_5ed0:
    nop
    ld d, b
    and b
    cp $0c
    ld d, d
    adc c
    rst RST_38
    adc d
    rst RST_38
    jp z, $a9ff

    db $eb
    rst RST_38
    sbc b
    ld [hl-], a
    ld d, b
    adc c
    nop
    nop
    rst RST_08
    rst RST_38
    jr z, @-$13

    rst RST_38
    ld [$5240], sp
    jr z, jr_009_5f2f

    ld d, b
    nop
    rst RST_38
    cp h
    db $eb
    rst RST_38
    ld [hl+], a
    ld d, d
    ld d, [hl]
    cp h
    nop
    nop
    ld e, $ff
    ld de, $62dc
    ld d, b
    ld h, c
    ld d, l
    nop
    rst RST_38
    ld b, h
    ld [hl], b
    ld d, b
    jr z, @+$01

    push af
    db $10
    halt
    ld d, h
    nop
    ld d, d
    ld d, d
    ld [hl-], a
    rst RST_38
    ld a, [hl+]
    rst RST_38
    db $dd
    ld h, $52
    ld d, d
    nop
    rst RST_38
    add sp, $12
    ld d, b
    ld c, h
    rst RST_38
    rst RST_10
    ld c, d
    rst RST_38
    ld c, c
    ld [de], a
    ld d, b
    add sp, $49
    ld sp, $88ff
    cp $a2
    ld e, b
    nop

jr_009_5f2f:
    rst RST_38
    ld a, [$82ff]
    rst RST_38
    add e
    db $eb
    rst RST_38
    ldh a, [c]
    or d
    ld d, b
    add d
    or b
    ld d, b
    nop
    rst RST_38
    cpl
    xor [hl]
    ld c, b
    ld d, d
    xor b
    rst RST_38
    ld l, b
    ld b, d
    ld d, b
    cpl
    nop
    nop
    inc e
    adc e
    rst RST_38
    and d
    jp nc, Jump_000_1c56

    inc b
    nop
    ldh [$ff5f], a
    xor $5a
    rra
    rst RST_38
    ldh [$ff6f], a
    sub b
    halt
    adc c
    ld [hl], l
    adc d
    ld [hl], h
    rst RST_18
    adc e
    ld l, l
    sub d
    ld e, $e1
    ret nc

    ld [bc], a
    ld bc, $ff3f
    ret nz

    sbc $21
    ld e, $e1
    cp $01
    ld d, $f7
    jp hl


    ld sp, hl
    ld b, $00
    ld bc, $3cc3
    cp e
    ld b, h
    sbc $26
    ld h, c
    push bc
    ld a, [hl-]
    rst RST_38
    nop
    ld h, $61
    cp d
    ld b, l
    ld a, a
    sub $29
    sub $29
    xor $11
    rst RST_28
    ld a, l
    ld d, c
    ld a, d
    add hl, hl
    ld hl, $4410
    ld h, c
    rst RST_08
    jr nc, jr_009_5fcc

jr_009_5f9d:
    ret nc

    inc [hl]
    ld [bc], a
    rst RST_38
    ld b, b
    ld hl, sp+$07
    or a
    ld c, b
    cp b
    ld b, a
    cp a
    rst RST_30
    ld b, b
    sub b
    ld l, a
    nop
    inc bc
    ld a, [hl]
    add c
    db $fd
    ld [bc], a
    rst RST_08
    db $fd
    ld [bc], a
    ld a, l
    add d
    call c, Call_009_5510
    inc hl
    ldh [$ffdf], a
    ld sp, hl
    jr nz, jr_009_6037

    ld h, c
    ld c, h
    ld h, e
    rst RST_38
    nop
    and [hl]
    ld e, c
    sbc l
    ld a, a
    ld h, d
    cp h

jr_009_5fcc:
    ld b, e
    cp l
    ld b, d
    cp [hl]
    ld b, c
    nop
    inc bc
    rst RST_38
    jr c, jr_009_5f9d

    rst RST_10
    jr z, jr_009_5ff0

jr_009_5fd9:
    add sp, -$08
    rlca
    rst RST_38
    rra
    ldh [$fff8], a
    rlca
    rst RST_38
    nop
    rst RST_18
    jr nz, @+$01

    ld a, h
    add e
    ld e, e
    and h
    ld e, h
    and e
    ld e, a
    and b
    rst RST_38
    ld c, b

jr_009_5ff0:
    or a
    rst RST_38
    nop
    ei
    inc b
    ei
    inc b
    rst RST_38
    jr nz, jr_009_5fd9

    ei
    inc b
    ld a, e
    add h
    cp e
    ld b, h
    ei
    ld a, h
    add e
    nop
    inc bc
    add $39
    cp d
    ld b, l
    add d
    rst RST_18
    ld a, l
    cp [hl]
    ld b, c

jr_009_600e:
    jp nz, Jump_000_003d

    inc bc
    sbc b
    ld h, a
    ccf
    ld [hl], a
    adc b
    ldh a, [rIF]
    rst RST_30
    ld [$619e], sp
    ld h, [hl]
    ld h, c
    rst RST_38
    push hl
    ld a, [de]
    ld e, c
    and [hl]
    ld e, l
    and d
    reti


    ld h, $fb
    ld h, l

Call_009_602a:
    sbc d
    and b
    ld h, c
    rst RST_18
    jr nz, jr_009_6035

    ld a, [$7fdc]
    inc hl
    db $dd

jr_009_6035:
    ld [hl+], a
    db $dd

jr_009_6037:
    ld [hl+], a
    push hl
    ld a, [de]
    nop
    inc bc
    ld l, a
    jr nc, jr_009_600e

    xor $11
    ld b, $71
    pop af
    ld c, $de
    ld h, l
    rst RST_08
    reti


    ld h, $dd
    ld [hl+], a
    ld [$0063], a
    ld bc, $738c
    rst RST_38
    ld [hl], l
    adc d
    dec b
    ld a, [$827d]
    add l
    ld a, d
    sbc $00
    inc bc
    sbc h
    ld h, e
    ld l, e
    sub h
    ld [hl], $71
    ld l, h
    sub e
    cp $00
    inc bc
    inc [hl]
    res 6, e
    ld c, h
    or a
    ld c, b
    or a
    rst RST_30
    ld c, b
    ld d, a
    xor b
    ld d, b
    ld h, c

Call_009_6076:
    cp a
    ld b, b
    cp e
    ld b, h
    rst RST_38
    and a
    ld e, b
    adc a
    ld [hl], b
    and a
    ld e, b
    cp e
    ld b, h
    ldh a, [c]
    ld a, [hl+]
    ld b, h
    rrca
    ld b, $77
    nop
    ld bc, $2cd3

jr_009_608d:
    call $fe32
    ld hl, sp+$61
    ld e, l
    and d
    rst RST_38
    nop
    rst RST_30
    ld [$fff7], sp

jr_009_609a:
    ld [$6897], sp
    ld h, a
    sbc b
    ld [hl], a
    adc b
    ld h, a
    rst RST_38
    sbc b
    sub a
    ld l, b
    rst RST_38
    nop
    rst RST_00
    jr c, jr_009_609a

    rst RST_38
    db $10
    db $ed
    ld [de], a
    db $ec
    inc de
    db $ed
    ld [de], a
    db $ed
    db $fd
    ld [de], a
    inc l
    ld h, c
    cp $01
    db $fd
    ld [bc], a
    jr nc, jr_009_608d

    sbc $f8
    ld h, c
    db $dd
    ld [hl+], a
    db $db
    inc h
    nop
    ld bc, $20df
    rst RST_38
    ld a, d
    add l
    reti


    ld h, $db
    inc h
    db $db
    inc h
    ld a, e
    swap h
    ld b, b
    ld h, e
    ld a, h
    add e
    xor a
    ld d, b
    add $71
    di
    and a
    ld e, b
    ld e, h
    nop
    dec de
    jr nz, jr_009_60fd

    rst RST_20
    ld [hl], a
    adc b
    ccf
    ld [hl], b
    adc a
    ld [hl], a
    adc b
    sbc b
    ld h, a
    ld d, [hl]
    ld b, $1b

jr_009_60f2:
    jr nz, jr_009_60f2

    adc $71
    rst RST_38
    nop
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    halt

jr_009_60fd:
    rst RST_38
    adc c
    xor l

Jump_009_6100:
    ld d, d
    xor h
    ld d, e
    db $dd
    ld [hl+], a
    sbc $07
    ld hl, $00ff
    dec e
    add b
    add b
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    nop
    inc [hl]
    set 2, e
    inc l
    rst RST_38
    rla
    add sp, -$09
    ld [$e817], sp
    rst RST_38
    nop
    rst RST_38
    rst RST_30
    ld [$08f7], sp
    pop bc
    ld a, $77
    adc b
    or $16
    ld bc, $8679
    nop
    ld bc, $00ff
    ld [hl], l
    adc d
    rst RST_38
    ld [hl], h
    adc e
    ld [hl], l
    adc d
    ld h, l
    sbc d
    sub l
    ld l, d
    cp $1e
    inc bc
    ld sp, $eece
    ld de, $1fe0
    rst RST_28
    rst RST_30
    db $10
    ldh a, [rIF]
    ld e, $03
    jp $bf3c


jr_009_614f:
    ld b, b
    cp a
    rst RST_00
    jr c, jr_009_614f

    inc b
    add a
    ld a, b
    ld e, $03
    ldh a, [$ffb7]
    rrca
    xor $11
    ld d, [hl]
    ld bc, $0ef1
    ld e, $03
    db $d3
    rst RST_38
    inc l
    call $dd32
    ld [hl+], a
    db $dd
    ld [hl+], a
    ld e, l
    db $fd
    and d
    ld c, $03
    sub a
    ld l, b
    ld h, a
    sbc b
    ld [hl], a
    adc b
    rst RST_08
    ld h, a
    sbc b
    sub a
    ld l, b
    ld c, $05
    db $10
    ld bc, $08f7
    rst RST_38
    ld sp, hl
    ld b, $ff
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld l, a
    ld c, [hl]
    or c
    dec [hl]
    jp z, $0126

    halt
    adc c
    ld e, $03
    rst RST_38
    ccf
    ret nz

    rst RST_18
    jr nz, jr_009_61bc

    ldh [rIE], a
    nop
    cp $a8
    inc bc
    cp a
    ld b, b
    or h
    ld c, e
    or e
    ld c, h
    or a
    or a
    ld c, b
    or a
    ld c, b
    inc c
    ld bc, $04fb
    ld [de], a
    rlca
    ld l, a
    db $fd
    sub b
    nop
    ld bc, $807f
    jp hl


jr_009_61bc:
    ld d, $66
    sbc c
    rst RST_38
    ld l, [hl]
    sub c
    ld l, [hl]
    sub c
    ld l, $d1
    rst RST_38
    nop
    rst RST_38
    db $fd
    ld [bc], a
    cp l
    ld b, d
    ldh a, [rIF]
    cp l
    ld b, d
    or $e6
    ld bc, $619e
    ld e, $03
    ld h, e
    sbc h
    db $dd
    ld [hl+], a
    rst RST_38
    pop bc
    ld a, $df
    jr nz, @+$63

    sbc [hl]
    rst RST_38
    nop
    db $db
    rst RST_20
    jr jr_009_61f9

    ld bc, $09f6
    ld b, $11
    di
    inc c
    cp $1e
    inc bc
    inc e
    db $e3
    db $eb
    inc d
    db $eb
    inc d

jr_009_61f9:
    db $ec
    rst RST_18
    inc de
    rra
    ldh [$fffc], a
    inc bc
    jr nc, jr_009_6205

    xor [hl]
    ld d, c
    rst RST_38

jr_009_6205:
    xor [hl]
    ld d, c
    ld l, $d1
    or c
    ld c, [hl]
    ld a, a
    add b
    db $fc
    ld b, b
    rrca
    ld d, d
    rrca

jr_009_6212:
    db $d3
    inc l
    adc $31
    sbc $21
    rst RST_28
    sbc $21
    ld e, a
    and b
    ld e, $03
    rra
    ldh [$ffef], a
    rst RST_18

Jump_009_6223:
    db $10
    rrca
    ldh a, [rIE]
    nop
    ld l, b
    ld de, $40bf
    rst RST_38
    cp a
    ld b, b
    cp e
    ld b, h

Call_009_6231:
    and [hl]
    ld e, c
    adc a
    ld [hl], b
    rrca

Jump_009_6236:
    and a
    ld e, b
    cp d
    ld b, l
    ld e, $03
    ld l, b
    ld de, $1164
    xor b
    ld bc, $00de
    ld bc, $39c6
    cp e
    ld b, h
    sub [hl]
    ld de, $38c7
    rst RST_38
    rst RST_38
    nop
    rst RST_18
    jr nz, jr_009_6212

    ld b, b
    rrca
    ldh a, [$ffe6]
    ld [hl], b
    ld de, $40bf
    ld l, $13
    ld [hl-], a
    add hl, de
    cp $01
    db $e3
    cp l
    inc e
    inc b
    dec d
    halt

jr_009_6267:
    adc c

jr_009_6268:
    ld h, d
    sbc l
    ld e, $03
    sbc h
    rst RST_20
    ld h, e
    ld l, e
    sub h
    ld d, $13
    ld e, $03
    ld a, a
    add b
    cp a
    db $fd
    ld b, b
    ld l, [hl]
    ld de, $8877
    rst RST_38
    nop
    adc a
    ld [hl], b
    rst RST_38
    ld [hl], a
    adc b
    ld a, [hl]
    add c
    adc l
    ld [hl], d
    push af
    ld a, [bc]
    rst RST_38
    ld [hl], l
    adc d
    adc [hl]
    ld [hl], c
    rst RST_38
    nop
    cp $01
    rst RST_28
    db $fd
    ld [bc], a
    jr nc, jr_009_6268

    ld l, b
    ld bc, $22dd
    dec sp
    call Call_000_0ec4
    inc bc
    ld b, c
    cp [hl]
    add [hl]
    rlca
    nop
    ld bc, $847b
    rst RST_38
    ld a, d
    add l
    ld a, d
    add l
    ld c, d
    or l
    or a
    ld c, b
    cp $1e
    inc bc
    dec c
    ldh a, [c]
    db $ec
    inc de
    db $ed
    ld [de], a
    db $ed
    rst RST_30
    ld [de], a
    dec d
    ld [$0f2e], a
    ldh a, [rTAC]
    rst RST_20
    ld [$e8ff], sp
    inc de
    db $eb
    inc d
    add sp, $13
    rst RST_20
    ld [$f0ff], sp
    rlca
    rst RST_38
    nop
    dec a
    add d
    sbc c
    ld b, [hl]
    cp $06
    inc hl
    sbc l
    ld b, d
    jr c, jr_009_6267

    rst RST_38
    nop
    rst RST_00
    rst RST_38
    jr c, @-$44

    ld b, l
    cp d
    ld b, l
    jp $fb3c


    rst RST_20
    inc b
    cp d
    ld b, l
    sbc h
    ld de, $1314
    inc c
    di
    rst RST_28
    rst RST_38
    db $10
    db $eb
    inc d
    inc e
    db $e3
    rst RST_38
    nop
    ld a, [hl]
    ld a, a
    add c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    ld a, $c1
    sub d
    ld hl, $7eff
    add c
    rst RST_38
    nop
    add sp, $17
    db $db
    inc h
    rst RST_38
    cp e
    ld b, h
    ld a, b
    add a
    cp e
    ld b, h
    db $db
    inc h
    rst RST_38
    add sp, $17
    rst RST_38
    nop
    cpl
    ret nc

    rst RST_28
    db $10
    rst RST_38
    rst RST_20
    jr jr_009_6393

    sub l
    db $ed
    ld [de], a
    rst RST_28
    db $10
    rst RST_38
    cpl
    ret nc

    rst RST_38
    nop
    or c
    ld c, [hl]
    xor [hl]
    ld d, c
    rst RST_38
    cpl
    ret nc

    xor a
    ld d, b
    xor a
    ld d, b
    xor [hl]
    ld d, c
    add e
    or c
    ld c, [hl]
    ld l, [hl]
    ld hl, $1396
    sbc b
    dec d
    sbc $29
    and $11
    adc h
    ld a, a
    ld [hl], e
    halt

jr_009_6351:
    adc c
    halt
    adc c
    ld b, $f9
    ldh a, [c]
    ld hl, $9cde
    ld bc, $30cf
    rst RST_28

jr_009_635e:
    db $10
    ld [bc], a
    dec [hl]
    ld h, a
    sbc b
    or $1e
    inc bc
    db $e3
    inc e
    ld b, $23
    db $e3
    inc e
    rst RST_38
    nop
    sbc $68
    ld bc, $fa05
    call c, Call_009_6823
    ld bc, $1ae5
    cp $1e
    inc bc
    jr c, @-$37

    rst RST_10
    jr z, jr_009_6351

    cpl
    rst RST_10
    rst RST_30
    jr z, jr_009_635e

    daa
    ld e, [hl]
    dec b
    ld c, a
    or b
    ld e, a
    and b
    ld h, e
    rst RST_18
    jr nz, jr_009_63ed

    dec d
    inc d

jr_009_6393:
    ld sp, $01f8
    pop hl
    ld e, $a2
    ld bc, $bfff
    ld b, b
    cp b
    ld b, a
    or a
    ld c, b

jr_009_63a1:
    or b
    ld c, a
    rst RST_28
    or a
    ld c, b
    sbc b
    ld h, a
    ld e, $03
    ret


    ld [hl], $56
    ld a, a
    xor c
    ld d, [hl]
    xor c
    sub $29
    ld d, [hl]
    xor c
    adc [hl]
    dec d
    rst RST_38
    cp d
    ld b, l
    add d
    ld a, l
    cp [hl]
    ld b, c
    jp nz, Jump_009_7e3d

    cp $11
    cp $01
    sbc b
    ld h, a
    ld l, [hl]
    sub c
    ld d, [hl]
    ld bc, $effb
    db $10
    ld e, $03
    jr nc, jr_009_63a1

    rst RST_28
    db $10
    pop af
    rst RST_38
    ld c, $fe
    ld bc, $de21
    rst RST_38
    nop
    add c

jr_009_63de:
    rst RST_38
    inc a
    inc a
    ld b, d
    ld b, [hl]
    sbc c
    ld e, [hl]
    and c
    ld b, [hl]
    rst RST_38
    sbc c
    inc a
    ld b, d
    add c
    inc a

jr_009_63ed:
    rst RST_38
    nop
    xor $df
    ld de, $32cd
    db $ed
    ld [de], a
    sbc d
    ld sp, $12ed
    ei
    add $39
    ld [hl-], a
    inc sp
    rst RST_10
    jr z, @+$1a

    rst RST_20
    rst RST_18
    rst RST_18
    jr nz, jr_009_63de

    jr z, jr_009_6441

    rst RST_00
    ld [de], a
    ld sp, $a25d
    rst RST_38
    ld e, l
    and d
    ld h, c
    sbc [hl]
    ld a, l
    add d
    ld e, l

jr_009_6416:
    and d
    inc a
    inc e
    ld sp, $17c0
    or $09
    ldh [c], a
    dec e
    nop
    ld bc, $3792
    ld a, e
    db $ed
    ld [de], a
    adc [hl]
    ld bc, $10ef
    dec a
    jp nz, $2336

    sbc $2c
    inc sp
    rst RST_30
    ld [$c13e], sp

jr_009_6436:
    jp nc, $d731

    jr z, jr_009_6436

    db $d3
    inc l
    ld l, [hl]
    inc de
    inc c
    di

jr_009_6441:
    cp e
    ld b, h
    cp b
    rst RST_18
    ld b, a
    cp e
    ld b, h
    call z, $de33
    ld bc, $02fd
    db $e3
    ld a, l
    add d
    sub h
    ld hl, $01a2
    sbc [hl]
    ld de, $20df
    ret c

    sbc l
    daa
    ld h, [hl]
    ld sp, $8877
    ld a, b
    ld l, l
    jr nz, @+$62

    inc bc
    ld c, l
    ld h, a
    or d
    ld e, l
    and d
    ld l, d
    inc bc
    ld d, b
    ld b, c
    dec b
    ld a, [$2306]
    ei
    and $19

jr_009_6475:
    ld e, $03
    call nc, $d32b
    inc l
    rst RST_10
    sbc a
    jr z, jr_009_6416

    ld l, b
    ld d, a
    xor b
    ld e, $03
    ld [hl], b
    ld hl, $e783
    ld a, h
    cp a
    ld b, b
    adc h
    ld sp, $1780
    db $ed
    ld [de], a
    dec e

jr_009_6492:
    rst RST_38
    ldh [c], a
    ei
    inc b
    adc a
    ld [hl], b
    rst RST_18
    jr nz, jr_009_6475

    rst RST_38
    dec h
    reti


    ld h, $db
    inc h
    db $db
    inc h
    adc e
    dec a
    ld [hl], h
    ld e, $03
    ld [hl], c
    adc [hl]
    xor [hl]
    ld d, c
    ret z

    dec h
    sbc $29
    dec bc
    rst RST_18
    jr nz, jr_009_6492

    dec hl
    rst RST_38
    sbc l
    inc sp
    sbc l
    inc [hl]
    db $ec
    ld b, e
    rst RST_18
    ld c, e
    ldh [$ff0c], a
    ld e, a
    ld e, $5f
    jr nc, @+$61

    ld b, d
    ld e, a
    rst RST_18
    daa
    rst RST_38
    jr c, @+$01

    add hl, sp
    ld b, h
    ld h, d
    ld d, [hl]
    db $dd
    ld hl, $ff10
    jr nc, @-$12

    ld b, b
    ld [hl], l
    ld d, e
    ld [hl], h
    db $dd
    ld hl, $5361
    ld [$40ec], sp
    jr nz, @+$01

    ld a, h
    ld a, [hl]
    ld d, h
    push af
    inc b
    ld h, b
    ld d, b
    inc b
    ld l, d
    ld d, h
    ld [$18ff], sp
    rst RST_38
    ld d, a
    jr z, @+$01

    ld c, b
    adc h
    ld d, b
    ld [$5086], sp
    nop
    adc h
    ld d, b
    rlca
    ld b, b
    rst RST_38
    ld a, b
    sub h
    ld d, b
    sbc c
    ld d, l
    ld h, c
    ld d, c
    or e
    ld d, c
    ld l, c
    ld d, l
    ld b, c
    ld a, h
    add h
    ld d, h
    ld [hl], l
    ld d, e
    ld a, a
    ld d, l
    pop hl
    ld d, l
    ld a, a
    ld d, l
    inc a
    cp b
    ld e, d
    add hl, bc
    ld b, h
    ret nc

    ld d, d
    ld h, e
    ld d, c
    nop
    add $54
    ld de, $bf65
    ld d, l
    dec h
    ld h, c
    ld d, d
    ld l, e
    ld d, e
    ld [hl], b
    and [hl]
    ld d, b
    ld h, e
    ld d, e
    ld c, b
    jr nc, jr_009_6594

    nop
    sbc b
    ld b, c
    cpl
    cp a
    ld b, b
    add a
    ld a, b
    ld [hl], b
    ld de, $8d83
    ld d, b
    ld b, b
    ld l, c
    inc a
    and $11
    ret nc

    ld hl, $40bf
    and e
    ld e, h
    sbc b
    dec d
    sub [hl]
    inc de
    jp Jump_009_7c83


    sub [hl]
    inc de
    ld l, [hl]
    ld hl, $3702
    sbc h
    ld de, $0ef1
    di
    ei
    inc b
    sub d
    ld h, c
    ld l, b
    ld h, a
    or a
    ld c, b
    xor a
    ld d, b
    ccf
    sbc a
    ld h, b
    xor a
    ld d, b
    or a
    ld c, b
    ld a, h
    ld h, c
    and [hl]
    inc de
    db $fc
    and [hl]
    inc de
    ld c, h
    ld h, c
    ld a, l
    add d
    ld a, l
    add d
    add hl, sp
    add $cf
    ld d, l
    xor d
    ld l, l
    sub d
    ret nz

    ld h, c
    ld l, [hl]
    ld h, e
    sbc e
    ld h, h
    rst RST_08
    xor e

jr_009_658b:
    ld d, h
    or e
    ld c, h
    ld a, d
    ld h, l
    jp nc, $872b

    ld a, b

jr_009_6594:
    ld hl, sp-$6a
    ld de, $6b56
    sub [hl]
    ld de, $54ab
    or a
    ld c, b
    ret


    pop bc
    ld [hl], $ee
    ld h, a
    ld a, b
    ld h, a
    ld h, d
    ld h, c
    jr c, jr_009_65bb

    sbc d
    inc de
    add e
    ld a, h
    add b
    ld [bc], a
    scf
    sbc h
    ld sp, $27d2
    ld l, d
    ld l, c
    jp nc, $3a31

    ld [hl], e

jr_009_65bb:
    ret nz

    ld h, c
    ld a, l
    rst RST_18
    add d
    ld l, l
    sub d
    ld d, l
    xor d
    ld a, d
    ld h, e
    ld a, l
    add d
    ld a, [hl]
    ld d, h
    ld [hl], c
    rst RST_28
    db $10
    rst RST_10
    jr z, jr_009_658b

    ld b, h
    call z, Call_009_6c65
    ld e, b
    ld [hl], e
    ld a, [hl-]
    ld [hl], e
    add e
    ld a, h
    ret nz

    ld bc, $10ef
    and b
    ld de, $4c00
    ld h, c
    ld c, [hl]
    ld e, a
    ld d, d
    ld e, h
    cp a
    ld a, h
    ld d, b
    ld e, [hl]
    xor [hl]
    ld a, h
    rst RST_28
    ld a, l
    dec e
    nop
    add b
    rst RST_38
    nop
    rst RST_38
    nop
    add b
    ld a, a
    nop
    ld a, a
    jr z, @+$01

    ld a, a
    dec de
    ld a, a
    inc a
    ld a, a
    rrca
    ld a, a
    inc d
    add sp, $00
    nop
    nop
    nop
    inc d
    nop
    rst RST_28
    inc d
    nop
    add hl, sp
    rst RST_38
    add $fe
    nop
    nop
    inc bc
    db $fc
    ld bc, $29fc
    db $fc
    or c
    rst RST_38
    db $fc
    ld a, c
    db $fc
    pop hl
    db $fc
    ld d, c
    ld a, a
    inc d
    db $eb
    ld a, a
    inc de
    jr nc, jr_009_6629

jr_009_6629:
    inc b
    jr nc, jr_009_6630

    inc d
    rst RST_38
    add $f8

jr_009_6630:
    inc e

Jump_009_6631:
    ld bc, $0244
    ld b, e
    ld bc, $fcd6
    ld d, c
    db $fc
    sub c
    ld [$0050], a
    ld b, c
    ld d, b
    inc b
    ld d, c
    nop
    ld [bc], a
    ld a, a
    ld b, a
    ld b, a
    dec de
    ld d, a
    ld d, a
    ld h, [hl]
    ld bc, $5757
    db $10
    ld [bc], a
    ld [hl], h
    ld [$0220], sp
    push af
    db $fd
    add h
    rlca
    ld a, a
    sub b
    dec b
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    rst RST_30
    ld a, b
    ld a, a
    ld a, b
    jr jr_009_6665

jr_009_6665:
    rst RST_00
    rst RST_38
    add e
    rst RST_38
    pop af
    ld bc, $0214
    nop
    nop
    add h
    ld [$fc7d], sp
    dec a
    db $fc
    ld a, e
    dec a
    ld [hl], b
    ret nz

    ld [bc], a
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    sub b
    inc bc
    db $fd
    nop
    ret nc

    inc b
    jr z, jr_009_66ae

    rst RST_28
    rst RST_28
    rst RST_00
    rst RST_00
    rst RST_28
    ld bc, $1c01
    dec e
    ldh [rSB], a
    inc a
    dec a
    ld a, h
    ld sp, hl
    ld a, l
    adc d
    inc c
    call $8001
    nop
    rst RST_38
    call nz, $fbc5
    call nc, Call_000_00d5
    ld de, $d5d4
    db $fc
    db $fd
    nop
    ld sp, hl
    inc bc
    inc de
    ld [bc], a
    ld h, e

jr_009_66ae:
    ld [bc], a
    ld [hl], a
    ld [hl], a
    ld b, a
    ld b, a
    ld e, a
    and a
    ld e, a
    ld b, a
    ld b, a
    ld [hl], b
    inc bc
    jp c, $8301

    ld a, [hl+]
    db $10
    rst RST_28
    reti


    rst RST_28
    ldh a, [$ff09]
    sub b
    ld bc, $c7c7
    ld [hl], h
    add hl, bc
    rst RST_38
    rst RST_38
    db $fc
    add h
    add hl, bc
    add h
    ld bc, $c5c4
    db $f4
    push af
    call nz, $0fc5
    call c, $c4dd
    push bc
    ld a, [bc]
    rra
    jr jr_009_66f1

    ld b, b
    rla
    ld h, $17
    add [hl]
    ld b, b
    rla
    rst RST_00
    rst RST_00
    ld h, b
    inc de
    ld h, d

jr_009_66ec:
    ld de, $196a
    ld l, h
    nop

jr_009_66f1:
    ld b, e
    cp a
    ld b, a
    ld b, c
    ld [hl], a
    ld b, c
    ld [hl], a
    ld [hl], a
    add b
    inc bc
    call c, $ddff
    adc h
    adc l
    inc b
    dec b
    inc b
    dec b
    call c, $dd37
    ld a, a
    ld h, e
    jr nc, jr_009_6726

    adc h
    adc l
    ld d, b
    dec de
    jr nc, jr_009_672c

    ld a, e
    ld h, e
    ld h, e
    ld d, b
    inc e
    adc l
    ld [hl], a
    ld [hl], a
    ld b, c
    ld [de], a
    jr nz, jr_009_66ec

    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, [$0603]
    db $10
    dec b

jr_009_6726:
    call nz, Call_000_05af
    db $f4
    add l
    db $f4

jr_009_672c:
    add hl, bc
    inc e
    ld e, a
    cp c
    ld [de], a
    ld b, a
    ld d, c
    ld b, a
    ld [hl], h
    ld [$02a1], sp
    sub b
    dec de
    rst RST_38
    rst RST_38
    nop
    call c, $2223
    cp h
    ld l, b
    dec e
    jr c, jr_009_6766

    ld d, a
    ld d, c
    ld b, a
    ld b, a
    ret nc

    rla
    ld [hl], a
    sbc a
    ld [hl], a
    ld h, e
    ld h, e
    ld b, c
    ld b, c
    ldh [rNR22], a
    add $13
    ld b, c
    sbc d
    cp l
    db $10
    ld h, e
    pop de
    ld d, $63
    ld h, e
    call z, $e011
    jr jr_009_66f1

    halt
    ld h, b

jr_009_6766:
    inc hl
    call nc, Call_009_6895
    ld e, $63
    ld l, a
    ld b, c
    jp c, $f920

    ld h, a
    adc d
    dec e
    ld h, b
    db $10
    dec b
    db $ec
    dec b
    db $ec
    adc l
    db $db
    db $ec
    call Call_000_1b6a
    ld d, a
    ld d, e
    ld a, d
    jr nz, jr_009_67dc

    ld b, a
    ld bc, $c043
    add hl, de
    add $11
    add [hl]
    daa
    and d
    inc hl
    sub [hl]
    daa
    or d
    inc hl
    ld d, $21
    ld h, [hl]
    inc d
    add hl, hl
    call nz, Call_000_0285
    db $10
    push bc
    jr z, @+$03

    cp $02
    scf
    ld [hl], d
    jr jr_009_67b6

    ld b, e
    ld d, b
    inc sp
    ld h, [hl]
    dec l
    ld d, c
    ld d, c
    ld d, l
    adc b
    ld [hl-], a
    pop af
    ld d, c
    ld e, a
    ld bc, $0873

jr_009_67b6:
    adc d
    rra
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    or $b2
    ld sp, $4544
    ld l, d
    add hl, de
    ld h, d
    ld h, d
    ld [hl], a
    ld h, e
    rst RST_20
    ld [hl], a
    ld b, c
    ld d, a
    dec a
    jr nz, jr_009_683e

    inc b
    ld bc, $03ff
    cp $d8
    jr nc, jr_009_6837

    rst RST_38
    ld hl, $627e
    ld a, [hl]
    ld a, [hl]

jr_009_67dc:
    rst RST_38
    ld l, a
    ld l, a
    ld b, a
    ld b, a
    ld l, h
    ld l, h
    ld h, d
    ld h, d
    rst RST_38
    ld b, e
    ld b, e
    ld c, l
    ld c, l
    rst RST_38
    ldh [rIE], a
    ld [hl], b
    db $eb
    rst RST_38
    ld h, b
    inc d
    nop
    ld h, h
    inc d
    nop
    ld e, [hl]
    rst RST_38
    add b
    push af
    db $fc
    pop hl
    ld de, $0475
    ld b, b
    dec [hl]
    db $fc
    dec b
    db $fc
    rst RST_18
    sub l
    db $fc
    sub l
    ld a, a
    ld d, d
    db $10
    ld b, b
    ld b, b
    ld a, a
    ld [hl], a

jr_009_680f:
    ld e, b
    ld a, a
    ld e, h
    jr @+$42

    ld a, [hl]
    ld a, a
    ld h, d
    ret c

    jr nc, jr_009_680f

    push af
    inc d
    nop
    ld c, h
    and [hl]
    nop
    dec c
    rst RST_38
    inc e

Call_009_6823:
    rst RST_38
    rst RST_38
    ld c, $64
    ld h, l
    add h
    add l
    adc h
    adc l
    ld l, h
    rst RST_18
    ld l, l
    call nz, $ecc5

jr_009_6832:
    db $ed
    inc c
    ld hl, $09ff

jr_009_6837:
    add d
    ld a, [hl+]
    ld b, b
    add c
    ld b, h
    ld b, b
    ld [hl], e

jr_009_683e:
    nop
    ret nc

    nop
    rst RST_38
    nop
    db $f4
    jr nz, jr_009_684b

    di
    xor h
    adc l
    ldh [rNR11], a

jr_009_684b:
    inc c
    rla
    ld b, [hl]
    ld b, [hl]
    ld d, a
    ld d, e
    ld hl, sp-$34
    jr nc, jr_009_6832

    jr nz, jr_009_68c7

    inc b
    add b
    rst RST_38
    dec b
    rst RST_38
    dec h
    rst RST_18
    rst RST_38
    ld [hl], c
    rst RST_38
    ld bc, $e176
    jr nc, jr_009_68be

    ld e, b
    rst RST_38
    ld d, d
    ld d, d
    ld b, e
    ld b, e
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    rst RST_28
    ld b, h
    ld b, h
    rst RST_38
    ld d, c
    ldh a, [c]
    jr nc, jr_009_689c

    rst RST_38
    ld a, [bc]
    set 7, a
    ld [hl], l
    ld a, [hl+]
    ld b, b
    ld e, h
    xor [hl]
    nop
    pop hl
    ld de, $fc0d
    ld [hl], a
    push bc
    db $fc
    add l
    ld [$6540], sp
    db $fc
    dec b
    inc d
    ld b, b
    rst RST_38
    ld c, h
    ld a, a
    ld e, c

Call_009_6895:
    ld a, a
    ld b, e
    ld a, a
    ld b, [hl]
    ld a, a
    push de
    ld h, b

jr_009_689c:
    sbc b
    nop
    ld h, e
    inc d
    nop
    ld [hl], h
    call c, Call_009_5d30
    rst RST_38
    ld [hl], a
    and b
    rst RST_38
    ld c, b
    inc l
    ld b, b
    inc e
    ld b, h
    ld b, l
    jp z, $bf11

    add h
    add l
    sub h
    sub l
    inc a
    dec a
    ld e, [hl]
    db $10
    add l
    cp $a6
    nop

jr_009_68be:
    dec e
    rst RST_38
    ld c, c
    rst RST_38
    ld b, c
    rst RST_38
    ld [bc], a
    db $ec
    ld c, d

jr_009_68c7:
    ld b, e
    jr nz, jr_009_68ed

    db $ec
    adc l
    jr z, jr_009_68f9

    ld e, e
    ld d, e
    ld d, a
    db $db
    ld b, e
    ld c, a
    swap b
    ld e, e
    ld d, e
    ld [hl], b
    inc b
    nop
    rst RST_38
    ld a, a
    adc d
    rst RST_38
    ret nz

    rst RST_38
    adc $ff
    ret nz

    add b
    inc b
    push af
    dec h
    inc b
    ld b, b
    push af
    xor h
    ld b, b

jr_009_68ed:
    push hl
    ld a, a
    ld h, e
    ld a, [hl]
    rst RST_38
    ld a, [hl]
    ld e, h
    ld e, h
    ld d, b
    ld d, b
    ld b, c
    ld b, c

jr_009_68f9:
    ld d, c
    rst RST_18
    ld d, c
    ld d, b
    ld d, b
    ld e, b
    ld e, b
    sub [hl]

jr_009_6901:
    ld b, b
    ld c, $ff
    rst RST_30
    sub c
    rst RST_38
    ld h, [hl]
    halt
    ld b, b
    xor b
    rst RST_38
    ld b, b

jr_009_690d:
    rst RST_38
    rst RST_20
    jr jr_009_690d

    push hl
    xor h
    ld b, c
    xor h
    ld b, b
    push bc
    db $fc
    push de
    cp [hl]
    ld e, d
    ld d, b
    ld b, l
    ld a, a
    ld b, h
    ld a, a
    ld d, [hl]
    ld h, d
    ld d, b
    ld b, [hl]
    ld a, [$40b2]
    ld b, c
    or d
    ld b, b
    ld c, [hl]
    rst RST_38
    jr nc, @+$01

    inc b
    cp e
    rst RST_38
    dec hl
    ret c

    jr nc, jr_009_6901

    rst RST_38
    ld [de], a
    ldh a, [$ff30]
    and c
    rst RST_38
    inc [hl]
    dec [hl]
    inc d
    dec d
    inc d
    dec d
    inc b
    dec b
    ld l, a
    inc d
    dec d
    ld [hl], h
    ld [hl], l
    inc c
    ld hl, $4e7f
    or d
    ld b, b
    push af
    ld e, [hl]
    jr jr_009_6992

    ld c, b
    ld a, [$ff03]
    rlca
    rst RST_38
    rst RST_20
    ldh a, [c]
    and b
    ld d, b
    and e
    and [hl]
    nop
    ld c, e
    ld b, d
    or h
    sub l
    xor h
    dec b
    call Call_009_559c
    ld b, b
    or h
    sub l
    ld l, d
    inc de
    ldh a, [$ff09]
    ld a, h
    ld a, h
    db $eb
    ld a, b
    ld a, b
    jr z, jr_009_6987

    ld bc, $52d4
    add e
    add e
    ld b, h
    ld a, e
    ld b, h
    nop
    xor a
    add hl, bc
    db $fd
    ld a, h
    ld a, l
    inc a
    cp a
    rrca

jr_009_6987:
    ld b, [hl]
    db $d3
    inc b
    ld l, h
    ld l, h
    jp c, $e40f

    ld de, $0370

jr_009_6992:
    rst RST_00
    ld h, $60
    jr z, @-$70

    rra
    jr z, jr_009_69ab

    or b
    inc d
    ld b, e
    cp b
    dec de
    adc h
    ld d, a
    ld b, b
    jp z, Jump_000_2813

    db $10
    dec h
    and h
    ld hl, $2a1c

jr_009_69ab:
    add l
    ld l, d
    ld a, [de]
    ld b, e
    jr c, @+$31

    ld h, $63
    add b
    ld h, b
    ld h, $79
    ld l, a
    ld a, e
    inc l
    ld h, [hl]
    ld h, c
    adc [hl]
    add hl, hl
    ld d, [hl]
    ld h, e
    ld h, h
    db $10
    dec d
    ret nz

    call nz, $a922
    ld l, h
    ret c

    dec h
    ld h, $6d
    ldh a, [rNR52]
    ld e, c
    ld c, d
    ld b, a
    ld b, e
    nop
    ld [$563b], sp
    ld h, e
    inc e
    dec [hl]
    jp z, $2a63

    scf
    ld [hl], $77
    ld a, $37
    ld l, b
    ld h, l
    ld h, b
    ld d, b
    ld [hl], $a9
    ld l, h
    ld l, b
    inc a
    rst RST_20
    ld l, c
    ld [hl], e
    ld [$c7c7], sp
    ld h, b
    ld b, h
    ld de, $6842
    ld b, l
    ldh a, [rDMA]
    xor c
    ld l, d
    ld e, e
    ld b, a
    ld h, b
    ld a, [bc]
    ld d, e
    or b
    ld d, b
    add hl, bc
    dec c
    or h
    ld e, a
    sbc d
    ld [bc], a
    ld [hl], b
    ld a, [$1d71]
    add b
    ld h, e
    ld a, l
    rst RST_38
    nop
    inc bc
    jr c, @+$01

    db $10
    rst RST_38
    nop
    ld a, [bc]
    ld bc, $fcfb
    db $fd
    db $10
    ld [bc], a
    ld a, l
    db $fc
    dec a
    db $fc
    dec e
    ld [hl], h
    ld a, [de]
    ld bc, $000b
    nop
    nop
    nop
    rst RST_10
    rst RST_38
    add e
    jr z, jr_009_6a2f

jr_009_6a2f:
    add a
    rst RST_00
    rst RST_38
    rst RST_28
    nop
    inc b
    nop
    inc bc
    daa
    rrca
    ld a, [bc]
    ld bc, $ff80
    ld a, a
    ld a, a
    ld d, a
    ld b, e
    ld d, a
    ld b, c
    ld b, a
    ld b, c
    xor a
    ld [hl], a
    ld h, e
    ld [hl], a
    ld [hl], a
    dec bc
    nop
    inc bc
    stop
    xor l
    ei
    db $fc
    dec b
    ld l, b
    nop
    adc l
    db $fc
    db $dd
    ld a, a
    ld [hl], a
    rst RST_28
    ld a, a
    ld h, e
    ld a, a
    ld b, c
    ld [hl], h
    nop
    ld l, e
    ld a, a
    ld a, a
    rst RST_38
    nop
    add b
    nop
    rst RST_38
    call nc, $d4d5
    add l
    rst RST_38
    call nz, $f405
    dec b
    db $f4
    and l
    db $fc
    db $fd
    ld [hl], e
    nop
    inc bc
    dec bc
    ld [bc], a
    ld d, e
    nop
    ld b, a
    ld b, e
    ld e, a
    ld e, c
    ld [bc], a
    cp a
    ld b, a
    ld b, a
    call nz, $dcc5
    adc l
    add h
    ld bc, $7dc4
    add l
    adc d
    rrca
    ld d, a
    ld b, e
    ld b, a
    ld b, a
    ld a, a
    ret nz

    add hl, bc
    add a
    ld l, e
    ld a, a
    ld b, c
    db $10
    inc b
    ld de, $6703
    nop
    ld [hl], h
    nop
    ld h, e
    ldh [rSVBK], a
    nop
    ret nz

    ld b, $6a
    inc bc
    ret nc

    rlca
    and b
    nop
    sbc l
    call nz, $fb05
    call nc, $a815
    dec c
    ld [hl], a
    ld b, c
    ld l, a
    ld b, c
    ld l, a
    rst RST_30
    ld h, e
    ld l, a
    ld h, a
    inc a
    dec c
    call nz, $f4c5
    add l
    ld l, e
    db $ec
    dec b
    inc [hl]
    db $10
    xor l
    xor d
    dec bc
    ld d, a
    ld d, c
    cp d
    nop
    add a
    ld d, e
    ld b, a
    ld b, e
    ret z

    dec b
    ldh [rTIMA], a
    ret c

    dec b
    ldh a, [rTIMA]
    call nz, $c507
    call nc, Call_000_0495
    rra
    ld b, [hl]
    db $10
    sbc c
    ld b, $82
    inc bc
    xor b
    dec bc
    rst RST_30
    ld d, c
    ld b, c
    ld d, l
    and a
    ld [de], a
    ld d, c
    ld d, c
    ld b, h
    ld b, l
    db $db
    ld d, h
    dec b
    or d
    ld de, $0544
    xor d
    add hl, bc
    ld h, e
    ld h, e
    rst RST_10
    ld [hl], a
    ld b, c
    ld [hl], a
    cp e
    inc bc
    ld a, [hl]
    ret nc

    db $10
    ld l, a
    ld a, a
    rst RST_38
    ld b, a
    ld a, a
    ld l, h
    ld a, a
    ld h, d
    ld a, a
    ld b, e
    ld a, a
    push de
    ld c, l
    db $10
    ld [bc], a
    ld [hl], l
    db $e4
    db $10
    dec [hl]
    ld l, b
    nop
    sub l
    db $fc
    rst RST_30
    sub l
    ld a, a
    ld d, d
    ldh a, [rNR10]
    ld b, b
    ld a, a
    ld e, b
    ld a, a
    ld a, c
    ld e, h
    ld hl, sp+$10
    pop de
    db $10
    db $fc
    ld h, l
    db $fc
    add l
    ld l, h
    nop
    rst RST_18
    ld l, l
    db $fc
    push bc
    db $fc
    db $ed
    db $fc
    inc bc
    db $ec
    adc l
    cp a
    db $ec
    dec b
    xor h
    dec b
    adc h
    adc l
    xor d
    ld a, [bc]
    ld b, d
    ei
    ld d, a
    ld b, c
    ld e, b
    nop
    ld b, e
    ld l, a
    ld h, a
    ld [hl], a
    halt
    ld [$10d0], a
    ld e, b
    ldh a, [rNR10]
    ld b, e
    ld [hl], h
    nop
    ld b, b
    ld a, a
    ld b, h
    xor d
    db $10
    ld [bc], a
    dec c
    ld [$8520], sp
    add sp, $10
    ld h, l
    sbc $00
    ld b, b
    rst RST_28
    ld a, a
    ld c, h
    ld a, a
    ld e, c
    call c, Call_009_4610
    ld a, a
    ld h, b
    xor [hl]
    ret nc

    db $10
    ld a, a
    db $fc
    ld b, l
    ld l, b
    ld [bc], a
    add l
    db $ec
    db $10
    dec a
    db $f4
    ld l, [hl]
    ld [de], a
    add c
    ld [bc], a
    db $ec
    add a
    inc c
    ld e, e
    ld c, e
    ld d, a
    ld b, c
    xor l
    ld c, a
    cp e
    nop
    ld e, e
    ld d, e
    ret nz

    nop
    ld a, [hl]
    ld hl, sp+$10
    ld d, b
    xor d
    ld [hl], h
    nop
    ld d, c
    sub [hl]
    jr nz, jr_009_6bfc

    add sp, $10
    dec d
    and d
    jr nz, jr_009_6baf

    ld a, [$20a2]
    ld [hl], l
    db $10

jr_009_6baf:
    ld bc, $95b4
    xor h
    adc l

jr_009_6bb4:
    sbc h
    ldh a, [c]
    dec d
    jr nz, @-$4a

    adc c
    inc b
    ret nz

    ld [$7f7e], sp
    ld a, h
    ld a, a
    dec d
    ld a, b
    ld l, $00
    rst RST_00
    ld a, $00
    ld bc, $20d6
    dec bc
    add hl, bc
    ld de, $8006
    jr nz, jr_009_6bd6

    pop de
    inc hl
    dec hl
    rrca

jr_009_6bd6:
    push af
    ld hl, $3709
    db $d3
    jr nz, jr_009_6c2d

    inc b
    ld d, a
    inc l
    cp h
    nop
    ret


    db $10
    ld [hl], a
    ld h, e
    ld h, b
    inc b
    db $dd
    ld l, h
    nop
    ld l, c
    ld [bc], a
    add b
    db $e4
    add hl, bc
    db $ec
    ld [bc], a
    push af
    ld [$0110], sp
    ld [hl], d
    inc b
    db $e3
    ld [bc], a
    ld a, h
    ld [bc], a

jr_009_6bfc:
    add l
    cp e
    call nc, $8405
    nop
    add l
    db $f4
    push de
    xor d
    ld a, [bc]
    ld b, a
    ld a, l
    ld e, a
    add hl, hl
    ld [hl-], a
    ld b, a
    ld b, e
    call nz, $dc85
    ld [hl], e
    ld [hl-], a
    inc bc
    call nz, Call_009_7ac5
    ccf
    ld a, [hl+]
    ld hl, $08e4
    ld [hl], c
    ld [bc], a
    db $f4
    ld [$3237], sp
    jr jr_009_6bb4

    inc sp
    add d
    nop
    sbc c
    inc a
    ld [hl], a
    ld h, e
    ld a, [de]
    db $10

jr_009_6c2d:
    dec de
    db $10
    or $2d
    ld [hl], a
    call nz, $f485
    dec [hl]
    ld de, $ec8d
    call Call_000_3b9a
    nop
    jr z, jr_009_6c70

    cp h
    ld bc, $3a30
    ld l, l
    ld bc, $36b7
    ld e, d
    jr jr_009_6c71

    ld b, [hl]
    ld e, [hl]
    jr nc, @-$7e

    dec [hl]
    ld c, b
    ld a, h
    ld bc, $1390
    sub $3f
    jr z, jr_009_6c8a

    adc l
    rla
    sub a
    inc a
    ld d, c
    dec d
    ld d, c
    xor b
    ld e, $45
    cp d
    ld a, [de]
    ld h, d

Call_009_6c65:
    ld e, h
    nop
    xor e
    inc sp
    ld sp, $e82d
    push af
    ld bc, $2f45

jr_009_6c70:
    ld d, a

jr_009_6c71:
    dec h
    ld [hl], a
    ld h, b
    dec hl
    db $fc
    db $dd
    call nz, $857f
    db $ec
    dec c
    db $ec
    dec c
    xor h
    adc l
    jr jr_009_6cae

    adc l
    ld b, [hl]
    ld d, [hl]
    inc bc
    ld l, a
    ld h, e
    ret nc

    ld c, a

jr_009_6c8a:
    ldh [c], a
    ld c, e
    ld [hl], b
    inc sp
    db $ec
    cp l
    adc l
    ld a, b
    dec sp
    ld e, e
    ld d, e
    ld d, a
    ld b, e
    adc d
    jr nz, @+$43

    pop af
    ld e, e
    xor a
    ld sp, $2f93
    and l
    daa
    db $dd
    or h
    add l
    xor h
    db $dd
    dec b
    or h
    jr nz, @-$71

    or h
    sub l
    xor d

jr_009_6cae:
    inc b
    ld a, [hl]
    nop
    ld e, a
    cp l
    nop
    db $db
    nop
    rst RST_20
    sub [hl]
    ld d, b
    db $db
    sub d
    ld d, b
    ld bc, $907e
    ld e, a
    and d
    ld e, a
    or h
    ld e, a
    add $5f
    ret c

    ld e, a
    ld [$fc5f], a
    ld e, a
    nop
    ld c, $6f
    dec e
    nop
    add b
    rst RST_38
    nop
    add c
    nop

jr_009_6cd6:
    ld b, d
    nop
    inc h
    nop
    jr jr_009_6cd6

    ld b, $00
    inc h
    ld [bc], a
    nop
    add c
    rst RST_20
    rst RST_20
    db $db
    db $db
    rst RST_38
    rst RST_10
    rst RST_10
    db $ed
    db $ed
    call nc, $bbd4
    cp e
    ld a, a
    cp c
    cp c
    add $c6
    add b
    add b
    rst RST_30
    ld [hl+], a
    ld a, [bc]
    nop
    nop
    dec c
    jr nc, jr_009_6d0d

    ld b, d
    rrca
    ld d, h
    rrca
    ld h, [hl]
    rrca
    ld a, b
    rrca
    adc d
    rrca
    sbc h
    rrca
    ldh a, [$ffae]
    rrca

jr_009_6d0d:
    ret nz

    rrca
    jp nc, Jump_000_040f

    add hl, bc
    ld a, a
    add b
    rst RST_38
    ld a, a
    db $fd
    ret nz

    inc bc

jr_009_6d1a:
    jr jr_009_6d1a

    ld bc, $fefd
    ld [bc], a
    db $fc
    cp [hl]
    inc d
    rla
    ld a, a
    add b
    add b
    nop
    cp a
    inc hl

jr_009_6d2a:
    jr jr_009_6d2a

    rst RST_18
    ld bc, $0003
    rst RST_38
    ld [bc], a
    inc [hl]
    rla
    add b
    rst RST_38
    rst RST_38
    nop
    add b
    nop
    cp b
    nop
    or b
    nop
    or b
    ei
    inc bc
    or a
    ld b, d
    db $10
    and b
    ld bc, $00ff
    ld [bc], a
    rst RST_38
    ld [bc], a
    ld e, $02
    ld c, $02
    ld c, $c2
    xor $ef
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $40
    ld de, $b105
    dec bc
    rst RST_38
    and e
    rla
    add a
    cpl
    adc a
    rla
    add a
    dec bc
    db $fd
    add e
    ld d, b
    ld de, $1e42
    and d
    adc [hl]
    jp nc, $bfc6

    ld [$dee2], a
    jp nz, $82be

    ld b, b
    ld [de], a
    cp [hl]
    ld a, d
    add h
    ld d, $bc
    ld d, b
    ld de, $e6e2
    ldh a, [c]
    or $96
    inc de
    di
    ld [hl], d
    halt
    ld b, b
    ld [de], a
    inc h
    inc de
    cp h
    nop
    or b
    ld [bc], a
    ld a, [$134f]
    cp $b4
    ld [de], a
    ld e, $02
    ld b, $62
    ld h, d
    cp $40
    inc de
    ld bc, $00bb
    cp l
    nop
    adc [hl]
    db $10
    rst RST_30
    sub [hl]
    add hl, de
    sbc c
    ld d, b
    ld [de], a
    ld a, [hl]
    add d
    cp [hl]
    jp nz, $de6d

    ret c

    ld de, $9e82
    ld b, b
    ld de, $bd01
    db $e4
    db $10
    rst RST_38
    or c
    inc bc
    xor e
    ld d, $97
    inc d
    sub [hl]
    ld bc, $ffbf
    ld [bc], a
    ld [bc], a
    add d
    sbc $82
    reti


    db $10
    ldh [c], a
    rst RST_18
    xor $32
    ld [hl], $12
    sub $04
    add hl, de
    cp a
    ld b, b
    ld a, e
    ld b, b
    add b
    inc d
    add hl, de
    db $fc
    nop
    nop
    ld bc, $1924
    di
    rst RST_38
    ccf
    nop
    db $10
    dec [hl]
    jr @+$01

    cp $fe
    ld bc, $00ff
    or [hl]
    inc b
    or [hl]
    rlca
    or a
    inc b
    or [hl]
    rst RST_38
    inc bc
    cp e
    nop
    cp h
    ccf
    rst RST_38
    add b
    add b
    rst RST_30
    ld [bc], a
    xor $e2
    ld d, c
    jr nz, jr_009_6e29

    ld l, [hl]
    jp nz, $fbde

    ld [bc], a
    ld a, $3d
    jr nz, jr_009_6e11

    dec b

jr_009_6e11:
    add c
    ld [bc], a
    add b
    db $eb
    ld bc, $46a0
    db $10
    cp b
    ld c, d
    inc hl
    ld a, [hl]
    ld [bc], a
    ld a, [$02ff]
    xor $02
    add $02
    ld l, [hl]
    ld [bc], a
    ld a, $2d

jr_009_6e29:
    ld [bc], a
    ld e, h
    ld hl, $bd01
    ld b, h
    db $10
    and b
    ld b, d
    db $10
    ld [hl+], a
    db $10
    ld a, [hl]
    ld c, h
    ld hl, $c6c2

jr_009_6e3a:
    ld [hl], d
    halt
    ld [bc], a
    ld b, $94
    jr nz, jr_009_6e3a

    ld b, [hl]
    ld a, e
    jr nz, jr_009_6ea2

    jr nz, jr_009_6e51

    adc b
    dec c
    adc h
    ld [bc], a
    pop af
    or d
    xor d
    db $10
    inc h
    db $10

jr_009_6e51:
    ld c, h
    ld hl, $0e2e
    jp c, $e31a

    ld [hl+], a
    ld h, $56
    db $10
    or l
    db $10
    ld e, h
    ld hl, $9f0f
    nop
    pop hl
    xor a
    ld b, [hl]
    db $10
    inc h
    ld [de], a
    adc h
    ld [hl+], a
    ld sp, hl
    db $10
    ld [hl], d
    or $3a
    rst RST_18
    ld a, d
    ld [de], a
    or d
    ld [bc], a
    add $5c

jr_009_6e77:
    ld hl, $9514
    rst RST_38
    nop
    add e
    nop
    cp [hl]
    ld bc, $03bd
    cp e
    rst RST_30
    ld bc, $7fbb
    ld c, l
    jr nz, jr_009_6e9c

    sub $02
    and $ff
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    cp [hl]
    add d
    sbc $02
    sbc $f4
    ld e, h
    ld hl, $14a0
    or b

jr_009_6e9c:
    ld b, h
    jr nz, @-$4a

    ld b, $b7
    inc b

jr_009_6ea2:
    sbc l
    or a
    or b
    inc d
    ld c, $82
    adc [hl]
    jr jr_009_6ede

    nop
    add hl, sp
    dec b
    rst RST_20
    or l
    inc b
    or l
    db $10
    dec [hl]
    ld d, h
    jr nz, jr_009_6ee5

    and d
    xor $fb
    ld [hl+], a
    xor $a0
    jr jr_009_6e77

    inc b
    or [hl]
    nop
    adc a
    ld [$18b0], a
    sbc [hl]
    ld [hl], a
    jr nz, @-$0c

    and b
    inc de

jr_009_6ecc:
    inc b
    cp a
    ld [$bcbf], sp
    inc de
    or b
    inc h
    and b
    jr nz, @-$4f

    add hl, de
    ld a, $d7
    add d
    ld e, $42
    ccf

jr_009_6ede:
    inc de
    cp a
    add h
    ld [de], a
    or b
    dec bc
    ld sp, hl

jr_009_6ee5:
    xor e
    ld c, [hl]
    inc d
    ld a, c
    ld sp, $02be
    ld b, $6a
    ld l, d
    rst RST_38
    ld [bc], a
    ld [bc], a
    add b
    add b
    ld a, a
    ld a, a
    ld a, b
    ld b, b
    db $fd
    ld [hl], b
    and l
    jr nc, jr_009_6f70

    ld b, a
    ld b, b
    ld b, b
    ld h, b
    ld b, b
    ld a, a
    ld bc, $fe01
    db $fc
    inc e
    nop
    inc c
    or l
    jr nc, jr_009_6ecc

    call z, Call_000_00e0
    nop
    inc b
    nop
    and b
    ld sp, $ff75
    ld b, c
    ld l, e
    ld b, e
    ld d, a
    ld b, a
    ld l, a
    ld c, a
    ld d, a
    rst RST_30
    ld b, a
    ld c, e
    ld b, e
    or b
    ld sp, $005c
    xor h
    add b
    rst RST_38
    call nc, $e8c0

jr_009_6f2d:
    ldh [$ffdc], a
    ret nz

    cp h
    add b
    sub $a0
    ld sp, $407e
    db $e4
    dec [hl]

jr_009_6f39:
    ld a, h
    xor a
    ld [hl-], a
    db $e4
    ldh [$ffdb], a
    db $f4
    ldh a, [$fff6]
    inc sp
    ld [hl], h
    ld [hl], b
    ld [$0735], sp
    or a
    inc sp
    nop
    or b
    ld c, h
    ld [hl+], a
    rla
    ld [hl], $02
    ld c, $5c
    ld hl, $3528
    or [hl]
    ld [$c245], sp
    adc $3a
    inc sp
    ldh [c], a
    xor $1a
    ld b, e
    nop
    rst RST_18
    sub b
    ld bc, $00af
    or e
    and [hl]
    daa
    ld [bc], a
    ld a, [bc]
    ld c, a
    add d
    or $02

jr_009_6f70:
    adc $79
    ld hl, $239a
    jr nz, jr_009_6fe4

    jr nc, @+$81

    jr nc, jr_009_6f2d

    jr z, jr_009_6f39

    inc d
    cp h
    ld [de], a
    adc e
    ld [hl+], a
    rst RST_00
    ld [hl], $06
    ld b, $95
    ld hl, $10d3
    sbc d
    inc hl
    dec b
    or l
    ld [hl], $80
    ld b, l
    nop
    cp b
    ld c, h
    ld hl, $5652
    sub b
    ld b, l
    ld a, [de]
    ld b, e
    rst RST_38
    ld [hl], b
    ld b, [hl]
    ld [hl], h
    ld b, [hl]
    ld [hl], a
    ld b, a
    ld [hl], h
    ld b, [hl]
    rst RST_18
    ld a, e
    ld b, e
    ld a, h
    ld b, b
    ld b, b
    cp a

jr_009_6fab:
    jr nc, jr_009_6fb9

    ldh [$fffd], a
    db $ec
    or c
    ld b, b
    inc l
    ld h, b
    call c, Call_000_3cc0
    nop
    ld a, [hl]

jr_009_6fb9:
    dec e
    jr nz, jr_009_6fbd

    ld b, l

jr_009_6fbd:
    ld b, c
    ld b, d
    ld b, b
    ld h, c
    and l

jr_009_6fc2:
    jr nc, jr_009_6fbd

    ld a, b
    db $ed
    jr nc, @-$52

    ld b, c
    ld a, h
    nop
    ld hl, sp+$00
    db $ec
    rst RST_18
    nop
    call nz, $6c00
    nop
    cp d
    ld b, e
    ld a, l
    ld b, c
    jp hl


    ld a, b
    xor l
    jr nc, jr_009_6fc2

    ld b, c
    ld a, a
    xor e
    ld b, d
    call nz, Call_009_74c0

jr_009_6fe4:
    dec de
    ld [hl], b
    inc b
    cp l
    jr nc, jr_009_702e

    nop
    inc e
    jr nz, jr_009_6fab

    ld b, b
    and b
    ld sp, $7f75
    jp hl


    ld b, b
    ld a, a
    db $ed
    jr nc, @+$72

    ld b, b
    ld h, d
    xor a
    ld [hl-], a
    db $dd
    db $fc
    ld sp, hl
    ld b, b
    db $fc
    nop
    inc e
    cp l
    jr nc, jr_009_7067

    ld h, b
    cp $a0
    inc sp
    ld a, c
    ld b, e
    ld a, h
    ld b, c
    ld c, [hl]
    ld b, b
    ld d, [hl]
    rst RST_30

jr_009_7013:
    ld d, b
    ld e, c
    ld e, c
    or b
    ld sp, $007c
    cp h
    add b
    db $eb
    call c, Call_000_38c0
    ld d, c
    sbc h
    rst RST_18
    ld [hl-], a
    ld a, l
    ld b, c
    ld a, l
    rst RST_38
    ld b, c
    ld [hl], c
    ld b, c
    ld h, e
    ld c, e
    ld d, [hl]

jr_009_702e:
    ld d, a
    ld d, h
    db $dd
    ld d, [hl]
    or b
    ld sp, $c09c
    sbc h
    add hl, sp
    ld d, b
    db $ec
    ldh [$ff6f], a
    inc [hl]
    jr nc, jr_009_7013

    db $10
    and b
    ld sp, $4070
    and h
    ld b, b
    ld a, a
    ld b, h
    halt
    ld b, a
    ld [hl], h
    ld b, a
    ld [hl], a
    ld b, a
    or b
    ld sp, $0c2f
    nop
    adc h
    add b
    halt
    ld d, e
    inc c
    cp a
    ld [hl-], a
    ld h, h
    ld d, e
    rst RST_08
    ld [hl], l
    ld b, l
    ld [hl], h
    ld b, l
    ld l, [hl]
    ld d, l
    or h
    ld b, b
    jr nz, jr_009_7013

jr_009_7067:
    rst RST_18
    ldh [$ff2c], a
    ldh [$ffcc], a
    ret nz

    nop
    ld d, a
    ld a, b
    ld b, b
    rst RST_28
    ld [hl], h
    ld b, [hl]
    ld b, b
    ld c, a
    db $10
    ld d, a
    sbc h
    nop
    inc c
    rst RST_30
    ld h, b
    nop
    ldh a, [rP1]
    ld d, d
    ld b, h
    ld a, h
    ld c, b
    ld [hl], e
    and a
    ld d, b
    ld h, h
    ld h, b
    bit 2, c
    db $10
    ld d, l
    inc a
    cp c
    ld d, b
    ld b, b
    rst RST_30
    nop
    inc [hl]
    inc b
    and b
    ld sp, $407c
    ld a, l
    ld b, c
    rst RST_38
    ld h, b
    ld b, b
    ld d, [hl]
    ld d, [hl]
    ld b, b

jr_009_70a1:
    ld b, b
    ld l, d
    ld c, d
    ld a, [$5330]
    ld a, h
    or l
    jr nc, @-$2a

    ret nc

    inc b
    nop
    xor h
    rst RST_38
    and b
    ld c, d
    ld c, b
    ld c, l
    ld c, h
    ld [hl], d
    ld b, d
    ld a, h
    db $fc
    dec b
    ld d, d
    xor h
    ld b, c

jr_009_70bd:
    inc l
    inc c
    ret c

    jr jr_009_70e6

    jr nz, jr_009_70bd

    inc c
    dec d
    ld d, d
    cp h
    ld b, c
    ld c, a
    ld e, a
    ld h, b
    ld c, a
    ld [hl], b
    ld hl, sp+$05
    ld d, d
    ld [$5843], a
    ld d, c
    ld [hl], h
    ldh a, [$ff38]
    ld a, b
    sub b
    cp e
    jr nc, jr_009_70a1

    cp e
    ld b, d
    ld d, l
    ld d, h
    ld b, e
    push hl
    jr nc, jr_009_7162

    rst RST_18

jr_009_70e6:
    ld b, c
    ld a, e
    ld b, e
    ld a, c
    ld b, e
    xor h
    ld b, c
    call nc, $fd10
    db $e4
    push af
    ld d, b
    inc a
    add b
    sbc h
    ret nz

    inc e
    ret nz

    nop
    cp h
    ld b, c
    ld l, b
    ld d, l
    inc h
    ld h, c
    xor h
    ld b, c
    halt
    ld d, a
    ld a, [$8843]
    ld d, l
    ld l, b
    ld h, l
    or $98
    ld d, e
    db $ec
    ldh [$ff78], a
    ld h, l
    ld b, b
    ld d, b
    ld h, c
    ld c, a
    ld sp, hl
    ld [hl], b
    xor c
    ld b, b
    ld [$0065], sp
    ld [$f084], sp
    inc c
    db $fc
    cp c
    ld b, b
    jr jr_009_718a

    ld h, b
    ld h, b
    ld [hl], d
    ld [hl], b
    ld a, h
    ld l, b
    cpl
    ld a, h
    ld d, h
    ld a, a
    ld d, d
    ld [$0443], a
    db $f4
    ld b, c
    push af
    ld d, b
    ld h, [hl]
    jr jr_009_719f

    ld l, d
    ld c, d
    ldh [$ff63], a
    ld l, b
    ld h, l
    xor h
    and b
    ldh a, [$ff63]
    cp l
    inc e
    ld sp, hl
    ld b, h
    rst RST_38
    ld d, l
    rst RST_38
    xor d
    nop
    ld a, c
    db $e3
    rst RST_18
    db $e3
    pop bc
    db $dd
    add b
    cp [hl]
    inc d
    ld [hl], c
    pop bc
    db $dd
    cpl
    db $e3
    db $e3
    rst RST_38
    rst RST_38
    db $10
    ld [hl], b
    pop bc
    rst RST_18

jr_009_7162:
    jr nc, @-$1f

    jr nc, @-$2b

    pop bc
    pop bc
    inc e
    ld [hl], c
    cp e
    ld b, b
    ld a, [hl]
    ld [hl-], a
    ld a, b
    nop
    pop af
    rst RST_38
    pop af
    pop hl
    db $ed
    pop bc
    db $dd
    add c
    cp l
    pop bc
    rst RST_38
    db $dd
    pop hl
    db $ed
    pop af
    pop af
    rst RST_38
    rst RST_38
    rst RST_00
    rst RST_38
    rst RST_00
    jp $c1db


    db $dd
    ret nz

jr_009_718a:
    sbc $c1
    rst RST_18
    db $dd
    jp $c7db


    rst RST_00
    ld l, $71
    rrca
    rrca
    db $fd
    rra
    ld h, h
    ld a, b
    nop
    nop
    di
    rst RST_30
    db $d3

jr_009_719f:
    rst RST_30
    rst RST_38
    db $d3
    db $d3
    db $d3
    jp $e7c3


    rst RST_20
    rst RST_38
    ldh [$ff2e], a
    ld [hl], c
    ld a, l
    ld [hl], b
    add d
    ld a, b
    ld h, h
    ld a, c
    ld h, h
    ld [hl], e
    rrca
    rrca
    db $10
    add c
    db $10
    and d
    ld [hl], e
    cp e
    ld b, b
    add c
    ld [hl], d
    add b
    ld [hl], c
    or h
    ld [hl], e
    add b
    ld [hl], l
    ld h, [hl]
    ld a, [hl]
    add d
    halt
    di
    di
    rst RST_28
    rst RST_28
    rst RST_08
    rst RST_18
    call nc, $ff71
    rst RST_28
    rst RST_28
    di
    di
    rst RST_38
    rst RST_38
    rst RST_08
    rst RST_08
    rst RST_28
    rst RST_30
    rst RST_30
    di
    ei
    db $e4
    ld [hl], c
    rst RST_30
    rst RST_30
    rst RST_08
    ld bc, $82cf
    ld a, e
    or b
    ld [hl], c
    dec e
    add b
    add b
    rst RST_30
    jp $bdc3


    ld [bc], a
    ld b, $c3
    jp $ffff


    rst RST_18
    rst RST_30
    rst RST_30
    rst RST_20
    rst RST_20
    rst RST_30
    inc d
    inc b
    db $e3
    db $e3
    ei
    rst RST_38
    rst RST_38
    nop
    inc bc
    di
    di
    rst RST_08
    rst RST_08
    cp a
    rst RST_30
    cp a
    add c
    add c
    ld e, $03
    db $fd
    db $fd
    db $e3
    db $e3
    ei
    db $fd
    db $fd
    ld a, [bc]
    inc bc
    di
    di

jr_009_721c:
    db $eb
    db $eb
    db $db
    cp a
    db $db
    cp e
    cp e
    add c
    add c
    ei
    ld c, d
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    add c
    add c
    cp a
    cp a
    add e
    add e
    db $fd
    ldh [rRP], a
    nop
    ld a, [bc]
    inc bc
    nop
    ld bc, $0152
    ld [$8105], sp
    add c
    cp l
    rla
    cp l
    ei
    ei
    inc d
    ld bc, $7aef

Call_009_7248:
    nop
    ld e, $05
    add b
    dec b
    ld h, [hl]
    ld e, $05
    pop bc
    pop bc
    jr c, jr_009_7259

    ld a, [de]
    ld bc, $e3e3
    inc d

jr_009_7259:
    ld bc, $0ecc
    ld bc, $052e
    di
    di
    ld a, h
    ld bc, $017c
    nop
    rst RST_38
    cp a
    nop
    jp $a500


    nop
    sbc c
    add $00
    and l
    nop
    jp nz, $bf00

    rrca
    pop de
    rrca
    db $e3
    rrca
    push af
    rrca
    rlca
    rra
    add hl, de
    rra
    dec hl
    rra
    nop
    dec a
    rra
    ld c, a
    rra
    ld h, c
    rra
    ld [hl], e
    rra
    add l
    rra
    sub a
    rra
    xor c
    rra
    cp e
    rra
    or h
    call $df1f
    ld e, $eb
    nop
    jr nz, jr_009_721c

    add b
    ld [bc], a
    inc hl
    db $eb
    xor e
    db $eb
    rst RST_38
    ld c, $28
    rst RST_18
    ld a, [de]
    jr nz, @+$01

    rst RST_38
    db $10
    ret nz

    rst RST_38
    ret nz

    xor e
    xor e
    ret


    pop bc
    ld [$81ea], a
    db $fd
    add c
    inc c
    ld hl, $e7e7
    db $db
    db $db
    rst RST_10
    rst RST_10
    rst RST_38
    db $ec
    db $ec
    push de
    push de
    cp e
    cp e
    call nz, $06c4
    ld c, $25
    pop bc
    pop bc
    ld c, $29
    ld c, $01
    xor b
    ld bc, $210e
    ldh [$ff1f], a
    nop
    ld h, d
    cpl
    ld [hl], h
    cpl

jr_009_72dc:
    add [hl]
    cpl
    sbc b
    cpl
    xor d
    cpl
    cp h
    cpl
    adc $2f
    ldh [$ff2f], a
    jr nc, jr_009_72dc

    dec hl
    nop
    inc bc
    ld [hl], b
    ld bc, $0102
    rst RST_38
    rst RST_38
    ld h, [hl]
    inc bc
    jr nz, jr_009_732c

jr_009_72f7:
    ld a, b
    ld e, [hl]
    dec b
    inc [hl]
    ld sp, $030a
    add a
    add a
    cp e
    cp e
    ld [bc], a
    inc bc
    rrca
    cp e
    cp e
    add a
    add a
    ld c, [hl]
    inc bc
    ld d, d
    ld bc, $3134
    inc l
    ld bc, $5036
    add hl, sp
    cp a
    cp a
    ld e, [hl]
    dec b
    and c
    and c
    ld [$0205], sp
    inc bc
    ret c

    ld d, $37
    and h
    inc bc
    ld d, $07
    pop af
    pop af
    ld c, d
    ld bc, $fbfb
    db $ed

jr_009_732c:
    cp e
    xor b
    jr nc, jr_009_72f7

    rst RST_00
    ld a, [hl]
    ld sp, $bbbb
    or a
    rst RST_18
    or a
    xor a
    xor a
    sub a
    sub a
    ld b, d
    ld sp, $ffff
    ld hl, sp+$34
    inc sp
    inc [hl]
    inc sp
    inc l
    ld bc, $bebe
    sbc h
    sbc h
    xor d
    rst RST_08
    xor d
    or [hl]
    or [hl]
    cp [hl]
    ret c

    ld [hl-], a
    ld a, [hl]
    ld sp, $9d9d
    ccf
    xor l
    xor l
    or l
    or l
    cp c
    cp c
    ld a, [de]
    inc sp
    nop
    dec c
    ld hl, sp+$20
    dec [hl]
    ld l, b
    add hl, sp
    ld [bc], a
    ld bc, $b5b5
    cp e
    cp e
    push bc
    or c
    push bc
    ld e, $37
    ld b, d
    inc sp
    ld e, [hl]
    dec b
    jp $38c3


    dec b
    add b
    ld b, c
    add b
    sub d
    scf
    xor b
    ld bc, $0702
    ld a, [bc]
    inc bc
    ret c

    ld sp, $64dd
    ld b, b
    ld hl, sp+$00
    ld hl, $01a8
    ret c

    inc sp
    or [hl]
    or [hl]
    xor d
    xor d
    sbc h
    pop af
    sbc h
    call c, Call_009_6231
    ld b, c
    ld l, d
    ld b, c
    db $eb
    db $eb
    db $dd
    db $dd
    cp h
    ld a, h
    ld c, c
    ld c, b
    ld b, l
    add b
    add b
    db $fd
    db $fd
    ld [hl], h
    ld bc, $1fef
    rst RST_28
    rst RST_18
    rst RST_18
    add b
    add b
    ld b, b
    add hl, hl
    ld b, [hl]
    dec h
    and [hl]
    dec b
    nop
    ld e, b
    dec h
    ld d, b
    daa
    ld a, h
    ld bc, $49c0
    ld a, h
    ld bc, $211a
    ld l, h
    ld sp, $250e
    ld a, [de]
    jr nc, jr_009_73ef

    rst RST_20
    inc b
    ld d, b
    db $db
    db $db
    ld [hl], b
    ld bc, $211e
    ld [bc], a
    dec hl
    jr nc, @+$7a

    ld bc, $0350
    ld a, [hl+]
    inc bc
    jr nz, jr_009_740f

    pop bc
    pop bc
    nop
    ld hl, $5342
    ld e, d
    ld b, [hl]
    ld hl, $50ed
    ld d, b
    db $db

jr_009_73ef:
    db $db
    ld c, $27
    db $db
    ld h, b
    ld d, b
    nop
    ld a, [hl]
    rlca
    ld e, [hl]
    cpl
    ld [hl], b
    ld e, a
    add d
    ld e, a
    sub h
    ld e, a
    and [hl]
    ld e, a
    cp b
    ld d, l
    ld b, c
    inc hl
    ld [hl], e
    rst RST_38
    push de
    sub $54
    ld c, $23
    rst RST_00
    rst RST_38

jr_009_740f:
    cp [hl]
    and $52
    ld e, h
    xor l
    jr nc, @+$10

    ld [hl+], a
    rra
    rst RST_38
    rst RST_28
    or $52
    rra
    ld c, $22
    ld b, l
    db $fd
    ld [bc], a
    ld h, h
    cp $0a
    ld h, b
    ld e, h
    ld d, d
    ld [de], a
    ld h, b
    ld e, d
    ld d, $60
    xor c
    cp l
    ld a, [de]
    ld h, b
    ld c, $21
    or a
    ld [hl+], a
    ld h, b
    or l
    ld h, $60
    ld a, d
    call nc, Call_009_602a
    ld c, $21
    ld a, a
    ld [hl-], a
    ld h, b
    ld a, [hl]
    ld [hl], $60
    cp $ff
    ld [hl], h
    dec e
    jr nz, jr_009_7459

    ld [hl+], a
    inc e
    ld [de], a
    ld h, d
    db $db
    rst RST_38
    inc l
    ld c, $20
    cp $0b
    ld h, c
    ld h, [hl]
    rst RST_38

jr_009_7459:
    jp c, $c2ff

    rst RST_38
    sbc $fb
    rst RST_38
    ld h, d
    ld c, $24
    sbc b
    rst RST_38
    ld d, [hl]
    rst RST_38
    sub $ba
    ld l, b
    ld h, b
    reti


    ld c, $24
    sub $ff
    call Call_009_6076
    db $dd
    ei
    rst RST_38
    ld e, [hl]
    ld c, $20
    cp a
    rst RST_38
    xor a
    rst RST_38
    ld a, [hl-]
    xor a
    rst RST_38
    xor c
    rst RST_38
    xor e
    adc b
    ld h, b
    dec hl
    ld c, $24
    ld h, e
    cp e
    rst RST_38
    ld e, e
    sub [hl]
    ld h, b
    ld h, e
    rst RST_38
    ld a, e
    db $ec
    ld d, h
    pop af
    cp d
    or $54
    ld [hl], c
    ld c, $24
    adc $ff
    or [hl]
    or [hl]
    ld h, d
    adc $aa
    ld c, $24
    rrca
    add d
    ld h, b
    xor [hl]
    ret z

    ld h, b
    xor l
    ld [bc], a
    ld h, b
    cp a
    cp $80
    ld h, b
    ld a, b
    rst RST_38
    halt
    rst RST_38
    or $ff
    ld hl, sp+$2a
    ld a, [bc]
    ld h, b
    pop af
    ret nc

    ld h, d
    adc [hl]
    ld h, $62

Call_009_74c0:
    or l
    db $e4
    ld h, b
    ld c, $23
    ld d, l
    ccf
    xor $6a
    halt
    sub $60
    ld d, [hl]
    ld h, [hl]
    ld h, b
    xor a
    add d
    ld h, b
    ld a, [hl+]
    ld c, $21
    db $ed
    ld [de], a
    ld [hl], b
    xor l
    call z, $5e60
    ld a, h
    ld h, d
    jr jr_009_7500

    and h
    inc a
    ld h, b
    dec de
    ld [hl], c
    cp [hl]
    ld [hl+], a
    ld h, b
    ld c, $23
    ld a, [hl-]
    ld l, h
    ld h, b
    dec de
    ld d, e
    rst RST_38
    ei
    jr c, jr_009_7563

    ld c, $21
    ei
    ld [hl-], a
    ld h, b
    ld a, e
    ld b, [hl]
    ld [hl], d
    db $d3
    ld l, e
    rst RST_38
    dec e
    nop

jr_009_7500:
    ld c, $20
    sbc e
    ld c, h
    ld [hl], b
    ld l, l
    rst RST_38
    rst RST_20
    ld l, [hl]
    rst RST_38
    sbc l
    ld a, [hl-]
    ld [hl], b
    ld c, $21
    cp l
    rst RST_38
    cp h
    xor e
    rst RST_38
    ld a, l
    ld [bc], a
    ld h, b
    db $ed
    ld c, $24
    add hl, sp
    or [hl]
    ld h, b
    or b
    and d
    ld [hl+], a
    ld h, b
    cp b
    ld c, $22
    dec c
    ld h, c
    dec bc
    ld h, c
    cp $56
    ld h, b
    ld hl, sp-$1c
    ldh [rHDMA4], a
    inc de
    ld h, c
    add $5a
    ld h, b
    dec a
    ld h, c
    or e
    rst RST_38
    xor h
    ld [hl], h
    ld [hl-], a
    ld h, d
    ld c, $25
    ld l, a
    ld [de], a
    ld [hl], b
    db $eb
    rst RST_38
    rst RST_20
    or [hl]
    ld [hl], b
    and h
    ld l, l
    ld [hl], e
    inc bc
    ld h, e
    adc h
    ld [bc], a
    ld h, d
    ld c, $23
    cp c
    sub $60
    ldh a, [rSCX]
    rst RST_38
    ld [hl], a
    ld a, h
    ld [hl], c
    ld c, d
    ld bc, $0576
    ld a, [de]
    ld hl, $f000
    ld a, h
    ld h, h

jr_009_7563:
    ld [hl], l
    jr nz, jr_009_757a

    ld [de], a
    ld b, $06
    nop
    dec hl
    ld c, [hl]
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
    ld c, a
    ld b, $00
    inc b

jr_009_757a:
    ld b, $60
    ld [bc], a
    ld e, [hl]
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld e, a
    ld b, $60
    ld [bc], a
    ld b, $00
    rla
    ld bc, $0302
    inc b
    dec b
    nop
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $06
    nop
    dec b
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_009_75c2

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $06
    nop
    ld d, $0f
    jr nz, jr_009_75b4

jr_009_75b4:
    nop
    inc hl
    inc h
    dec h
    nop
    ld h, $27
    jr z, jr_009_75e6

    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_009_75c2:
    ld l, $2f
    ld b, b
    rra
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld hl, $3736
    jr c, jr_009_760a

    ld sp, $3b3a
    inc a
    dec a
    ld a, $3f
    ld d, b
    ld b, $00
    dec d
    rrca
    jr nz, jr_009_75df

jr_009_75df:
    nop
    inc hl
    inc h
    dec h
    nop
    ld h, $27

jr_009_75e6:
    jr z, jr_009_7611

    nop
    ld b, c
    ld b, d
    ld b, $00
    inc b
    rra
    jr nc, jr_009_7622

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld hl, $3736
    jr c, jr_009_7633

    ld sp, $5251
    ld b, $00
    ld a, [de]
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

jr_009_760a:
    ld c, l
    ld b, $00
    ld [$5453], sp
    ld d, l

jr_009_7611:
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    db $10
    ld b, $00
    dec hl
    rra
    halt
    dec e
    nop
    add b

jr_009_7622:
    reti


    nop
    nop
    rrca
    inc c
    ld [$0f0f], sp
    inc c
    dec bc
    ldh [$ffe0], a
    ld e, [hl]
    inc c
    add hl, bc
    ld a, [hl]
    ld a, h

jr_009_7633:
    rst RST_38
    sub e
    inc c
    rlca
    ld [bc], a
    ld c, d
    nop
    ei
    rra
    rra
    inc c
    dec bc
    ldh a, [$fff0]
    nop
    nop
    ld [$08ff], sp
    inc h
    inc h
    ld de, $0110
    ld bc, $5f03
    ld bc, $0603
    ld c, $0c
    inc c
    rlca
    inc b
    ld a, d
    ld [bc], a
    adc b
    inc c
    add hl, bc
    ld c, d
    ld bc, $090c
    ld [$009c], sp
    inc c
    rrca
    xor d
    rlca
    inc bc
    rst RST_30
    inc bc
    nop
    ld bc, $07aa
    ld a, [bc]
    ld a, [bc]
    adc d
    ld a, [bc]
    ld a, e
    add b
    add b
    xor d
    add hl, bc
    ld b, b
    ld b, b
    ld b, a
    ld b, a
    jp nc, $d309

    ld b, b
    ld b, b
    ld e, [hl]
    ld bc, $09aa
    ld bc, $06bf
    ld h, b
    ld h, b
    db $dd
    sub b
    ld a, [bc]
    db $10
    ld h, b
    ld h, b
    inc b
    sbc a
    ld [bc], a
    ld [$bd00], sp
    db $10
    jr @+$12

    inc d
    jr jr_009_76a9

    rrca
    ld l, b
    ld [bc], a
    ld [bc], a
    cp $24
    ld de, $0302
    ld de, $f001
    ldh a, [$ff91]
    ei

jr_009_76a9:
    ld de, $1811
    db $10
    jr nz, @+$22

    ld hl, $c120
    rst RST_38
    ld b, c
    add a
    add e
    ld c, $0c
    add d
    ld [bc], a
    add d
    cp $42
    db $10
    add [hl]
    add d
    add [hl]
    add [hl]
    adc [hl]
    inc b
    inc c
    push af
    ld [$1118], sp
    ld de, $1231
    db $10
    db $10
    jr nc, jr_009_76e0

    ld a, e
    ld d, b
    jr nc, jr_009_7702

    ld bc, $0080
    rst RST_38
    rst RST_38
    ld [hl], b
    add hl, bc
    rst RST_20
    rlca
    rlca
    dec b
    ld a, d

jr_009_76e0:
    inc bc
    ld a, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add d
    or a
    ld [bc], a
    jp nz, $8cc2

    dec b
    ld bc, $9c01
    ld bc, $fe18
    sub d
    db $10
    db $10
    jr jr_009_7707

    jr nc, @-$0e

    ld h, b
    and b
    db $dd
    ret nz

jr_009_76fd:
    ld h, b
    add hl, bc
    ld [bc], a
    ld b, $0c

jr_009_7702:
    ld l, a
    nop
    add a
    add [hl]
    sub e

jr_009_7707:
    add c
    add e
    adc $00
    adc $00
    inc bc
    cp e
    nop
    adc [hl]
    nop
    ld b, $fd
    ld b, $4b
    db $10
    jr @+$12

    or b
    ld h, b
    ret nz

    ldh [$ff73], a
    ld b, b
    add b
    ld [$ea01], a
    ld bc, $4343
    ld b, h
    jp c, $fb10

    ld b, e
    ld b, e
    ret nc

    dec d
    ret nz

    ret nz

    ldh [$ff60], a
    ld d, b
    sub a
    ld d, b
    add b
    add b
    ld l, b
    nop
    ld [bc], a

jr_009_773a:
    ld a, [hl]
    rlca
    cp $07
    nop
    ld h, e
    nop
    add l
    ld a, [bc]
    jr nz, jr_009_77a6

    db $10
    xor d
    nop
    ld hl, sp-$08
    cp $19
    ld e, [hl]
    ld [hl], h
    dec b
    inc c
    inc b
    sbc b
    ld [$0bee], sp
    add b
    inc a
    jr nz, jr_009_779b

    xor d
    rlca
    add hl, bc
    ld c, d
    jr nz, jr_009_76fd

    add hl, bc
    ld [$f201], a
    dec bc
    ld [bc], a
    di
    jr jr_009_77ce

    ld a, b
    inc bc
    ccf
    ccf
    ldh a, [c]
    dec bc
    ld l, $0b
    db $fc
    db $fc
    or d
    ld a, [bc]
    cp h
    cp l
    inc de
    xor d
    ld [bc], a
    jr nz, jr_009_779b

    cp $fe
    or [hl]
    ld hl, $9d22
    ld [hl+], a
    xor d
    rlca
    ccf
    ccf
    ld [hl+], a
    call z, Call_009_5420
    add hl, bc
    db $10
    rst RST_30
    db $10
    rla
    rla
    xor d
    add hl, bc
    cp $7e
    or h
    ret c

    ld e, [hl]
    ld b, b
    dec bc
    rst RST_38
    rst RST_38

jr_009_779b:
    cp $fe
    sub d
    inc de

jr_009_779f:
    jr nc, jr_009_773a

    db $10
    ld [hl], a
    ldh [$ff60], a
    ret nz

jr_009_77a6:
    rst RST_08
    nop
    jr nc, @+$22

    ccf
    ld c, a
    ld [$01ed], sp
    db $fd
    nop
    pop hl
    pop hl
    ld [hl+], a
    inc de
    rrca
    rrca
    add hl, bc
    db $fd
    ld b, $3d
    ld hl, $0808
    inc c
    ld [$0404], sp
    rst RST_28
    cp [hl]
    ld a, h
    jp c, $fce2

    ld hl, $0808
    ld a, [hl+]
    ld a, a
    ld a, [hl+]

jr_009_77ce:
    ld l, c
    add hl, hl
    ld c, c
    ld c, b
    ret z

    adc b
    sbc h
    ld bc, $803f
    add b
    inc c
    ld [$070f], sp
    ld a, [hl-]
    daa
    sub d
    db $10
    rst RST_00
    jr jr_009_784c

    ld l, b
    ld c, d
    inc sp
    sbc h
    ld bc, $037a
    inc c
    inc b
    ei
    ld [$c60c], sp
    ld de, $2121
    jr nz, jr_009_7816

    inc hl
    ei
    inc hl
    jr nz, @-$7a

    ld [hl-], a
    ld h, b
    jr nz, jr_009_779f

    ld h, b
    ret nz

jr_009_7801:
    cp $9f
    db $10
    cp $fe
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld b, $de
    jr z, jr_009_782e

    ld e, b
    jr c, jr_009_7801

    ldh [$ffbe], a
    ld de, $e3e3

jr_009_7816:
    rst RST_08
    nop
    nop
    rlca
    rlca
    cp $03
    cp h
    ld hl, $fefe
    rst RST_38
    inc b
    inc b
    rst RST_38
    rst RST_38
    inc b
    inc b
    sbc h
    sub h
    di
    ld [$ca08], sp

jr_009_782e:
    inc hl
    jp z, Jump_009_6223

    ld b, d
    ld b, d
    ld b, d
    or $da
    ld hl, $1010
    ret nc

    inc sp
    db $10
    db $10
    ld [hl], b
    ld [hl], b
    rst RST_38
    ld [hl-], a
    ld [hl+], a
    ld a, [hl+]
    ld l, d
    ld l, b
    ld c, b
    ret nz

    ld b, b
    rst RST_38
    ldh [rLCDC], a

jr_009_784c:
    ld b, b
    ld h, b
    ld l, b
    jr nc, jr_009_788d

    inc e
    rst RST_18
    ld [bc], a
    ld [bc], a
    ld e, $0e
    ld [de], a
    db $f4
    jr nc, jr_009_7879

    ld c, $3f
    inc b
    ld b, $0e
    inc b
    inc e
    jr @+$22

    rrca
    or b
    inc c
    ld e, $aa
    ld [$3f7f], sp
    ret c

    db $ec
    ld b, b
    add hl, bc
    sub [hl]
    ld sp, $07aa
    cp a
    db $10
    db $10
    cp $fe

jr_009_7879:
    db $10
    db $10
    ld [hl+], a
    ld c, b
    ld a, a
    ldh a, [$ffda]
    ld de, $4904
    call z, Call_009_792b
    ld c, a
    rlca
    rlca
    ld a, e
    ld a, c
    inc l

jr_009_788c:
    inc d

jr_009_788d:
    add hl, bc
    ld l, $0b
    cp $fe
    ld e, d
    dec hl
    ld bc, $40ba
    ld a, [hl]
    dec hl
    rrca
    inc b
    inc b
    call nz, $1ac4
    dec l
    cp b
    ld [bc], a
    sub a
    jr nc, @-$38

    ld de, $20ef
    jr nc, jr_009_78ea

    ld h, b
    ld a, d
    ld b, c
    ret nz

    ld b, b
    ld h, b
    rst RST_38
    jr nz, jr_009_78e3

    db $10
    jr jr_009_78be

    inc b
    inc c
    ld [bc], a
    adc l
    ld b, $7a
    ld b, l
    inc c

jr_009_78be:
    inc c
    db $f4
    ld sp, $11ae
    inc l
    dec bc
    add hl, de
    rst RST_38
    ld de, $3515
    inc [hl]
    inc h
    ld h, b
    jr nz, jr_009_793f

    rst RST_38
    jr nz, jr_009_78f2

    jr nc, @+$36

    jr jr_009_78f4

    ld c, $0c
    rst RST_18
    inc b
    inc c
    inc c
    inc d
    inc d
    ld [hl], l
    dec d
    dec b
    dec b
    rst RST_28

jr_009_78e3:
    cp $fe
    sub d
    sub d
    ld c, h
    ld b, c
    ld d, b

jr_009_78ea:
    ld d, b
    jr nc, jr_009_788c

    jr nz, @+$5a

    ld e, b
    add [hl]
    add [hl]

jr_009_78f2:
    ld e, d
    ld b, e

jr_009_78f4:
    ld e, d
    ld b, e
    call nz, $84df
    add h
    add h
    ldh [c], a
    ldh [c], a
    call z, $e221
    ldh [c], a
    ccf
    inc hl
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld hl, $2e21
    rlca
    jr z, jr_009_7931

    ld a, b
    ld l, h
    ld hl, $017a
    sbc b
    jr nc, jr_009_791a

    rlca
    ld [bc], a
    inc bc
    rla
    inc l
    rst RST_38

jr_009_791a:
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld a, b
    ld [hl], b
    ld e, h
    ld c, h
    add $d0

jr_009_7924:
    dec d
    ld b, b
    ld b, b
    cp d
    ld b, b
    dec e
    nop

Call_009_792b:
    inc [hl]
    ld de, $2020
    cp a
    db $10

jr_009_7931:
    db $10
    rrca
    rrca
    inc b
    inc b
    ld e, l
    ld d, b
    add h
    rst RST_28
    call nz, Call_009_44c4
    ld b, h
    add hl, hl

jr_009_793f:
    db $10
    ld [bc], a
    add c
    add c
    xor h
    ld a, [hl]
    ld de, $53d2
    add d
    add d
    adc $01
    and b
    db $f4
    ld b, d
    jr @-$3f

    db $10
    inc c
    ld [$0406], sp
    inc bc
    adc a
    nop
    dec b
    cp $e4
    ld b, d
    jr @+$0a

    jr nc, jr_009_7971

    ld h, b
    jr nz, jr_009_7924

    add [hl]
    ld e, l
    jr nz, jr_009_79e6

    ld a, [hl]
    ld a, d
    ld c, a
    xor d
    db $10
    ld d, $66
    db $10
    inc hl

jr_009_7971:
    ld d, $b3
    ld c, $05
    cp l
    nop
    cp a
    dec b
    rra
    rra
    jr @+$13

    sub b
    rra
    sub b
    ret nc

    sub b
    ld d, b
    ret nc

    db $10
    inc hl
    ld a, [de]
    dec l
    ld [hl], l
    rla
    ld a, [$5304]
    ld e, $09
    ld d, b
    inc sp
    ld [de], a
    ld hl, $7333
    ld sp, $4621
    ld b, e
    sub a
    db $10
    dec [hl]
    ld sp, $8e0c
    ld a, a
    ld [bc], a
    sub h
    inc sp
    nop
    halt
    inc sp
    jr c, @+$27

    sub h
    ld h, l
    and $05
    ret nc

    dec d
    ld d, $67
    add hl, hl
    db $10
    cp a
    inc b
    cp [hl]
    cp a
    nop
    ld bc, $0305
    ld d, $0e
    ld b, h
    ld h, c
    rst RST_18
    rrca
    ld e, a
    ld d, b
    ret nc

    ret nc

    ld a, [bc]
    db $10
    jr jr_009_79d9

    ld c, [hl]
    ld bc, $015e
    adc $26
    inc de
    inc bc
    ld bc, $45f9
    ld h, b
    ld [hl], b
    dec [hl]
    add h
    dec c
    rst RST_28

jr_009_79d9:
    db $fd
    sbc c
    ld l, c
    pop af
    jp c, Jump_009_6100

    ld h, c
    ld b, b
    rst RST_30
    ld a, a
    rst RST_38
    ret nz

jr_009_79e6:
    inc a
    ld h, $84

jr_009_79e9:
    add [hl]
    add [hl]
    add d
    ld a, a
    add e
    jp nz, Jump_009_43c1

    ld b, c
    ld h, c
    ld h, b
    ld a, a
    jr nc, jr_009_79e9

    ld h, b
    nop
    jr @-$65

    db $10
    db $eb
    ld b, b
    ldh [rNR41], a
    nop
    ldh [$fffc], a
    adc [hl]
    ld sp, $6394
    ret nz

    add b
    ld h, c
    ret nz

    ld l, l
    ld [hl], e
    dec de
    ccf
    ld e, $a2
    ld h, l
    ret nz

    ld b, b
    dec [hl]
    ld [hl], b
    rst RST_08
    ld a, [bc]
    ld d, a
    ld a, a
    nop
    ld l, c
    ld a, a
    ld a, e
    ld a, a
    adc l
    ld a, a
    sbc a
    ld a, a
    or c
    ld a, a
    jp $d57f


    ld a, a
    rst RST_20
    ld a, a
    nop
    ld sp, hl
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_009_7ac5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_009_7c01:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_009_7c83:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_009_7e3d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_009_7f12:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
