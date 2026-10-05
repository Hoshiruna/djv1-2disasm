; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    nop
    ld b, c
    ld a, [bc]
    ld b, c
    ld d, $41
    jr nz, jr_018_4049

    ld a, [hl+]
    ld b, c
    ld b, [hl]
    ld b, c
    sbc b
    ld b, c
    jp z, $f241

    ld b, c
    dec bc
    ld b, d
    inc e
    ld b, d
    dec sp
    ld b, d
    ld a, b
    ld b, d
    rst RST_00
    ld b, d
    db $d3
    ld b, d
    scf
    ld b, e
    ld c, c
    ld b, e
    adc a
    ld b, e
    xor [hl]
    ld b, e
    cp b
    ld b, e
    rst RST_10
    ld b, e
    and $43
    inc e
    ld b, h
    ld sp, $4d44
    ld b, h
    ld h, a
    ld b, h
    ld [hl], e
    ld b, h
    add b
    ld b, h
    adc l
    ld b, h
    sbc c
    ld b, h
    ret


    ld b, h
    pop hl
    ld b, h
    ldh a, [c]
    ld b, h
    cp $44
    db $10
    ld b, l
    ld a, [de]
    ld b, l
    dec h

jr_018_4049:
    ld b, l
    ld l, l
    ld b, l
    ld a, l
    ld b, l
    adc l
    ld b, l
    sbc a
    ld b, l
    or d
    ld b, l
    db $ed
    ld b, l
    daa
    ld b, [hl]
    ld [hl], $46
    ld b, b
    ld b, [hl]
    ld e, b
    ld b, [hl]
    ld [hl], d
    ld b, [hl]
    adc l
    ld b, [hl]
    sbc a
    ld b, [hl]
    or h
    ld b, [hl]
    ret z

    ld b, [hl]
    di
    ld b, a
    ld c, l
    ld c, b
    add a
    ld c, b
    pop bc
    ld c, b
    db $e4
    ld c, b
    ld e, $49
    ld d, c
    ld c, c
    ld e, h
    ld c, c
    or h
    ld c, c
    rst RST_20
    ld c, c
    ld d, [hl]
    ld c, d
    sub $4a
    ei
    ld c, d
    add hl, de
    ld c, e
    ld c, l
    ld c, e
    ld [hl], h
    ld c, e
    sub c
    ld c, e
    and d
    ld c, e
    or [hl]
    ld c, e
    or $4b
    add hl, bc
    ld c, h
    ld c, b
    ld c, h
    ld h, c
    ld c, h
    ld h, c
    ld c, h
    ld h, c
    ld c, h
    ld h, c
    ld c, h
    ld h, c
    ld c, h
    call c, $024c
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, l
    ld [de], a
    scf
    push bc
    ld d, $7f
    db $fc
    ld a, [$a1e0]
    rst RST_38
    ld [de], a
    scf
    push bc
    ld [$fc7f], a
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    or b
    ld a, a
    sub c
    sbc c
    ldh [$ffa1], a
    rst RST_38
    ld [de], a
    scf
    push bc
    or b
    ld a, a
    sbc h
    ldh a, [c]
    ldh [$ffa1], a
    rst RST_38
    sub l
    ld a, [$7fea]
    ld [de], a
    scf
    push bc
    ld h, e
    dec c
    ldh [c], a
    ldh a, [$fff3]
    push hl
    sub d
    db $eb
    db $e4
    or b
    ld a, a
    sbc d
    ei
    sbc h
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ff8a], a
    rst RST_38
    sub l
    db $fd
    push hl
    ld [$927f], a
    adc a
    sbc h
    adc l
    db $fd
    ld a, a
    sub l
    ld h, h
    ei
    sub d
    ldh [rNR21], a
    dec c
    sbc e
    sbc h
    ld h, b
    sbc h
    ldh [$ff7f], a
    ld [de], a
    scf
    push bc
    or b
    ldh a, [$ffe3]
    dec c
    add $ba
    ret c

    db $e4
    ld a, a
    db $fc
    rst RST_30
    adc a
    ldh [$ffa1], a
    inc c
    sbc $9d
    ld l, d
    rst RST_30
    sbc h
    sub d
    ld a, a
    ld e, h
    jp c, $dd3e

    call nz, Call_000_0db0
    ld a, a
    sub c
    ld hl, sp+$16
    db $e4
    sub e
    and c
    dec c
    ld a, a
    ld h, e
    di
    ld a, a
    sbc d
    ld a, [$7fea]
    sub e
    sbc c
    db $e4
    ld a, [$9eef]
    db $fd
    and c
    rst RST_18
    rst RST_38
    sub l
    db $fd
    push hl
    ld [$917f], a
    sub d
    sbc a
    db $fc
    rst RST_30
    sub d
    or b
    sbc h
    db $e3

jr_018_41a6:
    dec c
    ld [de], a
    scf
    push bc
    or b
    ld a, a
    ldh [c], a
    sub a
    sub [hl]
    sub h
    sbc h
    ldh [$ffa1], a
    inc c
    sbc $9a
    ld a, [$7fea]
    pop bc
    xor a
    ld e, h
    and $0d
    ld a, a
    sub [hl]
    sub h
    rst RST_30
    ld a, [$9eef]
    db $fd
    or $a1
    rst RST_18
    rst RST_38
    jr c, jr_018_41a6

    and h
    jp hl


    ld a, a
    rst RST_28
    ld sp, hl
    sub d
    ld a, a
    ld c, [hl]
    ret nz

    db $dd
    ld h, b
    and c
    dec c
    sbc d
    ld a, [$7fb0]
    sub l
    sbc [hl]
    ld l, d
    ld a, a
    inc b
    add a
    push bc
    sub [hl]
    sub d
    and $0d
    sub d
    sbc b
    sbc d
    db $e4
    ld d, $63
    sub a
    ld sp, hl
    and c
    rst RST_38
    sub [hl]
    db $fd
    ld l, d
    db $fd
    and $ea
    ld a, a
    sbc $04
    add a
    push bc
    ld l, d
    db $fd
    sbc [hl]
    db $fd
    rst RST_18
    db $e4
    dec c
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    inc b
    add a
    push bc
    ld l, d
    db $fd
    sbc [hl]
    db $fd
    db $ed
    jp hl


    ld a, a
    sub d
    ld hl, sp+$18
    pop hl
    ld h, b
    and c
    rst RST_38
    sbc $04
    add a
    push bc
    ld l, d
    db $fd
    sbc [hl]
    db $fd
    rst RST_18
    db $e4
    ld a, a
    sub [hl]
    sub [hl]
    ld a, [$0de0]
    sub [hl]
    db $fd
    ld l, d
    db $fd
    ld d, $7f
    ldh [c], a
    ld sp, hl
    sbc e
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    sbc $9a
    jp hl


    ld a, a
    ld a, [$9c8f]
    adc h
    ld [$7f0d], a
    ld [de], a
    scf
    push bc
    sub d
    sub a
    ld h, e
    sbc l
    and c
    inc c
    ld a, a
    ld a, [de]
    ld hl, sp-$0a
    sub e
    jp hl


    sub [hl]
    ldh [$ffea], a
    ld a, a
    ld hl, sp-$72
    sub e
    sub a
    db $fd
    dec c
    ld a, a
    inc b
    add a
    push bc
    ld b, h
    reti


    or b
    ld a, a
    db $fc
    ldh [$ff9c], a
    and $0d
    ld a, a
    ld [$8ff7], a
    db $e3
    sbc b
    ld h, b
    sbc e
    sub d
    and c
    rst RST_18
    rst RST_38
    sub l
    ld a, [$7f16]
    sub a
    ld hl, sp-$6a
    sub [hl]
    ei
    sub e
    db $e4
    sbc l
    ld sp, hl
    db $e4
    dec c
    sbc h
    adc h
    sbc h
    adc [hl]
    sub e
    ld d, $7f
    di
    jp hl


    sbc l
    ld a, [de]
    sub d
    pop hl
    sub [hl]
    rst RST_30
    ld h, e
    dec c
    sub l
    ld a, [$7fe9]
    db $e3
    sub [hl]
    rst RST_30
    ld a, a
    ld [de], a
    scf
    push bc
    or b
    dec c
    db $e4
    ld hl, sp-$6f
    add hl, de
    ldh [$ff8a], a
    inc c
    sbc a
    sbc h
    db $e3
    ld a, a
    sub l
    ld a, [$7fb0]
    ld a, [$9c8f]
    adc h
    sub [hl]
    rst RST_30
    dec c
    sbc c
    ld hl, sp-$6b
    ei
    sbc h
    db $e3
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld [de], a
    scf
    push bc
    sub h
    sub a
    and $7f
    ldh [c], a
    sub d
    ldh [$ffa1], a
    rst RST_38
    sub l
    ld a, [$7fea]
    ld [de], a
    scf
    push bc
    or b
    dec c
    sbc d
    ei
    sbc h
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    db $eb
    db $e4
    or b
    ld a, a
    sbc d
    ei
    sbc l
    push hl
    db $fd
    db $e3
    ld a, a
    rst RST_28
    db $e4
    di
    push hl
    dec c
    and $fd
    add hl, de
    db $fd
    ld d, $7f
    db $f4
    ld sp, hl
    sbc d
    db $e4
    ld h, e
    ld [$92e5], a
    and c
    inc c
    sbc [hl]
    sub d
    db $e4
    sub e
    ld l, [hl]
    sub e
    sub h
    sub d
    push hl
    rst RST_30
    ld a, a
    rst RST_28
    ld h, b
    sbc h
    di
    dec c
    ldh [c], a
    ldh a, [$ffe9]
    ld a, a
    push hl
    sub d
    ld a, a
    ld e, $fd
    ld hl, sp-$72
    sub e
    push hl
    ld a, a
    sbc h
    ldh a, [$fffd]
    or b
    sbc d
    ei
    sbc h
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffe9], a
    ld h, b
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    or b
    ld a, a
    ldh [c], a
    sbc b
    sub h
    jp hl


    push hl
    sub [hl]
    and $0d
    sub d
    ld a, [$a1e0]
    rst RST_38
    sub h
    sub d
    ld d, $63
    ld a, a
    sbc c
    sub d
    sub [hl]
    db $fd
    ld d, $7f
    ld [$e6fd], a
    db $fd
    and $0d
    ld [$1c98], a
    adc [hl]
    sub e
    sbc e
    sbc [hl]
    ld sp, hl
    db $e4
    sub a
    ld a, a

jr_018_4365:
    sbc l
    ld sp, hl
    or $93
    and $0d
    sub c
    sub [hl]
    ld hl, sp-$50
    ld a, a
    ld [de], a
    scf
    push bc
    jp hl


    ld a, a
    sub [hl]
    sub l
    and $0d
    pop af
    sbc c
    db $e3
    ld a, a
    sub c
    db $e3
    ldh [$ffa1], a
    inc c
    ld h, b
    ld d, $7f
    ld [$1c98], a
    adc [hl]
    sub e
    sbc h
    push hl
    sub d
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    or b
    ld a, a
    ldh a, [$ffe6]
    ldh [c], a
    sbc c
    ld sp, hl
    ldh [$fff2], a
    and $0d
    ld [de], a
    jr c, jr_018_4365

    or b
    ld a, a
    rst RST_20
    jr jr_018_43b2

jr_018_43a5:
    db $eb
    ldh [c], a
    or $93
    ld d, $91
    ld sp, hl
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    or b

jr_018_43b2:
    ld a, a
    rst RST_20
    sub d
    ld h, b
    and c
    rst RST_38
    sub [hl]
    add sp, $63
    ld a, a
    ld h, e
    sub a
    ldh [$ff7f], a
    inc e
    adc h
    jr jr_018_43a5

    ld h, b
    and c
    dec c
    ld [de], a
    scf
    push bc
    ld a, a
    db $ec
    pop hl
    ld h, h
    ld hl, sp+$16
    ld a, a
    sbc h
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    ld h, e
    ld a, a
    db $e3
    sbc b
    ld l, e
    or b
    dec c
    sub a
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld [de], a
    scf
    push bc
    and $7f
    ldh [$ffef], a
    ld d, $7f
    sub c
    ldh [$ff8f], a
    db $e3
    dec c
    ld [$96e8], a
    sub h
    adc a
    ldh [$ffa1], a
    inc c
    sub c
    ld l, h
    push hl
    sub d
    adc d
    dec c
    di
    sub e
    sbc l
    sbc d
    sbc h
    ld h, e
    ld a, a
    sub l
    ld a, [$7fe6]
    sub c
    ldh [$fff9], a
    dec c
    db $e4
    sbc d
    ei
    ld h, b
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    or b
    ld a, a
    sbc [hl]
    db $fd
    ldh [$ff98], a
    sub a
    jp hl


    dec c
    push hl
    sub [hl]
    and $7f
    sub d
    ld a, [$a1e0]
    rst RST_38
    ld [de], a
    scf
    push bc
    and $7f
    push hl
    add hl, de
    ld sp, hl
    push hl
    db $fd
    db $e3
    dec c
    sub c
    rst RST_28
    ld hl, sp-$1a
    di
    ld a, a
    pop af
    sub d
    ldh a, [$ffe5]
    ld a, a
    sbc d
    db $e4
    ld h, b
    and c
    rst RST_38
    sbc $04
    add a
    push bc
    rst RST_18
    db $e4
    ld a, a
    ld l, d
    db $fd
    ld a, [de]
    sub e
    jp hl


    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    dec c
    ld e, h
    jp c, $c4a4

    ld h, b
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    ld [$917f], a
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    ld [$9c7f], a
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    ld [$9a7f], a
    db $fc
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    or b
    ld a, a
    db $e3
    and $92
    ld a, [$a1e0]
    rst RST_38
    cp l
    or [hl]
    xor a
    adc d
    inc c
    sub l
    ld a, [$7fe9]
    db $e3
    ld [$127f], a
    scf
    push bc
    and $0d
    db $e4
    ld h, h
    sub [hl]
    push hl
    sub [hl]
    adc a
    ldh [$ffa1], a
    inc c
    ld h, b
    ld d, $7f
    ld [de], a
    scf
    push bc
    or b
    dec c
    sub l
    sbc d
    rst RST_30
    sbc [hl]
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    ld [$957f], a
    sub l
    ld a, [de]
    sub h
    ld h, e
    dec c
    or $93
    inc e
    db $fd
    ld l, [hl]
    sub e
    or b
    ld a, a
    or $fd
    ld h, b
    adc d
    rst RST_38
    inc b
    add a
    push bc
    sub [hl]
    sub d
    jp hl


    ld a, a
    ld c, [hl]
    ret nz

    db $dd
    or b
    ld a, a
    sub l
    sbc h
    ldh [$ffa1], a
    rst RST_38
    inc b
    add a
    push bc
    sub [hl]
    sub d
    and $7f
    ldh [c], a
    sub d
    ldh [$ffa1], a
    rst RST_38
    ld [de], a
    scf
    push bc
    or b
    ld a, a
    sub c
    sbc c
    push hl
    sbc c
    ld a, [$0d6a]
    ld h, e
    sub a
    push hl
    sub d
    adc d
    rst RST_38
    ld [de], a
    scf
    push bc
    ld d, $7f
    sub c
    sub d
    ldh [$ffa1], a
    rst RST_38
    ld [de], a
    scf
    push bc
    ld d, $7f
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld a, a
    ldh a, [c]
    ld d, $99
    db $e3
    dec c
    ld [de], a
    scf
    push bc
    or b
    ld a, a
    ldh [c], a
    sub a
    ld h, b
    sbc h
    ldh [$ffa1], a
    inc c
    ld h, b
    ld d, $7f
    ld l, [hl]
    sub e
    ld h, b
    db $fd
    ld [hl], $d7
    cp l
    and $7f
    ld [$ef6a], a
    ld a, [$a1e0]
    sbc a
    ld a, [$7fe6]
    di
    sub e
    sbc l
    sbc d
    sbc h
    ld h, e
    ld a, a
    ld [de], a
    scf
    push bc
    jp hl


    dec c
    ld [$7f16], a
    sub l
    ld a, [$e4f9]
    sbc d
    ei
    ld h, b
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld [de], a
    scf
    push bc
    jp hl


    ld a, a
    ld e, [hl]
    cp c
    xor a
    call nz, Call_000_0db0
    sub c
    sbc c
    ldh [$ffa1], a
    rst RST_38
    ld [de], a
    scf
    push bc
    jp hl


    ld a, a
    ld e, [hl]
    cp c
    xor a
    call nz, Call_000_0db0
    sbc h
    ldh a, [c]
    ldh [$ffa1], a
    rst RST_38
    ld [de], a
    scf
    push bc
    jp hl


    ld a, a
    ld e, [hl]
    cp c
    xor a
    call nz, Call_000_0dea
    sub c
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    jp hl


    ld a, a
    ld e, [hl]
    cp c
    xor a
    call nz, Call_000_0dea
    sbc h
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    ld [$957f], a
    ld a, [$7f16]
    db $ec
    sbc b
    or b
    dec c
    rst RST_20
    rla
    ld [$f21c], a
    ldh [$ffe9], a
    ld h, e
    dec c
    ld c, e
    xor a
    cp b
    ret c

    sbc h
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    inc c
    db $e4
    ldh [c], a
    ld e, $fd
    ld a, a
    sub l
    sub l
    ld a, [de]
    sub h
    or b
    ld a, a
    ld [$91f8], a
    add hl, de
    dec c
    ldh [$ff9d], a
    sbc c
    or b
    ld a, a
    or $fd
    ld h, b
    adc d
    rst RST_38
    ld [de], a
    scf
    push bc
    ld [$957f], a
    ld a, [$7f16]
    push hl
    and $f3
    dec c
    sub a
    db $e3
    sub d
    push hl
    sub d
    jp hl


    ld h, e
    dec c
    ld c, e
    xor a
    cp b
    ret c

    sbc h
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    inc c
    db $e4
    ldh [c], a
    ld e, $fd
    ld a, a
    sub l
    sub l
    ld a, [de]
    sub h
    or b
    ld a, a
    ld [$91f8], a
    add hl, de
    dec c
    ldh [$ff9d], a
    sbc c
    or b
    ld a, a
    or $fd
    ld h, b
    adc d
    rst RST_38
    inc b
    add a
    push bc
    sub [hl]
    sub d
    and $7f
    ldh [c], a
    ld h, d
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    or b
    ld a, a
    sbc l
    db $e3
    ldh [$ffa1], a
    rst RST_38
    ld [de], a
    scf
    push bc
    ld [$f47f], a
    sbc b
    and $0d
    ldh [$ffe1], a
    sbc a
    sub e
    di
    push hl
    sub d

jr_018_4650:
    jp hl


    ld h, e
    ld a, a
    sbc l
    db $e3
    ldh [$ffa1], a
    rst RST_38

jr_018_4658:
    ld [de], a
    scf
    push bc
    ld [de], a
    jr c, @-$39

    db $e4
    dec c
    push hl
    sub d
    or $93
    ld d, $7f
    sbc l
    sbc d
    sbc h
    ld a, a
    pop hl
    ld d, $8f
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sbc d

jr_018_4673:
    ld [de], a
    scf
    push bc
    and $ea
    ld a, a
    add b
    ld l, d
    db $fd
    jp hl


    dec c
    sbc h

jr_018_467f:
    ld [$92f7], a
    ld d, $7f
    sub [hl]
    sub [hl]
    ld a, [$12e3]
    jr c, jr_018_4650

    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    ld [de], a
    jr c, jr_018_4658

jr_018_4693:
    db $e4
    dec c
    ldh a, [$ff98]
    rst RST_30
    ld l, l
    ld sp, hl
    db $e4
    and l
    and l
    and l
    rst RST_38
    sbc d
    ld [de], a
    scf
    push bc
    and $ea
    ld a, a
    add b
    ld l, d
    db $fd
    ld d, $0d
    ld [de], a
    jr c, jr_018_4673

    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    ld [de], a
    jr c, jr_018_467f

    db $e4
    dec c
    push hl
    sub d
    or $93
    ld [$957f], a
    push hl
    inc e
    ld h, b
    and c
    rst RST_38
    sbc $f4
    adc a
    db $e4
    ld a, a
    ldh a, [$ffe2]
    sbc c
    ldh [$ff1f], a
    adc d
    inc c
    ld a, a
    sub c
    jp hl


    ld a, a
    db $ed
    db $f4
    and $7f
    cp h
    ld [hl], $a4
    ret c

    db $dd
    jr c, jr_018_4693

    dec c
    ld a, a
    sub l
    sub d
    db $e3
    ld a, a
    ld c, [hl]
    cp l
    db $e4
    ld a, a
    sub c
    and $97
    or b
    dec c
    ld a, a
    sub c
    rst RST_30
    sbc a
    db $fc
    sbc [hl]
    or $93
    db $e4
    ld a, a
    sbc h
    ldh [$fffd], a
    ld h, b
    ei
    sub e
    ld d, $0d
    ld a, a
    sbc a
    sub e
    ld [$927f], a

jr_018_470a:
    sub [hl]
    push hl
    sub d
    adc d
    rst RST_18
    inc c
    sbc $97
    sbc c
    db $fd
    or b
    ld a, a
    sub [hl]
    db $fd
    inc e
    ldh [$ff7f], a
    sub c
    and $97
    ld [$7f0d], a
    sbc l
    jr jr_018_470a

    ld a, a
    ld c, [hl]
    cp l
    db $e4
    ld a, a
    cp l
    call nz, Call_000_3ca4
    and h
    or b
    dec c
    ld a, a
    sbc h
    rst RST_28
    ldh [c], a
    sbc h
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    ld a, a
    sbc a
    sbc h
    db $e3
    ld a, a
    sbc h
    rst RST_20
    rst RST_28
    rla
    db $fc
    and $7f
    cp l
    call nz, Call_000_3ca4
    and h
    and $7f
    sub a
    sub d
    ldh [$fffd], a
    ld h, b
    adc d
    inc c
    ld a, a
    ld h, b
    ld d, $7f
    db $f4
    ldh [c], a
    ld [$917f], a
    jp hl


    db $ed
    db $f4
    and $0d
    ld a, a
    ld [$8f92], a
    ldh [$ff9a], a
    db $e4
    ld [$e57f], a
    sub d
    db $e4
    dec c
    ld a, a
    sub d
    adc a
    db $e3
    sub d
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    ld a, a
    sbc a
    sub e
    push hl
    ld sp, hl
    db $e4
    ld a, a
    ld [$e6fd], a
    db $fd
    ld [$7f0d], a
    sub l
    rst RST_28
    sub h
    sbc h
    sub [hl]
    sub d
    push hl
    sub d
    adc d
    rst RST_18
    inc c
    sbc $95
    rst RST_28
    sub h
    and $ea
    ld a, a
    ld c, [hl]
    cp l
    ld a, [de]
    ei
    sbc h
    jp hl


    ld a, a
    ldh [c], a
    ldh a, [$ffb0]
    dec c
    ld a, a
    sub a
    db $e3
    di
    rst RST_30
    sub e
    ld e, $8a
    inc c
    ld a, a
    ld c, [hl]
    cp l
    db $e4
    ld a, a
    cp l
    call nz, Call_000_3ca4
    and h
    or b
    ld a, a
    sbc d
    ei
    sbc h
    db $e3
    dec c
    ld a, a
    inc e
    sbc e
    ldh [c], a
    sbc h
    ldh [$ffa5], a
    and l
    and l
    db $e4
    ld a, a
    sbc c
    sub d
    sbc e
    ldh [c], a
    and $ea
    dec c
    ld a, a
    ldh [c], a
    ldh [$ff94], a
    db $e3
    sub l
    sbc d
    sub e
    and l
    and l
    and l
    and c
    inc c
    ld a, a
    call z, $caca
    jp z, $a5ca

    and l
    and l
    and c
    dec c
    ld a, a
    sbc h
    add sp, -$71
    adc d
    adc d
    adc d
    rst RST_18
    rst RST_38
    ld [$91ea], a
    db $fd
    and l
    and l
    and l
    and c
    inc c
    ld [de], a
    scf
    push bc
    jp hl


    ld a, a
    sub a
    ei
    sbc b
    pop hl
    adc [hl]
    sub e
    ld [$cf0d], a
    db $db
    db $dd
    or b
    ld a, a
    ld a, [de]
    rst RST_28
    sub [hl]
    sbc l
    ldh [$fff2], a
    and $7f
    cp h
    and h
    add hl, sp
    reti


    ld d, $e2
    sbc b
    adc a
    ldh [$ff7f], a
    and $9e
    di
    jp hl


    ld h, b
    push hl
    adc d
    inc c
    ld c, [hl]
    db $dd
    ld b, h
    or e
    xor d
    reti


    ld d, $7f
    cp h
    and h
    add hl, sp
    reti


    jp hl


    dec c
    db $e4
    sbc d
    ei
    sub [hl]
    rst RST_30
    ld a, a
    rst RST_20
    sbc l
    ldh a, [$ff60]
    sbc h
    ldh [$fff3], a
    jp hl


    and $0d
    pop hl
    ld d, $92
    push hl
    sub d
    adc d
    rst RST_38
    sbc $c1
    xor a
    ld e, h
    ld [$817f], a
    rst RST_28
    sub d
    ld a, a
    add l
    ld b, h
    reti


    ld h, e
    sbc l
    and c
    dec c
    ld a, a
    push hl
    db $fd
    rst RST_28
    sub d
    jp hl


    ld a, a
    pop bc
    xor a
    ld e, h
    and $0d
    ld a, a
    sbc d
    sub e
    sub [hl]
    db $fd
    sbc h
    rst RST_28
    sbc l
    sub [hl]
    adc e
    rst RST_18
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc b
    jp Jump_018_7fc5


    rst RST_28
    sub d
    rrca
    sbc $c1
    xor a
    ld e, h
    ld [$817f], a
    rst RST_28
    sub d
    ld a, a
    add l
    ld b, h
    reti


    ld h, e
    sbc l
    and c
    dec c
    ld a, a
    push hl
    db $fd
    rst RST_28
    sub d
    or b
    ld a, a
    sub l
    sub [hl]
    add sp, -$1a
    dec c
    ld a, a
    sbc d
    sub e
    sub [hl]
    db $fd
    sbc h
    rst RST_28
    sbc l
    sub [hl]
    adc e
    rst RST_18
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc b
    jp Jump_018_7fc5


    rst RST_28
    sub d
    rrca
    sbc $1a
    sub e
    sbc c
    sub d
    ld a, a
    inc b
    and a
    ret z

    ld b, h
    reti


    and $0d
    ld a, a
    push hl
    ld hl, sp-$11
    sbc l
    and c
    dec c
    ld a, a
    sub c
    ld hl, sp+$16
    db $e4
    sub e
    ld a, [de]
    dec de
    sub d
    rst RST_28
    sbc h
    ldh [$ffa1], a
    rst RST_18
    rst RST_38
    sbc $e5
    and $16
    ld a, a
    xor $9c
    sub d
    db $fd
    ld h, b
    sub d
    adc e
    rst RST_18
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld h, e
    db $fd
    pop hl
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld e, e
    cp l
    call nz, $e9d9
    ldh [$ffef], a
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub d
    rst RST_30
    push hl
    sub d
    rrca
    sbc $ef
    sub d
    ld h, h
    sub c
    ld hl, sp-$76
    dec c
    ld a, a
    xor $96
    and $7f
    push hl
    and $96
    ld a, a
    xor $9c
    sub d
    sub [hl]
    sub d
    adc e
    rst RST_18
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [$927f], a
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub d
    sub d
    sub h
    rrca
    ld [de], a
    scf
    push bc
    ld [$917f], a
    sub [hl]
    push hl
    sub d
    and c
    rst RST_38
    and l
    and l
    and l
    dec a
    ld b, e
    db $dd
    adc d
    adc d
    adc d
    inc c
    sbc d
    ei
    db $fd
    ld h, b
    db $eb
    adc [hl]
    sub e
    sbc h
    and $7f
    sub c
    ldh [$ffef], a
    or b
    ld a, a
    push af
    sub [hl]
    and $95
    di
    sub d
    adc a
    sub a
    ld hl, sp+$7f
    sub e
    pop hl
    ldh [c], a
    sbc c
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    inc c
    sub e
    pop hl
    ld h, h
    sbc d
    ei
    ld d, $7f
    db $fc
    ld sp, hl
    sub [hl]
    adc a
    ldh [$fff7], a
    sbc h
    sub d
    and c
    inc c
    sub l
    ld a, [$7fea]
    and $64
    db $e4
    ld a, a
    ldh a, [c]
    dec de
    ldh a, [c]
    ld sp, hl
    sbc d
    db $e4
    ld [$e50d], a
    sub [hl]
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    ldh [$ff60], a
    ld h, e
    ld a, a
    ld c, h
    rst RST_10
    xor a
    cp b
    inc a
    xor h
    xor a
    cp b
    ld d, $0d
    ld h, e
    sub a
    push hl
    sub d
    sub [hl]
    ld a, a
    ld [de], a
    scf
    push bc
    and $0d
    ldh [$ffe9], a
    ldh a, [$ff9a]
    db $fd
    ld h, b
    and c
    inc c
    sbc l
    ld sp, hl
    db $e4
    ld a, a
    ld [de], a
    scf
    push bc
    ld [$927f], a
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc $97
    sbc a
    sbc b
    and $f6
    ld hl, sp+$7f
    sbc a
    sub e
    sub d
    sub e
    sbc d
    db $e4
    ld [$7f0d], a
    ld h, e
    sub a
    rst RST_28
    sbc [hl]
    db $fd
    ld d, $7f
    ld h, h
    sub e
    sbc h
    db $e3
    di
    db $e4
    dec c
    ld a, a
    sub d
    sub e
    push hl
    rst RST_30
    ld a, a
    sbc e
    ld l, d
    sbc b
    and $7f
    sub d
    adc a
    db $e3
    ldh a, [$ffe3]
    ld [$7f0d], a
    ld h, h
    sub e
    ld h, e
    sbc h
    adc [hl]
    sub e
    sub [hl]
    adc e
    inc c
    ld a, a
    sbc e
    ld l, d
    sbc b
    ld h, e
    ld a, a
    db $eb
    ei
    adc a
    ldh [$ff7f], a
    sub l
    sub [hl]
    add sp, -$50
    dec c
    ld a, a
    di
    db $e4
    ld h, e
    and $9c
    db $e3
    ld a, a
    sbc d
    sbc d
    ld h, e
    dec c
    ld a, a
    sub l
    sub l
    di
    sub e
    sbc c
    sbc h
    ldh [$ff7f], a
    db $eb
    db $e4
    ld d, $0d
    ld a, a
    sub d
    ld sp, hl
    sbc a
    sub e
    ld h, e
    sbc l
    or $a1
    rst RST_18
    rst RST_38
    sbc $9f
    db $fd
    push hl
    ld a, a
    sbc d
    db $e4
    or b
    sbc h
    db $e3
    ld a, a
    di
    sbc h
    dec c
    ld a, a
    or l
    and h
    push bc
    and h
    and $7f
    sbc h
    ld a, [$f7e0]
    dec c
    ld a, a
    sub l
    ld a, [$7fea]
    sbc d
    ei
    sbc e
    ld a, [$9ce3]
    rst RST_28
    sub e
    and l
    and l
    and l
    and c
    inc c
    ld a, a
    sub [hl]
    db $fc
    ld hl, sp-$1a
    ld a, a
    sbc e
    ld l, d
    sbc b
    and $0d
    ld a, a
    sub d
    adc a
    db $e3
    ldh a, [$fff9]
    db $e4
    sub d
    sub d
    and l
    and l
    and l
    and c
    inc c
    ld a, a
    rst RST_08
    call z, $b1a8
    and $7f
    sbc d
    ei
    sbc e
    ld a, [$f4e0]
    ldh [c], a
    jp hl


    dec c
    ld a, a
    di
    pop hl
    di
    jp hl


    ld d, $7f
    sub l
    pop hl
    db $e3
    sub d
    ld sp, hl
    rst RST_30
    sbc h
    sub d
    ld e, $a1
    inc c
    ld a, a
    sub e
    db $fd
    ld d, $f6
    sbc c
    ld a, [$7f6a]
    sub [hl]
    add sp, $16
    dec c
    ld a, a
    sub l
    pop hl
    db $e3
    sub d
    ld sp, hl
    sub [hl]
    di
    push hl
    adc d
    rst RST_18
    rst RST_38
    sub [hl]
    ld e, $e6
    ld a, a
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    ld a, a
    add c
    add b
    ld b, h
    reti


    sbc e
    ldh [c], a
    or b
    dec c
    ldh a, [$ffe2]
    sbc c
    ldh [$ffa1], a
    inc c
    add c
    add b
    ld b, h
    reti


    or b
    ld a, a
    db $e3
    and $92
    ld a, [$a1e0]
    rst RST_38
    sbc $9a
    jp hl


    ld a, a
    ld a, [$9c8f]
    adc h
    ld [$7f0d], a
    ld [de], a
    scf
    push bc
    sub d
    sub a
    ld h, e
    sbc l
    and c
    rst RST_18
    dec c
    db $e4
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    inc e
    pop af
    sub d
    db $fd
    ld [$927f], a
    adc a
    ldh [$ffa1], a
    inc c
    sbc $9a
    ld a, [$7fea]
    sbc h
    ldh [$ff92], a
    jp hl


    ld a, a
    di
    pop hl
    di
    jp hl


    ld h, b
    adc d
    dec c
    ld a, a
    sbc c
    sub d
    sub [hl]
    db $fd
    sub d
    ld d, $92
    ld [$9b7f], a
    db $fc
    adc a
    db $e3
    ld [$7f0d], a
    sub d
    sbc c
    push hl
    sub d
    adc d
    rst RST_18
    rst RST_38
    sub c
    sub c
    and l
    and l
    and l
    and c
    dec c
    xor $96
    and $f3
    ld a, a
    db $f4
    rst RST_30
    push hl
    sbc c
    ld a, [$7f6a]
    sub d
    sbc c
    push hl
    sub d
    dec c
    sbc d
    db $e4
    ld d, $7f
    sub c
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    and l
    and l
    and l
    and c
    rst RST_38
    sub c
    sub c
    and l
    and l
    and l
    and c
    dec c
    dec de
    db $fd
    add sp, -$03
    push hl
    ld d, $f7
    dec c
    and $19
    sub l
    sbc b
    ld a, [$f6e0]
    sub e
    ld h, b
    and l
    and l
    and l
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    ld [$e57f], a
    and $f3
    dec c
    ldh [c], a
    sbc c
    db $e3
    sub d
    push hl
    sub d
    and c
    rst RST_38
    inc e
    adc [hl]
    sub e
    ld [$9cfd], a
    db $fd
    ld [$127f], a
    scf
    push bc
    or b
    dec c
    sub a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sbc $fc
    ldh [$ff9c], a
    db $e4
    ld a, a
    sbc h
    adc [hl]
    sub e
    ld l, h
    sbc h
    ldh [$ff92], a
    db $e4
    sub a
    ld [$7f0d], a
    pop bc
    xor a
    ld e, h
    or b
    ld a, a
    ldh [c], a
    sub [hl]
    adc a
    db $e3
    sbc b
    ld h, b
    sbc e
    sub d
    adc d
    inc c
    ld a, a
    pop bc
    xor a
    ld e, h
    ld [$f87f], a
    adc [hl]
    sub e
    ld d, $94
    sbc h
    adc [hl]
    ld h, e
    dec c
    ld a, a
    sub l
    sub [hl]
    add sp, -$1c
    ld a, a
    sbc d
    sub e
    sub [hl]
    db $fd
    sbc h
    rst RST_28
    sbc l
    and c
    rst RST_18
    rst RST_38
    ld h, e
    db $fd
    db $e4
    sub e
    or b
    ld a, a
    db $e4
    rst RST_30
    push hl
    sbc c
    ld a, [$7f6a]
    ld h, e
    sub a
    push hl
    sub d
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    ld [$927f], a
    adc a
    ldh [$ffa1], a
    inc c
    sbc $4c
    rst RST_10
    xor a
    cp b
    inc a
    xor h
    xor a
    cp b
    jp hl


    ld a, a
    reti


    and h
    reti


    ld [$7f0d], a
    sbc h
    adc a
    db $e3
    sub d
    rst RST_28
    sbc l
    sub [hl]
    adc e
    rst RST_18
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [$927f], a
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub d
    sub d
    sub h
    rrca
    sbc l
    push hl
    jp hl


    ld a, a
    sub e
    sub h
    and $7f
    ret nz

    or d
    call nc, Call_000_0de9
    sub c
    db $e4
    ld d, $7f
    ldh [c], a
    ld h, d
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    reti


    and h
    ld b, e
    xor b
    and h
    ld [$9a7f], a
    rst RST_28
    adc a
    ldh [$fff6], a
    sub e
    and $0d
    sbc e
    sbc e
    db $f4
    sub d
    ldh [$ffa1], a
    inc c
    sbc $a5
    and l
    and l
    or h
    and h
    cp l
    and c
    dec c
    ld a, a
    ld c, [hl]
    cp l
    ld d, $7f
    sbc e
    adc a
    sub a
    sub [hl]
    rst RST_30
    ld a, a
    sbc d
    adc a
    pop hl
    or b
    dec c
    ld a, a
    and $f7
    db $fd
    ld h, e
    sub d
    ld sp, hl
    db $fd
    ld h, b
    and c
    inc c
    ld a, a
    db $eb
    adc [hl]
    adc a
    db $e4
    sbc h
    db $e3
    ld a, a
    ld c, [hl]
    cp l
    and $0d
    ld a, a
    sub [hl]
    db $fd
    ld h, d
    sub [hl]
    ld a, [$96e0]
    push hl
    adc e
    inc c
    ld a, a
    ld h, h
    sub e
    db $f4
    rst RST_30
    ld a, a
    sbc d
    ld a, [$1c92]
    adc [hl]
    sub e
    dec c
    ld a, a
    sub l
    rst RST_28
    sub h
    and $7f
    sub [hl]
    ldh [$ff9e], a
    ld sp, hl
    db $fc
    sbc c
    and $ea
    dec c
    ld a, a
    sub d
    sub [hl]
    push hl
    sub d
    or $93
    ld h, b
    and l
    and l
    and l
    and c
    rst RST_18
    rst RST_38
    sub d
    ldh [rNR21], a
    ld a, a
    sub e
    pop hl
    ldh [c], a
    sbc c
    rst RST_30
    ld a, [$0de3]
    sub d
    ld sp, hl
    ldh [$fff2], a
    and $7f
    ld [$fa92], a
    push hl
    sub d
    and c
    inc c
    sub d
    ldh [$ff9b], a
    sub h
    push hl
    sbc c

jr_018_4cfb:
    ld a, [$a56a]
    and l
    and l
    and c
    rst RST_38
    rst RST_38
    ld b, h
    reti


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp d
    or d
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld h, e
    db $fd
    pop hl
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    pop bc
    xor a
    ld e, h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    or l
    reti


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or [hl]
    scf
    add c
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    add d
    rst RST_38
    rst RST_38
    rst RST_38
    add d
    add l
    cp [hl]
    db $dd
    call nz, $ffff
    rst RST_38
    add c
    add b
    ld b, h
    reti


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    add c
    ld b, h
    reti


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    add c
    ld b, h
    reti


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh a, [c]
    db $fd
    sub a
    adc [hl]
    sbc h
    adc [hl]
    sub e
    add c
    ret nz

    ld c, d
    cp d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp h
    ld [hl], $a4
    ret c

    db $dd
    jr c, jr_018_4cfb

    rst RST_38
    rst RST_08
    cp b
    rst RST_10
    add c
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub [hl]
    ldh a, [$ff97]

jr_018_4d86:
    ld a, [$ff81]
    rst RST_38
    rst RST_38
    inc e
    sbc d
    sbc b
    db $eb
    adc [hl]
    sub e
    rst RST_38
    rst RST_38
    ld [$93e1], a
    sub h
    add c
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [c], a
    ld l, [hl]
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld [$1b92], a
    rst RST_30
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld [$93e1], a
    sub h
    add d
    rst RST_38
    rst RST_38
    rst RST_38
    ld [$93e1], a
    sub h
    add e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_08
    jr c, jr_018_4d86

    xor a
    call nz, $c04e
    db $dd
    sbc h
    adc h
    sbc h
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    db $e3
    ld d, $f0
    add c
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld e, d
    db $dd
    call z, $afda
    call nz, $ffff
    sbc h
    db $fd
    ld l, h
    db $fd
    add e
    rst RST_38
    rst RST_38
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    add h
    rst RST_38
    rst RST_38
    rst RST_38
    db $e3
    ld d, $f0
    add d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld c, e
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld h, e
    db $fd
    sub a
    cp l
    ret nz

    db $dd
    ld b, h
    rst RST_38
    add c
    add b
    ld b, h
    reti


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    add d
    add l
    cp [hl]
    db $dd
    call nz, $ffff
    rst RST_38
    add d
    add l
    cp [hl]
    db $dd
    call nz, $ffff
    rst RST_38
    ld h, e
    db $fd
    pop hl
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    push bc
    or d
    call z, $ffff
    rst RST_38
    rst RST_38
    rst RST_38
    or [hl]
    scf
    add d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub c
    sub a
    sub [hl]
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or [hl]
    scf
    add e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, l
    or a
    db $dd
    ld b, b
    xor a
    cp b
    rst RST_38
    rst RST_38
    and $8f
    sub a
    pop hl
    adc [hl]
    sub e
    rst RST_38
    rst RST_38
    ldh a, [c]
    sub d
    sbc h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub h
    db $fd
    ld a, e
    ldh [c], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or [hl]
    scf
    add h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    jp $afa8


    cp h
    xor l
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_08
    cp b
    rst RST_10
    add d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc d
    sub e
    sbc l
    sub d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    add l
    rst RST_38
    rst RST_38
    rst RST_38
    ld b, h
    jp c, $ffbd

    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or $1a
    ld a, [$e9f3]
    add c
    rst RST_38
    rst RST_38
    db $e3
    ld d, $f0
    add e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc [hl]
    sub d
    db $ec
    sbc b
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld h, e
    db $fd
    ld a, e

jr_018_4ede:
    adc [hl]
    sub e
    rst RST_38
    rst RST_38
    rst RST_38
    or [hl]
    scf
    add l
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    add c
    add b
    ld b, h
    reti


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh a, [c]
    db $fd
    sub a
    adc [hl]
    sbc h
    adc [hl]
    sub e
    add d
    sub c
    dec e
    sub [hl]
    ld hl, sp-$64
    adc [hl]
    sub e
    rst RST_38
    sbc [hl]
    db $fd
    dec de
    sub d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or [hl]
    scf
    add [hl]
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_08
    jr c, jr_018_4ede

    xor a
    call nz, $c04e
    db $dd
    sbc h
    adc h
    sbc h
    db $fd
    ldh [$ffe3], a
    rst RST_38
    rst RST_38
    sub a
    ei
    sbc b
    pop hl
    adc [hl]
    sub e
    add c
    rst RST_38
    ld l, [hl]
    sub e
    sbc h
    sub [hl]
    sbc c
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, l
    and h
    ld e, d
    and h
    or e
    or h
    or d
    call nz, $c1ca
    ld b, h
    ret c

    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld h, b
    sub d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, l
    and h
    ld e, d
    and h
    push bc
    or d
    call z, $bbff
    db $dd
    ld b, h
    or e
    xor b
    xor a
    pop bc
    rst RST_38
    ld b, e
    cp l
    cp b
    rst RST_08
    xor a
    call nz, $ffff
    sbc h

jr_018_4f64:
    adc h
    sbc h
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    db $e3
    ld d, $f0
    add c
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub [hl]
    ldh a, [$ff97]
    ld a, [$ff82]
    rst RST_38
    rst RST_38
    ld c, d
    push bc
    push bc
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub a
    ei
    sbc b
    pop hl
    adc [hl]
    sub e
    add d
    rst RST_38
    push hl
    db $ec
    ld h, b
    add c
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    push hl
    db $ec
    ld h, b
    add d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld c, d
    push bc
    push bc
    jp hl


    sub [hl]
    db $fc
    rst RST_38
    rst RST_38
    cp d
    or d
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp h
    ld [hl], $a4
    ret c

    db $dd
    jr c, jr_018_4f64

    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    db $eb
    ldh a, [$ffe2]
    jp hl


    or l
    call z, $bda8
    adc $c3
    reti


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp h
    and h
    add hl, sp
    reti


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    jp hl


    ld a, a
    sub a
    ei
    sbc b
    pop hl
    adc [hl]
    sub e
    jp hl


    ld a, a
    and $8f
    sub a
    pop hl
    adc [hl]
    sub e
    sub c
    ld sp, hl
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    push hl
    sub d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    xor $fd
    di
    jp hl


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    call nz, $ddda
    pop bc
    cp d
    and h
    call nz, Call_000_3dff
    ld c, [hl]
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc e
    sub d
    db $ec
    add c
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    add c
    rst RST_38
    rst RST_38
    rst RST_38
    cp l
    and h
    jp nz, $a4b9

    cp l
    rst RST_38
    rst RST_38
    or $1a
    ld a, [$e9f3]
    add d
    rst RST_38
    rst RST_38
    db $ec
    sub e
    db $e4
    sub e
    add c
    rst RST_38
    rst RST_38
    rst RST_38
    db $ec
    sub e
    db $e4
    sub e
    add d
    rst RST_38
    rst RST_38
    rst RST_38
    cp d
    and h
    call nz, $ffff
    rst RST_38
    rst RST_38
    rst RST_38
    ld e, e
    cp l
    call nz, $ffd9
    rst RST_38
    rst RST_38
    rst RST_38
    ld h, e
    db $fd
    db $e4
    sub e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    db $eb
    sub a
    ld h, b
    sbc h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld [$819a], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_10
    db $dd
    pop bc
    ld c, [hl]
    xor a
    cp b
    cp l
    rst RST_38
    ld h, b
    db $fd
    ld c, [hl]
    and h
    reti


    ld l, d
    sbc d
    rst RST_38
    ld h, b
    db $fd
    ld c, [hl]
    and h
    reti


    ld l, d
    sbc d
    rst RST_38
    sbc a
    sub e
    inc e
    sub a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    db $ec
    sbc b
    ei
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    db $ec
    sub e
    db $e4
    sub e
    add e
    rst RST_38
    rst RST_38
    rst RST_38
    ld [$829a], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc e
    sub d
    db $ec
    add d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc [hl]
    db $fd
    dec de
    sub d
    jp hl


    ld [$ff9a], a
    ld [$839a], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub [hl]
    ldh a, [$ff6c]
    sbc b
    ei
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    db $dd
    cp l
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    push bc
    or d
    call nz, $a4c3
    ld c, h
    reti


    rst RST_38
    jp nc, $d9b2

    ld c, [hl]
    xor a
    cp b
    cp l
    rst RST_38
    cp l
    db $db
    xor a
    call nz, $bccf
    db $dd
    add c
    cp l
    db $db
    xor a
    call nz, $bccf
    db $dd
    add d
    ldh [c], a
    sbc b
    sub h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub a
    db $fd
    sbc d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld h, e
    db $fd
    db $fc
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    push bc
    or d
    call nz, $a4c3
    ld c, h
    reti


    rst RST_38
    ret nz

    db $dd
    cp l
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [c], a
    sbc b
    sub h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [c], a
    sbc b
    sub h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [c], a
    sbc b
    sub h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc [hl]
    db $fd
    ldh [$ff98], a
    sub a
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, [hl-]
    ret nc

    ld l, d
    sbc d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, [hl-]
    ret nc

    ld l, d
    sbc d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [c], a
    sbc b
    sub h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
    rst RST_38
    rst RST_38
    rst RST_38
    cp h
    or [hl]
    ld a, [hl-]
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    add $ad
    and h
    sub $a4
    cp b
    rst RST_38
    rst RST_38
    db $db
    cp e
    db $dd
    ld a, $d9
    cp l
    rst RST_38
    rst RST_38
    cp [hl]
    db $dd
    call nz, $b2d9
    cp l
    rst RST_38
    rst RST_38
    ld [hl], $d7
    cp l
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or [hl]
    ld [hl], $d0
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or [hl]
    scf
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld b, h
    or c
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub c
    sub [hl]
    sub d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub c
    sub l
    sub d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    db $ec
    ei
    sub e
    sbc h
    adc h
    rst RST_38
    rst RST_38
    rst RST_38
    inc e
    pop af
    sub d
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub l
    db $e4
    sbc d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub l
    db $fd
    push hl
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ei
    sub e
    ld l, d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ei
    sub e
    inc e
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub d
    rst RST_20
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld l, [hl]
    sub e
    ld h, b
    db $fd
    ld [hl], $d7
    cp l
    rst RST_38
    db $ec
    ldh [rIE], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    db $eb
    or $99
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld b, e
    xor b
    and h
    rst RST_10
    and h
    rst RST_38
    rst RST_38
    rst RST_38
    reti


    and h
    ld b, e
    xor b
    and h
    rst RST_38
    rst RST_38
    rst RST_38
    di
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp h
    or [hl]
    ld a, [hl-]
    sub h
    sub a
    rst RST_38
    rst RST_38
    rst RST_38
    or c
    ld b, e
    xor b
    cp a
    db $dd
    ld h, h
    sub l
    ld hl, sp+$7d
    or l
    ret c

    or c
    ld h, h
    sub l
    ld hl, sp-$01
    cp d
    jp Jump_000_3ca4


    ld d, $92
    rst RST_38
    rst RST_38
    sbc h
    ldh [$ff92], a
    sub l
    sub a
    ld l, d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or c
    ld b, h
    jp c, $ffbd

    rst RST_38
    rst RST_38
    rst RST_38
    di
    pop hl
    di
    jp hl


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38

jr_018_537b:
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or [hl]

jr_018_5384:
    or e
    db $dd
    ret nz

    and h
    rst RST_38
    rst RST_38
    rst RST_38
    call c, $ddb2
    jp hl


    ld a, a

jr_018_5390:
    ldh [$ffe5], a
    rst RST_38
    ldh a, [rNR22]
    jp hl


    inc e
    adc h
    jr jr_018_537b

    rst RST_38
    db $eb
    ld h, b
    ld hl, sp-$17
    inc e
    adc h
    jr jr_018_5384

    or [hl]
    and h
    jp $ffdd


    rst RST_38
    rst RST_38
    rst RST_38
    inc e
    adc h
    jr jr_018_5390

    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp h
    xor h
    xor a
    ret nz

    and h
    rst RST_38
    rst RST_38
    rst RST_38
    sbc [hl]
    db $fd
    ldh [$ff98], a
    sub a
    rst RST_38
    rst RST_38
    rst RST_38
    db $fc
    ld a, [$4be0]
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    sbc h
    adc h
    sbc h
    adc [hl]
    sub e
    rst RST_38
    rst RST_38
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    rst RST_38
    rst RST_38
    inc e
    adc [hl]
    sub e
    ld [$9cfd], a
    db $fd
    rst RST_38
    sub [hl]
    ld [$9cfd], a
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, a
    ld a, a
    ld a, a
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp h
    or [hl]
    ld a, [hl-]
    ld a, a
    ld a, a
    add $ad
    and h
    sub $a4
    cp b
    ld a, a
    ld a, a
    db $db
    cp e
    db $dd
    ld a, $d9
    cp l
    ld a, a
    ld a, a
    cp [hl]
    db $dd
    call nz, $b2d9
    cp l
    ld a, a
    ld a, a
    ldh a, [$ffe4]
    sub e
    pop hl
    adc h
    sbc b
    ld a, a
    ld a, a
    ld a, a
    db $e4
    sub e
    pop hl
    adc h
    sbc b
    inc e
    adc [hl]
    sub e
    sbc h
    adc h
    sub [hl]
    jp hl


    sub e
    ld [$9c8f], a
    adc h
    inc e
    adc l
    db $fd
    ld l, e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [$9c8f], a
    adc h
    adc $a4
    pop de
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub d
    sub a
    sbc e
    sub a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    inc e
    adc [hl]
    sub e
    ldh [$ff92], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_018_7fc5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
