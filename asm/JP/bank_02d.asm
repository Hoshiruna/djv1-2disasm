; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02d", ROMX[$4000], BANK[$2d]

Jump_02d_4000:
    jr nz, jr_02d_4042

    cp b
    ld b, l
    ld a, c
    ld b, a
    and $4c
    ld h, l
    ld c, a
    add c
    ld d, l
    cp d
    ld d, a
    ld [hl], c
    ld e, l
    ld a, l
    ld e, a
    rla
    ld h, [hl]
    cp [hl]
    ld h, a
    ld h, l
    ld l, l
    adc l
    ld l, [hl]
    ld l, [hl]
    ld [hl], l
    add hl, bc
    ld [hl], a
    inc [hl]
    ld a, h
    dec e

Jump_02d_4021:
    nop
    add b
    cp e
    rst RST_38
    rst RST_28
    nop
    ld [bc], a
    nop
    rst RST_38
    cp $08
    ld [bc], a
    nop
    ld a, e
    db $fc
    xor $10
    ld bc, $02fe
    db $fc
    cp $18
    ld bc, $feef
    ld [bc], a
    ccf
    ld l, a
    jr nz, jr_02d_4041

    ld a, a

jr_02d_4041:
    ld b, b

jr_02d_4042:
    ccf
    ld l, l
    ld a, [hl]
    jr z, jr_02d_4048

Call_02d_4047:
    ld a, a

jr_02d_4048:
    ld b, b
    nop
    dec bc
    ld hl, sp+$04
    db $10
    dec bc
    db $eb
    ld a, $42
    jr nz, jr_02d_405f

    ld a, [hl]
    cpl
    inc c
    ccf
    nop
    db $10
    ld l, l
    rst RST_38
    ld [bc], a
    dec bc
    db $10

jr_02d_405f:
    cp $12
    dec bc
    db $10
    ld a, a
    ld [hl+], a
    dec bc
    cp $70
    dec c
    cp h
    ld b, $bc
    ld b, $94
    ld l, $ac
    dec a
    ld d, $b4
    ld bc, $1ea4
    add h
    ld a, $bc
    ld bc, $0fc2
    sbc $d0
    add hl, bc
    sub h
    ld l, $a4
    ld e, $b4
    ld bc, $0eb4
    add e
    xor h
    ld d, $b0
    ld bc, $0bee
    add sp, $03
    ldh [c], a
    ld bc, $03d0
    dec a
    cp l
    ld h, b
    db $10
    inc de
    dec l
    ld [hl], b
    dec [hl]
    ld l, b
    jr @+$13

    add hl, hl
    scf
    ld [hl], h
    dec h
    ld a, b
    jr nz, jr_02d_40b7

    ld hl, $267c
    dec d
    jr nc, @+$19

    ld l, h
    ld h, $13
    jr nz, jr_02d_40c2

    dec l
    ld [hl], b
    ld b, h
    ld de, $6835

jr_02d_40b7:
    ld d, $1d
    cp a
    ld hl, $807c
    nop
    sbc [hl]
    ld a, [bc]
    ld h, d
    db $10

jr_02d_40c2:
    ld b, $ff
    sbc [hl]
    ld d, $9e
    ld [de], a
    add b
    nop
    add b
    ccf
    ld a, [$0006]
    cp l
    ld [hl], d
    stop
    rst RST_38
    rst RST_30
    rst RST_38
    rst RST_30
    rrca
    nop
    nop
    nop
    rst RST_38
    ld b, $00
    inc bc
    inc bc
    ld [hl], e
    db $10
    ld a, h
    inc d
    ld de, $927b
    db $10
    add c
    ld [de], a
    ld a, h
    inc d
    sbc $a2
    db $10
    sub c
    ld [de], a
    ld a, h
    ld de, $b0ff
    jr nc, @-$47

    ld [hl-], a
    or l
    dec [hl]
    or h
    inc [hl]
    rst RST_38
    or l
    dec [hl]
    or a
    ld [hl-], a
    or b
    jr nc, @-$3f

    ccf
    rst RST_38
    nop
    nop
    ld d, l
    ld d, h
    ld d, l
    ld d, l
    ld [hl], l
    ld [hl], l
    rst RST_28
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld a, l
    ld [de], a
    nop
    db $dd
    adc b
    rst RST_38
    ld d, l
    ld d, l
    dec d
    dec d
    ld e, l
    ld e, l
    push de
    sub h

Jump_02d_4121:
    cp $cc
    inc de
    call c, Call_02d_5488
    ld d, h
    dec d
    dec d
    ld d, h
    rst RST_30
    ld d, h
    call c, $ccc8
    inc de
    scf
    ld [hl], a
    ld b, d
    ld b, d
    cp a
    ld [hl+], a
    ld [hl], d
    ld [de], a
    ld [de], a
    ld h, d
    ld [hl], d
    call z, Call_02d_7713
    ld a, e
    daa
    ld d, d
    inc b
    jr nz, jr_02d_41b7

    ld [hl], d
    ld d, d

jr_02d_4147:
    ld d, d
    call z, $b313
    ld e, h
    ld c, c
    ret z

    db $10
    ret z

    db $10
    ld e, l
    ld c, c
    ld a, l
    ld de, $ff0d
    inc c
    ld c, l
    ld c, h
    call $cd4c
    call z, $ffcd
    ld c, h
    dec c
    ld c, h
    dec c
    inc c
    db $fd
    db $fc
    ld bc, $00f7
    ld a, c
    ld d, b
    ld [hl-], a
    jr nz, jr_02d_41cf

    ld a, c
    ld l, b
    ld a, c
    rst RST_18
    ld c, b
    ld bc, $0100
    db $fc
    ld h, b
    add hl, de
    sbc [hl]
    ld a, [de]
    jp Jump_000_189e


    ld a, l
    db $10
    ld [hl], e
    ld d, $70
    ld de, $107d
    rst RST_28
    cp $ff
    xor $fd
    nop
    ld a, [$f6b9]
    or b
    db $ed
    rst RST_38
    ld [bc], a
    add sp, -$1b
    nop
    nop
    rrca
    nop
    ld a, a
    rst RST_38
    nop
    pop af
    nop
    adc l
    nop
    ld c, c
    inc a
    add hl, sp
    ld e, a
    ld a, h
    sub l
    jr c, jr_02d_4147

    inc d
    add b
    jr nz, jr_02d_41bf

    ld h, d
    ld d, $f9
    ld a, [de]
    ld d, h
    add hl, hl
    ld [hl], h
    ld de, $001a

jr_02d_41b7:
    ret c

    inc bc
    ld e, c
    cp a
    inc bc
    scf
    inc bc
    or h

jr_02d_41bf:
    inc bc
    jr nc, @+$75

    jr nz, jr_02d_4204

    rst RST_38
    nop
    db $d3
    nop
    ld l, a
    nop
    inc a
    add b
    sbc d
    ld e, a
    pop bc

jr_02d_41cf:
    ld e, b
    add e

jr_02d_41d1:
    jr jr_02d_41d3

jr_02d_41d3:
    rst RST_08
    stop
    ld c, h
    jr nz, jr_02d_41d1

    add c
    ld hl, $1163
    adc l
    jr nz, @-$60

    inc d
    rst RST_20
    nop
    add c
    rst RST_38
    nop
    ld h, [hl]
    ld h, [hl]
    inc l
    inc l
    rst RST_38
    rst RST_38
    rst RST_38
    push af
    ld a, [hl]
    jp c, Jump_000_3c20

    add h
    ld [hl+], a
    ld b, $9e
    inc b
    sbc [hl]
    push hl
    inc e
    ld c, b
    ld [hl+], a
    ld e, $70
    add hl, de
    ld [hl], b
    ld de, $049c
    sbc b

jr_02d_4204:
    db $fd
    dec de
    ld [bc], a
    jr nc, jr_02d_4214

    sub c
    ld d, $91
    ld d, $90
    rst RST_38
    ld d, $82
    inc c
    rst RST_38
    cp l

jr_02d_4214:
    ld a, a
    nop
    ld a, a
    db $dd
    ld [hl], a
    inc d
    jr nc, jr_02d_421c

jr_02d_421c:
    ld a, a
    dec a
    ld a, [de]
    jr nc, jr_02d_4221

jr_02d_4221:
    add c
    rst RST_18
    inc c
    add c
    inc c
    add l
    jr jr_02d_424d

    ld sp, $1881
    rst RST_20
    sbc c
    nop
    sbc c
    inc de
    ld a, [hl-]
    inc d
    ld sp, $0184
    add h
    rst RST_30
    ld bc, $0491
    ld b, h
    jr nc, jr_02d_4243

    add c
    inc d
    add b
    rst RST_38
    inc d

jr_02d_4243:
    inc bc
    db $10
    ld b, d
    ld de, $1343
    ld b, e
    rst RST_38
    db $10
    ld b, b

jr_02d_424d:
    db $10

jr_02d_424e:
    ld b, [hl]
    ld de, $1344
    ld b, a
    rst RST_30
    rla
    ld b, a
    db $10
    ld a, l
    stop
    db $e3
    inc e
    adc a
    ld a, e
    ld [hl], b
    ld hl, sp-$32
    ld de, $3f00
    ret nz

    rra
    cp e
    jr nz, @-$1f

    db $fc
    inc bc
    ret nz

    ccf
    ld a, a
    ld l, c
    ld [hl-], a
    ret nz

    ccf
    rst RST_30
    rra
    ldh [$ffe1], a
    ld l, c
    ld [hl-], a
    db $fc
    inc bc
    ld [hl], b

jr_02d_427b:
    adc a
    db $ed
    rra
    ld a, a
    db $10
    db $fc
    inc bc
    add d
    inc sp
    rra
    ldh [$ff3f], a
    dec sp
    ret nz

    ldh [rBCPD], a
    ld [hl-], a
    nop
    rst RST_38
    ldh [$ff8c], a
    jr nc, jr_02d_424e

    ld hl, $cfcc
    db $10
    rst RST_08
    db $10
    ld c, $f1
    ld a, [hl]
    db $10
    ld l, c
    ld [hl-], a
    ld sp, hl
    inc b
    ld [hl], a
    dec a
    call nz, Call_02d_71f8
    ld [hl-], a
    ld a, [hl]
    add c
    inc bc
    ld l, c
    ld [hl-], a
    ld a, e
    ld a, a
    add b
    ld h, b
    ld sp, $f807
    ld bc, $a6fe
    inc sp
    rra
    nop
    rst RST_38
    rra
    ldh [$ffc3], a
    ld l, c
    ld [hl-], a
    or d
    ld [hl], $b5
    inc [hl]
    db $fc
    cp e
    jr nz, jr_02d_427b

    ld [hl-], a
    db $fd
    nop
    db $fc
    nop
    nop
    cp $73
    nop
    cp $07
    ld b, b
    sbc a
    ld sp, $bffe
    nop
    cp a
    db $10
    ld a, a
    ld a, a
    add b
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    nop
    ld l, h
    db $10
    ld bc, $067f
    ld b, a
    ld b, $43
    ld d, $47
    ld d, $43
    ld h, $42
    or l
    inc [hl]
    ld b, $00
    ld hl, sp+$1b
    ld b, e
    ld b, l
    ld c, b
    or $37
    nop

jr_02d_42fb:
    nop
    sbc a
    nop
    cp a
    ret c

    ld e, a

Jump_02d_4301:
    ld c, d
    ld a, [de]
    ld b, b
    sbc [hl]
    nop
    ld c, a
    nop
    add d
    ld b, b
    rrca
    ld c, a
    cp $ad
    jr nz, jr_02d_436f

    nop
    inc a
    inc bc
    nop
    nop
    ld [bc], a
    rst RST_38
    ldh a, [rSC]
    ldh [$ffe2], a
    ldh [$ffe2], a
    nop
    ld [bc], a
    rst RST_38
    nop
    jp nz, $0400

    sub b
    rst RST_00
    ldh [$ff99], a
    rst RST_38
    ret nz

    or c
    add b
    xor c
    nop
    ld b, l
    nop
    ld b, d
    ei
    nop
    ld b, h
    ld [hl], e
    jr nz, jr_02d_42fb

    ld c, $30

jr_02d_4339:
    ld b, $18
    ccf
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    ld b, h
    nop
    add h
    xor e
    ld b, b
    ld [bc], a
    ld b, b

jr_02d_4346:
    cp $63
    jr nc, @+$3a

    rst RST_38
    add a
    ld a, b
    rlca
    ld hl, sp+$07
    rst RST_18
    ld hl, sp+$37
    ret c

    scf
    ld hl, sp+$03
    ld b, b
    ld bc, $ff87
    rst RST_38
    ld a, b
    add a
    ld [hl], b
    adc a
    jr z, jr_02d_4339

    ld d, b
    rst RST_18
    xor a
    jr nz, jr_02d_4346

    ld hl, sp+$06
    ld a, l
    ld de, $ff01
    rst RST_38
    pop bc

jr_02d_436f:
    ccf
    pop bc
    cp a
    ret


    rst RST_30
    ld bc, $feff
    ret z

    ld b, c
    add a
    ld hl, sp+$0f
    ldh a, [$ff8f]
    ld [hl], b
    rst RST_18
    db $fd
    jr nz, jr_02d_43cf

    ld b, c
    ld d, h
    xor e
    nop
    rst RST_38
    inc b
    ei
    rst RST_38
    inc b
    ei
    add h
    ld a, e
    call c, $fe23
    ld bc, $ffdf
    nop
    add hl, bc
    rst RST_30
    add hl, bc
    db $ed
    ld b, b
    add hl, bc
    rst RST_30
    rst RST_38
    ld c, c
    or a
    ld l, l
    sub e
    rst RST_38
    ld bc, $01fe
    ei
    ret nz

    ret nz

    ld de, $3f40
    nop
    rst RST_08
    nop
    ld [hl], $ff
    ret nz

    ret


    ret nz

    rst RST_00
    ret z

    jp z, Jump_000_1818

    rst RST_28
    ld [$00e8], sp
    ldh a, [rNR31]
    ld b, b
    ld a, a
    nop
    and b
    rst RST_28
    rrca
    cpl
    adc a
    xor a
    ld e, c
    ld b, [hl]
    rst RST_38
    nop
    ld bc, $3cff

jr_02d_43cf:
    dec a
    inc a
    dec a
    ret z

    jp z, $c6c0

    ei
    pop bc
    push bc
    ld d, h
    ld d, d
    call $cbc3
    jp Jump_000_3fcb


    adc a
    xor a
    adc h
    xor h
    add b
    and b
    ld h, h
    ld d, a
    ld c, h
    ld d, c
    ccf
    inc a
    dec a
    inc e
    dec e
    inc c
    dec c
    ld a, b
    ld d, e
    cp e
    jr nz, @+$01

    cp $fc
    db $fd
    nop
    ld bc, $c038
    nop
    rst RST_38
    ld hl, sp+$00
    di
    nop
    pop af
    cp a
    cp a
    inc a
    ld a, a
    inc a
    ret nz

    jp $b080


    nop
    rlca

jr_02d_4410:
    ld l, l
    ld b, b

jr_02d_4412:
    rra
    ld e, a
    nop

jr_02d_4415:
    ld e, a
    ldh [$ffe0], a

jr_02d_4418:
    ld [hl], c
    jr nz, @-$5d

    ld d, c
    ld c, h
    ld b, c
    ld e, l
    rst RST_38
    inc [hl]
    ld d, b
    ld [$a400], sp
    sbc a
    jr nz, jr_02d_4415

jr_02d_4428:
    inc [hl]
    ld d, b
    rst RST_38
    rst RST_38
    nop
    ld hl, sp+$07
    nop
    nop
    jr jr_02d_4433

jr_02d_4433:
    db $fd
    db $10
    jp nz, $9052

    nop
    ld l, e
    db $10
    and b
    cp e
    rlca
    nop
    nop
    jr nz, jr_02d_4412

    ld d, [hl]
    xor h
    inc sp
    inc a
    jr nz, jr_02d_4428

    ld d, h
    xor h
    ld [hl-], a
    rst RST_28
    jr nc, jr_02d_4410

    pop af
    pop af
    ldh [$ff50], a
    ld a, [$f101]
    rst RST_38
    ldh [$ffe1], a
    ret nz

    ld [bc], a
    ld bc, $0001
    and b
    rst RST_38
    rlca
    nop
    sbc e
    sbc b
    dec l
    cp l
    jr z, jr_02d_449d

    ccf
    and b
    xor [hl]
    jr nz, jr_02d_4418

    nop
    add hl, de
    and a
    ld d, h
    rst RST_08
    db $10
    ld hl, sp-$31
    jr nc, jr_02d_44c9

    ld b, c
    ld de, $7f66
    ld a, a
    nop
    add b
    rlca
    rst RST_38
    rst RST_20
    ret c

    dec b
    db $dd
    nop
    ret c

    ld [bc], a
    ld a, [$d83f]
    ld [bc], a
    nop
    db $dd
    ret nz

    dec e
    add hl, sp
    ld h, b
    and d
    ld [hl-], a
    or h
    call Call_02d_4c12
    ld b, c
    ld [bc], a
    ld a, l
    db $10
    rrca
    ldh a, [rHDMA1]

jr_02d_449d:
    ld h, b
    ldh a, [$fffe]
    ld c, d
    ld b, e
    ld sp, $8000
    ld bc, $0280
    add c
    rst RST_38
    ld bc, $2120
    ld b, b
    ld b, d
    ld b, c
    ld b, c
    ld c, b
    rst RST_38
    ld c, c
    ld d, b
    ld e, b
    add b
    and a
    nop
    xor a
    nop
    rst RST_38
    rra
    add c
    sbc [hl]
    inc bc
    cp h

jr_02d_44c1:
    rlca
    jr c, jr_02d_44d3

    cp e
    ld [hl], b
    ld e, [hl]
    reti


    ld d, c

jr_02d_44c9:
    rst RST_38
    ld a, a
    add b
    xor l
    ld d, c
    ret nz

    rst RST_38
    nop
    inc bc
    nop

jr_02d_44d3:
    rra
    nop
    nop
    ld hl, sp+$01
    rst RST_38
    db $fc
    ldh [rNR34], a
    ldh a, [$ff0e]
    ld a, b
    rlca
    inc e
    sbc a
    inc bc
    ld c, $01
    add $01
    inc a
    ld h, b
    and c
    ld h, d
    ld e, b
    rst RST_38
    ld [bc], a
    ld e, d
    nop
    ld a, [de]
    add b

jr_02d_44f2:
    dec e
    ret nz

    ld [bc], a

jr_02d_44f5:
    xor e
    nop
    call z, Call_02d_60b1
    ret z

    or l
    ld h, b
    ret


    ld c, e
    ld b, d
    jr c, jr_02d_44c1

    nop
    sbc h
    nop
    sbc [hl]
    nop
    inc c
    or b
    ld d, b
    pop bc
    db $fc
    ld c, e
    ld b, d
    jr nz, @+$09

    inc hl
    ld h, d
    dec e
    ld b, b
    ld e, [hl]
    ld b, b
    call nz, Call_000_33f7
    adc a
    ld h, b
    rlca
    ld d, d
    ld b, c
    xor e
    inc sp
    ld h, $62
    add b
    rlca
    rst RST_18
    ei
    inc a
    call nz, $08fb
    ret nz

    ld b, b
    jr jr_02d_44f5

    rst RST_38
    rst RST_20
    nop
    nop
    cp a
    add b
    ld [hl], b
    rrca
    ret nz

    rra
    ccf
    add b
    ld a, a
    ld [hl], b
    rrca
    inc d
    ld h, h
    db $eb
    ld h, e
    ld b, $00
    db $ed
    rra
    sbc h
    ld [hl-], a
    ccf
    ret nz

    dec e
    ld d, b
    cp $07
    ld hl, sp-$21
    ei
    ld [$08fb], sp
    db $e3
    ld a, e
    db $10
    rst RST_28
    jr nz, @+$01

    call c, $b043
    adc a
    cp h
    add e
    db $fc
    inc bc
    call z, Call_02d_65e2
    xor b
    ld d, e
    ccf
    ret nz

    ld b, a
    ld b, l
    and [hl]
    inc sp
    rst RST_30
    jr nc, jr_02d_44f2

    rst RST_00
    rst RST_08
    ld h, b
    ld c, c
    and h
    ld sp, $4960
    or h
    ld sp, $4960
    rra
    ld h, c
    pop hl
    add hl, bc
    ld b, d
    ld h, e
    ld b, [hl]
    ld [de], a
    jr nc, @+$55

    ld a, d
    ret nz

    ccf
    ld d, d
    ld a, e
    ld hl, sp+$20
    ld h, h
    cp a
    halt
    sbc l
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    rlca
    ld hl, sp-$2a
    ld [hl], l
    dec b
    ld b, b
    sbc c
    ld b, b
    ld [bc], a
    ld hl, sp+$0a
    ld hl, sp+$1a
    sbc a
    ld hl, sp+$3a
    ld hl, sp+$7a
    ld hl, sp+$12
    jr nc, @-$51

    jr nz, jr_02d_45ed

    rst RST_38
    rra
    ld b, c
    rra
    ld b, e
    rra
    ld b, a
    rra
    ld c, [hl]
    ld bc, $1d1f
    add b
    add hl, hl
    rst RST_38
    ld a, [$fa00]
    nop
    ld a, [bc]
    nop
    ld [$dfe0], a
    jp z, $8ae0

    ldh [$ff0a], a
    dec bc
    nop
    ld d, b
    nop
    cp l
    ld e, a
    ld de, $5002
    nop
    ld d, b
    rlca
    ld a, [de]
    ld bc, $fb02
    nop
    cp $21
    ld [bc], a
    ld [bc], a
    nop
    ld a, [bc]
    ld hl, sp+$1a
    cp a
    ld hl, sp+$3a
    ld hl, sp+$40
    nop
    ld a, a
    ld sp, $4002

jr_02d_45ed:
    rst RST_38
    nop
    ld e, [hl]
    rra
    ld e, h
    rra
    ld e, b
    rra
    ld a, [bc]
    ret nz

    ld bc, $0000
    inc bc
    inc c
    ld bc, $000e
    dec de
    ld bc, $0811
    ld [hl], d
    ld hl, sp-$21
    ldh [$fff8], a
    ld bc, $fd01
    ld h, l
    ld [bc], a
    ld bc, $ff01
    ld [hl], c
    ld sp, hl
    ld d, b
    rra
    nop
    rra
    add b
    add b
    ret


    cp a
    ld [hl], l
    ld [bc], a
    ld a, e
    nop
    sbc a
    ld c, d
    ld [bc], a
    ld b, c
    ld [$0750], sp
    rst RST_18
    ld d, c
    rlca
    ld d, e
    rlca
    ld d, a
    ld d, e
    inc b
    ld b, b
    nop
    rst RST_38
    pop hl
    ld sp, hl
    pop bc
    ld sp, hl
    add c
    ld sp, hl
    ld bc, $def9
    ld h, h
    inc bc
    ld bc, $8000
    sbc a
    or b
    ld bc, $9f81
    cp $74
    inc bc
    add b
    nop
    ld a, [hl+]
    ldh [rOCPS], a
    ldh [$ffea], a
    inc b
    jp Jump_02d_4000


    inc bc
    ld [bc], a
    scf
    nop
    ret nc

    dec bc
    rst RST_18
    ld bc, $006b
    db $e4
    ld b, $7e
    ret nc

    inc b
    rlca
    ld b, b
    rra
    ld b, b
    nop
    ld b, c
    rst RST_28
    nop
    rst RST_38
    ld bc, $3d01
    ld bc, $017d
    ld bc, $fe81
    ld l, e
    nop
    db $fd
    db $fd
    db $fd
    ld bc, $4100
    nop
    rst RST_38

jr_02d_467c:
    ld b, c
    inc e
    ld b, l
    inc e
    ld c, l
    inc e
    ld e, l
    inc e
    db $fd
    ld b, c
    ld sp, $4100
    nop
    inc b
    nop
    inc b
    ld [hl], b
    rst RST_38
    inc b
    ld [hl], b
    inc d
    ld [hl], b
    inc [hl]

jr_02d_4694:
    ld [hl], b
    inc b

jr_02d_4696:
    nop
    ld a, l
    db $fc
    rra
    db $10
    ld e, c
    inc e
    ld d, c
    inc e
    ld b, c
    inc sp
    inc de
    ld a, $1b
    ld [de], a
    ld [hl], h
    ld [hl], b
    ld h, h
    ld [hl], b
    ld b, h
    inc hl
    db $10
    ld [hl+], a
    db $10
    and [hl]
    dec hl
    ld [de], a
    ld e, l

jr_02d_46b2:
    inc e
    jr nc, jr_02d_46cb

    ld sp, $0000
    ld hl, $7416
    ld a, [$1229]
    nop
    rrca

jr_02d_46c0:
    db $10
    ld d, c
    db $10

jr_02d_46c3:
    ld b, l
    inc b
    ld b, c
    ld sp, hl
    inc b
    ld [hl-], a
    db $10
    dec de

jr_02d_46cb:
    inc d
    inc h
    ld h, b
    ld b, h
    ld b, b
    ld b, h
    pop hl
    ld b, b
    jr nz, jr_02d_46e5

    dec hl
    ld [de], a
    db $10

jr_02d_46d8:
    db $10
    ld [hl], c
    db $10
    ld c, c
    jr jr_02d_472f

    db $ed

jr_02d_46df:
    db $10
    ld a, [de]
    inc de
    ld b, h
    ld b, b
    add d

jr_02d_46e5:
    ld de, $0004
    inc d
    ld l, l
    db $10
    adc d
    dec de
    ld c, c
    jr @+$5c

    inc de
    inc h

jr_02d_46f2:
    jr nc, jr_02d_467c

    ld de, $a0fc
    ld de, $136a
    jr nz, jr_02d_46fc

jr_02d_46fc:
    inc l
    ld c, $28
    ld c, $ed
    jr nz, jr_02d_46d8

    ld de, $3f00
    rst RST_08
    db $10
    add d
    nop
    cp d
    rst RST_38
    jr c, jr_02d_46c0

    jr c, jr_02d_46b2

    jr c, jr_02d_4694

    jr c, jr_02d_4696

    cp $21
    nop
    add d
    nop
    jr nz, jr_02d_4729

    ld [hl+], a
    ld c, $26
    pop af
    ld c, $d2
    ld [de], a
    db $db
    inc de
    rst RST_20
    db $10
    adc d
    jr c, jr_02d_46c3

jr_02d_4729:
    jr c, jr_02d_478c

    cp d
    jp hl


    ld d, $d6

jr_02d_472f:
    ld de, $11f2
    jp c, Jump_000_0011

    nop
    ld b, $21
    db $fc
    db $e4
    rla
    adc $11
    inc h
    inc c
    jr z, jr_02d_4749

    jr nz, jr_02d_4743

jr_02d_4743:
    ei
    ld [hl+], a
    ld [bc], a
    jp c, $9215

jr_02d_4749:
    jr jr_02d_46e5

    jr jr_02d_46df

    ld h, e
    db $10
    add d
    rst RST_18
    db $10
    db $ec
    ld [de], a
    rst RST_08
    db $10
    jr z, jr_02d_4760

    ld [hl-], a
    inc hl
    ld a, [hl]
    call c, $8a11
    jr c, jr_02d_46f2

jr_02d_4760:
    jr nc, @-$5c

    jr nz, jr_02d_47ac

    ld hl, $ea98
    inc de
    inc [hl]
    ld hl, $2030
    inc b
    ld a, [hl+]
    add hl, de
    inc h
    ld h, [hl]
    inc hl
    sub d
    rlca
    db $10
    and d
    jr nc, jr_02d_47a2

    inc hl
    dec e
    nop
    add b
    db $fd
    nop
    nop
    inc b
    ld bc, $0e00
    ld bc, $0e30
    cp e
    ld b, c
    jr nc, jr_02d_478a

jr_02d_478a:
    inc bc
    ccf

jr_02d_478c:
    nop
    ret nz

    ld d, $02
    rst RST_38
    ldh a, [rP1]
    ld [bc], a
    ld e, $00
    inc h
    ld [bc], a
    ld a, [hl+]
    ld bc, $408f
    ccf
    add b
    ld h, c
    ld a, a
    add hl, hl
    inc b

jr_02d_47a2:
    ld a, [hl+]
    ld bc, $0b22
    ld c, h
    rrca
    ld a, [hl+]
    ld b, h
    ld h, b
    dec bc

jr_02d_47ac:
    ld a, [$0522]
    cp $39
    inc c
    inc l
    inc de
    adc e
    inc b
    ldh [c], a
    ei
    ld bc, $1ff8
    ld [$ff00], sp
    ret nz

    ccf
    or b
    dec e
    ld c, a
    nop
    inc bc
    db $fc
    nop
    inc bc
    and [hl]
    nop
    and l
    nop
    ld e, $03
    cp $00
    nop
    add b
    nop
    ld [hl], b
    add b
    inc c
    ld [hl], b
    ld [bc], a
    ld bc, $788c
    dec b
    ld [hl], $05
    adc b
    dec b
    ld a, b
    ld b, $2a
    nop
    sbc h
    ld bc, $0588
    rst RST_08
    ld bc, $00f2
    db $fd
    ld [hl], a
    dec b
    sbc h
    ld bc, $00e0
    rst RST_10
    rst RST_28
    rrca
    add sp, $03
    db $10
    ldh [rTAC], a
    db $10
    rst RST_28
    nop
    ld a, a
    ldh [rP1], a
    jr z, jr_02d_4847

    add hl, hl
    ld b, l
    jr z, jr_02d_481a

    ld [de], a
    rst RST_18
    add hl, hl
    ld b, h
    add hl, hl
    ld b, h
    jr z, jr_02d_487e

    nop
    db $10
    ld c, a
    rst RST_38
    ld b, [hl]
    dec e
    ld c, h
    ld e, $4a
    inc d
    ld e, c

jr_02d_481a:
    nop
    db $fd
    ld e, a
    nop
    nop
    inc bc
    nop
    add e
    jr c, @+$3d

    add b
    xor a
    dec sp
    add b
    cp e
    nop
    jr c, jr_02d_483d

    inc bc
    add hl, hl
    ld [bc], a
    db $fd
    rst RST_38
    ld [bc], a
    ei
    inc b
    cp $01
    db $ed
    ld [de], a
    cp $ff
    ld bc, $4ab5

jr_02d_483d:
    ld [$5d14], a
    and d
    xor d
    rst RST_38
    ld d, l
    push af
    ld a, [bc]
    xor d

jr_02d_4847:
    ld d, l
    ld d, l
    xor d
    and b
    rst RST_38
    ld e, a
    nop
    rst RST_38
    inc l
    inc de
    dec bc
    add h
    and d
    rst RST_30
    ld d, c
    ld d, b
    xor b
    ld e, b
    ld de, $d52a
    dec b
    ld a, [$eaff]
    dec d
    db $f4
    dec bc
    xor d
    ld d, l
    db $f4
    dec bc
    rst RST_38
    ld l, b
    sub a
    call nc, $ea2b
    dec d
    or h
    ld c, e
    ld a, a
    dec d
    rst RST_38
    cpl
    rst RST_38
    ld e, a
    rst RST_38
    ccf
    add e
    db $10
    db $fd
    cp a
    add e
    ld [de], a

jr_02d_487e:
    ld b, d
    db $fd
    and l
    ld a, [$fff0]
    rst RST_38
    pop hl
    cp $f0
    rst RST_38
    jp hl


    cp $d2
    db $fd
    rst RST_38

jr_02d_488e:
    pop hl
    cp $ea
    dec d
    push de
    ld a, [hl+]
    ld a, [$ff05]
    push af
    ld a, [bc]
    ld a, [$ff05]

jr_02d_489c:
    nop
    cp $01
    rst RST_38
    rst RST_38
    nop
    ld d, a
    rst RST_38
    ld a, [hl+]
    rst RST_38
    dec b
    rst RST_38
    rst RST_38
    ld b, b
    cp a
    xor b
    ld d, a
    ld d, l
    xor d
    xor d
    ld d, l
    rst RST_30
    push de
    ld a, [hl+]
    jp nc, $1091

    ld [bc], a
    db $fd
    dec d
    ld [$aaff], a
    ld d, l
    ld d, a
    xor b
    xor e
    ld d, h
    rst RST_18

jr_02d_48c3:
    jr nz, jr_02d_48c3

    ld [hl], $05
    db $fc
    nop
    ld hl, sp+$03
    ld a, [$fd01]
    cp $35
    ld b, $1f
    nop
    rrca
    ldh [$ff2f], a
    ret nz

    ld e, a
    db $fd
    add b
    jr z, @+$05

    cp $01
    ld hl, sp+$07
    ldh [$ff1f], a
    db $fc
    inc sp
    ld [bc], a
    ld [hl], a
    nop
    db $e3
    inc e
    inc bc
    db $fc
    inc bc
    db $fc
    ei
    rlca
    ld hl, sp+$0a
    ld hl, $8000
    ccf
    nop
    and b
    ld a, a
    rra
    jr nz, @-$5f

    jr nz, jr_02d_489c

    jr nc, jr_02d_488e

    ld a, [de]
    ld hl, $3fcf
    ccf
    ret nz

    nop
    ld hl, $3620
    ld b, $ff
    rst RST_38
    rst RST_30
    rra
    rra
    ldh [rNR33], a
    nop
    cpl
    ret nc

    inc de
    db $ec
    rst RST_28
    ld [$06f7], sp
    ld sp, hl
    cpl
    jr nz, @+$01

    ld a, a
    ld a, a
    add hl, de
    add e
    xor b
    nop
    ld a, [hl+]
    ld bc, $c03f
    ld b, b
    ld hl, $2140
    ld [hl-], a
    inc hl
    sbc h
    dec l
    ld [hl+], a
    ld h, b
    ld h, $0f
    rrca
    ldh a, [rDMA]
    ld c, $0a
    inc hl
    ld c, $d9
    pop af
    add [hl]
    dec h
    ld a, [de]
    inc hl
    ld e, b
    add a
    sub [hl]
    dec h
    inc bc
    db $fc
    db $fd
    ld bc, $0ac0
    adc a
    ld [hl], b
    add a
    ld a, b
    swap h
    rst RST_38
    ld h, c
    sbc [hl]
    ld [hl], d
    adc l
    add hl, sp
    add $1c
    db $e3
    ei
    ld c, $f1
    ld [hl], $07
    ld a, a
    add b
    sbc a
    ld h, b
    ld c, a
    ld sp, hl
    or b
    ld c, [hl]
    dec c
    add hl, hl
    inc b
    ccf
    ret nz

    rst RST_08
    ldh a, [$fff3]
    ld l, a
    jr c, jr_02d_49ab

    ld c, $ce
    add [hl]
    ld hl, $e11e
    db $f4
    dec h
    dec de
    nop
    nop
    sub [hl]

jr_02d_497e:
    ld hl, $835c
    inc b
    dec [hl]
    ld hl, $d402
    ld a, [hl+]
    db $e3
    rrca
    ldh a, [$ff0a]
    ld hl, $2106
    ld [$0f21], sp
    ldh a, [$ff67]
    rst RST_38
    sbc b
    inc sp
    call z, Call_02d_6699
    sbc h
    ld h, e
    adc $e7
    ld sp, $18e7
    ld a, [hl-]
    ld sp, $27c2
    ld a, a
    add b
    ccf
    ccf
    ret nz

    cp a
    ld b, b

jr_02d_49ab:
    and b
    nop
    ld b, b
    ld d, c
    jr nc, @+$24

    ld bc, $c7e1
    nop
    dec b
    nop
    nop
    inc [hl]
    ld bc, $310d
    nop
    nop
    rlca
    ld d, b
    nop
    ld [bc], a
    dec h
    inc hl
    db $fd
    jr nz, jr_02d_497e

    nop
    db $fc
    dec d
    nop
    ld b, $a5
    nop
    ld sp, hl
    pop bc
    rst RST_00
    ld hl, $0000
    ret nc

    cpl
    nop
    nop
    dec b
    cp a
    dec b
    ld [bc], a
    ld [bc], a
    ldh [rP1], a
    ld hl, sp+$69
    jr nc, jr_02d_49ea

    rst RST_38
    rlca
    inc bc
    di

jr_02d_49e7:
    ld bc, $7d01

jr_02d_49ea:
    ld a, l
    db $fc
    ld a, a
    db $fc
    cp $fe
    ld e, $1e
    rlca
    rlca
    adc l
    ld sp, $8ddf
    adc l
    sbc a
    sbc a
    rst RST_18
    cp b
    jr nc, jr_02d_4a4e

    ld c, a
    sbc e
    ld l, a
    ld l, a
    dec e
    ld bc, $a8a8

jr_02d_4a07:
    ld h, b
    daa
    dec e
    ld bc, $f96a
    ld l, d
    add $38
    sub l
    inc bc
    nop
    jr nz, @+$21

    ld b, b
    jr nc, jr_02d_49e7

    ld b, b
    scf
    ld b, b
    ld sp, $35e0
    dec e
    nop
    call z, $e700
    or l
    nop
    add h
    ld e, $02
    ld a, $03
    ld h, c
    nop
    xor a
    ei
    nop
    ld h, e
    nop
    ld b, l
    inc de
    ldh [$ff08], a
    di
    ld [$f0e7], sp
    ld [$5bf3], sp
    jr c, jr_02d_4a4f

    inc b
    rst RST_38
    nop
    ld e, $be
    ld e, e
    jr c, jr_02d_4a07

    nop
    add a
    nop
    rrca
    dec d
    nop
    cpl

jr_02d_4a4d:
    cp a

jr_02d_4a4e:
    nop

jr_02d_4a4f:
    dec d
    nop
    jr z, jr_02d_4a53

jr_02d_4a53:
    ld d, b
    dec c
    db $10
    ldh a, [$ffe2]
    dec e
    nop
    db $e4
    ld [hl], l
    jr nc, jr_02d_4a4d

    stop
    nop
    rra
    nop
    ldh a, [c]
    rst RST_28
    nop
    add $00
    push bc
    ld b, e
    ld b, b
    ld a, [bc]
    nop
    ld a, [de]
    rst RST_38
    nop
    stop
    dec sp
    inc bc
    ld a, l
    ld bc, $bfe8
    nop
    sbc [hl]
    nop

jr_02d_4a7b:
    add hl, sp

jr_02d_4a7c:
    nop
    ld sp, $00aa
    ld bc, $00ef
    ld l, a
    ld l, a
    scf
    add d
    ld b, b
    rla
    rla
    rst RST_00
    rst RST_38
    rlca
    rst RST_20
    rlca
    cp e
    inc bc
    dec a
    ld bc, $ff00
    nop
    ld b, b
    ccf
    db $10
    ld h, [hl]
    jr nz, jr_02d_4af6

    ld a, [bc]
    rst RST_30
    ld d, b
    daa
    ld b, b
    adc [hl]
    ld sp, $0001
    dec b
    ld hl, sp+$7f
    ld hl, $41cc
    or h
    dec d
    and b
    call Call_000_00f2
    ld a, e
    ld bc, $ec00
    jr nc, jr_02d_4aee

    ld b, b
    ccf
    inc a
    rst RST_20
    jr nc, jr_02d_4a7c

    jr nz, jr_02d_4acf

    ld h, $10
    ld [hl+], a
    db $10
    db $fc
    jr nc, jr_02d_4a7b

    rst RST_30
    nop
    rst RST_38
    ld a, $22
    ld bc, $3184
    add h

jr_02d_4acf:
    db $10
    db $dd
    add h
    inc c
    ld b, b
    and c
    nop
    rst RST_38
    adc [hl]
    jr nc, @+$01

    nop
    rst RST_18
    ld hl, $218c
    add h
    ld hl, $411c
    ld [$fff0], sp
    adc b
    ld [hl], e
    ld [$0870], sp
    ld [hl], e
    ld [hl], b
    nop

jr_02d_4aee:
    or c
    inc sp
    ld c, $34
    ld l, $20
    rra
    dec b

jr_02d_4af6:
    nop
    ld d, l
    add hl, sp
    db $10
    db $e4
    ld a, [hl]
    dec c
    db $10
    xor $09
    db $ec
    dec bc
    add sp, $0e
    nop
    ld d, e
    dec a
    xor $00
    nop
    ld a, b
    rst RST_38
    di
    db $fc
    nop
    ld bc, $5512
    rst RST_28
    ld hl, sp+$07
    ldh a, [rIF]
    ld e, $57
    dec bc
    nop
    cpl
    and a
    ldh [$ff6e], a
    ldh [rIE], a
    nop
    ld de, $bb54
    dec e
    nop
    db $dd
    xor d
    xor [hl]
    rlca
    ld [bc], a
    add l
    jr nc, jr_02d_4b3d

    inc sp
    ld b, b
    dec a
    rra
    inc b
    db $e3
    di
    nop
    db $ed
    ld h, [hl]
    ld d, h
    jr nz, jr_02d_4b3f

    add hl, de

jr_02d_4b3d:
    nop
    halt

jr_02d_4b3f:
    nop
    rst RST_18
    ld [hl], $00
    ld [hl], b
    nop
    ld d, $1f
    inc b
    adc a
    nop
    ld [hl], l
    or a
    add [hl]
    ld d, d
    or a
    rra
    inc b
    inc e
    nop
    ld l, e
    sbc b
    ld d, d
    dec h
    inc e
    rra
    inc b
    push de
    ld bc, $a950
    ld d, c
    db $eb
    rra
    inc b
    sbc c
    ld d, c
    rst RST_38
    dec hl
    nop
    ld c, a
    nop
    ld l, e
    add sp, $0e
    ld [$0efb], a
    xor $c3
    ld d, h
    db $ec
    ld c, $e8
    ld c, $f0
    rst RST_38
    rrca
    adc a
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst RST_38
    ld [hl], a
    rst RST_38
    rst RST_08
    ld a, a
    rst RST_18
    ld l, e
    call nc, $d57b
    ld a, $ef
    pop bc
    sbc h
    db $e3
    pop bc
    ld d, b
    inc h
    cp a
    ld c, a
    sbc a
    ld sp, hl
    ld l, a
    ld c, $20
    ld d, b
    ld [hl+], a
    rst RST_30
    rst RST_38
    xor $f7
    ei
    rst RST_38
    db $f4
    ld a, [$fef5]
    nop
    ld b, $f8
    ldh a, [c]
    ei
    db $fc
    ld a, [$30a8]
    db $fc
    cp $ec
    ld e, [hl]
    db $f4
    rst RST_28
    ld c, [hl]
    dec bc
    ldh [$ff8f], a
    ld de, $af60
    ret nz

    xor a
    ld d, a
    ret nz

    rst RST_28
    add b
    ld a, [de]
    ld h, c
    or a
    pop de
    dec l
    inc bc
    ld h, l

jr_02d_4bc6:
    jr nc, jr_02d_4bc6

    inc sp

jr_02d_4bc9:
    ld h, b
    inc bc
    ld a, h
    rlca
    ld a, b
    ld c, $71
    inc c
    db $fd
    ld [hl], e
    dec [hl]
    dec b
    db $e3
    inc e
    pop af
    ld c, $39
    add $fe
    and d
    daa
    sbc $21
    adc h
    ld [hl], e
    adc h
    ld [hl], e
    db $fc
    db $fc
    ld a, $13
    ld a, [hl+]
    nop
    pop af
    ld c, $63
    sbc h
    ld h, a
    sbc b
    ei
    ld h, [hl]
    sbc c
    dec [hl]
    dec b
    ldh a, [rIF]
    ld hl, sp+$07
    jr @-$01

    rst RST_20
    dec [hl]
    rlca
    jr c, @-$37

    jr c, jr_02d_4bc9

    ld l, h
    sub e
    ei
    ld l, h
    sub e
    dec [hl]
    dec b
    rra
    ldh [$ff3f], a
    ret nz

    ld [hl], c
    rst RST_08
    adc [hl]
    ld h, b
    sbc a

Call_02d_4c12:
    add sp, -$33
    ld d, b
    ret nz

    ld d, b
    inc c
    ld [$0cb7], a
    xor $08
    xor d
    ld h, c
    ld a, a
    rst RST_38
    or b
    ld h, c
    ld h, l
    rst RST_20
    jp c, $ea55

    or b
    ld h, e
    and $54
    ld e, a
    dec [hl]

jr_02d_4c2e:
    rst RST_18
    ld a, $60
    jr z, jr_02d_4c2e

    push hl
    ld a, [de]
    ld e, e
    and h
    ld d, b
    inc hl
    ld [$3f61], sp
    db $fc
    cp $34
    adc $ac
    ld e, [hl]
    ldh [$ff63], a
    ld a, [de]
    ld h, e
    cp $f0
    ld h, a
    inc c
    ld [hl], e
    ld c, $71
    rlca
    ld a, b
    inc bc
    db $fd
    ld a, h
    ld [hl-], a
    ld h, e
    nop
    ld a, a
    ld bc, $39fe
    add $ef
    pop af
    ld c, $e3
    inc e
    add hl, hl
    inc bc
    ccf
    ret nz

    db $fc
    db $ed
    inc bc
    ld e, d
    ld h, c
    sbc $21
    xor d
    dec h
    ld h, [hl]
    sbc c
    ld h, a
    rst RST_18
    sbc b
    ld h, e
    sbc h
    pop af
    ld c, $72
    ld h, l
    nop
    rst RST_38
    rst RST_28
    inc e
    db $e3
    ld hl, sp+$07
    ld [hl], $75
    pop hl
    ld e, $fe
    ld a, a
    ld bc, $01fe
    add $39
    rst RST_28
    db $10
    add hl, hl
    inc bc
    rst RST_38
    db $fc
    inc bc
    ld h, a
    sbc b
    ld [hl], c
    adc [hl]
    ccf

jr_02d_4c95:
    ret nz

    or $59
    dec h
    rra
    ldh [$ff36], a
    dec b
    cp $00
    ldh [rSB], a
    adc a
    add b
    rrca
    ld bc, $387f
    rlca
    cp [hl]
    ld h, h
    add hl, hl
    inc b
    rrca
    rst RST_20
    nop
    ldh [$ffe0], a
    adc h

jr_02d_4cb2:
    ld a, c
    adc h
    ld sp, $001f
    rst RST_20
    ld c, h
    ld l, a
    halt
    sub b
    halt
    ld a, a
    rra
    add l
    db $10
    ccf
    jr nc, jr_02d_4d42

    rlca
    nop
    adc b
    sub $41
    adc [hl]
    ld [hl], l
    ldh a, [rDMA]
    rst RST_38
    add l
    db $10
    sub l

jr_02d_4cd1:
    ld [hl], d
    ld d, d
    ld b, c
    nop
    rst RST_30

jr_02d_4cd6:
    di
    ldh a, [$fffd]
    xor c
    jr nc, jr_02d_4d5a

    cp $1f
    rst RST_38
    ccf
    rrca
    ccf
    ld bc, $00cf
    halt
    dec e
    add b
    ld l, $eb
    rst RST_38
    nop
    nop
    ld bc, $057f
    ld b, $02
    nop
    ld [$05ff], a
    xor b
    ld de, $04a8
    nop
    inc l
    dec b
    rst RST_38
    jr nz, jr_02d_4c95

    jr nz, jr_02d_4d32

    ld bc, $00ba
    ld hl, $88ff
    and c
    ld a, [bc]
    ld [$8a16], sp
    jr nz, jr_02d_4d13

    rst RST_38
    ld sp, $3045

jr_02d_4d13:
    sub b
    jr nz, jr_02d_4cd6

    inc d
    ld sp, $04ff
    dec c
    jr nz, jr_02d_4cb2

    jr z, jr_02d_4cd1

    nop
    ld [hl+], a
    rst RST_38
    add h
    ld l, d
    add h
    ld d, d
    add h
    ld [bc], a
    nop
    ld d, b
    rst RST_38
    jr nz, jr_02d_4d86

    jr nz, jr_02d_4d82

    nop
    ld d, c
    nop

jr_02d_4d32:
    or [hl]
    rst RST_38
    ld [bc], a
    ld c, e
    add e
    ld d, c
    add hl, bc
    db $fc
    db $fc
    inc bc
    db $fc
    ld bc, $0202
    dec b
    ld d, d

jr_02d_4d42:
    ld bc, $1082
    jp nz, $ff10

    ld c, b
    inc d
    ld de, $650c
    ld a, [bc]
    jr nz, @+$07

    rst RST_38
    stop
    adc h
    ld bc, $8014
    ld d, c
    add b
    rst RST_38

jr_02d_4d5a:
    ld de, $4188
    inc b
    ld [hl-], a
    ld c, b
    ld [hl+], a
    ld c, b
    rst RST_38
    inc c
    nop
    db $e4
    dec bc
    and h
    ld [de], a
    sbc d
    inc b
    rst RST_38
    ld a, [de]
    ld b, h
    dec h
    nop
    xor c
    nop
    db $ed
    nop
    rst RST_38
    xor h
    nop
    ld b, c
    add hl, bc
    add hl, hl
    ld bc, $25c5
    rst RST_38
    dec h
    ld b, l
    and l
    dec b

jr_02d_4d82:
    dec h
    dec b
    inc bc
    ld [bc], a

jr_02d_4d86:
    rst RST_38
    ld [bc], a
    ld [bc], a
    ld a, b
    rlca
    ld [hl], b
    rrca
    ld b, b
    ccf
    cp $05
    ld b, $ff
    ld de, $1200
    nop
    ld b, c
    ld b, b
    ld a, a
    ld d, d
    ld b, b
    ld l, h
    ld h, b
    jr nz, jr_02d_4dc0

    nop
    cp h
    nop
    rst RST_38
    ld d, d
    ld d, d
    add h
    push bc
    add d
    db $e3
    sub d
    or d
    rst RST_30
    inc c
    inc c
    nop
    ld bc, $0000
    nop
    add hl, bc
    adc c
    rst RST_38
    add hl, de
    sbc c
    ld b, b
    ld b, b
    cp b
    cp c
    ld b, h
    ld b, l
    rst RST_38

jr_02d_4dc0:
    ld bc, $c001
    nop
    cp $00
    and b
    inc c
    rst RST_38
    nop
    inc e
    add b
    jr c, jr_02d_4dd6

    jr nc, jr_02d_4e0a

    ld b, d
    cp a
    ld [hl], a
    rlca
    daa
    rst RST_00

jr_02d_4dd6:
    rrca
    ld l, a
    dec b
    nop
    rlca
    rst RST_38
    ld a, b
    ld a, b
    ccf
    ccf
    rlca
    rlca
    nop
    ldh a, [$fffa]
    db $dd
    nop
    rst RST_38
    ld d, h
    dec b
    ret nz

    nop
    rlca
    ccf
    rra
    jp Jump_000_3fff


    rst RST_38
    ld b, $ca
    nop
    ld a, [de]
    inc de
    ld d, l
    ld b, $83
    add b
    db $e3
    ld hl, sp-$08
    ld e, $17
    nop
    inc bc
    and l
    nop
    rst RST_38
    ld a, a
    rst RST_38
    db $db
    ld [hl], b

jr_02d_4e0a:
    rst RST_38
    ld a, [$8f00]
    rst RST_38
    ld b, c
    stop
    ld b, b
    cp [hl]
    dec e
    inc d
    rrca
    ld [hl], b
    pop af
    ldh a, [$fffe]
    rst RST_38
    nop
    inc bc
    ld a, [$131a]
    rlca
    ld d, e
    ld [de], a
    ret nz

    ldh a, [rIE]
    rst RST_38
    rst RST_18
    rst RST_38
    ret nz

    rst RST_20
    ldh [$fffb], a
    ld hl, sp-$03
    db $fc
    ld a, [hl]
    ld a, a
    cp $0f
    rst RST_38
    inc bc
    rra
    ldh [$ffe3], a
    jr nc, jr_02d_4e53

    cp $06
    inc bc
    dec l
    ld [bc], a
    inc d
    ld [bc], a
    ld hl, $4014

jr_02d_4e46:
    rst RST_38
    jr z, jr_02d_4e9c

    jr z, jr_02d_4e9e

    nop
    and $00
    adc l
    rst RST_38
    ld b, b
    inc d

jr_02d_4e52:
    nop

jr_02d_4e53:
    dec h
    ld b, b
    ld b, d
    add b
    cp c
    rst RST_38
    jr c, jr_02d_4ebf

    ld h, h
    ld d, d
    ld d, d
    ld e, e
    ld e, c
    ld d, a
    rst RST_38
    ld d, a
    nop
    nop
    ld h, a
    db $10
    inc [hl]
    ld b, b
    ld d, c
    rst RST_38
    ld [hl+], a
    jr nz, jr_02d_4e46

    add d
    ld [hl], d
    dec de
    ldh [$ff34], a
    rst RST_38
    jp Jump_000_001c


    inc hl
    nop
    or b
    ld b, b
    inc a
    rst RST_38
    nop
    xor h
    ret nc

    add sp, -$30
    ret


    jr nc, jr_02d_4e52

    cp a
    jr nc, jr_02d_4ec4

    inc a

jr_02d_4e89:
    inc bc
    nop
    rra
    db $d3
    db $10
    rrca
    db $fc
    xor h
    ld bc, $0001
    sbc c
    ld b, b
    or a
    nop
    sub l
    nop
    rst RST_38
    ld a, [hl+]

jr_02d_4e9c:
    add b
    ld [de], a

jr_02d_4e9e:
    add b
    ld a, [bc]
    nop
    stop
    rst RST_38
    ld h, $00
    nop
    ld d, a
    ld [$0a53], sp
    ld hl, $84ff
    inc hl
    dec bc
    db $10
    ld b, [hl]
    ld bc, $0245
    rst RST_38
    add a
    nop
    ld d, c
    xor [hl]

jr_02d_4eba:
    ld [$00f7], sp
    rst RST_38
    rst RST_38

jr_02d_4ebf:
    inc b
    ei
    ld c, e
    or h
    cp [hl]

jr_02d_4ec4:
    ld b, c
    add hl, de
    db $e4
    rst RST_38
    inc h
    ret c

    add [hl]
    ld a, b
    ld b, c
    cp [hl]
    ld e, c
    and [hl]
    rst RST_38
    rst RST_00
    nop
    ldh [rP1], a
    jr jr_02d_4eba

    call c, $e7a1
    cp b
    dec de
    ld hl, sp-$5f
    dec b
    ld d, h
    inc b
    and h
    nop
    nop
    ld e, e
    inc bc
    jr c, jr_02d_4e89

    nop
    ldh a, [rIF]
    cp h
    ld bc, $c100
    db $10
    rst RST_38
    ld de, $19e0

jr_02d_4ef4:
    ldh [rDIV], a
    ld hl, sp+$0c
    ldh a, [$fffe]
    jp z, Jump_000_2603

    ret c

    and l
    ld e, d
    sub l
    ld l, d
    jp z, Jump_000_35f9

    add hl, sp
    ld hl, $01dc
    nop
    nop
    ld sp, hl
    or b
    dec e
    rst RST_38
    ldh [$fff1], a
    nop
    jr jr_02d_4ef4

    ldh a, [rSB]
    nop
    rla
    inc bc
    nop
    ld bc, $0001
    rlca
    inc l
    ld de, $05f8
    jp z, $f402

    ld a, a
    ld [hl+], a
    nop
    ld bc, $bcfc
    nop
    ld hl, sp+$03
    ld bc, $dffa
    nop
    ld bc, $01fc
    cp $5d
    ld [hl+], a
    nop
    nop
    rst RST_38
    rra
    ret nz

    ret nz

    rra
    add b
    nop
    ccf
    add b
    call c, $0106
    ld h, b
    jr nz, jr_02d_4f4a

    ei

jr_02d_4f4a:
    ld [bc], a
    or d
    dec h
    ld sp, hl
    ld bc, $fc89
    add hl, de
    ld de, $00fe
    ld a, [$131d]
    ld a, a
    ld hl, $00ff
    db $f4
    rlca
    rst RST_38
    add b
    rst RST_38
    ld c, a
    db $10
    sla d
    dec e
    nop
    add b
    rst RST_38
    rst RST_28
    rst RST_30
    add hl, bc
    rst RST_30
    cp $01
    cp l
    sbc $ff
    cp l
    sbc $3d
    sbc $e1
    ld e, $ff
    ret nz

    rst RST_38
    rst RST_18
    rst RST_28
    rst RST_18
    rst RST_28
    db $10
    rst RST_28
    rst RST_38
    nop
    ld a, e
    cp $ff
    jr @+$03

    ld b, $ff
    ei
    db $fd
    jr nz, jr_02d_4f8f

    ccf

jr_02d_4f8f:
    ld [bc], a
    db $fd
    rst RST_38
    nop
    rst RST_38
    ld a, a
    ld a, [hl+]
    ld [bc], a
    jr nc, jr_02d_4f9d

    pop af
    nop
    ld [hl], $00

jr_02d_4f9d:
    db $10
    ld bc, $073c
    db $10
    xor $fe
    nop
    ei
    cp $fe
    jr nc, @+$07

    rst RST_38
    rst RST_38
    rlca
    rlca
    ld hl, sp-$07
    nop
    scf
    ld bc, $0750
    ccf
    ccf
    ret nz

    ld bc, $7f2f
    or $cb
    scf
    cp h
    jp $d8bf


    ld [$ff03], sp
    db $fd
    ldh [c], a
    ld hl, sp+$07
    rst RST_18
    add sp, $1f
    rst RST_28
    rst RST_38
    sub a
    ld l, a
    ld hl, sp-$79
    rst RST_38
    ld hl, sp-$02
    rst RST_38
    rst RST_38
    ld a, [hl]
    rst RST_38
    sbc a
    ld a, a
    ldh [$ff1f], a
    rst RST_38
    ret nz

    rst RST_38
    ei
    db $fd
    ld a, e
    db $fd
    adc e
    ld a, l
    ldh a, [c]
    dec c
    ei
    rst RST_38
    ld [hl], b
    db $10
    ld bc, $ef17
    ld hl, sp+$07
    rst RST_38
    db $dd
    ld hl, sp+$30
    ld bc, $ff0f
    cp $b0
    ld [bc], a
    ld e, $fe
    rst RST_38
    ldh [rNR34], a
    cp $c0
    sbc $ee
    sbc $ee
    rst RST_38
    jr c, @+$01

jr_02d_5009:
    dec sp
    db $fd
    dec sp
    rst RST_30
    inc bc
    db $fd
    ld a, a
    jr c, jr_02d_5009

    ccf
    or $07
    cp $30
    ld d, $00
    ld a, a
    add b
    cp $b8
    cp $b8
    or $38
    pop de
    nop
    rst RST_38
    ld hl, sp-$22
    ld a, b
    sbc $ef
    db $f4
    cpl
    rst RST_30
    rst RST_38
    rst RST_08
    scf
    cp c
    rst RST_00
    cp [hl]
    pop de
    ccf
    call c, $e5ff
    ld e, $f9
    add $9e
    ld a, a
    ldh [$ff9f], a
    rst RST_38
    rst RST_18
    ldh [$ffdf], a
    xor $5f
    rst RST_28
    sbc a
    ld l, a
    rst RST_28
    di
    adc a
    db $fc
    db $e3
    ld a, [hl+]
    ld bc, $7fbf
    rst RST_00
    push af
    ccf
    adc b
    nop
    ldh a, [$ff96]
    ld bc, $0ff1
    sbc $e1
    db $db
    rst RST_18
    xor $10
    ld bc, $ef1f
    xor l
    nop
    db $e3
    sbc $5f
    xor $1e
    xor $f3
    rrca
    cp $00
    db $fc
    jr nc, jr_02d_5076

    rst RST_38
    rrca
    ld a, a
    nop

jr_02d_5076:
    rrca
    nop
    nop
    ldh a, [$ff80]
    ld a, a
    ld a, [hl]
    db $fc
    jp $f4ff


    rst RST_38
    rst RST_30
    ld c, h
    nop
    rst RST_38
    ldh [$fffe], a

jr_02d_5088:
    jr jr_02d_5088

    nop
    ld e, $00
    nop
    rst RST_38
    ldh [$ffc0], a
    dec a
    ld hl, sp-$79
    ldh a, [rIE]
    or $ff
    cp $34
    db $fd
    add b
    ei
    ret c

    ei
    ld d, b
    rst RST_38
    ld [hl], a
    inc d
    sub e
    dec b
    ldh [c], a
    adc h
    inc bc
    inc sp
    rst RST_38
    ld b, b
    dec c
    ldh a, [$ffe6]
    ld hl, sp-$12
    ldh a, [$ffe7]
    rst RST_38
    ld hl, sp+$0f
    ldh a, [$ff57]
    xor b
    sbc e
    ld a, l
    db $e3
    rst RST_38
    dec e
    cp $61
    rst RST_38
    ld a, b
    rst RST_38
    ld a, a
    rra
    cp a
    ld a, a
    ld h, a
    rra
    ld a, c
    ld h, a
    db $fc
    xor a
    nop
    db $fc
    rst RST_38
    db $fd
    add hl, sp
    ld a, [$f4c2]
    db $e4
    add sp, -$38
    rst RST_08
    pop de
    or e
    add e
    nop
    ld e, l
    nop
    sub e
    ld de, $7050
    rst RST_38
    ret nc

    ldh a, [rNR10]
    ldh a, [$ffd0]
    ldh a, [rP1]
    nop
    cp e
    add b
    ld a, a
    sub e
    ld de, $dfe7
    ld sp, hl
    ld c, a
    ld [bc], a
    nop
    ld d, a
    nop
    rra
    ldh [$ff93], a
    ld de, $b8c3
    db $10
    inc bc
    cp b
    db $10
    rst RST_38
    jp nz, $f339

    ld [$00c1], sp
    jp c, $ff1c

    ld e, a
    inc e

Jump_02d_510e:
    sub [hl]
    rra
    rst RST_08
    ld e, $53
    adc [hl]
    rst RST_38
    xor [hl]
    ld d, b
    cp $00
    db $fc
    nop
    ld [hl], b
    nop
    ld sp, hl
    inc bc
    sub b
    db $10
    jr z, jr_02d_5123

jr_02d_5123:
    nop
    ld hl, sp-$01
    ld a, h
    cp $ff
    sbc l
    db $fc
    ld [$74f8], a
    ld [hl], b
    ld l, b
    ld h, b
    rst RST_38
    ld d, b
    ld b, c
    inc hl
    inc bc
    ld b, e
    inc bc
    add e
    inc bc
    cp $f3
    ld de, $4340
    jp nz, $c2c3

    jp nz, $df02

    jp nz, $d0e4

    db $f4
    ldh a, [rSC]
    ld hl, $e0e0
    rst RST_18
    sbc a
    add b
    ld b, e
    inc a
    ld bc, $024f
    ld a, a
    cp a
    rst RST_38
    sbc a
    rst RST_28
    di
    db $fd
    inc [hl]
    ccf
    rst RST_00
    rrca
    rst RST_18
    rst RST_20
    rrca
    ret nc

    jp Jump_000_21d3


    dec h
    ld b, e
    db $d3
    rst RST_38
    add e
    db $d3
    jp $ca17


    rrca
    jp nz, $ffe3

    ldh [c], a
    dec bc
    ld [bc], a
    inc c
    ldh [$ff0e], a
    pop hl
    dec bc
    add a
    push hl
    dec bc
    push hl
    call c, $dc11
    ld de, $1193
    ld c, h
    nop
    nop
    cp $f3
    ld de, $0301
    nop
    ld bc, $0240
    ret nz

    rst RST_38
    inc bc
    jp nz, Jump_02d_4301

    nop
    sub b
    pop bc
    ret nc

    rst RST_38
    pop bc
    ret nc

    jp $c3d0


    ld d, b
    jp $bf10


    inc bc
    ld [de], a
    pop bc
    sub c

jr_02d_51ab:
    ld b, b
    jr nc, jr_02d_5224

    db $10
    db $fc
    rst RST_38
    rst RST_38
    db $fd
    cp $78
    rst RST_38
    ld sp, $02fe
    rst RST_38
    db $fd
    ld d, l
    xor d
    rst RST_30
    rlca
    ld [hl], a
    add a
    ei

Jump_02d_51c2:
    rst RST_38
    inc bc
    ld a, e
    add c
    ld hl, sp+$03
    ld a, e
    add e
    ei
    rst RST_30
    inc bc
    rst RST_30
    rlca
    jr nz, jr_02d_51f6

    ld d, e
    jp $4393


    rst RST_38
    db $d3
    jp $c3d1


    dec bc
    push hl
    add hl, bc
    rst RST_20
    cp $a2
    dec h
    jp hl


    rst RST_20
    add hl, bc
    rlca
    cp $00
    sbc [hl]
    sbc a
    nop
    sbc [hl]
    jr nz, jr_02d_51ab

    ld b, b
    ld c, h
    ld hl, $21b0
    sub e
    rst RST_38
    nop
    db $d3

jr_02d_51f6:
    nop
    ld d, e
    add b
    ld de, $52c0
    rst RST_38
    add b
    db $d3
    nop
    db $10
    jp RST_10


    pop de
    rst RST_38
    nop
    jp nc, $d000

    nop
    rrc h
    ld c, $ff
    ld c, a
    add l
    rrca
    ld c, e
    adc a
    ld bc, $ab0f
    rst RST_38
    ld d, h
    rst RST_38
    nop
    ld a, a
    nop
    sbc a
    nop
    ret nz

    cp $5d
    nop
    add b

jr_02d_5224:
    rst RST_38
    rst RST_38
    add b
    rst RST_30
    rlca
    rst RST_28
    ccf
    rrca

jr_02d_522c:
    rst RST_08
    rrca
    inc bc
    inc bc
    inc a
    sub c
    ld de, $0036
    cp $20
    inc hl
    jp nc, Jump_02d_51c2

    add b
    inc de
    ld b, b
    ld d, $f7
    nop
    inc c
    nop
    and d
    jr nz, jr_02d_522c

    dec bc
    db $e4
    ld a, [bc]
    rst RST_38
    rst RST_20
    ld a, [bc]
    rst RST_20
    dec c
    db $e3
    dec c
    db $e3
    rlca
    rra
    pop bc
    sbc [hl]
    ld b, b
    sbc $20
    cp b
    inc hl
    cp b
    inc hl
    call z, $f620
    ld sp, $c035
    ld de, $303b
    ret z

    rlca
    ld c, b
    add a
    rst RST_38
    dec c
    jp nz, $8047

    jp Boot


    nop
    ccf
    db $f4
    ldh a, [$ffe6]
    ld [hl], b
    rst RST_38
    add b
    ld d, b
    add hl, sp
    sub b
    ld de, $60fe
    add hl, sp
    nop
    nop
    jr jr_02d_5284

jr_02d_5284:
    ld sp, $6101
    rst RST_30
    ld bc, $0140
    ld c, c
    jr nc, @+$03

    ld [$0821], sp
    rst RST_38
    ld h, c
    push af
    db $fc
    jp hl


    db $fc
    ld d, c
    db $fc
    add c
    dec sp
    db $fc
    ld bc, $3487
    nop
    nop
    ccf
    sub b
    ld sp, $3695
    ld a, a
    dec de
    reti


    inc e
    call $c61f
    ld e, $2f
    jr nz, @+$41

    inc de
    adc $07
    sbc $07
    sbc $4c
    ld hl, $1093
    ld sp, hl
    rst RST_38
    inc h
    dec [hl]
    inc a
    ld sp, $4011
    ld de, $9200

jr_02d_52c6:
    rst RST_30
    ret nz

    db $e3
    cp $2a
    nop
    ccf
    rst RST_30
    jr nc, jr_02d_52c6

    rst RST_38
    ld de, $03f4
    db $f4
    inc bc
    ld [hl], h
    inc bc
    jr nc, @+$01

    rlca
    sub b
    rlca
    ld b, b
    add a
    add b
    ld b, b
    add b
    rst RST_20
    ld b, b
    ld a, a
    ret nz

    db $e4
    scf
    ld c, b
    inc hl
    ld a, $00
    ld e, $f7
    add b
    ld e, $e0
    or [hl]

jr_02d_52f2:
    ld hl, $e188
    ret z

    ld h, c
    rst RST_38
    add sp, $21
    add sp, $01
    add sp, $01
    jp hl


    ld bc, $e9cf
    nop
    jp hl


    nop
    adc b
    dec [hl]
    adc b
    ld sp, $fcc1
    di
    pop af
    ld a, h
    sub h
    add hl, sp
    sub h
    ld sp, $ce17
    dec hl
    add $ff
    rla
    ldh [c], a
    dec bc
    ldh a, [c]
    inc b
    ld hl, sp+$01
    cp $f8
    ld e, l
    ld bc, $3524
    ld c, d
    ld hl, $f00f
    ld bc, $fafe
    rst RST_38
    rra
    db $fd
    rrca
    cp $07
    rst RST_28
    inc bc
    rst RST_20
    rst RST_38
    ld de, $1067
    daa
    jr jr_02d_52f2

    ld [$ffb0], sp
    rst RST_00
    nop
    rst RST_30
    ld bc, $01f6
    or $81
    ld a, a
    rst RST_30
    push bc
    di
    db $e4
    ld [hl], e
    db $f4
    inc sp
    db $e4
    inc sp
    rst RST_38
    rst RST_38
    ld b, b
    rst RST_18
    nop
    rst RST_08
    add b
    adc a
    ldh [$ffe3], a
    add a
    ldh a, [rNR50]
    add hl, sp
    ld c, h
    ld hl, $410c
    ld l, c
    nop
    add hl, hl
    rst RST_38
    nop
    ret


    nop
    add hl, hl
    ret nz

    add hl, bc
    ldh [$ff09], a
    rst RST_38
    ldh [$fffd], a
    inc e
    db $fd
    inc c
    db $fd
    inc b
    db $fd
    ld sp, hl
    nop
    and [hl]
    ld b, l
    sub h
    ld sp, $3f20
    jr z, jr_02d_53c0

    ld [hl], $ff
    ccf
    dec a
    ccf
    ld a, $0f
    ccf
    rlca
    inc b
    ld a, l
    ldh a, [$ffc0]
    ld b, l
    inc d
    ldh a, [$ff1f]
    rst RST_38
    ld a, $60
    dec sp
    db $f4
    call c, $2411
    jr c, @+$03

    jr z, jr_02d_539e

jr_02d_539e:
    add b
    rra
    adc b
    rlca
    rst RST_38
    sub d
    ld bc, $108c
    add e
    inc e
    add b
    rra
    rst RST_30
    ret nz

    rst RST_38
    ld [hl], b
    jr z, jr_02d_53b1

jr_02d_53b1:
    ld bc, $01fe
    cp $ff
    add c
    ld a, [hl]
    ld hl, $cf1e
    nop
    inc sp
    ret nz

    db $e3
    inc c

jr_02d_53c0:
    ldh a, [$ff5d]
    inc bc
    or h
    ld sp, $2341
    rst RST_18
    nop
    ld l, a
    rst RST_38
    add b
    rst RST_20
    ldh a, [$ff03]
    nop
    add hl, bc
    ldh a, [rDIV]
    ld a, a
    ld hl, sp+$02
    db $fc
    ld bc, $f4fe
    inc de
    ld h, l
    ld b, b
    cp $33
    ld d, h
    halt
    ld bc, $0136
    ld b, a
    ldh a, [$ff67]
    rst RST_18
    ld hl, sp+$63
    call c, $cc73
    ld [hl], b
    ld b, l
    ld [$dfe0], sp
    adc c
    ldh [$ffc8], a
    pop hl
    add sp, $03
    ld b, [hl]
    ld a, l
    nop
    rst RST_38
    dec a
    nop
    call Call_000_2500
    ret nz

    ld de, $dbe0
    dec c
    ldh a, [$ff88]
    ld sp, HeaderManufacturerCode
    ld hl, $3c4b
    jp Jump_02d_7f0f


    sbc [hl]
    ld a, a
    adc a
    add h
    ld d, a
    jp c, $ed13

    ld b, c
    ld d, b
    jr nc, @-$4d

    ret nz

    ld e, h
    jr nc, @-$6d

    ld d, l
    ld b, c
    inc h
    ld [hl], b
    adc a
    db $fd
    ld b, b
    ld l, b
    dec sp
    rst RST_38
    ret c

    or [hl]
    ld d, d
    db $fc
    rst RST_38
    db $f4
    and b
    ld e, l
    ret nc

    ld c, l
    rst RST_38
    or [hl]
    ld bc, $01d6
    ld h, a
    add b
    dec hl
    ret z

    rst RST_38
    dec l
    call z, $ee06
    rlca
    rst RST_28
    dec b
    rst RST_28
    rst RST_38
    rst RST_20
    ld b, b
    rst RST_20
    ld c, b
    rst RST_20
    ld e, b
    rst RST_38
    ld b, b
    sbc $f6
    ld d, c
    ccf
    ld b, b
    ret nz

    add b
    add b
    ld c, e
    nop
    nop
    ld a, e
    jp hl


    ld bc, $4194
    adc c
    nop
    ld c, c
    add b
    sbc d
    ld b, d
    rst RST_38
    ld h, b
    pop bc
    db $fc
    jp hl


    ld a, h
    db $f4
    ccf
    rst RST_38
    rst RST_38
    rra
    ld a, b
    rrca
    dec sp
    inc b
    dec sp
    ld b, h
    dec sp
    rst RST_38
    call nz, Call_000_000f
    daa
    nop
    di
    ldh [$ff7c], a
    ld h, a
    ldh a, [$ff60]
    sbc a
    db $fd
    ld b, b
    dec sp

Call_02d_5488:
    ld h, b
    ld a, a
    add a
    add h
    ld d, d
    rst RST_30
    sbc a
    rst RST_38
    rra
    ld c, b
    ld h, d
    dec e
    rst RST_38
    ldh [rIE], a
    sbc l
    ret nc

    sbc h
    ld d, b
    ret nc

    rst RST_38
    ldh a, [$ff58]
    ld h, h
    ld b, c

jr_02d_54a1:
    inc hl
    ld bc, $663a
    ld h, [hl]
    db $f4
    ld [hl], b
    ld h, h
    cp $ff
    ld a, [$0219]
    ld e, a
    inc a
    sub a
    ld [bc], a
    rst RST_28
    add hl, bc
    rla
    jr nc, jr_02d_54bf

    ld de, $1230
    jr nc, jr_02d_54a1

    ei
    ld c, $e3

jr_02d_54bf:
    db $ec
    ld hl, $80ff
    rst RST_20
    add b
    add a
    rst RST_20
    jr jr_02d_54e8

    ldh [$ff74], a
    ld b, b
    sbc a
    ld e, [hl]
    ld [$0960], sp
    rst RST_38
    ld h, b
    ld [$1e61], sp
    ld a, a
    ld c, $7f
    ld c, $ff
    ld [hl], c
    ld a, a
    rrca
    ld a, a
    ld b, $bb
    ld b, h
    ld a, e
    rst RST_38
    inc b
    sbc e
    inc b
    ld c, e

jr_02d_54e8:
    add h
    inc hl

jr_02d_54ea:
    call nz, $fd07
    ld hl, sp-$24
    ld de, $70fc
    ld hl, sp+$71
    ld hl, sp+$63
    rst RST_38
    ld hl, sp+$37
    db $fd
    ld [hl-], a
    rst RST_38
    jr nc, @+$01

    jr c, jr_02d_54ea

    db $ec
    ld h, b
    dec e
    ld c, [hl]
    ld h, b
    ld e, $48
    ld h, b
    ccf
    rst RST_38
    inc a
    ld a, [bc]
    ld a, [$7862]
    nop
    ld [hl], h
    ld [hl], b
    nop
    ld [hl], h
    ld h, a
    ld h, a
    ld h, a
    ld h, e
    ld c, a
    dec b
    add a
    rst RST_28
    rst RST_38
    rst RST_08
    jr z, jr_02d_5590

    dec d
    nop
    jp nz, $ee5f

    ld b, b
    ld a, a
    rst RST_08
    add b
    ld a, a
    ret nz

    ccf
    sub d
    nop
    ld e, [hl]
    inc a
    ret nz

    ccf
    cp $5f
    dec sp
    rst RST_38
    nop
    inc c
    db $e3
    inc c
    db $e3
    inc d
    rst RST_38
    db $e3
    inc b
    di
    ld a, [bc]
    pop af
    dec e
    ldh [$fffd], a
    and b
    ld c, e
    jr nz, jr_02d_5599

    ccf
    ld h, d
    dec sp
    rst RST_00
    ld h, c
    rst RST_00
    ld h, b
    inc e
    and [hl]
    ld [hl], b
    ld a, $01
    ld a, a
    and e

jr_02d_5557:
    db $10
    ld h, b
    dec a
    db $ec
    ld h, d
    dec sp

jr_02d_555d:
    ld h, d
    ld e, b
    ld h, b
    adc a
    jr nc, jr_02d_555d

    ld h, h
    rst RST_20
    inc a
    rst RST_38
    ld a, h
    ret c

    ld [hl], b
    ld a, [$f821]
    rst RST_38
    jr jr_02d_55be

    ldh [c], a
    ld [hl], h
    inc e
    rst RST_38
    inc e
    sub b
    db $10
    ld h, a
    ld h, c
    inc bc
    db $f4
    ld [hl], d
    inc bc
    rlca
    rst RST_38
    inc [hl]
    db $10
    dec e
    add b
    ld b, b
    db $eb
    rst RST_38
    rst RST_20
    nop
    ld [bc], a
    xor $06
    nop
    sbc $ff
    sbc $d7

jr_02d_5590:
    nop
    nop
    rst RST_38
    rrca
    ld bc, $1480
    ld [bc], a
    ret nz

jr_02d_5599:
    rst RST_38
    sbc a
    ldh [rP1], a
    nop
    nop
    ld a, a
    jr nz, jr_02d_55ad

    ld hl, $000c
    rst RST_38
    nop
    rrca
    ldh a, [rTAC]
    nop
    rlca
    nop

jr_02d_55ad:
    rrca
    cp $28
    dec bc
    ld a, [hl]
    nop
    ld a, h
    ld bc, $0378
    ld [hl], b
    rst RST_30
    ld b, $60
    inc c
    jr nz, jr_02d_55c2

jr_02d_55be:
    ld a, [hl]
    ld bc, $037c

jr_02d_55c2:
    rst RST_38
    ld a, b
    ld b, $30
    ld c, h
    ld b, b
    ld b, b
    jr @+$23

    rst RST_38
    db $10
    ld b, e
    jr nz, jr_02d_5557

    ld b, b
    adc a
    nop
    rra
    ei
    nop
    ccf
    ld a, e
    nop
    ld e, b
    nop
    jr nc, jr_02d_55dd

jr_02d_55dd:
    ld h, b
    rst RST_38
    nop
    pop bc
    inc b
    add c
    inc c
    ld bc, $310c
    rla
    nop
    ld c, l
    ld [hl], b
    ld e, $00
    ccf
    ld a, h
    ld bc, $0594
    add hl, sp
    rlca
    ld a, b
    ld e, $00
    xor d
    ld bc, $0210
    nop
    ccf
    ret nz

    rra
    ld a, c
    nop
    ld [hl], $7a
    nop
    add b
    rra
    ret nz

    dec bc
    inc b
    ld a, [hl]
    ret nc

    rrca
    sub $02
    rst RST_30
    ld a, h
    inc b
    ld a, l
    ld [$7e06], a
    nop
    nop
    cp $bd
    ld bc, $04aa
    ld [hl], b
    nop
    ld [hl], b
    inc b
    inc bc
    rra
    ld [hl], b
    ei
    ld b, h
    jr nc, jr_02d_563f

    ld de, $1064
    ld [hl], h
    nop
    sub h
    ld a, a
    nop
    ld h, h
    add b
    inc d
    ldh [rDIV], a
    ldh a, [$ff28]
    rra
    or $2e
    ld de, $9747
    ld b, b
    dec de
    rra

jr_02d_563f:
    rst RST_38
    sbc a
    ld a, a
    db $fd
    adc a
    ld d, e
    db $10
    rst RST_00
    ccf
    rst RST_00
    ccf
    db $e3
    rra
    rst RST_38
    db $e3
    rra
    pop af
    rrca
    pop af
    rrca
    ld hl, sp+$07
    rst RST_38
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    ld a, e
    cp $01
    ld b, b
    add hl, de
    ld b, e
    sub e
    ld b, b
    sbc h
    or c
    inc bc
    cp $80
    dec d
    rra
    nop
    add e
    jp $cc80


    nop
    rst RST_28
    rra
    ret nz

    rra
    ld b, b
    pop bc
    nop
    ld b, b
    inc bc
    ld e, h
    rst RST_38
    inc e
    ldh [$ffe0], a
    rra
    rra
    nop
    ret nz

    nop
    db $fd
    cp $87
    dec d
    ld b, e
    inc bc
    ld b, b
    db $10
    ret nc

    inc e
    ret nz

    ld c, $01
    xor d
    inc bc
    and b
    ld [de], a
    xor [hl]
    ld [bc], a
    xor d
    inc bc
    sub b
    db $10
    call c, $ff80
    rst RST_08
    sub b
    db $d3
    adc h
    call c, $d383
    sub b
    rst RST_38
    ret nc

    sub b
    ret nc

    ldh [$ffe0], a
    ld e, $1e
    nop
    db $fd
    ldh [$ffa6], a
    db $10
    ld a, [hl]
    add b
    adc [hl]
    ld [hl], b
    ld [hl], b
    ld c, $ef
    ld c, $91
    push de
    sub b

Call_02d_56c0:
    pop af
    ld de, $90d4
    rst RST_10
    rst RST_38
    sbc b
    reti


    add [hl]
    add $81
    reti


    add b
    add b
    rst RST_38
    ld [hl], b
    ldh a, [$ff0c]
    db $fc
    ld [bc], a
    cp $02
    ld a, $ff
    ld [bc], a
    adc $02
    ld [hl-], a
    ret nz

    call z, $de80
    rst RST_38
    add b
    rst RST_18
    nop
    rra
    add b
    rrca
    ldh a, [$ff03]
    db $fd
    db $fc
    rrca
    ld [bc], a
    jr nc, jr_02d_5721

    inc c
    call z, $f202
    ld a, e
    nop
    db $fc
    and $11
    nop
    ld e, $c0
    ld b, $81
    ld a, [de]
    or d
    db $10
    ld bc, $26f8
    ld [hl+], a
    ld b, l
    ld h, $40
    sub b
    ld d, b
    ld hl, $7744
    sub h
    ld b, [hl]
    sub [hl]
    ld e, b
    ld hl, $9343
    rrca
    ld b, [hl]
    nop
    rst RST_38
    rrca
    ld bc, $021e
    inc e
    inc b
    jr jr_02d_5727

    ccf
    db $10

jr_02d_5721:
    stop
    nop
    ld b, c
    sub c
    ld d, b

jr_02d_5727:
    inc hl
    ld [hl], d
    dec h
    rst RST_38
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    inc b
    or a
    rlca
    nop
    inc bc
    adc c
    jr nz, jr_02d_573b

    nop

jr_02d_573b:
    ld d, b
    inc hl
    ld b, l
    db $fd
    sub l
    ld a, b
    dec d
    jr nz, jr_02d_5764

    ld h, b
    ld h, b
    ldh a, [$ff90]
    rst RST_38
    ldh a, [rNR10]
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    ld l, a
    jr jr_02d_575c

    inc b
    ld a, a
    or b
    dec hl
    ccf
    add b
    ret nz

    dec hl

jr_02d_575c:
    or h
    ld sp, $c02d
    dec hl
    nop
    rst RST_08
    inc l

jr_02d_5764:
    nop
    nop
    or b
    add hl, hl
    dec b
    db $fc
    rst RST_10
    nop
    jp hl


jr_02d_576d:
    inc h
    nop
    add b
    cpl
    add b
    cpl
    nop
    ld [hl], a
    xor a
    nop
    cpl
    ld sp, hl
    inc h
    nop
    nop
    rst RST_28
    jr z, jr_02d_57b2

    ld a, [hl+]
    sub $01
    dec b
    push af
    add hl, bc
    cpl
    ld e, $30
    xor a
    or [hl]
    rla
    jr z, jr_02d_57c1

    jr nc, @+$49

    scf
    ld bc, $181c
    ld sp, $3970
    nop
    xor $80
    dec sp
    db $10
    dec e
    ld b, d
    ld [hl], b
    ld [hl], $00
    jp hl


    inc hl
    add b
    ld [hl], $f6
    nop
    and [hl]
    stop
    jr nz, jr_02d_57c8

    jr nc, jr_02d_576d

    ld [hl+], a
    xor a
    dec b
    stop

jr_02d_57b2:
    ld b, l
    dec h
    ld c, $f0
    ld b, h
    add hl, hl
    ld b, h
    daa
    dec e
    nop
    add b
    rst RST_10
    ld b, c
    rra
    ld b, e

jr_02d_57c1:
    ld bc, $4704
    add hl, bc
    ld [bc], a
    nop
    ld a, a

jr_02d_57c8:
    sbc a
    ld bc, $037f
    ld a, a
    dec b
    inc de
    nop
    db $10
    ld bc, $ff00
    ld a, a
    ldh a, [$fff0]
    rst RST_30
    ldh a, [$fff0]
    ldh a, [$fff6]
    ld [$0625], sp
    ld a, [bc]
    inc bc
    jr nc, @+$09

    nop
    add hl, de
    nop
    ld b, b
    add hl, bc
    inc e
    ld bc, $0112
    rst RST_00
    rlca
    ld a, a
    dec bc
    ld d, a
    ld [bc], a
    ld a, [bc]
    ld bc, $0302
    ld d, e
    rra
    rra
    ld b, c
    rra
    ld b, b
    ld e, $17
    ld e, c
    nop
    ld [hl], b
    inc bc
    inc e
    ld bc, $00f3
    nop
    ld h, $07
    adc b
    rrca
    or $f0
    ld b, $00
    ld a, a
    nop
    rrca
    ldh [rIF], a
    nop
    rrca
    ld h, b
    and l
    ld b, $af
    ld l, $fe
    ld e, $fe
    or b
    ld bc, $b70e
    inc b
    ld [bc], a
    ld hl, $c0f8
    dec bc
    and [hl]
    rlca
    and [hl]
    inc bc
    cp b
    dec b
    ld d, $e5
    inc b
    and [hl]
    rlca
    rst RST_38
    ld h, d
    rrca
    ld h, l
    rrca
    ld l, a
    rrca
    ld b, $fe
    rst RST_30
    ld a, [bc]
    cp $02
    inc bc
    ld [de], a
    add d
    cp $42
    cp $e7
    jp nz, Jump_02d_6ffe

    db $fd
    nop
    db $10
    dec d
    ld h, a
    rrca
    ld h, b
    cp a
    nop
    jp nz, $e2fe

    cp $e6
    inc hl
    db $10
    or $ed
    cp $29
    ld de, $0000
    ret nz

    inc c
    ld a, b
    ld bc, $ff59
    ld b, $47
    jr @+$60

    add b
    sbc b
    add c
    add b
    rst RST_38
    rlca
    add b
    rrca
    ld b, b
    rrca
    ld b, b
    ld a, a
    rst RST_38
    push af
    add b
    ld a, l
    nop
    nop
    ld b, b
    ld b, $f0
    or $00
    or $df
    nop
    ld b, $00
    ld b, $e0
    ld h, a
    inc d
    rrca
    ld b, b
    adc c
    rra
    ld [hl], c
    ld a, [de]
    ld b, c
    inc c
    nop
    ld l, b
    dec d
    ld l, b
    dec d
    ld [hl], d
    dec d
    ld e, $7f
    ld b, b
    dec d
    ld b, c
    ld [bc], a
    ld b, e
    inc b
    ld b, [hl]
    ld b, c
    dec b
    ld hl, sp+$56
    db $10
    ld d, c
    ld [de], a
    ld l, b
    dec d
    nop
    ld b, $f8
    cp $00
    cp $2d
    db $10
    rrca
    ld l, a
    nop
    ld l, a
    nop
    ld h, b
    nop
    cp e
    ld h, b
    rlca
    rst RST_10
    inc d
    cp $ff
    ld bc, $102d
    nop
    di
    nop
    ld hl, sp-$34
    db $10
    rl c
    add b
    sbc d
    ld h, b
    ldh [c], a
    ld a, a
    jr jr_02d_594e

    nop
    ld a, [de]
    add b
    ld [bc], a
    ldh [$ffc0], a
    dec c
    cp $32
    dec de
    ld [bc], a
    cp b
    add d
    ld b, b
    jp nz, Jump_02d_6220

    rst RST_38
    inc b
    ld b, [hl]
    ld [$114d], sp
    ld e, b
    db $10
    ld e, b
    rst RST_38
    rlca
    ld d, b
    rlca
    ld b, b
    inc bc
    ld c, h
    nop
    ld b, b
    ld a, a
    rst RST_38
    nop
    ld a, c
    add [hl]
    and a
    ld e, b
    nop
    jp hl


    ld [de], a
    rst RST_18
    jp nz, Jump_000_003c

    nop
    rst RST_38
    ld d, h
    ld de, $1e7e

jr_02d_590b:
    rst RST_38
    ld a, [hl]
    db $10
    ld a, a
    jr nc, @-$06

    jr nc, jr_02d_590b

    ld [hl+], a
    rst RST_38
    ld a, [$00ff]
    ldh [rP1], a
    ldh a, [rTAC]
    rst RST_20
    ld l, a
    rlca
    ld h, b
    rrca
    ld [hl], b
    ld d, h
    db $10
    jr nz, jr_02d_5946

    ld b, b
    ld [hl+], a
    ld [hl], a
    rst RST_38
    rst RST_38
    rst RST_38
    ccf
    ld hl, $0111
    ld b, b
    cpl

jr_02d_5932:
    jr nz, jr_02d_5932

    ld d, h
    db $10
    cp $f8
    cp $08
    cp $0c
    rra
    rst RST_38
    inc c
    rra
    inc b
    rra
    rlca
    ld hl, sp-$01
    nop

jr_02d_5946:
    rst RST_38
    ld hl, sp+$07
    nop
    nop
    ld h, e
    inc e
    ld a, a

jr_02d_594e:
    nop
    rst RST_38
    ld a, [hl]
    ld bc, $0000
    jr z, jr_02d_59b8

    sub b
    ld [hl-], a
    rst RST_38
    ld [$089a], sp
    ld a, [de]
    ldh [$ff0a], a
    ldh [rSC], a
    rst RST_38
    db $10
    ldh [c], a
    nop
    ld [bc], a
    inc e
    ld b, e
    rra
    nop
    rst RST_28
    ccf
    nop
    ld [hl], b
    rrca
    sbc a
    nop
    ldh a, [rIE]

jr_02d_5973:
    nop
    sbc a
    db $e3
    inc e
    cp $01
    db $fc
    ccf
    jr nz, jr_02d_59bd

    ld hl, $fff8
    inc bc
    pop af
    rlca
    pop af
    rlca
    ld h, b
    ldh a, [$ff61]
    rst RST_38
    pop af
    ld b, b
    ld [hl], b
    ld b, c
    ld [hl], b
    ret nz

    ldh [$ff81], a
    rst RST_38
    pop hl
    add b
    ldh [$ff88], a
    ret z

    ld bc, $1000
    rst RST_38
    stop
    nop
    inc h
    inc b
    nop
    nop
    inc b
    rst RST_28
    inc b
    jr nz, jr_02d_59c7

    ld [bc], a
    ld d, h
    db $10
    inc h
    inc h
    nop
    ld a, a
    nop
    add c
    add b
    ld bc, $2001
    jr nz, @+$30

    db $10
    rst RST_38

jr_02d_59b8:
    ld [bc], a
    ld b, $0f
    ld b, [hl]
    rrca

jr_02d_59bd:
    ld [bc], a
    rrca
    inc bc
    cp a
    rrca
    ld [bc], a
    ld b, $01
    nop
    adc a

jr_02d_59c7:
    ld d, h
    db $10
    ccf
    db $ed
    add b
    nop
    ld sp, $c01f

jr_02d_59d0:
    ld a, $21
    rst RST_18
    nop
    rrca
    rst RST_38
    jr nz, jr_02d_59b8

    ld a, [de]
    ld hl, sp+$00
    sbc h
    ld h, b
    ldh [c], a
    ld sp, hl
    inc e
    ld a, $21
    ld h, a
    ld hl, $f801
    nop
    ld hl, sp+$04
    rst RST_10
    di
    rlca
    ldh [$ffa1], a
    nop
    ret nz

    dec bc
    jr nc, jr_02d_5973

jr_02d_59f3:
    db $fc
    rst RST_38
    inc bc
    nop
    nop
    rst RST_00
    jr c, jr_02d_59f3

    rlca
    rst RST_38
    rst RST_38
    nop
    adc a
    ld [hl], b
    ld a, a
    add b
    nop
    nop
    pop af
    rst RST_28
    rlca
    ld bc, $e30f
    ld b, e
    jr nc, jr_02d_59d0

    rrca
    jp nz, Jump_000_1fff

    add $1f
    ld b, $1f
    nop
    ret nz

    nop
    rst RST_38
    ret nz

    ld [bc], a
    jp nz, $8000

    inc b
    add b
    ld bc, $81ff
    db $10
    sub b
    stop
    dec b
    dec b
    add b
    cp a
    add b
    ld b, b
    nop
    add b
    add b
    ld [bc], a
    ld e, l
    jr nz, jr_02d_5a3b

    or $de
    jr nz, @+$42

    ld b, b
    ld d, h

jr_02d_5a3b:
    ld de, $8888
    nop
    nop
    db $fd
    ld bc, $206d
    ld [$1008], sp
    inc de
    nop
    inc bc
    rst RST_38
    add b
    add e
    nop
    ld bc, $0100
    jr nz, jr_02d_5a74

    ld a, [hl]
    add [hl]
    jr nc, jr_02d_5a57

jr_02d_5a57:
    adc a
    ldh [$ff80], a
    ldh a, [$ffc7]
    sub e
    jr nc, @+$01

    ld b, e
    ldh a, [rSCX]
    ld hl, sp+$63
    ld hl, sp+$60
    ld hl, sp-$45
    rra
    ldh [$ffe6], a
    db $10
    rlca
    add a
    ld a, b
    ld h, a
    ld hl, $ff3e
    pop bc

jr_02d_5a74:
    nop
    nop
    add b
    rra
    ld de, $2d1f
    rst RST_38
    rst RST_08
    rst RST_20

jr_02d_5a7e:
    rlca
    rst RST_30
    rlca
    jp $3b33


    rst RST_18
    jp Jump_000_0101


    inc bc
    ld a, h
    ld [hl], $31
    ld a, a

jr_02d_5a8d:
    add b
    sbc [hl]
    and b
    ld sp, $f00f
    or $09
    call nz, Call_02d_6731
    ld hl, $fef0
    and a
    jr nz, @+$01

    nop
    ccf
    ret nz

    add b
    ld bc, $ad18
    ldh [$ff67], a

jr_02d_5aa7:
    ld hl, $e41b
    ld [hl], $21
    db $fc
    ld d, h
    ld de, $bf00
    ret nc

    db $10
    ret nz

    nop
    adc b
    ld [$336e], sp
    and b
    rst RST_38
    and b
    nop
    nop
    add l
    add c
    db $10
    db $10
    inc b
    add hl, de
    inc b
    ld [hl], b
    ld sp, $21d2
    ld [hl+], a

jr_02d_5aca:
    ld [hl+], a
    ld l, [hl]
    jr nc, jr_02d_5aa7

    jr nz, jr_02d_5b40

    inc sp
    ld [hl], c
    ld [$30f9], sp
    db $d3
    jr nz, @-$78

    jr nc, jr_02d_5b1a

    ld b, b
    inc bc
    add [hl]
    jr nc, jr_02d_5a7e

    ld sp, $31fc
    db $fc
    inc sp

jr_02d_5ae4:
    ret c

    jr nc, jr_02d_5b27

    ld hl, $7cff
    ld d, b
    jr nc, @+$1c

jr_02d_5aed:
    inc sp
    db $fc
    inc bc
    add e
    ld a, h
    nop
    rst RST_10
    jr nc, jr_02d_5aca

    ld b, h
    ld b, b
    ldh [c], a
    db $10
    cp $3f
    jr nz, jr_02d_5a8d

    ld e, d
    jr nz, jr_02d_5aed

    inc de
    add [hl]
    ld a, [de]
    inc sp
    ld sp, hl
    ld b, $e8
    ld sp, $4146
    ld h, a
    ld hl, $30ec

jr_02d_5b0f:
    ld bc, $fcfd
    add a
    jr nc, @-$06

    inc bc
    ld hl, sp+$03
    ldh a, [$ff03]

jr_02d_5b1a:
    db $dd
    ld hl, sp+$54
    db $10
    ld h, b
    ld a, b
    ld h, b
    sbc l
    jr nc, jr_02d_5ae4

    ldh a, [$ffce]
    adc d

jr_02d_5b27:
    ld b, c
    db $10

jr_02d_5b29:
    db $10
    ld [bc], a
    sbc $20
    jp nc, Jump_02d_4021

    ld b, b
    pop af
    inc b
    rst RST_10
    jr nz, @-$05

    jr nc, @+$56

    db $10
    ld b, c
    ld b, c
    nop
    nop
    rlca
    sub b
    db $10

jr_02d_5b40:
    ld bc, $208d
    sbc h
    ld b, c
    ld [hl], b
    ld sp, $419c
    ld h, $41
    add sp, $20
    ld b, c
    jr nz, jr_02d_5b91

    db $e4
    jr nz, @-$7d

    sbc [hl]
    ld b, c
    call c, Call_000_068f
    ld [hl], h
    ld c, l
    jr nc, @-$2c

    ld b, c
    inc bc
    push af
    jr nz, jr_02d_5b64

    rrca
    ld a, a
    rst RST_38

jr_02d_5b64:
    inc h

jr_02d_5b65:
    cp [hl]
    xor a
    jr nc, jr_02d_5b29

    rra
    ret nz

    rrca
    ret nz

jr_02d_5b6d:
    ld h, a
    ld hl, $f1c3
    inc a
    jr nc, jr_02d_5ba5

    add d
    ld hl, $2167
    rra
    ldh [$ffe1], a
    ld e, $cf
    nop
    nop
    sbc a
    ld h, b

jr_02d_5b81:
    ld a, [de]
    inc sp
    cp h
    ld hl, $07f1
    push af
    inc bc
    ld b, e
    ld [hl-], a
    add $4b
    jr nc, jr_02d_5b0f

    ldh [$ff80], a

jr_02d_5b91:
    ldh [$ff3b], a
    add h
    ldh [$ff50], a
    ld sp, $c101
    nop
    rst RST_20
    ld b, b
    adc [hl]
    jr nz, @-$46

    db $eb

jr_02d_5ba0:
    jr nz, @-$14

    ld hl, $419c

jr_02d_5ba5:
    stop
    jr nz, jr_02d_5bc8

    ld b, b
    add b
    ld [bc], a
    dec a
    jr nc, @+$44

    ld a, l
    jr nc, @-$0f

    ld [hl-], a
    db $ed
    jr nz, jr_02d_5ba0

    ld hl, $102e
    ld l, a
    jr nc, jr_02d_5b6d

    add c
    dec a
    jr nc, @+$26

    ld b, c
    jp nc, Jump_02d_4121

    ld b, c
    ld [$4121], a

jr_02d_5bc8:
    ld a, a
    ld b, a

jr_02d_5bca:
    ld bc, $0107
    rlca
    nop
    inc bc
    halt
    ld d, d
    ld d, [hl]
    add a
    jr nc, jr_02d_5b65

    ldh [$ff80], a
    ld d, c
    ret nz

    sub e
    ld [hl-], a
    ld h, e
    sbc e
    jr nc, jr_02d_5c1f

    rst RST_38
    nop
    rst RST_20
    jr jr_02d_5b81

    ld h, e
    ld hl, sp+$47
    sub $33
    db $fc
    xor d
    ld hl, $2167
    pop hl
    ld e, $c6
    rra
    adc h
    ccf
    ld e, e
    inc c
    ccf
    or d
    ld d, c

jr_02d_5bfa:
    jr @+$80

    cp d
    ld d, c
    ld [bc], a
    dec a
    jr nc, jr_02d_5c08

    cp b
    ld b, e
    ld hl, $4c21
    ld d, e

jr_02d_5c08:
    ld [de], a
    ld b, c
    ld e, h
    jr nz, jr_02d_5bfa

    jr nz, jr_02d_5c5b

    ld d, e
    nop
    inc h
    ld b, c
    ld d, b
    ld d, d
    ld c, h

jr_02d_5c16:
    ld d, e
    ld d, h
    db $10
    ld a, [hl-]
    ld d, d
    db $d3
    jr nz, jr_02d_5bca

    ld b, c

jr_02d_5c1f:
    db $eb
    ld d, l
    add $da
    ld d, l
    nop
    ld bc, $303d
    ld h, l
    jr nc, jr_02d_5c16

    ld d, l
    ld h, e
    ld hl, sp+$37
    ld sp, $30fc
    ld sp, $3040
    db $fc
    cp d
    ld d, e
    ld c, $50
    ld a, c
    ld c, $a2
    ld sp, $2167
    sbc a
    ld h, b
    ldh [$ff1f], a
    db $10
    add hl, de
    ld hl, sp+$10
    ld de, $3419
    ld d, c
    ld h, [hl]
    ld h, b
    nop
    ld h, a
    rlca
    ld h, h
    rst RST_00
    inc b
    ld h, h
    dec b
    ld h, [hl]
    ld h, h
    rst RST_10
    jr nz, jr_02d_5ca8

jr_02d_5c5b:
    ld b, b
    nop
    rst RST_18
    rst RST_38

jr_02d_5c5f:
    rst RST_18

jr_02d_5c60:
    ld e, c
    rst RST_10
    ret


    ld d, a
    ld c, a
    pop de
    inc bc
    db $fc
    reti


    ld sp, $2040
    ld a, a
    ld a, a
    ld b, c
    ld a, a
    ld h, c
    ld e, a
    rst RST_38
    ld hl, $3f5f
    ld b, c
    nop
    rlca
    ldh a, [$ffc7]
    db $e3
    ld [hl], b
    ld b, a
    sub h
    ld h, a
    ld h, h
    ld l, b
    ld h, a
    ld h, d
    nop
    db $10
    ld [$10ef], sp
    adc h
    db $10
    adc [hl]
    or l
    ld h, [hl]
    rlca
    ccf
    nop
    ccf
    ld b, b
    jr nz, jr_02d_5cd5

    jr nc, jr_02d_5cd7

jr_02d_5c97:
    jr c, jr_02d_5c60

    ld h, h
    sub h
    ld l, c
    db $fc
    sbc h
    ld h, d
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld b, $61
    add hl, bc
    ld h, b
    ld c, $7a

jr_02d_5ca8:
    or [hl]
    ld h, l
    ld c, $f7
    ld h, b
    add b
    add b
    ld h, b
    ld h, b
    ret z

    ld h, l
    ld a, [$65c8]
    ld l, [hl]
    db $fd
    nop
    ld d, e
    inc de
    ld c, h
    inc e
    ld b, e
    rst RST_28
    rrca
    ld b, b
    inc bc
    ld b, b
    dec d
    ld b, b
    jr jr_02d_5c5f

    add [hl]
    rst RST_38
    and $e1
    ld sp, hl
    ld hl, sp-$02
    ld a, $3f
    rst RST_08

jr_02d_5cd1:
    ccf
    rst RST_08
    di
    inc sp

jr_02d_5cd5:
    inc a
    inc c

jr_02d_5cd7:
    jr c, @+$73

    jr nc, jr_02d_5cd7

    ld h, c
    rst RST_38
    sbc b
    jr jr_02d_5d46

    add [hl]
    add hl, de
    pop hl
    nop
    cp $5c
    sub h

jr_02d_5ce7:
    ld l, c
    sub d
    ld h, c
    ld b, $40
    daa
    ld d, c
    ld [hl], d
    cpl
    ld d, a
    ld [hl], h
    cp $7e
    ld h, b
    inc bc
    and b
    nop
    xor h
    nop
    adc $01
    ld a, a
    adc $01
    rst RST_08
    jr nz, jr_02d_5cd1

    jr nz, jr_02d_5d43

    add hl, hl
    ld [hl], b
    rst RST_18
    inc sp
    di
    inc c
    inc a
    inc bc
    add hl, de
    ld [hl], b
    ld [hl], b
    nop

jr_02d_5d10:
    rst RST_28
    jr c, jr_02d_5c97

    nop
    add a
    add hl, de
    inc [hl]
    ccf
    nop
    rst RST_08
    rst RST_08
    ret nz

    inc sp
    jr nc, jr_02d_5d2b

    ld e, b
    ld [hl], l
    ld e, b
    ld [hl], l
    rst RST_08
    jr nz, @+$01

    rst RST_00
    jr nz, jr_02d_5d10

    db $10
    rst RST_20

jr_02d_5d2b:
    db $10
    di
    ld [$f3ff], sp
    ld [$00fb], sp
    ei
    nop
    add hl, sp
    add h
    ccf
    sbc e
    ld b, b
    jp $e320


    jr jr_02d_5ce7

    ld [hl], c
    xor b
    ld [hl], c
    sbc a

jr_02d_5d43:
    inc bc
    rrca
    ret nz

jr_02d_5d46:
    inc bc
    ldh a, [$ffed]
    jr nc, @+$53

    ld h, l
    ei
    xor e
    nop
    db $fd
    pop de
    ld [hl], b
    db $fc
    rst RST_20
    db $10
    ld sp, hl
    xor l
    ld [hl], b
    ld sp, hl
    push de
    inc b
    sbc $71
    call z, Call_000_1054
    inc a
    ccf
    jr nz, @-$7d

    ld a, [hl]
    ld hl, sp-$7f
    ld h, c
    ld a, [de]
    inc sp
    add $30
    nop
    rst RST_08
    nop
    ld l, a
    add b
    dec e
    add b
    add hl, hl
    rst RST_38
    ld sp, hl
    inc b
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    cp $01
    rst RST_28
    cp $01
    rst RST_38
    nop
    ld a, [bc]
    ld bc, $ff00
    add b
    rst RST_28
    ld a, a
    ret nz

    ccf
    ld b, b
    dec d
    nop
    jr nz, @-$5f

    and b
    rst RST_38
    rra
    add b
    rra
    daa
    ret nz

    inc sp
    ret nz

    inc de
    rst RST_38
    ldh [rNR13], a
    ldh [rNR24], a
    ldh [$ff09], a
    ldh a, [$ff09]
    rst RST_18
    ldh a, [$ff0c]
    ldh a, [$ff2f]
    ld b, b
    jr nc, @+$03

    ld c, $40
    rst RST_38
    ld d, $10
    inc d
    db $10
    ld c, c
    sbc b
    dec b
    call z, $ffff
    nop
    cp $00
    add b
    nop
    nop
    ld l, a
    rst RST_38
    ld c, a
    and b
    ld c, a
    and b
    rst RST_08
    jr nz, @-$0f

    nop
    rst RST_38
    db $10
    rrca
    jr jr_02d_5e14

    ld c, b
    add a
    add sp, $07
    rst RST_38
    db $e4
    inc bc
    db $f4
    inc bc
    di
    ld [$04f8], sp
    ei
    inc b
    ld hl, sp+$60
    dec b
    inc c
    ldh a, [$ffb8]
    ld b, b
    ldh a, [rIE]
    nop
    push bc
    inc c
    ldh [c], a
    ld b, $f2
    ld b, $39
    rst RST_38
    jp Jump_000_0301


    inc c
    pop af
    db $fc
    ld bc, $fffe
    nop
    rst RST_20
    db $10
    di
    ld [$08f3], sp
    ld [hl], e
    ld a, [hl]
    add l

jr_02d_5e01:
    nop
    or e
    adc b
    and a
    add b
    ld c, a
    ret nz

    inc b
    inc bc
    db $fc
    sub d
    ld [bc], a
    ld b, c
    nop
    db $fc
    ld [bc], a
    ld bc, $4504

jr_02d_5e14:
    jr c, jr_02d_5e01

    ld a, l
    nop
    and h
    inc bc
    ld a, h
    sbc l
    nop
    ld hl, sp+$07
    rst RST_18
    rst RST_38
    jr nz, @+$22

jr_02d_5e23:
    rst RST_18
    nop
    nop
    ld hl, sp+$07
    ccf
    rst RST_38
    ret nz

    rst RST_00
    jr c, @+$01

    nop
    cpl
    ld h, b
    cpl
    rst RST_38
    ld h, b
    sub a
    jr nc, jr_02d_5e4e

    jr nc, @+$0d

    ret c

    set 7, a
    jr jr_02d_5e23

    inc c

jr_02d_5e3f:
    ldh a, [c]

Call_02d_5e40:
    ld b, $fc
    ld bc, $fff9
    ld [bc], a
    ld sp, hl
    ld [bc], a
    di
    inc b
    rst RST_20
    ld [$9fe7], sp

jr_02d_5e4e:
    ld [$08c7], sp
    rst RST_08
    db $10
    inc b
    add hl, bc
    ld a, [bc]
    ld bc, $ff1f
    ldh [$ffe0], a
    rra
    nop
    nop
    ld a, a
    add b
    sub c
    db $fd
    ld l, [hl]
    ld a, [bc]
    inc bc
    sub d
    ld h, [hl]
    ld a, c
    add e
    nop
    ld bc, $9cfb
    ld h, c
    sbc d
    ld bc, $0ef1
    rrca
    ldh a, [$ff8f]
    ei
    db $10
    rra
    ld a, [de]
    nop
    cp a
    add b
    ld e, a
    ret nz

    ld e, a
    pop af
    ret nz

    ret nz

    ld bc, $07e6
    ld a, [bc]
    inc bc
    call $d100
    nop
    rst RST_38
    ld c, [hl]
    add b
    db $fd
    add c
    cp h
    pop bc
    cp h
    pop bc
    rst RST_38
    cp [hl]
    ret nz

    ld a, l
    add b
    or d
    ld bc, $814a
    rst RST_38
    or d
    pop bc
    cp [hl]
    pop bc
    cp l
    jp $8179


    rst RST_38
    ld [hl], h
    add [hl]
    or h
    ld b, $06
    sub [hl]
    ld bc, $ef88
    inc hl
    add h
    jr nz, jr_02d_5e3f

    ld d, [hl]
    dec d
    nop
    rst RST_18
    nop
    ld a, a
    rst RST_00
    nop
    pop bc
    nop
    pop bc
    inc b
    pop de
    ld l, b
    rra
    cp $7a
    rra
    inc b
    pop bc
    nop
    ld sp, hl
    nop
    pop af
    inc b
    db $fd
    pop hl
    ld a, h
    ld a, [de]
    ret


    nop
    rlc b
    db $db
    nop
    rst RST_38
    rst RST_10
    nop
    adc $00
    call z, $dd00
    nop
    ld hl, sp+$0f
    nop
    or b
    ld [de], a
    ld a, [bc]
    ld bc, $0fe0
    ldh [$ff08], a
    ldh [$ff7f], a
    ld [$08e3], sp
    db $e3
    dec bc
    db $e3
    dec bc
    pop bc
    ld [de], a
    rst RST_28
    ld [$00e3], sp
    rla
    xor b
    db $10
    rst RST_10
    ret nz

    rst RST_10
    call $d1c0
    ld [de], a
    nop
    rst RST_10
    jp z, $ca13

    inc de
    add hl, bc
    ldh [c], a
    cp $ce
    db $10
    rst RST_10
    ld [bc], a
    push de
    dec b
    ret nc

    ld b, $d1
    rst RST_38
    ld [bc], a
    pop de
    sub h
    ld b, e
    ld b, b
    rlca
    sub b
    ld b, a
    cp $c2
    db $10

jr_02d_5f22:
    ldh [$ff0a], a
    db $e4
    nop
    ldh [rDIV], a
    ei
    rst RST_38
    ld a, [de]
    pop hl
    inc l
    jp $eb14


    rst RST_10
    ld bc, $17ff
    inc bc
    rst RST_30
    inc bc
    rlca
    rlca
    ld sp, hl
    ld bc, $f4ff
    ld b, $f0
    ld b, $f8
    nop
    ld c, d
    or c
    rst RST_08
    and b
    nop
    ld c, a
    and b
    ret nz

    inc de
    call z, $ff12
    nop
    rlca
    rlca
    ldh a, [rTAC]
    ret nc

    inc de
    call c, $cc1d
    ld [de], a
    add hl, sp
    inc h
    jr c, jr_02d_5f85

    ld e, a
    ldh [$ff08], a
    rst RST_20
    nop
    ldh [$ffe7], a
    inc b
    nop
    xor b
    db $10
    rst RST_38
    rla
    nop
    rst RST_30
    nop
    rlca
    ld b, $ff
    ccf
    dec sp
    rst RST_38
    rst RST_38
    ld c, $00
    ccf
    nop
    ld a, a
    or h
    inc d
    or c
    inc de
    dec e
    nop
    add b
    rst RST_38
    ld l, d
    sbc a
    and l
    ld e, a

jr_02d_5f85:
    ld [$611b], a
    sub l
    rst RST_38
    and h
    ld d, d
    ld h, b
    sbc e
    ld [$a519], a
    ld e, h
    db $fd
    rst RST_38
    stop
    sbc a
    sbc a
    rrca
    ld l, a
    ld h, $96
    ccf
    db $10
    ld c, c
    jr jr_02d_5f22

    nop
    db $fd
    db $10
    ld bc, $0320
    cp l
    ld a, a
    ld a, [hl+]
    ld [bc], a
    and a
    rst RST_38
    sub a
    rst RST_38
    jr nc, jr_02d_5fb6

    and [hl]
    ld a, a
    cp $94
    db $fd

jr_02d_5fb6:
    and b
    rst RST_38
    ld d, b
    rst RST_38
    ld b, b
    ld bc, $80ff
    db $dd
    nop
    xor d
    add d
    and h
    inc b
    add hl, hl
    ld a, a
    ld l, b
    ld a, a
    ld [hl], b
    ld a, a
    ld a, d
    ld a, a
    ld [hl], h
    ld d, e
    nop
    db $fd
    ld a, l
    ld e, c
    nop
    ld a, [hl]
    ld a, a
    dec b
    rst RST_38
    dec bc
    rst RST_38
    ld e, a
    rla
    rst RST_38
    cpl
    rst RST_38
    rra
    ld h, l
    nop
    rrca
    ld sp, $ff00
    db $10
    rst RST_38
    xor b
    rst RST_38
    db $f4
    rst RST_38
    cp $ff
    db $fd
    db $fd
    ld [hl], l
    nop
    and $c7
    sub [hl]
    inc bc

jr_02d_5ff5:
    jr nz, jr_02d_5ff5

    ld a, a
    ld d, b
    cp $68
    cp $74
    cp $78
    add l
    nop
    rst RST_38

Jump_02d_6002:
    ld a, d
    cp $7c
    cp $6a
    sbc [hl]
    and h
    ld e, [hl]
    rst RST_38
    jp hl


    inc e
    ld h, d
    sbc b
    and b
    ld d, c
    ld h, l
    sbc a
    rst RST_38
    ld [$a51f], a
    ld e, a
    ld [hl], b
    adc a
    ld b, $81
    cp a
    ld a, c
    ld a, b
    db $fc
    db $fc
    cp $fe
    jr nz, jr_02d_6028

    ccf
    rst RST_38
    cp a

jr_02d_6028:
    ccf
    cp a
    rra
    rst RST_18
    adc a
    ld l, a
    ld c, a
    rst RST_38
    rrca
    jr nz, jr_02d_6033

jr_02d_6033:
    ld a, [hl-]
    nop
    jr nz, @+$07

    and h
    rst RST_38

jr_02d_6039:
    db $fd
    sub b
    jp c, $da80

    add c
    jp nz, $ff83

    adc h
    ld b, [hl]
    jr z, jr_02d_606b

    ld de, $d323
    jr @+$01

    inc hl
    jr nz, jr_02d_6095

    ld b, b
    add a
    sub b
    inc sp
    jr nz, jr_02d_6039

    ld a, e
    ld b, d
    inc bc
    ld a, a
    ld e, l
    nop
    ld a, [hl+]
    ld bc, $7c7e
    ld a, c
    rst RST_38
    ld [hl], b
    ld h, a
    ld h, b
    ld l, h
    ld h, b
    nop
    cp $00
    rst RST_38
    ld sp, hl
    nop

jr_02d_606b:
    rst RST_20
    nop
    sbc h
    ld bc, $0871
    rst RST_38
    ret z

    inc a
    inc l
    ld hl, sp-$10
    nop
    ld a, e
    nop
    rst RST_38
    sla b
    dec l
    ldh a, [$fff5]
    ldh a, [$fff6]
    ld hl, sp-$61
    ld a, [$3b38]
    ld a, h
    ld a, l
    adc h
    ld bc, $1510
    ld a, [hl]
    rst RST_30
    ld a, [hl]

Jump_02d_6090:
    ld a, h
    ld a, [hl]
    nop
    ld [bc], a
    rra

jr_02d_6095:
    ld h, l
    sbc a
    xor d
    db $fd
    ld e, a
    sbc d
    inc bc
    cp $fe
    db $fc
    db $fd
    db $fc
    db $fd
    rst RST_38
    ld sp, hl
    ld a, [$f4f2]
    push hl
    add sp, -$1e
    jp hl


    rst RST_38
    ldh [c], a
    jp hl


    inc d
    and e
    sbc c

Call_02d_60b1:
jr_02d_60b1:
    daa
    ld d, e
    cpl
    rst RST_38
    ld h, b
    rra
    add c
    ld a, [hl]
    ld b, l
    cp d
    adc h
    ld [hl], e
    rst RST_38
    adc l
    ld [hl], e
    sub e
    db $e3
    rst RST_10
    rst RST_20
    rst RST_20
    rst RST_30
    rst RST_38
    inc sp
    ei
    inc sp
    dec de
    ld c, c
    ld e, l
    ret nz

    ld a, $f3
    dec sp
    rst RST_00
    ld b, b
    dec b
    ld b, b
    inc b
    ld a, a
    ld [hl], l
    ld h, c
    halt
    rst RST_38
    ld [hl], b
    ld a, [hl-]
    ld [hl], b
    dec sp
    ld a, b
    dec a
    ld a, b
    dec a
    rst RST_38
    ld a, h
    ld a, $7c
    ld a, $7e
    and $e6

jr_02d_60eb:
    rst RST_18
    rst RST_38
    ret c

    cp $fc
    halt
    ld [hl], d
    ld [hl], e
    ld [hl], c
    ld sp, $b0ff
    jr c, jr_02d_60b1

    db $10
    db $d3
    ld c, h
    ld c, l
    ld b, $ff
    ld b, $00
    nop
    ld b, b
    ld b, e
    ld b, b
    ld c, [hl]
    nop
    db $fd
    add hl, sp
    db $f4
    nop
    sbc a
    ld a, $be
    inc a
    cp [hl]
    ld e, [hl]
    ld a, a
    sbc [hl]
    ld e, $9e
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    cp $aa
    ld de, $e1f3
    ld [$17b0], a
    inc a
    ld de, $e315
    ld d, $e1
    rst RST_38
    inc sp
    ret nz

    jr nz, jr_02d_60eb

    ld h, b
    add b
    ld e, b
    add b
    rst RST_38
    call c, $9000
    ld bc, $e39f
    ld b, $fe
    rst RST_38
    adc $3e
    ld a, [hl]
    rlca
    ld [$1007], sp
    ld [hl], b
    rst RST_38
    daa
    ld a, a
    rla
    ld a, a
    jr nz, @+$81

    db $10
    ccf
    db $eb
    jr nz, @+$41

    ldh [c], a
    db $10
    ld a, a
    ld b, d
    inc bc
    ccf
    ld a, [hl]
    rra
    rst RST_10
    ld a, a
    ccf
    ld a, a
    ldh a, [c]
    inc de
    cpl
    push af
    db $10
    ld c, [hl]
    nop
    rst RST_38
    ld a, c
    nop
    and a
    inc bc
    rra
    adc a
    ld a, a
    rst RST_38
    ld h, [hl]
    ld [$3f24], sp
    rst RST_38
    ld [hl], l
    nop
    ld [de], a
    dec h
    db $fd
    rst RST_38
    xor d
    inc de
    cp $20
    daa
    pop af
    db $f4
    ldh a, [$fff4]
    ld hl, sp-$05
    db $fc
    db $fd
    db $fc
    jr nz, jr_02d_6189

    add b
    ld bc, $01c0
    nop

jr_02d_6189:
    ld [bc], a
    ccf
    ld bc, $0385
    ld a, e
    add a
    add a
    db $10
    ld bc, $11dc
    db $f4
    jr nc, jr_02d_61a1

    db $fc
    ld de, $dd0f
    db $10
    ld a, [bc]
    ld a, a
    dec b
    ld a, a

jr_02d_61a1:
    ld c, a
    ld [bc], a
    ld a, a
    nop
    ld a, a
    ld [$0926], sp
    ld [hl+], a
    nop
    ld [hl], l
    ld [bc], a
    ld [hl], a
    ld a, [$fcff]

jr_02d_61b1:
    add e
    jr nz, jr_02d_61b1

    rst RST_38
    ld [$207d], a
    sub b
    adc a
    dec l
    jr nc, jr_02d_61c6

    jr nc, jr_02d_61c0

    ld h, b

jr_02d_61c0:
    inc e
    rst RST_38
    ld l, [hl]
    jr nz, @-$3d

    ld a, [hl+]

jr_02d_61c6:
    ld bc, $fef5
    ld [hl], l
    ld [bc], a
    ei
    sub $22
    db $fd
    rst RST_38
    db $fd
    ret nz

    rst RST_30
    ccf
    ret nz

    cp a
    ldh [c], a
    ld hl, $dfe0
    ldh [$ffdf], a
    cpl
    ldh a, [$ffef]
    ld hl, sp-$09
    ld a, [hl+]
    inc bc
    ccf
    di
    ld h, $77
    ld [bc], a
    db $fc
    pop de
    ld hl, $0110
    db $fc
    rst RST_38
    cp $f8
    rst RST_30
    ld hl, sp-$01
    ld [hl], a
    db $fc
    dec sp
    rst RST_38
    inc a
    rst RST_38
    ld a, $ff
    cp a
    ld a, [hl]
    rst RST_38
    ldh a, [rIE]
    ld h, b
    ld e, a
    rst RST_30
    ld d, $2f
    or $dd
    db $10
    dec bc
    ld a, a
    adc a
    dec l
    ld a, [hl]
    add c
    cp $87
    inc hl
    cp $cf
    inc bc
    inc sp
    pop de
    ld hl, $2920
    ld a, $ab
    db $10
    jr nz, @+$09

    cp a

Jump_02d_6220:
    db $fc
    rst RST_38
    ldh [$fffc], a
    ld bc, $64e0
    dec [hl]
    ld hl, sp-$41
    db $fc
    inc bc
    ld hl, sp+$00
    nop
    nop
    inc sp
    nop
    adc b
    rst RST_38
    rst RST_30
    ldh a, [$ff80]
    rrca
    add b
    ld a, e
    rlca
    sbc a
    rst RST_38
    ld a, a
    rrca
    rra
    ld c, $ef
    and b
    rst RST_38
    ret nc

    rst RST_38
    ld a, a
    ld h, b
    ccf
    or b
    rra
    ret nc

    adc a
    ret nc

    db $fd
    rrca
    sbc d
    ld sp, $986f
    ld hl, sp+$00
    add a
    nop
    ei
    ld a, a
    nop
    ld a, l
    jr nz, jr_02d_6265

    rst RST_38
    ccf
    rst RST_38
    cp $ff
    jr jr_02d_626c

jr_02d_6265:
    ld c, b
    daa
    inc d
    di
    inc [hl]
    di
    rst RST_38

jr_02d_626c:
    and $f1
    and $f1
    add a
    ldh a, [rTAC]
    ldh a, [$fff7]
    inc c
    rst RST_38
    ld l, a
    jr nz, jr_02d_627c

    inc bc
    rst RST_38

jr_02d_627c:
    inc e
    db $e3
    rst RST_38
    rlca
    ld hl, sp+$21
    ldh [c], a
    inc b
    rst RST_30
    nop
    pop af
    rst RST_38
    nop
    ld hl, sp+$02
    ld a, [$fa02]
    inc bc
    ld a, [$03bf]
    ld sp, hl
    ld [bc], a
    ld a, [$07e8]
    ldh [$ff33], a
    ld l, b
    ld e, [hl]
    rst RST_20
    jr nc, jr_02d_6312

jr_02d_629e:
    inc bc
    ld [hl], h
    inc bc
    ld e, h
    ld sp, $8d3e
    nop
    rst RST_18
    ld a, $fe
    ld e, h

jr_02d_62aa:
    cp $3a
    ld sp, hl

jr_02d_62ad:
    jr nc, jr_02d_62ad

    rst RST_38
    rst RST_30
    ld hl, sp-$01
    ret nz

    ld a, l
    jr nz, jr_02d_62b7

jr_02d_62b7:
    rst RST_38
    db $10
    rst RST_28
    rst RST_18
    jr nc, @-$2f

    jr nc, jr_02d_629e

    rlca
    cp l
    jr nc, jr_02d_630a

    or b
    rst RST_38

jr_02d_62c5:
    push hl
    ld [hl-], a
    ldh [$ff3b], a
    ldh [$ff7b], a
    pop hl
    ei
    rst RST_38
    ld b, c
    ei
    nop
    pop hl
    nop
    call c, $bc18
    rst RST_38
    inc a
    ld c, $4e
    rla
    ld c, $2b
    rrca
    db $e4
    rst RST_38
    rlca
    add sp, -$40
    jr c, jr_02d_6326

    or b
    rlca
    ld [hl], b
    rst RST_38
    ld b, $31
    inc b
    inc sp
    ld b, $b1
    rlca
    sub b
    rst RST_38

jr_02d_62f2:
    rlca
    jr nc, jr_02d_62c5

    jr nz, jr_02d_62aa

jr_02d_62f7:
    ld b, a

jr_02d_62f8:
    dec [hl]
    jp Jump_000_35ff


    jp $8374


    db $f4
    inc bc
    rst RST_30
    nop
    ld sp, hl
    add b
    ld a, h
    ld sp, $2215
    ld [hl], b

jr_02d_630a:
    rst RST_38
    rlca
    ld hl, sp+$0f
    rst RST_38
    ldh a, [$ff78]
    nop

jr_02d_6312:
    rra
    rra
    rst RST_08
    xor a
    xor a
    ld a, a
    ld c, a
    rst RST_28
    rrca
    rst RST_08
    cpl
    ld e, a
    rra
    ld l, d
    ld b, c
    ld e, h
    ld b, [hl]
    scf
    inc bc
    inc sp

jr_02d_6326:
    jr nc, jr_02d_62f7

    ld bc, $207d
    ld [bc], a
    add l
    ld b, b
    rst RST_38
    inc bc
    rst RST_38
    add e
    ld a, [hl]
    di
    rrca
    nop
    set 7, a
    nop
    xor e
    jr nz, jr_02d_6387

    ld h, b
    inc de
    ld [hl], b
    inc hl
    rst RST_38
    ld [hl], b
    ld d, e
    jr nc, jr_02d_62f8

    jr nz, jr_02d_62f2

    or d
    db $f4
    rst RST_38
    ret c

    cp c
    ld a, a
    adc l
    cp $01
    cp $02
    rst RST_38
    ld sp, hl
    nop
    ld h, [hl]
    add c
    adc b
    rlca
    inc b
    ldh [rIE], a
    nop
    pop bc
    add a
    add b
    sbc b
    add a
    ld h, b
    rra
    ld sp, hl
    add a
    db $10
    jr nz, jr_02d_63e5

    jr nz, @+$81

    ld bc, $f8ff
    rlca
    rst RST_38
    rlca
    ld hl, sp-$80
    cp $f1
    db $fc
    ldh a, [c]
    ld sp, hl
    rst RST_38
    push hl
    di
    nop
    add [hl]
    ldh [$ffef], a
    inc b
    sbc a
    db $fc
    ldh a, [c]

jr_02d_6383:
    db $10
    add hl, bc
    jr nz, jr_02d_6383

jr_02d_6387:
    rst RST_38
    ldh a, [$fffe]
    ccf
    ccf
    rst RST_38
    ccf
    cp a
    rrca

jr_02d_6390:
    rst RST_18
    rlca
    rst RST_28
    inc bc
    rst RST_28
    cp a
    dec b
    rst RST_30
    ld [bc], a
    rst RST_30
    db $10
    jr c, jr_02d_63e3

    jr c, @+$01

    rst RST_38
    xor [hl]
    rst RST_38
    nop
    nop
    ld a, [hl-]
    cp $1c
    cp $ff
    ld a, [hl+]
    cp $14
    cp $0a
    cp $10
    cp $a8
    ldh a, [rP1]
    and a
    jr nc, @+$7e

    ld sp, $ac03
    jr nc, jr_02d_63cb

    dec b
    ld b, d
    ret


    rst RST_08
    ld [bc], a
    nop
    nop
    rra
    jr nz, jr_02d_63cc

    and a
    jr nc, jr_02d_6408

    nop
    rst RST_38

jr_02d_63cb:
    nop

jr_02d_63cc:
    rst RST_30
    ei
    xor $f5
    rst RST_18
    db $eb
    sbc $fe
    add hl, sp
    ld d, b
    ld e, $e9
    rra
    rst RST_38
    inc c
    rst RST_38
    ld [hl], b
    rst RST_28
    rrca
    cp a
    or b
    ld a, $b1

jr_02d_63e3:
    nop
    inc a

jr_02d_63e5:
    cp a
    jr c, @+$01

    cp a
    set 4, a
    inc de
    rst RST_08
    daa
    sbc a
    and a
    rst RST_38
    rra
    ld h, $9f
    ld d, d
    adc a
    ld e, d
    add a
    jr z, @+$01

    add a
    ld bc, $01fc
    db $fc
    nop
    sbc h
    nop
    rst RST_38
    rrca
    ld b, b
    rrca
    ld h, b
    rrca

jr_02d_6408:
    jr nc, jr_02d_6390

    ld bc, $84ff
    sbc e
    cp b
    adc b
    sbc h
    dec c
    ld e, h
    dec e
    rst RST_38
    cp h

jr_02d_6416:
    db $fc
    cp $3c
    cp $1e
    ccf
    adc [hl]
    db $fd
    sbc a
    db $10
    ld d, c
    rst RST_38
    rra
    rra
    ldh [$ffe0], a
    rra
    db $fc
    db $10
    ld d, d
    ld a, h
    jr nz, jr_02d_642d

jr_02d_642d:
    nop
    call c, $ff23
    ld bc, $7fff
    add b
    add b
    ld a, a
    nop
    nop
    scf
    ret z

    cp $05
    ld b, c
    ld a, a
    add b
    ld bc, $00fe
    rst RST_38
    add b
    ld e, $a9
    ld d, b
    ld a, a
    add b
    ret nz

    ccf
    dec b
    ld b, d
    ld c, $51
    ld h, a
    nop
    cp a
    ret nz

    ccf
    inc a
    set 6, [hl]
    dec b
    add l
    ld b, c
    rrca
    rst RST_38
    ldh a, [c]
    ld [hl], a
    ld a, [$faff]
    ld a, a
    add e
    or c
    rst RST_38
    ld a, $a2
    dec e
    and h
    ld a, [de]
    cp c
    inc b
    ld bc, $98ff
    and l
    nop
    adc l
    add b
    jr z, jr_02d_647b

    add h
    rst RST_38
    ld b, e
    ld b, $81

jr_02d_647b:
    ld [hl+], a
    ld bc, $00a3
    sub l
    rst RST_38
    jr nz, @+$17

    and b
    inc b
    or b
    add h
    or b
    inc b
    cp a
    call z, $fd04
    ld c, $fe
    ld c, $aa
    jr nc, jr_02d_6416

    rst RST_38
    ld a, a
    ret nz

    ccf
    ldh [$ff1f], a
    adc [hl]
    sbc a
    inc b
    rst RST_38
    rst RST_08
    ld bc, $029e
    ld a, h
    ld b, $f8
    adc h
    ld c, a
    pop af
    dec de
    ldh [rPCM34], a
    sbc d
    ld d, b
    ldh [rP1], a
    ld a, c
    ld a, h
    ld sp, $3f73
    ret nz

    jr jr_02d_64e6

    and a
    ld sp, $0380
    db $fc
    ld [hl+], a
    ld d, b
    ld e, [hl]
    add a
    ld d, c
    inc c
    rst RST_38
    inc bc
    add b
    ld a, h

jr_02d_64c5:
    jr nz, jr_02d_64c5

    dec d
    ld h, b
    di
    rst RST_38
    ld hl, sp-$78
    ld d, c
    inc bc
    ld b, b
    ld hl, sp-$01
    nop
    ldh a, [$ff9f]
    rrca
    nop
    nop
    ei
    inc b
    add [hl]
    ld d, e
    ld b, d
    ld h, c
    rrca
    or a
    ldh a, [rP1]
    nop
    or b
    ld d, c
    rrca

jr_02d_64e6:
    ldh a, [$ffac]
    jr nc, jr_02d_64ea

jr_02d_64ea:
    ei
    dec de
    db $e4
    db $10
    ld d, c
    ld a, h
    add e
    add c
    ld a, [hl]
    rst RST_38
    pop de
    dec e
    dec b
    ld b, d
    db $fd
    ld d, b
    ld c, a
    ld b, d
    nop
    add l
    jr nz, jr_02d_6500

jr_02d_6500:
    add e
    ld a, [$40fd]
    cp e
    add e
    ld h, b
    xor d
    ld de, $11aa
    ld [hl+], a
    rst RST_20
    sbc c
    ld de, $2cbb
    ld d, b
    add e
    ld l, d
    and $fa
    ld bc, $00ff
    cp d
    ld bc, $03b8
    xor b
    inc de
    xor c
    rst RST_38
    inc de
    ld hl, $119b
    cp e
    ld l, b
    dec b
    ld b, h
    ld e, a
    dec l
    ld b, h
    dec l
    inc h
    ld l, l
    or [hl]
    ld h, l
    add h
    db $ed
    ld d, b
    db $fd

jr_02d_6535:
    sub [hl]
    jp $8660


    and b
    add l
    and b
    add e
    and b
    rst RST_38
    add b
    and b
    ld [hl], b
    rrca
    inc a
    inc bc
    rra
    nop
    rst RST_18
    rrca
    nop
    ld b, $00
    ret nz

    rrca
    ld d, d
    ld [hl], h
    add e
    ccf
    ret nz

    nop
    add b
    rra
    rlca
    jr c, @-$58

    ld [hl-], a
    dec h
    ld h, c
    xor l
    db $e3
    ld h, $61
    ld hl, sp+$07
    dec b
    ld b, c
    ret nz

    ld sp, $f850
    rra
    rst RST_00
    nop
    nop
    add b
    ld a, a
    ld a, [de]
    ld h, b
    ld l, l
    ld h, b
    rrca
    ld d, d
    ldh [$ffb6], a
    ld d, d
    or b
    ld d, b
    ld b, c
    ld h, b
    rrca
    ld d, c
    ld d, h
    ld h, c
    db $fd
    ld [bc], a
    ccf
    rst RST_18
    ret nz

    jp $ff3c


    nop
    inc h
    ld h, c
    ld hl, sp+$07
    rst RST_28
    nop
    nop
    add l
    ld a, d
    dec b
    ld b, c
    db $fd
    ld [bc], a
    add [hl]
    cp [hl]
    dec d
    ld h, d
    nop
    nop
    ld bc, $fefe
    add d
    ld b, b
    pop af
    ld a, a
    ld c, $0e
    pop af
    nop
    nop
    rst RST_28
    db $10
    ld a, l
    jr nc, jr_02d_6535

    rlca
    ld a, b
    ld h, d
    dec de
    ld [hl], e
    adc a
    ld [hl], l
    ld h, b
    ld a, h
    ld hl, $740f
    ldh a, [$ffdf]
    rst RST_08
    rst RST_38
    nop
    cp a
    ld b, a
    ld h, [hl]
    ld [hl], a
    rra
    ldh [$ff03], a
    pop hl
    ld e, $01
    ld b, b
    rst RST_30
    ld h, b
    inc h
    ld h, c
    dec b
    ld b, c
    jr nc, jr_02d_6631

    ld a, h
    ld h, c
    xor e
    cp a
    ld b, a
    or a
    ld d, d
    ccf
    ld e, h
    ld h, b
    nop
    adc b
    ld d, c
    db $fc
    dec l
    jp Jump_02d_510e


Call_02d_65e2:
    or b
    ld c, a
    ld a, l
    jr nz, jr_02d_65e8

    and d

jr_02d_65e8:
    ld [hl], c
    or l
    ld d, e
    jp $fc03


    or $60
    inc l
    ld d, b
    ld d, d
    ld h, e
    ld a, l
    jr nz, jr_02d_65fa

    inc bc
    add c
    db $fd

jr_02d_65fa:
    adc l
    ld hl, $20d0
    ld c, $72
    or b
    ld d, b
    and e
    ld [hl], b
    add hl, de
    ld d, c
    ld hl, sp-$07
    rst RST_30
    ld a, h
    ld [hl], e
    adc b
    ld d, b
    rra
    rst RST_38
    ldh [rIE], a
    nop
    inc bc
    ld l, a
    sub e
    ld c, $51
    dec e
    add b
    ld [hl], $3b
    ld de, $00bb
    ld b, $9b
    ld de, $0c99
    nop
    ld bc, $bf06
    ld bc, $018b
    add e
    ld [bc], a
    ld bc, $0800
    cp e
    cp a

jr_02d_6631:
    or c
    dec de
    ld bc, $241b
    ld l, h
    jr nc, @+$03

    jr nz, @+$01

    ld l, b
    ld hl, $2360
    ld h, b
    jr nz, jr_02d_66a2

    rra
    rst RST_38
    ld b, b
    nop
    ld a, a
    nop
    nop
    ld a, a
    ld b, b
    ccf
    ld e, b
    ld b, c
    nop
    ld b, b
    nop
    ld c, e
    ld bc, $00ff
    ld d, b
    nop
    rst RST_38
    ld d, c
    nop
    cp h
    ld d, e
    ld bc, $025a
    nop
    rst RST_38
    ld bc, $57fe
    ld b, $7f
    rst RST_38
    ld a, a
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], a
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ret nz

    ld [hl], a
    inc b
    ld d, [hl]
    inc bc
    ld d, a
    ld bc, $035a
    ld a, b
    dec b
    ld a, b
    dec b
    nop
    ld hl, sp-$71
    inc bc
    ld hl, sp+$00
    ld a, [$08a4]
    ld d, b
    ld bc, $0759
    rst RST_38
    ldh a, [$ffa4]
    ld a, [bc]
    and l
    ld bc, $07b7
    ld e, e
    ld [bc], a
    add b
    ld a, [$fa80]
    rst RST_38
    ret nz

Call_02d_6699:
    ei
    ldh [$fff8], a
    jr nz, jr_02d_66dd

    ret nc

    ld e, a
    rst RST_08
    ret nc

jr_02d_66a2:
    rst RST_18
    jr nc, jr_02d_66e4

    or c
    ld [bc], a
    ld d, a
    ld [$fff0], sp
    ld a, a
    ldh [$fff8], a
    ldh [$fffb], a
    ldh [$fffa], a
    ret nz

    rlca
    db $10
    adc h
    ldh [rSB], a
    ld d, b
    ld bc, $807f
    ld e, b
    rlca
    ldh [c], a
    nop
    db $e3
    nop
    ret nz

    sbc a
    ld hl, sp-$20
    rst RST_38
    db $fc
    rst RST_38
    ld h, [hl]
    inc b
    di
    add hl, bc
    nop
    cp [hl]
    sub b
    rlca
    ld [bc], a
    inc b
    ld a, [bc]
    ld [hl], h
    halt
    add a
    ld bc, $9b00
    rlca
    ld a, b
    ld c, c

jr_02d_66dd:
    ld bc, $7c7c
    ld c, c
    ld bc, $0257

jr_02d_66e4:
    jr jr_02d_675c

    ld d, d
    ld bc, $0107
    ld e, c
    inc bc
    nop
    nop
    db $fd
    xor a
    ld [bc], a
    cp l
    add b
    ld b, c
    nop
    rst RST_38
    nop
    db $db
    cp h
    add b
    add hl, de
    jr @+$79

    inc a
    ld h, b
    rra
    ld c, c
    ld bc, $5e21
    ld a, a
    sub c
    db $10
    cp a
    ld a, h
    inc sp
    ld a, a
    nop
    inc a
    jp $0052


    rra
    db $db
    pop bc
    ld a, $57
    ld bc, $e01f
    ld l, [hl]
    inc de
    ld hl, sp-$39
    ld a, [$1068]
    ld hl, sp+$52
    db $10
    ld hl, sp-$07
    ld b, $66
    ld e, l
    xor $c0
    add hl, de
    ld [bc], a
    ld b, h
    ld bc, $1215
    rst RST_38
    ret nz

Call_02d_6731:
    rst RST_38
    or a
    inc a
    ccf
    rst RST_00
    ld d, d
    ld bc, $0cf3
    or d
    db $10
    rlca
    or a
    rlca
    ld hl, sp-$01
    ld [hl], e
    ld [de], a
    inc bc
    db $fd

jr_02d_6745:
    ld d, a
    ld bc, $bf0f
    ldh a, [rIE]
    rlca
    rst RST_38
    nop
    ldh [$ff91], a
    db $10
    rst RST_38
    ei
    cp $fe
    ld l, e
    db $10
    ret nz

    ccf
    rst RST_38
    ld hl, sp-$02

jr_02d_675c:
    rst RST_10
    ld bc, $fe01
    or d
    db $10
    daa
    add a
    ld bc, $8f7f
    call $f3ff
    db $10
    db $fc
    inc bc
    ldh a, [c]
    ld de, $1b80
    db $db
    cp h
    ld h, $c0
    dec de
    ld h, [hl]
    ld e, l
    add b
    ld [$2e4a], sp
    ccf
    ld b, b
    ld bc, $284a
    or [hl]
    ld e, e
    ld bc, $cff1
    ld [hl], b
    dec hl
    rst RST_18
    xor $80
    dec hl
    inc [hl]
    dec l
    ld sp, hl
    sub b
    dec hl
    cp e
    db $dd
    and b
    dec hl
    cp d
    xor a
    inc l
    ld [hl], b
    dec hl
    ld e, e
    jr nc, jr_02d_67a9

    add b
    dec hl
    ld b, a
    ld h, [hl]
    sub b
    inc l
    jr c, jr_02d_6745

    dec hl
    db $db
    inc hl
    ld b, c

jr_02d_67a9:
    or b
    dec hl
    xor d
    call z, $1dd0
    sub b
    ld [$e20a], sp
    dec de
    pop bc
    pop af
    inc e
    sbc h
    ld c, b
    nop
    inc b

Call_02d_67bb:
    cpl
    ld d, $27
    dec e
    nop
    add b
    cp e
    rst RST_30
    rst RST_38
    nop
    ld bc, $ff00
    ld a, a
    rlca
    ld [bc], a
    nop
    ld a, b
    ld bc, $0402
    ld bc, $0317
    nop
    rst RST_38
    ld [hl], a
    ld a, a
    jr nz, jr_02d_67da

    rst RST_38

jr_02d_67da:
    nop
    rst RST_38
    ldh a, [$fff0]
    rst RST_30
    ldh a, [$fff4]
    ldh a, [rBGP]
    dec b
    ldh a, [$fff5]
    cpl
    ld [bc], a
    ld l, $07
    nop
    dec b
    nop
    ld b, [hl]
    ld bc, $46fc
    nop
    nop
    dec b
    ld c, $0e
    xor $0e
    ld l, $0e
    ld [hl], a
    and b
    ld c, $a6
    ld e, a
    ld [bc], a
    and b
    ld c, $ae
    ld h, a
    ld [bc], a
    cp $5e
    dec b
    jr nz, jr_02d_6818

    ld l, $8e
    ld l, $8e
    xor [hl]
    rst RST_28
    adc [hl]
    and b
    adc [hl]
    and [hl]
    ld a, a
    ld [bc], a
    and b
    adc [hl]

jr_02d_6818:
    ld l, $e6
    ld l, c
    inc b
    rst RST_30
    ld [$0190], sp
    ld c, c
    inc b
    add b
    nop
    nop
    ld hl, sp-$70
    ld a, [bc]
    ld c, e
    nop
    sub b
    ld [$00fe], sp
    ld [bc], a
    nop
    nop
    cp e
    and a
    rrca
    ret nz

    ld bc, $0fa0
    xor a
    rst RST_00
    ld [bc], a
    and b
    pop hl
    rrca
    jr nc, jr_02d_684c

    cp a
    dec c
    ld c, a
    ld b, $08
    inc b
    nop
    dec d
    push hl
    rrca
    dec d
    push hl

jr_02d_684c:
    push af
    dec b
    ld c, b
    ld [bc], a
    and a
    inc b
    ld a, [de]
    ld [bc], a
    ld b, [hl]
    ld b, $3f
    xor b
    and a
    xor b
    and a
    xor a
    and b
    ld b, $17
    ld a, [de]
    inc bc
    ld hl, sp+$2c
    inc de
    scf
    inc de
    ld c, d
    ld bc, $7f7f
    ld b, b
    ld b, b
    ld e, a
    rra
    ld b, b
    ld e, b
    ld b, b
    ld d, a
    ld b, b
    inc sp
    dec d
    ld c, b
    dec b
    inc sp
    inc de
    rst RST_38
    cp $fe
    ld [bc], a
    nop
    ld a, [$1a00]
    nop
    ld h, a
    ld [$5700], a
    ld c, l
    db $10
    ld [hl], b
    db $10
    ld b, a
    ld e, b
    ld c, c
    db $10
    rst RST_00
    ld b, b
    ld b, b
    ld a, a
    ld c, a
    ld [de], a
    dec d
    ld bc, $0548
    ld [$9620], a
    sub b
    ld [de], a
    ldh [rNR30], a
    ld l, c
    db $10
    ld [bc], a
    cp d
    nop
    ld c, e
    nop
    ccf
    cp $a2
    db $10
    rst RST_08
    nop
    ld [hl], $00
    add hl, bc
    nop
    rlca
    rst RST_30
    jr jr_02d_68ce

    ldh a, [$ffb0]
    db $10
    ldh [$ffe0], a
    nop
    ldh [rIE], a
    ld h, b
    ldh [rLCDC], a
    pop bc
    ld b, b
    pop bc
    nop
    jp Jump_000_18ff


    ld a, [de]
    jr nc, jr_02d_68ff

    ld [hl], b
    ld [hl], h
    ld h, b
    ld h, h
    rst RST_38

jr_02d_68ce:
    ldh [$ffe4], a
    ret nz

    call z, $8880
    add b
    adc b
    rst RST_38
    rst RST_30
    rst RST_38
    or $fe
    db $f4
    db $fd
    nop
    db $fd
    rst RST_38
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$70
    di
    nop
    ld bc, $f7ff
    rst RST_30
    inc [hl]

jr_02d_68ec:
    inc [hl]
    ret nz

    inc bc
    add b
    jr nc, @+$01

    rlca
    rlca
    jr nc, @-$3f

    nop
    ld e, a
    nop
    ld e, a
    ld a, [hl]
    or h
    db $10
    rrca
    nop

jr_02d_68ff:
    ldh [rIF], a
    rrca
    ldh a, [$ff5e]
    inc de
    rst RST_38
    ldh a, [$ff03]
    dec bc
    ld bc, $18a5
    ld a, [de]
    ldh [$fff7], a
    db $ed
    nop
    ldh a, [rDMA]
    nop
    ld hl, sp+$07
    nop
    nop
    rst RST_30
    jr jr_02d_691b

jr_02d_691b:
    db $10
    ld [de], a
    ld [hl+], a
    sub b
    nop
    ld l, e
    db $10
    rst RST_38
    and b
    cp e
    nop
    ldh a, [$fff2]
    pop af
    pop af
    nop
    rst RST_38
    pop af
    nop
    ld [bc], a
    ld bc, $e0f1
    pop hl
    nop
    rst RST_38
    ld [bc], a
    pop bc
    pop bc
    nop
    and b
    rlca
    nop
    sbc e
    rst RST_38
    sbc b
    dec l
    cp l
    jr z, jr_02d_6981

    and b
    xor [hl]
    jr nz, jr_02d_6956

    xor h
    nop
    add hl, de
    rrca
    add c
    ld d, $9d
    nop
    dec h
    nop
    add b
    rla
    rst RST_38
    ld a, a
    ld a, a

jr_02d_6956:
    nop
    add b
    rlca
    rst RST_20
    ret c

    dec b
    rst RST_38
    db $dd
    nop
    ret c

    ld [bc], a
    ld a, [$02d8]
    nop
    rst RST_30
    db $dd
    ret nz

    dec e
    ld l, c
    jr nz, jr_02d_68ec

    add c
    add b
    add d
    rst RST_38
    add c
    add c
    jr nz, jr_02d_6995

    ld b, b
    ld b, d
    ld b, c
    ld b, c
    rst RST_38
    ld c, b
    ld c, c
    ld d, b
    ld e, b
    add b
    and a
    nop
    xor a

jr_02d_6981:
    rst RST_38
    nop
    rra
    add c
    sbc [hl]
    inc bc
    cp h
    rlca
    jr c, jr_02d_69fa

    rrca
    ld [hl], b
    ld e, [hl]
    jr nz, jr_02d_69ed

    ld de, $807f
    db $fd
    db $10

jr_02d_6995:
    rst RST_38
    nop
    ret nz

    nop
    inc bc
    inc bc
    rra
    rra
    nop
    rst RST_38
    ld hl, sp+$01
    db $fc
    ldh [rNR34], a
    ldh a, [$ff0e]
    ld a, b
    ld a, a
    rlca
    inc e
    inc bc
    ld c, $01
    add $c1

jr_02d_69af:
    ld l, h

jr_02d_69b0:
    jr nz, jr_02d_69b0

    or c
    ld [hl+], a
    ld e, b
    ld [bc], a
    ld e, d

jr_02d_69b7:
    nop
    ld a, [de]
    add b
    dec e
    rst RST_38
    ret nz

    ld d, b
    ld e, b
    ld d, $5e

jr_02d_69c1:
    sub e
    dec de
    ld d, b
    rst RST_38
    sbc e
    ret nz

    rla
    and b
    ld b, e
    ld h, b
    db $10
    cp b
    rst RST_38
    ld b, b
    ld a, h
    nop
    ld a, l
    ld bc, $81b9
    dec de
    rst RST_38
    jp $c212


    ld [hl-], a
    add d
    ld [bc], a
    ld [bc], a
    ld b, $ff
    ld b, $60
    ld h, b
    add b
    adc a
    nop
    jr nc, @+$11

    rst RST_38
    ld c, a
    rra
    ld e, a
    rra

jr_02d_69ed:
    cp a
    rrca
    cp a
    inc bc
    rst RST_38
    or a
    ld [hl], e
    ld [hl], b
    dec de
    jr jr_02d_69c1

    ret z

    dec l

jr_02d_69fa:
    cp a
    inc l
    and h
    and h
    call nc, $d0d4
    db $fc
    jr nz, jr_02d_6a09

    rst RST_18
    ldh [$ff80], a
    ld [hl], b
    ret nz

jr_02d_6a09:
    jr c, jr_02d_69af

    ld hl, $03fc
    xor $45
    ld bc, $0006
    inc bc
    ld [de], a
    jr nz, jr_02d_69b7

    ld b, b
    ld a, h
    rst RST_38
    add b
    jp c, $bf24

    ld b, b
    db $db
    inc h
    nop
    ld a, a
    and e
    nop
    ld b, c
    nop
    ld b, b
    nop
    jr nc, @-$0c

    db $10
    cp $4b
    nop
    ret nz

    nop
    nop
    ret nc

    nop
    and b
    nop
    rst RST_38
    jr nz, jr_02d_6a39

jr_02d_6a39:
    ret nz

    dec c
    ld [bc], a
    rra
    nop
    dec [hl]
    cp a
    ld a, [bc]
    cp a
    ld b, b
    nop
    nop
    ld bc, $004b
    inc bc
    rst RST_38
    nop
    cp l
    ld b, d
    db $eb
    inc d
    ld [hl], a
    adc b
    xor [hl]
    ld sp, hl
    ld d, c
    xor h
    ld bc, $3350
    ld [$1400], sp
    ld [$ef3e], sp
    ld [$1c6b], sp
    sbc h
    inc c
    nop
    ld e, l
    cp [hl]
    rst RST_38
    sbc [hl]
    ld h, a
    jr nc, @-$3f

    cp $de
    db $fd
    nop
    ld bc, $0024
    cp a
    db $fd
    ccf
    ld [hl], a
    ld [hl-], a
    nop
    cp a
    ld a, [hl]
    ld e, l
    ld a, [hl]
    ld e, l
    rst RST_38
    ld a, [hl+]
    ld e, l
    nop
    nop
    ld a, [hl+]
    inc e
    ld a, [hl+]
    inc e
    ld a, a
    inc d
    ld [$1408], sp
    nop
    inc e
    ld [$3f91], sp
    xor $9d

jr_02d_6a92:
    jr c, jr_02d_6adc

    inc e
    ld l, b
    xor e
    inc [hl]
    ld c, b
    inc e
    ret z

    rst RST_38
    inc e
    ret nz

    ld a, $75
    adc d
    rst RST_18
    jr nz, jr_02d_6b1a

    ld sp, hl
    adc c
    dec sp
    inc d
    ld d, $00
    cp [hl]
    ld a, $2a
    sbc l
    ld [$1dff], a
    add sp, $1c
    jr z, jr_02d_6a92

    add sp, -$23
    ld [$1cff], sp
    add hl, bc
    sbc l
    nop
    add c
    nop
    ld b, d
    nop
    sub l
    inc h
    db $10
    jr nz, jr_02d_6ade

    db $e4
    jr nc, jr_02d_6b0b

    ldh [$ff30], a
    pop hl
    inc a
    db $fc
    sbc a
    cp $f3
    ei
    rst RST_08
    rst RST_28
    ld a, h
    jr nc, @+$4d

    ld hl, $ff7f
    nop
    nop

jr_02d_6adc:
    ret


    db $dd

jr_02d_6ade:
    ret nz

    cp [hl]
    adc b
    db $dd
    ld b, e
    pop bc
    db $e3
    ld e, e
    inc d
    ld d, $05
    ld e, d
    dec d
    ld d, $04
    cp $9e
    ld de, $d5fe
    stop
    nop

jr_02d_6af5:
    rst RST_18
    rst RST_18
    cp a
    cp a
    ld a, a
    ld sp, hl
    ld a, a
    ld h, $47
    db $10
    inc e
    rst RST_28
    ld [hl], h
    adc e
    jp c, $ff25

    or a
    ld c, b
    rst RST_10
    jr z, jr_02d_6af5

jr_02d_6b0b:
    dec d
    ld a, a
    add b
    rst RST_28
    or [hl]
    ld c, c
    db $ed
    ld [de], a
    inc e
    ld sp, $49b6
    db $db
    db $fd
    inc h

jr_02d_6b1a:
    ld c, b
    dec [hl]
    ld l, e
    sub h
    and b
    ld b, b
    adc c
    ld c, $ff
    ccf
    ld [hl], b
    adc a
    rrca
    ld h, b
    sub b
    cp l
    ld b, d
    ei
    or $09
    sbc h
    ld bc, $1fe7
    or e
    ld a, h
    ld hl, sp-$23
    add a
    ld e, d
    jr nz, jr_02d_6b3a

jr_02d_6b3a:
    jp c, $5025

    ld [hl-], a
    ld a, a
    ld b, $ff
    ld a, a
    inc c
    ld a, a
    jr jr_02d_6bc5

    jr nc, jr_02d_6bc7

    ld h, b
    cp b
    dec c
    ld b, b
    ld e, e
    ld d, $5e
    dec d
    nop
    nop
    db $fc
    call nz, Call_02d_4047
    xor $0b
    ld b, c
    ld a, [hl]
    nop
    ld a, l
    ld c, h
    jr nz, jr_02d_6bdb

    nop
    ld a, d
    db $fc
    call c, Call_02d_5e40
    inc de
    ld a, [hl]
    nop
    ld l, d
    ld bc, $0345
    rst RST_38
    dec h
    inc bc
    sub d
    ld [$18fc], sp
    ld a, h
    jr c, @+$01

    ld a, h
    ld a, b
    db $fc
    ld hl, sp-$64
    ld hl, sp+$3c
    ld hl, sp-$09
    cp h
    ld hl, sp-$64
    sub $40
    ld a, e
    nop
    ld a, a
    inc c
    rst RST_38
    ld [hl], e
    ld a, [bc]
    ld [hl], l
    dec c
    ld [hl], e
    dec bc

jr_02d_6b8f:
    ld [hl], a
    rrca
    rst RST_38
    ld [hl], a
    dec b
    or l
    dec de
    ei
    ccf
    rst RST_38
    rst RST_38
    rst RST_30
    halt
    rst RST_38
    ld l, d
    jr jr_02d_6bf0

    ld h, d
    db $fd
    ld a, [hl+]
    ld hl, sp-$01
    db $fc
    ldh a, [$fffc]
    ldh [$fffc], a
    ldh a, [$ff4c]
    and b
    rst RST_38
    call c, $cc30
    jr nz, jr_02d_6b8f

    or b
    ld c, h
    rrca
    rst RST_18
    ld a, a
    rra
    ld a, a
    ccf
    ld a, a
    dec [hl]
    ld d, e
    ld a, [hl]
    ld a, a
    rst RST_38
    ld a, h
    ld a, a
    ld hl, sp-$01

jr_02d_6bc5:
    ldh a, [rIE]

jr_02d_6bc7:
    ldh [rIE], a
    jp $ffc0


    sub l
    jr nz, @+$60

    inc de
    push bc
    ld c, b
    call nz, Call_02d_7841
    ld a, a
    ld bc, $ad70
    ld b, b
    ret nc

jr_02d_6bdb:
    ld b, d
    dec bc
    ld b, d
    or h
    ld c, d
    ld c, d
    ld bc, $5b51
    ld d, b
    inc sp
    rst RST_38
    ld hl, sp+$10
    ldh a, [$ff30]
    ldh a, [$ff60]
    ld h, b
    nop
    db $fd

jr_02d_6bf0:
    ld hl, $3450

jr_02d_6bf3:
    jr @+$0a

    jr c, jr_02d_6c0f

    ld a, b
    jr nc, jr_02d_6bf3

    ld hl, sp-$64
    ld bc, $3024
    ld h, b
    jr jr_02d_6c7a

    jr c, jr_02d_6c80

    ccf
    ld [hl], b
    ld a, h
    ld h, b
    ld [hl], b
    ld b, b
    ld h, b
    ld d, b
    ld [hl], $b3
    ld d, b

jr_02d_6c0f:
    rst RST_38
    jr nc, jr_02d_6c82

    ld h, b
    ld h, b
    ld b, b
    ld b, b
    inc b
    inc b
    ccf
    inc c
    inc c
    jr @+$1e

    nop
    inc b
    ld d, b
    scf
    ld c, e
    nop
    cp a
    inc c
    inc b
    inc e
    inc c
    inc c
    inc b
    rst RST_10
    ld d, a
    ld bc, $41fe
    jr nc, jr_02d_6c34

    nop
    ld b, $02

jr_02d_6c34:
    ld c, $06
    ld e, $af
    ld c, $1e
    inc e
    ld a, $b6
    ld d, d
    ld a, h
    rst RST_08
    jr nz, jr_02d_6cbe

    xor $4b
    nop
    inc b
    nop
    inc c
    ld [de], a
    ld h, b
    ld c, $00
    ld c, $ef
    inc bc
    rra
    rlca
    rra
    ld c, b
    nop
    rst RST_20
    cp a
    cp c
    cp e
    rst RST_38
    cp $17
    nop
    db $fc
    cp a
    or e
    ld c, d
    ld [bc], a
    rst RST_20
    rst RST_38
    rst RST_38
    ld sp, hl
    rst RST_38
    db $fc
    rst RST_38
    add hl, sp
    rst RST_38
    di
    dec hl
    rst RST_38
    rst RST_08
    ld c, d
    ld [bc], a
    rst RST_08
    jr c, jr_02d_6cd3

    ld a, c
    inc [hl]
    ld h, b
    add hl, sp
    ld h, l
    sbc l
    sbc a

jr_02d_6c7a:
    jr nc, @+$64

    di
    rst RST_38
    rst RST_28
    ld d, b

jr_02d_6c80:
    ld h, b
    ld c, e

jr_02d_6c82:
    ld bc, $ce3f
    ld b, b
    ld h, d
    rst RST_20
    rst RST_38
    rst RST_18
    ld h, b
    ld h, b
    cp b
    ld bc, $fa3e
    rst RST_38
    sbc d
    cp $ce
    cp $e6
    cp $ce
    ld a, [$3af9]
    sbc [hl]
    ld de, $6430
    inc a
    rst RST_38
    pop af
    rst RST_38
    rst RST_00
    xor d
    ld c, d
    ld [bc], a
    rst RST_00
    jr c, jr_02d_6d0a

    ld a, h
    ld [hl-], a
    ld h, b
    rst RST_30
    ld a, [hl-]
    ld l, b
    db $fc
    xor d
    ld [hl-], a
    ld h, b
    rst RST_20
    ld e, d
    ld h, h
    sbc [hl]
    jr nc, jr_02d_6d1a

    ei
    and [hl]
    ld h, d
    sbc [hl]

jr_02d_6cbe:
    xor $b7
    ld [bc], a
    ld a, [hl]
    ld a, [$74ba]
    ld h, b
    sbc $fe
    cp [hl]
    xor e
    ld a, [$7c7a]
    ld h, d
    rst RST_00
    ld a, [hl+]
    ld h, b
    db $fc
    inc h

jr_02d_6cd3:
    ld h, b
    ld hl, sp+$53
    cp a
    and e
    adc h
    ld h, h
    inc sp
    ld h, c
    ld a, h
    jr c, @+$62

    adc a
    sbc h
    ld l, b
    add hl, hl
    ld a, c
    sbc b
    ld h, [hl]
    ld d, c
    ld h, e
    pop af
    xor b
    ld h, [hl]
    ld e, $40
    ld h, d
    rlca
    halt
    db $e4
    ret nz

    ld h, b
    ld [hl], e
    ld h, e
    sbc [hl]
    ld a, d
    ld h, l
    jp nc, $f964

    cp a
    and a
    db $f4
    db $ec
    ld l, d
    add hl, sp
    ld h, l
    adc a
    jr nc, jr_02d_6d65

    pop af
    rst RST_38
    ld hl, sp-$01
    ld d, a

jr_02d_6d0a:
    db $e3
    rst RST_38
    rra
    ld c, d
    ld [bc], a
    inc e
    ld a, [hl-]
    ld h, b
    rst RST_20
    jr c, jr_02d_6d77

    db $fd
    inc a
    ld c, d
    ld [bc], a
    ld [hl], e

jr_02d_6d1a:
    rst RST_38
    dec a
    rst RST_38
    sbc h
    rst RST_38
    ld [hl], l
    adc $86

Jump_02d_6d22:
    ld h, b
    di
    or a
    ld [bc], a
    sbc [hl]
    ld a, [$76ca]
    ld h, b
    and a
    ld [hl], d
    cp $ee
    ld [hl], d
    ld h, b
    ld c, e
    ld bc, $2aef
    ld h, b
    ld hl, sp+$2a
    ld [hl], $78
    rrca
    ld d, d
    ld [hl], d
    ld a, b
    jr c, jr_02d_6da0

    add a
    ld c, h
    ld a, d
    jp hl


    ld h, l
    jp hl


    adc a
    ld e, b
    ld [hl], b
    inc sp
    ld h, c
    pop af
    xor d
    halt
    db $e3
    rst RST_38
    db $fd
    ldh a, [c]
    and [hl]
    ld [hl], b
    db $e3
    ld a, [de]
    ld [hl], h
    ld [hl], c
    ld h, d
    db $fc
    db $e4
    ld hl, sp-$38
    inc b
    sub a
    ld d, b
    ld c, e
    nop
    add b
    ldh a, [$ff7c]

jr_02d_6d65:
    dec e
    add b
    add hl, de
    ei
    nop
    ld a, a
    nop
    nop
    ccf
    nop
    rra
    nop
    rrca
    rst RST_38
    nop
    rrca
    inc bc
    inc b

jr_02d_6d77:
    inc bc
    nop
    nop
    pop af
    cp a
    nop
    pop af
    ld bc, $00f1
    ldh a, [rNR21]
    inc bc
    add b
    rst RST_38
    ld [hl], b
    ld a, b
    rst RST_38
    ldh a, [rIE]
    ldh [$fffe], a
    ret nz

    sbc a
    db $fc
    add b
    db $fc
    nop
    ld hl, sp+$16
    ld [bc], a
    jr nc, jr_02d_6d9b

    ld bc, $36fa

jr_02d_6d9b:
    nop
    inc bc
    ld a, [hl-]
    nop
    rlca

jr_02d_6da0:
    ld [bc], a
    ld a, d
    ld [bc], a
    ld a, [$42be]
    dec b
    ld a, [bc]
    ld a, [$fa1a]
    add b
    ld d, b
    inc bc
    or b
    rst RST_38
    adc h
    cp h
    sbc [hl]
    cp [hl]
    cp h
    cp a
    cp b
    cp [hl]
    ldh a, [c]
    ld a, [hl-]
    nop
    ld bc, $0430
    jr nc, jr_02d_6dc2

    sub b
    ld [hl], b

jr_02d_6dc2:
    or b
    ld [hl], b
    rst RST_38
    ldh a, [rSVBK]
    ld [hl], b
    ld h, b
    ld [hl], b
    ld b, b
    jr nc, jr_02d_6dfd

    db $eb
    db $10
    db $10
    jr nc, jr_02d_6dd2

jr_02d_6dd2:
    ld h, b
    ld h, h
    add hl, bc
    nop
    nop
    inc b
    ld a, e
    inc bc
    inc c
    sub c
    nop
    ld [$1007], sp
    ld [$0330], sp
    ld a, a
    ld a, [hl-]
    ld a, [$fa72]
    jp nz, Jump_000_02c2

    and [hl]
    ld b, $3f
    or b
    cp h
    and b
    cp b
    add b
    and b
    ld d, b
    inc b
    ld d, b
    nop
    adc [hl]
    and [hl]
    nop
    ld a, [de]
    ld [bc], a

jr_02d_6dfd:
    ld a, [hl-]
    call nz, $a600
    inc b
    ld d, b
    ld bc, $fd8e
    adc a
    ld e, h
    nop
    cp a
    or b
    cp a
    and b
    cp a
    add b
    dec a
    cp [hl]
    jr nc, jr_02d_6e13

jr_02d_6e13:
    add b
    ld b, b
    add b
    ret nz

    pop hl
    nop
    inc [hl]
    ld [bc], a
    ld h, h
    ld c, $00
    ld h, h
    ld [$fc83], sp
    nop
    ld h, h
    add hl, bc
    add b
    ret nz

    and $00
    ld c, [hl]
    jr nc, jr_02d_6e2c

jr_02d_6e2c:
    jr c, jr_02d_6e50

    inc e
    inc b
    nop
    dec b
    ld bc, $a61f
    ld b, $ff
    jp nz, $f212

    ld a, [hl-]
    ld a, [$fa7a]
    add b
    rst RST_18
    cp [hl]
    add b
    cp h
    add b
    cp b
    inc [hl]
    db $10
    or b
    add b
    rst RST_30
    add b
    rst RST_38
    rst RST_38
    jr nc, jr_02d_6e4f

jr_02d_6e4f:
    rlca

jr_02d_6e50:
    nop
    rrca
    ld bc, $1f7f
    inc bc
    rra
    rlca
    ccf
    nop
    nop
    inc a
    ld de, $01e7
    add e
    add c
    ld d, d
    inc d
    ld c, d
    inc de
    ldh [$ffe0], a
    ldh [$ff97], a
    ldh a, [$ffc0]
    ld hl, sp+$28
    nop
    cp $4a
    inc de
    ld b, d
    db $10
    rrca
    sbc a
    inc bc
    rlca
    rlca
    rlca
    inc bc
    ld c, $00
    inc a
    ld de, $d7f2
    ld a, [$fae2]
    ld h, h
    db $10
    ld hl, sp+$2a
    nop
    nop
    ldh a, [rP1]
    cpl
    nop
    dec e
    nop
    add b
    rst RST_38
    ld a, b
    ld b, c
    ld a, h
    ld h, b
    ld a, b
    ld b, [hl]
    db $10
    ccf
    rst RST_38

jr_02d_6e9a:
    ld b, b
    ld c, a
    ld [hl], b
    ld [hl], e
    ld a, h
    ld c, h
    ld a, a
    ld h, e
    rst RST_38
    nop
    ret nz

    ld [bc], a
    ldh [rP1], a
    ld [hl], b
    nop
    jr c, @+$01

    nop
    rra
    ld b, b
    ld b, b
    ld h, b
    ld b, [hl]
    jr nc, @+$25

    rst RST_38
    nop
    ld [bc], a
    ldh a, [$fff2]
    ldh a, [$ff82]
    nop
    ld [bc], a
    rst RST_38
    nop
    rst RST_38
    nop
    nop
    ldh a, [rSC]
    nop
    ld [bc], a
    rst RST_38
    db $f4
    ld b, h
    db $f4
    inc d
    halt
    inc b
    nop
    nop
    ld a, [hl]
    jr z, jr_02d_6ed3

    di

jr_02d_6ed3:
    ld d, b
    nop
    nop
    jr nc, jr_02d_6e9a

    ld b, b
    nop
    rst RST_38
    ld b, d
    db $10
    ld h, d
    nop
    ld [hl+], a
    db $10
    ld [hl-], a
    adc b
    rst RST_38
    ld a, [hl-]
    nop
    ld [de], a
    nop
    ld a, [$f210]
    ld e, b
    rst RST_38
    ld a, [$e46c]
    ld d, [hl]
    ldh a, [c]
    adc b
    cp d
    ld b, b
    rst RST_38
    jp c, $ca00

    rst RST_38
    rst RST_38
    nop
    rrca
    nop
    sbc a
    ld a, $00
    ld a, [hl]
    nop
    db $fc
    scf
    nop
    add hl, hl
    nop
    ld bc, $01ff
    add hl, bc
    dec d
    ld bc, $1501
    ld hl, $f701
    ld bc, $0519
    ld [hl], h
    ld bc, $8080
    adc c
    sub h
    rst RST_38
    add b
    add b
    sub a
    and b
    add b
    add b
    sbc c
    add h
    rst RST_38
    add b
    add b
    or a
    add b
    add b
    add b
    add e
    sub a
    rst RST_38
    add a
    add a
    sub a
    and a
    add b
    add a
    sub b
    add b
    rst RST_38
    add e
    add e
    or d
    add d
    nop
    nop
    add a
    ld a, e
    rst RST_08
    rst RST_38
    cp $ff
    cp $28
    ld bc, $016c
    nop
    nop
    rst RST_38
    ret


    and h
    add b
    ld h, b
    add a
    ld h, b
    nop
    ldh [rIE], a
    add hl, bc
    inc b
    ret nz

    ret nz

    ld d, [hl]
    ld b, c
    ld bc, $fd19
    ld bc, $01c2
    pop af
    add hl, bc
    add hl, bc
    reti


    reti


    ld de, $d99f
    ld bc, $0001
    ccf
    xor [hl]
    ld bc, $01d0
    ccf
    push af
    ccf
    ret nc

    ld [bc], a
    sbc h
    xor [hl]
    ld bc, $df10
    jr nz, jr_02d_6f9d

    rst RST_38
    ld a, a
    ld a, a
    nop
    ld a, a
    nop
    nop
    ld [bc], a
    ei
    ld [$02d2], a
    cp $f5
    nop
    cp $f6
    ld bc, $407f
    ld a, a
    db $fd
    ld h, b
    nop
    ld de, $180f
    ld h, b
    ld h, a
    ld a, b
    jr @+$01

jr_02d_6f9d:
    ld a, a
    rlca
    adc b
    adc c
    db $e4
    ld h, b
    ld hl, sp+$18
    cp a
    cp $06
    ldh a, [$ff0e]
    ldh a, [$ff0e]
    or $00
    ld a, $fe
    jr z, jr_02d_6fb3

    nop

jr_02d_6fb3:
    ld h, d
    nop
    ld [hl-], a
    add b
    sbc d
    ret nz

    rst RST_18
    rst RST_08
    ret nz

    ret nz

    sub b
    add d
    jr z, jr_02d_6fc2

    ld b, b

jr_02d_6fc2:
    ld b, b
    ei
    and b
    and b
    ld [hl], $03
    or $04
    nop
    jp nc, $ff00

    ld a, [bc]
    ret nz

    ld c, d
    ldh [rNR52], a
    nop
    ld b, $00
    rst RST_38
    ldh a, [c]
    nop
    ld [bc], a
    ld [$1002], sp
    jp nc, $ff18

    ld e, d
    sub h
    sbc h
    jp nc, $e85e

    ld l, [hl]
    ldh a, [$ff1f]
    ld d, $f8
    ld a, [bc]
    ld b, b
    jr c, jr_02d_7051

    nop
    ld h, a
    ld b, $6c
    dec bc
    cp a
    jr jr_02d_6ff7

jr_02d_6ff7:
    inc bc
    inc bc
    stop
    add b
    rlca
    add hl, de

Jump_02d_6ffe:
    cp $bb
    nop
    rla
    nop
    add d
    add d
    adc d
    sub d
    add d
    rst RST_38
    add d
    or d
    add d
    add d
    add d
    ld [de], a
    ld a, [bc]
    jp nz, $c2ff

    ld [de], a
    ld [bc], a
    rst RST_38
    ret nz

    add c
    add b
    cp l
    cp $a3
    ld de, $81a0
    add b
    rst RST_38
    nop
    db $fd
    rst RST_38
    rst RST_38
    ld b, b
    ld b, b
    ld c, b
    ld d, l
    ld b, b
    ld b, b
    ld d, [hl]
    ld b, c
    ld l, a
    ld b, b
    ld b, b
    ld e, b
    ld b, l
    or h
    ld de, $01fb
    ret nz

    dec de
    ei
    cp a
    nop
    ret nc

    dec de
    ccf
    ld a, a
    inc c
    ccf
    ld b, $91
    ld b, $d2
    ld [bc], a
    jp nc, Jump_02d_6002

    nop
    ld hl, sp-$32
    nop
    and $16
    ld sp, hl
    rst RST_38

jr_02d_7051:
    rlca
    db $fd
    inc bc
    ld a, c
    rlca
    add hl, bc
    ld [hl], a
    ld bc, $7fff
    ld bc, $611f
    ld h, c
    ld a, [hl]
    ld a, [hl]
    ld b, b
    xor a
    ld c, [hl]
    ld [hl], b
    ld [hl], d
    ld e, h
    dec c
    nop
    ld e, a
    ld bc, $4e10
    rst RST_38
    ld b, c
    jr z, jr_02d_709f

    ld hl, sp-$3f
    ldh a, [$ff8c]

jr_02d_7075:
    ld b, b
    rst RST_38
    ld a, a
    sub b
    sbc a
    ld h, b
    db $e3
    call nc, Call_000_0734
    rst RST_38
    rst RST_30
    rlca
    ld [hl], h
    ld [hl], a
    inc b

jr_02d_7085:
    rlca
    inc b
    ld a, d
    rst RST_38
    ld a, e
    ld a, h
    ld h, h
    ld a, a
    ld b, e
    ld [hl], b
    ld l, a
    adc b
    rst RST_38
    sbc a
    ldh [$ff67], a
    adc h
    add c
    and h
    ld h, b
    ld [$e9ff], sp
    adc [hl]
    xor $09

jr_02d_709f:
    add hl, hl
    ld c, h
    ld c, e
    ld [hl], b
    ld a, a
    ld [hl], a
    ld c, b
    ld c, b
    nop
    ld a, [de]
    nop
    jp z, Jump_000_1050

    rst RST_38
    ret c

    ld [de], a
    ld e, $60
    ld l, [hl]
    ld [hl], b
    ld d, d
    ld a, b
    rst RST_38
    ld c, b
    nop
    nop
    dec d
    ld [$0000], sp
    sub c
    rst RST_08
    jr z, jr_02d_70c2

jr_02d_70c2:
    nop
    sub l
    ld h, e
    jr nz, jr_02d_7075

    ld bc, $9449
    rst RST_38
    nop
    nop
    sub a
    ld h, b
    nop
    nop
    ld e, c
    add h
    rst RST_38
    nop
    nop
    ld [hl], $40
    or [hl]
    nop
    db $dd
    nop
    rst RST_30
    xor a
    nop
    jp c, Jump_000_2083

    push de
    nop
    ld a, l
    inc bc
    rst RST_38
    ret nc

    ld [$0202], sp
    ld c, d
    sub d
    ld [bc], a
    ld [bc], a
    rst RST_38
    sub d
    ld h, d
    ld [bc], a
    ld [bc], a
    ld d, d
    adc d
    ld [bc], a
    ld [bc], a
    rst RST_38
    ld a, [$00fa]
    nop
    cp l
    and b
    cp l
    or b
    sbc [hl]
    and h
    jr nz, jr_02d_7085

    add e
    add b
    rst RST_38
    ld a, [$b000]
    dec de
    ld e, a
    ld a, l
    ld e, a
    jr nz, jr_02d_7123

    nop
    add b
    rst RST_38
    add b
    add b
    ld h, b
    nop
    ld a, d
    ld sp, $df11
    xor [hl]
    ld bc, $fb02
    ld bc, $fa01

jr_02d_7123:
    inc bc
    ccf
    nop
    ldh a, [rP1]
    inc c
    nop
    inc bc
    xor b
    inc bc
    xor e
    db $10
    ld a, h
    scf
    ld bc, $21cb
    ld e, a
    nop
    ld a, [hl+]
    nop
    ld bc, $016c
    ei
    ld a, a
    ld b, c
    ld [bc], a
    inc de
    ld h, a
    ld c, b
    ld l, b
    ld l, a
    nop
    rst RST_38
    rlca
    ld hl, sp+$78
    ret nz

    jp Jump_000_38f8


    or $eb
    ld c, $f8
    rla
    ld de, $280a
    nop
    ld a, $07
    or $ff
    rlca
    db $f4
    rlca
    ld b, $f8
    ld sp, hl
    cp $c6
    rst RST_38
    cp a
    add c
    ldh a, [$ffcf]
    add b
    sbc a
    ret nc

    ld sp, $86ff
    halt
    rlca
    push af
    add a
    db $e4
    rlca
    inc [hl]
    rst RST_38
    ld b, e
    ld b, d
    ld a, h
    ld a, h
    ld a, a
    ld b, e
    ld c, e
    ld d, e
    rst RST_38
    ld e, d
    ld h, d
    sbc d
    sub d
    ldh [c], a
    ld h, d
    adc h
    ld l, h
    rst RST_38
    adc a
    db $eb
    ld c, $69
    inc c
    dec bc
    nop
    ld a, [hl-]
    rst RST_38
    ret nz

    jp z, $5290

    inc e
    call c, $de12
    cp a
    db $10
    ld e, $60
    ld h, [hl]
    ld e, b
    ld a, b
    ld h, b
    dec hl
    add hl, de
    ld a, l
    add hl, de
    ld [hl], b
    dec hl
    rst RST_38
    rst RST_38
    jp hl


    nop
    cp d
    adc c
    jr nz, @+$01

    xor $00
    cp c
    rlca
    jr nc, jr_02d_722c

    nop
    add a
    rst RST_38
    jr nc, jr_02d_7231

    xor l
    nop
    db $db
    nop
    ld l, l
    nop
    call Call_02d_67bb
    ld d, $00
    add b
    and b
    inc a
    or b
    inc a
    cp $ff
    rst RST_08
    inc bc
    ccf
    ld sp, hl
    ld sp, hl
    ldh [rNR41], a
    and $14
    rra
    ldh [$ffef], a
    dec b
    ld a, [$e7c0]
    and $17
    db $fd
    ld [bc], a
    ldh [$fff9], a
    rra
    add $37
    xor $26
    rst RST_38
    nop
    xor [hl]
    nop
    dec d
    cp $68
    ld [de], a
    rlca
    ld a, [hl]
    ld bc, $037c
    ld a, h
    inc bc
    rst RST_28
    ld a, b
    rlca

Call_02d_71f8:
    ld [hl], b
    rrca
    db $ec
    ld bc, $4040
    ld a, a
    ld sp, hl
    ld a, a
    jr jr_02d_7224

    jr jr_02d_7226

    ld c, a
    ld b, b
    jr z, jr_02d_7234

    ret nc

    rst RST_38
    rst RST_10
    nop
    rlca
    ldh a, [$fff0]
    rst RST_20
    rla
    rst RST_20
    rst RST_38
    ld d, $c7
    inc [hl]
    add a
    halt
    rlca
    db $f4
    ld a, d
    rst RST_38
    ld h, c
    ld a, b
    ld b, a
    ld l, b
    ld a, a
    add b
    add e

jr_02d_7224:
    db $f4
    rst RST_30

jr_02d_7226:
    ld [hl], h
    rst RST_20
    rla
    ld a, [hl+]
    ld b, b
    ld [hl], h

jr_02d_722c:
    ld [hl], b
    ld [hl], c
    ld c, d
    rst RST_38
    ld c, d

jr_02d_7231:
    ld d, e
    ld c, e
    ld h, d

jr_02d_7234:
    ld e, d
    ld [bc], a
    ld a, [hl-]
    pop bc
    ld a, a
    ret nz

    xor $2e
    adc c
    cpl

jr_02d_723e:
    ld b, b
    ld a, d

jr_02d_7240:
    ld d, b
    jr nc, jr_02d_7240

    jp nz, $3256

    ld e, [hl]
    nop
    ld c, $70
    ld [hl], b
    dec b
    rst RST_38
    di
    ld [$07e7], sp
    db $db
    nop
    cp h
    ld a, a
    ld a, [$1000]
    ld b, b
    db $ed
    nop
    ld d, b
    adc a
    jr nz, jr_02d_723e

    ret nz

    rst RST_20
    cp a
    nop
    ld a, a
    jp z, Jump_02d_6d22

    ld bc, $01fd
    db $fd
    rst RST_38
    ld [bc], a
    ei
    inc bc
    ei
    rst RST_38
    rst RST_38
    inc b
    rst RST_30
    db $e3
    inc b
    rst RST_30
    xor $37
    ld a, b
    ld b, l
    sub b
    ld c, l
    jr nz, jr_02d_72be

    jr nz, @+$01

    cp a
    db $10
    rst RST_18
    inc e
    rst RST_18
    rst RST_38
    rst RST_38
    ld [$ef77], sp
    ld [$9eef], sp
    ld c, a
    jp c, Jump_02d_7700

    add c
    jr nz, @+$01

    or [hl]
    nop
    ld a, l
    nop
    or a
    nop
    ld l, d
    nop
    rst RST_38
    cp l
    nop
    ld c, e
    nop
    ld d, e
    nop
    sbc l
    nop
    rst RST_38
    ld e, [hl]
    nop
    ld l, [hl]
    ld b, b
    ld [hl], d
    ld h, b
    ld a, b
    ld [hl], b
    rst RST_38
    jr c, @+$3a

    ld a, [de]
    sbc b
    dec c
    call z, $a607
    cp a
    inc bc
    ld h, d
    ld bc, $00d0

jr_02d_72be:
    cp h
    db $db
    ld b, b
    db $db
    di
    ld a, a
    ld a, a
    ld d, $43
    inc d
    ld b, e
    ld l, b
    ld l, e
    ret nz

    ret nz

    rst RST_38
    cp $3e
    cp $00
    db $fc
    ld [bc], a
    ldh [rNR34], a
    cp a
    ret nz

jr_02d_72d8:
    ld a, $80
    ld a, [hl]
    nop
    cp $24
    jr nc, jr_02d_72d8

    cp a
    cp a
    add a
    cp $c1
    cp b
    add a
    inc l
    ld sp, $ffc0
    rst RST_18
    add h
    ld [hl], l
    nop
    ld bc, $7e7e
    ld a, a
    rst RST_38
    ld h, c
    ld e, b
    ld b, a
    ld [hl], b
    ld l, a
    ld e, b
    ld c, a
    ld h, b
    rst RST_38
    ld h, b
    dec bc
    db $ec
    rrca
    ld l, b

jr_02d_7302:
    nop
    nop
    ld a, e
    rst RST_38
    ld a, e
    ld b, d
    ld c, d
    ld b, d
    ld e, d
    ld b, d
    ld a, e
    nop
    rst RST_28
    nop
    ld c, b
    ld a, d
    ld b, b
    ld d, c
    ld d, b
    add b
    add b
    ld e, $fb
    sbc $10
    ld e, c
    ld d, b
    nop
    nop
    ld a, h
    ld b, e
    ld [hl], b
    rst RST_38
    ld l, [hl]
    ld a, c
    ld c, c
    ld h, [hl]
    ld h, a
    ld a, [de]
    dec e
    ld a, [hl]
    ld a, a
    ld h, c
    ld a, [hl]
    ld bc, $03fc
    rra
    jr @+$04

    ld de, $7eff
    ld h, c
    ld e, h
    ld b, e
    ld a, b
    ld h, d
    ld c, b
    ld c, b
    rst RST_38
    ld h, [hl]
    ld h, [hl]
    add [hl]
    halt
    dec b
    push af
    add d
    ld [hl], e
    rst RST_38
    ld c, $c9
    inc a
    inc sp
    ld hl, sp-$39
    ld hl, sp-$39
    rst RST_38
    ldh a, [$ff8e]
    ld h, e
    ld a, h
    ld c, [hl]
    ld [hl], b
    ld a, l
    ld h, c
    rst RST_38
    ld e, e
    ld l, d
    ld h, a
    ld h, [hl]
    ld d, a
    ld d, h
    ld [hl], $26
    rst RST_38
    push af
    call nz, Call_000_002e
    add sp, $00
    rst RST_20
    inc bc
    rst RST_38
    rst RST_28
    rlca
    rst RST_18
    rrca
    ccf
    ld e, $fe
    ld a, h
    rst RST_38
    db $fc
    ld hl, sp+$18
    ld bc, $8210
    jr nz, jr_02d_7302

    rst RST_38
    ld b, b
    ld a, [bc]
    add b
    dec bc
    nop
    dec [hl]
    nop
    ld d, [hl]
    ei
    nop
    db $fd
    ld [$7041], sp
    inc c
    ld h, e
    inc de
    rrca
    rst RST_38
    ld c, h
    ccf
    jr nc, jr_02d_7414

    ld h, b
    ld a, [hl]
    ld b, c
    jr @-$1f

    ld e, $70
    ld l, [hl]
    ldh a, [$ff8e]
    jr jr_02d_73f2

    add c
    ld a, l
    rst RST_38
    add e
    ld [hl], d
    rrca
    db $ec
    ld sp, hl
    pop bc
    rst RST_30
    sub [hl]
    rst RST_38
    rst RST_00
    add $b7
    or h
    ld [hl], a
    ld b, [hl]
    or $84
    rst RST_38
    di
    nop
    db $f4
    ld [bc], a
    di
    ld bc, $01f3
    ld e, a
    jp $8701


    inc bc
    ld h, l
    adc $00
    ld h, d
    ldh [c], a
    jr nz, @-$0c

    cp $00
    ld a, a
    ld [bc], a
    ld b, c
    jp nz, $0f50

    ld h, b
    rra
    ret nz

    ld hl, sp-$2f
    nop
    nop
    ld d, b
    dec d
    ld b, d
    ld a, h
    ld h, e
    ld b, b
    ld c, a
    ld l, b
    cp $43
    ld d, b
    rst RST_30
    rst RST_30
    db $e4
    rla
    add $37
    add h
    rst RST_38
    ld [hl], h
    ld b, $f6
    nop
    ldh a, [rIF]

jr_02d_73f2:
    rrca
    rla
    rst RST_38
    rla
    db $f4
    rst RST_30
    ld b, $f7
    inc [hl]
    rst RST_00
    rst RST_30
    rst RST_38
    ld b, $b0
    add b
    rrca
    rrca
    ld [hl], b
    ld a, a
    rst RST_28
    rst RST_38
    rst RST_28
    ld [$28e9], sp
    set 5, b
    rrca
    ldh [rIE], a
    add b
    dec de
    dec de
    ld h, d

jr_02d_7414:
    ld l, d
    ld b, d
    ld c, e
    ld a, b
    rst RST_38
    ld a, d
    ld c, b

jr_02d_741b:
    ld [hl], d
    ld a, b
    ld b, d
    ld h, b
    ld b, b
    ld e, $fb
    ld e, $d0
    ld e, c
    ld d, c
    ret nc

    ld hl, sp-$0f
    ldh a, [$ffe2]
    cp a

jr_02d_742c:
    ldh [$ffc5], a
    ret nz

    adc e
    add b
    ld c, $ba
    ld d, b
    ld e, e
    rst RST_38
    nop
    halt
    ld a, [hl]
    ld h, c
    ld a, h
    ld b, e
    ld a, [hl]
    ld h, b
    rst RST_38
    ld a, c
    ld b, c
    ld a, [hl]
    ld h, a
    ld e, [hl]
    ld e, c
    ld a, $21
    rst RST_28
    ld a, h
    ld b, e
    sbc a
    db $10
    ld l, d
    ld d, b
    ld b, c
    ld a, h
    ld h, e
    rst RST_38
    ld a, h
    ld b, d
    ld a, d
    ld l, b
    ld [hl], h
    ld b, b
    ld b, b
    ld b, b
    rst RST_38
    rst RST_28
    rlca
    call c, $bc0c
    inc e
    db $fc
    ld a, h
    rst RST_38
    db $fc
    db $fc
    ld a, l
    ld a, h
    ld a, [hl-]
    jr c, jr_02d_741b

    jr nc, jr_02d_742c

    jr @+$03

    jr nc, jr_02d_7473

    jr nz, jr_02d_747a

jr_02d_7473:
    or [hl]
    ld d, b
    rla
    cp a
    nop
    dec l
    nop

jr_02d_747a:
    ld a, e
    nop
    xor l
    db $eb
    ld bc, $fe7e
    rst RST_10
    ld b, b
    ld [hl], e
    nop
    ld h, [hl]
    nop
    ld c, h
    nop
    inc e
    rst RST_38
    nop
    rrca
    ld [$181b], sp
    jr c, @+$3a

    ld a, h
    rst RST_38
    ld a, h
    ld a, [hl]
    ld a, h
    inc e
    inc e
    ld [bc], a
    nop
    inc b
    rst RST_38
    nop
    db $10
    ld de, $0280
    ret nz

    rlca
    ret nz

    adc e
    dec c
    nop
    xor c
    ld h, c
    halt
    sub l
    jr nc, @-$1e

    ld l, a
    or b
    dec sp
    ld a, [hl]
    db $d3
    ld bc, $0001
    ld d, c
    inc d
    ld h, e
    ld l, a
    ld [hl], a

jr_02d_74bb:
    jr nz, jr_02d_74bb

    cp $fa
    ld d, $32
    ld c, $1a
    ld d, d
    ldh a, [$fffc]
    ei
    db $fc
    jp $f8fd


    add hl, hl
    ld d, b
    ldh [$ff9f], a
    ret nc

    ld hl, sp+$07
    rlca
    rst RST_28
    rst RST_30
    or $40
    ld e, a
    inc bc
    db $10
    ld c, e
    ld l, b
    ld l, b
    cp $2c
    ld [hl], b
    db $f4
    rst RST_20
    inc d
    rst RST_00
    inc [hl]
    ld b, d
    ld e, e
    rst RST_38
    ld h, b
    ld b, b
    rrca
    rrca
    ld l, c
    ld l, [hl]
    res 5, h
    rst RST_38
    ret


jr_02d_74f2:
    inc l
    adc h
    ld l, b

jr_02d_74f5:
    inc bc
    db $e3
    ld [$bd8a], sp
    ld [hl], b
    ld d, c
    ld d, c
    ld a, b
    ld h, [hl]
    ld b, [hl]
    jr jr_02d_755b

    ld h, b
    ret nc

    rst RST_38
    inc e
    or c
    ld de, $26e0
    add b
    ld c, b
    add b
    rst RST_38
    db $10
    add b
    and a
    jr nz, jr_02d_74bb

    inc bc
    daa
    sub b
    rst RST_30
    db $10
    add b
    add b
    ld h, h
    nop
    ld b, c
    inc e
    ld a, $00
    rst RST_18
    ret nz

    nop
    ld hl, $c080
    ld h, h
    nop
    ld a, h
    add d
    cp a
    add d
    ld a, h
    ld a, h
    nop
    nop
    inc a
    sub a
    ld b, b
    ld a, [hl]
    db $f4
    add hl, hl
    nop
    add b
    inc l
    rrca
    add b
    jr c, jr_02d_75bc

    nop
    ld hl, sp+$00
    ld sp, hl
    add b
    sub b
    jr c, jr_02d_74f2

    ld [bc], a
    or b
    inc e

jr_02d_7548:
    ldh [$ff38], a
    add b
    ld b, a
    ld [hl], b
    add b
    ld h, b
    ld a, h
    ld [hl], b
    and c
    jr nc, jr_02d_74f5

    ld sp, $14c0
    nop
    sub a
    cp b
    nop

jr_02d_755b:
    rst RST_28
    rst RST_10
    ld b, b
    rst RST_10
    sub e
    jr nc, jr_02d_7548

    rla
    ldh [$ff2f], a
    nop
    ld d, a
    nop
    xor l
    or b
    ld a, [hl-]
    ld l, l
    sub c
    jr nc, jr_02d_7580

    add b
    ld [de], a
    ld a, [de]
    ld c, b
    ld h, b
    rrca
    ld a, h
    ld a, b
    ld [hl], b
    ld h, b
    ld h, b
    rrca
    ld [de], a
    ld a, a
    ld [bc], a
    ld e, [hl]
    ld a, [hl]

jr_02d_7580:
    ld c, b
    ld h, b
    add a
    rst RST_00
    add h
    ld b, $01
    ld b, $3e
    cp $c4
    add b
    adc a
    ld sp, $6343
    ld c, h
    ld [hl], e
    ld a, [bc]
    ld a, e
    ld c, d
    ld e, c
    ld h, [hl]
    ld [$08e8], sp
    ld b, b
    sbc b
    ld h, b
    ld b, b
    ld b, [hl]
    ld c, b
    db $10
    ld d, b
    adc b
    ret nz

    ld [hl], b
    cp b
    rst RST_28
    ld a, l
    rst RST_10
    ld l, l
    nop
    inc e
    add b
    nop
    nop
    ret nz

    ld e, b
    xor e
    nop
    nop
    inc e
    nop
    inc e
    nop
    nop
    cp d
    ld h, b
    ret nz

jr_02d_75bc:
    inc bc
    rra
    ld [de], a
    ld a, a
    ld [bc], a
    ld a, [hl]
    ld c, $12
    ld hl, sp+$02
    ldh a, [$ffe0]
    add c
    rlca
    db $fc
    ld hl, sp-$10
    di
    add $34
    add $c5
    ld b, h
    ld [hl], $c5
    rlca
    inc b
    inc bc
    dec c
    sub c
    dec c
    inc bc
    sbc e
    inc hl
    ld b, d
    ld b, c
    ld b, [hl]
    ld c, b
    jp nc, $b9ca

    ld a, d
    halt
    ld c, [hl]
    ld e, $1c
    pop hl
    inc bc
    nop
    ld [de], a
    rla
    ld [bc], a
    rst RST_10
    dec de
    add c
    ret


    ld bc, $12d5
    pop de
    ld [bc], a
    or l
    dec bc
    dec bc
    ld bc, $f100
    ld bc, $00f8
    and c
    xor c
    and c
    dec b
    ld bc, $8318
    db $10
    ld bc, $0111
    sub c
    ld bc, $0191
    ld bc, $0900
    nop
    rla
    nop
    add hl, de
    nop
    ld [hl], $01
    ld de, $9101
    ld bc, $0191
    add hl, de
    ld sp, hl
    ld [de], a
    ld bc, $f904
    ld [de], a
    ld bc, $f904
    ld bc, $01f9
    rlca
    nop
    ld [de], a
    inc bc
    inc bc
    di
    inc bc
    ret nz

    nop
    ld [de], a
    add b
    inc bc
    sbc a
    add b
    ld e, e
    ld h, b
    rrca
    ld [hl], e
    rlca
    rrca
    rra
    rra
    rrca
    ld [hl], b
    ld b, b
    ld h, b
    ld b, c
    ld h, c
    ld c, d
    ld h, b
    ld a, h
    ld [hl], $74
    or $f1
    rst RST_00
    add hl, sp
    pop bc
    scf
    ld [hl], b
    adc a
    ld a, $7c
    ld a, b
    ld a, b
    ld h, e
    dec bc
    ld [hl], d
    ld [hl], d
    ld h, c
    ld b, a
    add hl, bc
    db $eb
    ld a, [hl+]
    ld [bc], a
    ld a, [de]
    ld a, d
    ld a, b
    halt
    ld c, [hl]
    ld e, $5c
    ld [$0106], sp
    ld [de], a
    nop
    inc b
    ld b, c
    ld a, $c0
    jr c, jr_02d_767e

    ld [de], a
    nop
    ld [bc], a
    ld a, $41
    ld a, $00

jr_02d_767e:
    rst RST_38
    ld [de], a
    nop
    ld [bc], a
    rra
    inc a
    ld h, e
    inc e
    ld [hl], b
    ld h, b
    ld b, b
    ld h, c
    ld c, $f6
    ld [de], a
    ld b, $02
    ld e, $79
    and $c1

jr_02d_7693:
    add l
    call z, $c693
    inc [hl]
    or $34
    ld b, h
    scf
    call nc, $f436
    ld [hl], e
    xor $9e
    jp hl


    ldh [c], a
    jp c, Jump_02d_7a3a

    ld a, c
    ld h, a
    ld c, a
    ld [de], a
    nop
    inc bc
    ld [bc], a
    ld b, $0c
    jr jr_02d_7693

    inc bc
    nop
    ld d, a
    rst RST_10
    rla
    rst RST_10
    dec de
    add c
    push hl
    ld bc, $d1f1
    push de
    pop de
    or c
    dec bc
    ld l, e
    pop hl
    nop
    pop af
    ld bc, $00f8
    and c
    and l
    and c
    ld bc, $8081
    add e
    nop
    inc bc
    dec bc
    inc bc
    dec hl
    inc bc
    dec bc
    inc bc
    inc bc
    add b
    sub h
    add b
    and b
    add b
    add h
    add b
    add b
    inc bc
    dec bc
    inc bc
    dec hl
    inc bc
    dec bc
    inc bc
    dec de
    ld sp, hl
    add hl, bc
    add hl, sp
    ld a, c
    ld sp, hl
    ld bc, $01f9
    add hl, bc
    ld a, c
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    ld bc, $f3f7
    push af
    ld d, l
    dec h
    dec b
    push af

Jump_02d_7700:
    dec b
    rst RST_08
    sbc a
    ld e, a
    ld e, a
    ld e, [hl]
    ld b, l
    ld a, a
    ld b, b
    dec e
    nop
    ld [hl], b
    rst RST_08
    nop
    nop
    nop
    rst RST_38
    nop
    inc b

Call_02d_7713:
    ld bc, $ff01
    nop
    rst RST_38
    inc bc
    ld hl, sp-$05
    ld [$e80b], sp
    db $eb
    jr z, @+$01

    dec hl
    ld l, b
    ld l, e
    ld l, c
    ld l, d
    ld l, d
    ld l, c
    ld a, a
    rst RST_38
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, [hl]
    add c
    ld a, $7f
    pop bc
    ld e, [hl]
    and c
    inc l
    db $d3
    inc e
    db $e3
    dec c
    ld bc, $fefb
    ld bc, $0132
    ld a, l
    add d
    ld a, h
    add e
    jr z, @+$81

    rst RST_10
    ld [$5015], a
    xor a
    and b
    ld e, a
    inc c
    ld [bc], a
    cp $47
    ld [bc], a
    rst RST_38
    nop
    cp a
    ld b, b
    ld e, a
    and b
    xor a
    rst RST_38
    ld d, b
    rla
    add sp, $0b
    db $f4
    rla
    add sp, $03
    rst RST_30
    db $fc
    nop
    ld a, a
    ld h, b
    ld [bc], a
    ld h, b
    rrca
    ld l, a
    ld [$681f], sp
    dec bc
    ld l, e
    ld [$466a], sp
    inc b
    ld c, [hl]
    ld bc, $0277
    ld c, [hl]
    inc c
    ld [bc], a
    ldh [rP1], a
    rst RST_28
    add h
    nop
    add l

jr_02d_7782:
    ld bc, $72ef
    inc bc
    db $e4
    ld b, $08
    sub c
    add hl, bc
    db $fc
    xor h
    nop
    dec c
    ld bc, $003f
    cp a
    db $ed
    add b
    or a
    inc b
    inc hl
    ld l, b
    ret nz

    dec bc
    inc l
    db $d3
    ld a, h
    rst RST_38
    add e
    ld a, [hl-]
    push bc
    ld a, h
    add e
    ld a, $c1
    ld a, [de]
    sbc a
    push hl
    jr z, jr_02d_7782

    inc d
    db $eb
    ld b, [hl]
    rlca
    ld b, [hl]
    inc bc
    dec b
    rst RST_38
    ld a, [$fc03]
    ld bc, $02fe
    db $fd
    ld bc, $fe0d
    ld b, [hl]
    inc bc
    add hl, bc
    ld l, e
    nop
    dec de
    adc h
    ld [bc], a
    ld de, $e119
    inc c
    ldh a, [$ffac]
    ld [bc], a
    ld sp, $b818
    dec b
    cp b
    dec b
    adc d
    push af
    dec c
    di
    ld a, a
    sub l
    db $eb
    adc c
    rst RST_30
    add c
    rst RST_38
    jp Jump_000_1259


    rst RST_38
    ld b, c
    cp a
    ld l, b
    sbc a
    inc h
    rst RST_18
    ld e, b
    cp a
    rst RST_38
    inc c
    rst RST_38
    adc h
    rst RST_38
    sbc c
    rst RST_38
    ld [$ffff], sp
    ld b, b
    rst RST_38
    xor b
    rst RST_38
    push de
    rst RST_38
    ld [$4fff], a
    push af
    rst RST_38
    cp $ff
    ld a, e
    ld de, $0346
    and b

jr_02d_7805:
    ld l, a
    db $10
    ld [$1376], a
    db $e3
    adc a
    ld [de], a
    di
    adc a
    ld d, $0d
    rst RST_38
    rrca
    cpl
    rst RST_38
    rra
    rst RST_38
    sbc a
    and l
    ld [de], a
    rst RST_18
    ld a, e
    ld [de], a
    xor [hl]
    dec de
    cp $70
    ld de, $ffd0
    cp b
    rst RST_38
    call nc, $e8ff
    ei
    rst RST_38
    db $f4
    ret


    db $10
    rst RST_28
    nop
    ld l, a
    nop
    adc a
    rst RST_38
    add b
    ld c, a
    ret nz

    daa
    ldh a, [$ff33]
    ld hl, sp-$68
    db $d3
    db $fc
    call z, $04f9

Call_02d_7841:
    ld b, [hl]
    ld b, $7f
    ld b, b
    jr jr_02d_7805

    add b
    rst RST_18
    cp h
    add c
    cp b
    inc hl
    ld c, b
    nop
    ld hl, $0803
    rst RST_38
    inc hl
    jr z, jr_02d_7899

    ld [hl], b
    inc de
    ldh a, [$fff3]
    ldh a, [$ff97]
    pop hl
    rst RST_38
    db $eb
    ld [hl], a
    db $10
    db $eb
    sub l
    db $10
    ld d, $21
    rst RST_30
    and $7e
    inc d
    rst RST_30
    ld [$106d], sp
    daa
    jr nz, @-$07

    nop
    db $fc
    rst RST_30
    inc bc
    ld a, [$0d05]
    nop
    ld bc, $03fe
    ld sp, hl
    rst RST_38
    nop
    pop bc
    ld [bc], a
    db $e3
    inc h
    or $18
    db $ed
    ld a, a
    ld bc, $17e7
    rst RST_38
    rlca
    rst RST_38
    inc bc
    ld [hl], $20
    rst RST_38
    nop
    db $fd
    inc bc
    ld h, e
    ld h, h
    rst RST_00
    ret z

    rst RST_00

jr_02d_7899:
    rst RST_38
    call z, $ccc1
    call nz, $0eca
    add hl, sp
    ccf
    rst RST_38
    ret z

    rst RST_30
    nop
    cp $03
    db $fd
    ld b, $ff
    rst RST_30
    inc b
    db $db
    inc a
    ld b, a
    dec b
    rst RST_30
    inc c
    ei
    nop
    xor $72
    jr nz, jr_02d_78bf

    db $fc
    ld [bc], a
    inc [hl]
    ld bc, $00ff

jr_02d_78bf:
    db $ed
    rst RST_38
    rst RST_38
    push hl
    rst RST_38
    dec b
    rst RST_38
    ld hl, sp-$01
    ld bc, $46fa
    jr nz, @-$02

    ld c, b
    jr nz, jr_02d_790f

    nop
    ld e, a
    ret nz

    rst RST_28
    rst RST_38
    ldh [$ffa3], a
    ldh a, [rNR42]
    ld hl, sp+$34
    db $fc
    ld [hl], l
    db $fc
    add c
    jr nz, jr_02d_7911

    ld a, [de]
    ld a, b
    add c
    nop
    or b
    inc bc
    add h
    rst RST_38
    rlca
    adc a
    rrca
    add hl, de
    rra
    nop
    ccf
    ld a, [hl]
    ei
    ld a, a
    jp Jump_000_2087


    inc hl
    ret z

    inc bc
    ret z

    ld sp, $fcff
    pop de
    db $fc
    sbc b
    inc a

jr_02d_7901:
    jr jr_02d_7941

    ld [de], a
    rst RST_10
    and $a0
    db $e4
    adc h
    ld hl, $0dfe
    nop
    cp $ff

jr_02d_790f:
    rst RST_10
    ld a, a

jr_02d_7911:
    rst RST_38
    jr nz, jr_02d_7901

    db $10
    inc c

jr_02d_7916:
    ld l, l
    db $10
    ld hl, sp-$01
    rst RST_38
    ld b, b
    sbc a
    rlca
    sbc a
    rst RST_38
    rst RST_38
    jr jr_02d_7916

    rst RST_38
    ld [hl], b
    di
    jp $e0c3


    rst RST_20
    db $eb
    ei
    rst RST_38
    push de
    db $fd
    sub $fe
    db $db
    di
    inc de
    di
    rst RST_18
    ld a, c
    rst RST_38
    ldh [rIE], a
    jr c, jr_02d_79a7

    db $10
    sbc c
    rst RST_38
    rst RST_38
    adc c

jr_02d_7941:
    rst RST_38
    add hl, de
    ccf
    sub b
    sbc [hl]
    call nz, $ffec
    db $10
    ld hl, sp-$7f
    pop af
    and d
    ldh [$ff82], a
    pop bc
    rst RST_38
    ld a, [bc]
    add b
    dec bc
    nop
    dec hl
    nop
    ld l, e
    nop
    rst RST_38
    ei
    inc c
    di
    inc d
    rst RST_00
    ld [$4847], sp
    rst RST_38
    jp $e3c4


    db $e4
    db $e3
    db $e4
    rst RST_00
    ret z

    rst RST_38
    sbc h
    rra
    rst RST_08
    rrca
    pop hl
    rlca
    ldh [$ff0b], a
    ld a, [$0189]
    pop hl
    dec sp
    jr nc, jr_02d_798b

    rst RST_38
    ldh a, [rIE]
    cp a
    rst RST_38
    rst RST_38
    inc c
    rst RST_38
    jr nc, @+$01

    rlca
    ld a, a
    nop
    rst RST_28
    sbc a

jr_02d_798b:
    ldh [$ffe7], a
    add c
    ld c, l
    ld bc, $10ff
    rst RST_38
    rst RST_18
    dec bc
    di
    ldh a, [$fff3]
    rlca
    ld a, c
    db $10
    ret nz

    ldh a, [rIE]
    ret nc

    ld hl, sp+$34
    cp $75
    rst RST_38
    adc l

jr_02d_79a5:
    rst RST_38
    rst RST_38

jr_02d_79a7:
    inc de
    rst RST_38
    ldh a, [c]
    rst RST_38
    ld b, $ff
    jr nz, jr_02d_79fa

    cp $70
    ld [hl-], a
    ld a, [bc]
    add b
    adc b
    ret nz

    bit 0, e
    ldh [rIE], a
    ld e, e
    ld hl, sp-$71
    sbc b
    adc a
    sbc b
    rla
    inc l
    rst RST_38
    dec sp
    ld b, b
    or e
    add $e5
    ld l, b
    db $fd
    ld [bc], a
    rst RST_30
    rst RST_38
    nop
    ret nz

    or e
    ld [hl+], a
    jr nz, @+$41

    ld e, $7f
    rst RST_38
    ld sp, hl
    rst RST_38
    ld h, d
    rst RST_38
    jp nc, $30ff

    di
    db $fd
    inc c
    db $dd
    db $10
    ld l, l
    rst RST_38
    add hl, hl
    rst RST_38
    ld e, b
    cp $ff
    sub h
    db $fc
    sbc b
    ld hl, sp+$41
    rst RST_38
    ld e, $ff
    rst RST_38
    db $10
    ld a, a
    add h
    cp a
    ld bc, $400f
    inc bc

jr_02d_79fa:
    rst RST_08
    nop
    ld bc, $001c
    call nc, Call_02d_7e21
    ld de, $fff8
    rst RST_30
    rst RST_00
    rst RST_38
    ld a, b
    ld b, [hl]
    jr nz, jr_02d_79a5

    db $fc
    sub d
    and $ff
    ld [bc], a
    and $36
    cp $a4
    cp $e5
    db $fc
    ld a, a
    add hl, de
    db $fc
    pop af
    db $fc
    dec c
    rst RST_38
    db $dd
    ld [hl], e
    db $10
    rst RST_38
    add hl, hl
    rst RST_38
    ld l, e
    rst RST_38
    adc $fe
    ld l, h
    db $fc
    rst RST_38
    ld e, c
    ld hl, sp+$31
    ldh a, [$ff67]
    ldh [$ffcf], a
    ret nz

    rst RST_20
    sbc a
    add b
    ccf
    ld h, b
    nop

Jump_02d_7a3a:
    ld [hl], e
    ld [bc], a
    ccf
    nop
    sbc a
    sbc a
    and b
    adc a
    or b
    add e
    cp h
    ld a, [$b710]
    ld bc, $ff01
    ld hl, sp+$03
    ld hl, sp+$43
    sbc b
    inc bc
    sub b
    inc bc
    rst RST_38
    ldh a, [$ff03]
    ld [hl], b
    inc bc
    nop
    inc bc
    ld c, b
    ldh [rIE], a
    inc bc
    ret nz

    rlca
    add b
    rrca
    nop
    rrca
    nop
    ld sp, hl
    cpl
    pop de
    db $10
    adc l
    nop
    ld c, e
    ld l, b
    ld c, c
    ld l, d
    ld c, d
    rst RST_18
    ld l, c
    ld c, c
    ld l, d
    ld c, b
    ld l, e
    jr c, jr_02d_7ab8

    ld l, d
    ld c, b
    ld a, l
    ld l, b
    jr z, jr_02d_7a96

    ldh a, [$ff03]
    jp Jump_000_0c0f


    ld c, b
    ld b, l
    rst RST_38
    inc a
    inc sp
    ldh a, [$ffcf]
    ret nz

    ccf
    nop
    rst RST_38
    cp b
    cp b
    ld bc, $00b4
    ld b, a
    ld b, $23

jr_02d_7a96:
    ld l, e
    jr nz, jr_02d_7b0a

    ld b, c
    ld l, d
    ei
    jr nz, jr_02d_7b06

    ld [hl], d
    ld b, c
    nop
    rlca
    nop
    db $ec
    nop
    ld a, a
    ldh [$ff03], a
    db $e3
    inc c
    db $ec
    nop
    db $e3
    adc [hl]
    inc bc
    rst RST_08
    jr nc, jr_02d_7ae5

    ret nz

    rst RST_08
    ld h, h
    ld c, c
    jr z, jr_02d_7ad0

jr_02d_7ab8:
    ld hl, sp+$00
    ld a, c
    rst RST_00
    ld h, $40
    ld c, c
    ld b, b
    ld bc, $0ac0
    dec b
    ld sp, hl
    inc [hl]
    cp $7e
    inc d
    db $fd
    ld [bc], a
    xor $11
    db $f4
    dec bc
    xor b

jr_02d_7ad0:
    rst RST_30
    ld d, [hl]
    ld b, b
    cp b
    ret z

    ld b, l
    add b
    ld h, e
    inc bc
    adc a
    rst RST_28
    rrca
    ccf
    ld a, $fe
    ret c

    ld b, l
    ld hl, sp-$08
    ldh [$fff7], a

jr_02d_7ae5:
    ldh [$ff8d], a
    adc a
    nop
    nop
    ld hl, sp+$01
    db $e3
    nop
    ld a, a
    add b
    ld [$2a00], sp
    ld d, l
    ld b, b
    cp a
    inc c
    ld [bc], a
    db $fd
    ld hl, sp+$3b
    jr nc, @-$7c

    dec bc
    rra
    nop
    nop
    ld a, [bc]
    ld d, a
    jr nz, jr_02d_7b4f

    or l

jr_02d_7b06:
    cp $44
    adc d
    nop

jr_02d_7b0a:
    nop
    rra
    jp nz, $db32

    nop
    ld de, $0176
    rst RST_38
    add hl, sp
    dec bc
    ld [bc], a
    rst RST_38
    rst RST_38
    cp a
    add b
    nop
    ld h, a
    nop
    ld c, b
    or a
    ld a, [de]

jr_02d_7b21:
    ld d, e
    or c
    rst RST_30
    nop
    and l
    ld e, d
    jr z, jr_02d_7b7c

    nop
    nop
    ld d, c
    jr nz, jr_02d_7b21

    adc d
    ld [hl], l
    ld c, d
    inc b
    inc bc
    nop
    sub c
    nop
    ld d, l
    xor d
    ld a, e
    ld [bc], a
    db $fd
    ld a, [$0b08]
    add hl, bc
    db $eb
    jp hl


    ld h, a
    ld d, d
    add c
    adc b
    dec d
    ld d, c
    ld h, c
    inc bc
    ld [hl], e
    ld d, l
    sbc e
    rlca
    jp hl


    inc d

jr_02d_7b4f:
    ld [hl], d
    ld e, [hl]
    ld a, a
    dec b
    ld b, b
    and h
    ld d, c
    ld c, a
    xor b
    ld d, e
    sub h
    dec c
    xor b
    ld d, l
    xor b
    ld d, l
    sbc c
    ld c, l
    call nz, Call_02d_56c0
    and h
    ld d, b
    ld a, a
    ld a, a
    ld e, c
    nop
    ld bc, $0003
    ld b, c
    ld b, c
    rst RST_38
    ld b, c
    ld e, l
    ld b, c
    ld e, l
    ld b, l
    ld e, c
    ld c, c
    ld d, l
    rst RST_28
    ld d, l
    ld c, c
    ld c, l

jr_02d_7b7c:
    ld d, c
    inc bc
    ld h, b
    ld b, c
    ld e, c
    ld b, l
    db $db
    ld d, c
    ld c, l
    ld [bc], a
    ld h, b
    ld b, c
    ld a, a
    ld a, [de]
    ld h, d
    ld [$ff00], sp
    dec d
    nop
    ld l, d
    nop
    scf
    nop
    ld a, [hl]
    nop
    cp a
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
    ld d, l
    ld b, h
    dec sp
    ld [$8001], sp
    rst RST_38
    nop
    ld d, b
    nop
    xor d
    nop
    ld d, h
    add b
    xor d
    rst RST_30
    ld b, b
    dec [hl]
    ret nz

    sub b
    ld e, l
    ld c, d
    and b
    inc [hl]
    ret nz

    cp a
    ld e, d
    and b
    inc l
    ret nc

    ld [$52e0], sp
    ld h, c

jr_02d_7bbc:
    jr nc, jr_02d_7bbc

    ccf
    ld h, l
    ld h, b
    rrca
    rrca
    ld a, b
    ld a, b
    nop
    nop
    rst RST_38
    inc bc
    inc bc
    nop
    and b
    nop
    ret nc

    nop
    nop
    rst RST_38
    ld d, h
    ld d, h
    ret nz

    ret nz

    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    rst RST_28
    ld [hl], b
    ld [hl], b
    nop
    ld e, a
    add b
    ld l, h
    ld l, b
    nop
    ld [hl], b
    jp z, Jump_02d_6090

    ld d, h
    sub b
    ld h, b
    ld d, b
    sbc b
    ld h, d
    add c
    ld h, l
    ld e, [hl]
    nop
    rst RST_38
    ld e, c
    nop
    ld b, a
    nop
    inc e
    ld l, d
    ld l, d
    ld [hl], b
    rst RST_38
    ld [hl], b
    ld h, h
    ld h, h
    db $10
    db $10
    ld h, b
    ld h, b
    ret nz

    rst RST_18
    jp $0d02


    dec b
    ld a, [hl-]
    ld [$0002], sp
    jr z, @+$01

    nop
    ld d, l
    nop
    nop
    xor d
    ld bc, $56fc
    rst RST_38
    ld hl, sp+$00
    ld [hl], b
    inc bc
    ld b, b
    rrca
    nop
    rla
    ld b, b
    jr z, jr_02d_7c61

    ret z

    ld h, b

jr_02d_7c23:
    ld [hl], c
    ld d, b
    ld b, a
    ld b, $88
    jr nz, jr_02d_7c23

    ld d, d
    rlca
    and e
    db $10
    ld bc, $ae3f
    inc de
    inc b
    ld bc, $00ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02d_7c61:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02d_7e21:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02d_7f0f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
