; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    nop
    ld b, c
    ld a, [bc]
    ld b, c
    ld c, b
    ld b, c
    adc e
    ld b, c
    and d
    ld b, c
    or e
    ld b, c
    ret


    ld b, c
    add sp, $41
    ld b, $42
    jr nz, jr_015_4056

    ld [hl], $42
    ld d, [hl]
    ld b, d
    adc e
    ld b, d
    ld [$0042], a
    ld b, e
    rrca
    ld b, e
    ld hl, $5a43
    ld b, e
    ld a, e
    ld b, e
    or b
    ld b, e
    cp l
    ld b, e
    ldh [c], a
    ld b, e
    ld hl, sp+$43
    dec h
    ld b, h
    jr c, @+$46

    ld c, d
    ld b, h
    ld [hl], a
    ld b, h
    ld a, a
    ld b, h
    sub [hl]
    ld b, h
    and h
    ld b, h
    cp [hl]
    ld b, h
    rst RST_08
    ld b, h
    db $ed
    ld b, h
    ld e, $45
    ld d, a
    ld b, l
    ld l, [hl]
    ld b, l
    adc d
    ld b, l
    and c
    ld b, l
    or c
    ld b, l
    cp l
    ld b, l
    ret z

    ld b, l
    jp nc, $e945

    ld b, l

jr_015_4056:
    ld d, $46
    jr c, jr_015_40a0

    ld d, b
    ld b, [hl]
    ld l, b
    ld b, [hl]
    ld b, $47
    add hl, de
    ld b, a
    dec hl
    ld b, a
    ld c, l
    ld b, a
    ld h, b
    ld b, a
    ld [hl], h
    ld b, a
    cp l
    ld b, a
    rst RST_10
    ld b, a
    ld c, $48
    ld d, c
    ld c, b
    add b
    ld c, b
    jp nc, $fb48

    ld c, b
    ld [$2749], sp
    ld c, c
    pop de
    ld c, c
    pop hl
    ld c, c
    ld b, h
    ld c, d
    ld [hl], e
    ld c, d
    add d
    ld c, d
    adc l
    ld c, d
    sbc e
    ld c, d
    or d
    ld c, d
    call $df4a
    ld c, d
    sub e
    ld c, e
    or e
    ld c, e
    jp nc, $f24b

    ld c, e
    ld c, b
    ld c, h
    cp l
    ld c, h
    call $954c
    ld c, l

jr_015_40a0:
    and h
    ld c, l
    cp d
    ld c, l
    add b
    ld c, [hl]
    xor l
    ld c, [hl]
    ldh [$ff4e], a
    db $10
    ld c, a
    ld hl, $374f
    ld c, a
    ld c, b
    ld c, a
    cpl
    ld d, b
    ld e, e
    ld d, b
    add c
    ld d, b
    or e
    ld d, b
    ret nc

    ld d, b
    rlca
    ld d, c
    ld [hl+], a
    ld d, c
    ld e, c
    ld d, c
    ld [hl], e
    ld d, c
    adc b
    ld d, c
    and d
    ld d, c
    or e
    ld d, c
    push bc
    ld d, c
    rst RST_10
    ld d, c
    ldh a, [c]
    ld d, c
    add d
    ld d, d
    xor d
    ld d, d
    db $e3
    ld d, d
    inc bc
    ld d, e
    sub c
    ld d, h
    sbc [hl]
    ld d, h
    xor a
    ld d, h
    pop de
    ld d, h
    rst RST_18
    ld d, h
    inc b
    ld d, l
    add hl, de
    ld d, l
    ld [hl-], a
    ld d, l
    ld b, e
    ld d, l
    ld h, b
    ld d, l
    add e
    ld d, l
    adc l
    ld d, l
    or b
    ld d, l
    jp c, $e955

    ld d, l
    ld a, [$0c55]
    ld d, [hl]
    ld l, $56
    ld d, c
    ld d, [hl]
    ld [hl], c

jr_015_40ff:
    ld d, [hl]
    ld c, [hl]
    ret nz

    db $dd
    or b
    ld a, a
    sub l
    sbc h
    ldh [$ffa1], a
    rst RST_38
    db $e4
    adc a
    sbc e
    and $7f
    and $19
    ld h, b
    sbc h
    ldh [rNR21], a
    ld a, a
    sbc l
    jr jr_015_40ff

    dec c
    ldh [c], a
    sub [hl]
    rst RST_28
    adc a
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    db $fc
    ld sp, hl
    db $ec
    dec de
    sbc c
    sbc h
    db $e3
    ld a, a
    ld h, h
    sbc b
    sbc h
    adc [hl]
    jp hl


    ld a, a
    inc e
    adc h
    rst RST_28
    or b
    sbc l
    ld sp, hl
    ld l, l
    sub a
    ld h, e
    ld [$e57f], a
    sub [hl]
    adc a
    ldh [$ffe5], a
    and c
    rst RST_38
    ld h, b
    ld a, [$1696]
    and l
    and l
    and l
    sub d
    ld sp, hl
    adc d
    inc c
    sub l
    ld a, [$7fea]
    sbc a
    sub e
    ld a, a
    sub [hl]
    db $fd
    inc e
    db $e3
    ld a, a
    or [hl]
    and h
    jp $b0dd


    dec c
    ld e, d
    xor a
    db $e4
    ld a, a
    sub c
    sbc c
    ldh [$ffa1], a
    inc c
    ld h, b
    ld d, $7f
    ld h, b
    ld a, [$7ff3]
    sub d
    push hl
    sub d
    and l
    and l
    and l
    and c
    dec c
    sub l
    ld a, [$7fea]
    ldh [c], a
    sub [hl]
    ld a, [$92e3]
    ld sp, hl
    jp hl


    sub [hl]
    adc e
    rst RST_38
    sub [hl]
    sub d
    pop hl
    adc l
    sub e
    ld h, e
    db $fd
    db $e4
    sub e
    jp hl


    ld a, a
    ld h, e
    db $fd
    pop hl
    or b
    dec c
    sub d
    ld a, [$9496]
    ldh [$ffa1], a
    rst RST_38
    ld h, e
    db $fd
    pop hl
    ld [$9d7f], a
    ld h, e
    and $7f
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sub [hl]
    sub d
    pop hl
    adc l
    sub e
    ld h, e
    db $fd
    db $e4
    sub e
    jp hl


    ld a, a
    cp l
    or d
    xor a
    pop bc
    or b
    dec c
    sub d
    ld a, [$a1e0]
    rst RST_38
    sub [hl]
    sub d
    pop hl
    adc l
    sub e
    ld h, e
    db $fd
    db $e4
    sub e
    jp hl


    ld a, a
    sub c
    sub [hl]
    ld hl, sp+$16
    dec c
    ldh a, [c]
    ld h, b
    adc a
    db $e3
    ld a, a
    sub e
    sbc l
    sbc b
    push hl
    adc a
    db $e3
    sub a
    ldh [$ffa1], a
    rst RST_38
    sbc $99
    sub d
    sbc e
    ldh [c], a
    rst RST_18
    db $e4
    ld a, a
    sub l
    sub l
    sub a
    push hl
    ld a, a
    di
    inc e
    ld h, e
    dec c
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    ld a, a
    sub [hl]
    db $fd
    ld l, d
    db $fd
    ld h, b
    and c
    rst RST_38
    db $e4
    ldh [c], a
    ld e, $fd
    ld a, a
    sub [hl]
    sub d
    pop hl
    adc l
    sub e
    ld h, e
    db $fd
    db $e4
    sub e
    jp hl


    dec c
    sub c
    sub [hl]
    ld hl, sp+$16
    ld a, a
    sub a
    sub h
    ldh [$ffa1], a

jr_015_421f:
    rst RST_38
    sub [hl]
    sub d
    pop hl
    adc l
    sub e
    ld h, e
    db $fd
    db $e4
    sub e
    jp hl


    ld a, a
    cp l
    or d
    xor a
    pop bc
    or b
    dec c
    sub a
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc l
    jr jr_015_421f

    ld a, a
    sbc c
    sub d
    sub [hl]
    db $fd
    ld d, $7f
    db $f4
    adc a
    db $e3
    sub a
    ldh [$ffa1], a
    dec c
    ld [$98f4], a
    ld a, a
    and $19
    push hl
    sbc c
    ld a, [$a56a]
    and l
    and l
    adc d
    rst RST_38
    sub [hl]
    sub d
    pop hl
    adc l
    sub e
    ld h, e
    db $fd
    db $e4
    sub e
    jp hl


    ld a, a
    cp l
    or d
    xor a
    pop bc
    or b
    dec c
    sub d
    ld a, [$a1e0]
    inc c
    ld h, b
    ld d, $7f
    sub c
    sub [hl]
    ld sp, hl
    sbc b
    push hl
    rst RST_30
    push hl
    sub d
    and c
    dec c
    ld h, e
    db $fd
    pop hl
    ld d, $7f
    sub a
    ld a, [$92e3]
    ld sp, hl
    or $93
    ld h, b
    and l
    and l
    and l
    and c
    rst RST_38
    sbc d
    jp hl


    ld a, a
    db $e3
    ld d, $f0
    and $91
    ld sp, hl
    ld a, a
    sub [hl]
    add sp, -$17
    ld a, a
    sub e
    ld a, [de]
    sub a
    or b
    sub a
    ei
    sbc b
    sbc h
    ldh [$ff7f], a
    pop hl
    adc [hl]
    sub e
    ld l, [hl]
    ld d, $7f
    ld h, h
    sbc d
    sub [hl]
    and $0d
    sub c
    ld sp, hl
    ld [$601d], a
    ld d, $a5
    and l
    and l
    and c
    inc c
    sbc a
    ld a, [$7fb0]
    sbc h
    rst RST_30
    ld l, l
    db $e3
    ldh a, [$fffa]
    ld l, d
    ld a, a
    di
    sbc h
    sub [hl]
    sbc h
    db $e3
    dec c
    add c
    add c
    add d
    add b
    add b
    add b
    ld b, h
    reti


    jp hl


    ld a, a
    sub c
    ld hl, sp-$6a
    ld d, $0d
    db $fc
    sub [hl]
    ld sp, hl
    sub [hl]
    di
    ld a, a
    sbc h
    ld a, [$92e5]
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    ld [$7fb0], a
    sbc h
    rst RST_28
    adc a
    ldh [$ffef], a
    rst RST_28
    ld h, e
    ld [$f47f], a
    sbc b
    and $0d
    ldh [$ffe0], a
    push hl
    sub d
    and c
    rst RST_38
    ld e, e
    cp l
    call nz, $e6d9
    ld a, a
    ldh [$ffef], a
    or b
    ld a, a
    sbc d
    ldh a, [c]
    ldh [$ffa1], a
    rst RST_38
    sbc d
    ld a, [$1c92]
    adc [hl]
    sub e
    ld a, a
    ldh [$ffef], a
    ld [$ea7f], a
    sub d
    rst RST_30
    push hl
    sub d
    and c
    rst RST_38
    add sp, -$09
    sub d
    or b
    ld a, a
    sbc e
    ld h, b
    ldh a, [c]
    db $e3
    and l
    and l
    and l
    and c
    dec c
    call nz, $36d8
    and h
    or b
    ld a, a
    db $eb
    sub d
    ldh [$ffa1], a
    inc c
    or [hl]
    pop bc
    xor a
    adc d
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    sub c
    ld a, [$8b8f]
    dec c
    ldh [$ffef], a
    ld d, $7f
    ld [$8f92], a
    db $e3
    sub d
    push hl
    sub d
    adc d
    rst RST_38
    db $db
    cp h
    or c
    db $dd
    reti


    and h
    jp c, $c4af

    ld [$957f], a
    di
    sbc h
    ei
    sub d
    push hl
    and c
    inc e
    ldh [c], a
    and $7f
    cp l
    ret c

    reti


    ld d, $91
    ld sp, hl
    and l
    and l
    and l
    and c
    rst RST_38
    ldh [$ffef], a
    ld [$957f], a
    ld a, [$7fe9]
    sub c
    ldh [$ffef], a
    or b
    dec c
    sub [hl]
    db $fd
    ldh [c], a
    sub e
    sbc h
    ldh [$ffa1], a
    inc c
    sub c
    ld l, h
    push hl
    sub d
    jp hl


    ld h, e
    ld a, a
    or $92
    sbc d
    ld [$1e7f], a
    adc a
    ldh [$ff92], a
    dec c
    rst RST_28
    add sp, -$50
    ld a, a
    sbc h
    push hl
    sub d
    or $93
    and $a5
    and l
    and l
    adc d
    rst RST_38
    sbc d
    ld a, [$1c92]
    adc [hl]
    sub e
    ld a, a
    di
    db $e3
    push hl
    sub d
    and c
    rst RST_38
    db $e4
    ldh [c], a
    ld e, $fd
    ld a, a
    db $ec
    ldh [$fff8], a
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    ld d, $7f
    sub l
    ld a, [$f2e9]
    jp hl


    ld a, a
    rst RST_28
    sub h
    and $7f
    ldh [$ffe1], a
    ld [$9660], a
    adc a
    ldh [$ffa5], a
    and l
    and l
    adc d
    rst RST_38
    cp d
    and h
    call nz, Call_015_7fb0
    sub a
    ldh [$ffa1], a
    dec c
    sbc d
    jp hl


    ld a, a
    cp d
    and h
    call nz, Call_015_7ff3
    sub d
    sub d
    push hl
    and c
    rst RST_38
    inc a
    xor [hl]
    and h
    dec a
    and l
    ld c, d
    and h
    jp hl


    ld a, a
    rst RST_28
    sub h
    jp hl


    ld a, a
    db $e4
    sub l
    ld hl, sp+$60
    and c
    cp h
    and h
    add hl, sp
    reti


    ld d, $7f
    sbc d
    ei
    sbc e
    ld a, [$96e3]
    rst RST_30
    dec c
    rst RST_28
    ld h, b
    ld a, a
    db $eb
    di
    sub c
    sbc e
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    inc a
    xor [hl]
    and h
    dec a
    and l
    ld c, d
    and h
    jp hl


    ld a, a
    rst RST_28
    sub h
    jp hl


    ld a, a
    db $e4
    sub l
    ld hl, sp+$60
    and c
    rst RST_38
    rst RST_08
    ld b, h
    and $ea
    ld a, a
    sub d
    ldh [rNR21], a
    ld a, a
    sub e
    pop hl
    ldh [c], a
    sbc c
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    ld d, $92
    db $e4
    sub e
    ld h, b
    and c
    dec c
    sbc e
    sub d
    sub a
    db $fd
    ld a, a
    ldh [$ffe3], a
    rst RST_30
    ld a, [$e9e0]
    sub [hl]
    push hl
    adc e
    inc c
    sbc d
    jp hl


    rst RST_28
    sub h
    rst RST_28
    ld h, e
    ld [$e57f], a
    sub [hl]
    adc a
    ldh [$fff6], a
    sub e
    push hl
    dec c
    sub a
    ld d, $7f
    sbc l
    ld sp, hl
    and c
    rst RST_38
    rst RST_08
    db $dd
    adc $a4
    reti


    ld h, b
    and c
    rst RST_38
    sbc d
    sub e
    inc e
    pop hl
    adc l
    sub e
    ld h, e
    ld a, a
    sbc e
    sub a
    and $7f
    sbc l
    sbc l
    ldh a, [c]
    sbc a
    sub e
    di
    push hl
    sub d
    push hl
    and c
    rst RST_38
    inc a
    xor [hl]
    and h
    dec a
    and l
    ld c, d
    and h
    jp hl


    ld a, a
    ei
    inc e
    ld h, b
    and c
    rst RST_38
    sbc h
    sub [hl]
    sbc h
    ld a, a
    sub c
    sub d
    db $e3
    sub d
    ld sp, hl
    di
    jp hl


    ld d, $7f
    sub l
    sub l
    sbc l
    rla
    db $e3
    sub c
    sbc c
    rst RST_30
    ld a, [$92e5]
    and c
    rst RST_38
    db $e4
    adc a
    db $e3
    sub d
    push hl
    sub d
    di
    jp hl


    ld [$e27f], a
    sub [hl]
    sub h
    push hl
    sub d
    and c
    rst RST_38
    db $ec
    ldh [rNR21], a
    ld a, a
    sbc h
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    jp hl


    ld h, e
    ld a, a
    push hl
    sub [hl]
    and $0d
    ld [$f992], a
    sbc d
    db $e4
    ld [$637f], a
    sub a
    push hl
    sub d
    and c
    rst RST_38
    sbc d
    sub e
    inc e
    pop hl
    adc l
    sub e
    push hl
    jp hl


    ld h, e
    ld a, a
    sbc l
    sbc l
    ldh a, [c]
    push hl
    sub d
    and c
    inc c
    sbc d
    ld h, h
    di
    ldh [$ffe1], a
    ld d, $7f
    inc e
    sbc d
    or b
    ld a, a
    sub l
    sbc d
    sbc e
    push hl
    sub d
    dec c
    or $93
    and $7f
    sub [hl]
    sbc d
    sub d
    ld d, $7f
    sbc h
    db $e3
    sub c
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
    inc c
    call c, $16c6
    ld a, a
    ld h, e
    ld sp, hl
    ld a, a
    db $e4
    sub d
    sub e
    sbc d
    db $e4
    ld h, e
    dec c
    xor $99
    db $fd
    sub d
    sub d
    db $fd
    sub [hl]
    sub d
    ld d, $7f
    add hl, de
    sbc l
    sub d
    ld h, h
    sub e
    db $ed
    jp hl


    dec c
    sub d
    ld hl, sp+$18
    pop hl
    or b
    ld a, a
    db $ec
    sub e
    inc e
    db $e3
    sub d
    ld sp, hl
    jp hl


    ld h, b
    and c
    rst RST_38
    db $e4
    sub l
    ld hl, sp-$1a
    ld a, a
    ldh [c], a
    ld h, d

jr_015_455e:
    sub d
    db $e3
    sub d
    ld sp, hl
    ld a, a
    sub e
    sbc l
    jr jr_015_455e

    sub d
    dec c
    ei
    inc e
    ld h, b
    and c
    rst RST_38
    rst RST_08
    db $dd
    adc $a4
    reti


    jp hl


    ld a, a
    db $ec
    ldh [$ff60], a
    and c
    dec c
    sbc d
    jp hl


    sbc h
    ldh [$ffea], a
    ld a, a
    add hl, de
    sbc l
    sub d
    ld h, h
    sub e
    ld h, b
    ei
    sub e
    and c
    rst RST_38
    sub l
    ld a, [$7f16]
    jp hl


    ld l, [hl]
    adc a
    db $e3
    di
    dec c
    ld h, b
    sub d
    inc e
    adc [hl]
    sub e
    ld l, h
    sub [hl]
    push hl
    and l
    and l
    and l
    adc e
    rst RST_38
    ld [hl], $c0
    ld [hl], $c0
    sbc h
    db $e3
    sub d
    ld sp, hl
    ld a, a
    sub [hl]
    sub d
    ld h, b
    db $fd
    ld h, b
    and c
    rst RST_38
    ei
    inc e
    ld d, $7f
    ldh [c], a
    ld h, d
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ld h, h
    sbc d
    and $7f
    sbc l
    db $e3
    or $93
    sub [hl]
    adc e
    rst RST_38
    ld h, h
    sbc d
    db $ed
    ld a, a
    sub d
    sbc d
    sub e
    sub [hl]
    adc e
    rst RST_38
    ld [hl], $c0
    ld [hl], $c0
    jp hl


    ld a, a
    db $eb
    inc e
    adc [hl]
    sub e
    sub [hl]
    sub d
    ld h, b
    db $fd
    jp hl


    dec c
    sub e
    sub h
    and $97
    ldh [$ffa1], a
    rst RST_38
    push hl
    db $fd
    rst RST_28
    sub d
    sub [hl]
    jp hl


    ld a, a
    sub d
    ldh [rNR21], a
    ld a, a
    cp b
    scf
    ld h, e
    dec c
    sub e
    pop hl
    ldh [c], a
    sbc c
    rst RST_30
    ld a, [$92e3]
    ld sp, hl
    and c
    inc c
    rst RST_10
    xor a
    or a
    and h
    adc d
    dec c
    add c
    rst RST_28
    sub d
    ld a, a
    push af
    ld sp, hl
    db $fd
    ld h, e
    sub d
    ld sp, hl
    rra
    and c
    rst RST_38
    push af
    ld sp, hl
    db $fd
    ld h, e
    sub d
    ldh [$ff7f], a
    sub d
    ldh [$ffb0], a
    ld a, a
    db $e4
    ld hl, sp-$16
    dec e
    sbc l
    db $e4
    dec c
    pop hl
    sub d
    sbc e
    push hl
    ld a, a
    cp l
    ld a, l
    and h
    cp l
    ld d, $7f
    ld h, e
    sub a
    ldh [$ffa1], a
    rst RST_38
    sub d
    ldh [$ffe6], a
    ld [$b87f], a
    scf
    ld d, $7f
    ldh [$ff98], a
    sbc e
    db $fd
    dec c
    ldh [c], a
    sub a
    sbc e
    sbc e
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    rst RST_08
    ld b, h
    jp hl


    ld a, a
    pop af
    sbc d
    sub e
    ld d, $7f
    inc a
    xor [hl]
    and h
    dec a
    and l
    ld c, d
    and h
    jp hl


    dec c
    add d
    sub [hl]
    sub d
    ld h, b
    and c
    rst RST_38
    sbc $a5
    and l
    and l
    db $f4
    adc a
    db $e4
    ld a, a
    ldh a, [$ffe2]
    sbc c
    ldh [rNR34], a
    adc d
    inc c
    ld a, a
    sub l
    rst RST_28
    sub h
    and $7f
    and $19
    rst RST_30
    ld a, [$7fe0]
    sub l
    sub [hl]
    add hl, de
    ld h, e
    dec c
    ld a, a
    ld l, l
    db $dd
    jp $a4a8


    add $91
    and $97
    and $7f
    sbc d
    adc a
    ld a, e
    ld h, h
    sbc b
    dec c
    ld a, a
    sub l
    sbc d
    rst RST_30
    ld a, [$fde0]
    ld h, b
    adc d
    dec c
    ld a, a
    push hl
    sub c
    ld a, a
    pop de
    and h
    cp l
    and l
    and l
    and l
    and c
    rst RST_18
    inc c
    sbc $91
    sub c
    adc d
    dec c
    ld a, a
    sbc h
    sub [hl]
    di
    ld a, a
    sub l
    rst RST_28
    sub h
    ld [$f57f], a
    ld sp, hl
    sbc h
    di
    push hl
    sbc b
    dec c
    ld a, a
    db $eb
    ldh a, [$ffe2]
    jp hl


    ld a, a
    or l
    call z, $bda8
    and $7f
    ld [$8f92], a
    ldh [$ffe5], a
    adc e
    inc c
    ld a, a
    sub c
    and $97
    jp hl


    ld a, a
    db $eb
    ldh a, [$ffe2]
    or b
    ld a, a
    sbc h
    adc a
    ldh [$fff3], a
    jp hl


    ld [$7f0d], a
    sub d
    sub [hl]
    sbc h
    db $e3
    sub l
    sbc c
    push hl
    sub d
    push hl
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    sbc h
    db $fd
    ld h, e
    di
    rst RST_30
    sub e
    ld e, $8a
    rst RST_18
    rst RST_38
    sub d
    ldh [$ffb0], a
    ld a, a
    add c
    rst RST_28
    sub d
    ld a, a
    ld [$9d1d], a
    sbc d
    db $e4
    ld d, $63
    sub a
    ldh [$ffa1], a
    rst RST_38
    sub d
    ldh [rNR21], a
    ld a, a
    inc e
    adc h
    rst RST_28
    or b
    sbc h
    db $e3
    ld a, a
    sbc l
    sbc l
    ldh a, [c]
    push hl
    sub d
    and c
    rst RST_38
    sub [hl]
    sub d
    ld h, b
    db $fd
    ld [$9b7f], a
    ld l, e
    db $e3
    sub d
    db $e3
    ld a, a
    jp hl


    ld l, [hl]
    ld a, [$92e5]
    and c
    sub c
    sub a
    rst RST_30
    ldh a, [c]
    ldh [$ffee], a
    sub e
    ld d, $7f
    or $9b
    sbc a
    sub e
    ld h, b
    and c
    rst RST_38
    sub d
    ldh [$ffea], a
    ld a, a
    db $eb
    sub a
    rst RST_20
    sub [hl]
    push hl
    sbc c
    ld a, [$7f6a]
    db $e4
    ld a, [$92e5]
    and c
    rst RST_38
    push af
    ld sp, hl
    db $fd
    ld h, e
    sub d
    ld sp, hl
    ld a, a
    sub d
    ldh [$ffb0], a
    dec c
    ld [$92f7], a
    sub l
    db $e4
    sbc h
    ldh [$ffa1], a
    rst RST_38
    sub e
    sub l
    sub l
    sub l
    sub l
    sub l
    ld hl, sp-$74
    and h
    adc d
    dec c
    sbc [hl]
    sub d
    adc a
    adc d
    adc d
    adc d
    inc c
    and $ee
    db $fd
    inc e
    db $fd
    or b
    ld a, a
    rst RST_28
    add sp, -$1d
    ld a, a
    or [hl]
    rst RST_10
    jp Jump_000_0db0


    db $f4
    adc a
    db $e3
    ldh a, [$ffe0]
    and c
    inc c
    sub d
    ldh [$ff92], a
    adc a
    and l
    and l
    and l
    adc d
    inc c
    cp b
    scf
    ld d, $7f
    db $e3
    and $7f
    ldh [c], a
    sub a
    sbc e
    sbc e
    adc a
    db $e3
    dec c
    sbc h
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    push af
    ld sp, hl
    db $fd
    ld h, e
    sub d
    ld sp, hl
    ld a, a
    sub d
    ldh [$ffb0], a
    ld a, a
    sub l
    di
    sub d
    adc a
    sub a
    ld hl, sp+$0d
    db $eb
    adc a
    sbc d
    rst RST_20
    sub d
    ldh [$ffa1], a
    rst RST_38
    sub e
    and h
    db $fd
    and l
    and l
    and l
    adc d
    inc c
    pop hl
    sub [hl]
    rst RST_30
    or b
    ld a, a
    sbc d
    ldh a, [c]
    db $e3
    ld a, a
    sub d
    ldh [$ffb0], a
    ld a, a
    ld [$9f1d], a
    sub e
    db $e4
    sbc h
    ldh [rNR21], a
    and l
    and l
    and l
    ld [$fa1d], a
    push hl
    sub d
    and c
    dec c
    sbc d
    ld a, [$1c92]
    adc [hl]
    sub e
    ld [$f17f], a
    ld hl, sp-$17
    or $93
    ld h, b
    and c
    rst RST_38
    db $e3
    sbc d
    jp hl


    add hl, de
    db $fd
    ld hl, sp-$50
    ld a, a
    ld hl, sp-$0a
    sub e
    sbc h
    db $e3
    ld a, a
    sub d
    ldh [$ffb0], a
    dec c
    db $e4
    ld hl, sp-$16
    dec e
    sbc a
    sub e
    db $e4
    sbc h
    ldh [$ffa1], a
    inc c
    sbc l
    sbc d
    sbc h
    ld a, a
    push af
    ld sp, hl
    db $fd
    ld h, b
    ld d, $0d
    sbc d
    jp hl


    ld a, a
    pop hl
    sub d
    sbc e
    push hl
    ld a, a
    push bc
    or d
    call z, $ea63
    ld a, a
    sbc h
    adc [hl]
    sbc [hl]
    db $fd
    pop af
    ld hl, sp-$09
    sbc h
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    inc a
    xor [hl]
    and h
    and l
    cp h
    and h
    add hl, sp
    reti


    jp hl


    ld a, a
    or l
    call z, $bda8
    ld h, b
    and c
    dec c
    cp h
    and h
    add hl, sp
    reti


    jp hl


    ld a, a
    sub d
    ldh [$ff92], a
    or b
    ld a, a
    ldh a, [$ffe2]
    sbc c
    ldh [$ffe4], a
    sub a
    db $e4
    sub [hl]
    db $fc
    adc a
    db $e3
    push hl
    sub d
    push hl
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
    di
    sub e
    ld a, a
    sbc l
    sbc d
    sbc h
    ld h, e
    ld a, a
    and $19
    sub a
    ld sp, hl
    sbc d
    db $e4
    ld d, $0d
    ld h, e
    sub a
    ldh [$ffe9], a
    and $a5
    and l
    and l
    and c
    inc c
    sbc d
    db $fd
    push hl
    sbc d
    db $e4
    push hl
    rst RST_30
    ld a, a
    sub c
    jp hl


    db $ed
    db $f4
    and $7f
    ld h, b
    ld a, [$0d96]
    ld l, l
    ldh [c], a
    jp hl


    ld a, a
    db $eb
    db $e4
    ld d, $7f
    ld [$8f92], a
    ldh [$ffe4], a
    dec c
    sub l
    di
    db $fc
    sbc [hl]
    ld a, [$7f6a]
    or $96
    adc a
    ldh [$ffe5], a
    and l
    and l
    and l
    and c
    rst RST_38
    cp b
    scf
    ld h, e
    ld a, a
    sub e
    pop hl
    ldh [c], a
    sbc c
    db $e3
    sub c
    adc a
    ldh [$ff7f], a
    sub d
    ldh [$ffb0], a
    dec c
    sub d
    pop hl
    rst RST_28
    sub d
    ld a, a
    ld [$9c1d], a
    ldh [$ffe9], a
    ld h, e
    ld a, a
    sbc l
    sub a
    rst RST_28
    ld d, $0d
    ld h, e
    sub a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    db $eb
    or $99
    ld d, $7f
    sub c
    ld d, $8f
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    db $eb
    or $99
    ld d, $7f
    sbc h
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    sbc a
    db $e4
    jp hl


    ld a, a
    sbc c
    sbc h
    sub a
    ld d, $7f
    ldh a, [$ff94]
    push hl
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    ldh [c], a
    sbc b
    sub h
    jp hl


    ld a, a
    sub e
    sub h
    and $7f
    pop hl
    jp hl


    ld a, a
    sub c
    db $e4
    ld d, $0d
    jp hl


    sbc d
    adc a
    db $e3
    sub d
    ld sp, hl
    and l
    and l
    and l
    and c
    inc c
    add e
    ld a, d
    ldh [c], a
    ld a, a
    sub e
    ldh [$fffa], a
    db $e3
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    ld d, $0d
    sbc h
    db $fd
    ld h, e
    sub d
    ldh [$ffe9], a
    or b
    ld a, a
    sub l
    di
    sub d
    ld h, b
    sbc h
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    cp h
    and h
    add hl, sp
    reti


    ld [$f57f], a
    sbc l
    ld hl, sp-$0c
    and l
    and l
    and l
    and c
    dec c
    sub l
    ld a, [$7fea]
    ldh a, [rNR32]
    ldh a, [c]
    push hl
    ld a, a
    sbc e
    sbc l
    rst RST_30
    sub d
    jp hl


    dec c
    scf
    xor h
    db $dd
    ld c, h
    rst RST_10
    and h
    and l
    and l
    and l
    and c
    inc c
    sub l
    ld a, [$7f16]
    sbc h
    adc h
    adc a
    sub a
    db $fd
    or b
    ld a, a
    sub [hl]
    sub h
    sbc [hl]
    push hl
    sub d
    rst RST_28
    rst RST_28
    cp h
    and h
    add hl, sp
    reti


    ld [$9c7f], a
    db $fd
    ld h, e
    sbc h
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    ld a, [$9a92]
    sbc b
    ld h, e
    ld a, a
    ld [$1c98], a
    adc [hl]
    sub e
    push hl
    dec c
    db $f4
    ldh [c], a
    ld h, b
    adc a
    ldh [rNR21], a
    ld a, a
    sub [hl]
    db $fc
    sub d
    sbc a
    sub e
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    ld b, b
    or d
    or c
    reti


    sbc h
    sub a
    jp hl


    ld a, a
    sub [hl]
    ld l, l
    sub a
    db $fd
    sbc d
    ld h, b
    and c
    rst RST_38
    sbc d
    jp hl


    push hl
    sub [hl]
    and $7f
    sub l
    ld a, [$7f16]
    cp h
    and h
    add hl, sp
    reti


    and $0d
    sbc h
    adc h
    adc a
    sub a
    db $fd
    or b
    ld a, a
    sbc h
    ldh [$ffe4], a
    sub a
    jp hl


    dec c
    sbc h
    adc h
    sbc b
    or $93
    sbc h
    adc [hl]
    ld d, $0d
    ld [$8f92], a
    db $e3
    sub d
    ldh [$fffd], a
    ld h, b
    and l
    and l
    and l
    and c
    inc c
    cp h
    and h
    add hl, sp
    reti


    ld a, [de]
    ei
    sbc h
    jp hl


    ld a, a
    pop af
    dec de
    sub d
    or b
    dec c
    sbc h
    adc [hl]
    sub e
    ldh a, [c]
    sub d
    sbc l
    ld sp, hl
    jp hl


    and $7f
    inc e
    adc h
    rst RST_28
    push hl
    di
    jp hl


    ld [$950d], a
    ld a, [$7f16]
    sbc h
    adc [hl]
    ld l, h
    db $fd
    sbc h
    ldh [$fffd], a
    ld h, b
    adc a
    sbc c
    and c
    rst RST_38
    and l
    and l
    and l
    db $fd
    and l
    and l
    and l
    adc e
    inc c
    sbc h
    ldh [$ffe9], a
    ld a, a
    xor $93
    and $7f
    pop hl
    sub d
    sbc e
    sub d
    ld a, a
    ldh [c], a
    rst RST_28
    ldh a, [rNR21]
    dec c
    sub c
    ld sp, hl
    rra
    adc d
    inc c
    push hl
    and $96
    ld a, a
    sub c
    ld hl, sp-$61
    sub e
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    sbc d
    adc a
    db $e4
    sub e
    db $eb
    db $fd
    jp hl


    ld a, a
    ld h, e
    db $fd
    db $fc
    sub a
    ld h, b
    and c
    rst RST_38
    ldh [$ff60], a
    jp hl


    ld a, a
    sub h
    db $fd
    ld a, e
    ldh [c], a
    ld h, b
    and c
    rst RST_38
    db $ed
    db $fd
    push hl
    ld a, a
    sub [hl]
    ldh [$ffe1], a
    jp hl


    ld a, a
    or [hl]
    scf
    ld h, b
    and c
    rst RST_38
    db $e4
    ldh [c], a
    ld e, $fd
    ld a, a
    cp l
    call nz, Call_000_3ca4
    and h
    ld d, $7f
    sub c
    rst RST_30
    db $fc
    ld a, [$0de3]
    sub d
    adc a
    ldh [$ffa1], a
    rst RST_38
    ldh [$ff9c], a
    sub [hl]
    ld a, a
    ld b, h
    or c
    jp hl


    ld a, a
    pop af
    sbc d
    sub e
    ld d, $fc
    ld d, $0d
    db $eb
    sbc h
    adc [hl]
    jp hl


    ld a, a
    db $ed
    db $f4
    ld h, b
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc h
    db $fd
    ld d, $7f
    sub l
    ld a, [$92e3]
    ld sp, hl
    jp hl


    ld h, e
    ld a, a
    sub [hl]
    sbc c
    push hl
    sub d
    and c
    rst RST_38
    sbc $4e
    cp l
    jp hl


    ld a, a
    db $ed
    db $f4
    and $7f
    sbc h
    jp hl


    ld l, e
    sbc d
    db $fd
    ld h, b
    jp hl


    ld [$7f0d], a
    sub l
    rst RST_28
    sub h
    ld h, b
    ei
    sub e
    and l
    and l
    and l
    adc e
    inc c
    ld a, a
    sbc c
    sub d
    sbc e
    ldh [c], a
    and $7f
    di
    adc a
    db $e3
    sub d
    sub [hl]
    ld a, [$eae3]
    dec c
    ld a, a
    sbc d
    rst RST_28
    ld sp, hl
    or $93
    push hl
    di
    jp hl


    ld d, $7f
    ldh [c], a
    sbc b
    sub h
    jp hl


    push hl
    sub [hl]
    and $7f
    ld [$8f92], a
    db $e3
    sub d
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    ld a, a
    and l
    and l
    and l
    db $e4
    sub d
    sub e
    sbc d
    db $e4
    ld [$957f], a
    rst RST_28
    sub h
    ld a, a
    ld c, [hl]
    cp l
    or b
    ld a, a
    sub a
    adc [hl]
    sub e
    ld [$9d98], a
    ld sp, hl
    ld a, a
    ldh [c], a
    di
    ld hl, sp-$1b
    jp hl


    sub [hl]
    adc e
    inc c
    ld a, a
    ld h, b
    ld d, $7f
    or $e9
    push hl
    sub [hl]
    ld a, a
    sbc a
    db $fd
    push hl
    and $7f
    sub c
    rst RST_28
    sbc b
    ld [$e57f], a
    sub d
    ld e, $8a
    inc c
    ld a, a
    ld c, [hl]
    cp l
    jp hl


    ld a, a
    db $eb
    ldh a, [$ffe2]
    or b
    ld a, a
    sbc h
    adc a
    ldh [$ff7f], a
    sub l
    rst RST_28
    sub h
    or b
    ld a, a
    sub d
    sub [hl]
    sbc h
    db $e3
    ld a, a
    sub l
    sbc b
    db $fc
    sbc c
    and $ea
    ld a, a
    sub d
    sub [hl]
    push hl
    sub d
    adc d
    ld a, a
    sbc h
    add sp, -$71
    adc d
    adc d
    adc d
    rst RST_18
    rst RST_38
    inc a
    xor [hl]
    and h
    dec a
    and l
    ld c, d
    and h
    jp hl


    ld a, a
    rst RST_28
    sub e
    sbc h
    ei
    ld h, b
    and c
    dec c
    sbc d
    sbc d
    jp hl


    ld a, a
    ei
    inc e
    ld [$977f], a
    ldh [$ffe5], a
    sub d
    push hl
    sub c
    and c
    rst RST_38
    ld a, [hl-]
    ret nc

    ld l, d
    sbc d
    ld h, b
    and c
    dec c
    sbc b
    sbc e
    adc a
    ldh [$ff7f], a
    di
    jp hl


    jp hl


    ld a, a
    and $95
    sub d
    ld d, $7f
    ld e, h
    db $dd
    ld e, h
    db $dd
    sbc h
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sub c
    sub c
    and l
    and l
    and l
    and c
    dec c
    or $99
    sub d
    push hl
    di
    jp hl


    or b
    ld a, a
    sub d
    ld a, [$99e5]
    ld a, [$0d6a]
    or $96
    adc a
    ldh [$ffe5], a
    and l
    and l
    and l
    and c
    rst RST_38
    db $eb
    adc a
    sbc b
    ld hl, sp-$6a
    sub h
    adc a
    ldh [$fff6], a
    sub e
    push hl
    ld a, a
    db $ed
    db $f4
    ld h, b
    and c
    dec c
    ld h, e
    di
    ld a, a
    push hl
    db $fd
    ld h, b
    sub [hl]
    ld a, a
    sub l
    pop hl
    ldh [c], a
    sbc b
    push hl
    and l
    and l
    and l
    and c
    dec c
    db $fc
    ld d, $f4
    ld d, $7f
    sub d
    pop hl
    ld l, d
    db $fd
    ld h, b
    adc d
    inc c
    db $e4
    ldh [c], a
    ld e, $fd
    and l
    and l
    and l
    dec c
    db $f4
    sbc l
    di
    jp hl


    jp hl


    ld a, a
    ret nz

    ld c, d
    cp d
    jp hl


    ld a, a
    and $95
    sub d
    ld h, e
    dec c
    cp l
    call nz, Call_000_3ca4
    and h
    or b
    ld a, a
    sub l
    di
    sub d
    ld h, b
    sbc h
    ldh [$ffa1], a
    rst RST_38
    sub d
    rst RST_28
    sub d
    rst RST_28
    sbc h
    sub d
    adc d
    dec c
    cp h
    and h
    add hl, sp
    reti


    ld [$817f], a
    add c
    add d
    add b
    add b
    add b
    ld b, h
    reti


    or b
    dec c
    ld h, h
    sbc d
    and $7f
    db $f4
    adc a
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffe9], a
    ld h, b
    ei
    sub e
    adc e
    inc c
    push hl
    db $fd
    db $e4
    sbc h
    db $e3
    di
    ld a, a
    db $e3
    ld d, $96
    ld hl, sp-$50
    dec c
    ldh a, [$ffe2]
    sbc c
    ld h, b
    sbc e
    push hl
    sbc c
    ld a, [$8a6a]
    inc c
    cp h
    and h
    add hl, sp
    reti


    jp hl


    ld a, a
    sbc c
    sub d
    sub h
    sub d
    sbc h
    db $e3
    sub d
    ldh [$ff0d], a
    inc a
    xor [hl]
    and h
    dec a
    and l
    ld c, d
    and h
    and $7f
    push hl
    and $96
    ld a, a
    db $e3
    ld d, $96
    ld hl, sp+$16
    sub [hl]
    sbc b
    sbc e
    ld a, [$92e3]
    ld sp, hl
    and $7f
    pop hl
    ld d, $92
    push hl
    sub d
    jp hl


    ld h, b
    ld d, $a1
    rst RST_38
    sub [hl]
    ld l, e
    sbc b
    sbc e
    sub d
    ld a, a
    ld b, b
    db $dd
    ld c, [hl]
    and h
    reti


    ld l, d
    sbc d
    ld h, b
    and c
    rst RST_38
    sbc $4e
    cp l
    jp hl


    ld a, a
    db $ed
    db $f4
    and $7f
    sbc h
    jp hl


    ld l, e
    sbc d
    db $fd
    ld h, b
    jp hl


    ld [$7f0d], a
    sub l
    rst RST_28
    sub h
    ld h, b
    ei
    sub e
    and l
    and l
    and l
    adc e
    inc c
    ld a, a
    ld l, l
    db $dd
    jp $a4a8


    add $91
    and $97
    ld d, $7f
    ld c, [hl]
    cp l
    or b
    dec c
    ld a, a
    sub e
    rst RST_30
    rla
    adc a
    ldh [$fff6], a
    sub e
    and $7f
    ldh a, [$ff9e]
    sub [hl]
    sbc c
    db $e3
    dec c
    ld a, a
    db $ec
    ldh [$fff8], a
    or b
    ld a, a
    sub c
    rst RST_30
    sbc a
    db $fc
    sbc [hl]
    or $93
    db $e4
    dec c
    ld a, a
    sbc h
    ldh [$fffd], a
    ld h, b
    ei
    sub e
    ld d, $a5
    and l
    and l
    inc c
    ld a, a
    and l
    and l
    and l
    sbc a
    sub e
    ld [$927f], a
    sub [hl]
    push hl
    sub d
    ld e, $8a
    adc d
    inc c
    ld a, a
    sub c
    ld a, [$f798]
    sub d
    jp hl


    ld a, a
    sbc h
    adc [hl]
    sub e
    sbc d
    ld h, e
    ld [$7f0d], a
    ld c, [hl]
    cp l
    ld [$6d7f], a
    db $dd
    jp $a4a8


    add $91
    and $97
    jp hl


    dec c
    ld a, a
    sbc d
    db $e4
    or b
    ld a, a
    sbc d
    ld a, [$7e8f]
    adc a
    pop hl
    di
    dec c
    ld a, a
    sub e
    ldh [rNR21], a
    db $fc
    push hl
    sub d
    jp hl


    sbc e
    adc d
    inc c
    ld a, a
    db $ed
    ldh [$ffe5], a
    ld a, a
    sbc d
    dec de
    sub d
    sbc b
    ld [$9c7f], a
    push hl
    sub d
    xor $93
    ld d, $0d
    ld a, a
    or $96
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    sbc h
    add sp, -$71
    adc d
    adc d
    rst RST_18
    rst RST_38
    pop hl
    sub d
    sbc e
    push hl
    ld a, a
    ld h, b
    db $fd
    ld c, [hl]
    and h
    reti


    ld l, d
    sbc d
    ld h, b
    and c
    rst RST_38
    ld a, l
    sbc h
    adc h
    db $fd
    sbc d
    and $7f
    push hl
    adc a
    ldh [$ff7f], a
    inc a
    xor l
    and h
    cp l
    jp hl


    dec c
    or [hl]
    db $dd
    ld h, b
    and c
    rst RST_38
    db $e4
    ldh [c], a
    ld e, $fd
    ld a, a
    rst RST_28
    pop hl
    jp hl


    ld a, a
    sub c
    pop hl
    sbc d
    pop hl
    sub [hl]
    rst RST_30
    dec c
    rst RST_08
    cp h
    db $dd
    ld [hl], $dd
    jp hl


    ld a, a
    sub l
    db $e4
    ld d, $7f
    sub a
    sbc d
    sub h
    db $e3
    sub a
    ldh [$ff8a], a
    inc c
    sbc h
    db $fd
    rst RST_30
    sub d
    sbc l
    ld sp, hl
    ld a, a
    ld l, l
    db $dd
    jp $a4a8


    add $e9
    dec c
    sub e
    rst RST_30
    rla
    ld hl, sp-$50
    ld a, a
    push af
    ld sp, hl
    sbc [hl]
    push hl
    sub [hl]
    adc a
    ldh [$ff7f], a
    rst RST_08
    db $db
    db $dd
    ld [$966c], a
    and $7f
    sub [hl]
    ld a, [$7fb0]
    sbc d
    ei
    sbc l
    or $93
    and $0d
    ldh a, [c]
    sub d
    ld a, [$9c92]
    ldh [$ffa1], a
    inc c
    ld h, b
    ld d, $7f
    ld l, l
    db $dd
    jp $a4a8


    add $ea
    ld a, a
    sub d
    pop hl
    ld [$98f4], a
    dec c
    sbc a
    ld a, [$7fe6]
    sub a
    ld h, d
    sub a
    ld a, a
    rst RST_08
    db $db
    db $dd
    jp hl


    ld a, a
    ld l, h
    sub [hl]
    or b
    dec c
    pop af
    sub [hl]
    sub h
    sub e
    adc a
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    ldh [$ffe0], a
    sub [hl]
    sub d
    ld [$d77f], a
    cp l
    ld l, l
    ld [hl], $bd
    jp hl


    ld a, a
    rst RST_28
    pop hl
    ld e, $fd
    ldh [$ff92], a
    or b
    ld a, a
    rst RST_28
    sub a
    sbc d
    db $fd
    ld h, b
    and c
    inc c
    db $ec
    sbc d
    sub e
    and $f3
    ld a, a
    sub l
    ld a, [$7fea]
    push hl
    ld d, $fa
    ld h, b
    rst RST_28
    and $0d
    sub c
    ldh [$ff8f], a
    db $e3
    ld a, a
    sbc h
    db $fd
    ld h, e
    sbc h
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    ldh a, [$ffe0]
    sbc d
    db $e4
    jp hl


    sub c
    ld sp, hl
    ld a, a
    rst RST_08
    and h
    cp b
    ld d, $0d
    ldh [c], a
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    sbc a
    sub e
    ld h, b
    adc d
    dec c
    sbc d
    ld a, [$7fea]
    jp nc, $bed9

    ld b, e
    cp l
    and l
    ld l, l
    db $dd
    jp nz, Jump_000_0de9

    or [hl]
    scf
    ld h, b
    and c
    rst RST_38
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
    sub [hl]
    rst RST_30
    ld a, a
    sub l
    ld a, [$7fb0]
    sub l
    adc a
    db $e3
    sub a
    ldh [$ff0d], a
    di
    jp hl


    ld [$927f], a
    push hl
    sub d
    or $93
    ld h, b
    and l
    and l
    and l
    and c
    dec c
    sbc c
    sub d
    sub [hl]
    sbc b
    ld [$f07f], a
    ld a, [de]
    db $e4
    ld a, a
    sbc [hl]
    sub d
    sbc d
    sub e
    sbc h
    ldh [$ff8a], a
    rst RST_38
    sbc b
    ei
    rst RST_28
    ldh a, [c]
    cp a
    and h
    cp l
    jp hl


    ld a, a
    sub [hl]
    sub [hl]
    adc a
    ldh [$ff0d], a
    ld a, l
    or a
    db $dd
    ld b, b
    xor a
    cp b
    jp hl


    ld a, a
    ldh [$ff6d], a
    jp hl


    sbc d
    sbc h
    ld h, b
    and c
    dec c
    ld [$b0e5], a
    ld a, a
    ldh [c], a
    sbc b
    ld a, a
    and $95
    sub d
    ld d, $9d
    ld sp, hl
    and l
    and l
    and l
    and c
    rst RST_38
    sub d
    adc a
    ld a, [hl]
    sub e
    ld a, a
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
    ld h, e
    ld [$a5a5], a
    and l
    and c
    rst RST_38
    sub [hl]
    push hl
    ld hl, sp+$7f
    db $f4
    sbc l
    sbc a
    sub e
    push hl
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
    and c
    rst RST_38
    ld h, h
    sub e
    and $96
    sbc l
    ld a, [$7f6a]
    sbc d
    db $fc
    ld a, [$939f]
    ld h, b
    push hl
    and c
    rst RST_38
    or c
    db $dd
    cp a
    add $a4
    and l
    rst RST_08
    db $db
    db $dd
    ld [$ce7f], a
    jp $e9d9


    dec c
    inc e
    ld l, h
    db $fd
    jp hl


    ld a, a
    ldh [c], a
    sbc b
    sub h
    and $7f
    ldh a, [$ff95]
    ld l, [hl]
    sub h
    jp hl


    push hl
    sub d
    dec c
    di
    jp hl


    ld d, $7f
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    jp hl


    and $0d
    sub a
    ld d, $7f
    ldh [c], a
    sub d
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    rst RST_08
    db $db
    db $dd
    ld [$de7f], a
    cp h
    and h
    add hl, sp
    reti


    jp hl


    and $8f
    sub a
    pop hl
    adc [hl]
    sub e
    rst RST_18
    sbc $cf
    cp b
    rst RST_08
    and h
    call z, $a4a8
    jp hl


    db $e3
    ld d, $f0
    rst RST_18
    ld a, a
    sbc a
    sbc h
    db $e3
    dec c
    sbc $4e

jr_015_4fa8:
    db $dd
    ld b, h
    or e
    xor d
    reti


    jp hl


    db $e3
    ld d, $f0
    rst RST_18
    or b
    ld a, a
    or $fd
    ld h, b
    and c
    rst RST_38
    sbc a
    sbc h
    db $e3
    ld a, a
    ld l, l
    db $dd
    jp $a4a8


    add $e9
    ld a, a
    sub e
    rst RST_30
    rla
    ld hl, sp-$50
    dec c
    db $e4
    sub e
    db $e4
    sub e
    ld a, a
    sbc h
    adc a
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ff8a], a
    inc c
    sub c
    ldh [$ff96], a
    di
    ld a, a
    inc e
    ld l, h
    db $fd
    jp hl


    ld a, a
    sbc d
    ld h, h
    di
    jp hl


    or $93
    and $0d
    sub [hl]
    db $fc
    sub d
    ld d, $8f
    db $e3
    sub d
    ldh [$ff60], a
    sbc c
    and $7f
    sub d
    sub [hl]
    ld hl, sp-$16
    dec c
    ld [$f896], a
    sbc h
    ld a, [$92e5]
    di
    jp hl


    ld h, b
    adc a
    ldh [$ff8a], a
    inc c
    sbc l
    jr jr_015_4fa8

    rst RST_28
    ld a, a
    ld l, h
    sub [hl]
    ldh [$ffe1], a
    and $7f
    ld l, l
    db $dd
    jp $a4a8


    add $b0
    sbc h
    rst RST_28
    ldh [c], a
    sbc l
    ld sp, hl
    or $93
    ld a, a
    ldh a, [c]
    sub d
    ld a, [$9c92]
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    and l
    and l
    and l
    and l
    and l
    and l
    sub e
    and h
    db $fd
    adc d
    inc c
    sbc b
    ei
    rst RST_28
    ldh a, [c]
    cp a
    and h
    cp l
    ld d, $7f
    sub a
    sub d
    db $e3
    sub d
    ld sp, hl
    adc d
    dec c
    sub l
    db $ec
    sbc b
    ei
    jp hl


    ld a, a
    sub c
    inc e
    and $7f
    and $e3
    sub d
    ld sp, hl
    push hl
    and c
    rst RST_38
    push bc
    or d
    call z, Call_015_7f63
    ld b, h
    or c
    jp hl


    ld a, a
    or [hl]
    scf
    or b
    dec c
    sbc d
    db $fc
    sbc a
    sub e
    db $e4
    sbc h
    ldh [$ffa1], a
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
    and c
    rst RST_38
    or $95
    sub l
    sub l
    sbc h
    adc a
    adc d
    adc d
    dec c
    or [hl]
    scf
    or b
    ld a, a
    sbc d
    db $fc
    sbc [hl]
    ldh [$ff1f], a
    adc d
    inc c
    push bc
    or d
    call z, Call_015_7f63
    sbc d
    db $fd
    push hl
    sbc d
    db $e4
    ld d, $7f
    ld h, e
    sub a
    ld sp, hl
    push hl
    db $fd
    db $e3
    pop hl
    adc [hl]
    adc a
    db $e4
    sbc h
    ldh [$fff3], a
    jp hl


    ld h, b
    push hl
    and c
    rst RST_38
    ld b, h
    or c
    jp hl


    ld a, a
    or [hl]
    scf
    and $7f
    add sp, -$09
    sub d
    or b
    ld a, a
    sbc e
    ld h, b
    ldh a, [c]
    db $e3
    dec c
    call nz, $36d8
    and h
    or b
    ld a, a
    db $eb
    sub d
    ldh [$ffa1], a
    rst RST_38
    db $fc
    and h
    sub l
    adc d
    dec c
    ldh a, [rNR30]
    db $e4
    ld a, a
    or [hl]
    scf
    and $7f
    ldh a, [c]
    sub d
    pop hl
    adc l
    sub e
    adc d
    dec c
    or [hl]
    scf
    ld d, $7f
    db $ec
    adc a
    db $e4
    db $fd
    ld h, b
    and c
    inc c
    jp z, Jump_015_7faf

    jp z, $8aaf

    dec c
    sub l
    ld a, [$7fe9]
    sub e
    ld h, e
    di
    ld a, a
    ldh [$ff92], a
    sbc h
    ldh [$fff3], a
    db $fd
    ld h, b
    and c
    rst RST_38
    sbc [hl]
    rst RST_28
    sub d
    ld a, a
    ei

jr_015_510c:
    sub e
    sub [hl]
    ld h, b
    and c
    dec c
    sub e
    sbc l
    jr jr_015_510c

    sbc b
    db $e3
    ld a, a
    ld l, h
    sub a
    ldh a, [$ff60]
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    sub l
    ld a, [$7f16]
    sbc h
    db $fd
    ld l, h
    db $fd
    or b
    ld a, a
    or $f3
    sub e
    db $e4
    sbc l
    ld sp, hl
    db $e4
    dec c
    ei
    sub e
    inc e
    db $fd
    ld [$927f], a
    adc a
    ldh [$ffa1], a
    inc c
    sbc $e1
    adc h
    db $fd
    db $e4
    ld a, a
    db $e3
    and $7f
    db $e4
    adc a
    db $e3
    sub [hl]
    rst RST_30
    dec c
    ld a, a
    or $fd
    ld h, e
    sbc b
    ld h, b
    sbc e
    sub d
    and c
    rst RST_18
    rst RST_38
    sbc [hl]
    rst RST_28
    sub d
    ld a, a
    ei
    sub e
    sub [hl]
    ld h, b
    and c
    dec c
    db $ed
    db $fd
    push hl
    ld a, a
    and $95
    sub d
    ld d, $7f
    sbc l
    ld sp, hl
    and l
    and l
    and l
    and c
    rst RST_38
    sub d
    ldh [rNR21], a
    ld a, a
    sbc h
    adc a
    sub [hl]
    ld hl, sp-$1c
    dec c
    sub e
    pop hl
    ldh [c], a
    sbc c
    rst RST_30
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    sbc b
    di
    jp hl


    sbc l
    ld d, $7f
    ld [$e6f9], a
    ld [$f37f], a
    sub e
    sbc h
    ld l, h
    db $fd
    push hl
    sub d
    sub [hl]
    db $fd
    sub a
    adc [hl]
    sub e
    ld h, b
    and c
    rst RST_38
    xor $9a
    ld hl, sp-$50
    ld a, a
    sub [hl]
    ld l, h
    adc a
    ldh [$ff7f], a
    sbc b
    di
    jp hl


    sbc l
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
    jp hl


    ld a, a

jr_015_51c0:
    ld b, h
    or c
    ld h, b
    and c
    rst RST_38
    ld h, b
    db $fd
    sbc [hl]
    sub d
    or $93
    jp hl


    ld a, a
    call nz, $dab2
    jp hl


    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    rst RST_38
    sbc $4a
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
    dec c
    jp hl


    ld h, h
    ld d, $7f
    sub [hl]
    db $fc
    sub d
    ldh [$ffe5], a
    and l
    and l
    and l
    and c
    rst RST_38
    sub [hl]
    ldh [$fff4], a
    ld a, a
    ld l, l
    db $dd
    jp $a4a8


    add $f3
    ld a, a
    db $eb
    ldh a, [$ffe2]
    jp hl


    dec c
    or l
    call z, $bda8
    ld h, e
    ld a, a
    cp h
    ld [hl], $a4
    ret c

    db $dd
    jr c, jr_015_51c0

    ld a, a
    ldh a, [$ffe2]
    sbc c
    dec c
    inc e
    ld l, h
    db $fd
    jp hl


    ld a, a
    sbc c
    sub d
    sub [hl]
    sbc b
    ld d, $7f
    rst RST_08
    db $db
    db $dd
    and $0d
    sbc h
    rst RST_30
    ld a, [$e4e0]
    ld a, a
    sub l
    di
    adc a
    ldh [$ff8a], a
    inc c
    sbc $99
    sbc e
    ld a, [$eff9]
    sub h
    and $7f
    sbc c
    sbc [hl]
    adc d
    rst RST_18
    dec c
    sbc a
    ld a, [$7f16]
    sub e
    rst RST_30
    jp hl


    ld a, a
    sbc [hl]
    sub [hl]
    sub d
    jp hl


    dec c
    sub l
    sub a
    db $e3
    ld h, e
    sub c
    ld sp, hl
    and l
    and l
    and l
    and c
    inc c
    ld l, l
    db $dd
    jp $a4a8


    add $ea
    ld a, a
    rst RST_08
    db $db
    db $dd
    jp hl


    ld a, a
    db $e3
    sbc h
    ldh [$ffb0], a
    dec c
    pop af
    sub [hl]
    sub h
    sub e
    pop hl
    ld a, a
    adc $c3
    reti


    jp hl


    ld a, a
    rst RST_08
    db $db
    db $dd
    and $0d
    sub l
    sbc a
    sub d
    sub [hl]
    sub [hl]
    adc a
    ldh [$ff8a], a
    rst RST_38
    db $ec
    ldh [$fff8], a
    jp hl


    ld a, a
    ldh [$ffe0], a
    sub [hl]
    sub d
    ld [$f47f], a
    ld d, $e3
    dec c
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
    jp hl


    rst RST_28
    pop hl
    ld a, a
    ld e, $fd
    ldh [$ff92], a
    or b
    dec c
    rst RST_28
    sub a
    sbc d
    db $fd
    ld h, b
    and l
    and l
    and l
    and c
    rst RST_38
    push hl
    and $f3
    ld a, a
    ldh a, [$ff94]
    push hl

jr_015_52b1:
    sub d
    jp hl


    ld h, e
    ld a, a
    db $e3
    sbc e
    jr jr_015_52b1

    ld h, e
    dec c
    sub c
    ld sp, hl
    sub d
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sub l
    and h
    adc a
    db $e4
    adc a
    db $e4
    adc a
    db $e4
    adc a
    and l
    and l
    and l
    and c
    dec c
    sub e
    sub [hl]
    ldh [c], a
    and $f3
    ld a, a

jr_015_52d8:
    sub c
    sbc h
    or b
    ld a, a
    sbc l
    ld l, l
    rst RST_30
    sbc [hl]
    ldh [$ff8a], a
    rst RST_38
    sub d
    ldh [$ffb0], a
    ld a, a
    db $e4
    ld hl, sp-$16
    dec e
    sbc l
    ldh [$fff2], a
    jp hl


    dec c
    ld h, h
    sub e
    jr jr_015_52d8

    ld a, a
    pop hl
    sub [hl]
    rst RST_30
    db $e4
    ld a, a
    inc e
    sub [hl]
    db $fd
    ld d, $7f
    push hl
    sub d
    adc d
    rst RST_38
    sbc $d7
    cp l
    ld l, l
    ld [hl], $bd
    ld h, e
    ld a, a
    rst RST_08
    call z, $b1a8
    ld h, h
    sub e
    sbc h
    jp hl


    dec c
    ld a, a
    push hl
    sub d
    ld l, h
    sbc d
    sub e
    sbc a
    sub e
    ld a, a
    ld [$9e8f], a
    sub d
    adc d
    inc c
    ld a, a
    sbc h
    adc l
    ld l, [hl]
    sub e
    sbc h
    adc h
    db $e4
    ldh a, [$fff7]
    ld a, [$7ff9]
    ld c, [hl]
    cp l
    dec c
    ld a, a
    db $ec
    ldh [$fff8], a
    ld [$9c7f], a
    ldh [$ff92], a
    ld h, e
    ld a, a
    ld [$998f], a
    db $fd
    adc d
    rst RST_18
    inc c
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
    ld h, e
    ld a, a
    sub l
    sbc d
    adc a
    ldh [$ff7f], a
    inc e
    sbc c
    db $fd
    ld [$f60d], a
    sbc b
    inc e
    ldh [c], a
    jp hl


    ld a, a
    sbc h
    db $fd
    ld l, h
    db $fd
    jp hl


    ld a, a
    ldh a, [$ff60]
    sbc h
    or b
    dec c
    ld b, e
    or [hl]
    ld b, e
    or [hl]
    db $e4
    ld a, a
    sub [hl]
    dec de
    adc a
    ldh [$ffa1], a
    inc c
    sub l
    ld a, [$7fea]
    inc e
    ld l, h
    db $fd
    jp hl


    ld a, a
    or l
    call z, $bda8
    ld h, e
    ld a, a
    sub c
    ldh [c], a
    sub d
    cp d
    and h
    res 4, h
    or b
    ld a, a
    jp hl


    ldh a, [$ffe5]
    ld d, $f7
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    jp hl


    dec c
    sbc d
    db $e4
    or b
    ld a, a
    sub l
    di
    sub d
    ld h, b
    sbc h
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    db $f4
    ldh [c], a
    ld d, $7f
    ld c, d
    and h
    or b
    ld a, a
    sbc c
    sub d
    sub h
    sub d
    sbc h
    db $e3
    sub d
    ld sp, hl
    dec c
    sub d
    adc a
    ld a, [hl]
    sub e
    ld h, e
    ld a, a
    sub c
    sbc b
    ld h, h
    sub d
    ld a, a
    sub [hl]
    add sp, -$6a
    sbc h
    or b
    dec c
    sbc h
    db $e3
    sub d
    ld sp, hl
    jp hl


    ld [$9c7f], a
    adc a
    db $e3
    sub d
    ldh [$ffa1], a
    inc c
    ld h, b
    ld d, $7f
    rst RST_28
    sbc e
    sub [hl]
    ld a, a
    rst RST_08
    call z, $b1a8
    and $7f
    push hl
    adc a
    db $e3
    dec c
    sub c
    db $fd
    push hl
    ld a, a
    ld h, b
    sub d
    sbc a
    ld a, [$7fe0]
    sbc c
    sub d
    sub [hl]
    sbc b
    and $0d
    sub [hl]
    ldh [$fffd], a
    sbc h
    db $e3
    sub d
    ldh [$ffe4], a
    ld [$0c8a], a
    sub l
    sub [hl]
    add hl, de
    ld h, e
    ld a, a
    sub l
    ld a, [$7fea]
    add d
    ld h, h
    di
    ld a, a
    db $eb
    ld h, h
    sub d
    ldh a, [c]
    and $91
    db $fc
    sbc e
    ld a, [$a5e0]
    and l
    and l
    and c
    inc c
    db $e4
    di
    sub c
    ld a, [$1c7f]
    ld l, h
    db $fd
    jp hl


    ld a, a
    pop hl
    sub h
    db $e4
    ld a, a
    push af
    sub e
    sub a
    db $e4
    sbc d
    sub e
    ld h, h
    sub e
    ld hl, sp-$72
    sbc b
    ld h, e
    ld a, a
    db $ec
    ldh [$ffe0], a
    ld l, e
    ld a, a
    sbc d
    sub e
    sbc h
    db $e3
    inc e
    push af
    sub e
    or b
    ld a, a
    db $e4
    ld hl, sp-$0d
    ld h, h
    sbc h
    ldh [$ffe9], a
    ld h, b
    adc d
    inc c
    sub l
    ld a, [$7fea]
    sbc l
    sbc d
    sbc h
    ld a, a
    sbc e
    ldh a, [c]
    ldh [$ff7f], a
    and $16
    sbc b
    db $e3
    dec c
    sbc d
    sub d
    ld a, a
    cp d
    and h
    res 4, h
    or b
    ld a, a
    jp hl


    ldh a, [$ffee]
    sbc h
    db $e3
    dec c
    xor $98
    sbc a
    sub h
    db $fd
    ld h, b
    and l
    and l
    and l
    and c
    inc c
    dec c
    dec c
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
    ld a, a
    and l
    and l
    and l
    sub l
    db $fc
    ld hl, sp-$01
    sbc b
    rst RST_30
    sub d
    ld a, a
    ld c, d
    and h
    jp hl


    ld a, a
    push hl
    sub [hl]
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
    ld h, b
    and c
    rst RST_38
    xor $9a
    ld hl, sp-$50
    ld a, a
    sub [hl]
    ld l, h
    adc a
    ldh [$ff7f], a
    or [hl]
    or e
    db $dd
    ret nz

    and h
    ld h, b
    and c
    dec c
    ld a, [$9c97]
    ld d, $7f
    sub [hl]
    db $fd
    inc e
    rst RST_30
    ld a, [$a5f9]
    and l
    and l
    and c
    rst RST_38
    ret z

    ld c, d
    ret z

    ld c, d
    sbc h
    ldh [$ff7f], a
    sbc b
    di
    jp hl


    sbc l
    ld h, b
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
    ld a, a
    sbc h
    adc [hl]
    sub e
    sbc d
    db $eb
    db $fd
    ld d, $0d
    ldh [$fff8], a
    push hl
    sub [hl]
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    and l
    and l
    and l
    and c
    rst RST_38
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
    dec c
    ld b, h
    or c
    ld h, b
    and c
    rst RST_38
    sbc l
    ld h, e
    and $7f
    sub d
    adc a
    ld a, d
    sub d
    ld h, e
    ld a, a
    sbc d
    ld a, [$1c92]
    adc [hl]
    sub e
    ld [$ea0d], a
    sub d
    rst RST_30
    push hl
    sub d
    and c
    rst RST_38
    and l
    and l
    and l
    db $f4
    ldh a, [c]
    ldh [$ffee], a
    sub e
    ld d, $7f
    or $9b
    sbc a
    sub e
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
    ldh [$fff9], a
    jp hl


    ld a, a
    sbc [hl]
    db $fd
    ld h, b
    and c
    dec c
    sbc d
    sbc d
    sub [hl]
    rst RST_30
    ld a, a
    call c, $ddb2
    ld d, $7f
    ld h, e
    ld sp, hl
    or $93
    and $0d
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
    db $fd
    ld h, b
    push hl
    and c
    rst RST_38
    call c, $ddb2
    jp hl


    ld a, a
    ldh [$fff9], a
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
    rst RST_38
    sub c
    ld a, [$8b8f]
    dec c
    ldh a, [rNR22]
    ld [$e99c], a
    ld a, a
    pop hl
    adc l
    sub e
    sub l
    sub e
    jp hl


    ld a, a
    ld h, b
    db $fd
    and $91
    ld sp, hl
    ld c, e
    db $dd
    ld [$ee7f], a
    sbc d
    ld hl, sp-$50
    ld a, a
    sub [hl]
    ld l, h
    adc a
    db $e3
    sub d
    push hl
    sub d
    rra
    adc d
    rst RST_38
    sub e
    sbc h
    ei
    and $7f
    sub [hl]
    sub d
    ld h, b
    db $fd
    ld d, $7f
    sub c
    ld sp, hl
    and c
    rst RST_38
    db $eb
    ldh a, [$ffe2]
    jp hl


    ld a, a
    ldh [c], a
    sub e
    ei
    ld d, $7f
    sub c
    rst RST_30
    db $fc
    ld a, [$a1e0]
    rst RST_38
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
    and l
    and l
    and l
    adc e
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
    db $eb
    db $e4
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
    rst RST_38
    inc e
    adc h
    jr @-$1d

    or b
    ld a, a
    db $eb
    add sp, -$71
    ldh [$ffa1], a
    dec c
    ld h, e
    di
    ld a, a
    call c, $ddb2
    ld [$637f], a
    db $e3
    sbc d
    push hl
    sub d
    and l
    and l
    and l
    and c
    dec c
    pop hl
    sub h
    adc a
    adc d
    rst RST_38
    inc e
    adc h
    jr @-$1d

    ld [$eb7f], a
    add sp, -$71
    db $e3
    sub c
    ld sp, hl
    and c
    dec c
    ld h, e
    di
    ld a, a
    call c, $ddb2
    ld [$637f], a
    db $e3
    sbc d
    push hl
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    scf
    and h
    xor a
    db $e4
    sub d
    sub e
    ld a, a
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
    ld a, [$8ae0]
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

Call_015_7f63:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_015_7faf:
    nop

Call_015_7fb0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_015_7ff3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
