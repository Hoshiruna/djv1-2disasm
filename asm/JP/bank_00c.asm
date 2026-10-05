; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    nop
    ld b, c
    ld b, [hl]
    ld b, d
    ld h, l
    ld b, d
    adc a
    ld b, d
    sbc [hl]
    ld b, d
    jp z, $d442

    ld b, d
    rst RST_30
    ld b, d
    inc bc
    ld b, e
    ld [de], a
    ld b, e
    inc hl
    ld b, e
    ld l, e
    ld b, e
    call nz, $e543
    ld b, e
    dec b
    ld b, h
    ld de, $3744
    ld b, h
    ld c, h
    ld b, h
    ld e, l
    ld b, h
    ld h, a
    ld b, h
    ld a, [hl]
    ld b, h
    adc c
    ld b, h
    and e
    ld b, h
    xor h
    ld b, h
    rst RST_08
    ld b, h
    inc bc
    ld b, l
    dec l
    ld b, l
    ld b, l
    ld b, l
    ld d, l
    ld b, l
    cp a
    ld b, l
    ldh a, [rLYC]
    inc e
    ld b, [hl]
    ld h, b
    ld b, [hl]
    ld a, c
    ld b, [hl]
    add a
    ld b, [hl]
    and c
    ld b, [hl]
    or l
    ld b, [hl]
    call nz, $db46
    ld b, [hl]
    di
    ld b, [hl]
    cp $46
    inc d
    ld b, a
    ld l, $47
    ld [hl], l
    ld b, a
    adc b
    ld b, a
    xor e
    ld b, a
    rst RST_08
    ld b, a
    rst RST_38
    ld b, a
    dec d
    ld c, b
    ld h, $48
    ld c, b
    ld c, b
    ld e, c
    ld c, b
    halt
    ld c, b
    sub e
    ld c, b
    xor l
    ld c, b
    call nz, $d448
    ld c, b
    rst RST_28
    ld c, b
    rlca
    ld c, c
    ld e, h
    ld c, c
    add b
    ld c, c
    and d
    ld c, c
    pop hl
    ld c, c
    inc b
    ld c, d
    dec d
    ld c, d
    ld [hl], $4a
    ld c, [hl]
    ld c, d
    ld e, l
    ld c, d
    ld a, [hl]
    ld c, d
    adc a
    ld c, d
    or h
    ld c, d
    ret


    ld c, d
    pop hl
    ld c, d
    ldh a, [c]
    ld c, d
    rrca
    ld c, e
    add hl, hl
    ld c, e
    ld d, c
    ld c, e
    ld e, a
    ld c, e
    ld a, e
    ld c, e
    call nz, $f74b
    ld c, e
    add hl, hl
    ld c, h
    ld l, l
    ld c, h
    ld a, l
    ld c, h
    adc h
    ld c, h
    xor d
    ld c, h
    push hl
    ld c, h
    ld [de], a
    ld c, l
    dec [hl]
    ld c, l
    ld b, [hl]
    ld c, l
    ld d, l
    ld c, l
    ld [hl], h
    ld c, l
    jr nc, jr_00c_4108

    ld h, e
    ld c, [hl]
    ld h, e
    ld c, [hl]
    ld h, e
    ld c, [hl]
    sub c
    ld c, [hl]
    or l
    ld c, [hl]
    rst RST_08
    ld c, [hl]
    rst RST_20
    ld c, [hl]
    ld c, c
    ld c, a
    ld e, a
    ld c, a
    ld [hl], b
    ld c, a
    ld a, b
    ld c, a
    and l
    ld c, a
    cp [hl]
    ld c, a
    jp z, $ca4f

    ld c, a
    and $4f
    ei
    ld c, a
    inc c
    ld d, b
    ld hl, $2d50
    ld d, b
    ld [hl], l
    ld d, b
    or e
    ld d, b
    rst RST_20
    ld d, b
    ccf
    ld d, c
    ld b, [hl]
    ld d, c
    add h
    ld d, c
    pop bc
    ld d, c
    inc b
    ld d, d
    ld a, a
    ld d, d
    sbc c
    ld d, d
    cp l
    ld d, d
    db $eb
    ld d, d
    ld sp, hl
    ld d, d
    rlca
    ld d, e
    ld hl, $ec53
    db $e4
    ld a, a
    ldh a, [c]
    ld d, $7f
    sbc e
    ldh a, [c]

jr_00c_4108:
    ldh [$ffa1], a
    dec c
    sbc d
    sbc d
    ld [$a5a5], a
    and l
    and l
    and l
    and l
    adc e
    inc c
    and l
    and l
    and l
    ld h, h
    sub e
    di
    ld a, a
    call nz, $dab2
    jp hl


    ld a, a
    push hl
    sub [hl]
    rst RST_30
    sbc h
    sub d
    and c
    ld h, h
    sub e
    sbc h
    db $e3
    ld a, a
    sbc d
    db $fd
    push hl
    db $e4
    sbc d
    ei
    and $0d
    sub d
    ld sp, hl
    jp hl


    ld h, b
    ei
    sub e
    adc e
    inc c
    sub [hl]
    db $fd
    ld d, $94
    or $93
    db $e4
    sbc l
    ld sp, hl
    db $e4
    ld a, a
    sub c
    ldh [$ffef], a
    ld d, $0d
    ld [hl], $dd
    ld [hl], $dd
    sbc l
    ld sp, hl
    and c
    inc c
    sub d
    sbc h
    sub a
    ld d, $7f
    di
    sub e
    ei
    sub e
    db $e4
    sbc h
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    rst RST_28
    ld sp, hl
    ld h, e
    ld a, a
    sub a
    ld hl, sp-$17
    ld a, a
    push hl
    sub [hl]
    or b
    dec c
    sbc e
    rst RST_28
    or $8f
    db $e3
    sub d
    ld sp, hl
    or $93
    ld h, b
    and l
    and l
    and l
    and c
    inc c
    sub e
    adc a
    and l
    and l
    and l
    adc d
    inc c
    sub e
    ld a, [de]
    sub [hl]
    sbc a
    sub e
    db $e4
    sbc h
    ldh [$ff7f], a
    db $eb
    ld h, b
    ld hl, sp-$6d
    ld h, e
    and $0d
    sbc l
    ld sp, hl
    ld h, h
    sub d
    ld a, a
    sub d
    ldh [$fff0], a
    ld d, $7f
    ld [$8f9c], a
    ldh [$ffa1], a
    dec c
    sbc d
    adc a
    ld a, a
    sbc d
    ld a, [$a5ea]
    and l
    and l
    and l
    and l
    adc e
    inc c
    adc d
    adc d
    adc d
    inc c
    db $eb
    ld h, b
    ld hl, sp-$6d
    ld h, e
    and $7f
    pop hl
    adc l
    sub e
    sbc h
    adc h
    jp hl


    ld a, a
    sub c
    db $e4
    ld d, $8a
    ldh a, [rNR22]
    db $e3
    and $ea
    ld a, a
    sub [hl]
    db $fc
    sub d
    ldh [$ff7f], a
    pop hl
    ld d, $0d
    ldh [c], a
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    and l
    and l
    and l
    ldh a, [$ffe0]
    db $e4
    sbc d
    ei
    ld a, a
    sub a
    dec e
    ld [$647f], a
    sbc d
    and $f3
    dec c
    push hl
    sub d
    or $93
    ld h, b
    and c
    dec c
    push hl
    ld e, $60
    ei
    sub e
    adc e
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    db $fc
    sub [hl]
    rst RST_30
    push hl
    sub d
    adc d
    dec c
    push hl
    and $f3
    ld a, a
    sub l
    di
    sub d
    ld h, b
    sbc [hl]
    push hl
    sub d
    adc d
    inc c
    sub l
    ld a, [$7fea]
    ld h, b
    ld a, [$8b60]
    dec c
    push hl
    ld e, $7f
    sbc d
    db $fd
    push hl
    db $e4
    sbc d
    ei
    and $7f
    sub d
    ld sp, hl
    db $fd
    ld h, b
    adc e
    inc c
    rst RST_28
    adc a
    ldh [$ff98], a
    ld a, a
    push hl
    and $f3
    ld a, a
    sub l
    di
    sub d
    ld h, b
    sbc [hl]
    push hl
    sub d
    adc d
    adc d
    rst RST_38
    rst RST_10
    or d
    call nz, $d74c
    or e
    db $dd
    jp hl


    ld a, a
    call nz, $ddda
    pop bc
    cp d
    and h
    call nz, $a160
    push hl
    sub [hl]
    push hl
    sub [hl]
    ld a, a
    sbc h
    adc l
    ldh a, [rNR21]
    sub d
    sub d
    and c
    rst RST_38
    and l
    and l
    and l
    db $fd
    adc e
    dec c
    ld e, [hl]
    cp c
    xor a
    call nz, Call_00c_7fe6
    push hl
    and $96
    ld a, a
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    rra
    and c
    pop hl
    adc [hl]
    adc a
    db $e4
    ld a, a
    sub c
    sbc c
    db $e3
    ld a, a
    ldh a, [$fff6]
    sub e
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    ldh [c], a
    ld hl, sp-$65
    add hl, de
    sbc h
    sub a
    jp hl


    ld a, a
    ld h, e
    db $fd
    db $e4
    sub e
    ld h, b
    and c
    rst RST_38
    call nz, $dab2
    xor a
    call nz, $a47d
    ld e, d
    and h
    ld h, b
    and c
    dec c
    dec de
    ldh [c], a
    ld e, $fd
    db $e4
    sbc h
    ldh [$ffe5], a
    sub [hl]
    and $7f
    ld l, h
    db $fd
    ldh a, [c]
    sub d
    jp hl


    dec c
    sub [hl]
    sub l
    ld hl, sp-$50
    ld a, a
    ldh [$ff60], a
    or $fc
    sbc [hl]
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    jr c, @-$27

    cp l
    ld [$b67f], a
    rst RST_10
    ld h, b
    and c
    rst RST_38
    sub a
    db $fd
    sub d
    ei
    jp hl


    ld a, a
    rst RST_10
    or d
    ret nz

    and h
    ld h, b
    and c
    dec c
    sbc $c7
    and l
    call $e4df
    ld a, a
    or d
    add $bc
    xor h
    reti


    ld d, $0d
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    add d
    add l
    cp [hl]
    db $dd
    call nz, $ba7f
    or d
    db $dd
    ld h, b
    and c
    rst RST_38
    add e
    adc b
    sbc d
    sub e
    sbc c
    sub d
    ld a, a
    cp l
    ld a, l
    cp h
    xor h
    reti


    ld h, b
    and c
    rst RST_38
    add e
    adc b
    sbc d
    sub e
    sbc c
    sub d
    or $93
    jp hl


    ld a, a
    ld h, b
    db $fd
    ld d, $fd
    ld h, b
    and c
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$927f], a
    adc a
    ldh [$ffa1], a
    inc c
    sbc $9a
    rst RST_28
    sub [hl]
    sub d
    jp hl


    ld d, $7f
    push hl
    sub d
    jp hl


    sub [hl]
    sub d
    adc e
    dec c
    ld a, a
    sbc d
    adc a
    pop hl
    di
    ld a, a
    sub l
    ldh [c], a
    ld hl, sp+$16
    ld a, a
    push hl
    sub d
    db $fd
    ld h, b
    or $a1
    inc c
    ld a, a
    and l
    and l
    and l
    or $9c
    adc d
    dec c
    ld a, a
    sbc d
    sbc d
    ld [$bb7f], a
    and h
    ld c, e
    cp l
    ld a, a
    sbc h
    db $e3
    sub l
    sbc b
    or $a1
    rst RST_18
    rst RST_38
    ld a, a
    sbc $9a
    inc e
    db $fd
    or $93
    ld a, a
    or c
    cp b
    cp [hl]
    cp l
    or [hl]
    and h
    ld b, h
    dec c
    ld a, a
    ld a, a
    inc a
    xor [hl]
    and h
    and l
    cp h
    and h
    add hl, sp
    reti


    dec c
    ld a, a
    ld a, a
    ld a, l
    db $dd
    call nz, $b3ca
    cp l
    ld a, a
    rst RST_08
    db $dd
    cp h
    xor [hl]
    db $dd
    rst RST_18
    dec c
    ld a, a
    ld a, a
    and l
    and l
    and l
    and l
    and l
    and l
    adc e
    inc c
    pop hl
    sub d
    sbc e
    push hl
    ld a, a
    sub c
    push hl
    ld d, $7f
    ld e, d
    db $dd
    pop bc
    sbc h
    db $e3
    sub c
    ld sp, hl
    and c
    dec c
    rst RST_08
    db $dd
    cp h
    xor [hl]
    db $dd
    jp hl


    ld a, a
    or [hl]
    and h
    ld b, h
    or a
    and h
    ld h, b
    ei
    sub e
    sub [hl]
    adc e
    rst RST_38
    and l
    and l
    and l
    sub e
    rst RST_28
    sbc b
    ld a, a
    sub [hl]
    sbc c
    rst RST_30
    ld a, [$92e5]
    and c
    dec c
    ld h, h
    sub e
    di
    ld a, a
    cp e
    or d
    dec a
    ld d, $7f
    sub l
    sub l
    sub a
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    sub [hl]
    db $fc
    sbc [hl]
    sub d
    jp hl


    ld a, a
    sub d
    sub a
    push hl
    ld a, a
    sbc e
    sub d
    db $ec
    ld h, b
    and c
    dec c
    sub [hl]
    push hl
    ld hl, sp+$7f
    sbc d
    sub e
    sub [hl]
    push hl
    ld a, a
    di
    jp hl


    rst RST_30
    sbc h
    sub d
    and c
    rst RST_38
    rst RST_10
    xor a
    or a
    and h
    cp l
    call nz, $b2d7
    cp b
    ld h, b
    and c
    rst RST_38
    sbc $c7
    and l
    call $e4df
    ld a, a
    or d
    add $bc
    xor h
    reti


    ld d, $0d
    sub a
    dec de
    db $fd
    ld h, e
    sub c
    ld sp, hl
    and c
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    sbc $c7
    and l
    call $a5df
    and l
    and l
    adc e
    rst RST_38
    sbc b
    ei
    sub d
    ld a, a
    cp e
    db $dd
    jr c, @-$27

    cp l
    ld h, b
    and c
    dec c
    and l
    and l
    and l
    or a
    dec sp
    ld h, b
    push hl
    and c
    rst RST_38
    or l
    call z, $bda8
    db $e4
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    ld a, a
    or [hl]
    scf
    ld h, b
    and c
    rst RST_38
    call nz, $dab2
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    rst RST_38
    ld [$8fea], a
    and l
    and l
    and l
    and c
    dec c
    ld c, d
    or [hl]
    push hl
    sbc d
    db $e4
    or b
    ld a, a
    sbc h
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    and l
    and l
    and l
    and l
    and l
    and l
    pop af
    ld hl, sp-$6a
    and c
    rst RST_38
    ret nz

    ld c, d
    cp d
    and $7f
    db $eb
    or b
    ldh [c], a
    sbc c
    ldh [$ffa1], a
    dec c
    sub [hl]
    push hl
    ld hl, sp+$7f
    sub a
    ldh [c], a
    sub d
    ld a, a
    ret nz

    ld c, d
    cp d
    ld h, b
    and c
    rst RST_38
    db $e4
    ld a, [$92e5]
    or $93
    ld h, b
    and c
    rst RST_38
    ld e, e
    cp l
    call nz, Call_00c_60d9
    adc d
    dec c
    sbc d
    sub d
    ldh [c], a
    ld [$9d7f], a
    ld a, [de]
    sub d
    adc d
    inc c
    ld h, b
    ld d, $7f
    push hl
    ld e, $7f
    sbc d
    db $fd
    push hl
    db $e4
    sbc d
    ei
    and $a5
    and l
    and l
    adc e
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$9d7f], a
    rst RST_28
    push hl
    sbc a
    sub e
    and $0d
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $95
    ldh [c], a
    ld hl, sp+$16
    ld a, a
    sub c
    ld hl, sp-$11
    sbc [hl]
    db $fd
    jp hl


    ld h, e
    dec c
    ld a, a
    cp d
    or d
    db $dd
    ld h, e
    ld a, a
    ld [$8ff7], a
    db $e3
    ld a, a
    sbc b
    ld h, b
    sbc e
    sub d
    and c
    rst RST_18
    rst RST_38
    sub d

jr_00c_4504:
    db $f4
    ld a, a
    rst RST_28
    db $e3
    or $a5
    and l
    and l
    and c
    dec c
    sbc d
    db $fd
    push hl
    db $e4
    sbc d
    ei
    and $7f
    sbc l
    db $e3
    ld sp, hl
    db $e4
    ld a, a
    sbc l
    jr jr_00c_4504

    dec c
    ldh a, [$ffe2]
    sub [hl]
    adc a
    db $e3
    ld a, a
    sbc h
    rst RST_28
    sub d
    sbc a
    sub e
    ld h, b
    and c
    rst RST_38
    cp d
    db $dd
    ld a, a
    cp d
    db $dd
    adc d
    dec c
    and l
    and l
    and l
    and l
    and l
    and l
    push hl
    and $f3
    ld a, a
    sub l
    sbc d
    rst RST_30
    push hl
    sub d
    and c
    rst RST_38
    ld h, b
    ld a, [$7fe6]
    ld [$9ce5], a
    sub [hl]
    sbc c
    db $e3
    sub d
    ld sp, hl
    db $fd
    ld h, b
    adc e
    rst RST_38
    db $ec
    sub e
    and l
    and l
    and l
    and c
    dec c
    sub c
    ldh [$ffef], a
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld d, $7f
    rst RST_28
    adc a
    sbc h
    ei
    ld h, b
    and c
    inc c
    sub c
    pop hl
    sbc d
    pop hl
    ld a, a
    sub e
    ld a, [de]
    sub a
    rst RST_28
    db $fc
    adc a
    ldh [$ffe9], a
    ld h, e
    dec c
    ldh [c], a
    sub [hl]
    ld a, [$7f63]
    sub [hl]
    rst RST_30
    ld h, b
    di
    ld a, a
    sbc h
    db $fd
    sbc c
    sub d
    di
    dec c
    ld l, [hl]
    ei
    ld l, [hl]
    ei
    ld h, b
    and c
    inc c
    and l
    and l
    and l
    push hl
    db $fd
    db $e4
    sub [hl]
    sbc h
    push hl
    sbc c
    ld a, [$a16a]
    inc c
    sbc h
    sub [hl]
    sbc h
    ld a, a
    push hl
    and $b0
    ld a, a
    sbc l
    ld a, [$7f6a]
    sub d
    sub d
    db $fd
    ld h, b
    adc e
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    db $fc
    sub [hl]
    rst RST_30
    push hl
    sub d
    adc d
    rst RST_38
    sbc [hl]
    db $fd
    ldh a, [c]
    db $fd
    inc e
    adc [hl]
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    dec c
    and l
    and l
    and l
    or $1a
    ld a, [$92e3]
    ld sp, hl
    and c
    inc c
    sub a
    adc a
    db $e4
    ld a, a
    push hl
    db $fd
    and $e1
    di
    dec c
    sbc a
    sub e
    inc e
    or b
    sbc h
    db $e3
    sub d
    push hl
    sub d
    jp hl


    ld h, b
    ei
    sub e
    and c
    rst RST_38
    ld b, h
    or c
    ld h, b
    and c
    inc c
    or d
    call nc, Call_00c_7fe5
    or $96
    db $fd
    ld d, $9d
    ld sp, hl
    and c
    dec c
    sbc a
    db $e4
    and $63
    ld sp, hl
    db $e4
    ld a, a
    push hl
    and $96
    ld a, a
    call nz, Call_00c_4cd7
    reti


    and $0d
    rst RST_28
    sub a
    sbc d
    rst RST_28
    ld a, [$939f]
    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    and l
    and l
    and l
    adc d
    inc c
    rst RST_28
    adc a
    ldh [$ff98], a
    ld a, a
    sbc h
    rst RST_30
    push hl
    sub d
    ld a, a
    sub l
    db $e4
    sbc d
    ld h, b
    and c
    dec c
    or [hl]
    ld [hl], $d0
    jp hl


    ld a, a
    pop af
    sbc d
    sub e
    ld h, e
    ld a, a
    inc e
    adc a
    db $e4
    ld a, a
    sub l
    ld a, [$0db0]
    ldh a, [$ffe2]
    ldh a, [c]
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    and l
    and l
    and l
    sbc d
    ld a, [$7f16]
    sub l
    ld a, [$7fe9]
    sub [hl]
    sub l
    push hl
    jp hl


    sub [hl]
    adc e
    rst RST_38
    ld h, e
    db $fd
    db $e4
    sub e
    ld h, b
    and c
    dec c
    db $e3
    db $fd
    inc e
    adc [hl]
    sub e
    sub [hl]
    rst RST_30
    ld a, a
    ldh [c], a
    ld hl, sp-$65
    ld d, $8f
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    db $ec
    ldh [c], a
    sub e
    jp hl


    ld a, a
    sbc [hl]
    db $fd
    ldh a, [c]
    db $fd
    ld h, b
    sub d
    ld h, b
    and c
    rst RST_38
    di
    jp hl


    sbc l
    ld a, [de]
    sub d
    ld a, a
    sub l
    db $e4
    db $e4
    ld a, a
    db $e4
    di
    and $7f
    or [hl]
    ld [hl], $d0
    ld d, $98
    ld h, b
    sbc c
    pop hl
    adc a
    ldh [$ffa1], a
    rst RST_38
    sub e
    sbc l
    or $1a
    ld a, [$7fe0]
    sbc [hl]
    db $fd
    ldh a, [c]
    db $fd
    inc e
    adc [hl]
    jp hl


    dec c
    push hl
    sub [hl]
    ld h, b
    and c
    rst RST_38
    ei
    sub e
    sub [hl]
    and $7f
    ldh [c], a
    sub e
    inc e
    ld sp, hl
    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    rst RST_38
    or [hl]
    ld [hl], $d0
    ld h, b
    and c
    dec c
    di
    sbc b
    sbc [hl]
    sub d
    jp hl


    ld a, a
    call c, Call_000_16b8
    ld a, a
    ldh [c], a
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ei
    sub e
    sub [hl]
    and $7f
    ld h, e
    ldh [$ffa1], a
    dec c
    sbc b
    rst RST_30
    sbc b
    db $e3
    ld a, a
    inc a
    jp nc, $d23c

    sbc h
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ldh a, [rNR33]
    ldh [$ffef], a
    ld hl, sp+$16
    ld a, a
    sub c
    ld sp, hl
    and c
    rst RST_38
    ld b, h
    or c
    ld h, b
    and c
    dec c
    sbc $1c
    adc [hl]
    sbc [hl]
    sub d
    or $93
    rst RST_18
    db $e4
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    pop hl
    adc h
    sub d
    ei
    sub d
    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    dec c
    ld h, h
    sbc d
    db $ed
    ld a, a
    ldh [c], a
    ld h, d
    sbc b
    jp hl


    ld h, b
    ei
    sub e
    and l
    and l
    and l
    rst RST_38
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    sbc c
    sub d
    sbc e
    ldh [c], a
    sbc h
    adc [hl]
    and $7f
    sub d
    ld sp, hl
    and c
    inc c
    sbc c
    sub d
    sbc e
    ldh [c], a
    ld [$f67f], a
    ei
    sbc d
    db $fd
    ld h, e
    ld a, a
    sub c
    push hl
    ldh [$ffb0], a
    dec c
    pop af
    sub [hl]
    sub h
    ldh [$ffa1], a
    inc c
    sub [hl]
    ld a, [$eaf7]
    ld a, a
    sub c
    push hl
    ldh [$ffe9], a
    ld a, a
    ld [$9ce5], a
    and $0d
    ldh [$ff92], a
    db $ed
    db $fd
    ld a, a
    sub a
    adc [hl]
    sub e
    ldh a, [$ffb0]
    ld a, a
    di
    adc a
    ldh [$ffa1], a
    rst RST_38
    ei
    sub e
    sub [hl]
    ld h, b
    and c
    dec c
    sbc b
    sub e
    sub a
    ld d, $7f
    cp h
    jp nc, $e38f

    sub d
    ld sp, hl
    and c
    rst RST_38
    inc e
    adc [hl]
    sbc [hl]
    sub d
    or $93
    jp hl


    ld a, a
    sbc [hl]
    db $fd
    ldh a, [c]
    db $fd
    inc e
    adc [hl]
    ld h, b
    and c
    dec c
    sub l
    sbc [hl]
    inc e
    and $f3
    ld a, a
    sub a
    ld a, [$e492]
    ld [$927f], a
    sub h
    push hl
    sub d
    and c
    rst RST_38
    sub c
    rst RST_28
    ld hl, sp+$7f
    sub e
    ldh [c], a
    ld hl, sp-$17
    or $98
    push hl
    sub d
    ld a, a
    or [hl]
    ld [hl], $d0
    ld h, b
    and c
    ld h, h
    sub e
    db $f4
    rst RST_30
    ld a, a
    ldh a, [rNR33]
    sub c
    sub [hl]
    jp hl


    sbc [hl]
    sub d
    jp hl


    or $93
    ld h, b
    and c
    rst RST_38
    push hl
    db $fd
    jp hl


    ld a, a
    db $ed
    db $fd
    db $e3
    ldh [c], a
    di
    push hl
    sub d
    ld a, a
    ld a, [hl-]
    ret nc

    ld l, d
    sbc d
    ld h, b
    and c
    ldh [c], a
    sub [hl]
    sub d
    db $ec
    ld sp, hl
    sbc e
    ld a, [$f3e0]
    jp hl


    rst RST_30
    sbc h
    sbc b
    dec c
    sub c
    pop hl
    rst RST_30
    sbc d
    pop hl
    rst RST_30
    ld d, $7f
    db $ed
    sbc d
    db $fd
    ld h, e
    sub d
    ld sp, hl
    and c
    rst RST_38
    db $ec
    ld sp, hl
    ld l, [hl]
    sbc c
    ldh [$ff7f], a
    ld h, e
    db $fd
    db $e4
    sub e
    ld d, $0d
    ldh [c], a
    ld hl, sp-$65
    ld d, $8f
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ld h, h
    sbc d
    and $63
    di
    sub c
    ld sp, hl
    ld a, a
    sbc [hl]
    db $fd
    ldh a, [c]
    db $fd
    ld h, b
    sub d
    ld h, b
    and c
    rst RST_38
    inc e
    adc [hl]
    sbc [hl]
    sub d
    or $93
    call nz, $dab2
    db $ed
    jp hl


    ld a, a
    sub d
    ld hl, sp+$18
    pop hl
    ld h, b
    and c
    ld h, b
    ld a, [$7f96]
    sub d
    ld sp, hl
    jp hl


    ld h, b
    ei
    sub e
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    inc e
    adc [hl]
    sbc [hl]
    sub d
    or $93
    jp hl


    ld a, a
    sbc [hl]
    db $fd
    ldh a, [c]
    db $fd
    inc e
    adc [hl]
    ld h, b
    and c
    rst RST_38
    inc e
    adc [hl]
    sbc [hl]
    sub d
    or $93
    jp hl


    ld a, a
    call nz, $dab2
    ld h, b
    and c
    dec c
    dec de
    db $fd
    add sp, -$03
    ld h, b
    ld d, $7f
    ld h, b
    ld a, [$92f3]
    push hl
    sub d
    and c
    rst RST_38
    call nz, $dab2
    xor a
    call nz, $a47d
    ld e, d
    and h
    ld h, b
    and c
    dec c
    ld h, b
    ld a, [$7ff3]
    ldh [c], a
    sub [hl]
    adc a
    ldh [$ff7f], a
    or $93
    sbc l
    ld [$92e5], a
    and c
    rst RST_38
    ldh a, [rNR33]
    ldh [$ffef], a
    ld hl, sp+$60
    and c
    dec c
    sbc l
    sub d
    sbc a
    sub e
    sub [hl]
    rst RST_30
    ld a, a
    ldh a, [rNR33]
    ld d, $7f
    di
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    ld l, l
    db $fd
    sub a
    ld h, b
    and c
    dec c
    sbc l
    sub d
    sbc a
    sub e
    jp hl


    ld a, a
    bit 1, e
    ld [$917f], a
    ldh [$fff7], a
    sbc h
    sub d
    and c
    rst RST_38
    push hl
    and $f3
    ld a, a
    sub [hl]
    db $fc
    adc a
    ldh [$fff3], a
    jp hl


    ld [$e57f], a
    sub d
    and c
    rst RST_38
    ld c, d
    ret nz

    db $dd
    adc d
    ld a, a
    db $e4
    sub d
    sub e
    sub l
    db $e4
    ld d, $7f
    db $ed
    db $f4
    inc e
    adc l
    sub e
    and $eb
    ld l, e
    sub a
    db $fc
    ldh [$ff8f], a
    ldh [$ffa1], a
    rst RST_38
    inc e
    adc [hl]
    sbc [hl]
    sub d
    or $93
    jp hl


    ld a, a
    call nz, $dab2
    ld h, b
    and c
    dec c
    db $e4
    db $e3
    di
    ld a, a
    sbc h
    dec e
    sub [hl]
    ld h, b
    and c
    rst RST_38
    sub c
    push hl
    ldh [$ffe9], a
    ld a, a
    ld [$9ce5], a
    db $e4
    ld a, a
    add e
    ldh [c], a
    jp hl


    dec c
    sbc h
    adc [hl]
    sub e
    sbc d
    db $eb
    db $fd
    ld [$bd7f], a
    ret nz

    db $dd
    or e
    xor a
    ld b, h
    db $e4
    dec c
    ld c, e
    xor a
    or [hl]
    and h
    cp l
    and $7f
    sub l
    sub l
    sub a
    push hl
    ld a, a
    or $93
    rla
    jp hl


    dec c
    sub [hl]
    add hl, de
    or b
    ld a, a
    push hl
    add hl, de
    sub [hl]
    sbc c
    ldh [$ffa1], a
    inc c
    sbc h
    sub [hl]
    sbc h
    ld a, a
    sbc a
    ld a, [$7fea]
    ld e, $8f
    ldh [$ff92], a
    jp hl


    ld a, a
    di
    jp hl


    ld h, e
    ld [$96e5], a
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sbc b
    rst RST_30
    sub d
    ld a, a
    ld h, b
    ld a, [$92f3]
    push hl
    sub d
    ld a, a
    ld c, d
    and h
    jp hl


    push hl
    sub [hl]
    ld h, b
    and c
    or $f9
    di
    ld a, a
    sub [hl]
    push hl
    ld hl, sp+$7f
    db $ec
    sbc c
    db $e3
    sub d
    ld sp, hl
    rst RST_30
    sbc h
    sub d
    and c
    rst RST_38
    rst RST_08
    ld b, h
    ld a, [de]
    sbc h
    and $7f
    db $e4
    sub l
    ld hl, sp+$16
    ld a, a
    ldh a, [$ff94]
    ld sp, hl
    and c
    dec c
    and l
    and l
    and l
    and l
    and l
    and l
    ld h, b
    ld a, [$7ff3]
    sub d
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    add d
    sub [hl]
    sub d
    db $ed
    ld a, a
    ldh [c], a
    sub e
    inc e
    ld sp, hl
    ld a, a
    sub [hl]
    sub d
    ld h, b
    db $fd
    rst RST_30
    sbc h
    sub d
    and c
    inc c
    jp hl


    ld l, [hl]
    adc a
    db $e3
    ldh a, [$ffe0]
    sub d
    ld d, $7f
    sub d
    rst RST_28
    jp hl


    ld a, a
    sub l
    ld a, [$0de9]
    sbc l
    sub d
    inc e
    adc h
    sbc b
    sbc h
    ldh [$ff7f], a
    sub [hl]
    rst RST_30
    ld h, b
    ld h, e
    ld [$f10d], a
    ld hl, sp-$6a
    di
    sbc h
    ld a, [$92e5]
    and l
    and l
    and l
    and c
    rst RST_38
    sub [hl]
    sub d
    ld h, b
    db $fd
    jp hl


    ld a, a
    sbc h
    ldh [$ffe6], a
    ld a, a
    ld b, h
    or c
    ld d, $a5
    and l
    and l
    adc e
    dec c
    sbc $dc
    or d
    db $dd
    cp [hl]
    rst RST_10
    and h
    rst RST_18
    db $e4
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    db $e4
    sub l
    ld hl, sp-$1a
    ld a, a
    ld h, e
    ld sp, hl
    ld a, a
    call z, $dddb
    call nz, $b144
    ld h, b
    and c
    rst RST_38
    sbc e
    sbc c
    jp hl


    ld a, a
    or $93
    ld h, b
    and c
    dec c
    and l
    and l
    and l
    rst RST_10
    pop de
    cp a
    and h
    ld b, b
    ld h, b
    push hl
    and c
    dec c
    sub d
    sub d
    ld a, a
    sub [hl]
    sub l
    ld hl, sp+$16
    ld a, a
    sbc l
    ld sp, hl
    and c
    rst RST_38
    ld c, d
    and h
    jp hl


    ld a, a
    or [hl]
    or e
    db $dd
    ret nz

    and h
    ld h, b
    and c
    dec c
    or $98
    ld a, a
    ldh a, [rNR21]
    sub [hl]
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    ld h, b
    ld a, [$92f3]
    push hl
    sub d
    ld a, a
    ld c, d
    and h
    jp hl


    push hl
    sub [hl]
    ld h, b
    and c
    rst RST_38
    sub l
    sbc h
    db $e3
    di
    ld a, a
    db $eb
    sub d
    db $e3
    di
    ld a, a
    ld l, e
    sbc b
    db $e4
    di
    sbc h
    push hl
    sub d
    and c
    or [hl]
    scf
    ld d, $7f
    sub [hl]
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    rst RST_30
    sbc h
    sub d
    and c
    rst RST_38
    rst RST_10
    pop de
    cp a
    and h
    ld b, b
    or b
    ld a, a
    db $eb
    db $e4
    sbc b
    pop hl
    ld a, a
    jp hl


    db $fd
    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    or [hl]
    pop bc
    xor a
    adc d
    inc c
    call z, $dddb
    call nz, $b6e9
    scf
    or b
    ld a, a
    ldh [c], a
    sub [hl]
    sub e
    db $e4
    ld a, a
    ld b, h
    or c
    ld d, $0d
    sub [hl]
    db $fd
    ldh [$fffd], a
    and $7f
    sub c
    sub d
    ldh [$ffa1], a
    rst RST_38
    di
    jp hl


    sbc l
    ld a, [de]
    sub d
    ld a, a
    sub l
    db $e4
    ld d, $9c
    db $e3
    dec c
    rst RST_08
    ld b, h
    ld d, $7f
    db $fc
    ld a, [$a1e0]
    rst RST_38
    sub c
    sbc c
    or $93
    db $e4
    sbc h
    ldh [rNR21], a
    ld a, a
    or [hl]
    scf
    ld d, $0d
    sub [hl]
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    and l
    and l
    and l
    and c
    rst RST_38
    add d
    sub [hl]
    sub d
    db $ed
    ld a, a
    ldh [c], a
    sub e
    inc e
    ld sp, hl
    ld a, a
    sub [hl]
    sub d
    ld h, b
    db $fd
    ld h, b
    and c
    rst RST_38
    sub e
    sbc l
    rla
    ldh [$ffe5], a
    sub d
    ld a, a
    call c, $ddb2
    cp [hl]
    rst RST_10
    and h
    ld h, b
    and c
    dec c
    sbc b
    sub e
    sub a
    ld d, $7f
    and $1a
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    db $ec
    ldh [c], a
    sub e
    jp hl


    ld a, a
    ld h, e
    db $fd
    db $e4
    sub e
    ld h, b
    and c
    dec c
    sub [hl]
    db $fc
    adc a
    ldh [$ff7f], a
    db $e4
    sbc d
    ei
    ld [$e57f], a
    sub d
    and c
    rst RST_38
    sub l
    sub l
    sub a
    push hl
    ld a, a
    call c, $ddb2
    jp hl


    ld a, a
    ldh [$fff9], a
    ld h, b
    and c
    dec c
    push hl
    sub [hl]
    and $7f
    call c, $ddb2
    ld d, $0d
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    jp hl


    ld h, b
    ei
    sub e
    sub [hl]
    and l
    and l
    and l
    adc e
    rst RST_38
    call c, $ddb2
    jp hl


    ld a, a
    ldh [$fff9], a
    jp hl


    ld a, a
    sbc [hl]
    db $fd
    ld h, b
    and c
    rst RST_38
    cp b
    db $d3
    jp hl


    sbc l
    ld d, $7f
    ld [$e38f], a
    sub d
    ld sp, hl
    and c
    dec c
    and l
    and l
    and l
    cp b
    db $d3
    ld [$927f], a
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    call c, $ddb2
    jp hl


    ld a, a
    ldh [$ffe5], a
    sub [hl]
    and l
    and l
    and l
    and c
    dec c
    xor $9a
    ld hl, sp-$50
    ld a, a
    sub [hl]
    ld l, h
    adc a
    ldh [$ff7f], a
    call c, $ddb2
    ld h, e
    dec c
    sub d
    adc a
    ld a, d
    sub d
    ld h, b
    and c
    inc c
    and l
    and l
    and l
    sub l
    db $f4
    adc e
    dec c
    ldh a, [rNR22]
    jp hl


    ld a, a
    rst RST_28
    db $fd
    push hl
    sub [hl]
    sub c
    ldh [$fff8], a
    and $0d
    ldh a, [$ff8e]
    sub e
    and $7f
    sub c
    ldh [$fff7], a
    sbc h
    sub d
    ld c, e
    db $dd
    ld d, $a5
    and l
    and l
    and c
    rst RST_38
    sub a
    ld a, [$e592]
    ld a, a
    call c, $ddb2
    jp hl


    ld a, a
    ld c, e
    db $dd
    ld h, b
    and c
    dec c
    add c
    ldh [c], a
    ld h, b
    sbc c
    ld a, a
    xor $9a
    ld hl, sp+$16
    ld a, a
    ldh [c], a
    sub d
    db $e3
    sub d
    push hl
    sub d
    and c
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    push hl
    and $96
    ld a, a
    sub c
    ld hl, sp-$61
    sub e
    ld h, b
    push hl
    and c
    rst RST_38
    sub c
    adc a
    adc d
    dec c
    sub l
    ld a, [$7fe9]
    sbc b
    ldh [c], a
    and $7f
    call c, $ddb2
    ld d, $a5
    and l
    and l
    adc d
    inc c
    sbc [hl]
    db $fd
    or b
    ld a, a
    sub c
    sbc c
    ld sp, hl
    db $e4
    ld a, a
    sub d
    sub a
    sub l
    sub d
    or $98
    dec c
    call c, $ddb2
    ld d, $7f
    push hl
    ld d, $fa
    ld h, b
    sbc h
    ldh [$ffa1], a
    rst RST_38
    sbc d
    adc a
    ld a, a
    sbc d
    ld a, [$a5ea]
    and l
    and l
    adc d
    inc c
    scf
    and h
    xor a
    db $e4
    sub d
    sub e
    ld a, a
    and $6c
    sub d
    sub l
    db $e4
    db $e4
    ld a, a
    db $e4
    di
    and $0d
    ld c, e
    db $dd
    ld h, b
    push hl
    ld d, $7f
    cp l
    rst RST_10
    or d
    ld b, h
    sbc h
    db $e3
    ld a, a
    ldh [c], a
    sub e
    ei
    ld d, $0d
    sub c
    rst RST_30
    db $fc
    ld a, [$a1e0]
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    sub [hl]
    sbc b
    sbc h
    ld l, l
    db $f4
    sub [hl]
    adc e
    rst RST_38
    sub e
    sbc l
    rla
    ldh [$ffe5], a
    sub d
    ld a, a
    call c, $ddb2
    cp [hl]
    rst RST_10
    and h
    ld h, b
    and c
    rst RST_38
    sub l
    sub l
    sub a
    push hl
    ld a, a
    call c, $ddb2
    jp hl


    ld a, a
    ldh [$fff9], a
    ld h, b
    and c
    rst RST_38
    db $eb
    ldh a, [$ffe2]
    jp hl


    ld a, a
    ldh [c], a
    sub e
    ei
    jp hl


    or $93
    ld h, b
    and c
    dec c
    push hl
    db $fd
    jp hl


    ldh [$fff2], a
    and $7f
    sbc d
    db $fd
    push hl
    db $e4
    sbc d
    ei
    or b
    adc e
    rst RST_38
    sbc h
    ldh [$ffed], a
    ld a, a
    ldh [c], a
    sub e
    inc e
    ld sp, hl
    ld a, a
    ldh [$ffe3], a
    sub c
    push hl
    ld h, b
    and c
    dec c
    ld [$1a9c], a
    ld d, $7f
    ldh [c], a
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    add hl, de
    sbc l
    sub d
    ld a, a
    ld h, h
    sbc b
    db $e4
    sbc b
    jp hl


    ld a, a
    ld [$b0e5], a
    ldh [c], a
    sbc b
    or $93

Call_00c_4cd7:
    push hl
    and $95
    sub d
    ld d, $7f
    jp hl


    ld l, [hl]
    adc a
    db $e3
    sbc b
    ld sp, hl
    and c
    rst RST_38
    rst RST_28
    ld sp, hl
    sub d
    ld a, a
    di
    sbc b
    sbc [hl]
    sub d
    jp hl


    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    dec c
    sbc d
    jp hl


    ld b, h
    or c
    jp hl


    ld a, a
    pop af
    sbc d
    sub e
    and $ea
    ld a, a
    sub d
    adc a
    ldh [$ff92], a
    dec c
    push hl
    and $16
    ld a, a
    sub c
    ld sp, hl
    db $e4
    sub d
    sub e
    jp hl


    sub [hl]
    adc e
    rst RST_38
    ld [$9660], a
    ld h, e
    db $fd
    sub a
    adc l
    sub e
    ld h, b
    and c
    dec c
    db $eb
    ldh a, [$ffe2]
    jp hl


    ld a, a
    ldh [c], a
    sub e
    ei
    jp hl


    ld a, a
    or d
    jp nc, Jump_000_3ca4

    and $0d
    ld a, e
    adc a
    ldh [$fff8], a
    ld h, b
    push hl
    and c
    rst RST_38
    sub e
    sbc l
    jr @-$07

    sub d
    ld a, a
    db $eb
    ldh a, [$ffe2]
    jp hl


    ld a, a
    ldh [c], a
    sub e
    ei
    ld h, b
    and c
    rst RST_38
    or [hl]
    inc a
    ret


    and $7f
    ldh [c], a
    sub e
    inc e
    ld sp, hl
    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    rst RST_38
    or [hl]
    inc a
    ret


    jp hl


    or $93
    ld h, b
    and c
    dec c
    push hl
    sub [hl]
    ld [$eb7f], a
    adc a
    sbc a
    ld hl, sp-$1c
    dec c
    sbc h
    dec e
    rst RST_28
    ld hl, sp-$6a
    sub h
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sbc a
    ld a, [$9a64]
    ei
    sub [hl]
    ld a, a
    sub c
    push hl
    ldh [$ffe6], a
    di
    ld a, a
    sub l
    sub l
    sub a
    push hl
    dec c
    or $93
    rla
    ld d, $7f
    sub [hl]
    sub [hl]
    adc a
    ldh [$ffa1], a
    inc c
    cp h
    and h
    add hl, sp
    reti


    jp hl


    ld a, a
    sbc e
    ldh [c], a
    ld d, $92
    db $f4
    ld a, a
    db $ec
    inc e
    db $fd
    jp hl


    dec c
    push af
    sub e
    sub [hl]
    sub d
    or b
    ld a, a
    inc e
    adc a
    sbc e
    sub d
    and $7f
    sub l
    sbc d
    push hl
    adc a
    ldh [$ffe4], a
    sub e
    ldh [rNR21], a
    db $fc
    ld a, [$e6f9]
    ld a, a
    inc e
    adc l
    sub e
    ld l, h
    db $fd
    push hl
    dec c
    sbc h
    adc [hl]
    sub e
    sbc d
    db $eb
    db $fd
    ld d, $7f
    ldh a, [$ffe2]
    sub [hl]
    adc a
    ldh [$ffe9], a
    ld h, b
    and c
    inc c
    rst RST_28
    ldh [$ff7f], a
    sub c
    push hl
    ldh [$ffe4], a
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    jp hl


    ld a, a
    push hl
    sub [hl]
    ld d, $0d
    db $fc
    ld sp, hl
    sub [hl]
    adc a
    ldh [$ff9a], a
    db $e4
    ld h, e
    ld a, a
    sbc e
    ldh [c], a
    ld d, $92
    jp hl


    dec c
    ld h, h
    sub e
    sub a
    sub c
    ld hl, sp+$7f
    db $e4
    ld [$60fd], a
    db $fd
    sbc e
    ld a, [$a1e0]
    inc c
    ld e, $e2
    ld l, [hl]
    sub e
    db $e3
    sub a
    push hl
    ld a, a
    inc e
    adc [hl]
    sub e
    sub a
    adc [hl]
    sub e
    jp hl


    di
    db $e4
    dec c
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    sbc e
    sub d
    ld l, d
    db $fd
    and $0d
    sub [hl]
    sbc c
    rst RST_30
    ld a, [$9af9]
    db $e4
    and $7f
    push hl
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc h
    sub [hl]
    sbc h
    ld a, a
    cp l
    ret nz

    db $dd
    or e
    xor a
    ld b, h
    db $e4
    ld a, a
    ld c, e
    xor a
    or [hl]
    and h
    cp l
    and $f6
    sub e
    rla
    or b
    ld a, a
    push hl
    add hl, de
    sub [hl]
    sbc c
    ld sp, hl
    and $ea
    ld a, a
    sub c
    rst RST_28
    ld hl, sp-$1a
    di
    sbc h
    adc [hl]
    sub e
    sbc d
    ld d, $7f
    db $ec
    sbc a
    sbc b
    sbc h
    db $e3
    sub d
    ldh [$ffa1], a
    rst RST_38
    reti


    and h
    jp c, $c4af

    ld h, b
    and c
    dec c
    ldh a, [$ffe3]
    sub d
    ld sp, hl
    ld h, b
    sbc c
    ld h, e
    ld a, a
    sbc d
    sub e
    db $ec
    db $fd
    sbc h
    db $e3
    sbc b
    ld sp, hl
    and c
    inc c
    rst RST_28
    sub h
    and $7f
    db $f4
    adc a
    ldh [$ff9a], a
    db $e4
    ld d, $0d
    sub c
    ld sp, hl
    jp hl


    ld h, b
    ei
    sub e
    sub [hl]
    and c
    rst RST_38
    cp l
    db $db
    xor a
    call nz, $bccf
    db $dd
    ld h, b
    and c
    dec c
    sbc d
    sub d
    ldh [c], a
    ld h, e
    ld a, a
    sub l
    ld a, [$7fe9]
    sub e
    db $fd
    or b
    dec c
    ldh [$fff2], a
    sbc h
    db $e3
    ldh a, [$fff6]
    sub e
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    rst RST_28
    db $fc
    sbc h
    db $e3
    di
    ld a, a
    sub l
    db $e4
    ld d, $7f
    sbc h
    push hl
    sub d
    and c
    dec c
    sbc d
    db $fc
    ld a, [$92e3]
    ld sp, hl
    or $93
    ld h, b
    and c
    rst RST_38
    pop hl
    adc a
    ld a, a
    ld h, b
    ldh a, [c]
    sub [hl]
    adc d
    dec c
    ld h, h
    sub e
    di
    ld a, a
    ldh [c], a
    sub d
    db $e3
    sub d
    push hl
    sub d
    or $93
    ld h, b
    and c
    dec c
    rst RST_38
    cp l
    db $db
    xor a
    call nz, $bccf
    db $dd
    ld d, $7f
    rst RST_28
    db $fc
    ld hl, sp-$16
    inc e
    ldh a, [c]
    ldh [$ffa1], a
    dec c
    or e
    xor b
    and h
    db $dd
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    or [hl]
    pop bc
    xor h
    ld a, a
    or [hl]
    pop bc
    xor h
    ld a, a
    or [hl]
    pop bc
    xor h
    and l
    and l
    and l
    dec c
    pop bc
    and h
    db $dd
    adc d
    inc c
    db $f4
    adc a
    ldh [rNR34], a
    adc d
    adc d
    dec c
    inc a
    xor h
    xor a
    cp b
    ld e, [hl]
    xor a
    call nz, $8a60
    inc c
    sub l
    sub l
    sub c
    ldh [$fff8], a
    ld h, b
    adc d
    adc d
    dec c
    cp d
    or d
    db $dd
    ld d, $7f
    inc a
    xor h
    db $dd
    inc a
    xor h
    db $dd
    ld a, a
    ld h, e
    db $e3
    sbc b
    ld sp, hl
    rra
    adc d
    rst RST_38
    ret nz

    cp b
    cp h
    and h
    ld [$ea7f], a
    adc a
    sbc h
    db $fd
    sbc h
    ldh [$ffa1], a
    dec c
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    rst RST_38
    ld h, b
    ld a, [$92f3]
    push hl
    sub d
    ld a, a
    or [hl]
    inc a
    ret


    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    rst RST_38
    reti


    and h
    jp c, $c4af

    ld h, b
    and c
    rst RST_38
    ret nz

    cp b
    cp h
    and h
    ld [$ea7f], a
    adc a
    sbc h
    db $fd
    sbc h
    ldh [$ffa1], a
    dec c
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$c67f], a
    cp d
    add $ba
    sbc h
    push hl
    ld d, $f7
    dec c
    jp z, $44dd

    reti


    or b
    ld a, a
    and $17
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    and l
    and l
    and l
    sub c
    sub [hl]
    push hl
    sub d
    and c
    dec c
    sbc d
    pop hl
    rst RST_30
    sub [hl]
    rst RST_30
    ld [$917f], a
    sub [hl]
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    or h
    jp c, $a46d

    ret nz

    jp hl


    ld a, a
    rst RST_28
    sub h
    ld h, b
    and c
    rst RST_38
    or h
    jp c, $a46d

    ret nz

    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    dec c
    sbc e
    db $e3
    ld a, a
    ld h, h
    sbc d
    and $7f
    sub d
    sbc d
    sub e
    sub [hl]
    and l
    and l
    and l
    adc e
    rst RST_38
    sub d
    pop hl
    ld l, d
    db $fd
    ld a, a
    sub e
    sub h
    jp hl


    call z, $b1db
    jp hl


    dec c
    ld c, [hl]
    ret nz

    db $dd
    ld h, b
    ei
    sub e
    and c
    rst RST_38
    push hl
    db $fd
    jp hl


    ld a, a
    sbc h
    ld sp, hl
    sbc h
    di
    push hl
    sub d
    ld a, a
    ld c, [hl]
    ret nz

    db $dd
    ld h, b
    and c
    rst RST_38
    sub d
    pop hl
    ld l, d
    db $fd
    ld a, a
    sbc h
    ldh [$ffe9], a
    call z, $b1db
    jp hl


    dec c
    ld c, [hl]
    ret nz

    db $dd
    ld h, b
    ei
    sub e
    and c
    rst RST_38
    or h
    jp c, $a46d

    ret nz

    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    rst RST_38
    ld c, [hl]
    ret nz

    db $dd
    or b
    ld a, a
    sub l
    sbc l
    db $e4
    ld a, a
    or h
    jp c, $a46d

    ret nz

    ld d, $0d
    sub e
    ld a, [de]
    sub a
    ld [$f21c], a
    ldh [$ffa1], a
    dec c
    or e
    xor b
    and h
    db $dd
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    ld a, [hl-]
    or e
    or e
    or e
    db $dd
    and c
    dec c
    or h
    jp c, $a46d

    ret nz

    ld d, $7f
    db $e4
    rst RST_28
    adc a
    db $e3
    ld a, a
    ld b, h
    or c
    ld d, $0d
    db $eb
    rst RST_30

jr_00c_5071:
    sub d
    ldh [$ffa1], a
    rst RST_38
    ld c, [hl]
    ret nz

    db $dd
    or b
    ld a, a
    sub l
    sbc l
    db $e4
    ld a, a
    ld b, h
    or c
    ld d, $7f
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    inc c
    sbc l
    jr jr_00c_5071

    ld a, a
    ld b, h
    or c
    ld d, $7f
    db $eb
    rst RST_30
    sub d
    ldh [$ffa1], a
    dec c
    and l
    and l
    and l
    and l
    and l
    and l
    sub l
    db $f4
    adc e
    dec c
    sbc e
    adc a
    sub a
    db $e4
    ld a, a
    sub l
    push hl
    inc e
    ld a, a
    ld l, d
    sbc h
    adc [hl]
    inc e
    adc h
    push hl
    sub d
    sub [hl]
    adc d
    rst RST_38
    push hl
    db $fd
    ld h, b
    adc d
    adc e
    dec c
    sbc d
    jp hl


    db $ed
    db $f4
    ld [$a5a5], a
    and l
    adc e
    inc c
    ld l, h
    sub a
    ldh a, [$ffe5]
    ld a, a
    sbc b
    sub e
    sub a
    ld d, $7f
    ldh [$ff60], a
    or $8f
    db $e3
    sub d
    ld sp, hl
    and c
    sub d
    adc a
    ldh [$ff92], a
    ld a, a
    push hl
    and $b0
    sbc l
    ld sp, hl
    ld a, a
    db $ed
    db $f4
    push hl
    jp hl


    sub [hl]
    adc e
    rst RST_38
    ld h, e
    db $fd
    sub a
    or d
    cp l
    jp hl


    or $93
    and $f0
    sub h
    ld sp, hl
    ld d, $7f
    cp d
    and h
    ld b, h
    ld [$92e2], a
    db $e3
    sub d
    push hl
    sub d
    and c
    inc c
    sub c
    ldh [$ffef], a
    db $e4
    ld a, a
    sub e
    ld h, e
    jp hl


    ld a, a
    sbc e
    sbc e
    sub h
    ld d, $7f
    sub c
    adc a
    db $e3
    dec c
    pop hl
    adc [hl]
    sub e
    ld h, h
    ld a, a
    ld [$9c92], a
    adc h
    jp hl


    ld a, a
    or d
    cp l
    jp hl


    or $93
    ld h, b
    and c
    inc c
    push hl
    and $b0
    sbc l
    ld sp, hl
    ldh [$fff2], a
    jp hl


    ld a, a
    di
    jp hl


    push hl
    jp hl


    sub [hl]
    and l
    and l
    and l
    and c
    db $fc
    sub [hl]
    rst RST_30
    push hl
    sub d
    adc d
    rst RST_38
    ld a, [hl-]
    ret nc

    ld l, d
    sbc d
    ld h, b
    and c
    rst RST_38
    or [hl]
    rst RST_10
    jp hl


    ld a, a
    cp b
    cp l
    ret c

    ld c, e
    db $dd
    ld h, b
    and c
    dec c
    rst RST_10
    ld l, l
    reti


    and $7f
    ld a, l
    db $dd
    ret nz

    cp a
    and h
    ld b, b
    db $e4
    dec c
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    or [hl]
    rst RST_10
    db $e4
    sub d
    sub e
    sbc d
    db $e4
    ld [$9d7f], a
    ld h, e
    and $7f
    push hl
    and $96
    and $0d
    ldh [c], a
    sub [hl]
    db $fc
    ld a, [$e9e0]
    sub [hl]
    and l
    and l
    and l
    adc e
    rst RST_38
    rst RST_10
    ld l, l
    reti


    and $7f
    jp nc, $da44

    inc a
    db $dd
    db $e4
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    push hl
    sub [hl]
    and $7f
    cp b
    cp l
    ret c

    ld d, $7f
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    sub d
    adc a
    ldh [$ff92], a
    ld a, a
    ld h, h
    db $fd
    push hl
    sbc d
    sub e
    sub [hl]
    jp hl


    sub c
    ld sp, hl
    dec c
    cp b
    cp l
    ret c

    push hl
    jp hl


    ld h, b
    ei
    sub e
    sub [hl]
    adc e
    rst RST_38
    ld b, b
    or d
    cp e
    ret


    and h
    reti


    db $e4
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    ld a, a
    or [hl]
    rst RST_10
    jp hl


    dec c
    cp b
    cp l
    ret c

    ld c, e
    db $dd
    ld h, b
    and c
    inc c
    and l
    and l
    and l
    ld b, b
    or d
    cp e
    ret


    and h
    reti


    adc e
    dec c
    sub a
    sub a
    sub l
    ld l, [hl]
    sub h
    ld d, $7f
    sub c
    ld sp, hl
    or $93
    ld h, b
    ld d, $a5
    and l
    and l
    and c
    dec c
    and l
    and l
    and l
    sub l
    di
    sub d
    ld h, b
    sbc [hl]
    push hl
    sub d
    and c
    rst RST_38
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sub a
    jp hl


    ld a, a
    push hl
    sub [hl]
    and $7f
    db $fc
    dec e
    sub [hl]
    and $0d
    sbc l
    sub d
    db $e3
    sub a
    ld d, $7f
    jp hl


    sbc d
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    push hl
    and $96
    and $7f
    ldh [c], a
    sub [hl]
    adc a
    ldh [$ff7f], a
    sub c
    db $e4
    ld h, b
    ei
    sub e
    and c
    inc c
    and l
    and l
    and l
    di
    sbc h
    sub [hl]
    sbc h
    db $e3
    adc d
    dec c
    sub l
    ld a, [$7fe9]
    sub c
    ldh [$ffef], a
    and $7f
    or d
    call nc, Call_00c_7fe5
    or $96
    db $fd
    ld d, $0d
    ld [$8f9c], a
    ldh [$ffa1], a
    inc c
    sbc d
    jp hl


    ld a, a
    db $eb
    ld h, b
    ld hl, sp-$6d
    ld h, e
    jp hl


    ld a, a
    pop hl
    adc l
    sub e
    sbc h
    adc h
    jp hl


    dec c
    sub c
    db $e4
    db $e4
    ld a, a
    push hl
    and $96
    ld a, a
    sub [hl]
    db $fd
    sbc c
    sub d
    ld d, $0d
    sub c
    ld sp, hl
    jp hl


    ld h, e
    ld [$a5a5], a
    and l
    adc e
    rst RST_38
    or h
    jp c, $a46d

    ret nz

    jp hl


    ld a, a
    ld c, [hl]
    ret nz

    db $dd
    ld h, b
    and c
    dec c
    push hl
    db $fd
    jp hl


    ld a, a
    sbc h
    ld sp, hl
    sbc h
    di
    ld a, a
    push hl
    sub d
    and c
    rst RST_38
    sub c
    adc a
    and l
    and l
    and l
    adc d
    dec c
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sub a
    ld d, $7f
    sbc l
    db $e3
    db $e3
    sub c
    ld sp, hl
    rra
    and c
    dec c
    sbc d
    ld a, [$7fea]
    sub d
    adc a
    ldh [$ff92], a
    and l
    and l
    and l
    adc e
    rst RST_38
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sub a
    or b
    ld a, a
    db $e4
    adc a
    ldh [$ffa1], a
    dec c
    push hl
    and $96
    jp hl


    ld a, a
    db $f4
    sbc b
    and $7f
    ldh [$ffe2], a
    sub [hl]
    di
    sbc h
    ld a, [$92e5]
    and c
    sbc a
    sub e
    ld a, a
    sub l
    di
    adc a
    ldh [$ff96], a
    rst RST_30
    ld h, b
    and l
    and l
    and l
    and c
    rst RST_38
    ld l, h
    sub a
    ldh a, [$ffe5]
    ld a, a
    db $ed
    db $f4
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    push hl
    and $f3
    ld a, a
    sub l
    sbc d
    rst RST_30
    push hl
    sub d
    and c
    rst RST_38
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sub a
    and $ea
    ld a, a
    sbc l
    ld h, e
    and $7f
    cp b
    cp l
    ret c

    ld d, $0d
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    jp nc, $da44

    inc a
    db $dd
    or b
    ld a, a
    inc e
    ld l, h
    db $fd
    jp hl


    ld a, a
    sub e
    ld h, e
    and $0d
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sbc h
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    sub e
    adc a
    adc d
    dec c
    sbc b
    adc a
    ld a, a
    sbc b
    ld sp, hl
    sbc h
    sub d
    and l
    and l
    and l
    adc d
    inc c
    sub [hl]
    rst RST_30
    ld h, b
    inc e
    adc l
    sub e
    ld d, $7f
    sbc c
    sub d
    ld a, [$b0fd]
    ld a, a
    sub l
    sbc d
    sbc h
    dec c
    sub l
    ld a, [$7fea]
    sbc a
    jp hl


    ld l, d
    and $7f
    ldh [$ff95], a
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    inc c
    sub l
    ld a, [$7fe9]
    sbc l
    sub d
    inc e
    adc h
    sbc b
    sbc h
    ldh [$ff7f], a
    sub [hl]
    rst RST_30
    ld h, b
    and $0d
    sbc d
    jp hl


    cp b
    cp l
    ret c

    jp hl


    ld a, a
    sbc e
    or $93
    ld [$9d7f], a
    sbc d
    sbc h
    dec c
    ldh [c], a
    or $9d
    rla
    ldh [$fff6], a
    sub e
    ld h, b
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    rst RST_38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00c_60d9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00c_7fe5:
    nop

Call_00c_7fe6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
