; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    nop
    ld b, c
    db $10
    ld b, c
    ld b, h
    ld b, c
    ld d, e
    ld b, c
    add [hl]
    ld b, c
    sbc d
    ld b, c
    cp c
    ld b, c
    sub $41
    ld l, l
    ld b, d
    sub b
    ld b, d
    or b
    ld b, d
    inc bc
    ld b, e
    ld [hl], d
    ld b, e
    or a
    ld b, e
    ld [$1243], a
    ld b, h
    jr c, jr_014_4066

    ld l, h
    ld b, h
    xor l
    ld b, h
    pop de
    ld b, h
    inc hl
    ld b, l
    ld sp, $3c45
    ld b, l
    ld c, l
    ld b, l
    sub e
    ld b, l
    sub $45
    rrca
    ld b, [hl]
    ld c, b
    ld b, [hl]
    ld l, [hl]
    ld b, [hl]
    adc d
    ld b, [hl]
    pop bc
    ld b, [hl]
    inc h
    ld b, a
    ld c, l
    ld b, a
    add a
    ld b, a
    jp z, $3747

    ld c, b
    ld h, [hl]
    ld c, b
    or h
    ld c, b
    ld hl, sp+$48
    add hl, hl
    ld c, c
    ld d, a
    ld c, c
    adc a
    ld c, c
    or [hl]
    ld c, c
    jp $d649


    ld c, c
    pop af
    ld c, c
    dec d
    ld c, d
    dec [hl]
    ld c, d
    ld d, d
    ld c, d
    ld l, h
    ld c, d
    add h
    ld c, d

jr_014_4066:
    sub l
    ld c, d
    xor b
    ld c, d
    ret


    ld c, d
    ret c

    ld c, d
    xor $4a
    dec l
    ld c, e
    ld b, a
    ld c, e
    ld e, b
    ld c, e
    halt
    ld c, e
    sbc [hl]
    ld c, e
    cp c
    ld c, e
    sub l
    ld c, h
    or c
    ld c, h
    call c, $f14c
    ld c, h
    inc a
    ld c, l
    sub [hl]
    ld c, l
    and l
    ld c, l
    ld hl, sp+$4d
    rla
    ld c, [hl]
    ld h, h
    ld c, [hl]
    add e
    ld c, [hl]
    cp h
    ld c, [hl]
    jp $e64e


    ld c, [hl]
    or $4e
    rrca
    ld c, a
    inc [hl]
    ld c, a
    ld b, [hl]
    ld c, a
    ld e, b
    ld c, a
    sbc h
    ld c, a
    cp c
    ld c, a
    ret z

    ld c, a
    ldh [c], a
    ld c, a
    ld h, $50
    ld l, a
    ld d, b
    ld a, [hl]
    ld d, b
    xor c
    ld d, b
    call z, $de50
    ld d, b
    dec sp
    ld d, c
    ld c, b
    ld d, c
    xor e
    ld d, c
    or $51
    call Call_000_3652
    ld d, e
    ld h, c
    ld d, e
    ld [hl], h
    ld d, e
    rst RST_00
    ld d, e
    ld e, $54
    ld a, b
    ld d, h
    adc a
    ld d, h
    and b
    ld d, h
    or b
    ld d, h
    sbc $54
    push af
    ld d, h
    rra
    ld d, l
    ld e, a
    ld d, l
    adc [hl]
    ld d, l
    sbc e
    ld d, l
    jp c, $e455

    ld d, l
    inc d
    ld d, [hl]
    ld l, $56
    ld c, d
    ld d, [hl]
    ld l, c
    ld d, [hl]
    ld [hl], e
    ld d, [hl]
    add $56
    ld [$0d56], a
    ld d, a
    add hl, de
    ld d, a
    ld [hl-], a
    ld d, a
    ld b, b
    ld d, a
    ld c, a
    ld d, a
    ld a, d
    ld d, a
    or l
    ld d, a
    rst RST_08
    ld d, a
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
    cp h
    or [hl]
    ld a, [hl-]
    sub h
    sub a
    jp hl


    ld a, a
    db $db
    ld c, e
    and h
    ld h, b
    and c
    inc c
    ld a, [$9c8f]
    adc h
    jp hl


    ld a, a
    sub l
    db $e4
    and l
    and l
    and l
    and c
    dec c
    sbc h
    adc h
    sbc h
    adc [hl]
    sub e
    jp hl


    ld a, a
    sbc d
    sub h
    and l
    and l
    and l
    and c
    inc c
    sub [hl]
    adc a
    sub a
    and $7f
    ldh a, [$ffe1]
    db $e3
    ld sp, hl
    push hl
    and c
    rst RST_38
    db $ec
    ld sp, hl
    sbc a
    sub e
    push hl
    ld a, a
    sub a
    jp hl


    ld a, a
    ld l, l
    db $dd
    pop bc
    ld h, b
    and c
    rst RST_38
    ld h, h
    sbc d
    sub [hl]
    rst RST_30
    sub [hl]
    ld a, a
    db $ec
    sub d
    db $e3
    sub a
    ldh [$ff7f], a
    sbc l
    sub a
    rst RST_28
    sub [hl]
    ld e, $63
    ld l, l
    xor a
    ld b, h
    reti


    and h
    pop de
    and $7f
    ldh [c], a
    sub e
    inc e
    ld sp, hl
    ld a, a
    sub e
    sbc h
    ei
    jp hl


    dec c
    ld b, h
    or c
    ld d, $7f
    sub [hl]
    adc a
    db $e3
    and $7f
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld l, d
    sub d
    db $e3
    db $fd
    ld h, e
    ld [$9c7f], a
    db $fd
    ld l, h
    db $fd
    or b
    dec c
    sub e
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sub a
    jp hl


    ld a, a
    cp h
    xor h
    xor a
    ret nz

    and h
    ld h, b
    and c
    dec c
    ld a, l
    db $dd
    or a
    ld h, e
    ld a, a
    sbc $ed
    sub d
    db $e3
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
    ld l, d
    sub d
    db $e3
    db $fd
    and $ea
    ld a, a
    ei
    sub e
    inc e
    db $fd
    ld d, $0d
    ldh [$ff8f], a
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    db $e3
    db $fd
    sub d
    db $fd
    rst RST_30
    sbc h
    sub d
    and c
    rst RST_38
    ei
    sub e
    inc e
    db $fd
    ld d, $7f
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    ld a, a
    sub d
    rst RST_20
    ld h, b
    ei
    sub e
    and c
    push hl
    db $ec
    ld h, b
    and $ea
    ld a, a
    sbc $4e
    ret c

    cp l
    rst RST_18
    db $e4
    dec c
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    sub l
    ld a, [$7f16]
    pop af
    sub [hl]
    sbc h
    ld a, a
    sub [hl]
    adc a
    db $e3
    sub d
    ldh [$ff0d], a
    sbc $c0
    cp d
    rst RST_18
    or b
    ld a, a
    sub l
    di
    sub d
    ld h, b
    sbc l
    push hl
    and l
    and l
    and l
    and c
    inc c
    dec de
    adc a
    sbc h
    adc l
    ld h, b
    adc a
    ldh [rNR21], a
    and l
    and l
    and l
    sub [hl]
    sbc h
    sbc d
    sbc b
    db $e3
    dec c
    sub [hl]
    db $fc
    sub d
    sub d
    db $f4
    ldh [c], a
    ld h, b
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sub l
    ld a, [$7f16]
    sub l
    sbc a
    sbc b
    ld a, a
    sub [hl]
    sub h
    adc a
    ldh [$ffe4], a
    sub a
    ld [$970d], a
    or b
    ld a, a
    sub a
    sub [hl]
    sbc [hl]
    db $e3
    ld a, a
    call c, $dcdd
    db $dd
    ld a, a
    sub e
    ld sp, hl
    sbc e
    sbc b
    dec c
    ldh [c], a
    sub a
    rst RST_28
    db $e4
    adc a
    ldh [$fff8], a
    ld a, a
    sbc h
    push hl
    sub [hl]
    adc a
    ldh [$ff9c], a
    push hl
    and c
    rst RST_38
    sbc d
    jp hl


    sub d
    rst RST_20
    and $ea
    ld a, a
    sub a
    dec e
    sub c
    db $e4
    ld d, $0d
    ldh [$ff98], a
    sbc e
    db $fd
    sub c
    ld sp, hl
    and c
    dec c
    sbc c
    db $fd
    sub [hl]
    and l
    and l
    and l
    ldh [c], a
    or $9f
    sub e
    ld h, b
    push hl
    and c
    rst RST_38
    sub l
    db $e4
    sbc d
    ld [$f67f], a
    sbc b
    ld a, a
    add sp, -$0f
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    ld [$9ce5], a
    sub [hl]
    sbc c
    db $e3
    di
    ld a, a
    db $ed
    db $fd
    inc e
    ld d, $e5
    sub d
    and c
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    and $ea
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    jp hl


    dec c
    push hl
    sub [hl]
    rst RST_28
    ld h, b
    adc a
    ldh [$ff7f], a
    rst RST_08
    call z, $b1a8
    ld d, $0d
    sbc d
    ei
    sbc e
    ld a, [$e4e0]
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    sbc h
    ldh [$ff92], a
    ld d, $7f
    sub c
    db $fd
    pop hl
    sbc e
    ld a, [$92e3]
    ld sp, hl
    dec c
    sbc d
    sub e
    sub a
    adc [hl]
    sub e
    jp hl


    ld a, a
    sbc h
    ldh [$ff92], a
    sub l
    sub a
    ld l, d
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
    sbc h
    db $fd
    ld l, h
    db $fd
    and $ea
    ld a, a
    sbc h
    db $fd
    ld h, b
    dec c
    rst RST_08
    call z, $b1a8
    and $e2
    sub d
    db $e3
    and l
    and l
    and l
    inc c
    add d
    sbc h
    adc l
    sub e
    sub [hl]
    db $fd
    rst RST_28
    sub h
    and $7f
    sbc d
    ei
    sbc e
    ld a, [$0de0]
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
    push hl
    sub [hl]
    rst RST_28
    sub [hl]
    di
    dec c
    sbc h
    ld a, [$92e5]
    db $e4
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    sbc h
    ldh [$ff92], a
    ld d, $7f
    sub c
    db $fd
    pop hl
    sbc e
    ld a, [$92e3]
    ld sp, hl
    dec c
    sbc d
    sub e
    sub a
    adc [hl]
    sub e
    jp hl


    ld a, a
    sbc h
    ldh [$ff92], a
    sub l
    sub a
    ld l, d
    jp hl


    dec c
    inc e
    adc l
    sub e
    sbc h
    adc [hl]
    di
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    db $e4
    ldh [c], a
    ld e, $fd
    ld a, a
    ld h, b
    ld a, [$1696]
    ld a, a
    sub l
    ld a, [$7fe9]
    push hl
    or b
    dec c
    or $fd
    ld h, b
    and l
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    sub d
    db $f4
    push hl
    ld a, a
    or $96
    db $fd
    ld d, $7f
    sbc l
    ld sp, hl
    and l
    and l
    and l
    and c
    inc c
    db $ec
    ld hl, sp-$0f
    sbc b
    db $e4
    ld a, a
    cp l
    call nz, Call_000_3ca4
    and h
    and l
    rst RST_08
    and h
    pop bc
    db $dd
    ld d, $0d
    ldh [$ff8f], a
    db $e3
    sub d
    ldh [$ff8a], a
    rst RST_38
    sbc $ef
    ld h, b
    ld a, a
    sbc d
    db $fd
    push hl
    db $e4
    sbc d
    ei
    or b
    dec c
    ld a, a
    or e
    db $db
    or e
    db $db
    sbc h
    db $e3
    sub d
    ld sp, hl
    jp hl


    sub [hl]
    adc e
    inc c
    ld a, a
    ld [$98f4], a
    ld a, a
    sbc h
    push hl
    sub d
    db $e4
    ld a, a
    sub a
    add hl, de
    db $fd
    and $0d
    ld a, a
    rst RST_28
    and $91
    db $fc
    push hl
    sub d
    ld e, $8a
    rst RST_18
    rst RST_38
    sbc $96
    add sp, -$16
    ld a, a
    ldh a, [$ffe2]
    sub [hl]
    adc a
    ldh [$ffe9], a
    sub [hl]
    adc e
    dec c
    ld a, a
    ld c, [hl]
    cp l
    ld [$817f], a
    ld a, h
    db $fd
    ldh [$fff8], a
    db $e4
    di
    ld a, a
    rst RST_28
    adc a
    db $e3
    ld [$987f], a
    ld a, [$92e5]
    ld e, $8a
    rst RST_18
    rst RST_38
    sbc $e9
    sbc d
    sbc e
    ld a, [$7fe0]
    inc e
    sub [hl]
    db $fd
    ld [$917f], a
    db $e4
    dec c
    ld a, a
    ld [$6cfd], a
    db $fd
    ld h, b
    and c
    dec c
    ld a, a
    sub d
    sbc a
    sub d
    ld h, b
    xor $93
    ld d, $7f
    sub d
    sub d
    ld e, $8a
    rst RST_18
    rst RST_38
    sbc $4e
    cp l
    ld [$957f], a
    rst RST_28
    sub h
    jp hl


    ld a, a
    sub [hl]
    sub h
    ld hl, sp-$50
    dec c
    ld a, a
    sbc b
    ld l, e
    or b
    ld a, a
    push hl
    ld d, $98
    sbc h
    db $e3
    ld a, a
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    ld a, a
    ld c, [hl]
    cp l
    jp hl


    ld a, a
    sub a
    ldh [$ff92], a
    or b
    ld a, a
    sub e
    rst RST_30
    rla
    ld sp, hl
    push hl
    or $8a
    rst RST_18
    rst RST_38
    sbc $9a
    ld a, [$7f16]
    sbc e
    sub d
    ld a, [de]
    jp hl


    ld a, a
    sbc c
    sub d
    sbc d
    sbc b
    ld h, b
    adc d
    inc c
    ld a, a
    sbc d
    db $fd
    ld h, h
    ld a, a
    sub c
    sub e
    db $e4
    sub a
    ld a, a
    sub l
    rst RST_28
    sub h
    ld d, $0d
    ld a, a
    db $f4
    sbc b
    sbc a
    sbc b
    or b
    ld a, a
    ld [$9ce0], a
    db $e3
    sub d
    push hl
    sub [hl]
    adc a
    ldh [$fff7], a
    dec c
    ld a, a
    sub d
    jp hl


    pop hl
    ld [$92e5], a
    db $e4
    ld a, a
    sub l
    di
    sub h
    adc d
    rst RST_18
    rst RST_38
    sbc a
    sub e
    sub d
    sub e
    db $e4
    ld a, a
    cp l
    call nz, Call_000_3ca4
    and h
    ld [$e07f], a
    sub [hl]
    rst RST_30
    sub [hl]
    and $fc
    rst RST_30
    sub d
    push hl
    ld d, $f7
    ld a, a
    sbc e
    adc a
    db $e3
    sub d
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sbc $1c
    sub [hl]
    db $fd
    ld h, b
    and l
    and l
    and l
    and c
    dec c
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
    rst RST_30
    sub l
    sub e
    sub [hl]
    adc d
    inc c
    ld a, a
    push hl
    and $8f
    and l
    and l
    and l
    adc d
    adc d
    dec c
    ld a, a
    ldh a, [$ffe2]
    sbc c
    rst RST_30
    ld a, [$96e5]
    adc a
    ldh [$ff60], a
    db $e4
    and l
    and l
    and l
    adc d
    inc c
    ld a, a
    sbc h
    sub [hl]
    ldh [rNR21], a
    push hl
    sub d
    and l
    and l
    and l
    db $f4
    sbc b
    sbc a
    sbc b
    ld h, b
    adc d
    dec c
    ld a, a
    and l
    and l
    and l
    sub c
    ld l, d
    or $8a
    rst RST_18
    rst RST_38
    push bc
    or d
    call z, Call_014_7fe9
    ld [$7fb0], a
    sub l
    sbc e
    ldh a, [c]
    ldh [$ffa1], a
    rst RST_38
    push hl
    and $e6
    ld a, a
    ldh [c], a
    sub [hl]
    sub l
    sub e
    sub [hl]
    adc e
    rst RST_38
    or [hl]
    scf
    ld d, $7f
    sub [hl]
    sub [hl]
    adc a
    db $e3
    sub d
    db $e3
    ld a, a
    sub c
    sub [hl]
    push hl
    sub d
    adc d
    rst RST_38
    sub l
    ld a, [$7fea]
    sub d
    rst RST_20
    or b
    ld a, a
    ld a, l
    xor a
    call nz, Call_014_7fe6
    sbc h
    or $93
    db $e4
    dec c
    sub l
    di
    sub d
    ld a, a
    db $e3
    or b
    ld a, a
    jp hl


    ld l, d
    sbc h
    ldh [$ffa1], a
    inc c
    adc a
    adc a
    adc a
    adc a
    adc a
    db $e3
    sub h
    adc d
    adc d
    adc d
    dec c
    sub d
    rst RST_20
    ld d, $7f
    db $e3
    and $7f
    sub [hl]
    ldh a, [$ffe2]
    sub d
    db $e3
    sub a
    ldh [$ffa1], a
    dec c
    and l
    and l
    and l
    sub [hl]
    db $fc
    sub d
    sbc b
    push hl
    sub d
    add sp, -$5f
    rst RST_38
    sub l
    ld a, [$7f16]
    sbc h
    db $fd
    ld l, h
    db $fd
    or b
    ld a, a
    db $e4
    ei
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
    sbc $92
    pop hl
    ld l, h
    ld a, a
    add d
    add l
    cp [hl]
    db $dd
    call nz, $9d63
    and c
    dec c
    ld a, a
    sbc e
    sub a
    and $7f
    sub l
    sub [hl]
    add sp, -$50
    ld a, a
    ld [$8ff7], a
    db $e3
    dec c
    ld a, a
    sbc b
    ld h, b
    sbc e
    sub d
    or $8a
    rst RST_18
    rst RST_38
    sub l
    ld a, [$7fea]
    sub d
    rst RST_20
    and $7f
    sub d
    adc a
    ldh [$ffa1], a
    dec c
    sbc $95
    db $e3
    adc d
    rst RST_18
    inc c
    sub e
    and h
    db $fd
    and l
    and l
    and l
    ld hl, sp-$66
    sub e
    push hl
    ld a, a
    db $f4
    ldh [c], a
    ld h, b
    and c
    dec c
    pop hl
    adc h
    and h
    db $fd
    db $e4
    ld a, a
    rst RST_28
    sub h
    sub c
    sbc h
    or b
    dec c
    sbc e
    sbc h
    ld h, b
    sbc h
    db $e3
    sbc b
    ld a, [$a1e0]
    rst RST_38
    sub l
    ld a, [$7fea]
    sub d
    rst RST_20
    and $7f
    sub d
    adc a
    ldh [$ffa1], a
    dec c
    sbc $ec
    sbc [hl]
    adc d
    rst RST_18
    inc c
    sub e
    and h
    db $fd
    and l
    and l
    and l
    and c
    dec c
    sub d
    rst RST_20
    ld [$ef7f], a
    sub h
    sub c
    sbc h
    or b
    ld a, a
    sbc e
    sbc h
    ld h, b
    sbc h
    ldh [$ffa1], a
    dec c
    and l
    and l
    and l
    ld c, d
    or [hl]
    push hl
    ld a, a
    db $f4
    ldh [c], a
    ld h, b
    push hl
    and c
    rst RST_38
    sbc $95
    sub a
    adc h
    sbc b
    sbc e
    db $fd
    ld a, a
    sbc h
    db $fd
    ld l, h
    db $fd
    ld [$7f0d], a
    sub d
    sub [hl]
    ld d, $63
    sbc l
    sub [hl]
    and c
    dec c
    ld a, a
    sub d
    pop hl
    ld l, h
    ld a, a
    add d
    add l
    cp [hl]
    db $dd
    call nz, $9d63
    and c
    rst RST_18
    rst RST_38
    sbc $95
    sub [hl]
    sub d
    sub c
    add hl, de
    ld a, a
    rst RST_28
    sbc d
    db $e4
    and $7f
    sub c
    ld hl, sp+$16
    db $e4
    sub e
    dec c
    ld a, a
    ld a, [de]
    dec de
    sub d
    rst RST_28
    sbc h
    ldh [$ffa1], a
    rst RST_18
    rst RST_38
    sub a
    adc l
    sub e
    and $7f
    sub d
    rst RST_20
    ld d, $7f
    sub l
    ld a, [$16f2]
    sbc c
    db $e3
    dec c
    db $e4
    ld l, e
    sub [hl]
    sub [hl]
    adc a
    db $e3
    sub a
    ldh [$ffa1], a
    inc c
    sbc h
    adc l
    inc e
    db $fd
    or b
    ld a, a
    ldh [$ff9d], a
    sbc c
    push hl
    sbc c
    ld a, [$a56a]
    and l
    and l
    dec c
    db $e4
    ld a, a
    sub l
    di
    adc a
    ldh [$ffe9], a
    ld h, b
    ei
    sub e
    and c
    rst RST_38
    ld [hl], $d9
    reti


    and h
    adc d
    inc c
    sub c
    adc a
    pop hl
    di
    ld a, a
    sbc d
    adc a
    pop hl
    di
    ld a, a
    sub [hl]
    rst RST_28
    ld a, [$a1e0]
    dec c
    db $ec
    ld hl, sp-$16
    rst RST_30
    sub e
    sbc d
    db $e4
    ld d, $7f
    ld h, e
    sub a
    push hl
    sub d
    adc d
    inc c
    sbc $60
    ld a, [$a496]
    adc d
    dec c
    ld a, a
    ldh [$ff9d], a
    sbc c
    db $e3
    sbc b
    ld a, [$8aa4]
    adc d
    adc d
    rst RST_18
    inc c
    sbc e
    sbc c
    db $fd
    ld h, b
    db $e4
    sub a
    and $ea
    ld a, a
    sub l
    sbc a
    sub [hl]
    adc a
    ldh [$ffa1], a
    dec c
    sub l
    ld a, [$7fe9]
    sub d
    sbc h
    sub a
    ld [$9c7f], a
    ld h, b
    sub d
    and $0d
    sub e
    sbc l
    ld a, [$92e3]
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sub d
    ldh [$ff92], a
    adc a
    adc d
    dec c
    sub l
    ld a, [$7fea]
    db $e4
    ld l, e
    sub c
    ld d, $8f
    ldh [$ffa1], a
    inc c
    sub l
    sbc h
    ld hl, sp-$1a
    ld a, a
    db $e4
    add hl, de
    ld d, $7f
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
    sub l
    ld a, [$7fea]
    sub d
    rst RST_20
    and $7f
    sub [hl]
    ldh a, [$ffe2]
    sub d
    ldh [$ffa1], a
    inc c
    sbc l
    ld sp, hl
    db $e4
    and l
    and l
    and l
    sub d
    rst RST_20
    ld [$9a7f], a
    sub e
    add hl, de
    sub a
    sbc e
    ld a, [$e4e0]
    sub l
    di
    adc a
    ldh [$ffe9], a
    sub [hl]
    ld a, a
    ld [$9c19], a
    sbc b
    ld a, a
    sub l
    ld a, [$0de6]
    sub [hl]
    ldh a, [$ffe2]
    sub d
    db $e3
    sub a
    ldh [$ff8a], a
    rst RST_38
    sub h
    sbc e
    or b

jr_014_478a:
    ld a, a
    di
    rst RST_30
    adc a
    db $e3
    sub d
    push hl
    sub d
    jp hl


    sub [hl]
    dec c
    sub d
    rst RST_20
    ld [$367f], a
    jp nz, $c236

    db $e4
    ld a, a
    ldh [$ff6d], a
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    sub l
    and h
    adc a
    db $e4
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
    ld a, [$7fe9]
    push af
    ld l, e
    rst RST_28
    ld h, e
    dec c
    ldh [$ff6d], a
    rst RST_30
    ld a, [$e4f9]
    sbc d
    ei
    ld h, b
    adc a
    ldh [$ffa1], a
    rst RST_38
    ldh [c], a
    sbc b
    sub h
    jp hl


    ld a, a
    sub e
    sub h
    and $7f
    cp h
    ld [hl], $a4
    ret c

    db $dd
    jr c, jr_014_478a

    dec c
    sub l
    sub d
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    call z, Call_014_7faf
    call z, Call_014_7faf
    call z, $a1af
    dec c
    ld l, l
    db $dd
    jp $a4a8


    add $e9
    ld a, a
    sub c
    db $fc
    db $e3
    ld sp, hl
    ld a, a
    or $93
    sbc l
    ld d, $0d
    ldh a, [c]
    and $7f
    ldh a, [$ff94]
    ld sp, hl
    or $93
    ld h, b
    and c
    inc c
    sub c
    db $e4
    ld [$cf7f], a
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
    sbc l
    ld h, b
    sbc c
    ld h, b
    and c
    dec c
    and l
    and l
    and l
    sub e
    rst RST_28
    sbc b
    ld a, a
    db $f4
    rst RST_30
    push hl
    sbc c
    ld a, [$8a6a]
    rst RST_38
    ei
    sub e
    inc e
    db $fd
    ld [$927f], a
    adc a
    ldh [$ffa1], a
    inc c
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
    dec c
    ld a, a
    ld h, h
    sub e
    rra
    ld a, a
    sbc h
    db $fd
    ld l, h
    db $fd
    or b
    ld a, a
    db $e4
    adc a
    db $e3
    dec c
    ld a, a
    sbc b
    ld h, b
    sbc e
    sub d
    and c
    rst RST_18
    rst RST_38
    ei
    sub e
    inc e
    db $fd
    ld [$fc7f], a
    rst RST_30
    adc a
    db $e3
    ld a, a
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
    ld a, a
    sbc e
    sub a
    xor $64
    ld a, a
    sub l
    sub [hl]
    add sp, -$16
    dec c
    ld a, a
    sub d
    ldh [$ff60], a
    sub a
    rst RST_28
    sbc h
    ldh [rNR21], a
    ld a, a
    rst RST_28
    ld h, b
    ld a, a
    sbc h
    db $fd
    ld l, h
    db $fd
    or b
    ld a, a
    db $e4
    adc a
    db $e3
    sub d
    rst RST_28
    sbc [hl]
    db $fd
    add sp, -$5f
    dec c
    ld a, a
    ld [$98f4], a
    ld a, a
    db $e4
    adc a
    db $e3
    sbc b
    ld h, b
    sbc e
    sub d
    and c
    rst RST_18
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
    dec c
    ld a, a
    sbc h
    sub [hl]
    sbc h
    ld a, a
    sbc h
    db $fd
    ld l, h
    db $fd
    ld [$9d7f], a
    ld l, l
    db $e3
    dec c
    ld a, a
    sub e
    ld a, [$9ce3]
    rst RST_28
    sub d
    rst RST_28
    sbc h
    ldh [$ffa1], a
    inc c
    ld a, a
    rst RST_28
    ldh [$ffe9], a
    ld a, a
    sub l
    sbc d
    sbc h
    or b
    ld a, a
    sbc d
    sbc d
    ei
    or $f8
    dec c
    ld a, a
    sub l
    rst RST_28
    pop hl
    sbc h
    db $e3
    sub d
    rst RST_28
    sbc l
    and c
    rst RST_18
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
    dec c
    ld a, a
    ld h, e
    di
    ld a, a
    sub l
    sub [hl]
    add sp, -$50
    ld a, a
    sub d
    ldh [$ff60], a
    sub [hl]
    push hl
    sub d
    db $e4
    dec c
    ld a, a
    sbc h
    db $fd
    ld l, h
    db $fd
    ld [$957f], a
    db $fc
    ldh [$ff9c], a
    ld h, e
    sub a
    rst RST_28
    sbc [hl]
    db $fd
    and c
    rst RST_18
    rst RST_38
    sbc d
    jp hl


    sub d
    rst RST_20
    ld [$f67f], a
    sbc b
    ld a, a
    sbc b
    db $fd
    ld a, [$9bfd]
    ld a, [$92e3]
    ld sp, hl
    or $93
    ld h, b
    and c
    inc c
    sub l
    ld a, [$7fe9]
    sbc d
    sub e
    add hl, de
    sub a
    or b
    ld a, a
    sbc l
    db $fd
    push hl
    ld hl, sp-$1c
    dec c
    sub [hl]
    db $fc
    sbc l
    db $e4
    ld [$ff8a], a
    ei
    sub e
    inc e
    db $fd
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
    adc d
    inc c
    sbc a
    ld a, [$7fb0]
    ldh a, [$ffe3]
    sub d
    ldh [$ff7f], a
    pop hl
    adc l
    sub e
    inc e
    ldh [c], a
    push hl
    dec c
    sub d
    rst RST_20
    ld d, $7f

jr_014_497c:
    sub a
    adc l
    sub e
    and $7f
    sub l
    ld a, [$0de6]
    db $e4
    ld l, e
    sub [hl]
    sub [hl]
    adc a
    db $e3
    sub a
    ldh [$ff8a], a
    rst RST_38
    sbc h
    sub [hl]
    sbc h
    ld a, a
    sbc l
    jr jr_014_497c

    ld a, a
    sub c
    sub d
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    sub d
    rst RST_28
    ld a, a
    sub d
    ld sp, hl
    ld a, a
    sub [hl]
    sub d
    or b
    dec c
    sub h
    rst RST_30
    db $fd
    ld h, e
    sbc h
    rst RST_28
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    rst RST_38
    ld e, h
    rst RST_10
    xor a
    call nz, $a4ce
    pop de
    and $7f
    sub d
    ld sp, hl
    and c
    rst RST_38
    sbc $92
    sbc a
    rla
    ld a, a
    ld a, [de]
    inc e
    adc [hl]
    sub e
    sbc h
    adc h
    sbc b
    ld h, b
    sbc e
    and h
    sub d
    adc d
    rst RST_18
    rst RST_38
    sub l
    sub a
    adc h
    sbc b
    ld d, $7f
    sbc d
    jp hl


    ld b, h
    or c
    or b
    ld a, a
    db $e4
    sub l
    adc a
    db $e3
    dec c
    ld h, e
    ld [$f892], a
    sbc h
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    db $e4
    ld l, e
    rst RST_30
    ld d, $7f
    sbc h
    rst RST_28
    ei
    sub e
    db $e4
    ld a, a
    sbc h
    db $e3
    sub d
    ldh [$ffe9], a
    ld h, e
    dec c
    sub d
    sbc a
    sub d
    ld h, e
    ld a, a
    ld a, [$9c8f]
    adc h
    and $7f
    db $e4
    ld l, e
    sbc d
    db $fd
    ld h, b
    adc d
    rst RST_38
    ldh a, [c]
    jp hl


    rst RST_28
    sub h
    ld h, e
    ld a, a
    ld b, h
    or c
    ld d, $7f
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    inc c
    pop bc
    xor d
    xor a
    adc d
    dec c
    ldh [c], a
    sub d
    db $e3
    push hl
    sub d
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    cp h
    xor l
    and h
    db $e4
    ld a, a
    sub l
    db $e4
    or b
    ld a, a
    ldh [$ffe3], a
    push hl
    ld d, $f7
    dec c
    ld a, [$9c8f]
    adc h
    ld d, $7f
    ld [$8f92], a
    db $e3
    sub a
    ldh [$ffa1], a
    rst RST_38
    sub l
    ld a, [$7fe9]
    pop hl
    sub [hl]
    sbc b
    and $92
    ld sp, hl
    ld a, a
    sbc h
    adc h
    sbc h
    adc [hl]
    sub e
    ld d, $0d
    sbc e
    sbc c
    db $fd
    ld h, e
    sub d
    ld sp, hl
    and c
    rst RST_38
    ld [$9c8f], a
    adc h
    jp hl


    ldh [$fff2], a
    ld a, a
    ld a, [$9c8f]
    adc h
    jp hl


    ld a, a
    ld b, h
    or c
    ld d, $0d
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    db $e4
    sub l
    sbc b
    ld h, e
    ld a, a
    sub a
    db $e3
    sub a
    ld d, $7f
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    db $e4
    sub l
    sbc b
    sub [hl]
    rst RST_30
    ld a, a
    sbc e
    sbc c
    ld l, e
    ld a, [de]
    sub h
    ld d, $7f
    sub a
    sbc d
    sub h
    ld sp, hl
    and c
    rst RST_38
    cp h
    or [hl]
    ld a, [hl-]
    sub h
    sub a
    jp hl


    ld a, a
    rst RST_28
    sub h
    and $7f
    sub a
    ldh [$ffa1], a
    dec c
    ret nz

    cp b
    cp h
    and h
    ld d, $7f
    add c
    ld h, b
    sub d
    ld a, a
    db $e4
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    cp h
    or [hl]
    ld a, [hl-]
    sub h
    sub a
    jp hl


    ld a, a
    rst RST_28
    sub h
    and $7f
    sub a
    ldh [$ffa1], a
    rst RST_38
    sbc $bc
    or [hl]
    ld a, [hl-]
    sub h
    sub a
    rst RST_18
    db $e4
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    dec c
    sub [hl]
    db $fd
    ld l, d
    db $fd
    ld h, b
    and c
    rst RST_38
    sbc a
    sub e
    sub d
    sub e
    db $e4
    ld a, a
    inc e
    pop af
    sub d
    db $fd
    ld [$4c7f], a
    jp nz, $c24c

    db $e4
    dec c
    ldh a, [c]
    db $fd
    ld h, h
    sub e
    sbc b
    sbc e
    sbc a
    sub e
    and $7f
    ld [$b09a], a
    ld a, a
    ld h, b
    sbc h
    ldh [$ffa1], a
    inc c
    sbc $9a
    ld a, [$7f16]
    ld c, [hl]
    db $dd
    ld b, h
    or e
    xor d
    reti


    sbc e
    db $fd
    jp hl


    dec c
    ld a, a
    di
    pop hl
    di
    jp hl


    ld h, e
    sbc l
    or $a1
    rst RST_18
    rst RST_38
    or c
    and h
    pop bc
    ld d, $e0
    jp hl


    ld a, a
    rst RST_08
    ld b, h
    ld h, b
    and c
    dec c
    sub a
    ld a, [$e692]
    ld a, a
    ldh a, [rNR21]
    sub [hl]
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    db $f4
    adc a
    ldh [rNR34], a
    adc d
    dec c
    ldh a, [rNR30]
    db $e4
    ld a, a
    ldh a, [c]
    sub d
    pop hl
    adc l
    sub e
    adc d
    rst RST_38
    ret nz

    cp b
    cp h
    and h
    ld d, $7f
    db $e4
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    sub a
    adc h
    sbc b
    ld [$e97f], a
    adc a
    db $e3
    sub d
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    sub d
    db $f4
    ld a, a
    rst RST_28
    db $e3
    or $8a
    dec c
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    or b
    ld a, a
    sub l
    sbc d
    rst RST_30
    sbc [hl]
    ldh [$fff7], a
    dec c
    ret nz

    cp b
    cp h
    and h
    and $7f
    jp hl


    ld a, [$98e5]
    push hl
    ld sp, hl
    and l
    and l
    and l
    and c
    rst RST_38
    sub d
    db $f4
    ld a, a
    sbc a
    db $fd
    push hl
    sbc d
    db $e4
    ld [$9763], a
    push hl
    sub d
    and c
    dec c
    push af
    sub e
    inc e
    db $fd
    jp hl


    ld a, a
    sbc b
    ld sp, hl
    rst RST_28
    ld h, b
    adc d
    rst RST_38
    ret nz

    cp b
    cp h
    and h
    and $7f
    jp hl


    ld hl, sp-$66
    db $fd
    ld h, b
    and c
    inc c
    push hl
    ld a, a
    push hl
    db $fd
    db $e4
    and l
    and l
    and l
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$f10d], a
    sub [hl]
    sbc h
    jp hl


    ld a, a
    push af
    sub e
    inc e
    db $fd
    ld h, e
    ld [$92e5], a
    sub [hl]
    adc d
    inc c
    sbc $b4
    and h
    cp l
    sub [hl]
    ld a, a
    db $eb
    sbc e
    sbc h
    ld l, h
    ld hl, sp+$60
    push hl
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    pop hl
    adc [hl]
    sub e
    sbc h
    ld [$647f], a
    sub e
    ld h, b
    sub d
    adc e
    inc c
    ld a, a
    sub d
    rst RST_28
    jp hl


    ld a, a
    sub l
    ld a, [$7f16]
    sub c
    ld sp, hl
    jp hl


    di
    ld a, a
    sub l
    rst RST_28
    sub h
    jp hl


    ld a, a
    sub l
    sub [hl]
    add hl, de
    ld h, b
    adc d
    inc c
    ld a, a
    or $9c
    adc d
    dec c
    ld a, a
    sub a
    adc [hl]
    sub e
    ld [$eb7f], a
    db $e4
    ldh [c], a
    ld a, a
    cp e
    and h
    ld c, e
    cp l
    db $e4
    dec c
    ld a, a
    sub d
    sbc d
    sub e
    sub [hl]
    adc d
    rst RST_18
    inc c
    sbc l
    sub e
    add sp, -$03
    rst RST_28
    sub h
    and l
    and l
    and l
    ld a, a
    sbc d
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    and $0d
    ldh [$ffe9], a
    rst RST_28
    ld a, [$7fe3]
    pop hl
    adc [hl]
    adc a
    db $e4
    sbc h
    ldh [$ff7f], a
    db $e3
    ld h, b
    sbc l
    sbc c
    or b
    sbc h
    ldh [$ff9a], a
    db $e4
    ld d, $7f
    sub c
    adc a
    ldh [$ffa1], a
    inc c
    sbc a
    jp hl


    sbc d
    db $e4
    ld h, e
    ld a, a
    sub d
    rst RST_28
    ld h, e
    di
    ld a, a
    sub l
    ld a, [$7fe6]
    sub [hl]
    ld hl, sp+$16
    sub c
    ld sp, hl
    db $e4
    ld a, a
    sub l
    di
    adc a
    db $e3
    sub d
    ld sp, hl
    rst RST_30
    sbc h
    sub d
    and c
    dec c
    ld hl, sp-$1f
    rla
    push hl
    ld a, a
    db $f4
    ldh [c], a
    ld h, b
    and c
    rst RST_38
    ret nz

    cp b
    cp h
    and h
    and $7f
    jp hl


    ld hl, sp-$66
    db $fd
    ld h, b
    and c
    dec c
    sbc l
    db $fc
    ld hl, sp+$1a
    sbc d
    pop hl
    ld d, $7f
    sub d
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    ld c, d
    xor a
    cp b
    ret nc

    rst RST_10
    and h
    ld h, b
    and c
    dec c
    ret nc

    rst RST_10
    and h
    and $7f
    sub e
    ldh [c], a
    adc a
    db $e3
    sub d
    ld sp, hl
    ld a, a
    sbc c
    sbc h
    sub a
    ld [$9a0d], a
    sbc d
    sub [hl]
    rst RST_30
    ld h, b
    db $e4
    ld a, a
    sub c
    rst RST_28
    ld hl, sp+$7f
    ldh a, [$ff94]
    push hl
    sub d
    and c
    rst RST_38
    sub l
    ld a, [$7fe9]
    push af
    sub e
    inc e
    db $fd
    ld h, b
    and c
    dec c
    add $ba
    add $ba
    sbc h
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    inc e
    adc [hl]
    sub e
    sbc h
    adc h
    ld hl, sp-$72
    sub e
    sub a
    db $fd
    jp hl


    ld a, a
    jp nc, $c0a4

    and h
    ld h, b
    and c
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$d27f], a
    and h
    ret nz

    and h
    or b
    dec c
    ldh [c], a
    sub [hl]
    sub e
    ldh [c], a
    di
    ld hl, sp-$16
    ld a, a
    push hl
    sub d
    rst RST_30
    sbc h
    sub d
    and c
    inc c
    sub l
    ld a, [$7fea]
    sbc l
    ld l, d
    rst RST_30
    sbc h
    sub d
    ld a, a
    push af
    sub e
    inc e
    db $fd
    or b
    dec c
    di
    adc a
    db $e3
    ld a, a
    sbc h
    sub c
    db $fc
    sbc [hl]
    ld h, b
    push hl
    and c
    rst RST_38
    sbc $bc
    or [hl]
    ld a, [hl-]
    and l
    ld l, l
    or c
    and h
    dec a
    ld a, a
    ld d, $fd
    ld l, d
    ld a, [$df8a]
    db $e4
    dec c
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    ld a, a
    ld e, [hl]
    cp l
    ret nz

    and h
    ld h, b
    and c
    inc c
    call z, $c4af
    ld c, [hl]
    and h
    reti


    ld [$9d7f], a
    sub a
    ld a, a
    db $e4
    sub d
    sub e
    xor $64
    ld h, e
    ld [$92e5], a
    ld d, $7f
    sbc [hl]
    db $fd
    sbc h
    adc l
    jp hl


    ld a, a
    sub [hl]
    ldh [c], a
    db $f4
    sbc b
    or b
    dec c
    ldh a, [$ffe3]
    sub d
    ld sp, hl
    db $e4
    ld a, a
    sub d
    ldh [c], a
    jp hl


    rst RST_28
    and $96
    dec c
    add sp, -$71
    pop hl
    adc l
    sub e
    sbc h
    db $e3
    sbc h
    rst RST_28
    sub e
    and c
    rst RST_38
    sbc a
    db $e4
    db $ed
    ld a, a
    ld h, e
    ld sp, hl
    ldh [$fff2], a
    jp hl


    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    ld l, e
    sbc b
    db $e4
    di
    sbc h
    push hl
    sub d
    and c
    dec c
    sbc l
    ld sp, hl
    db $e4
    ld a, a
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld d, $7f
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $9d
    rst RST_28
    push hl
    sub d
    ld a, a
    or h
    and h
    cp l
    and c
    dec c
    ld a, a
    sbc d
    jp hl


    rst RST_28
    sub h
    ld a, a
    call nz, $afd7
    cp b
    ld d, $7f
    ld l, h
    ldh [c], a
    sub [hl]
    adc a
    db $e3
    dec c
    ld a, a
    sbc a
    jp hl


    ld b, h
    or c
    ld [$917f], a
    sub [hl]
    push hl
    sbc b
    push hl
    adc a
    db $e3
    dec c
    ld a, a
    sbc h
    rst RST_28
    adc a
    ldh [$fffd], a
    ld h, b
    and c
    rst RST_18
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
    sbc $b4
    and h
    cp l
    ld a, a
    ld h, h
    sbc d
    db $ed
    ld a, a
    sub d
    sub a
    ldh [$ff92], a
    db $fd
    ld h, b
    adc e
    rst RST_18
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$9c7f], a
    ld l, d
    rst RST_30
    sbc b
    ld a, a
    sub c
    adc a
    sbc c
    and $0d
    db $e4
    rst RST_30
    ld a, [$92e3]
    ldh [rNR21], a
    ld a, a
    db $fc
    rst RST_30
    adc a
    db $e3
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $b4
    and h
    cp l
    ld a, a
    ld h, h
    sub e
    sub [hl]
    sbc h
    db $e3
    ld sp, hl
    ld e, $a1
    dec c
    ld a, a
    sbc a
    db $e4
    or b
    ld a, a
    ldh a, [$ffe3]
    ldh a, [$fffb]
    or $a1
    dec c
    ld a, a
    sbc d
    sbc d
    ld d, $7f
    sbc a
    jp hl


    ld l, d
    sbc h
    adc [hl]
    ld h, b
    ld e, $8a
    rst RST_18
    rst RST_38
    xor $96
    and $7f
    ldh [c], a
    sub [hl]
    sub d
    ldh a, [$ffe1]
    ld d, $7f
    push hl
    sub d
    jp hl


    ld h, e
    dec c
    db $e4
    ld sp, hl
    db $eb
    ldh [c], a
    or $93
    ld [$e57f], a
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    sub d
    sub a
    sbc e
    sub a
    or b
    ld a, a
    sub a
    sbc b
    db $e4
    ld a, a
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$190d], a
    db $fd
    sub a
    or $98
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $9c
    adc [hl]
    sub e
    pop hl
    sbc h
    ldh [rNR34], a
    adc d
    rst RST_18
    inc c
    ret nz

    cp b
    cp h
    and h
    ld [$ea7f], a
    sbc h
    ld hl, sp+$60
    sbc h
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    or a
    or a
    and h
    xor a
    adc d
    adc d
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$c07f], a
    cp b
    cp h
    and h
    or b
    ld a, a
    db $e4
    ldh a, [c]
    db $e3
    dec c
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $b4
    and h
    cp l
    ld a, a
    ldh [c], a
    sub d
    ldh [rNR34], a
    adc d
    rst RST_18
    rst RST_38
    sub l
    ld a, [$7fea]
    ld e, e
    cp l
    call nz, $b0d9
    ld a, a
    ldh [c], a
    sub [hl]
    adc a
    ldh [$ffa1], a
    rst RST_38
    rst RST_28
    ld h, b
    ld a, a
    ld h, e
    db $fd
    pop hl
    or b
    ld a, a
    sbc d
    sub e
    sub [hl]
    db $fd
    sbc h
    push hl
    sbc b
    db $e3
    di
    dec c
    sub d
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    ld h, e
    db $fd
    pop hl
    jp hl


    ld a, a
    sbc d
    sub e
    sub [hl]
    db $fd
    and $ea
    ld a, a
    sub c
    ldh [$fff7], a
    sbc h
    sub d
    dec c
    ld h, e
    db $fd
    pop hl
    or b
    ld a, a
    ldh [c], a
    sub [hl]
    db $fc
    push hl
    sbc c
    ld a, [$7f6a]
    sub d
    sbc c
    push hl
    sub d
    and c
    rst RST_38
    dec c
    ld a, a
    ld a, a
    and l
    and l
    and l
    add hl, sp
    and h
    pop de
    ld a, a
    or l
    and h
    ld c, d
    and h
    and l
    and l
    and l
    rst RST_38
    push hl
    and $16
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
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
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$f67f], a
    ei
    sbc d
    db $fd
    ld h, e
    sbc b
    ld a, [$a1e0]
    dec c
    ld h, b
    ld d, $7f
    sub e
    sbc c
    db $e4
    rst RST_30
    dec e
    and $7f
    sbc d
    sub e
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $91
    ld hl, sp+$16
    db $e4
    sub e
    and c
    dec c
    ld a, a
    ld h, e
    di
    ld a, a
    sub d
    rst RST_28
    jp hl


    db $e4
    sbc d
    ei
    ld a, a
    rst RST_28
    and $91
    adc a
    db $e3
    dec c
    ld a, a
    sub d
    ld sp, hl
    db $fd
    ld h, b
    and c
    rst RST_18
    rst RST_38
    sub c
    ld a, [$e3ea]
    ldh [$ff7f], a
    or c
    ld e, d
    and h
    call nz, Call_014_7fe9
    rst RST_28
    sub h
    ld h, b
    and c
    dec c
    push hl
    ldh [c], a
    sub [hl]
    sbc h
    jp hl


    ld a, a
    db $fc
    ld d, $f4
    ld h, b
    and c
    rst RST_38
    sub l
    ld a, [$7fe9]
    or c
    ld e, d
    and h
    call nz, Call_014_7fe9
    rst RST_28
    sub h
    ld h, b
    and c
    rst RST_38
    ld e, h
    jp c, $c4a4

    and $ea
    ld a, a
    sub [hl]
    sbc h
    ld l, l
    db $f4
    jp hl


    ld a, a
    sbc d
    sub e
    sbc d
    sbc b
    ld d, $96
    sub [hl]
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    sbc $64
    sub e
    sbc h
    db $e3
    ld a, a
    sbc c
    sub d
    sub [hl]
    db $fd
    ld h, e
    push hl
    sub d
    ld a, a
    sub l
    rst RST_28
    sub h
    ld d, $7f
    sbc d
    ld a, [$7fb0]
    di
    adc a
    db $e3
    sub d
    ld sp, hl
    db $fd
    ld h, b
    and l
    and l
    and l
    adc e
    rst RST_18
    inc c
    inc e
    pop af
    sub d
    db $fd
    ld [$eb7f], a
    inc e
    adc [hl]
    sub e
    ld l, l
    reti


    or b
    ld a, a
    sub l
    sbc h
    db $e3
    dec c
    sbc c
    sub d
    sbc e
    ldh [c], a
    or b
    ld a, a
    or $fd
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
    ld a, a
    push hl
    ldh [c], a
    sub [hl]
    sbc h
    jp hl


    ld a, a
    db $fc
    ld d, $f4
    ld h, b
    adc d
    dec c
    sub a
    jp hl


    rst RST_20
    sbc c
    ldh [$ff7f], a
    ld c, e
    and h
    reti


    and l
    and l
    and l
    and c
    dec c
    ld [$b0e5], a
    ldh [c], a
    sbc b
    ld a, a
    and $95
    sub d
    and l
    and l
    and l
    and c
    inc c
    sub c
    jp hl


    ld a, a
    sbc l
    ld l, d
    rst RST_30
    sbc h
    sub d
    ld a, a
    sbc [hl]
    sub d
    sub [hl]
    ldh [c], a
    ld d, $0d
    sub l
    di
    sub d
    ld h, b
    sbc e
    ld a, [$a5f9]
    and l
    and l
    and c
    rst RST_38
    or c
    ld e, d
    and h
    call nz, Call_014_7fe9
    ei
    sub e
    sub [hl]
    and $7f
    sub d
    ld sp, hl
    and c
    rst RST_38
    sub l
    ld a, [$7fe9]
    push hl
    rst RST_28
    sub h
    ld d, $7f
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    dec c
    jp nc, $d9a4

    ld c, [hl]
    xor a
    cp b
    cp l
    ld h, b
    and c
    dec c
    db $e3
    ld d, $f0
    ld [$ea7f], a
    sub d
    adc a
    db $e3
    sub d
    ld sp, hl
    sub [hl]
    push hl
    and l
    and l
    and l
    adc e
    rst RST_38
    db $eb
    adc a
    sub [hl]
    sub a
    sub a
    dec e
    ld d, $7f
    sub c
    ld sp, hl
    and c
    dec c
    sub l
    sbc a
    rst RST_30
    sbc b
    ld a, a
    push bc
    or d
    call z, Call_014_7f63
    ldh [c], a
    sbc c
    rst RST_30
    ld a, [$0de0]
    di
    jp hl


    ld h, b
    ei
    sub e
    and c
    rst RST_38
    or c
    ld e, d
    and h
    call nz, $93f6
    jp hl


    ld a, a
    jp nc, $d9a4

    ld c, [hl]
    xor a
    cp b
    cp l
    ld h, b
    and c
    rst RST_38
    push hl
    sub [hl]
    and $ea
    ld a, a
    db $ec
    sub e
    db $e4
    sub e
    db $e4
    ld a, a
    sub d
    pop hl
    rst RST_28
    sub d
    jp hl


    dec c
    sub a
    adc [hl]
    sub e
    ldh a, [$ff6c]
    sub [hl]
    sub d
    ld a, a
    sbc h
    adc h
    sbc h
    db $fd
    ld d, $91
    adc a
    ldh [$ffa1], a
    inc c
    sbc a
    jp hl


    ld a, a
    sbc h
    adc h
    sbc h
    db $fd

jr_014_5108:
    and $ea
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    db $e4
    dec c
    sub l
    ld a, [$7fe9]
    sbc h
    rst RST_30
    push hl
    sub d
    sub l
    db $e4
    sbc d
    ld d, $0d
    cp b
    ret c

    and h
    add $dd
    jr c, jr_014_5108

    db $fd
    jp hl


    rst RST_28
    sub h
    ld h, e
    ld a, a
    push hl
    rst RST_30
    db $fd
    ld h, e
    dec c
    sub e
    ldh [c], a
    adc a
    db $e3
    sub d
    ld sp, hl
    and l
    and l
    and l
    and c
    rst RST_38
    sub l
    ld a, [$e391]
    and $7f
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ldh [c], a
    sbc b
    sub h
    jp hl


    ld a, a
    sub e
    sub h
    and $ea
    ld a, a
    sbc h
    adc h
    sbc h
    db $fd
    ldh [$ffe3], a
    ld d, $0d
    sub l
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    and l
    and l
    and l
    push hl
    db $fd
    db $e4
    adc d
    adc d
    dec c
    cp h
    and h
    add hl, sp
    reti


    db $e4
    ld a, a
    sub e
    ldh [c], a
    adc a
    db $e3
    sub d
    ldh [$ff7f], a
    sub l
    db $e4
    sbc d
    ld d, $0d
    sbc h
    adc h
    sbc h
    db $fd
    jp hl


    push hl
    sub [hl]
    and $7f
    sub d
    ld sp, hl
    ld h, e
    ld [$92e5], a
    sub [hl]
    adc d
    inc c
    sub d
    adc a
    ldh [$ff92], a
    ld a, a
    sbc d
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    ld [$e57f], a
    and $f3
    jp hl


    dec c
    push hl
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
    add d
    rst RST_28
    sub d
    jp hl


    ld a, a
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
    sub l
    db $e4
    sbc d
    ld [$607f], a
    ld a, [$e9e5]
    ld h, b
    ei
    sub e
    and l
    and l
    and l
    and c
    dec c
    sub a
    and $96
    sub [hl]
    ld sp, hl
    and l
    and l
    and l
    and c
    inc c
    sbc h
    adc h
    sbc h
    db $fd
    ldh [$ffe3], a
    or b
    ld a, a
    sbc h
    rst RST_30
    ld l, l
    ld a, [$0d6a]
    push hl
    and $96
    ld a, a
    db $fc
    sub [hl]
    ld sp, hl
    sub [hl]
    di
    ld a, a
    sbc h
    ld a, [$92e5]
    adc d
    rst RST_38
    inc e
    adc [hl]
    sub e
    xor $93
    db $e3
    sub d
    sub a
    adc [hl]
    sub e
    sbc h
    adc h
    ld h, e
    sub c
    ld sp, hl
    dec c
    ld c, e
    add $a4
    and l
    ret nz

    reti


    xor a
    cp a
    sub [hl]
    rst RST_30
    jp hl


    ld a, a
    db $e3
    ld d, $f0
    ld h, b
    and c
    inc c
    sbc $b4
    and h
    cp l
    and l
    and l
    and l
    and c
    inc c
    ld a, a
    ret


    reti


    ld b, e
    xor b
    xor a
    cp b
    sbc b
    ldh [c], a
    sbc d
    sub e
    inc e
    adc [hl]
    sub e
    ld [$7f0d], a
    db $e4
    sub l
    ld hl, sp-$17
    ld a, a
    pop af
    sub [hl]
    sub d
    and $91
    ld sp, hl
    dec c
    ld a, a
    or c
    or d
    cp l
    cp b
    ret c

    and h
    pop de
    db $e3
    db $fd
    and $7f
    sub [hl]
    push hl
    ld hl, sp-$17
    dec c
    ld a, a
    sub [hl]
    add sp, -$50
    ld a, a
    db $e4
    sub e
    sbc h
    sbc h
    db $e3
    sub d
    ld sp, hl
    or $93
    ld h, b
    and c
    inc c
    ld a, a
    sbc d
    ld a, [$7fea]
    ldh [$ff9c], a
    sub [hl]
    push hl
    ld a, a
    sbc l
    inc e
    sub [hl]
    rst RST_30
    jp hl


    dec c
    ld a, a
    inc e
    adc [hl]
    sub e
    xor $93
    ld h, b
    and c
    inc c
    ld a, a
    sub a
    ld h, d
    sub [hl]
    ld a, [$92e5]
    or $93
    and $7f
    or $e5
    sub [hl]
    dec c
    ld a, a
    call nz, $afd7
    cp b
    sub [hl]
    rst RST_30
    ld a, a
    or c
    or d
    cp l
    cp b
    ret c

    and h
    pop de
    db $e3
    db $fd
    db $ed
    ld a, a
    and $f3
    ldh [c], a
    ld d, $7f
    ld [$6a9a], a
    ld a, [$92e3]
    ld sp, hl
    and c
    inc c
    ld a, a
    db $e4
    ld hl, sp-$6e
    sbc a
    rla
    ld a, a
    sbc h
    rst RST_30
    sbc [hl]
    rst RST_28
    ld h, e
    and l
    and l
    and l
    and c
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
    ld a, a
    ld a, a
    ld c, e
    add $a4
    rst RST_18
    rst RST_38
    sub [hl]
    ld l, l
    and $ea
    ld a, a
    add d
    rst RST_28
    sub d
    jp hl


    ld a, a
    sbc h
    adc h
    sbc h
    db $fd
    ld d, $0d
    sub [hl]
    dec de
    rst RST_30
    ld a, [$92e3]
    ld sp, hl
    and l
    and l
    and l
    and c
    inc c
    sub l
    sbc a
    rst RST_30
    sbc b
    ld a, a
    rst RST_08
    db $db
    db $dd
    jp hl


    ld a, a
    sub [hl]
    rra
    sbc b
    jp hl


    dec c
    sbc h
    adc h
    sbc h
    db $fd
    ld h, b
    ei
    sub e
    and l
    and l
    and l
    and c
    inc c
    pop de
    call z, $cccc
    and l
    and l
    and l
    and c
    dec c
    push hl
    db $fd
    ld h, b
    sub [hl]
    ld a, a
    sub a
    adc [hl]
    sub e
    ldh a, [$ff91]
    ld sp, hl
    push hl
    and l
    and l
    and l
    and c
    inc c
    sbc d
    ld a, [$7fea]
    sbc h
    ld hl, sp-$1e
    ldh [$fffd], a
    db $e3
    sub d
    jp hl


    dec c
    cp e
    ld [hl], $e4
    sub d
    sub e
    di
    jp hl


    ld h, b
    push hl
    and c
    rst RST_38
    sbc $81
    add b
    add e
    rst RST_18
    and $ea
    ld a, a
    ld b, b
    db $dd
    and l
    cp l
    db $d3
    and h
    db $dd
    ld d, $0d
    sbc l
    db $fd
    ld h, e
    sub d
    ld sp, hl
    and c
    dec c
    sub c
    sub d
    ldh [c], a
    ld [$927f], a
    ldh [c], a
    di
    ld a, a
    sub [hl]
    sub h
    ld hl, sp+$16
    ld a, a
    sub l
    sbc a
    sub d
    and c
    rst RST_38
    sbc $81
    add b
    add c
    rst RST_18
    dec c
    sub l
    ld a, [$7fe9]
    db $ed
    db $f4
    jp hl


    ld a, a
    ld b, h
    or c
    ld h, b
    adc d
    rst RST_38
    sbc $81
    add b
    add d
    rst RST_18
    and $7f
    sbc l
    db $fd
    ld h, e
    sub d
    ld sp, hl
    jp hl


    ld d, $0d
    ld c, d
    and h
    cp e
    and l
    res 5, l
    and h
    call nz, $927f
    ld d, $92
    jp hl


    ld a, a
    db $eb
    db $e4
    dec c
    ld h, b
    adc a
    ldh [$fff7], a
    push hl
    and c
    inc c
    sub [hl]
    jp hl


    inc e
    adc [hl]
    jp hl


    ld a, a
    sbc d
    sub e
    sbc l
    sub d
    ld [$eb7f], a
    ld h, h
    sub d
    adc d
    rst RST_38
    sbc $91
    ld sp, hl
    sbc b
    ld a, a
    sbc d
    sub e
    ld d, $92
    rst RST_18
    db $e4
    ld a, a
    sub c
    ld h, b
    push hl
    ld d, $0d
    ldh [c], a
    sub d
    db $e3
    sub d
    ld sp, hl
    xor $64
    ld h, b
    and c
    dec c
    sub c
    jp hl


    ld a, a
    ld l, l
    db $dd
    jp $a4a8


    add $16
    ld a, a
    rst RST_08
    db $db
    db $dd
    sub [hl]
    rst RST_30
    dec c
    ld h, h
    sbc b
    ld hl, sp-$1e
    and l
    and l
    and l
    ld h, b
    adc a
    db $e3
    adc e
    dec c
    and l
    and l
    and l
    rst RST_28
    sbc e
    sub [hl]
    and c
    inc c
    sub l
    ld a, [$7f16]
    sbc e
    ld d, $9c
    db $e3
    sub d
    ld sp, hl
    ld a, a
    sub [hl]
    add sp, -$0d
    dec c
    ld l, l
    db $dd
    jp $a4a8


    add $16
    ld a, a
    sbc l
    ld h, e
    and $7f
    ldh [c], a
    sub [hl]
    adc a
    db $e3
    dec c
    sbc h
    rst RST_28
    adc a
    ldh [$ffe9], a
    ld h, e
    ld [$92e5], a
    ld h, b
    ei
    sub e
    sub [hl]
    and l
    and l
    and l
    adc d
    rst RST_38
    and l
    and l
    and l
    db $e4
    sub d
    sub e
    sbc d
    db $e4
    ld [$a5a5], a
    and l
    and c
    dec c
    add c
    add c
    add d
    add b
    add b
    add b
    ld b, h
    reti


    ld [$9b7f], a
    ld d, $9c
    db $e3
    di
    ld a, a
    pop de
    ld b, b
    db $e4
    sub d
    sub e
    sbc d
    db $e4
    and $7f
    push hl
    ld sp, hl
    and l
    and l
    and l
    and c
    inc c
    sub d
    adc a
    ldh [$ff92], a
    ld a, a
    sbc d
    ld a, [$f796]
    ld a, a
    ld h, h
    sub e
    sbc h
    ldh [$fff7], a
    dec c
    sub d
    sub d
    jp hl


    ld h, b
    ei
    sub e
    and l
    and l
    and l
    and c
    dec c
    jp hl


    sbc d
    ld hl, sp+$1c
    sub [hl]
    db $fd
    di
    ld a, a
    sbc l
    sbc b
    push hl
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    sbc b
    and $1c
    adc l
    sub e
    ld a, a
    ld h, h
    sbc d
    ld h, e
    ld h, e
    di
    ld a, a
    ldh [c], a
    sub [hl]
    sub h
    ld sp, hl
    dec c
    sub l
    sub [hl]
    add sp, $60
    and c
    rst RST_38
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
    ld h, e
    db $fd
    pop hl
    or b
    ld a, a
    di
    adc a
    db $e3
    sub d
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    ld c, [hl]
    db $dd
    ld b, h
    or e
    xor d
    reti


    ld d, $7f
    rst RST_20
    sbc l
    ldh a, [$ff60]
    sbc h
    ldh [$ff0d], a
    pop hl
    adc [hl]
    sub e
    ld l, [hl]
    or b
    ld a, a
    sbc h
    rst RST_30
    ld l, l
    ld a, [$7f6a]
    push hl
    and $96
    dec c
    db $fc
    sub [hl]
    ld sp, hl
    sub [hl]
    di
    ld a, a
    sbc h
    ld a, [$92e5]
    and l
    and l
    and l
    and c
    rst RST_38
    sub l
    ld a, [$7fe9]
    db $ed
    db $f4
    ld h, b
    and c
    dec c
    sub c
    sub d
    sub [hl]
    db $fc
    rst RST_30
    dec e
    ld a, a
    sub a
    ldh [$ffe5], a
    sub d
    add sp, -$5f
    rst RST_38
    ld e, [hl]
    and h
    or [hl]
    and h
    ld h, e
    ld a, a
    sub [hl]
    pop hl
    db $e4
    adc a
    ldh [$ff7f], a
    db $ed
    rst RST_10
    inc a
    or [hl]
    jp hl


    dec c
    sub c
    ldh [$ffef], a
    ld h, b
    and c
    inc c
    sub c
    jp hl


    ld a, a
    or $f9
    ld [$e27f], a
    sub d
    db $e3
    sub d
    ldh [$ffe5], a
    and l
    and l
    and l
    and c
    rst RST_38
    sub l
    db $f4
    inc e
    jp hl


    ld a, a
    or l
    rst RST_08
    and h
    jp c, $e4b2

    ld a, a
    sub d
    adc a
    sbc h
    adc [hl]
    and $0d
    sub e
    ldh [c], a
    adc a
    ldh [$ff7f], a
    sbc h
    adc h
    sbc h
    db $fd
    ld h, b
    and c
    inc c
    sbc a
    sub e
    sub d
    sub h
    ld l, d
    ld a, a
    dec e
    sub d
    ld l, h
    db $fd
    ld a, a
    push hl
    ld d, $92
    sub c
    sub d
    ld h, b
    dec c
    sub l
    db $f4
    inc e
    and $7f
    sub c
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
    sbc d
    ld a, [$f363]
    ld a, a
    sbc h
    adc h
    ld a, [$7fe0]
    or d
    cp l
    ld h, b
    adc a
    ldh [$ffe9], a
    and $8a
    cp l
    call nz, Call_000_3ca4
    and h
    ld d, $7f
    ld e, e
    cp l
    call nz, $e9d9
    ld a, a
    rst RST_28
    db $e4
    db $e4
    sbc h
    db $e3
    ldh [c], a
    sub [hl]
    sub e
    rst RST_28
    ld h, e
    ld [$a5a5], a
    and l
    and c
    rst RST_38
    ld l, [hl]
    ei
    ld l, [hl]
    ei
    jp hl


    ld a, a
    or [hl]
    and h
    jp Jump_014_60dd


    and c
    rst RST_38
    cp d
    and h
    call nz, $a160
    dec c
    db $ec
    sbc h
    rla
    push hl
    sbc d
    db $e4
    and $7f
    cp l
    call nz, Call_000_3ca4
    and h
    ld [$e37f], a
    or b
    dec c
    db $ec
    ld a, [$92e3]
    push hl
    sub d
    or $93
    ld h, b
    and c
    inc c
    ldh [$ff9c], a
    sub [hl]
    ld a, a
    ld e, [hl]
    cp c
    xor a
    call nz, Call_014_7fe6
    sub c
    ld a, [$0db0]
    sub d
    ld a, [$92e3]
    ldh [$ffea], a
    dec e
    ld h, b
    ld d, $a5
    and l
    and l
    and c
    rst RST_38
    or $6b
    jp hl


    ld a, a
    cp d
    and h
    call nz, $a160
    rst RST_38
    add e
    adc b
    cp l
    ld a, l
    cp h
    xor h
    reti


    ld h, b
    and c
    dec c
    and l
    and l
    and l
    ldh [$ffef], a
    ld d, $7f
    ld [$8f92], a
    db $e3
    sub d
    push hl
    sub d
    and c
    inc c
    ldh [$ffef], a
    or b
    ld a, a
    sub d
    ld a, [$99e5]
    ld a, [$7f6a]
    db $f4
    sbc b
    and $0d
    ldh [$ffe0], a
    push hl
    sub d
    rra
    adc d
    rst RST_38
    add e
    adc b
    cp l
    ld a, l
    cp h
    xor h
    reti


    ld h, b
    and c
    dec c
    db $f4
    sbc l
    sub d
    sbc c
    ld h, h
    ld a, a
    db $f4
    sbc b
    and $7f
    ldh [$ffe2], a
    db $fd
    ld h, b
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
    ld h, b
    and c
    dec c
    ld h, e
    db $fd
    pop hl
    and l
    and l
    and l
    ld a, a
    sub a
    ld a, [$e5e3]
    sub d
    sub [hl]
    push hl
    adc e
    rst RST_38
    db $ec
    ld h, b
    db $fd
    ld [$977f], a
    adc [hl]
    sub e
    ld h, b
    sub d
    and $7f
    sub l
    sbc e
    rst RST_28
    adc a
    db $e3
    dec c
    sub d
    ld sp, hl
    ld [$e91d], a
    ld a, a
    db $eb
    sub a
    ld h, b
    sbc h
    ld h, b
    and c
    rst RST_38
    db $ec
    ldh [c], a
    sub e
    jp hl


    ld a, a
    ld [$609a], a
    and c
    rst RST_38
    push hl
    ld sp, hl
    xor $64
    and l
    and l
    and l
    and c
    inc c
    sbc d
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    ld d, $7f
    rst RST_08
    db $db
    db $dd
    jp hl


    dec c
    sub [hl]
    ldh [$ff93], a
    ld h, e
    db $e4
    ld a, a
    sub d
    db $fc
    ld a, [$92e3]
    ld sp, hl
    dec c
    ld b, b
    add $a4
    and l
    ld l, l
    db $dd
    jp $a4a8


    add $f7
    sbc h
    sub d
    and l
    and l
    and l
    and c
    inc c
    rst RST_08
    db $db
    db $dd
    ld d, $7f
    sub d
    sub [hl]
    and $7f
    sub [hl]
    ld a, [$0db0]
    ldh [$ff92], a
    sbc [hl]
    ldh [c], a
    and $9c
    db $e3
    sub d
    ld sp, hl
    sub [hl]
    ld d, $7f
    db $fc
    sub [hl]
    ld sp, hl
    and c
    rst RST_38
    cp e
    or d
    ld b, b
    and h
    ld d, $7f
    ld [$8f92], a
    db $e3
    sub d
    ldh [$ff7f], a
    ld c, e
    db $dd
    ld h, b
    and c
    dec c
    sub d
    adc a
    db $e3
    sub a
    di
    ld a, a
    jp hl


    sbc d
    adc a
    db $e3
    sub d
    push hl
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    ld h, e
    db $fd
    sub a
    cp l
    ret nz

    db $dd
    ld b, h
    ld d, $7f
    db $fc
    ld a, [$92e3]
    ld sp, hl
    and c
    inc c
    and l
    and l
    and l
    cp l
    call nz, Call_000_3ca4
    and h
    ldh a, [c]
    adc d
    dec c
    sbc d
    db $fc
    sbc h
    ldh [$ffe5], a
    adc d
    adc d
    rst RST_38
    ldh [$fffd], a
    sub d
    pop hl
    jp hl


    ld a, a
    ld h, e
    db $fd
    pop hl
    ld h, b
    and c
    rst RST_38
    cp h
    and h
    add hl, sp
    reti


    db $e4
    ld a, a
    ld h, h
    sub e
    sub d
    sub e
    sub [hl]
    db $fd
    sbc c
    sub d
    ld d, $0d
    sub c
    ld sp, hl
    jp hl


    ld h, b
    ei
    sub e
    sub [hl]
    adc e
    rst RST_38
    rst RST_28
    db $fc
    ld hl, sp+$16
    ld a, a
    sub c
    sub [hl]
    ld sp, hl
    sbc b
    push hl
    adc a
    ldh [$ffa1], a
    rst RST_38
    sub l
    ld hl, sp-$20
    ldh [$fff0], a
    sbc h
    sub a
    jp hl


    ld a, a
    push bc
    or d
    call z, $a160
    rst RST_38
    pop hl
    sub d
    sbc e
    push hl
    ld a, a
    db $f4
    sub d
    ld l, d
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    dec c
    ld h, b
    ld d, $7f
    di
    adc a
    db $e3
    sub d
    ld a, [$7f6a]
    push hl
    and $96
    jp hl


    ld a, a
    db $f4
    sbc b
    and $e0
    ldh [c], a
    sub [hl]
    di
    sbc h
    ld a, [$92e5]
    and c
    rst RST_38
    cp h
    and h
    add hl, sp
    reti


    ld [$f57f], a
    sbc l
    ld hl, sp-$17
    ld a, a
    xor $96
    and $0d
    sbc d
    db $fd
    push hl
    ld a, a
    sbc d
    db $e4
    di
    ld a, a
    sbc h
    db $e3
    sub d
    ldh [$ffe9], a
    sub [hl]
    and l
    and l
    and l
    and c
    inc c
    sbc d
    ld a, [$7ff3]
    rst RST_08
    db $db
    db $dd
    jp hl


    ld a, a
    ldh a, [c]
    sub d
    ld a, [$0d92]
    push hl
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
    sub l
    ld a, [$7fe9]
    jp nc, $d9a4

    ld c, [hl]
    xor a
    cp b
    cp l
    or b
    ld a, a
    sub c
    sbc c
    ld sp, hl
    dec c
    ldh [$fff2], a
    jp hl


    ld a, a
    or [hl]
    scf
    ld h, b
    and c
    rst RST_38
    sbc d
    jp hl


    ld a, a
    ldh [$ffef], a
    ld [$837f], a
    adc b
    cp l
    ld a, l
    cp h
    xor h
    reti


    and $0d
    sub d
    ld a, [$faf7]
    ld sp, hl
    jp hl


    or b
    ld a, a
    rst RST_28
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_014_60dd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_014_7f63:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_014_7faf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_014_7fe6:
    nop
    nop
    nop

Call_014_7fe9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
