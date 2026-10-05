; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02a", ROMX[$4000], BANK[$2a]

    jr nz, jr_02a_4042

    ccf
    ld b, l
    ld e, d
    ld c, d
    ld h, e
    ld d, b
    ret nz

    ld d, c
    ld a, [hl+]
    ld d, a
    dec hl
    ld d, a
    xor $5c
    sub a
    ld e, [hl]
    inc b
    ld h, h
    dec b
    ld h, h
    ld bc, $0269
    ld l, c
    ld d, c
    ld l, l
    ld d, d
    ld l, l
    sub h
    ld [hl], h
    dec e
    add b
    add b
    rst RST_30
    jp $bdc3


    ld [bc], a
    ld [$c3c3], sp
    rst RST_30
    rst RST_30
    or a
    rst RST_20
    rst RST_20
    rst RST_30
    inc d
    ld b, $e3
    db $e3
    nop
    inc bc
    ei
    rst RST_38
    ei
    rst RST_20
    rst RST_20
    rst RST_18
    rst RST_18
    cp a
    cp a
    add c
    ld a, l

jr_02a_4042:
    add c
    nop
    ld bc, $fdfd
    db $e3
    db $e3
    db $fd
    jr c, jr_02a_404c

jr_02a_404c:
    cp $0c
    ld bc, $fbfb
    di
    di
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
    ld c, h
    nop
    add c
    db $db
    add c
    cp a
    ld d, d
    nop
    add e
    add e
    jr c, jr_02a_4070

    rst RST_30
    rst RST_30
    sbc e
    rst RST_28
    rst RST_28
    nop
    dec b

jr_02a_4070:
    jp Jump_02a_4ac3


    ld bc, $0114
    rst RST_28
    ld h, b
    ld a, b
    inc b
    nop
    inc bc
    ld h, [hl]
    rlca
    ld h, [hl]
    rlca
    ld h, d
    ld bc, $dfdf
    inc e
    ld bc, $a2ec
    ld bc, $0114
    rst RST_38
    rst RST_38
    inc e
    ld bc, $dddd
    cp [hl]
    sub $b4
    nop
    ld sp, hl
    ld sp, hl
    xor d
    inc bc
    rst RST_38
    ret nz

    nop
    pop de
    pop de
    rst RST_38
    rst RST_18
    rst RST_18
    add c
    add c
    sbc $de
    reti


    reti


    ei
    rst RST_18
    rst RST_18
    ret nz

    ld bc, $fbfb
    and c
    and c
    sbc d
    ld a, a
    sbc d
    cp d
    cp d
    and c
    and c
    ei
    ei
    ret nc

    inc bc
    rst RST_38
    ld hl, sp-$08
    ei
    ei
    jp $b9c3


    cp c
    ei
    add $c6
    ret nz

    ld bc, $ffff
    add c
    add c
    cp $9e
    ld hl, sp+$00
    ld sp, hl
    ld sp, hl
    rst RST_20
    rst RST_20
    ldh a, [$ff03]
    ret nz

    ld bc, $f7f5
    push af
    ld a, [$acfa]
    ld bc, $8181
    rst RST_28
    rst RST_28
    rst RST_38
    ldh [c], a
    ldh [c], a
    call $aacd
    xor d
    and [hl]
    and [hl]
    db $db
    push de
    push de
    ret nz

    ld bc, $bdbd
    or h
    ld bc, $bebe
    rst RST_38
    sbc [hl]
    sbc [hl]
    rst RST_08
    rst RST_08
    db $e3
    db $e3
    rst RST_38
    rst RST_38
    rst RST_28
    pop bc
    pop bc
    cp [hl]
    cp [hl]
    ld hl, sp+$01
    db $fd
    db $fd
    di
    db $ed
    di
    cp $01
    add b
    add b
    ld b, b
    dec b
    cp b
    cp b
    rst RST_28
    rst RST_38
    rst RST_28
    push hl
    push hl
    adc [hl]
    adc [hl]
    db $e3
    db $e3
    call $cdfb
    xor [hl]
    ld e, d
    db $10
    call $dfcd
    rst RST_18
    add l
    ei
    add l
    jp c, $1264

    cp e
    cp e
    xor e
    xor e
    or a
    ld a, a
    or a
    rst RST_28
    rst RST_28
    add b
    add b
    rst RST_30
    rst RST_30
    ld b, h
    ld de, $dd3f
    db $dd
    cp a
    cp a
    ret nz

    ret nz

    ld b, b
    ld bc, $0328
    cp a
    rst RST_08
    rst RST_08
    di
    di
    ld sp, hl
    ld sp, hl
    ld a, [hl-]
    ld bc, $3da0
    and b
    ld [bc], a
    inc bc
    db $dd
    db $dd
    ei
    ei
    ld [hl], $01
    ldh a, [$ff03]

Call_02a_415e:
    sbc $52
    ld bc, $c0c0
    rst RST_18
    rst RST_18
    ld [hl], b
    ld de, $fbfb
    cp [hl]
    inc [hl]
    ld de, $bfbf
    pop bc
    pop bc
    rst RST_18
    ret nz

    ld d, $de
    cp $ca
    db $10
    pop hl
    pop hl
    db $fd
    db $fd
    add b
    add b
    db $fd
    rst RST_28
    db $fd
    pop hl
    pop hl
    db $dd
    ret c

    db $10
    pop hl
    pop hl
    ei
    ei
    ei
    db $db
    ldh [rNR10], a
    add b
    add b
    db $db
    db $db
    db $d3
    db $fd
    db $d3
    ret nz

    ld de, $e0e0
    reti


    reti


    db $eb
    db $eb
    cp a
    or $f6
    pop hl
    pop hl
    sbc e
    sbc e
    inc d
    ld bc, $fdf9
    ld sp, hl
    nop
    dec d
    ld hl, sp-$08
    ld a, [$f8fa]
    ld hl, sp-$02
    nop
    rla
    rst RST_38
    rst RST_38
    adc a
    adc a
    xor a
    xor a
    adc a
    rst RST_28
    adc a
    nop
    nop
    nop
    inc bc
    ld a, [de]
    db $eb
    db $eb
    ret nz

    rst RST_38
    ret nz

    xor e
    xor e
    set 0, e
    jp hl


    pop hl
    ld [$eadf], a
    add c
    add c
    db $eb
    db $eb
    ldh a, [$ff03]
    pop bc
    pop bc
    ret c

    ld c, $29
    xor h
    ld bc, $03be
    rst RST_38
    rst RST_38
    nop
    dec b
    add c
    add c
    add [hl]
    ld [bc], a
    inc bc
    add e
    add e
    ld l, h
    daa
    ld l, [hl]
    ld hl, $01c0
    ld a, [hl-]
    inc de
    set 0, c
    bit 1, h
    ld bc, $2576
    ld a, b
    add hl, hl
    ld [hl-], a
    ld de, $0314
    add b
    add b
    ldh a, [$ffd0]
    inc bc
    ld a, [hl]
    inc de
    ld b, h
    ld bc, $01c0
    rst RST_28
    rst RST_28
    ret nz

    ret nz

    cp a
    xor $ee
    push af
    push af
    rst RST_30
    rst RST_30
    sbc $03
    rst RST_38
    reti


    rst RST_38
    adc $11
    jr c, jr_02a_421e

    ret nz

jr_02a_421e:
    ret nz

    ldh a, [$ff03]
    ldh [$ffe0], a
    rst RST_38
    cp $fe
    ldh a, [$fff0]
    cp $fe
    ldh [$ffe0], a
    ldh a, [c]

jr_02a_422d:
    ldh a, [$ff03]
    sub $f6
    jr nz, jr_02a_422d

    ld bc, $c7c7
    rst RST_30
    rst RST_30
    ld a, [hl]
    and [hl]
    ld hl, $f0f0
    rst RST_20
    rst RST_20
    db $db
    db $db
    db $ec
    ld de, $80ff
    add b
    cp $fe
    push af
    push af
    di
    di
    ld h, [hl]
    inc d
    inc bc
    rst RST_08
    rst RST_08
    jr c, jr_02a_4266

    sbc [hl]
    ld de, $9b9b
    ld c, h
    ld bc, $74c0
    ld de, $01b4
    ld a, [hl-]
    ld de, HeaderTitle
    and h
    daa
    xor d
    inc hl

jr_02a_4266:
    ei
    ei
    ld h, $44
    inc de
    db $e3
    db $e3
    ld b, h
    inc bc
    ld [hl], b
    ld de, $64ee
    ld [hl-], a
    jp z, $9b11

    cp l
    cp l
    ld [hl], b
    ld de, $efef
    ld c, d
    dec [hl]
    sbc $01
    ret nz

    rst RST_18
    ret nz

    sbc $de
    cp [hl]
    cp [hl]
    jr c, jr_02a_428b

    ei

jr_02a_428b:
    ei
    rst RST_38
    rst RST_00
    rst RST_00
    rst RST_18
    rst RST_18
    ret nz

    ret nz

    cp e
    cp e
    ldh [$ff2c], a
    inc sp
    inc e
    ld sp, $1142
    ld hl, sp+$01
    and h
    inc sp
    add b
    add b
    db $dd
    call $aedd
    ld sp, $dddd
    inc h
    ld sp, $0126
    cp $fe
    di
    adc [hl]
    adc [hl]
    ret nz

    ld sp, $0138
    di
    di
    adc a
    adc a
    di
    add c
    add c
    adc b
    inc sp
    ld b, b
    ld bc, $eded
    sbc [hl]
    sbc [hl]
    rst RST_38
    rst RST_18
    rst RST_18
    add b
    add b
    sbc $de
    db $dd
    db $dd
    ld b, $c0
    inc de
    ldh [$ffe0], a
    or h
    ld bc, $11ca
    adc b
    inc sp
    cp $01
    add d
    ld sp, $aeff
    xor [hl]
    push af
    push af
    ld sp, hl
    ld sp, hl
    di
    di
    inc bc
    rst RST_08
    rst RST_08
    db $fc
    ld bc, $3350
    cp d
    inc sp
    or $21
    ld hl, sp+$21
    ret z

    inc sp
    jp $cfcf


    ld b, [hl]
    ld hl, $337a
    ld a, [de]
    inc sp
    ld a, b
    inc bc
    db $e3
    db $e3
    rrca
    jp hl


    jp hl


    db $ed
    db $ed
    ld a, b
    ld bc, HeaderMaskROMVersion
    ld d, $45
    inc e
    ld sp, $46fc
    dec hl
    ld [hl-], a
    ld sp, $9c9c
    xor d
    xor d
    or [hl]
    or [hl]
    and $26
    inc de
    cp [hl]
    cp [hl]
    ld [hl], h
    ld de, $3322
    push hl
    push hl
    sub [hl]
    ld [hl], c
    sub [hl]
    call z, $5621
    ld b, l
    sbc d
    inc bc
    rst RST_28
    rst RST_28
    db $ed
    and d
    ld b, d
    inc a
    ld l, b
    inc sp
    cp d
    ld de, $bfbf
    add b
    add b
    ld d, d
    ld bc, $13aa
    sub b
    and b
    dec [hl]
    jr z, @+$47

    or h
    ld bc, $11d8
    db $eb
    ret c

    ld b, b
    xor b
    dec h
    rst RST_30
    adc e
    rst RST_30
    push de
    and $40
    or [hl]
    ld [$aa40], a
    ld bc, $33a2
    pop de
    db $fd
    pop de
    ld [hl], h
    inc sp
    add a
    add a
    ldh a, [$fff0]
    rst RST_38
    rst RST_38
    ld a, e
    rst RST_00
    rst RST_00
    ld [bc], a
    ld d, c
    sbc a
    sbc a
    ret nz

    ret nz

    ld [hl], h
    dec b
    ld hl, sp-$28
    ld de, $4382
    jr c, jr_02a_4379

    db $ed

jr_02a_4379:
    db $ed
    di
    di
    ei
    rra
    ei
    push af
    push af
    adc $ce
    db $f4
    ld bc, $0178
    ld [hl], d
    ld sp, $ef6f
    rst RST_28
    ldh a, [$fff0]
    ldh [$ff31], a
    xor $ee
    ld h, $51
    ld h, b
    adc [hl]
    ld b, e
    ld e, [hl]
    ld hl, $4590
    ld d, b
    ld sp, $35a0
    ret nz

    ret nz

    xor d
    inc sp
    jr nz, jr_02a_43d5

    ld b, e
    ld h, $47
    jp z, $8011

    ld d, e
    ld a, [$d703]
    sub b
    ld d, d
    or $21
    cp a
    push de
    push de
    or l
    or l
    or e
    or e
    call nz, $dd17
    rst RST_20
    db $dd
    db $d3
    db $d3
    sbc [hl]
    inc sp
    ld a, b
    ld b, l
    cp [hl]
    cp [hl]
    add b
    ldh [$ffbe], a
    ld d, b
    ld h, $13
    jr z, jr_02a_4414

    ret nz

    inc sp
    ld h, $45
    adc a
    adc a

jr_02a_43d5:
    pop hl
    pop hl
    pop hl
    ld a, b
    inc bc
    ld c, b
    dec hl
    jp nc, Jump_02a_4c01

    ld bc, $c3c3
    rst RST_28
    ld l, l
    rst RST_28
    ld [de], a
    ld de, $e8e8
    ret nz

    ld de, $d7d7
    ld c, [hl]
    ld de, $701e
    ld de, $dfdf
    pop bc
    pop bc
    ld hl, sp+$01
    ld b, [hl]
    ld hl, $0100
    ldh [$ffa4], a
    inc sp
    inc [hl]
    ld bc, $11d2
    ld h, b
    inc bc
    ld a, b
    ld bc, $f1f1
    rst RST_18
    sbc a
    rst RST_18
    ret nc

    ret nc

    rst RST_08
    rst RST_08
    ld a, [hl+]
    ld bc, $15aa

jr_02a_4414:
    add l
    cp l
    add l
    ld l, h
    ld sp, $b1b1
    db $ec
    db $ec
    ld h, $51
    rst RST_38
    rst RST_10
    rst RST_38
    and c
    and c
    xor [hl]
    ld b, e
    xor a
    ld l, d
    ld h, b
    ret nc

    ret nc

    rst RST_38
    cp l
    cp l
    cp e
    cp e
    pop bc
    pop bc
    sub [hl]
    sub [hl]
    rst RST_30
    and [hl]
    and [hl]
    xor b
    ld a, d
    ld h, b
    jp c, $dfda

    rst RST_18
    rst RST_38
    ret c

    ret c

    sub [hl]
    sub [hl]
    adc $ce
    sbc $de
    ld [hl], $82
    ld h, c
    reti


    reti


    call nc, $d621
    sub $ea
    ld b, c
    ld [$fb41], a
    call $90cd
    rla
    or c
    or c
    xor l
    xor l
    db $d3
    rst RST_38
    db $d3
    rst RST_38
    rst RST_38
    add a
    add a
    db $ec
    db $ec
    db $dd
    cp l
    db $dd
    ld [bc], a
    ld bc, $bbbb
    rst RST_00
    rst RST_00
    ld [hl], h
    ld sp, $7feb
    db $eb
    rst RST_28
    rst RST_28
    push af
    push af
    cp d
    cp d
    ld [hl], h
    ld b, c
    sbc e
    rst RST_38
    rst RST_38
    ld [$bb31], sp
    cp e
    jr c, @+$03

    ld hl, sp+$01
    ldh [$ff61], a
    ldh [$ffa2], a
    ld l, e
    ld d, b
    inc sp
    ld b, h
    ld de, $01ea
    rst RST_00
    rst RST_00
    ld d, d
    ld d, l
    rst RST_28
    jp nz, $b4c2

    or h
    sbc h
    ld h, c
    rst RST_28
    rst RST_28
    add l
    ld a, a
    add l
    xor $ee
    rst RST_28
    rst RST_28
    rst RST_08
    rst RST_08
    ld e, d
    ld de, $d163
    pop de
    ld [hl], b
    ld h, a
    ld e, d
    ld de, $01cc
    add a
    add a
    jr nc, jr_02a_452a

    cp $ca
    inc de
    add sp, -$18
    rst RST_28
    rst RST_28
    pop hl
    pop hl
    adc [hl]
    ld sp, hl
    adc [hl]
    ld b, h
    ld d, c
    ld c, h
    ld b, e
    or c
    or c
    xor b
    xor b
    sbc d
    ld e, $56
    ld [hl], b
    cp d
    cp d
    or c
    or c
    ld c, h
    ld bc, $01e6
    add sp, $03
    ei
    cp d
    cp d
    cp $61
    db $fd
    db $fd
    cp a
    cp a
    and e
    rst RST_00
    and e
    sbc l
    sbc l
    add [hl]
    ld sp, $7170
    ld h, $13
    xor [hl]
    xor [hl]
    or $b6
    ld sp, $f3f3
    jp nc, $f311

    di
    call $ffcd
    cp [hl]
    cp [hl]
    add $c6
    reti


    reti


    db $e3
    db $e3
    rst RST_38
    rst RST_18
    rst RST_18
    call c, $9adc
    sbc d
    push de
    push de
    rst RST_38
    call $ddcd
    db $dd
    sbc l
    sbc l
    sbc $de
    ret c

    sub b
    ld [hl], a
    ld a, [hl+]
    ld h, e
    ret nz

    ld de, $9191
    add [hl]
    ld h, c
    sbc $de
    rst RST_28
    sbc [hl]
    sbc [hl]
    db $dd
    db $dd
    ld a, b
    inc bc
    rst RST_18

jr_02a_452a:
    rst RST_18
    rst RST_00
    ld a, a
    rst RST_00
    sub $d6
    sub [hl]
    sub [hl]
    cp c
    cp c
    sub h
    ld b, a
    ld b, $9c
    ld bc, $dfdf
    jr nz, @+$22

    ldh a, [c]
    ld a, d
    dec e
    nop
    add b
    rst RST_38
    nop
    add c
    nop

jr_02a_4546:
    ld b, d
    nop
    inc h
    nop
    jr jr_02a_4546

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
    jr nc, jr_02a_457d

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

jr_02a_457d:
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

jr_02a_458a:
    jr jr_02a_458a

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

jr_02a_459a:
    jr jr_02a_459a

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

Call_02a_45ff:
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
    jr nz, jr_02a_4699

    ld l, [hl]
    jp nz, $fbde

    ld [bc], a
    ld a, $3d
    jr nz, jr_02a_4681

    dec b

jr_02a_4681:
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

jr_02a_4699:
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

jr_02a_46aa:
    ld [hl], d
    halt
    ld [bc], a
    ld b, $94
    jr nz, jr_02a_46aa

    ld b, [hl]
    ld a, e
    jr nz, jr_02a_4712

    jr nz, jr_02a_46c1

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

jr_02a_46c1:
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

jr_02a_46e7:
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
    jr nz, jr_02a_470c

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

jr_02a_470c:
    ld b, h
    jr nz, @-$4a

    ld b, $b7
    inc b

jr_02a_4712:
    sbc l
    or a
    or b
    inc d
    ld c, $82
    adc [hl]
    jr jr_02a_474e

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
    jr nz, jr_02a_4755

    and d
    xor $fb
    ld [hl+], a
    xor $a0
    jr jr_02a_46e7

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

jr_02a_473c:
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

jr_02a_474e:
    inc de
    cp a
    add h
    ld [de], a
    or b
    dec bc
    ld sp, hl

jr_02a_4755:
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
    jr nc, jr_02a_47e0

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
    jr nc, jr_02a_473c

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

jr_02a_479d:
    ldh [$ffdc], a
    ret nz

    cp h
    add b
    sub $a0
    ld sp, $407e
    db $e4
    dec [hl]

jr_02a_47a9:
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

jr_02a_47e0:
    adc $79
    ld hl, $239a
    jr nz, jr_02a_4854

    jr nc, @+$81

    jr nc, jr_02a_479d

    jr z, jr_02a_47a9

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

jr_02a_481b:
    jr nc, jr_02a_4829

    ldh [$fffd], a
    db $ec
    or c
    ld b, b
    inc l
    ld h, b
    call c, Call_000_3cc0
    nop
    ld a, [hl]

jr_02a_4829:
    dec e
    jr nz, jr_02a_482d

    ld b, l

jr_02a_482d:
    ld b, c
    ld b, d
    ld b, b
    ld h, c
    and l

jr_02a_4832:
    jr nc, jr_02a_482d

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
    jr nc, jr_02a_4832

    ld b, c
    ld a, a
    xor e
    ld b, d
    call nz, Call_02a_74c0

jr_02a_4854:
    dec de
    ld [hl], b
    inc b
    cp l
    jr nc, jr_02a_489e

    nop
    inc e
    jr nz, jr_02a_481b

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
    jr nc, jr_02a_48d7

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

jr_02a_4883:
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

jr_02a_489e:
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
    jr nc, jr_02a_4883

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
    jr nz, jr_02a_4883

jr_02a_48d7:
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

jr_02a_4911:
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

jr_02a_492d:
    inc l
    inc c
    ret c

    jr jr_02a_4956

    jr nz, jr_02a_492d

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
    jr nc, jr_02a_4911

    cp e
    ld b, d
    ld d, l
    ld d, h
    ld b, e
    push hl
    jr nc, jr_02a_49d2

    rst RST_18

jr_02a_4956:
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
    jr jr_02a_49fa

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
    jr jr_02a_4a0f

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

jr_02a_49d2:
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

jr_02a_49fa:
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

jr_02a_4a0f:
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
    nop
    add b
    rlc b
    cp $00
    dec bc
    rst RST_38
    db $10
    inc c
    ld bc, $0003
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    nop
    nop
    db $e4
    inc d
    ldh [$ff29], a
    ld bc, $002b
    daa
    inc b
    ld h, $00
    ld sp, $3f02
    nop
    rlca
    ld a, a
    ret nz

    ldh a, [$fff8]
    inc c
    rst RST_38
    inc bc
    rra
    ld bc, $1f09
    ld a, $00
    ld e, $c0
    cp $60
    inc c
    dec d
    add hl, bc
    ld l, h
    dec bc
    db $fc
    ld a, $01
    ld a, [hl+]
    nop
    db $fd
    nop
    db $fd
    and b
    db $fd
    ld d, b
    cp [hl]
    sub e
    nop
    ldh a, [$fffe]
    add sp, -$02
    ld hl, sp+$01
    ld a, [bc]
    inc b
    rst RST_30
    ld hl, sp+$11
    ldh [c], a
    db $10
    add hl, bc
    nop
    nop
    add d
    ld a, l
    or $b0
    dec bc
    inc b
    ei
    ld h, b
    add hl, bc
    nop
    nop
    ld b, $f8
    ld a, e
    nop

Jump_02a_4ac3:
    ld a, a
    ldh [rSB], a
    ld [bc], a
    ld a, h
    nop
    ld a, l
    add sp, $03
    inc a
    jr nc, jr_02a_4ad5

    dec h
    nop
    inc e
    ld a, a
    jr z, jr_02a_4b54

jr_02a_4ad5:
    ccf
    inc b
    ld bc, $fe16
    add hl, hl
    ld bc, $900f
    ld b, b
    ld b, b
    cp a
    cp a
    nop
    rst RST_38
    cp a
    nop
    ld b, b
    rrca
    sub b
    db $eb
    dec bc
    ldh [$ff1f], a
    dec bc
    ldh [rNR14], a
    ldh a, [$ff08]
    ld bc, $2805
    inc bc
    ld bc, $ef17
    ldh [$ffe3], a
    nop
    ld sp, hl
    inc [hl]
    add hl, de
    adc $e0
    ld c, $f3
    ldh [rNR34], a
    nop
    ld [$0b10], sp
    db $fd
    cp $e5
    di
    rst RST_38
    pop af
    ei
    push af
    di
    di
    rst RST_30
    jp hl


    di
    rst RST_38
    rst RST_10
    pop hl
    inc b
    db $ed
    ld e, $0c
    db $e3
    rst RST_30
    cp $80
    dec de
    ld a, [$f8fc]
    db $fd
    ld hl, sp-$03
    push af
    rst RST_38
    ld sp, hl
    pop af
    ei
    pop af
    ei
    push hl
    di
    db $e3
    rst RST_38
    rst RST_30
    ld hl, sp-$04
    ldh a, [c]
    ld sp, hl
    jp hl


    di
    and e
    rst RST_38
    add $c2
    sub [hl]
    ld de, $00b4
    nop
    jr nz, @+$01

    rst RST_18
    inc c
    sbc $8e
    sbc $2f
    sbc [hl]
    ld e, h
    rst RST_38
    ccf
    ld a, [de]
    cp a
    nop
    adc a
    nop

jr_02a_4b54:
    nop
    ld b, c
    ld sp, hl
    cp [hl]
    add sp, $05

jr_02a_4b5a:
    add sp, $01
    ld [hl+], a
    inc e
    add h
    ld b, e
    ld [hl], b
    rst RST_28
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    pop hl
    ld bc, $c03f
    rlca
    rst RST_08
    jr c, jr_02a_4b6e

jr_02a_4b6e:
    rst RST_00
    nop
    ret nz

    add hl, de
    add sp, $01
    db $10
    ld a, a
    db $fd
    jr nz, jr_02a_4b5a

    nop
    ld bc, $047f
    ld a, a
    ld [$f77f], sp
    inc d
    ld a, a
    jr c, @+$01

    nop
    inc b
    ld hl, sp+$10
    db $e3
    rst RST_38
    jp nz, $080c

    jr nc, jr_02a_4bb2

    ret nz

    add [hl]
    inc b
    rst RST_38
    ld e, $0c
    add d
    inc c
    ld [$4270], sp
    add d
    rst RST_38
    ld d, $02
    halt
    jr nz, @+$7e

    jr nz, jr_02a_4c20

    ld [$dc7f], sp
    ld [$0000], sp
    rrca
    rrca
    rra
    inc hl
    ld [hl+], a
    rst RST_38
    rst RST_38
    nop

jr_02a_4bb2:
    ldh a, [$ffe0]
    ldh a, [$ffe0]
    nop
    nop
    rst RST_30
    inc bc
    inc bc
    add a
    inc sp
    ld [hl+], a
    rst RST_38
    nop
    db $fc
    ld a, b
    ld a, a
    db $fc
    ld a, b
    nop
    nop
    ret nz

    ret nz

    ldh [rSCX], a
    ld [hl+], a
    xor [hl]
    ld e, d
    nop
    ld e, $3e
    ld e, $30
    ld hl, $5307
    ld [hl+], a
    inc bc
    ld e, a
    nop
    jr nz, @+$1a

    add hl, de
    dec sp
    ld b, b
    ld hl, $63e1
    ld [hl+], a
    cp l
    ret nz

    dec h
    inc bc
    nop
    ldh a, [$fff0]
    ld hl, sp+$73
    ld [hl+], a
    pop af
    rst RST_38
    nop
    ld [$c606], sp
    xor $41
    jr c, jr_02a_4bff

    rst RST_38
    ld b, $62
    ld b, c
    ld l, b
    ld b, b
    ld l, $04

jr_02a_4bff:
    ld a, $ff

Jump_02a_4c01:
    inc b
    ld a, [hl-]
    db $10
    dec sp
    db $10
    ld bc, $20f8
    rst RST_38
    rra
    ld [$41c7], sp
    jr nc, jr_02a_4c20

    ld c, $42
    rst RST_38
    ld bc, $3078
    ld a, b

jr_02a_4c17:
    jr nc, jr_02a_4c17

    ld h, h
    cp $ef
    ld c, h
    sbc $0c
    sbc [hl]

jr_02a_4c20:
    and l
    inc hl
    add hl, bc
    sbc l
    inc bc
    rst RST_38
    ld [hl], h
    jr nz, jr_02a_4c9b

    ld hl, $2769
    ld h, a
    rra
    rst RST_38
    ld e, a
    ccf
    cp c
    ld a, a
    pop hl
    rst RST_38
    pop bc
    rst RST_38
    rst RST_38
    ld b, $07
    dec b
    or $f4
    or $fa
    db $f4
    db $fc
    ld b, d
    db $10

jr_02a_4c43:
    jr nc, jr_02a_4c47

    add b
    nop

jr_02a_4c47:
    ld [hl], b
    rrca
    rst RST_38
    rra
    rst RST_38
    jp $c03c


    ccf
    ret nz

    ccf
    add b
    ld a, [hl]
    rst RST_38
    nop
    db $fd
    ld b, $06
    ld [bc], a
    ld a, [$faca]
    rst RST_38
    ld [de], a
    ld a, d
    ldh a, [c]
    jr c, jr_02a_4c43

    ld a, b
    ret nz

    ld hl, sp+$6f
    add b
    ld hl, sp+$7c
    ld a, b
    ldh a, [rNR44]
    ld a, a
    nop
    ld d, h
    inc hl
    rst RST_38
    sbc a
    inc c
    sbc l
    ld bc, $01b1
    pop af
    ld hl, $f1ff
    ld h, c
    pop af
    ld h, c
    di
    ld h, b
    or $60
    rst RST_38
    call c, $de88
    adc b
    sbc $82
    sub $82
    rst RST_38
    or $82
    or $22
    halt
    jr nz, jr_02a_4d08

    jr nz, @+$01

    ldh a, [$ffe0]
    ldh [$ffe0], a
    rst RST_00

jr_02a_4c9b:
    stop
    jr @+$01

    jr jr_02a_4cdf

    db $10
    ld [hl], h
    ld bc, $0219
    dec bc
    cp $3c
    ld hl, $0280
    nop
    ld h, e
    inc hl
    rlca
    and d
    ld e, a
    adc $00
    db $e3
    ld a, b
    add c
    ld c, h
    ld hl, $3c3e
    ld bc, $c0ff
    nop
    add b
    nop
    nop
    ld a, [hl]
    nop
    inc hl
    add e
    jr jr_02a_4d00

    dec h
    nop
    ld d, d
    dec h
    rst RST_38
    ld bc, $3245
    ld h, e
    inc h
    rst RST_38
    rst RST_08
    nop
    add sp, $06
    ld c, $25
    nop
    ld [hl], d
    dec h
    cp $00
    rst RST_38

jr_02a_4cdf:
    dec sp
    ld de, $117b
    ld a, e
    ld b, c
    ld a, e
    ld b, c
    rst RST_38
    ld l, a
    ld b, c
    ld l, a
    ld b, h
    ld l, $04
    ld l, $04
    rst RST_38
    ld sp, hl
    jr nc, @-$05

    add b
    db $dd
    add b
    rst RST_08
    add h
    ei
    rst RST_08
    add [hl]
    sbc b
    jr nc, jr_02a_4d05

    ld l, a

jr_02a_4d00:
    ld b, $8f
    rlca
    rst RST_38
    adc [hl]

jr_02a_4d05:
    rra
    ld e, h
    ccf

jr_02a_4d08:
    ld a, b
    rst RST_38
    ldh [rIE], a
    ld [hl], a
    ret nz

    rst RST_38
    add b
    add hl, hl

jr_02a_4d11:
    nop
    cp $ff
    db $fd
    xor a
    ld [hl-], a
    rst RST_38
    ld a, [$e5ff]
    ld a, [$f4cb]
    cp a
    ret nz

    xor $10
    inc bc
    ld d, l
    rst RST_38
    xor d
    add hl, hl
    nop
    ld d, l
    xor d
    cp $ff
    nop
    ld bc, $03fb
    rst RST_30
    ld d, $ef
    inc a
    rst RST_38
    rst RST_08
    ld c, h
    sbc a
    sbc b
    ccf
    ld sp, $637e
    rst RST_38
    db $fc
    add b
    ld hl, sp+$02
    ld hl, sp+$22
    jp c, $ff62

    sbc d
    ld h, d
    sbc d
    ldh [c], a
    ld a, [de]
    ldh [c], a
    jr @-$1e

    reti


    jr jr_02a_4dae

    ld sp, $29f0
    ccf
    ld e, $00
    ld b, e
    rst RST_38
    nop
    or [hl]
    ld h, h
    inc hl
    rrca
    rlca
    db $10
    ld b, e
    rst RST_38
    nop
    ld [hl], h
    inc hl
    ld a, $ff
    inc b
    ld a, $10
    ld a, [hl-]
    db $10
    ld a, e
    db $10
    ei
    rst RST_28
    ld d, c
    ld a, e
    ld b, c

jr_02a_4d74:
    ld l, e
    add a
    jr nc, jr_02a_4df7

    ld h, $7f
    rst RST_18
    ld [hl-], a
    ld a, a
    jr nc, jr_02a_4dfa

    jr nc, jr_02a_4d11

jr_02a_4d81:
    jr nc, @-$6e

    reti


    ccf
    add b
    call Call_000_0080
    rst RST_38
    ld bc, $0324
    add a
    ld bc, $0dfc
    inc d
    ld b, h
    ld c, c
    db $fc
    ld bc, $03f9
    dec bc
    rlca
    db $fd
    ccf
    db $10
    ld [bc], a
    ld a, $ff
    ld c, $ff
    db $e3
    db $fc
    rst RST_38
    rst RST_00
    ld hl, sp-$72
    pop af
    inc e
    db $e3
    jr c, jr_02a_4d74

    rst RST_38

jr_02a_4dae:
    jr c, @-$37

    jr nc, jr_02a_4d81

    ld [hl], b
    adc a
    ld a, b
    sbc b
    rst RST_38
    ld e, b
    cp b
    ld e, b
    cp b
    ld e, d

jr_02a_4dbc:
    cp b
    ld e, b
    cp d
    ccf
    ld e, b
    cp d
    jr jr_02a_4dbc

    ld [de], a
    ld hl, sp+$58
    dec [hl]
    ldh a, [rNR42]
    ld de, $d100
    jr nz, jr_02a_4e37

    dec [hl]
    nop
    ld b, c
    jr nz, jr_02a_4d81

    db $10

jr_02a_4dd5:
    ld [hl], h
    inc hl
    ld [de], a
    db $10
    ld a, [hl]
    ld de, $0840
    nop
    ld b, b
    cp a
    ld h, e
    ld b, c
    ret nz

    ld b, c
    rst RST_38
    ld b, a
    ld bc, $052f
    cpl
    inc b
    ld e, $04
    rst RST_38
    ld [$f794], sp
    jr nc, @-$09

    or b
    sub l
    sub b
    rst RST_38

jr_02a_4df7:
    and l
    add b
    cp c

jr_02a_4dfa:
    add b
    xor c
    add b
    xor l
    nop
    ld e, a
    xor a
    inc b
    nop
    nop
    ld a, b
    ccf
    jr nz, jr_02a_4e0b

    and $40
    cp [hl]

jr_02a_4e0b:
    ld [hl], b
    ld hl, $f0f0
    nop
    nop
    ld e, $4f
    jr nz, jr_02a_4dd5

    inc c
    or $40
    ldh a, [rSTAT]
    ld e, $1e
    and h
    ld b, l
    inc b
    ld b, l
    or h
    ld b, l
    inc d
    ld b, l
    rst RST_20
    ld l, a
    ld b, l
    ld l, a
    adc l
    jr nc, jr_02a_4e4b

    ld b, b
    inc d
    ld a, $10
    rst RST_18
    ld a, [$7b10]
    ld d, b
    call Call_000_3195

jr_02a_4e37:
    ld b, $4f
    sbc h
    sbc l
    jr nc, @+$32

    ld b, b
    ld [hl], $7f
    ld [hl-], a
    jr z, jr_02a_4e44

    adc c

jr_02a_4e44:
    ld bc, $fee0
    db $10
    ld b, $01
    rst RST_38

jr_02a_4e4b:
    ld sp, hl
    rlca
    db $fc
    inc bc
    ld e, $ff
    pop hl
    ld e, $e1
    adc $f1
    and $f9
    ld c, $fb
    rst RST_38

jr_02a_4e5b:
    ld b, $61
    ld e, d
    rst RST_28
    sbc a
    rst RST_38
    sbc a
    rst RST_18
    db $fd
    cp a
    ld [hl], h
    ld d, a
    jr @-$0e

    jr z, jr_02a_4e5b

    ld [hl], e
    ldh [rIE], a
    jp nc, $e0e7

    add $a0
    ret nz

    ret nz

    add b
    rst RST_18
    ld b, c
    add c
    nop
    nop

jr_02a_4e7b:
    add c
    adc a
    ld d, b
    inc a
    inc a
    xor c
    ld a, $44
    jr nc, jr_02a_4e7b

    ld b, e
    ldh [$ff2f], a
    jr nz, jr_02a_4e91

    and [hl]
    ld d, b
    nop
    rst RST_18
    nop
    ld hl, sp-$08

jr_02a_4e91:
    ld a, h
    ld a, h
    ldh [rSCX], a
    add c
    add c
    cp $69
    ld hl, $1f1f
    rrca
    rrca
    adc b
    ld b, h
    ld b, b
    rst RST_38
    jr nz, jr_02a_4ec4

    inc d
    add e
    sub b
    db $10
    ret


    ld [$05ff], sp
    add b
    inc b
    add h
    ld [bc], a
    ld c, a
    ld b, $6e
    rst RST_38
    ld b, $7e
    ld h, $7e
    ld [hl], $f2
    ld [hl-], a
    db $f4
    rra
    jr nc, jr_02a_4f35

    jr nc, jr_02a_4f36

    db $10
    and h
    ld d, c

jr_02a_4ec4:
    ld [$a645], a
    ld d, e
    cp $e2
    ld e, e
    or $f9
    ldh a, [c]
    db $fd
    ldh a, [c]
    db $fd
    ld a, [$fdd7]
    ld hl, sp-$01
    ld [$fc61], sp
    db $10
    dec c
    rst RST_38
    sbc a
    rst RST_38
    rst RST_38
    sbc [hl]
    rst RST_38
    sbc a
    cp $95
    cp $8e
    ld a, a
    db $fc
    adc d
    db $fc
    sbc h
    ld hl, sp-$6c
    ld hl, sp-$10
    ld b, b
    rst RST_38
    inc e
    jr c, jr_02a_4f2c

    ld sp, $0434
    add hl, bc
    rrca
    rst RST_28
    nop
    jr z, jr_02a_4f14

    ld [$50a9], sp
    ld bc, $730c
    rst RST_38
    nop
    ld d, b
    adc a
    adc a
    ld [hl], b
    sub c
    ld c, [hl]
    inc sp
    rst RST_38
    inc c
    rra
    ld h, b
    nop
    nop
    sub b
    ld l, a

jr_02a_4f14:
    rst RST_38
    cp $bd
    ld bc, $8800
    ld [hl], a
    db $fc
    nop
    ld e, a
    and b
    rst RST_38
    nop
    nop
    ld b, e
    cp h
    db $fc
    ld bc, $f807
    rst RST_38
    pop af
    ld c, $8e

jr_02a_4f2c:
    ld [hl], c
    ld b, $19
    ret


    ld b, $fe
    ldh [rSTAT], a
    ld e, h

jr_02a_4f35:
    sbc h

jr_02a_4f36:
    inc e
    inc l
    ret z

    db $10
    ld b, e
    rst RST_18
    adc e
    db $ed
    ld bc, $e115
    cp d
    ld d, e
    rrca
    rrca
    call c, Call_02a_51a0
    db $ec
    ld b, e
    ld bc, $8001
    sub h
    ld h, b
    nop
    nop
    rlca
    ccf
    ccf
    rra
    sbc h
    ld h, b
    ld [hl], b
    ld [hl+], a
    and h
    ld h, b
    sub b
    ld h, c
    sub d
    ld h, c
    ld a, a
    inc bc
    nop
    add hl, de
    jr jr_02a_4f71

    inc c
    ld c, $72

jr_02a_4f68:
    jr nc, jr_02a_4f68

    and d
    ld h, c
    db $fc
    db $fc
    ld de, $1900

jr_02a_4f71:
    add b
    adc c
    rst RST_38
    ld b, b
    dec c
    ld b, b
    ld b, e
    inc h
    and c
    ld d, $01
    rst RST_20
    ld [de], a
    ld de, $1008
    inc bc
    ld c, $66
    nop
    ld hl, sp-$01
    and l
    ldh a, [$ffa9]
    jr nc, jr_02a_4f8d

    add d

jr_02a_4f8d:
    ld b, $62
    ld d, e
    inc b
    ld b, c
    ld b, c
    cp $1f
    nop
    db $fc
    db $fd
    nop
    db $fc
    dec c
    ld h, b
    nop
    ld a, c
    ld h, d
    ld e, e
    rst RST_38
    ld b, $ff
    cp b
    ldh a, [$ffab]
    di
    rst RST_20
    rst RST_30
    cp a
    rst RST_10
    rst RST_20
    rst RST_00
    rst RST_20
    ldh [$ffc0], a
    adc d
    ld d, c
    ld d, [hl]
    rst RST_38
    jr z, jr_02a_4fbe

    ld h, [hl]
    jr nc, @+$50

    ld bc, $205e
    rst RST_38
    ld e, h

jr_02a_4fbe:
    jr nz, jr_02a_500b

    ld d, b
    daa
    ld e, b
    inc hl
    ld e, $ff
    pop hl
    inc de
    db $ec
    add hl, bc

jr_02a_4fca:
    or $3c
    jp $ff83


    inc a
    ld b, b
    cp a
    ld [bc], a
    call $8077
    jp hl


    rst RST_38
    ld d, $36
    ret


    ld hl, sp+$07
    rlca
    ld hl, sp-$40
    rst RST_38
    nop
    ret nz

    ccf
    nop
    rst RST_38
    sbc [hl]
    nop
    pop hl
    rst RST_38
    ld b, $31
    add $73
    adc h
    ld [bc], a
    inc e
    ld b, $ff
    ld a, b
    inc e
    db $e3
    cp $01
    pop bc
    ld a, $74
    rst RST_38
    add b
    sub h
    ld h, b
    ld [bc], a
    ldh a, [$ff08]
    ldh a, [c]

Jump_02a_5003:
    ld c, b
    ld a, a
    ld [hl-], a
    jr nc, jr_02a_4fca

    ld d, $e0
    xor d

jr_02a_500b:
    ld b, h
    and h
    ld d, e
    nop
    and $43
    cp h
    ld h, c
    and b
    ld d, c
    sub d
    ld [hl], c
    add sp, $53
    add sp, $41
    sbc d
    ld h, e
    add [hl]
    ld h, l

jr_02a_501f:
    ldh a, [c]
    ld h, c
    ld [hl-], a
    nop
    sub h
    ld h, e
    and l
    ld [hl], c
    ret


    inc b
    ldh [$ffe4], a
    rst RST_38
    db $f4
    ldh a, [c]
    ldh a, [c]
    ld [hl], c
    ld [hl], b
    add hl, sp
    push bc
    nop
    ld [hl], l
    and b
    ld b, e
    jr nz, jr_02a_5079

    sub [hl]
    ld h, b
    cp a
    nop
    ld a, a
    sub $70
    db $fc
    xor a
    jr nc, jr_02a_501f

    ld [hl], b
    inc l
    db $10
    ld hl, $181e
    rlca
    rst RST_20
    ld b, $01
    ld bc, $0025
    xor d
    ld h, c
    nop
    ld a, a
    sub b
    db $eb
    rrca
    ld b, b
    ccf
    ld b, b
    ldh [$ff9e], a
    ld h, b
    ret nz

    ret nz

    ld hl, sp+$01
    ld hl, sp+$1d
    add b
    ld [hl+], a
    rst RST_38
    ld hl, $20de
    rst RST_18
    rst RST_38
    nop
    inc bc
    db $fc
    rst RST_38
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    rra
    rra
    rst RST_38

jr_02a_5079:
    inc bc
    db $fc
    call c, $e320
    nop
    ld hl, sp+$07
    rst RST_30
    rrca
    ldh a, [$fff0]
    dec bc
    nop
    ret nz

    ret nz

    sub h
    ld [$65ff], sp
    add hl, de
    adc b
    ld [hl], b
    ldh a, [rP1]
    add d
    ld [bc], a
    ld a, a
    ld c, $0e
    ld e, $1e
    ld a, [hl]
    ld a, [hl]
    db $fc
    jr nc, jr_02a_509e

jr_02a_509e:
    ld c, a
    nop
    nop
    ld bc, $0b01
    nop
    jr c, jr_02a_50a9

    inc bc
    ld b, b

jr_02a_50a9:
    nop
    db $eb
    nop
    nop
    jr nc, @+$03

    cp $4a
    ld [bc], a
    ldh a, [$fff0]
    ld hl, sp-$1b
    ld hl, sp+$3e
    ld bc, $5801
    nop
    jr c, jr_02a_50bf

    rra

jr_02a_50bf:
    rrca
    rlca
    rst RST_08
    rlca
    nop
    nop
    ld hl, sp+$66
    nop
    jr nc, jr_02a_50cb

    rst RST_38

jr_02a_50cb:
    cp $23
    ldh a, [$ffe0]
    add hl, de
    ld bc, $0140
    ld e, b
    inc b
    rst RST_38
    add b
    inc bc
    ld a, [bc]
    nop
    cp $09
    ld [bc], a
    ld e, a
    add b
    ld d, b

jr_02a_50e0:
    adc a
    ld b, b
    sbc a
    ld b, b
    add a
    sbc h
    ld b, b
    sbc l
    sbc b
    inc bc
    adc b
    ld bc, $0080
    ld a, a
    ld bc, $ff00
    ld a, a
    nop
    nop
    ld l, a
    ld a, [$0a01]
    pop af
    ld a, a
    ld [bc], a
    ld sp, hl
    ld [bc], a
    add hl, sp
    ld b, d
    cp c
    jp nz, Jump_000_02b9

    db $fc
    sbc b
    dec b
    sbc b
    dec b
    ld d, a
    db $10
    ld b, a
    db $10
    ld b, a
    nop
    pop bc
    ld b, a
    xor e
    nop
    ret c

    inc bc
    cp d
    inc bc
    ldh [rTAC], a
    sbc b
    dec b
    ld b, c
    sbc h
    inc a
    sub h
    nop
    sub l
    nop
    ld bc, $01fe
    cp $85
    ld bc, $05a0
    ld [bc], a
    ldh [rTMA], a
    add hl, sp
    or h
    nop
    or l
    nop
    and h
    ld [bc], a
    ret c

    dec b
    ret c

    nop
    cp b
    dec b
    or h
    ldh [rTIMA], a
    inc h
    add hl, de
    ld a, a
    ld [$3900], sp
    add b
    ld d, b
    ld de, $ff01
    add b
    ld bc, $09a4
    sbc b
    ld bc, $0198
    rst RST_38
    and b
    ld bc, $8934
    jr z, jr_02a_50e0

    jr z, jr_02a_5162

    ld e, a
    jr z, jr_02a_515d

    xor b

jr_02a_515d:
    ld bc, $6ab4
    db $10
    add b

jr_02a_5162:
    and b
    add hl, bc
    db $ec
    inc h
    add hl, de
    rst RST_10
    dec b
    ld b, b
    add b
    sub b
    dec d
    ld b, l
    add b
    ld e, a
    ld a, h
    sub c
    db $10
    jr c, jr_02a_5178

    dec d
    nop
    ld a, [hl+]

jr_02a_5178:
    nop
    ld e, a
    and h
    ld [bc], a
    cp [hl]
    jr c, jr_02a_5182

    ld d, h
    nop
    xor d

jr_02a_5182:
    nop
    db $fd
    and h
    ld [bc], a
    ld [bc], a
    dec e
    ld bc, $15c0
    ld d, d
    ld bc, $c1fa
    db $10
    sub b
    rla
    sub b
    inc de
    cp $80
    ld bc, $ff01
    ld a, [bc]
    rst RST_38
    dec d
    rst RST_38
    cpl
    rst RST_38
    rst RST_38

Call_02a_51a0:
    rra
    rst RST_38
    ld a, a
    rst RST_38
    dec b
    rst RST_38
    ld a, [hl+]
    di
    rst RST_38
    ld d, a
    ld b, $10
    push af
    add hl, de
    ld a, a
    rst RST_38
    ccf
    rst RST_38
    ld [hl], a
    ld e, a
    rst RST_38
    rrca
    ld a, [bc]
    nop
    add d
    ld a, l
    ld a, a
    push af
    rla
    nop
    ld c, d
    ld [bc], a
    dec e
    nop
    ld [hl], h
    db $dd
    rst RST_38
    nop
    dec b
    cp $fe
    db $fc
    dec bc
    ld bc, $7f5f
    rst RST_38
    ld e, [hl]
    ld a, a
    ld e, h
    ld a, a
    ld e, e
    ld a, a
    ld [hl-], a
    rra
    rst RST_38
    sbc e
    ld c, a
    ld c, h
    rst RST_28
    xor [hl]
    ld c, a
    push af
    rst RST_38
    ld a, a
    push af
    rst RST_38
    ld [hl], l
    rst RST_38
    or l
    rst RST_38
    sub l
    dec h
    nop
    db $fd
    ld [hl], l
    ld hl, $0900
    rst RST_18
    cp e
    rst RST_38
    rst RST_00
    rst RST_38
    push af
    rst RST_28
    nop
    nop
    rst RST_28
    inc sp
    nop
    cp e
    rst RST_38
    ld e, a
    rst RST_38
    rst RST_38
    ld e, [hl]
    rst RST_38
    ld e, h
    rst RST_38
    ld e, e
    rst RST_38
    ld e, c
    ldh a, [$ffbf]
    ld d, h
    ldh [c], a
    ld b, d
    rst RST_20
    ld b, l
    ldh [c], a
    jr nz, jr_02a_5219

    ld a, a
    push af
    ld [hl], l
    ld e, e
    nop
    cp $60
    ld a, [bc]

jr_02a_5219:
    db $fc
    db $fc
    sub c
    ld d, l
    ld sp, hl
    sub b
    ld [hl], c
    nop
    ld [hl], b
    ld bc, $5591
    call nc, Call_000_0011
    ccf
    nop
    add h
    xor l
    add h
    xor l
    inc b
    add c
    nop
    add b
    ld bc, $25ff
    adc h
    nop
    nop
    ld hl, $236b
    ld l, e
    rst RST_30
    ld b, e
    ld l, e
    ld h, e
    sub l
    ld [bc], a
    ld c, e
    ld h, e
    nop
    nop
    ld a, e
    inc d
    ld d, d
    and b
    rlca
    ld d, [hl]
    db $10
    ld [bc], a
    nop
    jr nz, jr_02a_525a

    rra
    nop
    nop
    rst RST_38
    nop
    add hl, hl
    dec a
    nop
    inc [hl]

jr_02a_525a:
    dec b
    cp h
    ld bc, $20fe
    inc bc
    or h
    cp $94
    db $fd
    or c
    ei
    ld [hl], d
    rst RST_38
    or $e5
    db $ed
    add hl, bc
    rst RST_18
    adc e
    xor a
    daa
    rst RST_38
    ld [hl], a
    ld d, e
    db $db
    xor c
    adc l
    ld [hl], h
    ld b, $fa
    rst RST_10
    inc bc
    ld d, l
    xor l
    ld b, b
    dec b
    ld d, d
    ld b, l
    nop
    ld e, h
    ld a, a
    rst RST_28
    ld e, $bf
    cp $fc
    ld h, b
    dec bc
    rst RST_18
    rrca
    ld e, $ff
    rra
    ld b, b
    nop
    cp h
    inc bc
    ret nz

    nop
    ld d, c
    ld e, a
    ld de, $5194
    sub h
    ld d, c
    jr nz, jr_02a_52a0

    nop

jr_02a_52a0:
    cp h
    ld bc, $007f
    add h
    adc h
    dec h
    adc h
    and l
    adc h
    ret nz

    ld bc, $24fe
    inc de
    ld h, e
    ld h, e
    ld c, e
    ld h, e
    dec hl
    ld h, e
    ld d, [hl]
    rst RST_38
    ldh [$ff50], a
    ldh a, [rSC]
    nop
    inc b
    ldh a, [c]
    inc b
    rst RST_38
    ld [bc], a
    ld [de], a
    db $10
    ld d, h
    ld [de], a
    ld d, h
    ld [de], a
    push af
    db $fd
    ld a, a
    ld [hl+], a
    dec bc
    db $e3
    ldh [$ffd8], a
    rst RST_00
    jr nc, jr_02a_52e1

    rst RST_38
    ret nz

    ccf
    nop
    rst RST_38
    inc a
    jp $8063


    rst RST_38
    add c
    ld a, $9f
    rra
    ld l, a

jr_02a_52e1:
    adc a
    rla
    rst RST_20
    rst RST_38
    dec bc
    di
    dec b
    ld sp, hl
    ld [bc], a
    db $fc
    add b
    ld a, a
    ei
    ret nz

    ccf
    nop
    ld b, $ff
    rrca
    rrca
    ld [hl], e
    add e
    rst RST_20
    inc b
    ld hl, sp+$68
    add b
    rla
    nop
    nop
    ld a, a
    ld a, a
    dec c
    rst RST_38
    ldh a, [$ffe5]
    ld hl, sp-$10
    db $fc
    ld hl, sp-$02
    ldh a, [c]
    ld a, a
    db $fc
    ldh a, [c]
    db $fc
    and $f8
    call nz, Call_000_00f8
    nop
    cp $24
    stop
    nop
    sbc a
    nop
    add b
    ccf
    sbc a
    rst RST_30
    jr nz, jr_02a_533d

    xor b
    or b
    dec d
    ldh a, [c]
    nop
    ld a, [bc]
    ldh a, [rIE]
    ldh a, [c]
    nop
    ret nc

    ld b, d
    ret nz

    set 4, b
    push hl
    rst RST_38
    ld [hl], b
    ldh a, [c]
    or b
    ld sp, hl
    sub h
    db $fc
    or h
    cp $fe
    inc l

jr_02a_533d:
    ld bc, $fe2c
    ld e, b
    db $fd
    jr nz, @-$04

    nop
    rst RST_38
    ld [hl], h
    ld bc, $0389
    ld d, e
    rlca
    daa
    adc e
    rra
    adc a
    rra
    sbc a
    ld e, $3f
    inc d
    nop
    rst RST_30
    inc bc
    ld b, c
    nop
    cp $08
    nop
    rst RST_38
    cp $ff
    rra
    rst RST_38
    sub a
    rrca
    rst RST_38
    ld c, c
    rlca
    ld e, h
    db $e3

jr_02a_5369:
    xor d
    rst RST_38
    cp a
    ld a, a
    rst RST_38
    ld h, a
    sbc a
    cp c
    rst RST_00
    ld c, h
    di
    xor b
    rst RST_38
    ld h, a
    db $f4
    rst RST_38
    ld a, a
    dec b
    jr nz, jr_02a_5380

    jr nz, @+$01

    add e

jr_02a_5380:
    dec b
    jr nz, @+$01

    ld a, [hl]
    rst RST_38
    ld sp, hl
    cp $c1
    ld hl, sp+$46

jr_02a_538a:
    pop hl
    rst RST_38
    cp a
    ccf
    ld c, a
    adc a
    scf
    rst RST_00
    dec sp
    jp $fdff


    ld bc, $00fe
    cp $00
    sbc [hl]
    ld h, b
    rst RST_38
    call z, $88f0
    ldh a, [rNR10]
    ldh [$ff30], a

Call_02a_53a5:
    ret nz

    rst RST_38
    jr nz, jr_02a_5369

    ld b, b
    add b
    ret nz

    nop
    add b
    nop
    rst RST_38
    inc h
    rst RST_18
    ld [hl], c
    adc [hl]
    ld h, b
    sbc a
    ld [hl], b
    adc a
    rst RST_38
    ld a, [hl-]
    push bc
    ld a, $c1
    or d
    pop bc
    sub d
    pop hl
    rst RST_18
    ld [hl], l
    rrca
    add e
    ld a, a
    rrca
    dec de
    jr nz, jr_02a_5449

    rst RST_38
    rst RST_38
    db $fc
    rst RST_38
    cp e
    db $fc
    ld e, d
    db $fc
    ld sp, hl
    rst RST_38
    rst RST_38
    ld sp, hl
    rst RST_38
    ld a, [$f7fd]
    ld hl, sp-$17
    ldh a, [rIE]
    ret nc

    db $e3
    ld hl, $69c7
    rlca
    and b
    cp $ff
    call nc, $fafe
    cp $04
    rst RST_38
    ldh a, [c]
    rrca
    rst RST_18
    ld l, h
    sbc a
    inc e
    rst RST_38
    ld hl, sp-$45
    nop
    db $fc
    inc bc
    ld a, a
    ld hl, sp+$07
    ld [hl], b
    rrca
    rra
    ld a, a
    nop
    cp c
    db $10
    rst RST_38
    add b
    ccf
    rla
    xor a
    jr nz, jr_02a_538a

    nop
    cp a
    rst RST_18
    nop
    cp a
    rra
    and b
    db $10
    xor c
    ld [hl+], a
    sub b
    jp nz, Jump_000_00ff

    ld [bc], a
    ld [$00f2], sp
    ld a, [$1ae0]
    add hl, hl
    db $10
    cp c
    ld [hl+], a
    jr nz, jr_02a_5430

    nop
    cp a
    ld a, [bc]
    rst RST_00
    cp e
    nop
    ldh a, [$ff0a]
    ld a, [hl]
    cp e
    nop

jr_02a_5430:
    db $f4
    cp $f4
    cp $74
    cp $d6
    nop
    sbc $f5
    jr nz, @+$76

    cp $00
    ld [bc], a
    nop
    ld bc, $fffd
    rst RST_38
    ei
    rst RST_38
    ld [hl], c
    rst RST_38
    ld h, e

jr_02a_5449:
    rst RST_38
    ld b, l
    rst RST_38
    rst RST_10

jr_02a_544d:
    ld [de], a

jr_02a_544e:
    rst RST_28
    cp $03
    jr nc, jr_02a_544d

    add hl, de
    jr nz, jr_02a_544e

    cp $ff
    and c
    ld hl, sp+$02
    pop af
    ld [$9987], sp
    rst RST_00
    rst RST_38

jr_02a_5461:
    rrca
    sbc a
    inc bc
    adc a
    jr nc, jr_02a_546a

    ld e, a
    jr nz, jr_02a_5461

jr_02a_546a:
    and b
    ld a, a
    ld d, a
    dec a
    nop
    jp nz, $e2fc

    db $fc
    rst RST_38
    ldh a, [$fffc]
    db $f4
    ld hl, sp+$08
    ldh a, [$fff0]
    nop
    ld a, a
    inc a
    ret nz

    add $f8
    ld [bc], a
    nop
    ld [hl], d
    ld b, c
    jr nc, @-$1f

    or $00
    ld b, $00
    ld hl, sp+$3b
    jr nz, @+$03

    cp $ff

jr_02a_5491:
    reti


    ldh [$ffcc], a
    ldh a, [$ffcc]
    ldh a, [$ffac]
    ldh a, [rIE]
    call c, $aee0
    ldh a, [rVBK]
    ldh a, [$ff97]
    ld hl, sp-$01
    inc l
    cp $95
    ld a, [hl]
    ld c, [hl]
    ccf
    inc hl
    rra
    rst RST_38
    ld de, $0e0f
    ld bc, $0087
    pop bc
    nop
    rst RST_38
    ld e, c
    daa
    xor e
    ld [hl], a
    db $ed
    inc de
    inc c
    di
    rst RST_38
    sub d
    pop hl
    ld sp, $e0c0
    nop
    adc h
    nop
    db $fd
    db $fc
    sub a
    dec d
    rst RST_38
    ccf
    rst RST_38
    sbc e
    ld a, a
    ld b, l
    rst RST_38
    ccf
    add b
    ld e, a
    cpl
    rst RST_08

jr_02a_54d6:
    db $10
    ldh [rNR23], a
    rst RST_38
    db $e3
    inc e
    pop hl
    ld c, $f0
    rla
    add sp, -$51
    db $fd
    ld d, b
    xor d
    ld hl, $a017
    jr jr_02a_5491

    db $10
    xor a
    cp a
    rrca
    cp a
    add b
    ccf
    nop
    nop
    cp d
    ld hl, $ff90
    ld a, [de]
    ret nc

    ld a, [de]
    jr nc, jr_02a_54d6

    ldh a, [$fffa]
    ld [bc], a
    rst RST_00
    ld hl, sp+$00
    ld bc, $00bd
    or b
    ld de, $00bb
    ld b, b
    jr nz, @+$11

    ld b, h
    jr nz, jr_02a_555a

    inc hl
    ret nz

    scf
    or e
    ld de, $32c4
    db $d3
    dec sp
    db $fd
    db $fc
    jp nz, Jump_000_0235

    inc b
    ld [hl+], a
    inc b
    sub d
    call nz, Call_000_28ff
    db $fc
    or b
    di
    ret nz

    db $ec
    jp nz, $bfd1

    adc a
    and b
    adc a
    and b
    rra
    ld b, b
    inc c
    ld b, b
    ccf
    rst RST_38
    ld c, $cf
    inc b
    scf
    inc bc
    set 0, b
    dec [hl]
    ccf
    pop hl
    dec d
    ldh a, [$ff0a]
    ld hl, sp+$02
    inc c
    ld b, c
    ld [$ff41], sp
    jp nz, $e0d1

    db $ec
    ret nz

    di
    cp b
    db $fc
    rst RST_38
    ldh a, [$ff0a]
    ldh a, [$ff0a]
    ldh [$ff15], a
    pop hl

jr_02a_555a:
    dec d
    rst RST_38
    ld [bc], a
    rlc e
    scf
    inc c
    rst RST_08
    ld e, $3f
    rst RST_38
    ld e, [hl]
    cp $5e
    cp $5c
    cp $5a
    cp $1b
    ld d, d
    cp $fa
    ld [de], a
    ld a, a
    ld e, a
    cp e
    ld bc, $31c4
    ld d, [hl]
    ld b, d
    rst RST_28
    nop
    nop
    ld a, [hl+]
    ld h, e
    ld h, b
    ld b, e
    add hl, hl
    ld h, d
    jr z, @+$01

    ld h, b
    inc l
    ld h, b
    dec hl
    ld h, e
    nop
    rst RST_38
    ret c

    rst RST_18
    ld l, a
    ld hl, sp+$7f
    add b
    rlca
    or d
    inc de
    rst RST_38
    rst RST_38
    ld e, [hl]
    ld h, b
    ld c, c
    jr nz, jr_02a_55fc

    rra
    rra
    db $10
    dec b
    ld d, d
    dec d
    nop
    pop bc
    ld e, h
    ld de, $2000
    dec c
    ret nc

    dec hl
    ld a, $07
    ld hl, sp+$15
    ld d, a
    adc l
    rst RST_38
    set 4, [hl]
    dec b
    inc bc
    ld a, [bc]
    pop af
    dec b
    ld hl, sp+$07
    ld [bc], a
    db $fc
    ld bc, $2021
    inc h
    ld [de], a
    pop bc
    inc sp
    pop hl
    ld b, e
    pop hl
    ld b, h
    halt
    and $45
    ld b, b
    rra
    sbc h
    ld hl, $3f85
    add d
    dec b

jr_02a_55d3:
    ld d, b
    rst RST_38
    add b
    ccf
    ld b, d
    rra
    ld a, [bc]
    ld hl, sp+$3d
    db $fc
    rst RST_38
    db $fd
    db $fc
    ld a, c
    db $fc
    and l
    db $fc
    add hl, de
    db $fc
    ccf
    ld b, c
    db $fc
    ld [bc], a
    ld hl, sp-$0b
    rst RST_38
    ldh a, [c]
    add hl, hl
    jr nz, jr_02a_5643

    cp a
    ld a, [hl]
    ld [hl], h
    ld a, [hl]
    inc [hl]
    ld a, [hl]
    inc d
    dec [hl]
    ld d, b
    ld [hl], h
    rst RST_20

jr_02a_55fc:
    ld a, [hl]
    db $f4
    cp $10
    inc b
    rst RST_30
    ld d, $f0
    nop
    rrca
    adc a
    ldh a, [rTAC]
    ld hl, sp-$04
    cp e
    nop
    add hl, sp
    jr nz, jr_02a_55d3

    ld [hl-], a
    dec de
    rst RST_18
    db $ed
    rra
    rst RST_28
    db $10
    ldh [$ff78], a
    ld b, l
    ld d, h
    add [hl]
    cp $70
    ld d, e
    call nc, Call_000_1406
    ld b, $34
    ld b, $94
    db $fd
    add $70
    ld e, c
    inc b
    ld b, $f8
    ld hl, sp+$40

jr_02a_562f:
    ccf
    rst RST_38
    and b
    sbc a
    ret nc

    ld c, a
    add sp, -$59
    ld [hl], h
    db $d3
    ccf
    cp d
    ld l, c
    ld e, l
    inc [hl]
    xor [hl]
    ld a, [de]
    ldh a, [c]
    ld b, l
    ldh [c], a

jr_02a_5643:
    ld b, e
    rst RST_38
    add b
    ld a, a
    ld d, a
    adc l
    dec hl
    add $15
    db $e3
    rrca
    ld a, [bc]
    pop af
    ld sp, hl
    db $fc
    ld e, b
    ld d, e
    sub b
    ld e, l
    sub c
    ld a, [de]
    ld d, h
    ld b, e
    ld hl, sp-$11
    ld c, e
    di
    ld c, d
    ldh a, [$ff5f]
    jr @+$01

    sbc [hl]
    rst RST_38
    ld c, a
    cp a
    cp a
    rst RST_28
    inc e
    inc [hl]
    ld [$2403], sp
    db $10
    cp $ff
    ld bc, $20d8
    xor a
    ld d, b
    ld d, a
    xor b
    add b
    db $fc
    sbc c
    jr nz, jr_02a_562f

    ld [de], a
    rst RST_38
    ld [hl], d
    inc c
    call $9a3e
    di
    ld a, a
    inc [hl]
    rrca
    ld h, b
    jp c, Jump_000_0032

    jr nz, jr_02a_56ad

    sub b
    rst RST_38
    rrca
    ld b, [hl]
    add c
    cp h
    ld b, b
    ld d, [hl]
    xor b
    ld [bc], a
    db $fd
    dec b
    cp h
    ld bc, $f8af
    ld e, a
    ldh a, [$ff3f]
    ret nz

    ld e, a
    rst RST_38
    nop
    inc bc
    nop
    ret nz

    inc h
    db $10
    db $fc
    rla
    db $10

jr_02a_56ad:
    adc e
    ret nz

    rra
    ld h, d
    ld h, c
    nop
    ld a, a
    db $10
    ldh [rSCX], a
    ldh [c], a
    ld e, b
    ld a, a
    ld a, a
    cp a

jr_02a_56bc:
    ccf
    ld b, $7f
    ld d, $7f
    ld d, [hl]
    add e
    ld l, a
    ld a, [$6a91]
    ld d, $a3
    ld h, d
    ld b, $7f
    ld b, $3f
    add d
    cpl
    rra
    ldh [rIF], a
    ldh [rHDMA2], a
    ld d, c
    inc bc
    pop af
    jr nc, jr_02a_56bc

    ld b, d
    rst RST_38
    ld a, h
    nop
    ld h, c
    nop
    ld bc, $011c
    ld h, b
    db $fd
    dec e
    pop bc
    ld h, b
    dec e
    inc e
    ld a, l
    ld a, h
    ld a, h
    ld a, l
    cp $d0
    ld l, a
    nop
    ld bc, $3d40
    ld b, b
    dec a
    ld [hl], b
    rst RST_18
    dec c
    inc c
    ld bc, $7170
    jp nc, Jump_000_3c67

    dec a
    rst RST_38
    dec c
    ld c, h
    ld bc, $0170
    inc a
    ld b, c
    inc c
    rst RST_38
    ld sp, $0d00
    nop
    ld bc, $00c0
    ldh a, [$fffa]
    ldh a, [$ff31]
    rst RST_08
    rrca
    ld a, a
    rst RST_38
    ld c, a
    rst RST_38
    rrca
    rst RST_38
    rst RST_10

jr_02a_5720:
    inc bc
    ld a, a
    add b
    xor a
    ld h, b
    ldh a, [$ffef]
    inc l
    db $f4
    cp $ff
    dec e
    nop
    add b
    rst RST_38
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ld a, $be
    sbc [hl]
    ld e, [hl]

jr_02a_5737:
    ei
    ld e, [hl]
    ld e, $09
    nop
    ld e, [hl]
    ld e, $5e
    db $fc
    db $fd
    ld a, [hl]
    db $10
    rlca
    cp $fe
    rst RST_38
    rst RST_38
    db $fc
    db $fc
    db $10
    add hl, bc
    di
    db $fc
    db $fd
    inc c
    ld bc, $0530
    inc e
    ld e, h
    jr jr_02a_57b1

    rst RST_38
    rrca
    ld b, b
    rra
    ld b, b
    nop
    ld b, b
    ccf
    nop
    db $fd
    ld a, a
    ld b, a
    nop
    nop
    nop
    rst RST_38
    nop
    add c
    sbc l
    rst RST_38
    or c
    add c
    xor c
    add l
    xor c
    add l
    xor l
    add c
    rst RST_38
    and c
    sub c
    and l
    sbc c
    or e
    add e
    dec b
    cp a
    rst RST_30
    dec bc
    cp a
    rla
    ld h, c
    ld [$ffff], sp
    rst RST_00
    rst RST_00
    rst RST_10
    cp e
    cp e
    ld a, l
    halt
    ld [bc], a
    cp e
    ld a, h
    nop
    dec b
    cp a
    rst RST_38
    ld [hl+], a
    sbc a
    ld de, $22af

Jump_02a_5797:
    sbc a
    sub c
    cpl
    db $fd
    jr nz, jr_02a_5720

    nop
    jr z, jr_02a_5737

    ld hl, sp-$08
    db $fc
    db $fc
    rst RST_38
    ld a, a
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, a
    rst RST_38
    xor a
    rst RST_38
    rst RST_28
    ld d, l
    rst RST_38
    xor d

jr_02a_57b1:
    rst RST_38
    ld c, h
    ld bc, $0000
    cp $ff
    nop
    ld bc, $fd00
    nop
    ei
    nop
    inc bc
    db $fd
    inc bc
    and b
    inc bc
    rst RST_38
    ld h, b
    rst RST_38
    add b
    call nz, $ef3f
    adc a
    ld [hl], b
    cp a
    ld b, b
    or b
    inc b
    ld b, $ff
    nop
    cp a
    inc hl
    db $fc
    pop af
    ld c, $fd
    ld [bc], a
    and b
    inc bc
    ld a, a
    rst RST_38
    nop
    add b
    nop
    cp a
    nop
    rst RST_18
    nop
    ret nz

    db $fc
    ld c, e

jr_02a_57e9:
    ld [bc], a
    ld c, h
    nop
    inc bc
    rst RST_38
    nop
    ld b, h
    rst RST_38
    rst RST_38
    ld [$004d], a
    rst RST_38
    and l
    nop
    nop
    xor c
    nop
    db $fd
    ld bc, $1ffb
    ld bc, $03fb
    rlca
    inc bc
    jr nc, jr_02a_580f

    inc c
    dec c
    ld [hl+], a
    dec bc
    cp $a7
    ld bc, $01fc

jr_02a_580f:
    jr jr_02a_586b

    ld [de], a
    ld d, h
    db $10
    rst RST_38
    ld d, h
    dec b
    ld c, b
    ld [$0b50], sp
    ld d, b
    rla
    cp a
    ld b, b
    db $10
    ld b, b
    xor d
    rst RST_38
    ld d, b
    db $ec
    nop
    ld b, c
    rst RST_38
    cp [hl]
    xor d
    ld d, l
    push de
    ld a, [hl+]
    rst RST_38
    nop
    db $e3
    ld b, a
    nop
    adc a
    adc a
    sub l
    nop
    ld d, d
    jr jr_02a_589d

    dec b
    dec d
    ld h, c
    nop
    rst RST_38
    dec b
    cp a
    dec hl
    sbc a
    nop
    add e
    jr jr_02a_57e9

    rst RST_38
    nop
    rst RST_00
    db $10
    call nz, $c013
    add hl, de
    ret nz

    rst RST_38
    ld c, $e0
    nop
    ldh a, [$ffb4]
    dec bc
    ld a, [hl-]
    add l
    ld a, a
    or l
    ld a, [bc]
    ld a, [hl-]
    add l
    cp l
    ld [bc], a
    cp a
    reti


    nop
    rst RST_18
    cp a
    nop
    ld d, l
    rst RST_38
    ld a, [bc]
    db $ec
    nop
    add d

jr_02a_586b:
    ld a, l
    xor a
    ld d, l
    xor d
    xor e
    ld d, h
    db $ec
    ld bc, $9ff7
    db $10
    ld c, $ff
    ld bc, $0dee
    call c, $dc03
    inc bc
    ccf
    rst RST_38
    ld b, $b9
    ld b, $3f
    ret nz

    rst RST_38
    add b
    ld a, a
    ld sp, hl
    add b
    db $ec
    inc bc
    db $ec
    ld bc, $03fc
    rst RST_38
    ld bc, $fdfe
    ld bc, $14b6
    rrca
    rst RST_38
    ld a, a
    rst RST_28
    nop

jr_02a_589d:
    rst RST_28
    rst RST_38
    nop
    ld [hl], b
    add b
    ld [hl], a
    or b
    dec sp
    ret nc

    dec sp
    sbc a
    ret c

    db $fc
    ld l, b
    sbc l
    ld l, h
    or [hl]
    rla
    db $ec
    inc bc
    rst RST_30
    rst RST_38
    rlca
    rst RST_28
    ld b, $ef
    ld c, $de
    dec c
    ld e, $ff
    dec e
    cp h
    dec de
    cp h
    dec sp
    ld a, b
    ld [hl], a
    ld [hl], e
    rst RST_38
    dec c
    di
    ld l, h
    rst RST_20
    db $db
    rst RST_20
    db $db
    rst RST_38
    ld a, a
    db $db
    rst RST_08
    or a
    rst RST_08
    or a
    sbc a
    ld l, a
    ld b, c
    db $10
    sbc a
    xor b
    rst RST_38
    ret nc

    rst RST_38
    db $fc
    ld d, d
    ld d, $ed
    ld bc, $fcaa
    sbc e
    nop
    ld d, d
    inc de
    sbc a
    rst RST_38
    ld [bc], a
    rst RST_38
    dec d
    rst RST_38
    db $dd
    xor e
    ld d, d
    ld [de], a
    rst RST_30
    rst RST_38
    di
    sub l
    nop
    dec bc
    rst RST_38
    db $fd
    ld e, a
    ld d, d
    ld d, $cf
    rst RST_38
    sbc a
    adc $b6
    rst RST_08
    db $fd
    or [hl]
    inc b
    inc hl
    di
    db $ed
    di
    db $ed
    ld sp, hl
    or $f9
    rst RST_38
    ld c, c
    ld [bc], a
    adc d
    db $10
    add b
    rst RST_18
    add b
    rst RST_18
    ret nz

    rst RST_18
    ldh [$ffc0], a
    ld a, [hl]
    nop
    ld a, [hl]
    and a
    nop
    ld a, l
    ld bc, $7bff
    ld bc, $037b
    ld [hl], a
    inc bc
    rst RST_30
    rlca
    rst RST_38
    ld sp, hl
    halt
    rst RST_38
    or $f1
    xor $f3
    db $ed
    rst RST_38
    db $e3
    db $dd
    rst RST_20
    db $db
    rst RST_00
    cp e
    rst RST_08
    or a
    ldh a, [c]
    ld d, d
    ld d, $dd
    ld d, d
    dec de
    sub a
    nop
    jp nc, $fdff

    rst RST_38
    ld d, a
    cp $ff
    db $e3
    and d
    ld h, $bf
    sub a
    nop
    ldh a, [$ff9a]
    inc l
    db $dd
    rra
    ld d, d
    ld a, [de]
    ldh a, [rIE]
    ldh [$ffd2], a
    ld a, [hl+]
    ld bc, $ffff
    cp a
    sbc a
    ld l, [hl]
    rst RST_38
    ld l, a
    adc a
    ld [hl], a
    rst RST_08
    rst RST_38
    or a
    rst RST_00
    cp e
    rst RST_20
    ld e, e
    db $e3
    db $dd
    di
    rst RST_38
    db $ed
    sbc a
    ld l, a
    ccf
    rst RST_18
    rst RST_38
    rst RST_18
    ccf
    adc a
    rst RST_18
    ld a, a
    cp a
    ld a, a
    cp e
    ld hl, $0194
    ld d, d
    dec de
    rst RST_08
    dec hl
    rst RST_38
    rst RST_28
    ld d, d
    ld d, $f9
    inc a
    ld [hl+], a
    ccf
    cp b
    ld [hl+], a
    jr c, jr_02a_59d2

    cp $28
    inc sp
    or $fc
    ei
    rst RST_38
    ei
    db $fc
    ei
    rst RST_30
    cp $fd
    cp $ad
    ld hl, $effe
    ldh [$fff7], a
    rst RST_38
    ld h, b
    rst RST_30
    ld [hl], b
    ld a, e
    or b
    ld a, b
    cp b
    dec a
    rst RST_38
    ret c

    dec a
    call c, $ee1e
    rrca
    rlca
    rst RST_28
    rst RST_38
    rrca
    rst RST_18
    ld c, $df
    ld e, $be
    dec e
    cp [hl]
    rst RST_38
    dec a
    ld a, [hl]
    dec a
    ld a, h
    ld a, e
    rst RST_38
    scf
    adc a
    cp a
    ld [hl], b
    rra
    db $ec
    rra
    rst RST_28
    ccf

jr_02a_59d2:
    dec b
    inc sp
    or b
    xor d
    db $ec
    ld [bc], a
    ld a, e
    ld d, d
    ld [de], a
    ld hl, sp+$30
    jr nz, @-$01

    adc $20
    ld bc, $ffbf
    ret nz

    rst RST_38
    db $f4
    rst RST_38
    pop hl
    jr nc, @+$22

    ld bc, $bcba
    ld [hl+], a
    ldh [$ffec], a
    nop
    inc bc
    rst RST_38
    push af
    ld a, [de]
    ld h, $02
    xor a
    rst RST_38
    ld b, b
    rst RST_38
    call Call_000_1652
    ld [bc], a
    db $ec
    nop
    inc b
    cp e
    rst RST_38
    ld a, [hl]
    ld d, d
    ld d, $9f
    rst RST_38
    ld d, $ec
    ld [bc], a
    ld hl, sp-$02
    ld d, d
    inc d
    db $ec
    pop af
    ld c, $f8
    rlca
    ld hl, sp+$07
    pop hl
    db $fc
    ld d, l
    inc [hl]
    ld c, b
    ld bc, $00d8
    ld l, c
    ld [hl+], a
    rst RST_28
    ret nz

    rst RST_28
    rst RST_28
    ldh [$ff3e], a
    nop
    dec a
    ld [hl], l
    inc h
    rst RST_30
    inc bc
    rlca
    rst RST_38
    rlca
    rst RST_28
    rlca
    rst RST_38
    ld sp, hl
    ld hl, sp-$79
    ld hl, sp-$01
    rst RST_30
    pop af
    xor $f1
    xor $e3
    call c, Call_02a_5fe0
    rst RST_18
    ret nz

    cp a
    rst RST_38
    and a
    inc c
    ld [hl], $1f
    ld b, $32
    cp $65
    ld h, $ef
    ret nz

    ldh [$ffe0], a
    rst RST_30
    ldh [$ff80], a
    ccf
    add b
    ld e, a
    ld e, a
    ccf
    ccf
    ld a, a
    rrca

jr_02a_5a5e:
    ld [hl], $4c
    nop
    db $fd
    cp $16
    jr nz, jr_02a_5a5e

    cp $f8
    db $fc
    ldh a, [$fffd]
    rst RST_38
    ldh [$fff9], a
    ret nz

    ldh a, [$ff61]
    rst RST_28
    ld b, c
    jp c, $81ef

    db $db
    add c
    cp e
    ld [hl], a
    ld hl, $0301
    ld bc, $00ff
    nop
    ld a, [hl]
    ld bc, $037c
    ld a, h
    inc bc
    rst RST_38
    ld a, b
    rlca
    ld a, b
    rlca
    ld [hl], b
    rrca
    nop
    nop
    cp $72
    jr nc, jr_02a_5aa3

    rst RST_18
    rra
    cp a
    ld e, $bf
    ccf
    ld e, l
    ld a, a
    ld d, l
    ld b, c
    ld a, a
    ret nz

    cp a
    or e
    db $10

jr_02a_5aa3:
    ld a, a
    db $ec
    nop
    ld [hl], d
    add hl, de
    ld h, $c0
    or b
    db $10
    and [hl]
    ld c, c
    jr nc, @-$2f

    jr nc, @-$49

    ld c, b
    rst RST_38
    and a
    sub a
    inc de
    dec hl
    xor c
    dec d
    xor h
    ld [de], a
    rst RST_38
    inc d
    ld a, [bc]
    ld [$eb05], a
    inc b
    push af
    ld [bc], a
    cp $9f
    jr z, jr_02a_5b48

    ccf
    cp a
    sbc a
    ld e, a
    rla
    ld [$dc9e], sp
    ld b, c
    push af
    ld [bc], a
    ld a, [$f601]
    nop
    ld c, e
    nop
    ldh a, [rIE]
    ld h, b

jr_02a_5add:
    rst RST_30
    db $10
    ei
    jr nc, jr_02a_5add

    ld a, b
    ld a, l
    rst RST_38
    cp b
    ld a, l
    cp h
    ld a, [hl]
    cp h
    ld a, $de
    rst RST_38
    add hl, sp
    adc a
    ld c, h
    jr nz, jr_02a_5b44

    rla
    db $fc
    rst RST_38
    rst RST_18
    db $10
    ld d, b
    sbc a
    add hl, hl
    ld hl, sp+$5b
    ld [hl-], a
    sub [hl]
    inc sp
    ld d, [hl]
    ld sp, $9fff
    rra
    rst RST_28
    rra
    rst RST_38
    rst RST_28
    adc a
    ld [hl], a
    adc a
    ld [hl], a
    rst RST_00
    dec sp
    rlca
    rst RST_10

jr_02a_5b10:
    ei
    inc bc
    db $fd
    ld d, d
    inc d
    cp $ee
    dec b
    ldh a, [c]
    add c
    rst RST_38
    ldh [c], a
    adc c
    jp $8301


    add hl, sp
    add e
    add hl, sp
    ccf
    inc bc
    ld a, c
    ld a, d
    ld bc, $0078
    ld a, [$f900]
    nop
    ccf
    ld a, [$0201]
    ld sp, hl
    nop
    db $fc
    ld c, e
    ld [bc], a
    db $ec
    nop
    rst RST_20
    ld bc, $18ff
    cp b
    jr nc, jr_02a_5b8b

    ld [bc], a
    cp $7f
    add b

jr_02a_5b44:
    and c
    inc bc
    ret nz

    db $10

jr_02a_5b48:
    and [hl]
    ld c, c
    db $ed
    ld bc, $47a6
    sub d
    ld c, b
    ld bc, $2d7f
    ld a, [de]
    ld c, d
    ld bc, $267f
    ld c, b
    ld [bc], a
    jr nc, jr_02a_5b10

    ld [hl-], a
    db $d3
    ld sp, $bb95
    sbc a
    nop
    ld a, [$5075]
    ld bc, $00a5
    or [hl]
    dec d
    rst RST_08
    rst RST_38
    cpl
    rst RST_08
    cpl
    ld h, a
    sub a
    or e
    ld c, e
    ld e, c
    rst RST_38
    dec h
    ld e, c
    dec h
    xor h
    ld [de], a
    sub $09
    ld a, [de]
    ld [$02ec], a
    push bc
    db $ec
    nop
    dec sp
    or d
    ld [bc], a
    ld h, c
    db $fd
    nop
    rst RST_08

jr_02a_5b8b:
    cp $08
    rst RST_38
    sub $89
    ld d, e
    and [hl]
    ld b, d
    db $e3
    db $e3
    sub a
    db $dd
    db $dd
    cp [hl]
    ld d, $62
    db $dd
    inc e
    ld h, b
    db $10
    dec a
    cp a
    cp $30
    ld h, [hl]
    sbc a
    sbc a
    adc a
    xor a
    adc a
    xor a
    ld sp, $39ff
    pop bc

jr_02a_5bae:
    pop hl
    dec b
    add c
    dec e
    ld bc, $ff7d
    ld bc, $01fd
    push hl
    ld bc, $0185
    push de
    push af
    ld h, c
    ld d, b
    ld l, e
    db $fd
    ld b, a
    ld h, b
    dec a
    add c
    dec a
    add c
    xor $48
    ld h, c
    sbc l
    ld bc, $51c5
    ld h, h
    push af
    ld b, c
    push af
    rst RST_38
    ld hl, $1175
    dec [hl]
    ld bc, $811d
    ld [hl], $7b
    ld [hl], $3c
    add d
    ld h, b
    inc [hl]
    or h
    add h
    call z, Call_02a_415e
    rst RST_38
    nop
    rst RST_38
    ld h, a
    ld h, a
    or e
    or e
    cp c
    cp c
    rst RST_28
    add hl, hl
    add hl, hl
    and c
    or e
    adc d
    ld h, e
    jr nz, jr_02a_5c62

    jr nz, jr_02a_5bae

    ld l, b
    ld hl, $60a3
    and b
    ld h, b
    ld l, c
    ld [hl+], a
    xor e
    ld h, b
    inc e
    rst RST_38
    add h
    rlca
    ld h, e
    ld de, $0028
    ld h, $08
    rst RST_38
    inc hl
    ld [$0821], sp
    and c
    ld [$60a1], sp
    ld sp, hl
    add hl, hl
    xor b
    ld h, c
    ret nz

    ld h, c
    ld h, b
    add hl, hl
    ld [hl+], a
    ld l, c
    ld h, d
    rst RST_30
    add hl, hl
    ld c, d
    ld hl, $65d0
    ld c, b
    ld hl, $2548
    rst RST_38
    ld c, b
    dec h
    ld h, d
    add hl, hl
    ld h, e
    jr z, jr_02a_5c97

    jr z, @-$1f

    ld h, c
    add hl, hl
    ld h, [hl]
    cpl
    ld h, b
    jp hl


    ld h, c
    inc l
    adc h
    rst RST_38
    ld hl, $2382
    ld c, h
    ld l, a
    sub b
    rst RST_28
    db $10
    rst RST_38
    db $ed
    db $10
    pop hl
    inc b
    ld hl, $2108
    rra
    sub a
    rra
    ccf
    ccf
    dec [hl]
    ld d, c
    cp $b8
    jr nc, jr_02a_5c81

    ld hl, $ff00
    pop bc
    jr @-$39

jr_02a_5c62:
    nop
    db $e3
    ld [$c823], sp
    ld a, a
    inc bc
    sbc b
    inc bc
    ld [hl], b
    rlca
    nop
    rrca
    jr nc, jr_02a_5cd8

    cp $30
    ld h, e
    ld a, a
    ld a, a
    ld a, h
    ld a, h
    ld a, b
    ld a, e
    ld a, b
    ld c, l
    ld a, d
    ld [hl], $75
    push bc
    ld [hl], c

jr_02a_5c81:
    ld d, b
    ld l, l
    ld d, h
    ld l, d
    ld [hl], c
    ld [hl], $72
    rst RST_30
    ld a, c
    ld a, c
    ld a, b
    ld [hl], $75
    call c, $cc1d
    dec c
    rst RST_38
    inc b
    dec b
    db $f4
    dec b

jr_02a_5c97:
    ldh a, [rSB]
    ld hl, sp+$01
    ld e, a
    db $fc
    ld bc, $0100
    ld [hl+], a
    add b
    ld [hl], b
    inc h
    add h
    ld [hl], b
    db $eb
    ld h, $27
    adc d
    ld h, e
    ld c, c
    sub b
    ld [hl], e
    ld l, e
    ld h, e
    ld [hl], a
    call z, Call_02a_638a
    xor h
    ld h, c
    ld [hl+], a
    ld l, b
    and h
    ld [hl], c
    xor b
    ld h, c
    jr nz, jr_02a_5d27

    rst RST_18
    inc c
    and c
    ld [$00a5], sp
    or e
    ld [hl], l
    and c
    ld [bc], a
    ld b, a
    ld hl, $2962
    ret nz

    ld [hl], b
    db $e3
    ld h, b
    call nz, Call_000_2974
    call c, Call_02a_7d61
    ld b, b

jr_02a_5cd7:
    db $d3

jr_02a_5cd8:
    ld [hl], b
    nop
    dec h
    nop
    and l
    ld [$70db], sp
    ld sp, hl
    ld h, b
    db $e3
    ld h, c
    pop hl
    ld a, b
    add h
    ld hl, $2188
    inc b
    nop
    pop af
    ld a, b
    dec e
    add b
    cpl
    rst RST_28
    ld h, c
    jr z, jr_02a_5d57

    jr z, jr_02a_5cf7

jr_02a_5cf7:
    add hl, bc
    inc b
    ld hl, $f988
    ld hl, $0910
    nop
    rrca
    adc b
    ld hl, $2102
    add [hl]
    rst RST_38
    inc hl
    dec c
    ld h, $8a
    inc l
    db $10
    inc l
    sub l
    cp $03
    inc b
    ld h, e
    add hl, hl
    ld h, d
    dec hl
    ld h, h
    cpl
    ld h, b
    rst RST_38
    cpl

jr_02a_5d1b:
    ld h, c
    ld l, $7b
    jr nz, jr_02a_5cd7

    ld h, b
    ld h, b
    rst RST_38
    ret nz

    rst RST_28
    ret nz

    rst RST_18

jr_02a_5d27:
    add b
    cp a
    nop
    cp a
    rst RST_18
    nop
    nop
    nop
    jr nz, jr_02a_5d91

    ld h, b
    ld bc, $602f
    rst RST_38
    jr z, jr_02a_5d98

    jr z, jr_02a_5d9e

    add hl, hl
    ld h, [hl]
    add hl, hl
    ld h, [hl]
    ld a, a
    inc e
    inc b
    rlca
    inc bc
    ld bc, $e000
    ld e, l
    nop
    rlca
    nop
    ld [bc], a
    ld hl, sp+$7b
    nop
    ld l, h
    ld bc, $0980
    ld a, h
    ld bc, $0990
    db $e3

jr_02a_5d57:
    ld l, c
    ld h, $6c
    ld bc, $01a0
    and [hl]
    inc bc
    ld l, b
    daa
    ld l, b

jr_02a_5d62:
    rst RST_30
    daa
    ld l, a
    jr nz, jr_02a_5d1b

    rlca
    nop
    ld a, [$fa00]
    cp $90
    add hl, bc
    ld l, b
    jr nz, jr_02a_5dda

    inc h
    ld l, c
    ld h, $60
    ei
    jr nz, jr_02a_5de8

    ld c, e
    nop
    ld h, b
    jr nz, jr_02a_5de7

    ld h, $00
    ld h, c
    ld [bc], a
    ld a, d
    ld bc, $007a
    pop bc
    nop
    ld a, d
    ld bc, $2669
    ldh a, [$ff03]
    adc b
    or b
    dec b

jr_02a_5d91:
    sub b
    dec b
    ret nz

    dec b
    ld l, a
    ld h, b
    nop

jr_02a_5d98:
    or h
    add hl, bc
    db $eb
    nop
    nop
    rst RST_38

jr_02a_5d9e:
    ldh a, [c]
    nop
    pop af
    dec b
    db $e3
    ld a, [bc]
    add $14
    ld a, a
    add $14
    adc l
    jr z, jr_02a_5e1b

    jr nz, jr_02a_5e1c

    ld sp, $ff10
    ld l, h
    ld hl, $2268
    ld h, c

jr_02a_5db6:
    dec h
    ld h, c
    dec h
    rst RST_38
    ld h, e
    ld [hl+], a
    dec de
    ld d, b
    scf
    and b
    jr nc, jr_02a_5d62

    db $e3
    ld l, a
    ld b, b
    ld e, b
    dec b
    ldh a, [rTIMA]
    ldh a, [rTIMA]
    nop
    nop
    rst RST_38
    cp a
    rst RST_38
    nop
    rst RST_38
    nop
    add b
    ccf
    ld h, a
    ld [de], a
    jr nc, jr_02a_5db6

    add b

jr_02a_5dda:
    ld h, b
    inc d
    nop
    rst RST_38
    ld bc, $1178
    rrca
    ld bc, $70ca
    dec d
    ld a, a

jr_02a_5de7:
    add a

jr_02a_5de8:
    ld [de], a
    ld [hl], b
    ld e, l
    nop
    ld h, d
    ld [de], a
    ld bc, $7efc
    sub a
    ld [de], a
    inc c
    ld bc, $8b3c
    ccf
    adc b
    and d
    add hl, de
    rst RST_28
    rrca
    pop hl
    rst RST_08
    ld hl, $19b2
    ld a, h
    dec bc
    ld a, a
    dec a
    ld [$19c2], sp
    inc c
    pop hl
    call z, $d221

jr_02a_5e0e:
    add hl, de
    and d
    ld d, $f9
    adc a
    ld l, d
    inc de
    or d
    inc de
    pop hl
    nop
    pop hl
    db $e4

jr_02a_5e1b:
    push af

jr_02a_5e1c:
    rst RST_18
    inc b
    push af
    inc b
    ld bc, $c204
    inc de
    rrca
    ld [$0fff], sp
    cpl
    cpl
    jr nz, jr_02a_5e5b

jr_02a_5e2c:
    jr nz, jr_02a_5e2e

jr_02a_5e2e:
    jr nz, jr_02a_5e0e

    jp nc, $ec13

    ld bc, $e1ec
    sbc d
    inc de
    ld bc, $c2e0
    or d
    dec de
    inc c
    pop bc
    inc e
    and d
    jr jr_02a_5e2c

    ld [de], a
    or d
    dec d
    rst RST_28
    ld bc, $ef13
    pop hl
    ld a, b
    ld de, $18c2
    rrca
    adc b
    ld de, $15d2
    ld d, $25
    add b
    ld h, b
    ld de, $1065

jr_02a_5e5b:
    add l
    ld h, $80
    inc hl
    sub l
    daa
    add [hl]
    daa
    add [hl]
    dec h
    xor d
    ld l, e
    nop
    sub l
    ld e, e
    nop
    cp a
    ld h, [hl]
    db $10
    add c
    ld a, $8e
    ld hl, $aaff
    nop
    ld d, l
    nop
    ret nz

    ccf
    add b
    ld a, a
    di
    ld a, a
    add b
    sub h
    inc hl
    jp nz, $0321

    db $fc
    ld bc, $bbfe
    cp $01
    sub h
    ld hl, $0001
    xor c
    jp $fd20


    inc b
    push hl
    jr nz, jr_02a_5e2c

    ld [de], a
    nop
    dec e
    nop
    ld a, d
    rst RST_28
    cp [hl]
    add b
    ld a, $00
    ld [bc], a
    ld bc, $415d
    db $dd
    rst RST_38
    pop bc
    db $eb
    db $e3
    db $eb
    db $e3
    di
    nop
    db $ed
    rst RST_38
    inc c
    sbc $1e
    cp a
    ccf
    ld a, a
    ld a, a
    rst RST_38
    ld a, [$031a]
    nop
    jr nz, jr_02a_5ebd

    ld a, a

jr_02a_5ebd:
    nop
    cp a
    add b
    sbc $ff
    ret nz

    db $ed
    pop hl
    ldh a, [c]
    ldh a, [c]

jr_02a_5ec7:
    ld [hl], e
    ld [hl], e
    ld l, l
    rst RST_08
    ld h, c
    ld e, [hl]
    ld b, b
    ccf
    dec h
    nop
    jr c, jr_02a_5ed6

    ldh a, [c]
    ldh a, [c]
    rst RST_38

jr_02a_5ed6:
    db $ec
    ldh [$ffde], a
    ret nz

    cp [hl]
    add b
    ld a, [hl]
    nop
    db $fd
    cp $49
    ld [bc], a
    ld a, [hl+]
    nop
    dec [hl]
    ld a, [bc]
    ld e, [hl]
    dec hl
    rst RST_38
    ld e, [hl]
    dec hl
    ld d, l
    ld a, [hl+]
    ld d, l
    nop
    and d
    ld a, [bc]
    rst RST_38
    ld b, c
    sub h
    ld [hl+], a
    adc b
    ld a, [hl+]
    db $dd
    xor d
    rst RST_38
    rst RST_38
    xor d
    rst RST_38
    db $eb
    cp [hl]
    nop
    ld d, l
    xor d
    xor d
    rst RST_38
    nop
    ld d, l
    add b
    ld a, a
    nop
    add b
    nop
    add b
    db $e3
    rra
    sbc a
    halt
    dec b
    ld hl, $8200
    nop
    rst RST_38
    rst RST_38
    cp $ff
    db $fc
    db $fc
    ld hl, sp-$07
    ld a, [$f8fe]
    ld bc, $feff
    nop
    ld bc, $0102
    ld a, [$faf9]
    ld a, a
    ld sp, hl
    ld a, d
    ld a, c
    ld a, d
    ld a, c
    ld a, [$1a79]
    inc bc
    rst RST_38
    ld hl, sp-$08
    ld sp, hl
    ld hl, sp-$0a
    ldh a, [$ff89]
    add c
    rst RST_38
    inc de
    ld h, d
    jr jr_02a_5ec7

    ld [$1586], sp
    add b
    rst RST_30
    ld [bc], a
    add b
    inc b
    ld [hl], e
    nop
    ccf
    add b
    add b
    ld a, a
    rst RST_38
    ld b, b
    nop
    add b
    ld bc, $021c
    ld l, $10
    ld bc, $8315
    ld bc, $01ca
    add c
    inc b
    sub $05
    db $10
    dec bc
    call Call_000_2403
    rlca
    rst RST_20
    nop
    nop
    rst RST_30
    nop
    inc d
    inc c
    ld bc, $c1dd
    db $dd
    db $fd
    pop bc
    ld a, [de]
    inc bc
    ld a, a
    ld a, a
    cp a
    ccf
    sbc $1e
    rst RST_38
    db $ed
    inc c
    di
    nop
    di
    di
    db $ed
    pop hl
    rst RST_00
    sbc $c0
    cp a
    ld [hl], b
    nop
    jr nz, jr_02a_5f94

    jr c, jr_02a_5f94

    ccf
    nop
    cp a

jr_02a_5f94:
    ld e, [hl]
    ld b, b
    ld l, l
    ld h, c
    ld [hl], e
    ld [hl], e
    ld c, d
    inc bc
    ld a, [hl]
    ei
    nop
    cp [hl]
    add hl, hl
    nop
    db $ec
    ldh [$fff2], a
    ldh a, [c]
    ld a, [hl+]
    rst RST_38
    add b
    ld d, [hl]
    xor b
    cp h
    ld [$eabc], a
    call nc, $aaff
    ld d, h
    nop
    and d
    xor b
    ld b, b
    dec d
    ld a, [hl+]
    rst RST_38
    nop
    adc b
    ld a, $aa
    ld a, $08
    ld a, $08
    ld a, a
    nop
    ld [$081c], sp
    inc e
    nop
    nop
    halt
    ld bc, $03ff
    add a
    dec bc
    add e
    nop
    adc h
    dec bc
    add e
    rst RST_38
    dec bc
    add e
    ld [bc], a
    add d
    db $fd
    db $fc
    ldh a, [c]
    ldh a, [rIE]
    add b

Call_02a_5fe0:
    adc d
    nop
    ld d, c
    and b
    add d
    pop hl
    ldh [rIE], a
    ld [$9802], sp
    ld b, d
    ld a, d
    ld a, c
    cp d
    add hl, sp
    rst RST_18
    ld b, d
    add c
    ld a, [hl+]
    ld bc, $9312
    nop
    ld a, [hl-]
    ld bc, $12db
    add c
    ld a, [de]
    inc bc
    inc a
    inc a
    jr @+$03

    ldh a, [$fff2]
    rst RST_38
    inc d
    ld bc, $844b
    and [hl]
    ld d, b
    nop
    xor e
    rst RST_28
    add b
    dec e
    ld e, b
    ld [bc], a
    jp z, Jump_02a_5003

    inc h
    db $10
    cp a
    pop hl
    dec [hl]
    add b
    db $10
    ld b, b
    xor b
    ret


    inc b
    ld e, d
    xor $97
    db $10
    ld a, [hl+]
    ld bc, $9322
    nop
    ld [bc], a
    ld bc, $8dfe
    ld bc, $0090
    nop
    inc c
    inc de
    ld a, [bc]
    add d
    ld [bc], a
    dec h
    ld b, $f3
    ld e, c
    di
    ld b, b
    dec c
    jr nc, @+$0f

    nop
    ldh a, [rNR42]
    ld hl, $26f8
    jr nz, @-$3d

    rlca
    ld a, [hl+]
    ld [hl+], a
    add d
    ld bc, $2330
    dec de
    dec b
    sub $05
    nop
    nop
    pop de
    add b
    ld c, h
    jr nz, jr_02a_609a

    add hl, hl
    add d
    ld bc, $5f7c
    inc h
    or b
    add b
    rst RST_38
    and b
    adc a
    ret nz

    ret z

    push bc
    rst RST_08
    ld sp, hl
    nop
    db $fc
    ld [hl], b
    ld hl, $0082
    ld a, a
    nop
    ret nz

    ccf
    ccf
    ldh [rIE], a

jr_02a_6077:
    ldh [$ff0e], a
    ld a, [bc]
    ld c, $8a
    ld l, [hl]
    ld [$7d8e], a
    ld l, d
    add [hl]
    inc hl
    ld l, [hl]
    ld a, [bc]
    cp [hl]
    cp [hl]
    ld a, $92
    jr nz, @+$01

    jr nc, jr_02a_60be

    add hl, bc
    inc b

jr_02a_608f:
    ld b, h
    ld [bc], a
    ld b, e
    jr nc, jr_02a_608f

    inc h
    jr jr_02a_6077

    ld de, $8000

jr_02a_609a:
    dec b
    adc c
    inc c
    ld a, a
    sub b
    or e
    nop
    add hl, hl
    ld b, $56
    ld [$0082], sp
    rst RST_38
    inc b
    inc b
    ld [$1008], sp
    jr nz, jr_02a_60af

jr_02a_60af:
    ld e, b
    rst RST_38
    nop
    add hl, hl
    ld de, $2353
    ld c, c
    jr nc, jr_02a_60bf

    rst RST_38
    ld h, b
    add b
    inc c
    xor h

jr_02a_60be:
    ld h, b

jr_02a_60bf:
    inc de
    add b
    inc h
    rst RST_38
    inc de
    inc d
    inc hl
    inc h
    ld [bc], a
    ld [hl-], a
    nop
    ld e, c
    rst RST_38
    ld [hl+], a
    ld [$8231], sp
    jr jr_02a_6118

    nop
    ld sp, $45ff
    inc de
    ld h, e
    inc bc
    inc hl
    dec bc
    di
    inc bc
    rst RST_38
    db $e3
    inc bc
    add e
    inc bc
    inc bc
    ld bc, $ce07
    rst RST_38
    rst RST_00
    add e
    or b
    inc e
    ld h, b
    sbc b
    ldh [$ff98], a
    rst RST_38
    db $e3
    sbc e
    ldh [rNR23], a
    db $e3
    inc e
    ldh [$ff62], a
    adc a
    sbc h
    dec c
    ldh a, [$ff03]
    ld c, c
    inc b
    ld b, [hl]
    rla
    jr nc, jr_02a_6120

    inc bc
    sub d
    jr nz, jr_02a_6139

    ld bc, $3026
    jr nc, @+$26

    rlca
    ld [hl+], a
    inc sp
    call nc, $c005
    inc de
    ret nz

    ldh [rSCY], a
    jr nc, @+$24

jr_02a_6118:
    inc hl
    db $fc
    ld c, h
    jr nc, @-$28

    rlca
    ld a, [de]
    inc bc

jr_02a_6120:
    ei
    db $e4
    xor $60
    inc sp
    call nz, $c4ce
    adc $a4
    rra
    adc [hl]
    and h
    adc [hl]
    ld h, h
    ld c, $70
    inc sp
    ld l, h
    ld sp, $3168
    rst RST_38
    ld b, $0a

jr_02a_6139:
    ld b, $c2
    nop
    ld h, d
    nop
    ld [$24fe], sp
    ld hl, $fefe
    rst RST_38
    rst RST_38
    ld [$4300], sp
    rst RST_38
    jr nc, @-$42

    ld bc, $8048
    and h
    ld bc, $ff46
    add hl, hl
    ld bc, $304e
    inc b
    ld [$5580], sp
    rst RST_38
    nop
    ld d, d
    inc c
    adc b
    ld b, $d4
    ld [bc], a
    jr @+$01

    and b

jr_02a_6166:
    dec c
    or b
    add b
    inc e
    and e
    inc bc
    ld b, c
    rst RST_38
    add c
    sub h
    ld c, b
    ld a, [bc]

jr_02a_6172:
    inc b
    and c
    ld b, b
    ld b, b
    rst RST_38
    jr nc, jr_02a_617d

    adc b
    sbc d

jr_02a_617b:
    ld b, h
    inc bc

jr_02a_617d:
    nop
    inc bc
    rst RST_38
    nop
    ld [bc], a
    ld bc, $1b18
    ld h, c
    ld a, e
    adc c
    ei
    di
    dec bc
    swap b
    ret z

    nop
    ld a, e
    add e
    jr c, jr_02a_6172

    jp $c338


    jr jr_02a_617b

    ldh a, [c]
    ld hl, $e098
    rst RST_38
    nop
    nop
    inc bc
    rlca
    rrca
    ccf
    rra
    ld a, a
    rst RST_38
    rra
    ld a, a
    dec e
    ld a, a
    jr jr_02a_6225

    jr @+$7b

    db $fc
    rra
    jr nz, @+$4c

    ld sp, $f6fe
    cp $e2
    and $e2
    rst RST_38
    and $f6
    cp $1d
    ld a, a
    rrca
    ld a, a
    adc a
    rst RST_38
    ccf
    adc a
    ccf
    nop
    rlca
    ld a, b
    nop
    rrca
    ld a, [$0082]
    cp $10
    ld b, c
    rst RST_38
    or $ff
    ldh [c], a
    rst RST_30
    rst RST_38

jr_02a_61d7:
    ld [hl+], a
    ld [hl], a
    add [hl]
    rra
    and $0f
    ld [bc], a
    jr jr_02a_61d7

    jp nz, $f2e0

    ld c, d
    jr nc, jr_02a_6166

    db $fc
    nop
    db $fc
    rst RST_38
    nop
    ld hl, sp+$00
    ret nz

    rra
    inc e
    rra
    ld b, b
    cp [hl]
    ld [hl-], a
    ld b, c
    cp a
    nop
    rst RST_38
    ldh [rIE], a
    ld c, a
    jr nc, jr_02a_61fd

jr_02a_61fd:
    ld l, a
    db $10
    jp $c710


    ld b, e
    ld b, [hl]
    rst RST_28
    rst RST_00
    ld [hl], $03
    ld a, [$03cf]
    inc sp
    inc c
    ld b, b
    sbc a
    ld a, a
    rst RST_08
    ccf
    rst RST_08
    rst RST_38
    ccf
    rst RST_20
    rra
    rst RST_20
    rra
    nop
    nop
    adc a
    rst RST_38
    ldh a, [rP1]
    nop
    sbc h
    ldh [$ffce], a
    ldh a, [$ffce]

jr_02a_6225:
    rst RST_38
    ldh a, [$ffe7]
    ld hl, sp-$19
    ld hl, sp+$00
    nop
    jp nz, Jump_000_3cfd

    add d
    inc bc
    pop hl
    rra
    ld hl, sp+$07
    ld a, h
    add e
    db $eb
    rra
    ldh [$ff59], a
    inc hl
    rst RST_38
    ld a, [hl-]
    ld b, b
    ldh a, [rIE]
    inc a
    ld l, a
    rst RST_38
    ld e, $ff
    ld hl, sp+$2f
    ld hl, $000f
    add hl, hl
    ld [hl-], a
    rst RST_38
    ccf
    ccf
    rst RST_08
    rst RST_08
    rst RST_30
    ld [hl], a
    ei
    dec de
    cp $0e
    ld b, b
    rst RST_38
    dec b
    cp $0d
    cp $1d
    cp $ff
    add hl, sp
    cp $8e
    ld [hl], b
    nop
    nop
    jr @+$01

    rst RST_38
    inc sp
    rst RST_38
    rst RST_20
    rst RST_38
    adc a
    rst RST_38
    dec a
    rst RST_38
    rst RST_18
    ld a, a
    rst RST_38
    cp $ff
    rst RST_28
    ld a, [de]
    ld [bc], a
    cp e
    cp $54
    bit 0, b
    ld a, [de]
    nop
    db $ed
    ld a, [de]
    ld [bc], a
    rst RST_18
    ld a, [de]
    ld [bc], a
    db $eb
    ld d, b
    jr c, @-$21

    ei
    ld a, [de]
    nop
    rst RST_28
    rst RST_38
    db $fd
    push af
    ld b, d
    inc c
    ccf
    rst RST_38
    ld [$073f], sp
    ccf
    ld bc, $001f
    cpl
    rst RST_38
    nop
    rla
    nop
    inc bc
    inc e
    inc e
    jr nc, jr_02a_62af

    ld a, a
    ld de, $1003
    rst RST_00
    rst RST_10
    rst RST_00

jr_02a_62af:
    ld d, a
    ld b, h
    ld b, h
    rst RST_38
    jr c, jr_02a_62ef

    ld hl, sp-$06
    ld hl, sp+$1a
    ld hl, sp+$02
    ld a, a
    db $fc
    nop
    cp $06
    cp $3e
    cp $df
    db $10
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    ld a, h
    ld bc, $007e
    rra
    cp a
    nop
    ld h, e
    ld bc, $001c
    ld b, $84
    ld bc, $ff02
    cp $0e
    cp $38
    ldh a, [$ffc0]
    add [hl]
    add b
    rla
    jr c, jr_02a_62e4

jr_02a_62e4:
    ld h, b
    ld [hl-], a
    ld b, h
    rra
    ld b, c
    daa
    jr nz, @+$04

    ld b, c
    jr z, jr_02a_630d

jr_02a_62ef:
    ld e, a
    ld d, l
    nop
    rst RST_38
    ld a, h
    add e
    dec [hl]
    dec h
    push de
    dec b
    ld c, [hl]

jr_02a_62fa:
    jr nz, jr_02a_62fa

    add c
    ld e, d
    nop
    nop
    ld h, b
    db $fc
    jr c, @+$01

    adc h
    rst RST_38
    rst RST_38
    and $7f
    di
    ld a, a
    ld sp, hl
    rst RST_38

jr_02a_630d:
    or h
    db $fc
    bit 0, b
    jr nc, jr_02a_6335

    add b
    nop
    ret nz

    nop
    ldh [$ff80], a
    xor a
    ld hl, sp-$20
    db $fc
    jr nc, jr_02a_6339

    nop
    xor a
    bit 0, b
    rst RST_30
    ld c, e
    rst RST_38
    cp a
    ld a, [de]
    nop
    xor $c5
    ld d, b
    ld a, [de]
    inc bc
    rst RST_18
    di
    ld b, d
    ld bc, $cddf
    ld e, b

jr_02a_6335:
    or $41
    ld h, [hl]
    ld e, b

jr_02a_6339:
    ld e, $05
    add l
    nop
    ldh [c], a
    ld b, c
    ld a, [$5241]
    add sp, $57
    db $dd
    inc bc
    ld h, d
    ld [$cf55], a
    ld a, [de]
    nop
    ld [hl], l
    pop af

jr_02a_634e:
    ld b, h
    push hl
    rst RST_38
    rst RST_00
    ld d, d
    db $e3
    db $d3
    ld d, h
    rst RST_10
    ld b, c
    sbc h
    rst RST_38
    add $cf
    rst RST_38
    di
    rst RST_38
    ld sp, hl
    inc a
    ld b, c
    inc e
    inc bc
    add b
    rrca

jr_02a_6366:
    rst RST_38
    ret nz

    inc bc
    ldh a, [$ffc1]
    db $fc
    ld [hl], b
    cp $18
    rst RST_28
    rst RST_38
    call z, $e6ff
    bit 0, b
    ccf
    ccf
    rrca
    rlca
    rrca
    inc bc
    inc bc
    jr nc, @+$27

    add hl, de
    inc bc
    or $57
    ld b, h
    ld h, e
    or $57
    nop
    ret z

    ld d, c

Call_02a_638a:
    db $f4
    ld e, c
    rst RST_10
    ld b, d
    push af
    ld e, b
    ld b, $63
    or $59
    adc $51
    or $59
    nop
    add hl, de
    ld bc, $6996
    ldh [c], a
    ld b, c
    or $59
    ldh [rSTAT], a
    or $57
    ld l, [hl]
    db $10
    ld hl, $ff00
    pop af
    nop
    adc l
    inc c
    sbc l

jr_02a_63af:
    jr nc, jr_02a_634e

    jr nz, jr_02a_63af

    inc c
    ld a, a
    inc d
    ld [hl], e
    add b
    inc a
    add c
    nop
    db $fc
    ld bc, $2afe
    ld [hl], c
    adc h
    ld bc, $3190
    sbc l
    inc l
    sbc h
    ei
    jr nz, jr_02a_6366

    inc de
    ld [hl], h
    add l
    jr @-$1d

    inc b
    ld sp, hl
    ld a, a
    add b
    ld a, a
    ld h, b
    rra
    jr jr_02a_63df

    ld b, $28
    inc sp
    rst RST_00
    adc a
    nop
    cp a

jr_02a_63df:
    ld d, e
    ld a, a
    ld h, c
    ld a, d
    cp c
    ld bc, $3fbf
    ldh a, [c]
    halt
    ld [hl], b
    nop
    ld a, b
    ld [hl], b
    ld c, h
    jr nz, @-$7b

    adc h
    or b
    add e
    xor a
    cp h
    add b
    adc a
    or b
    add h
    ld [hl], e
    cp a
    sub c
    ld [hl], b
    rra
    dec bc
    nop
    rlca
    and d
    ld b, e
    nop
    rst RST_38
    dec e
    nop
    ld a, h
    db $db
    nop
    cp $00
    dec bc
    rlca
    nop
    ld de, $0f00
    add b
    rst RST_38
    ld [$0b40], sp
    add c
    ld a, [bc]
    ld b, c
    ld a, [bc]
    add c
    or e
    ld a, [bc]
    rst RST_38
    ld de, $2001
    ld bc, $ffff
    inc h
    nop
    rst RST_38
    db $dd
    ld bc, $0a20
    ldh [$ff3f], a
    ldh [rNR41], a
    ld a, [bc]
    db $10
    rst RST_28
    db $dd
    jr c, jr_02a_6456

    ld a, [bc]
    rlca
    ld hl, sp+$0f
    jr nz, jr_02a_6446

    add e
    cp $dd
    add e
    jr nz, @+$0c

    jr nc, @-$1f

    ldh a, [rNR41]

jr_02a_6446:
    ld a, [bc]
    ld [hl], b
    rst RST_18
    ld e, l
    ld [hl], b
    jr nz, jr_02a_6457

    ld a, [hl]
    jp $207e


    ld a, [bc]
    rrca
    ld e, [hl]
    inc c
    rst RST_28

jr_02a_6456:
    add b

jr_02a_6457:
    rst RST_38
    ret nz

    ldh [rNR11], a
    ld bc, $10f0
    nop
    rst RST_38
    ld d, d
    add b
    ret nc

    nop
    jp nc, $d000

    nop
    ei
    nop
    ld a, a
    ret nc

    ld bc, $7f03
    rrca
    ld a, a
    inc a
    xor a
    ld a, a
    dec h
    ld a, a
    cpl
    reti


    ld b, $33
    rst RST_10
    nop
    rra
    cp $d5
    nop
    ld b, $fe
    ld e, $fe
    ld h, $fe
    jr c, @+$01

    cp $2e
    cp $2a
    cp $3a
    cp $3e
    xor $f9
    ld [bc], a
    ld c, $fe
    ld [bc], a
    ld bc, $c106
    ld a, [bc]
    ld b, c
    db $fd
    adc d
    db $10
    inc de
    ld b, e
    adc b
    ld b, b
    adc b
    ld c, a
    add b
    db $e3
    cp $03
    jr nz, jr_02a_64bb

    ld l, $01
    dec h
    ld [bc], a
    nop
    rst RST_38
    ret nz

    ld hl, sp-$44
    ld bc, $003e
    ccf
    ld [bc], a
    rst RST_38
    nop
    rst RST_28

jr_02a_64bb:
    jr c, @-$27

    ld a, a
    ld a, h
    rst RST_00
    ld a, h
    sub e
    cp $ff
    xor $2a
    inc de
    sbc a
    ld sp, hl
    rrca
    db $fd
    rlca
    db $fc
    ld e, l
    ld bc, $025f
    rst RST_38
    jp hl


    nop
    jr nz, jr_02a_64e8

    ld l, l
    ld bc, $2a03
    inc de
    rst RST_18
    ldh a, [$ff1f]
    dec de
    ldh a, [$ffdf]
    ld [hl], e
    db $10
    rst RST_38
    jr nc, @+$6c

    inc d
    adc l

jr_02a_64e8:
    nop
    add b
    ld de, $ffb9
    adc a
    ld [bc], a
    ld l, [hl]
    db $10
    ld a, h
    jp $907e


    ld de, $eeff
    sbc a
    ld [bc], a
    rst RST_38
    nop
    ei
    xor l
    nop
    ld a, [$fb0f]
    scf
    rrca
    rst RST_38
    dec c
    ld a, [hl+]
    inc de
    ld a, a
    ret nz

    jr nc, jr_02a_651d

    or b
    ld [de], a
    ld a, [$0222]
    jp nc, Jump_000_18bf

    ld [de], a
    nop
    ldh a, [c]
    nop
    ld h, b
    rst RST_38
    and b
    ld a, d
    xor d

jr_02a_651d:
    ld l, d
    or d
    ld l, [hl]
    or [hl]
    ld l, a
    ei
    or l
    ld l, [hl]
    reti


    db $10
    ld l, a
    or h

jr_02a_6529:
    nop
    nop
    ld [bc], a
    cpl
    nop
    ld bc, $0302
    push hl
    db $10
    cp $2a
    nop
    jr nz, jr_02a_6539

    rst RST_38

jr_02a_6539:
    ld b, $00
    dec bc
    inc b
    dec b
    ld c, $05
    ld c, $f0
    add hl, hl
    ld bc, $0220
    rst RST_38
    inc d
    ld a, [$1015]
    nop
    ld [$f510], sp
    jr jr_02a_6566

    jr nz, @-$07

    db $eb
    inc d
    ld h, b
    nop
    or b
    ld b, b
    rst RST_18
    ld d, b
    ldh [$ff50], a
    ldh [$ffef], a
    db $eb
    inc d
    add b
    nop
    rst RST_10
    ld b, b
    add b

jr_02a_6566:
    ret nz

    dec [hl]
    jr nz, jr_02a_6529

    db $eb
    ld [de], a
    inc bc
    ld bc, $4fff
    ld b, l
    ld h, a
    dec c
    scf
    ld e, l
    or a
    db $dd
    scf
    scf
    db $dd
    or a
    ld b, a
    jr nz, jr_02a_65ed

    or l
    ld d, b
    dec hl
    ldh [rNR22], a
    ldh a, [$ff66]
    inc hl
    ldh a, [rNR22]
    halt
    inc hl
    ld de, $0101
    nop
    ld [bc], a
    ld bc, $02ff
    ld bc, $0205
    ld a, [bc]
    dec b
    ld d, $08
    rst RST_38
    nop
    nop
    sub e
    inc d
    or b
    rla
    call nc, $ff33
    or [hl]
    ld d, c
    inc sp
    ret nc

    push de
    db $10
    or d
    inc d
    rst RST_38
    nop
    nop
    ld [hl], h
    sub b
    or [hl]
    ld d, b
    rst RST_30
    db $10
    rst RST_38
    ld [hl], e
    sub h
    push de
    ld [hl-], a
    push de
    ld [hl-], a
    ld [hl], l
    ld [de], a
    add d
    rst RST_38
    rla
    add b
    ld sp, $2022
    daa
    add $23
    jr nc, jr_02a_65f0

    sub $23
    or a
    pop bc
    db $dd
    ldh [$ff2b], a
    ld h, [hl]
    daa
    ld h, [hl]
    inc hl
    halt
    daa
    halt
    inc hl
    rla
    ld [$15ff], sp
    ld [$000c], sp
    dec c
    nop
    inc d
    ld [$14ff], sp
    ld [$0816], sp
    ld a, [bc]
    inc b
    ld d, h
    scf
    rst RST_38

jr_02a_65ed:
    ld d, $77
    sub b

jr_02a_65f0:
    ld [hl], a
    inc [hl]
    db $10
    sub d
    ld d, c
    rst RST_38
    or [hl]
    or d
    inc d
    di
    sub h
    ld [hl], e
    or d
    dec d
    rst RST_38
    ld d, d
    sub l
    dec d
    jp nc, Jump_000_1255

    ld [hl], l
    sub d
    rst RST_38
    or $51
    ld [hl-], a
    pop de
    ld d, d
    sub c
    and b
    ld b, b
    ld l, a
    and b
    ld b, b
    ld d, b
    and b
    ld b, h
    inc sp
    ret nc

    jr nz, @-$3a

    add hl, hl
    ld hl, sp-$3a
    inc hl
    sub $27
    sub $23
    ld a, [bc]
    inc b
    inc c
    nop
    dec e
    rst RST_38
    ld bc, $0915
    ld h, $18
    ld a, [hl+]
    inc d
    dec sp
    rst RST_38
    inc b
    dec [hl]
    ld a, [bc]
    ld d, b
    scf
    sub b
    ld [hl], a
    ld [de], a
    rst RST_38
    ld d, c
    inc [hl]
    ld d, e
    ld d, b
    scf
    ld [hl-], a
    inc d
    db $10
    rst RST_38
    db $10
    scf
    db $10
    ld d, a
    sub b
    or e
    ld d, h
    ld sp, $d6ff
    ld d, h
    sub e
    sub [hl]
    ld de, $1413
    sub l
    or a
    ld d, $91
    ld d, $40
    ld sp, $8060
    and h
    inc sp
    ld [hl], b
    or a
    add b
    ldh a, [rP1]
    ld d, b
    dec hl
    ld l, [hl]
    or l
    ldh a, [$ff2c]
    cp $fe
    nop
    dec sp
    rlca
    db $fc
    dec e
    ld [bc], a
    rla
    ld [$ff1b], sp
    inc b
    ld a, [bc]
    inc b
    ld c, $00
    dec [hl]
    nop
    ld c, b
    rst RST_38
    ld sp, $ffff
    inc d
    inc sp
    sub h
    inc sp
    ld sp, $16ff
    inc de
    inc d
    rst RST_10

jr_02a_668b:
    db $10
    di
    rst RST_10
    db $10
    rst RST_38
    rst RST_30
    rst RST_30
    rst RST_30
    sub l
    ld [de], a
    sub a
    db $10
    inc sp
    rst RST_38
    inc d
    ldh a, [c]
    dec d
    push de
    ld [hl], $92
    db $f4
    dec d
    rst RST_38
    ldh a, [$fff7]
    rst RST_30
    ld [hl], b
    add b
    ld a, b
    add b
    ld hl, sp-$01
    nop
    ret nz

    nop
    inc h
    jr jr_02a_668b

    inc a
    add b
    or a
    ld a, [hl]
    rst RST_38
    rst RST_38
    ld d, b
    dec sp
    ld [hl], b
    rst RST_08
    ld h, b
    inc a
    cp a
    sbc b
    ld c, d
    jr nz, @-$1d

    ld a, [hl+]
    db $ed
    ld de, $6c93
    ldh [rNR22], a
    db $ed
    ld de, $ff9e
    ld h, b
    nop
    nop
    ld c, $00
    ld b, $08
    ld [$0ed3], sp

jr_02a_66d7:
    ld [$11f9], sp
    ld de, $0200
    dec hl
    ld bc, $ea00
    sub a
    dec d
    ld d, l
    xor d
    db $fd
    inc de
    cp a
    inc h
    nop
    inc d
    ld b, c
    add b
    cp $ec
    ld [de], a
    ld a, c
    ld b, $00
    nop
    ld [hl], b
    nop
    jr nc, jr_02a_66d7

    ld b, b
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    db $ed
    ld de, $36c9
    ld c, h
    jr nc, jr_02a_672b

    ld d, b
    dec hl
    ld c, h
    or a
    ldh a, [$ff29]
    ld e, a
    ld b, b
    rst RST_38
    ldh a, [$ff29]
    rst RST_08
    add d
    ld a, a
    rst RST_38
    rst RST_38
    ld l, h
    ld b, c
    ldh [rLYC], a
    adc b
    ld a, [hl]
    rst RST_38
    ld sp, hl
    cp $aa
    ld d, l
    ld bc, $abfe
    ld d, h
    sbc e
    ld bc, $f6fe
    ld b, e
    rst RST_38
    rst RST_38
    cp a

jr_02a_672b:
    jr nz, jr_02a_672d

jr_02a_672d:
    add hl, hl
    rst RST_38
    cp h
    sbc h
    ld b, c
    db $10
    ld d, l
    ret z

    ld [hl], a
    ld c, a
    rst RST_30
    ld h, b
    add hl, sp
    and b
    ld [hl], a
    rst RST_18
    rst RST_38
    rst RST_38
    ldh [$ff2a], a
    ld e, l
    dec d
    db $eb
    nop
    dec b
    rst RST_38
    and b
    ld e, [hl]
    adc b
    halt
    add sp, $16
    inc a
    add d
    rst RST_38
    call c, $2c22
    ld b, d
    ld e, b
    ld [bc], a
    ld [hl], h
    add d
    rst RST_38
    ld a, h
    add b
    call nc, $e000
    ld a, [de]
    ld [hl], b
    add [hl]

jr_02a_6761:
    rst RST_38
    ldh [rTMA], a
    call z, $ec02
    ld [de], a

jr_02a_6768:
    sbc $00
    rst RST_38
    or d
    inc b
    sub h
    jr nz, jr_02a_6761

    nop
    ld h, e
    inc bc
    rst RST_38
    rlca
    add a
    rrca
    cpl
    rra
    rra
    ccf
    nop
    ld l, l
    ccf
    jr nc, jr_02a_67a0

    rra
    ret nz

    dec d
    ld b, b
    ldh a, [rTAC]
    add c
    ld e, a
    cp $8d
    ld e, b
    ld [bc], a
    ld a, l
    rlca
    ld a, b
    inc de
    ld l, b
    ld a, [hl-]
    rst RST_38
    ld b, l
    rra
    ld b, b
    rlca
    ld h, b
    ccf
    ld b, d
    dec [hl]
    rst RST_38
    ld c, b
    ld d, a
    nop
    ld [hl], e

jr_02a_67a0:
    nop
    ld e, d
    ld bc, $ff19
    db $10
    ld c, a
    nop
    ld a, e
    inc b
    scf
    ld c, h
    ld [hl], l
    rst RST_38
    nop
    inc sp
    nop
    inc hl
    ld [$006a], sp
    ld a, [hl]
    rst RST_38
    ld bc, $005b
    ld [hl-], a
    ld bc, $001f
    jp z, $c0ff

    ldh [$ffe0], a
    ldh a, [$fff0]
    ld hl, sp-$08
    ld hl, sp-$01
    ld [bc], a
    ld hl, sp+$03
    nop
    inc bc
    ldh a, [rTAC]
    nop
    add c
    rlca
    call $e040
    ld d, c
    add hl, hl
    inc d
    inc l
    ld [de], a
    rst RST_28
    ld e, e
    db $ed
    ld de, $f7ff
    nop
    add b
    ccf
    rlca
    ld h, b
    jr nc, jr_02a_6768

    scf
    add b
    ret nc

    nop
    ld h, h
    ld [hl], a
    ld b, d
    inc l
    ld [de], a
    ld bc, $0162
    daa
    ld [de], a
    rra
    rra
    ld a, [hl]
    cp $53
    ld bc, $fdff
    rst RST_38
    db $fd
    inc bc
    jr c, jr_02a_6863

    rst RST_08
    db $e3
    db $ed
    inc de
    scf
    dec c
    ld h, b
    ld b, b
    ld l, c
    db $ed
    inc de
    or [hl]
    ld d, b
    ld l, e
    ccf
    adc b
    ld h, b
    ld h, c
    ld a, a
    ret z

    ld h, [hl]
    ld h, e
    ld a, b
    ld l, l
    rst RST_00
    ldh a, [$ff5b]
    nop
    rst RST_38
    ld d, b
    ld h, l
    db $ec
    ld [de], a
    adc b
    ld h, c
    ccf
    inc c
    ldh a, [c]
    ld a, a
    ret nz

    ld a, a
    ret nz

    inc c
    ld d, c
    ld [bc], a
    ld h, l
    ret z

    ld a, d
    ld h, e
    db $10
    ld l, c
    ld [bc], a
    ld h, c
    ldh a, [$ff7f]
    ld bc, $6202
    db $fc
    ld [bc], a
    jp Jump_000_02fc


    nop
    nop
    inc h
    nop
    inc [hl]
    ld h, e
    db $e4
    ld d, c
    add b
    ld a, a
    sub a
    add b
    ld b, b
    sbc a
    rst RST_10
    ld h, b
    sbc b
    db $db
    ld h, b
    db $10
    ld l, e
    ccf
    cp l
    ccf
    jr nc, jr_02a_68be

    db $fc
    ld bc, $f904
    rst RST_30
    ld h, b
    add hl, sp

jr_02a_6863:
    rst RST_38
    inc h
    ld sp, hl
    add h
    sbc b
    ld b, e
    sbc e
    ld b, d
    sbc d
    xor $03
    ld [hl], d
    sbc e
    ld b, d
    sbc e
    ld bc, $0070
    rst RST_38
    ld [hl], $ff
    ld d, $d6
    jp nc, $d0d2

    call nc, $36d4
    rst RST_38
    ld d, $ff
    rst RST_38
    ld d, $16
    nop
    rst RST_38
    add a
    rst RST_38
    add a
    cp a
    cp a
    adc a
    adc a
    cp a
    cp a
    add a
    rst RST_38
    add a
    rst RST_38
    rst RST_38
    adc b
    adc b
    add hl, de
    db $e4
    reti


    ldh a, [c]
    ld sp, $6479
    inc b
    ld [hl], a
    ld [$4370], sp
    sbc e
    ld b, e
    or $bf
    or $f0
    ldh a, [$fff6]
    or $16
    dec de
    ld [hl], b
    ld sp, $21ff
    ld l, a
    ld l, a
    ld [hl], e
    ld h, c
    db $db
    db $db
    ret c

    rst RST_38
    ret c

    db $db
    db $db

jr_02a_68be:
    adc e
    adc e
    rst RST_38
    rst RST_38
    rst RST_18
    rst RST_38
    rst RST_18
    add h
    inc b
    ld e, l
    ld e, l
    ld e, c
    ld h, h
    reti


    cp l
    ld h, h
    ld [hl-], a
    ld [hl], l
    add hl, de
    inc h
    reti


    db $e4
    ld c, b
    ld [hl], l
    sbc h
    rst RST_30
    ld b, e
    sbc a
    ld b, b
    call nc, JoypadTransitionInterrupt
    ld a, l

jr_02a_68df:
    ld a, l
    inc hl
    ld sp, hl
    ld hl, $53e3
    ld [de], a
    ld h, e
    adc h
    inc b
    rst RST_10
    rst RST_10
    inc c
    rst RST_30
    inc b
    rst RST_18
    rst RST_18
    sbc b
    ld [hl], l
    ld e, c
    inc h
    sbc c
    and h
    cp l
    ld e, c
    ld a, l
    ld [hl], b
    add hl, de
    db $e4
    ld sp, hl
    inc b
    db $f4
    ld h, b
    nop
    rst RST_38
    ld de, $1500
    ld c, [hl]
    dec d
    ld e, d
    rlca
    nop
    nop
    inc bc
    ld c, $0e
    inc de
    inc e
    rla
    nop
    rst RST_38
    rst RST_38
    dec d
    nop
    ld [bc], a
    rst RST_38
    rst RST_38
    ld e, h
    ld [hl], h
    ld a, b
    ld [hl], b
    ld b, b
    dec d
    nop
    ld [bc], a
    ld b, a
    adc h
    ld b, d
    cp b
    ld d, h
    jr c, jr_02a_68df

    or e
    jp $4402


    inc c
    jr z, @-$49

    ld a, [$00fa]
    nop
    add b
    ld bc, $0d47
    rla
    dec e
    db $fc
    cp $fd
    dec d
    db $fc
    inc bc
    db $fd
    ret nz

    add b
    nop
    inc bc
    inc bc

jr_02a_6945:
    ld h, a
    daa
    sbc e
    nop
    jr jr_02a_6945

    push af
    jp hl


    ldh [$ffd0], a
    ret nz

jr_02a_6950:
    ldh a, [$ffa3]
    ld hl, $4601
    ld h, d
    ld b, b
    nop
    inc c
    adc d
    ld [$e602], sp
    xor [hl]
    ld b, $00
    nop
    ld [hl], b
    inc l
    sbc [hl]
    ld c, a
    daa
    ld b, $00
    inc bc
    ld bc, $0e00
    ld e, $3e
    ld a, $3c
    inc b
    ld b, [hl]
    inc hl
    ld d, c
    ld l, c
    dec [hl]
    add hl, sp
    cp [hl]
    db $10
    ld [$8400], sp
    add d
    ret


    adc h
    inc e
    dec d
    nop

jr_02a_6982:
    ld [$15ff], sp
    nop
    ld [bc], a
    dec d
    rst RST_38
    ld [bc], a
    dec d
    nop
    ld [bc], a
    dec d
    rst RST_38
    inc b
    nop
    nop
    inc bc
    ld c, $0e
    inc de
    inc e
    stop
    add b
    ldh [$ff38], a
    jr c, jr_02a_6982

    sub b
    dec d
    nop
    db $10
    rla
    inc e
    inc de
    ld c, $0e
    inc bc
    nop
    nop
    adc l
    add l
    add [hl]
    ld a, $15
    rrca
    ld [bc], a
    inc c
    and b
    ret nc

    ret z

    inc h
    jr nc, jr_02a_6950

    sub b
    add b
    ld bc, $1b13
    dec sp
    ld a, e
    cp l
    sbc a
    sbc a
    add e
    ld [hl], e
    dec d
    cp e
    inc b
    or b
    cp $0a
    db $fc
    ld d, [hl]
    ldh a, [$ff0a]
    nop
    nop
    pop af
    ld h, c
    ld h, c
    ld c, l
    ld e, h
    ld hl, sp-$10
    ldh [$ff3f], a
    jr jr_02a_69de

    add a
    add a
    add d

jr_02a_69de:
    add b
    ldh [rNR34], a
    rrca
    adc a
    adc a
    add a
    inc bc
    nop
    nop
    adc a
    xor l

jr_02a_69ea:
    db $d3
    jp $e4ea


    ld [hl], d
    dec sp
    or d
    inc h
    add hl, hl
    inc hl
    ld d, e
    ld b, a
    ld l, a
    add $04
    ld [bc], a
    inc c
    db $10
    jr nz, jr_02a_6a3e

    add [hl]
    ld a, $40
    dec b
    dec bc
    ld b, c
    dec a
    rst RST_00
    ld b, e
    ld a, [de]
    nop
    ld a, a
    ld a, a
    dec d
    nop
    ld [bc], a
    ld a, a
    ld a, a
    nop
    ld b, $0c
    ld sp, $7b7b

jr_02a_6a16:
    ld sp, $0080
    jr nc, jr_02a_6a7b

    add b
    ret nz

    ret nz

    add b
    nop
    nop
    and b
    jr jr_02a_69ea

    rst RST_28
    rst RST_28
    add $00
    nop
    inc c
    ld b, $01
    inc bc
    inc bc

jr_02a_6a2e:
    ld bc, $0000
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    nop
    rst RST_28
    cp a
    rst RST_38
    rst RST_38
    rst RST_10
    rst RST_38

jr_02a_6a3e:
    db $fd
    rst RST_38
    rst RST_38
    ei
    rst RST_38
    cp a
    ei
    rst RST_38
    rst RST_18
    cp $ef
    ld a, [hl]
    rst RST_30
    rst RST_38
    rst RST_38
    ei
    rst RST_10
    rst RST_38
    db $db
    rst RST_38
    ld l, [hl]
    rst RST_38
    rst RST_38
    ld a, e
    rst RST_38
    ei
    db $ed
    ld a, a
    db $ed
    rst RST_38
    rst RST_38
    ld a, a
    rst RST_38
    or $ff
    cp e
    rst RST_38
    or l
    dec d
    rst RST_38
    ld [bc], a
    db $fd
    ld [$c006], sp
    ret nz

    ldh [$fffc], a
    jr nc, jr_02a_6a70

jr_02a_6a70:
    nop
    ld bc, $0603
    ld bc, $0806
    inc c
    jr c, jr_02a_6a16

    ld a, d

jr_02a_6a7b:
    or d
    ld [hl-], a
    db $ec
    ret c

    jr nc, jr_02a_6adf

    ld a, b
    ldh a, [$ff81]
    add e
    rrca
    rra
    ld a, a
    dec d
    nop
    ld [bc], a
    dec d
    rst RST_38
    inc b
    nop
    inc c
    jr @+$65

    rst RST_30
    rst RST_30
    ld h, e
    nop
    nop
    ld h, c
    pop bc
    nop
    add c
    add c
    dec d
    nop
    ld [bc], a
    ld h, b
    jr nc, jr_02a_6a2e

    sbc $de
    adc h
    nop
    nop
    ld a, a
    add b
    ld h, b
    ldh a, [$fff7]
    ld h, a
    rrca
    dec d
    rst RST_38
    dec b
    nop
    nop
    cp l
    ld a, [hl]
    rst RST_10
    db $fd
    cp [hl]
    rst RST_38
    rst RST_28
    nop
    rst RST_38
    rst RST_30
    rst RST_18
    cp e
    cp $b7
    db $fd
    nop
    cp a
    rst RST_30
    cp $bf
    ei
    rst RST_38
    db $ed
    nop
    xor a
    rst RST_38
    cp a
    db $ed
    rst RST_38
    cp l
    ld [hl], a
    nop
    cp a
    db $fd
    rst RST_38
    rst RST_38
    or a
    cp $df
    nop
    rst RST_38
    rst RST_28
    db $fd
    or a

jr_02a_6adf:
    rst RST_38
    rst RST_10
    rst RST_38
    nop
    ei
    ld e, a
    db $fd
    rst RST_38
    or a
    rst RST_38
    ld a, l
    rst RST_30
    cp l
    rst RST_28
    rst RST_38
    rst RST_38
    cp a
    ld [hl], l
    rst RST_38
    dec d
    nop
    ld [$9f89], sp
    adc h
    inc bc
    ret z

    ld e, l
    ld sp, hl
    ld [hl], l
    ld a, [$6202]
    add b
    ld h, $3a
    ld e, [hl]
    inc e
    db $db
    inc [hl]
    inc c
    ld e, h
    ld e, c
    sbc d
    rst RST_08
    ld [$3a6b], a
    add hl, sp
    add hl, bc
    call nz, $f64a
    adc $89
    sbc a
    add b
    rrca
    ret z

    ld e, l
    ld sp, hl
    ld c, l
    ld a, [$4272]
    add b
    ld h, $3a
    ld e, [hl]
    inc a
    rst RST_10
    db $10
    inc d
    ld e, b
    ld e, e
    sbc [hl]
    rst RST_08
    ld [$4a3b], a
    add hl, bc
    add hl, bc
    sub h
    ld a, [$ce76]
    nop
    add b
    ldh [$ff38], a
    jr c, @-$1a

    sbc h
    ld a, h
    dec e
    rla
    dec c
    rlca
    ld bc, $0015
    ld [bc], a
    ld e, h
    ld [hl], h
    ld a, b
    ld [hl], b
    ld b, b
    dec d
    nop
    ld [bc], a
    dec d
    rst RST_38
    rrca
    nop
    dec d
    rst RST_38
    inc b
    nop
    nop
    rst RST_38
    cp $fc
    db $fc
    dec d
    ld hl, sp+$02
    db $fc
    ret nz

    nop
    ld bc, $3800
    ld [hl], b
    ld [hl], e
    ld a, c
    inc bc
    nop
    add b
    nop
    db $10
    ld a, b
    db $fc
    db $fc
    rst RST_38
    rst RST_38
    ld a, a
    ld a, a
    dec d
    ccf
    inc bc
    db $fc
    cp $fc
    dec d
    db $fd
    inc bc
    db $fc
    ret nz

    cp a
    ld a, a
    ld a, h
    inc e
    ld [$a040], sp
    db $fc
    ldh [rP1], a
    ld [bc], a
    ld b, $0f
    rrca
    rra
    ld b, b
    ld l, b
    ld l, h
    inc l
    ld [bc], a
    db $10
    jr nc, jr_02a_6c07

    ld b, $2c
    ld l, h
    ld l, b
    add b
    db $10
    jr @-$62

    cp $0f
    inc bc
    ld bc, $c080
    ldh [rP1], a
    inc bc
    db $fd
    ldh a, [$ffe0]
    ret nz

    nop
    nop
    ld [bc], a
    ld [$4408], sp
    ld [hl+], a
    ld [de], a
    ld a, [bc]
    ld b, $00
    adc a
    rlca
    rlca
    inc bc
    ld bc, $0015
    ld [bc], a
    dec d
    rst RST_38
    rlca
    nop
    dec d
    rst RST_38
    ld [bc], a
    dec d
    nop
    dec bc
    dec d
    rst RST_38
    ld b, $f8
    db $fc
    cp $ff
    rst RST_38
    cp $fc
    ldh a, [rP1]
    ld a, a
    dec d
    rst RST_38
    inc bc
    ccf
    rrca
    nop
    dec d
    rst RST_38
    ld b, $7f
    ccf
    dec d
    ld a, a
    ld b, $90
    adc b
    jr nz, @+$42

    ld [hl], b
    jr nc, jr_02a_6c18

    ld de, $0f1f
    rlca
    ld [bc], a

jr_02a_6bed:
    ld bc, $0703
    rrca
    ld a, e
    dec d
    ld a, l
    ld [bc], a
    dec a
    dec d
    dec sp
    ld [bc], a
    ld a, l
    cp l
    dec d
    db $dd
    inc b
    call c, Call_02a_45ff
    rst RST_38
    add hl, hl
    rst RST_38
    ld d, c
    rst RST_38
    nop

jr_02a_6c07:
    dec c
    add hl, de
    ld de, $0221
    ld b, $0c
    jr @+$17

    nop
    rrca
    dec sp
    dec de
    dec c
    dec c
    dec b
    inc bc

jr_02a_6c18:
    ld bc, $dc00
    ret c

    ret nc

    ret nc

    and b
    and b
    add b
    nop
    ld hl, sp-$04
    ldh a, [$ffe0]
    ret nz

    add b
    ld bc, $3001
    ld h, b
    ld b, h
    ld a, $02
    nop
    cp b
    db $e4
    nop
    dec d
    ld a, a
    inc b
    dec d
    nop
    ld [bc], a
    add $0c
    jr nc, jr_02a_6cb5

    ld a, b
    jr nc, jr_02a_6c40

jr_02a_6c40:
    nop
    ld bc, $0c03
    ld e, $1e
    inc c
    nop
    ld e, $80
    nop
    ret nz

    ldh [$ffe0], a
    ret nz

    nop
    nop
    inc c
    add $31
    ld a, e
    ld a, e
    ld sp, $1500
    rst RST_38

jr_02a_6c5a:
    ld [bc], a
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    db $10
    ld b, c
    ld e, $e0
    jr z, jr_02a_6bed

    ld a, [$0000]
    add h
    ld [hl], b
    ld c, a
    db $f4
    add c
    ld l, $71
    db $10
    add c
    ld [$39fe], sp
    call nz, $0728
    inc h
    nop
    sub c
    nop
    rst RST_38
    cp h
    ret nz

    inc b
    ld [de], a
    add b
    ld [de], a
    nop
    cp $8d
    jr nc, @+$6b

    nop
    ld b, h
    nop
    ld c, d
    nop
    rst RST_38
    jr jr_02a_6cc2

    inc b
    dec d
    nop
    rlca
    ld bc, $0703
    ld c, $00
    ld bc, $7003
    jr c, jr_02a_6c5a

    inc a
    ld a, h
    ldh a, [$ffe0]
    ret nz

    and b
    add b
    dec d
    nop
    ld c, $8c
    jr jr_02a_6d0b

    ldh a, [$fff0]
    ld h, b
    nop
    nop
    dec c
    dec b
    jr @+$3f

    dec a

jr_02a_6cb5:
    jr jr_02a_6cb7

jr_02a_6cb7:
    nop
    inc bc
    ld bc, $c080
    ret nz

    add b
    nop
    nop
    ld a, a
    sbc a

jr_02a_6cc2:
    ld l, a
    ldh a, [$fff0]
    ld h, b
    dec d
    nop
    ld b, $ff
    rst RST_38
    ld b, e
    add c
    jr z, jr_02a_6cd1

    ld b, c
    nop

jr_02a_6cd1:
    stop
    ld hl, sp+$0f
    jr nz, jr_02a_6d1b

    ld bc, $0248
    nop
    ld e, h
    ld hl, sp+$01
    ld b, b
    inc b
    nop
    ld [de], a
    nop
    ld d, c
    inc bc
    ld b, b
    ld [de], a
    nop
    ld b, d
    adc b
    nop
    ret nz

    ld [bc], a
    rst RST_38
    nop
    ld c, b
    ld bc, $0020
    ld b, b
    sub b
    ld [bc], a
    ld c, b
    nop
    jr z, jr_02a_6cfa

jr_02a_6cfa:
    nop
    inc b
    and b
    ld [bc], a
    nop
    ld c, b
    rst RST_38
    sub d
    jr z, jr_02a_6d66

    ld d, b
    ld b, b
    rst RST_38
    ld b, b
    adc d
    nop
    nop

jr_02a_6d0b:
    dec d
    rst RST_38
    rlca
    ld a, a
    ld a, a
    inc bc
    ld [hl], b
    ld c, e
    and e
    rst RST_38
    ei
    db $fc
    db $fc
    add b
    dec e
    dec h

jr_02a_6d1b:
    add l
    cp l
    rst RST_38
    daa
    ld l, b
    ld a, a
    jr c, jr_02a_6d62

    inc a
    sbc a
    ld b, h
    sbc h
    inc c
    db $ed
    dec a
    ld hl, sp+$30
    ldh [c], a
    inc b
    ld a, a
    ld [hl], e
    inc bc
    ld [hl], b
    ld c, e
    and e
    rst RST_38
    di
    db $fc
    adc h
    add b
    dec e
    dec h
    add l
    cp l
    rst RST_18
    dec hl
    ld l, h
    ld [hl], a
    jr c, jr_02a_6d7f

    ccf
    sbc [hl]
    ld b, h
    adc h
    inc [hl]
    push de
    dec a
    ld a, b
    ldh a, [$ffe2]
    inc b
    dec d
    rst RST_38
    rla
    rst RST_38
    ld de, $1200
    add b
    rst RST_38
    db $fc
    ld hl, sp-$10
    ldh [$ffe1], a
    pop bc
    ret nz

    nop
    nop
    rrca
    ccf

jr_02a_6d62:
    rst RST_38
    rst RST_38
    ldh [$fff8], a

jr_02a_6d66:
    nop
    nop
    ret nz

    ld hl, sp-$01
    rst RST_38
    rlca
    inc bc
    ld [de], a
    nop
    ld [bc], a
    ld bc, $1207
    rst RST_38
    ld [bc], a
    nop
    nop
    ld a, $ff
    cp a
    rst RST_18
    add b
    nop
    rlca

jr_02a_6d7f:
    ld bc, $0000
    add b
    ld [$0a14], sp
    ld [de], a
    rst RST_38
    ld [bc], a
    ld a, a
    rra
    ld [de], a
    rrca
    ld [bc], a
    ld [de], a
    ret nz

    dec b
    add b
    adc b
    cp $12
    ld a, a
    ld [bc], a
    ld [de], a
    ccf
    inc bc
    ld bc, $c080
    add b
    ret nc

    and c
    jp Jump_000_12d7


    rst RST_38
    rlca
    ld [de], a
    nop
    ld [bc], a
    ld bc, $0707
    rrca
    add a
    ld e, $7f
    ld a, a
    ld [de], a
    rst RST_38
    inc bc
    cp $12
    rrca
    inc bc
    ld [de], a
    rlca
    inc bc
    ld [de], a
    rst RST_38
    ld c, $00
    adc h
    add h
    ld [de], a
    add b
    inc bc
    nop
    nop
    ld a, a
    nop
    inc sp
    inc bc
    ld de, $00a3
    rrca
    rst RST_38
    nop
    rst RST_38
    rst RST_08
    adc a
    rst RST_38
    nop
    rst RST_38
    rst RST_38
    nop
    ld [de], a
    rst RST_38
    inc bc
    nop
    rst RST_38
    jp $f200


    ldh [$fff0], a
    add sp, $00
    rst RST_38
    ld hl, sp+$00
    sbc h
    jr jr_02a_6dfb

    nop
    ld [bc], a
    ldh a, [rNR12]
    rlca
    ld [bc], a
    ld [de], a
    inc bc
    ld [bc], a
    nop
    nop
    ld [de], a
    rst RST_38
    dec b
    ld bc, $1200
    rst RST_38

jr_02a_6dfb:
    ld b, $1f
    ld [de], a
    rst RST_38
    ld [bc], a
    cp $fe
    ld [de], a
    rst RST_38
    ld [bc], a
    ldh a, [$ff83]
    jr nc, jr_02a_6e1b

    nop
    inc bc
    ldh a, [$ff3f]
    rst RST_38
    ld [de], a
    nop
    dec b
    rra
    rst RST_38
    rst RST_38
    rlca
    ld [de], a
    nop
    inc bc
    ld [de], a
    rst RST_38
    inc b

jr_02a_6e1b:
    inc bc
    nop
    nop
    ld [de], a
    rst RST_38
    dec b
    rrca
    ld bc, $ff12

jr_02a_6e25:
    ld c, $80
    ld [de], a
    rst RST_38
    inc bc
    ldh a, [$ffc0]
    nop
    nop
    jp $f8ff


    ld [de], a
    nop
    inc b
    ld hl, sp-$80
    ld [de], a
    nop
    dec b
    rlca
    inc bc
    ld bc, $0012
    ld [bc], a
    inc bc
    rra
    nop
    ldh [$fff8], a
    ei
    db $f4
    rst RST_20
    call z, Call_000_00ca
    inc bc
    inc c
    call Call_02a_53a5
    sub [hl]
    sub b
    nop
    ret nz

    jr nz, jr_02a_6e25

    db $ed
    ld sp, $3f0b
    nop
    nop
    ld a, b
    ld c, $02
    add c
    ld l, b
    jr nc, jr_02a_6e62

jr_02a_6e62:
    nop
    inc bc
    ld sp, $4a48
    or b
    ld [de], a
    nop
    ld [bc], a
    ldh [$ffc0], a
    ld bc, $d800
    ld [hl], a
    nop
    ld bc, $7019
    add e
    rst RST_20
    ld a, $13
    nop
    add b
    ret nz

    adc a
    ld e, b
    sub e
    jp nc, Jump_000_0064

    rlca
    rra
    rst RST_18
    rst RST_28
    rst RST_08
    rst RST_30
    ld h, a
    ret nz

    set 2, [hl]
    sub $d2
    jp z, $e4e9

    add l
    add e
    or a
    ld e, a
    ld d, a
    scf
    dec d
    sub b
    sbc h
    ld h, $c1
    rst RST_18
    cp [hl]
    cp l
    ld a, d
    cp c
    ld [$7342], sp
    ld h, $1e
    sbc $19
    or $fc
    add [hl]
    or d
    or d
    ei
    ld a, b
    ei
    rst RST_38
    ld b, b
    ld b, $0c
    nop
    add h
    ret nz

    ld c, a
    rst RST_08
    dec a
    adc e
    inc [hl]
    ld a, e
    sbc d
    ld h, d
    ld b, h
    db $eb
    ld [hl], a
    ld [hl], h
    ld hl, sp-$11
    pop hl
    pop af
    ld [hl], e
    ld a, $67
    and a
    and a
    daa
    daa
    ld c, a
    ld c, a
    sbc a
    ldh a, [c]
    or $fb
    db $fd
    cp $12
    rst RST_38
    ld [bc], a
    ld sp, hl
    cp e
    rra
    cpl
    xor $0c
    db $ec
    db $ec
    ccf
    ld a, a
    ccf
    sbc [hl]
    call $b56d
    rst RST_10
    sub $b9
    ld a, h
    rst RST_00
    or c
    ld hl, sp+$70
    ld [hl], d
    ld a, e
    ld a, h
    add b
    add c
    rst RST_38
    add [hl]
    inc a
    nop
    daa
    sub a
    ei
    adc l
    scf
    ld a, [$b27e]
    cp $f4
    push af
    push hl
    rst RST_28
    ret z

    sub $d6
    cp l
    or c
    ld h, d
    ldh [$ffaa], a
    and c
    xor a
    rst RST_28
    rra
    ccf
    ld a, a
    ld [de], a
    rst RST_38
    inc b
    xor $f6
    rst RST_30
    rst RST_30
    di
    di
    pop af
    ldh [$ffd7], a
    rst RST_10
    ld d, a
    rla
    or l
    ldh a, [$ffea]
    ld [$076a], a
    ld b, h
    ld h, $48
    ld [hl], b
    ccf
    ld b, e
    xor $fe
    nop
    xor $00
    ld a, b
    rst RST_38
    rst RST_38
    jp Jump_000_3ba1


    push bc
    rlca
    ld a, $e6
    sub $d4
    ld [de], a
    ld e, b
    ld [bc], a
    add hl, de
    dec sp
    cpl
    ld h, [hl]
    ld [de], a
    rst RST_28
    ld [bc], a
    xor a
    sbc a
    ld [de], a
    rra
    ld [bc], a
    ld [de], a
    rst RST_38
    inc b
    cp $f8
    ldh [rIE], a
    rst RST_38
    ld hl, sp-$20
    add a
    rra
    cpl
    ld e, a
    ld [$0c4c], sp
    ld b, $23
    ld hl, $2000
    ld l, e
    add c
    ld b, c
    inc h
    inc [hl]
    ld a, [de]
    dec c
    ld b, $24
    jr jr_02a_6f8f

    ld [$0201], sp
    ld bc, $00c0
    nop
    inc bc
    ld a, h
    rst RST_28
    rlc b
    db $10
    ld d, d
    ld a, [hl-]
    ld hl, sp+$78
    add hl, de
    sbc c
    sub e
    ld d, $64
    pop bc
    jp $8ac1


    adc h
    jr c, jr_02a_6ffd

    db $10
    db $10

jr_02a_6f8f:
    ld [de], a
    nop
    ld [bc], a
    jr nz, jr_02a_6fb4

    add b
    rst RST_38
    ld a, a
    rra
    rlca
    ld b, c
    ld [hl], b
    inc e
    ld e, $12
    rst RST_38
    inc b
    ld a, a
    rrca
    nop
    rst RST_38
    cp $00
    nop
    rlca
    ccf
    ld [de], a
    rst RST_38
    ld [bc], a
    ld [de], a
    nop
    ld [bc], a
    ldh a, [$ffe0]
    ld hl, sp-$08
    nop

jr_02a_6fb4:
    dec b
    ld a, [bc]
    dec d
    dec bc
    rla
    cpl
    rra
    cp a
    ld a, a
    ld [de], a
    cp $02
    ld [de], a
    rst RST_38
    ld [bc], a
    jr nc, jr_02a_6ff5

    nop
    db $10
    jr @+$1a

    inc bc
    dec bc
    inc bc

jr_02a_6fcc:
    stop
    ld [$0606], sp
    add d
    jp $8f30


    ld h, b
    jr jr_02a_700b

    ld bc, $0308
    jr jr_02a_6fcc

    nop
    jr c, @+$01

    jp Boot


    dec e
    di
    add hl, bc
    inc a
    ld hl, sp-$10
    ld b, b
    nop
    inc bc
    rlca
    rrca
    ld e, $1e
    ld a, $fc
    ldh a, [rNR22]
    rla

jr_02a_6ff5:
    inc de
    inc hl
    ld h, e
    ld h, c
    ld h, c
    pop bc
    ld [de], a
    rst RST_38

jr_02a_6ffd:
    inc b
    cp $fc
    ld hl, sp+$00
    add b
    ldh [$fff8], a
    ld a, h
    inc a
    ld e, $1e
    rst RST_38
    nop

jr_02a_700b:
    nop
    inc bc
    ld [de], a
    rrca
    inc bc
    ld [de], a
    rst RST_38
    rlca
    ld hl, sp+$12
    ldh a, [$ff03]
    ld [de], a
    ldh [rSC], a
    ccf
    ccf
    ld [de], a
    ld a, [hl]
    ld [bc], a
    ld [de], a
    cp $02
    ccf
    ccf
    ld [de], a
    rra
    inc bc
    rrca
    rrca
    adc l
    adc b
    adc [hl]
    adc h
    call nz, $c6c5
    jp nz, $fbe7

    ldh [rP1], a
    nop
    ld [hl], b
    ld a, h
    ld a, [hl]
    ldh a, [$fffd]
    ld a, [hl]
    ld [de], a
    inc a
    ld [bc], a
    add hl, sp
    ld sp, $3900
    ld a, h
    ld a, h
    cp $fe
    rst RST_38
    rst RST_38
    rra
    rst RST_38
    ld hl, sp-$10
    ld [hl], b
    ld [hl], b
    jr nc, jr_02a_7069

    ret nz

    nop
    nop
    ld bc, $1900
    ld a, l
    ld sp, hl
    pop bc
    pop bc
    ld [de], a
    add c
    inc bc
    ld b, c
    ld b, e
    ld hl, sp-$08
    pop af
    ld [de], a
    di
    ld [bc], a
    db $e3
    rst RST_20
    ld a, [hl]

jr_02a_7069:
    cp $12
    rst RST_38
    dec b
    ld [de], a
    rrca
    ld [bc], a
    rlca
    rlca
    ld [de], a
    add a
    ld [bc], a
    ld [de], a
    rst RST_38
    dec b
    cp $a8
    ld [de], a
    pop bc
    ld [bc], a
    add e
    add e
    add c
    ld bc, $1200
    cp $03
    ld [de], a
    rst RST_38
    ld [bc], a
    rra
    ld [de], a
    rrca
    inc bc
    rlca
    inc bc
    add e
    add c
    jp $d3e3


    pop hl
    pop de
    jp hl


    pop af
    jp hl


    ld a, a
    ld a, a
    cp a
    ccf
    rra
    rst RST_18
    rst RST_00
    add e
    ld [hl], a
    di
    ldh [$ffe4], a
    jp nz, $80c2

    add b
    rst RST_38
    rst RST_38
    cp $7c
    cp d
    ld d, l
    nop
    sbc $d9
    sbc a
    ld c, a
    adc a
    add a
    rlca
    inc bc
    inc bc
    ld sp, hl
    ld a, [$f2fa]
    ldh a, [c]
    ldh [c], a
    push bc
    adc l
    ld b, e
    add e
    add a
    add a
    adc a
    adc a
    rrca
    rra
    rst RST_20
    ld [de], a
    rst RST_00
    inc b
    jp Jump_000_1283


    rst RST_38
    dec b
    db $fc
    ret nz

    jp $c1c1


    ld [de], a
    pop hl
    ld [bc], a
    nop
    nop
    ld d, h
    xor b
    cp $12
    rst RST_38
    inc b
    nop
    inc bc
    ld bc, $c081
    ret nz

    and b
    ret nc

    rrca
    ld [de], a
    rst RST_38
    inc b
    ccf
    rra
    pop bc
    ret nz

    ret nz

    ldh [$fff0], a
    ldh a, [$fff8]
    ld hl, sp-$01
    db $fc
    ld hl, sp-$0f
    db $e3
    and $c6
    rst RST_00
    nop
    rst RST_38
    ldh a, [$ffce]
    rra
    add b
    sbc $67
    nop
    ret nz

    inc a
    rlca
    ret nz

    inc c
    dec bc
    pop bc
    nop
    nop
    ld bc, $f806
    inc bc
    db $fc
    db $fc
    nop
    ccf
    pop bc
    nop
    ld c, a
    jr nz, jr_02a_719d

    pop bc
    rlca
    ld sp, hl
    cp $ff
    ld a, a
    rst RST_30
    db $eb
    push af
    ld [de], a
    rst RST_38
    ld [bc], a
    ld a, a
    sbc a
    rrca
    adc a
    ld c, a
    jp $12c2


    pop bc
    ld [bc], a
    ret z

    sbc b
    sub h
    ld bc, $8a90
    sbc [hl]
    sbc $de
    call c, $f2dc
    ld a, c
    add hl, sp
    ld a, c
    add hl, hl
    ld e, d
    inc a
    jr z, jr_02a_71c0

    ld a, h
    ld a, d
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, [hl]
    cp $87
    sbc a
    sbc a
    cp [hl]
    cp b
    cp b
    pop af
    ld a, b
    pop hl
    add b
    sub h
    ld l, $5e
    cp [hl]
    ld a, h
    db $fd
    adc a
    rst RST_08
    adc a
    rst RST_08
    add a
    rst RST_00
    and a
    rst RST_00
    ld [de], a
    rst RST_38
    ld c, $00
    sub e
    sbc e
    add b
    sbc a
    adc a
    sub a
    dec bc
    nop
    adc b
    add b
    ld c, h
    db $fc
    xor $5c
    add b
    inc sp
    ld bc, $000f
    ld sp, $0070
    rlca
    ld [de], a
    rst RST_38
    ld [bc], a
    xor d
    ld a, l
    ld a, [hl+]
    nop
    rst RST_38
    rst RST_38
    inc a
    ret nz

    dec c
    rra
    rrca
    rla
    ldh [rIE], a
    rst RST_20
    nop
    ld h, d
    rst RST_20
    rst RST_38
    rst RST_38
    nop
    ld c, $a7
    rst RST_00

jr_02a_719d:
    rlca
    jp $fbe3


    ldh a, [$ff03]
    ld [de], a
    rst RST_38
    dec b
    ld bc, $12fc
    rst RST_38
    ld b, $1f
    ld [de], a
    rst RST_38
    ld [bc], a
    cp $fe
    ld [de], a
    rst RST_38
    ld [bc], a
    ldh a, [$ff8c]
    ld b, b
    ld [de], a
    nop
    inc bc
    ldh a, [$ffc0]
    nop
    ld bc, $0012

jr_02a_71c0:
    inc b
    ldh [rP1], a
    nop
    jr c, jr_02a_71cd

    ld [de], a
    nop
    ld [bc], a
    rra
    rst RST_38
    ccf
    rlca

jr_02a_71cd:
    ld bc, $000c
    nop

jr_02a_71d1:
    ld [de], a

jr_02a_71d2:
    rst RST_38
    inc b
    rra
    ldh a, [$ff0e]
    ld [de], a
    rst RST_38
    ld b, $00
    ld [de], a
    rst RST_38
    inc b
    db $fc
    add b
    ld a, [hl]
    ldh a, [$fff0]
    ld a, [$cff0]
    inc a
    ret nz

    nop
    inc a
    nop
    rlca
    ld hl, sp-$80
    ld [de], a
    nop
    ld [bc], a
    rlca
    ld a, b
    ld [de], a
    nop
    dec b
    rst RST_20
    dec de
    dec b
    ld [bc], a
    ld [bc], a
    inc b
    inc bc
    rra
    nop
    ldh [$fff8], a
    ld hl, sp-$0d
    add sp, -$30
    call nc, Call_000_0c03
    inc bc
    inc bc
    ret nz

    pop hl
    ld h, e
    ld h, a
    pop bc
    jr nz, jr_02a_71d1

    ldh [$ff30], a
    set 6, c
    adc $00
    ret nz

    ld [de], a
    nop
    inc bc
    jr z, jr_02a_7235

    ld [de], a
    nop
    inc bc
    jr nc, jr_02a_71d2

    ld [de], a
    nop
    rlca
    ld d, b
    and $01
    ld b, $06
    rrca
    ld a, h
    jr jr_02a_7235

    rrca
    add b
    ld b, b
    nop
    nop
    rlca
    inc c

jr_02a_7235:
    dec c
    sbc e
    nop
    rlca
    rra
    rra
    rrca
    cpl
    rlca
    sub a
    rst RST_18
    call nc, $c9c9
    call z, $e6d4
    db $eb
    ld h, d
    ld h, b
    pop bc
    and e
    dec hl
    dec bc
    dec bc
    rrca
    ld h, a
    pop af
    cp $ff
    rst RST_38
    cp $bd
    ld a, a
    ldh a, [$ff80]
    add b
    pop bc
    add c
    ld hl, $efe6
    nop
    ld a, b
    ld [de], a
    ld a, h
    ld [bc], a
    ld [de], a
    rst RST_38
    ld [bc], a
    ccf
    ld bc, $0100
    ld a, b
    ccf
    cp a
    cp a
    add e
    ld a, a
    rst RST_38
    rst RST_38
    ld a, a
    sbc a
    ei
    db $fc
    adc b
    adc e
    rlca
    db $10
    jr jr_02a_7285

    add c
    jp Jump_02a_5797


    ld d, a
    rst RST_10
    rst RST_10
    xor a

jr_02a_7285:
    xor a
    ld e, a
    push af
    pop af
    ld hl, sp-$04
    cp $12
    rst RST_38
    ld [bc], a
    ld b, $44
    ldh [$ffc0], a
    ld bc, $e303
    db $e3
    ld [de], a
    rst RST_38
    ld [bc], a
    ld a, a
    ld a, $9e
    adc $ec
    rst RST_28
    add $80
    jr c, jr_02a_7322

    ld a, a
    rst RST_38
    db $fc
    rst RST_38
    ei
    ld a, b
    nop
    nop
    ld a, c
    ei
    nop
    sbc a
    rrca
    rlca
    ld [hl], e
    ld sp, hl
    db $fd
    db $fd
    ld a, l
    ld [de], a
    ld hl, sp+$03
    ldh a, [$fff7]
    rst RST_28
    rst RST_28
    ld b, [hl]
    ld c, [hl]
    adc l
    ld c, $44
    ld b, c
    ld c, a
    rrca
    rst RST_18
    cp a
    ld a, a
    ld [de], a
    rst RST_38
    inc b
    pop hl
    pop af
    ld [de], a
    ldh a, [rDIV]
    ldh [rNR12], a
    db $ec
    inc bc
    ld c, [hl]
    rrca
    rlca
    rlca
    ldh a, [$ffe6]
    add b
    add $f0
    rst RST_38
    rst RST_38
    cp a
    nop
    xor $00
    xor $00
    ld [de], a
    rst RST_38
    ld [bc], a
    inc e
    call z, $8200
    ld a, $ff
    rst RST_38
    rst RST_28
    rst RST_28
    ld [de], a
    rst RST_20
    ld [bc], a
    and $c4
    ret nz

    add b
    ld [de], a
    rrca
    inc bc
    ld [de], a
    rra
    inc bc
    ld [de], a
    rst RST_38
    inc b
    cp $f9
    rst RST_20
    rst RST_38
    rst RST_38
    ld hl, sp-$19
    sbc b
    ld h, b
    ret nc

    and b
    nop
    nop
    ld [de], a
    ret nz

    inc bc
    ldh [$ffe0], a
    rlca
    rlca
    add a
    ld b, e
    inc bc
    ld bc, $0000
    jp $e0e0


    rst RST_30
    ld [de], a
    rst RST_38

jr_02a_7322:
    ld [bc], a
    ccf
    rst RST_38
    nop
    db $fc
    ld [de], a
    rst RST_38
    inc bc
    rst RST_28
    adc a
    rlca
    rlca
    add a
    and $e6
    db $ec
    add sp, -$80
    nop
    nop
    ld b, $04
    jr nc, jr_02a_737a

    add b
    ret z

    adc [hl]
    ld [de], a
    rra
    inc b
    ccf
    rst RST_38
    ld a, a
    rra
    rst RST_00
    cp c
    adc [hl]
    db $e3
    pop hl
    ld [de], a
    rst RST_38
    inc b
    ld a, a
    adc a
    ldh a, [rIE]
    cp $01
    rst RST_38
    ld hl, sp-$40
    nop
    nop
    rst RST_38
    nop
    rst RST_38
    rst RST_38
    ld c, $1e
    ld b, $06
    rra
    ld a, d
    ld [hl], l
    ld l, d
    ld [hl], l
    db $eb
    rst RST_10
    and $41
    add a
    cpl
    ld e, a
    rst RST_38
    rst RST_38
    ccf
    rra
    ldh [$ffe0], a
    ld [de], a
    ldh a, [$ff03]
    ld hl, sp-$08
    nop
    ld bc, $0012

jr_02a_737a:
    dec b
    rrca
    nop
    add b
    jr nz, jr_02a_738c

    ld c, $07
    nop
    rst RST_20
    ld [de], a
    nop
    inc bc
    inc a
    rst RST_38
    cp $e0
    nop

jr_02a_738c:
    ld b, $12
    nop
    ld [bc], a
    add b
    ld [de], a
    nop
    ld [$3938], sp
    dec a
    ld a, l
    dec a
    ccf
    rst RST_38
    ld a, [hl]
    jr z, jr_02a_737a

    xor [hl]
    sub $e8
    pop af
    db $eb
    rst RST_30
    cp $7e
    ld e, $06
    add e
    jp $e1e1


    rst RST_38
    nop
    rst RST_38
    db $fc
    ld [de], a
    ld [hl], b
    inc bc
    rlca
    ccf
    ld a, a
    ld [de], a
    rst RST_38
    inc b
    db $f4
    ld [de], a
    db $ed
    ld [bc], a
    call $dbd9
    sbc e
    adc $dc
    cp l
    cp l
    cp c
    ld [de], a
    ld a, c
    ld [bc], a
    rst RST_08
    rst RST_08
    ld [de], a
    rst RST_28
    ld [bc], a
    rst RST_20
    rst RST_30
    rst RST_30
    ld hl, sp-$04
    db $fc
    ld [de], a
    cp $02
    rst RST_38
    rst RST_38
    ld [de], a
    nop
    dec bc
    ld bc, $0301
    inc bc
    nop
    ld a, h
    cp $fe
    ld [de], a
    rst RST_38
    inc bc
    ld [de], a
    nop
    dec b
    add b
    add b
    ld [de], a
    nop
    inc bc
    ld [de], a
    ld bc, $7e03
    ld [de], a
    cp $05
    db $fd
    rst RST_20
    rst RST_20
    xor $ec
    call z, $ddcc
    reti


    adc c
    add hl, sp
    inc a
    ld a, h
    db $fc
    ld [de], a
    cp $02
    ld [hl], b
    or b
    or e
    cp e
    cp e
    ld e, e
    ld e, c
    ld e, c
    ld [de], a
    rst RST_38
    inc b
    db $fc
    ld bc, $b257
    or [hl]
    scf
    ld h, l
    ld l, l
    ld l, [hl]
    jp nz, $f900

    ld sp, hl
    db $fd
    db $fd
    db $fc
    db $fc
    ld a, [hl]
    ld l, [hl]
    rst RST_30
    ld [de], a
    di
    ld [bc], a
    ld sp, hl
    db $fd
    ld a, l
    ld a, [hl]
    rst RST_38
    rst RST_18
    rst RST_28
    rst RST_18
    rst RST_28
    rst RST_30
    rst RST_28
    rst RST_30
    ld [de], a
    nop
    ld [bc], a
    ld [de], a
    add b
    inc bc
    ret nz

    inc bc
    rlca
    rlca
    inc bc
    ld bc, $0001
    nop
    ld [de], a
    rst RST_38
    inc bc
    ld a, l
    cp d
    nop
    nop
    add b
    ret nz

    add b
    ld [de], a
    nop
    inc b
    ld [de], a
    inc bc
    inc bc
    ld [de], a
    rlca
    inc bc
    db $fd
    db $fd
    ei
    ei
    di
    rst RST_30
    rst RST_30
    rst RST_28
    sbc c
    ld [de], a
    cp c
    ld [bc], a
    cp b
    cp b
    inc a
    ld a, h
    ld [de], a
    rst RST_38
    dec b
    ldh [c], a
    jr nc, jr_02a_7489

    ld l, $ae
    sub [hl]
    sub [hl]
    sub $07
    ld bc, $57ab
    ld bc, $0000
    ld d, h
    cp $ff
    cp a
    call c, $66ee
    scf
    dec sp
    ld e, l
    xor h
    sub [hl]
    rst RST_38
    ld a, a
    ld a, a
    ccf

jr_02a_7489:
    rra
    rst RST_08
    rst RST_20
    ld a, $3f
    ccf
    sbc a
    rst RST_08
    rst RST_08
    rst RST_20
    rst RST_20
    ld de, $0480
    rla
    pop af
    jp hl


    ld sp, hl
    ld h, c
    db $10
    jr z, jr_02a_74af

    ld [$6667], sp
    ld l, [hl]
    ld b, h
    or h
    and b
    and b
    ld e, b
    ld bc, $0301
    nop
    ld [bc], a
    ld b, $07

jr_02a_74af:
    rlca
    ret c

    dec l
    db $ed
    db $dd
    db $db
    db $dd
    adc a
    adc d
    ld bc, $0000
    add b
    add b
    ld b, b
    ret nz

    ret nz

Call_02a_74c0:
    add l
    jp z, $cada

    ld d, h
    inc [hl]
    inc d
    jr z, jr_02a_74cd

    ccf
    ld [bc], a
    ld a, [hl]
    ld a, [hl]

jr_02a_74cd:
    ld a, h
    ld a, b
    ld [hl], b
    add a
    rlca
    rrca
    rrca
    rla
    ld a, a
    ld a, a
    rst RST_38
    db $fc
    inc b
    rst RST_38
    dec b
    db $fc
    nop
    inc b
    ldh [rSC], a
    pop bc
    add e
    rlca
    rrca
    add sp, -$10
    db $fc
    ld a, [$fefc]
    db $fd
    cp $0f
    rlca
    dec bc
    dec b
    inc bc
    nop
    ld [bc], a
    ld bc, $fefc
    cp $04
    rst RST_38
    inc bc
    ld a, a
    db $10
    inc b
    nop
    inc b
    add b
    add b
    ld e, b
    ld d, b
    jr z, jr_02a_7532

    inc l
    jr z, jr_02a_751d

    ld d, $0b
    dec bc
    inc bc
    inc b
    inc de
    ld [bc], a
    inc bc
    inc hl
    ld c, l
    add d
    nop
    add d
    ld [bc], a
    add d
    ld [bc], a
    add d
    ret nz

    add b
    inc b

jr_02a_751d:
    and b
    inc bc
    sub b
    sub c
    jr z, @+$6a

    jr z, jr_02a_7575

    ld d, b
    ret nc

    ld d, b
    and b
    ld [hl], c
    ld [hl], c
    pop hl
    inc b
    db $e3
    ld [bc], a
    jp Jump_000_04c3


jr_02a_7532:
    rst RST_38
    rlca
    ldh a, [rDIV]
    ldh [rSC], a
    inc b
    ret nz

    inc bc
    rrca
    rra
    rra
    ccf
    inc b
    ld a, a
    inc bc
    rst RST_28
    ld [hl], a
    daa
    sbc a
    rst RST_28
    rst RST_10
    rst RST_28
    rst RST_30
    inc b
    ret nz

    ld [bc], a
    ldh [$ffe0], a
    inc b
    ldh a, [rSC]
    nop
    ld bc, $0401
    inc bc
    inc b
    add [hl]
    sub d
    ld [de], a
    ld [hl], e
    push af
    inc b
    rst RST_30
    ld [bc], a
    inc b
    nop
    inc b
    inc b
    add b
    ld [bc], a
    inc b
    rrca
    ld [bc], a
    inc b
    rra
    ld [bc], a
    ccf
    ccf
    adc $de
    call c, $8199
    add e
    add a

jr_02a_7575:
    adc a
    ld a, c
    ld sp, hl
    di
    rst RST_30
    rst RST_28
    add a
    adc a
    rra
    jp $ffff


    cp $fc
    ld hl, sp-$10
    db $e3
    db $fc
    add hl, de
    dec de
    rla
    ld [hl], $6c
    ret c

    or b
    sub [hl]
    rst RST_08
    db $e3
    push af
    di
    ld sp, hl
    ld a, [$73fd]
    ld a, c
    inc [hl]
    cp d
    call c, $edcf
    and $f3
    pop af
    jp hl


    db $f4
    ld a, b
    inc [hl]
    ld a, [de]
    sbc h
    rst RST_28
    inc b
    rst RST_38
    inc b
    ld a, a
    ld a, a
    ldh a, [rDIV]
    ld hl, sp+$03
    inc b
    db $fc
    ld [bc], a
    rlca
    rlca
    inc b
    rrca
    inc bc
    rra
    rra
    rst RST_30
    inc b
    rst RST_38
    ld b, $80
    inc b
    ret nz

    inc b
    ldh [$ffe0], a
    ccf
    ccf
    inc b
    ld a, a
    inc bc
    rst RST_38
    rst RST_38
    adc [hl]
    adc [hl]
    ld e, $04
    inc e
    ld [bc], a
    dec a
    dec a
    ccf
    ccf
    ld a, a
    ld a, a
    rst RST_38
    rst RST_38
    cp $fe
    rst RST_08
    sbc a
    sbc [hl]
    ld e, $3d
    dec a
    dec sp
    dec sp
    ld [hl], c
    ld h, e
    rst RST_20
    rst RST_08
    sbc a
    sbc a
    cp a
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_02a_7d61:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
