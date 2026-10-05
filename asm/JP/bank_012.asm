; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

    nop
    ld b, c
    add b
    ld b, c
    jr c, jr_012_4048

    and d
    ld b, e
    add hl, de
    ld b, h
    ld sp, $4444
    ld b, h
    ld d, [hl]
    ld b, h
    sub d
    ld b, h
    and l
    ld b, h
    cp b
    ld b, h
    db $ec
    ld b, h
    db $10
    ld b, l
    ld hl, $2245
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld e, l
    ld b, [hl]
    sbc b
    ld b, [hl]
    xor e
    ld b, [hl]
    rst RST_00
    ld b, [hl]
    and $46
    ei
    ld b, [hl]
    ld sp, $5e47
    ld b, a
    add e
    ld b, a
    sub d
    ld b, a
    or $47
    add d
    ld c, b
    jp nz, $d948

    ld c, b
    rst RST_30
    ld c, b
    ld e, $49
    ld l, b
    ld c, c
    add e
    ld c, c
    adc [hl]
    ld c, c

jr_012_4048:
    and d
    ld c, c
    adc $49
    dec d
    ld c, d
    ld [hl], l
    ld c, d
    sub h
    ld c, d
    sbc [hl]
    ld c, d
    call nz, $cf4a
    ld c, d
    rst RST_28
    ld c, d
    ld a, [$124a]
    ld c, e
    ld l, $4b
    xor [hl]
    ld c, e
    pop hl
    ld c, e
    inc l
    ld c, h
    ld e, c
    ld c, h
    reti


    ld c, h
    rlca
    ld c, l
    ld [hl+], a
    ld c, l
    dec [hl]
    ld c, l
    ld c, d
    ld c, l
    ld e, e
    ld c, l
    ld [hl], e
    ld c, l
    sbc l
    ld c, l
    xor l
    ld c, l
    rst RST_10
    ld c, l
    sub l
    ld c, [hl]
    dec bc
    ld c, a
    dec a
    ld c, a
    inc sp
    ld d, c
    ld h, c
    ld d, c
    db $ec
    ld d, c
    ld a, [hl-]
    ld d, d
    ld b, e
    ld d, d
    ld e, c
    ld d, d
    adc h
    ld d, d
    or h
    ld d, d
    cp a
    ld d, d
    pop de
    ld d, d
    db $e4
    ld d, d
    nop
    ld d, e
    dec c
    ld d, e
    jr nz, jr_012_40f1

    scf
    ld d, e
    ld a, b
    ld d, e
    sbc h
    ld d, e
    rst RST_10
    ld d, e
    db $ec
    ld d, e
    ld sp, hl
    ld d, e
    inc c
    ld d, h
    add hl, hl
    ld d, h
    ld c, d
    ld d, h
    ld e, [hl]
    ld d, h
    ld [hl], l
    ld d, h
    adc h
    ld d, h
    sbc b
    ld d, h
    pop de
    ld d, h
    xor $54
    rla
    ld d, l
    ld d, b
    ld d, l
    ld [hl], l
    ld d, l
    add l
    ld d, l
    sub a
    ld d, l
    xor d
    ld d, l
    ld hl, $a856
    ld d, [hl]
    db $ed
    ld d, [hl]
    ld hl, sp+$56
    ld [de], a
    ld d, a
    ld [hl+], a
    ld d, a
    ld d, a
    ld d, a
    add b
    ld d, a
    sub l
    ld d, a
    call $1557
    ld e, b
    ld d, c
    ld e, b
    sbc a
    ld e, b
    cp e
    ld e, b
    sub $58
    db $fc
    ld e, b
    rlca
    ld e, c
    ld [de], a
    ld e, c
    ccf
    ld e, c
    ld h, b
    ld e, c
    ld [hl], e

jr_012_40f1:
    ld e, c
    add e
    ld e, c

jr_012_40f4:
    sub h
    ld e, c
    cp e
    ld e, c
    jp nc, $f459

    ld e, c
    inc c
    ld e, d
    dec h
    ld e, d
    db $ec
    db $e4
    ld a, a
    ldh a, [c]
    ld d, $9b
    ldh a, [c]
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sub e
    adc a
    adc d
    dec c
    sub c
    ldh [$ffef], a
    jp hl


    ld a, a
    sub e
    sbc h
    ei
    ld d, $7f
    dec a
    or a
    dec a
    or a
    sbc l
    ld sp, hl
    adc d
    inc c
    sub l
    ld a, [$7fea]
    sub l
    sbc a
    ld sp, hl
    sub l
    sbc a
    ld sp, hl
    ld a, a
    inc e
    ld l, h
    db $fd
    jp hl


    dec c
    push hl
    rst RST_28
    sub h
    or b
    ld a, a
    sub l
    di
    sub d
    ld h, b
    sbc h
    db $e3
    ldh a, [$ffe0]
    and l
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    or h
    and h
    cp l
    and l
    jp z, Jump_012_43a4

    xor b
    db $dd
    jr c, jr_012_40f4

    dec c
    sbc d
    db $fd
    ld h, h
    ld [$957f], a
    ld l, [hl]
    sub h
    db $e3
    ld a, a
    sub d
    ld sp, hl
    or $93
    ld h, b
    and c
    inc c
    sbc a
    ld a, [$9ce6]
    db $e3
    di
    ld a, a
    sbc d
    sbc d
    ld [$647f], a
    sbc d
    ld h, b
    adc e
    dec c
    and l
    and l
    and l
    ldh [$ff9c], a
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    cp h
    or [hl]
    ld a, [hl-]
    jp hl


    ld a, a
    or c
    ld e, d
    and h
    call nz, Call_012_7fe6
    sub d
    ldh [$ff0d], a
    ld [$e51d], a
    jp hl


    and $a5
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    sbc a
    sub e
    sub [hl]
    adc d
    dec c
    sub l
    di
    sub d
    ld h, b
    sbc h
    ldh [$ff1f], a
    adc d
    adc d
    inc c
    sbc a
    sbc d
    ld h, e
    ld a, a
    sub l
    sbc a
    db $fc
    ld a, [$7fe3]
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
    jp hl


    dec c
    adc $c3
    reti


    and $7f
    ldh [c], a
    ld a, [$9ae3]
    rst RST_30
    ld a, [$fde0]
    ld h, b
    adc d
    inc c
    sbc a
    sbc h
    db $e3
    ld a, a
    rst RST_28
    ld sp, hl
    ld [$9660], a
    and $9b
    ld a, [$6c7f]
    sub a
    di
    dec c
    db $e4
    rst RST_30
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sbc a
    jp hl


    sub c
    db $e4
    and l
    and l
    and l
    sbc a
    sub e
    ld h, b
    adc d
    inc c
    sbc d
    jp hl


    adc $c3
    reti


    jp hl


    ld a, a
    or l
    and h
    push bc
    and h
    ld h, e
    ld a, a
    rst RST_08
    call z, $b1a8
    jp hl


    ld c, [hl]
    cp l
    ld h, e
    di
    sub c
    ld sp, hl
    ld a, a
    or c
    db $dd
    cp a
    add $a4
    and l
    rst RST_08
    db $db
    db $dd
    ld d, $0d
    db $f4
    adc a
    db $e3
    sub a
    ldh [$fffd], a
    ld h, b
    and l
    and l
    and l
    adc d
    inc c
    rst RST_08
    db $db
    db $dd
    ld [$9a7f], a
    sub e
    sub d
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sbc $97
    ldh a, [$ffe9]
    ld a, a
    sbc h
    ldh [$ff9c], a
    sub d
    ld a, a
    push af
    sub e
    inc e
    db $fd
    ld h, e
    sub c
    adc a
    ldh [$ff7f], a
    inc a
    xor [hl]
    and h
    and l
    cp h
    and h
    add hl, sp
    reti


    ld [$fc7f], a
    ldh [$ff9c], a
    jp hl


    dec c
    ld a, a
    ld l, h
    sub [hl]
    ld h, e
    ld a, a
    cp h
    or [hl]
    ld a, [hl-]
    or b
    ld a, a
    rst RST_28
    sub [hl]
    sbc [hl]
    db $e3
    sub d
    ldh [$ffa1], a
    inc c
    ld a, a
    ld h, b
    ld d, $7f
    sub a
    ldh a, [$fff3]
    ld a, a
    sbc h
    adc a
    db $e3
    jp hl


    db $e4
    sub l
    ld hl, sp+$0d
    ld a, a
    db $f4
    ldh [c], a
    ld [$9b7f], a
    sub a
    ld a, [de]
    ei
    ld a, a
    db $ec
    sub e
    db $fd
    and $f3
    dec c
    ld a, a
    sbc d
    ei
    sbc e
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    inc c
    ld a, a
    sbc a
    ld a, [$7fea]
    rst RST_28
    sub c
    ld a, a
    sub d
    sub d
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    sub e
    db $fd
    ldh a, [c]
    sub d
    ld h, b
    adc a
    ldh [$ffe9], a
    ld h, b
    ei
    sub e
    sbc e
    and c
    inc c
    ld a, a
    ld h, b
    ld d, $7f
    db $f4
    ldh [c], a
    ld d, $7f
    sbc h
    db $fd
    ld h, e
    sbc h
    rst RST_28
    adc a
    db $e3
    sub [hl]
    rst RST_30
    dec c
    ld a, a
    db $eb
    db $e4
    ldh [c], a
    ld a, a
    sbc d
    rst RST_28
    adc a
    ldh [$ff9a], a
    db $e4
    ld d, $0d
    ld a, a
    sub l
    sbc d
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    ld a, a
    db $f4
    ldh [c], a
    and $7f
    sub c
    dec e
    sbc c
    db $e3
    sub d
    ldh [$ff0d], a
    ld a, a
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
    push af
    sbc b
    sub h
    ld d, $0d
    ld a, a
    db $fc
    sub [hl]
    rst RST_30
    push hl
    sbc b
    push hl
    adc a
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffe9], a
    ld h, b
    and c
    inc c
    ld a, a
    and l
    and l
    and l
    sbc a
    sbc d
    ld h, e
    and l
    and l
    and l
    ld h, b
    and c
    inc c
    ld a, a
    sub d
    pop hl
    db $f4
    sbc b
    ld a, a
    ldh a, [c]
    sub d
    ldh [$fffd], a
    db $e3
    sub d
    db $e4
    ld a, a
    or $6a
    ld a, [$7ff9]
    or $93
    and $e5
    adc a
    ldh [$ff7f], a
    sub a
    ldh a, [$ffe6]
    ld a, a
    sbc a
    jp hl


    sub [hl]
    add sp, -$50
    dec c
    ld a, a
    ldh a, [$ffe2]
    sbc c
    ld h, b
    sbc h
    db $e3
    ld a, a
    di
    rst RST_30
    sub d
    ldh [$ff92], a
    and c
    inc c
    ld a, a
    sub a
    add hl, de
    db $fd
    ld [$817f], a
    sbc h
    adc l
    sub e
    sub [hl]
    db $fd
    adc d
    inc c
    ld a, a
    sub l
    adc a
    db $e4
    adc d
    dec c
    ld a, a
    and $19
    or $93
    db $e4
    sbc h
    db $e3
    di
    ld a, a
    pop af
    ld h, b
    ld h, b
    and c
    inc c
    ld a, a
    db $fc
    ldh [$ff9c], a
    jp hl


    ld a, a
    ld l, h
    sub [hl]
    jp hl


    ld a, a
    sub h
    inc e
    sub a
    and $0d
    ld a, a
    push hl
    ld hl, sp-$20
    sbc b
    push hl
    sbc c
    ld a, [$7f6a]
    sub a
    add hl, de
    db $fd
    push hl
    sub d
    and $0d
    ld a, a
    add c
    add c
    add d
    add b
    add b
    add b
    ld b, h
    reti


    or b
    ld a, a
    di
    adc a
    db $e3
    sbc d
    sub d
    adc d
    rst RST_18
    rst RST_38
    sub c
    sub c

Jump_012_43a4:
    and l
    and l
    and l
    sbc a
    sub e
    sub [hl]
    and c
    dec c
    sub l
    ld a, [$7fea]
    and $19
    or $93
    db $e4
    sbc h
    db $e3

jr_012_43b7:
    ld a, a
    sub c
    ldh [$ffef], a
    or b
    dec c
    push hl
    jr jr_012_43b7

    ld a, [$fde0]
    ld h, b
    adc a
    ldh [$ffe5], a
    and l
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    ld h, h
    sub e
    db $f4
    rst RST_30
    ld a, a
    sub l
    ld a, [$7fea]
    rst RST_28
    ldh [$ff9c], a
    db $e3
    di
    dec c
    ldh [$ff92], a
    db $ed
    db $fd
    push hl
    sbc d
    db $e4
    and $7f
    rst RST_28
    sub a
    sbc d
    rst RST_28
    ld a, [$0de3]
    sbc h
    rst RST_28
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    inc c
    and l
    and l
    and l
    cp h
    and h
    add hl, sp
    reti


    ld d, $7f
    di
    adc a
    db $e3
    sub d
    ldh [$ff7f], a
    sub [hl]
    add sp, -$50
    sbc e
    ld d, $9d
    sbc h
    sub [hl]
    push hl
    sub d
    or $93
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    push hl
    sbc e
    sbc c
    push hl
    sub d
    sbc d
    db $e4
    and $7f
    sub l
    ld a, [$7fea]
    sub d
    rst RST_28
    dec c
    sbc l
    adc a
    ld a, d
    ld h, b
    sub [hl]
    ld h, b
    and c
    rst RST_38
    sub [hl]
    ld [$9cfd], a
    db $fd
    ld [$3d7f], a
    ld c, [hl]
    db $dd
    or b
    ld a, a
    ld [$e392], a
    sub d
    ld sp, hl
    and c
    rst RST_38
    sbc c
    sub d
    sub [hl]
    db $fd
    jp hl


    ld a, a
    sbc [hl]
    sub d
    db $ec
    sbc b
    or b
    ld a, a
    sub a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sub l
    db $e4
    sbc d
    ld [$987f], a
    ld l, e
    or b
    ld a, a
    or $9a
    and $ec
    adc a
    db $e3
    dec c
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $91
    ld hl, sp+$16
    db $e4
    sub e
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    ld h, e
    di
    ld a, a
    xor $64
    sbc d
    sbc h
    or b
    ld a, a
    sub e
    sbc c
    ld sp, hl
    xor $64
    dec c
    ld a, a
    sbc d
    rst RST_28
    adc a
    db $e3
    sub d
    push hl
    sub d
    or $8a
    rst RST_18
    rst RST_38
    sub e
    sbc l
    rla
    ldh [$ffe5], a
    sub d
    ld a, a
    ld c, d
    cp l
    reti


    and h
    pop de
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    rst RST_38
    sub e
    sbc l
    or $1a
    ld a, [$7fe0]
    pop hl
    sub d
    sbc e
    push hl
    ld a, a
    or $98
    sbc a
    sub e
    ld h, b
    and c
    rst RST_38
    sbc d
    sbc d
    ld [$d77f], a
    cp l
    ld l, l
    ld [hl], $bd
    sub h
    sub a
    jp hl


    dec c
    and $f3
    ldh [c], a
    sub c
    dec e
    sub [hl]
    ld hl, sp-$64
    adc [hl]
    ld h, b
    and c
    inc c
    sub l
    db $e4
    sbc d
    ld d, $7f
    or [hl]
    or e
    db $dd
    ret nz

    and h
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, e
    dec c
    sub d
    add sp, -$0f
    ld hl, sp-$50
    sbc h
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sbc $91
    dec e
    sub [hl]
    ld hl, sp-$64
    adc [hl]
    sub e
    db $e4
    ld a, a
    and $f3
    ldh [c], a
    or b
    dec c
    ld a, a
    sbc d
    sub e
    sub [hl]
    db $fd
    sub d
    ldh [$ff9c], a
    rst RST_28
    sbc l
    and c
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
    ld e, d
    db $dd
    call z, $afda
    call nz, Call_012_7fb0
    sub d
    ld a, [$7ff9]
    ld [$609a], a
    and c
    rst RST_38
    and l
    and l
    and l
    or [hl]
    ld [hl], $d0
    and $ea
    ld a, a
    sub l
    ld a, [$7fe9]
    sub [hl]
    sub l
    ld d, $0d
    sub e
    ldh [c], a
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    and l
    and l
    and l
    db $f4
    ldh [c], a
    ld a, [$e5e0]
    and l
    and l
    and l
    and c
    dec c
    sub c
    jp hl


    ld a, a
    sub c
    sbc b
    pop af
    jp hl


    or $93
    push hl
    ld a, a
    inc e
    sbc c
    db $fd
    jp hl


    dec c
    sbc [hl]
    sub d
    ld h, b
    ei
    sub e
    and l
    and l
    and l
    and c
    inc c
    sub c
    jp hl


    db $e4
    sub a
    ld a, a
    sub a
    sub l
    sbc b
    sbc a
    sub e
    sbc h
    ldh [c], a
    ld h, b
    adc a
    ldh [$ff0d], a
    sub l
    ld a, [$7fea]
    ld c, d
    and h
    jp hl


    ld a, a
    or l
    and h
    push bc
    and h
    ld h, e
    sub c
    ld sp, hl
    dec c
    inc a
    xor [hl]
    and h
    and l
    cp h
    and h
    add hl, sp
    reti


    or b
    ld a, a
    sbc d
    ei
    sbc h
    ldh [$ff0d], a
    sub e
    ldh [rNR21], a
    sub d
    or b
    ld a, a
    sub [hl]
    sbc c
    rst RST_30
    ld a, [$a5e0]
    and l
    and l
    and c
    inc c
    sbc e
    db $fd
    dec de
    db $fd
    ld a, a
    sbc b
    ei
    sub e
    sbc h
    db $e3
    ld a, a
    or $93
    db $f4
    sbc b
    dec c
    sub l
    ld a, [$7fe9]
    pop af
    inc e
    ldh [c], a
    or b
    ld a, a
    sbc h
    adc [hl]
    sub e
    ldh a, [c]
    sub d
    sbc h
    dec c
    sbc h
    db $fd
    ld [$e6fd], a
    db $fd
    or b
    ld a, a
    sub c
    ld l, d
    sub d
    ldh [$ffe9], a
    ld h, b
    and l
    and l
    and l
    and c
    inc c
    sbc a
    ld a, [$e9e5]
    and $7f
    sbc d
    db $fd
    ld h, h
    ld [$bc7f], a
    and h
    add hl, sp
    reti


    ld d, $0d
    push hl
    sbc b
    sbc h
    ldh [$ff7f], a
    sub [hl]
    add sp, -$17
    ld a, a
    sbc d
    db $e4
    ld h, e
    ld a, a
    rst RST_28
    ldh [$fff3], a
    db $f4
    dec c
    ld a, [hl-]
    ret nz

    ld a, [hl-]
    ret nz

    and $7f
    rst RST_28
    sub a
    sbc d
    rst RST_28
    ld a, [$92e3]
    ld sp, hl
    and c
    inc c
    and l
    and l
    and l
    sub l
    ld a, [$e38f]
    ld a, a
    ldh [c], a
    sbc b
    ld h, d
    sbc b
    ld a, a
    db $ec
    sbc d
    sub e
    push hl
    dec c
    sub l
    db $e4
    sbc d
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    db $f4
    ldh [c], a
    ld a, [$7fe0]
    sub l
    ld a, [$7fe9]
    sub [hl]
    sub l
    ld d, $7f
    db $fc
    ld a, [$0de0]
    or [hl]
    ld [hl], $d0
    and $7f
    sub e
    ldh [c], a
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sub a
    db $fd
    rra
    sbc b
    sbc [hl]
    sub d
    jp hl


    ld a, a
    ret nz

    or l
    reti


    sub [hl]
    sbc c
    ld h, b
    and c
    rst RST_38
    ldh a, [rNR33]
    ld d, $7f
    push hl
    ld d, $fa
    ld h, e
    db $e3
    sub d
    ld sp, hl
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
    or b
    ld a, a
    ldh [$ffe3], a
    db $e3
    ld a, a
    push af
    ld d, $0d
    push hl
    ld d, $fa
    ld h, e
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    cp h
    xor h
    call c, $b0a4
    ld a, a
    sub c
    ld l, e
    ld a, [$7f6a]
    or d
    call nc, $9ae5
    db $e4
    di
    dec c
    db $fc
    sbc l
    ld a, [$faf7]
    ld sp, hl
    ld h, b
    ei
    sub e
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    add sp, -$71
    db $e4
    sub e
    sub [hl]
    rst RST_30
    ld a, a
    push af
    add hl, de
    ld d, $7f
    sub c
    ld d, $8f
    db $e3
    sub d
    ld sp, hl
    and c

jr_012_46aa:
    rst RST_38
    or $1a
    ld a, [$7fe4]
    sbc h
    db $fc
    ld h, e
    ld a, a
    sub $da
    sub $da
    and $e5
    adc a
    ldh [$ff0d], a
    call nz, $ddda
    pop bc
    cp d
    and h
    call nz, $a160
    rst RST_38
    sbc h
    db $fc
    ld h, b
    rst RST_30
    sbc c
    jp hl


    ld a, a
    jr c, jr_012_46aa

    and h
    jp hl


    ld a, a
    dec a
    ld c, [hl]
    db $dd
    ld h, b
    and c
    dec c
    ld e, [hl]
    cp c
    xor a
    call nz, Call_012_7f16
    ldh [c], a
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ldh [c], a
    sub [hl]
    sub d
    db $ec
    ld sp, hl
    sbc e
    ld a, [$7fe0]
    sub [hl]
    db $fc
    sbc [hl]
    sub d
    jp hl


    dec c
    sbc e
    sub d
    db $ec
    ld h, b
    and c
    rst RST_38
    sub l
    db $e4
    sbc d
    ld [$977f], a
    di
    pop hl
    or $9b
    sbc a
    sub e
    and $0d
    add sp, -$0f
    adc a
    db $e3
    sub d
    ld sp, hl
    and l
    and l
    and l
    and c
    inc c
    and $f3
    ldh [c], a
    or b
    ld a, a
    sub c
    dec e
    sbc c
    ld sp, hl
    db $eb
    db $e4
    ld d, $7f
    sub d
    push hl
    sbc b
    db $e3
    dec c
    set 1, a
    push hl
    db $fd
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    sub c
    ld hl, sp-$14
    ld a, [$7fe0]
    cp l
    and h
    jp nz, $a4b9

    cp l
    ld h, b
    and c
    dec c
    sub a
    db $fd
    jp hl


    ld a, a
    di
    inc e
    ld h, e
    ld a, a
    sbc $02
    and l
    and a
    rst RST_18
    db $e4
    dec c
    or d
    add $bc
    xor h
    reti


    ld d, $7f
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sbc $d7
    xor a
    or a
    and h
    ld b, b
    or d
    cp l
    adc $c3
    reti


    ld a, a
    ld bc, $b67f
    inc a
    ret


    rst RST_18
    db $e4
    ld a, a
    sbc h
    sbc h
    adc l
    sub e
    ld d, $7f
    sbc h
    db $e3
    sub c
    ld sp, hl
    ld a, a
    ret nz

    or l
    reti


    ld h, b
    and c
    rst RST_38
    sub l
    ld a, [$7fe9]
    or c
    ld e, d
    and h
    call nz, Call_012_7fe9
    or [hl]
    scf
    ld h, b
    and c
    rst RST_38
    sub d
    ei
    sub c
    sbc [hl]
    ldh [$ff7f], a
    sbc h
    db $fd
    ld l, h
    db $fd
    jp hl


    ld a, a
    sub a
    ld hl, sp-$19
    sub a
    ld h, b
    and c
    inc c
    sub l
    ld a, [$7f16]
    ld c, [hl]
    cp b
    cp e
    and h
    ld h, b
    adc a
    ldh [$ff9a], a
    ei
    jp hl


    dec c
    sub a
    inc e
    ld h, b
    and c
    inc c
    sub l
    ld a, [$7fe4]
    cp l
    ld e, d
    and h
    ret c

    db $dd
    jr c, jr_012_481e

    and h
    call nz, $a4c5
    jp hl


    dec c
    reti


    and h
    ld b, e
    xor b
    and h
    and l
    or [hl]
    call c, $bdd9
    or a
    ld d, $7f
    sub d
    adc a
    sbc h
    adc [hl]
    and $9c
    adc h
    sbc h
    db $fd
    and $7f
    sub e
    ldh [c], a
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    push hl
    ldh [c], a
    sub [hl]
    sbc h
    sub d
    push hl
    sub c
    and l
    and l
    and l
    and c
    rst RST_38
    ld a, [de]
    sbc b
    ld a, a
    sbc e
    sub d
    sub a
    db $fd
    jp hl


    ld a, a
    sbc h
    db $fd
    ld l, h
    db $fd
    jp hl


    dec c
    sub a
    ld hl, sp-$19
    sub a
    ld h, b
    and c
    dec c
    ldh a, [$ff60]
    sbc h
    ld [$a5a5], a
    and l
    inc c
    sbc $b4
    and h
    cp l
    and l
    jp z, Jump_012_43a4

    xor b
    db $dd

jr_012_481e:
    jr c, @+$81

    pop af
    dec de
    sub d
    adc d
    dec c
    ld a, a
    sbc h
    ld hl, sp-$1e
    ldh [$fffd], a
    db $e3
    sub d
    ld d, $7f
    ldh a, [rNR33]
    sub [hl]
    rst RST_30
    dec c
    ld a, a
    pop af
    inc e
    ldh [c], a
    or b
    ld a, a
    sbc h
    adc [hl]
    sub e
    ldh a, [c]
    sub d
    sbc l
    ld sp, hl
    adc d
    rst RST_18
    inc c
    inc e
    sbc c
    db $fd
    jp hl


    ld a, a
    ld l, h
    ldh [$ff92], a
    db $e4
    push hl
    adc a
    ldh [$ff7f], a
    ld c, d
    and h
    jp hl


    dec c
    inc e
    adc l
    sub e
    sbc h
    adc [hl]
    ld d, $7f
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    sbc $bc
    or [hl]
    ld a, [hl-]
    ld a, a
    or d
    ret c

    ret


    or d
    sbc h
    adc l
    sub e
    dec c
    ld a, a
    cp e
    or e
    cp l
    ld a, l
    or l
    ret c

    or c
    ld h, h
    sub l
    ld hl, sp+$7f
    add c
    add b
    add [hl]
    add b
    rst RST_18
    rst RST_38
    sub l
    ld a, [$7fe9]
    sub e
    db $fd
    db $e3
    db $fd
    ldh a, [c]
    db $fd
    sub a
    adc [hl]
    sbc h
    adc [hl]
    sub e
    ld h, b
    and c
    inc c
    sbc $b4
    and h
    cp l
    and l
    jp z, Jump_012_43a4

    xor b
    db $dd
    jr c, jr_012_48ad

    ld a, a
    cp h
    or [hl]
    ld a, [hl-]
    ld a, a
    or d
    ret c

    ret


    or d
    sbc h
    adc l
    sub e
    dec c

jr_012_48ad:
    ld a, a
    or e
    or h
    cp l
    call nz, $43b1
    xor b
    cp a
    db $dd
    ld h, h
    sub l
    ld hl, sp+$0d
    ld a, a
    add d
    add b
    add e
    add h
    rst RST_18
    rst RST_38
    or [hl]
    rst RST_10
    and $e5
    adc a
    ldh [$ff7f], a
    rst RST_10
    xor a
    or a
    and h
    cp l
    call nz, $b2d7
    cp b
    jp hl


    dec c
    ld [$609a], a
    and c
    rst RST_38
    sub e
    db $fc
    and h
    adc a
    adc d
    dec c
    dec e
    sub d
    ld l, h
    db $fd
    ld a, a
    or $1a
    ld a, [$e9f3]
    or b
    dec c
    ldh [$fff2], a
    sbc d
    db $fd
    ld h, b
    push hl
    sub c
    and l
    and l
    and l
    and c
    rst RST_38
    sub c
    ldh [$ffef], a
    sub [hl]
    rst RST_30
    ld a, a
    ldh a, [rNR33]
    or b
    ld a, a
    sub [hl]
    ld l, h
    adc a
    ldh [$ffa1], a
    inc c
    ldh [c], a
    ldh a, [c]
    ldh [$ffa4], a
    sub d
    adc a
    adc d
    dec c
    ld h, e
    di
    ld a, a
    cp l
    xor a
    or a
    ret c

    sbc h
    ldh [$ffe5], a
    and l
    and l
    and l
    and c
    rst RST_38
    sub c
    ldh [$ffef], a
    sub [hl]
    rst RST_30
    ld a, a
    push af
    or b
    ld a, a
    sub [hl]
    ld l, h
    adc a
    ldh [$ffa1], a
    inc c
    sub e

jr_012_492e:
    and h
    db $fd
    and l
    and l
    and l
    adc d
    dec c
    pop hl
    adc [hl]
    sub e
    ld h, h
    sub d
    sub d
    ld a, a
    sub l
    db $fd
    ld h, h
    ld h, b
    and l
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    sbc a
    sub e
    sub d
    sub h
    ld l, d
    ld a, a
    sbc e
    sub d
    ld a, [de]
    and $7f
    sub [hl]
    ldh a, [$ffb0]
    dec c
    sub c
    rst RST_30
    adc a
    ldh [$ffe9], a
    ld [$927f], a
    ldh [c], a
    jp hl


    sbc d
    db $e4
    ld h, b
    adc a
    sbc c
    and c
    rst RST_38
    sub c
    ldh [$ffef], a
    sub [hl]
    rst RST_30
    ld a, a
    add sp, -$71
    db $e4
    sub e
    or b
    ld a, a
    sub [hl]
    ld l, h
    adc a
    ldh [$ffa1], a
    inc c
    sub e
    db $fc
    adc a
    pop hl
    pop hl
    pop hl
    adc a
    adc d
    rst RST_38
    ret nz

    or l
    reti


    or b
    ld a, a
    db $eb
    ldh [$ff9c], a
    ldh [$ffa1], a
    rst RST_38
    ret nz

    or l
    reti


    ld h, e
    ld a, a
    db $eb
    ldh [$ff92], a
    jp hl


    ld a, a
    sub c
    sbc [hl]
    or b
    dec c
    rst RST_20
    jr jr_012_492e

    ldh [$ffa1], a
    rst RST_38
    di
    sbc h
    sub [hl]
    sbc h
    ldh [$fff7], a
    ld a, a
    sbc d
    jp hl


    push hl
    sub [hl]
    and $0d
    add c
    add c
    add d
    add b
    add b
    add b
    ld b, h
    reti


    ld d, $7f
    sub [hl]
    sbc b
    sbc e
    ld a, [$0de3]
    sub d
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
    ld h, h
    sbc d
    and $63
    di
    ld a, a
    sub e
    adc a
    db $e3
    sub d
    ld sp, hl
    ld a, a
    sbc h
    ei
    sub d
    dec c
    db $ec
    sub e
    db $e4
    sub e
    ld h, b
    and c
    dec c
    sub c
    db $e3
    push hl
    and $ea
    ld a, a
    sbc d
    sub e
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and l
    and l
    and l
    and c
    inc c
    sbc $d7
    xor a
    or a
    and h
    ld b, b
    or d
    cp l
    adc $c3
    reti


    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    or c

jr_012_4a09:
    db $dd
    cp a
    add $a4
    and l
    rst RST_08
    db $db
    db $dd
    sbc e
    rst RST_28
    rst RST_18
    rst RST_38
    sbc h
    db $fd
    rra
    sub e
    ld d, $7f
    ldh a, [$ff8c]
    sbc b
    sub e
    ldh [c], a
    ldh [rOCPD], a
    and $0d
    sub a
    dec e
    jr jr_012_4a09

    sub [hl]
    rst RST_30
    ld a, a
    sub d
    ei
    sub c
    dec de
    db $f4
    sub [hl]
    push hl
    dec c
    sbc c
    ldh [c], a
    sub h
    sub a
    ld d, $7f
    db $e4
    ld l, e
    ld h, b
    sbc l
    and l
    and l
    and l
    and c
    inc c
    sub c
    sub c
    and l
    and l
    and l
    and c
    dec c
    sub a
    ld d, $a5
    and l
    and l
    db $e4
    sub l
    sbc b
    and l
    push hl
    and l
    and l
    ld sp, hl
    and l
    and l
    and l
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
    sub d
    ld h, b
    ei
    sub e
    and l
    and l
    and l
    and c
    rst RST_38
    call nz, $ddda
    pop bc
    cp d
    and h
    call nz, Call_012_7fb0
    sub a
    ldh [$ffa1], a
    dec c
    xor $e9
    sub [hl]
    and $7f
    ret nz

    ld c, d
    cp d
    jp hl


    ld a, a
    and $95
    sub d
    ld d, $9d
    ld sp, hl
    and c
    rst RST_38
    dec a
    ld c, [hl]
    db $dd
    or b
    ld a, a
    ld [$e092], a
    and c
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    or b
    ld a, a
    db $eb
    ei
    add hl, de
    ld sp, hl
    db $e4
    ld a, a
    db $ec
    ld sp, hl
    sub d
    dec c
    sbc h
    db $fd
    ld l, h
    db $fd
    jp hl


    ld a, a
    sub a
    ld hl, sp-$19
    sub a
    ld d, $7f
    ld [$fd9b], a
    ld h, e
    dec c
    sub c
    adc a
    ldh [$ffa1], a
    rst RST_38
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
    rst RST_38
    sub l
    ld a, [$7fea]
    ld e, e
    cp l
    call nz, $e9d9
    ld a, a
    call nz, $36d8
    and h
    or b
    ld a, a
    db $eb
    sub a
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
    sub l
    ld a, [$a5a5]
    and l
    and c
    dec c
    push hl
    and $b0
    ld a, a
    sbc h
    db $e3
    sub d
    ld sp, hl
    jp hl


    ld h, b
    ei
    sub e
    and l
    and l
    and l
    and c
    rst RST_38
    sbc a
    db $fd
    push hl
    sbc d
    db $e4
    or b
    ld a, a
    sbc h
    db $e3
    di
    dec c
    add c
    add c
    add d
    add b
    add b
    add b
    ld b, h
    reti


    ld [$637f], a
    db $e3
    sbc d
    push hl
    sub d
    and c
    rst RST_38
    cp h
    and h
    add hl, sp
    reti


    ld d, $7f
    db $f4
    sbc [hl]
    ldh [$ff7f], a
    sub l
    db $e4
    sbc d
    db $e4
    dec c
    sub c
    sbc b
    sbc h
    adc l
    or b
    ld a, a
    sbc h
    db $e3
    sub d
    ld sp, hl
    ld a, a
    sbc h
    adc h
    sbc h
    db $fd
    ld h, b

jr_012_4b4d:
    and c
    inc c
    sub e
    sbc h
    ei
    jp hl


    ld a, a
    ldh [$ffe3], a
    di
    jp hl


    and $ea
    dec c
    sbc $d8
    rst RST_10
    or d
    or c
    db $dd
    call nz, $b8a5
    ret c

    and h
    add $dd
    jr c, jr_012_4b4d

    db $fd
    rst RST_18
    dec c
    db $e4
    sub d
    sub e
    ld a, a
    sub [hl]
    db $fd
    ld l, d
    db $fd
    ld d, $7f
    sub [hl]
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    ldh a, [c]
    or b
    ld a, a
    xor $9f
    ldh a, [c]
    db $e3
    ld a, a
    or $98
    ld a, a
    ldh a, [$fff9]
    db $e4
    dec c
    sub l
    db $e4
    sbc d
    jp hl


    ld a, a
    ld e, [hl]
    cp c
    xor a
    call nz, $a4c1
    call z, $eae6
    dec c
    sbc $a9
    and l
    call $e4df
    ld a, a
    rst RST_20
    sub d
    db $e4
    ld hl, sp+$16
    ld a, a
    sub c
    ld sp, hl
    and c
    rst RST_38
    dec e
    sub d
    ld l, h
    db $fd
    ld a, a
    sbc [hl]
    rst RST_28
    sbc b
    db $e3
    ld a, a
    sub a
    ldh [$ffe5], a
    sub d
    dec c
    ld l, l
    xor a
    ld b, h
    reti


    and h
    pop de
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    inc c
    sbc d
    sbc d
    ld [$917f], a
    rst RST_28
    ld hl, sp+$7f
    sub d
    sub d
    adc $c3
    reti


    ld h, e
    ld [$e50d], a
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    sbc d
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    jp hl


    ld a, a
    sbc d
    db $e4
    or b
    ld a, a
    sbc h
    rst RST_30
    ld l, l
    ld a, [$0d6a]
    sub [hl]
    add sp, -$17
    ld a, a
    sub c
    ld hl, sp-$6a
    ld d, $7f

jr_012_4bfc:
    db $fc
    sub [hl]
    ld sp, hl
    sub [hl]
    di
    dec c
    sbc h
    ld a, [$92e5]
    and l
    and l
    and l
    and c
    inc c
    push hl
    db $fd
    db $e4
    sub [hl]
    sbc h
    db $e3
    ld a, a
    cp b
    ret c

    and h
    add $dd
    jr c, jr_012_4bfc

    db $fd
    and $0d
    sbc h
    jp hl


    ld l, e
    sbc d
    ldh a, [c]
    push hl
    sub d
    ld h, b
    ei
    sub e
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    and l
    and l
    and l
    adc d
    adc d
    adc d
    adc d
    adc d
    inc c
    ld h, h
    sbc d
    sub [hl]
    rst RST_30
    sub [hl]
    ld a, a
    db $f4
    sbc l
    adc a
    ld a, [hl]
    sub d
    ld a, a
    cp l
    and h
    jp nz, $97b0

    ldh [$ff95], a
    db $e4
    sbc d
    ld d, $7f
    sub c
    rst RST_30
    db $fc
    ld a, [$7fe3]
    sbc d
    sub e
    sub d
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc $95
    ld a, [$7fea]
    cp l
    call nz, Call_000_3ca4
    and h
    and l
    rst RST_08
    and h
    pop bc
    db $dd
    and c
    dec c
    ld a, a
    sub l
    rst RST_28
    sub h
    or b
    ld a, a
    sub [hl]
    db $fd
    sbc h
    sbc h
    ei
    db $e4
    ld a, a
    ld c, [hl]
    cp l
    and $0d
    ld a, a
    ldh a, [c]
    sub d
    ld a, [$9b92]
    ld a, [$fde0]
    ld h, b
    and c
    inc c
    ld a, a
    di
    sbc h
    ld a, a
    sub [hl]
    add sp, -$50
    ld a, a
    ldh a, [$ffe2]
    sbc c
    ld h, b
    sbc [hl]
    push hl
    sub [hl]
    adc a
    ldh [$ff0d], a
    ld a, a
    db $e4
    sub a
    and $ea
    ld a, a
    sub l
    rst RST_28
    sub h
    jp hl


    ld a, a

Jump_012_4ca4:
    ld h, h

jr_012_4ca5:
    db $e3
    adc a
    ld a, d
    rst RST_30
    and $0d
    ld a, a
    sub [hl]
    dec de
    sub c
    push hl
    or b
    ld a, a
    sub c
    sbc c
    db $e3
    db $f4
    ld sp, hl
    ld e, $8a
    adc d
    inc c
    ld a, a
    sbc [hl]
    sub d
    ld e, $92
    ld a, a
    ld d, $fd
    ld l, d
    ld sp, hl
    db $fd
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    cp b
    xor a
    ld a, a
    cp b
    xor a
    ld a, a
    cp b
    xor a
    adc d
    rst RST_18
    rst RST_38
    cp l
    call nz, Call_000_3ca4
    and h
    ld [$6c7f], a
    sub a
    ldh a, [$ffe5]
    ld a, a
    db $fc
    rst RST_30
    sub d
    or b
    dec c
    jp hl


    sbc d
    sbc h
    ld a, a
    cp h
    ld [hl], $a4
    ret c

    db $dd
    jr c, jr_012_4ca5

    ld a, a
    sub l
    db $e4
    sbc h
    db $e3
    dec c
    db $ed
    db $f4
    sub [hl]
    rst RST_30
    ld a, a
    ld h, e
    db $e3
    sub d
    adc a
    ldh [$ffa1], a
    rst RST_38
    rst RST_08
    ld b, h
    ld d, $7f
    or $1a
    ld a, [$92e3]
    db $e3
    ld a, a
    pop af
    sbc d
    sub e
    jp hl


    dec c
    sbc c
    sbc h
    sub a
    ld d, $7f
    ldh a, [$ff94]
    push hl
    sub d
    and c
    rst RST_38
    db $eb
    and $f4
    sbc c
    db $e3
    ld a, a
    sub d
    ei
    sub c
    sbc [hl]
    ldh [$ff7f], a
    or [hl]
    and h
    jp Jump_012_60dd


    and c
    rst RST_38
    or $1a
    ld a, [$7fe0]
    cp h
    and h
    jp nz, Jump_012_7f16

    sub [hl]
    sub [hl]
    adc a
    ldh [$ff0d], a
    ld l, l
    xor a
    ld b, h
    ld h, b
    and c
    rst RST_38
    sbc e
    ld l, d
    sbc b
    ld d, $7f
    sub h
    ld d, $96
    ld a, [$92e3]
    ld sp, hl
    ld a, a
    sub h
    ld h, b
    and c
    rst RST_38
    db $ec
    ld sp, hl
    sub d
    ld a, a
    ret nz

    db $dd
    cp l
    ld h, b
    and c
    dec c
    or a
    dec a
    ld h, b
    rst RST_30
    sbc c
    and $7f
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sbc h
    ei
    sub d
    ld a, a
    push bc
    or d
    call nz, $a4c3
    ld c, h
    reti


    ld h, b
    and c
    inc c
    and l
    and l
    and l
    db $e4
    ld a, a
    sub l
    di
    adc a
    ldh [$fff7], a
    ld a, a
    xor $9a
    ld hl, sp+$60
    rst RST_30
    sbc c
    and $e5
    adc a
    db $e3
    sub d
    ld sp, hl
    ld h, b
    sbc c
    ld h, b
    and c
    rst RST_38
    rst RST_28
    ld h, b
    ld a, a
    sub c
    ldh [$fff7], a
    sbc h
    sub d
    ld a, a
    ld a, [hl-]
    ret nc

    ld l, d
    sbc d
    ld h, b
    and c
    rst RST_38
    ld e, d
    cp h
    call z, $afa8
    cp b
    db $e3
    ldh [c], a
    ld h, h
    sub e
    jp hl


    dec c
    ld e, d
    db $dd
    call z, $afda
    call nz, $a160
    inc c
    cp h
    or [hl]
    ld a, [hl-]
    sub h
    sub a
    jp hl


    ld a, a
    inc e
    adc l
    sub e
    sbc h
    adc [hl]
    ld d, $0d
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    sbc $91
    ldh [$fff7], a
    sbc h
    sub d
    ld a, a
    sub c
    db $fd
    push hl
    sub d
    ld l, d
    db $fd
    jp hl


    dec c
    ld a, a
    ldh a, [$ff96]
    ldh [$ffe6], a
    ldh [c], a
    sub d
    db $e3
    ld a, a
    ld a, [de]
    sbc h
    adc [hl]
    sub e
    sub [hl]
    sub d
    dec c
    ld a, a
    sub d
    ldh [$ff9c], a
    rst RST_28
    sbc l
    and c
    inc c
    ld a, a
    ldh a, [$ffe4]
    sub e
    pop hl
    adc h
    sbc b
    and h
    and h
    and h
    dec c
    ld a, a
    ld a, a
    rst RST_28
    di
    push hl
    sbc b
    ld a, a
    ld a, [$9c8f]
    adc h
    ld d, $7f
    adc $a4
    pop de
    and $0d
    ld a, a
    ld a, a
    ld [$f892], a
    rst RST_28
    sbc l
    and c
    inc c
    ld a, a
    db $e4
    sub e
    pop hl
    adc h
    sbc b
    and h
    and h
    and h
    dec c
    ld a, a
    ld a, a
    ld a, [$9c8f]
    adc h
    ld d, $7f
    db $e4
    sub e
    pop hl
    adc h
    sbc b
    sbc h
    rst RST_28
    sbc l
    and c
    inc c
    ld a, a
    inc e
    adc [hl]
    sub e
    sbc h
    adc h
    sub [hl]
    jp hl


    sub e
    and h
    and h
    and h
    dec c
    ld a, a
    ld a, a
    ld a, [$9c8f]
    adc h
    and $7f
    jp hl


    ld hl, sp-$66
    ldh a, [c]
    rst RST_28
    sbc l
    and c
    inc c
    ld a, a
    ld [$9c8f], a
    adc h
    inc e
    adc l
    db $fd
    ld l, e
    and h
    and h
    and h
    dec c
    ld a, a
    ld a, a
    rst RST_28
    di
    push hl
    sbc b
    ld a, a
    ld [$9c8f], a
    adc h
    sbc h
    rst RST_28
    sbc l
    and c
    inc c
    ld a, a
    ld [$9c8f], a
    adc h
    and h
    and h
    and h
    dec c
    ld a, a
    ld a, a
    ld a, [$9c8f]
    adc h
    ld d, $7f
    ld [$9c8f], a
    adc h
    sbc h
    rst RST_28
    sbc l
    and c
    rst RST_18
    rst RST_38
    sub [hl]
    ldh a, [$ff9e]
    sub d
    jp hl


    ld a, a
    cp h
    ld [hl], $a4
    ret c

    db $dd
    jr c, jr_012_4f02

    and c
    inc c
    and l
    and l
    and l
    sbc a
    sub e
    sub d
    sub h
    ld l, d
    ld a, a
    cp l
    call nz, Call_000_3ca4
    and h
    ld d, $0d
    sbc l
    adc a
    db $e3
    sub d
    ldh [$ff7f], a
    ld [$97ef], a
    and $0d
    rst RST_28
    sub d
    db $e3
    sub c
    adc a
    ldh [$ffe5], a
    and l
    and l
    and l
    and c
    inc c
    db $e4
    sbc l
    ld a, [$7f6a]
    sbc d
    ld a, [$7fea]
    cp l
    call nz, Call_000_3ca4
    and h
    jp hl


    dec c
    cp h
    ld [hl], $a4
    ret c

    db $dd
    jr c, jr_012_4f42

    push hl
    and c
    inc c
    call z, $d1a4
    and l
    and l
    and l
    and c
    dec c
    sbc d
    db $fd
    push hl
    ld a, a
    db $f4
    sbc l
    di
    jp hl


    or b
    ld a, a
    sbc l
    adc a
    db $e3
    sub d
    ld sp, hl
    jp hl


    ld [$f40d], a
    ldh [c], a
    ld h, b

jr_012_4f02:
    sbc c
    ld h, b
    ei
    sub e
    and l
    and l
    and l
    and c
    rst RST_38
    sub [hl]
    ldh [$ff98], a
    db $e3
    ld a, a
    db $ed
    db $fd
    push hl
    ld a, a
    and $95
    sub d
    jp hl


    sbc l
    ld sp, hl
    dec c
    rst RST_08
    cp b
    rst RST_10
    ld h, b
    and c
    inc c
    sbc d
    ld a, [$7fb0]
    ldh [c], a
    sub [hl]
    sub e
    db $e4
    ld a, a
    db $ed
    db $fd
    push hl
    ld a, a
    push af
    ldh a, [c]
    or b
    dec c
    ldh a, [$ff9f]
    sub e
    ld h, b
    push hl
    sub c
    and l
    and l
    and l
    and c
    rst RST_38
    or c
    db $dd
    cp a
    add $a4

jr_012_4f42:
    and l
    rst RST_08
    db $db
    db $dd
    and $7f
    sub c
    db $e3
    ldh [$ff0d], a
    db $e3
    ld d, $f0
    ld h, b
    and c
    inc c
    sbc $4e
    cp l
    and c
    dec c
    ld a, a
    push hl
    db $fd
    ld h, b
    sub [hl]
    ld a, a
    sub l
    sub [hl]
    sbc h
    sub d
    jp hl


    ld h, e
    sbc l
    and c
    inc c
    ld a, a
    sub l
    ld a, [$7fea]
    ld l, l
    db $dd
    jp $a4a8


    add $91
    and $97
    jp hl


    dec c
    ld a, a
    ldh a, [c]
    sub d
    ld a, [$6392]
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    sub [hl]
    rst RST_30
    dec c
    ld a, a
    sub c
    dec e
    sub [hl]
    adc a
    ldh [$ff7f], a
    sub [hl]
    add sp, -$50
    ld a, a
    sbc c
    sub d
    sbc e
    ldh [c], a
    and $0d
    ld a, a
    db $fc
    ldh [$ff9d], a
    sbc h
    ld a, [de]
    db $e4
    or b
    ld a, a
    sbc h
    db $e3
    sub d
    rst RST_28
    sbc l
    and c
    inc c
    ld a, a
    inc e
    ldh [c], a
    ld [$bc7f], a
    and h
    add hl, sp
    reti


    ld d, $7f
    sbc d
    ei
    sbc e
    ld a, [$e4e0]
    sub a
    ld a, a
    db $f4
    ldh [c], a
    jp hl


    ld a, a
    db $ed
    db $f4
    sub [hl]
    rst RST_30
    ld a, a
    pop hl
    adc [hl]
    sub e
    ld l, [hl]
    or b
    dec c
    ld a, a
    rst RST_20
    sbc l
    ldh a, [$ff60]
    sbc h
    rst RST_28
    sbc h
    ldh [$ffa1], a
    inc c
    ld a, a
    di
    sbc h
    ld a, a
    sbc c
    sub d
    sbc e
    ldh [c], a
    jp hl


    ld a, a
    db $e3
    and $7f
    db $fc
    ldh [$fff9], a
    db $e4
    dec c
    ld a, a
    ldh a, [c]
    db $fd
    ld h, h
    sub e
    ld h, e
    sbc l
    sub [hl]
    rst RST_30
    add sp, -$5f
    inc c
    ld a, a
    db $e4
    sbc d
    ei
    ld d, $7f
    pop hl
    adc [hl]
    sub e
    ld l, [hl]
    and $ea
    ld a, a
    sub l
    ld a, [$0d16]
    ld a, a
    sub [hl]
    sub [hl]
    db $fc
    adc a
    ldh [$ff7f], a
    db $e4
    ld hl, sp-$15
    sub a
    ld [$7f0d], a
    sub a
    ei
    sbc b
    sbc e
    ld a, [$92e3]
    push hl
    sub d
    jp hl


    ld h, e
    sbc l
    and c
    inc c
    ld a, a
    ld l, l
    db $dd
    jp $a4a8


    add $91
    and $97
    ld [$e47f], a
    ld hl, sp-$15
    sub a
    jp hl


    dec c
    ld a, a
    push hl
    sub d
    or $93
    or b
    ld a, a
    sbc h
    adc a
    db $e3
    sub d
    rst RST_28
    sbc l
    and c
    inc c
    ld a, a
    push hl
    jp hl


    and $7f
    cp h
    and h
    add hl, sp
    reti


    ld [$e17f], a
    adc [hl]
    sub e
    ld l, [hl]
    and $0d
    ld a, a
    sub a
    ei
    sbc b
    sbc h
    db $e3
    sub d
    push hl
    sub d
    db $e4
    push hl
    ld sp, hl
    db $e4
    and l
    and l
    and l
    and c
    inc c
    ld a, a
    db $ec
    ldh [$fff8], a
    ld [$387f], a
    reti


    and $e5
    adc a
    db $e3
    ld a, a
    ld c, [hl]
    cp l
    jp hl


    dec c
    ld a, a
    sub [hl]
    add sp, -$50
    ld a, a
    or $9a
    ld h, h
    ld hl, sp-$64
    db $e3
    sub d
    ldh [$ffe9], a
    ld h, e
    ld [$7f0d], a
    push hl
    sub d
    ld h, e
    sbc h
    adc [hl]
    sub e
    sub [hl]
    and l
    and l
    and l
    adc e
    inc c
    ld a, a
    sbc e
    rst RST_30
    and $7f
    cp h
    or [hl]
    ld a, [hl-]
    ld h, e
    ld [$977f], a
    and $e5
    ld sp, hl
    dec c
    ld a, a
    sub e
    db $fc
    sbc e
    ld d, $7f
    push hl
    ld d, $fa
    db $e3
    sub d
    rst RST_28
    sbc l
    and l
    and l
    and l
    and c
    inc c
    ld a, a
    ld l, l
    db $dd
    jp $a4a8


    add $91
    and $97
    ld d, $7f
    ld h, h
    sbc b
    ld hl, sp-$1e
    sbc h
    db $e3
    ld a, a
    sub c
    ldh [$fff7], a
    sbc h
    sub d
    ld a, a
    sbc h
    ld a, [de]
    db $e4
    or b
    ld a, a
    ld [$f21c], a
    or $93
    db $e4
    ld a, a
    sbc h
    db $e3
    sub d
    ld sp, hl
    and l
    and l
    and l
    ld a, a
    db $e4
    ld a, a
    sub d
    sub e
    jp hl


    ld h, e
    sbc l
    and c
    inc c
    ld a, a
    db $e4
    and $96
    sbc b
    ld a, a
    ld c, [hl]
    cp l
    and $ea
    ld a, a
    sbc h
    rst RST_30
    sbc [hl]
    db $e3
    dec c
    ld a, a
    sub l
    sbc b
    ld l, l
    sub a
    ld h, b
    db $e4
    ld a, a
    sub l
    di
    adc a
    ldh [$ffe9], a
    ld h, e
    dec c
    ld a, a
    db $e3
    ld d, $f0
    or b
    ld a, a
    sbc h
    ldh [$ffe0], a
    ldh a, [c]
    rst RST_28
    sbc h
    ldh [$ffa1], a
    inc c
    ld a, a
    and h
    and h
    and h
    cp h
    or [hl]
    ld a, [hl-]
    and $e3
    dec c
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    call nz, $cfa4
    cp l
    and l
    ld c, [hl]
    db $dd
    ld b, h
    or e
    xor d
    reti


    rst RST_18
    rst RST_38
    sub l
    ld hl, sp-$20
    ldh [$fff0], a
    sbc h
    sub a
    jp hl


    ld a, a
    inc e
    sbc d
    sbc b
    db $eb
    adc [hl]
    sub e
    ld h, b
    and c
    dec c
    sbc h
    ldh [$ffe9], a
    xor $93
    and $7f
    cp h
    or [hl]
    ld a, [hl-]
    sub h
    sub a
    jp hl


    dec c
    inc e
    adc l
    sub e
    sbc h
    adc [hl]
    ld d, $7f
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    ld hl, sp-$72
    sub e
    sub a
    db $fd
    db $eb
    adc [hl]
    sub e
    ld d, $7f
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    sbc $d7
    cp l
    ld l, l
    ld [hl], $bd
    sub [hl]
    rst RST_30
    add $ad
    and h
    sub $a4
    cp b
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
    and e
    add e
    add l
    inc c
    ld a, a
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
    sub [hl]
    rst RST_30
    cp [hl]
    db $dd
    call nz, $b2d9
    cp l
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
    and e
    add c
    add l
    inc c
    ld a, a
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
    sub [hl]
    rst RST_30
    db $db
    cp e
    db $dd
    ld a, $d9
    cp l
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
    and e
    add c
    add l
    inc c
    ld a, a
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
    sub [hl]
    rst RST_30
    cp h
    or [hl]
    ld a, [hl-]
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
    and e
    add d
    add b
    rst RST_18
    rst RST_38
    sbc h
    db $fc
    sbc b
    pop hl
    adc h
    jp hl


    ld a, a
    sub [hl]
    ldh a, [$ff97]
    ld a, [$a160]
    dec c
    sub a
    ldh [$ffe5], a
    sub d
    ld a, a
    di
    inc e
    ld h, e
    ld a, a
    push hl
    and $96
    dec c
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    sbc $91
    jp hl


    ld a, a
    sub e
    ld sp, hl
    sbc e
    sub d
    ld a, a
    sbc c
    db $fd
    sbc e
    ldh [c], a
    sub [hl]
    db $fd
    or b
    dec c
    ld a, a
    sbc d
    ei
    sbc [hl]
    adc d
    inc c
    ld a, a
    ld e, $8f
    ldh [$ff92], a
    and $7f
    sbc h
    adc [hl]
    sub e
    sbc d
    ld [$7f0d], a
    jp hl


    sbc d
    sbc l
    push hl
    adc d
    rst RST_18
    rst RST_38
    dec a
    or a
    xor l
    and h
    and h
    db $dd
    adc d
    adc d
    rst RST_38
    ldh [$ffef], a
    ld [$647f], a
    sbc d
    sub [hl]
    db $ed
    ld a, a
    db $e4
    db $fd
    ld h, e
    sub d
    adc a
    db $e3
    dec c
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc h
    rst RST_28
    adc a
    ldh [$ff8a], a
    adc d
    dec c
    or a
    dec a
    ld d, $7f
    ldh [c], a
    sub d
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ff8a], a
    inc c
    ld h, e
    di
    ld a, a
    pop hl
    sub d
    sbc e
    sub d
    ld a, a
    or a
    dec a
    push hl
    jp hl


    ld h, e
    ld a, a
    ld h, b
    ld a, [$0df3]
    sub a
    ld h, d
    sub [hl]
    push hl
    sub d
    ld h, b
    ei
    sub e
    and l
    and l
    and l
    and c
    rst RST_38
    add c
    sub [hl]
    sub d
    jp hl


    ld a, a
    ei
    sub e
    sub [hl]
    ld h, b
    and c
    dec c
    sbc h
    adc [hl]
    sub e
    ldh a, [c]
    db $fd
    sub [hl]
    rst RST_30
    ld a, a
    ld [hl], $c1
    xor h
    ld [hl], $c1
    xor h
    db $e4
    dec c
    and $17
    db $f4
    sub [hl]
    push hl
    ld a, a
    sub l
    db $e4
    ld d, $9d
    ld sp, hl
    and c
    rst RST_38
    add c
    sub [hl]
    sub d
    jp hl


    ld a, a
    ei
    sub e
    sub [hl]
    ld h, b
    and c
    rst RST_38
    di
    sbc b
    sbc [hl]
    sub d
    jp hl


    ld a, a
    pop hl
    sub d
    sbc e
    push hl
    ld a, a
    jp Jump_012_4ca4


    reti


    ld h, b
    and c
    rst RST_38
    sub c
    sub [hl]
    ld hl, sp+$16
    ld a, a
    db $e4
    di
    adc a
    db $e3
    sub d
    ld sp, hl
    ld a, a
    ld h, e
    db $fd
    db $e4
    sub e
    ld h, b
    and c
    rst RST_38
    ld h, e
    db $fd
    db $e4
    sub e
    ld h, b
    and c
    dec c
    sbc h
    adc l
    ldh a, [$ffe9]
    ld a, a
    db $fc
    ld sp, hl
    sub d
    ld a, a
    sub [hl]
    dec de
    ld hl, sp+$16
    dec c
    ldh [c], a
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
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
    rst RST_38
    sbc $b6
    inc a
    ret


    rst RST_18
    db $e4
    ld a, a
    sub [hl]
    sub [hl]
    ld a, [$7fe0]
    sub [hl]
    db $fd
    ld l, d
    db $fd
    ld h, b
    and c
    rst RST_38
    ld [$7a8f], a
    or b
    ld a, a
    ldh [$ff98], a
    sbc e
    db $fd
    ld a, a
    sbc h
    add hl, de
    rst RST_30
    sbc [hl]
    ldh [$ff0d], a
    ld [$93e1], a
    sub h
    ld h, b
    and c
    rst RST_38
    sub l
    db $e4
    sbc d
    ld [$967f], a
    sub l
    or b
    ld a, a
    sbc h
    sub [hl]
    ldh a, [c]
    push hl
    ld d, $f7
    dec c
    sub l
    ld a, [$7fe6]
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $95
    rst RST_28
    sub h
    sbc e
    db $fd
    ld a, a
    db $f4
    ldh a, [c]
    db $e4
    sub a
    push hl
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    sbc d
    ld a, [$1c92]
    adc [hl]
    sub e
    ld [$967f], a
    add sp, -$17
    dec c
    ld a, a
    pop af
    ld h, b
    ld h, d
    sub [hl]
    sub d
    sbc e
    adc d
    rst RST_18
    rst RST_38
    sub a
    adc h
    sbc b
    sbc h
    ldh [c], a
    jp hl


    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    dec c
    ldh a, [$fff0]
    or b
    ld a, a
    pop hl
    sub [hl]
    ld h, d
    sbc c
    db $e3
    ldh a, [$ffe0]
    ld d, $7f
    push hl
    and $f3
    dec c
    sub a
    sbc d
    sub h
    push hl
    sub d
    and c
    rst RST_38
    or h
    jp c, $a46d

    ret nz

    jp hl


    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    dec c
    sbc e
    sub d
    sub a
    db $fd
    ld a, a
    ld a, l
    db $dd
    or a
    or b
    ld a, a
    rst RST_20
    ld hl, sp-$6a
    sub h
    ldh [$ff0d], a
    ld l, d
    sub [hl]
    ld hl, sp-$09
    sbc h
    sub d
    and c
    inc c
    jp nz, $dda4

    db $e4
    ld a, a
    ld [$b0e5], a
    ld a, a
    sbc h
    add hl, de
    sub a
    sbc l
    ld sp, hl
    dec c
    and $95
    sub d
    ld d, $9d
    ld sp, hl
    and c
    rst RST_38
    add d
    sub [hl]
    sub d
    jp hl


    ld a, a
    ei
    sub e
    sub [hl]
    ld h, b
    and c
    dec c
    sbc h
    dec e
    sub [hl]
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    pop hl
    sub d
    sbc e
    push hl
    ld a, a
    db $ec
    sub e
    sbc c
    sub d
    ld d, $60
    and c
    rst RST_38
    pop hl
    sub d
    sbc e
    push hl
    ld a, a
    ld [$b0e5], a
    ldh [c], a
    sbc c
    ldh [$ff7f], a
    ld [$93e1], a
    sub h
    ld h, b
    and c
    rst RST_38
    sub a
    adc h
    sbc b
    sbc h
    ldh [c], a
    jp hl


    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    dec c
    push hl
    sub [hl]
    and $ea
    ld a, a
    ld h, b
    ld a, [$7ff3]
    sub d
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    sub a
    adc h
    sbc b
    sbc h
    ldh [c], a
    jp hl


    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    dec c
    push hl
    sub [hl]
    sub [hl]
    rst RST_30
    ld [$f37f], a
    jp hl


    sub l
    db $e4
    db $eb
    db $e4
    ldh [c], a
    dec c
    sub a
    sbc d
    sub h
    push hl
    sub d
    and c
    rst RST_38
    add e
    sub [hl]
    sub d
    jp hl


    ld a, a
    ei
    sub e
    sub [hl]
    ld h, b
    and c
    dec c
    sbc [hl]
    rst RST_28
    sub d
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    ld a, [hl-]
    jp $c33a


    db $e4
    ld a, a
    sub c
    ldh [c], a
    sbc b
    ld a, a
    rst RST_20
    adc a
    db $e3
    sub c
    ld sp, hl
    dec c
    sub c
    ld l, h
    rst RST_30
    sub h
    ld h, b
    and c
    rst RST_38
    pop hl
    sub d
    sbc e
    push hl
    ld a, a
    ld [$93e1], a
    sub h
    ld h, b
    and c
    dec c
    ld [$16e5], a
    ld a, a
    sbc e
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    or h
    jp c, $a46d

    ret nz

    jp hl


    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    rst RST_38
    db $eb
    db $e4
    ld d, $7f
    db $eb
    db $e4
    ld hl, sp+$7f
    ld [$fa92], a
    sbc a
    sub e
    push hl
    sbc b
    rst RST_30
    sub d
    dec c
    sub l
    sub l
    sub a
    push hl
    ld a, a
    sbc [hl]
    db $fd
    ldh [$ff98], a
    di
    jp hl


    sub d
    ld a, [$a160]
    inc c
    and l
    and l
    and l
    sub l
    db $f4
    adc e
    dec c
    or $9a

jr_012_54c3:
    and $7f
    push hl
    and $96
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    rra
    adc d
    rst RST_38
    sbc $d8
    rst RST_10
    or d
    or c
    db $dd
    call nz, $b8a5
    ret c

    and h

jr_012_54dc:
    add $dd
    jr c, jr_012_54c3

    db $fd
    rst RST_18
    db $e4
    or $9a
    and $7f
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    sbc d
    ld a, [$7fb0]
    cp b
    ret c

    and h
    add $dd
    jr c, jr_012_54dc

    db $fd
    and $0d
    di
    adc a
    db $e3
    sub [hl]
    sub h
    adc a
    db $e3
    ld a, a
    push hl
    sub [hl]
    jp hl


    di
    jp hl


    or b
    dec c
    sbc [hl]
    db $fd
    ldh [$ff98], a
    sbc l
    ld sp, hl
    jp hl


    ld h, b
    ei
    sub e
    and c
    rst RST_38
    sbc a
    sub e
    ld h, b
    adc d
    inc c
    sbc d
    jp hl


    push hl
    sub [hl]
    and $7f
    sub [hl]
    sbc b
    ld a, [$92e3]
    ld a, [$0d6a]
    sbc h
    adc h
    sbc h
    db $fd
    and $7f
    sub e
    ldh [c], a
    adc a
    db $e3
    sub d
    ldh [$ff0d], a
    cp b
    ret c

    and h
    add $dd

jr_012_553c:
    jr c, @-$1b

    db $fd
    and $7f
    di
    jr jr_012_553c

    sbc d
    ldh a, [c]
    ld sp, hl
    and $0d
    pop hl
    ld d, $92
    push hl
    sub d
    adc d
    rst RST_38
    sbc [hl]
    db $fd
    ldh [$ff98], a
    di
    jp hl


    sub d
    ld a, [$7fe9]
    push hl
    sub [hl]
    and $0d
    ld [$8f92], a
    ldh [$ffa1], a
    inc c
    sub e
    and h
    adc a
    and l
    and l
    and l
    adc d
    dec c
    sub c
    sbc [hl]
    sbc b
    sbc e
    and h
    adc a
    adc d
    adc d
    rst RST_38
    ld h, h
    sub e
    di
    ld a, a
    or [hl]
    scf
    ld d, $7f
    pop hl
    ld d, $93
    or $93
    ld h, b
    and c
    rst RST_38
    ret


    xor a
    cp b
    sbc h
    ldh [rNR21], a
    ld a, a
    ld h, b
    ld a, [$7ff3]
    ld h, e
    db $e3
    sbc d
    push hl
    sub d
    and c
    rst RST_38
    ld [hl], $d7
    cp l
    ld d, $7f
    sbc d
    push hl
    ld a, [de]
    push hl
    and $0d
    sbc b
    ld h, b
    sbc c
    pop hl
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc $b1
    db $dd
    cp a
    add $a4
    and l
    rst RST_08
    db $db
    db $dd
    rst RST_18
    db $e4
    dec c
    sbc $40
    add $a4
    and l
    ld l, l
    db $dd
    jp $a4a8


    add $df
    and l
    and l
    and l
    and c
    inc c
    sbc d
    jp hl


    rst RST_28
    pop hl
    ld h, e
    ld a, a
    sub [hl]
    ld a, [$e9f7]
    ld a, a
    push hl
    rst RST_28
    sub h
    or b
    dec c
    sbc h
    rst RST_30
    push hl
    sub d
    ld a, a
    db $eb
    db $e4
    ld [$927f], a
    push hl
    sub d
    and l
    and l
    and l
    and c
    inc c
    sbc a
    sub e
    sub d
    sub h
    ld l, d
    ld a, a
    sbc l
    sub e
    sbc h
    adc l
    sub e
    sub [hl]
    db $fd
    rst RST_28
    sub h
    jp hl


    dec c
    sbc h
    db $fd
    ld l, h
    db $fd
    and $f3
    ld a, a
    sub [hl]
    ld a, [$e9f7]
    sbc d
    db $e4
    ld d, $0d
    sub [hl]
    sub [hl]
    ld a, [$92e3]
    ldh [$ff1f], a
    adc d
    inc c
    and l
    and l
    and l
    sub c
    ld a, [$7fea]
    ldh [$ff9c], a
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    sub c
    ld sp, hl
    ld a, a
    pop hl
    xor $93
    sbc c
    db $fd
    sbc e
    ldh [c], a
    sub [hl]
    db $fd
    ld d, $7f
    sub [hl]
    ld a, [$b0f7]
    ldh [$ff92], a
    xor $63
    sub a
    ld sp, hl
    ld a, a
    push af
    sub e
    ld hl, sp-$72
    sbc b
    push hl
    dec c
    sbc h
    adc [hl]
    sub e
    sbc d
    or b
    ld a, a
    ldh [c], a
    sub [hl]
    db $fd
    ld h, b
    and c
    inc c
    ld h, b
    ld d, $7f
    sbc a
    jp hl


    ld a, a
    sbc c
    db $fd
    sbc e
    ldh [c], a
    sub [hl]
    db $fd
    ld [$9c7f], a
    ldh [$ff92], a
    ld h, e
    ldh a, [$ffe2]
    sub [hl]
    adc a
    ldh [$ffa1], a
    dec c
    and l
    and l
    and l
    db $e4
    sub d
    sub e
    ld a, a
    sub a
    inc e
    ld h, b
    adc a
    ldh [$ffa1], a
    inc c
    sbc a
    jp hl


    ld a, a
    sbc l
    sub e
    inc e
    ldh [c], a
    ld a, [de]
    and l
    and l
    and l
    dec c
    sbc h
    adc [hl]
    sub e
    sbc d
    db $ec
    inc e
    adc l
    sub e
    ld l, h
    db $fd
    ld h, e
    ld a, a
    sub [hl]
    ld a, [$e6f7]
    dec c
    ldh [$ff92], a
    sbc l
    ld sp, hl
    ld a, a
    sbc d
    sbc b
    ld [$eae2], a
    dec c
    db $e4
    ld hl, sp-$65
    add hl, de
    rst RST_30
    ld a, [$a5e0]
    and l
    and l
    and c
    rst RST_38
    adc $c3
    reti


    jp hl


    ld a, a
    add h
    sub [hl]
    sub d
    ld h, b
    and c
    dec c
    sbc d
    jp hl


    ld a, a
    sub [hl]
    sub d
    ld [$b57f], a
    call z, $bda8
    and $7f
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
    or $93
    ld h, b
    and c
    inc c
    db $ed
    db $f4
    ld [$ec7f], a
    ldh [$ffe2], a
    sub c
    ld hl, sp+$7f
    sbc a
    ld a, [$fa1f]
    jp hl


    dec c
    ld b, h
    or c
    and $7f
    db $eb
    adc [hl]
    sub e
    sbc e
    ldh [c], a
    ld d, $7f
    sub [hl]
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    add h
    sub [hl]
    sub d
    jp hl


    ld a, a
    ei
    sub e
    sub [hl]
    ld h, b
    and c
    rst RST_38
    ld [$93e1], a
    sub h
    jp hl


    ld a, a
    sub a
    ld h, b
    and c
    dec c
    add sp, -$0d
    db $e4
    ld d, $7f
    sbc l
    sbc d
    sbc h
    ld a, a
    sub [hl]
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    sub a
    ld a, [$e692]
    ld a, a
    ldh a, [rNR21]
    sub [hl]
    ld a, [$7fe0]
    rst RST_08
    ld b, h
    ld h, b
    and c
    rst RST_38
    ld d, $fd
    inc e
    adc [hl]
    sub e
    sbc a
    sub e
    push hl
    ld a, a
    di
    sbc b
    sbc [hl]
    sub d
    jp hl


    dec c
    ld b, h
    or c
    ld h, b
    and c
    inc c
    sbc $40
    add $a4
    and l
    ld l, l
    db $dd
    jp $a4a8


    add $df
    db $e4
    ld a, a
    sub [hl]
    sub [hl]
    ld a, [$ebe0]
    adc [hl]
    sub e
    sbc e
    ldh [c], a
    ld d, $7f
    sub [hl]
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sbc $b1
    db $dd
    cp a
    add $a4
    and l
    rst RST_08
    db $db
    db $dd
    rst RST_18
    db $e4
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    sub a
    db $fd
    sub d
    ei
    jp hl


    ld a, a
    db $eb
    adc [hl]
    sub e
    sbc e
    ldh [c], a
    ld d, $7f
    sub [hl]
    sub [hl]
    adc a
    ldh [$ff0d], a
    ld b, h
    or c
    ld h, b
    and c
    rst RST_38
    sbc h
    rst RST_28
    adc a
    ldh [$ff8a], a
    dec c
    or $93
    inc e
    db $fd
    ld l, [hl]
    sub e
    and $7f
    ldh a, [$ffe2]
    sub [hl]
    adc a
    ldh [$ff8a], a
    rst RST_38
    sbc $9a
    jp hl


    ld a, a
    cp d
    cp a
    ld b, h
    db $db
    ldh a, [c]
    adc d
    dec c
    ld a, a
    sbc d
    sbc d
    db $ed
    ld a, a
    sbc h
    jp hl


    ld l, e
    sbc d
    db $fd
    ld h, e
    ld a, a
    sbc b
    ld sp, hl
    db $e4
    ld [$7f0d], a
    db $e4
    db $fd
    ld h, e
    di
    push hl
    sub d
    ld a, a
    db $f4
    ei
    sub e
    ld h, b
    adc d
    inc c
    ld a, a
    and l
    and l
    and l
    sbc h
    db $fd
    ld h, e
    di
    rst RST_30
    sub e
    ld e, $8a
    rst RST_18
    rst RST_38
    rst RST_08
    cp h
    db $dd
    ld [hl], $dd
    ld d, $7f
    ld a, [de]
    sub e
    sub l
    db $fd
    or b
    ld a, a
    ldh [$ffe3], a
    push hl
    ld d, $f7
    sub l
    ld a, [$7fe9]
    sub [hl]
    rst RST_30
    ld h, b
    or b
    ld a, a
    jp z, $e9c1

    sbc l
    and $9c
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    sub l
    sub [hl]
    add hl, de
    ld h, e
    ld a, a
    sub l
    ld a, [$7fea]
    sub h
    sub d
    sub h
    db $fd
    jp hl


    dec c
    add sp, -$0f
    ld hl, sp-$1a
    ld a, a
    ldh [c], a
    sbc b
    sbc d
    db $e4
    and $e5
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    rst RST_10
    xor a
    or a
    and h
    ld b, b
    or d
    cp l
    adc $c3
    reti


    jp hl


    ld a, a
    db $db
    ld c, e
    and h
    ld h, b
    and c
    dec c
    pop bc
    xor a
    ld e, h
    or b
    ld a, a
    sub [hl]
    sbc e
    add sp, -$07
    ld a, a
    sub l
    db $e4
    ld d, $0d
    sub a
    sbc d
    sub h
    db $e3
    sbc b
    ld sp, hl
    and l
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    push hl
    db $fd
    ld h, b
    sub [hl]
    ld a, a
    call c, $dcb8
    cp b
    sbc l
    ld sp, hl
    push hl
    and c
    rst RST_38
    db $e4
    ldh [c], a
    ld e, $fd
    ld a, a
    or $93
    inc e
    db $fd
    ld l, [hl]
    sub e
    ld d, $7f
    push af
    sbc b
    db $e3
    or b
    dec c
    ld [$fd6a], a
    ld h, b
    and c
    inc c
    sbc $e5
    db $fd
    ld h, b
    adc d
    adc e
    dec c
    ld a, a
    sub l
    rst RST_28
    sub h
    ld [$8a8a], a
    inc c
    ld a, a
    sbc a
    db $fd
    push hl
    ld a, a
    sub [hl]
    adc a
    sbc d
    sub e
    ld h, e
    ld a, a
    sbc d
    sbc d
    db $ed
    ld [$7f0d], a
    ld [$fa92], a
    push hl
    sub d
    rra
    adc d
    dec c
    ld a, a
    db $e4
    adc a
    db $e4
    db $e4
    ld a, a
    ld h, e
    db $e3
    sub d
    sbc c
    adc a
    adc d
    rst RST_18
    rst RST_38
    sub l
    ld a, [$7fea]
    or $93
    inc e
    db $fd
    ld l, [hl]
    sub e
    and $0d
    ldh [c], a
    rst RST_28
    ldh a, [$ff60]
    sbc e
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sub h
    sub a
    jp hl


    ld a, a
    adc $a4
    pop de
    ld h, b
    and c
    dec c
    push af
    sub [hl]
    ld [$ef7f], a
    ld h, b
    ld a, a
    sub c
    ldh [$fff7], a
    sbc h
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    sbc $d7
    xor a
    or a
    and h
    ld b, b
    or d
    cp l
    adc $c3
    reti


    ld a, a
    ld bc, $b67f
    inc a
    ret


    rst RST_18
    db $e4
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    ld a, a
    ld [hl], $d7
    cp l
    jp hl


    dec c
    ld [$1b92], a
    rst RST_30
    ld h, b
    and c
    rst RST_38
    and $17
    db $f4
    sub [hl]
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    sub d
    ld hl, sp+$18
    pop hl
    jp hl


    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    rst RST_38
    sub l
    sub l
    sub a
    push hl
    ld a, a
    sub c
    ld l, h
    rst RST_30
    sub h
    ld h, b
    and c
    dec c
    ld e, e
    cp l
    call nz, $b0d9
    di
    adc a
    ldh [$ff7f], a
    db $ec
    ldh [$fff8], a
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    ld d, $e0
    sub d
    sbc c
    ldh [c], a
    sbc h
    or $93
    db $e4
    ld a, a
    sbc h
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sub c
    sub [hl]
    sub d
    ld a, a
    ld c, e
    db $db
    and h
    ld b, h
    jp hl


    ld a, a
    or d
    cp l
    ld h, b
    and c
    dec c
    and l
    and l
    and l
    sbc l
    db $fc
    ld hl, sp+$1a
    sbc d
    pop hl
    ld d, $7f
    or $9b
    sbc a
    sub e
    ld h, b
    and c
    rst RST_38
    sbc l
    db $fc
    ld hl, sp+$1a
    sbc d
    pop hl
    jp hl


    ld a, a
    or $9b
    sbc a
    sub e
    push hl
    ld a, a
    or d
    cp l
    ld h, b
    and c
    rst RST_38
    pop hl
    sub d
    sbc e
    push hl
    ld a, a
    cp d
    and h
    res 4, h
    jp Jump_012_4ca4


    reti


    ld h, b
    and c
    rst RST_38
    sub l
    sub l
    sub a
    push hl
    ld a, a
    sbc h
    db $fd
    pop hl
    adc l
    sub e
    jp hl


    ld a, a
    ldh [c], a
    ld l, [hl]
    ld h, b
    and c
    rst RST_38
    ld b, h
    or c
    jp hl


    ld a, a
    ld [hl], $d7
    cp l
    ld d, $7f
    db $fc
    ld a, [$0de3]
    db $ed
    db $f4
    inc e
    adc l
    sub e
    and $7f
    di
    jp hl


    sbc l
    ld a, [de]
    sub d
    ld a, a
    sub l
    db $e4
    ld d, $0d
    db $eb
    ld l, e
    sub a
    db $fc
    ldh [$ff8f], a
    ldh [$ffa1], a
    rst RST_38
    sbc $9a
    jp hl


    db $f4
    ei
    sub e
    adc d
    dec c
    ld a, a
    push hl
    db $fd
    db $e3
    sbc d
    db $e4
    or b
    ld a, a
    sbc l
    ld sp, hl
    db $fd
    ld h, b
    adc d
    rst RST_18
    rst RST_38
    ld hl, sp-$72
    sub e
    ld d, $94
    sbc h
    adc [hl]
    ld h, b
    and c
    dec c
    sbc d
    sbc d
    ld h, e
    ld a, a
    sub [hl]
    add sp, -$1c
    ld a, a
    pop bc
    xor a
    ld e, h
    or b
    dec c
    sbc d
    sub e
    sub [hl]
    db $fd
    sbc l
    ld sp, hl
    or $93
    ld h, b
    and c
    rst RST_38
    sbc $f8
    adc [hl]
    sub e
    ld d, $94
    sbc h
    adc [hl]
    rst RST_18
    db $e4
    ld a, a
    sub [hl]
    db $fd
    ld l, d
    db $fd
    and $0d
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
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
    rst RST_18
    db $e4
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    ld hl, sp-$72
    sub e
    ld d, $94
    sbc h
    adc [hl]
    jp hl


    ld a, a
    or [hl]
    or e
    db $dd
    ret nz

    and h
    ld h, b
    and c
    inc c
    push hl
    sub [hl]
    and $7f
    db $eb
    db $e4
    ld d, $7f
    ld [$8f92], a
    db $e3
    ld a, a
    sub [hl]
    add sp, -$0c
    dec c
    pop bc
    xor a
    ld e, h
    or b
    ld a, a
    sub e
    sbc c
    db $fc
    ldh [$ff9d], a
    or $93
    and $0d
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
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

Jump_012_60dd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_012_7f16:
Jump_012_7f16:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_012_7fb0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_012_7fe6:
    nop
    nop
    nop

Call_012_7fe9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
