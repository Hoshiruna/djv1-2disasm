; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03f", ROMX[$4000], BANK[$3f]

    jr nz, jr_03f_4042

    ld [hl], e
    ld b, d
    ld a, l
    ld b, l
    ld b, d
    ld c, b
    ld a, [hl]
    ld c, d
    add [hl]
    ld c, h
    ld d, h
    ld c, a
    jr nc, jr_03f_4061

    ei
    ld d, h
    dec a
    ld e, b
    ld d, b
    ld e, d
    or e
    ld e, e
    or h
    ld e, e
    or l
    ld e, e
    or [hl]
    ld e, e
    or a
    ld e, e
    db $10
    ld b, b
    rla
    ld b, b
    inc c
    ld [bc], a
    ld bc, $1f5d
    or a
    and [hl]
    ld b, [hl]
    rla
    nop
    dec b
    ld [hl-], a
    add b
    rla
    nop
    inc bc
    ld bc, $6311
    ld bc, $4000
    nop
    add b
    ret z

    ret nz

    ldh [$ffc0], a
    jr nc, jr_03f_4052

jr_03f_4042:
    jr jr_03f_405f

    rrca
    dec bc
    ld [$1708], sp
    nop
    ld [bc], a
    ld c, $9f
    ld c, $04
    ld [bc], a
    inc e
    inc c

jr_03f_4052:
    inc d
    inc c
    ld b, $06
    ld a, [bc]
    dec sp
    ld l, d
    ld h, c
    ld a, a
    ld l, d
    jr nc, jr_03f_407e

    nop

jr_03f_405f:
    nop
    db $fc

jr_03f_4061:
    cp $fc
    cp h
    rra
    rlca
    nop
    nop
    dec c
    rla
    nop
    ld [bc], a
    ld h, b
    ldh a, [rNR41]
    rla
    nop
    add hl, bc
    ld bc, $180f
    rra
    scf
    cpl
    dec sp
    ccf
    rst RST_18
    ccf
    ldh a, [$ffc7]

jr_03f_407e:
    cp h
    ldh a, [rIE]
    nop
    ldh [$fff8], a
    jr @-$16

    add [hl]
    ei
    sbc c
    rrca
    dec c
    inc c
    ld c, $0e
    rra
    rra
    dec d
    inc sp
    xor b
    or b
    rst RST_38
    rst RST_30
    ld l, [hl]
    ld [hl], a
    ld [hl], $fb
    ld a, e
    dec e
    db $fd
    ld [hl], a
    db $ed
    ld a, $a8
    ldh a, [$fff0]
    add sp, -$18
    ld hl, sp-$48
    ld hl, sp-$08
    dec d
    ld de, $3939
    dec l
    rla
    cpl
    ld [bc], a
    ld a, $60
    ld [hl], e
    dec hl
    xor a
    or [hl]
    sbc e
    push de
    ld h, l
    rst RST_28
    ld h, a
    sbc c
    cp $0e
    dec bc
    rst RST_38
    ld l, b
    ld a, b
    ldh a, [$ffd0]
    or b
    ldh [$ffa4], a
    inc l
    ld [hl], a
    ld [hl], e
    cp c
    cp l
    ld a, a
    ld b, a
    db $fc
    rlca
    ld [$fcf9], a
    sbc h
    cp h
    inc a
    ld a, b
    ldh [$ffef], a
    db $fd
    add hl, de
    ld l, c
    ld l, b
    add h
    db $d3
    ld d, c
    inc d
    add h
    db $fc
    jp hl


    xor a
    db $fc
    ldh [rNR22], a
    nop
    or b
    db $10
    jr z, jr_03f_4126

    jr c, jr_03f_412c

    ld a, [hl-]
    ld [hl], c
    cp d
    rst RST_38
    rst RST_38
    ld a, a
    ld a, [hl]
    ld a, $1d
    dec e
    rra
    add b
    rla
    ld b, b
    ld [bc], a
    add b
    add b
    rla
    nop
    inc b
    rla
    ld bc, $0002
    inc bc
    rla
    nop
    dec b
    ld bc, $001d
    rlca
    dec b
    rra
    dec de
    ld [hl], a
    ld e, a
    ld a, a
    rla
    ld bc, $0202
    ld bc, $f70a
    dec c
    rla
    ld [bc], a
    inc bc
    ld bc, $1e07
    db $eb
    ei

jr_03f_4126:
    rst RST_30
    rst RST_28
    rst RST_18
    cp a
    ld a, a
    rst RST_38

jr_03f_412c:
    rst RST_38
    ld bc, $0001
    inc bc
    inc bc
    ld b, $1d
    db $db
    rla
    nop
    inc bc
    ld bc, $0201
    dec c
    rla
    nop
    dec b
    inc bc
    ld [bc], a
    nop
    nop
    cp $fd
    rst RST_18
    and c
    cp $17
    nop
    jr jr_03f_415c

    inc a
    ld a, [hl]
    ld [hl+], a
    ldh [rLCDC], a
    ld b, c
    ld bc, $0017
    dec b
    dec c
    ld a, a
    nop
    ld bc, $0703

jr_03f_415c:
    ld c, $0a
    sub h
    ld a, [hl]
    nop
    add b
    ldh [rSVBK], a
    jr nc, @+$3a

    jr jr_03f_4178

    ld c, $0f
    rlca
    inc b
    ld bc, $0704
    rlca
    or b
    ld e, l
    rst RST_38
    pop af
    ld h, d
    sub c
    ld a, [bc]
    ld e, l

jr_03f_4178:
    ldh [$ff30], a
    xor b
    ldh a, [c]
    ld hl, sp+$38
    dec [hl]
    ld b, h
    ld bc, $001e
    dec d
    rrca
    ld a, [de]
    jr z, @+$04

    ld [hl], e
    ld sp, $4303
    ldh [$fff8], a
    ld e, a
    adc c
    ldh a, [c]
    rst RST_38
    rst RST_38
    ei
    sub l
    ld a, [bc]
    ret c

    inc [hl]
    add b
    ldh [$ffc0], a
    ld l, b
    ret nz

    jr nz, jr_03f_41df

    sub b
    nop
    nop
    ld bc, $000f
    add hl, de
    ld d, $04
    nop
    ld sp, $1fc6
    ld a, b
    jp $0e7f


    rla
    nop
    ld [bc], a
    ldh a, [rSVBK]
    ld hl, sp+$0e
    ld h, [hl]
    inc b
    ld b, $03
    inc bc
    ld bc, $0808
    ld a, [bc]
    rst RST_08
    ld e, b
    ld d, b
    rra
    jr @-$67

    sbc b
    call c, Call_03f_7cfc
    ld e, $fe
    ld hl, sp+$76
    and c
    inc sp
    add b
    nop
    jr nc, jr_03f_4204

    db $10
    ld d, b
    ld b, b
    ld b, b
    rrca
    rrca
    rra
    ld d, $16
    ld [de], a
    inc de

jr_03f_41df:
    db $10
    rst RST_18
    sub e
    adc e
    rst RST_18
    ld e, a
    ld c, a
    ld h, a
    dec hl
    cp $fe
    cp [hl]
    cp $fc
    db $fc
    cp h
    ld hl, sp-$70
    sub b
    add b
    and b
    ld h, b
    ld b, b
    ret nz

    ret nz

    jr c, @+$0f

    rrca
    rlca
    ld h, $3c
    rlca
    nop
    sub l
    add [hl]
    inc bc
    ld h, c

jr_03f_4204:
    ld h, b
    ldh a, [c]
    add $15
    ldh a, [rSC]
    and $f6
    rst RST_30
    ei
    db $fc
    ld d, h
    add sp, -$08
    jr nc, jr_03f_4224

    ret nc

    ld b, b
    rla
    nop
    or d
    rla
    db $10
    inc bc
    inc d
    ld e, $5f
    ld e, a
    ld a, a
    ccf
    ccf
    rra

jr_03f_4224:
    ld c, $0e
    nop
    nop
    rla
    add b
    ld [bc], a
    rla
    nop
    ld b, $17
    ld bc, $0203
    rla
    nop
    dec b
    ld bc, $031e
    dec b
    dec sp
    inc hl
    daa
    ld c, a
    cp a
    rst RST_38
    rla
    ld bc, $0302
    ld [bc], a
    dec c
    ld sp, hl
    di
    rla
    inc bc
    inc bc
    ld [bc], a
    inc b
    add hl, de
    rst RST_30
    rlca
    rrca
    rra
    ccf
    ld a, a
    rla
    rst RST_38
    ld [bc], a
    rla
    ld bc, $0202
    inc c
    add hl, bc
    inc de
    rst RST_20
    rla
    nop
    inc bc
    ld bc, $0301
    rrca
    rla
    nop
    dec b
    inc bc
    inc bc
    rla
    nop
    ld [bc], a
    ld e, [hl]
    ld a, [hl]
    ld e, [hl]
    rla
    nop
    add hl, de
    stop
    add hl, bc
    ld b, b
    add hl, bc
    nop
    ld [bc], a
    ld bc, $0203
    dec b
    rlca
    nop
    ld a, a
    rst RST_38
    add a
    ld a, b
    cp $bd
    ld a, a
    nop
    nop
    ret nz

    ldh [$fff0], a
    ld a, b
    cp b
    ld e, h
    add hl, bc
    nop
    inc bc
    ld hl, $3b31
    dec d
    ld c, e
    ld c, a
    ld c, a
    add hl, bc
    ld h, a
    ld [bc], a
    ld [hl], h
    ld [hl], h
    adc $d6
    sbc $df
    rst RST_18
    add hl, bc
    sbc a
    ld [bc], a
    ld h, a
    ld l, a
    add hl, bc
    cpl
    ld [bc], a
    add hl, bc
    dec l
    ld [bc], a
    add hl, bc
    ret nz

    rlca
    nop
    jr jr_03f_42e0

    inc a
    ld e, h
    ld a, [hl]
    ld a, a
    cp l
    cp c
    add hl, bc
    db $fc
    inc b
    ld hl, sp-$48
    ld hl, sp-$10
    add hl, bc
    ld [hl], b
    inc bc
    ldh a, [$ffe0]
    cp b
    or c
    or c
    sub c
    add e
    adc a
    ld a, a
    nop
    ldh [$ff09], a
    ret nz

    ld [bc], a
    add b
    add b
    nop
    nop
    ld a, [hl]
    ld c, d
    inc a
    ld h, d
    ld e, [hl]
    ld e, [hl]
    ld h, d
    inc a
    add hl, bc
    nop

jr_03f_42e0:
    inc b
    ld a, b
    adc h
    ld hl, sp-$7c
    add h
    ld hl, sp+$09
    nop
    inc b
    ld b, $04
    dec b
    dec bc
    dec bc
    rla
    jr c, @+$39

    add hl, bc
    rst RST_38
    ld [bc], a
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld [hl], c
    xor [hl]
    rst RST_18
    xor $fc
    db $f4
    cp h
    sbc d
    sbc [hl]
    call c, Call_03f_7e36
    ld [de], a
    ld [bc], a
    ld b, $02
    nop
    ld [hl], h
    ld h, a
    ld l, a
    rst RST_28
    rst RST_38
    rst RST_38
    call nc, $9fd3
    add hl, bc
    rst RST_38
    ld [bc], a
    db $fd
    cp $0e
    ldh a, [$ff2e]
    cp [hl]
    rst RST_18
    rst RST_38
    rst RST_38
    or a
    daa
    cpl
    add b
    add b
    ld b, b
    ld b, b
    and b
    add hl, bc
    ldh [rSC], a
    add hl, bc
    dec e
    ld [bc], a
    jr jr_03f_4359

    ld a, [hl-]
    inc a
    inc [hl]
    jr nz, jr_03f_4354

    db $10
    add hl, bc
    sub b
    inc b
    nop
    ld e, $7b
    push hl
    add l
    add l

Jump_03f_433e:
    ld e, $a0
    add hl, bc
    nop
    rrca
    db $fc
    adc h
    add h
    add h
    ld hl, sp+$09
    nop
    dec b
    ld a, b
    adc h
    ld hl, sp-$04
    adc h
    add hl, bc
    nop
    rlca
    ld a, a

jr_03f_4354:
    ld e, a
    ld e, a
    adc [hl]
    sbc d
    cp d

jr_03f_4359:
    cp e
    ld sp, hl
    or c
    pop hl
    ld a, c
    inc c
    db $e4
    or $db
    ret


    call $cecf
    rst RST_20
    db $e3
    db $e3
    pop af
    di
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ret nz

    and b
    adc $cc
    adc $8b
    adc a
    sbc [hl]
    sbc [hl]
    ld a, [hl]
    ld a, [hl]
    daa
    ld c, c
    ld e, h
    add hl, bc
    ld a, [hl]
    inc bc
    cpl
    add hl, bc
    rst RST_28
    ld [bc], a
    rst RST_20
    ld h, [hl]
    ld h, a
    ld h, e
    add hl, bc
    ldh [$ff03], a
    ldh a, [rSVBK]
    ld l, b
    cp b
    inc [hl]
    ld d, h
    ld [hl], h
    add hl, bc
    ld a, b
    ld [bc], a
    ld l, b
    ld l, b
    sub b
    sub b
    add hl, bc
    nop
    dec b
    ldh [rLCDC], a
    ld h, b
    ldh a, [$ff98]
    add sp, -$78
    adc b
    rrca
    jr jr_03f_43d9

    inc a
    inc sp
    jr jr_03f_43bc

    nop
    ldh a, [rNR23]
    inc c
    inc [hl]
    call nz, $f008
    add hl, bc
    nop
    ld [bc], a
    rrca
    db $10
    add hl, bc
    ccf

jr_03f_43bc:
    ld [bc], a
    rra
    nop
    nop
    ldh a, [$ff08]
    db $f4
    db $fc
    db $fc
    ld hl, sp+$09
    nop
    rlca
    or c
    cp c
    sbc c
    adc c
    ld c, c
    cp e
    db $eb
    ld l, e
    ret z

    call z, Call_000_09ec
    xor $03
    adc $ff

jr_03f_43d9:
    cp $ff
    rst RST_38
    ld e, l
    ld a, a
    ld l, [hl]
    ld h, e
    ldh [$ff60], a
    ld h, b
    ret nz

    and b
    ldh [$ffc0], a
    ld b, b
    ld a, $3e
    ld [hl], $76
    add hl, bc
    ld a, h
    ld [bc], a
    ld l, h
    add hl, bc
    ld a, [hl]
    inc b
    add hl, bc
    ld a, h
    ld [bc], a
    ld [hl], e
    jr jr_03f_4418

    ld c, $0e
    ld e, $1e
    rra
    db $f4
    call c, $d88c
    or b
    add hl, bc
    ret nz

    ld [bc], a
    ld l, b
    and b
    ret nz

    ret nc

    ret nc

    ret c

    sub h
    cp d
    db $10
    add hl, bc
    nop
    ld [bc], a
    jr nz, jr_03f_4414

jr_03f_4414:
    jr nz, jr_03f_4436

    add b
    add hl, bc

jr_03f_4418:
    nop
    ld [hl-], a
    ld bc, $0201
    add hl, bc
    nop
    ld [bc], a
    ld a, a
    rst RST_38
    add a
    ld bc, $ff7e
    add hl, bc
    nop
    ld [bc], a
    ret nz

    ldh [$fff0], a
    ld [hl], b
    xor b
    add hl, bc
    nop
    ld b, $0a
    scf
    inc sp
    inc sp
    add hl, bc

jr_03f_4436:
    dec sp
    inc b
    rst RST_30
    add hl, bc
    rst RST_28
    ld b, $9f
    sbc a
    add hl, bc
    rst RST_18
    inc b
    sbc $09
    add b
    rlca
    nop
    nop
    jr jr_03f_4461

    add hl, bc
    jr nc, jr_03f_444e

    ld [hl], d
    ld e, [hl]

jr_03f_444e:
    add hl, bc
    ccf
    inc bc
    add hl, bc
    ld a, a
    ld [bc], a
    nop
    nop
    add hl, bc
    add b
    inc bc
    nop
    nop
    ld a, a
    add hl, bc
    ld a, [hl]
    ld [bc], a
    ld a, h
    ld [hl], b

jr_03f_4461:
    add hl, bc
    nop
    ld a, [bc]
    inc a
    nop
    inc e
    inc a
    inc a
    inc e
    ld b, b
    add hl, bc
    nop
    dec b
    ld a, b
    nop
    ld a, b
    ld a, b
    add hl, bc
    nop
    dec b
    ld bc, $0303
    rlca
    rlca
    rrca
    rrca
    ld [$ff09], sp
    rlca
    call nc, $f0e0
    ldh a, [$fff8]
    ld hl, sp-$04
    db $fc
    dec sp
    ld a, c
    ld b, c
    dec e
    dec c
    add hl, bc
    ld bc, $3b02
    jr c, jr_03f_44ca

    ld [hl], a
    add hl, bc
    ld l, a
    ld [bc], a
    ld l, h
    rst RST_28
    rrca
    db $e3
    db $fc
    cp $ff
    rst RST_38
    rrca
    rst RST_18
    rst RST_18
    or a
    and a
    rlca
    ld c, a
    rst RST_18
    rst RST_18
    ld b, b
    ld b, b
    add b
    add b
    add hl, bc
    ret nz

    inc bc
    add hl, bc
    ld c, $03
    inc e
    inc e
    jr jr_03f_44ce

    ret nz

    ret nz

    ldh [$ff09], a
    ld h, b
    inc b
    nop
    nop
    inc e
    ld a, d
    ld a, [$e0fa]
    ld b, b
    add hl, bc
    nop
    db $10
    add hl, bc
    ld a, b
    ld [bc], a

jr_03f_44ca:
    add hl, bc
    nop
    rlca
    ld a, b

jr_03f_44ce:
    nop
    nop
    ld a, b
    add hl, bc
    nop
    ld [$2020], sp
    ld [hl], c
    ld h, l
    ld b, l
    ld b, h
    ld b, $7f
    rra
    add a
    di
    ei
    ld sp, hl
    db $fc
    add hl, bc
    cp $02
    add hl, bc
    rst RST_38
    inc bc
    cp $fd
    add hl, bc
    nop
    inc bc
    add b
    add b
    nop
    ret nz

    ld [hl], c
    ld [hl], e
    ld [hl], e
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    rlca
    add c
    ret c

    cp [hl]
    add hl, bc
    cp a
    inc b
    rst RST_18
    add hl, bc
    rra
    inc bc
    add hl, bc
    sbc a
    ld [bc], a
    add hl, bc
    ret nz

    dec b
    sub b
    ret nc

    jr jr_03f_4545

    jr c, jr_03f_4518

    jr nc, jr_03f_4515

    ld h, b
    ld h, b
    add hl, bc
    nop

jr_03f_4515:
    ld b, $80
    add b

jr_03f_4518:
    add hl, bc
    nop
    dec b
    rlca
    rrca
    inc de
    inc c
    rlca
    add hl, bc
    nop
    ld [bc], a
    ldh [$fff0], a
    ret z

    jr c, jr_03f_4518

    add hl, bc
    nop
    inc b
    rrca
    db $10
    add hl, bc
    nop
    dec b
    ldh a, [$ff08]
    add hl, bc
    nop
    ld a, [bc]
    ld c, [hl]
    ld b, [hl]
    ld h, [hl]
    halt
    ld [hl], $45
    dec d
    dec d
    rst RST_38
    add hl, bc
    rst RST_30
    ld b, $63
    ld e, a
    rra
    dec e

jr_03f_4545:
    cp [hl]
    adc [hl]
    sub a
    sbc a
    ret nz

    ret nz

    add b
    add b
    ld b, b
    nop
    nop
    add b
    rlca
    rlca
    add hl, bc
    rrca
    inc b
    rra
    add hl, bc
    cp a
    rlca
    adc a
    rst RST_20
    ldh [$fff1], a
    pop af
    add hl, bc
    pop hl
    ld [bc], a
    ret c

    jr c, jr_03f_45dd

    jr nc, jr_03f_4567

jr_03f_4567:
    add hl, bc
    add b
    ld [bc], a
    jr nc, @+$72

    ld [hl], b
    add hl, bc
    ld h, b
    ld [bc], a
    ld a, b
    ld e, h
    nop
    jr nz, jr_03f_4575

jr_03f_4575:
    nop
    ld b, b
    nop
    ld b, b
    ld b, b
    add hl, bc
    nop
    cpl

jr_03f_457d:
    inc e
    nop
    ld b, b
    db $fd
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0304
    rst RST_38
    ld [$0807], sp
    rlca
    db $10
    rrca
    ccf
    nop

jr_03f_4593:
    rst RST_38
    jp $833c


    ld a, h
    add a
    ld a, h
    adc a
    ld a, h
    rst RST_38
    ld e, a
    cp h
    ld c, a
    cp b
    ld h, a
    sbc b
    add b
    nop
    ld a, a
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    daa
    nop
    ld [hl], l
    cp $2b
    nop
    jr jr_03f_45c0

    nop
    ld b, $01
    inc bc
    inc bc

jr_03f_45ba:
    nop
    cp $39
    inc bc
    ld e, [hl]
    cp c

jr_03f_45c0:
    cp h
    ld a, e
    or h
    ld a, e
    inc c
    rst RST_28
    ei
    sub l
    ld a, d
    ld a, [hl]
    add hl, sp
    ld [bc], a
    ld a, b
    add b
    jr nc, @+$41

    ret nz

    jr nz, jr_03f_4593

    ld b, b
    add b
    add b
    add hl, sp
    inc b
    nop
    dec bc
    rst RST_38
    ld e, $01

jr_03f_45dd:
    ccf
    nop
    rst RST_18
    jr nz, jr_03f_4601

    ldh [rIE], a
    ccf
    ldh [$ff7f], a
    ret nz

    rst RST_38
    ret nz

    ld a, a
    ret nz

    ei
    ccf
    ret nz

    jr nz, jr_03f_45f2

    ret nc

jr_03f_45f2:
    jr nz, @-$36

    jr nc, jr_03f_45ba

    ld a, a
    jr c, jr_03f_457d

    ld a, b
    adc [hl]
    ld a, h
    sbc [hl]
    ld a, h
    nop
    nop
    ccf

jr_03f_4601:
    ret nz

    jr jr_03f_4624

    ld c, $00
    ld [bc], a
    inc bc
    nop
    jr c, jr_03f_4610

    ld a, [hl]
    add hl, sp
    inc bc
    jr jr_03f_4610

jr_03f_4610:
    ld h, c
    nop
    add c
    ld b, c
    add hl, sp
    ld [bc], a
    rst RST_38
    ld [$0800], sp
    ld [$1000], sp
    nop
    jr nc, jr_03f_469f

    nop
    ldh [rLCDC], a
    db $10

jr_03f_4624:
    inc c
    ld h, b
    nop
    ld e, b
    add hl, bc
    cp $5e
    dec b
    ld b, $01
    add hl, bc
    ld b, $17
    ld [$fe1f], sp
    add hl, sp
    inc b
    ldh a, [rP1]
    inc c
    ldh a, [$fff6]
    inc c
    rst RST_38
    ei
    ld [bc], a
    rst RST_38
    push bc
    ld c, $21
    rra
    inc hl
    rra
    ld h, a
    rst RST_38
    rra
    ld [hl], d
    rrca
    db $fc
    inc bc
    cp $01
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_18
    and b
    rst RST_38
    add b
    ld a, a
    rst RST_38
    ret nz

    cp a
    ret nz

    sbc a
    ldh [rIF], a
    ldh a, [rIF]
    or a
    ldh a, [$ffcf]
    jr nc, jr_03f_468f

    ld bc, $04fa
    inc h
    ld de, $7ffe
    inc b
    db $fd
    ld c, $f1
    ld c, $c0
    nop
    jr nc, jr_03f_468e

    sub l
    add b
    jp Jump_000_3e00


    ld l, a
    nop
    ld a, a
    ld b, e
    db $10
    inc c
    ld de, $379f
    ld h, b
    adc a
    ld [hl], b
    inc c
    ld de, $01fe
    ld d, h
    inc de

jr_03f_468e:
    inc c

jr_03f_468f:
    ld de, $74ff
    ld hl, sp+$6c
    ld hl, sp+$56
    ld hl, sp-$72
    ldh a, [$ff6f]
    ld a, $c0
    ld a, [hl]
    add b
    inc c

jr_03f_469f:
    ld de, $7c83
    ld [hl], b
    ld de, $86ff
    ld a, c
    adc h
    ld [hl], e
    sub b
    ld l, a
    ld h, c
    rra
    db $d3
    ld b, e
    ccf
    ld c, $10
    ld [hl], e
    nop
    rra
    ld [hl], a
    ld [bc], a
    rst RST_38
    add b
    cp l
    rst RST_38
    ld e, b
    ld [bc], a
    rra
    ldh [$ff03], a
    ld [bc], a
    ld e, c
    dec b
    ld [$00ff], sp
    inc c
    nop
    ld c, $08
    rst RST_00
    ld [bc], a
    ret z

    rst RST_28
    add h
    ld l, b
    ld b, b
    ld e, $d5
    inc bc
    inc b
    jr c, jr_03f_46d7

jr_03f_46d7:
    rst RST_38
    ld c, b
    nop
    ret z

    nop
    ld a, e
    ld b, b
    inc h
    nop
    db $fd
    add $39
    ld [bc], a
    add b
    nop
    ld b, c
    nop
    sbc [hl]
    ld b, b
    rst RST_18
    ld c, $06
    ld [$1800], sp
    db $dd
    nop
    rra
    nop
    rra
    rrca
    nop
    rlca
    nop
    inc bc
    add hl, sp
    inc b
    ld d, b
    ld [de], a
    daa
    nop
    pop af
    ld hl, sp-$3b
    ld c, $da
    rla
    inc c
    ld de, $3cc3
    pop bc
    ld a, $ff
    ld h, a
    jr jr_03f_478f

jr_03f_4710:
    nop
    di
    inc c
    ei
    inc b
    inc a
    nop
    dec h
    inc c
    ld de, $0ef1
    rst RST_30
    ld [$2714], sp
    ld a, [bc]
    inc de
    sbc $00
    dec h
    sbc a
    ld h, b
    rst RST_00
    jr c, jr_03f_475a

    dec e
    adc [hl]
    ld a, a
    rst RST_38
    add l
    ld a, [hl]
    ld b, c
    ld a, $43
    inc a
    inc hl
    inc e
    ld a, [$2158]
    rla
    inc hl
    jr z, @+$01

    nop
    rst RST_30
    ld [$fff3], sp
    inc c
    add a
    ld a, h
    adc $3c
    sbc $3c
    xor $f7
    inc e
    db $f4
    ld [$0128], sp
    ld hl, sp+$00
    dec bc
    inc b
    cp h
    sub $11
    sbc h
    dec bc
    nop

jr_03f_475a:
    nop
    inc bc
    inc b
    or h
    nop
    db $10
    rst RST_30
    nop
    jr nz, jr_03f_4764

jr_03f_4764:
    sub a
    nop
    inc c
    ld [$2018], sp
    db $fd
    db $e4
    sub a
    inc b
    inc bc
    ld [bc], a
    rst RST_08
    add [hl]
    ld a, c
    ld b, c
    rst RST_38
    ld l, h
    ld c, b
    ld b, d
    inc b
    pop bc
    nop
    and b
    db $10
    rst RST_38
    jr jr_03f_4710

    rlca
    nop
    sub b
    nop
    and b
    sub b
    rst RST_38
    stop
    inc a
    db $10
    ld b, e
    add l
    pop bc
    ld b, d

jr_03f_478f:
    db $fc
    ld e, b
    nop
    ld e, b
    ld [bc], a
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    cp a
    db $10
    rrca
    jr jr_03f_47a6

    rla
    ld [$0100], sp
    ld hl, sp-$01
    nop

jr_03f_47a6:
    ld e, $f8
    rlca
    cp $e3
    ld e, $03
    and e

jr_03f_47ae:
    db $fc
    rst RST_38
    sub a
    ld d, $f8
    add hl, de
    ld b, h
    ld de, $073f
    jr nc, jr_03f_47f8

    rst RST_30
    ld bc, $031c
    nop
    inc hl
    ei
    inc b
    ei
    inc b
    rst RST_38
    di
    inc c
    rst RST_20
    inc e
    ld l, [hl]
    sbc l
    di
    inc c
    cp a
    and $1c
    or $0c
    ldh a, [c]
    inc c
    ld a, b
    inc hl

jr_03f_47d6:
    ld a, b
    rst RST_38
    add b
    ld sp, hl
    ld b, $fb
    rlca
    rst RST_30
    rrca
    ldh [c], a
    ldh a, [c]
    add h
    db $10
    ccf
    add hl, sp
    ld [bc], a
    and $11
    ld [hl], b
    add b
    ld h, b
    add b
    ld a, l
    ret nz

    reti


    ld d, $c3
    ld a, [hl]
    and l
    ld a, [hl]
    sbc c
    ld d, l
    jr nc, jr_03f_4807

jr_03f_47f8:
    and l
    ld a, [hl]
    jp Jump_000_047e


    ld [hl+], a
    ld d, e
    ccf
    ld h, l

jr_03f_4801:
    ccf
    ld [hl], a
    ld [hl], $7e
    ld e, c
    rlca

jr_03f_4807:
    ret nz

    ld b, b
    ld h, b
    add b
    nop
    jr c, jr_03f_47ae

    jr nz, jr_03f_4801

    nop
    sbc d
    ld [hl+], a
    sbc l
    jr nz, jr_03f_47d6

    inc de
    add b
    nop
    ld b, b
    nop
    ldh a, [c]
    or e
    jr nc, @+$22

    cp c
    nop
    nop
    nop
    ld a, [hl]
    nop
    rst RST_00
    nop
    rst RST_38
    rst RST_38
    inc b
    add a
    inc a
    add l
    ld a, [hl]
    add l
    ld a, [hl]
    ld a, a
    ld c, d
    inc a
    ld a, [hl]
    ld [$0718], sp
    rrca
    sbc l
    ld a, [bc]
    rlca
    dec bc
    db $fc
    db $fc
    xor $1f
    db $f4
    jr c, jr_03f_485f

    nop
    ld b, b
    ei
    rst RST_38
    nop
    nop
    dec bc
    nop
    nop
    ld bc, $0400
    rst RST_38
    inc bc
    dec b
    ld c, $16
    ld [$1038], sp
    ld [hl], b
    rst RST_38
    jr nz, jr_03f_48ab

    jr nz, jr_03f_489d

    ccf
    sbc h

jr_03f_485f:
    ld a, a
    cp a
    di
    ret nz

    ret nz

    rrca
    nop
    daa
    inc bc
    ld b, b
    add b
    ret nz

    ldh a, [rIE]
    or b
    ld a, b
    ld l, h
    jr jr_03f_4888

    inc c
    ld a, [bc]
    inc b
    rst RST_08
    rlca
    ld [bc], a
    dec b
    ld [bc], a
    daa
    ld b, $27
    inc b
    ldh a, [$ffe0]
    xor a
    ldh a, [$ff60]
    ldh a, [rNR41]
    ld d, h
    nop
    nop

jr_03f_4888:
    ld e, b
    ld bc, $fdb0
    ld b, b
    daa
    ld bc, $0006
    dec d
    ld c, $2d
    ld e, $bf
    dec sp
    inc e
    db $10
    inc a
    inc bc
    inc c
    daa

jr_03f_489d:
    ld bc, $ff88
    nop
    inc a
    nop
    jp z, $9c3c

    ld a, [hl]
    adc $ff
    cp h
    cp h

jr_03f_48ab:
    ld b, b
    ld c, c
    ld a, [$e221]
    db $dd
    rst RST_38
    sbc $2f
    ld a, $5e
    ld a, a
    ld l, [hl]
    ccf
    pop af
    rst RST_38
    adc $3f
    pop de
    ld a, [de]
    ld a, $1a
    ld a, $16
    ei
    ld [hl], $02
    ccf
    ld b, $01
    nop
    ld [bc], a
    ld bc, $ff05
    inc bc
    dec bc
    rlca
    rla
    ld c, $2e
    rra
    ld e, l
    cp a
    ccf
    sbc [hl]
    ld a, e
    nop
    nop
    add b
    cpl
    nop
    and b
    rst RST_38
    ret nz

    ret nc

    ldh [$ffe8], a
    ld [hl], b
    or h
    ld hl, sp-$06
    cp l
    call c, $0527
    ld [$070f], sp
    ld [$0d40], sp
    ld bc, $01c9
    ld de, $4000

jr_03f_48f9:
    add hl, bc
    rst RST_38
    ld c, $01
    ld b, b
    ld [$fcfc], sp
    ld a, $40
    dec c
    nop
    ldh [rLCDC], a
    and b
    ld b, b
    ld e, a
    ld [bc], a
    daa
    inc b
    cp $3f
    dec c
    jr nc, jr_03f_4912

jr_03f_4912:
    ld hl, sp-$50
    ret z

    jr nc, @+$32

    cp $63
    nop
    rra
    ld d, $19
    ld b, $06
    nop
    ld hl, sp-$01
    nop
    ld hl, sp+$70
    call z, Call_03f_7c78
    cp b
    ld h, [hl]
    cp a
    inc a
    ld a, $5c
    dec sp
    ld e, $3f
    ld hl, sp+$03
    nop
    rst RST_38
    and [hl]
    ld a, h
    ld e, e
    ld a, $2e
    ld e, a
    rra
    jr nz, @-$18

    ld b, b
    add hl, bc
    add b
    nop
    ld h, $03
    or d
    ld bc, $c020
    ld d, b
    rst RST_38
    ldh [$ffa0], a
    ret nz

    ld b, b
    add b
    add b
    nop
    ld b, l
    rst RST_18
    ld a, $2a
    inc e
    inc d
    ld [$07cb], sp
    add c
    add c
    rst RST_18
    ld b, d
    ld b, d
    inc h
    inc h
    jr jr_03f_48f9

    db $10
    inc h
    inc h
    rst RST_38
    ld b, d
    ld b, d
    add c
    add c
    ld e, e
    dec [hl]
    dec l
    ld a, [de]
    ld a, a
    rla
    dec c
    dec bc
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    call c, $ff00
    nop
    nop
    ld a, a
    xor $be
    rst RST_30
    call c, $fff3
    db $ed
    ld e, a
    jp nc, $f6ad

    db $db
    ld a, l
    rst RST_20
    ccf
    cp d
    ld l, a
    db $10
    rra
    rrca
    db $10
    ldh [rIF], a
    ld b, l
    add hl, bc
    db $fd
    ldh a, [rLCDC]

jr_03f_4999:
    dec bc
    add c
    nop
    ld b, d
    nop
    inc h
    nop
    sub l
    jr jr_03f_4999

    db $10
    inc h
    ldh a, [c]
    db $10
    add c
    ret c

    rrca
    adc $1f
    nop
    db $e3
    cp $fe
    rst RST_38
    ld c, $c8
    ld c, $ed
    ld a, [bc]
    ld bc, $0f01
    rst RST_18
    rrca
    db $fc
    rst RST_38
    rrca
    rrca
    daa
    dec b
    ret nz

    ret nz

    rst RST_38
    ld a, a
    rst RST_38
    rlca
    rst RST_38
    db $fc
    db $fc
    ld [hl], b
    ld [hl], b
    ld a, [$1608]
    ldh [$ffd4], a
    rlca
    cp $fe
    ld a, a
    ld a, a
    ccf
    or a
    ccf
    rra
    rra
    daa
    inc bc
    ld hl, sp-$08
    add h
    ld hl, $cfbf
    cp a
    ret nc

    ret nc

    jr nz, jr_03f_4a45

    db $10
    dec b
    ld hl, $0001
    rst RST_30
    rlca
    nop
    rrca
    and a
    jr nz, jr_03f_4a12

    ld bc, $001f
    rst RST_38
    ldh [rP1], a
    ld e, [hl]
    ldh [$fff3], a
    inc e
    cp $07
    rst RST_38
    rst RST_38
    ld b, $0f
    ldh a, [$ff71]
    cp $34
    ei
    db $fd
    add b
    ld e, c
    nop
    cpl
    ldh a, [$fff7]
    ld c, $9f

jr_03f_4a12:
    ld h, b
    rst RST_38
    xor [hl]
    ld [hl], b
    sub $38
    ld d, [hl]
    cp b
    rst RST_38
    nop
    inc c
    adc e
    inc h
    daa
    inc b
    jr z, jr_03f_4a33

    jp $ef1b


    cpl
    jp nc, $400f

    add hl, hl
    db $fc
    ret nz

    ld e, $09
    inc a
    cp $fc
    db $fc

jr_03f_4a33:
    ld hl, sp-$08
    ldh a, [$ffd6]
    ld d, b
    nop
    ldh [$ffe0], a
    dec h
    nop
    add b
    adc a
    ld e, $00
    nop
    rst RST_38
    ld a, b
    ld a, b

jr_03f_4a45:
    inc a
    inc a
    ld e, $de
    rrca
    ld l, a
    adc a
    nop
    ld [hl], b
    nop
    ld a, $8e
    rra
    ld d, b
    ccf
    ld b, b
    dec bc
    ccf
    ld a, [$369f]
    rra
    and a
    jr nz, jr_03f_4a61

    nop
    xor l
    ld [hl], e

jr_03f_4a61:
    rst RST_08
    rst RST_30
    ld sp, $01fe
    nop
    rlca
    xor $90
    ld a, $c0
    rla
    ld a, $c0
    db $fc
    ld d, e
    db $10
    ld hl, sp+$59
    nop
    ld h, $07
    rst RST_10
    ccf
    nop
    jp hl


    ccf
    ei
    ld sp, $001c
    ld b, b
    db $fd
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    rlca
    nop
    sbc l
    inc bc
    dec bc

jr_03f_4a8e:
    nop
    jr c, jr_03f_4a91

jr_03f_4a91:
    ld b, [hl]
    nop
    inc bc
    nop
    nop
    db $10
    xor a
    nop
    cp d
    nop
    ld h, b
    inc de
    inc b
    ld b, b
    nop
    ld [bc], a
    jr jr_03f_4a8e

    nop
    rst RST_38
    cpl
    ld b, $7f
    add hl, sp
    ld [bc], a
    cp $00
    ld hl, sp-$35
    nop
    db $fc
    ld b, e
    ld [bc], a
    ld hl, sp+$41
    ld [bc], a
    ld c, a
    dec bc
    stop
    push af
    ldh a, [rNR13]
    ld b, $70
    ld l, c
    nop
    ld [$0c00], sp
    nop
    ld d, l
    ld bc, $0413
    ld e, $79
    nop
    jr nz, jr_03f_4acd

jr_03f_4acd:
    nop
    add b
    daa
    nop
    ld a, l
    jr nc, jr_03f_4b01

    nop
    inc c
    nop
    inc b
    nop
    ld c, $79
    nop
    dec h
    ccf
    sub c
    ld [bc], a
    ld a, a
    cpl
    inc b
    nop
    ld bc, $2fe0
    ld [$0100], sp
    ld b, l
    rlca
    cpl
    ld [$2f7e], sp
    ld [$059c], sp
    nop
    ld bc, $d780
    inc b
    ld a, l
    ld b, $13
    inc b
    inc b
    nop
    inc e
    nop
    cp [hl]

jr_03f_4b01:
    cpl
    nop
    ld e, l
    ld a, [de]
    inc de
    ld b, $41
    nop
    db $eb
    cpl
    nop
    db $ed
    daa
    nop
    xor [hl]
    jr z, jr_03f_4b15

    nop
    nop
    or a

jr_03f_4b15:
    cpl
    nop
    add d
    nop
    ld [bc], a
    ld b, h
    xor $8b
    nop
    inc b
    nop
    ld l, [hl]
    ld b, e
    nop
    db $fd
    nop
    ld a, c
    ld d, d
    dec bc
    nop
    ld bc, $1225
    inc c
    ld bc, $d7c1
    ld [bc], a
    add c
    dec [hl]
    db $10
    sbc l
    add b
    cpl
    db $10
    rst RST_38

jr_03f_4b39:
    nop
    ld [hl], h
    ld a, l
    nop
    ld a, [hl]
    ld bc, $aa88
    ld b, a
    db $10
    call c, Call_000_002f
    inc e
    ld l, a
    nop
    jr jr_03f_4b9e

    ld [de], a
    ld [$2df2], sp
    nop
    db $fc
    inc hl
    ld [de], a
    ld c, a
    ld a, [bc]
    ret nz

    ret nz

    jr nz, jr_03f_4b39

    rst RST_38
    sub b
    ld [hl], b
    ld c, b
    jr c, jr_03f_4b93

    inc c
    dec d
    dec bc
    rst RST_38
    inc d
    dec c
    dec bc
    nop
    ld b, b
    ld b, b
    and b
    ld h, b
    rst RST_38
    ld d, b
    jr nc, jr_03f_4b8f

    db $10
    ld h, b
    ldh a, [rP1]
    ldh a, [rIE]
    add sp, $18
    inc d
    ld [bc], a
    inc b
    ld b, $0a
    inc c
    rst RST_38

jr_03f_4b7e:
    inc d
    ld [hl], b
    ld [$2011], sp
    jr nc, @+$52

    jr nz, jr_03f_4b7e

    ld c, b
    ld a, b
    and h
    rst RST_08
    rlca
    add b
    ld c, h
    ld c, h

jr_03f_4b8f:
    ld [de], a
    ld a, a
    jr nc, @+$4a

jr_03f_4b93:
    ld b, $04
    inc bc
    ld [bc], a
    ld bc, $0372
    rst RST_38
    ld bc, $0201

jr_03f_4b9e:
    rlca
    add hl, de
    inc c
    ld a, [bc]
    add $ff
    dec b
    pop hl
    ld b, d
    sub c
    ld c, d
    dec de
    ld h, h
    rst RST_38
    rst RST_38
    nop
    rst RST_28
    db $f4
    ld [de], a
    add hl, hl
    call z, $c701
    rst RST_38
    ld b, b
    adc a
    add d
    inc a
    call $32f1
    di
    rst RST_38
    ld bc, $84ca
    ld c, [hl]
    ld [bc], a
    ldh a, [$ff30]
    ret nz

    push af
    ret nz

    ret c

    ld [bc], a
    add b
    nop
    inc bc
    ld a, $c6
    jr nc, jr_03f_4c0a

    rst RST_38
    nop
    ld bc, $0605
    ld b, $09
    inc e
    ld h, $ff
    ld a, h
    sub h
    ld h, b
    ld l, b
    inc sp
    ld d, c
    ld b, d
    and c
    rst RST_38
    jp nz, Jump_03f_6625

jr_03f_4be8:
    ret c

    ld a, [hl-]
    dec h
    rra
    jr @+$01

    inc bc
    dec b
    ld [bc], a
    ld bc, $4166
    ld sp, $ff20
    rla
    add hl, bc
    ld [$0c04], sp
    ld a, [de]
    inc e
    and $ef
    ldh [c], a
    dec d
    db $e3
    ldh [c], a
    ld l, a
    db $10
    jr nz, jr_03f_4be8

    ret nc

    rst RST_28

jr_03f_4c0a:
    jr c, @+$26

    jr jr_03f_4c26

    db $d3
    inc bc
    inc bc
    ld b, $0f
    sbc a
    db $10
    ld a, a
    adc [hl]
    ld [hl], c
    ld [hl], c
    inc de
    dec b
    or h
    ld [de], a
    add b
    rst RST_18
    add b
    ld b, b
    ret nz

    and b
    ld b, b
    jr z, jr_03f_4c28

jr_03f_4c26:
    add b
    ld b, b

jr_03f_4c28:
    sbc a
    add b
    ld b, b
    ldh [$ffc0], a
    jr nc, jr_03f_4cad

    ld bc, $0300
    add c
    cpl
    nop
    ld b, d
    nop
    inc h
    ld d, e
    ld [de], a
    inc h
    ld h, d
    jr nz, jr_03f_4c74

    ld de, $6380
    cpl
    ld [hl], l
    cpl
    add a
    cpl
    sbc c
    cpl
    xor e

jr_03f_4c49:
    cpl
    cp l
    cpl
    rst RST_08
    cpl
    add c
    cp a
    nop
    ld b, e
    nop
    dec h
    nop
    add hl, de
    or $20
    dec h
    ld a, h
    ldh a, [c]
    jr nz, jr_03f_4c93

    ld de, $00c2
    and h
    nop
    sbc b
    ld b, $30
    ld bc, $02a4
    jr nc, jr_03f_4c49

    cpl
    ld de, $233f
    ccf
    dec [hl]
    ccf
    ld b, a
    ccf
    ld e, c

jr_03f_4c74:
    ccf
    nop
    ld l, e
    ccf
    ld a, l
    ccf
    adc a
    ccf
    and c
    ccf
    or e
    ccf
    push bc
    ccf
    rst RST_20
    cpl
    ld sp, hl
    inc h
    inc e
    nop
    ld b, b
    rst RST_38
    nop
    nop
    inc bc
    inc b
    ld b, [hl]
    ccf
    ld a, a
    nop
    rst RST_38

jr_03f_4c93:
    dec a
    ld e, d
    ld a, [hl]
    ld bc, $037c
    nop
    inc bc
    rst RST_38
    rlca
    ld [$00ff], sp
    rst RST_38
    nop
    inc l
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    ld c, l
    or d
    ld sp, hl
    ld b, $03
    db $fc

jr_03f_4cad:
    ei
    ldh [rNR10], a
    ld [de], a
    ld bc, $00ff
    rra
    rst RST_38
    rst RST_38
    rst RST_38
    inc b
    ld a, a
    db $e4
    ei
    inc b
    nop
    nop
    add b
    ld a, a
    ld b, b
    ldh a, [$ff0c]
    db $ec
    ldh a, [$fffc]
    nop
    jr c, jr_03f_4ccb

    rst RST_28

jr_03f_4ccb:
    ldh a, [rP1]
    rlca
    nop
    ld b, c
    dec bc
    add hl, bc
    ldh a, [$fff0]
    ld a, [$0a41]
    rst RST_38
    ld b, c
    inc c
    ei
    ld a, h
    rst RST_30
    ld a, b
    rst RST_28
    rst RST_18
    ld [hl], b
    rst RST_18
    ld h, b
    cp a
    ld b, b
    ld [hl+], a
    ld [bc], a
    ld a, [hl]
    rst RST_38
    sbc a
    ld bc, $03ff
    rst RST_38
    rlca
    add b
    nop
    inc hl
    ld [bc], a
    rst RST_38
    or a
    nop
    and b
    ret nz

    sub b
    dec b
    ldh [rLCDC], a
    sbc d
    nop
    ret nz

    rst RST_38
    ld h, a

jr_03f_4d01:
    inc a
    ld b, a
    jr c, jr_03f_4d54

    jr nc, jr_03f_4d46

    ld [bc], a
    ld a, a
    dec a
    ld b, $11

jr_03f_4d0c:
    rrca
    ld [$0607], sp
    add c
    ld bc, $09ff
    rst RST_38
    ld [$18ff], sp
    rst RST_30
    jr @-$07

    rst RST_18
    jr c, jr_03f_4d01

    inc a
    jp $907c


    ld bc, $80c0
    rst RST_18
    ld b, b
    add b
    ret nz

    nop
    add b
    ret


    nop
    nop
    nop
    ld [hl], a
    db $e3
    inc e
    inc a
    ld b, c
    inc c
    nop
    nop
    ccf
    db $e3
    ld bc, $15cf
    ccf
    dec d
    ld a, [hl+]
    db $eb
    nop
    ld e, h
    inc bc
    rst RST_38
    ld a, a
    sbc a

jr_03f_4d46:
    rst RST_08
    ld [hl], b
    ret z

    ld [hl], a
    set 7, e
    nop
    ldh a, [rDIV]
    cp $df
    pop af
    ld c, $11

jr_03f_4d54:
    xor $d1
    dec bc
    db $10
    ccf
    nop
    db $eb
    jr nz, jr_03f_4d7c

    db $e4
    nop
    rra
    ld [de], a
    inc de
    ccf
    nop
    set 7, a
    ld [hl], a
    ret z

    ld [hl], a
    rst RST_08
    ld [hl], b
    ret nz

    ld a, a
    rst RST_08
    db $fd
    ld a, e
    inc h
    ld de, $00ff
    pop de
    xor $11
    xor $df
    pop af
    ld c, $01

jr_03f_4d7c:
    cp $f1
    inc sp
    ld [de], a
    rst RST_38
    nop
    rst RST_38
    stop
    jr z, jr_03f_4d97

    ld l, h
    jr nc, jr_03f_4d0c

    ld a, h
    rst RST_38
    cp $00
    cp $7c
    sub d
    ld a, h
    adc d
    ld a, h
    sbc a
    cp $7c

jr_03f_4d97:
    sbc d
    ld a, h
    ld a, h
    db $d3
    ld c, $41
    ld bc, $ff06
    nop
    rrca
    ld b, $0b
    ld b, $1d
    ld [bc], a
    ld [hl], e
    rst RST_38
    rrca
    rst RST_20
    rra
    ret c

    ld h, a
    cp a
    ld a, a
    ld h, a
    rst RST_38
    rra
    cp a
    ld b, b
    add b
    ld a, a
    add b
    nop
    ldh [rIE], a
    add b
    ret nc

    ldh [rSVBK], a
    and b
    ret nc

    ldh [$ff60], a
    rst RST_38
    add b
    ret nc

    jr nz, jr_03f_4dd8

    ldh [$ffb0], a
    ld a, a
    or b
    cp e
    ld a, a
    add b
    sub c
    db $10
    or b
    ld a, a
    ret nz

    dec b
    nop
    nop
    ld [hl], a

jr_03f_4dd8:
    nop
    db $10
    ldh [$ffa0], a
    dec d
    jr nc, @-$3e

    ldh [rSTAT], a
    ld a, [bc]

jr_03f_4de2:
    rst RST_38
    ld [bc], a
    nop
    rlca
    ld [bc], a
    dec b
    ld [bc], a
    rra
    nop
    rst RST_38
    ld [hl], h
    rrca
    ret c

    ccf
    cp [hl]
    ld a, a
    ld h, b
    rra
    rst RST_38
    rst RST_18
    ld h, b
    rst RST_38
    ld a, a
    ldh a, [$ff7f]
    ret nz

    nop
    rst RST_38
    ld [hl], b
    add b
    jr jr_03f_4de2

    ld [$30f0], sp
    ret nz

    rst RST_38
    ld hl, sp+$30
    ret z

    ldh a, [rNR23]
    ldh a, [$fff6]
    ld a, a
    push hl
    push af
    call $ff10
    sbc e
    ld [de], a
    ld b, c
    ld bc, $f0d8
    adc b
    or $dd
    db $10
    ld hl, sp-$20
    ld d, d
    dec b
    rlca
    nop
    add hl, sp
    rlca
    rst RST_38
    ld l, [hl]
    scf
    ld [hl], a
    add hl, sp
    ld a, l
    ld e, $9f
    ld h, a
    rst RST_18
    rst RST_20
    ld a, b
    ld a, b
    rrca
    add b
    pop de
    db $10
    db $ec
    ldh a, [rIE]

jr_03f_4e3a:
    ldh a, [c]
    db $fc
    db $ed
    ld a, $b5
    adc $ce
    ldh a, [$ffdf]
    db $e4
    jr jr_03f_4e55

    ld bc, $4101
    ld a, [bc]
    sbc d
    db $e4
    db $fd
    ldh a, [c]
    ld d, e
    ld a, [de]
    ld e, $00
    ld hl, $5a1e

jr_03f_4e55:
    ccf
    rst RST_38
    ld d, c
    ccf
    xor a
    ld a, a
    sbc e
    ld a, a
    or a
    ld a, a
    ld a, l
    sub a
    sbc h
    db $10
    add b
    nop
    ld b, b
    add b
    jr nz, @-$6d

    nop
    cp a
    ld d, b
    ldh [$ffd0], a
    ldh [$ffa8], a
    ldh a, [$ff4c]
    ld hl, $ff4b
    ccf
    ld d, h
    ccf
    daa
    rra
    ld [de], a
    rrca
    inc c
    rst RST_38
    inc bc
    inc bc
    nop
    add sp, -$10
    ret z

    ldh a, [rBCPS]
    cp $71
    jr nz, jr_03f_4e3a

    ldh [$ff90], a
    ldh [rNR41], a
    ret nz

    ret nz

    xor [hl]
    ld l, c
    db $10
    dec c
    nop
    rrca
    add e
    jr nz, jr_03f_4ea4

    add a
    inc h
    add sp, -$03
    rra
    sub b
    ld hl, $1f68
    ld [hl], h
    rrca

jr_03f_4ea4:
    ld a, [hl-]
    rlca
    cp a
    ld e, $01
    rlca
    nop
    ld [bc], a
    db $fc
    and b
    ld hl, $f704
    ld hl, sp+$04
    ld hl, sp-$2a
    ld de, $00c0
    ld a, h
    nop
    rst RST_38
    jp $f040


    nop
    ld c, a
    nop
    jr nz, jr_03f_4ec3

jr_03f_4ec3:
    cp a
    inc l
    inc c
    ld d, $06
    ld d, $06
    ld d, b
    ld hl, $fec0
    rst RST_00
    ld [bc], a
    ldh a, [rP1]
    ld hl, sp-$10
    ld hl, sp+$10
    inc l
    rst RST_38
    inc c
    inc l
    inc c
    ld b, b
    rra
    ld d, b
    inc e
    or b
    rst RST_38
    jr nc, @+$01

    ld d, l
    rst RST_38
    ld a, [hl+]
    or b
    jr nc, @-$46

    ccf
    db $10
    ld a, b
    jr nc, jr_03f_4f5e

    ld h, b
    ld h, b
    or a
    jr nz, @-$64

    nop
    cp a
    add b
    jr nz, jr_03f_4ef8

jr_03f_4ef8:
    ld e, b
    jr jr_03f_4f3a

    ld b, c
    ld a, [bc]
    ld b, b
    db $fc
    rlc d
    or b
    add hl, de
    inc b
    nop
    rra
    nop
    ld h, $01
    rst RST_38
    ld c, c
    rlca
    ld d, a
    rrca
    db $e4
    rra
    db $ec
    rra
    rst RST_30
    ret nz

    nop
    ret nz

    dec a
    nop
    jr @-$1e

    db $ec
    ldh a, [rIE]
    inc d
    ld hl, sp+$06
    ld hl, sp+$02
    db $fc
    nop
    add c
    cp a
    nop
    ld b, d
    nop
    inc h
    nop
    jr jr_03f_4f63

    jr nc, @+$26

    ld [bc], a
    ld [hl-], a
    jr nc, @-$7d

    jr nc, @+$41

    ld b, d
    ccf
    ld d, h
    ccf
    ld h, [hl]

jr_03f_4f3a:
    ccf
    ld a, b
    ccf
    adc d
    ccf
    ldh a, [$ff9c]
    ccf
    xor [hl]
    ccf
    ret nz

    ccf
    jp nc, Jump_03f_433e

    nop
    dec h
    nop
    dec d
    add hl, de
    or $30
    dec h
    ldh a, [c]
    jr nc, @-$7d

    inc e
    nop
    ld b, b
    rst RST_30
    call nc, $d738
    ld bc, $d600

jr_03f_4f5e:
    jr c, @-$2a

    jr c, jr_03f_4fe1

    ld a, b

jr_03f_4f63:
    nop
    ld l, b
    db $10
    ld a, b
    stop
    db $10
    ld [$039f], sp
    ld bc, $0007
    ld a, b
    dec c
    nop
    jr nz, jr_03f_4f76

    ld l, b

jr_03f_4f76:
    ld a, a
    db $10
    db $fc
    nop
    call nc, Call_03f_6c38
    ret c

    stop
    rst RST_18
    ld bc, $0002
    inc b
    ld [bc], a
    ld [hl], $01
    rlca
    nop
    rst RST_38
    inc bc
    nop
    ld a, a
    add b
    ld c, $01
    ld b, $01
    rst RST_38
    ld b, $81
    add [hl]
    ld h, c
    ld a, [hl]
    ld bc, $251e
    rst RST_38
    cp $0d
    cp h
    ld h, b
    db $fc
    add d
    call c, $ffe2
    or $e8
    db $10
    db $ec
    db $f4
    ld [$50bc], sp
    ei
    cp h
    ld c, d
    ld d, $04
    nop
    rrca
    inc bc
    rra
    rlca
    rst RST_38
    ccf
    rrca
    ccf
    add hl, bc
    inc bc
    nop
    ld c, $01
    rst RST_38
    inc a
    dec bc
    rst RST_38
    inc a
    rst RST_38
    call z, Call_000_3fff
    db $fd
    rst RST_38
    ld a, h
    nop
    cp $35
    cp $75
    cp $65
    ei
    cp $d5
    add d
    nop
    push af
    cp $cd
    rst RST_38
    inc a
    rst RST_38
    cp [hl]
    ld c, c

jr_03f_4fe1:
    or [hl]
    ld c, c
    cp [hl]
    ld b, b
    cp d
    ld c, h
    rst RST_38
    cp [hl]
    ld b, b
    cp a
    ld b, b
    db $dd
    ld h, $e5
    ld a, [de]
    rst RST_38
    add hl, sp
    ld b, $59
    ld h, $4f
    ld sp, $364f
    rst RST_28
    ccf
    rlca
    rra
    inc bc
    inc a
    ld bc, $fcff
    rst RST_38
    rst RST_38
    di
    rst RST_38
    rst RST_08
    rst RST_38
    ld a, h
    cp $f0
    ld hl, sp-$01
    ret nz

    ldh [rP1], a
    add b
    nop
    db $fd
    ldh a, [c]
    db $fc
    xor a
    jp Jump_000_01ce


    inc bc

jr_03f_501a:
    dec a
    nop
    ld bc, $0210
    ei
    rst RST_38
    inc b
    db $fd
    ld [bc], a

jr_03f_5024:
    call c, $c4a2
    ld hl, sp-$04
    ei
    nop
    ld hl, sp+$10
    ld [bc], a
    jr jr_03f_5030

jr_03f_5030:
    inc l
    jr jr_03f_505f

    rst RST_30
    jr jr_03f_506a

    ld [$01e2], sp
    inc l
    jr jr_03f_5078

    nop
    rst RST_38
    jr c, jr_03f_5040

jr_03f_5040:
    ld d, h
    jr c, jr_03f_509f

    jr c, @+$76

    jr jr_03f_5024

    ld e, h
    di
    nop
    ld e, h

jr_03f_504b:
    jr c, jr_03f_50c9

    reti


    nop
    sbc b
    ld [hl], b
    ld [hl], a
    sbc b
    ld [hl], b
    ld [hl], b
    ld bc, $9812
    ld [hl], b
    ld hl, sp-$27
    nop
    ccf
    cp b
    ld [hl], b

jr_03f_505f:
    ld d, b
    jr nz, jr_03f_501a

    ld [hl], b
    ld d, $13
    ld c, $11
    db $fd
    adc b
    inc de

jr_03f_506a:
    db $10
    ld hl, sp+$00
    ret c

    ld [hl], b
    xor b
    ld d, b
    push af
    ret c

    dec c
    ld a, [de]
    adc b
    rla
    db $10

jr_03f_5078:
    ld [hl], b
    nop
    cp $00
    rst RST_38
    sbc [hl]
    ld a, h
    sbc [hl]
    ld a, h
    cp $00
    ldh [c], a
    inc e
    cp $48
    ld de, $00fe
    jr nc, jr_03f_508c

jr_03f_508c:
    ld e, b
    jr nc, jr_03f_504b

    rst RST_38
    ld a, b
    ld l, b
    db $10
    add h
    ld a, b
    cp h
    ld a, b
    add h
    ld bc, $d878
    ld bc, $1f02
    inc d

jr_03f_509f:
    rra
    ld h, $17
    ld b, b
    dec e
    add b
    rra
    ld b, d
    dec de
    rst RST_30
    nop
    nop
    rst RST_38
    pop bc
    ld de, $ff55
    ld d, l
    xor d
    sbc [hl]
    ret


    ld [de], a
    ld bc, $ff00
    ld bc, $10d2
    rst RST_00
    db $10
    xor e
    cp $d9
    ld [de], a
    cp $00
    ld bc, $7dfe
    cp $7d
    rst RST_38

jr_03f_50c9:
    jp c, $c639

    ld bc, $01fe
    cp $31
    ld a, l
    cp $c2
    db $10
    ld a, a
    add b
    ld a, a
    ld a, a
    rst RST_38
    db $f4
    inc de
    cp [hl]
    jp nz, $0110

    rst RST_38
    db $fd
    inc bc
    db $fd
    ld [bc], a
    ld h, $00
    ld a, a
    ld c, c
    cp $35
    adc $35
    adc $49
    db $ed
    db $10
    rlca
    ld bc, $fdfe
    rst RST_28
    db $10
    rra
    cpl
    ld sp, $432f
    cpl
    ld d, l
    cpl
    nop
    ld h, a
    cpl
    ld a, c
    cpl
    adc e
    cpl
    sbc l
    cpl
    xor a
    cpl
    pop bc
    cpl
    db $d3
    cpl
    push hl
    cpl
    nop
    rst RST_30
    cpl
    add hl, bc
    ccf
    dec de
    ccf
    dec l
    ccf
    ccf
    ccf
    ld d, c
    ccf
    ld h, e
    ccf
    ld [hl], l
    ccf
    nop
    add a
    ccf
    sbc c
    ccf
    xor e
    ccf
    cp l
    ccf
    rst RST_08
    ccf
    pop hl
    ccf
    di
    add hl, sp
    stop
    add hl, bc
    ld b, b
    inc c
    ld [bc], a
    ld bc, $1f5d
    or a
    and [hl]
    ld b, [hl]
    add hl, bc
    nop
    dec b
    ld [hl-], a
    add b
    add hl, bc
    nop
    inc bc
    ld bc, $6311
    ld bc, $4000
    nop
    add b
    ret z

    ret nz

    ldh [$ffc0], a
    nop
    nop
    inc bc
    rlca
    ld b, $0d
    rrca
    dec c
    nop
    rst RST_38
    ldh [$ff0d], a
    ld b, b
    cp b
    cp $3f
    nop
    ldh [$fff8], a
    ld hl, sp+$5c
    and h
    ld [hl], d
    ld a, [$1914]
    ld [de], a
    dec d
    dec d
    rlca
    ld d, $04
    ld h, e
    add c
    ld c, a
    add b
    ld sp, hl
    rst RST_38
    rra
    adc $04
    cp $72
    ld a, c
    push af
    db $fd
    rlca
    or c
    ld h, b
    jr nz, jr_03f_51b3

    add hl, bc
    db $10
    inc bc
    ret nc

    nop

jr_03f_5188:
    nop
    inc bc
    dec c
    jr jr_03f_51ca

    ccf
    jr c, jr_03f_5190

jr_03f_5190:
    nop
    rst RST_38
    cp $50
    adc a
    ei
    rst RST_28
    nop
    nop
    ret nz

    jr nc, @-$32

    add d
    ld h, c
    pop de
    inc bc
    rra
    ccf
    ld a, h
    ld hl, sp-$08
    ld [hl], b
    jr nz, jr_03f_5188

    ld hl, sp-$02
    ld a, [hl]
    ccf
    ccf
    ld a, [hl]
    ld a, h
    ld b, $02
    inc bc
    inc bc

jr_03f_51b3:
    add hl, bc
    ld bc, $0903
    nop
    ld [bc], a
    ld h, c
    di
    ld h, c
    nop
    nop
    inc bc
    ld bc, $c102
    ldh [$ffc0], a
    add c
    ld b, a
    add hl, bc
    add b
    inc bc
    ret nz

jr_03f_51ca:
    ret nz

    ld b, b
    ld h, b
    rrca
    dec c
    rrca
    rla
    ld e, $1b
    dec d
    inc c
    rst RST_18
    sub c
    ld b, [hl]
    ei
    sub [hl]
    db $eb
    ld l, $c6
    ld [$dfca], a
    ei
    cp l
    ld [hl], l
    dec sp
    ld h, h
    add hl, de
    add hl, bc
    jr jr_03f_51eb

    ld a, [de]
    rrca

jr_03f_51eb:
    dec d
    ld c, $e1
    xor e
    inc hl
    add d
    inc b
    db $ed
    cp a
    ld b, b
    ld sp, hl
    add hl, hl
    dec bc

jr_03f_51f8:
    or e
    rlca
    dec a
    rst RST_18
    ld h, b
    or b
    ld d, b
    ret nc

    ld d, b
    ret nc

    and b
    db $10
    and b
    ld l, a
    ld e, a
    ld e, a
    ld d, e
    xor h
    cp a
    ld a, c
    ld a, h
    add hl, bc
    rst RST_38
    ld [bc], a
    pop af
    rst RST_28
    ld a, a
    ret


    pop de
    jp nc, $b692

    cp d
    ld d, l
    xor a
    rst RST_08
    rst RST_08
    nop
    nop
    inc bc
    rrca
    rrca
    rra
    rra
    rrca
    db $fc
    ld hl, sp-$20
    ret nz

    add b
    add b
    db $fc
    ldh a, [$ffbc]
    db $f4
    cp b
    sub b
    ret c

    rst RST_38
    push de
    ld a, a
    ld [bc], a
    rla
    dec e
    ld a, [hl-]
    rst RST_18
    cp $7c
    ld a, [$a0e0]
    ld [hl], b
    or b
    ld c, b
    jr @+$3e

    ld e, $e0
    ldh a, [$fffc]
    ld a, $18
    ld [hl], b
    add b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0f01
    ccf
    ld d, l
    xor h

jr_03f_5255:
    db $ed
    ld a, a
    ld [hl], e
    ld d, e
    and a
    call c, $f9e7
    db $db
    ld [hl], $23
    ld h, c
    ld [hl], b
    push hl
    ldh a, [$fff5]
    ret nz

    jr nz, jr_03f_51f8

    ld c, b
    inc h
    db $f4
    ld d, h
    inc b
    nop
    nop
    ld bc, $0f02
    ld de, $322c
    nop
    rst RST_38
    ld b, h
    add l
    sbc b
    nop
    db $10
    jr nc, jr_03f_527e

jr_03f_527e:
    ret nz

    jr nc, jr_03f_5291

    ld e, b
    nop
    ld b, b
    ld de, $df5b
    ld l, [hl]
    ld l, l
    inc sp
    rla
    inc d
    jr jr_03f_5255

    rst RST_00
    di
    ld [hl], c

jr_03f_5291:
    add $f9
    sub e
    ld bc, $cecd
    adc [hl]
    inc b
    ld e, h
    ret c

    xor b
    jr c, jr_03f_52dc

    jr jr_03f_52a0

jr_03f_52a0:
    ld [$3e3e], sp
    ld a, a
    ld a, $3e
    ld [$0009], sp
    dec b
    ld l, d
    ld h, c
    ld a, a
    ld l, d
    jr nc, @+$22

    nop
    nop
    db $fc
    cp $fc
    cp h
    rra
    rlca
    nop
    nop
    dec c
    add hl, bc
    nop
    ld [bc], a
    ld h, b
    ldh a, [rNR41]
    add hl, bc
    nop
    ld [$f1c8], sp
    and d
    push de
    ld a, a
    ld a, $00
    nop
    or [hl]
    rst RST_10
    cp l
    ld a, [$c9ff]
    nop
    nop
    ld a, d
    ld e, l
    xor a
    ld c, a
    sbc a
    inc bc
    nop
    nop

jr_03f_52dc:
    halt
    ld h, d
    and d
    ld a, h
    ld hl, sp-$10
    ldh [$ff80], a
    ld b, $08
    inc sp
    ld e, b
    cp b
    inc c
    rlca
    nop
    add b
    ld h, c
    ccf
    db $d3
    ld h, b
    ld [hl-], a
    rra
    nop
    push bc
    ldh a, [$ffa1]
    jp Jump_03f_707c


    pop bc
    nop
    ld a, [bc]
    dec c
    rrca
    ccf
    rst RST_38
    rrca
    nop
    nop
    db $fc
    ld a, b
    rst RST_38
    jp $ffc3


    rst RST_38
    nop
    ld l, [hl]
    sbc $09
    rst RST_38
    ld [bc], a
    ld hl, sp-$40
    add hl, bc
    nop
    ld [bc], a
    ret nz

    ld hl, sp-$20
    add hl, bc
    nop
    ld [bc], a
    add hl, bc
    rst RST_38
    rlca
    db $10
    inc a
    ld a, [hl]
    ld [hl+], a
    ldh [rLCDC], a
    ld b, c
    ld bc, $0009
    dec b
    dec c
    ld a, a
    nop
    ld bc, $0703
    ld c, $0a
    sub h
    ld a, [hl]
    nop
    add b
    ldh [rSVBK], a
    jr nc, @+$3a

    jr jr_03f_534c

    add hl, bc
    nop
    inc bc
    ld bc, $0002
    ld [bc], a
    nop
    nop
    rra
    ldh a, [c]
    cp a
    ld b, a
    ld bc, $09c0

jr_03f_534c:
    nop
    inc bc
    and b
    ld e, b
    adc h

jr_03f_5351:
    inc h
    dec c
    ld a, [bc]
    dec b
    inc bc
    inc bc
    dec de
    ld a, [bc]
    add hl, de
    di
    ld c, [hl]
    ldh a, [$ff80]
    ld sp, hl
    rst RST_38
    ccf
    sbc $34
    ld [bc], a
    db $fc
    ld a, [hl]
    or $fe
    ld c, $76
    ret nz

    nop
    ldh [rNR41], a
    ret nz

    jr nz, jr_03f_5351

    jr nz, jr_03f_537c

    nop
    ld [bc], a
    inc bc
    rlca
    ld [bc], a
    nop
    rlca
    add hl, bc
    nop

jr_03f_537c:
    ld [bc], a
    rst RST_38
    rst RST_38
    ld [hl], b
    rlca
    rra
    add hl, bc
    nop
    ld [bc], a
    ret nz

    ldh a, [$ff7c]
    sbc [hl]
    xor $0c
    jr nz, @+$42

    add d
    inc b
    inc b
    adc b
    ld d, b
    db $10
    inc b
    nop
    ld bc, $4040
    ld bc, $0182
    ld bc, $0009
    dec b
    sub $eb
    rst RST_38
    sbc [hl]
    inc l
    sub d
    pop hl
    db $eb
    inc e
    and [hl]
    push af
    ld a, $5f
    daa
    ld b, [hl]
    xor b
    add hl, bc
    nop
    ld [bc], a
    ld b, b
    nop
    nop
    and b
    add b
    inc bc
    inc bc
    nop
    ld [$0e0b], sp
    dec bc
    inc bc
    ldh [$ff91], a
    rst RST_00
    inc a
    ld a, c
    inc l
    ld l, $fa
    ld [hl], h
    db $f4
    jr nc, jr_03f_53df

    halt
    cp $3c
    ld a, e
    nop
    inc c
    dec c
    inc c
    ld c, $03
    inc bc
    ld bc, $2630
    ldh [c], a
    jp nc, $f337

    rst RST_38
    cp a

jr_03f_53df:
    add b
    adc d
    ei
    ld [hl], a
    ld c, $fe
    cp h
    sbc a
    ret nz

    ldh [$ff60], a
    ldh [$ffe0], a
    ret nz

    and b
    ld b, b
    rra
    ccf
    ccf
    cp a
    di
    ret nz

    or h
    cp a
    add hl, bc
    rst RST_38
    inc bc
    ldh a, [$ffc0]
    ldh a, [c]
    rst RST_28
    db $ec
    db $ec
    ret z

    call nz, Call_03f_72ee
    ldh a, [c]
    ldh a, [c]
    nop
    ld bc, $0004
    stop
    nop
    db $10
    ld [bc], a
    inc b
    db $10
    add hl, bc
    nop
    inc bc
    ld [$1242], sp
    ld b, h
    ld l, h
    daa
    nop
    jr nz, jr_03f_541d

jr_03f_541d:
    db $fd
    jr z, jr_03f_5442

    ld b, l
    jr nz, jr_03f_5424

    ld h, e

jr_03f_5424:
    push af
    nop
    ld d, b
    add b
    ld c, b
    or h
    db $e4
    jp nz, Jump_000_00e1

    nop
    ld [hl], b
    cp h
    jr jr_03f_54a3

    add b
    nop
    ld bc, $0901
    nop
    ld [bc], a
    inc c
    ld [hl], $6f
    push af
    rst RST_38
    call Call_03f_7ff3

jr_03f_5442:
    ccf
    jr jr_03f_544b

    rst RST_20
    adc $df
    sbc a
    adc a
    ld a, [de]

jr_03f_544b:
    rrca
    ld a, [bc]
    nop
    ret nz

    ldh [rSVBK], a
    jr c, jr_03f_545c

    ld hl, sp+$02
    nop
    ld bc, $0003
    ld bc, $1c0d

jr_03f_545c:
    ld [de], a
    nop
    nop
    ld c, h
    cp a
    rst RST_38
    and d
    ret c

    cp l
    nop
    nop
    ret nz

    ld h, b
    and b
    ld e, h
    ld h, [hl]
    ld a, [de]
    cp a
    ccf
    rra
    rra
    dec c
    ld c, $0f
    rlca
    rst RST_38
    rst RST_38
    rst RST_28
    adc a
    ld sp, hl
    rlca
    sbc a
    rst RST_38
    or $fc
    db $fc
    ld hl, sp-$20
    ldh [$ffd0], a
    ret nc

    ld b, c
    inc h
    nop
    inc d
    nop
    ld b, c
    nop
    ld b, c
    nop
    inc d
    add hl, bc
    nop
    dec b
    ld bc, $001e
    dec d
    rrca
    ld a, [de]
    jr z, @+$04

    ld [hl], e
    ld sp, $4303
    ldh [$fff8], a
    ld e, a
    adc c
    ldh a, [c]

jr_03f_54a3:
    rst RST_38
    rst RST_38
    ei
    sub l
    ld a, [bc]
    ret c

    inc [hl]
    add b
    ldh [$ffc0], a
    ld l, b
    ret nz

    jr nz, jr_03f_54f1

    sub b
    ld c, a
    ld a, [hl]
    ld a, l
    ld a, [hl+]
    add hl, bc
    nop
    inc bc
    ld c, a
    ld l, [hl]
    ld c, [hl]
    dec e
    rst RST_38
    ret


    nop
    nop
    add l
    and d
    ld [hl], b
    ld hl, sp-$01
    inc bc
    nop
    nop
    adc b
    sbc h
    ld e, h
    add b
    nop
    jr nc, @-$1e

    add b
    ld bc, $0302
    add hl, de
    jr c, jr_03f_54e3

    rlca
    nop
    pop hl
    ld a, [hl]
    ld [hl], c
    di
    rst RST_38
    ld [hl], e
    jr nz, jr_03f_54e1

jr_03f_54e1:
    ld a, [hl]
    di

jr_03f_54e3:
    and $bc
    add d
    adc b
    ld hl, $0500
    ld [bc], a
    add hl, bc
    nop
    dec b
    rst RST_38
    rst RST_38
    add hl, bc

jr_03f_54f1:
    nop
    dec b
    sub b
    jr nz, jr_03f_54ff

    nop
    dec c
    add hl, bc
    rst RST_38
    rlca
    inc e
    nop
    ld b, b
    db $fd

jr_03f_54ff:
    nop
    nop
    nop
    ld bc, $0300

jr_03f_5505:
    ld bc, $0307
    rst RST_38
    ld b, $02
    ld c, $06
    ld e, $06
    rrca
    nop
    rst RST_38
    ld a, a
    rrca
    pop af
    ld [hl], c
    jp Jump_000_07c3


    rlca
    rst RST_38
    ld e, $1f
    add hl, sp
    ld a, $e2
    db $fd
    ldh [rP1], a

jr_03f_5523:
    rst RST_38
    db $fc
    ldh [rIE], a
    db $fc
    ld b, e
    jp $c141


    cp a
    and b
    ld h, b
    ld e, h
    cp h
    and [hl]
    sbc $00
    ld bc, $fb00
    nop
    add b
    dec [hl]
    nop
    ret nz

    add b
    ld b, b
    nop
    ld h, b
    rst RST_38
    ld b, b
    rra
    rlca
    dec l
    dec de
    inc sp
    ld de, $ff3e
    dec d
    add hl, hl
    ld d, $2d
    ld [de], a
    dec de
    nop
    dec c
    rst RST_38
    inc b
    dec b
    ei
    ld a, [de]
    and $31
    rst RST_08
    cp $ff
    ld bc, $5ea1
    sbc [hl]
    ld h, c
    or a
    ld d, d
    ld a, h
    rst RST_38
    rst RST_30
    ret nc

    rst RST_28
    inc l
    inc sp
    ld h, a
    ld a, b
    cp [hl]
    rst RST_38
    pop bc
    jp $bdbc


    jp nz, $84ef

    rst RST_10
    rst RST_38
    xor [hl]
    jr nz, jr_03f_557a

jr_03f_557a:
    ld d, b
    ldh [$ffb0], a
    and b
    ret nc

    rst RST_38
    nop
    jr nc, jr_03f_5523

    jr nz, jr_03f_5505

    ldh [rLCDC], a
    jr nc, jr_03f_5608

    ldh [$ff03], a
    ld b, $09
    ld [bc], a
    dec c
    inc b
    add b
    inc bc
    rst RST_38
    dec bc
    ld b, $6d
    ld [bc], a
    ld c, a
    rst RST_08
    ld c, $cf
    rst RST_38
    ccf
    rst RST_38
    ld d, b
    rst RST_38
    cp d
    ld a, h
    ld e, c
    ld a, $ff
    inc l
    rra
    sub [hl]
    ld c, $b2
    di
    jp nc, $ff33

    db $fd
    cp $05
    cp $2f
    ld e, $cd
    ld a, $ff
    sbc e
    cp h
    dec h
    jr c, jr_03f_55dc

    add b
    ldh a, [$ff60]
    ei
    jr nc, @-$3e

    or b
    inc bc
    ldh [rLCDC], a
    ldh a, [rP1]
    ld e, [hl]
    rst RST_38
    ld hl, $2d52
    ld e, d
    dec h
    ld c, [hl]
    ld sp, $ff55
    ld l, $39
    ld a, [bc]
    ld c, $04
    inc c
    nop
    ld e, e
    rst RST_38

jr_03f_55dc:
    add a
    ld d, [hl]
    adc c
    ld d, c
    adc [hl]
    ld d, d
    adc a
    ld d, a
    rst RST_38
    adc a
    rst RST_10
    rrca
    ccf
    rra
    inc bc
    inc bc
    ld [$f1ff], a
    ld a, [hl+]
    pop de
    jp z, Jump_000_2a31

    pop af
    ld [$f1ff], a
    ei
    ldh a, [$fff0]
    ldh a, [$ffe0]
    ldh [$ff78], a
    rst RST_38
    add b
    ld d, h
    xor b
    ld [hl], h
    adc b
    ld h, h
    sbc b
    db $f4

jr_03f_5608:
    cp a

jr_03f_5609:
    ld l, b
    sbc h
    nop
    ld d, b
    nop
    jr nc, jr_03f_5640

    ld [bc], a
    rlca
    rst RST_38
    nop
    dec bc
    inc b
    inc d
    dec bc
    inc de
    inc c
    rla
    rst RST_38
    ld [$132c], sp
    rrca
    nop
    ld [hl], e
    inc c
    add $ff
    add hl, sp
    ld [$80f7], sp
    ld a, a
    inc c
    di
    add hl, sp
    rst RST_38
    add $72
    adc l
    ldh a, [rP1]
    inc e
    ldh [rIF], a
    rst RST_38
    ldh a, [rDMA]
    cp c
    ld h, h
    sbc e
    ld sp, hl
    ld b, $db
    rst RST_30

jr_03f_5640:
    inc [hl]
    ld [hl], h
    ei
    ld [hl-], a
    inc bc
    ld b, b
    add b
    jr nz, jr_03f_5609

    rst RST_38
    db $10
    ldh [$ff90], a
    ld h, b
    ret nc

    jr nz, @+$62

    rra
    rst RST_38
    ld b, h
    dec sp
    ld b, h
    dec sp
    ld l, h

jr_03f_5658:
    inc de
    ld l, $11
    rst RST_38
    ld a, $05
    dec de
    ld c, $3d
    ld a, [bc]
    ld [hl], a
    adc e
    rst RST_38
    db $db
    dec a
    rst RST_20
    daa
    ret nz

    ld a, a
    rst RST_38
    ldh [rIE], a
    and d
    db $f4
    ld a, a
    cp c
    ld h, a
    and a
    rst RST_28
    rst RST_30
    rst RST_38
    db $fc
    db $fc
    rst RST_38
    rst RST_38
    ld hl, sp+$77
    ld [hl], a
    xor b
    rst RST_38
    xor d
    ld [hl], h
    ld h, a
    ld sp, hl
    jp hl


    ld sp, hl
    ld l, b
    sub b
    rst RST_38
    add sp, -$70
    xor b
    ret nc

    ld l, b
    ret nc

    db $f4
    ld b, b
    rst RST_38
    ld a, h
    ret nz

    db $e4
    ret c

    jr c, jr_03f_5658

    ld [hl], h
    dec bc
    rst RST_38
    ld a, d
    dec h
    db $fd
    ld h, b
    cp $71
    db $fc
    inc sp
    rst RST_38
    db $fc
    dec sp
    ld a, [hl]
    add hl, de
    ccf
    inc c
    jp $fd43


    rst RST_00
    sub d
    db $10
    cp $ff
    cp $ff
    ei
    cp $ff
    ld l, a
    rst RST_38
    ld b, $ff
    add sp, -$08
    or h
    call z, $f2ff
    or $f9
    add e
    add a
    ld c, e
    inc bc
    rst RST_38
    rst RST_38
    add a
    add a
    adc l
    dec bc
    jr c, jr_03f_570f

    inc e
    jr nz, @+$01

    ld l, [hl]
    ld [hl], b
    xor $f0
    xor $f0
    adc $f0
    rst RST_38
    call c, $bce0
    ret nz

    rra
    rlca
    rlca
    ld bc, $01f9
    jr nc, jr_03f_56ea

    jr nc, @+$04

    ret nz

jr_03f_56ea:
    ld a, $f0
    rst RST_08
    db $fc
    rst RST_20
    ld [hl], e
    ld a, a
    inc e
    ret nz

    db $10
    jr nc, jr_03f_56f8

    ld a, b
    rlca

jr_03f_56f8:
    nop
    rst RST_38
    sbc a
    inc bc
    db $fc
    rst RST_38
    inc bc
    rst RST_38
    call z, $fffc
    ld hl, sp-$08
    jr nc, @+$32

    nop
    ld a, b
    and b
    ldh a, [$ffef]
    ld b, b
    ldh [$ff80], a

jr_03f_570f:
    ret nz

    push bc
    jr jr_03f_5713

jr_03f_5713:
    nop
    inc bc
    rst RST_38
    nop
    dec c
    inc bc
    dec de
    inc c
    dec sp
    rla
    ld [hl], $ff
    rrca
    dec l
    inc de
    rra
    nop
    rst RST_28
    rra
    ld l, a
    rst RST_38
    ldh a, [$fff8]
    rst RST_38
    or a
    ld a, a
    rst RST_28
    ldh a, [$ff9e]
    rst RST_38
    rst RST_38
    ld hl, sp+$07
    ret nz

    nop
    jr nc, jr_03f_56f8

    ld a, h
    rst RST_38
    ldh a, [rNR30]
    db $fc
    push hl
    cp $33
    cp $eb
    rst RST_20
    inc e
    ld d, a
    add sp, -$09
    add hl, de
    jr c, jr_03f_574b

    ld a, e

jr_03f_574b:
    ld c, $73
    rst RST_38
    inc e
    ld c, a
    jr nc, @+$5b

    ld h, $77
    ld c, $5f
    rst RST_38
    ld a, [hl+]
    ld a, [hl-]
    dec c
    ld a, $09
    or a
    ld a, b
    ld b, c
    rst RST_38
    jp $c33e


    ld b, e
    cp h
    cp a
    ret nz

    rst RST_38
    rst RST_38
    add sp, -$63
    sub d
    sub d
    sub c
    db $fd
    ld [bc], a
    pop af
    rst RST_38
    ldh a, [c]
    sbc [hl]
    or c
    ld sp, $3e0e
    pop bc
    db $dd
    rst RST_38
    ld [$665b], a
    ld e, [hl]
    ld h, a
    ld b, b
    add b
    ld b, b
    db $f4
    push af
    db $10
    ld [hl], $01
    add b
    inc sp
    ld [bc], a

jr_03f_578b:
    dec sp
    inc c
    dec a
    ld b, $7f
    rra
    ld b, $1f
    nop
    add hl, bc
    ld b, $0d
    adc c
    jr nz, @+$01

    ld c, $03
    di
    rst RST_38
    ld a, [hl]
    rst RST_38
    sbc l
    ld a, [hl]
    rst RST_38
    xor e
    cp a
    sub a
    sbc a
    ld d, [hl]
    rst RST_18
    ld [hl], l
    cp $ff
    or a
    ld a, a
    cp [hl]
    and a

jr_03f_57b0:
    ld [$78f7], a
    rst RST_20
    rst RST_38
    or l
    ld c, [hl]
    db $dd
    cp $fd
    ld c, $f9
    or $e3
    adc l
    ld a, [$2376]
    ld a, d
    ld hl, $0330
    ld [hl], $03
    ld b, e
    cp l
    nop
    jr nz, jr_03f_57ed

    nop
    inc c
    nop
    ld [bc], a
    inc bc
    nop
    nop
    rst RST_38
    nop
    ld c, d
    or e
    inc a
    add $cd
    inc sp
    inc sp
    rst RST_28
    inc c
    inc e
    inc bc
    inc bc
    inc bc
    nop
    add e
    nop
    or $ff
    ld [$3836], sp
    xor $f0

jr_03f_57ed:
    db $fd
    nop
    ret c

    ccf
    ldh [rNR10], a
    ldh [$fff1], a
    nop
    ld a, [de]
    inc sp
    jr z, jr_03f_57b0

    inc h
    ld a, a
    rst RST_38
    nop
    jp nz, $a400

    nop
    sbc b
    ld b, $30
    push af
    and h
    ld [bc], a
    jr nc, jr_03f_578b

    nop
    jr nc, jr_03f_584f

    nop
    inc h
    nop
    dec b
    jr jr_03f_5829

    jr nc, jr_03f_5839

    ld [de], a
    jr nc, jr_03f_5827

    ccf
    ld hl, $333f
    ccf
    ld b, l
    ccf
    nop
    ld d, a
    ccf
    ld l, c
    ccf
    ld a, e
    ccf
    adc l

jr_03f_5827:
    ccf
    sbc a

jr_03f_5829:
    ccf
    or c
    ccf
    jp $d53f


    dec sp
    ld e, a
    ld b, e
    nop
    dec h
    nop
    add hl, de
    or $30
    dec h

jr_03f_5839:
    ldh a, [c]
    jr nc, jr_03f_583d

    add c

jr_03f_583d:
    inc e
    nop
    ld b, b
    ei
    rst RST_38
    nop
    nop
    dec bc
    inc bc
    nop
    ld a, $03
    ei
    rst RST_38
    ccf
    adc $7f
    ld [hl], c

jr_03f_584f:
    ccf
    daa
    rra
    inc de
    rst RST_38
    rrca
    dec bc
    inc b
    add b
    nop
    ldh [$ff80], a
    ret c

    rst RST_38
    ldh [$ff64], a
    ld hl, sp-$05
    db $fc
    rst RST_38
    ldh a, [$fff1]
    xor a
    adc [hl]
    adc a
    ld [hl], b
    nop
    jr nc, @+$08

    add b
    scf
    ld [bc], a
    rst RST_38
    ld a, h
    jr nc, @+$09

    jr nc, jr_03f_5877

    rst RST_38
    nop

jr_03f_5877:
    ld b, e
    ccf
    ld hl, $001b
    rst RST_18
    add hl, bc
    rlca
    inc b
    inc bc
    inc bc
    jr nc, jr_03f_5884

jr_03f_5884:
    ldh [rP1], a
    rst RST_38
    db $10
    ldh [$ffc8], a
    ldh a, [$ffc4]
    ld hl, sp-$1e
    db $fc
    db $d3
    pop af
    cp $40
    dec c
    ld a, [hl-]
    ld bc, $0f01
    nop
    rlca
    inc b
    rst RST_38
    rrca
    inc c
    dec bc
    inc c
    inc de
    inc e
    inc bc
    inc e
    ld a, a
    cpl
    inc e
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp-$6d
    nop
    db $fd
    db $fc
    sub a
    ld bc, $fe04
    ld b, $3f
    inc c
    ccf
    rst RST_38
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    db $fd
    ld [hl], b
    xor d
    nop
    nop
    db $fc
    ld c, $f8
    ld c, $f0
    ld a, a
    rra
    db $e3
    rra
    rst RST_28
    rra
    rst RST_38
    jr c, jr_03f_58d4

jr_03f_58d4:
    ld bc, $a4e4
    nop
    cp a
    dec b
    ld h, b
    and [hl]
    nop
    ld bc, $0301
    rst RST_38

jr_03f_58e1:
    ld bc, $00fe
    inc b
    ld b, b
    rst RST_38
    ld h, b
    ld a, a
    db $10
    ld a, a
    jr nc, @+$01

    ld l, a
    ld [hl], b
    ld c, a
    ld [hl], b
    rra
    ld h, b

jr_03f_58f3:
    rra
    jr nz, jr_03f_58f3

    ccf
    db $eb
    nop
    rst RST_38
    ld [hl], b
    rst RST_20
    jr c, jr_03f_58e1

    inc a
    rst RST_38
    pop bc
    ld a, $c0
    ld a, $e2
    ld e, $e6
    ld e, [hl]
    rst RST_38
    db $ec
    call c, Call_000_001f
    rra
    nop

jr_03f_590f:
    rrca
    nop
    rst RST_28
    ld b, $01
    inc bc
    ld bc, $0330
    db $fc
    db $ec
    sbc b
    ld a, a
    ld l, b
    jr c, jr_03f_590f

    ld [hl], b
    ldh a, [$ffe0]
    ldh [rSTAT], a
    ld a, [bc]
    rst RST_38
    ld [$0400], sp
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    call c, $1409
    jr nc, jr_03f_5933

jr_03f_5933:
    ld b, b
    ld b, b
    nop
    ld a, [hl-]
    db $10
    and b
    jr nz, @+$01

    ld d, b
    jr nz, jr_03f_594e

    db $10
    jr z, @+$1a

    inc h
    ld [$14ff], sp
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    ld [bc], a
    dec b
    ld [$14e9], sp

jr_03f_594e:
    ld d, b
    rla
    ld b, h
    db $10
    jr z, jr_03f_59d1

    ld [bc], a
    ld b, $04
    ld a, [bc]
    ld a, [$1358]
    db $10
    ld e, a
    ld de, $0020
    jr nc, @+$12

jr_03f_5962:
    jr z, jr_03f_5962

    ld d, b
    ld de, $0a04
    inc bc
    dec b
    add hl, de
    ld hl, $ff1d
    ld b, $17
    ld [$2b17], sp
    dec sp
    ld c, l
    inc hl
    rst RST_38
    ld d, b
    inc hl
    ld d, h
    ld [hl-], a
    rla
    pop bc
    ld b, d
    jp Jump_000_32ff


    or a
    ld c, l
    adc [hl]
    ld [hl], c
    cp $62
    db $f4
    rra
    ld a, [de]
    ldh a, [c]
    sub l
    halt
    push de
    add hl, sp
    nop
    ld a, [hl-]
    ld bc, $0330
    cp a
    ld [hl], b
    ld [hl], b
    adc h
    inc bc
    ld [bc], a
    ld bc, $1009
    ld bc, $01ff
    ld bc, $0302
    dec b
    ld b, $0a
    inc c
    rst RST_38
    ld [de], a
    and a
    sbc c
    ei
    ld c, h
    rst RST_38
    sub [hl]
    rst RST_20
    rst RST_38
    ld a, [hl+]
    add a
    add h
    inc bc
    dec b

jr_03f_59b6:
    rlca
    dec b
    rlca
    rst RST_38
    ld a, [bc]
    rst RST_28
    jr jr_03f_59b6

    rlca
    ldh [$fffc], a
    and b
    rst RST_38
    ret nc

    jr nz, jr_03f_5a16

    db $10
    ld l, b
    ld [hl], h
    adc a
    adc a
    rst RST_28
    ld [hl], b
    ccf
    rrca
    ccf
    ld b, c

jr_03f_59d1:
    ld a, [bc]
    cp $f0
    ldh a, [$fffe]
    ld b, c
    ld a, [bc]
    ret nz

    jr nc, @+$22

    ret c

    jr jr_03f_5a02

    inc b
    rst RST_30
    ld a, [de]
    ld [bc], a
    dec b
    rrca
    nop
    db $fc
    db $fc
    inc bc
    inc d
    rst RST_38
    ld a, [hl+]
    inc h
    ld e, d
    inc b
    ld l, d
    nop
    add h
    nop
    pop af
    inc b
    jr nc, @+$05

    ld c, d
    ld de, $1668
    stop
    db $10
    ld [$173d], sp
    ld c, d
    inc de

jr_03f_5a02:
    ld [bc], a
    dec b
    ld bc, $7f02
    nop
    ld c, $10
    cp $31
    ld [$0080], sp
    ld b, b
    rst RST_38
    nop
    jp Jump_000_1700


    and l

jr_03f_5a16:
    nop
    sbc c
    ld d, l
    jr nz, @-$59

    ld d, c
    jr nz, jr_03f_5a1e

jr_03f_5a1e:
    ld bc, $2f52
    nop
    ld h, h
    cpl
    halt
    cpl
    adc b
    cpl
    sbc d
    cpl
    xor h
    cpl
    cp [hl]
    cpl
    ret nc

    cpl
    ldh [c], a
    cpl
    nop
    db $f4
    cpl
    ld b, $3f
    jr @+$41

    ld a, [hl+]
    ccf
    inc a
    ccf
    ld c, [hl]
    ccf
    ld h, b
    ccf
    ld [hl], d
    ccf
    nop
    add h
    ccf
    sub [hl]
    ccf
    xor b
    ccf
    cp d
    ccf
    call z, $de3f
    ccf
    stop
    ld bc, $0140
    rst RST_38
    rlca
    ld bc, $0300
    jr @+$3e

    scf
    dec hl
    inc de
    ld [de], a
    ld a, e
    or $d0
    ld a, a
    ld a, [de]
    ld e, $00
    ld [hl], b
    ret c

    db $ec
    ld l, h
    sbc b
    ld [hl], b
    nop
    ld [$1c01], sp
    inc bc
    jr jr_03f_5a80

    inc c
    ld a, [de]
    ld a, [de]
    jr @+$2a

    ld a, [hl+]
    ld a, [de]
    ld e, $2a
    ld a, [hl-]
    jr @+$1a

jr_03f_5a80:
    ld a, [de]
    ld a, [hl-]
    ld e, $3e
    ld a, $34
    jr z, @+$04

    ld [$0001], sp
    rlca
    inc c
    ld e, $3e
    ld [hl], $1a
    ld [de], a
    ld a, e
    or $d0
    ld a, a
    ld a, [de]
    ld e, $01
    nop
    add hl, de
    ld b, $01
    rrca
    inc b
    ld bc, $0300
    ret nz

    ret nz

    add b
    jr c, jr_03f_5ae6

    ld e, a
    ld c, a
    ccf
    rrca
    rrca
    nop
    ld [$0001], sp
    db $10
    inc bc
    rlca
    rrca
    rrca
    rlca
    inc bc
    nop
    ld bc, $06ff
    ld a, a
    rst RST_38
    db $fc
    cp $ff
    rst RST_38
    cp $fc
    ldh [rSB], a
    nop
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    rrca
    rrca
    nop
    nop
    db $fc
    cp $fe
    db $fc
    jr c, jr_03f_5ad6

    nop

jr_03f_5ad6:
    inc bc
    inc b
    ld bc, $0200
    ld [$0001], sp
    ld l, e
    ld b, $01
    rrca
    inc b
    ld bc, $0300

jr_03f_5ae6:
    add b
    ret nz

    add b
    jr c, @+$0a

    nop
    ld [HeaderLogo], sp
    nop
    ld [bc], a
    ld [$0001], sp
    ld l, a
    inc b
    inc l
    db $10
    ld [$0014], sp
    inc b
    ld [$0001], sp
    inc bc
    ld [$0004], sp
    ld [bc], a
    ld bc, $0c00
    jr jr_03f_5b21

    ld d, $0c
    inc c
    inc b
    ld l, c
    cpl
    nop
    inc c
    ld bc, $0200
    jr nz, jr_03f_5ae6

    sub b
    ld h, b
    nop
    nop
    inc b
    nop
    nop
    ld [$0c00], sp
    db $10

jr_03f_5b21:
    jr jr_03f_5b2f

    inc c
    ld c, $1e
    inc e
    inc a
    inc a
    inc e
    inc a
    ld a, $3e
    inc a
    inc e

jr_03f_5b2f:
    inc a
    ld a, $3e
    inc a
    ld a, [hl+]
    ld h, $08
    ld bc, $0800
    inc c
    nop
    jr jr_03f_5b41

    inc c
    inc b
    ld l, c
    cpl

jr_03f_5b41:
    nop
    inc c
    ld bc, $1b00
    ld b, $06
    dec b
    ld b, $06
    ld bc, $0400
    add b
    nop
    nop
    ld [bc], a
    inc [hl]
    scf
    nop
    ld b, $00
    ld b, $0e
    ld bc, $1300
    inc b
    rlca
    inc bc
    nop
    nop
    ld l, l
    ld bc, $0200
    add b
    rst RST_38
    ld a, a
    nop
    ldh a, [rNR23]
    inc b
    ld b, $0e
    db $fc
    ldh [rSB], a
    nop
    ccf
    ld [bc], a
    inc [hl]
    rla
    nop
    ld b, $01
    nop
    ld [bc], a
    db $10
    add sp, -$38
    jr nc, jr_03f_5b81

    nop

jr_03f_5b81:
    inc bc
    ld c, $07
    rlca
    ld c, $04
    ld c, $0e
    rlca
    ld bc, $6a00
    ld b, $00
    ld [bc], a
    inc b
    ld b, $01
    nop
    inc b
    add b
    nop
    nop
    ld c, $06
    ld c, $06
    dec c
    dec de
    ld a, [bc]
    dec hl
    ld bc, $6f00
    dec c
    dec a
    ld a, $1b
    ccf
    ld a, [de]
    dec l
    ld a, [hl+]
    ld b, $1c
    add hl, bc
    ld [bc], a
    jr jr_03f_5bc0

    ld [$ff02], sp
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03f_5bc0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03f_6625:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03f_6c38:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03f_707c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03f_72ee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03f_7c78:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03f_7cfc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03f_7e36:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03f_7ff3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
