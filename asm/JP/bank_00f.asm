; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    nop
    ld b, c
    sbc l
    ld b, c
    adc e
    ld b, e
    sbc d
    ld b, e
    ld d, $44
    add hl, hl
    ld b, h
    ld c, d
    ld b, h
    ld a, d
    ld b, h
    and e
    ld b, h
    ret nc

    ld b, h
    and $44
    dec b
    ld b, l
    daa
    ld b, l
    ld [hl], a
    ld b, l
    sbc h
    ld b, l
    or d
    ld b, l
    push hl
    ld b, l
    nop
    ld b, [hl]
    dec d
    ld b, [hl]
    dec [hl]
    ld b, [hl]
    ld c, l
    ld b, [hl]
    add a
    ld b, [hl]
    db $d3
    ld b, [hl]
    ld e, c
    ld b, a
    sbc [hl]
    ld b, a
    db $f4
    ld b, a
    daa
    ld c, c
    ld d, e
    ld c, c
    ld [hl], b
    ld c, c
    sub a
    ld c, c
    scf
    ld c, d
    ld b, a
    ld c, d
    ld h, b
    ld c, d
    adc d
    ld c, d
    xor c
    ld c, d
    jp z, $ec4a

    ld c, d
    ld a, c
    ld c, e
    xor d
    ld c, e
    sub $4b
    db $eb
    ld c, e
    ld d, $4c
    ld h, $4c
    ld d, h
    ld c, h
    cp d
    ld c, h
    call Call_000_054c
    ld c, l
    dec [hl]
    ld c, l
    ccf
    ld c, l
    ld e, a
    ld c, l
    add e
    ld c, l
    dec e
    ld c, [hl]
    ld [hl-], a
    ld c, [hl]
    ld b, h
    ld c, [hl]
    ld e, a
    ld c, [hl]
    ld a, h
    ld c, [hl]
    and [hl]
    ld c, [hl]
    cp [hl]
    ld c, [hl]
    ret


    ld c, [hl]
    jp c, $8e4e

    ld c, a
    or b
    ld c, a
    jp nz, $df4f

    ld c, a
    db $ed
    ld c, a
    inc b
    ld d, b
    dec [hl]
    ld d, b
    ld d, c
    ld d, b
    ld l, a
    ld d, b
    ei
    ld d, b
    dec l
    ld d, c
    ld a, [bc]
    ld d, d
    rrca
    ld d, d
    ld a, a
    ld d, d
    sub e
    ld d, d
    and l
    ld d, d
    ld c, $53
    dec e
    ld d, e
    inc [hl]
    ld d, e
    ld c, b
    ld d, e
    and b
    ld d, e
    xor h
    ld d, e
    cp l
    ld d, e
    inc d
    ld d, h
    ld d, a
    ld d, h
    add [hl]
    ld d, h
    dec de
    ld d, a
    call nc, $f157
    ld d, a
    ldh a, [c]
    ld e, b
    ld h, h
    ld e, c
    sub $59
    inc e
    ld e, d
    dec sp
    ld e, d
    ld [hl], a
    ld e, d
    sub e
    ld e, d
    xor d
    ld e, d
    ld b, h
    ld e, e
    sbc [hl]
    ld e, e
    ld a, [bc]
    ld e, h
    ld e, b
    ld e, h
    cp e
    ld e, h
    ld [hl], $5d
    halt
    ld e, l
    sub a
    ld e, l
    add sp, $5d
    rst RST_38
    ld e, l
    ld [hl], c
    ld e, [hl]
    ret nc

    ld e, [hl]
    dec h
    ld e, a
    ld a, l
    ld e, a
    jp Jump_000_2e5f


    ld h, b
    ld e, c
    ld h, b
    or [hl]
    ld h, b
    dec c
    ld h, c
    ld h, b
    ld h, c
    add $61
    rra
    ld h, d
    and [hl]
    ld h, d
    or $62
    ld hl, $db63
    ld h, h
    ld [de], a
    ld h, [hl]
    add $66
    ld [bc], a
    ld h, a
    add e
    ld h, a
    cp [hl]
    ld h, a
    or [hl]
    reti


    jp $e560


    and c
    dec c
    ld l, e
    adc [hl]
    sub e
    sub a
    jp hl


    ld a, a
    sbc h
    adc [hl]
    sub e
    inc e
    adc [hl]
    sub e
    ld d, $0d
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    sbc $a5
    and l
    and l
    db $ec
    sbc b
    ldh [c], a
    sub e
    ld h, e
    ld a, a
    sub a
    or b
    ld a, a
    sub e
    sbc h
    push hl
    sub e
    and c
    ld a, a
    add sp, -$1e
    ld d, $63
    db $e3
    ld a, a
    ld [$9997], a
    ld d, $7f
    sub c
    ld sp, hl
    and c
    inc c
    ld a, a
    and h
    and h
    and h
    ld a, a
    db $ec
    sbc b
    rst RST_28
    sbc b
    sub h
    db $fd
    jp hl


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
    sbc h
    adc [hl]
    sub e
    inc e
    adc [hl]
    sub e
    rst RST_18
    inc c
    sbc $a5
    and l
    and l
    sbc [hl]
    sub a
    ld a, a
    ldh [$fffd], a
    or b
    ld a, a
    db $e4
    di
    push hl
    sub d
    dec c
    ld a, a
    sbc d
    sub e
    add sp, -$1e
    ld d, $63
    ld sp, hl
    and c
    dec c
    ld a, a
    sbc h
    adc [hl]
    sbc b
    or $98
    db $ec
    sbc h
    db $fd
    ld h, e
    ld a, a
    dec e
    ldh [c], a
    sub e
    ld d, $9d
    ld sp, hl
    and c
    inc c
    ld a, a
    and h
    and h
    and h
    ld a, a
    ld [$9492], a
    db $fd
    jp hl


    ld a, a
    sbc h
    adc [hl]
    sub e
    inc e
    adc [hl]
    sub e
    rst RST_18
    rst RST_38
    sbc d
    ld a, [$eae6]
    ld a, a
    cp b
    cp l
    ret c

    jp hl


    ld a, a
    push hl
    rst RST_28
    sub h
    db $e4
    dec c
    sbc a
    jp hl


    ld a, a
    sbc d
    sub e
    jp hl


    sub e
    ld d, $7f
    sbc h
    ld sp, hl
    sbc h
    db $e3
    sub c
    ld sp, hl
    and c
    dec c
    sub d
    pop hl
    sub l
    sub e
    ld a, a
    or $fd
    ld h, e
    ldh a, [$fff9]
    sub [hl]
    and c
    inc c
    sbc $b5
    call z, $a4da
    reti


    ld a, a
    and h
    and l
    and l
    and l
    and l
    and l
    and c
    rst RST_18
    inc c
    di
    inc e
    ld d, $7f
    sub [hl]
    sbc l
    ld a, [$92e3]
    db $e3
    ld a, a
    sub e
    rst RST_28
    sbc b
    dec c
    or $f0
    db $e4
    ld a, [$92e5]
    and c
    inc c
    sbc $d2
    ld b, h
    jp c, $dd3c

    ld a, a
    and h
    sbc h
    db $fd
    sbc c
    sub d
    ld a, a
    rst RST_08
    set 5, c
    dec c
    ld a, a
    cp b
    cp l
    ret c

    and c
    dec c
    ld a, a
    sub e
    ldh [c], a
    db $e4
    ld a, a
    sub a
    or b
    ld a, a
    sub e
    sbc h
    push hl
    sub e
    and c
    rst RST_18
    inc c
    sub l
    sbc a
    ei
    sbc h
    sub d
    ld a, a
    cp b
    cp l
    ret c

    ld h, b
    and c
    inc c
    sbc $40
    or d
    cp e
    ret


    and h
    reti


    ld a, a
    and h
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
    ld [$91ea], a
    db $fd
    and l
    and l
    and l
    and c
    dec c
    sub l
    ld a, [$7fea]
    sbc d
    ld a, [$7fb0]
    sub e
    ldh [$fffa], a
    ldh [$fffd], a
    ld h, b
    push hl
    adc d
    inc c
    sbc $4a
    or d
    or [hl]
    cp a
    and h
    ld b, b
    ld a, a
    and h
    ldh [$ff6d], a
    sbc l
    rla
    and $7f
    sub a
    sbc b
    dec c
    ld a, a
    cp b
    cp l
    ret c

    and c
    rst RST_18
    inc c
    call z, Call_00f_7fd1
    call z, $a5d1
    and l
    and l
    and c
    inc c
    sbc $b9
    db $d3
    ld e, d
    ld e, d
    or d
    db $dd
    ld a, a
    and h
    sbc d
    sub e
    db $ec
    sbc b
    sub [hl]
    db $fd
    and $0d
    ld a, a
    db $eb
    ldh [$fffa], a
    ld sp, hl
    ld a, a
    cp b
    cp l
    ret c

    and c
    rst RST_18
    inc c
    sub l
    di
    sbc h
    ei
    sbc a
    sub e
    push hl
    ld a, a
    cp b
    cp l
    ret c

    ld h, b
    push hl
    and c
    inc c
    sbc $7d
    db $dd
    ret nz

    cp a
    and h
    ld b, b
    ld a, a
    and h
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
    sbc d
    jp hl


    ld a, a
    cp b
    cp l
    ret c

    or b
    ld a, a
    di
    adc a
    db $e3
    sub d
    ld a, [$0d6a]
    sbc d
    jp hl


    sbc e
    sub a
    ld a, a
    ld l, l
    db $fd
    ld hl, sp-$6a
    di
    ld a, a
    sbc h
    ld a, [$92e5]
    and c
    inc c
    sbc $4b
    cp l
    or l
    ld b, e
    db $dd
    ld a, a
    and h
    ld b, b
    or d
    cp e
    ret


    and h
    reti


    jp hl


    dec c
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
    inc c
    push hl
    and $8a
    dec c
    sbc a
    db $fd
    push hl
    ld a, a
    cp b
    cp l
    ret c

    ld d, $7f
    sub c
    ld sp, hl
    jp hl


    sub [hl]
    adc d
    inc c
    sbc d
    ld a, [$93b0]
    db $e3
    ld l, d
    ld a, a
    sub l
    ld a, [$97e9]
    sub l
    sbc b
    ld [$f30d], a
    ld h, h
    ld sp, hl
    sub [hl]
    di
    ld a, a
    sbc h
    ld a, [$92e5]
    adc d
    adc d
    inc c
    and l
    and l
    and l
    sub c
    sub c
    adc a
    and l
    and l
    and l
    adc d
    dec c
    sub [hl]
    rst RST_30
    ld h, b
    and $7f
    pop hl
    sub [hl]
    rst RST_30
    ld d, $7f
    ld [$f792], a
    push hl
    sub d
    adc d
    inc c
    ld [$98f4], a
    ld a, a
    push hl
    db $fd
    db $e4
    sub [hl]
    sbc h
    push hl
    sub d
    db $e4
    ld a, a
    sub d
    jp hl


    pop hl
    and $0d
    sub [hl]
    sub [hl]
    db $fc
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
    ldh [$fffd], a
    db $e3
    sub d
    inc e
    pop af
    sbc h
    adc [hl]
    jp hl


    ld a, a
    rst RST_28
    sub h
    ld h, b
    and c
    rst RST_38
    sub c
    and l
    and l
    and l
    and l
    and l
    adc a
    adc d
    dec c
    sbc d

Jump_00f_43a4:
    ld h, h
    di
    jp hl


    sbc d
    ei
    jp hl


    ld a, a
    sub a
    sub l
    sbc b
    ld d, $a5
    and l
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    db $fc
    sub [hl]
    sub d
    sbc d
    ei
    jp hl


    ld a, a
    sub l
    db $ec
    sbc b
    ei
    ld h, b
    and c
    dec c
    call z, $a4d9
    jp nz, $a4b9

    or a
    or b
    ld a, a
    db $f4
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    sub l
    ld a, [$7fe9]
    ldh [$fffd], a
    inc e
    adc [hl]
    sub e
    ld l, e
    sub [hl]
    dec c
    and $8d
    sub e
    ld d, $98
    sbc h
    sub a
    jp hl


    db $eb
    jp hl


    dec c
    sbc d
    sub e
    sbc c
    sub d
    jp hl


    or $93
    ld h, b
    and c
    inc c
    and l
    and l
    and l
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
    jp hl


    ld a, a
    di
    db $f4
    ld d, $0d
    ld [$e3fa], a
    sub d
    sbc b
    or $93
    ld h, b
    and c
    rst RST_38
    db $ed
    db $f4
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld [$927f], a
    ldh [$ff8f], a
    db $e3
    ld a, a
    sbc h
    dec e
    sub [hl]
    ld h, b
    and c
    rst RST_38
    sub c
    sub c
    adc a
    and l
    and l
    and l
    and c
    dec c
    ldh a, [c]
    rst RST_28
    sub d
    ld d, $7f
    sbc l
    ld sp, hl
    and c
    dec c
    sub c
    ldh [$ffef], a
    ld d, $7f
    db $fc
    ld a, [$939f]
    and $7f
    sub d
    ldh [$ff92], a
    adc d
    rst RST_38
    sbc d
    sbc d
    ld [$9c7f], a
    ld hl, sp-$1e

jr_00f_4451:
    ldh [$fffd], a
    db $e3
    sub d
    jp hl


    ld a, a
    or l
    call z, $bda8
    jp hl


    or $93
    ld h, b
    and c
    inc c
    ld [hl], $d7
    cp l
    and $7f
    sbc $b4
    and h
    cp l
    and l
    jp z, Jump_00f_43a4

    xor b
    db $dd
    jr c, jr_00f_4451

    db $e4
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    ld e, e
    cp l
    call nz, $b0d9
    ld a, a
    db $e4
    ld hl, sp+$60
    sbc h
    ldh [$ffa1], a
    inc c
    add sp, -$09
    sub d
    or b
    ld a, a
    sbc e
    ld h, b
    ldh a, [c]
    db $e3
    ld a, a
    call nz, $36d8
    and h
    or b
    dec c
    db $eb
    sub d
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    db $f4
    ldh [c], a
    ld [$5b7f], a
    cp l
    call nz, $b0d9
    ld a, a
    di
    adc a
    db $e3
    ldh [$ffe9], a
    sub [hl]
    adc d
    dec c
    sbc l
    adc a
    sub [hl]
    ld hl, sp+$7f
    push af
    ld h, b
    db $fd
    sbc h
    db $e3
    sub d
    ldh [$ff7f], a
    sub l
    ld a, [$0dea]
    db $f4
    rst RST_30
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld b, h
    or c
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
    db $eb
    db $e4
    sub [hl]
    add hl, de
    ld d, $7f
    sub c
    ld sp, hl
    and c
    rst RST_38
    db $eb
    db $e4
    jp hl


    ld a, a
    sbc c
    ld [$ea92], a
    ld a, a
    push hl
    sbc b
    push hl
    adc a
    ldh [$ffa1], a
    dec c
    ld h, b
    ld d, $7f
    push af
    ld h, b
    db $fd
    ld [$977f], a
    db $fd
    di
    ldh [c], a
    ld h, b
    and c
    rst RST_38
    db $f4
    ldh [c], a
    jp hl


    ld a, a
    sbc h
    ldh [$ff92], a
    ld d, $7f
    sbc d
    ei
    ld d, $8f
    db $e3
    sub d
    ld sp, hl

jr_00f_4515:
    and c
    dec c
    xor $96
    and $7f
    db $eb
    db $e4
    ld [$927f], a
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    sbc $b4
    and h
    cp l
    and l
    jp z, Jump_00f_43a4

    xor b
    db $dd
    jr c, jr_00f_4515

    adc e
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    adc d
    adc d
    inc c
    sbc a
    sub e
    ld h, b
    adc d
    inc c
    ldh [$ff9c], a
    sub [hl]
    and $7f
    sub l
    ld a, [$7fe9]
    push hl
    rst RST_28
    sub h
    ld h, b
    adc d
    inc c
    sub d
    rst RST_28
    push hl
    rst RST_30
    ld a, a
    pop af
    add sp, -$50
    ld [$e38f], a
    ld a, a
    sub d
    sub h
    ld sp, hl
    adc d
    inc c
    sub l
    ld a, [$7fea]
    or h
    and h
    cp l
    and l
    jp z, Jump_00f_43a4

    xor b
    db $dd
    jr c, jr_00f_45d5

    adc d
    rst RST_38
    push hl
    ld d, $92
    sub c
    sub d
    ld h, b
    ld a, a
    ldh [c], a
    sub [hl]
    sub d
    sbc d
    db $fd
    ld h, e
    sub d
    ld sp, hl
    dec c
    ldh [c], a
    sbc b
    sub h
    ld h, b
    and c
    dec c
    sub l
    sub l
    sub a
    push hl
    ld a, a
    db $eb
    sub a
    ld h, b
    sbc h
    ld d, $7f
    sub c
    ld sp, hl
    and c
    rst RST_38
    sbc h
    db $fd
    rra
    sub e
    or b
    ld a, a
    sub e
    pop hl
    rst RST_20
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    sbc a
    sbc b
    sbc h
    ld h, b
    push hl
    and c
    rst RST_38
    db $ec
    ldh [c], a
    sub e
    jp hl


    ld a, a
    or a
    xor h
    ld c, e
    ret z

    xor a
    call nz, $a160
    inc c
    sbc d
    jp hl


    push hl
    sub [hl]
    and $7f
    db $e3
    ld d, $96
    ld hl, sp-$1a
    ld a, a
    push hl
    ld sp, hl
    or $93
    push hl
    dec c
    sbc h
    adc [hl]
    ld sp, hl

jr_00f_45d5:
    sub d
    ld d, $7f
    ld [$8f92], a
    db $e3
    sub d
    push hl
    sub d
    ld h, b
    ei
    sub e
    sub [hl]
    adc e
    rst RST_38
    ldh [$ffe5], a
    ld h, b
    and c
    dec c
    sub l
    di
    sub d
    di
    jp hl


    or b
    ld a, a
    jp hl


    sbc [hl]
    ldh [$fff7], a
    dec c
    sub l
    pop hl
    db $e3
    sub a
    sbc a
    sub e
    ld h, b
    push hl
    and c
    rst RST_38
    rst RST_08
    ld b, h
    ld h, b
    and c
    dec c
    sbc d
    sbc d
    sub [hl]
    rst RST_30
    ld [$e57f], a
    and $f3
    ld a, a
    ldh a, [$ff94]
    push hl
    sub d
    and c
    rst RST_38
    or l
    call z, $bda8
    ld h, b
    and c
    dec c
    sub [hl]
    push hl
    ld hl, sp+$7f
    db $ec
    ld sp, hl
    sub d
    db $ed
    db $f4
    jp hl


    or $93
    ld h, e
    ld a, a
    sub [hl]
    ld l, l
    ld d, $0d
    db $fc
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    or [hl]
    rst RST_10
    push hl
    jp hl


    ld h, e
    ld a, a
    db $e4
    adc a
    db $e3
    di
    ld a, a
    db $f4
    sbc b
    and $0d
    ldh [$ffe0], a
    push hl
    sub d
    ld h, b
    ei
    sub e
    and c
    rst RST_38
    sbc h
    db $fd
    rra
    sub e
    or b
    ld a, a
    sub e
    pop hl
    rst RST_20
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    sub l
    sbc a
    rst RST_30
    sbc b
    ld a, a
    sbc a
    sbc b
    sbc h
    ld h, b
    ei
    sub e
    and c
    inc c
    sbc d
    jp hl


    sub l
    db $e4
    sbc d
    ld d, $7f
    or $8f
    ld a, d
    rst RST_30
    sub d
    jp hl


    dec c
    sub d
    adc a
    db $e3
    sub d
    ldh [$ff7f], a
    sbc d
    ei
    sbc h
    db $f4
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    sub e
    adc a
    and l
    and l
    and l
    dec e
    ldh [c], a
    sub e
    ld d, $a5
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
    adc d
    dec c
    cp b
    cp l
    ret c

    ld d, $7f
    sub a
    sub d
    db $e3
    sub a
    ldh [$ffa1], a
    inc c
    sbc d
    ld h, h
    di
    jp hl


    ld a, a
    sbc d
    ei
    ld h, b
    and c
    dec c
    sub [hl]
    adc a
    db $e3
    sub d
    ldh [$ff7f], a
    ret nz

    cp d
    db $e4
    sub d
    sub e
    ld a, a
    sub d
    rst RST_20
    ld h, b
    and c
    dec c
    sub l
    ld a, [$7fe4]
    sub c
    sbc a
    ld l, e
    ldh [rNR21], a
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sbc d
    db $fd
    ld h, h
    ld [$927f], a
    rst RST_28
    rst RST_28
    ld h, e
    jp hl


    or $93
    push hl
    dec c
    sub c
    ldh [$ffef], a
    jp hl


    ld a, a
    sub d
    ldh [$fff0], a
    ld [$e57f], a
    sub d
    and c
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    adc d
    inc c
    sub a
    sub l
    sbc b
    ld d, $7f
    di
    ld h, h
    adc a
    db $e3
    sub a
    ldh [$ffa1], a
    inc c
    db $e4
    push hl
    ld hl, sp-$1a
    ld a, a
    sbc l
    db $fd
    ld h, e
    sub d
    ldh [$ff7f], a
    cp l
    and h
    inc a
    and h
    ld h, b
    and c
    dec c
    sub l
    ld a, [$7fe9]
    call z, $a4a7
    cp l
    call nz, $b7a5
    cp l
    jp hl


    dec c
    sub c
    sub d
    db $e3
    ld h, b
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    inc c
    sub c
    ldh [$ffef], a
    jp hl


    ld a, a
    di
    db $f4
    ld d, $7f
    ld [$e3fa], a
    sub d
    sbc b
    or $93
    ld h, b
    and c
    inc c
    rst RST_28
    sub h
    and $7f
    sbc b
    rst RST_30
    ld l, l
    ld sp, hl
    db $e4
    ld a, a
    sub [hl]
    push hl
    ld hl, sp+$0d
    cp l
    xor a
    or a
    ret c

    sbc h
    ldh [$ffa1], a
    rst RST_38
    sbc $a4
    and h
    and h
    ld a, a
    inc a
    xor [hl]
    and h
    and l
    cp h
    and h
    add hl, sp
    reti


    db $e4
    dec c
    ld a, a
    cp h
    xor l
    ld [hl], $a4
    and l
    cp h
    xor [hl]
    xor a
    cp b
    jp hl


    ld a, a
    sub [hl]
    db $fd
    sbc c
    sub d
    and $0d
    ld a, a
    ldh [c], a
    sub d
    db $e3
    ld a, a
    and h
    and h
    and h
    inc c
    ld a, a
    cp h
    xor l
    ld [hl], $a4
    ld [$bc7f], a
    and h
    add hl, sp
    reti


    jp hl


    ld a, a
    ldh a, [$ff9e]
    jp hl


    dec c
    ld a, a
    sub a
    adc h
    sbc b
    ld h, b
    adc a
    ldh [$ffa1], a
    rst RST_18
    rst RST_38
    sbc $a4
    and h
    and h
    ld a, a
    or c
    reti


    ret nz

    and h
    rst RST_08
    db $dd
    dec c
    ld a, a
    sub a
    adc [hl]
    sub e
    ld [$1c98], a
    sbc c
    db $fd
    and $e2
    sub d
    db $e3
    ld a, a
    and h
    and h
    and h
    inc c
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    jp hl


    ld a, a
    sub a
    adc [hl]
    sub e
    ld hl, sp-$72
    sbc b
    ld h, e
    dec c
    ld a, a
    cp h
    xor l
    ld [hl], $a4
    ld d, $7f
    ld [$e6fd], a
    db $fd
    db $e4
    ld a, a
    db $fc
    sub [hl]
    adc a
    ldh [$ffa1], a
    inc c
    ld a, a
    cp h
    xor l
    ld [hl], $a4
    ld [$997f], a
    sub d
    pop af
    sbc h
    adc [hl]
    and $0d
    ld a, a
    ld [$8f92], a
    ldh [$ffa1], a
    rst RST_18
    rst RST_38
    db $fd
    adc a
    adc e
    dec c
    sbc d
    ld a, [$7fea]
    db $e3
    ld d, $f0
    jp hl


    ld a, a
    or $93
    ld h, b
    rra
    adc d
    inc c
    sbc $b4
    and h
    cp l
    dec c
    ld a, a
    sub l
    rst RST_28
    sub h
    and $7f
    ldh [$ffe9], a
    ldh a, [rNR21]
    sub c
    ld sp, hl
    and c
    inc c
    ld a, a
    sub c
    ld sp, hl
    ld a, a
    db $ec
    db $e4
    adc a
    ldh [$ff95], a
    db $fd
    push hl
    or b
    dec c
    ld a, a
    sbc e
    rst RST_30
    adc a
    db $e3
    sub a
    db $e3
    ld a, a
    xor $9c
    sub d
    and c
    dec c
    ld a, a
    rst RST_28
    sub c
    ld a, a
    pop hl
    adc [hl]
    adc a
    db $e4
    sbc h
    ldh [$ff7f], a
    push af
    sub e
    sub [hl]
    sub d
    ld h, b
    push hl
    and c
    inc c
    ld a, a
    sub e
    rst RST_28
    sbc b
    sub d
    adc a
    ldh [$fff7], a
    ld a, a
    sub l
    rst RST_28
    sub h
    and $0d
    ld a, a
    sub [hl]
    sbc h
    db $e3
    sub d
    ld sp, hl
    ld a, a
    sub [hl]
    add sp, -$16
    ld a, a
    pop hl
    adc [hl]
    sub e
    sbc c
    sbc h
    and $0d
    ld a, a
    sbc h
    db $e3
    db $f4
    ei
    sub e
    and c
    inc c
    ld a, a
    sbc a
    ld a, [$966a]
    ld hl, sp-$6a
    ld a, a
    sub d
    sub d
    dec c
    ld a, a
    sub [hl]
    add sp, -$0d
    sub e
    sbc c
    and $e5
    ld sp, hl
    ld e, $8a
    inc c
    ld a, a
    ld h, b
    ld d, $7f
    sbc h
    adc a
    ld a, d
    sub d
    sbc l
    ld a, [$7f6a]
    ld h, h
    sub e
    push hl
    ld sp, hl
    sub [hl]
    dec c
    ld a, a
    db $fc
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    ld h, b
    ei
    sub e
    adc e
    inc c
    ld a, a
    sub l
    rst RST_28
    sub h
    ld [$957f], a
    ld a, [$7fe9]
    sub d
    sub e
    db $e4
    sub l
    ld hl, sp-$1a
    dec c
    ld a, a
    sbc l
    ld a, [$926a]
    sub d
    db $fd
    ld h, b
    and c
    inc c
    ld a, a
    sbc d
    db $e4
    db $fc
    adc a
    ldh [$fff7], a
    and l
    and l
    and l
    ld a, a
    ldh [$ff60], a
    ld h, e
    ld [$7f0d], a
    sbc l
    rst RST_28
    push hl
    sub d
    ld e, $8a
    rst RST_18
    inc c
    sbc d
    ld a, [$7fea]
    rst RST_28
    dec e
    sub d
    adc d
    dec c
    sbc d
    db $fd
    push hl
    di
    jp hl


    or b
    ld a, a
    ldh a, [$fff7]
    ld a, [$f7e0]
    ld a, a
    sub l
    ld a, [$0dea]
    push af
    sub e
    sub [hl]
    sub d
    ld [$e4fd], a
    ld a, a
    sub l
    di
    db $fc
    ld a, [$9ce3]
    rst RST_28
    sub e
    and c
    inc c
    sbc d
    ld a, [$7fb0]
    db $eb
    db $e4
    ldh a, [c]
    and $7f
    db $ec
    ld a, [$9e9b]
    push hl
    sub d
    ldh [$fff2], a
    and $64
    sub e
    sbc l
    ld a, [$7f6a]
    sub d
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
    sub l
    sub l
    sub a
    push hl
    ld a, a
    ld l, l
    adc a
    sbc a
    sub e
    jp hl


    rst RST_28
    sub h
    and c
    dec c
    sbc $96
    ld e, $e4
    db $e4
    di
    and $7f
    sbc e
    ld hl, sp-$19
    rst RST_18
    jp hl


    ld a, a
    push hl
    sub [hl]
    jp hl


    dec c
    call c, $bcdd
    and h
    db $dd
    jp hl


    ld a, a
    or $93
    ld h, b
    and c
    rst RST_38
    jp nc, $d9a4

    ld c, [hl]
    xor a
    cp b
    cp l
    ld h, b
    and c
    dec c
    sbc $86
    add d
    add [hl]
    rst RST_18
    db $e4
    ld a, a
    ld l, d
    db $fd
    pop hl
    ld d, $7f
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    sub a
    adc a
    db $e3
    ld d, $7f
    ld [$e38f], a
    sub d
    push hl
    sub d
    ld a, a
    db $ec
    sub e
    db $e4
    sub e
    ld h, b
    and c
    sbc $bd
    ret nz

    db $dd
    or e
    xor a
    ld b, h
    db $ed
    rst RST_18
    ld a, a
    db $e4
    ld h, b
    sbc c
    dec c
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    ld l, e
    db $fd
    sbc [hl]
    db $fd
    ld h, b
    and c
    dec c
    db $e3
    sub d
    add sp, -$6e
    push hl
    ld a, a
    di
    inc e
    ld h, e
    ld a, a
    sub [hl]
    sub [hl]
    ld a, [$92e3]
    ld sp, hl
    and c
    inc c
    sbc $9c
    db $fd
    sub c
    sub d
    push hl
    ld sp, hl
    ld a, a
    cp l
    ret nz

    db $dd
    or e
    xor a
    ld b, h
    db $ed
    inc c
    ld a, a
    db $ec
    inc e
    db $fd
    or b
    ld a, a
    sub l
    sub c
    dec e
    sub [hl]
    ld hl, sp-$64
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    ld a, a
    add d
    add b
    add b
    add b
    add b
    ld b, h
    reti


    db $e4
    ld a, a
    db $ec
    inc e
    db $fd
    or b
    dec c
    ld a, a
    sbc d
    sub e
    sub [hl]
    db $fd
    sbc h
    or $93
    and c
    inc c
    ld a, a
    sub c
    sbc l
    jp hl


    ld a, a
    add b
    inc e
    ld a, a
    ld c, d
    and h
    ld h, e
    ld a, a
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    ld a, a
    sbc c
    sub d
    sbc e
    ldh [c], a
    and $7f
    ldh [c], a
    sub e
    xor $93
    sbc l
    ld a, [$0d6a]
    ld a, a
    sbc d
    sub e
    sub [hl]
    sub d
    sbc l
    ld sp, hl
    sbc d
    db $e4
    and $7f
    push hl
    ld sp, hl
    ld e, $8a
    inc c
    ld a, a
    rst RST_28
    sub c
    ld a, a
    sub l
    ldh [rNR21], a
    sub d
    ld a, a
    sbc h
    db $fd
    sbc h
    db $e3
    sub a
    and $0d
    ld a, a
    sub d
    sbc d
    sub e
    inc e
    adc h
    push hl
    sub d
    sub [hl]
    adc d
    rst RST_18
    rst RST_38
    db $e4
    db $e3
    di
    ld a, a
    ld hl, sp-$71
    ld a, d
    push hl
    ld a, a
    ld l, l
    adc a
    sbc a
    sub e
    ld h, b
    and c
    rst RST_38
    ld l, l
    adc a
    sbc a
    sub e
    jp hl


    ld a, a
    sbc h
    adc l
    sub e
    db $ed
    db $fd
    and $7f
    db $eb
    db $e4
    sub [hl]
    add hl, de
    ld [$f7f0], a
    ld a, [$92e5]
    and c
    rst RST_38
    ld l, l
    adc a
    sbc a
    sub e
    jp hl


    ld a, a
    add hl, de
    db $fd
    sub [hl]
    db $fd
    ld h, b
    and c
    dec c
    ld b, h
    or c
    and $ea
    ld a, a
    sub l
    sub l
    sub a
    sbc b
    db $e3
    ld a, a
    ld hl, sp-$71
    ld a, d
    push hl
    dec c
    ret


    xor a
    or [hl]
    and h
    ld d, $7f
    ldh [c], a
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sub c
    sub [hl]
    push hl
    sub d
    and c
    dec c
    sbc d
    sbc d
    ld [$f47f], a
    ld [$7ff8], a
    sbc h
    db $fd
    sbc h
    and $e5
    adc a
    ldh [$ff0d], a
    sub a
    di
    pop hl
    ld h, e
    and l
    and l
    and l
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    call nz, $36d8
    and h
    or b
    ld a, a
    db $eb
    sub d
    ldh [$ffa1], a
    dec c
    ld b, h
    or c
    ld d, $7f
    sub c
    ldh [c], a
    sbc b
    db $e3
    ld a, a
    sbc d
    sub e
    sub [hl]
    ld d, $7f
    push hl
    sub d
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    ret


    xor a
    or [hl]
    and h
    or b
    ld a, a
    and $17
    ld hl, sp-$64
    ldh a, [c]
    ldh [$ffa1], a
    dec c
    cp d
    db $dd
    adc d
    ld a, a
    cp d
    db $dd
    adc d
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    rst RST_38
    ld b, h
    or c
    ld d, $7f
    sub c
    sub d
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    sbc h
    ldh [c], a
    inc e
    rst RST_30
    sbc h
    sub a
    ld a, a
    db $eb
    db $e4
    ld d, $7f
    ld h, e
    db $e3
    sub a
    db $e3
    inc a
    db $db
    xor a
    db $e4
    ld a, a
    and $f7
    db $fd
    ld h, e
    ld a, a
    sbc d
    sub e
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $f4
    sbc b
    sbc a
    sbc b
    or b
    ld a, a
    sbc h
    db $e3
    sub d
    push hl
    sub d
    dec c
    ld a, a
    sub l
    sub a
    adc h
    sbc b
    sbc e
    rst RST_28
    ld [$e47f], a
    sub l
    sbc e
    push hl
    sub d
    or $93
    and $0d
    ld a, a
    sub d
    db $fc
    ld a, [$95e3]
    ld hl, sp-$11
    sbc l
    and c
    inc c
    ld a, a
    di
    sub e
    sbc h
    db $fc
    sbc c
    ld a, a
    ld a, [de]
    dec de
    sub d
    rst RST_28
    sbc [hl]
    db $fd
    ld d, $0d
    ld a, a
    sub l
    sub [hl]
    sub h
    ld hl, sp-$68
    ld h, b
    sbc e
    sub d
    rst RST_28
    sbc [hl]
    and c
    rst RST_18
    inc c
    sbc e
    db $e3
    ld a, a
    sbc d
    rst RST_28
    adc a
    ldh [$ffa1], a
    dec c
    ld h, h
    sub e
    sbc h
    ldh [$fff7], a
    ld a, a
    sub d
    sub d
    db $fd
    ld h, b
    ei
    sub e
    and l
    and l
    and l
    and c
    rst RST_38
    sbc d
    db $fc
    sbc a
    sub e
    push hl
    ld a, a
    sub [hl]
    sub l
    jp hl


    ld a, a
    sbc h
    ldh [c], a
    inc e
    ld h, b
    ld d, $0d
    xor $9f
    sbc b
    db $e3
    ld a, a
    db $fc
    db $fd
    ld hl, sp-$72
    sbc b
    ld [$e57f], a
    sbc e
    sbc a
    sub e
    ld h, b
    and c
    sub a
    adc a
    db $e4
    ld a, a
    sub l
    ld a, [$f7e5]
    ld a, a
    ldh [$ff95], a
    sbc [hl]
    ld sp, hl
    adc d
    rst RST_38
    and l
    and l
    and l
    ldh [$ffef], a
    ld d, $e5
    sub d
    and c
    dec c
    sbc h
    ldh [c], a
    inc e
    ld [$927f], a
    adc a
    ldh [$ffa1], a
    inc c
    sbc $9f
    db $fd
    push hl
    ld a, a
    sub l
    di
    pop hl
    adc h
    ld [$9c7f], a
    rst RST_28
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
    and l
    and l
    and l
    db $fd
    adc a
    adc e
    dec c
    sbc d
    jp hl


    ld a, a
    or [hl]
    scf
    ld [$917f], a
    db $fc
    push hl
    sub d
    rra
    adc d
    rst RST_38
    sub l
    sub l
    sub a
    push hl
    ld a, a
    cp h
    xor h
    db $dd
    ld b, e
    ret c

    or c
    ld h, b
    and c
    dec c
    push hl
    ld d, $92
    inc e
    sub [hl]
    db $fd
    ld a, a
    ldh a, [$ffe3]
    sub d
    ld sp, hl
    db $e4
    ld a, a
    rst RST_28
    ld l, h
    sbc h
    sbc b
    db $e3
    ldh a, [c]
    ld d, $7f
    sbc b
    rst RST_30
    ldh a, [$ff9f]
    sub e
    ld h, b
    and c
    rst RST_38
    add hl, de
    db $fd
    sub [hl]
    db $fd
    ld h, b
    and c
    dec c
    db $e4
    db $e3
    di
    ld a, a
    db $eb
    ei
    sub d
    and c
    rst RST_38
    ld c, d
    ret nz

    db $dd
    adc d
    adc d
    adc d
    inc c
    sub l
    ld a, [$7fe9]
    ldh [$ff92], a
    ld h, h
    ld d, $7f
    sub a
    and $0d
    sub d
    rst RST_30
    push hl
    sub [hl]
    adc a
    ldh [$ffe9], a
    sub [hl]
    ld a, a
    sbc h
    ldh [c], a
    inc e
    ld [$447f], a
    or c
    or b
    dec c
    sbc h
    ldh a, [c]
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc h
    ldh [c], a
    inc e
    or b
    ld a, a
    ld e, e
    cp l
    call nz, Call_00f_63d9
    ld a, a
    sub e
    adc a
    ldh [$ffa1], a
    inc c
    db $e4
    sbc d
    ei
    ld d, $7f
    sub e
    db $fd
    db $fc
    ld sp, hl
    sbc b
    ld a, a
    pop hl
    adc [hl]
    sub e
    ld h, h
    dec c
    sbc [hl]
    db $fd
    ldh [$ff98], a
    di
    jp hl


    or b
    ld a, a
    db $e4

jr_00f_4c7d:
    ld hl, sp-$1a
    sub a
    ldh [$ff0d], a
    cp b
    ret c

    and h
    add $dd
    jr c, jr_00f_4c7d

    ld d, $7f
    sub d
    pop hl
    ld l, h
    sbc h
    inc e
    adc l
    sub e
    or b
    dec c
    ldh a, [$ffe3]
    sub d
    ldh [$ffe9], a
    ld h, b
    and c
    inc c
    sbc c
    sub d
    sbc e
    ldh [c], a
    and $7f
    ldh [c], a
    sub e

Jump_00f_4ca4:
    xor $93
    sbc e
    ld a, [$7fe0]
    sub l
    ld a, [$0dea]
    ldh [$ff92], a
    xor $9b
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld [$8a8f], a
    dec c
    ld [hl], $d7
    cp l
    and $7f
    db $eb
    db $e4
    sub [hl]
    add hl, de
    ld d, $a5
    and l
    and l
    adc e
    rst RST_38
    sub l
    ld a, [$7fea]
    sbc h
    ldh [c], a
    inc e
    or b
    ld a, a
    push hl
    jr @-$6f

    ldh [$ffa1], a
    dec c
    sbc h
    ldh [c], a
    inc e
    ld [$9f7f], a
    jp hl


    ld l, d
    and $7f
    ldh [$ff95], a
    ld a, [$a1e0]
    inc c
    sbc d
    ld a, [$7f63]
    di
    sub e
    ld a, a
    sub l
    ld a, [$7fe9]
    inc e
    adc h
    rst RST_28
    ld [$630d], a
    sub a
    push hl
    sub d
    ld h, b
    ei
    sub e
    and c
    rst RST_38
    or a
    xor a
    pop bc
    db $dd
    ld h, b
    and c
    dec c
    sub a
    pop hl
    db $fd
    db $e4
    ld a, a
    sbc [hl]
    sub d
    db $e4
    db $fd
    sbc e
    ld a, [$92e3]
    ld sp, hl
    and c
    inc c
    sub c
    jp hl


    ld a, a
    sbc h
    ldh [c], a
    inc e
    ld d, $7f
    ldh [c], a
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    jp hl


    dec c
    ld h, b
    ei
    sub e
    sub [hl]
    and l
    and l
    and l
    adc e
    rst RST_38
    pop hl
    sub d
    sbc e
    push hl
    ld a, a
    ldh [c], a
    ld l, [hl]
    ld h, b
    and c
    rst RST_38
    push hl
    ldh a, [c]
    db $e3
    ldh a, [$ffe0]
    and c
    inc c
    and l
    and l
    and l
    db $dd
    and h
    xor a
    ld a, a
    sub c
    rst RST_28
    sub d
    and l
    and l
    and l
    and c
    dec c
    sbc d
    ld a, [$7fea]
    sbc e
    db $e4
    sub e
    ld h, b
    and c
    rst RST_38
    sbc l
    sbc d
    sbc h
    ld a, a
    push hl
    ldh a, [c]
    db $e3
    ldh a, [$ffe0]
    and c
    dec c
    and l
    and l
    and l
    push hl
    and h
    db $fd
    ld h, b
    adc d
    dec c
    ld h, h
    sub e
    db $f4
    rst RST_30
    ld a, a
    sbc d
    pop af
    rla
    sbc d
    jp hl


    ld a, a
    or $93
    ld h, b
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
    sbc h
    sub [hl]
    sbc h
    ld a, a
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    jp hl


    dec c
    pop hl
    adc l
    sub e
    sbc d
    sbc b
    or b
    ld a, a
    sub a
    sub a
    sub d
    ld a, [$7f1d]
    jp hl


    ld hl, sp-$1a
    add hl, de
    or b
    sbc h
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    inc c
    sbc c
    sub d
    sbc e
    ldh [c], a
    and $7f
    ld a, [$9afd]
    sub e
    sbc e
    ld a, [$7fe0]
    sub c
    push hl
    ldh [$ffea], a
    sbc e
    sub d
    ld l, d
    db $fd
    and $7f
    sub [hl]
    sbc c
    rst RST_30
    ld a, [$a1e0]
    inc c
    ld [$99fd], a
    ldh [c], a
    and $f6
    ld hl, sp+$7f
    sub a
    db $fd
    sbc d
    sbc c
    sub d
    or b
    ld a, a
    sub e
    sbc c
    dec c
    or d
    call nc, $f363
    ld a, a
    cp b
    cp e
    sub d
    ldh a, [c]
    sbc h
    or b
    ld a, a
    ldh [$ff6d], a
    push hl
    sbc b
    db $e3
    ld [$f7e5], a
    push hl
    sbc b
    push hl
    adc a
    ldh [$ffa1], a
    rst RST_38
    call z, $b2d7
    ld e, d
    db $dd
    ld h, b
    and c
    dec c
    sub a
    ld a, [$e692]
    ld a, a
    sub c
    rst RST_30
    adc a
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    sbc h
    ei
    inc e
    and $7f
    di
    or $93
    jp hl


    ldh [c], a
    sub d
    ldh [$ff7f], a
    sbc e
    rst RST_30
    ld h, b
    and c
    rst RST_38
    ldh a, [rNR33]
    sbc e
    sbc h
    jp hl


    or $93
    ld h, b
    and c
    dec c
    push hl
    sub [hl]
    and $7f
    ldh a, [rNR33]
    ld [$ea7f], a
    sub d
    adc a
    db $e3
    sub d
    push hl
    sub d
    and c
    rst RST_38
    cp a
    and h
    cp [hl]
    and h
    inc a
    jp hl


    ld a, a
    cp l
    rst RST_10
    or d
    cp l
    ld h, b
    and c
    dec c
    ld h, b
    ld a, [$e996]
    ld a, a
    ldh [$ff6d], a
    sub [hl]
    sbc c
    jp hl


    or $93
    ld h, b
    and c
    rst RST_38
    sbc h
    adc h
    ld a, [$7fe0]
    jp Jump_00f_4ca4


    reti


    ld h, b
    and c
    dec c
    or $98
    ld a, a
    or a
    xor a
    pop bc
    db $dd
    push hl
    ld h, h
    and $7f
    sub l
    sub d
    db $e3
    sub c
    ld sp, hl
    dec c
    ld a, [de]
    sbc b
    ld a, a
    sub c
    ld hl, sp-$14
    ld a, [$f3e0]
    jp hl


    ld h, b
    and c
    rst RST_38
    or a
    xor a
    pop bc
    db $dd
    ld h, b
    and c
    dec c
    ld l, h
    sub a
    ldh a, [$ffe5]
    xor $64
    ld a, a
    sbc h
    dec e
    sub [hl]
    ld h, b
    and l
    and l
    and l
    and l
    and c
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
    ei
    sub e
    sub [hl]
    ld h, b
    and c
    dec c
    ld b, h
    or c
    ld d, $7f
    add d
    ldh [c], a
    ldh a, [$ff94]
    ld sp, hl
    and c
    rst RST_38
    sub c
    adc a
    ld a, a
    sub c
    ldh [$ffef], a
    ld d, $7f
    db $fc
    ld a, [$939f]
    and $7f
    sub d
    ldh [$ff92], a
    and c
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    adc d
    dec c
    ld c, e
    cp l
    or l
    ld b, e
    db $dd
    ld d, $7f
    sub a
    sub d
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    inc c
    and l
    and l
    and l
    sub c
    adc a
    adc d
    dec c
    sbc d
    ld h, h
    di
    jp hl


    sbc d
    ei
    jp hl


    ld a, a
    sub a
    sub l
    sbc b
    ld h, b
    and c
    inc c
    and l
    and l
    and l
    or l
    jp nc, $d9a4

    sbc h
    db $fd
    ld a, h
    ld h, b
    and c
    dec c
    sbc b
    ei
    sub d
    ld [hl], $b3
    db $dd
    or b
    ld a, a
    sub a
    db $e3
    ld a, a
    push hl
    and $96
    or b
    dec c
    sub l
    sbc h
    sub h
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    sub c
    sub c
    adc a
    and l
    and l
    and l
    and c
    dec c
    sbc e
    db $fd
    ld l, e
    sub [hl]
    jp hl


    or $93
    ld h, b
    and c
    dec c
    ldh a, [$fffd]
    push hl
    ld h, e
    ld a, a
    sub d
    adc a
    sbc h
    adc [hl]
    and $7f
    sub e
    ldh [$ff8f], a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    sbc h
    sub [hl]
    sbc h
    ld a, a
    cp b
    cp l
    ret c

    ld d, $7f
    sub c
    rst RST_28
    ld hl, sp+$0d
    sub a
    sub d
    db $e3
    sub d
    push hl
    sub d
    jp hl


    sub [hl]
    ld a, a
    ld [$978f], a
    ld hl, sp-$64
    ldh [$ff9a], a
    db $e4
    ld [$60ef], a
    ld a, a
    sub l
    di
    sub d
    ld h, b
    sbc [hl]
    push hl
    sub d
    and c
    rst RST_38
    sbc d
    sbc d
    ld [$6d7f], a
    xor a
    ld b, h
    reti


    and h
    pop de
    jp hl


    or $93
    ld h, b
    and c
    dec c
    ld [$a58f], a
    and l
    and l
    adc d
    dec c
    sub l
    db $e4
    sbc d
    ld d, $7f
    add sp, -$1d
    sub d
    ld sp, hl
    and c
    rst RST_38
    add sp, $1a
    sbc d
    pop hl
    jp hl


    ld a, a
    or $9b
    sbc a
    sub e
    push hl
    ld a, a
    ld l, l
    xor a
    ld b, h
    ld h, b
    and c
    rst RST_38
    ld h, e
    db $fd
    sub a
    cp l
    ret nz

    db $dd
    ld b, h
    ld h, b
    and c
    dec c
    ld l, l
    ldh [c], a
    and $7f
    sbc d
    adc a
    ldh [$ff7f], a
    sbc a
    sub e
    sbc h
    adc [hl]
    sbc b
    ld [$e57f], a
    sub d
    and c
    rst RST_38
    sbc b
    ei
    sub d
    ld a, a
    sbc h
    adc [hl]
    ld sp, hl
    sub d
    sub [hl]
    ld l, d
    db $fd
    ld h, b
    and c
    rst RST_38
    push bc
    or d
    call nz, $a4c3
    ld c, h
    reti


    ld h, b
    and c
    dec c
    db $eb
    sub a
    ld h, b
    sbc h
    ld d, $7f
    ldh [c], a
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sub l
    db $e4
    sbc d
    ld h, b
    and c
    dec c
    cp l
    call nc, $d4bd
    db $e4
    ld a, a
    or $98

jr_00f_5012:
    add sp, -$0f
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    sub l
    sbc d
    sbc e
    push hl
    sub d
    ld h, e
    ld a, a
    sbc h
    adc h
    ld l, l
    rst RST_30
    sbc [hl]
    ld sp, hl
    sbc d
    db $e4
    ld [$630d], a
    sub a
    push hl
    sub d

jr_00f_502f:
    ld h, b
    ei
    sub e
    sub [hl]
    and c
    rst RST_38
    db $ec
    ldh [c], a
    sub e
    jp hl


    ld a, a
    add d
    rst RST_28
    sub d
    jr jr_00f_502f

    jp hl


    ld a, a
    sbc h
    ei
    sub d
    dec c
    jp $afa8


    cp h
    xor l
    ld a, l
    and h
    ld e, d
    and h
    ld h, b
    and c
    rst RST_38
    pop bc
    xor [hl]
    cp d
    jp c, $c4a4

    or b
    ld a, a
    sub d
    ld a, [$7ff9]
    ld [$609a], a
    ei
    sub e
    and c
    sub c
    rst RST_28
    sub d
    ld a, a
    sub [hl]
    sub l
    ld hl, sp+$16
    sbc l
    ld sp, hl
    and c
    rst RST_38
    db $e3
    ld d, $f0
    ld h, b
    and c
    dec c
    sub a
    ldh [$ffe5], a
    sub d
    ld a, a
    di
    inc e
    ld h, e
    ld a, a
    sub [hl]
    sub a
    push hl
    jr jr_00f_5012

    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    sbc $bd
    ret nz

    db $dd
    or e
    xor a
    ld b, h
    db $ed
    inc c
    ld a, a
    sbc d
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
    and c
    inc c
    ld a, a
    ld c, e
    xor a
    or [hl]
    and h
    cp l
    sub [hl]
    rst RST_30
    ld a, a
    db $e3
    or b
    ld a, a
    db $eb
    sub [hl]
    push hl
    sub d
    db $e4
    dec c
    ld a, a
    db $ec
    ldh [$fff8], a
    jp hl


    sbc d
    db $e4
    or b
    ld a, a
    db $ec
    inc e
    db $fd
    and $0d
    ld a, a
    ld l, d
    rst RST_30
    sbc l
    rra
    adc d
    inc c
    ld a, a
    ld l, d
    rst RST_30
    sbc e
    ld a, [$98e0]
    push hl
    sub d
    push hl
    rst RST_30
    dec c
    ld a, a
    add d
    add b
    add b
    add b
    add b
    ld b, h
    reti


    ld a, a
    or $9a
    sbc [hl]
    adc d
    inc c
    ld a, a
    db $ed
    db $fd
    inc e
    ld [$977f], a
    adc [hl]
    sub e
    inc e
    adc l
    sub e
    and $9c
    ei
    adc d
    dec c
    ld a, a
    sub d
    sub d
    push hl
    adc d
    rst RST_18
    rst RST_38
    pop hl
    adc [hl]
    adc a
    sbc c
    sub d
    ld a, a
    add d
    cp [hl]
    db $dd
    pop bc
    sbc b
    rst RST_30
    sub d
    jp hl


    dec c
    ld c, [hl]
    and h
    reti


    jp hl


    ld a, a
    sub [hl]
    ldh [$ffe1], a
    jp hl


    ld a, a
    pop bc
    xor [hl]
    cp d
    jp c, $c4a4

    ld h, b
    and c
    sub l
    ld a, [$7fea]
    sub c
    rst RST_28
    sub d
    di
    jp hl


    ld [$977f], a
    rst RST_30
    sub d
    ld h, b
    and c
    rst RST_38
    ld a, l
    db $dd
    ret nz

    cp a
    and h
    ld b, b
    or b
    ld a, a
    sub e
    adc a
    ldh [$ffa1], a
    dec c
    and l
    and l
    and l
    and l
    and l
    and l
    adc d
    inc c
    sub a
    sub a
    ldh a, [c]
    ld d, $7f
    sub c
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    dec c
    sub l
    db $e4
    sbc d
    ld [$927f], a
    sbc h
    sub a
    jp hl


    push hl
    sub d
    rst RST_28
    rst RST_28
    dec c
    ld [$9ce5], a
    ld [$f21c], a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sbc $a5
    and l
    and l
    inc e
    sub [hl]
    db $fd
    db $eb
    adc [hl]
    sub e
    ld h, h
    sub l
    ld hl, sp-$1a
    ld a, a
    db $f4
    ld a, [$7f8a]
    sbc l
    ld l, l
    db $e3
    or b
    ld a, a
    db $f4
    ld hl, sp-$6b
    sub h
    ldh [$fff7], a
    ld a, a
    sbc h
    adc [hl]
    sub e
    sbc d
    ld [$9d7f], a
    ld l, l
    db $e3
    ld a, a
    sbc l
    db $e3
    ld sp, hl
    db $fd
    ld h, b
    adc d
    inc c
    ld a, a
    ldh [c], a
    ldh a, [$ffea]
    ld a, a
    sbc l
    ld l, l
    db $e3
    ld a, a
    or h
    and h
    cp l
    and $0d
    ld a, a
    push hl
    sbc l
    ld hl, sp-$1e
    sbc c
    ld a, [$7f6a]
    sub d
    sub d
    and c
    inc c
    ld a, a
    inc e
    sub [hl]
    db $fd
    db $eb
    adc [hl]
    sub e
    ld d, $7f
    ldh a, [$ffe2]
    sub [hl]
    ld sp, hl
    sbc d
    db $e4
    ld [$7f0d], a
    push hl
    sub d
    sub [hl]
    rst RST_30
    ld a, a
    ld h, b
    sub d
    inc e
    adc [hl]
    sub e
    ld l, h
    ld h, b
    and c
    inc c
    ld a, a
    and l
    and l
    and l
    sub [hl]
    push hl
    sub d
    adc e
    dec c
    ld a, a
    sub c
    sub c
    ld a, a
    sbc a
    jp hl


    sbc d
    db $e4
    push hl
    rst RST_30
    ld a, a
    sbc h
    db $fd
    ld a, d
    sub d
    push hl
    sub d
    and c
    inc c
    ld a, a
    ldh a, [$ffe2]
    sub [hl]
    ld sp, hl
    rst RST_28
    sub h
    and $7f
    pop hl
    adc a
    sbc a
    sbc b
    sbc h
    ld a, a
    sbc h
    db $e3
    dec c
    ld a, a
    sbc h
    rst RST_28
    sub e
    sbc e
    adc d
    rst RST_18
    rst RST_38
    ld b, h
    or c
    ld h, b
    and c
    rst RST_38
    jp nc, $da44

    inc a
    db $dd
    or b
    ld a, a
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sbc h
    ldh [$ffa1], a
    dec c
    and l
    and l
    and l
    and l
    and l
    and l
    adc d
    inc c
    sub l
    db $e4
    sbc d
    ld [$987f], a
    ld sp, hl
    sbc h
    ldh a, [$ffea]
    inc e
    ldh a, [c]
    ldh [$ffa1], a
    dec c
    sub c
    sbc [hl]
    ld d, $7f
    ld e, $fd
    sbc h
    db $fd
    and $7f
    sub e
    sub a
    ld h, e
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    db $f4
    ld d, $e3
    ld a, a
    sbc $93
    adc a
    rst RST_18
    db $e4
    sub d
    sub e
    ld a, a
    sub e
    ldh a, [c]
    sub a
    ld a, [de]
    sub h
    or b
    sub c
    add hl, de
    ld sp, hl
    db $e4
    ld a, a
    sub e
    ld a, [de]
    sub [hl]
    push hl
    sbc b
    push hl
    adc a
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    ld h, h
    sub e
    db $f4
    rst RST_30
    ld a, a
    sub a
    or b
    ld a, a
    sub e
    sbc h
    push hl
    adc a
    ldh [$ff0d], a
    or $93
    ld h, b
    and c
    rst RST_38
    cp h
    db $dd
    ld e, h
    reti


    push hl
    ld a, a
    ldh [c], a
    sbc b
    ld hl, sp-$17
    dec c
    ld l, l
    xor a
    ld b, h
    reti


    and h
    pop de
    ld h, b
    and c
    rst RST_38
    add sp, -$1d
    sub d
    ld sp, hl
    jp hl


    ld h, e
    ld a, a
    push hl
    and $f3
    ld a, a
    ld [$9be5], a
    push hl
    sub d
    and c
    rst RST_38
    or e
    xor a
    ld e, h
    adc d
    dec c
    db $f4
    sbc l
    adc a
    ld a, [hl]
    sub d
    ld a, a
    sbc d
    sub e
    sbc l
    sub d
    jp hl


    ld a, a
    sub [hl]
    sub l
    ld hl, sp+$16
    dec c
    ldh [c], a
    or $98
    ld a, a
    ldh [$ff60], a
    or $8f
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    sbc d
    sbc d
    ld [$9c7f], a

jr_00f_52cd:
    db $fd
    sbc h
    ldh [c], a
    jp hl


    or $93
    ld h, b
    and c
    inc c
    sub [hl]
    jr jr_00f_52cd

    ld a, a
    pop hl
    adc [hl]
    sub e
    ld h, h
    db $eb
    db $fd
    jp hl


    ld a, a
    ld a, [de]
    sub e
    sub [hl]
    sbc e
    sub [hl]
    rst RST_30
    sbc l
    ld sp, hl
    db $e4
    ld a, a
    add hl, sp
    cp l
    call nz, $a4d9
    pop de
    ld h, b
    ei
    sub e
    and c
    inc c
    and l
    and l
    and l
    sub c
    adc a
    adc d
    dec c
    sub l
    db $fd
    push hl
    ld d, $7f
    add sp, -$0f
    adc a
    db $e3
    sub d
    ld sp, hl
    and l
    and l
    and l
    and c
    rst RST_38
    sub [hl]
    ld l, l
    sub [hl]
    sbc c
    ret nz

    or d
    ld e, h
    jp hl


    ld a, a
    or [hl]
    ld [hl], $d0
    ld h, b
    and c
    rst RST_38
    ld h, e
    db $fd
    sub a
    cp l
    ret nz

    db $dd
    ld b, h
    ld h, b
    and c
    dec c
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
    ld l, l
    xor a
    ld b, h
    ld h, b
    and c
    dec c
    rst RST_08
    xor a
    call nz, Call_00f_7f16
    db $f4
    db $fc
    rst RST_30
    sub [hl]
    sbc a
    sub e
    ld h, b
    and c
    rst RST_38
    sbc d
    jp hl


    ld a, a
    sub l
    db $fd
    push hl
    ld d, $7f
    sbc d
    jp hl


    ld a, a
    sub [hl]
    sub l
    ld hl, sp-$17
    dec c
    add hl, de
    db $fd
    sub d
    db $fd
    rst RST_30
    sbc h
    sub d
    and c
    dec c
    push hl
    sub [hl]
    push hl
    sub [hl]
    jp hl


    ld a, a
    ld l, e
    inc e
    db $fd
    ld h, b
    and c
    inc c
    and l
    and l
    and l
    sub c
    adc a
    adc d
    dec c
    sbc d
    jp hl


    ld a, a
    sub l
    db $fd
    push hl
    ld [$8a8a], a
    inc c
    rst RST_08
    db $dd
    cp h
    xor [hl]
    db $dd
    and $7f
    sub c
    adc a
    ldh [$ff7f], a
    sbc h
    adc h
    sbc h
    db $fd
    and $0d
    sub e
    ldh [c], a
    adc a
    db $e3
    sub d
    ldh [$ff7f], a
    sub l
    db $fd
    push hl
    inc e
    adc h
    push hl
    sub d
    sub [hl]
    adc d
    rst RST_38
    rla
    db $fd
    ld l, h
    pop hl
    jp hl


    ld a, a
    jp nc, $c836

    ld h, b
    and c
    rst RST_38
    sbc d
    sub e
    sub a
    adc l
    sub e
    sbc a
    sub e
    push hl
    ld a, a
    ld c, [hl]
    and h
    reti


    ld a, l
    db $dd
    ld h, b
    and c
    rst RST_38
    push hl
    and $f3
    ld a, a
    sub [hl]
    sub [hl]
    ld a, [$92e3]
    push hl
    sub d
    and c
    inc c
    sbc h
    sub [hl]
    sbc h
    ld a, a
    or $98
    ldh a, [$fff9]
    db $e4
    ld a, a
    rst RST_28
    sub h
    jp hl


    ld a, l
    and h
    inc a
    and $0d
    sub [hl]
    sub [hl]
    ld a, [$92e3]
    ldh [$fff3], a
    jp hl


    ld d, $7f
    sub c
    db $e4
    and $e5
    adc a
    db $e3
    dec c
    jp hl


    sbc d
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    ld h, h
    sub e
    and $96
    sbc h
    db $e3
    ld a, a
    sbc d
    ld a, [$7fb0]
    or $f0
    db $e4
    ld sp, hl
    sbc d
    db $e4
    ld [$9763], a
    push hl
    sub d
    ld h, b
    ei
    sub e
    sub [hl]
    and l
    and l
    and l
    adc e
    rst RST_38
    jp nc, $e1d3

    adc [hl]
    sub e
    and $7f
    ld c, [hl]
    and h
    reti


    ld a, l
    db $dd
    or b
    dec c
    ld [$f79c], a
    sbc [hl]
    or $93
    db $e4
    ld a, a
    sbc h
    ldh [$ffa1], a
    inc c
    ld h, b
    ld d, $7f
    rst RST_28
    db $e3
    or $8b
    dec c
    sbc d
    ld a, [$ea63]
    ld a, a
    sbc [hl]
    adc a
    sub [hl]
    sbc b
    jp hl


    ld a, a
    di
    inc e
    jp hl


    sub c
    db $e4
    ld d, $0d
    ldh [c], a
    ld l, h
    ld a, [$9ce3]
    rst RST_28
    sub e
    db $fd
    inc e
    adc h
    push hl
    sub d
    sub [hl]
    adc e
    rst RST_38
    jp nc, $e1d3

    adc [hl]
    sub e
    and $7f
    or h
    db $dd
    ld e, e
    jp nz, Jump_00f_7fb0

    sub [hl]
    ld sp, hl
    sbc b
    dec c
    ld [$f79c], a
    sbc [hl]
    ldh [$ffa5], a
    and l
    and l
    and l
    and l
    and l
    and c
    inc c
    sub l
    sub l
    adc d
    dec c
    di
    inc e
    ld d, $7f
    sub e
    sub a
    ld h, e
    db $e3
    sub a
    ldh [$ff1f], a
    adc d
    rst RST_38
    dec e
    sub d
    ld l, h
    db $fd
    ld a, a
    push hl
    ld d, $e5
    ld d, $e4
    ld a, a
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    dec c
    jp nc, Jump_00f_60d3

    push hl
    and l
    and l
    and l
    and c
    inc c
    sbc $a4
    and h
    and h
    ld a, a
    inc e
    sub [hl]
    db $fd
    db $eb
    adc [hl]
    sub e
    ld a, a
    and h
    and h
    and h
    inc c
    ld a, a
    add d
    and [hl]
    add c
    add l
    ld a, a
    inc a
    xor [hl]
    and h
    jp hl


    ld c, d
    and h
    ld d, $7f
    sbc h
    rst RST_28
    ld hl, sp+$0d
    ld a, a
    inc e
    adc l
    sub e
    rla
    adc [hl]
    sub e
    sub d
    db $fd
    ld d, $7f
    ld e, $fd
    sub d
    db $fd
    dec c
    ld a, a
    sub [hl]
    sub h
    adc a

jr_00f_54d6:
    ldh [$ffe4], a
    sbc d
    ei
    ld h, e
    ld a, a
    ld c, d
    and h
    and $7f
    ld [$f992], a
    and c
    inc c
    ld a, a
    add d
    and [hl]
    add e
    add b
    ld a, a
    sub [hl]
    push hl
    sub d
    and $7f
    sbc e
    ld sp, hl
    jr jr_00f_54d6

    db $fc
    or b
    dec c
    ld a, a
    ld [$7ff2], a
    sub [hl]
    ldh [$ff98], a
    ld a, a
    sbc h
    ld l, d
    ld hl, sp+$7f
    ld c, d
    and h
    jp hl


    dec c
    ld a, a
    call nz, $dab2
    and $7f
    sub l
    sub d
    db $e3
    sub l
    sbc b
    and c
    inc c
    ld a, a
    add d
    and [hl]
    add h
    add l
    ld a, a
    ld c, d
    and h
    ld h, e
    ld a, a
    or h
    and h
    cp l
    jp hl


    dec c
    ld a, a
    db $e4
    sub e
    pop hl
    adc h
    sbc b
    or b
    ld a, a
    rst RST_28
    ldh [c], a
    and c
    inc c
    ld a, a
    add e
    and [hl]
    add b
    add b
    ld a, a
    or h
    and h
    cp l
    or b
    ld a, a
    call nz, $dab2
    and $7f
    sub d
    ld a, [$407f]
    or d
    cp e
    ret


    and h
    reti


    or b
    ld a, a
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sbc h
    dec c
    ld a, a
    ld e, e
    cp l
    call nz, $a5d9
    or [hl]
    scf
    or b
    ld a, a
    db $e4
    ld sp, hl
    and c
    inc c
    ld a, a
    add e
    and [hl]
    add c
    add l
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    or b
    ld a, a
    rst RST_28
    ldh [c], a
    and c
    inc c
    ld a, a
    add e
    and [hl]
    add e
    add b
    ld a, a
    or h
    and h
    cp l
    jp hl


    ld a, a
    ld e, e
    cp l
    call nz, $b0d9
    dec c
    ld a, a
    ldh [c], a
    sub [hl]
    adc a
    db $e3
    ld a, a
    or l
    call z, $bda8
    ld h, e
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    or b
    dec c
    ld a, a
    sub e
    ldh [c], a
    and c
    inc c
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    jp hl


    ld a, a
    di
    pop hl
    di
    jp hl


    ld a, a
    db $e4
    sbc b
    and $0d
    ld a, a
    cp b
    reti


    rst RST_08
    jp hl


    ld a, a
    or a
    and h
    or b
    ld a, a
    db $e4
    ld sp, hl
    and c
    inc c
    ld a, a
    add e
    and [hl]
    add h
    add l
    ld a, a
    ld e, e
    cp l
    call nz, $e5d9
    ld h, h
    and $7f
    or h
    and h
    cp l
    jp hl


    ld a, a
    sbc h
    di
    db $fd
    or b
    ldh [c], a
    sbc c
    ld a, a
    or h
    and h
    cp l
    and $7f
    di
    ld h, h
    sbc l
    and c
    inc c
    ld a, a
    add h
    and [hl]
    add b
    add b
    ld a, a
    sub [hl]
    push hl
    sub d
    or b
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    jp hl


    dec c
    ld a, a
    cp b
    reti


    rst RST_08
    jp hl


    ld a, a
    call nz, $ddd7
    cp b
    and $7f
    sub d
    ld a, [$a1f9]
    inc c
    ld a, a
    pop hl
    dec e
    ld a, a
    sbc h
    adc h
    sbc h
    db $fd
    or b
    ld a, a
    ld b, b
    xor a
    cp h
    xor l
    ld c, [hl]
    and h
    ld b, h
    db $ed
    ld a, a
    sub d
    ld a, [$a1f9]
    dec c
    ld a, a
    cp b
    reti


    rst RST_08
    jp hl


    ld a, a
    or a
    and h
    or b
    ld a, a
    di
    db $e4
    and $7f
    di
    ld h, h
    sbc l
    and c
    inc c
    ld a, a
    add h
    and [hl]
    add e
    add b
    ld a, a
    sbc h
    adc [hl]
    sub e
    sbc d
    or b
    ld a, a
    sbc l
    ld l, l
    db $e3
    dec c
    ld a, a
    sub [hl]
    ldh [$ff62], a
    sbc c
    db $e3
    ld a, a
    ld c, d
    and h
    or b
    ld a, a
    ld [$fae5], a
    ld sp, hl
    and c
    inc c
    ld a, a
    add l
    and [hl]
    add b
    add b
    ld a, a
    sub d
    sub h
    and $7f
    sub [hl]
    sub h
    ld sp, hl
    db $e4
    pop hl
    adc l
    sub e
    ld h, e
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    sub [hl]
    rst RST_30
    ld a, a
    or h
    and h
    cp l
    and $7f
    sub c
    db $e3
    ldh [$ff0d], a
    ld a, a
    rla
    rra
    sub e
    jp hl


    ld a, a
    db $e3
    ld d, $f0
    or b
    ld a, a
    or h
    and h
    cp l
    jp hl


    dec c
    ld a, a
    call z, $b2a7
    reti


    and $7f
    sub d
    ld a, [$a1f9]
    rst RST_18
    inc c
    sbc a
    sub e
    and l
    and l
    and l
    sub [hl]
    and l
    and l
    and l
    and c
    dec c
    sub l
    ld a, [$7fea]
    sbc d
    sub e
    sub d
    sub e
    ld a, a
    db $e3
    inc e
    adc l
    db $fd
    ld h, e
    dec c
    sbc d
    db $fd
    push hl
    ldh a, [c]
    and $7f
    sub c
    db $fc
    sbc e
    ld a, [$e9e0]
    sub [hl]
    and l
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    adc d
    adc d
    adc d
    dec c
    sbc d
    jp hl


    rst RST_28
    rst RST_28
    ld h, e
    ld [$957f], a
    ld a, [$7fea]
    push af
    sub e
    sub [hl]
    sub d
    dec c
    sbc e
    ldh [c], a
    inc e
    db $fd
    ld [$1cfd], a
    adc h
    push hl
    sub d
    sub [hl]
    adc d
    inc c
    inc e
    adc [hl]
    sub e
    ld h, b
    db $fd
    inc e
    adc h
    push hl
    sub d
    adc d
    adc d
    dec c
    push hl
    db $fd
    db $e4
    sub [hl]
    sbc h
    push hl
    sbc c
    ld a, [$8a6a]
    inc c
    sbc a
    sub e
    ld h, b
    adc d
    inc c
    ld [$98f4], a
    ld a, a
    sbc h
    adc [hl]
    sub e
    sbc d
    db $eb
    db $fd
    or b
    ld a, a
    db $e4
    db $e4
    jp hl


    sub h
    db $e3
    dec c
    sbc c
    sub d
    sbc e
    ldh [c], a
    db $ed
    ld a, a
    rst RST_20
    ld a, [$e717]
    or b
    ld a, a
    ld [$9cf7], a
    and $0d
    push af
    sbc d
    sub e
    adc d
    rst RST_38
    ld a, l
    db $dd
    ret nz

    cp a
    and h
    ld b, b
    or b
    ld a, a
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
    adc d
    dec c
    sub l
    db $fd
    push hl
    ld [$ea7f], a
    push hl
    sbc h
    ld [$f21c], a
    ldh [$ffa1], a
    inc c
    sbc $3c
    xor [hl]
    and h
    and l
    and l
    and l
    and c
    inc c
    ld a, a
    db $fc
    ldh [$ff9c], a
    ld [$3c7f], a
    xor [hl]
    db $dd
    db $e4
    ld a, a
    ldh [$ffe9], a
    sbc h
    sbc b
    dec c
    ld a, a
    sbc b
    rst RST_30
    sbc h
    ldh [$ff92], a
    jp hl


    adc d
    dec c
    ld a, a
    inc e
    adc h
    rst RST_28
    or b
    ld a, a
    sbc h
    push hl
    sub d
    ld h, e
    adc d
    inc c
    ld a, a
    sub c
    push hl
    ldh [rNR21], a
    ld a, a
    sbc a
    db $fd
    push hl
    sbc d
    db $e4
    or b
    ld a, a
    sbc l
    ld sp, hl
    push hl
    rst RST_30
    dec c
    ld a, a
    sbc d
    pop hl
    rst RST_30
    and $f3
    ld a, a
    sub [hl]
    db $fd
    ld d, $94
    ld d, $7f
    sub c
    ld sp, hl
    db $fc
    adc d
    inc c
    ld a, a
    db $fc
    ldh [$ff9c], a
    ldh [$ffe1], a
    jp hl


    ld a, a
    sbc h
    sub c
    db $fc
    sbc [hl]
    jp hl


    ldh [$fff2], a
    and $0d
    ld a, a
    sub c
    push hl
    ldh [$ffe6], a
    ld [$9c7f], a
    db $fd
    ld h, e
    di
    rst RST_30
    sub e
    db $fc
    adc d
    rst RST_18
    inc c
    sub l
    db $fd
    push hl
    ld [$d17f], a
    add $ac
    pop de
    add $ac
    sub d
    adc a
    db $e3
    dec c
    db $ec
    ldh [$ffe0], a
    ld l, e
    ld a, a
    add sp, -$0f
    adc a
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    add hl, sp
    cp l
    call nz, $a4d9
    pop de
    ld h, b
    and c
    dec c
    sbc d
    sub e
    sub [hl]

jr_00f_57e0:
    sbc a
    sub e
    push hl
    ld a, a
    sub [hl]
    jr jr_00f_57e0

    sub d
    ld d, $0d
    sub l
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    sub c
    adc a
    and l
    and l
    and l
    and c
    dec c
    sub [hl]
    sbc l
    sub [hl]
    and $7f
    sub a
    adc [hl]
    sub e
    ld [$e698], a
    ld a, a
    ldh [c], a
    sub d
    db $e3
    jp hl


    dec c
    sub a
    sub l
    sbc b
    ld d, $7f
    or $f0
    ld d, $94
    adc a
    db $e3
    sub a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sub l
    ld a, [$7fea]
    cp h
    and h
    add hl, sp
    reti


    sub [hl]
    rst RST_30
    ld a, a
    db $e3
    ld d, $f0
    or b
    dec c
    sub e
    sbc c
    db $e4
    adc a
    ldh [$ffe4], a
    sub a
    ld a, a
    sbc e
    sub d
    sbc h
    adc [hl]
    ld [$fc7f], a
    ld sp, hl
    sub d
    dec c
    inc e
    adc [hl]
    sub e
    ld h, b
    db $fd
    ld h, b
    db $e4
    ld a, a
    sub l
    di
    adc a
    ldh [$ffa1], a
    inc c
    sbc h
    sub [hl]
    sbc h
    ld a, a
    push hl
    and $96
    ld a, a
    inc e
    inc e
    adc [hl]
    sub e
    ld d, $91
    ld sp, hl
    jp hl


    ld h, e
    ld [$92e5], a
    sub [hl]
    db $e4
    di
    ld a, a
    sub l
    di
    sub h
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sbc a
    sbc d
    ld h, e
    ld a, a
    sub l
    ld a, [$7fea]
    sbc e
    sub d
    sub c
    sbc b
    jp hl


    ld l, d
    sub c
    sub d
    or b
    dec c
    sub [hl]
    db $fd
    ld d, $94
    ldh [$ffa1], a
    inc c
    sbc a
    sbc d
    ld h, e
    ld a, a
    sub l
    ld a, [$7fea]
    cp h
    and h
    add hl, sp
    reti


    jp hl


    dec c
    sub d
    sub e
    db $e4
    sub l
    ld hl, sp-$1a
    ld a, a
    sbc h
    ld a, [de]
    db $e4
    or b
    sbc h
    or $93
    db $e4
    dec c
    sbc h
    ldh [$ffe9], a
    ld h, b
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    cp h
    and h
    add hl, sp
    reti


    jp hl


    ld a, a
    db $e3
    ld d, $f0
    jp hl


    ld a, a
    jp hl


    sbc d
    ld hl, sp-$1a
    ld [$970d], a
    adc [hl]
    sub e
    ld [$1c98], a
    adc [hl]
    sub e
    jp hl


    ld a, a
    ld h, b
    sbc h
    sub [hl]
    ldh [$ffe6], a
    ldh [c], a
    sub d
    db $e3
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    sbc h
    sub [hl]
    sbc h
    ld a, a
    sbc b
    db $fc
    sbc h
    sub d
    sbc d
    db $e4
    ld [$f60d], a
    sbc b
    sub l
    di
    sub d
    ld h, b
    sbc [hl]
    push hl
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    sub c
    adc a
    adc d
    dec c
    sub l
    di
    sub d
    ld h, b
    sbc h
    ldh [$ff8a], a
    inc c
    sub l
    ld a, [$7fea]
    cp h
    and h
    add hl, sp
    reti


    sub [hl]
    rst RST_30
    jp hl


    ld a, a
    db $e3
    ld d, $f0
    jp hl


    dec c
    sbc h
    inc e
    ld h, e
    ld a, a
    push af
    sub e
    sub [hl]
    sub d
    jp hl


    ld a, a
    sub e
    pop hl
    sub c
    db $fc
    sbc [hl]
    jp hl


    ldh [$fff2], a
    add d
    inc e
    add h
    add l
    db $ec
    db $fd
    and $7f
    ld c, d
    and h
    db $ed
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sub l
    ld a, [$7fea]
    sub c
    ld sp, hl
    sub d
    db $e3
    ld a, a
    ld c, d
    and h
    rst RST_28
    ld h, e
    dec c
    sub d
    adc a
    ldh [$ffe9], a
    ld h, b
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    db $ec
    ldh [$ffe0], a
    ld l, e
    ld a, a
    sub c
    ldh [$ffef], a
    jp hl


    push hl
    sub [hl]
    ld [$b60d], a
    rst RST_10
    and $e5
    adc a
    ldh [$ffa1], a
    rst RST_38
    jp nc, $da44

    inc a
    db $dd
    or b
    ld a, a
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sbc h
    ldh [$ffa1], a
    dec c
    and l
    and l
    and l
    and l
    and l
    and l
    adc d
    inc c
    sub l
    db $fd
    push hl
    ld [$987f], a
    ld sp, hl
    sbc h
    ldh a, [$ffea]
    inc e
    ldh a, [c]
    ldh [$ffa1], a
    dec c
    sbc a
    jp hl


    ld a, a
    sub e
    ldh [c], a
    sbc b
    sbc h
    sub d
    ld a, a
    sub [hl]
    sub l
    ld [$987f], a
    ldh [c], a
    sub e
    ld h, e
    dec c
    push af
    ld d, $fd
    ld h, b
    and c
    inc c
    sbc a
    sbc h
    db $e3
    ld a, a
    di
    ld d, $92
    db $e3
    ld a, a
    di
    ld d, $92
    ldh [$ff9d], a
    sub h
    dec c
    sub e
    ld a, [de]
    sub [hl]
    push hl
    sbc b
    push hl
    adc a
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    ld h, h
    sub e
    db $f4
    rst RST_30
    ld a, a
    sub a
    or b
    ld a, a
    sub e
    sbc h
    push hl
    adc a
    ldh [$fff7], a
    sbc h
    sub d
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    ld [$7e8f], a
    sub e
    sbc h
    ldh [$ffa1], a
    inc c
    pop hl
    sub [hl]
    sbc b
    or b
    ld a, a
    db $e4
    sub l
    ld hl, sp-$6a
    sub [hl]
    adc a
    ldh [$ffeb], a
    db $e4
    ld d, $0d
    inc e
    adc l
    sub e
    sbc [hl]
    sub d
    or b
    ld a, a
    sub a
    sub a
    ldh [c], a
    sbc c
    ld a, a
    sbc c
    sub d
    sbc e
    ldh [c], a
    and $0d
    ldh [c], a
    sub e
    xor $93
    sbc h
    ldh [$ff8a], a
    inc c
    sub l
    ld a, [$7fea]
    ldh [$ff92], a
    xor $9b
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    push hl
    db $fd
    jp hl


    ld a, a
    db $ed
    db $fd
    sub [hl]
    di
    ld a, a
    sub l
    sub a
    push hl
    sub d
    and c
    dec c
    sub c
    sub d
    sub [hl]
    db $fc
    rst RST_30
    dec e
    ld a, a
    add sp, -$0f
    adc a
    ldh [$ffef], a
    rst RST_28
    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    sub l
    ld a, [$7fea]
    sub d
    adc a
    ldh [$ff92], a
    ld a, a
    push hl
    and $b0
    dec c
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
    inc c
    sbc h
    db $fd
    ld h, e
    sub d
    ld sp, hl
    ld a, a
    db $eb
    db $e4
    and $7f
    sbc d
    db $fd
    push hl
    sbc d
    db $e4
    or b
    sbc h
    db $e3
    push hl
    db $fd
    and $e5
    ld sp, hl
    db $e4
    ld a, a
    sub d
    sub e
    jp hl


    ld h, b
    adc d
    rst RST_38
    sub h
    adc a
    adc e
    dec c
    sub l
    ld a, [$7fea]
    sbc d
    db $fd
    push hl
    di
    jp hl


    or b
    ld a, a
    sub [hl]
    sub d
    ldh [$ff0d], a
    sub l
    ld l, [hl]
    sub h
    ld [$92e5], a
    rra
    adc d
    rst RST_38
    add c
    add b
    add b
    add b
    ld b, h
    reti


    sub [hl]
    and l
    and l
    and l
    and c
    dec c
    ldh [$ff92], a
    sub a
    db $fd
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    db $e4
    ldh [c], a
    ld e, $fd
    ld a, a
    ldh a, [c]
    jp hl


    rst RST_28
    sub h
    and $7f
    sub l
    db $e4
    sbc d
    ld d, $0d
    sub c
    rst RST_30
    db $fc
    ld a, [$8ae0]
    inc c
    and l
    and l
    and l
    sub l
    sbc a
    ei
    sbc h
    sbc b
    ld a, a
    ldh [c], a
    or $9f
    sub e
    ld h, b
    and c
    inc c
    sub l
    db $e4
    sbc d
    ld [$ec7f], a
    db $e4
    sub d
    sbc d
    sub h
    ld h, e
    ld a, a
    sub l
    ld a, [$0de6]
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $e7
    sbc l
    db $fd
    ld h, b
    ld hl, sp+$7f
    sbc d
    ei
    sbc h
    ldh [$fff8], a
    sbc l
    ld sp, hl
    jp hl


    ld [$7f0d], a
    sub l
    ld a, [$7fe9]
    sbc h
    adc l
    rla
    inc e
    adc h
    add sp, -$6c
    and c
    inc c
    ld a, a
    sbc a
    jp hl


    sub [hl]
    sub l
    and $7f
    sub a
    dec e
    or b
    ld a, a
    ldh [c], a
    sbc c
    ldh [$ff98], a
    dec c
    ld a, a
    push hl
    sub [hl]
    adc a
    ldh [$fff7], a
    ld a, a
    sub [hl]
    add sp, -$50
    ld a, a
    or $9a
    sbc h
    push hl
    adc d
    rst RST_18
    inc c
    sbc l
    push hl
    sub l
    and $7f
    db $fc
    ldh [$ff9d], a
    ld l, l
    sub a
    sub [hl]
    dec c
    sbc a
    ld a, [$f3e4]
    ld a, a
    ld [$96f1], a
    sub e
    ld l, l
    sub a
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    add d
    add b
    ld b, h
    reti


    sbc e
    ldh [c], a
    or b
    ld a, a
    db $fc
    ldh [$ff9c], a
    ldh [$ffa1], a
    inc c
    sub l
    db $e4
    sbc d
    ld [$957f], a
    ld a, [$7fe6]
    ld c, d
    or [hl]
    and $9c
    ldh [$fff6], a
    sub e
    push hl
    dec c
    ldh a, [c]
    or b
    pop af
    sbc c
    db $e3
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $f6
    sbc h
    ld a, a
    or $9c
    ld a, a
    sbc l
    push hl
    sub l
    inc e
    adc h
    add sp, -$6c
    sub [hl]
    and c
    dec c
    ld a, a
    sbc a
    jp hl


    ld a, a
    sbc d
    sbc d
    ei
    ld d, $99
    or b
    ld a, a
    ldh [$ff92], a
    sbc [hl]
    ldh [c], a
    and $0d
    ld a, a
    sbc l
    ld sp, hl
    db $fd
    ld h, b
    push hl
    adc d
    rst RST_18
    rst RST_38
    sub l
    ld a, [$7fe9]
    ldh a, [rNR22]
    ld e, d
    db $dd
    pop bc
    ld [$957f], a
    db $e4
    sbc d
    jp hl


    dec c
    db $eb
    ld h, b
    ld hl, sp+$5a
    db $dd
    pop bc
    and $7f
    db $fc
    dec e
    sub [hl]
    push hl
    ld a, a
    sub l
    sbc b
    ld a, [$0db0]
    db $e4
    adc a
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ff8a], a
    inc c
    ldh a, [$fff3]
    ld a, a
    sbc d
    sbc d
    ei
    di
    ld a, a
    ldh [c], a
    sub [hl]
    ld a, [$8f97]
    db $e3
    sub d
    ld sp, hl
    dec c
    sub l
    ld a, [$eae6]
    ld a, a
    sbc d
    jp hl


    ld a, a
    ld e, d
    db $dd
    pop bc
    ld [$917f], a
    rst RST_28
    ld hl, sp-$1a
    di
    sub a
    adc [hl]
    sub e
    ld a, [$9de2]
    rla
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sub l
    ld a, [$7fea]
    sub a
    or b
    ld a, a
    sub e
    sbc h
    push hl
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sbc $36
    or a
    jp hl


    ld a, a
    sbc d
    ld h, d
    sub [hl]
    sub d
    inc e
    adc h
    ld a, a
    add sp, -$6c
    ld e, $8a
    rst RST_18
    inc c
    sbc a
    sub e
    sub d
    sub d
    push hl
    ld d, $f7
    ld a, a
    db $eb
    ld h, b
    ld hl, sp+$5a
    db $dd
    pop bc
    or b
    dec c
    ldh a, [$ffef]
    adc a
    db $e3
    sub a
    ldh [$ffa1], a
    inc c
    sub a
    sub d
    ldh [$ff8a], a
    adc d
    inc c
    sub a
    adc [hl]
    sub e
    ld a, [$e5e2]
    ld a, a
    ld e, d
    db $dd
    pop bc
    ld h, b
    adc d
    inc c
    sub l
    ld a, [$7fea]
    sub a
    or b
    ld a, a
    sub e
    sbc h
    push hl
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sbc $4a
    or [hl]
    and $7f
    sbc h
    db $e3
    ld sp, hl
    jp hl


    sub [hl]
    adc d
    rst RST_18
    inc c
    sub l
    db $e4
    sbc d
    ld [$927f], a
    sub a
    push hl
    ld hl, sp+$7f
    sub l
    ld a, [$0de6]
    push hl
    jr @-$06

    sub [hl]
    sub [hl]
    adc a
    db $e3
    sub a
    ldh [$ffa1], a
    inc c
    sub l
    db $e4
    sbc d
    jp hl


    ld a, a
    db $eb
    ld h, b
    ld hl, sp+$5a
    db $dd
    pop bc
    ld d, $7f
    sub l
    ld a, [$0de9]
    ld d, $fd
    ldh a, [c]
    db $fd
    db $ed
    ld a, a
    di
    ei
    and $7f
    ld [$8f92], a
    ldh [$ff8a], a
    adc d
    inc c
    sub a
    adc [hl]
    sub e
    ld a, [$60e2]
    adc d
    adc d
    adc d
    inc c
    sub l
    ld a, [$7fea]
    sub a
    or b
    ld a, a
    sub e
    sbc h
    push hl
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sub d
    ldh [c], a
    ldh [c], a
    ldh [c], a
    adc a
    and l
    and l
    and l
    and c
    inc c
    ld h, h
    jp hl


    sbc b
    rst RST_30
    sub d
    jp hl


    inc e
    sub [hl]
    db $fd
    ld a, a
    sub a
    or b
    dec c
    sub e
    sbc h
    push hl
    adc a
    db $e3
    ld a, a
    sub d
    ldh [$ffe9], a
    ld h, b
    ei
    sub e
    sub [hl]
    and l
    and l
    and l
    and c
    inc c
    ldh a, [c]
    or b
    ld a, a
    sub c
    sbc c
    or $93
    db $e4
    sbc h
    db $e3
    ld a, a
    ldh a, [rNR22]
    ldh a, [c]
    and $0d
    sub d
    ldh [$fff0], a
    or b
    ld a, a
    sub [hl]
    db $fd
    inc e
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sbc h
    ld l, d
    rst RST_30
    sbc b
    sbc l
    ld sp, hl
    db $e4
    ld a, a
    sub l
    ld a, [$7fea]
    ld a, [$9e92]
    sub d
    sbc e
    or b
    db $e4
    ld hl, sp-$0d
    ld h, h
    sbc h
    ldh [$ffa1], a
    inc c
    sbc a
    sbc h
    db $e3
    ld a, a
    inc e
    ld l, h
    db $fd
    jp hl


    ld a, a
    di
    pop hl
    di
    jp hl


    or b
    dec c
    sbc h
    rst RST_30
    ld l, l
    db $e3
    ldh a, [$ffe0]
    and l
    and l
    and l
    and c
    rst RST_38
    sub [hl]
    add sp, -$50
    ld a, a
    ld [$95f7], a
    sub e
    db $e4
    sbc l
    ld sp, hl
    db $e4
    ld a, a
    sub l
    db $e4
    sbc d
    ld d, $0d
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $9b
    sub a
    and $7f
    di
    jp hl


    or b
    ld a, a
    db $e4
    adc a
    db $e3
    sbc b
    ld h, b
    sbc e
    sub d
    and c
    dec c
    ld a, a
    sub l
    sub [hl]
    add sp, -$16
    ld a, a
    sbc a
    jp hl


    ld a, a
    sub c
    db $e4
    ld h, e
    dec c
    ld a, a
    sub d
    ldh [$ff60], a
    sub a
    rst RST_28
    sbc l
    and c
    rst RST_18
    rst RST_38
    push hl
    sub d
    adc d
    adc d
    adc d
    dec c
    cp d
    or d
    db $dd
    ld d, $7f
    ld e, $fd
    ld l, h
    adc d
    inc c
    and l
    and l
    and l
    cp b
    cp a
    xor a
    adc d
    adc d
    dec c
    push hl
    db $fd
    db $e3
    sbc d
    adc a
    ldh [$ff8a], a
    rst RST_38
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    inc c
    sbc d
    ld a, [$f796]
    ld a, a
    sbc e
    sub a
    jp hl


    sbc d
    db $e4
    or b
    ld a, a
    sub [hl]
    db $fd
    ld d, $94
    ld sp, hl
    db $e4
    sub l
    ld a, [$7fe9]
    ldh a, [$fff7]
    sub d
    ld [$ef7f], a
    adc a
    sbc b
    rst RST_30
    db $f4
    ldh a, [$ffe9]
    dec c
    or $93
    push hl
    ld a, a
    sub a
    ld d, $9d
    ld sp, hl
    and l
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    ldh [c], a
    sub [hl]
    ld a, [$a1e0]
    dec c
    push af
    ldh a, [c]
    di
    ld a, a
    sub a
    ld l, [hl]
    sub e
    di
    ld a, a
    push hl
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    adc $af
    and l
    and l
    and l
    and c
    dec c
    ld l, l
    ldh [c], a
    and $7f
    db $e4
    rst RST_30
    ld a, [$f3e0]
    jp hl


    ld [$e57f], a
    sub d
    and c
    rst RST_38
    ld e, e
    cp l
    call nz, Call_00f_63d9
    ld a, a
    sub l
    db $e4
    sbc d
    or b
    ld a, a
    sub e
    adc a
    ldh [$ffa1], a
    dec c
    and l
    and l
    and l
    and l
    and l
    and l
    adc d
    inc c
    inc e
    adc l
    sub e
    sbc [hl]
    sub d
    or b
    ld a, a
    sub a
    sub a
    ldh [c], a
    sbc c
    db $e3
    ld a, a
    sbc c
    sub d
    sbc e
    ldh [c], a
    ld d, $f4
    adc a
    db $e3
    sub a
    ldh [$ffa1], a
    inc c
    sub l
    ld a, [$7fea]
    sbc [hl]
    sub d
    db $e4
    sub e
    ld l, [hl]
    sub e
    sub h
    sub d
    or b
    dec c
    sub e
    adc a
    ldh [$ff94], a
    ldh [$ffa1], a
    inc c
    sbc c
    ld a, [$f364]
    ld a, a
    ld l, h
    sub a
    or b
    ld a, a
    di
    adc a
    db $e3
    sub d
    push hl
    sub d
    dec c
    and $fd
    add hl, de
    db $fd
    and $7f
    ld [$7e8f], a
    sub e
    sbc h
    ldh [$ffe4], a
    dec c
    sub d
    sub e
    sbc d
    db $e4
    ld h, e
    ld a, a
    ldh [$ff92], a
    xor $9b
    ld a, [$a1e0]
    rst RST_38
    push hl
    db $fd
    db $e3
    sbc d
    adc a
    ldh [$ff8a], a
    dec c
    ldh a, [c]
    jp hl


    rst RST_28
    sub h
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    ld d, $7f
    sub d
    sub a
    push hl
    ld hl, sp+$0d
    sub l
    ld a, [$7fe6]
    ld e, e
    cp l
    call nz, $b0d9
    ld a, a
    ldh [c], a
    sub a
    ldh [c], a
    sbc c
    db $e3
    sub a
    ldh [$ff8a], a
    inc c
    sbc $96
    add sp, -$50
    ld a, a
    ld h, b
    sbc [hl]
    adc d
    dec c
    ld a, a
    ld h, b
    sbc e
    push hl
    sub d
    db $e4
    ld a, a
    ld h, h
    sub e
    push hl
    ld sp, hl
    sub [hl]
    dec c
    ld a, a
    db $fc
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    ld h, b
    ei
    sub e
    push hl
    adc d
    adc d
    rst RST_18
    inc c
    sbc e
    db $e3
    ld a, a
    ld h, h
    sub e
    sbc h
    ldh [$fff3], a
    jp hl


    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    add d
    add b
    ld b, h
    reti


    sbc e
    ldh [c], a
    or b
    ld a, a
    db $fc
    ldh [$ff9c], a
    ldh [$ffa1], a
    dec c
    sub l
    db $e4
    sbc d
    ld [$bd7f], a
    or a
    xor a
    ld e, h
    sbc h
    push hl
    ld d, $f7
    ld a, a
    sbc e
    adc a
    ldh [$ffa1], a
    inc c
    sbc $ca
    xor a
    jp z, $8aa4

    adc d
    dec c
    ld a, a
    sbc d
    db $fd
    push hl
    and $7f
    ld c, [hl]
    db $db
    sub d
    ld a, a
    di
    sub e
    sbc c
    ld [$7f0d], a
    push hl
    sub d
    ld e, $8a
    rst RST_18
    inc c
    db $e4
    sub d
    sub e
    ld a, a
    sbc d
    db $e4
    ld l, d
    or b
    ld a, a
    jp hl


    sbc d
    sbc h
    db $e3
    and l
    and l
    and l
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    add d
    add l
    cp [hl]
    db $dd
    call nz, Call_00f_7fb0
    db $fc
    ldh [$ff9c], a
    ldh [$ffa1], a
    inc c
    sbc $95
    ld a, [$7fb0]
    ld c, d
    or [hl]
    and $9c
    db $e3
    sub d
    ld sp, hl
    jp hl


    sub [hl]
    adc d
    rst RST_18
    inc c
    sub l
    db $e4
    sbc d
    ld [$9f7f], a
    sub e
    sub d
    sub d
    push hl
    ld d, $f7
    ld a, a
    call nz, $36d8
    and h
    or b
    db $eb
    sub d
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    db $f4
    rst RST_30
    ld a, [$8ae0]
    inc c
    sbc $9a
    sub e
    sub [hl]
    sub d
    ld a, a
    sbc e
    sub a
    and $e0
    ldh [rNR33], a
    rst RST_18
    dec c
    db $e4
    sub d
    sub e
    db $f4
    ldh [c], a
    ld h, b
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    call nz, $36d8
    and h
    or b
    ld a, a
    db $eb
    sbc d
    sub e
    db $e4
    sbc h
    ldh [$ffa1], a
    inc c
    sbc h
    sub [hl]
    sbc h
    ld a, a
    sub l
    db $e4
    sbc d
    jp hl


    xor $93
    ld d, $7f
    sub d
    adc a
    sbc h
    adc l
    db $fd
    dec c
    ld [$98f4], a
    ld a, a
    call nz, $36d8
    and h
    or b
    ld a, a
    db $eb
    sub d
    ldh [$ff8a], a
    inc c
    sub l
    ld a, [$7fea]
    rla
    adc h
    sbc b
    and $7f
    sub e
    ldh [$fffa], a
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sub l
    ld a, [$7fea]
    sub l
    db $e4
    sbc d
    jp hl


    ld a, a
    ldh a, [c]
    and $7f
    sub d
    adc a
    ld a, d
    ldh [c], a
    dec c
    ldh a, [$ffef]
    adc a
    db $e3
    db $f4
    adc a
    ldh [$ff8a], a
    inc c
    sub a
    rst RST_28
    adc a
    ldh [$ff8a], a
    adc d
    inc c
    and l
    and l
    and l
    sub l
    db $e4
    sbc d
    ld [$cc7f], a
    rst RST_10
    call z, $e4d7
    dec c
    ldh [$ffe1], a
    sub c
    ld d, $8f
    ldh [$ffa1], a
    inc c
    sbc $95
    ld l, [hl]
    sub h
    db $e3
    ei
    adc d
    rst RST_18
    inc c
    sbc a
    sub e
    ld a, a
    sbc l
    db $e3
    ld e, $f8
    db $ec
    or b
    jp hl


    sbc d
    sbc h
    ld a, a
    cp l
    ret nz

    cp d
    rst RST_10
    db $e4
    and $19
    db $e3
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    sbc b
    pop hl
    xor $64
    and $f3
    ld a, a
    push hl
    sub d
    db $f4
    ldh [c], a
    ld h, b
    and c
    rst RST_38
    sub l
    db $e4
    sbc d
    ld [$e47f], a
    ldh [c], a
    ld e, $fd
    ld a, a
    call nz, $36d8
    and h
    or b
    dec c
    db $eb
    sub d
    ldh [$ff8a], a
    inc c
    pop hl
    sbc b
    sbc h
    adc [hl]
    sub e
    adc d
    adc d
    adc d
    dec c
    db $f4
    rst RST_30
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    rst RST_28
    ldh [$ff7f], a
    ld h, e
    ldh [$ff8a], a
    dec c
    sbc e
    adc a
    sub a
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    ld h, b

jr_00f_6069:
    adc d
    inc c
    sub l
    ld a, [$7fe6]
    push hl
    jr jr_00f_6069

    ld a, [$e4e0]
    sbc d
    ei
    or b
    dec c
    or c
    dec sp
    and $9c
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    sbc $e6
    ld h, h
    db $e4
    ld a, a
    sub l
    push hl
    inc e
    db $e3
    ld [$987f], a
    db $fc
    push hl
    sub d
    ld e, $a1
    dec c
    ld a, a
    sbc e
    adc a
    sbc e
    db $e4
    ld a, a
    sub [hl]
    add sp, -$50
    ld h, b
    sbc h
    push hl
    adc d
    rst RST_18
    inc c
    sbc e
    sub c
    ld a, a
    sbc d
    db $fd
    ld h, h
    ld [$647f], a
    sub e
    sbc h
    or $93
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    sub a
    rst RST_28
    adc a
    ldh [$ff8a], a
    inc c
    sub l
    ld a, [$7fea]
    sbc e
    adc a
    sub a
    db $e4
    ld a, a
    ld [$e0fd], a
    sub d
    ld d, $fc
    jp hl


    dec c
    ldh a, [c]
    and $7f
    ld e, d
    db $dd
    pop bc

Jump_00f_60d3:
    or b
    ld a, a
    sbc b
    rst RST_30
    db $fc
    sbc [hl]
    ldh [$ffa1], a
    inc c
    sbc $95
    ld l, [hl]
    sub h
    db $e3
    ei
    adc d
    rst RST_18
    inc c
    sub l
    db $e4
    sbc d
    ld [$d67f], a
    db $db
    sub $db
    db $e4
    ld a, a
    pop hl
    ld h, h
    ld hl, sp-$6f
    sbc h
    ld h, e
    dec c
    and $19
    db $e3
    sub d
    adc a
    ldh [$ffa1], a
    dec c
    rst RST_28
    adc a
    ldh [$ff98], a
    ld a, a
    sbc h
    ldh [c], a
    sbc d
    sub d
    db $f4
    ldh [c], a
    ld h, b
    adc d
    rst RST_38
    sub l
    ld a, [$7fea]
    add d
    add b
    ld b, h
    reti


    sbc e
    ldh [c], a
    or b
    ld a, a
    sbc e
    sbc h
    ld h, b
    sbc h
    ldh [$ffa1], a
    sub l
    db $e4
    sbc d
    ld [$eb7f], a
    adc a
    ldh [$ff98], a
    ld sp, hl
    or $93
    and $7f
    sub [hl]
    add sp, -$50
    dec c
    db $e4
    adc a
    ldh [$ffa1], a
    inc c
    sbc $9a
    db $fd
    push hl
    and $7f
    sbc b
    ei
    sub e
    sbc h
    ldh [$ffe9], a
    ld [$7f0d], a
    ld [$f21c], a
    db $e3
    ld h, b
    ld e, $8a
    rst RST_18
    inc c
    db $e4
    sub d
    sub e
    db $e4
    ld a, a
    sbc e
    adc a
    sbc e
    db $e4
    ld a, a
    and $19
    db $e3
    sub d
    adc a
    ldh [$ffa1], a
    rst RST_38
    add hl, sp
    xor a
    adc d
    dec c
    rst RST_28
    ldh [$ff7f], a
    ld h, e
    ldh [$ff8a], a
    dec c
    sbc e
    adc a
    sub a
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    ld h, b
    and c
    inc c
    sbc d
    db $fd
    ld h, h
    ld [$f87f], a
    adc [hl]
    sub e
    ldh a, [c]
    and $7f
    or c
    dec sp
    and l
    and l
    and l
    and c
    dec c
    ldh [$ffe7], a
    sub a
    jp hl


    or $93
    push hl
    ld a, a
    sub [hl]
    sub l
    ld h, e
    ld a, a
    sub l
    ld a, [$0de6]
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $ef
    sub h
    ld [$f67f], a
    sbc b
    di
    ld a, a
    db $f4
    adc a
    ldh [$ffe5], a
    adc d
    dec c
    ld a, a
    sbc d
    db $fd
    ld h, h
    ld [$f47f], a
    rst RST_30
    ld a, [$94e8]
    ld e, $8a
    rst RST_18
    inc c
    ld h, h
    sub e
    sbc h
    or $93
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    db $e3
    ld a, [de]
    ldh [$ff94], a
    ld d, $7f
    sub c
    adc a
    ldh [$ff8a], a
    dec c
    sub l
    ld a, [$7fea]
    sub l
    db $e4
    sbc d
    jp hl


    ld a, a
    ld [$e6e5], a
    ld a, a
    ldh [c], a
    sub e
    ld a, [$e5e2]
    db $eb
    ld h, b
    ld hl, sp-$34
    xor a
    cp b
    or b
    ld a, a
    ldh a, [$ffef]
    adc a
    ldh [$ffa1], a
    inc c
    sub l
    db $e4
    sbc d
    ld [$e57f], a
    and $f3
    sub d
    db $fc
    dec e
    and $7f
    ldh [$ffe1], a
    sub c
    ld d, $f8
    sub $c0
    sub $c0
    db $e4
    ld a, a
    and $19
    db $e3
    sub d
    adc a
    ldh [$ffa1], a
    dec c
    rst RST_28
    adc a
    ldh [$ff98], a
    ld a, a
    sbc d
    ld hl, sp-$1b
    sub d
    db $f4
    ldh [c], a
    ld h, b
    adc d
    rst RST_38
    sbc e
    adc a
    sub a
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
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
    sub l
    ld a, [$7fe6]
    ld e, e
    cp l
    call nz, $b0d9
    dec c
    ldh [c], a
    sub a
    ldh [c], a
    sbc c
    db $e3
    sbc b
    ld sp, hl
    and c
    inc c
    ld hl, sp-$72
    sub e
    ldh a, [c]
    jp hl


    ld a, a
    or c
    dec sp
    and $7f
    sbc b
    db $fc
    sub h
    ld a, a
    ld [$61e5], a
    jp hl


    sub l
    rst RST_28
    sbc c
    ldh [c], a
    sub a
    ld h, b
    and c
    inc c
    sbc $e4
    adc a
    db $e4
    db $e4
    ld a, a
    sub [hl]
    add sp, -$50
    ld a, a
    ld h, b
    sbc [hl]
    adc d
    dec c
    ld a, a
    sbc d
    db $fd
    ld h, h
    ld [$cf7f], a
    inc a
    ld h, b
    ld e, $a5
    and l
    and l
    and c
    rst RST_18
    inc c
    sub l
    ld h, b
    db $f4
    sub [hl]
    push hl
    ld a, a
    sbc b
    pop hl
    adc [hl]
    sub e
    ld h, b
    sbc c
    and $0d
    db $f4
    sbc c
    and $7f
    ld l, h
    sub a
    ldh a, [$ff60]
    and c
    inc c
    sbc e
    sub c
    db $e3
    ld a, a
    ld h, h
    sub e
    sbc h
    ldh [$fff7], a
    ld a, a
    sub d
    sub d
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    sub l
    ld a, [$7fe9]
    sbc d
    ld l, h
    sbc h
    ld d, $7f
    sbc b
    sub e
    or b
    ld a, a
    sub a
    adc a
    ldh [$ffa1], a
    inc c
    sub l
    db $e4
    sbc d
    ld [$927f], a
    rst RST_28
    rst RST_28
    ld h, e
    jp hl


    ld a, a
    sub e
    rst RST_30
    ldh a, [$ffb0]
    dec c
    sbc d
    ldh a, [c]
    db $e3
    ld a, a
    ld e, e
    cp l
    call nz, $b0d9
    ld a, a
    sub e
    adc a
    ldh [$ff8a], a
    inc c
    push af
    adc a
    ld a, a
    push af
    ld h, b
    db $fd
    sbc h
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sub l
    ld a, [$7fea]
    ldh [c], a
    sub d
    and $7f
    db $f4
    rst RST_30
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld [$7e8f], a
    sub e
    sbc h
    ldh [rNR21], a
    ld a, a
    sub l
    sub l
    sub a
    push hl
    ld a, a
    db $ed
    db $fd
    sub [hl]
    ld [$f00d], a
    rst RST_30
    ld a, [$92e5]
    and c
    dec c
    ldh [$ffef], a
    jp hl


    ld a, a
    pop de
    ld b, b
    ld h, d
    sub [hl]
    sub d
    ld h, b
    adc a
    ldh [$ff96], a
    and l
    and l
    and l
    and c
    rst RST_38
    sbc $3c
    xor [hl]
    db $dd
    and l
    cp l
    ret nz

    db $dd
    or e
    xor a
    ld b, h
    ld a, a
    ldh [$ff92], a
    xor $8a
    adc d
    inc c
    ld a, a
    sub a
    adc [hl]
    sub e
    ld a, a
    ldh a, [$fff2]
    sub d
    ld a, a
    cp h
    or [hl]
    ld a, [hl-]
    jp hl


    ld a, a
    sbc h
    sbc e
    db $fd
    sub [hl]
    ld a, a
    inc a
    xor [hl]
    db $dd
    and l
    cp l
    ret nz

    db $dd
    or e
    xor a
    ld b, h
    ld d, $7f
    sbc e
    ldh [c], a
    inc e
    db $fd
    jp hl


    ld a, a
    or $93
    rla
    ld h, e
    ld a, a
    ldh [$ff92], a
    xor $9b
    ld a, [$a1e0]
    inc c
    ld a, a
    sbc h
    rst RST_30
    ld l, l
    and $f6
    ld sp, hl
    db $e4
    ld a, a
    cp l
    ret nz

    db $dd
    or e
    xor a
    ld b, h
    db $e4
    dec c
    ld a, a
    sbc d
    sub d
    ld l, e
    db $e4
    jp hl


    ld a, a
    rst RST_08
    and h
    cp e
    and l
    ld c, e
    xor a
    or [hl]
    and h
    cp l
    ld [$7f0d], a
    inc a
    xor [hl]
    and h
    and l
    cp h
    and h
    add hl, sp
    reti


    and $7f
    sbc h
    ldh [c], a
    or $93
    and $0d
    ld a, a
    sub a
    adc [hl]
    sub e
    ld [$9b98], a
    ld a, [$92e3]
    ldh [$ffa1], a
    inc c
    ld a, a
    sbc a
    jp hl


    ldh [$fff2], a
    ld a, a
    db $ec
    ldh [$fff8], a
    ld [$bc7f], a
    and h
    add hl, sp
    reti


    or b
    dec c
    ld a, a
    sbc e
    ldh [c], a
    ld d, $92
    sbc h
    ld a, a
    sub [hl]
    ld a, [$7fe9]
    push af
    sub e
    inc e
    db $fd
    ld h, e
    sub c
    ld sp, hl
    ld a, a
    or h
    and h
    cp l
    and l
    jp z, Jump_00f_43a4

    xor b
    db $dd
    jr c, @-$18

    ld a, a
    ldh [c], a
    ldh a, [$ffb0]

Call_00f_63d9:
    dec c
    ld a, a
    sub a
    sbc [hl]
    or $93
    db $e4
    sbc h
    ldh [$ffa1], a
    inc c
    ld a, a
    rst RST_28
    ldh [$ff7f], a
    cp l
    ret nz

    db $dd
    or e
    xor a
    ld b, h
    db $ec
    inc e
    db $fd
    ld a, a
    rst RST_28
    ld h, e
    di
    dec c
    ld a, a
    sbc d
    ei
    sbc a
    sub e
    db $e4
    sbc h
    ldh [$ff7f], a
    sub e
    ldh [rNR21], a
    sub d
    and c
    inc c
    ld a, a
    sbc d
    db $fd
    sub [hl]
    sub d
    ld a, a
    db $ec
    ldh [$fff8], a
    jp hl


    ld a, a
    ldh [$ff92], a
    xor $e9
    dec c
    ld a, a
    sub a
    adc a
    sub [hl]
    sbc c
    db $e4
    ld a, a
    push hl
    adc a
    ldh [$ffe9], a
    ld [$7f0c], a
    and h
    and h
    and h
    ld a, a
    ld [$9afd], a
    sub e
    jp hl


    ld a, a
    ld h, h
    sub e
    sub a
    or b
    dec c
    ld a, a
    sub e
    rst RST_30
    ld h, d
    sbc c
    ld sp, hl
    ld a, a
    ld c, e
    xor a
    or [hl]
    and h
    cp l
    jp hl


    dec c
    ld a, a
    and $8f
    sub a
    pop hl
    adc [hl]
    sub e
    and c
    inc c
    ld a, a
    and h
    and h
    and h
    ld a, a
    or c
    and h
    ld c, d
    db $dd
    db $db
    and h
    ld b, h
    jp hl


    dec c
    ld a, a
    jp nc, $d9a4

    ld c, [hl]
    xor a
    cp b
    cp l
    jp hl


    ld a, a
    push hl
    sub [hl]
    and $7f
    sub c
    adc a
    ldh [$ff0d], a
    ld a, a
    rla
    rra
    sub e
    jp hl


    ld a, a
    sub a
    adc [hl]
    sub e
    ld [$1c98], a
    adc [hl]
    sub e
    and c
    inc c
    ld a, a
    and h
    and h
    and h
    ld a, a
    ld [$9afd], a
    sub e
    xor $93
    xor $93
    or b
    dec c
    ld a, a
    sbc h
    ld sp, hl
    sbc h
    ldh [$ff7f], a
    inc e
    sub [hl]
    db $fd
    db $eb
    adc [hl]
    sub e
    and c
    inc c
    ld a, a
    sbc d
    jp hl


    add e
    db $e3
    db $fd
    or b
    ld a, a
    sbc e
    db $fd
    sbc d
    sub e
    and $fd
    jp hl


    dec c
    ld a, a
    db $eb
    db $e4
    ld hl, sp+$7f
    jp z, Jump_00f_43a4

    xor b
    db $dd
    jr c, jr_00f_64c8

    ld a, a
    sbc c
    sub d
    sbc e
    ldh [c], a
    and $7f
    db $e3
    sub d
    sbc h
    adc l
    ldh [c], a
    sbc h
    ldh [$ff9a], a
    db $e4
    ld h, e
    ld a, a
    inc e
    sbc c
    db $fd
    jp hl


jr_00f_64c8:
    dec c
    ld a, a
    sbc h
    db $fd
    sbc a
    sub e
    ld d, $7f
    sub c
    sub a
    rst RST_30
    sub [hl]
    db $e4
    push hl
    adc a
    ldh [$ffa1], a
    rst RST_18
    rst RST_38
    ld [hl], $c1
    xor h
    xor a
    and l
    and l
    and l
    adc d
    dec c
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    ldh [$ff92], a
    xor $9b
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    inc c
    sbc c
    sub d
    sbc e
    ldh [c], a
    ld [$917f], a
    push hl
    ldh [$ffe9], a
    ld a, a
    ld [$9ce5], a
    and $0d
    sub a
    adc [hl]
    sub e
    ldh a, [$ffb0]
    di
    pop hl
    ld a, a
    sbc a
    ld a, [$7fb0]
    di
    db $e4
    and $0d
    push af
    sub e
    sub [hl]
    sub d
    db $e4
    ld a, a
    sbc e
    ldh [c], a
    inc e
    db $fd
    and $e2
    sub d
    db $e3
    dec c
    db $e3
    adc a
    db $e3
    sub d
    db $e3
    sub a
    and $7f
    sbc a
    sub e
    sbc e
    sbc h
    ldh [$ffa1], a
    inc c
    sbc a
    jp hl


    sbc c
    adc a
    sub [hl]
    ld a, a
    sbc e
    rst RST_28
    dec de
    rst RST_28
    push hl
    sbc d
    db $e4
    ld d, $0d
    sub c
    sub [hl]
    ld sp, hl
    ldh a, [$ffe6]
    push hl
    adc a
    ldh [$ffa1], a
    inc c
    sbc h
    sub [hl]
    sbc h
    ld a, a
    sub e
    db $fd
    db $fc
    ld sp, hl
    sbc b
    ld a, a
    sub c
    push hl
    ldh [$ffe9], a
    dec c
    push hl
    rst RST_28
    sub h
    ld h, e
    ld a, a
    db $e4
    sub e
    ei
    sbc b
    sbc e
    ld a, [$7fe0]
    ld e, e
    cp l
    call nz, $16d9
    ldh a, [$ffe2]
    sub [hl]
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    ld e, e
    cp l
    call nz, $e6d9
    ld [$917f], a
    push hl
    ldh [$ffe9], a
    ld a, a
    sbc h
    di
    db $fd
    ld d, $0d
    ldh [c], a
    sub d
    db $e3
    sub d
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sub l
    rst RST_28
    sbc c
    and $7f
    sbc a
    jp hl


    ldh [$ffef], a
    ld [$9c7f], a
    ldh [$ff92], a
    jp hl


    dec c
    ld h, b
    db $fd
    sbc d
    db $fd
    db $e4
    ld a, a
    sub d
    adc a
    pop hl
    sbc h
    ldh [$ffe9], a
    ld h, b
    and l
    and l
    and l
    and c
    inc c
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
    and $f3
    dec c
    sub e
    ldh [rNR21], a
    sub d
    ld [$967f], a
    sub [hl]
    adc a
    ldh [rNR21], a
    ld a, a
    ld e, e
    cp l
    call nz, $e9d9
    dec c
    sbc c
    db $fd
    ld d, $7f
    sub c
    push hl
    ldh [$ffb0], a
    ld a, a
    sbc e
    ldh [c], a
    inc e
    db $fd
    ld [$e4fd], a
    sbc h
    db $e3
    sbc c
    adc a
    db $e3
    sub d
    ld h, d
    sbc c
    ldh [$ffa1], a
    inc c
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    db $eb
    db $e4
    ld hl, sp+$7f
    ld h, e
    db $fd
    sub a
    or d
    cp l
    and $0d
    sbc l
    db $fc
    rst RST_30
    push hl
    sbc b
    db $e3
    ld [$e57f], a
    rst RST_30
    push hl
    sbc b
    push hl
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld [hl], $c1
    xor h
    xor a
    and l
    and l
    and l
    adc d
    dec c
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    ldh [$ff92], a
    xor $9b
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    inc c
    sbc c
    sub d
    sub [hl]
    db $fd
    sub [hl]
    rst RST_30
    ld a, a
    ldh [$ff98], a
    sbc e
    db $fd
    jp hl


    ld a, a
    sbc h
    ldh [c], a
    di
    db $fd
    or b
    sbc e
    ld a, [$a1e0]
    inc c
    sbc h
    sub [hl]
    sbc h
    ld a, a
    sub a
    sub l
    sbc b
    jp hl


    push hl
    sub d
    ld a, a
    sub l
    db $e4
    sbc d
    and $0d
    sbc l
    inc e
    jp hl


    db $e4
    sub l
    adc a
    ldh [$ff7f], a
    db $ed
    db $fd
    db $e4
    sub e
    ld d, $0d
    ld h, e
    sub a
    ld sp, hl
    db $fc
    sbc c
    ld d, $e5
    sub d
    and c
    inc c
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    ldh [$ff60], a
    pop hl
    and $7f
    xor $1a
    sub [hl]
    db $fd
    sbc e
    ldh [c], a
    jp hl


    dec c
    di
    db $e4
    and $95
    sub [hl]
    ld a, [$a5e0]
    and l
    and l
    and c
    inc c
    sbc a
    sbc h
    db $e3
    ld a, a
    add hl, de
    ld h, h
    sbc b
    dec de
    sub d
    or b
    ld a, a
    sub e
    ldh [$ffe5], a
    sub [hl]
    adc a
    ldh [$ff0d], a
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    jp hl


    sbc d
    ld hl, sp-$17
    ld a, a
    inc e
    db $fd
    sbc [hl]
    sub d
    or b
    dec c
    ld l, l
    xor a
    ld b, h
    jp hl


    ld a, a
    sub e
    sub h
    ld h, e
    ld a, a
    sbc l
    ld a, [de]
    sbc e
    add sp, $6a
    dec c
    push hl
    rst RST_30
    push hl
    sbc b
    push hl
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sbc a
    jp hl


    sbc c
    adc a
    sub [hl]
    ld a, a
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    pop hl
    adc [hl]
    sub e
    sub h
    sub a
    dec c
    add c
    add b
    add sp, -$03
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
    and l
    and l
    and l
    sub c
    push hl
    ldh [$ffe6], a
    ld [$e37f], a
    ldh [c], a
    ld a, [de]
    sub e
    sbc h
    ld d, $0d
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
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
    sbc e
    ldh [c], a
    inc e
    db $fd
    db $e4
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
    db $ec
    ldh [$fff8], a
    ld d, $7f
    db $f4
    adc a
    ldh [$ffe9], a
    ld h, e
    ld [$e50d], a
    sub d
    db $e4
    sbc l
    ld a, [$7f6a]
    rla
    db $fc
    sbc b
    ld d, $7f
    sub c
    push hl
    ldh [$ffe6], a
    dec c
    sub [hl]
    sub [hl]
    ld sp, hl
    jp hl


    ld [$e47f], a
    sub e
    ld e, $fd
    jp hl


    sbc d
    db $e4
    ld h, b
    adc a
    ldh [$ffa1], a
    inc c
    sbc e
    rst RST_30
    and $7f
    cp h
    and h
    add hl, sp
    reti


    db $e4
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld d, $0d
    db $fc
    ld sp, hl
    sub [hl]
    adc a
    ldh [$ff7f], a
    push hl
    ld h, h
    jp hl


    ld a, a
    inc e
    adc [hl]
    sub e
    sub a
    adc [hl]
    sub e
    sub [hl]
    rst RST_30
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    sbc e
    sub d
    ld l, d
    db $fd
    and $7f
    sub [hl]
    sbc c
    rst RST_30
    ld a, [$0df9]
    sbc d
    db $e4
    and $7f
    push hl
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld [$99fd], a
    ldh [c], a
    ld [$de7f], a
    pop af
    sub a
    pop hl
    adc [hl]
    sub e
    sub h
    sub a
    rst RST_18
    inc c
    sub d
    adc a
    sbc h
    adc [hl]
    sub e
    ld a, a
    ld [$9292], a
    ei
    jp hl


    ld a, a
    sub [hl]
    ld l, l
    or b
    dec c
    ldh a, [$ffe2]
    ldh a, [c]
    push hl
    ld d, $f7
    ld a, a
    sbc b
    rst RST_30
    sbc e
    push hl
    sbc c
    ld a, [$0d6a]
    push hl
    rst RST_30
    push hl
    sbc b
    push hl
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sbc d
    ld a, [$7fea]
    ld h, b
    db $fd
    ld d, $fd
    cp c
    and h
    cp l
    ld h, b
    and c
    dec c
    sub [hl]
    db $f4
    sbc b
    jp hl


    ld a, a
    and $95
    sub d
    ld d, $a5
    and l
    and l
    and c
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

Call_00f_7f16:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00f_7fb0:
Jump_00f_7fb0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00f_7fd1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
