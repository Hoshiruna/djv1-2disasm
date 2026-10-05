; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    nop
    ld b, c
    db $10
    ld b, c
    ld e, [hl]
    ld b, d
    adc a
    ld b, d
    and e
    ld b, d
    or h
    ld b, d
    pop de
    ld b, d
    ldh a, [c]
    ld b, d
    ld c, $43
    inc hl
    ld b, e
    ld b, d
    ld b, e
    ld e, [hl]
    ld b, e
    ld a, e
    ld b, e
    sub e
    ld b, e
    xor l
    ld b, h
    cp c
    ld b, h
    sub h
    ld b, l
    or l
    ld b, l
    db $e3
    ld b, l
    ld e, $46
    ld a, [hl-]
    ld b, [hl]
    ld e, d
    ld b, [hl]
    and b
    ld b, [hl]
    call nc, $f546
    ld b, [hl]
    ld a, a
    ld b, a
    sub c
    ld b, a
    sbc l
    ld b, a
    xor [hl]
    ld b, a
    cp l
    ld b, a
    push af
    ld b, a
    ld c, h
    ld c, b
    adc l
    ld c, b
    or b
    ld c, b
    ret c

    ld c, b
    ld [bc], a
    ld c, c
    add hl, sp
    ld c, c
    ld d, h
    ld c, c
    ld l, b
    ld c, c
    sbc h
    ld c, c
    call nz, $db49
    ld c, c
    add hl, bc
    ld c, d
    ld b, c
    ld c, d
    ld [hl], e
    ld c, d
    adc c
    ld c, d
    and l
    ld c, d
    or c
    ld c, d
    jp z, $eb4a

    ld c, d
    inc c
    ld c, e
    inc hl
    ld c, e
    ld d, c
    ld c, e
    adc d
    ld c, e
    rst RST_28
    ld c, e
    ld b, d
    ld c, h
    push bc
    ld c, h
    ld bc, $294d
    ld c, l
    ld c, c
    ld c, l
    ld e, b
    ld c, l
    halt
    ld c, l
    or e
    ld c, l
    cp [hl]
    ld c, l
    db $f4
    ld c, l
    dec d
    ld c, [hl]
    inc h
    ld c, [hl]
    ld c, c
    ld c, [hl]
    ld [hl], e
    ld c, [hl]
    adc b
    ld c, [hl]
    sbc d
    ld c, [hl]
    xor a
    ld c, [hl]
    cp a
    ld c, [hl]
    push hl
    ld c, [hl]
    inc bc
    ld c, a
    ld c, d
    ld c, a
    ld h, d
    ld c, a
    ld a, l
    ld c, a
    add d
    ld c, a
    ld bc, $7f51
    ld d, c
    cp c
    ld d, c
    reti


    ld d, c
    dec e
    ld d, d
    ld l, $52
    ld c, c
    ld d, d
    cp b
    ld d, d
    jp z, $ec52

    ld d, d
    ld de, $4553
    ld d, e
    ld [hl], d
    ld d, e
    inc c
    ld d, h
    rra
    ld d, h
    add a
    ld d, h
    and a
    ld d, h
    jr @+$57

    dec hl
    ld d, l
    ld c, l
    ld d, l
    ld h, l
    ld d, l
    or d
    ld d, l
    db $ec
    ld d, l
    ld [bc], a
    ld d, [hl]
    ld sp, $4f56
    ld d, [hl]
    ld h, b
    ld d, [hl]
    add d
    ld d, [hl]
    sub h
    ld d, [hl]
    or c
    ld d, [hl]
    call $a956
    ld d, a
    cp a
    ld d, a
    call $2357
    ld e, b
    ld d, e
    ld e, b
    ld [hl], c
    ld e, b
    add a
    ld e, b
    cp d
    ld e, b
    call c, $8058
    ld e, c
    sub e
    ld e, c
    cp [hl]
    ld e, c
    push de
    ld e, c
    push af
    ld e, c
    ld b, c
    ld e, d
    ld l, d
    ld e, d
    and l
    ld e, d
    add $5a
    db $eb
    ld h, h
    sub d
    ld a, a
    and $95
    sub d
    jp hl


    sbc l
    ld sp, hl
    ld a, a
    db $ed
    db $f4
    ld h, b
    and c
    rst RST_38
    db $f4
    ldh [c], a
    rst RST_30
    and $7f
    db $e4
    ld hl, sp-$6f
    add hl, de
    rst RST_30
    ld a, [$f3e0]
    jp hl


    ld d, $0d
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    rra
    adc d
    inc c
    ld h, e
    di
    ld a, a
    sbc d
    jp hl


    rst RST_28
    rst RST_28
    ld a, a
    di
    pop hl
    ld h, b
    sbc [hl]
    ld l, d
    and l
    and l
    and l
    dec c
    db $f4
    ldh [c], a
    rst RST_30
    or b
    ld a, a
    sub [hl]
    rla
    rst RST_28
    db $fc
    adc a
    db $e3
    sub d
    ldh [$ff7f], a
    sub l
    ld a, [$0d16]
    sub e
    ldh [rNR21], a
    db $fc
    ld a, [$e9f9]
    ld [$ef7f], a
    pop hl
    ld d, $92
    push hl
    sub d
    and c
    inc c
    sbc a
    sub e
    push hl
    ld a, [$a56a]
    and l
    and l
    sub d
    ldh [c], a
    ld a, a
    db $f4
    ldh [c], a
    rst RST_30
    and $0d
    ldh a, [$ffe2]
    sub [hl]
    adc a
    db $e3
    ld a, a
    sbc d
    ei
    sbc e
    ld a, [$96f9]
    dec c
    db $fc
    sub [hl]
    adc a
    ldh [$fff3], a
    db $fd
    inc e
    adc h
    push hl
    sub d
    and c
    inc c
    push hl
    and $96
    ld a, a
    sub d
    sub d
    ld a, a
    xor $93
    xor $93
    ld [$e50d], a
    sub d
    ld h, b
    ei
    sub e
    sub [hl]
    adc e
    dec c
    sub e
    and h
    db $fd
    and l
    and l
    and l
    and c
    inc c
    sbc d
    jp hl


    ld a, a
    ldh [c], a
    sbc b
    sub h
    jp hl


    ld a, a
    sub e
    sub h
    and $7f
    cp l
    call nz, Call_000_3ca4
    and h
    jp hl


    call nz, $a4da
    ld b, h
    rst RST_08
    and h
    cp b
    db $e4
    di
    sub d
    sub h
    ld sp, hl
    ld a, a
    ld [$97ef], a
    jp hl


    dec c
    cp h
    ld [hl], $a4
    ret c

    db $dd
    jr c, @-$4e

    ld a, a
    sub l
    sub d
    db $e3
    sub l
    sbc b
    and l
    and l
    and l
    dec c
    db $e4
    sub d
    sub e
    jp hl


    ld [$647f], a
    sub e
    ld h, b
    ei
    sub e
    adc e
    inc c
    sbc a
    sub e
    sbc l
    ld a, [$a56a]
    and l
    and l
    ld l, l
    db $dd
    jp $a4a8


    add $ea
    dec c
    cp l
    call nz, Call_000_3ca4
    and h
    and $7f
    inc e
    ld l, h
    db $fd
    jp hl


    ld a, a
    sbc c
    sub d
    sub [hl]
    sbc b
    ld d, $0d
    sub [hl]
    rla
    ldh [c], a
    sbc c
    rst RST_30
    ld a, [$cf7f]
    db $db
    db $dd
    and $7f
    sbc h
    rst RST_30
    ld a, [$0de3]
    sbc h
    rst RST_28
    adc a
    ldh [$ffe4], a
    ld a, a
    sub l
    di
    sub e
    and $e1
    ld d, $92
    push hl
    sub d
    and c
    inc c
    sbc a
    ld a, [$f796]
    ld a, a
    rst RST_08
    db $db
    db $dd
    and $7f
    ld l, l
    db $dd
    jp $a4a8


    add $e9
    dec c
    sub c
    sbc b
    inc e
    or b
    ld a, a
    ld l, d
    rst RST_30
    sbc [hl]
    ld l, d
    and l
    and l
    and l
    dec c
    db $ec
    ldh [$fff8], a
    jp hl


    ld a, a
    sbc d
    ei
    sbc h
    sub c
    sub d
    and $0d
    push hl
    ld sp, hl
    jp hl


    ld h, e
    ld [$92e5], a
    sub [hl]
    adc d
    rst RST_38
    rst RST_08
    db $dd
    adc $a4
    reti


    sub [hl]
    rst RST_30
    ld a, a
    add hl, de
    sbc l
    sub d
    db $ed
    dec c
    ldh [c], a
    sub e
    inc e
    db $e3
    sub d
    ld sp, hl
    ld [$601d], a
    and c
    inc c
    ld [$b0e5], a
    ld a, a
    sbc e
    sbc l
    or $93
    push hl
    ld a, a
    and $95
    sub d
    ld d, $0d
    ldh [$ffe1], a
    jp hl


    ld l, [hl]
    adc a
    db $e3
    sbc b
    ld sp, hl
    and c
    rst RST_38
    bit 1, e
    jp hl


    ld a, a
    ld [$8f92], a
    ldh [$ff0d], a
    ld [$9660], a
    ld h, e
    db $fd
    sub a
    adc l
    sub e
    ld h, b
    and c
    rst RST_38
    call c, $ddb2
    cp [hl]
    rst RST_10
    and h
    db $ed
    ld a, a
    ldh [c], a
    ld h, d
    sbc b
    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    rst RST_38
    db $eb
    ldh a, [$ffe2]
    jp hl


    ld a, a
    or [hl]
    inc a
    ret


    ld h, b
    and c
    dec c
    db $eb
    adc a
    sbc a
    ld hl, sp-$1c
    ld a, a
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
    reti


    and h
    jp c, $c4af

    ld h, b
    adc d
    dec c
    db $eb
    db $e4
    ldh [c], a
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
    sub e
    and h
    db $fd
    and l
    and l
    and l
    cp l
    db $db
    xor a
    call nz, $bccf
    db $dd
    ld h, b
    adc d
    dec c
    db $f4
    adc a
    db $e3
    ldh a, [$fff9]
    sub [hl]
    push hl
    and l
    and l
    and l
    adc e
    rst RST_38
    and l
    and l
    and l
    sub l
    db $f4
    adc e
    dec c
    or [hl]
    scf
    sub c
    push hl
    ld d, $7f
    ldh [c], a
    sub d
    db $e3
    sub d
    ld sp, hl
    rra
    adc d
    rst RST_38
    sbc d
    db $fd
    push hl
    sub c
    db $f4
    sbc h
    add hl, de
    push hl
    db $e4
    sbc d
    ei
    and $7f
    or [hl]
    scf
    sub c
    push hl
    ld d, $e2
    sub d
    db $e3
    sub d
    ld sp, hl
    push hl
    db $fd
    db $e3
    and l
    and l
    and l
    and c
    rst RST_38
    cp h
    and h
    add hl, sp
    reti


    jp hl


    ld a, a
    and $8f
    sub a
    ld d, $7f
    ld [$8f92], a
    db $e3
    sub d
    ldh [$ff0d], a
    cp l
    db $db
    xor a
    call nz, $bccf
    db $dd
    ld h, b
    and c
    rst RST_38
    cp l
    db $db
    xor a
    call nz, $bccf
    db $dd
    ld [$9a7f], a
    sbc d
    sbc h
    ld l, d
    rst RST_30
    sbc b
    dec c
    ldh [c], a
    sub [hl]
    db $fc
    ld a, [$92e3]
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    push hl
    and $f3
    ld a, a
    ld [$8f92], a
    db $e3
    sub d
    push hl
    sub [hl]
    adc a
    ldh [$ff0d], a
    cp l
    db $db
    xor a
    call nz, $bccf
    db $dd
    ld h, b
    and c
    rst RST_38

jr_016_4393:
    cp h
    xor l
    ld [hl], $a4
    jp hl


    ld a, a
    ldh a, [c]
    sub d
    sbc h
    ld h, b
    and c
    inc c
    sbc $bc
    xor l
    ld [hl], $a4
    and l
    cp h
    xor [hl]
    xor a
    cp b
    dec c
    ld a, a
    or d
    ret c

    ret


    or d
    sbc h
    adc l
    sub e
    ld a, a
    cp h
    or [hl]
    ld a, [hl-]
    dec c
    ld a, a
    jr c, jr_016_4393

    and h
    ld e, h
    ld d, $92
    dec c
    ld a, a
    cp e
    or e
    cp l
    cp d
    jp Jump_000_3ca4


    ld a, a
    add h
    add c
    add c
    add a
    rst RST_18
    inc c
    sbc $3c
    xor [hl]
    and h
    ld a, a
    sub c
    sub d
    and $97
    db $e3
    adc d
    rst RST_18
    db $e4

jr_016_43db:
    dec c
    sub e
    rst RST_30
    and $7f
    push hl
    jr jr_016_43db

    ld d, $97
    ld d, $7f
    sub c
    ld sp, hl
    and c
    inc c
    cp h
    and h
    add hl, sp
    reti


    di
    ld a, a
    cp h
    xor l
    ld [hl], $a4
    db $e4
    dec c
    ldh [c], a
    sub a
    sub c
    adc a
    db $e3
    sub d
    ldh [$ffe9], a
    sub [hl]
    and l
    and l
    and l
    and c
    inc c
    sub l
    ld a, [$7fea]
    db $ec
    db $e4
    ld a, a
    sub [hl]
    jp hl


    inc e
    adc [hl]
    db $e4
    jp hl


    ld a, a
    or $f9
    or b
    dec c
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
    sbc e
    sub d
    ld a, [de]
    and $7f
    cp h
    xor l
    ld [hl], $a4
    and $7f
    sub c
    adc a
    ldh [$ffe9], a
    ld [$bc0d], a
    and h
    add hl, sp
    reti


    ld a, [de]
    ei
    sbc h
    jp hl


    ld a, a
    push hl
    rra
    or b
    ld a, a
    db $e4
    sub d
    db $e3
    sub d
    ldh [$ffe4], a
    sub a
    ld h, b
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sub [hl]
    jp hl


    inc e
    adc [hl]
    ld [$997f], a
    sub d
    pop af
    sbc h
    adc [hl]
    sub [hl]
    rst RST_30
    ld a, a
    ld h, e
    ldh [$ff0d], a
    ld l, d
    sub [hl]
    ld hl, sp+$60
    adc a
    ldh [$ffa1], a
    inc c
    pop af
    sbc h
    adc [hl]
    sub d
    sub a
    jp hl


    ld a, a
    sub e
    rst RST_30
    ldh a, [$ffb0]
    ld a, a
    ld e, e
    cp l
    call nz, Call_016_63d9
    dec c
    ld [$9ff7], a
    sub e
    db $e4
    sbc h
    ldh [rNR21], a
    ld a, a
    sub l
    ld a, [$7fe9]
    ld e, d
    db $dd
    pop bc
    or b
    dec c
    sub c
    ld l, e
    db $e3
    ld a, a
    sub a
    or b
    sub e
    sbc h
    push hl
    adc a
    ldh [$fffd], a
    ld h, b
    and c
    inc c
    and l
    and l
    and l
    sub d
    rst RST_28
    ld a, [de]
    ei
    ld a, a
    ld h, h
    sub e
    sbc h
    db $e3
    sub d
    ld sp, hl
    sub [hl]
    push hl
    adc e
    rst RST_38
    cp h
    and h
    add hl, sp
    reti


    jp hl


    ld a, a
    and $8f
    sub a
    ld h, b
    and c
    rst RST_38
    and $8f
    sub a
    and $ea
    ld a, a
    sbc h
    ld [$92f7], a
    ret c

    cp l
    call nz, Call_000_0d16
    sub [hl]
    sub [hl]
    ld a, [$92e3]
    ld sp, hl
    and c
    dec c
    ret c

    cp l
    call nz, Call_016_7fb0
    sbc h
    rst RST_30
    ld l, l
    db $e3
    ldh a, [$ffe0]
    and l
    and l
    and l
    inc c
    sbc $83
    cp $82
    add h
    ld a, a
    add c
    ld l, d
    db $fd
    ld a, a
    and e
    add c
    add c
    adc b
    add b
    add b
    add b
    dec c
    ld a, a
    add h
    cp $81
    add l
    ld a, a
    add b
    ld l, d
    db $fd
    ld a, a
    ld a, a
    and e
    add d
    add h
    add b
    add b
    add b
    dec c
    ld a, a
    add h
    cp $81
    adc b
    ld a, a
    add e
    ld l, d
    db $fd
    ld a, a
    and e
    add c
    add h
    add l
    add b
    add b
    add b
    inc c
    ld a, a
    add h
    cp $82
    add l
    ld a, a
    add d
    ld l, d
    db $fd
    ld a, a
    and e
    add c
    add e
    add c
    add b
    add b
    add b
    dec c
    ld a, a
    add l
    cp $81
    add l
    ld a, a
    add b
    ld l, d
    db $fd
    ld a, a
    ld a, a
    and e
    add d
    add a
    add b
    add b
    add b
    dec c
    ld a, a
    add l
    cp $81
    adc c
    ld a, a
    add [hl]
    ld l, d
    db $fd
    ld a, a
    and e
    add c
    add d
    adc b
    add b
    add b
    add b
    inc c
    ld a, a
    add [hl]
    cp $81
    add l
    ld a, a
    add b
    ld l, d
    db $fd
    ld a, a
    ld a, a
    and e
    add e
    add d
    add b
    add b
    add b
    dec c
    ld a, a
    add [hl]
    cp $82
    add h
    ld a, a
    add l
    ld l, d
    db $fd
    ld a, a
    and e
    add c
    add [hl]
    add e
    add b
    add b
    add b
    dec c
    ld a, a
    add a
    cp $81
    add b
    ld a, a
    add h
    ld l, d
    db $fd
    ld a, a
    and e
    add c
    add e
    adc b
    add b
    add b
    add b
    inc c
    ld a, a
    add a
    cp $81
    add l
    ld a, a
    add b
    ld l, d
    db $fd
    ld a, a
    ld a, a
    and e
    add d
    adc c
    add b
    add b
    add b
    rst RST_18
    rst RST_38
    or h
    jp c, $a46d

    ret nz

    jp hl


    ld a, a
    ld b, h
    or c
    ld [$917f], a
    sub [hl]
    push hl
    sub d
    and c
    dec c
    cp l
    or d
    xor a
    pop bc
    ld d, $7f
    sub a
    ld a, [$92e3]
    ld sp, hl
    and l
    and l
    and l
    and c
    rst RST_38
    reti


    and h
    jp c, $c4af

    and $7f
    ldh [c], a
    sub [hl]
    db $fc
    ld a, [$7ff9]
    pop hl
    sub d
    sbc e
    sub d
    dec c
    ld c, [hl]
    and h
    reti


    or b
    ld a, a
    sbc e
    ld d, $9c
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    ld h, e
    di
    ld a, a
    ldh a, [$ff91]
    ldh [$fff7], a
    push hl
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    cp d
    or d
    db $dd
    or b
    ld a, a
    sub d
    ld a, [$93f6]
    db $e4
    sbc h
    ldh [$ffa1], a
    dec c
    and l
    and l
    and l
    db $fd
    and l
    and l
    and l
    adc e
    inc c
    cp d
    or d
    db $dd
    or b
    ld a, a
    sub d
    ld a, [$e4f9]
    sbc d
    ei
    and $0d
    push hl
    rst RST_28
    ld hl, sp+$16
    ld a, a
    ldh [c], a
    ldh a, [c]
    rst RST_30
    ld a, [$92e3]
    ld sp, hl
    ld h, e
    ld [$92e5], a
    sub [hl]
    adc d
    pop hl
    sub h
    adc a
    adc d
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
    sub [hl]
    ld l, l
    and $7f
    ld e, [hl]
    cp l
    ret nz

    and h
    ld d, $7f
    ld [$e38f], a
    sub c
    ld sp, hl
    and c
    rst RST_38
    sub l
    ld a, [$7fe9]
    ld e, [hl]
    cp l
    ret nz

    and h
    ld h, b
    and c
    dec c
    ld c, [hl]
    cp b
    cp e
    and h
    and $7f
    push hl
    ld hl, sp-$20
    db $e3
    jp hl


    ld a, a
    sbc d
    ei
    jp hl


    dec c
    di
    jp hl


    ld h, b
    and c
    rst RST_38
    sbc $5a
    xor a
    cp b
    and l
    rst RST_08
    cp b
    call z, $a4ab
    jp c, $dfdd

    jp hl


    dec c
    ld e, [hl]
    cp l
    ret nz

    and h
    ld h, b
    and c
    inc c
    db $f4
    sub l
    pop hl

jr_016_4673:
    adc [hl]
    sub e
    ld h, e
    ld a, a
    sub [hl]
    ld a, [$64ee]
    ld a, a
    sub [hl]
    ld a, [$e692]
    dec c
    ret


    xor a
    cp b
    or c
    or e
    call nz, $fa9b
    ldh [$ff7f], a
    db $ec
    ld hl, sp-$50
    sbc h
    ldh [$ff0d], a
    ld c, [hl]
    cp b
    cp e
    and h
    ld [$927f], a
    push hl
    sub d
    ld h, b
    ei
    sub e
    push hl
    and c
    rst RST_38
    sbc $44
    xor a
    jr c, jr_016_4673

    or e
    cp l
    and l
    ret c

    jp z, $dfa4

    jp hl


    dec c
    ld e, [hl]
    cp l
    ret nz

    and h
    ld h, b
    and c
    inc c
    ld h, h
    ld hl, sp-$72
    sbc b
    sbc h
    db $e3
    sub d
    ldh [rNR21], a
    ld a, a
    inc e
    adc [hl]
    sub e
    sub d
    and $0d
    sub c
    ld d, $fa
    push hl
    sub [hl]
    adc a
    ldh [$ff7f], a
    ld c, [hl]
    cp b
    cp e
    and h
    ld h, b
    and c
    rst RST_38
    ld b, h
    or c
    and $7f
    sbc $96
    db $fd
    sbc c
    sub d
    sbc h
    adc h
    sub d
    ld d, $92
    dec c
    ldh [$ffe1], a
    sub d
    ld hl, sp-$69
    db $fd
    sbc h
    adc d
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
    db $f4
    ldh [c], a
    rst RST_30
    and $7f
    db $e4
    ld hl, sp-$6f
    add hl, de
    rst RST_30
    ld a, [$f3e0]
    jp hl


    ld d, $0d
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    rra
    adc d
    inc c
    ld h, h
    sub e
    db $f4
    rst RST_30
    ld a, a
    db $f4
    ldh [c], a
    rst RST_30
    and $e4
    adc a
    db $e3
    ld a, a
    ldh [$ff92], a
    sbc [hl]
    ldh [c], a
    push hl
    di
    jp hl


    jp hl


    or $93
    ld h, b
    and l
    and l
    and l
    and c
    inc c
    or $98
    ld a, a
    sbc h
    rst RST_30
    ld l, l
    db $e3
    sub l
    sub d
    ldh [$ffee], a
    sub e
    ld d, $7f
    sub d
    sub d
    push hl
    and c
    inc c
    ld h, e
    di
    ld a, a
    sbc d
    jp hl


    rst RST_28
    rst RST_28
    ld a, a
    di
    pop hl
    ld h, b
    sbc [hl]
    ld l, d
    and l
    and l
    and l
    dec c
    db $f4
    ldh [c], a
    rst RST_30
    sub [hl]
    rst RST_30
    ld a, a
    and $19
    ld h, b
    sbc h
    ldh [$ff7f], a
    sub l
    ld a, [$0d16]
    sub e
    ldh [rNR21], a
    db $fc
    ld a, [$e9f9]
    ld [$ef7f], a
    pop hl
    ld d, $92
    push hl
    sub d
    and c
    inc c
    push hl
    db $fd
    db $e4
    sub [hl]
    ld a, a
    sbc h
    push hl
    sbc c
    ld a, [$a56a]
    and l
    and l
    adc d
    rst RST_38
    sbc c
    sub d
    sbc e
    ldh [c], a
    sbc h
    adc [hl]
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
    sbc h
    adc h
    ld a, [$7fe0]
    ld d, $92
    db $e4
    sub e
    ld h, b
    and c
    rst RST_38
    sub [hl]
    db $fc
    or b
    ld a, a
    pop af
    sub d
    ldh [$ffee], a
    sub e
    ld d, $7f
    sub d
    sub d
    or $e8
    and c
    rst RST_38
    sbc c
    sub d
    sbc e
    ldh [c], a
    sbc h
    adc [hl]
    jp hl


    ld a, a
    sub d
    ld hl, sp+$18
    pop hl
    ld h, b
    and c
    rst RST_38
    ld c, d
    push bc
    push bc
    or b
    ld a, a
    ldh [$ff6d], a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    sbc h
    rst RST_28
    adc a
    ldh [$ff8a], a
    dec c
    sub l
    ld a, [$7fea]
    ld c, d
    push bc
    push bc
    or b
    ld a, a
    ldh [$ff6d], a
    ld sp, hl
    db $e4
    ld a, a
    sub l
    push hl
    sub [hl]
    or b
    sbc d
    db $fc
    sbc l
    ld a, a
    ldh [$ff92], a
    sbc h
    ldh [c], a
    ld a, a
    ld h, b
    adc a
    ldh [$fffd], a
    ld h, b
    adc d
    rst RST_38
    rst RST_28
    pop hl
    ld d, $8f
    ldh [$ff7f], a
    ld l, d
    sbc h
    adc [hl]
    and $7f
    ldh [$ff9d], a
    sbc c
    or b
    dec c
    di
    db $e4
    ldh a, [c]
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    inc c
    sbc c
    sub d
    sub [hl]
    db $fd
    ld [$957f], a
    ld a, [$7f16]
    sbc d
    rst RST_28
    adc a
    db $e3
    sub d
    db $e3
    di
    dec c
    sub [hl]
    db $fd
    sbc c
    sub d
    push hl
    sub d
    ld a, a
    db $e4
    sub d
    adc a
    ldh [$ff7f], a
    sub [hl]
    db $fd
    inc e
    ld h, b
    and c
    inc c
    sbc a
    ld a, [$f363]
    ld a, a
    inc e
    db $fd
    di
    db $fd
    sbc l
    ld sp, hl
    ldh [$fff2], a
    and $7f
    sub l
    ld a, [$f8b0]
    adc l
    sub e
    pop hl
    sbc h
    ldh [$ffa1], a
    rst RST_38
    ld [hl], $d7
    cp l
    or b
    ld a, a
    db $fc
    adc a
    db $e3
    sbc h

jr_016_4855:
    rst RST_28
    adc a
    ldh [$ffa1], a
    dec c
    sbc h
    sub [hl]
    di
    ld a, a
    sbc c
    sub d
    sbc e
    ldh [c], a
    sbc h
    adc [hl]
    jp hl


    ld a, a
    ld [hl], $d7
    cp l
    or b
    adc d
    inc c
    sbc l
    jr jr_016_4855

    ld a, a
    sbc c
    sub d
    sub [hl]
    db $fd
    ld d, $7f
    ld h, e
    db $e3
    sub a
    db $e3
    ld a, a
    sub l
    ld a, [$e0ea]
    sub d
    xor $9b
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    ld c, d
    push bc
    push bc
    jp hl


    ld a, a
    sub [hl]
    db $fc
    or b
    ld a, a
    ldh [$ff6d], a
    ld sp, hl
    push hl
    db $fd
    db $e3
    and l
    and l
    and l
    sub d
    rst RST_28
    ld h, h
    sub a
    ld a, a
    cp e
    reti


    ld h, e
    di
    ld a, a
    ldh [$ff6d], a
    push hl
    sub d
    or $a1
    rst RST_38
    ld a, [$9c8f]
    adc h
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    dec c
    push hl
    db $fd
    ld h, b
    sub [hl]
    ld a, a
    sub [hl]
    ld e, $e4
    sub l
    sbc h
    ld d, $7f
    db $fc
    ld sp, hl
    sbc b
    db $e3
    dec c
    pop de
    db $dd
    pop de
    db $dd
    sbc l
    ld sp, hl
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    ld a, [$9c8f]
    adc h
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    dec c
    sbc d
    jp hl


    ld a, a
    sbc h
    adc h
    ld hl, sp-$72
    sub e
    and $ea
    ld a, a
    inc e
    adc [hl]
    sub e
    sub a
    adc h
    sbc b
    ld d, $95
    ld a, [$969c]
    ld a, a
    sub d
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    cp h
    and h
    call nz, Call_016_7fea
    push af
    sub [hl]
    and $7f
    sbc h
    adc a
    sub [hl]
    ld hl, sp-$1c
    dec c
    sbc d
    db $e3
    sub d
    sbc e
    ld a, [$92e3]
    ld sp, hl
    and c
    inc c
    sbc d
    ld a, [$f7e5]
    ld a, a
    push hl
    ld d, $e0
    ld l, e
    ld h, e
    di
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub a
    and $0d
    sbc l
    ld a, [de]
    sbc [hl]
    sbc a
    sub e
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    db $eb
    or $99
    ld d, $7f
    sub l
    ld hl, sp-$1d
    sub d
    ld sp, hl
    jp hl


    ld h, e
    ld a, a
    rst RST_08
    ld b, h
    jp hl


    dec c
    sbc a
    db $e4
    ld [$f07f], a
    sub h
    push hl
    sub d
    and c
    rst RST_38
    rst RST_08
    ld b, h
    sub [hl]
    rst RST_30
    ld a, a
    adc $a4
    pop de
    jp hl


    ld a, a
    or $93
    sbc l
    ld d, $0d
    ldh a, [$ff94]
    ld sp, hl
    and c
    rst RST_38
    and l
    and l
    and l
    sub c
    ld a, [$0d8b]
    add b
    ld l, d
    db $fd
    or b
    ld a, a
    ld a, [de]
    sub e
    sbc c
    sub d
    sbc l
    ld sp, hl
    db $e4
    and l
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    sub c
    adc a
    adc d
    adc d
    adc d
    dec c
    add c
    add c
    add d
    add b
    add b
    add b
    ld b, h
    reti


    and $7f
    push hl
    ld sp, hl
    inc e
    adc h
    push hl
    sub d
    sub [hl]
    adc d
    rst RST_38
    ld [$16f8], a
    ldh a, [$ffe6]
    ld [$9a7f], a
    sub e
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    sbc $e4
    sub e
    push hl
    db $fd
    db $f4
    ld a, a
    db $fc
    sbc l
    ld a, [$e9f3]
    and $0d
    ld a, a
    ld a, [de]
    pop hl
    adc l
    sub e
    sub d
    adc d
    rst RST_18
    rst RST_38
    sbc h
    adc h
    sbc h
    adc [hl]
    sub e
    ld d, $7f
    or d
    rst RST_10
    or d
    rst RST_10
    sbc h
    push hl
    ld d, $f7
    dec c
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sub e
    ld sp, hl
    sbc e
    sub d
    ld a, a

jr_016_49e0:
    sub l
    db $fd
    push hl
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    dec c
    sub d
    sub a
    or b
    ld a, a
    ldh [c], a
    jr jr_016_49e0

    di
    push hl
    sbc b
    ld a, a
    db $e4
    push hl
    ld hl, sp-$17
    dec c
    sub l
    db $e4
    sbc d
    and $7f
    rst RST_28
    sbc b
    sbc h
    ldh [$ffe3], a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sbc c
    sub d
    sbc e
    ldh [c], a
    ld [$9b7f], a
    db $fc
    ld d, $9c
    sub d
    ld a, a
    sbc h
    ldh a, [$fffd]
    ld d, $0d
    sub a
    rst RST_30
    sub d
    jp hl


    or $93
    ld h, b
    and c
    inc c
    db $ed
    sub d
    db $fc
    or b
    ld a, a
    ldh a, [$ff60]
    sbc h
    ldh [$ff7f], a
    db $e4
    sub d
    sub e
    ld a, a
    ldh [c], a
    ldh a, [$ff63]
    dec c
    ldh [$ff92], a
    xor $9b
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sub a
    adc [hl]
    sub e
    ld h, h
    sub e
    inc e
    adc l
    sub e
    ldh [$ff98], a
    jp hl


    ld a, a
    rst RST_28
    sub h
    ld h, b
    and c
    dec c
    sbc d
    jp hl


    pop hl
    sub d
    sub a
    ld [$e17f], a
    sub c
    db $fd
    ld d, $7f
    db $fc
    ld sp, hl
    sbc b
    dec c
    sbc c
    sub d
    sub [hl]
    db $fd
    ld h, e
    sbc e
    sub h
    di
    ld a, a
    pop hl
    sub [hl]
    or $f7
    push hl
    sub d
    and c
    rst RST_38
    cp h
    xor l
    ld [hl], $a4
    jp hl


    ld a, a
    or c
    ld e, d
    and h
    call nz, Call_016_7fe9
    rst RST_28
    sub h
    jp hl


    dec c
    db $e4
    sub l
    ld hl, sp+$60
    and c
    rst RST_38
    db $eb
    db $e4
    sbc e
    rst RST_28
    jp hl


    ld a, a
    sub d
    sub h
    or b
    ld a, a
    rst RST_08
    ld b, h
    sub [hl]
    rst RST_30
    dec c
    jp hl


    rra
    sub a
    sbc d
    pop af
    push hl
    db $fd
    db $e3
    and l
    and l
    and l
    adc d
    rst RST_38
    sbc h
    rst RST_28
    di
    or $93
    jp hl


    ld a, a
    rst RST_08
    ld b, h
    ld h, b
    and c
    rst RST_38
    db $ec
    ei
    sub e
    sbc h
    adc h
    rst RST_30
    sbc h
    sub d
    and l
    and l
    and l
    and c
    dec c
    ld c, h
    jp nz, $c24c

    ld a, a
    sub d
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    cp h
    xor l
    ld [hl], $a4
    jp hl


    ld a, a
    db $ed
    db $f4
    jp hl


    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    dec c
    db $f4
    sbc l
    di
    jp hl


    jp hl


    ld a, a
    or [hl]
    scf
    ld d, $7f
    sub [hl]
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    or [hl]
    scf
    ld [$f37f], a
    adc a
    db $e3
    sub d
    push hl
    sub d
    sbc h
    ld a, a
    ld h, h
    sub e
    sbc l
    ld a, [$0d6a]
    push hl
    sub [hl]
    and $7f
    ld [$fa92], a
    ld sp, hl
    jp hl


    ld h, b
    ei
    sub e
    sub [hl]
    adc e
    rst RST_38
    db $f4
    sbc l
    di
    jp hl


    jp hl


    ld a, a
    or [hl]
    scf
    and l
    and l
    and l
    and c
    sbc d
    ld a, [$7f16]
    ld e, [hl]
    or d
    db $dd
    call nz, $8a60
    rst RST_38
    push hl
    sbc e
    sbc c
    push hl
    sub d
    ld a, a
    sub l
    db $e4
    sbc d
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    dec c
    sub l
    sbc b
    sbc e
    db $fd
    jp hl


    ld a, a
    sub d
    sub e
    sbc d
    db $e4
    and $7f
    sub d
    pop hl
    sub d
    pop hl
    dec c
    sub e
    push hl
    dec e
    sub d
    db $e3
    sub d
    ld sp, hl
    rra
    and l
    and l
    and l
    and c
    rst RST_38
    db $ec
    ei
    sub e
    sbc h
    adc h
    ld d, $7f
    add l
    cp [hl]
    db $dd
    call nz, $f27f
    jr @-$01

    ld h, e
    sbc b
    ld a, [$92e4]
    adc a
    db $e3
    ld a, a
    sub l
    ld a, [$7fe9]
    sub c
    sbc h
    and $0d
    rst RST_28
    db $e4
    db $fc
    ld hl, sp-$1e
    sub d
    ldh [$ffa1], a
    inc c
    sub e
    ld a, [de]
    sbc c
    push hl
    sbc b
    db $e3
    ld a, a
    or d
    rst RST_10
    or d
    rst RST_10
    sbc h
    db $e3
    sub a
    ldh [$ffa1], a
    rst RST_38
    sub l
    ld a, [$7f16]
    sub c
    sub d
    sbc e
    ldh [c], a
    sbc l
    ld sp, hl
    db $e4
    ld a, a
    db $ec
    ei
    sub e
    sbc h
    adc h
    ld [$9291], a
    sbc a
    or $98
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $60
    db $fd
    push hl
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    sbc h
    ld l, d
    rst RST_30
    sbc b
    ld a, a
    ld h, b
    db $fd
    push hl
    jp hl


    ld a, a
    sub d
    sub h
    and $0d
    ld a, a
    db $e4
    ldh a, [c]
    db $e3
    sbc b
    ld h, b
    sbc e
    sub d
    or $8a
    rst RST_18
    inc c
    sub e
    pop af
    and l
    and l
    and l
    sbc d
    ld a, [$7fea]
    rst RST_28
    dec e
    sub d
    adc d
    dec c
    sbc d
    sub d
    ldh [c], a
    and $7f
    sub [hl]
    sub [hl]
    db $fc
    rst RST_30
    push hl
    sub d
    xor $93
    ld d, $0d
    or $9b
    sbc a
    sub e
    ld h, b
    and c
    rst RST_38
    sbc $60
    db $fd
    push hl
    jp hl


    ld a, a
    sub d
    sub h
    and $7f
    db $e4
    ldh a, [c]
    db $e3
    di
    rst RST_30
    sub h
    ld sp, hl
    and c
    ld a, a
    or $96
    adc a
    ldh [$ff7f], a
    or $96
    adc a
    ldh [$ffa1], a
    rst RST_18
    inc c
    db $ec
    ei
    sub e
    sbc h
    adc h
    ld [$e27f], a
    ld l, h
    db $f4
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    sub l
    ld a, [$7f16]
    push hl
    and $b0
    ld a, a
    sub d
    adc a
    db $e3
    di
    ld a, a
    pop af
    ld h, b
    ld h, b
    and c
    dec c
    sbc d
    sub d
    ldh [c], a
    and $7f
    sub [hl]
    sub [hl]
    db $fc
    adc a
    db $e3
    ld [$927f], a
    sbc c
    push hl
    sub d
    adc d
    rst RST_38
    db $ec
    ei
    sub e
    sbc h
    adc h
    ld [$967f], a
    add sp, -$50
    ld a, a
    sub e
    sbc c
    db $e4
    ld sp, hl
    db $e4
    dec c
    sub e
    ld a, [$9f9c]
    sub e
    and $7f
    ldh [c], a
    ld l, h
    db $f4
    sub d
    ldh [$ffa1], a
    inc c
    sbc $9a
    ld a, [$7f63]
    sub c
    ldh [c], a
    sbc b
    db $e3
    ld a, a
    sub c
    rst RST_28
    and h
    sub d
    dec c
    ld a, a
    cp d
    and h
    res 4, h
    and $7f
    sub c
    ld hl, sp-$1e
    sbc c
    ld sp, hl
    rra
    adc d
    inc c
    ld a, a
    ld h, b
    db $fd
    push hl
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
    sbc l
    and c
    dec c
    ld a, a
    sub d
    ldh [c], a
    sub [hl]
    ld a, a
    sub [hl]
    add sp, -$16
    ld a, a
    sub [hl]
    sub h
    sbc h
    rst RST_28
    sbc l
    adc d
    rst RST_18
    inc c
    sub l

Jump_016_4ca4:
    ld a, [$7fea]
    sub d
    ldh [c], a
    di
    ld a, a
    sbc d
    jp hl


    db $e3
    or b
    ld a, a
    di
    pop hl
    sub d
    db $e3
    dec c
    inc e
    adc [hl]
    sub e
    xor $93
    db $f4
    or b
    ld a, a
    db $ec
    db $f4
    sbc h
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    cp l
    or [hl]
    xor a
    adc d
    inc c
    ld c, [hl]
    cp b
    cp e
    and h
    db $e4
    sbc h
    db $e3
    jp hl


    ld a, a
    db $eb
    ld l, e
    ld d, $0d
    or $f0
    ld d, $94
    adc a
    db $e3
    sub a
    ldh [$ffa1], a
    inc c
    sbc h
    sub [hl]
    sbc h
    ld a, a
    db $ec
    ei
    sub e
    sbc h
    adc h
    ld [$957f], a
    ld a, [$0de9]
    ld e, d
    db $dd
    pop bc
    or b
    ld a, a
    call z, $ccd7
    rst RST_10
    xor a
    db $e4
    ld a, a
    or $99
    ldh [$ffa1], a
    rst RST_38
    db $ec
    ei
    sub e
    sbc h
    adc h
    ld [$367f], a
    jp nz, $c236

    db $e4
    ld a, a
    ldh [$ff6d], a
    ldh [$ffa1], a
    dec c
    or $ee
    ld h, h
    ld a, a
    sub l
    push hl
    sub [hl]
    ld d, $7f
    sbc l
    sub d
    db $e3
    sub d
    ldh [$ffe9], a
    ld h, e
    dec c
    sub c
    ei
    sub e
    and c
    rst RST_38
    sub l
    db $e4
    sbc d
    ld [$987f], a
    ld l, e
    or b
    ld a, a
    or [hl]
    xor a
    cp b
    db $dd
    or [hl]
    xor a
    cp b
    db $dd
    dec c
    sbc e
    sbc [hl]
    push hl
    ld d, $f7
    ld a, a
    add sp, -$0f
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    db $fc
    sub [hl]
    sub d
    ld a, a
    sub l
    db $fd
    push hl
    jp hl


    ld a, a
    sub a
    adc h
    sbc b
    ld h, b
    and c
    rst RST_38
    sub a
    adc h
    sbc b
    ld [$9a7f], a
    sbc d
    or b
    ld a, a
    db $e4
    sub l
    adc a
    db $e3
    dec c
    sbc h
    adc h
    ld hl, sp-$72
    sub e
    or b
    ld a, a
    sub d
    sub a
    sub a
    sbc h
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    cp h
    xor l
    ld [hl], $a4
    jp hl


    ld a, a
    db $ed
    db $f4
    ld h, b
    and c
    dec c
    push hl
    db $fd
    db $e3
    ld a, a
    sub a
    ldh [$ffe5], a
    sub d
    ld a, a
    db $ed
    db $f4
    push hl
    db $fd
    ld h, b
    adc d
    inc c
    xor $9a
    ld hl, sp-$1c
    ld a, a
    db $f4
    sbc l
    di
    jp hl


    jp hl


    ld a, a
    sbc d
    sub e
    sbc l
    sub d
    jp hl


    dec c
    and $95
    sub d
    ld h, e
    ld a, a
    sub d
    sub a
    ld d, $7f
    ldh [c], a
    rst RST_28
    ld hl, sp-$61
    sub e
    ld h, b
    and c
    rst RST_38
    cp h
    xor l
    ld [hl], $a4
    jp hl


    ld a, a
    db $ed
    db $f4
    ld h, b
    and c
    rst RST_38
    sbc d
    jp hl


    rst RST_10
    or d
    call nz, Call_016_7fea
    pop hl
    sub d
    sbc e
    sub d
    and c
    dec c
    cp h
    xor l
    ld [hl], $a4
    ld d, $7f
    ld l, l
    xor a
    ld b, h
    ld h, e
    ld a, a
    ld h, h
    sbc b
    sbc h
    adc [hl]
    and $0d
    inc e
    sub [hl]
    db $fd
    or b
    ld a, a
    ldh [c], a
    sub d
    db $f4
    sbc h
    ldh [$ffe4], a
    ld [$950d], a
    di
    sub h
    push hl
    sub d
    ld d, $a5
    and l
    and l
    and c
    rst RST_38
    cp h
    xor l
    ld [hl], $a4
    jp hl


    ld a, a
    ld l, l
    xor a
    ld b, h
    ld h, b
    and c
    dec c
    ldh [c], a
    sub [hl]
    sub d
    sbc l
    rla
    db $e3
    ld a, a
    rst RST_28
    db $fd
    push hl
    sub [hl]
    ld d, $0d
    db $ed
    sbc d
    db $fd
    ld h, e
    sub d
    ld sp, hl
    and c
    rst RST_38
    xor $9a
    ld hl, sp+$60
    rst RST_30
    sbc c
    jp hl


    ld a, a
    jp Jump_016_4ca4


    reti


    ld h, b
    and c
    rst RST_38
    xor $9a
    ld hl, sp-$50
    ld a, a
    sub [hl]
    ld l, h
    adc a
    ldh [$ff0d], a
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
    sub l
    db $f4
    adc e
    dec c
    db $e4
    ld l, e
    rst RST_30
    ld d, $7f
    sub c
    ld sp, hl
    rra
    adc d
    rst RST_38
    or $93
    db $ec
    sbc b
    ld b, b
    db $dd
    cp l
    ld h, b
    and c
    dec c
    or [hl]
    ld [hl], $d0
    or b
    ld a, a
    ldh a, [$fff9]
    db $e4
    ld a, a
    sub d
    sub d
    sub l
    db $e4
    sbc d
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
    sub l
    ld a, [$8a9b]
    rst RST_38
    or $93
    db $ec
    sbc b
    ld b, b
    db $dd
    cp l
    jp hl


    ld a, a
    or [hl]
    ld [hl], $d0
    ld [$fc0d], a
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    sub c
    jp hl


    ld a, a
    ld b, h
    or c
    jp hl


    ld a, a
    pop af
    sbc d
    sub e
    ld d, $7f
    adc $a4
    pop de
    ld h, b
    and c
    rst RST_38
    jp $afa8


    cp h
    xor l
    ld h, b
    and c
    dec c
    ld [$b0e5], a
    ld a, a
    sub [hl]
    db $fd
    ld h, b
    jp hl


    ld h, b
    ei
    sub e
    and c
    rst RST_38
    ldh [c], a
    sub [hl]
    sub d
    db $ec
    ld sp, hl
    sbc h
    jp hl


    ld a, a
    jp $afa8


    cp h
    xor l
    ld h, b
    and c
    rst RST_38
    sbc d
    jp hl


    ld a, a
    rst RST_08
    cp b
    rst RST_10
    ld d, $7f
    sbc h
    adc h
    ld l, l
    ld a, [$7f6a]
    sub d
    ei
    sub d
    ei
    sub l
    di
    sbc h
    ei
    sub d
    ld a, a
    ld [$9ce5], a
    ld d, $0d
    sub a
    sbc c
    ldh [$ff60], a
    ei
    sub e
    and $8a
    rst RST_38
    cp h
    xor l
    ld [hl], $a4
    jp hl


    ld a, a
    sub l
    sub a
    and $92
    ld hl, sp-$17
    ld a, a
    sbc d
    sub e
    sbc l
    sub d
    dec c
    sbc $5b

jr_016_4ef9:
    or c
    jp hl


    push af
    sub e
    jr jr_016_4ef9

    rst RST_18
    ld h, b
    and c
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    ld [$eb7f], a
    ei
    add hl, de
    rst RST_30
    ld a, [$efe0]
    rst RST_28
    ld h, b
    and c
    dec c
    sbc h
    ld l, [hl]
    sub e
    sub a
    inc e
    ld d, $7f
    jp hl


    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    and l
    and l
    and l
    sub c
    adc a
    adc d
    dec c
    cp h
    xor l
    ld [hl], $a4
    ld d, $7f
    sub a
    ld hl, sp-$1c
    adc a
    ldh [$ffe4], a
    sbc d
    ei
    ld d, $91
    ld sp, hl
    adc d
    push hl
    and $b0
    ld a, a
    sub a
    ld hl, sp-$1c
    adc a
    ldh [$ffe9], a
    ld h, b
    ei
    sub e
    adc e
    rst RST_38
    cp l
    ret c

    xor a
    call nz, Call_016_7f16
    ld [$8f92], a
    db $e3
    sub d
    db $e3
    ld a, a
    cp [hl]
    cp b
    cp h
    and h
    push hl
    ld b, h
    jp c, Jump_016_60bd

    and c
    rst RST_38
    or $1a
    ld a, [$7fe0]
    db $ec
    sbc b
    ld h, b
    and c
    dec c
    sbc [hl]
    db $fd
    ldh [$ff98], a
    sbc e
    ld a, [$e9f9]
    or b
    ld a, a
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    cp l
    or [hl]
    xor a
    adc d
    rst RST_38
    sbc c
    sub d
    sub [hl]
    db $fd
    jp hl


    ld a, a
    rst RST_08
    cp b
    rst RST_08
    and h
    call z, $a4a8
    sub [hl]
    rst RST_30
    jp hl


    dec c
    db $e3
    ld d, $f0
    ld h, b
    and c
    inc c
    sbc $9c
    rst RST_20
    rst RST_28
    sub h
    and $7f
    sbc d
    sbc b
    ld [$9c98], a

jr_016_4fa5:
    or $93
    and c
    dec c
    ld a, a
    sbc d
    jp hl


    db $e3
    ld d, $f0
    ld d, $7f
    ldh a, [$ffe2]
    sub [hl]
    ld a, [$7f6a]
    db $fc
    ldh [$ff9c], a
    ld [$9d7f], a
    jr jr_016_4fa5

    ld a, a
    sbc d
    ei
    sbc e
    ld a, [$9ce3]
    rst RST_28
    sub e
    ld h, b
    ei
    sub e
    and c
    inc c
    ld a, a
    ld h, b
    ld d, $7f
    pop af
    dec de
    pop af
    dec de
    db $e4
    ld a, a
    db $eb
    db $e4
    ld hl, sp+$63
    dec c
    ld a, a
    sbc b
    ldh [rOCPS], a
    ld sp, hl
    ldh [c], a
    di
    ld hl, sp-$16
    push hl
    sub d
    and c
    inc c
    ld a, a
    ld h, e
    ld [$ea7f], a
    push hl
    sbc h
    or b
    ld a, a
    ld [$f21c], a
    or $93
    and l
    and l
    and l
    and c
    inc c
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    ld [$b67f], a
    and h
    reti


    cp l
    call nz, $99dd
    sub d
    ld l, h
    and $0d
    ld a, a
    call c, $dbb2
    or b
    ld a, a
    db $fc
    ldh [$ff9c], a
    db $e3
    sub d
    ldh [$ffa1], a
    inc c
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    rst RST_30
    ld d, $7f
    ld [$f21c], a
    or $93
    db $e4
    sbc h
    db $e3
    sub d
    ldh [$ff7f], a
    sbc h
    ld a, [de]
    db $e4
    jp hl


    ld a, a
    ldh a, [c]
    sbc d
    ld l, [hl]
    sbc h
    ld hl, sp-$72
    sub e
    ld h, b
    and c
    inc c
    ld a, a
    db $fc
    ldh [$ff9c], a
    ld [$9f7f], a
    jp hl


    ld a, a
    sub [hl]
    add sp, -$17
    dec c
    ld a, a
    sub e
    sbc c
    db $fc
    ldh [$ff9c], a
    or b
    ld a, a
    sbc e
    sbc [hl]
    rst RST_30
    ld a, [$92e3]
    ldh [$ffa1], a
    inc c
    ld a, a
    rst RST_28
    dec e
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    sub [hl]
    rst RST_30
    ld a, a
    ldh a, [c]
    and $0d
    ld a, a
    sub a
    dec e
    jp hl


    sub c
    ld sp, hl
    ld a, a
    sub l
    db $e4
    sbc d
    and $7f
    sub [hl]
    add sp, $16
    dec c
    ld a, a
    db $fc
    ldh [$ff9b], a
    ld a, [$a5f9]
    and l
    and l
    and c
    inc c
    ld a, a
    sbc a
    sbc h
    db $e3
    ld a, a
    sbc a
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    sub [hl]
    rst RST_30
    ld a, a
    db $fc
    ldh [$ff9c], a
    and $7f
    db $fc
    ldh [$ff9b], a
    ld a, [$fc7f]
    ldh [$ff9c], a
    ld d, $7f
    or [hl]
    and h
    reti


    cp l
    call nz, $e6dd
    ld a, a
    sub [hl]
    add sp, -$50
    ld a, a
    db $fc
    ldh [$ff9c], a
    db $e3
    sub d
    ldh [$ffa1], a
    inc c
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    ld d, $7f
    push hl
    and $b0
    ld a, a
    sbc h
    or $93
    db $e4
    dec c
    ld a, a
    ldh [$ff98], a
    rst RST_30
    db $fd
    ld h, e
    sub d
    ldh [$ffe9], a
    sub [hl]
    or b
    ld a, a
    db $fc
    ldh [$ff9c], a
    and $0d
    ld a, a
    sub a
    sub d
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
    ld [$e07f], a
    ld h, b
    jp hl


    ld a, a
    sub [hl]
    add sp, -$17
    dec c
    ld a, a
    ld [$6b9a], a
    db $f4
    and $7f
    sbc l
    rla
    push hl
    sub d
    and l
    and l
    and l
    and c
    rst RST_18
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
    ld h, b
    and c
    dec c
    cp h
    xor l
    ld [hl], $a4
    and $ea
    ld a, a
    sbc c
    sub d
    sub [hl]
    db $fd
    jp hl


    ld a, a
    sbc d
    sub d
    ld l, e
    db $e4
    di
    sub d
    ld sp, hl
    jp hl


    sub [hl]
    adc e
    inc c
    or $96
    rst RST_30
    rst RST_20
    sbc d
    db $e4
    or b
    ld a, a
    ldh [$ff98], a
    rst RST_30
    db $fd
    ld h, e
    sub d
    push hl
    sbc c
    ld a, [$f66a]
    sub d
    ld d, $a5
    and l
    and l
    and c
    inc c
    or $98
    ldh a, [$fff9]
    db $e4
    ld a, a
    ret z

    and h
    pop de
    ld d, $7f
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_08
    cp b
    rst RST_08
    and h
    call z, $a4a8
    and l
    and l
    and l
    adc d
    inc c
    cp h
    and h
    add hl, sp
    reti


    or b
    ld a, a
    sbc d
    ei
    sbc h
    ldh [$ffe4], a
    ld a, a
    sub d
    adc a
    db $e3
    dec c
    sub l
    ld a, [$7fb0]
    sbc h
    ldh a, [c]
    sub c
    add hl, de
    ldh [$ff7f], a
    sbc c
    sub d
    sub [hl]
    db $fd
    ld h, b
    adc d
    rst RST_38
    sub l
    ld a, [$7fe9]
    sbc d
    ld l, h
    sbc h
    ld [$987f], a
    sub e
    or b
    ld a, a
    sub a
    adc a
    ldh [$ff8a], a
    inc c
    sbc h
    adc h
    sbc h
    adc [hl]
    sub e
    ld [$fb7f], a
    sub e
    inc e
    db $fd
    db $e4
    ld [$950d], a
    di
    sub h
    push hl
    sub d
    ld a, a
    sbc l
    ld l, d
    db $f4
    sbc e
    ld h, e
    ld a, a
    sbc a
    jp hl


    dec c
    sbc d
    ld l, h
    sbc h
    or b
    ld a, a
    ldh [c], a
    sub [hl]
    db $fd
    ld h, b
    adc d
    rst RST_38
    sbc a
    sbc h
    db $e3
    ld a, a
    di
    jp hl


    sbc l
    ld a, [de]
    sub d
    ld a, a
    pop hl
    sub [hl]
    rst RST_30
    ld h, e
    dec c
    sub l
    ld a, [$7fb0]
    adc $a4
    pop de
    and $7f
    ldh [$ffe0], a
    sub a
    ldh [c], a
    sbc c
    ldh [$ffa1], a
    rst RST_38
    sbc $ef
    adc a
    ldh [$ff98], a
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    sbc e
    sub d
    sub a
    db $fd
    jp hl


    ld a, a
    db $fc
    sub [hl]
    sub d
    di
    db $fd
    ld [$7f0d], a
    ld a, [$1792]
    sbc h
    rst RST_30
    dec e
    ld l, d
    sub [hl]
    ld hl, sp+$60
    adc d
    inc c
    ld a, a
    di
    sub e
    sub d
    pop hl
    ld h, h
    ld a, a
    ld a, [$1792]
    sbc e
    xor $93
    or b
    dec c
    ld a, a
    ld l, l
    db $fd
    sub a
    adc [hl]
    sub e
    sbc h
    push hl
    sub l
    sbc l
    db $fd
    ld h, b
    push hl
    adc d
    rst RST_18
    rst RST_38
    sbc $92
    sub d
    ld a, a
    sub l
    db $e3
    db $fd
    sub a
    ld h, e
    sbc l
    add sp, -$5b
    and l
    and l
    and c
    rst RST_18
    rst RST_38
    ld h, e
    db $fd
    ld a, e
    adc [hl]
    sub e
    rst RST_30
    sbc h
    sub d
    and c
    dec c
    db $fc
    ld a, [hl-]
    pop de
    ld h, e
    ld a, a
    sub [hl]
    ldh [$ff98], a
    ld a, a
    ldh [rOCPS], a
    add sp, -$1d
    sub c
    ld sp, hl
    and c
    rst RST_38
    rla
    db $fd
    sbc d
    sub e
    or $97
    db $fd
    jp hl


    ld a, a
    ld h, e
    db $fd
    ld a, e
    adc [hl]
    sub e
    ld d, $0d
    add h
    rst RST_28
    sub d
    ld a, a
    db $e4
    inc e
    rst RST_30
    ld a, [$92e3]
    ld sp, hl
    and c
    inc c
    db $eb
    ld h, d
    sbc c
    db $e4
    ld a, a
    sub a
    db $fd
    ld d, $98
    ld [$e27f], a
    rla
    jp hl


    or $93
    and $0d
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    sbc $84
    cp $81
    add l
    ld a, a
    ld a, a
    ld a, a
    and e
    add c
    add d
    add b
    add b
    dec c
    ld a, a
    add l
    cp $81
    add l
    ld a, a
    ld a, a
    ld a, a
    and e
    add c
    add e
    add l
    add b
    dec c
    ld a, a
    add [hl]
    cp $81
    add l
    ld a, a
    ld a, a
    ld a, a
    and e
    add c
    add [hl]
    add b
    add b
    dec c
    ld a, a
    add a
    cp $81
    add l
    ld a, a
    ld a, a
    ld a, a
    and e
    add c
    add h
    add l
    add b
    rst RST_18
    rst RST_38
    and l
    and l
    and l
    db $fd
    adc e
    dec c
    ld h, h
    sbc d
    sub [hl]
    ld h, e
    ld a, a
    ldh a, [$ffe0]
    or $93
    push hl
    adc e
    rst RST_38
    sbc a
    sub e
    inc e
    sub a
    ld h, b
    and c
    dec c
    cp h
    xor l
    ld [hl], $a4
    ld [$9a7f], a
    ld a, [$7f63]
    ld h, h
    sbc d
    or b
    dec c
    sbc a
    sub e
    inc e
    sbc h
    db $e3
    sub d
    ld sp, hl
    jp hl


    ld h, b
    ei
    sub e
    adc e
    rst RST_38
    sbc a
    sub e
    inc e
    sub a
    ld h, b
    and c
    dec c
    push hl
    sub [hl]
    jp hl


    ld a, a
    ld a, [hl-]
    ret nc

    ld d, $7f
    sub [hl]
    db $fd
    ldh [$fffd], a
    and $0d
    sbc l
    db $e3
    rst RST_30
    ld a, [$f6f9]
    sub e
    and $7f
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    sub l
    db $fd
    push hl
    and $7f
    ld [$9ce5], a
    sub [hl]
    sbc c
    ldh [$ffa1], a
    dec c
    ld h, b
    ld d, $7f
    db $e4
    push hl
    ld hl, sp-$17
    ld a, a
    sub l
    db $e4
    sbc d
    db $e4
    ld a, a
    ld [$9de5], a
    jp hl


    and $f1
    pop hl
    adc l
    sub e
    ld h, e
    ld a, a
    sub l
    ld a, [$7fe6]
    sub a
    ld h, d
    sub [hl]
    push hl
    sub d
    and c
    rst RST_38
    cp h
    xor l
    ld [hl], $a4
    jp hl


    ld a, a
    sbc a
    sub e
    inc e
    sub a
    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    cp h
    xor l
    ld [hl], $a4
    ld [$e27f], a
    sbc b
    ld h, d
    sbc b
    dec c
    sbc a
    sub e
    inc e
    sub a
    jp hl


    ld a, a
    and $91
    db $fc
    push hl
    sub d
    ld a, a
    sub l
    db $fd
    push hl
    ld h, b
    and c
    rst RST_38
    ld a, [hl-]
    ret nc

    jp hl


    ld a, a
    ld [$8f92], a
    ldh [$ff7f], a
    sbc a
    sub e
    inc e
    sub a
    jp hl


    dec c
    db $ec
    sbc b
    ei
    ld h, b
    and c
    inc c
    ld h, e
    di
    ld a, a
    sbc d
    jp hl


    db $ed
    db $f4
    or b
    ld a, a
    sbc a
    sub e
    inc e
    sbc h
    db $e3
    ld a, a
    ld h, e
    ldh [$ff0d], a
    ld a, [hl-]
    ret nc

    db $e4
    ld [$967f], a
    db $fd
    ld d, $94
    rst RST_30
    ld a, [$92e5]
    push hl
    and c
    inc c
    cp h
    xor l
    ld [hl], $a4
    ld d, $7f
    sub a
    ld a, [$1d92]
    sub a
    ld h, b
    adc a
    ldh [$fff7], a
    dec c
    sbc d
    jp hl


    db $ed
    db $f4
    ld d, $7f
    sbc d
    db $fd
    push hl
    and $7f
    sub a
    ldh [$ffe5], a
    sub d
    ld [$ea1d], a
    push hl
    sub d
    sub [hl]
    rst RST_30
    push hl
    and c
    inc c
    and l
    and l
    and l
    db $fd
    adc e
    dec c
    sub l
    sub [hl]
    sbc h
    sub d
    push hl
    and c
    inc c
    sbc a
    sub e
    inc e
    sub a
    ld h, e
    ld a, a
    sbc l
    adc a
    ldh [$ff7f], a
    ld a, [hl-]
    ret nc

    and $9c
    db $e3
    ld [$950d], a
    sub l
    sub a
    sub d
    sbc h
    ld a, a
    sub [hl]
    sbc b
    ld l, d
    adc a
    db $e3
    sub d
    ld sp, hl
    rra
    adc d
    dec c
    ld [$a5e3], a
    and l
    and l
    push hl
    db $fd
    ld h, b
    ei
    sub e
    adc e
    rst RST_38
    sbc a
    sub e
    inc e
    sub a
    jp hl


    ld a, a
    db $ec
    sbc b
    ei
    ld d, $7f
    db $f4
    ld l, h
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    db $ec
    sub e
    db $e4
    sub e
    ld h, b
    and c
    dec c

jr_016_5426:
    sub l
    di
    db $e3
    and $7f
    push hl
    jr jr_016_5426

    ld d, $97
    ld d, $9c
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    sbc $bc
    xor l
    ld [hl], $a4
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    db $fc
    ldh [$ff9c], a
    ld d, $7f
    db $f4
    rst RST_30
    ld a, [$e4e0]
    sub a
    ld [$7f0d], a
    sbc c
    sub d
    sbc e
    ldh [c], a
    xor $fd
    ld l, h
    pop hl
    adc [hl]
    sub e
    and $0d
    ld a, a
    sbc d
    jp hl


    db $e3
    ld d, $f0
    or b
    ld a, a
    db $fc
    ldh [$ff9c], a
    db $e3
    sbc b
    ld a, [$0ca1]
    ld a, a
    or [hl]
    and h
    reti


    cp l
    call nz, $99dd
    sub d
    ld l, h
    and $ea
    dec c
    ld a, a
    ld e, $8f
    ldh [$ff92], a
    ld a, a
    ldh a, [$fff7]
    ld a, [$e5f9]
    adc d
    rst RST_18
    rst RST_38
    ld a, [hl-]
    ret nc

    ld l, h
    sbc b
    ei
    ld [$967f], a
    ldh [$ff92], a
    ld a, a
    sbc a
    dec de
    sub d
    ld h, e
    dec c
    ld h, e
    sub a
    db $e3
    sub d
    ld sp, hl
    rst RST_30
    sbc h
    sbc b
    ld a, a
    db $f4
    ld l, h
    ld a, [$92e5]
    adc d
    rst RST_38
    sub l
    ld a, [$7fea]
    sub l
    db $e4
    sbc d
    and $7f
    ld [$9ce5], a
    sub [hl]
    sbc c
    ldh [$ffa1], a
    dec c
    ld h, b
    ld d, $7f
    sub l
    ld a, [$7fe9]
    sbc d
    sub h
    ld [$977f], a
    sbc d
    sub h
    push hl
    sub [hl]
    adc a
    ldh [$fff7], a
    sbc h
    sub d
    and c
    inc c
    sub l
    db $fd
    push hl
    jp hl


    ld a, a
    ld [$9ce5], a
    or b
    ld a, a
    sub a
    sub d
    db $e3
    dec c
    sub e
    push hl
    dec e
    sub d
    db $e3
    sub d
    ld sp, hl
    and l
    and l
    and l
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
    adc d
    dec c
    sbc b
    ld l, e
    or b
    ld a, a
    or [hl]
    xor a
    cp b
    db $dd
    or [hl]
    xor a
    cp b
    db $dd
    sbc e
    sbc [hl]
    push hl
    ld d, $f7
    dec c
    sub d
    add sp, -$0f
    ld hl, sp-$50
    ld a, a
    sbc h
    db $e3
    sub d
    ld sp, hl
    inc e
    adc h
    push hl
    sub d
    sub [hl]
    adc d
    rst RST_38
    ld c, h
    ld c, e
    xor b
    and h
    and h
    adc d
    inc c
    and l
    and l
    and l
    ld [$b0e5], a
    ld a, a
    sub [hl]
    db $fd
    ld h, b
    and c
    rst RST_38
    sub e
    and h
    db $fd
    and l
    and l
    and l
    and c
    dec c
    sbc d
    sub e
    sub a
    adc l
    sub e
    sbc [hl]
    db $fd
    sub d
    ld [$6d7f], a
    inc a
    ret nz

    ret c

    or c
    db $dd
    ld d, $0d
    ldh [$ff6d], a
    ld sp, hl
    di
    jp hl


    ld h, b
    adc d
    rst RST_38
    sub e
    ld a, a
    sub e
    rst RST_28
    sub d
    rra
    adc d
    dec c
    sbc h
    sub l
    sub c
    inc e
    ld d, $7f
    sub a
    sub d
    db $e3
    sub d
    ld sp, hl
    and l
    and l
    and l
    and c
    rst RST_38
    ld l, l
    xor a
    ld b, h
    and $7f
    add sp, -$66
    ei
    db $fd
    ld h, b
    and c
    dec c
    sub l
    ld a, [$7fea]
    push hl
    db $fd
    ld l, d
    db $fd
    ldh a, [c]
    and $7f
    cp h
    xor l
    ld [hl], $a4
    jp hl


    dec c
    ld l, l
    xor a
    ld b, h
    and $7f
    add sp, -$66
    ei
    db $fd
    ld h, b
    jp hl


    ld h, b
    ei
    sub e
    adc e
    inc c
    rst RST_28
    sub c
    sub d
    sub d
    and c
    dec c
    jr jr_016_55b7

    jr jr_016_55b9

    sbc h
    db $e3
    sub d
    ld sp, hl
    ld a, a
    db $eb
    rst RST_28
    ld [$e57f], a
    sub d
    and c
    dec c
    sbc e
    sub c
    ld a, a
    sub l
    sub a
    or $93
    adc d
    rst RST_38
    sbc d
    sub e
    sbc l
    sub d
    or b

jr_016_55b7:
    ld a, a
    ld e, h

jr_016_55b9:
    cp h
    xor l
    xor a
    db $e4
    ld a, a
    sbc b
    ld l, e
    sbc l
    inc e
    and $0d
    db $ec
    sub a
    ldh [c], a
    sbc c
    ldh [$ffa1], a
    inc c
    sub e
    and h
    db $fd
    and l
    and l
    and l
    db $fc
    ld sp, hl
    sbc b
    push hl
    sub d
    add sp, -$76
    dec c
    sbc d
    jp hl


    rst RST_28
    pop hl
    ld h, e
    ld a, a
    sub [hl]
    add sp, $16
    ld a, a
    sub [hl]
    sbc [hl]
    add hl, de
    sbc a
    sub e
    ld h, b
    push hl
    and c
    rst RST_38
    ld a, [hl-]
    xor a
    cp b
    db $dd
    adc d
    dec c
    sbc d
    sub e
    sbc l
    sub d
    adc a
    db $e3
    ld a, a
    sub l
    sub d
    sbc h
    sbc b
    push hl
    sub d
    push hl
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    sub l
    db $fd
    push hl
    and $7f
    ld [$9ce5], a
    sub [hl]
    sbc c
    ldh [$ffa1], a
    dec c
    ld h, b
    ld d, $7f
    sub l
    db $fd
    push hl
    ld [$fc7f], a
    dec de
    db $e4
    ld a, a
    pop af
    sbc h
    or b
    sbc h
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    ldh [c], a
    ld a, [$92e5]
    add sp, -$6c
    and c
    rst RST_38
    sbc a
    sub e
    inc e
    sub a
    ld d, $7f
    sub e
    ld a, [de]
    sub [hl]
    push hl
    sub d
    and c
    dec c
    sub l
    sub [hl]
    sbc h
    push hl
    sbc d
    db $e4
    and $7f
    ld e, h
    rst RST_10
    jr c, jr_016_5660

    ld a, a
    push hl
    sub d
    and c
    rst RST_38
    push bc
    or d
    call z, Call_016_7f63
    db $ec
    sbc b
    ei
    or b
    ld a, a
    ldh [c], a
    sub a
    sbc e
    sbc h
    ldh [$ffa1], a
    rst RST_38

jr_016_5660:
    db $ec
    sbc b
    ei
    ld d, $7f
    ld l, e
    ld hl, sp+$6b
    ld hl, sp-$1a
    ld a, a
    push hl
    adc a
    ldh [$ffa1], a
    dec c
    di
    db $e4
    ld h, h
    sub l
    ld hl, sp-$1a
    ld [$e57f], a
    rst RST_30
    push hl
    sub d
    ld h, b
    ei
    sub e
    push hl
    and c
    rst RST_38
    pop hl
    sub d
    sbc e
    sbc l
    rla
    db $e3
    ld a, a
    sub l
    ld a, [$eae6]
    ld a, a
    sub a
    ld a, [$92e5]
    and c
    rst RST_38
    ld [$91ea], a
    sub c
    sub c
    db $fd
    and l
    and l
    and l
    and c
    dec c
    ld [hl], $a4
    reti


    jp z, $c4dd

    ld h, b
    db $e4
    ld a, a
    sub l
    di
    adc a
    ldh [$fffd], a
    ld h, b
    push hl
    adc e
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
    jp hl


    ld a, a
    cp e
    or d
    dec a
    ld [$950d], a
    ld a, [$7fe6]
    ld a, e
    adc a
    ldh [$fff8], a
    ld h, b
    and c
    rst RST_38
    sbc c
    sub d
    sub [hl]
    db $fd
    ld d, $7f
    sub l
    ld a, [$7fb0]
    ld h, h
    sub e
    ld hl, sp-$72
    sub e
    ld h, b
    db $e4
    dec c
    sub l
    di
    adc a
    db $e3
    ld a, a
    ld [$9ce5], a
    sub [hl]
    sbc c
    db $e3
    sub a
    ldh [$ffa1], a
    inc c
    sbc $f4
    sub c
    adc d
    dec c
    ld a, a
    di
    sub e
    ld a, a
    sub a
    adc l
    sub e
    ld hl, sp-$72
    sub e
    ld [$7f0d], a
    di
    rst RST_30
    adc a
    ldh [$ff96], a
    sub d
    adc e
    rst RST_18
    inc c
    sbc $ef
    ld h, b
    ld h, b
    or $a1
    dec c
    ld a, a
    sub a
    adc [hl]
    sub e
    ld a, a
    di
    rst RST_30
    sub e
    ld a, a
    or $e3
    sub d
    push hl
    db $fd
    ld h, b
    and c
    rst RST_18
    inc c
    db $e4
    adc a
    sbc e
    jp hl


    ld a, a
    sub a
    db $e3
    db $fd
    and $f3
    ld a, a
    sub [hl]
    sub [hl]
    db $fc
    rst RST_30
    dec e
    dec c
    sbc c
    sub d
    sub [hl]
    db $fd
    ld [$9c7f], a
    db $fd
    ld d, $95
    jp hl


    ld a, a
    sub l
    ld a, [$0db0]
    sub c
    db $f4
    sbc h
    sub d
    db $e4
    ld a, a
    sub l
    di
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    inc c
    sub l
    ld a, [$7fe4]
    sbc [hl]
    sub d
    db $ec
    sbc b
    jp hl


    ld a, a
    ld c, d
    xor a
    inc a
    jp hl


    dec c
    ld l, d
    db $fd
    ld a, [de]
    sub e
    or b
    ld a, a
    inc a
    db $db
    inc a
    db $db
    ld a, a
    ldh a, [$ff98]
    rst RST_30
    ld l, l
    ldh [$ffa1], a
    inc c
    sbc a
    sbc h
    db $e3
    ld a, a
    sub l
    ld a, [$7f16]
    and $9e
    sbc c
    sub d
    sub [hl]
    db $fd
    ld h, b
    db $e4
    dec c
    sub [hl]
    sbc b
    sbc h
    db $fd
    sbc h
    ldh [$fff7], a
    sbc h
    sub d
    and c
    inc c
    sub d
    sbc a
    sub d
    ld h, e
    ld a, a
    sbc c
    sub d
    sbc e
    ldh [c], a
    sbc h
    adc [hl]
    rst RST_28
    ld h, e
    ld a, a
    sub l
    ld a, [$0db0]
    ld a, [$9afd]
    sub e
    sbc h
    ldh [$ffa1], a
    rst RST_38
    sbc h
    adc h
    sbc h
    adc [hl]
    sub e
    ld [$967f], a
    add sp, -$50
    ld a, a
    sub e
    sbc c
    db $e4
    adc a
    db $e3
    dec c
    sub d
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc $91
    ld hl, sp+$16
    db $e4
    sub e
    ld a, [de]
    dec de
    sub d
    rst RST_28
    sbc l
    and c
    rst RST_18
    rst RST_38
    sbc a
    ld a, [$f796]
    ld a, a
    rst RST_08
    db $db
    db $dd
    and $7f
    ld l, l
    db $dd
    jp $a4a8


    add $e9
    dec c
    sub c
    sbc b
    inc e
    or b
    ld a, a
    ld l, d
    rst RST_30
    sbc [hl]
    ld l, d
    ld a, a
    db $ec
    ldh [$fff8], a
    ld [$910d], a
    rst RST_30
    sbc a
    sub e
    and $7f
    pop hl
    ld d, $92
    push hl
    sub d
    adc d
    inc c
    sbc a
    jp hl


    sbc l
    sub a
    and $7f
    sbc d
    jp hl


    rst RST_28
    pop hl
    sub [hl]
    rst RST_30
    dec c
    and $19
    db $e3
    sbc h
    rst RST_28
    sub l
    sub e
    adc d
    inc c
    and l
    and l
    and l
    or $93
    sbc h
    adc d
    dec c
    ld e, $fd
    ld [$927f], a
    sbc a
    add hl, de
    ld h, b
    adc d
    rst RST_38
    sbc d
    sub e
    sub a
    adc [hl]
    sub e
    sbc h
    ldh [$ff92], a
    sub l
    sub a
    ld l, d
    jp hl


    ld a, a
    rst RST_28
    sub h
    and $0d
    sub a
    ldh [$ffa1], a
    inc c
    sub l
    ld a, [$eae6]
    ld a, a
    sub h
    db $fd
    jp hl


    ld a, a
    push hl
    sub d
    ld a, a
    db $e4
    sbc d
    ei
    ld h, e
    dec c
    sub c
    adc a
    db $e3
    ld a, a
    xor $9c
    sub d
    push hl
    and c
    rst RST_38
    sbc $95
    sub a
    adc h
    sbc b
    sbc e
    db $fd
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    sub l
    sub [hl]
    add sp, $16
    ld a, a
    ldh [$fff8], a
    rst RST_28
    sbc [hl]
    db $fd
    or $a5
    and l
    and l
    and c
    rst RST_18
    rst RST_38
    sbc $9a
    sub e
    sub a
    adc [hl]
    sub e
    sbc h
    ldh [$ff92], a
    sub l
    sub a
    ld l, d
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
    sbc $96
    add sp, -$50
    ld a, a
    ld [$fcf7], a
    push hl
    sub d
    push hl
    rst RST_30
    ld a, a
    db $e4
    adc a
    db $e4
    db $e4
    dec c
    ld a, a
    ld h, e
    db $e3
    sub d
    sbc c
    adc a
    adc d
    rst RST_18
    inc c
    sub l
    ld a, [$7fea]
    ld a, [$9c8f]
    adc h
    sub [hl]
    rst RST_30
    ld a, a
    xor $93
    ld hl, sp+$60
    sbc e
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc d
    sub e
    sub a
    adc [hl]
    sub e
    sbc h
    ldh [$ff92], a
    sub l
    sub a
    ld l, d
    jp hl


    dec c
    sub e
    sbc c
    ldh [c], a
    sbc c
    ld h, b
    and c
    inc c
    db $e4
    ld hl, sp-$16
    ld h, b
    ld d, $7f
    ldh [$ff8f], a
    db $e3
    sbc b
    ld sp, hl
    push hl
    and c
    rst RST_38
    sbc c
    sub d
    inc e
    ld l, d
    db $fd
    and $ea
    ld a, a
    sbc h
    ld l, [hl]
    sub e
    sub a
    inc e
    ld d, $0d
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    dec c
    or $fd
    ld h, e
    ldh a, [$fff6]
    sub e
    and c
    inc c
    ld a, a
    and h
    and h
    and h
    ld a, a
    jp c, $a4c6

    and l
    or e
    xor b
    and h
    cp l
    reti


    and l
    or e
    reti


    call z, Call_016_7f7f
    ld [$9ce5], a
    or b
    sbc h
    db $e3
    sub d
    db $e3
    ld a, a
    pop hl
    adc a
    sbc a
    sbc b
    sbc h
    inc c
    ld a, a
    and h
    and h
    and h
    ld a, a
    ld l, l
    jp $a5a8


    reti


    ld e, e
    ret


    dec c
    ld a, a
    ld a, a
    push hl
    db $fd
    ld h, h
    di
    ld a, a
    sub c
    ldh [$ffe0], a
    ldh a, [c]
    push hl
    sub l
    sbc h
    ldh [$ff0d], a
    ld a, a
    ld a, a
    rst RST_08
    or [hl]
    db $db
    add $7f
    ld bc, $c17f
    and h
    dec a
    ld a, a
    or b
    ldh [$ff6d], a
    db $e3
    dec c
    ld a, a
    ld a, a
    sbc h
    adc [hl]
    sbc b
    pop hl
    adc l
    sub e
    ld h, h
    sbc b
    sbc h
    inc c
    sbc h
    ldh [$ffe9], a
    xor $93
    and $ea
    and l
    and l
    and l
    inc c
    sbc h
    ldh [$ff92], a
    jp hl


    ld a, a
    di
    pop hl
    di
    jp hl


    ld [$937f], a
    sbc c
    ldh [c], a
    sbc c
    ld h, e
    dec c
    sub [hl]
    db $fd
    ld hl, sp+$7f
    db $e4
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    sbc h
    adc h
    sbc h
    adc [hl]
    sub e
    ld [$b27f], a
    rst RST_10
    or d
    rst RST_10
    sbc h
    db $e3
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    rst RST_38
    or [hl]
    or e
    db $dd
    ret nz

    and h
    and $ea
    ld a, a
    sbc h
    ldh a, [rNR21]
    ld a, a
    ldh [c], a
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    sbc a
    sbc d
    and $7f
    push hl
    and $16
    ld a, a
    sub c
    adc a
    ldh [$ff96], a
    ld a, a
    sub l
    ld a, [$eae6]
    dec c
    db $fc
    sub [hl]
    rst RST_30
    push hl
    sub d
    and c
    rst RST_38
    sub e
    sbc c
    ldh [c], a
    sbc c
    jp hl


    ld a, a
    sub l
    sbc b
    and $7f
    ld [$f992], a
    ldh [$fff2], a
    jp hl


    dec c
    add hl, sp
    and h
    call nz, $a160
    rst RST_38
    sbc $97
    adc [hl]
    sub [hl]
    push hl
    sub a
    ld a, a
    di
    jp hl


    jp hl


    ld a, a
    and $8d
    sub e
    sbc h
    ldh [c], a
    or b
    dec c
    ld a, a
    sub a
    db $fd
    dec e
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
    inc e
    pop af
    sub d
    db $fd
    ld h, b
    and c
    dec c
    xor $fd
    or b
    ld a, a
    or $fd
    ld h, e
    sub d
    ld sp, hl
    and c
    dec c
    push hl
    and $b0
    ld a, a
    or $fd
    ld h, e
    sub d
    ld sp, hl
    db $fd
    ld h, b
    adc e
    inc c
    or h
    ld b, h
    ld [hl], $a4
    and l
    or c
    rst RST_10
    db $dd
    and l
    ld e, [hl]
    and h
    jp hl


    dec c
    sbc $d3
    reti


    jr c, jr_016_5a3c

    sub d
    jp hl


    ld a, a
    sbc e
    ldh [c], a
    inc e
    db $fd
    rst RST_18
    ld h, b
    and c
    dec c
    and l
    and l
    and l
    db $e4
    ld hl, sp-$16
    ld h, b
    ld d, $7f
    ldh [$ff8f], a

jr_016_5a3c:
    db $e3
    sbc b
    ld sp, hl
    and c
    rst RST_38
    ld c, [hl]
    db $dd
    ld b, h
    or e
    xor d
    reti


    jp hl


    ld a, a
    sub d
    sub h
    jp hl


    dec c
    or [hl]
    scf
    ld h, b
    ei
    sub e
    sub [hl]
    and l
    and l
    and l
    adc e
    dec c
    sbc a
    ld a, [$f3e4]
    ld a, a
    pop hl
    ld d, $93
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
    sbc $fa
    adc a
    sbc h
    adc h
    ld [$ef7f], a
    di
    push hl
    sbc b
    dec c
    ld a, a
    ld [$9c8f], a
    adc h
    sbc h
    rst RST_28
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
    ld [$98f4], a
    ld a, a
    db $fc
    ldh [$ff9c], a
    and $7f
    ld hl, sp-$72
    sub e
    sub a
    db $fd
    or b
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
    sbc $f8
    adc [hl]
    sub e
    sub a
    db $fd
    or b
    ld a, a
    ld [$fcf7], a
    push hl
    sub d
    jp hl


    push hl
    rst RST_30
    dec c
    ld a, a
    sbc e
    adc a
    sbc e
    db $e4
    ld a, a
    sub l
    ld hl, sp-$1d
    sbc b
    ld h, b
    sbc e
    sub d
    adc d
    rst RST_18
    rst RST_38
    call nz, $cfa4
    cp l
    and l
    ld c, [hl]
    db $dd
    ld b, h
    or e
    xor d
    reti


    jp hl


    dec c
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

Jump_016_60bd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_016_63d9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_016_7f16:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_016_7f63:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_016_7f7f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_016_7fb0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_016_7fe9:
    nop

Call_016_7fea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
