; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $034", ROMX[$4000], BANK[$34]

    jr nz, @+$42

    add d
    ld b, l
    rra
    ld b, a
    ld e, e
    ld c, [hl]
    ld l, [hl]
    ld c, a
    add a
    ld d, l
    adc b
    ld d, l
    and h
    ld e, e
    ld b, e
    ld e, h
    cp c
    ld e, a
    cp d
    ld e, a
    ld e, $65
    ld c, e
    ld h, l
    ld a, h
    ld l, e
    rst RST_08
    ld l, l
    ld a, [bc]
    ld [hl], h
    dec e
    nop
    add b
    rst RST_38
    nop
    rst RST_38
    add hl, bc
    rst RST_38
    daa
    rst RST_38
    rla
    rst RST_38
    rst RST_38
    cpl
    rst RST_38
    db $10
    ldh a, [$ff33]
    rst RST_30
    inc sp
    rst RST_30
    rst RST_38
    nop
    cp $00
    cp $50
    cp $b4
    cp $ff
    jr jr_034_405f

    call c, Call_034_58de
    sbc $5c
    sbc $d4
    inc c
    ld bc, $0520
    ld [hl], e
    dec c
    nop
    ld e, h
    dec e
    nop
    ld e, h
    sbc $45
    ld c, h
    dec de
    nop
    ld e, b
    dec [hl]
    ld [bc], a
    ld a, [hl+]
    ld bc, $012c

jr_034_405f:
    inc hl
    ld hl, $7f02
    ld h, e
    rst RST_30
    ld e, b
    sbc $48
    sbc $50
    ld d, c
    ld b, $ff
    ld b, b
    call c, Call_000_03fb
    ei
    inc bc
    jp $df03


    inc bc
    inc bc
    inc sp
    inc bc
    or e
    ld l, c
    ld [bc], a
    ld d, [hl]
    ret nz

    cp $70
    dec bc
    inc sp
    inc bc
    sub e
    inc bc
    jp $e383


    rst RST_38
    ld b, e
    ld [hl], e
    inc hl
    cp c
    ld de, $08dc
    xor $ff
    inc b
    nop
    dec d
    add b
    cpl
    rst RST_18
    sbc a
    rst RST_28
    rst RST_38
    ld c, a
    halt
    daa
    cp b
    inc de
    call c, $ee09
    ld [hl], a
    inc b
    or [hl]
    ld b, $a0
    ld bc, $06b0
    or d
    and c
    ld [bc], a
    rst RST_38
    or [hl]
    ld b, $37
    rlca
    scf
    rlca
    or b
    rlca
    rst RST_10
    or c
    rlca
    or e
    or a
    nop
    or a

jr_034_40bf:
    cp e
    nop
    nop
    nop
    rst RST_38
    inc bc
    cp $04
    cp $08
    db $fc
    db $10
    ld hl, sp-$01
    jr nz, jr_034_40bf

    ld b, h
    ldh [$ff8c], a
    ret nz

    sbc [hl]
    ld a, [hl]
    rst RST_38
    inc c
    ld a, [hl]
    ld bc, $023d
    ld b, $7c
    inc e
    rst RST_38
    dec e
    ld bc, $7e8e
    ld c, $00
    inc b
    ld a, [hl]
    cp $e0
    dec bc
    add hl, bc
    ld b, $81
    ld a, [hl]
    ld bc, $057a
    ld d, a
    ld b, [hl]
    dec d
    ld c, [hl]
    ld hl, sp+$03
    ld d, e
    ld b, l
    inc b
    ld d, e
    dec hl
    ld [bc], a
    ld [hl], c
    inc sp

Jump_034_40ff:
    ld c, a
    nop
    jr nc, jr_034_4106

    db $10
    inc de
    ld c, h

jr_034_4106:
    sbc $23
    ld b, c
    inc b
    ld a, [$1324]
    ld h, e
    cpl
    nop
    ld c, [hl]
    sbc $5a
    sbc $54
    ld [$0237], a
    ld c, b
    dec a
    ld [bc], a
    inc de
    ld b, a
    nop
    inc de
    rst RST_30
    inc bc
    rst RST_38
    rst RST_00
    inc sp
    inc bc
    ei
    dec sp
    ei
    jp $ff43


    ret nz

    ld e, a
    ld b, e
    rra
    sbc h
    rra
    ret nz

    inc e
    ld a, a
    nop
    nop
    nop
    ld b, d
    ld b, b
    ld d, [hl]
    ret nz

    ld l, d
    inc bc
    db $fc
    ld h, b
    rla
    ld [hl], b
    ld b, $c1
    ld d, b
    add $40
    ret c

    ld b, b
    rst RST_38
    ret nz

    ld [hl], a
    ld [bc], a
    dec sp
    ld bc, $009d
    adc [hl]
    cp a
    nop
    add a
    nop
    and e
    nop
    or l
    sbc a
    nop
    nop
    rst RST_18
    ld a, [hl]
    add b
    ld a, $c0
    sbc [hl]
    sub [hl]
    nop
    ld h, $ba
    dec sp
    ld [de], a
    db $dd
    sbc l
    nop
    ld [hl], $06
    ld [hl], $a9
    inc b
    and b
    inc bc
    rst RST_28
    ld bc, $02ff
    rst RST_38
    call nz, $1101
    ld hl, sp+$23
    rst RST_38
    ldh a, [rBGP]
    ldh [$ff97], a
    ret nz

    inc e
    add b
    ld a, [hl-]
    rst RST_38
    ld bc, $0374
    add sp, $07
    ret nc

    rrca
    and b
    rst RST_38
    rra
    ld b, b

Call_034_4190:
    ccf
    add b
    ld a, a
    ld d, h
    ld l, $64
    ld a, a
    ld e, $44
    ld a, $24
    ld e, [hl]
    ld b, h
    ld a, $e0
    inc bc
    rst RST_38
    and b
    rst RST_38
    ld e, d
    rst RST_38
    db $ed
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh a, [$fff0]
    rrca
    rrca
    ld hl, sp-$01
    nop
    ld hl, sp-$04
    ld hl, sp+$05
    ldh a, [c]
    add hl, de
    jr jr_034_4216

    jr nz, jr_034_4237

    ld bc, $f57c
    ld bc, $01f3
    ld h, [hl]
    ld d, b
    db $10
    jp $dc5f


    ld e, a
    cp a
    ret nz

    ld e, h
    ret nz

    ld b, b
    ret nz

    ld b, d
    ld [hl], c
    nop
    inc c
    ld sp, hl
    nop
    jr nz, @+$2d

    cpl
    jr z, jr_034_41da

    nop

jr_034_41da:
    ld [bc], a
    nop
    rla
    rst RST_38
    ld b, b
    ld b, b
    ld b, c
    ld b, b
    ld b, a
    ld b, e
    rra
    rrca
    rst RST_38
    nop
    ld a, a
    nop
    rst RST_38
    nop
    rst RST_38
    inc bc
    db $fd
    rst RST_38
    ld a, [hl]
    ld bc, $7ff8
    ldh a, [rIE]
    ldh [rIE], a
    ld l, a
    rra
    ldh [$ff7f], a
    cp a
    push hl
    db $10
    rst RST_38
    ld b, $4b
    jr nz, @+$01

    inc de
    rst RST_38
    scf
    rst RST_38
    dec sp
    rst RST_38
    ccf
    ldh a, [$ffbf]
    ld [hl], a
    rst RST_20
    ld [hl], b
    rst RST_20
    ld [hl-], a
    and $70
    daa
    ld [hl], d

jr_034_4216:
    ld [$2271], a
    ld d, d
    ld a, a
    inc h
    ld [de], a
    adc c
    jr nz, jr_034_4222

    ld b, $e2

jr_034_4222:
    rst RST_38
    ld b, $e3
    rlca
    db $e3
    rlca
    ldh [rTAC], a

jr_034_422a:
    ldh [$ffef], a
    nop
    ldh [rP1], a
    xor $9b
    jr nz, jr_034_4233

jr_034_4233:
    rst RST_38
    ld c, c
    xor a
    rst RST_38

jr_034_4237:
    ld a, [$efff]
    ld e, h
    ld hl, $a900
    ld hl, $ff00
    nop
    ld d, $f9
    rla
    ld hl, sp+$17
    ld hl, sp+$10
    rst RST_38
    rst RST_38
    rra
    rst RST_38
    rrca
    ldh a, [rP1]
    rst RST_38
    cp $ff
    ld bc, $01fe
    rst RST_38
    nop
    rst RST_18
    jr nz, jr_034_422a

    rst RST_38
    jr nc, @-$3b

    inc a
    db $e4
    dec de
    ld [hl], a
    adc b
    ld a, a
    rst RST_38
    add b
    ld a, a
    add b
    ccf

jr_034_4269:
    ret nz

    cp a
    ld b, b
    rst RST_18
    ld a, a
    jr nz, jr_034_4269

    ld b, $92
    dec c
    ld d, d
    adc l
    xor l
    ld hl, $c0fc

jr_034_4279:
    ld hl, $21c0
    rst RST_20
    jr @-$2b

    inc l

jr_034_4280:
    rst RST_38
    nop
    rst RST_38
    ccf
    ret nz

    rra
    ldh [$ffcf], a
    jr nc, jr_034_4279

    db $10
    cp $ce
    ld hl, $c023
    ld b, $4c
    inc b
    ld b, [hl]
    jr @+$01

    ld e, [hl]
    nop
    ld e, h
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    ld d, a
    ld h, h
    nop
    ld a, [bc]
    cpl
    ld hl, $061c
    jr nc, @+$2e

    ld hl, $e72c
    inc b
    nop
    ld [$3227], sp
    cpl
    dec a
    rlca
    rst RST_38
    rra
    rrca
    rst RST_28
    ret nz

    cp a
    add b
    ld c, c
    ld [hl+], a
    db $10
    ld bc, $23a7
    ld c, d
    jr nz, jr_034_42fa

    add e

jr_034_42c4:
    inc a
    ld bc, $00d1
    ld e, $72
    ld a, e
    jr nz, jr_034_432d

    scf
    ld a, [$237a]
    or d
    ld l, e
    ld [hl], $72
    and $b2
    ld b, $f2
    dec hl
    or [hl]
    or d
    and a
    nop
    ld [bc], a
    add a
    jr nc, jr_034_42c4

    adc a
    jr nz, jr_034_4280

    ld [hl+], a
    cp $9c
    jr nz, @-$3f

    cp a

Jump_034_42eb:
    cp a
    nop
    cp a
    nop
    add b
    cp b
    cpl
    ld hl, $3353
    and e
    dec [hl]
    nop
    rrca
    ldh a, [c]

jr_034_42fa:
    or c
    db $10
    ld [bc], a
    ld a, [$30b2]
    cp $af
    jr nz, @+$01

    sbc d
    ld h, h
    jp $df3c


    ldh a, [rIF]
    rst RST_18
    nop
    adc a
    ld e, c
    db $10
    rst RST_08
    rst RST_08
    rst RST_38
    rst RST_18
    rst RST_18
    sbc c
    ld b, $2c
    inc de
    sub [hl]
    add hl, bc
    rst RST_38
    di
    inc c
    ld hl, sp+$07
    ld a, h
    nop
    cp e
    add e
    rst RST_38
    rst RST_10
    rst RST_00
    ld e, b
    and a
    inc l
    db $d3
    inc c
    di

jr_034_432d:
    rst RST_38

jr_034_432e:
    inc [hl]
    bit 1, c
    add [hl]
    and $00
    ld h, d
    nop
    rst RST_38
    or d
    add b
    sbc b
    ld h, b
    ld b, $f8
    sub e
    ld l, h
    rst RST_38
    ret z

    scf
    ld c, h
    inc sp
    jr nz, jr_034_4361

jr_034_4346:
    ret nz

    rst RST_08
    ei
    call $a2cf
    jr c, jr_034_432e

    rrca
    rst RST_28
    rrca
    rst RST_28
    cp [hl]
    sbc c
    jr nz, jr_034_4346

    rlca
    rst RST_30
    rlca
    rst RST_30
    and c
    ld sp, $ff1f
    rst RST_28
    rst RST_38
    rrca

jr_034_4361:
    rst RST_38
    ret c

    db $fd
    jp c, $dfff

    ret nz

    rst RST_18
    ret nz

    rst RST_18
    ret c

    jr z, jr_034_43ae

    rst RST_18
    rst RST_38
    rst RST_38
    rst RST_08
    rst RST_38
    ret c

    db $fc
    db $db
    rst RST_38
    ret c

    rst RST_38
    cp $2d
    ld b, c
    ret nz

    pop hl
    sbc $ff
    ret nz

    rst RST_38
    ret nz

    pop af
    cp $3f
    ld b, b
    ld a, $41
    inc a
    ld b, e
    nop
    rst RST_38
    ld b, c
    rst RST_38
    db $fd
    xor d
    ld e, h
    ld hl, $fff8
    dec bc
    db $fd
    db $eb
    dec e
    ccf
    db $eb
    ld e, l
    ld l, e
    ld d, l
    ld l, e
    ld e, l
    ld h, e
    ld b, d
    ld h, d
    ld b, c
    rra
    ld d, l
    ld l, e
    ld c, c
    ld h, e
    ld b, c
    ld l, a
    ld b, b
    ld [hl], b
    ld b, b

jr_034_43ae:
    ld [hl], a
    ld b, b
    ld l, $74
    ld b, c
    nop
    rst RST_38
    ld b, l
    ld d, e
    ld b, b
    rst RST_18
    xor c
    ld [hl+], a
    xor h
    inc hl
    ret c

    and d
    inc sp
    cp h
    ld sp, $418f
    inc bc
    ld a, d
    and b
    ld b, d
    ld c, d
    inc de
    ld d, e
    ld [hl-], a
    inc sp
    xor c
    ld b, d
    and b
    ld b, b
    ld a, e
    ld [$7f30], sp
    ld [$df30], sp
    ld a, e
    ld [bc], a
    ld a, d
    ld [bc], a
    ld a, d
    and d
    inc a
    rst RST_28
    ld [hl], h
    ld a, e
    dec bc
    ld h, b
    rl b
    ld b, b
    ccf
    nop
    ld a, a
    sub $43
    cp a
    rst RST_38
    db $db
    rst RST_38
    ld c, d
    rst RST_38
    set 4, d
    ld b, b
    jp c, $fffd

    ld c, b
    jr nz, jr_034_43fb

jr_034_43fb:
    nop
    sub e
    ld l, h
    sub l
    ld l, d
    ccf
    sub e
    ld l, h
    sub c
    ld l, [hl]
    or c
    ld c, [hl]
    adc [hl]
    ld b, d
    sbc a
    jr nz, @+$01

    ret nz

    ccf
    ldh [$ff1f], a
    ldh a, [rIF]
    ld a, b
    add a
    rst RST_38
    ld hl, sp+$07
    db $fc
    jp $c1fe


    rst RST_00
    rst RST_10
    xor a
    rst RST_28
    call z, $ccff
    ld l, $40
    rst RST_18
    jr nc, jr_034_4469

    sbc b
    cp a
    call $edb2
    jp nc, $c2fd

    ld a, $40
    ldh [$ff8f], a
    rst RST_38
    ld h, b
    rst RST_38
    ld l, a
    inc l
    ld d, b
    and [hl]
    add hl, sp
    ld e, c
    db $10
    rst RST_10
    dec sp
    nop
    push de
    ld b, c
    ld d, h
    sub h
    nop
    inc d
    ld e, c
    db $10
    ld h, h
    ld b, e
    ldh a, [c]
    ld d, b
    ld e, c
    ld d, l
    ld h, c
    ld e, b
    ld a, d
    ld b, c
    ret


    db $e3
    ret


    db $e3
    ld a, a
    add hl, bc
    db $e3
    add hl, bc
    inc bc
    add hl, bc
    inc bc
    jp hl


    ld a, e
    ld d, b
    ld a, [bc]
    ld e, c
    db $10
    ld a, a
    add d
    ld d, c
    rlca
    cp c
    ld b, b

jr_034_4469:
    and b
    ld b, h
    adc l
    ld e, d
    xor d
    ld b, h
    ccf
    ld [hl-], a
    inc bc
    ld c, d
    inc sp
    ld [hl-], a
    inc de
    and a
    ld d, b
    sub l
    ld b, e
    db $fc
    adc [hl]
    ld b, h
    xor [hl]
    ld hl, $00ef
    rst RST_30
    nop
    sub l
    nop
    rst RST_30
    jp z, $da00

    ld c, c
    ld d, b
    ld [$fd00], a
    nop
    rst RST_38
    ld [hl], a
    nop
    db $eb
    nop
    ld l, a
    nop
    inc hl
    nop
    push af
    ld b, l
    call nz, $db50
    nop
    ld d, b
    rra
    ldh [rIF], a
    ldh a, [$ff3f]
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    nop
    jp hl


    ld d, c
    and c
    ld a, $f0
    sub b
    ccf
    adc d
    ld b, [hl]
    sbc e
    inc h
    sub d
    ld b, l
    cp $ff
    db $fc
    rst RST_38
    rst RST_38
    db $fc
    ei
    rrca
    ldh a, [$ff1f]
    rst RST_28
    ccf
    rst RST_18
    ld sp, hl
    ld a, a
    and e
    ld [hl], $28
    ld h, c
    cp $fd
    db $fc
    rst RST_38
    inc bc
    ld a, a
    db $fc
    rlca
    ei
    rlca
    rst RST_38
    rrca
    rst RST_30
    jr nz, jr_034_4540

    sub [hl]
    ld e, h
    ld hl, $ffff
    ret nc

    jr nz, @+$01

    ld h, d
    ld h, c
    pop de
    jr nz, @+$01

    db $ec
    ld l, d
    ld h, c
    ldh [c], a
    ld d, b
    rst RST_28
    ldh a, [$ff58]
    ld b, b
    rlca
    ei
    inc bc
    rrca
    rst RST_38
    ld bc, $01ff
    ld c, a
    ld [hl-], a
    xor h
    ld [hl+], a
    add e
    ld d, c
    ld e, b
    ld h, l
    nop
    and e
    jr c, jr_034_4547

    jr nc, jr_034_4570

    ld h, b
    ld h, b

jr_034_4507:
    ld h, c
    ld h, e
    ld h, b
    sub e
    ld h, [hl]
    adc l
    ld h, [hl]
    ld h, e
    ld h, d
    or d
    ld h, [hl]
    ld h, a
    add b
    adc a
    ld l, [hl]
    or d
    ld l, e
    rst RST_38
    rst RST_38
    ld c, h
    ld h, b
    rst RST_38
    sbc $e4
    ld d, b
    rst RST_38
    ldh a, [$ffef]
    ldh [rHDMA5], a
    jr nz, jr_034_4507

    rst RST_18
    cp b
    nop
    ld h, l
    inc de
    ld h, [hl]
    cpl
    inc a
    ld hl, sp-$09
    ldh a, [$ffbb]
    jr nz, jr_034_4554

    push hl
    rst RST_38
    inc [hl]
    ld h, b
    cp a
    xor e
    ld h, c
    ldh [$ff6d], a
    rrca
    rst RST_30

jr_034_4540:
    rra
    ld a, a
    rst RST_28
    ldh [$ff1f], a
    ldh [$ffdf], a

jr_034_4547:
    ldh [$ffdf], a
    ld b, e
    ld b, d
    nop
    ld e, e
    ld [hl+], a
    and d
    add hl, sp
    and d
    ld h, l
    ld h, [hl]
    ld [hl], l

jr_034_4554:
    ldh [$ff6d], a
    and d
    inc a
    ld a, l
    ld h, b
    ld a, h
    ld h, b
    ld l, $4d
    jr nz, jr_034_4563

    rst RST_38
    inc bc
    ld [hl], a

jr_034_4563:
    ld h, b
    rlca
    and $67
    xor b
    ld a, a
    ldh [$ff5a], a
    ld h, d
    ret z

    ld h, l
    ret z

    ld h, l

jr_034_4570:
    add b
    ld a, l
    and $66
    ld a, a
    ld a, a
    ccf
    rrca
    ccf
    rra
    ld e, a
    rrca
    ld c, d
    ld [hl], e
    and b
    ld h, e
    ld b, [hl]
    ld sp, $801d
    dec l
    push af
    rst RST_38
    nop
    nop
    nop
    inc bc
    ld [$be02], sp
    ld [bc], a
    ld a, $fe
    db $10
    add hl, bc
    add b
    rst RST_38
    add b
    rst RST_38
    ld a, a
    add b
    ld a, a
    ld h, c
    rst RST_38
    ld h, $05
    inc b
    ld bc, $0131
    ld [hl], $05
    nop
    nop
    ld l, $00
    rst RST_38
    ldh [rVBK], a
    ld h, b
    ld b, a
    ld [hl], b
    ld h, e
    jr nc, jr_034_45d4

    rst RST_08
    jr c, jr_034_45e5

    inc e
    nop
    ld [hl-], a
    ld bc, $0204
    cp $00
    ld c, a
    db $fc
    ld bc, $00fe
    ld d, b

jr_034_45c2:
    rlca
    ld d, b
    ld [bc], a
    ldh [$ff60], a
    inc c
    rst RST_38
    nop
    add l
    cp b
    nop
    cp h
    nop
    ld a, $82
    db $fd
    cp [hl]
    add [hl]

jr_034_45d4:
    dec b
    add a
    ldh [$ffc7], a
    ld [hl], b
    ld b, e
    ld a, b
    rst RST_38
    ld h, c
    jr c, jr_034_4600

    inc a
    jr nc, jr_034_4600

    sub b
    ld e, $fb

jr_034_45e5:
    sbc b
    rrca
    inc bc
    ld a, [bc]
    nop
    ld a, a
    nop
    ld b, b
    ld [hl], b
    rst RST_38
    and b
    jr c, jr_034_45c2

    inc e
    add sp, $0e
    db $f4
    rlca
    sub a
    ld a, [$fd03]
    ld e, l
    ld bc, $59fc
    nop

jr_034_4600:
    jp $ff01


    db $fd
    ld bc, $02c9
    ld b, c

Call_034_4608:
    ld a, b
    ld h, b
    inc a
    jr nz, jr_034_464b

    rst RST_38
    jr nc, jr_034_462e

    db $10
    rra
    jr jr_034_4623

    ld c, h
    rlca
    ei
    ld c, h
    rlca

Jump_034_4619:
    xor b
    dec b
    ccf
    nop
    ccf
    add b
    rra
    ld e, a
    add b
    rra

jr_034_4623:
    ret nz

    nop
    ld a, [hl]
    ldh a, [rP1]
    ld a, a
    db $f4
    ld [$a0c0], sp
    dec bc

jr_034_462e:
    rrca
    inc b
    add [hl]
    rlca
    ld h, $07
    ld h, $03
    cpl
    dec e
    db $10
    inc e
    rst RST_38
    ld [$0c0e], sp
    rlca
    inc h
    rlca
    ld h, $83
    cp a
    ld [hl-], a
    add e
    dec sp
    add c
    add hl, sp
    add c
    ldh [c], a

jr_034_464b:
    dec bc
    rrca
    rst RST_00
    ldh [rLCDC], a
    ld [hl], a
    or d
    inc c
    ld l, b
    ld bc, $1372
    add b
    nop
    rst RST_20
    ret nz

    add b
    ldh [$ff86], a
    inc b
    inc de
    ld b, $cc
    rlca
    db $e4
    rst RST_38
    rlca
    and $03
    ldh a, [c]
    inc bc
    di
    ld bc, $9bf9
    ld bc, $c0f9
    nop
    ccf
    nop
    ld e, d
    ld [de], a
    ld e, l
    db $10
    rlca
    rst RST_38
    ldh a, [$ff83]
    ldh a, [$ffc3]
    ld a, b
    and d
    sbc [hl]
    and d
    rst RST_38
    sbc [hl]
    or d
    adc [hl]
    or d
    adc [hl]
    cp d
    add [hl]
    sbc d
    sbc a
    add [hl]
    sbc [hl]
    add d
    sbc [hl]
    add d
    jp z, $c003

    rla
    ld h, [hl]
    rst RST_38
    inc bc
    ld h, [hl]
    inc bc
    ld [hl], e
    ld bc, $0171
    ld a, c
    adc a
    nop
    ld a, b
    nop
    ld a, h
    db $db
    db $10
    xor b
    db $10
    xor c
    db $10
    inc bc
    rst RST_38
    ldh a, [$ff81]
    ld hl, sp-$3f
    ld a, h
    ld b, c
    ld a, h
    ld h, b
    db $fd
    ld a, $d4
    dec b
    adc h
    rlca
    adc h
    rlca
    add $03
    jp $03c6


    ld e, a
    nop
    push af
    add hl, bc
    dec c
    cpl
    push af
    ld bc, $700f
    rst RST_38
    inc bc
    ld a, h
    ld bc, $601e
    ld h, a
    jr jr_034_474f

    rst RST_30
    inc b
    ld bc, $30fe
    dec h
    add c
    ld a, [hl]
    ld b, c
    ld a, $bf
    nop
    ld bc, $027d
    ld a, [hl]
    ld bc, $02e6
    nop
    ld e, l
    rrca
    ld c, c
    jr nz, @+$09

    nop
    ret nz

    ld l, [hl]
    nop

jr_034_46f1:
    ldh a, [rHDMA3]
    jr nz, jr_034_474c

    ldh [rP1], a
    ret nc

    ld d, a
    ld [hl+], a
    rlca
    ld c, l
    jr nz, jr_034_4704

    ld e, a
    nop
    ld e, a
    jr nz, jr_034_4703

jr_034_4703:
    ld h, b

jr_034_4704:
    nop
    ld b, b
    ld e, a
    nop
    and b
    ld l, e
    jr nz, jr_034_470d

    add b

jr_034_470d:
    ld [hl], d
    ld d, $72
    ld de, $2f13
    sub d
    cpl
    push af
    inc bc
    ld d, b
    inc bc
    or b
    dec hl
    ld [bc], a
    ld bc, $001c
    dec e
    nop
    add b
    or a
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0108
    inc b
    rst RST_38
    inc bc
    jr nz, jr_034_46f1

    nop
    ret nz

    ld b, b
    add b
    ld b, b
    rst RST_38

jr_034_4737:
    add b
    ld [bc], a
    add b
    add d
    nop
    add d
    nop
    ld b, $df
    nop

Call_034_4741:
    db $10
    inc c
    inc d
    ld [$0122], sp
    jr nz, @+$1a

    rst RST_38
    jr nz, @+$1a

jr_034_474c:
    ld [hl+], a
    jr jr_034_4777

jr_034_474f:
    db $10
    ld e, $00
    rst RST_38
    ld d, $08
    inc d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc h
    ld a, [de]
    rst RST_38
    inc h
    ld a, [de]
    jr z, jr_034_4776

    jr z, jr_034_4778

    ld d, a
    jr nz, @+$80

    ld b, b
    dec bc
    ld c, h
    ld [hl-], a
    ld c, h
    ld [hl-], a
    inc b
    ld a, d
    ld d, h
    rlca
    ei
    ld d, b
    daa
    ld h, b
    ld bc, $3344

jr_034_4776:
    ld b, h

jr_034_4777:
    inc sp

jr_034_4778:
    jr z, jr_034_4737

    inc de
    ld l, d
    ld bc, $7e00
    ld b, d
    inc a
    ld [hl], d
    inc bc
    adc d
    rst RST_38
    inc [hl]
    adc d
    inc [hl]
    ld c, $b0
    ld de, $020c
    cp $81
    nop
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    ld [$0506], sp
    rst RST_38
    ld [bc], a
    dec b
    ld [bc], a
    sub b
    adc $a0
    ld c, [hl]
    ldh [rIE], a
    ld c, [hl]
    ld [$c8e6], sp
    ld h, [hl]

Jump_034_47a6:
    jr z, @-$18

    ld d, b
    rst RST_38
    ld h, [hl]
    inc h
    ld [hl], d
    xor h
    ld c, [hl]
    adc [hl]
    ld h, [hl]
    ld d, a
    rst RST_38
    ld h, $56
    inc hl
    dec hl
    inc de
    inc hl
    add hl, de
    dec d
    cp a
    add hl, bc
    ld de, $900c
    ld l, [hl]
    add h
    ld d, l
    nop

jr_034_47c4:
    ld b, h
    rst RST_38
    ld a, [hl-]
    and h
    ld a, [de]
    inc h
    sbc d
    call nc, $948a
    rst RST_38
    jp z, $d32c

jr_034_47d2:
    inc l
    db $d3
    ld c, $f1
    sbc [hl]
    rst RST_38
    ld h, c
    sbc [hl]
    ld h, c

jr_034_47db:
    adc $31
    adc $31
    ld a, $ff
    ld bc, $8778
    ld c, b
    or a
    ld l, c
    sub [hl]
    ld a, c
    rst RST_38
    add [hl]
    ld l, c
    sub [hl]
    ld h, c
    sub [hl]
    ld h, b
    sub a
    ld h, c
    rst RST_38
    sub [hl]
    db $e4
    jr jr_034_47db

    jr jr_034_485d

    sbc b
    db $ec
    rst RST_38
    db $10
    db $fc
    nop
    ret c

    jr nz, jr_034_47d2

    jr nz, jr_034_47c4

    rst RST_38
    jr nz, jr_034_4838

    ld [$041a], sp
    dec c
    ld [bc], a
    rlca
    rst RST_38
    nop
    add hl, bc
    nop
    ld d, h
    nop
    xor d
    nop
    ld a, a
    cp l
    nop
    adc h
    ld bc, $0608
    ld [$8606], sp
    ld bc, $bf0a
    inc b
    db $10
    inc c
    inc b
    ld [bc], a
    inc b
    add d
    nop
    ld c, $fd
    nop
    ld d, $13
    ld a, [de]
    inc b
    ld a, [hl+]
    db $10
    add hl, hl
    db $10
    sbc a
    ld a, [hl+]
    db $10

jr_034_4838:
    ld b, l
    jr nc, jr_034_4891

    ld b, c

jr_034_483c:
    nop
    jr z, jr_034_4850

    jr nc, jr_034_483c

    ld e, $2c
    add hl, sp
    nop
    ld d, h
    ld a, [hl-]
    ld d, h
    ld a, [hl-]
    ld e, h
    sbc $51
    nop
    ld c, h
    ld [hl-], a
    ld d, [hl]

jr_034_4850:
    ld hl, $102a
    ld hl, $f755
    ld [hl+], a
    ld d, d
    dec h
    ld b, [hl]
    ld de, $2651

jr_034_485d:
    inc c
    ld [hl], d
    rst RST_28
    inc c
    ld [hl], d
    ld [$5476], sp
    ld de, $740a
    ld [$76ff], sp
    nop
    ld a, [hl]
    jr z, jr_034_4882

    jr nz, @+$1d

    ld [hl+], a
    rst RST_18
    add hl, de
    ld [hl+], a
    add hl, de
    inc d
    add hl, bc
    ld l, b
    ld de, $0c11
    rst RST_38
    ld a, [bc]
    or h
    ld a, [bc]
    or h
    nop

jr_034_4882:
    cp [hl]
    nop
    cp [hl]
    rst RST_38
    ld b, b
    sbc [hl]
    ld c, d
    sbc h
    ld [$1cde], sp
    adc $eb
    inc b
    inc bc

jr_034_4891:
    ld [$8103], sp
    ld bc, $8100
    nop
    nop
    rst RST_38
    nop
    ld [hl], h
    ld [hl-], a
    cp d
    jr nc, @-$4c

    jr c, jr_034_48dc

    rst RST_38
    sbc b
    ld e, h
    sbc b
    ld e, b
    sbc h
    ld e, h
    adc h
    xor [hl]
    rst RST_28
    ld c, h
    ld a, [bc]
    inc b
    inc c
    adc l
    nop
    ld [bc], a
    ld bc, $fc03
    ld bc, $ab00
    ld de, $c2ec
    call z, Call_034_7462
    ld [hl+], a
    rst RST_38
    xor d
    jr nc, @+$34

    sbc b
    sbc h
    ld c, b
    jp z, $ff24

    ld h, l
    ld [de], a
    ld e, [hl]
    add c
    and a
    ld b, b
    add hl, hl
    db $10
    rst RST_38
    ld b, b

jr_034_48d4:
    add b
    cp l
    ld b, d
    ldh a, [c]
    dec c
    dec e
    ld [bc], a
    rst RST_38

jr_034_48dc:
    nop
    nop
    ld h, b
    sub a
    ld d, b
    and a
    ret nc

    inc h
    ld a, a
    ld bc, $5f00
    and b
    cp a
    ld b, b
    ld hl, sp-$73
    db $10
    ld a, a
    ret nz

    nop
    add b
    nop
    ld d, b
    nop

jr_034_48f5:
    ldh [$ffe1], a
    ld [de], a
    xor l
    and b
    adc l
    db $10
    and d
    inc a
    ldh a, [$ff15]
    ld [hl+], a
    ld sp, hl
    ld [de], a
    sub d
    rst RST_38
    db $ec
    sub d
    db $ec
    ld [de], a
    db $ec
    sub b
    xor $92
    rst RST_38
    db $ec
    ccf
    ret nz

    rst RST_38
    ld a, a
    rst RST_30

jr_034_4914:
    ld a, a
    jr z, jr_034_4914

    rst RST_10
    ret nz

    ld bc, $d728
    jr z, jr_034_48f5

    rst RST_38
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, e
    add a
    and b
    ld [hl], a
    and b
    ld [hl], a
    cp a
    add d
    ld [hl], a
    nop
    rst RST_30
    nop
    rst RST_30
    ld a, [de]
    ld hl, $7f7e
    rst RST_38
    and h
    ld e, b
    ldh [rNR32], a
    call nz, $3438
    ld hl, $fcff
    nop
    ld l, [hl]
    ret nc

    cp [hl]
    ldh [$ffb0], a
    rst RST_08
    ei
    add b
    rst RST_38
    ld b, d
    ld hl, $ff00
    sub h
    ld l, e
    ld l, a
    ld l, a
    db $10
    jr z, jr_034_48d4

    nop
    ld a, [de]
    jr nz, @+$66

    sbc e
    ld d, b
    ld hl, $3cff
    jp Jump_000_00ff


    inc b
    nop
    ld [de], a
    db $ec
    ld a, a
    ld d, $ec
    nop
    cp $04
    cp $12
    inc bc
    jr nz, @+$01

    ld [bc], a
    db $fc
    nop
    cp $89
    ld [hl], b

jr_034_4975:
    and [hl]
    ld e, c
    rst RST_38
    adc h
    ld [hl], e
    adc h
    ld [hl], e
    xor h
    ld d, e
    inc l
    db $d3
    rst RST_38
    dec l
    db $d3
    adc h
    ld [hl], e
    rst RST_38
    nop
    db $10
    rst RST_20
    rst RST_28
    nop
    rst RST_30
    ld b, b
    or a
    add [hl]
    ld hl, $b645
    ld bc, $f6ff
    stop
    jr nz, jr_034_4975

    ld h, b
    call c, $9f20
    call c, $f804
    ld b, h
    cp b
    sbc d
    ld hl, $2d60
    adc d
    db $ed
    ld [hl], l
    ld [hl], d
    dec hl
    ret nz

    scf
    ret nz

    daa
    call nz, $6e33
    di
    sub c
    jr nz, @-$69

    jr nz, @-$6a

    add hl, hl
    ld [hl], $08
    ld [hl], $08
    rst RST_38
    or $08
    add $38
    ldh [c], a
    inc e
    add [hl]
    ld a, b
    rst RST_38
    ld b, d
    db $fc
    ld d, b
    xor $f5
    xor d
    ld b, l
    cp d
    ld a, a
    ld b, c
    cp [hl]
    ld b, b
    cp a
    ret nz

    cp a
    ld b, b
    ld sp, hl
    ld [hl+], a
    dec de
    ret z

    rst RST_30
    ld b, d
    ld hl, $a55a
    ld b, d
    inc hl
    ld b, [hl]
    ld hl, $3d10
    cp a
    ld bc, $00fe
    rst RST_38
    ld l, e
    sub h
    db $10
    inc sp
    dec b
    rst RST_38

jr_034_49f1:
    ld a, [$c03c]
    cp $00
    ld a, [hl-]
    call nz, $fffe
    nop
    ld a, $c0
    ld e, d
    and h
    ld a, $c0
    or $ff
    ld [$40bf], sp
    ld c, $f1
    nop
    rst RST_38
    dec l
    cp a
    jp nc, $ff00

    ld h, d
    sbc l
    rst RST_38
    adc l
    db $10
    or $fd
    ld [$3136], sp
    xor $10
    ld a, [hl]
    add b
    cp [hl]
    ld b, b
    or c
    ret nz

    adc l
    db $10

jr_034_4a23:
    ld l, b
    ld hl, $2304
    db $10
    xor $68
    ld hl, $ffe1
    sbc [hl]
    reti


    and [hl]
    ld sp, hl
    add [hl]
    jp hl


    sub [hl]
    db $eb
    rst RST_38
    sub h
    ld l, d
    sub l
    ld [$e215], a
    dec e
    inc b
    xor e
    rst RST_30
    ld [hl+], a
    add c
    jr nc, @+$64

    add c
    jr nc, @+$04

    adc c
    jr nc, jr_034_4a4d

    rst RST_38
    rst RST_30
    add b

jr_034_4a4d:
    ld a, h
    add b
    ld a, h
    and b
    ld e, h
    jr nz, jr_034_4a23

    call c, Call_034_5ce0
    and b
    sbc c
    jr nc, jr_034_49f1

jr_034_4a5b:
    jr nz, jr_034_4a5b

    nop
    or $a1
    ld [hl-], a
    inc d
    xor $a8
    ld sp, $ee10
    adc h
    ld [hl], e
    rst RST_38
    inc c
    di
    ld c, $f1
    ld l, $d1
    xor [hl]
    pop de
    rst RST_38
    xor d
    push de
    xor h
    db $d3
    xor h
    db $d3
    nop
    rst RST_30
    rst RST_30
    inc hl
    or $21
    jp Jump_000_0330


    or $81
    halt
    rst RST_38
    add b
    ld [hl], a
    add b
    ld [hl], a
    ld b, h
    cp b
    ld h, h
    sbc b
    cp $d2
    ld sp, $dc20
    and b
    ld e, h
    and h
    ld e, b
    and h
    ld e, a
    ld e, b
    jp nc, $c225

    dec [hl]
    ldh [c], a
    inc sp
    add b
    dec h
    ld [hl+], a
    cp a
    call z, $cc34
    inc [hl]
    db $fc
    inc b
    ldh a, [$ff31]
    ld b, h
    rra
    cp h
    ld l, h
    or h
    ld l, h
    or h
    xor e
    ld [de], a
    xor e
    ld [de], a
    ld [bc], a
    ld bc, $00d9
    pop hl
    db $10
    db $10
    ld b, e
    nop
    nop
    inc d
    ld bc, $0000
    rst RST_38
    jr nc, jr_034_4ac8

jr_034_4ac8:
    stop
    nop
    ld [$0c00], sp
    sbc [hl]
    ld e, l
    jr nz, jr_034_4ad4

    nop
    inc bc

jr_034_4ad4:
    ld bc, $13aa
    xor e
    ld [de], a
    ld b, b
    ld a, [$4039]
    jr nz, @+$08

    ld b, d
    ld bc, $0203
    ld [bc], a
    call nz, Call_000_34fd
    rla
    db $10
    add hl, bc
    ld [$c408], sp
    ret nz

jr_034_4aee:
    ld h, d
    rst RST_38
    ld h, b
    inc de
    db $10
    ld bc, $1000
    db $10
    ld de, $10ff
    jr nc, jr_034_4aee

    ld [$005e], sp
    rrca
    jr @+$71

    inc b
    ldh [c], a
    ld [bc], a
    ld bc, $402e
    ld [bc], a
    ld bc, $205d
    rst RST_38
    ld [$1c14], sp
    db $10
    ld [$3424], sp
    ld b, d
    ei
    ld b, d
    add c
    adc b
    db $10
    add b
    add c

Jump_034_4b1c:
    ld b, b
    ld b, d
    sbc d
    rst RST_38
    add h
    ld h, d
    ld b, h
    ld d, h
    ld a, [hl+]
    inc b
    ld c, d
    inc c
    ld a, a
    adc d
    adc h
    dec bc
    ld d, b
    ld d, c
    jr nz, jr_034_4b61

    ld b, b
    ld b, d
    sub d
    ld a, [hl+]
    ld b, b
    ld b, $6c
    ld b, c
    inc h
    ld b, b
    ret nz

    db $10
    ld b, a
    xor e
    ld [de], a
    ld [$15ff], a
    ret nc

    cpl
    db $fc
    inc bc
    pop hl
    rra
    pop de
    rst RST_38
    cpl
    add sp, $17
    cp $01
    ccf
    nop
    rrca
    rst RST_18
    ldh a, [$ffe0]
    rst RST_38
    ld a, a
    rst RST_38
    push bc
    ld b, c
    ld [hl], b
    rst RST_38
    rst RST_38
    add b
    ld a, a
    swap h

jr_034_4b61:
    nop
    nop
    ld a, $01
    rst RST_38
    ld l, a
    nop
    dec a
    ld [bc], a
    ld e, a

jr_034_4b6b:
    nop
    dec c
    ld [bc], a
    rst RST_30
    ld d, [hl]
    ld bc, $8d0b

jr_034_4b73:
    db $10
    add h
    ld a, b
    ld b, $fc
    rst RST_38
    ld [hl-], a
    call c, Call_034_7a84
    ld b, d
    cp [hl]
    adc d
    ld [hl], h
    db $fd
    db $fc
    adc l
    db $10
    jr nc, jr_034_4b87

jr_034_4b87:
    ld l, b
    db $10
    ld c, b
    jr nc, jr_034_4b6b

    ret z

    jr nc, jr_034_4b73

    jr jr_034_4c09

    ld hl, $0640
    ld bc, $2dff
    inc bc
    ld d, l
    inc bc
    dec hl
    rlca
    rra
    rlca
    rst RST_38
    ccf
    rlca
    ld e, e
    rlca
    dec a
    inc bc
    nop
    ret nz

    rst RST_38
    ret z

    ldh [$ffd4], a
    ldh [$ffea], a
    ldh a, [$fffc]
    ldh a, [$ffbf]
    ld a, [$edf0]
    ldh a, [$ffda]
    ldh [$ffab], a
    ld de, $dec0
    dec a
    ld b, b
    jr jr_034_4bbf

jr_034_4bbf:
    inc c
    inc c
    and l
    db $10
    ld bc, $ff80
    add b
    add b
    ret nz

    ld b, b
    ld b, b
    jr nz, jr_034_4bed

    db $10
    rst RST_38
    ld [hl-], a
    inc d
    jr jr_034_4bf3

    jr c, jr_034_4c15

    adc h
    ld [$40de], sp
    ld d, b

jr_034_4bda:
    nop
    ld [$0ff1], sp
    dec a
    ld b, b
    db $10
    db $10
    rst RST_38
    db $10
    ld [$4408], sp
    ld b, l
    ld b, h
    ld b, h
    jr @+$01

    ld e, a

jr_034_4bed:
    db $e4
    db $e4
    ld bc, $4245
    ld b, a

jr_034_4bf3:
    ld e, d
    rst RST_00
    ld a, e
    db $e4
    rst RST_00
    sub b
    jr nz, jr_034_4bda

    stop
    ld b, a
    inc h
    ld [hl+], a
    ld a, a
    inc e
    inc d
    ld b, $0a
    ld de, $1011
    ld h, b

jr_034_4c09:
    ld d, c

jr_034_4c0a:
    rst RST_38
    ld h, b
    nop
    ld b, b
    jr jr_034_4c29

    ld h, $17
    ld hl, $21bf

jr_034_4c15:
    pop bc
    pop hl
    ccf
    ccf
    ld b, c
    adc d
    ld d, c
    ld b, b
    ld hl, sp-$5c
    ld b, [hl]
    ld l, $40
    ld [bc], a
    ld bc, $8070
    ld [$3400], sp

jr_034_4c29:
    rst RST_38
    ret nz

    stop
    and b
    ret nz

    ld [$4080], sp
    rst RST_38
    ld b, b
    ld c, $30
    rst RST_38
    nop
    dec c
    ldh a, [c]
    ldh a, [c]
    rst RST_38
    db $fd
    jp hl


    or $82
    db $fd
    dec b
    ld a, [$e75f]
    and b
    rst RST_38
    nop
    ld l, l
    jr nz, jr_034_4c0a

    ld d, d
    cp $00
    ld a, [hl]
    rst RST_10
    add b
    db $fc
    nop
    call c, Call_034_7c11
    ld [hl], h
    db $10
    ld a, [hl]
    nop
    push af
    ld a, $d5
    ld d, d
    ld a, h
    adc l
    db $10
    cp d
    dec b
    ld [hl], h
    dec bc
    rst RST_38
    or b
    rrca
    ld [hl], b
    rrca
    cp b
    rlca
    ld e, h
    inc bc
    db $fd
    rra
    adc l
    db $10
    or b
    ldh a, [$ff08]
    ldh a, [rNR10]
    ldh [$ffdd], a
    nop
    di
    ld d, d
    ldh a, [rP1]
    db $fd
    ld d, b
    jr nz, @+$41

    ret nz

    rst RST_38
    sbc a
    ldh [$ffbc], a
    ret nz

    sbc h
    ldh [$ff9c], a
    ldh [$ff7f], a
    sub h
    ldh [$ff80], a
    nop
    and b
    ld b, b
    ldh a, [$ffce]
    db $10
    rst RST_30
    db $10
    ld h, b

jr_034_4c99:
    add b
    rla
    ld h, b

jr_034_4c9c:
    sub b
    ld h, b

jr_034_4c9e:
    ei
    ret nz

jr_034_4ca0:
    pop af
    cp l
    dec b
    ld h, b
    rst RST_30

jr_034_4ca5:
    jr nz, @+$29

    ld h, b
    cp l
    jp nz, $c4fb

    rst RST_38
    ld [$98f0], sp
    ld h, b
    ret c

    jr nz, jr_034_4ca0

    db $10
    rst RST_38
    ld hl, sp+$00
    add sp, $10
    ret z

    jr nc, jr_034_4ca5

jr_034_4cbd:
    db $10

jr_034_4cbe:
    rst RST_38
    rst RST_10
    add sp, -$30
    rst RST_28
    jp nc, $d2ed

    db $ed
    rst RST_38
    sbc $e1
    db $dd
    ldh [c], a
    rst RST_18
    ldh [$ff9f], a
    ret nz

    rst RST_38
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, h
    add b
    jr c, jr_034_4c99

    rst RST_38
    jr z, jr_034_4c9c

    jr nc, jr_034_4c9e

    and b
    ld b, b
    ldh [rP1], a
    rst RST_38
    db $fc
    ret nz

    sub e
    ldh [$ffbb], a
    ret nz

    sbc d
    pop hl
    rst RST_38
    sbc h
    pop hl
    jp c, $cbe0

    ldh a, [$ffdf]
    ldh [rIE], a
    ld l, d
    nop
    add sp, $00
    halt
    add b
    jr nc, jr_034_4cbd

    rst RST_38
    ld a, [hl-]
    ret nz

    ld a, $00
    sbc b
    nop
    ld d, b

jr_034_4d05:
    add b
    rst RST_38
    jp $c7fc


    ld hl, sp-$55
    call nc, $c0bf
    rst RST_38
    ld a, [$dcc5]
    db $e3
    call c, $c8e3
    rst RST_20
    rst RST_18
    ret nc

    jr c, @-$1e

    jr jr_034_4cbe

    pop hl
    nop
    add sp, $10
    rst RST_38
    add sp, $10
    ld a, b
    add b
    ld hl, sp+$00
    inc b
    rlca
    rst RST_38
    ld [$100f], sp
    ld e, $20
    inc a
    ld b, b
    ld a, b
    cp a
    add b
    ldh a, [rSB]
    ldh [$ff03], a
    ret nz

    adc e
    ld de, $ff1c
    nop
    ld [hl-], a
    nop
    ld a, [hl-]
    db $10
    ld a, $18
    db $dd
    rst RST_38
    nop
    inc hl
    nop
    jr nz, @-$1e

    db $10
    ldh a, [$ff08]
    rst RST_38
    ld a, b
    inc b
    inc a
    ld [bc], a
    ld e, $00
    ld c, $c0
    di
    dec b
    jr nz, jr_034_4d05

    dec d
    sub h
    ld d, h
    ld [bc], a
    inc bc
    inc h
    rst RST_20
    rst RST_28
    ld [$10ef], sp
    ld e, [hl]
    and [hl]
    ld h, c
    add c
    pop af
    nop
    ld h, a
    db $e3
    nop
    jp Jump_034_47a6


    ld c, $40
    add b
    ld b, b
    add hl, bc
    ld h, b
    push hl
    cp b
    add hl, bc
    ld h, b
    sbc l
    dec b
    ld [hl], d
    ld h, $61
    sub b
    ld h, b
    adc b
    ei
    ld [hl], b
    add b
    inc de
    ld [hl], d
    xor b
    ld [hl], b
    ld a, b
    ldh a, [$ff28]
    rst RST_38
    ldh a, [rIE]
    ret nz

    sbc $e0
    rst RST_18
    ldh [$ffce], a
    ei
    ldh a, [$ffde]
    dec h
    ld [hl], b
    adc $f0
    rst RST_10
    add sp, $28
    rst RST_38
    db $10
    jr z, jr_034_4db7

    ld [$5830], sp
    jr nc, jr_034_4e14

    rst RST_38
    jr nc, jr_034_4dc7

    jr nc, jr_034_4df9

    jr nc, @+$5a

    jr nz, @+$41

    rst RST_38
    and b

jr_034_4db7:
    ld c, a
    ld h, b
    add a
    ldh a, [$ffd3]
    add sp, -$07
    ld a, a
    call nz, $c4e9
    ld sp, hl
    call nz, $c1fc
    ld d, b

jr_034_4dc7:
    ld h, c
    push af
    ret nc

    ld d, e
    ld [hl], b
    ret c

    ld a, e
    ld h, b
    ld e, $00
    ld [$ff00], a
    sbc [hl]
    pop hl
    xor a
    ret nc

    xor a
    ret nc

    adc a
    ldh a, [rIE]
    reti


    ldh [$fff3], a
    ldh [$ffc1], a
    ldh [$ffd3], a
    ldh [rIE], a
    ld d, b
    add b
    ret nc

    nop
    ret nz

    db $10
    ldh a, [rP1]
    rst RST_38
    xor b
    ld b, b
    sub b
    ld h, b
    ldh a, [rDIV]
    ld hl, sp+$00
    rst RST_38
    pop bc

jr_034_4df9:
    and $dd
    and $e7
    adc $e6
    rst RST_08
    rst RST_38
    and $cf
    push af
    adc $d1
    xor $d0
    rst RST_28
    push bc
    ld hl, sp-$33
    ld d, b
    ldh a, [$ffcd]
    ld d, b
    sub b
    ld [hl], c
    inc a
    ld h, c

jr_034_4e14:
    inc bc
    add c
    rst RST_28
    inc de
    ld de, $3809
    add $61
    ld bc, $000f
    rst RST_38
    rlca
    nop
    inc bc
    and e
    ld bc, $81e3
    db $dd
    cp $b5
    ld h, b
    cp d
    sub b
    ld a, $18
    sbc l
    add c
    ld b, d
    ccf
    jp Jump_000_07a4


    add sp, -$71
    ret nc

    and l
    ld h, h
    push hl
    db $10
    call nz, Call_034_62af

jr_034_4e41:
    nop
    ld b, l
    pop bc
    cp l
    ld h, b
    ret nc

    ld a, c
    inc h
    ld d, c
    ld l, a
    sbc a
    rst RST_38
    ld c, a
    cp a
    and a
    ld e, a
    rst RST_28
    rra
    rst RST_18
    ccf
    rlca
    adc a
    ld a, a
    sbc a
    ei
    ld [hl], b
    dec e
    add b
    add hl, de
    rst RST_38
    jr nz, jr_034_4e41

    db $10
    ldh a, [$ff08]
    ld a, b
    inc b
    inc a
    rst RST_38
    ld [bc], a
    ld e, $00
    ld c, $00
    dec b
    nop
    inc bc
    rst RST_38
    inc b
    rlca
    ld [$100f], sp
    ld e, $20
    inc a
    rst RST_38
    ld b, b
    ld a, b
    add b
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    rst RST_38
    and b
    nop
    ldh [$ff80], a
    call c, $3200
    nop
    rst RST_38
    ld a, [hl-]
    db $10
    ld a, $18
    sbc l
    add c
    ld b, d
    jp $e477


    add a
    ret z

    inc de
    ld a, [bc]
    nop
    ld bc, $4200
    inc b
    rst RST_38
    ret nz

    nop
    ld hl, $a201
    inc bc
    nop
    ld bc, $1cf5
    dec h
    inc b
    call c, Call_000_024b
    inc bc
    add c
    inc de
    ld de, $09fb

jr_034_4eb5:
    jr c, @+$08

    ld bc, $0f01
    ret nz

    rlca
    jr nz, jr_034_4eb5

    inc bc
    and b
    ld bc, $0722
    db $dd
    ld bc, $0322
    rst RST_38
    cpl
    rst RST_18
    rrca
    rst RST_38
    adc a
    ld a, a
    rst RST_08
    ccf
    rst RST_38
    rst RST_08
    ccf
    xor a
    ld e, a
    sbc a
    ld l, a
    sbc a
    ld l, a
    cp h
    add h
    inc bc
    add [hl]
    ld bc, $7f8f
    adc a
    ld a, a
    add d
    ld bc, $bf07
    rst RST_38
    rlca
    rst RST_38
    rla
    rst RST_28
    sub a
    adc a
    ld [bc], a
    rst RST_28
    cp a
    rra
    inc bc
    ld bc, $0103
    dec e
    dec h
    ld [$afa4], sp
    rlca
    add sp, -$71
    ret nc

    dec [hl]
    add hl, bc
    add c
    ld b, d
    dec b
    nop
    xor $40
    nop
    inc bc
    nop
    ld l, $01
    ld [$05c0], sp
    jr nz, jr_034_4f8f

    inc bc
    adc $ee
    daa
    push af
    rst RST_28
    rra
    add [hl]
    ld bc, $9f7d
    add l
    ld [bc], a
    nop
    add b
    db $10
    db $10
    ld [$0465], sp
    inc bc
    nop
    rlca
    db $dd
    nop
    ld b, d
    nop
    ld d, d
    dec b
    inc l
    ld bc, $09e0
    inc c
    ld bc, $00fb
    add b
    ld b, d
    inc bc
    ld c, $00
    add hl, de
    nop
    sbc l
    rst RST_30
    adc b
    ld e, a
    call z, Call_000_09c0
    ld bc, $03e0
    ret nz

    di
    and d
    inc a
    ld d, b
    rra
    ld d, [hl]
    ld de, $3c22
    and d
    cp h
    pop hl
    ld [hl+], a
    ld l, e
    inc de
    ld h, a
    db $10
    ld l, b
    db $10
    ld d, l
    inc d
    cpl
    rst RST_18
    adc a
    rst RST_38
    ld a, a

jr_034_4f61:
    xor a
    ld e, a
    rst RST_28
    rra
    ld l, a

jr_034_4f66:
    sbc a
    rst RST_28
    rra
    rra
    xor a
    ld e, a
    adc a
    ld a, a
    ld de, $3200
    ld [hl], b
    ld a, h
    ld b, $1b
    ld [$a141], sp
    add b
    ld h, c
    nop
    nop
    db $ec
    jr nz, jr_034_4ffc

    ld c, $02

jr_034_4f81:
    dec b
    sub b
    adc b
    add [hl]
    and a
    sbc b
    or l
    add b
    or c
    nop
    ret nc

    ld bc, $90e3

jr_034_4f8f:
    ld bc, $38d7
    nop
    db $fc
    db $fc
    add b
    ld [bc], a
    dec bc
    daa
    sbc h
    ld e, h
    ld d, a
    ld c, [hl]
    inc c
    ld c, h
    inc c
    inc c
    jr @-$7e

    sub b
    push bc
    ld [hl], e
    jr nz, @+$28

    dec h
    inc b
    ld h, d
    ld a, d
    nop
    jr c, @-$7e

    ld [hl+], a
    sub b
    ret nz

    ld a, b
    nop
    nop
    inc a
    nop

jr_034_4fb7:
    ccf
    ld a, a
    pop de
    nop
    nop
    ld [bc], a
    dec h
    ccf
    rst RST_38
    nop
    xor d
    ld bc, $fcef
    jr jr_034_4f66

    rst RST_38
    inc b
    ld c, c
    rst RST_38
    adc h
    inc l
    ld hl, sp-$1d
    nop
    jr nz, jr_034_4f61

    pop hl
    inc b
    rla
    dec b
    ld a, h
    xor h
    db $ec
    and l
    ld d, h
    and h
    ld h, b
    and h
    add h
    jr nz, jr_034_4f81

    inc b
    ld e, c
    ld e, e
    sbc b
    jr c, @+$3f

    ld l, l
    call z, $24cd
    dec b
    inc d
    db $10
    inc b
    ld b, h
    dec b
    ld b, c
    sbc a
    ld b, c
    sub c
    sub l
    and c
    inc hl
    dec h
    dec h
    ld a, a
    ld a, a

jr_034_4ffc:
    nop
    rst RST_30
    rst RST_30
    nop
    ld a, a

jr_034_5001:
    ld a, a
    cp a
    cp a
    add b
    or a
    or a
    add b
    cp a
    cp a
    ld bc, $0a17
    ld e, h
    dec d
    dec [hl]
    ld d, l
    jr nc, jr_034_4fb7

    add c
    pop de
    ld d, b
    inc b
    ld d, h
    call nz, $0c10
    ld b, b
    ld l, b
    ld b, b
    ld b, d
    ld a, [bc]
    ld [bc], a
    inc b
    adc l
    ld e, $3e
    ld [hl], $66
    ld h, e
    jp Jump_000_01c3


    sub l
    sub c
    inc d
    ld [hl+], a
    jr nz, @+$62

    ld [de], a
    dec d
    dec l
    add hl, hl
    ld e, l
    ld d, a
    dec d
    dec d
    ld d, l
    nop
    rst RST_30
    rst RST_30
    nop
    ld a, a
    ld a, a
    nop
    rst RST_30
    add b
    or a
    or a
    add b
    ccf
    ccf
    add b
    or a
    jr nc, jr_034_5001

    ld l, l
    add sp, -$58
    jp nz, $d0d2

    ldh a, [$ffe0]
    add $c6
    ld [hl-], a
    add [hl]
    ld [bc], a
    ld h, $77
    dec d
    dec c
    ld h, a
    ld h, d
    ld h, b
    ld h, c
    ld h, b
    ld b, l
    ld bc, $8189
    ld c, c
    ld bc, $4129
    rst RST_30
    nop
    ld a, a
    ld a, a
    nop
    rst RST_30
    rst RST_30
    nop
    rst RST_38
    inc bc
    ld a, [hl]
    ld a, [hl]
    inc bc

jr_034_5077:
    rst RST_30
    rst RST_30
    nop
    scf
    jr nc, jr_034_509c

    rra
    jr nc, jr_034_5077

    rst RST_30
    nop
    call c, $d2c2
    adc b
    add b
    and c
    adc a
    adc a
    ld [hl-], a
    nop
    ld [bc], a
    rlca
    ccf
    db $fc
    ldh a, [$ff80]
    db $e4
    add b
    ld [hl-], a
    ld hl, sp+$05
    ld [hl-], a
    ld h, $02
    ld [hl-], a
    ld h, [hl]

jr_034_509c:
    inc b
    ld [hl-], a
    ld h, h
    ld [bc], a
    ld [hl-], a
    ld h, [hl]
    inc b
    add hl, de
    add hl, bc
    xor c
    add hl, hl
    ld bc, $1115
    ld bc, $4c0c
    ld c, h
    inc l
    inc l
    inc c
    ld c, h
    inc c
    rlca
    ccf
    ld a, a
    ld a, [hl]
    ld a, h
    ld a, d
    ld [hl], h
    ld l, b
    ld [hl-], a
    ld hl, sp+$07
    ld [hl-], a
    ld h, [hl]
    rlca
    ld bc, $3205
    ld de, $0902
    add hl, bc
    ld bc, $2050
    ld c, b
    ld [hl], d
    inc a
    rrca
    inc hl
    jr nz, jr_034_50d3

    ld h, e

jr_034_50d3:
    di
    ld a, c
    add hl, sp
    add hl, de
    inc de
    inc de
    ld hl, $2623
    inc l
    ld a, [de]
    inc [hl]
    ld l, b
    ld d, b
    ld [hl-], a
    ld de, $1502
    dec [hl]
    ld h, c
    ld b, l
    add hl, bc
    jr nz, @+$4e

    ld b, d
    ld l, h
    rst RST_08
    rst RST_08
    rst RST_18
    rst RST_18
    ld bc, $0301
    rlca
    add hl, bc
    add hl, bc
    inc bc
    inc de
    ld [hl-], a
    rst RST_18
    ld [bc], a
    rst RST_08
    rst RST_28
    ld c, a
    ld c, [hl]
    ld a, b
    ld [hl-], a
    ld h, [hl]
    inc b
    ld [hl-], a
    ld h, $02
    ld [hl-], a
    ld h, [hl]
    inc b
    ld [hl-], a
    ld h, h
    ld [bc], a
    ld bc, $2909
    add hl, hl
    dec b
    dec h
    and c
    ret


    ld h, b
    nop
    ld d, b
    ld l, b
    inc [hl]
    ld a, [de]
    inc l
    ld h, $26
    ld [hl-], a
    add [hl]
    ld [bc], a
    add $c6
    ldh [$fff0], a
    ld h, b
    ld h, c
    ld h, c
    ld h, d
    ld h, a
    rrca
    dec de
    ld a, e
    dec b
    ld d, c
    ld d, l
    dec b
    ld de, $a5a1
    ld d, l
    inc hl
    ld hl, $2120
    daa
    ld e, $78
    ld h, b
    ld b, $56
    ld h, [hl]
    ld b, $56
    adc $1e
    cp [hl]
    ld a, [hl+]
    jr nz, jr_034_5151

    adc e
    sub e
    xor d
    dec c
    ld a, [hl+]
    sub h
    ld b, l
    jr z, @-$6c

jr_034_5151:
    ld b, l
    inc de
    add hl, hl
    ld d, [hl]
    sub l
    ld hl, $7a0f
    ld d, b
    ld [hl], a
    ld [hl+], a
    rst RST_08
    ld a, a
    pop bc
    inc e
    ld h, a
    sub e
    ld a, $f1
    ld e, $ff
    ld a, b
    rst RST_08
    di
    inc a
    ret z

    ld b, b
    add b
    rst RST_38
    db $e4
    sbc a
    dec bc
    rrca
    ld [hl], b
    jr nc, jr_034_51a5

    rst RST_38
    ld e, $f3
    rst RST_08
    cp h
    inc bc
    ld [bc], a
    nop
    rst RST_38
    adc a
    ccf
    rst RST_20
    ret


    ld a, h
    adc a
    ld a, b
    push hl
    ld a, [de]
    pop hl
    ld e, h
    dec h
    db $e4
    ld d, a
    ld sp, hl
    adc h
    ld c, h
    inc c
    xor h
    inc e
    call z, $9a47
    nop
    ld d, b
    ld l, b
    ld [hl], h
    ld a, d
    ld a, h
    ld a, [hl]
    ld a, a
    cp [hl]
    dec a
    dec a
    ld l, l
    ld l, l
    call z, $c6c6

jr_034_51a5:
    ld l, b
    ret z

    jp z, $cbe1

    sbc d
    sbc h
    and b
    sub [hl]
    inc a
    call nc, Call_034_4190
    ld h, b
    rla
    inc de
    ld [bc], a
    sbc a
    ld h, d
    sbc a
    ld sp, hl
    rst RST_08
    ld [hl], c
    adc [hl]
    db $fc
    adc b
    ld [hl], b
    pop hl
    sbc b
    ldh a, [$ff38]
    call nz, $1720
    add b
    ld [hl-], a
    nop
    inc b
    ld d, $32
    ld d, b
    ld [bc], a
    db $10
    ld d, b
    scf
    ld d, b
    ld [hl-], a
    ld h, [hl]
    rlca
    inc b
    add sp, $01
    ld [hl-], a
    nop
    inc b
    cp a
    ld de, $a70e
    ld e, c
    ld c, a
    inc e
    inc hl
    ld hl, $c29c
    xor b
    jp z, $f936

    adc $7f
    ccf
    sbc a
    ld c, a
    add a
    ld d, e
    pop de
    ld l, b
    xor a
    xor a
    ret nz

    daa
    daa
    ret nz

    xor a
    xor a
    ret nz

    daa
    daa
    ret nz

    xor a
    xor a
    ret nz

    daa
    daa
    ret nz

    xor a
    xor a
    ret nz

    daa
    daa
    ret nz

    ld [hl], h
    ld [hl], h
    inc bc
    db $f4
    db $f4
    inc bc
    ld [hl], h
    ld [hl], h
    inc bc
    db $f4
    db $f4
    inc bc
    ld [hl], h
    ld [hl], h
    inc bc
    db $f4
    db $f4
    inc bc
    ld [hl], h
    ld [hl], h
    inc bc
    db $f4
    db $f4
    inc bc
    rrca
    db $10
    jr nz, jr_034_5248

    ld b, h
    ld b, b
    ld b, c
    add b
    adc b
    ld a, [hl+]
    ld [de], a
    xor b
    dec d
    ld b, c
    ld [bc], a
    ld [$0032], sp
    rlca
    ld d, l
    ld [bc], a

Call_034_5239:
    sub h
    ld c, d
    ld a, [hl+]
    ld d, l
    ld a, a
    ccf
    add hl, de
    add hl, bc
    add hl, hl
    xor c
    ld bc, $1115
    pop bc
    ld [hl-], a

jr_034_5248:
    ccf
    ld b, $1f
    add c
    add l
    ld [hl-], a
    sub c
    ld [bc], a
    ret


    ret


    pop hl
    ld [hl-], a
    rra
    rlca
    pop hl
    db $e3
    db $e3
    jp hl


    jp hl


    pop hl
    db $e3
    db $e3
    ld [hl-], a
    rra
    rlca
    jp hl


    jp hl


    pop hl
    push hl
    push hl
    pop hl
    push hl
    jp hl


    rra
    ld [hl-], a
    ccf
    ld b, $e1
    pop bc
    db $e3
    rst RST_20
    jp hl


    jp hl


    jp Jump_000_2fd3


    ld a, a
    ld e, a
    ld d, a
    ld e, a
    rst RST_10
    or a
    or a
    pop bc
    adc c
    jp hl


    jp hl


    add l
    dec h
    and c
    ret


    add c
    ld b, c
    ld b, d
    ld b, h
    jr nz, jr_034_52ab

jr_034_528b:
    sub b
    adc a
    ld l, $6f
    ld e, l
    rla
    ld l, $18
    halt
    db $e4
    ld [hl-], a
    ret nz

    rlca
    rst RST_38
    nop
    ld [hl-], a
    ret nz

    dec c
    jr z, jr_034_528b

    sub d
    ld c, c
    and l
    ld e, e
    sub [hl]
    ld c, c
    add d
    cp [hl]
    xor b
    or a
    cp h
    add b

jr_034_52ab:
    adc c
    sbc a
    nop
    jr jr_034_52b4

    inc de
    ld c, $02
    nop

jr_034_52b4:
    add b
    nop
    cp $1f
    ccf
    ldh a, [rPCM12]
    call $8000
    and b
    or c
    adc b
    and a
    ld [hl-], a
    add b
    ld [bc], a
    pop bc
    rlca
    cp a
    ldh [$ff6e], a
    ldh a, [rNR10]
    nop
    add b
    ldh a, [$ff80]
    ld [hl-], a
    nop
    inc bc
    inc bc
    and b
    xor e
    or a
    rst RST_30
    or a
    rst RST_30
    rst RST_30
    rst RST_28
    rra
    nop
    nop
    add b
    ret nc

    ret c

    jp c, $9dfb

    inc b
    rrca
    add hl, sp
    ld c, $32
    nop
    ld [bc], a
    pop af
    nop
    sbc [hl]
    jp $327c


    nop
    ld [bc], a
    ldh [$ffa1], a
    dec c
    ret nz

    jr nz, jr_034_5301

    nop
    nop
    cp [hl]
    ld bc, $e7fb
    adc h

jr_034_5301:
    pop hl
    inc b
    nop
    ld b, h
    call z, $20c8
    ld [hl-], a
    nop
    ld b, $02
    inc bc
    inc de
    inc de
    ld e, e
    dec bc
    dec de
    rra
    ld e, e
    ld a, e
    rst RST_18
    ld e, a
    rst RST_38
    ld [hl-], a
    rst RST_28
    ld [bc], a
    rst RST_10
    rst RST_00
    or a
    ld [hl], a
    ld [hl], a
    db $db
    ei
    ei
    rst RST_38
    ei
    rst RST_38
    ld a, [$20fe]
    jr z, jr_034_5393

    ld l, b
    ld e, b
    ret c

    jp c, $80da

    add b
    rst RST_38
    ld [$ff08], sp
    ld [hl-], a
    add b
    inc bc
    cp a
    adc b
    adc b
    cp a
    add b
    add b
    nop
    nop
    ld bc, $0203
    ld a, [bc]
    ld a, [bc]
    rrca
    ld e, e
    ld a, a
    ld l, a
    rst RST_28
    rst RST_38
    rst RST_28
    ld [hl-], a
    rst RST_38
    add hl, bc
    rst RST_30
    db $eb
    jp $bbdb


    cp l
    ld a, l
    ld a, l
    cp $32
    rst RST_38
    ld b, $fa
    jp c, $eade

    ld [$ee32], a
    ld [bc], a
    rst RST_38
    ld [$ff08], sp
    add b
    add b
    rst RST_38
    ld [$88bf], sp
    adc b
    cp a
    nop
    nop
    cp a
    adc b
    rrca
    dec bc
    inc de
    rla
    rla
    ccf
    cpl
    cpl
    nop
    ld [hl-], a
    ld c, $02
    ld [hl-], a
    ld l, $02
    ld l, [hl]
    ld [$e28a], sp
    ldh [$ffe1], a
    db $eb
    add sp, -$13
    ld [hl-], a
    cp $07
    ld [$80ff], sp
    add b

jr_034_5393:
    rst RST_38
    ld [$ff08], sp
    ld bc, $82ff
    add d
    rst RST_38
    add hl, bc
    ld [$28ff], sp
    ccf
    db $10
    db $10
    ccf
    add sp, $08
    rst RST_38
    cpl
    ccf
    cpl
    ld a, a
    ld a, [hl]
    ld [hl], c
    ld l, a
    ld l, [hl]
    rst RST_38
    rst RST_38
    ld hl, sp-$39
    ccf
    ld hl, sp-$40
    nop
    ei
    inc bc
    ld [hl-], a
    db $e3
    dec b
    ld [hl-], a
    ld l, [hl]
    ld [bc], a
    ld [hl-], a
    xor $04
    db $ec
    db $ec
    ld [hl-], a
    xor $05
    cp $fe
    ld [hl-], a
    ld a, [hl]
    dec b
    ld [hl-], a
    rst RST_28
    rlca
    ld [hl-], a
    nop
    ld [bc], a
    ld bc, $0503
    add hl, bc
    ld de, $e332
    rlca
    ld [hl-], a
    xor $07
    ld [hl-], a
    ld a, [hl]
    rlca
    ld hl, $3141
    dec c
    ld b, e
    ld [hl], b
    ld c, h
    ld b, e
    ld a, $de
    xor $f6
    halt
    ld [hl-], a
    ld [hl], $02
    ld b, d
    ld b, h
    ld c, c
    ld d, e
    ld h, l
    ld c, c
    ld de, $3221
    ld [hl], $03
    halt
    or $ee
    sbc $41
    ld sp, $733d
    ldh [$ff32], a
    ret nz

    ld [bc], a
    ld a, $32
    ld a, [hl]
    ld b, $32
    ret nz

    ld [bc], a
    ret nc

    ldh a, [$ff60]
    ld bc, $3207
    xor $03
    ld [hl-], a
    ld l, [hl]
    inc bc
    ld [hl-], a
    xor $06
    db $ec
    ld [hl-], a
    ld a, [hl]
    ld b, $fe
    add hl, de
    ld h, c
    ld hl, $4911
    ld h, l
    ld d, e
    ld c, c
    ld l, [hl]

jr_034_542a:
    ld l, $2e
    ld [hl-], a
    ld c, $02
    ld b, $00
    db $ed
    jp hl


    ld [$e4e1], a
    add sp, $14
    ld b, [hl]
    ld a, [$fafe]
    ld a, [$5efe]
    ld e, d
    xor d
    ld b, h
    ld b, d
    ld b, c
    ld b, [hl]
    ld e, b
    ld h, c
    rlca
    add hl, de
    ld sp, hl
    ld [hl-], a
    ei
    inc bc
    di
    db $eb
    set 6, l
    rst RST_38
    or $74
    ld l, h
    ld d, h
    ldh a, [$ffd0]
    ld l, d
    and b
    ret nz

    ld b, b
    ld [bc], a
    nop
    ld [de], a
    ld hl, $0000
    jr nc, jr_034_5469

    cpl
    adc a
    rst RST_38
    ccf
    nop

jr_034_5469:
    ccf
    ld [hl-], a
    rst RST_38
    dec b
    nop
    ld [hl-], a
    rst RST_38
    inc bc
    ldh a, [$ff87]
    jr c, jr_034_5475

jr_034_5475:
    rst RST_38
    rst RST_38
    sbc h
    ld h, b
    jr nz, jr_034_542a

    jr nz, jr_034_547d

jr_034_547d:
    ld [hl-], a
    rst RST_38
    ld [bc], a
    ld a, a
    rrca
    pop hl
    inc e
    nop
    db $f4

jr_034_5486:
    ld sp, hl
    ld [hl-], a
    rst RST_38
    inc b
    nop
    add b
    inc d
    and b
    jp nc, $fcfb

    cp $6f
    cpl
    rrca
    rrca
    ld c, a
    rla
    or b
    nop
    ld h, c
    ld hl, $0911
    dec b
    inc bc
    ld bc, $d300
    sub $d6
    or [hl]
    or [hl]
    ld [hl], a
    ld a, e
    ld a, e
    sub b
    ld [hl-], a
    add b
    ld [bc], a
    ld [bc], a
    dec c
    inc hl
    ld e, a
    ld c, c
    inc bc
    dec hl
    ld a, a
    rst RST_38
    sbc a
    ld [hl-], a
    rst RST_38
    add hl, bc
    cp $fc
    ld hl, sp-$08
    ld a, [$fcf8]
    cp $c3
    ld [$3240], sp
    nop
    inc b
    add hl, hl
    ld [hl-], a
    jr nz, jr_034_54d0

    cpl
    jr nz, jr_034_54f0

jr_034_54d0:
    xor $ee
    rst RST_28
    ld [hl-], a
    xor $04
    inc bc
    db $10
    ld [bc], a
    ld [hl-], a
    nop
    inc b
    ld a, a
    ccf
    ld [hl-], a
    rra
    inc bc
    ccf
    ld a, a
    add sp, -$3d
    add sp, -$03
    rst RST_38
    ld sp, hl
    rst RST_38
    rst RST_38
    ld [hl-], a
    nop
    inc bc
    ld h, b
    add b

jr_034_54f0:
    jr z, jr_034_5486

    nop
    nop
    ccf
    ld [$3f08], sp
    nop
    nop
    ccf
    ld [$3f08], sp
    nop
    nop
    ccf
    ld [$3f08], sp
    nop
    nop
    ccf
    ld [$3f08], sp
    add b
    add b
    db $fc
    ld [$fc08], sp
    add b
    add b
    db $fc
    ld [$fc08], sp
    add b
    add b
    db $fc
    ld [$fc08], sp
    add b
    add b
    db $fc
    ld [$fc08], sp
    ldh a, [$ffe0]
    ret nz

    ret nz

    ld [hl-], a
    add b
    ld [bc], a
    nop
    ld a, a
    rra
    rrca
    rlca
    inc bc
    inc bc
    ld bc, $3201
    nop
    rrca
    ld [hl-], a
    cp $02
    ld [hl-], a
    ld a, [hl]
    inc bc
    ld a, $32
    nop
    rlca
    ld [hl-], a
    ld a, $06
    ld e, $32
    nop
    rlca
    ld [hl-], a
    ld e, $07
    ld [hl-], a
    nop
    rlca
    ld [hl-], a
    ld e, $07
    ld [hl-], a
    nop
    rlca
    ld e, $32
    ld a, $06
    ld [hl-], a
    nop
    rlca
    ld a, $32
    ld a, [hl]
    inc bc
    ld [hl-], a
    cp $02
    nop
    ld [hl-], a
    add b
    ld [bc], a
    ret nz

    ret nz

    ldh [$fff0], a
    ld bc, $0301
    inc bc
    dec b
    rrca
    dec e
    ld a, a
    ld [hl-], a
    nop
    ld [$32ff], sp
    nop
    dec c
    ld b, b
    db $10
    ld c, b
    inc h
    ld [hl], d
    add h
    ld l, c
    db $f4
    add b
    and [hl]
    adc b
    add b
    add b
    cp a
    add [hl]
    sbc c
    rst RST_38
    dec e
    nop
    add b
    rst RST_38
    pop af
    nop
    ld sp, hl
    ldh [$fffd], a
    ret nc

    db $fd
    ldh a, [rIE]
    db $fd
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst RST_38
    ld hl, sp-$01
    rrca
    add c
    rra
    add d
    cpl
    add l
    rra
    adc e
    rst RST_38
    ccf
    add a
    rra
    adc e
    ld a, $86
    ld a, $8e
    push af
    rst RST_38
    jr nz, jr_034_55bb

    cp $2c
    nop
    or $f1

jr_034_55b8:
    pop af
    ldh a, [rIE]

jr_034_55bb:
    db $ec
    db $e3
    ret c

    rst RST_00
    cp b
    add a
    ld bc, $ff00
    ld [hl], b
    rrca
    add hl, bc
    nop
    cpl
    rst RST_08
    rst RST_08
    rrca
    rst RST_38
    rla
    rst RST_20
    dec de
    db $e3
    dec c
    pop af
    ldh a, [rP1]
    rst RST_28
    ld c, $f0
    ldh [rP1], a
    ld a, [hl+]
    ld bc, $fcfd
    db $fc
    rst RST_38
    db $fd
    ld a, [$f8f9]
    ei
    db $f4
    di
    ldh a, [rIE]
    rst RST_30
    nop
    ld a, h
    nop
    ld hl, sp+$09
    ldh a, [rNR11]
    rst RST_38
    ldh [rP1], a
    pop hl
    jr nz, jr_034_55b8

    nop
    push bc
    ld b, c
    rst RST_30
    add h
    and b
    sbc [hl]
    ld [hl], b
    add hl, bc
    pop bc
    sbc [hl]
    ld b, c
    inc d
    rst RST_38
    ld b, c
    inc d
    ld [de], a
    ld b, h
    ld [hl-], a
    ld b, h
    ld h, e
    inc b
    rst RST_38
    ld b, c
    ld h, $01
    ld h, $03
    inc h
    ld hl, sp-$0d
    rst RST_38
    ld a, [$fcf9]
    ld sp, hl
    db $fd
    db $fc
    cp $f8
    ei
    rst RST_38
    db $f4
    ld a, [bc]
    nop
    ret nz

    ld bc, $11e2
    ldh [rIE], a
    ld [$04f0], sp
    ld hl, sp-$7e
    ld a, h
    ld b, c
    ld a, $ff
    and b
    rra
    ret nc

    rrca
    or d
    dec b
    and d
    dec d
    rst RST_38
    and c
    inc d
    ld d, c
    inc b
    ld de, $0404
    nop
    rst RST_38
    jp nz, Jump_000_3000

    ret nz

    and [hl]
    inc d
    inc h
    sub [hl]
    rst RST_38
    ld d, h
    add [hl]
    sub h
    ld b, [hl]
    dec h
    ld b, [hl]
    ld h, l
    ld b, $ef
    ld b, l
    ld h, $56
    dec h
    ret nz

    dec c
    nop
    nop
    cp $bf
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [$ffe7]
    nop
    ldh [$fff3], a
    nop
    ret nz

    ld c, a
    nop
    jr nz, jr_034_5671

jr_034_5671:
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    rra
    ld a, a
    rra
    ccf
    rrca
    ccf
    rrca
    inc c
    nop
    ld a, d
    ld bc, $fe11
    inc b
    dec d
    ccf
    adc a
    ccf
    sbc a
    ld [de], a
    inc d
    cp l
    cp a
    ld a, [de]
    ld de, $fbfc
    cp $fd
    jr nz, jr_034_569e

    rra
    rst RST_28
    nop
    ldh [$ff1f], a
    rra
    cpl
    db $10
    rra

jr_034_569e:
    rst RST_38
    ldh a, [$ff3f]
    rrca
    rrca
    nop
    nop
    nop
    rst RST_38
    ld a, $10
    jr nz, jr_034_56ab

jr_034_56ab:
    db $fc
    ld c, a
    nop
    ld b, a
    ld de, $0000
    ldh a, [$ffe7]
    add sp, -$19
    rst RST_38
    ldh [$ffef], a
    ldh [$ffcf], a
    pop de
    adc $d1
    adc $fd
    pop bc
    ld [hl], c
    nop
    ld b, $84
    sub [hl]
    inc b
    sub [hl]
    inc b
    rst RST_38
    ld d, $04
    dec h
    ld b, $05
    ld h, $05
    ld h, $ff
    scf
    inc b
    pop bc
    sbc $d1
    adc $d0
    rst RST_08
    rst RST_38
    ldh [$ffcf], a
    ldh [$ffef], a
    add sp, -$19
    ldh a, [$ffe7]
    rst RST_38
    db $f4
    di
    ld [hl+], a
    inc b

jr_034_56e9:
    ld [hl-], a
    inc b
    ld [bc], a
    inc d
    rst RST_38
    add d
    inc d
    sub c
    ld b, $01
    add [hl]
    ld b, c
    add [hl]
    rst RST_38
    ld bc, $e0c2
    rlca
    ld a, [bc]
    pop af
    ld hl, sp-$04
    cp $46
    rla
    inc c
    ldh a, [rSB]
    cp $80
    ld a, a
    jr nz, jr_034_56e9

    rra
    ld c, h
    add e
    db $10
    ldh [$ff4c], a
    ld de, $0002
    ld sp, hl
    add b
    cp l
    nop
    ccf
    db $10
    rst RST_38
    add b
    ld a, a
    jr jr_034_5725

    rst RST_38
    nop
    nop
    and [hl]
    dec d
    ld h, $95

jr_034_5725:
    daa
    sub h
    rst RST_38
    db $d3
    inc b
    ld de, $1144
    ld b, h
    ld h, c
    inc b
    ei
    ld b, c
    inc h
    ret nz

    dec e
    add sp, -$40
    add sp, $40
    add sp, -$05
    ld b, b
    ld l, b
    push hl
    ld [de], a
    jr z, jr_034_5781

    inc l
    ld b, b
    rst RST_38
    cp $b9
    db $10
    ld a, [hl]
    rst RST_38
    ld a, [hl]
    nop
    sub c
    ld h, b
    ld d, l
    rst RST_18
    add d
    and h
    jr @+$5c

    add c
    inc h
    rlca
    db $fc
    db $fd
    ld a, h
    ld a, [bc]
    ld hl, $0120
    add b
    add b
    ld b, b
    ccf
    ccf
    ld a, $10
    rst RST_38
    ld c, h
    ld [hl+], a
    sub c
    ld l, [hl]
    pop af
    pop af
    ldh [c], a
    xor $ff
    nop
    ld c, $6a
    adc [hl]
    inc b
    nop
    inc b
    db $e4
    ccf
    call nz, $0424
    db $e4
    db $fc
    db $fc
    ld [$3120], sp
    ld [hl+], a

jr_034_5781:
    sbc d
    ld a, [bc]

jr_034_5783:
    inc hl
    cp a
    ld b, b
    jr nz, jr_034_5788

jr_034_5788:
    nop
    ld d, $27
    ld de, $c021
    rst RST_38
    cp a
    ret nz

    and b
    call nz, $c2a8
    and c
    jp z, $a487

    push bc
    and b
    ld b, h
    ld de, $113f
    ld hl, sp+$18
    ld a, $12
    ld d, l
    ccf
    adc b
    dec hl
    db $10
    add $00
    or c
    rst RST_28
    ld bc, $113e
    rst RST_38
    ld bc, $0031
    adc c
    inc [hl]
    xor l
    ld b, b
    dec d
    cp l
    nop
    ld e, h
    ld hl, $a0ce
    ret nz

    cp a
    inc de
    jr nz, jr_034_5783

    db $fd
    add b
    ld b, b
    db $10
    and h
    inc de
    ld b, [hl]
    add b
    add hl, hl
    db $10
    rst RST_38
    nop
    rst RST_38
    cp $00
    ld bc, $1b00
    ldh [rIE], a
    rlca

jr_034_57d8:
    nop
    ld b, b
    nop
    sbc a
    nop
    jr c, @+$09

    rst RST_38
    ld a, e
    ld [$10fb], sp
    di
    jr nz, jr_034_57d8

    ld b, b
    ei
    ldh [$ff80], a
    ld a, $11
    ld hl, sp-$10
    rst RST_30
    rlca
    rst RST_30
    cp a
    inc bc
    ld hl, sp+$00
    ld h, e
    ld [bc], a
    dec de
    dec a
    ld [de], a
    ld a, a
    rst RST_38
    ccf
    cp a
    add b
    ccf
    nop
    ld a, a
    nop
    rra
    jp Jump_034_6000


    dec a
    ld [de], a
    ld b, h
    ld [de], a
    rst RST_20
    ld [hl+], a
    db $ed
    ld hl, $00fc
    rst RST_38
    db $f4
    ldh a, [$ffe4]
    nop
    ld [$d400], a
    nop
    rst RST_28
    or b
    db $10
    ld l, b
    jr nz, jr_034_582b

    ld hl, $fcfd
    ld hl, sp-$21
    ei
    ld a, [$f0fa]
    push af

jr_034_582b:
    ld a, [bc]
    ld sp, $224c
    or d
    ld c, a
    nop
    ldh a, [$ffeb]
    ld [hl+], a
    add l
    jr nz, @+$7e

    ld bc, $212c

jr_034_583b:
    call nz, Call_000_00ff
    nop
    ldh [$ff92], a
    call nz, Call_034_4608
    ld a, [bc]
    rst RST_30
    ld b, h
    inc b
    ld d, b
    dec h
    dec b
    db $fc
    ld hl, sp-$0d
    ldh [$fff9], a

jr_034_5850:
    rst RST_08
    rst RST_10
    jr nz, jr_034_585e

    jr nc, jr_034_583b

    ret nz

    add d
    jr nc, jr_034_585e

    rra
    db $f4
    rlca
    ei

jr_034_585e:
    inc bc
    db $fc
    ld d, $34
    ld h, c
    ld [hl+], a
    ld c, e
    ld [de], a
    cp a
    rst RST_38
    rst RST_38
    inc bc
    nop
    rst RST_38
    ld bc, $3754
    cp $ff
    db $fc
    sub l
    sub h
    and l
    nop
    ld l, e
    jr nz, jr_034_5850

    rst RST_38
    ld d, b
    sub a
    add b
    xor a
    nop
    ld e, a
    ld b, b
    ld e, a
    rst RST_38
    nop
    cp l
    db $10
    db $d3
    nop
    jp $d300


    rst RST_00
    nop
    db $db
    db $10
    adc b
    inc sp
    ld h, d
    ld [hl+], a
    and $21
    cp $01
    rst RST_38
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [$ffef]
    ld bc, $ff1f
    jp nz, $843f

    ld a, a
    ld [$10fe], sp
    db $fd
    rst RST_38
    jr nz, @-$03

    ld b, b
    rst RST_30
    add b
    jp nz, $8900

    rst RST_38
    ld bc, $0233
    ld e, [hl]
    ld b, $ff
    rlca
    rst RST_38
    rst RST_38
    inc bc
    jp $013c


    cp $74
    inc [hl]
    rst RST_30
    rst RST_38
    ld b, a
    db $fd
    jr nc, @+$7f

    ld l, l
    rra
    dec e
    ldh a, [$fffd]
    ret nz

    ld b, h
    ld de, $b0b8
    cp c
    add b
    rst RST_38
    inc e
    rst RST_38
    rst RST_28
    and [hl]
    rst RST_30
    and c
    ld a, $1e

Call_034_58de:
    ld sp, hl
    ldh a, [rIE]
    ld [$7f07], sp
    nop
    ld [bc], a
    inc a
    jp nz, $ff1c

    push bc
    sbc b
    add d
    jr c, jr_034_58f9

    ld [hl], d
    dec d
    db $e4
    rst RST_38
    inc l
    ret nz

    ld d, c
    nop
    ret nz

    ld b, c

jr_034_58f9:
    and b
    add e
    rst RST_38
    ld b, b
    inc bc
    sub b
    inc bc
    and b
    inc bc
    ld [$ff03], sp
    ld d, b
    rlca
    nop
    dec b
    ldh a, [rTIMA]
    ldh a, [rSC]
    db $ed
    ldh a, [rBGP]
    ld [hl], $1c
    ld bc, $20a9
    nop
    ld bc, $f503

jr_034_5919:
    ld [bc], a
    inc sp

jr_034_591b:
    jr nz, jr_034_591e

    ccf

jr_034_591e:
    ld de, $0458
    ld e, h
    add hl, bc
    adc a
    ld e, b
    inc de
    ld d, b
    rrca
    reti


    jr nz, @-$18

    dec h
    inc l
    ld b, a
    nop
    rst RST_38
    rst RST_38
    ldh [$ff1f], a
    ret nz

    ccf
    add b
    ld a, a
    add b
    push bc
    ld a, [hl]
    pop hl
    nop
    cp $e1
    inc hl
    ld c, [hl]
    inc [hl]
    sub d
    dec [hl]
    ld hl, sp-$04
    cp $3d
    db $10
    ld a, h
    nop
    ld a, d
    jr nc, @-$41

    db $10
    sub c
    rst RST_08
    nop
    cp c
    db $10
    cp a
    reti


    jr nz, @+$2c

    ld c, c
    db $db
    db $10
    rst RST_38
    cp c
    jr nc, jr_034_591b

    jr jr_034_5919

    nop
    xor c
    nop
    or a
    jp nz, $fe01

    inc e
    ld b, b
    ld b, b
    ccf
    sub b
    ld b, a

jr_034_596d:
    nop
    cp $9b
    ld b, b
    rst RST_28
    nop
    jp c, $b405

    dec bc
    ld l, a
    ld a, a
    db $10
    ret nc

    cpl
    and b
    ld e, a
    ld b, b
    cp a
    and $21
    rst RST_38
    ld [bc], a
    db $fd
    inc b
    ei
    rst RST_38
    nop
    db $10
    rst RST_28
    ei
    jr nz, jr_034_596d

    xor h
    ld b, e
    ld bc, $02fe
    db $fd
    rst RST_38
    rst RST_20
    nop
    ld [$b8f7], sp
    ld b, c
    cp [hl]
    ld b, l
    cp $01
    inc b
    rst RST_38
    ld a, [$f409]
    dec d
    add sp, -$15
    ld de, $ffda
    ld [$10d4], sp
    xor c
    jr nz, jr_034_59fa

    ld [$ffd4], sp
    ld b, c
    and h
    add c
    dec hl
    jr nz, jr_034_5a10

    db $10
    add b
    ld a, a
    rlca
    nop
    ld b, a
    db $10
    ld b, a
    db $10
    rst RST_00
    or $41
    adc a
    or b
    inc bc
    add d
    ld bc, $3197
    sbc c
    inc sp
    sbc l
    jr nc, jr_034_59e0

    di
    ldh [$ff1f], a
    ld d, [hl]
    ld c, b
    inc bc
    ld d, d
    db $fc
    nop
    db $fd
    nop
    rst RST_38
    ld sp, hl
    nop
    ld d, e

jr_034_59e0:
    xor b
    inc bc
    ldh a, [rRP]
    and c
    rst RST_28

jr_034_59e6:
    ld b, $f1
    rrca
    ldh [c], a
    ld a, $11
    rra
    rst RST_38
    ccf
    db $e3
    add b
    cp a
    sbc h
    ld b, c
    db $ed
    ld [hl+], a
    ld c, $50
    rst RST_38
    ret nz

jr_034_59fa:
    ccf
    ld hl, sp-$18
    daa
    sub a
    jr nc, jr_034_59e6

    ld a, [hl+]
    rst RST_38
    nop
    inc bc
    db $fc
    di
    ld l, l
    inc b
    ld h, [hl]
    ld d, e
    inc bc
    inc b
    ld [hl], d
    ld b, c
    ld b, c

jr_034_5a10:
    ld a, $71
    ld b, d
    cp $77
    ld d, d
    ld l, d
    ld b, b
    ld l, h
    ld b, b
    ld l, l
    ld b, b
    ld l, e
    rst RST_38
    ld b, b
    ld l, d
    ld b, c
    ld h, l
    ld b, d
    add sp, $07
    nop
    rst RST_38
    rrca
    db $ed
    ld [bc], a
    jp c, $b705

    ld [$c568], sp
    rla
    xor b
    ld b, c
    ccf
    xor $00
    jp nz, $b64b

    ld de, $fe01
    ld d, $b0
    ld b, e
    ld [$40f7], sp
    ld de, $2a80
    ld b, b
    ret nz

    ld b, c
    jp nz, $ff41

    db $fc
    ld [bc], a
    ld bc, $26fc
    jp nc, $a44d

    rst RST_38
    sbc c
    ld c, c
    ld a, [hl-]
    sbc b
    or $12
    ld l, l
    dec h
    rst RST_38
    jp hl


    ld h, b
    jp c, $97c8

    nop
    xor a
    add b
    sbc h
    ld a, h
    ld sp, $4570
    add d
    ld bc, $1dc6
    ld d, c
    sbc h
    ld sp, $600f
    inc c
    ld d, c
    ld b, b
    ld b, h
    ld a, [hl+]
    ld b, [hl]
    ld [$0055], sp
    ld h, l
    ldh [$ff1f], a
    ld b, $67
    cp $b6
    ld de, $e20f
    rrca
    jp nz, $c41e

    ld e, $ff
    call nz, $843e
    inc a
    adc b
    inc a
    ld [$7f7c], sp
    ld [$3f00], sp
    rra
    jr nz, jr_034_5abb

    ld e, a
    ld b, h
    ld h, c
    cp a
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld a, a
    add b
    ld b, a
    ld de, $cd81
    ld a, [hl]
    ld d, h
    ld h, c
    ld [bc], a
    db $fd
    call nz, Call_034_4741
    ld de, $fb04
    cp $64
    ld h, l
    rst RST_38
    nop
    rlca
    db $f4

jr_034_5abb:
    rst RST_20
    inc d
    daa
    dec c
    call nc, Call_034_6574
    rst RST_20
    inc d
    halt
    ld d, a
    sub b
    ld b, e
    rst RST_38
    ld b, c
    pop hl
    ld bc, $01fd
    sub a
    ld h, b
    inc bc
    ld hl, sp+$03
    ld hl, sp+$78
    ld de, $f8ed
    and c
    ld h, b
    pop af
    ld [hl+], a
    and [hl]
    ld h, c
    ldh [c], a
    ld b, l
    db $e3
    ld a, a
    ld b, h
    add c
    ld a, [hl]
    add d
    ld a, l
    add d
    ld a, l
    or d
    ld b, c
    or b
    ld l, d
    ld h, e
    ld e, d
    ld h, c
    or [hl]
    ld h, l
    or h
    ld b, c
    ld [$d0f7], sp
    ld l, c
    rst RST_38
    ld [hl], c
    nop
    ld [hl], h
    ld h, a
    ld a, d
    ld h, e
    inc l
    ld c, l
    inc bc
    ldh a, [rTAC]
    ld bc, $ff70

jr_034_5b07:
    rrca
    ldh [rIF], a
    pop hl
    rrca
    pop bc
    rra
    pop bc
    cp a
    rra
    add d
    ldh [c], a
    ld b, l
    call nz, Call_000_128b
    ld [hl], c
    adc b
    ld l, l

jr_034_5b1a:
    rla
    jr jr_034_5b8e

    db $10
    cpl
    ret nc

    ld h, c
    db $10
    rst RST_28
    inc h
    ld [hl], c
    add e
    jr nz, jr_034_5b07

    ld a, [hl+]
    ld [hl], c
    ret nc

    ld h, l
    inc h
    ld [hl], e
    inc a
    ld a, a
    ldh [rOCPD], a
    daa
    adc c
    call nc, Call_034_5239
    ld h, c
    ld a, b
    inc a
    rst RST_10
    ld hl, $2118
    ld b, a
    ld d, b
    nop
    ld e, l
    nop
    db $10
    stop
    add b
    ld a, a
    ld b, h
    ld d, c
    ld a, a
    cp c
    db $10
    cp $9b
    ld b, b
    rst RST_38
    ldh [rP1], a
    rrca
    ldh a, [$fffc]
    rst RST_38
    rst RST_38
    jr c, jr_034_5b1a

    db $fc
    rst RST_38
    rlca
    ld hl, sp-$08
    nop
    rrca
    ld hl, sp-$01
    inc bc
    inc b
    ld h, d
    inc hl
    ld c, d
    inc de
    ld c, e
    jr nc, jr_034_5b07

    ld b, d
    ld sp, hl
    add b
    ld [hl], $50
    rst RST_10
    ld [hl+], a
    ld a, a
    ccf
    sbc a
    rra
    add b
    ei
    nop
    ret nz

    ld b, $70
    and $17
    ldh [c], a
    ld [bc], a
    ldh a, [$ff9b]
    rlca
    ldh a, [c]
    ld e, b
    inc sp
    sbc a
    nop
    and $51
    sbc e
    ld b, c
    rlca

jr_034_5b8e:
    rst RST_38
    ldh a, [c]
    ld a, [de]
    ldh [rNR23], a
    ldh [rNR30], a
    ldh [$ff3b], a
    ld a, a
    jp nz, $c23b

    ld a, e
    add d
    ld a, e
    add d
    ld [hl], b
    ld b, e
    nop
    ldh a, [c]
    ld [hl], a
    ld de, $0280
    rrca
    ld a, e
    ld [bc], a
    rst RST_30
    ld [bc], a
    push af
    ld hl, sp+$7f
    nop
    ld a, a
    ccf
    cp a
    ccf
    ccf
    ld a, a
    rst RST_38
    ld [bc], a
    nop
    ld [$b9db], sp
    cp l
    cp c
    xor c
    jp Jump_000_00ff


    ld [bc], a
    add b
    dec c
    ld [bc], a
    nop
    inc bc
    ld [$0010], sp
    jr nz, jr_034_5bcd

jr_034_5bcd:
    ld b, b
    nop
    add b
    add b
    ld [bc], a
    nop
    add hl, bc
    ld b, b
    nop
    nop
    and b
    ld d, b
    and b
    ret nc

    or b
    add hl, de
    ld c, d
    inc d
    ld [bc], a
    nop
    ld b, $40
    ld a, [bc]
    dec d
    dec bc
    dec b
    add d
    ld b, c
    and b
    ret nc

    and b
    ld d, b
    xor b
    sub $bb
    inc d
    ld c, d
    ld sp, $0002
    inc b
    ld b, b
    add b
    jr nz, @-$66

    add $08
    nop
    nop
    ret nz

    ld b, $00
    add d
    ld b, $03
    ld [bc], a
    nop
    ld [bc], a
    add b
    rst RST_38
    ld [bc], a
    nop
    ld b, $02
    rst RST_38
    ld [$3010], sp
    jr jr_034_5c15

    nop
    inc bc

jr_034_5c15:
    rst RST_38
    ld [bc], a
    ld a, a
    dec c
    rst RST_38
    rst RST_38
    ld a, h
    ld hl, sp-$10
    ldh [$ffe0], a
    ret nz

    ret nz

    add b
    add b
    ld [bc], a
    nop
    inc de
    add b
    add b
    ret nz

    ld [bc], a
    nop
    rlca
    ldh [$ffe0], a
    ldh a, [$fff8]
    ld a, h
    ld a, $1f
    rrca
    ld [bc], a
    nop
    dec b
    add b
    ret nz

    ld [bc], a
    nop
    add hl, bc
    ldh a, [rIE]
    rst RST_38
    ccf
    ld bc, $1d00
    nop
    ld [hl], b
    db $fd
    nop
    nop
    dec b
    inc bc
    inc bc
    rst RST_38
    db $fc
    rst RST_38
    nop
    db $fd
    db $fc
    nop
    inc b
    rrca
    rrca
    rst RST_38
    ldh a, [rIE]
    nop
    ei
    ldh a, [rIF]
    nop
    inc bc
    ccf
    ccf
    rst RST_38
    ret nz

    rst RST_38
    ld e, a
    nop
    ret nz

    ccf
    nop
    rst RST_38
    rlca
    ld b, $03
    dec l
    nop
    add b
    ld a, [hl-]
    ld bc, $0518
    ld a, [hl-]
    inc bc
    add hl, hl
    nop
    add hl, hl
    inc b
    ld d, [hl]
    rrca
    ld a, [hl-]
    inc bc
    ld d, l
    rst RST_18
    ld d, l
    xor d
    xor d
    ld b, b
    ld b, b
    nop
    ld b, $0f
    ld d, b
    ld bc, $0050
    ld b, $23
    ld [bc], a
    nop
    rrca
    ld [de], a
    rrca
    inc h
    rrca
    ld [hl], $0f
    ld c, b
    rrca
    add sp, -$18
    rrca
    jp z, $ed01

    dec bc
    rrca
    xor $0a
    ccf
    rst RST_38
    rst RST_38
    and [hl]
    xor $08
    cp $ff
    sbc e
    ld bc, $0ced
    db $fc
    rst RST_10
    dec b
    inc bc
    ld a, a
    rst RST_38
    ld a, a
    ld a, a
    rst RST_38
    db $fc
    cp $e3
    ret


    ld [bc], a
    ei
    cp $0f
    dec e
    db $10
    rst RST_38
    ldh a, [$fff0]
    nop
    nop
    sbc l
    ld hl, sp+$18
    dec d
    rst RST_38
    ret nz

    ret nz

    sub h
    inc bc
    ld d, a
    ld de, $c6fc
    sbc a
    dec b
    ld [$0c08], sp
    ld de, $115b
    sub b
    inc bc
    dec d
    nop

Call_034_5ce0:
    db $fc
    or [hl]
    nop
    ld l, d
    inc de
    nop
    dec b
    nop
    ld a, [hl+]
    nop
    ld d, l
    rst RST_38
    nop
    rra
    rra
    rla
    rra
    inc de
    rra
    ld de, $1fff
    ld d, c
    rra
    sbc c
    rra
    ld e, h
    rra
    sbc [hl]
    rla
    rra
    nop
    ccf
    or b
    db $10
    rra
    or h
    db $10
    or e
    inc d
    ld e, $19
    rrca
    nop
    rst RST_38
    ld d, l
    xor d
    ret z

    dec b
    ret c

    dec b
    ret nc

    dec e
    rst RST_28
    ld e, $f1
    cp $9e
    nop
    ld bc, $0923
    ld [hl+], a
    db $10
    rst RST_38
    sub b
    ld hl, sp-$59
    ret nc

    db $fc
    ldh a, [$ff15]
    ld h, $90
    dec b
    ld [bc], a
    adc l
    db $10
    ld a, [hl+]
    cp [hl]
    adc l
    stop
    nop
    ld bc, $0a00
    sbc l
    db $10
    xor d
    ei
    nop
    ld e, a
    ret


    ld [bc], a
    xor d
    ld [$0849], sp
    ld [$08ef], a
    jp hl


    ld [$47eb], sp
    inc h
    xor d
    nop
    ld d, a
    rst RST_08
    nop
    cp a
    nop
    ld a, a
    db $ed
    rrca
    ret


    inc b
    adc a
    nop
    rst RST_30
    rst RST_10
    nop
    rst RST_28
    ret


    ld [bc], a
    ld a, [$f505]
    ld a, [bc]
    ei
    ld [$ca15], a
    inc bc
    ei
    inc b
    ld d, [hl]
    xor c
    xor c
    ld a, a
    ld d, [hl]
    ld d, [hl]
    xor c

jr_034_5d71:
    ld bc, $d0fe
    rra
    sub b
    inc hl
    rst RST_28
    sub b
    ld e, a
    ld d, b
    sbc a
    sbc b
    ld hl, $0bf4
    add sp, $1f
    rla
    ldh a, [rIF]
    ldh [$ff1f], a
    and h
    ld hl, $21aa
    ld e, l
    dec l
    ei
    db $10
    rst RST_18
    ret nz

    dec hl
    dec sp
    inc b
    dec a
    ld [bc], a
    dec sp
    rst RST_38
    inc b
    dec [hl]
    ld a, [bc]
    ld a, [hl-]
    dec b
    dec [hl]
    ld a, [bc]
    add hl, sp
    rst RST_38
    ld b, $22
    dec e
    rst RST_38
    rst RST_38
    rst RST_28
    rst RST_28
    cp a
    rst RST_00
    cp a
    xor d
    xor d
    ld [hl], b
    ld bc, $0170
    ld d, a
    ld de, $d5d5
    ld hl, sp-$1a
    inc hl
    add b
    ld bc, $2309
    db $fc
    ld [bc], a
    sbc $20
    xor b
    rst RST_38
    ld d, [hl]
    db $f4
    ld a, [bc]
    ld d, [hl]
    xor b
    ld [hl], b
    db $fc
    jr nc, @-$63

    db $fc
    db $10
    inc de
    ld [hl-], a
    sub b
    db $fc
    inc d
    ld hl, $2d50
    ei
    db $ed
    ld [$3b30], sp
    rst RST_18
    rra
    ld b, b
    dec sp
    jr nc, jr_034_5def

    jr z, jr_034_5d71

    rla
    jr nc, jr_034_5df4

    jr nz, jr_034_5e36

    jr nc, jr_034_5e39

    inc sp
    ld e, l
    dec l
    xor d
    rst RST_38
    ld d, h

jr_034_5def:
    ld d, b
    xor [hl]
    and d
    ld e, h
    ld b, d

jr_034_5df4:
    cp h
    add b
    db $fd
    ld a, [hl]
    halt
    ld sp, $fc02
    rst RST_38
    rst RST_38
    rst RST_30
    rst RST_30
    rst RST_38
    ld e, d
    ld e, d
    and l
    and l
    ld e, d
    ld e, d
    xor b
    xor b
    ld [hl], $90
    ld bc, $bfbf
    db $f4
    ld hl, $5151
    sub b
    dec b
    jp z, $ff03

    ld [$d515], a
    ld a, [hl+]
    and d
    ld e, l
    pop bc
    ld a, $bf
    and b
    ld e, a
    rst RST_38
    nop
    rst RST_30
    ld [$23e7], sp
    ld b, b
    ei

jr_034_5e2a:
    cp a
    add b
    ld d, [hl]
    jr nz, jr_034_5e2a

    ld [$48bb], sp
    ld e, d
    rst RST_30
    xor c
    add hl, sp

jr_034_5e36:
    jp z, Jump_000_31c4

jr_034_5e39:
    ld a, [de]
    jp hl


    add hl, sp
    jp z, $adbf

    ld d, d
    ld b, d
    cp l
    inc d
    db $eb
    ld e, l
    daa
    rst RST_10
    rst RST_08
    rra
    db $d3
    rra
    pop de
    sub c
    inc h
    sub b
    ld hl, $fe01
    jr jr_034_5eb1

    dec hl
    xor d
    inc hl
    nop
    ld b, a
    push af
    ld a, [bc]
    ld a, d
    inc hl
    ld a, h
    ld hl, $21a0
    adc l
    ld [bc], a

jr_034_5e63:
    inc bc
    jr nz, @+$04

    db $fc
    jr nz, @+$49

    ld d, $27
    ld d, $23
    ret nz

    ld h, a
    ccf
    and b
    ld e, a
    ld b, b
    ld c, c
    ld e, l
    dec l
    jr jr_034_5e63

    ld h, b
    ld c, e
    ld a, [hl]
    sub b
    ld hl, $1fd8
    call c, $de1f
    rra
    ldh [$ff33], a
    ld a, a
    add hl, de
    db $eb
    sbc b
    db $eb
    ld e, c
    db $eb
    ld sp, hl
    add l
    ld b, [hl]
    cp b
    ld d, a
    ld de, $4a90
    ld d, b
    inc de
    ld bc, $02fd
    and [hl]
    ld b, c
    ld a, [$05ff]
    call nc, $a82b
    ld d, a
    ld d, h
    xor e
    xor b
    sbc a
    ld d, a
    ld d, b
    xor a
    and b
    ld e, a
    cp d
    inc sp
    ret


    ld bc, $ff02

jr_034_5eb1:
    rst RST_38
    dec d
    rst RST_38
    ld a, [hl+]
    rst RST_38
    ld e, a
    rst RST_38
    cp a
    add d
    jp Jump_000_2b44


    bit 0, b
    sub b
    ld b, e
    and $37
    sub b
    inc hl
    ld e, l
    inc l
    add b
    rst RST_38
    ld c, $7e
    inc hl
    ld b, e
    ld e, c
    add hl, bc
    ld c, c
    add hl, de
    cp a
    ld b, b
    add hl, de
    ld h, e
    nop
    scf
    ld c, b

jr_034_5ed8:
    sub b
    nop
    ld a, a
    cp h
    or b
    ld [de], a
    inc de
    ld d, l
    ld a, a
    rst RST_18
    ccf
    sbc a
    rra
    ld e, d
    ldh a, [$ffb1]
    jr nz, jr_034_5f1a

    ld e, e
    add [hl]
    ld b, a
    add [hl]
    ld b, e
    nop
    add b
    ld e, l
    dec hl
    rst RST_08
    rst RST_28
    ccf
    add b
    ld a, a
    ret nz

    ld h, c
    ld d, d
    and b
    ld e, a
    ret z

    rst RST_28
    scf
    push af
    ld a, [bc]
    ret c

    ld c, b
    jr nz, jr_034_5f2e

    ret


    add hl, bc
    ld [hl], a
    ld [$c928], a
    ld b, e
    jr nz, jr_034_5ed8

    ld [$1e88], sp
    dec d
    ld l, [hl]
    cp [hl]
    ld b, d
    ld a, a
    dec d
    ld a, [hl+]
    ld h, b

jr_034_5f1a:
    dec de
    inc bc
    ld [bc], a
    ld [hl], b
    add hl, de
    rst RST_28
    rrca
    ld [$30f0], sp
    add b
    rla
    ld c, $3f
    nop
    ei
    ret nz

    rrca
    adc a

jr_034_5f2d:
    dec d

jr_034_5f2e:
    inc bc
    jr c, jr_034_5f2d

    ld bc, $f900
    ld a, $50
    ld d, b
    and b
    inc de
    pop af
    rst RST_38
    ld de, $f91f
    sbc a
    rra
    inc e
    rra
    ld e, $1f
    rst RST_18
    ld e, l
    ld b, b
    ld b, l
    pop bc
    ld a, a
    ccf
    and d
    ld e, a
    push bc
    ccf
    xor a
    ld e, a
    sub b
    ld bc, $32fe
    ld hl, $0015
    rlca
    nop
    add hl, bc
    nop
    rla
    rrca
    nop
    inc b
    nop
    xor b
    ld d, c
    ld [hl+], a
    ret c

    dec b
    and d
    ld de, $39e4
    ld a, $94
    dec d
    ld a, [de]

jr_034_5f6e:
    nop
    dec l
    nop
    ei
    add hl, sp
    jr nz, @-$6e

    dec b
    rla
    add b
    nop
    ld d, h
    scf
    jr nz, @+$7f

    ld d, e
    ld [hl+], a
    ld d, b
    ld l, c
    ld e, [hl]
    dec l
    dec d
    dec bc
    dec c
    ld h, b
    rrca
    ld [hl], c
    ld h, h
    adc e
    or h
    db $10
    ld e, [hl]
    dec l
    ld [hl], b
    ld c, l
    rst RST_38
    nop
    nop
    ld h, $1f
    ret nz

    nop
    daa
    nop
    ld d, a
    ret nc

    jr nz, jr_034_5f6e

    ld sp, $7052
    sbc a
    nop
    ld a, [hl]
    add d
    ld [$0713], sp
    nop
    add l
    ld d, $90
    ld [bc], a
    ldh [$ffef], a
    rra
    sbc $6a
    ld d, $41
    inc bc
    ld a, [$e605]
    rla
    rst RST_38
    dec e
    nop
    add b
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    nop
    db $fd
    ld [bc], a
    ld a, [$ff05]
    cp $01
    push af
    dec bc
    rst RST_28
    rla
    rst RST_38
    inc bc
    cp a
    ei
    inc b
    db $ed
    dec de
    ld d, a
    rst RST_38
    dec d
    ld bc, $bbfc
    db $fc
    add b
    inc e
    nop
    ld d, a
    xor a
    cp a
    dec d
    ld [bc], a
    ldh a, [$fff3]
    ldh a, [rP1]
    ld a, [hl+]
    ld [bc], a
    dec d
    ld [bc], a
    rst RST_38
    rst RST_38
    ret nz

    ld a, a
    xor a
    nop
    ccf
    nop
    rra
    dec l
    inc bc
    db $fc
    nop
    ld bc, $ffff
    nop
    db $fc
    nop
    inc bc
    inc bc

Jump_034_6000:
    db $fc
    db $fc
    rst RST_38
    db $fd
    ldh a, [rLY]
    inc bc
    ldh a, [rP1]
    rrca
    rrca
    pop af
    ldh a, [$fffb]
    ld a, a
    rrca
    ld b, h
    inc bc
    ret nz

    nop
    ccf
    ccf
    rst RST_00
    rst RST_18
    ret nz

    rst RST_38
    ccf
    rst RST_38
    ldh [rOBP0], a
    dec b
    rra
    inc bc
    cp a
    rst RST_38
    cp $ff
    add c
    rst RST_38
    ld a, a
    ld e, b
    ld b, $f8
    db $d3
    rst RST_38
    rlca
    dec d
    ld bc, $0668
    rra
    jr nc, @+$05

    ld a, [hl]
    nop
    sbc $a0
    dec bc
    ld a, d
    or l
    xor l
    ld a, d
    or b
    add hl, bc
    adc a

jr_034_6041:
    call nc, $8ffb
    jp nc, Jump_000_09c0

    rst RST_38
    rla
    db $db
    cpl
    xor a
    rst RST_18
    ld d, a
    rst RST_10
    cpl
    cp a
    ld d, a
    jp nc, $df01

    cpl
    rst RST_38
    ld hl, sp+$00
    inc a
    nop
    or a
    jr c, jr_034_6041

    ld l, h
    rst RST_38
    ld sp, hl
    ld a, h
    ld hl, sp+$7c
    or $38
    cp $00
    rst RST_08
    cp a
    rla
    or a
    rra
    ldh a, [$ff09]
    ret nc

    dec c
    add b
    add b
    rst RST_38
    pop bc
    add c
    ldh [$ff81], a
    ldh a, [$ff81]
    ld hl, sp-$7f
    ld sp, hl
    db $fc
    add hl, de
    ld [de], a
    ld l, $01
    ld [hl], e
    ldh a, [$ff7f]
    rst RST_38
    ld l, l
    adc a
    ei
    ld h, l
    ei
    ld h, c
    dec hl
    db $10
    ld l, h
    nop
    sub e
    ld a, [bc]
    rst RST_38
    inc b
    ld a, c
    inc b
    jr nc, jr_034_609c

    rst RST_38
    adc b
    dec b
    ld c, b

jr_034_609c:
    ld d, $39
    dec d
    ld l, b
    rra
    dec d
    ld [bc], a
    rst RST_38
    ld a, $00
    ld e, $00
    ld c, $00
    ld b, [hl]
    nop
    rst RST_38
    ld h, d
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    ld a, h
    nop
    rst RST_38
    ld e, c
    and a
    db $ed
    inc de
    ei
    dec b
    or l
    ld c, e
    rst RST_38
    rst RST_28
    ld de, $49b7
    ei
    inc b
    ld e, a
    and c
    rst RST_18
    ld l, h
    cp h
    or l
    ld a, h
    ld l, l
    and c
    jr @+$74

    cp l
    ld hl, sp-$4e
    nop
    or c
    ld de, $05b9
    push de
    adc a
    jp c, $dd8f

    cp [hl]
    jp nz, $de12

    adc a
    rst RST_18
    ldh [$ffe0], a
    ret nc

    ld [$afaf], sp
    xor a
    ld d, a
    rra
    ld l, a
    ldh [rIF], a
    or e
    di
    inc b
    cp e
    ld a, [$00f3]
    cp a

jr_034_60f7:
    ld a, b
    nop
    pop de
    cpl
    ld b, c
    cp a
    ld l, c
    rst RST_38
    sub a
    rst RST_10
    dec hl
    pop hl
    rra
    reti


    daa
    rst RST_30
    add c
    dec bc
    ld a, [de]
    inc de
    db $10
    daa
    inc l
    ld de, $2920
    dec l
    ld bc, $012e
    dec c
    rst RST_38
    ldh a, [c]
    rla
    add sp, $7f
    add b
    ld [hl], l
    adc d
    rst RST_38
    rst RST_38
    rst RST_38
    ld bc, $0001
    cp $00
    ld bc, $f7fe
    cp $ff
    ld bc, $0244
    rst RST_38
    push af
    rst RST_38
    inc bc
    ret


    inc bc
    ld c, c
    ld bc, $004e
    inc bc
    ld c, [hl]
    ld hl, $0122
    rlca
    rlca
    rst RST_18
    nop
    ld hl, sp+$00
    rlca
    ld hl, sp+$51
    jr jr_034_6157

    rrca
    or $57
    ld bc, $f0f0
    ld d, a
    jr jr_034_6170

    nop
    ldh [rP1], a
    ld e, $61
    ld a, [de]

jr_034_6157:
    ccf
    ccf
    nop
    ret nz

    and b
    dec e
    and b
    dec e
    ldh [rNR33], a
    pop bc
    xor a
    db $fd
    db $10
    db $fc
    ld de, $25d4
    ld l, c
    jr nz, jr_034_60f7

    ld bc, $fffa
    rst RST_38

jr_034_6170:
    call nc, $a8ff
    rst RST_38
    ld b, b
    rst RST_38
    add b
    cp a
    rst RST_10
    or a
    db $db
    rst RST_28
    call nc, $af00
    ret c

    dec b
    ccf
    ccf
    rst RST_38
    ret nz

    ret nz

    ccf
    ccf
    ldh [$ffe0], a
    ld bc, $ff1e
    ld b, c
    cp [hl]
    add e
    ld a, h
    jp Jump_000_033c


    inc bc
    rst RST_38
    cp $fe
    add c
    add c
    jr nc, jr_034_61db

    rrca
    rst RST_38
    rst RST_38
    add e
    ld a, h
    rst RST_00
    jr c, @-$7b

    ld a, h
    ld hl, sp-$08
    ei
    rlca
    rlca
    sub a
    ld bc, $ffe0
    ld e, a
    cp a
    add c
    rst RST_38
    ld a, [hl]
    jp nz, $bf3d

    ld b, b
    ld l, a
    sub b
    cp a
    rst RST_38
    ld b, b
    ld e, e
    and h
    cp a
    ld b, b
    ld e, a
    and b
    push af
    rst RST_38
    ld a, [bc]
    ld e, a
    and b
    rst RST_38
    ccf
    and e
    ld e, h
    pop bc
    rst RST_38
    ld a, $a3
    ld e, h
    ld b, l
    cp d
    db $e3
    inc e
    ld b, c
    rst RST_38
    cp [hl]
    db $e3
    inc e
    add b
    rst RST_38

jr_034_61db:
    rst RST_38
    ld a, a
    pop bc
    rst RST_38
    ld a, $a1
    ld e, [hl]
    ret nz

    ccf
    or c
    ld c, [hl]
    ret


    rst RST_38
    ld [hl], $fd
    ld [bc], a
    rst RST_38
    nop
    or $09
    rst RST_18
    rst RST_38
    jr nz, @-$03

    inc b
    rst RST_18

jr_034_61f5:
    jr nz, jr_034_61f5

    ld bc, $fff7
    ld [$40bf], sp
    rst RST_38
    rrca

jr_034_61ff:
    db $f4
    dec bc
    rst RST_18
    rst RST_30
    jr nz, jr_034_61ff

    dec b
    ld l, b
    dec [hl]
    ldh [$ffe0], a
    rra
    rst RST_38
    rst RST_38
    ld b, b
    cp a
    sbc b
    ld h, a
    ldh a, [c]
    dec c
    xor b
    ld d, a
    rra
    or $09
    cp [hl]
    ld b, c
    nop
    ld bc, $4031
    db $10
    sub [hl]
    ld sp, $01ff
    rst RST_38
    add c
    ld a, a
    ld [hl], c
    cp h
    xor [hl]
    ld a, [hl]
    rst RST_28
    ld [hl], e
    cp a
    xor a
    ld a, a
    and h
    jr nc, jr_034_62b0

    halt
    cp a
    jp Jump_034_7ead


    or b
    cpl
    ldh [c], a
    rrca
    call nc, $f223
    inc bc
    rrca
    ldh a, [rIE]
    inc de
    db $ec
    rlca
    ld hl, sp-$71
    ld [hl], b
    dec h
    jp c, $8bff

    ld [hl], h
    dec b
    ld a, [$ec13]
    jp $ff3e


    jp $e73c


    ld e, $c7
    inc a
    swap a
    rst RST_38
    rst RST_20
    ld e, $cf
    inc a
    rst RST_00
    inc a
    rrca
    ldh a, [$ffbf]
    ld [de], a
    db $ed
    rlca
    ld hl, sp-$72
    ld [hl], c
    add sp, $35
    db $e3
    rst RST_30
    inc e
    push bc
    ld a, [hl-]
    ld b, d
    ld sp, $5da2
    rst RST_00
    jr c, jr_034_62c9

    jp nz, $cf3d

    jr nc, jr_034_62c3

    inc bc
    jr nz, jr_034_62c9

    rra
    sbc c
    nop
    inc a
    ld h, $31
    ld h, $31
    rst RST_38
    rra
    db $eb
    inc d
    sub [hl]
    inc h
    ld [hl-], a
    ld [de], a
    ld h, c
    ret nz

    ld b, h
    ld b, c
    sub l
    dec h
    ld b, a
    ld b, l
    sub e
    daa
    rst RST_38
    add b
    ld b, [hl]
    db $10
    jp $04fb


    ld h, d
    dec [hl]
    nop
    ld bc, $306e
    ld sp, $fc14
    ld e, $bf
    nop

Call_034_62af:
    inc a

jr_034_62b0:
    db $10
    ld d, $00
    ld a, [hl+]
    ld b, b
    inc de
    ldh [rIE], a
    ld a, a
    rra
    rra
    inc b
    ld a, $02
    ld e, $00
    ld sp, hl
    inc [hl]
    adc b

jr_034_62c3:
    ld bc, $3424
    ld a, a
    ld a, [de]
    ld a, [hl-]

jr_034_62c9:
    nop
    inc d
    inc e
    sbc b
    ld bc, $4534
    rra
    ccf
    ld c, $4f
    ld b, h
    ld b, [hl]
    ld c, a
    ld e, b
    ld c, a
    db $fc
    ld l, d
    ld b, e
    jr nz, jr_034_632b

    cp a
    nop
    ccf
    add b
    ccf
    add b
    rst RST_38
    sbc a
    ld bc, $831f
    cp a
    rrca
    rra
    adc a
    ei
    ccf
    adc a
    ld l, h
    nop
    rrca
    rst RST_38
    ld l, a
    rst RST_38
    rst RST_38
    db $fd
    cp $18
    ld d, h
    nop
    rst RST_38
    ld a, a
    ld a, a
    ld d, a
    ld b, b
    rst RST_38
    rra
    nop
    rlca
    nop
    daa
    nop
    dec bc
    add b
    rst RST_38
    dec b
    nop
    push bc
    ld bc, $7fbf
    rst RST_08
    rra
    rst RST_38
    rst RST_00
    rrca
    add e
    rlca
    push hl
    ld bc, $00d6
    xor a
    adc a
    nop
    ld a, a
    rra
    ld b, [hl]
    ld [de], a
    ld a, a
    ld b, a
    ld d, b
    ccf
    rst RST_38
    rst RST_38
    ccf
    ld a, a

jr_034_632b:
    rrca
    cp $fe
    db $fd
    db $fc
    rst RST_38
    db $fd
    db $fc
    ei
    ld hl, sp-$05
    ld hl, sp-$09
    ldh a, [$fffa]
    ld d, [hl]
    ld d, c
    jp $300d


    rst RST_20
    ld a, b
    db $e3
    inc a
    db $d3
    rst RST_38
    db $ec
    rst RST_20
    ld a, b
    ldh a, [$ff3c]
    ldh [$ff3c], a
    rst RST_38
    xor d
    ld b, h
    jr nz, @-$06

    ld d, a
    nop
    sub b
    ld [hl], a
    ld d, b
    db $10
    ld a, e
    ld d, b
    ret nz

    rst RST_38
    rlca
    add h
    inc bc
    add l
    ld [bc], a
    add l
    ld [bc], a
    add h
    rst RST_38
    inc bc
    add h
    inc bc
    add c
    ld b, $80
    rlca
    jp Jump_034_40ff


    adc [hl]
    nop
    ldh a, [rLCDC]
    ret nz

    nop
    ret nz

    ei
    ld b, b
    add b
    sub a
    ld d, d
    inc a
    inc a
    inc l
    inc l
    inc e
    rst RST_38
    inc e
    inc [hl]
    inc [hl]
    ld a, $3e
    ld e, $1e
    inc c
    rst RST_20
    inc c

jr_034_638a:
    inc e
    inc e
    ld a, h
    ld d, c
    or b
    ld d, l

jr_034_6390:
    ld de, $9700
    rst RST_38
    nop
    add a
    nop
    add l
    ld b, $89
    ld c, $b1
    rst RST_18
    ld a, $b1
    ld c, $e3
    inc e
    jp z, $c051

    ld b, b
    ld sp, hl
    and b
    sub a
    ld d, b
    call nc, $a151
    nop
    add $40
    ld hl, sp-$01
    ld b, b
    inc a
    inc a
    dec [hl]
    inc [hl]
    dec sp
    jr c, jr_034_63e9

    rst RST_38
    jr z, @+$35

    inc l
    ld b, a
    jr c, jr_034_6390

    jr nc, jr_034_638a

    cp l
    jr c, jr_034_63d6

    add hl, hl
    cp h
    add c
    sbc h
    add c
    ld h, b
    dec bc
    push af
    db $fc
    rst RST_28

jr_034_63d0:
    ld b, b
    ld [hl], d
    dec b
    cp $ff
    xor e

jr_034_63d6:
    rst RST_38
    ld a, [hl]
    push de
    cp $58
    dec b
    ld a, [$adff]
    rst RST_38
    ld d, b
    rst RST_38
    ld d, h
    ld a, l
    xor e
    ld l, b
    inc bc
    db $eb
    rst RST_38

jr_034_63e9:
    or l
    rst RST_38
    ld b, c
    ld c, d
    jr nz, @+$01

    jr nz, jr_034_63d0

    ccf
    rst RST_08
    cp a
    rlca
    rra
    inc bc
    ld a, a
    adc a
    ld bc, $008f
    sbc a
    nop
    rst RST_18
    ld bc, $f800
    ld d, [hl]
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    ld d, b
    ld a, h
    db $fc
    inc a
    db $fd
    inc c
    ld a, $70
    ld d, e
    ldh [rP1], a
    add b
    nop
    and b
    ld h, a
    ld h, d
    and b
    ld e, a
    cp [hl]
    or h
    ld d, a
    ld e, $00
    jr c, jr_034_6420

jr_034_6420:
    add c
    jp $9950


    ld a, a
    ld b, $f8
    rlca
    call $880a
    rrca
    sbc d
    ld h, c
    ld a, h
    ret nc

    ld d, e
    sbc d
    ld d, c
    and b
    nop
    pop bc
    ld b, b
    add a
    ld l, a
    ld h, b
    rst RST_38
    inc [hl]
    inc [hl]
    jr c, jr_034_6477

    inc l
    inc l
    ld a, l
    ld a, h
    ld a, a
    ld a, a

jr_034_6445:
    ld a, b
    db $fc
    jr nc, jr_034_6445

    inc b
    inc de
    dec sp
    nop
    ld sp, hl
    inc a
    ld [hl], l
    ld d, d
    or b
    ld d, e
    ld hl, sp+$07
    ldh [c], a
    dec b
    adc h
    rst RST_18
    dec bc
    add d
    dec b
    add l
    ld b, $84
    ld d, c
    add l
    ld [bc], a
    ld a, $fc
    ld d, c
    adc h

jr_034_6466:
    add c
    add h
    add c
    ret nz

    inc de
    inc d
    db $e4
    ld h, c
    db $fd
    add b
    di
    ld l, b
    ld h, b
    rst RST_38
    ld [hl], c
    cp $60

jr_034_6477:
    rst RST_38
    rst RST_38
    ld [hl], e
    db $fc
    ld h, l
    ld a, [$fc73]
    ld h, [hl]
    ld sp, hl
    sbc $06
    ld a, a
    cp $01
    ld h, c
    sbc [hl]
    ld b, l
    ld bc, $fb04
    ei
    ld a, e
    add h
    nop
    ld bc, $d04f
    ld c, a
    ret nc

    ld b, a
    pop af
    ret c

    jr nc, jr_034_650b

    ld [hl], $73
    jr nz, @+$17

    ld a, a
    rst RST_38
    ld a, l
    rst RST_38
    rst RST_30
    ld a, b
    rst RST_38
    ld [hl], b
    call nz, $f544
    rst RST_38
    rst RST_28
    ld a, [$5a7f]
    push af
    rla
    add sp, $3d
    jp nz, Jump_000_19ff

    ld h, b
    rst RST_38
    xor d
    rst RST_38
    cp $d5
    push de
    xor d
    xor e
    ld d, h
    rst RST_38
    push de
    ld a, [hl+]
    ld a, a
    add b
    ld a, [$a9ff]
    rst RST_38
    db $ed
    ei
    ld l, e
    ld [hl], b
    xor e
    ld d, h
    ld b, h
    inc bc
    push bc
    jp c, $ff4b

    call nc, $df40
    ld b, b
    rst RST_18
    ld b, h
    db $db
    ld b, e
    rst RST_38
    call c, $d946
    ld c, a
    ret nc

    rst RST_10
    jr z, jr_034_6466

    ld a, a
    ld a, [hl]
    ld b, $f9
    inc de
    db $ec
    rst RST_30
    ld [$4d20], sp
    cp $44
    inc bc
    ld b, c
    cp a
    xor b
    ld d, a
    pop de
    cpl
    add sp, -$01
    rla
    push af
    dec bc
    ld hl, sp+$07
    db $ed
    inc de
    ld hl, sp-$09
    rlca
    ld e, a
    ret nz

    ld [hl-], a
    ld [hl], c
    ld b, b
    rst RST_18
    ld b, c

jr_034_650b:
    sbc $3f
    ld b, b
    rst RST_18
    ld b, l
    jp c, $d04f

    cp b
    ld [hl], l
    cp b
    ld [hl], l
    nop
    jr nz, jr_034_6567

    add sp, $65
    db $10
    dec h
    ld de, $0280
    inc b
    ld [bc], a
    rst RST_38
    rlca
    cp $98
    ld b, b
    nop
    nop
    adc b
    ld a, [hl]
    rst RST_38
    db $eb
    pop bc
    and e
    ret


    add d
    pop de
    and [hl]
    jp $0002


    rrca
    ld bc, $bf67
    rst RST_38
    rst RST_38
    ld [hl], a
    add c
    nop
    inc d
    ld a, $5c
    ld [hl], $7d
    ld l, $59
    inc a
    ld [bc], a
    nop
    rlca
    dec e
    nop
    add b
    rst RST_38
    rst RST_38
    ld [$fdff], sp
    db $eb
    rst RST_38
    ret nz

    rst RST_38
    rst RST_28
    nop
    rst RST_38
    ld bc, $0bff
    ld [bc], a
    nop
    rst RST_38
    rlca
    rst RST_38
    rst RST_38
    rst RST_28
    ld sp, hl
    rst RST_28
    ld a, b

jr_034_6567:
    rst RST_38
    db $fc
    rst RST_38
    db $fd
    cp $0d
    inc bc
    ld b, c
    rst RST_38
    jp hl


    rst RST_38
    db $fd
    ccf

Call_034_6574:
    ei
    rst RST_38
    ccf
    dec bc
    dec b
    nop
    rst RST_38
    pop bc
    rst RST_38
    rst RST_20
    di
    rst RST_38
    rst RST_28
    dec bc
    inc bc
    rlca
    nop
    add b
    rst RST_38
    add a
    rst RST_38
    ld sp, hl
    db $e3
    jr c, jr_034_658d

jr_034_658d:
    add hl, sp
    inc bc
    nop
    rst RST_38
    dec d
    rst RST_38
    cp a
    ld b, a
    ldh a, [rIE]
    ldh [rSCY], a
    nop
    ld sp, $0701
    nop
    or c
    add hl, de
    nop
    ldh [c], a
    add hl, hl
    nop
    rra
    ld l, c
    ld [bc], a
    rlca
    nop
    inc e
    nop
    rst RST_00
    rst RST_38
    add c
    db $fc
    add hl, bc
    nop
    ld e, h
    inc b
    ld [bc], a
    rst RST_38
    adc a
    cp $df
    db $fc
    cp a
    rst RST_18
    ld hl, sp-$01
    ld a, b
    rst RST_38
    ld [hl], b
    rrca
    ld bc, $7fe8
    rst RST_38
    db $fc
    ld a, a
    cp $3f
    rst RST_38
    rrca
    sbc c
    nop
    rst RST_38
    rlca
    rst RST_38
    cp $00
    cp $70
    cp $f8
    ld a, e
    cp $fc
    and h
    ld bc, $febe
    cp [hl]
    db $fc
    add b
    ld [bc], a
    ld c, c
    ld b, $b2
    ld [bc], a
    sbc d
    ld bc, $670f
    ld b, $6a
    ld bc, $448f
    nop
    sub a
    adc a
    rst RST_38
    sbc a
    ld [de], a
    nop
    adc a
    sub $02
    push de
    nop
    ld d, h
    rst RST_38
    xor e
    xor [hl]
    ld d, c
    rst RST_38
    nop
    ld d, l
    nop
    xor d
    rst RST_30
    nop
    ld b, h
    nop
    db $eb
    ld bc, $a05a
    cp l
    ld b, b
    rst RST_38
    ld [$d400], a
    nop
    and b
    ld bc, $0700
    rst RST_08
    nop
    rra
    ld [bc], a
    ld a, a
    db $eb
    nop
    jr nc, jr_034_6622

    rlca
    rst RST_38

jr_034_6622:
    db $e4
    db $eb
    ld [bc], a
    db $eb
    nop
    inc bc
    sbc c
    nop
    dec bc
    ld bc, $1f3f
    ld a, $ef
    rra
    ld a, [hl]
    rra
    ld a, a
    jr nz, jr_034_6652

    ei
    rst RST_38
    pop af
    ld d, d
    dec b
    nop
    ret nz

    ld d, a
    nop
    jr c, @+$15

    rst RST_38
    dec de
    nop
    cp $29
    nop
    rla
    ccf
    rst RST_38
    ld a, $49
    db $10
    inc a
    jr nc, jr_034_6652

    ld d, b
    add hl, de

jr_034_6652:
    sbc h
    ld bc, $0797
    rst RST_38
    ld c, $99
    nop
    ld e, $69
    ld [de], a
    nop
    dec de
    ld b, $77
    nop
    ldh a, [rIE]
    add b
    add hl, de
    ld [hl], b
    rst RST_38
    inc bc
    ld h, c
    ld [de], a
    push af
    inc bc
    sub l
    ld [de], a
    ld bc, $0009
    adc [hl]
    cp $be
    cp $8d
    sbc [hl]
    and e
    jr @+$01

    dec bc
    sub l
    ld [de], a
    sub h
    ld de, $1394
    rrca
    cp [hl]
    jp nc, $9f00

jr_034_6687:
    rst RST_38
    rst RST_08
    rst RST_38
    rst RST_18
    call z, $cf00
    di
    ld hl, sp-$78
    ld [hl], l
    nop
    rst RST_08
    ld bc, $ffc7
    jp $dfe0


    add b
    nop
    dec c

jr_034_669d:
    nop
    ld a, l
    ld sp, hl
    ld [bc], a
    inc bc
    ld a, a
    sbc l
    ld c, $69
    ld [de], a
    ld a, $ff
    ld a, a
    or [hl]
    inc d
    cp e
    inc bc
    rra
    ld a, a
    rst RST_38
    rrca
    ld a, a
    ld a, a
    ld [hl], e
    ld a, a

jr_034_66b6:
    ld h, e
    inc bc
    jr nz, jr_034_6687

    ld h, c
    inc bc
    ld [hl+], a
    ld h, e
    ld a, a
    inc [hl]
    rla
    ld [hl], $11
    ret nz

    rst RST_38
    rla
    ld a, h
    rst RST_38
    ld a, [hl]
    ld hl, $7f22
    daa
    ld [hl+], a
    cpl
    inc bc

jr_034_66d0:
    ld [$ff01], sp
    ld [bc], a
    cp $0d
    db $fc
    adc c
    ld hl, sp-$6d
    pop af
    rst RST_38
    rra
    pop af
    jr nc, jr_034_66d0

    ld b, [hl]
    ret nz

    sbc [hl]
    add h
    rst RST_38
    ccf
    inc c
    cp $10
    rst RST_38
    db $f4
    rst RST_38
    ret c

    rst RST_38
    db $e3
    rst RST_38
    dec e
    dec e
    ld bc, $8101
    ld bc, $01ff
    ld bc, $0d8d
    ld d, a
    rra

jr_034_66fd:
    sub e
    rra
    ld a, l
    ld [hl], b
    adc l
    nop
    jr nc, @+$01

    jr nz, @+$01

    ld h, b
    ld h, a
    jr nz, jr_034_66fd

    ld h, b
    ld hl, $9501
    inc d
    sub b
    inc de
    rlca
    rst RST_38
    adc h
    cp $a7
    adc h
    cp $9c
    add e
    jr nz, jr_034_669d

    ld hl, $8398
    jr nz, @+$63

    inc e
    rlca
    jr nz, jr_034_66b6

    ld hl, $7f63
    ld [hl], c
    sbc c
    ld [hl+], a
    inc [hl]
    ld de, $1034
    rst RST_38
    ldh a, [$ffef]
    db $e3
    rst RST_00
    and $e7
    and $c7

jr_034_6739:
    rst RST_38
    and $06
    cp $1c
    db $fc
    jr jr_034_6739

    ld bc, $f1ff
    ld bc, $0761
    ld b, a
    ld bc, $0041
    rst RST_18
    ld b, b
    nop
    nop
    ld hl, sp+$07
    ld c, $01
    ld h, b
    sbc a
    cp a
    cp a
    db $fc
    and $f9
    db $dd
    ld a, $00
    ld de, $fffd
    add e
    sbc a
    ld a, a
    db $fc
    jp Jump_000_3cc7


    cp $f7
    rst RST_38

jr_034_676a:
    ld sp, hl
    rlca
    ld [hl], b
    jr nz, jr_034_67ee

    add e
    cp a
    ret nz

    rst RST_38
    sbc $e1
    ld l, h
    jr nz, jr_034_6784

    jr nc, jr_034_678e

    nop
    ld a, l
    inc b
    ld d, b
    inc d
    rra
    ldh [$ff6f], a
    ldh [$ff2f], a

jr_034_6784:
    ld a, [$8e21]
    ld b, $23
    ld h, c
    ld a, a
    ld h, b
    rlca
    inc [hl]

jr_034_678e:
    ld [hl], $13
    inc [hl]
    ld de, $5380
    rst RST_38
    and b
    ld d, a
    nop
    jr z, jr_034_67bd

    ld a, a
    ld b, l
    ld [de], a
    ld a, a
    ld l, c
    nop
    rst RST_38
    sub a
    di
    sub a
    pop af
    sub a
    ldh a, [$ff9a]
    ldh a, [$ffdf]
    adc l
    ld hl, sp+$06
    cp $03
    ld e, l
    ld bc, $c0e0
    rst RST_38
    nop
    ldh [rP1], a
    db $f4
    nop
    ld l, b
    nop
    inc bc
    rst RST_38

jr_034_67bd:
    inc bc
    and $df
    inc a
    rst RST_38
    and c
    ccf
    ld b, e
    cpl
    ld a, a
    ld b, e
    ld a, a
    add d
    ld [hl], a
    inc b
    ld bc, $226b
    adc d
    ld bc, $6602
    ld sp, $6538
    jr nz, jr_034_676a

    inc de
    sub h
    inc de
    sbc h
    ld de, $2184
    add b
    inc sp
    rst RST_38
    adc h
    ld a, [hl]
    adc b
    ld a, [hl]
    sbc h
    ld a, [hl]
    ld [hl], e
    ld a, a

jr_034_67ea:
    push af
    ld [hl], b
    sbc c
    inc h

jr_034_67ee:
    ld [hl], e
    ld bc, $c722
    and $c7
    ldh [c], a
    ldh a, [c]
    and d
    add hl, sp
    ld bc, $00eb
    or b
    ld sp, $0008

jr_034_67ff:
    inc c
    ld bc, $0cff
    jr nz, jr_034_6809

    db $10

jr_034_6806:
    ld [hl-], a
    ld e, l
    ld a, l

jr_034_6809:
    ld h, $ff
    ccf
    ld e, a
    rra
    ld h, b
    scf
    ld hl, sp-$04
    rst RST_38
    rst RST_38
    ld a, a
    add c
    jr nc, @+$81

    ld a, $f9
    ld sp, hl
    scf
    cp $14
    stop
    ldh a, [c]
    rrca
    nop
    rst RST_38
    db $fc
    cp $f3
    ld a, [hl]
    ldh [$ffbf], a
    jr nz, jr_034_67ea

    ld hl, $0000
    ld [bc], a
    jr nz, jr_034_68b1

    ld c, $60
    ld [bc], a
    ld b, b
    ld e, $e0
    xor a
    ldh a, [$ff3b]
    cp b
    sbc h
    ld de, $2572
    sbc h
    ld de, $7e8c
    adc h
    adc l
    jr nc, jr_034_6806

    ld l, a
    ld a, [hl]
    adc [hl]
    ld a, [hl]
    sbc [hl]
    rla
    ld b, b
    adc [hl]
    ld a, [hl]
    ld a, [bc]
    inc hl
    sub a
    ld h, e
    ld a, a
    ld b, c
    ld d, e
    jr nc, jr_034_68bb

    sbc c
    jr nz, jr_034_67ff

    ld sp, $fc87
    ld sp, $3842
    ld b, e
    ld a, b
    jr nz, jr_034_68ab

    jr c, @+$1e

    nop
    ld a, a
    inc a
    nop
    ld b, [hl]
    inc a
    ld a, $0c
    rra
    db $eb
    nop
    rst RST_38
    ld a, a
    inc bc
    inc a
    ld a, a
    ccf
    rlca
    rra
    add hl, sp
    rst RST_38
    rrca
    rra
    rrca
    rra
    rlca
    ld [$0000], sp
    rst RST_38
    db $fc
    add b
    nop
    db $fc
    ld hl, sp-$24
    db $fc
    ret nz

    or $62
    ld b, b
    db $e4
    db $fc
    db $eb
    nop
    ld a, $00
    ld a, [hl]
    nop
    rst RST_38
    ld b, d
    ld a, $7e
    nop
    ld l, [hl]
    ld e, $5a
    inc a
    ret


    ld a, h
    db $eb
    nop
    ldh a, [$ff3c]
    ld l, a
    ld [hl-], a

jr_034_68ab:
    inc hl
    nop
    ld b, l
    rrca
    rst RST_38
    jp hl


jr_034_68b1:
    sbc [hl]
    adc l
    jr nc, @-$74

    ld sp, $a780
    ld b, h
    ld a, e
    ld a, a

jr_034_68bb:
    ld l, c
    ld l, d
    rlca
    jr nc, jr_034_6921

    daa
    ld b, b
    ld b, b
    sub c
    ld [hl+], a
    add a
    push hl
    ret nz

    ld c, c
    rst RST_38
    rlca
    and $06
    ld a, a
    rlca
    ld a, a
    ld b, $7e
    cp a
    inc b
    ld a, h
    nop
    ld a, h
    nop
    ld a, b
    jp c, $8f42

    xor e
    nop
    rra
    ldh [c], a
    ld b, b
    ccf
    and $40
    ld a, a
    ld sp, $8001
    xor a
    db $fc
    call z, $e4fc
    di
    ld b, b
    push hl
    rst RST_30
    ld b, b
    and $63
    cp $cf
    sub e
    ld b, h
    ld a, d
    inc bc
    ld sp, $8601
    ld a, [hl]
    db $10
    ld d, l
    cp $18
    ld b, c
    sbc [hl]
    ld a, [hl]
    ld a, a
    nop
    jr nz, jr_034_6928

    daa
    rst RST_38
    rrca
    add hl, hl
    rlca
    add hl, hl
    rlca
    jr nz, @+$03

    ld a, $fe
    or b
    jr nc, jr_034_691e

    ldh [c], a
    rlca
    ld h, d
    rlca
    ld h, [hl]
    rlca
    db $ed

jr_034_691e:
    ld h, l
    ld [hl], $53

jr_034_6921:
    add a
    push hl
    db $10
    db $10
    ld a, a
    inc bc
    ld a, a

jr_034_6928:
    rst RST_10
    ld b, $7f
    rrca
    ld b, l
    ld d, b
    inc bc
    pop de
    ld b, b
    nop
    nop
    rst RST_30
    add b
    rst RST_00
    nop
    ld d, e
    ld d, a
    add a
    nop
    nop
    jr @+$01

    db $fc

jr_034_693f:
    jr c, @-$02

jr_034_6941:
    jr jr_034_693f

    jr nc, jr_034_6941

    jr c, @+$01

    cp $38
    cp $30
    cp $00
    nop
    jr nc, jr_034_69cb

    ld a, h
    ld [hl], b
    ld [hl], e
    ld d, b
    jr nz, jr_034_6992

    jr nz, jr_034_6994

    ld b, l

jr_034_6959:
    ld b, b
    rst RST_38
    inc e
    rst RST_28
    ld l, h
    db $e3
    ld l, a
    rst RST_20
    ld c, a
    db $e3
    rst RST_38
    ld c, a
    db $e3
    adc a
    ldh [c], a
    adc a
    db $e3
    xor a
    ldh [c], a
    rst RST_38
    xor a
    rst RST_38
    nop
    add b
    nop
    add sp, -$80
    ld [hl], h
    rst RST_38
    ret nz

    jr c, jr_034_6959

    ld e, $f0
    ld c, $f0
    rrca
    pop de
    ldh a, [$ffa8]
    ld b, l
    xor b
    ld b, l
    ld [$4033], sp
    or l
    ld d, [hl]
    rlca
    and $fc
    jr nc, jr_034_69de

    jp SerialTransferCompleteInterrupt


    nop

jr_034_6992:
    ld [hl], c
    nop

jr_034_6994:
    ld b, c
    jr nc, @+$01

    ld de, $4170
    jr nc, @+$62

    db $10
    ld [hl], b
    nop
    rst RST_38
    ld b, b
    jr c, jr_034_69a3

jr_034_69a3:
    nop
    db $fd
    inc bc
    rst RST_38
    rst RST_38
    rst RST_38
    cp a
    ret nz

    call c, $f9e3
    ld e, $ff
    rra
    rst RST_38
    rra
    ld [hl], b
    nop
    nop
    ccf
    ret nz

    rst RST_28
    ldh a, [rIE]
    or $79
    rst RST_38
    adc b
    ld a, [$0505]
    cp $ef
    rst RST_38
    rlca
    inc l
    inc c
    nop
    ld h, b
    adc h

jr_034_69cb:
    xor h
    adc h
    rst RST_38
    inc l
    inc c
    call z, $1c1c
    inc a
    adc h
    db $fc
    rst RST_28
    db $e3
    xor a
    rst RST_20
    xor a
    db $10
    ld h, c
    rst RST_20

jr_034_69de:
    rst RST_08
    db $e3
    ld a, a
    ld c, a
    ldh [rVBK], a
    ldh [c], a
    ld c, a
    rrca
    db $fc
    jr nz, jr_034_6a4a

    rst RST_38
    cp $0d
    rst RST_38
    dec b
    rst RST_38
    inc b
    rst RST_38
    inc c
    db $e4
    nop
    nop
    and b
    ld e, h
    cp $b0
    ld d, a
    ld [$7031], sp
    ld a, a
    ldh [rIE], a
    ldh [$ffe6], a
    ldh [$ffec], a
    ldh [$ffc0], a
    pop bc
    ret nz

    rst RST_38
    jp $c0c0


    ret c

    ret nz

    and l
    add b
    dec e
    ld e, [hl]
    dec bc
    dec d
    ld b, a
    ld bc, $0307
    ld l, e
    ld h, b
    ld a, [hl]
    ldh [c], a
    ld b, b
    call c, $02eb
    ld e, c
    inc b
    inc c
    nop
    pop bc
    db $eb
    ld [bc], a
    jr c, @+$01

    ld a, l
    jr jr_034_6a2d

jr_034_6a2d:
    nop
    ld [$0eff], sp
    ld [$839c], sp
    ld h, e
    ld a, [$5065]
    ld [$609b], sp
    add d

jr_034_6a3c:
    inc bc
    add e
    rlca
    add [hl]
    ei
    rrca
    add e
    and l
    ld h, b
    ld [bc], a
    rlca
    ret nz

    ret nz

    ld h, b

jr_034_6a4a:
    rst RST_38
    ld h, b
    di
    rst RST_38
    rst RST_00
    rst RST_00
    cp e
    add e
    and l
    ei
    add c
    add l
    or a
    ld h, b
    dec b
    ld bc, $0105

jr_034_6a5c:
    add b
    adc $a0
    nop
    nop
    cp $80
    push bc
    ld h, b
    jp nz, Jump_000_0061

    cp $ff
    rra
    ld a, a
    ld bc, $807f
    rrca
    ret nz

    nop
    ei
    ld hl, sp+$10
    ld l, e
    jr nc, jr_034_6ab1

    rst RST_38
    add hl, sp
    ldh a, [$fff0]
    ld sp, hl
    rst RST_38
    ld l, c
    nop
    ld sp, $0f00
    add b
    add b
    ld hl, sp-$10
    rst RST_38
    rst RST_38
    db $e3
    nop
    ld e, d
    add b
    add d
    ld hl, sp-$08
    rst RST_38
    cp $fe
    inc b
    db $fd
    nop
    db $fd

jr_034_6a97:
    nop
    dec c
    db $fd
    add b
    or b
    jr nc, jr_034_6a5c

    ld b, b
    ld b, $f8
    ldh a, [c]
    db $fc
    rst RST_38
    ld a, [$3e7c]
    ret nz

    adc $70
    ldh [$fffe], a
    rst RST_38
    dec c
    ld c, a
    inc c
    ld c, a

jr_034_6ab1:
    add hl, bc
    xor a
    add hl, bc
    xor a
    rst RST_38
    ld [$00a8], sp
    and b
    jr jr_034_6a3c

    inc c
    add c
    rst RST_38
    di
    rst RST_38
    ei
    rst RST_38
    di
    di
    pop hl
    pop hl
    rst RST_38
    ld hl, $0121
    ld bc, $0303
    inc bc
    rst RST_00
    db $fc
    add $61
    jr nc, jr_034_6b4e

    rlca
    rlca
    add hl, de
    pop hl
    ld a, [hl]
    add b
    db $fd
    ld hl, sp+$7c
    ld de, $01fe
    ld sp, hl
    ld bc, $a405
    db $fd
    add b
    ld d, b
    ld [hl], b
    add c
    or h
    add b
    call z, $e0c1
    cp $5a
    ld [hl], d
    db $d3
    rla
    ld [bc], a
    inc bc
    ld hl, sp+$10
    ld hl, sp+$3f
    add sp, -$05
    jr z, jr_034_6aff

    nop

jr_034_6aff:
    ld h, b
    ld b, e
    jr nc, jr_034_6b05

    ld [de], a
    pop de

jr_034_6b05:
    nop
    reti


    jr nc, jr_034_6b11

    db $10
    ld c, h
    ld b, c
    jr jr_034_6a97

    ld h, b
    nop
    nop

jr_034_6b11:
    ld e, e
    cp $1c
    rla
    ld de, $03ff
    ld h, b
    ld d, c
    jr nc, @+$6e

    ld b, c
    rst RST_18
    nop
    ld hl, sp-$40
    cp $f8
    ld b, [hl]
    ld [hl], b
    nop
    db $10
    db $fd

jr_034_6b28:
    db $10
    ld l, $50
    rlca
    add a
    nop
    ld b, a
    rlca
    jr nz, jr_034_6b28

    add c
    ld h, b
    inc bc
    nop
    cp h
    ld h, c
    dec b
    ld hl, $c909
    rra
    ld a, [bc]
    ld c, [hl]
    ld a, [de]
    ld e, $12
    cp e
    ld [hl], b
    call nz, $c261
    ld h, b
    db $fd
    nop
    ld l, c
    nop
    ccf
    ld a, a

jr_034_6b4e:
    rrca
    ccf
    inc bc
    rst RST_38
    ld a, a
    add hl, de
    rst RST_38
    ld de, $38ff
    rlca
    nop
    db $ec
    ld h, b
    sub $1c
    ld [bc], a
    rst RST_38
    di
    ld [hl], $00
    rst RST_20
    ldh [rSVBK], a
    ld b, a
    rra
    ld a, a
    rlca
    db $e3
    pop bc
    db $fc
    ld hl, sp-$10
    ret nz

    ld b, [hl]
    nop
    ld a, h
    rst RST_10
    db $10
    ld b, h
    nop
    rst RST_00
    rst RST_38
    rst RST_20
    ld a, a
    rlca
    dec e
    add b
    ld b, d
    cp e
    ld bc, $00fd
    dec bc
    nop
    ldh [rSB], a
    ld de, $ff0a
    rst RST_28
    rst RST_38
    rst RST_38
    inc a
    nop
    inc h
    nop
    jr @+$01

    ld [$29be], sp
    nop
    db $10
    rst RST_38
    add b
    add b
    rst RST_38
    inc h
    ld bc, $ff00
    inc e
    db $fc
    inc c
    db $fc
    nop
    db $fc
    inc b
    db $fc
    rst RST_38
    rrca
    ld bc, $0027
    or c
    and b
    ret c

    ret nc

    ld a, a
    ret c

    ret nc

    db $ec
    add sp, -$0c
    db $e4
    ld a, [$011f]
    rst RST_38
    ld a, a
    rst RST_38
    rra
    ld a, a
    rlca
    ccf
    ld bc, $ff0f
    nop
    rlca
    nop
    ld bc, $0000
    rst RST_38
    nop
    cp e
    rst RST_38
    db $fc
    ld h, e
    ld [$1f7e], sp
    ld a, h
    ld [hl], c
    nop
    ld a, c
    rst RST_38
    ld e, $7b
    inc e
    ld a, d
    dec e
    halt
    add hl, de
    ld [hl], h
    rla
    dec de
    ld a, a
    rra
    add b
    dec bc
    ld a, [hl]
    adc a
    nop
    ld [hl], d
    ld bc, $0172
    db $ed
    ld a, b
    sbc e
    nop
    ld h, e
    inc e
    and b
    ld bc, $1867
    ld h, a
    ld [hl], a
    jr jr_034_6c6a

    ld de, $01aa
    ld h, a
    rra
    ld l, a
    or c
    inc b
    db $fc
    adc [hl]
    inc bc
    inc h
    nop
    rra
    nop
    ld a, a
    rlca
    jr jr_034_6c6f

    rst RST_38
    nop
    ld a, h
    inc bc
    ld e, $01
    jr nz, jr_034_6c17

jr_034_6c17:
    ld b, $b6
    rst RST_08
    inc c
    ldh a, [c]
    inc b
    ldh [$ff0b], a
    ld [bc], a
    db $f4
    ldh a, [$ff0b]
    ldh a, [rIE]
    nop
    ldh a, [rLCDC]
    ldh a, [$ffd0]
    ldh a, [$ffd0]
    ldh a, [c]
    ld l, a
    rst RST_20
    di
    rst RST_20
    or $0b
    db $10
    ld bc, $3201
    inc bc
    db $fc
    ld h, b
    ld bc, $0160
    di
    nop
    inc b
    db $e3
    nop
    rlca
    db $fd
    ld [bc], a
    dec h
    db $10
    ld bc, HeaderCartridgeType
    rst RST_20
    dec b
    rst RST_20
    rst RST_30
    inc c
    rra
    call z, Call_000_1131
    sbc a
    call nz, $c49f
    jp $c65f


    dec sp
    db $10
    jr nz, jr_034_6c5e

jr_034_6c5e:
    ld b, b
    dec d
    ld d, e
    nop
    rst RST_38
    rlca
    ccf
    adc a
    rlca
    pop af
    ldh [$fffe], a

jr_034_6c6a:
    db $fc
    ld b, b
    rla
    ld h, h
    add hl, bc

jr_034_6c6f:
    cp $64
    ld bc, $136c
    ld l, l
    inc de
    ld a, e
    rlca
    ld [hl], e
    rst RST_20
    rrca
    ld [hl], a
    rrca
    or h
    dec b
    add [hl]
    dec bc
    ld a, b
    rra
    ld [hl], b
    or $91
    inc d
    ld h, c
    ld e, $9a
    ld de, $037c
    ld a, h
    inc bc
    rst RST_28
    ld a, c
    rlca
    ld a, c
    rlca
    ld [hl], h
    ld de, $1f67
    ld h, a
    cp l
    rra
    ld h, b
    dec e
    ccf
    nop
    ld a, $01
    jp nz, Jump_034_4619

    rst RST_38
    nop
    add [hl]
    nop
    ld d, [hl]
    nop
    and d
    inc b
    jp nc, $04fb

    and $df
    ld [$44b2], sp
    ld d, d
    and h
    and d
    rst RST_38
    ld d, h
    ld [de], a
    db $e4
    ld [bc], a
    db $f4
    rst RST_38
    inc bc
    cp $7f
    ld [bc], a
    ldh a, [rP1]
    add b
    rlca
    nop
    ld a, a
    ld hl, sp+$10
    sbc a
    ld a, h
    add b
    nop
    ret nz

    inc bc
    jp nz, Jump_000_1900

    ld de, $fffc
    nop
    pop bc
    nop
    ld c, $00
    ldh a, [rP1]
    db $fd
    cp $10
    jr nz, @-$0e

    nop
    jp nz, Jump_000_1a00

    nop
    jp c, $1a7e

    ld hl, $2f80
    add b
    jr z, @-$7c

    ld a, [hl+]
    inc h
    daa
    xor e
    add b
    jr z, jr_034_6d17

    jr nz, jr_034_6d19

    jr nc, jr_034_6d1b

    inc l
    jr c, jr_034_6d21

    ld l, $ed
    and b
    ld b, b
    add hl, hl
    nop
    add b
    ld a, [de]
    ld [hl+], a
    ld a, [de]
    nop
    ld a, [de]
    pop af
    ret nz

    ld d, a
    inc h
    jr c, jr_034_6d35

    ld h, [hl]
    cpl
    add b
    rlca
    ld [hl], b
    ld [hl], b
    db $e3

jr_034_6d17:
    ld a, a
    ld a, a

jr_034_6d19:
    ld e, b
    dec h

jr_034_6d1b:
    ld e, b
    ld hl, $2018
    sbc d
    add b

jr_034_6d21:
    dec l
    cp $90
    dec hl
    nop
    inc bc
    nop
    ccf
    nop
    ld hl, sp+$00
    ld h, $5d
    nop
    cpl
    jr nz, @-$54

    ld hl, $2800

jr_034_6d35:
    ret nz

    inc sp
    ld [bc], a
    ld d, c
    inc l
    db $d3
    ld c, $e0
    ret nc

    ld [hl+], a
    inc h

jr_034_6d40:
    ld bc, $60c0
    nop
    rrca
    cpl
    ld sp, $1620
    ld [de], a
    cp a
    ld bc, $200c
    ld c, $40
    adc d
    ld [hl+], a
    dec de
    ld [hl+], a
    nop
    db $f4
    inc h
    inc c
    jr nz, jr_034_6d9c

    ld a, [hl+]
    push af
    add hl, hl
    dec de
    jr nz, @+$26

    add hl, hl
    inc h
    ld hl, $2b40
    jp nc, $204c

    ccf
    ld h, b
    nop
    inc h
    nop
    rrca
    ld b, a
    ld sp, $0f40
    sbc c
    and b
    add b
    add hl, hl
    ld e, b
    ld hl, $e00f
    ld h, b
    ccf
    ld h, [hl]
    ld [hl-], a
    nop
    db $eb
    inc bc
    add b
    ld [$0f20], sp
    inc [hl]
    jr nz, jr_034_6da8

    add b
    add hl, hl
    ld a, [bc]
    add h
    ld [hl-], a
    dec l
    adc b
    ld [hl-], a
    dec h
    inc [hl]
    jr nz, jr_034_6db5

    jr z, jr_034_6d40

    inc hl
    and b
    scf
    ld [$2810], sp

jr_034_6d9c:
    cp c
    ld [hl-], a
    jr z, jr_034_6dc8

    rrca
    ld a, h
    ld hl, $24d0
    pop de
    ld [hl], $33

jr_034_6da8:
    ld [bc], a
    rst RST_08
    add b
    nop
    add b
    jr nz, jr_034_6df0

    inc h
    ldh a, [rTIMA]
    ld [de], a
    db $e4
    rst RST_38

jr_034_6db5:
    ld [hl+], a
    call nc, $a452
    ld [hl-], a
    call nz, $8472
    adc a
    or d
    ld b, h
    ld [hl], d
    add h
    ld [$e104], a
    nop
    nop
    ld b, c

jr_034_6dc8:
    ld d, d
    rlca
    and h
    ld [hl+], a
    call nc, Call_000_05f0
    dec e
    nop
    add b
    db $eb
    db $e4
    inc bc
    nop
    inc b
    inc hl
    ld [$6300], sp
    db $e4
    db $e3
    rst RST_38
    nop
    ld a, [hl]
    ld [$7e76], sp
    nop
    ld sp, $ff00
    ld a, e
    inc bc
    ld b, b
    jr c, @+$65

    dec de
    jr jr_034_6def

jr_034_6def:
    ei

jr_034_6df0:
    ld b, a
    ld de, $0820
    inc de
    ld b, a
    rla
    ld a, [hl]
    ld c, [hl]
    ei
    ld a, [hl]
    ld b, [hl]
    ld [hl-], a
    ld b, $6a
    ld a, [hl]
    ld a, [hl]
    ld d, $fd
    rst RST_38
    ld a, a
    db $f4
    rst RST_38
    db $f4
    ld a, a
    inc b
    cp $fd
    rst RST_38
    rst RST_38
    nop
    and c
    ld e, [hl]
    rst RST_38
    nop
    jr nz, @-$20

    ld e, a
    stop
    ld [$00f6], sp
    ld c, a
    nop
    add b
    ld d, e
    nop
    rst RST_38
    cp $00
    rst RST_28
    ld h, a
    nop
    nop
    cp $7e
    rst RST_28
    ld b, $00
    rst RST_28
    rst RST_20
    ld h, d
    nop
    ld a, h
    ld [$7700], sp
    cp a
    nop
    ld a, a
    ld [hl], c
    nop
    cp [hl]
    nop
    ccf
    ld [hl], c
    nop
    ld a, a
    cp a
    nop
    ld a, [hl]
    nop
    nop
    nop
    rst RST_38
    ld a, a
    nop
    ld hl, sp-$7f
    nop
    add a
    nop
    add d
    ld bc, $f7e6
    rlca
    db $10
    ret z

    rst RST_38
    sbc a
    nop
    db $10
    jp Jump_000_0cd3


    rla
    rst RST_08
    rst RST_38
    sub b
    nop
    rra
    rlca
    rst RST_28
    ldh [$ff08], a
    ld [de], a
    rst RST_38
    ld hl, sp+$00
    ld [$e9e3], sp
    db $10
    add sp, -$0e
    rst RST_30
    ld [$f800], sp
    ld a, a
    nop
    ld a, a
    ld b, b
    ld b, b
    ld b, b
    rst RST_38
    ld e, a
    ld c, a
    ld d, b
    ld c, b
    ld d, a
    ld c, e
    ld d, h
    ld c, d
    ld sp, hl
    ld d, l
    add h
    inc b
    add c
    ld [bc], a
    ret z

    ret nz

    ld a, [bc]
    ld [bc], a
    rrca
    rst RST_38
    rrca
    nop
    ret nz

    ld [bc], a
    ldh [c], a
    nop
    ld [hl], b
    nop
    rst RST_38
    jr c, jr_034_6e99

jr_034_6e99:
    inc e
    nop
    ld c, $00
    rlca
    add hl, de
    rst RST_38
    reti


    nop
    ldh [rTAC], a
    rst RST_30
    nop
    ld hl, sp+$01
    db $dd
    db $fd
    ld a, l
    nop
    ccf
    nop
    rra
    add b
    inc bc
    ret nz

    ccf
    rst RST_28
    add b
    ld a, a
    add b
    ld a, a
    add d
    ld bc, $0304
    db $e4
    or c
    db $e3
    inc c
    nop
    add hl, bc
    ld bc, $1207
    db $fc
    ld a, l
    db $10
    dec de
    ld b, b
    rst RST_10
    db $10
    ld b, a
    rla
    ld [hl+], a
    db $10
    ld d, $26
    ld [de], a
    inc d
    ld b, a
    rst RST_38
    inc d
    nop
    nop
    or $f0
    or $12
    or $f7
    nop
    or $02
    jr c, jr_034_6ef4

    ld b, $f6
    ld [hl], $c1
    rst RST_38
    ld a, $94
    ld a, a
    sbc $3f

jr_034_6eee:
    cp [hl]
    ld a, a
    ld a, [hl]
    ld e, a
    rst RST_38
    dec a

jr_034_6ef4:
    cp $83
    ld a, h
    ld d, [hl]
    nop
    ld e, [hl]
    ld d, d
    nop
    sub l
    halt
    ld c, [hl]
    ld de, $5300
    db $10
    ld a, [hl]
    add [hl]
    inc bc
    add c
    nop
    ld e, $e7
    nop
    jr jr_034_6eee

    jp nz, $c203

    rlca
    ld l, e
    ld h, e
    ld [$e2fd], a
    ret nz

    add hl, bc
    ld l, d
    ld [bc], a
    ld [$9f00], sp
    nop
    rst RST_18
    nop
    ccf
    sbc a
    rra
    ld b, b
    ld h, a
    inc b
    nop
    nop
    rst RST_38
    pop bc
    nop

jr_034_6f2b:
    inc c
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    ei
    rst RST_28
    rlca
    sbc d
    inc de
    ld c, d
    ld d, l
    ld c, d
    ld d, l
    ld c, b
    ld a, a
    ld d, h
    ld c, b
    ld d, a
    ld c, b
    ld d, b
    ld b, b
    ld e, a
    or [hl]
    ld bc, $c03f
    ret z

    nop
    ld [$cbc0], sp
    jp nz, $c110

    inc d
    rst RST_38
    inc b
    inc bc
    ld [de], a
    ld bc, $8011
    stop
    rst RST_38
    nop
    sub b
    nop
    db $10
    inc b
    sub h
    nop
    db $10
    rst RST_38
    rra
    adc b
    db $10
    ret nz

    inc bc
    db $e3
    rlca
    db $f4
    cpl
    ld bc, $0179
    dec a
    ld h, a
    db $10
    rrca
    ld h, b
    dec d
    add h
    dec b
    db $fc
    ld b, $17
    ld b, $13
    ldh a, [$ff71]
    adc [hl]
    ld bc, $0ff0
    rst RST_18
    add e
    ld a, h
    ldh a, [rP1]
    adc a
    add c
    nop
    ld hl, sp+$07
    db $fc
    ld h, $14
    inc hl
    db $10
    add $16
    ld bc, $07f1
    or $f7
    ret nz

    ret nz

    ret nz

    jp $c003


    nop
    nop
    ld a, [bc]
    sub a
    ld [bc], a
    ld l, d
    ld h, d
    ret nz

    add hl, bc
    ld a, [bc]
    ld c, e
    jr nz, jr_034_6f2b

    ld a, [de]
    nop
    push af
    ld [$2a4f], sp
    ld [$205d], sp
    and e
    xor e
    ld h, e
    ld l, e
    rst RST_38
    ld h, e
    ld l, e
    and d
    xor d
    inc hl
    dec hl
    ld h, e
    ld l, e
    rst RST_38
    and e
    xor e
    ld h, d
    ld l, d
    db $10
    ld l, d
    ld b, b
    ld a, [hl+]
    rst RST_38
    ld h, d
    ld [$08e0], sp
    inc bc
    ld l, e
    nop
    ld l, b
    ccf
    ld h, d
    ld a, [bc]
    nop
    ld [$efef], sp
    db $f4
    nop
    sub l
    ld bc, $90ff
    rlca
    inc de
    ld b, [hl]
    rla
    rlca
    db $10
    rst RST_28
    rst RST_28
    xor $00
    nop
    ld [bc], a
    and l
    ld bc, $800a
    add sp, -$11
    ld [bc], a
    add sp, -$20
    ld [$03ba], sp
    ld c, b
    ld d, l
    nop
    rst RST_38
    ld d, l
    nop
    ld d, h
    nop
    rla
    db $10
    add b
    ldh [$fff5], a
    add sp, -$5a
    nop
    db $eb
    ld l, e
    ld hl, $08e3
    inc d
    jp hl


    rst RST_38
    nop
    rst RST_38
    add a
    sub a
    nop
    db $10
    add [hl]
    sub [hl]
    rst RST_38

jr_034_7019:
    nop
    db $10
    rlca
    rla
    add b
    db $10
    ld b, $96
    cp $d8
    db $10
    rlca
    inc b
    inc bc
    add d
    add c
    inc bc
    nop
    add l
    sub c
    push de
    db $10
    sub b
    push de
    ld de, $06c3
    ld h, b
    inc de
    ld b, $16
    and e
    rst RST_28
    db $e4
    ld h, e
    rst RST_20
    ldh [$fff4], a
    ld bc, $ff00
    ld bc, $feff
    ld b, $f8
    add hl, sp
    pop bc
    rst RST_00
    rlca
    ccf
    rst RST_38
    dec a
    ld a, a
    ld h, c
    rlca
    db $f4
    scf
    ret nz

    rst RST_08
    rst RST_38
    ld [$303f], sp
    ld a, a
    ld b, c
    ld a, a
    ld b, e
    ld a, [hl]
    rst RST_38
    ld b, [hl]
    ld a, c
    ld e, c
    ld h, b
    ld l, b
    ld h, d
    ld l, d
    ld h, d
    rst RST_38
    ld l, d

jr_034_7069:
    ld b, d

jr_034_706a:
    ld c, d
    ld [hl+], a
    ld a, [hl+]
    ld h, d
    ld l, d
    ldh [c], a
    and a
    ld [$eae2], a
    ld c, e
    ld [hl+], a
    ld c, h
    jr nz, jr_034_70b9

    ld c, h
    jr nz, jr_034_709c

    ld a, [hl]
    ld b, a
    jr nc, jr_034_70e2

    ld c, b
    nop
    ld [$2a62], sp
    ld d, d
    jr nc, jr_034_7069

    ld l, b
    ld d, d
    jr nc, jr_034_7019

    jr nz, jr_034_70ec

    dec a
    ld [hl], d
    ld hl, $ebe3
    ld b, d
    db $fd
    ld c, d
    ret z

    ld hl, $e815
    nop
    rst RST_38

jr_034_709c:
    ld b, b
    ld a, [hl+]
    adc a
    nop
    ld l, d
    ld b, d
    jr z, jr_034_706a

    inc hl
    ld a, h
    ld sp, $0187
    inc a

jr_034_70aa:
    db $fc
    ld hl, sp+$25
    add a
    nop
    inc de
    ld a, [$0800]
    ldh [c], a
    add sp, -$41
    db $10
    add sp, -$0d

jr_034_70b9:
    ld a, [bc]
    nop
    ld hl, sp-$60
    db $10
    jr c, jr_034_7123

    ldh [$ffe8], a
    inc a
    ld sp, $303e
    ld a, c
    inc [hl]
    ldh [$ff0a], a
    ret nz

    inc sp
    add d
    ld a, b
    dec [hl]
    ld h, d
    add l
    jr nc, jr_034_712f

    inc sp
    ld a, d
    inc sp
    ld e, [hl]
    scf
    jp c, $ff34

    rst RST_28
    ld c, [hl]
    add c
    jr c, jr_034_70e6

    or $27

jr_034_70e2:
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_10

jr_034_70e6:
    db $d3
    rst RST_38
    ld bc, $4204
    inc bc

jr_034_70ec:
    ld a, [bc]
    ld b, c
    ld a, a
    ld b, d
    cp $28
    jr nc, jr_034_7135

    ld a, a
    ld h, c
    ld a, [hl]
    ld d, [hl]
    ld a, l
    ld l, l
    rst RST_38
    ld a, e
    ld e, d
    ld h, a

jr_034_70fe:
    ld h, h
    ld [hl], a
    ld [hl], a
    ld l, a
    ld l, a
    rst RST_38
    ld c, a
    ld c, a
    cpl
    cpl
    xor $ee
    rst RST_28
    db $ec
    rst RST_38
    db $ec
    db $eb
    add sp, -$11
    jr nz, jr_034_70aa

    add b
    ld d, b
    rst RST_38
    db $10
    ld b, e
    ld b, b
    inc hl
    nop
    add hl, sp
    inc h
    jr jr_034_70fe

    add b
    inc e
    ld [hl+], a
    inc c

jr_034_7123:
    nop
    push de
    jr nz, jr_034_7127

jr_034_7127:
    sub a
    db $fc
    ld b, h
    ld b, d
    ld b, e
    ld b, c
    stop

jr_034_712f:
    rrca
    nop
    rlca
    nop
    xor a
    add e

jr_034_7135:
    nop
    add c
    nop
    push de
    db $10
    db $10
    push de
    ld de, $ffc0
    nop
    rst RST_28
    nop
    rst RST_30
    nop
    ei
    nop
    db $fd
    rst RST_38
    add b
    ld a, [hl]
    ld b, b
    ccf
    nop
    ccf
    xor $ee
    rst RST_38
    db $ed
    db $ed
    db $eb
    db $eb
    rst RST_20
    rst RST_20
    rst RST_28
    rst RST_28
    rst RST_38
    rst RST_18
    rst RST_18
    cp a
    cp a
    ld a, a
    ld a, [hl]
    ld [hl], b
    ld l, [hl]
    rst RST_38
    ld h, b
    ld a, [hl]
    ld h, c
    ld e, h
    ld b, e
    ld a, b
    inc bc
    ld a, b
    rst RST_38
    rlca
    ld [hl], b
    rlca
    ldh a, [rIF]
    ldh [$ffb0], a
    rrca
    rst RST_38
    and b
    rra
    add b
    nop
    add a
    nop
    add b
    nop
    rst RST_38
    xor e
    dec hl
    ld h, a
    ld h, a
    ld l, a
    ld l, a
    ld a, [hl]
    ld a, a
    rst RST_38
    ld a, h

jr_034_7188:
    ld a, a
    ld a, h
    ld a, e
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    rst RST_38
    ld [hl], b
    ld l, a
    ld h, b
    ld a, [hl]
    ld h, b
    ld e, [hl]
    ld c, $e0
    rst RST_38
    ld e, $c0
    db $10
    ret nz

    cpl
    add b
    ld l, h
    inc bc
    ccf
    ld e, [hl]
    ld bc, $07b8
    or b
    rrca
    ld a, d
    ld b, c
    rst RST_30
    scf
    add a
    nop
    rst RST_38
    ld h, [hl]
    ret nc

    ld b, b
    call nz, $8349
    ld bc, $0281
    sbc b
    ccf
    ld b, e
    inc h
    sbc c
    ld b, d
    nop
    cp l
    db $f4
    add hl, de
    adc b
    ld [bc], a
    rst RST_38
    rla
    rst RST_38
    ld c, l
    cp $7e
    db $fd
    sbc c
    ei
    rst RST_38
    ld a, [$e4e7]
    adc a
    adc b
    ld l, a
    ld l, c
    ld d, a
    rst RST_38
    ld d, l
    scf
    inc h
    ld [hl], a
    inc b
    rst RST_30
    inc b
    rst RST_30
    rst RST_30
    ld b, l
    rst RST_30
    add l
    ld a, [de]
    ld d, b
    rst RST_10
    add sp, -$19
    ldh [$fffd], a
    xor $22
    ld d, b
    db $fc
    ldh [$ffdc], a
    ret nz

    ld hl, sp-$3f
    rst RST_38
    cp b
    add h
    ld [hl], b
    db $ec
    db $ec
    ld [$e6ea], a
    di
    and $ee
    and c
    jr nz, jr_034_7188

    inc bc
    ld h, c
    ld c, $70
    rlca
    rst RST_38
    cp b
    inc bc
    cp b
    inc bc
    inc b
    ld bc, $c13c
    rst RST_38
    ld e, $e0
    ld a, [bc]
    ldh a, [rTAC]
    db $10
    rlca
    db $10
    rst RST_28
    add a
    db $10
    rlca
    sub b
    ld d, [hl]
    ld d, e
    ld b, a
    sub b
    add h
    adc e
    db $10
    add [hl]
    ld h, c
    ld d, b
    add a
    ld h, l
    ld d, [hl]
    xor $00
    ld d, c
    ld b, c
    inc bc
    rst RST_10
    add b
    ld bc, $9780
    ld b, b
    sub b
    ld a, a
    nop
    ld [bc], a
    nop
    rst RST_38
    dec bc
    ldh a, [rTIMA]
    ld [$0c01], sp
    ldh [c], a
    inc d
    rst RST_38
    ld b, b
    and [hl]
    ld bc, $1f52
    ldh [$ff80], a
    ld h, b
    db $fd
    rrca
    sub e
    ld d, b
    nop
    ld [hl], b
    ld b, a
    jr nc, @+$09

    jr nc, @+$01

    inc bc
    jr c, jr_034_725c

    inc a

jr_034_725c:
    ld bc, $837c
    ld a, b
    rst RST_28
    inc bc
    ld hl, sp+$07
    ldh a, [$ff8c]
    ld b, c
    rra
    ret nz

    cp a
    ld a, [$4097]
    adc a
    sub a
    ld b, b
    add b
    nop
    cp a
    ccf
    ld a, a
    cp [hl]
    cp h
    ld d, b
    db $fc
    inc bc
    ld bc, $f006
    jp TimerOverflowInterrupt


    rst RST_38
    ld c, $e2
    db $ec
    ldh [$ffec], a
    ret nz

    call c, $ff00
    nop
    ld b, b
    nop
    ret nc

    rrca
    and b
    db $10
    add b
    ld a, a
    jr nc, @+$48

    ld l, $02
    ld h, a
    add b
    ld c, d
    ldh [rLYC], a
    rst RST_38
    add b
    ld b, c
    inc e
    and d
    ld c, c
    inc d
    nop
    db $eb
    cp $e0
    ld b, [hl]
    inc b
    ld [hl], c
    adc d
    inc h

jr_034_72ac:
    ld d, c
    nop
    xor [hl]
    cp a
    rst RST_28
    xor c
    rst RST_28
    add hl, hl
    rst RST_28
    dec hl
    inc b
    ld h, b
    xor d
    cp $00
    ld h, d
    xor e
    rst RST_30
    or $f5
    db $f4
    ldh a, [c]
    di
    rst RST_38

jr_034_72c4:
    or $f5
    db $ec
    rst RST_28
    ret c

    rst RST_18
    cp b
    or a
    rst RST_38
    ld [hl], b
    ld a, a
    ld b, $f0
    ld c, $e0
    dec e
    pop bc
    rst RST_38
    dec e
    pop bc
    jr nz, @-$7e

    ld l, $81
    ld e, b
    rlca
    db $eb
    ld e, h
    inc bc
    jp nz, Jump_034_7a07

    ld a, [hl-]
    ld h, b
    halt
    halt
    dec e
    rst RST_38
    ldh [rTIMA], a
    ld hl, sp+$05
    nop
    db $fd
    nop
    ld bc, $45fa
    ld h, b
    cp $4b
    ld h, b
    rlca

jr_034_72f9:
    ld d, b
    daa
    ld d, b
    adc e
    rst RST_38
    jr nz, @-$39

    jr jr_034_72c4

    inc e
    ldh [$ff0e], a
    pop hl
    ld b, a
    ld c, $f0
    rlca
    ld h, [hl]
    ld d, a
    ld d, h
    ld d, b
    ld d, e
    ld d, b
    sub b
    ret c

    db $10
    di
    add b
    db $10
    ld h, b
    ld d, c
    ld h, [hl]
    ld d, e
    jr @-$5b

    ld b, b
    ld de, $47f4
    ld h, b
    add a
    nop
    ldh [$ff81], a
    ld [bc], a
    inc hl
    jr jr_034_72ac

    jr @+$01

    inc bc
    sbc b
    ld b, c
    sbc h
    ld de, $01cc
    inc c
    rst RST_38
    ret nz

    ld c, $08
    ld b, $70
    rlca
    ld a, b
    inc bc
    rst RST_38
    ld [$7403], sp
    add c
    ld d, $e0
    ld a, [de]
    ldh [$ffcf], a
    dec bc
    ldh a, [$ff0d]
    ldh a, [rRP]
    ld d, l
    ld d, [hl]
    ld d, d
    ld d, b
    inc bc
    pop hl
    ld d, b
    ld h, [hl]
    ld h, l
    ld d, d
    ld d, l
    ld h, b
    ld l, c
    ld h, [hl]
    ld d, c
    ld a, b
    inc bc
    ld a, h
    rst RST_38
    ld bc, $01bc
    cp [hl]
    nop
    sbc $00
    rst RST_18
    or $62
    ld b, b
    rst RST_28
    nop
    ld d, [hl]
    ld d, e
    ld b, e
    sub b
    ld h, e
    sub b
    cp a
    ld hl, $9d50
    jr nz, jr_034_72f9

    inc a
    ld b, [hl]
    ld h, c
    pop af
    or h
    ld d, [hl]
    ld b, b
    ld c, b
    ld h, l
    sub l
    db $fd
    ld h, b
    jp nz, Jump_034_4b1c

    ld d, b
    rrca
    xor $a9
    ld d, b
    rlca
    ld hl, sp+$03
    ret nz

    ld l, l
    ld e, $c0
    ld a, $ff
    add b
    dec a
    add c
    ld a, l
    ld bc, $037b
    ei
    sbc a
    inc bc
    rst RST_30
    rlca
    rst RST_30
    rlca
    cp h
    ld d, c
    ld b, b
    ld a, c
    add $ff
    ret c

    pop bc
    ret c

    ret nz

    reti


    add d
    cp c
    adc b
    rst RST_38
    or e
    add b
    or b
    inc bc
    ld [hl], b
    db $10
    ld h, b
    nop
    and a
    push bc
    ld [de], a
    sbc d
    sub a
    ld b, b
    add a
    nop

jr_034_73c1:
    rra
    add c
    inc bc
    inc d
    ld [hl], e
    ld c, c
    and d
    add h
    inc bc
    db $f4
    inc d
    ld d, c
    inc h
    adc d
    ld [hl], h
    ld a, d
    sub a
    ld b, d
    reti


    inc h
    ret nz

    add hl, bc
    nop
    ei
    ld d, c
    sub l
    ld a, c
    jr z, jr_034_73c1

    sub d
    ld b, l
    ld [hl], h
    ld a, d
    push de
    ld c, c
    add a
    nop
    ld [hl], b
    adc c
    ld l, $7f
    ld d, b
    nop
    xor a
    nop
    ld d, b
    ld h, $89
    add h
    inc bc
    rst RST_38
    pop hl
    ld [de], a
    ld c, h
    and c
    nop
    ld e, [hl]
    nop
    and c
    db $eb
    ld c, h
    ld [de], a
    add h
    inc bc
    jp Jump_034_42eb


    nop
    ld b, d
    sbc c
    nop
    sub e
    ld [hl], h
    dec e
    add b
    jr nz, @+$01

    nop
    ld h, b
    adc b
    ld h, b
    ld [$28e0], sp
    ret nz

    rst RST_38
    nop
    ret z

    nop
    ret z

    ld b, b
    adc b
    ld hl, $fd88
    db $fc
    db $10
    ld [bc], a
    nop
    nop
    ld b, b
    ccf
    add b
    ld a, a
    cp a
    nop
    ret nz

    nop
    jp Jump_000_00ff


    jr nz, @+$03

    jr nc, @+$79

    nop
    ld a, b
    add a
    ld hl, $0000
    nop
    ld b, $20
    inc bc
    ld d, h
    inc l
    nop
    ld [hl-], a
    inc bc
    inc c
    jr nc, jr_034_7452

    jr jr_034_7478

jr_034_7448:
    inc c
    ld h, b
    jr nc, @+$07

    rst RST_38
    ld [bc], a
    db $fc
    ld bc, $00fe

jr_034_7452:
    inc bc
    nop
    jp $10ff


    ld b, $11
    ld b, $10
    rlca
    inc b
    inc de
    db $fd
    nop
    ld [hl], a
    nop

Call_034_7462:
    ld [bc], a
    ld de, $1184
    nop
    nop
    sbc a
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    ld l, c
    nop
    add [hl]
    ld bc, $ff01
    cp $c0
    rra
    ret nz

jr_034_7478:
    rra
    ld h, b
    rrca
    ld h, b
    ld l, a
    rrca
    or b
    rlca
    ret nc

    add h
    nop
    db $ec
    ld bc, $0221
    db $fc
    ld [hl-], a
    ld [bc], a
    ld [hl-], a
    ld [$08ff], sp
    rst RST_30
    nop
    rlca
    pop bc
    rst RST_38
    ld b, $c0
    ld c, $00
    ld c, $20
    adc c
    and d
    rst RST_38
    add hl, bc
    and b
    dec bc
    ld h, h
    inc bc
    ld h, b
    ld b, $68
    rst RST_38
    ld b, $ec
    inc bc
    ret nc

    rrca
    jr jr_034_7448

    ld [de], a
    ld a, a
    cp d
    nop
    ld d, a
    nop
    jr z, @+$14

    ld d, [hl]
    ld [hl], $03
    rst RST_38
    jr jr_034_74db

    ret z

    dec d
    nop
    ld [$1400], a
    ei
    ret z

    ld [hl+], a
    ld [hl], $03
    xor $00
    ld [hl], a
    add b
    rst RST_30
    rst RST_38
    nop
    ld a, e
    add b
    inc bc
    nop
    db $e3
    nop
    add e
    ld hl, sp+$6c
    nop
    and c
    dec b
    and c
    dec b
    ret nz

jr_034_74db:
    sbc $c2
    call c, $ffc1
    call c, $bc81
    add l
    cp b
    add e
    cp b
    inc bc
    rst RST_38
    ld a, b
    dec bc
    ld [hl], b
    ret nz

    rra
    add a
    nop
    adc a
    ld a, a
    nop
    add b
    nop
    and b

jr_034_74f6:
    jr z, jr_034_7558

    ld l, b
    ld a, [hl+]
    ld de, $008b
    rst RST_38
    ld [hl-], a
    inc bc
    cp $38
    inc d
    jr nc, jr_034_751a

    and c
    rlca
    ld e, $f8
    ld b, e
    inc e
    ld e, a
    ld [de], a
    and b
    ld b, $03
    ld hl, sp+$01
    nop
    pop hl
    cp a
    nop
    ld bc, $0d00
    db $10

jr_034_751a:
    ld c, $79
    db $10
    adc [hl]
    cp a
    db $10
    rst RST_30
    nop
    rst RST_30
    nop
    ei
    add e
    db $10
    db $fd
    ld e, d
    add a
    db $10
    cp $8b
    db $10
    db $e4
    inc bc
    sub b
    inc d
    inc hl
    sbc b
    db $10
    rst RST_18
    ld h, e
    db $e4
    db $e3
    db $fc
    ld a, l
    and b
    inc de
    add b
    ld bc, $f87f
    rlca
    add c
    ld a, [hl]
    ldh a, [rP1]
    add c
    xor a
    inc e
    xor a
    ret nz

    db $10
    rst RST_00
    rla
    jp nz, $1610

    add $12
    inc d
    cp e
    rst RST_00
    inc d
    or b

jr_034_7558:
    dec d
    add a
    nop
    cp a
    ld hl, $f800
    ld sp, hl
    rlca
    add $14
    jp $c610


    ld d, $01
    pop af
    rlca
    rst RST_38
    or $07
    ld a, b
    rlca
    ld a, b
    add e
    jr c, jr_034_74f6

    rst RST_38
    jr c, @-$7d

    inc a
    pop bc
    inc e
    ret nz

    ld e, $c0
    ld bc, $001e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_034_7a07:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_034_7a84:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_034_7c11:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_034_7ead:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
