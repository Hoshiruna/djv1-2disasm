; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    nop
    ld b, c
    ld a, [bc]
    ld b, c
    ld d, $41
    jr nz, jr_010_4049

    dec l
    ld b, c
    scf
    ld b, c
    ld b, c
    ld b, c
    ld d, e
    ld b, c
    ld l, [hl]
    ld b, c
    ld a, e
    ld b, c
    sub l
    ld b, c
    xor d
    ld b, c
    pop bc
    ld b, c
    push hl
    ld b, c
    push hl
    ld b, c
    dec de
    ld b, d
    ccf
    ld b, d
    ld [hl], b
    ld b, d
    add e
    ld b, d
    sub a
    ld b, d
    sub a
    ld b, d
    sub a
    ld b, d
    and a
    ld b, d
    or a
    ld b, d
    rst RST_00
    ld b, d
    add hl, bc
    ld b, e
    rla
    ld b, e
    jr nc, jr_010_407b

    ld b, b
    ld b, e
    ld d, b
    ld b, e
    ld h, b
    ld b, e
    ld [hl], b
    ld b, e
    ld [hl], b
    ld b, e
    add c
    ld b, e
    or c
    ld b, e
    call nz, $d643

jr_010_4049:
    ld b, e
    push hl
    ld b, e
    db $fd
    ld b, e
    ld a, [bc]
    ld b, h
    ld a, [de]
    ld b, h
    ld a, [hl-]
    ld b, h
    ld c, b
    ld b, h
    ld e, b
    ld b, h
    ld a, [hl]
    ld b, h
    adc d
    ld b, h
    adc d
    ld b, h
    adc d
    ld b, h
    adc d
    ld b, h
    and h
    ld b, h
    or h
    ld b, h
    push bc
    ld b, h
    jp hl


    ld b, h
    dec e
    ld b, l
    ld e, d
    ld b, l
    ld a, c
    ld b, l
    adc d
    ld b, l
    cp d
    ld b, l
    cp d
    ld b, l
    dec de
    ld b, [hl]
    ld l, $46
    ld b, c

jr_010_407b:
    ld b, [hl]
    ld h, d
    ld b, [hl]
    ld a, c
    ld b, [hl]
    sbc e
    ld b, [hl]
    or a
    ld b, [hl]
    pop af
    ld b, [hl]
    rrca
    ld b, a
    jr nc, jr_010_40d1

    ld d, l
    ld b, a
    ld h, c
    ld b, a
    ld e, h
    ld c, b
    ld l, l
    ld c, b
    ld a, l
    ld c, b
    ld a, l
    ld c, b
    sub [hl]
    ld c, b
    or l
    ld c, b
    add $48
    rst RST_20
    ld c, b
    ld sp, hl
    ld c, b
    dec e
    ld c, c
    dec a
    ld c, c
    ld b, h
    ld c, c
    ld e, c
    ld c, c
    and d
    ld c, c
    and d
    ld c, c
    xor l
    ld c, c
    push bc
    ld c, c
    db $db
    ld c, c
    ld [$0d49], a
    ld c, d
    jr c, jr_010_4102

    cp c
    ld c, d
    ret nz

    ld c, d
    add hl, de
    ld c, e
    ld [hl], b
    ld c, e
    sub e
    ld c, e
    xor [hl]
    ld c, e
    cp a
    ld c, e
    jr z, jr_010_4114

    jr c, jr_010_4116

    ld d, h
    ld c, h
    ld [hl], a
    ld c, h
    adc b
    ld c, h
    and c

jr_010_40d1:
    ld c, h
    cp e
    ld c, h
    push hl
    ld c, h
    inc bc
    ld c, l
    inc e
    ld c, l
    ld l, [hl]
    ld c, l
    xor a
    ld c, l
    push af
    ld c, l
    inc hl
    ld c, [hl]
    inc [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld e, d
    ld c, [hl]
    add [hl]
    ld c, [hl]
    add [hl]
    ld c, [hl]
    sbc h
    ld c, [hl]
    jp nz, $cd4e

    ld c, [hl]
    reti


    ld c, [hl]
    db $fc
    ld c, [hl]
    inc e
    ld c, a
    ld l, $4f
    ld c, a
    ld c, a
    ld [hl], l
    ld c, a
    xor a
    ld c, a
    ld [de], a
    scf

jr_010_4102:
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
    ld [$917f], a
    sub d
    db $e3
    sub d
    ld sp, hl

jr_010_4114:
    and c
    rst RST_38

jr_010_4116:
    ld [de], a
    scf
    push bc
    or b
    ld a, a
    sbc h
    ldh a, [c]
    ldh [$ffa1], a
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
    or b
    ld a, a
    db $e4
    adc a
    ldh [$ffa1], a
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
    or b
    dec c
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sub a
    and $7f
    sub d
    ld a, [$a1e0]
    rst RST_38
    ld [de], a
    scf
    push bc
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
    push hl
    sub [hl]
    ldh a, [$ffea]
    ld a, a
    ld [$8f92], a
    db $e3
    sub d
    push hl
    sub d
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    jp hl


    ld a, a
    cp b
    cp l
    ret c

    ld c, e
    db $dd
    ld h, b
    and c
    rst RST_38
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sub a
    ld h, b
    and c
    dec c
    push hl
    sub [hl]
    and $7f
    ld [de], a
    scf
    push bc
    ld d, $0d
    ld [$8f92], a
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
    sub c
    sbc c
    ldh [$ffa1], a
    dec c
    push hl
    sub [hl]
    ld [$b67f], a
    rst RST_10
    xor a
    ld e, [hl]
    ld h, b
    and c
    rst RST_38
    ld a, l
    or l
    ret c

    or c
    ld h, h
    sub l
    ld hl, sp+$60
    and c
    dec c
    ld [de], a
    scf
    push bc
    ld d, $7f
    db $e4
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
    ld h, b
    and c
    dec c
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld d, $7f
    jp hl


    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    sub a
    adc h
    sbc b
    or b
    ld a, a
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    or $93
    ld h, b
    and c
    rst RST_38
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
    and l
    and l
    and l
    adc e
    dec c
    ld h, h
    sub e
    db $f4
    rst RST_30
    ld a, a
    sub [hl]
    jp hl


    inc e
    adc [hl]
    and $ea
    ld a, a
    ldh a, [c]
    db $fd
    sub h
    sub a
    ld d, $0d
    sub c
    adc a
    db $e3
    ld a, a
    cp b
    cp l
    ret c

    ld d, $7f
    sub a
    sub [hl]
    push hl
    sub d
    rst RST_30
    sbc h
    sub d
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
    dec c
    sub c
    adc a
    db $e4
    sub d
    sub e
    rst RST_28
    and $7f
    db $ec
    sub [hl]
    sbc b
    ld a, a
    sbc h
    dec e
    db $fd
    ld h, e
    dec c
    ldh a, [$ff94]
    push hl
    sbc b
    push hl
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld [de], a
    scf
    push bc
    and $7f
    rst RST_10
    or d
    ret nz

    and h
    ld h, e
    dec c
    db $eb
    or b
    ld a, a
    ldh [c], a
    sbc c
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sub d
    sub a
    sub l
    sub d
    or $98

jr_010_425b:
    ld a, a
    di
    sub h
    db $e3
    ld a, a
    ld [$e692], a

jr_010_4263:
    dec c
    push hl
    adc a
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    or [hl]
    scf
    ld d, $7f

jr_010_4274:
    sbc d
    db $fc
    ld a, [$7fe3]
    ld [de], a
    scf
    push bc
    ld d, $0d
    sub c
    sub d
    ldh [$ffa1], a
    rst RST_38
    and l
    and l
    and l
    or [hl]

jr_010_4287:
    pop bc
    xor a
    adc d
    inc c
    ld [de], a
    scf
    push bc
    jp hl


    ld a, a
    or [hl]
    scf
    or b
    ld [de], a
    jr c, jr_010_425b

    rst RST_38
    cp d
    or d
    db $dd
    ld a, a
    inc b
    jr c, jr_010_4263

    rst RST_28
    sub d
    or b
    ld a, a
    db $e4
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld h, b
    db $fd
    ld d, $fd
    ld a, a
    inc b
    jr c, jr_010_4274

    sbc d
    or b
    ld a, a
    db $e4
    adc a
    ldh [$ffa1], a
    rst RST_38
    and l
    and l
    and l
    ld e, $fd
    ld l, h
    ld h, e
    ld a, a
    inc b
    jr c, jr_010_4287

    rst RST_28
    sub d
    ld h, b
    and c
    rst RST_38
    and l
    and l

jr_010_42c9:
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
    adc d
    adc d
    inc c
    db $f4
    adc a
    ldh [rNR34], a
    adc d
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
    dec c
    sub l
    sub l
    sub c
    ldh [$fff8], a
    ld h, b
    adc d
    adc d
    adc d
    inc c
    ld e, $fd
    ld l, h
    ld h, e
    ld a, a
    inc b
    jr c, jr_010_42c9

    rst RST_28
    sub d
    ld h, b
    and c
    rst RST_38
    ld [de], a
    scf
    push bc
    or b
    ld a, a
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sbc h
    ldh [$ffa1], a
    rst RST_38
    sub c
    ld hl, sp+$16
    db $e4
    sub e
    ld a, a
    ld a, [de]
    dec de
    sub d
    rst RST_28
    sbc l
    and c
    dec c
    ld [de], a
    scf
    push bc
    ld a, a
    sub d
    ldh [$ff60], a
    sub a
    rst RST_28
    sbc l
    and c
    rst RST_38
    ld h, b
    db $fd
    ld d, $fd
    ld a, a
    inc b
    ld e, h
    push bc
    sbc d
    or b
    ld a, a
    db $e4
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld h, b
    db $fd
    ld d, $fd
    ld a, a
    inc b
    ld e, l
    push bc
    sbc d
    or b
    ld a, a
    db $e4
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld h, b
    db $fd
    ld d, $fd
    ld a, a
    inc b
    ld e, [hl]
    push bc
    sbc d
    or b
    ld a, a
    db $e4
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld h, b
    db $fd
    ld d, $fd
    ld a, a
    inc b
    ld h, b
    push bc
    sbc d
    or b
    ld a, a
    db $e4
    adc a
    ldh [$ffa1], a
    rst RST_38
    and l
    and l
    and l
    cp d
    or d
    db $dd
    ld d, $7f
    ldh [$fff8], a
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    sub [hl]
    push hl
    ld hl, sp-$17
    ld a, a
    ld b, e
    ld c, h
    ld h, b
    and c
    dec c
    add c
    add b
    add b
    or a
    db $db
    ld [$917f], a
    ld hl, sp-$61
    sub e
    ld h, b
    push hl
    and c
    inc c
    and l
    and l
    and l
    rst RST_28
    adc a
    ldh [$ff98], a
    ld a, a
    ldh a, [$ff95]
    ld l, [hl]
    sub h
    jp hl


    push hl
    sub d
    dec c
    inc e
    adc [hl]
    sbc [hl]
    sub d
    ld h, b
    and c
    rst RST_38
    cp b
    cp l
    ret c

    or b
    ld a, a
    ld c, e
    db $dd
    jp hl


    ld a, a
    push hl
    sub [hl]
    and $7f
    di
    ld h, h
    sbc h
    ldh [$ffa1], a
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
    ld [$b67f], a
    rst RST_10
    ld h, b
    rra
    adc d
    rst RST_38
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
    and c
    rst RST_38
    sub l
    db $e4
    sbc d
    ld h, b
    adc d
    dec c
    inc e
    adc l
    sub e
    sbc d
    sub e
    or b
    ld a, a
    sub l
    ld a, [$7fe6]
    pop af
    sbc c
    db $e3
    sub d
    ld sp, hl
    adc d
    rst RST_38
    ld [hl], $dd
    cp h
    xor [hl]
    xor a
    ld e, h
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    rst RST_38
    rst RST_08
    db $dd
    cp h
    xor [hl]
    db $dd
    jp hl


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
    db $e4
    ld a, a
    sub d
    sub e
    sbc d
    db $e4
    ld [$a5a5], a
    and l
    adc e
    dec c
    sbc d
    sbc d
    ld [$957f], a
    ld a, [$7fe9]
    or l
    call z, $bda8
    push hl
    jp hl


    sub [hl]
    adc d
    rst RST_38
    push hl
    sub d
    di
    jp hl


    ld [$9d7f], a
    db $e3
    rst RST_30
    ld a, [$92e5]
    adc d
    rst RST_38
    db $e4
    adc a
    db $e3
    push hl
    sub d
    di
    jp hl


    ld [$f37f], a
    db $f4
    sbc [hl]
    push hl
    sub d
    adc d
    rst RST_38
    db $eb
    adc [hl]
    sub e
    inc e
    cp l
    ld e, e
    and h
    ld b, h
    ld a, a
    sbc [hl]
    db $fd
    ldh [$ff98], a
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [$92f4], a
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    db $ec
    ldh [c], a
    sub e
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub l
    sbc a
    sub d
    rst RST_38
    db $eb
    rst RST_30
    db $f4
    jp hl


    ld a, a
    ldh [$ffe3], a
    di
    jp hl


    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    jp nz, Jump_010_7fa4

    jp nz, Jump_010_7fa4

    jp nz, $a5a4

    and l
    and l
    and c
    dec c
    and l
    and l
    and l
    sub a
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    ld l, l
    db $dd
    jp nz, Jump_010_7fe9

    call nz, $ddd7
    cp b
    jp hl


    ld a, a
    or a
    and h
    ld h, b
    and c
    rst RST_38
    call nz, $ddd7
    cp b
    jp hl


    ld a, a
    push hl
    sub [hl]
    jp hl


    ld a, a
    inc e
    adc [hl]
    sbc [hl]
    sub d
    ld h, b
    and c
    rst RST_38
    ld hl, sp-$72
    sub e
    sub a
    db $fd
    jp nc, $c0a4

    and h
    ld h, b
    and c
    dec c
    sbc d
    sbc d
    and $7f
    ld hl, sp-$72
    sub e
    sub a
    db $fd
    ld d, $7f
    db $eb

Jump_010_44dd:
    adc [hl]
    sub e
    inc e
    dec c
    sbc e
    ld a, [$fdf9]
    ld h, b
    push hl
    and c
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    or b
    ld a, a
    ldh [$ffe0], a
    sbc d
    sub e
    db $e4
    sbc h
    ldh [rNR21], a
    dec c
    sub e
    db $fd
    db $e3
    db $fd
    sbc [hl]
    sub a
    db $e4
    jp hl


    ld a, a
    sbc e
    sub [hl]
    sub d
    and $91
    ld sp, hl
    dec c
    ld l, [hl]
    sub e
    ld h, b
    db $fd
    ld [hl], $d7
    cp l
    or b
    ld a, a
    ldh [$ffe0], a
    sub d
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ff8a], a
    rst RST_38
    sbc h
    ldh [c], a
    inc e
    ld [$f27f], a
    sub d
    db $fc
    sbc b
    sbc a
    sub e
    and $7f
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $95
    ld [$9ce5], a
    sbc l
    ld sp, hl
    ld a, a
    sbc d
    db $e4
    ld [$e57f], a
    and $f3
    dec c
    ld a, a
    ld a, [de]
    dec de
    sub d
    rst RST_28
    sbc [hl]
    db $fd
    and c
    dec c
    ld a, a
    ld h, h
    sub e
    rra
    ld a, a
    sub l
    db $eb
    sub a
    db $e4
    ld hl, sp+$7f
    sbc b
    ld h, b
    sbc e
    sub d
    and c
    rst RST_18
    rst RST_38
    inc e
    adc l
    sbc b
    sbc l
    sub d
    sbc h
    db $e3
    sub d
    ld sp, hl
    jp hl


    sub [hl]
    dec c
    sub d
    sbc b
    rst RST_30
    ldh [$ffe0], a
    sub d
    db $e3
    di
    ld a, a
    ldh a, [c]
    or b
    ld a, a
    sbc e
    rst RST_28
    sbc e
    push hl
    sub d
    and c
    rst RST_38
    push hl
    and $b0
    ld a, a
    sbc h
    db $e3
    sub d
    ld sp, hl
    db $fd
    ld h, b
    ld a, a
    sub l
    ld a, [$8bea]
    adc d
    rst RST_38
    sbc a
    ld a, [$7fea]
    db $eb
    ld h, b
    ld hl, sp+$16
    db $fc
    jp hl


    ld a, a
    ld b, h
    or c
    sub [hl]
    rst RST_30
    dec c
    push hl
    ld d, $fa
    ld h, e
    ldh [$ff7f], a
    di
    jp hl


    jp hl


    or $93
    ld h, b
    and c
    inc c
    and l
    and l
    and l
    or d
    call nc, Call_010_7fe5
    or $96
    db $fd
    ld d, $9d
    ld sp, hl
    and l
    and l
    and l
    and c
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$957f], a
    sbc d
    adc a
    db $e3
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $f4
    sub d
    db $f4
    sub d
    adc d
    adc d
    dec c
    ld a, a
    sub l
    ldh a, [c]
    sub h
    ld a, a
    rst RST_28
    sub h
    and $7f
    jp hl


    ld hl, sp-$1a
    add hl, de
    sbc h
    ldh [$ff0d], a
    ld a, a
    db $f4
    ei
    sub e
    ld h, b
    push hl
    adc d
    adc d
    inc c
    ld a, a
    sbc d
    pop hl
    db $e4
    rst RST_30
    ld a, a
    sub c
    sbc b
    db $e4
    sub e
    ld [$e97f], a
    sbc [hl]
    add sp, -$6c
    dec c
    ld a, a
    sbc h
    adc l
    rla
    push hl
    db $fd
    ld h, e
    sub h
    adc a
    adc d
    dec c
    ld a, a
    sbc e
    sub c
    ld a, a
    db $e4
    adc a
    db $e4
    db $e4
    ld a, a
    sub l
    ld hl, sp-$1d
    sbc b
    db $fd
    push hl
    adc d
    rst RST_18
    rst RST_38
    sbc b
    ei
    sbc b
    db $e3
    ld a, a
    sub l
    sub l
    sub a
    push hl
    ld a, a
    or a
    xor h
    ld c, e
    ret z

    xor a
    call nz, $a160
    rst RST_38
    sbc d
    db $fd
    push hl
    di
    jp hl


    ld a, a
    ldh [$ffe0], a
    sub d
    db $e3
    ld a, a
    ld h, h
    sub e
    sbc l
    ld sp, hl
    db $fd
    ld h, b
    adc d
    rst RST_38
    sub e
    and h
    db $fd
    and l
    and l
    and l
    and c
    dec c
    ld h, b
    db $fd
    ld h, b
    db $fd
    ld a, a
    sbc d
    jp hl


    ld a, a
    inc e
    sbc c
    db $fd
    jp hl


    ld a, a
    ld e, $fd
    or $93
    ld d, $f0
    sub h
    db $e3
    sub a
    ldh [$ffa1], a
    rst RST_38
    sub [hl]
    sbc b
    sbc h
    ld b, h
    or c
    or b
    ld a, a
    sub c
    sbc c
    ld sp, hl
    ldh [$fff2], a
    jp hl


    ld a, a
    call c, $ddb2
    jp hl


    ld c, e
    db $dd
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
    adc d
    inc c
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
    rst RST_38
    sub l
    sbc a
    rst RST_30
    sbc b
    ld a, a
    or [hl]
    and h
    ld b, h
    sub [hl]
    ld a, a
    push hl
    and $96
    or b
    dec c
    sbc e
    sbc h
    sbc d
    pop af
    jp hl


    ld h, b
    ei
    sub e
    and l
    and l
    and l
    and c
    rst RST_38
    cp l
    and h
    xor a
    and c
    dec c
    ld b, h
    or c
    ld d, $7f
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    inc c
    or h
    jp c, $a46d

    ret nz

    ld [$9c7f], a
    dec e
    sub [hl]
    and $7f
    sub e
    ld a, [de]
    sub d
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    dec c
    ld h, h
    sbc d
    db $ed
    ld a, a
    ldh [c], a
    ld a, [$f5e3]
    sub [hl]
    ld a, [$e9f9]
    ld h, b
    ei
    sub e
    adc e
    rst RST_38
    cp l
    and h
    xor a
    and c
    dec c
    db $f4
    ld d, $e3
    ld a, a
    or h
    jp c, $a46d

    ret nz

    ld [$e47f], a
    rst RST_28
    ld hl, sp+$0d
    ld b, h
    or c
    ld d, $7f
    db $eb
    rst RST_30
    sub d
    ldh [$ffa1], a
    rst RST_38
    cp l
    and h
    xor a
    and c
    dec c
    ld b, h
    or c
    ld d, $7f
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    inc c
    or h
    jp c, $a46d

    ret nz

    ld [$9c7f], a
    dec e
    sub [hl]
    and $7f
    sub e
    ld a, [de]
    sub d
    ldh [$ffa1], a
    rst RST_38
    sbc h
    adc h
    sbc h
    db $fd
    ld h, b
    and c
    dec c
    sbc d
    sbc d
    and $7f
    sub e
    ldh [c], a
    adc a
    db $e3
    sub d
    ld sp, hl
    jp hl


    ld [$6d7f], a
    xor a
    ld b, h
    jp hl


    dec c
    push hl
    sub [hl]
    and $92
    ldh [$ff7f], a
    sub l
    db $fd
    push hl
    ld h, b
    adc d
    rst RST_38
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
    cp b
    cp l
    ret c

    jp hl


    ld a, a
    push hl
    rst RST_28
    sub h
    db $e4
    ld a, a
    sbc a
    jp hl


    ld a, a
    sbc d
    sub e
    jp hl


    sub e
    ld d, $9c
    ld sp, hl
    sbc h
    db $e3
    ld a, a
    sub c
    ld sp, hl
    and c
    inc c
    sbc $b5
    call z, $a4da
    reti


    ld a, a
    and h
    dec c
    ld a, a
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    rst RST_18
    inc c
    sbc $d2
    ld b, h
    jp c, $dd3c

    ld a, a
    and h
    dec c
    ld a, a
    sbc h
    db $fd
    sbc c
    sub d
    ld a, a
    rst RST_08
    set 5, c
    ld a, a
    cp b
    cp l
    ret c

    and c
    rst RST_18
    inc c
    sbc $40
    or d
    cp e
    ret


    and h
    reti


    ld a, a
    and h
    dec c
    ld a, a
    sub a
    sub l
    sbc b
    ld d, $7f
    push hl
    sbc b
    push hl
    ld sp, hl
    ld a, a
    cp b
    cp l
    ret c

    and c
    rst RST_18
    inc c
    sbc $4a
    or d
    or [hl]
    cp a
    and h
    ld b, b
    ld a, a
    and h
    dec c
    ld a, a
    ldh [$ff6d], a
    sbc l
    rla
    and $7f
    sub a
    sbc b
    ld a, a
    cp b
    cp l
    ret c

    and c
    rst RST_18
    inc c
    sbc $b9
    db $d3
    ld e, d
    ld e, d
    or d
    db $dd
    ld a, a
    and h
    dec c
    ld a, a
    sbc d
    sub e
    db $ec
    sbc b
    sub [hl]
    db $fd
    and $7f
    db $eb
    ldh [$fffa], a
    ld sp, hl
    dec c
    ld a, a
    cp b
    cp l
    ret c

    and c
    rst RST_18
    inc c
    sbc $7d
    db $dd
    ret nz

    cp a
    and h
    ld b, b
    ld a, a
    and h
    dec c
    ld a, a
    sub d
    sbc h
    sub a
    jp hl


    ld a, a
    push hl
    sub d
    rst RST_28
    rst RST_28
    ld a, a
    sbc h
    db $fd
    inc e
    ldh [c], a
    or b
    dec c
    ld a, a
    sub [hl]
    ldh [$fff7], a
    sbc [hl]
    ld sp, hl
    ld a, a
    cp b
    cp l
    ret c

    and c
    rst RST_18
    inc c
    sbc $4b
    cp l
    or l
    ld b, e
    db $dd
    ld a, a
    and h
    dec c
    ld a, a
    ld b, b
    or d
    cp e
    ret


    and h
    reti


    jp hl


    ld a, a
    add hl, de
    ld h, h
    sbc b
    dec de
    sub d
    and c
    inc c
    ld a, a
    ldh [$ff60], a
    sbc h
    ld a, a
    sbc l
    sub e
    xor $fd
    ld a, a
    sub e
    ldh [$ffe5], a
    sbc c
    ld a, [$0d6a]
    ld a, a
    sbc d
    sub e
    sub [hl]
    ld d, $7f
    push hl
    sub d
    and c
    rst RST_18
    rst RST_38
    sub l
    db $e4
    sbc d
    ld h, b
    and c
    dec c
    or $98
    ld a, a
    add sp, -$0f
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    db $e4
    adc a
    db $e3
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
    sub d
    adc a
    ld a, h
    sbc b
    sbc l
    ld a, [$7f6a]
    sbc l
    sbc d
    sbc h
    ld [$977f], a
    ld d, $0d
    ld [$f9fa], a
    ld h, b
    ei
    sub e
    sub [hl]
    adc e
    rst RST_38
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    inc c
    sub d
    adc a
    sbc d
    sub e
    and $7f
    sub a
    ld l, h
    db $fd
    ld [$ea7f], a
    ld a, [$92e5]
    and c
    rst RST_38
    sub d
    adc a
    sbc d
    sub e
    and $7f
    sub a
    ld l, h
    db $fd
    ld [$ea7f], a
    ld a, [$92e5]
    and c
    rst RST_38
    sub [hl]
    db $fc
    adc a
    ldh [$ff7f], a
    sub [hl]
    ldh [$ffe1], a
    jp hl


    ld a, a
    or d
    cp l
    ld h, b
    and c
    dec c
    push hl
    db $fd
    ld h, b
    sub [hl]
    ld a, a
    sub a
    ldh a, [rNR21]
    ld a, a
    db $fc
    ld sp, hl
    sub d
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    and l
    and l
    and l
    or d
    cp l
    jp hl


    or $93
    push hl
    di
    jp hl


    ld d, $7f
    ldh a, [$ff94]
    ld sp, hl
    and c
    rst RST_38
    call nz, $ddd7
    cp b
    ld a, a
    sub d
    adc a
    ld a, d
    sub d
    and $7f
    di
    jp hl


    ld d, $0d
    ldh [c], a
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    sbc d
    adc a
    ld a, a
    sbc d
    ld a, [$a5ea]
    and l
    and l
    adc d
    adc d
    adc d
    rst RST_38
    and l
    and l
    and l
    sub d
    db $f4
    and c
    dec c
    sub d
    rst RST_28
    ld a, a
    sbc d
    sbc d
    ld h, e
    ld a, a
    sbc d
    ld a, [$7fb0]
    di
    db $f4
    sbc l
    jp hl


    ld [$f40d], a
    ldh a, [c]
    db $e3
    sub l
    sbc d
    sub e
    adc d
    rst RST_38
    ld c, h
    jp c, $b7a4

    ld h, b
    and c
    rst RST_38
    db $e3
    and $7f
    db $e4
    adc a
    db $e3
    sub d
    push hl
    sub d
    ld a, a
    di
    jp hl


    ld [$e20d], a
    sub [hl]
    sub h
    push hl
    sub d
    and c
    rst RST_38
    pop bc
    xor [hl]
    cp d
    jp c, $c4a4

    or b
    ld a, a
    ldh [c], a
    rst RST_28
    db $fd
    ld h, e
    ld a, a
    sbc b
    pop hl
    rst RST_28
    ld h, e
    dec c
    ld [$fd9a], a
    ld h, b
    and l
    and l
    and l
    adc d
    inc c
    sub e
    adc a
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
    rst RST_28
    dec e
    sub d
    adc d
    adc d
    adc d
    dec c
    sbc d
    db $fd
    push hl
    ld a, a
    sub c
    rst RST_28
    sub d
    di
    jp hl


    ld d, $7f
    push hl
    ld e, $0d
    ldh [$ff6d], a
    rst RST_30
    ld a, [$e9f9]
    ld h, b
    ei
    sub e
    sub [hl]
    adc e
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
    db $e4
    adc a
    db $e3
    sub d
    push hl
    sub d
    ld a, a
    di
    jp hl


    or b
    ld a, a
    sbc l
    db $e3
    ld sp, hl
    sbc d
    db $e4
    ld [$630d], a
    sub a
    push hl
    sub d
    adc d
    rst RST_38
    ld h, h
    sub e
    db $f4
    rst RST_30
    ld a, a
    sbc d
    sbc d
    and $ea
    ld a, a
    sbc l
    db $e3
    rst RST_30
    ld a, [$92e5]
    dec c
    or $93
    ld h, b
    and c
    rst RST_38
    di
    db $e4
    jp hl


    ld a, a
    db $e4
    sbc d
    ei
    and $7f
    di
    ld h, h
    sbc h
    ldh [$ffa1], a
    rst RST_38
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    dec c
    ld h, b
    sub d
    ld l, h
    ld a, a
    rst RST_30
    sbc b
    and $e5
    adc a
    ldh [$ffa1], a
    dec c
    dec e
    ldh [c], a
    sub e
    ld [$957f], a
    sbc e
    rst RST_28
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    rst RST_38
    sub d
    adc a
    and l
    and l
    and l
    sub d
    sbc h
    sub a
    ld d, $a5
    and l
    and l
    and c
    dec c
    sub e
    sbc l
    and l
    ld a, [$a5a5]
    db $e3
    and l
    and l
    and l
    sub d
    and l
    and l
    and l
    and l
    sbc b
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    rst RST_38
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    call nz, $dab2
    ld h, e
    ld a, a
    ldh a, [c]
    dec de
    ldh a, [c]
    db $e3
    sub [hl]
    rst RST_30
    dec c
    or $93
    db $f4
    sbc b
    ld a, a
    sbc d
    sbc d
    rst RST_28
    ld h, e
    ld a, a
    ldh [$ff64], a
    ld hl, sp-$1e
    sub d
    ldh [$ffa1], a
    inc c
    ld h, b
    ld d, $7f
    ld h, h
    sub e
    db $f4
    rst RST_30
    ld a, a
    sub c
    push hl
    ldh [$ffe9], a
    ld a, a
    sub e
    db $fd
    di
    dec c
    sbc d
    sbc d
    rst RST_28
    ld h, e
    ld h, b
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    and l
    and l
    and l
    and c
    inc c
    cp b
    cp l
    ret c

    jp hl


    ld a, a
    sub a
    sub a
    ldh a, [c]
    ld d, $7f
    sub l
    di
    sub d
    jp hl


    xor $96
    dec c
    ldh [c], a
    or $96
    adc a
    ldh [$ffe9], a
    ld h, b
    adc d
    inc c
    add hl, de
    ld h, h
    sbc b
    dec de
    sub d
    or b
    ld a, a
    sub e
    adc a
    db $e3
    sub d
    push hl
    sub d
    ld a, a
    sub c
    push hl
    ldh [$ffea], a
    sub d
    sbc c
    ld sp, hl
    sbc h
    sub [hl]
    ld l, d
    add sp, -$1c
    ld a, a
    push hl
    adc a
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ff8a], a
    rst RST_38
    cp b
    rst RST_10
    xor a
    pop bc
    ld h, b
    and c
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$9a7f], a
    db $fc
    sub d
    sub [hl]
    sub l
    or b
    sbc h
    db $e3
    dec c
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $95
    sub a
    adc h
    sbc b
    sbc e
    db $fd
    adc d
    adc d
    adc d
    dec c
    ld a, a
    rst RST_28
    ld h, b
    ld a, a
    sub [hl]
    add sp, -$50
    ld a, a
    di
    rst RST_30
    adc a
    pop hl
    adc h
    sub c
    dec c
    ld a, a
    sub d
    db $f4
    sbc [hl]
    db $fd
    ld e, $8a
    inc c
    ld a, a
    sbc d
    jp hl


    rst RST_28
    rst RST_28
    inc e
    adc h
    ld a, a
    sbc c
    sub d
    sbc e
    ldh [c], a
    and $0d
    ld a, a
    sub d
    adc a
    db $e3
    di
    rst RST_30
    sub e
    sbc d
    db $e4
    and $7f
    push hl
    ld hl, sp-$0c
    sbc l
    ld e, $8a
    rst RST_18
    rst RST_38
    sub [hl]
    sub l
    or b
    ld a, a
    db $eb
    sub a
    ldh [c], a
    rst RST_30
    sbc [hl]
    push hl
    ld d, $f7
    dec c
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
    sbc $95
    sub a
    adc h
    sbc b
    sbc e
    db $fd
    adc d
    dec c
    ld a, a
    rst RST_28
    ld h, b
    ld a, a
    sub l
    sub [hl]
    add sp, -$50
    ld a, a
    sub d
    ldh [$ff60], a
    sub d
    db $e3
    dec c
    ld a, a
    sub d
    rst RST_28
    sbc [hl]
    db $fd
    or $8a
    inc c
    ld a, a
    jp hl


    ld hl, sp-$1a
    add hl, de
    push hl
    db $fd
    db $e3
    ld a, a
    sbc a
    db $fd
    push hl
    jp hl


    dec c
    ld a, a
    db $f4
    ldh a, [c]
    db $e3
    sbc b
    ld h, b
    sbc e
    sub d
    or $a5
    and l
    and l
    and c
    rst RST_18
    rst RST_38
    sub c
    adc a
    and l
    and l
    and l
    adc d
    dec c
    sub e
    sbc c
    dec de
    rst RST_30
    jp hl


    ld a, a
    db $e4
    sbc d
    ei
    and $7f
    cp d
    or d
    db $dd
    ld d, $0d
    add c
    rst RST_28
    sub d
    ld a, a
    sub l
    pop hl
    db $e3
    sub d
    ld sp, hl
    rra
    adc d
    rst RST_38
    sub l
    ld a, [$1692]
    sub d
    jp hl


    ld a, a
    push hl
    and $f3
    jp hl


    ld h, e
    di
    ld a, a
    push hl
    sub d
    adc d
    dec c
    sub l
    ld a, [$7fea]
    sub l
    ld a, [$8a60]
    rst RST_38
    ld h, e
    db $fd
    db $fc
    ld l, d
    db $fd
    ld a, [de]
    sub e
    ld h, e
    ld [$e57f], a
    sub d
    rst RST_30
    sbc h
    sub d
    and c
    rst RST_38
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    call nz, $dab2
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, e
    dec c
    ldh a, [c]
    dec de
    ldh a, [c]

jr_010_4bd0:
    db $e3
    sub [hl]
    rst RST_30
    ld a, a
    db $e3
    sbc e
    jr jr_010_4bd0

    ld h, e
    dec c
    sbc d
    sbc d
    rst RST_28
    ld h, e
    sub a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    ld h, b
    ld d, $7f
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    sub h
    sub d
    sub h
    db $fd
    and $0d
    ldh [c], a
    pop hl
    jp hl


    ld a, a
    sbc h
    ldh [$ff63], a
    ld a, a
    add sp, -$0f
    ld sp, hl
    jp z, $e6d2

    dec c
    push hl
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
    sub c
    push hl
    ldh [$ffe9], a
    ld a, a
    ld [$60fd], a
    db $fd
    ld [$ef0d], a
    pop hl
    ld d, $8f
    db $e3
    sub d
    ldh [$ffe9], a
    ld h, b
    adc d
    adc d
    rst RST_38
    sub c
    sbc c
    push hl
    sbc c
    ld a, [$7f6a]
    sub d
    ld h, h
    sub e
    ld h, e
    sub a
    push hl
    sub d
    adc d
    rst RST_38
    sbc a
    sub e
    ld a, a
    sbc a
    sub e
    and l
    and l
    and l
    adc d
    dec c
    cp d
    or d
    db $dd
    or b
    ld a, a
    sub d
    ld a, [$fdf9]
    ld h, b
    adc a
    ldh [$ffe5], a
    and l
    and l
    and l
    adc d
    rst RST_38
    sub [hl]
    ld l, l
    ld d, $7f
    db $fc
    ld a, [$92e3]
    ld sp, hl
    and l
    and l
    and l
    and c
    dec c
    sbc a
    ld a, [$1692]
    sub d
    ld a, a
    sub [hl]
    db $fc
    adc a
    ldh [$fff3], a
    jp hl


    ld [$f00d], a
    rst RST_30
    ld a, [$92e5]
    and c
    rst RST_38
    ldh [$ff60], a
    jp hl


    ld a, a
    sub [hl]
    ld l, l
    jp hl


    ld a, a
    sub a
    dec e
    jp hl


    ld a, a
    or $93
    ld h, b
    and c
    rst RST_38
    or e
    xor b
    and h
    db $dd
    and l
    and l
    and l
    and c
    dec c
    or h
    jp c, $a46d

    ret nz

    jp hl


    ld a, a
    ld b, h
    or c
    ld d, $7f
    sub c
    sub d
    ldh [$ffa1], a
    rst RST_38
    or e
    xor b
    and h

Jump_010_4ca4:
    db $dd
    and l
    and l
    and l
    and c
    dec c
    or h
    jp c, $a46d

    ret nz

    jp hl


    ld a, a
    ld b, h
    or c
    ld d, $7f
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sub l
    adc a
    and l
    and l
    and l
    db $e4
    adc d
    inc c
    sub d
    sub a
    sbc e
    sub a
    or b
    ld a, a
    sub d
    sub d
    ldh [$ff92], a
    ld d, $0d
    sub d
    sub a
    ldh [$ff92], a
    ld l, d
    sbc h
    adc [hl]
    jp hl


    ld a, a
    or c
    ld b, h
    jp c, Jump_000_16bd

    dec c
    db $fc
    sub [hl]
    rst RST_30
    push hl
    sub d
    adc d
    rst RST_38
    db $fc
    ld a, [$9ce3]
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    sbc a
    ld a, [$1692]
    sub d
    jp hl


    ld a, a
    db $ed
    db $fd
    sub [hl]
    ld [$f07f], a
    rst RST_30
    ld a, [$92e5]
    and c
    rst RST_38
    sub l
    adc a
    and l
    and l
    and l
    db $e4
    adc d
    dec c
    pop de
    ld b, b
    ld d, $e8
    or b
    ld a, a
    ldh [c], a
    sub [hl]
    sub e
    db $e4
    sbc d
    ei
    ld h, b
    adc a
    ldh [$ff8a], a
    rst RST_38
    sub [hl]
    sub l
    or b
    ld a, a
    db $eb
    sub a
    ldh [c], a
    rst RST_30
    sbc [hl]
    push hl
    ld d, $f7
    dec c
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
    sbc $95
    sub a
    adc h
    sbc b
    sbc e
    db $fd
    adc d
    dec c
    ld a, a
    sub [hl]
    add sp, -$50
    ld a, a
    di
    adc a
    db $e3
    add sp, -$6c
    db $fd
    ld h, e
    sbc l
    sub [hl]
    sub d
    adc e
    inc c
    ld a, a
    and l
    and l
    and l
    sbc h
    or $93
    ld d, $e8
    sub h
    push hl
    adc d
    dec c
    ld a, a
    sbc d
    db $fd
    ld h, h
    ld a, a
    sub a
    ldh [$ffe4], a
    sub a
    ld h, e
    ld a, a
    sub d
    sub d
    ld e, $8a
    rst RST_18
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$f47f], a
    sbc e
    sbc h
    sub d
    sbc d
    sub h
    ld h, e
    dec c
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $9a
    rst RST_28
    adc a
    ldh [$ffe4], a
    sub a
    ld [$957f], a
    ldh [rNR21], a
    sub d
    sbc e
    rst RST_28
    adc d
    dec c
    ld a, a
    sub l
    sub [hl]
    add sp, -$16
    ld a, a
    sbc d
    db $fd
    ld h, h
    ld a, a
    sub a
    ldh [$ffe4], a
    sub a
    ld h, e
    dec c
    ld a, a
    or $fb
    sbc h
    sub d
    ld h, e
    sbc l
    or $a1
    rst RST_18
    rst RST_38
    sbc b
    pop hl
    di
    db $e4
    or b
    ld a, a
    res 7, b
    res 7, b
    sbc e
    sbc [hl]
    push hl
    ld d, $f7
    dec c
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
    sbc $95
    sub a
    adc h
    sbc b
    sbc e
    db $fd
    adc d
    dec c
    ld a, a
    sbc d
    jp hl


    rst RST_28
    sub h
    ld a, a
    sub [hl]
    sbc h
    ldh [$ff7f], a
    sub [hl]
    add sp, -$50
    ld a, a
    sbc c
    sub h
    sbc h
    db $e3
    ld a, a
    sbc b
    ld a, [$94e8]
    db $e4
    ld a, a
    sbc d
    rst RST_28
    ld sp, hl
    ld e, $8a
    rst RST_18
    rst RST_38
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
    db $e3
    dec c
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $9a
    jp hl


    rst RST_28
    sub h
    jp hl


    ld a, a
    sub l
    sub [hl]
    add sp, -$50
    ld a, a
    sub [hl]
    sub h
    sbc h
    db $e3
    dec c
    ld a, a
    sbc b
    ld h, b
    sbc e
    sub d
    add sp, -$5f
    rst RST_18
    rst RST_38
    ld l, l
    ldh [c], a
    and $7f
    sub [hl]
    db $fc
    adc a
    ldh [$ffe4], a
    sbc d
    ei
    ld [$e57f], a
    sub d
    and c
    rst RST_38
    db $fd
    adc a
    and l
    and l
    and l
    adc e
    dec c
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
    ld sp, hl
    or $93
    ld h, b
    and c
    rst RST_38
    cp d
    or d
    db $dd
    ld d, $7f
    push hl
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    di
    pop hl
    di
    jp hl


    ld d, $7f
    sub l
    sub l
    sbc l
    rla
    db $e3
    ld a, a
    sbc d
    ld a, [$1c92]
    adc [hl]
    sub e
    di
    db $e3
    sbc a
    sub e
    and $e5
    sub d
    adc d
    dec c
    push hl
    and $96
    or b
    ld a, a
    sbc l
    db $e3
    push hl
    sbc c
    ld a, [$7f6a]
    pop de
    ret c

    ld h, b
    adc d
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
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    ld a, [hl-]
    ret nc

    ld l, d
    sbc d
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld [$927f], a
    adc a
    ld a, d
    sub d
    ld h, b
    and c
    dec c
    sbc d
    ld a, [$1c92]
    adc [hl]
    sub e
    ld a, a
    sbc l
    db $e3
    ld sp, hl
    db $e4
    dec c
    sub c
    db $ec
    ld a, [$9ce3]
    rst RST_28
    sub e
    adc d
    rst RST_38
    ldh [$ffef], a
    ld d, $7f
    push hl
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    ldh [$ffef], a
    add d
    ld d, $7f
    push hl
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    inc e
    ld l, h
    db $fd
    and $7f
    ld [$9ce5], a
    sub [hl]
    sbc c
    ld sp, hl
    xor $64
    ld a, a
    sub l
    ld a, [$0de9]
    sub c
    ldh [$ffef], a
    ld [$957f], a
    sub [hl]
    sbc h
    sbc b
    push hl
    adc a
    db $e3
    push hl
    sub d
    rra
    adc d
    rst RST_38
    ld e, [hl]
    cp d
    ld a, a
    ld e, [hl]
    cp d
    adc d
    dec c
    push hl
    db $fd
    ld h, e
    ld a, a
    inc e
    ld l, h
    db $fd
    or b
    ld a, a
    ldh [$ffe0], a
    sub [hl]
    push hl
    sbc b
    pop hl
    adc h
    dec c
    sub d
    sbc c
    push hl
    sub d
    db $fd
    ld h, b
    adc e
    rst RST_38
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sub a
    ld d, $7f
    or [hl]
    rst RST_10
    ld h, b
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    sub d
    db $f4
    and c
    dec c
    sbc d
    sbc d
    ld h, e
    ld a, a
    db $f4
    ld sp, hl
    jp hl


    ld [$977f], a
    adc a
    db $e4
    ld a, a
    pop de
    ld b, b
    ld h, b
    adc d
    dec c
    db $f4
    ldh a, [c]
    db $e3
    sub l
    sbc d
    sub e
    and c
    rst RST_38
    rst RST_28
    db $e3
    or $a5
    and l
    and l
    adc e
    dec c
    sbc d
    ld a, [$7fb0]
    db $f4
    ld sp, hl
    db $e4
    ld a, a
    sub c
    db $e4
    ld h, e
    dec c
    sbc d
    rst RST_28
    ld sp, hl
    jp hl


    ld h, e
    ld [$e57f], a
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
    sbc e
    ldh [c], a
    inc e
    db $fd
    ldh a, [$ff9d]
    sub d
    jp hl


    ld a, a
    or $93
    rla
    ld h, e
    dec c
    ldh [$ff92], a
    xor $9b
    ld a, [$7fe0]
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    sbc c
    sub d
    sbc e
    ldh [c], a
    ld h, e
    dec c
    db $e4
    ld hl, sp-$64
    rst RST_30
    ld l, l
    or b
    ld a, a
    sub e
    sbc c
    ld a, a
    sbc e
    sub d
    ld l, d
    db $fd
    and $0d
    sub [hl]
    sbc c
    rst RST_30
    ld a, [$a5e0]
    and l
    and l
    and c
    rst RST_38
    sbc e
    ldh [c], a
    inc e
    db $fd
    or b
    ld a, a
    sub l
    sub [hl]
    sbc h
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ff0d], a
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    sub a
    ld l, e
    sbc h
    sub d
    ld a, a
    db $e4
    ld hl, sp-$64
    rst RST_30
    ld l, l
    or b
    dec c
    sub e
    sbc c
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    sbc a
    sbc h
    db $e3
    ld a, a
    sbc e
    sub d
    ld l, d
    db $fd
    and $7f
    sub [hl]
    sbc c
    rst RST_30
    ld a, [$9c0d]
    sbc c
    sub d
    jp hl


    ld a, a
    ld [$99fd], a
    ldh [c], a
    or b
    ld a, a
    sub e
    sbc c
    ldh [$ffa1], a
    inc c
    dec de
    db $fd
    add sp, -$03
    push hl
    ld d, $f7
    ld a, a
    sub c
    push hl
    ldh [$ffe9], a
    ld a, a
    inc e
    db $fd
    sbc [hl]
    sub d
    ld [$fa9a], a
    rst RST_28
    ld h, e
    db $e4
    push hl
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    cp d
    or d
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_10
    or d
    ret nz

    and h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    ld c, d
    cp d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    jp z, $b6dd

    pop bc
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp e
    db $dd
    jr c, @-$27

    cp l
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
    or [hl]
    and h
    ld b, h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    add d
    add b
    ld b, h
    reti


    sbc e
    ldh [c], a
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    add c
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    db $f4
    adc a
    sub a
    adc [hl]
    sub e
    rst RST_38
    rst RST_38
    rst RST_38
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sub a
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
    or h
    db $dd
    ld e, e
    jp nz, $ffff

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
    sbc h
    adc h
    sbc b
    or $93
    sbc h
    adc [hl]
    rst RST_38
    or [hl]
    scf
    add h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc [hl]
    sub d
    sub a
    adc l
    sub e
    sbc h
    adc [hl]
    rst RST_38
    db $e4
    sub e
    ei
    sbc b
    sbc h
    adc [hl]
    sub e
    rst RST_38
    pop hl
    dec e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp l
    push bc
    xor a
    ld e, h
    sbc h
    adc h
    sbc h
    db $fd
    sbc c
    sbc h
    adc [hl]
    sub e
    db $eb
    db $fd
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
    sbc h
    sub l
    ld hl, sp-$01
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    call z, $b2a7
    reti


    add c
    rst RST_38
    rst RST_38
    rst RST_38
    call z, $b2a7
    reti


    add d
    rst RST_38
    rst RST_38
    rst RST_38
    call z, $b2a7
    reti


    add e
    rst RST_38
    rst RST_38
    rst RST_38
    call z, $b2a7
    reti


    add h
    rst RST_38
    rst RST_38
    rst RST_38
    call z, $b2a7
    reti


    add l
    rst RST_38
    rst RST_38
    rst RST_38
    call z, $b2a7
    reti


    add [hl]
    rst RST_38
    rst RST_38
    rst RST_38
    call z, $b2a7
    reti


    add a
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
    sbc d
    push hl
    add c
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc d
    push hl
    add d
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
    db $e3
    ld d, $f0
    add d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    pop bc
    xor [hl]
    cp d
    jp c, $c4a4

    rst RST_38
    rst RST_38
    jp nc, $e1d3

    adc [hl]
    sub e
    rst RST_38
    rst RST_38
    rst RST_38
    ld c, [hl]
    and h
    reti


    ld a, l
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    jp nc, $c836

    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_10
    pop de
    cp a
    and h
    ld b, b
    rst RST_38
    rst RST_38
    rst RST_38
    cp b
    cp l
    ret c

    ld c, e
    db $dd
    add c

jr_010_515e:
    rst RST_38
    rst RST_38
    cp b

jr_010_5161:
    cp l
    ret c

    ld c, e
    db $dd
    add d
    rst RST_38
    rst RST_38
    cp b
    cp l
    ret c

    ld c, e
    db $dd
    add e
    rst RST_38
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc e
    ld sp, hl
    jr jr_010_515e

    db $fc
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [$ffef], a
    add d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    jr c, jr_010_5161

    ld c, e
    or c
    dec de
    adc a
    sbc h
    rst RST_38
    sbc h
    adc h
    sbc h
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or d
    or c
    ret c

    db $dd
    jr c, @+$01

    rst RST_38
    rst RST_38
    sub [hl]
    ldh a, [$ff97]
    ld a, [$ff81]
    rst RST_38
    rst RST_38
    sub [hl]
    ldh a, [$ff97]
    ld a, [$ff82]
    rst RST_38
    rst RST_38
    cp b
    cp l
    ret c

    ld c, e
    db $dd
    add h
    rst RST_38
    rst RST_38
    cp b
    cp l
    ret c

    ld c, e
    db $dd
    add l
    rst RST_38
    rst RST_38
    cp b
    cp l
    ret c

    ld c, e
    db $dd
    add [hl]
    rst RST_38
    rst RST_38
    cp b
    cp l
    ret c

    ld c, e
    db $dd
    add a
    rst RST_38
    rst RST_38
    cp a
    and h
    cp [hl]
    and h
    inc a
    rst RST_38
    rst RST_38
    rst RST_38
    sbc e
    rst RST_30
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    call z, $b2d7
    ld e, d
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    ldh a, [rNR33]
    sbc e
    sbc h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp d
    and h
    call nz, $ffff
    rst RST_38
    rst RST_38
    rst RST_38
    sbc e
    sub d
    db $ec
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld e, e
    cp l
    call nz, $81d9
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_08
    add $d7
    adc $d9
    ld b, b
    and h
    rst RST_38
    sbc d
    di
    jp hl


    sub d
    ld a, [$ffff]
    rst RST_38
    db $ec
    sub e
    db $e4
    sub e
    add c
    rst RST_38
    rst RST_38
    rst RST_38
    ld c, d
    xor a
    jr c, @+$01

    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld e, e
    cp l
    call nz, $82d9
    rst RST_38
    rst RST_38
    rst RST_38
    and $8f
    sub a
    pop hl
    adc [hl]
    sub e
    rst RST_38
    rst RST_38
    ld h, b
    db $fd
    ld d, $fd
    cp c
    and h
    cp l
    rst RST_38
    db $ec
    sub e
    db $e4
    sub e
    add d
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [c], a
    ld l, [hl]
    add c
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh [c], a
    ld l, [hl]
    add d
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
    ld [$ff9a], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc h
    adc [hl]
    ld sp, hl
    sub d
    sub [hl]
    ld l, d
    db $fd
    rst RST_38
    ldh [c], a
    ld l, [hl]
    add e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld e, e
    cp l
    call nz, $83d9
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
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
    call nz, $dab2
    xor a
    call nz, $ffff
    rst RST_38
    or [hl]
    ld [hl], $d0
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc [hl]
    db $fd
    ldh a, [c]
    db $fd
    ld h, b
    sub d
    rst RST_38
    rst RST_38
    ldh a, [rNR33]
    ldh [$ffef], a
    ld hl, sp-$01
    rst RST_38
    rst RST_38
    or [hl]
    or e
    db $dd
    ret nz

    and h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_08
    ld b, h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    call c, $ddb2
    jp hl


    ld a, a
    ldh [$ffe5], a
    rst RST_38
    cp b
    db $d3
    jp hl


    sbc l
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    call c, $ddb2
    jp hl


    ld a, a
    ldh [$fff9], a
    rst RST_38
    ldh [$fff9], a
    jp hl


    ld a, a
    sbc [hl]
    db $fd
    rst RST_38
    rst RST_38
    call c, $ddb2
    jp hl


    ld a, a
    ld c, e
    db $dd
    rst RST_38
    reti


    and h
    jp c, $c4af

    rst RST_38
    rst RST_38
    rst RST_38
    cp l
    db $db
    xor a
    call nz, $bccf
    db $dd
    rst RST_38
    ld c, [hl]
    ret nz

    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or d
    cp l
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    inc e
    adc l
    db $fc
    sub a
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
    ld h, e
    db $fd
    sub a
    cp l
    ret nz

    db $dd
    ld b, h
    rst RST_38
    ret nz

    or d
    ld e, h
    rst RST_10
    or d
    ret nz

    and h
    rst RST_38
    ld e, [hl]
    cp l
    ret nz

    and h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld l, l
    db $dd
    jp nz, $ffff

    rst RST_38
    rst RST_38
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    sub e
    ld hl, sp+$6a
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    sub e
    ld hl, sp-$01
    rst RST_38
    sub [hl]
    db $fd
    ld l, d
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld d, $92
    db $e4
    sub e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld e, e
    cp l
    call nz, Call_000_1ad9
    sub e
    db $e4
    sub e
    ld a, [de]
    sub e
    db $e4
    sub e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    call nz, $ddd7
    cp b
    jp hl


    ld a, a
    ld b, h
    or c
    cp h
    xor l
    ld [hl], $a4
    cp h
    xor [hl]
    xor a
    cp b
    or $8f
    ld a, d
    rst RST_30
    sub d
    rst RST_38
    rst RST_38
    rst RST_38
    or c
    cp b
    cp [hl]
    reti


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld c, h
    jp c, $b7a4

    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp b
    rst RST_10
    xor a
    pop bc
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    jp z, Jump_010_44dd

    reti


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or d
    jr c, @-$38

    xor a
    cp h
    xor [hl]
    db $dd
    rst RST_38
    ld c, [hl]
    db $dd
    ret z

    xor a
    call nz, $ffff
    rst RST_38
    db $ec
    inc e
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh a, [$ff9e]
    jp hl


    sub l
    db $e4
    sbc d
    rst RST_38
    rst RST_38
    add sp, -$14
    ld h, b
    rst RST_38
    rst RST_38
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
    jp nc, $c0a4

    and h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld hl, sp-$72
    sub e
    sub a
    db $fd
    sub d
    ld a, [$b6ff]
    and h
    rst RST_10
    inc a
    or l
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_08
    db $dd
    cp h
    xor [hl]
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    ldh a, [$ff1f]
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp h
    xor h
    db $dd
    ld b, e
    ret c

    or c
    rst RST_38
    rst RST_38
    push hl
    ld d, $b2
    cp l
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld h, b
    db $fd
    ei
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    xor $fd
    ld h, b
    push hl
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub d
    ei
    ld h, d
    sub [hl]
    sub d
    jp hl


    ld a, a
    sub h
    jp Jump_010_4ca4


    reti


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld l, l
    xor a
    ld b, h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld c, d
    db $dd
    ld [hl], $db
    and h
    rst RST_38
    rst RST_38
    rst RST_38
    or l
    call z, $bda8
    ld c, e
    reti


    rst RST_38
    rst RST_38
    sbc c
    db $fd
    ld d, $fd
    db $eb
    adc [hl]
    sub e
    rst RST_38
    cp b
    cp l
    ret c

    ld h, b
    push hl
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld l, l
    adc a
    sbc a
    sub e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ret


    xor a
    or [hl]
    and h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc h
    ldh [c], a
    inc e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    call c, $ffc6
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or [hl]
    ld [hl], $d0
    jp hl


    bit 1, e
    rst RST_38
    rst RST_38
    or e
    or h
    cp l
    call nz, $ddb4
    ld b, h
    rst RST_38
    cp c
    inc a
    and h
    ld h, h
    sub l
    ld hl, sp-$01
    rst RST_38
    cp h
    xor h
    and h
    rst RST_08
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, l
    or l
    ret c

    or c
    ld h, h
    sub l
    ld hl, sp-$01
    or c
    and h
    ld c, d
    db $dd
    db $db
    and h
    ld b, h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
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
    ld c, h
    reti


    and h
    ret nz

    cp b
    cp h
    and h
    rst RST_38
    or d
    or h
    db $db
    and h
    ret nz

    cp b
    cp h
    and h
    ld a, l
    db $dd
    ret nz

    cp a
    and h
    ld b, b
    rst RST_38
    rst RST_38
    jp nc, $da44

    inc a
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    ld b, b
    or d
    cp e
    ret


    and h
    reti


    rst RST_38
    rst RST_38
    or l
    call z, $a4da
    reti


    rst RST_38
    rst RST_38
    rst RST_38
    cp c
    db $d3
    ld e, d
    ld e, d
    or d
    db $dd
    rst RST_38
    rst RST_38
    ld c, e
    cp l
    or l
    ld b, e
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    ld c, d
    or d
    or [hl]
    cp a
    and h
    ld b, b
    rst RST_38
    rst RST_38
    rst RST_08
    db $dd
    adc $a4
    reti


    rst RST_38
    rst RST_38
    rst RST_38
    ld a, a
    sub c
    sbc c
    ldh [$ffa1], a
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, a
    sbc h
    ldh a, [c]
    ldh [$ffa1], a
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
    or c
    ld b, h
    jp c, $ffbd

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
    rst RST_08
    ld b, h
    jp hl


    bit 1, e
    rst RST_38
    rst RST_38
    rst RST_38
    add d
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
    cp d
    and h
    call nz, Call_010_5ee9
    cp c
    xor a
    call nz, Call_010_6b9e
    ei
    jp hl


    ld e, [hl]
    cp c
    xor a
    call nz, $c0cc
    rst RST_38
    rst RST_38
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
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sbc h
    ldh [$ff92], a
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
    sub [hl]
    ld l, l
    sub a
    db $fd
    sbc d
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
    ld b, b
    xor a
    cp h
    xor l
    ld c, [hl]
    and h
    ld b, h
    rst RST_38
    ldh [c], a
    sbc b
    sub h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or a
    xor h
    ld c, e
    ret z

    xor a
    call nz, $ffff
    ldh [c], a
    sbc b
    sub h
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or a
    xor h
    ld c, e
    ret z

    xor a
    call nz, $ffff
    jp nc, $d9a4

    ld c, [hl]
    xor a
    cp b
    cp l
    rst RST_38
    push bc
    or d
    call nz, $c0bd
    db $dd
    ld b, h
    rst RST_38
    push bc
    or d
    call nz, $c0bd
    db $dd
    ld b, h
    rst RST_38
    ld l, l
    db $fd
    sub a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
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
    ld a, [hl-]
    ret nc

    ld l, d
    sbc d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    add hl, de
    sbc l
    sub d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
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

Call_010_5ee9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_010_6b9e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_010_7fa4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_010_7fe5:
    nop
    nop
    nop
    nop

Jump_010_7fe9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
