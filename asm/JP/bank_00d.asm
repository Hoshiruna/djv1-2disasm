; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    nop
    ld b, c
    rla
    ld b, c
    ld l, [hl]
    ld b, c
    ld a, b
    ld b, c
    adc e
    ld b, c
    or a
    ld b, c
    rst RST_10
    ld b, c
    ld hl, sp+$41
    inc c
    ld b, d
    rla
    ld b, d
    add hl, hl
    ld b, d
    ld c, [hl]
    ld b, d
    ld e, b
    ld b, d
    ld h, h
    ld b, d
    sbc a
    ld b, d
    call nz, $d742
    ld b, d
    rst RST_28
    ld b, d
    add hl, de
    ld b, e
    add hl, hl
    ld b, e
    dec sp
    ld b, e
    ld c, c
    ld b, e
    ld d, e
    ld b, e
    halt
    ld b, e
    and d
    ld b, e
    or d
    ld b, e
    push bc
    ld b, e
    sbc $43
    ld bc, $0744
    ld b, h
    ld e, $44
    jp $de44


    ld b, h
    xor $44
    rst RST_30
    ld b, h
    ld bc, $1d45
    ld b, l
    dec sp
    ld b, l
    ld e, d
    ld b, l
    ld a, b
    ld b, l
    or $45
    ld l, d
    ld b, [hl]
    sub [hl]
    ld b, [hl]
    and c
    ld b, [hl]
    or l
    ld b, [hl]
    jp $d346


    ld b, [hl]
    rst RST_20
    ld b, [hl]
    dec bc
    ld b, a
    add hl, hl
    ld b, a
    ld b, b
    ld b, a
    ld c, [hl]
    ld b, a
    ld h, e
    ld b, a
    ld a, a
    ld b, a
    adc c
    ld b, a
    cp a
    ld b, a
    nop
    ld c, b
    inc c
    ld c, b
    ld a, [de]
    ld c, b
    ld b, e
    ld c, b
    add [hl]
    ld c, b
    sbc l
    ld c, b
    or $48
    dec e
    ld c, c
    ld h, c
    ld c, c
    add d
    ld c, c
    sbc [hl]
    ld c, c
    or c
    ld c, c
    db $dd
    ld c, c
    ld de, $d34a
    ld c, d
    ld l, $4b
    ld a, b
    ld c, e
    or b
    ld c, e
    rst RST_08
    ld c, e
    dec b
    ld c, h
    jr z, jr_00d_40e6

    ld d, l
    ld c, h
    ld l, [hl]
    ld c, h
    add [hl]
    ld c, h
    sbc b
    ld c, h
    and d
    ld c, h
    or h
    ld c, h
    ldh a, [c]
    ld c, h
    ld c, $4d
    daa
    ld c, l
    ld a, [hl-]
    ld c, l
    ld c, d
    ld c, l
    ld e, e
    ld c, l
    ld [hl], b
    ld c, l
    sub c
    ld c, l
    or c
    ld c, l
    ld [hl], b
    ld c, [hl]
    rst RST_00
    ld c, [hl]
    ld l, h
    ld c, a
    add c
    ld c, a
    push hl
    ld c, a
    ld c, a
    ld d, b
    adc e
    ld d, b
    or l
    ld d, b
    ld h, $51
    ld h, l
    ld d, c
    ld a, [bc]
    ld d, d
    inc sp
    ld d, d
    ld e, c
    ld d, d
    ld l, e
    ld d, d
    sub [hl]
    ld d, d
    or a
    ld d, d
    and $52
    rst RST_38
    ld d, d
    ld [$3b53], sp
    ld d, e
    ld h, h
    ld d, e
    ld [hl], d
    ld d, e
    adc l
    ld d, e

jr_00d_40e6:
    xor c
    ld d, e
    cp c
    ld d, e
    jr jr_00d_4140

    jr nc, jr_00d_4142

    ld b, b
    ld d, h
    ld d, h
    ld d, h
    xor a
    ld d, h
    ld sp, hl
    ld d, h
    ld [hl+], a
    ld d, l
    ld h, l
    ld d, l
    add c
    ld d, l
    db $eb
    ld d, l
    db $eb
    ld d, l
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sub a
    ld h, b
    and c
    dec c
    cp b
    cp l
    ret c

    ld [$ea7f], a
    sub d
    adc a
    db $e3
    sub d
    push hl
    sub d
    and c
    rst RST_38
    sub c
    adc a
    adc d
    adc d
    adc d
    dec c
    pop hl
    rst RST_28
    ldh a, [$fffa]
    jp hl


    ld a, a
    sub l
    db $e4
    sbc d
    ld d, $7f
    ldh [c], a
    sbc b
    sub h
    and $0d
    sub e
    ldh [c], a
    ld l, h
    sbc [hl]
    and $a5
    and l
    and l
    adc e
    inc c
    sub e
    ld a, [de]
    sub [hl]
    push hl
    sub d
    and l
    and l
    and l
    sbc h

jr_00d_4140:
    adc a
    ld a, a

jr_00d_4142:
    sbc h
    db $fd
    ld h, e
    sub d
    ld sp, hl
    adc d
    inc c
    and l
    and l
    and l
    sub l
    db $f4
    adc e
    dec c
    push hl
    and $96
    jp hl


    ld a, a
    sub l
    di
    ldh a, [$ff63]
    ld a, a
    ld e, [hl]
    cp c
    xor a
    call nz, Call_000_0de9
    sub [hl]
    ldh [$ffe1], a
    ld d, $7f
    sub [hl]
    db $fc
    adc a
    db $e3
    sub d
    ld sp, hl
    rra
    and c
    rst RST_38
    ld l, l
    db $dd
    jp nz, Jump_00d_7fe9

    push hl
    sub [hl]
    ld h, b
    and c
    rst RST_38
    inc e
    adc l
    db $fc
    sub a
    ld h, b
    and c
    dec c
    cp d
    and h
    ld b, h
    ld d, $7f
    sub a
    ld a, [$92e3]
    ld sp, hl
    adc d
    rst RST_38
    sub [hl]
    db $fc
    sub d
    ldh [$ff7f], a
    pop hl
    ld d, $7f
    sub d
    pop hl
    ldh a, [c]
    db $fd
    and $0d
    db $eb
    ei
    ld d, $8f
    db $e3
    sub d
    ld sp, hl
    ld a, a
    ldh [c], a
    sbc b
    sub h
    ld h, b
    and c
    inc c
    and l
    and l
    and l
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
    ld b, b
    or d
    call nc, $9cd9
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
    dec c
    push hl
    and $16
    ld a, a
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    db $fd
    ld h, b
    ei
    sub e
    adc e
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
    dec c
    inc e
    adc l
    db $fc
    sub a
    jp hl


    ld a, a
    cp d
    and h
    ld b, h
    ld d, $7f
    sub a
    ld a, [$92e3]
    ld sp, hl
    adc d
    rst RST_38
    db $eb
    inc e
    adc [hl]
    sub e
    sub [hl]
    sub d
    ld h, b
    db $fd
    and $7f
    ldh [c], a
    sub e
    inc e
    ld sp, hl
    dec c
    rst RST_08
    ld b, h
    ld h, b
    and c
    rst RST_38
    ldh [$ff60], a
    jp hl


    ld a, a
    or h
    db $dd
    ld e, e
    jp nz, $a160

    rst RST_38
    call z, $dddb
    call nz, Call_00d_7fe4
    sbc h
    ld sp, hl
    sbc h
    db $e3
    sub c
    ld sp, hl
    ld a, a
    or [hl]
    scf
    ld h, b
    and c
    rst RST_38
    push hl
    and $f3
    ld a, a
    sbc h
    ld sp, hl
    sbc h
    ld d, $7f
    ldh [c], a
    sub d
    db $e3
    sub d
    push hl
    sub d
    dec c
    or [hl]
    scf
    ld h, b
    and c
    dec c
    sub d
    adc a
    ldh [$ff92], a
    ld a, a
    ld h, h
    sbc d
    jp hl


    ld a, a
    or [hl]
    scf
    ld h, b
    ei
    sub e
    adc e
    rst RST_38
    rst RST_08
    add $d7
    adc $d9
    ld b, b
    and h
    ld h, b
    and c
    rst RST_38
    sbc d
    di
    jp hl


    sub d
    ld a, [$7fe9]
    ld [$609a], a
    and c
    rst RST_38
    sbc h
    adc h
    sbc b
    or $93
    sbc h
    adc [hl]
    ld h, b
    and c
    inc c
    or h
    and h
    cp l
    and l
    jp z, Jump_00d_43a4

    xor b
    db $dd
    jr c, jr_00d_428f

    dec c
    inc a
    xor [hl]
    and h
    and l
    cp h
    and h
    add hl, sp
    reti


    and $7f
    add c
    add b
    add b
    add b
    ld b, h
    reti


    jp hl


    dec c
    sbc h
    adc h
    adc a

jr_00d_428f:
    sub a
    db $fd
    or b
    ld a, a
    sbc h
    ldh [$ffe4], a
    ld a, a
    sbc h
    ld sp, hl
    sbc h
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    pop hl
    adc a
    adc d
    adc d
    dec c
    sub c
    sub [hl]
    push hl
    sub d
    adc d
    inc c
    ld h, h
    sub e
    db $f4
    rst RST_30
    ld a, a
    sub c
    db $fd
    sbc h
    adc [hl]
    sub e
    ld a, a
    ld l, d
    db $fd
    ld a, [de]
    sub e
    ld d, $0d
    db $eb
    ldh [c], a
    or $93
    rst RST_30
    sbc h
    sub d
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
    db $f4
    adc a
    ldh [$ff8a], a
    dec c
    sub c
    sub d
    ldh [$ff1f], a
    adc d
    rst RST_38
    ld b, b
    jp nc, Jump_00d_7f60

    sub c
    sub [hl]
    push hl
    sub d
    and c
    dec c
    ld l, d
    db $fd
    ld a, [de]
    sub e
    ld d, $7f
    pop hl
    ld d, $93
    rst RST_30
    sbc h
    sub d
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
    sub l
    adc a
    adc d
    dec c
    db $e3
    ld a, [de]
    ldh [$ff94], a
    ld d, $7f
    sub c
    adc a
    ldh [$ff1f], a
    adc d
    inc c
    or [hl]
    scf
    or b
    ld a, a
    ldh [c], a
    sub [hl]
    adc a
    db $e3
    ld a, a
    ld b, h
    or c
    or b
    ld a, a
    sub c
    sbc c
    ldh [$ffa1], a
    rst RST_38
    push hl
    sub [hl]
    and $7f
    sub [hl]
    ldh a, [rNR21]
    ld a, a
    ld [$fd9b], a
    ld h, e
    sub c
    ld sp, hl
    and c
    rst RST_38
    sbc h
    ldh [$ff92], a
    jp hl


    sub c
    ld sp, hl
    ld a, a
    or l
    call z, $bda8
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    rst RST_38
    sub [hl]
    ld l, l
    sub a
    db $fd
    sbc d
    ld [$917f], a
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ld l, l
    db $dd
    jp nz, Jump_00d_7fe9

    or a
    and h
    ld h, b
    and c
    rst RST_38
    cp h
    and h
    add hl, sp
    reti


    jp hl


    ld a, a
    sbc h
    ldh [$ff92], a
    ld h, b
    and c
    dec c
    and l
    and l
    and l
    sub c
    rst RST_28
    ld hl, sp+$7f
    sub a
    di
    pop hl
    jp hl


    dec c
    sub d
    sub d
    di
    jp hl


    inc e
    adc h
    push hl
    sub d
    push hl
    and c
    rst RST_38
    sub e
    sbc c
    ldh [c], a
    sbc c
    sub [hl]
    ld a, a
    db $eb
    sbc h
    adc [hl]
    jp hl


    ld a, a
    db $ed
    db $f4
    rst RST_30
    sbc h
    sub d
    and c
    dec c
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


    ld a, a
    and $95
    sub d
    ld d, $0d
    ldh [$ff60], a
    or $8f
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    rst RST_08
    ld b, h

Jump_00d_43a4:
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
    ldh [c], a
    sbc b
    sub h
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
    cp l
    ret nz

    db $dd
    ld b, b
    and h
    ld b, h
    push hl
    ld a, a
    sub [hl]
    ldh [$ffe1], a
    or b
    sbc h
    ldh [$ff0d], a
    ld h, e
    db $fd
    sub a
    cp l
    ret nz

    db $dd
    ld b, h
    ld h, b
    and c
    rst RST_38
    ret nz

    or d
    ld e, h
    rst RST_10
    or d
    ret nz

    and h
    ld h, b
    and c
    dec c
    sub e
    pop hl
    ld h, b
    sbc h
    ldh [$ff7f], a
    ld l, h
    db $fd
    sbc h
    adc [hl]
    ld [$ef7f], a
    db $fc
    ld hl, sp-$1a
    dec c
    ldh a, [$ff91]
    ldh [$fff7], a
    push hl
    sub d
    and c
    rst RST_38
    ld h, e
    db $fd
    db $fc
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
    ld a, a
    ldh [$ff60], a
    jp hl


    dec c
    db $ec
    sub e
    db $e4
    sub e
    ld h, b
    and c
    rst RST_38
    ld b, h
    cp b
    ret nz

    and h
    and l
    ld c, h
    db $db
    ld b, e
    xor b
    ld d, $7f
    inc a
    xor [hl]
    and h
    jp hl


    ld c, d
    and h
    and $91
    db $e3
    db $e3
    ld a, a
    sub [hl]
    sub d
    ldh [$fff3], a
    jp hl


    ld h, b
    and c
    inc c
    sbc $a4
    and h
    and h
    ld a, a
    sbc [hl]
    sub d
    sub a
    adc l
    sub e
    sbc h
    adc [hl]
    ld a, a
    and h
    and h
    and h
    inc c
    ld a, a
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sub a
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and e
    add c
    add b
    dec c
    ld a, a
    cp b
    cp l
    ret c

    ld a, a
    ld a, l
    db $dd
    ret nz

    cp a
    and h
    ld b, b
    and h
    and h
    and h
    and e
    add l
    add [hl]
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    jp nc, $da44

    inc a
    db $dd
    and h
    and h
    and h
    and h
    and e
    add d
    add [hl]
    dec c
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld b, b
    or d
    cp e
    ret


    and h
    reti


    and h
    and h
    and h
    and e
    add h
    add b
    inc c
    ld a, a
    ld a, [de]
    sub e
    sbc c
    sub d
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and e
    add c
    add e
    add d
    dec c
    dec c
    ld a, a
    or c
    ld b, h
    jp c, $a4bd

    and h
    and h
    dec c
    ld a, a
    ld a, a
    ld a, a
    cp h
    xor h
    and h
    rst RST_08
    db $dd
    and l
    cp h
    or [hl]
    ld a, [hl-]
    ld a, a
    adc c
    add e
    add h
    rst RST_18
    rst RST_38
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
    sub l
    di
    sub d
    ld h, b
    sbc [hl]
    push hl
    sub d
    adc d
    rst RST_38
    db $eb
    sbc h
    adc [hl]
    jp hl


    ld a, a
    or l
    call z, $bda8
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    rst RST_38
    sub c
    sub [hl]
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    sbc h
    rst RST_28
    rst RST_30
    push hl
    sub d
    or $93
    ld h, b
    and c

jr_00d_4500:
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
    ld c, [hl]
    cp b
    cp e
    and h
    jp hl


    ld a, a
    ld e, [hl]
    cp l
    ret nz

    and h
    ld h, b
    and c
    dec c
    and l
    and l
    and l
    sbc $44
    xor a
    jr c, jr_00d_4500

    or e
    cp l
    and l
    ret c

    ld c, d
    and h
    rst RST_18
    adc e
    rst RST_38
    ld c, [hl]
    cp b
    cp e
    and h
    jp hl


    ld a, a
    ld e, [hl]
    cp l
    ret nz

    and h
    ld h, b

jr_00d_4546:
    and c
    dec c
    and l
    and l
    and l
    sbc $5a
    xor a
    cp b
    and l
    rst RST_08
    cp b
    call z, $a4ab

jr_00d_4555:
    jp c, $dfdd

    adc e
    rst RST_38
    ld c, [hl]
    cp b
    cp e
    and h
    jp hl


    ld a, a
    ld e, [hl]
    cp l
    ret nz

    and h
    ld h, b
    and c
    dec c

jr_00d_4567:
    and l
    and l
    and l
    sbc $b4
    and h
    cp l
    and l
    jp z, Jump_00d_43a4

    xor b
    db $dd
    jr c, jr_00d_4555

    adc e
    rst RST_38
    sub c
    adc a
    adc d
    dec c
    sbc d
    ld a, [$8aea]
    inc c
    sbc e
    adc a
    sub a
    ld a, a
    or [hl]
    ld [hl], $d0
    ld h, e
    ldh a, [$ffe0]
    ld a, a
    sub l

jr_00d_458d:
    ld a, [$0de9]
    sub [hl]
    sub l
    ld h, b
    and c
    inc c
    and l
    and l
    and l
    or h
    and h
    cp l
    and l
    and l
    and l
    jp z, Jump_00d_43a4

    xor b
    db $dd
    jr c, jr_00d_4546

    dec c
    sub l
    ld a, [$7fe9]
    push hl
    rst RST_28
    sub h
    sub [hl]
    adc e
    inc c
    jr c, jr_00d_458d

    and h
    ld c, h
    or b
    ld a, a
    ld [$e3f2], a
    dec c
    call z, $b2a7
    jp $dda8


    jr c, jr_00d_4567

    ld e, [hl]
    and h
    dec a
    or b
    dec c
    db $e4
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    sub l
    ld a, [$7fea]
    ld c, [hl]
    cp b
    cp e
    and h
    push hl
    db $fd
    ld h, b
    ei
    sub e
    sub [hl]
    adc e
    dec c
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
    and l
    and l
    and l
    db $fc
    sub [hl]

jr_00d_45f1:
    rst RST_30
    push hl
    sub d
    adc d
    rst RST_38
    ld c, [hl]
    cp b
    cp e
    and h
    and l
    and l
    and l
    or h
    and h
    cp l
    and l
    jp z, Jump_00d_43a4

    xor b
    db $dd
    jr c, jr_00d_45f1

    ld e, [hl]
    cp l
    ret nz

    and h
    ld h, b
    and c
    inc c
    and l
    and l
    and l
    sbc a
    sub e
    ld h, b
    adc d
    dec c
    sub l
    di
    sub d
    ld h, b
    sbc h
    ldh [$ff1f], a
    adc d
    inc c
    sub l
    ld a, [$7fea]
    pop af
    sub [hl]
    sbc h
    ld a, a
    ld c, [hl]
    cp b
    cp e
    and h
    ld h, b
    adc a
    ldh [$ffa1], a
    dec c
    cp h
    and h
    add hl, sp
    reti


    db $e4
    sub d
    sub e
    ld a, a
    sub l
    db $e4
    sbc d
    ld d, $0d
    rst RST_08
    ret z

    and h
    inc a
    xor h
    and h
    ld h, e
    and l
    and l
    and l
    and c
    inc c
    db $f4
    ldh [c], a
    jp hl


    sbc d
    db $e4
    or b
    ld a, a
    sub l
    di
    sub d
    ld h, b
    sbc l
    db $e4
    ld a, a
    sub a
    adc l
    sub e
    and $92
    sub [hl]
    ld hl, sp+$16
    ld a, a
    sbc d
    ldh a, [$ff91]
    add hl, de
    db $e3
    sub a
    ldh [$ffa1], a
    rst RST_38
    ld a, [hl-]
    and h
    xor a
    db $e4
    ld a, a
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
    sub [hl]
    ld l, l
    ld d, $7f
    cp l
    rst RST_10
    or d
    ld b, h
    sbc h
    db $e3
    ld a, a
    or h
    jp c, $a46d

    ret nz

    or b
    dec c
    sub [hl]
    sbc b
    sbc h
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
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
    rst RST_38
    add e
    sub [hl]
    sub d
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
    ld h, b
    and c
    rst RST_38
    db $ed
    db $f4
    and $7f
    ldh [c], a
    sub e
    inc e
    ld sp, hl
    ld a, a
    rst RST_08
    ld b, h
    ld h, b
    and c
    rst RST_38
    sub [hl]
    push hl
    ld hl, sp+$7f
    sbc e
    ld l, e
    ldh [c], a
    sub d
    db $e3
    sub d
    ld sp, hl
    or $93
    ld h, b
    and c
    rst RST_38
    add d
    sub [hl]
    sub d
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
    ld h, b
    and c
    rst RST_38
    sub [hl]
    sub d
    ld h, b
    db $fd
    ld d, $7f
    db $e4
    pop hl
    adc l
    sub e
    ld h, e
    ld a, a
    sub a
    ld a, [$92e3]
    ld sp, hl
    and c
    db $e4
    ld l, e
    sub l
    ld hl, sp-$07
    db $e4
    ld a, a
    ei
    inc e
    and $7f
    ld h, e
    ld sp, hl
    or $93
    ld h, b
    and c
    rst RST_38
    db $ed
    db $f4
    and $7f
    ldh [c], a
    sub e
    inc e
    ld sp, hl
    ld a, a
    rst RST_08
    ld b, h
    ld h, b
    and c
    dec c
    db $ed
    db $f4
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld [$f67f], a
    sbc b
    ldh a, [$ff94]
    push hl
    sub d
    and c
    rst RST_38
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
    dec c
    ld h, b
    ld a, [$7ff3]
    sub d
    push hl
    sub d
    and c
    rst RST_38
    ld c, d
    and h
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
    sbc d
    ld a, [$1c92]
    adc [hl]
    sub e
    ld [$967f], a
    add sp, -$17
    dec c
    pop de
    ld b, b
    ld h, d
    sub [hl]
    sub d
    ld h, b
    adc d
    adc d
    rst RST_38
    sbc b
    ei
    sub d
    ld a, a
    jp nc, $bed9

    ld b, e
    cp l
    ld a, a
    ld l, l
    db $dd
    jp nz, $a160

    dec c
    ld h, b
    ld a, [$7ff3]
    jp hl


    adc a
    db $e3
    sub d
    push hl
    sub d
    and c
    rst RST_38
    ld l, l
    db $dd
    jp nz, Jump_00d_7fe9

    ld b, h
    or c
    ld h, b
    and c
    rst RST_38
    sub e
    adc a
    and l
    and l
    and l
    adc d
    inc c
    pop af
    adc a
    ld a, a
    pop af
    add sp, $16
    and l
    and l
    and l
    adc d
    dec c
    sbc h
    ldh a, [c]
    ldh [c], a
    sbc c
    rst RST_30
    ld a, [$8af9]
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    dec c
    ld [$8fa4], a
    adc d
    dec c
    sbc h
    rst RST_20
    sub [hl]
    db $e4
    ld a, a
    sub l
    di
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    pop de
    pop de
    adc e
    dec c
    sub [hl]
    rst RST_30
    ld h, b
    inc e
    adc l
    sub e
    ld d, $7f
    sub c
    ldh [c], a
    sbc b
    push hl
    adc a
    db $e3
    dec c
    sub a
    ldh [$ff1f], a
    adc d
    inc c
    and l
    and l
    and l
    sub d
    sub d
    ld a, a
    sub a
    ld l, h
    db $fd
    ld h, b
    and c
    dec c
    pop hl
    adc [hl]
    sub e
    ld h, h
    ld a, a
    sbc e
    sbc c
    or b
    ld a, a
    jp hl


    db $fd
    ld h, b
    db $e4
    sub a
    jp hl


    or $93
    and $5e
    and h
    xor a
    db $e4
    ld a, a
    sbc h
    db $e3
    sbc b
    ld sp, hl
    and c
    rst RST_38
    sbc [hl]
    rst RST_28
    sub d
    ld a, a
    ei
    inc e
    jp hl


    or $93
    ld h, b
    and c
    rst RST_38
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
    and l
    and l
    and l
    or [hl]
    pop bc
    xor a
    adc d
    inc c
    db $f4
    adc a
    ldh [$ff8a], a
    dec c
    ld b, h
    or c
    ld d, $7f
    sub c
    sub d
    ldh [$ff1f], a
    and c
    dec c
    sbc d
    ld a, [$7f16]
    ld l, l
    db $dd
    jp nz, Jump_00d_7fe9

    or a
    and h
    ld h, b
    adc a
    ldh [$fffd], a
    ld h, b
    and c
    rst RST_38
    sub l
    db $f4
    adc e
    dec c
    add hl, de
    sbc l
    sub d
    ld h, h
    sub e
    and $7f
    ldh [c], a
    sub d
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa1], a
    inc c
    ld [$ea8f], a
    sub c
    sub c
    sub c
    and h
    db $fd
    and l
    and l
    and l
    and c
    dec c
    ld h, h
    sub e
    di
    ld a, a
    sbc d
    sbc d
    ld [$b67f], a
    inc a
    ret


    jp hl


    ld a, a
    sub a
    adc h
    sbc b
    jp hl


    dec c
    ldh [$fff2], a
    jp hl


    ld a, a
    and $19
    ldh a, [$ffe1]
    rst RST_30
    sbc h
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    rst RST_08
    db $dd
    adc $a4
    reti


    ld h, b
    and c
    dec c
    sbc h
    ldh [$ffea], a
    ld a, a
    add hl, de
    sbc l
    sub d
    ld h, h
    sub e
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    sub e
    ld hl, sp+$6a
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
    inc c
    or $16
    ld a, a
    db $ec
    sbc c
    db $e3
    sub d
    ld sp, hl
    and $f3
    ld a, a
    sub [hl]
    sub [hl]
    db $fc
    rst RST_30
    dec e
    dec c
    sbc h
    adc [hl]
    sub e
    ld l, d
    sub d
    or b
    ld a, a
    sbc h
    db $e3
    sub d
    ld sp, hl
    ld a, a
    sub l
    db $e4
    sbc d
    ld d, $0d
    sub d
    ld sp, hl
    and c
    inc c
    db $e3
    ld d, $96
    ld hl, sp-$1a
    ld a, a
    push hl
    ld sp, hl
    or $93
    push hl
    sbc d
    db $e4
    ld d, $0d
    sbc h
    db $fd
    ld l, h
    db $fd
    and $7f
    ld h, e
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
    sub e
    ld hl, sp-$0d
    jp hl


    jp hl


    ld a, a
    sbc h
    db $fd
    ld l, h
    db $fd
    ld h, b
    and c
    dec c
    sub [hl]
    adc a
    db $e3
    and $7f
    or $f1
    db $e4
    ld a, a
    ldh a, [$ff9e]
    jp hl


    sub l
    db $e4
    sbc d
    and $0d
    sub l
    sbc d
    rst RST_30
    ld a, [$939f]
    ld h, b
    and c
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    jp hl


    ld a, a
    ldh a, [$ff60]
    sbc h
    ld [$a5a5], a
    and l
    inc c
    sbc $9c
    db $fd
    inc e
    adc l
    db $fc
    db $fd
    and $7f
    and $ee

jr_00d_4936:
    db $fd
    jr jr_00d_4936

    jp hl


    dec c
    ld a, a
    sub a
    sbc h
    adc l
    sub e
    sbc d
    sub e
    add hl, de
    sub a
    adc d
    adc d
    adc d
    rst RST_18
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
    ld a, [$eae6]
    dec c
    sub [hl]
    db $fd
    sbc c
    sub d
    push hl
    sbc e
    sbc a
    sub e
    ld h, b
    and c
    rst RST_38
    sbc b
    rst RST_30
    sbc b
    db $e3
    ld a, a
    sub [hl]
    sub l
    ld [$f67f], a
    sbc b
    ldh a, [$ff94]
    push hl
    sub d
    ld d, $0d
    ld h, h
    sub e
    di
    ld a, a
    db $fc
    sub [hl]
    sub d
    ld a, a
    sub l
    db $e4
    sbc d
    rst RST_30
    sbc h
    sub d
    and c
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    sub e
    ld hl, sp+$6a
    ld h, b
    and c
    dec c
    sub e
    sbc l
    rla
    ldh [$ffe5], a
    sub d
    ld a, a
    sub d
    ldh [rOCPS], a
    ld hl, sp-$17
    ld a, a
    sbc d
    db $f4
    ld h, b
    and c
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    sub e
    ld hl, sp+$6a
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
    sbc $92
    pop hl
    ld l, h
    ld a, a
    add d
    add l
    cp [hl]
    db $dd
    call nz, $f660
    adc d
    dec c
    ld a, a
    sbc h
    ldh [rNR21], a
    db $fc
    jp hl


    ld a, a
    sub d
    pop hl
    ld l, d
    db $fd
    ld a, a
    ldh a, [rNR22]
    ld [$969c], a
    rst RST_30
    ld a, a
    db $e4
    adc a
    db $e3
    sbc b
    ld h, b
    sbc e
    sub d
    add sp, -$5f
    rst RST_18
    rst RST_38
    sbc $64
    sub e
    di
    ld a, a
    sub c
    ld hl, sp+$16
    db $e4
    sub e
    adc d
    dec c
    ld a, a
    add d
    add l
    cp [hl]
    db $dd
    call nz, $927f
    ldh [$ff60], a
    sub a
    rst RST_28
    sbc l
    and c
    rst RST_18
    inc c
    sbc h
    db $fd
    ld l, h
    db $fd
    sub e
    ld hl, sp-$16
    ld a, a
    add hl, de
    db $fd
    sub a
    push hl
    ld a, a
    sbc d
    sub h
    ld h, e
    dec c
    sbc a
    sub e
    sub d
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc $96
    adc a
    db $e3
    sbc b
    ld a, [$7fe0]
    sub l
    ld a, [$e692]
    ld a, a
    sub d
    sub d
    dec c
    ld a, a
    inc e
    adc [hl]
    sub e
    xor $93
    or b
    ld a, a
    sub l
    sbc h
    sub h
    db $e3
    sub c
    add hl, de
    ld sp, hl
    or $a1
    inc c
    ld a, a
    sub d
    rst RST_28
    sbc h
    ld d, $e0
    ld a, a
    sbc d
    sbc d
    and $7f
    sbc c
    sub d
    sbc e
    ldh [c], a
    ld d, $0d
    ld a, a
    sub a
    ldh [$fffd], a
    ld h, b
    and c
    inc c
    ld a, a
    push hl
    db $fd
    ld h, e
    di
    ld a, a
    db $fc
    sub [hl]
    sub d
    sub l
    db $fd
    push hl
    sub [hl]
    rst RST_30
    dec c
    ld a, a
    sub a
    ldh a, [$ff8e]
    sub e
    push hl
    ld a, a
    inc e
    sbc c
    db $fd
    or b
    ld a, a
    ldh a, [$ffe0]
    db $e4
    sub d
    sub e
    dec c
    ld a, a
    ldh [c], a
    sub e
    xor $93
    ld d, $7f
    sub c
    adc a
    ldh [$fff7], a
    sbc h
    sub d
    and c
    inc c
    ld a, a
    db $f4
    ldh [c], a
    rst RST_30
    ld [$917f], a
    db $fd
    ldh [$ffe6], a
    ld a, a
    sbc a
    adc a
    sbc b
    ld hl, sp-$1b
    dec c
    ld a, a
    ld [$e6fd], a
    db $fd
    jp hl


    ld a, a
    and $fd
    sbc a
    sub e
    ld d, $97
    or b
    dec c
    ld a, a
    di
    adc a
    db $e3
    ldh [$fff6], a
    and c
    inc c
    ld a, a
    or $99
    sub d
    push hl
    ld a, a
    sub l
    sbc [hl]
    db $fc
    sub [hl]
    di
    ld a, a
    sbc h
    ld a, [$92e5]
    sbc c
    ld h, h
    ld a, a
    sbc d
    jp hl


    sub c
    ldh [$fff8], a
    or b
    ld a, a
    sub e
    ei
    ldh [c], a
    sub [hl]
    push hl
    sub d
    xor $93
    ld d, $0d
    ld a, a
    sub d
    sub d
    db $e4
    ld a, a
    sub l
    di
    sub e

jr_00d_4acf:
    or $8a
    rst RST_18
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    sub e
    ld hl, sp-$50
    ld a, a
    ld e, e
    cp l
    call nz, Call_00d_63d9
    ld a, a
    sub e
    adc a
    ldh [$ffa1], a
    inc c
    sbc l
    jr jr_00d_4acf

    ld a, a
    sbc c
    sub d
    sbc e
    ldh [c], a
    ld d, $7f
    sub [hl]
    sbc c
    ldh [c], a
    sbc c
    ldh [$ffa1], a
    dec c
    inc e
    adc l
    sub e
    sbc [hl]
    sub d
    or b
    ld a, a
    sub a
    sub d
    ldh [$fff7], a
    sbc h
    sub d
    and c
    inc c
    and l
    and l
    and l
    sub c
    sbc l
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
    and $ea
    sub l
    ld a, [$7fe9]
    push hl
    rst RST_28
    sub h
    ld d, $7f
    ld h, e
    ld sp, hl
    sbc d
    db $e4
    and $0d
    push hl
    ld sp, hl
    ld h, b
    ei
    sub e
    and c
    rst RST_38
    sbc h
    db $fd
    ld l, h
    db $fd
    sub e
    ld hl, sp-$16
    ld a, a
    sbc d
    sub h
    or b
    ld a, a
    db $eb
    sbc a
    ldh a, [c]
    db $e3
    dec c
    sub l
    ld a, [$7fe6]
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $ef
    ld h, b
    ld a, a
    or e
    db $db
    or e
    db $db
    ld a, a
    sbc h
    db $e3
    sub d
    ld sp, hl
    jp hl


    sub [hl]
    sub d
    and c
    dec c
    ld a, a
    sbc e
    adc a
    sbc e
    db $e4
    ld a, a
    sbc l
    ld d, $e0
    or b
    ld a, a
    sub [hl]
    sbc b
    sbc h
    ldh [$ffee], a
    sub e
    ld d, $7f
    sub d
    sub d
    db $e4
    ld a, a
    sub l
    di
    sub e
    or $8a
    rst RST_18
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$f27f], a
    db $fd
    ld h, h
    sub e
    sbc b
    sbc e
    sbc a
    sub e
    and $0d
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $4a
    or [hl]
    and $7f
    sbc h
    db $e3
    ld sp, hl
    db $fd
    ld h, e
    sbc l
    sub [hl]
    adc d
    dec c
    ld a, a
    sbc a
    ld a, [$7fea]
    sbc d
    sbc d
    jp hl


    ld a, a
    or c
    ld b, h
    jp c, Jump_00d_63bd

    sbc l
    ld e, $8a
    rst RST_18
    rst RST_38
    cp l
    or [hl]
    xor a
    adc d
    inc c
    sub c
    ldh [$fff7], a
    push hl
    sub d
    adc d
    dec c
    ldh [c], a
    sub [hl]
    ld a, [$92e3]
    db $e3
    ld a, a
    pop hl
    sub [hl]
    rst RST_30
    ld d, $7f
    ld [$f792], a
    push hl
    sub d
    adc d
    rst RST_38
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sbc h
    or $93
    db $e4
    ld a, a
    sbc l
    ld sp, hl
    db $e4
    ld a, a
    sub l
    db $e4
    sbc d
    ld [$afd1], a
    ld a, a
    db $e4
    sbc h
    ldh [$ff96], a
    sub l
    ld h, e
    ld a, a
    sub l
    ld a, [$0db0]
    and $f7
    ldh a, [$ffe2]
    sbc c
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    db $f4
    ldh a, [c]
    db $e3
    sub l
    sbc d
    sub e
    and l
    and l
    and l
    and c
    rst RST_38
    ld [hl], $dd
    cp h
    xor [hl]
    xor a
    ld e, h
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
    dec c
    sub l
    sub l
    sub a
    push hl
    ld a, a
    sub [hl]
    db $fd
    ld l, d
    db $fd
    ld d, $7f
    ld h, e
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sub l
    sub l
    sub a
    push hl
    ld a, a
    rst RST_08
    ld b, h
    ld h, b
    and c
    dec c
    di
    inc e
    ld d, $7f
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    ld e, e
    cp l
    call nz, $e4d9
    ld a, a
    ld h, b
    db $fd
    ld d, $fd
    or b
    dec c
    sub c
    ldh [c], a
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
    ld [hl], $dd
    cp h
    xor [hl]
    xor a
    ld e, h
    jp hl


    ld a, a
    sub d
    ld hl, sp+$18
    pop hl
    jp hl


    ld a, a
    ld b, h
    or c
    ld h, b
    and c
    db $e4
    inc e
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    db $fc
    ld hl, sp-$1c
    ld a, a
    sub l
    sub l
    sub a
    ldh a, [c]
    jp hl


    ld a, a
    ld e, [hl]
    ret c

    or $93
    sub a
    jp hl


    dec c
    ld a, [hl-]
    ret nc

    ld l, d
    sbc d
    ld h, b
    and c
    rst RST_38
    ld [hl], $dd
    cp h
    xor [hl]
    xor a
    ld e, h
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
    ld a, l
    or l
    ret c

    or c
    ld h, h
    sub l
    ld hl, sp+$60
    and c
    rst RST_38
    or $9a

jr_00d_4ca4:
    pop hl
    adc [hl]
    sub e
    jp hl


    ld a, a
    sub e
    sbc l
    jr jr_00d_4ca4

    sub d
    ld a, a
    ei
    inc e
    ld h, b
    and c
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$fc7f], a
    rst RST_30
    sub d
    push hl
    ld d, $f7
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
    dec c
    ld a, a
    add sp, $6e
    sbc c
    pop hl
    adc h
    sub d
    sbc c
    rst RST_28
    sbc [hl]
    db $fd
    or $8a
    dec c
    ld a, a
    sbc a
    ld a, [$7fea]
    sbc d
    sbc d
    jp hl


    ld a, a
    or c
    ld b, h
    jp c, Jump_00d_63bd

    sbc l
    or $8a
    rst RST_18
    rst RST_38
    db $eb
    inc e
    adc [hl]
    sub e
    sub [hl]
    sub d
    ld h, b
    db $fd
    ld h, b
    and c
    dec c
    ldh [$ff96], a
    sbc l
    rla
    db $e3
    ld a, a
    sub c
    ld d, $f9
    jp hl


    ld [$f17f], a
    ld hl, sp+$60
    and c
    rst RST_38
    ei
    inc e
    jp hl


    ld a, a
    ldh [c], a
    sub a
    sub c
    ldh [$fff8], a
    ld h, b
    and c
    dec c
    db $e4
    sub l
    ld hl, sp-$1a
    ld a, a
    ldh [c], a
    ld h, d
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ld l, l
    db $dd
    jp nz, Jump_00d_7fe9

    rst RST_08
    and h
    cp b
    jp hl


    ld a, a
    ldh [c], a
    sub d
    ldh [$ff7f], a
    or [hl]
    scf
    ld h, b
    and c
    rst RST_38
    sbc c
    sub d
    sbc e
    ldh [c], a
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
    sub [hl]
    ldh [$ffe1], a
    jp hl


    ld a, a
    ld d, $92
    db $e4
    sub e
    ld h, b
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
    ld b, h
    or c
    ld h, b
    and c
    dec c
    sbc h
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    and l
    and l
    and l
    ldh [$ffe6], a
    db $fd
    jp hl


    ld a, a
    ldh [$ff6d], a
    sub [hl]
    sbc c
    or b
    dec c
    sbc b
    pop hl
    and $9d
    ld sp, hl
    jp hl


    ld [$977f], a
    di
    pop hl
    ld d, $7f
    db $fc
    ld sp, hl
    sub d
    push hl
    adc d
    rst RST_38
    sub e
    db $fc
    and h
    adc a
    adc d
    inc c
    sub d
    sub a
    push hl
    ld hl, sp+$7f
    sbc d
    sub e
    inc e
    pop hl
    adc l
    sub e
    jp hl


    ld a, a
    sub c
    push hl
    and $0d
    sub l
    pop hl
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
    adc d
    dec c
    sub d
    sub a
    push hl
    ld hl, sp+$7f
    or $8f
    ld a, d
    rst RST_30
    sub d
    ld d, $7f
    db $e4
    sub l
    ld hl, sp-$50
    dec c
    sbc e
    sub h
    rla
    adc a
    ldh [$ffa1], a
    inc c
    sub [hl]
    sub l
    or b
    ld a, a
    pop hl
    sub [hl]
    ld h, d
    sbc c
    db $e3
    sub a
    db $e3
    ld a, a
    push hl
    and $96
    dec c
    ld c, h
    jp nz, $c24c

    db $e4
    ld a, a
    sub d
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    sbc $85
    add b
    cp [hl]
    db $dd
    call nz, $987f
    ld a, [$6afa]
    ld a, a
    db $e4
    ld l, e
    adc a
    sub a
    ld hl, sp-$17
    ld a, a
    inc e
    adc [hl]
    sub e
    xor $93
    or b
    ld a, a
    sub l
    sbc h
    sub h
    db $e3
    db $f4
    ld sp, hl
    or $8a
    inc c
    ld a, a
    sbc d
    ld a, [$7fea]
    sub c
    db $fd
    ldh [$ffe9], a
    ld a, a
    sub d
    jp hl


    pop hl
    and $0d
    ld a, a
    sub [hl]
    sub [hl]
    db $fc
    ld sp, hl
    sbc d
    db $e4
    push hl
    db $fd
    ld h, b
    ld e, $a1
    inc c
    ld a, a
    sub d
    jp hl


    pop hl
    ld d, $7f
    ldh [$ff9d], a
    sub [hl]
    ld sp, hl
    db $fd
    ld h, b
    sub [hl]
    rst RST_30
    dec c
    ld a, a
    db $f4
    sbc l
    sub d
    di
    db $fd
    ld h, b
    ei
    adc e
    dec c
    ld a, a
    db $ed
    adc a
    ld a, a
    db $ed
    adc a
    ld a, a
    db $ed
    adc a
    and l
    and l
    and l
    and c
    rst RST_18
    inc c
    sbc h
    sub a
    ld hl, sp-$1a
    ld a, a
    db $fc
    sbc c
    jp hl


    ld a, a
    db $fc
    sub [hl]
    rst RST_30
    push hl
    sub d
    sbc d
    db $e4
    or b
    dec c
    ldh [c], a
    ld l, h
    db $f4
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    push hl
    and $96
    ld a, a
    db $e4
    ld hl, sp-$1e
    sub [hl]
    ld a, [$f6e0]
    sub e
    push hl
    ld a, a
    sub [hl]
    sub l
    ld h, b
    and c
    sub e
    ldh [c], a
    ei
    push hl
    ld a, a
    ldh a, [c]
    db $e4
    ld a, a
    ldh a, [c]
    jp hl


    sbc h
    ldh [$ffe9], a
    ld a, a
    sbc b
    rst RST_28
    db $e4
    dec c
    add sp, $1c
    ld a, [$7fe0]
    sbc b
    pop hl
    and l
    and l
    and l
    and c
    inc c
    ld h, h
    sub e
    ldh a, [$ffe3]
    di
    ld a, a
    db $ec
    ldh [c], a
    sub e
    inc e
    adc h
    push hl
    sub d
    and c
    dec c
    sub c
    rst RST_28
    ld hl, sp+$7f
    sub [hl]
    sub [hl]
    db $fc
    rst RST_30
    push hl
    sub d
    xor $93
    ld d, $0d
    sub d
    sub d
    ld h, b
    ei
    sub e
    and l
    and l
    and l
    and c
    rst RST_38
    and l
    and l
    and l
    inc e
    sbc c
    db $fd
    ld [$967f], a
    sub d
    sbc c
    ldh [c], a
    sbc h
    ldh [$ffa1], a
    inc c
    sub c
    push hl
    ldh [$ffe9], a
    ld a, a
    sbc d
    sub e
    sbc [hl]
    sub a
    or b
    ld a, a
    ldh [$ffe0], a
    sub h
    db $e3
    dec c
    sub [hl]
    db $fd
    sbc h
    adc h
    inc e
    adc [hl]
    sub e
    or b
    ld a, a
    sub l
    sbc b
    ei
    sub e
    adc d
    adc d
    inc c
    sub l
    ldh a, [c]
    ld h, e
    db $e4
    sub e
    ld a, a
    or h
    and h
    cp l
    adc d
    dec c
    db $f4
    ld [$7ff8], a
    sub a
    ldh a, [$ffea]
    ld a, a
    ldh a, [c]
    sub d
    ldh [$fffd], a
    db $e3
    sub d
    ld h, b
    adc a
    ldh [$ff8a], a
    inc c
    rst RST_20
    ld a, [$e717]
    ld [$ea7f], a
    ld a, [$e9e0]
    ld h, b
    adc d
    dec c
    ldh a, [rNR33]
    sub [hl]
    rst RST_30
    jp hl


    ld a, a
    db $e3
    ld h, e
    ld a, a
    pop af
    inc e
    ldh [c], a
    or b
    dec c
    sbc h
    adc [hl]
    sub e
    ldh a, [c]
    sub d
    sbc h
    ldh [$ffe9], a
    ld h, b
    and c
    inc c
    sbc d
    jp hl


    ld a, a
    sub d
    adc a
    sbc c
    db $fd
    and $f6
    ld hl, sp+$7f
    pop af
    ldh a, [c]
    sub d
    ld h, b
    adc a
    ldh [$ff0d], a
    sub c
    push hl
    ldh [$ffea], a
    ld a, a
    sbc h
    ld hl, sp-$1e
    ldh [$fffd], a
    db $e3
    sub d
    db $e4
    sbc h
    db $e3
    jp hl


    dec c
    ldh a, [c]
    sub d
    sbc [hl]
    sub d
    or b
    ld a, a
    db $e3
    and $7f
    sub d
    ld a, [$a1e0]
    rst RST_38
    or $8f
    ld a, d
    rst RST_30
    sub d
    ld d, $7f
    db $e4
    sub l
    ld hl, sp-$50
    dec c
    sbc e
    sub h
    rla
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ldh [c], a
    or $92
    ld e, d
    db $dd
    pop bc
    or b
    ld a, a
    sub d
    adc a
    ld a, d
    ldh [c], a
    dec c
    sub l
    ldh a, [$ffef]
    sub d
    sbc h
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    adc e
    dec c
    ld h, h
    sub e
    di
    ld a, a
    sub a
    sub d
    db $e3
    sub d
    push hl
    sub d
    rst RST_30
    sbc h
    sub d
    and c
    dec c
    or $8f
    ld a, d
    rst RST_30
    sub d
    and $ea
    ld a, a
    sub a
    sub [hl]
    push hl
    sub d
    jp hl


    sub [hl]
    adc e
    inc c
    ld e, d
    call nz, $a4b6
    jp hl


    ld a, a
    cp e
    or d
    jp c, $96dd

    adc e
    dec c
    sbc c
    sub d
    sbc e
    ldh [c], a
    ld d, $7f
    sbc b
    ld sp, hl
    adc d
    dec c
    ld [$98f4], a
    ld a, a
    ld h, h
    sbc d
    sub [hl]
    and $7f
    and $19
    push hl
    sbc b
    db $e3
    ld [$ff8a], a
    sbc $ed
    adc a
    ld a, a
    db $ed
    adc a
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    add l
    add b
    cp [hl]
    db $dd
    call nz, $fde5
    db $e3
    ld a, a
    db $f4
    sbc l
    sub d
    or $a1
    dec c
    ld a, a
    sub d
    jp hl


    pop hl
    jp hl


    ld a, a
    add sp, $60
    db $fd
    and $9c
    db $e3
    ld [$a5a5], a
    and l
    and c
    inc c
    ld a, a
    sbc d
    jp hl


    ld [$9ce5], a
    ld a, a
    sub a
    sub d
    db $e3
    ld a, a
    sbc a
    db $fd
    ld [$92e5], a
    or $a1
    ld a, a
    sbc e
    adc a
    sbc e
    db $e4
    ld a, a
    add l
    add b
    cp [hl]
    db $dd
    call nz, $987f
    ld a, [$8af6]
    rst RST_18
    inc c
    or $8f
    ld a, d
    rst RST_30
    sub d
    ld [$917f], a
    sub d
    sub [hl]
    db $fc
    rst RST_30
    dec e
    dec c
    ld c, h
    jp nz, $c24c

    sub d
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
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
    sbc l
    db $e4
    dec c
    or $8f
    ld a, d
    rst RST_30
    sub d
    ld [$f27f], a
    or b
    ld a, a
    ld e, d
    pop bc
    cp b
    ret c

    sbc e
    sbc [hl]
    ldh [$ffa1], a
    inc c
    sbc $e4
    and h
    db $fd
    ld h, e
    di
    push hl
    sub d
    adc d
    dec c
    ld a, a
    sbc d
    ld a, [$7fea]
    sub l
    sub l
    sbc l
    rla
    ld sp, hl
    or $a5
    and l
    and l
    and c
    rst RST_18
    rst RST_38
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sbc h
    or $93
    db $e4
    sbc l
    ld sp, hl
    ld d, $0d
    or $8f
    ld a, d
    rst RST_30
    sub d
    ld [$cc7f], a
    rst RST_10
    call z, $9cd7
    db $e3
    sub d
    db $e3
    dec c
    add sp, -$09
    sub d
    ld d, $7f
    sbc e
    ld h, b
    rst RST_28
    rst RST_30
    push hl
    sub d
    and c
    rst RST_38
    add l
    add b
    cp [hl]
    db $dd
    call nz, Call_00d_7fb0
    db $fc
    ldh [$ff9d], a
    db $e4
    dec c
    or $8f
    ld a, d
    rst RST_30
    sub d
    ld [$c67f], a
    db $dd
    rst RST_08
    ret c

    sbc h
    db $e3
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $93
    db $ed
    adc a
    ld a, a
    db $ed
    adc a
    ld a, a
    db $ed
    adc a
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    inc a
    xor [hl]
    and h
    jp hl


    ld a, a
    db $f4
    db $e4
    adc a
    ldh [$ff7f], a
    sbc d
    ei
    sbc h
    db $f4
    ld d, $0d
    ld a, a
    sub l
    rst RST_28
    sub h
    sbc e
    db $fd
    or b
    ld a, a
    sbc e
    ld d, $9c
    db $e3
    ldh [$fff6], a
    and c
    inc c
    ld a, a
    db $f4
    ldh [c], a
    ld [$957f], a
    rst RST_28
    sub h
    sbc e
    db $fd
    jp hl


    ld a, a
    or l
    call z, $bda8
    ld h, e
    dec c
    ld a, a
    rst RST_28
    pop hl
    ld l, h
    sbc [hl]
    sbc h
    db $e3
    sub d
    ld sp, hl
    rst RST_30
    sbc h
    sub d
    ld e, $a1
    rst RST_18
    rst RST_38
    and l
    and l
    and l
    ld [$fa1d], a
    ldh [$ffa1], a
    dec c
    or $8f
    ld a, d
    rst RST_30
    sub d
    ld [$cc7f], a
    rst RST_10
    call z, $9cd7
    db $e3
    sub d
    db $e3
    dec c
    add sp, -$09
    sub d
    ld d, $7f
    sbc e
    ld h, b
    rst RST_28
    rst RST_30
    push hl
    sub d
    and c
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
    rst RST_38
    and l
    and l
    and l
    and l
    and l
    and l
    adc d
    dec c
    ld h, h
    sbc d
    sub [hl]
    rst RST_30
    db $e4
    di
    push hl
    sbc b
    ld a, a
    sub l
    db $fd
    push hl
    ld d, $0d
    sub c
    rst RST_30
    db $fc
    ld a, [$7fe3]
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $e5
    ld d, $96
    adc a
    ldh [$fffc], a
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    sub d
    rst RST_28
    ld a, a
    sbc c
    sub d
    pop af
    sbc h
    adc [hl]
    sub [hl]
    rst RST_30
    dec c
    ld a, a
    ld h, e
    db $e3
    sub a
    ldh [$ffe4], a
    sbc d
    ei
    push hl
    jp hl


    and c
    inc c
    ld a, a
    cp h
    and h
    add hl, sp
    reti


    and $7f
    sbc h
    sub [hl]
    sub h
    sbc h
    ld a, a

jr_00d_51b6:
    sbc h
    or $93
    db $e4
    dec c
    ld a, a
    sub l
    di
    adc a
    ldh [$ff99], a
    ld a, [$7f64]
    sub d
    push hl
    sub [hl]
    adc a
    ldh [$ff96], a
    rst RST_30
    dec c
    ld a, a
    cp b
    reti


    rst RST_08
    and $7f
    sbc h
    sub [hl]
    sbc c
    or b
    ld a, a
    sbc h
    db $e3
    sub a
    ldh [$fffc], a
    and c
    inc c
    ld a, a
    sub c
    push hl
    ldh [$ffe6], a

jr_00d_51e3:
    di
    ld a, a
    ld e, h
    jp c, $dd3e

    call nz, $e09c
    sub d
    dec c
    ld a, a
    di
    jp hl


    ld d, $7f
    sbc d
    jp hl


    ld a, a
    ld c, d
    xor a
    jr c, jr_00d_51e3

    ld a, a
    push hl
    sub [hl]

jr_00d_51fd:
    and $0d
    ld a, a
    ld [$8f92], a
    db $e3
    ld sp, hl
    jp hl


    or $a1
    rst RST_18
    rst RST_38
    and l
    and l
    and l
    and l
    and l
    and l
    adc d
    dec c
    sub d
    sub a
    push hl
    ld hl, sp+$7f
    sub l
    db $fd
    push hl
    ld [$4a7f], a
    xor a
    jr c, jr_00d_51b6

    rst RST_30
    dec c
    ld e, e
    cp l
    call nz, $b0d9
    ld a, a
    db $e4
    ld hl, sp+$60
    sbc h
    db $e3
    ld a, a
    sub e
    adc a
    ldh [$ffa1], a
    rst RST_38
    ldh [c], a
    or $92
    ld a, a
    ld e, d
    db $dd
    pop bc
    or b
    ld a, a
    sub l
    ldh a, [$ffef]
    sub d
    sbc h
    ldh [$ffa1], a
    dec c
    sub l
    db $fd
    push hl
    ld [$4a7f], a
    xor a
    jr c, jr_00d_51fd

    ld a, a
    sub l
    db $e4
    sbc h
    db $e3
    dec c
    ldh [$ff95], a
    ld a, [$a1e0]
    rst RST_38
    sub l
    db $fd
    push hl
    ld d, $7f
    xor $64
    sub e
    and $7f

jr_00d_5263:
    ldh [$ff95], a
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    sub a
    or b
    ld a, a
    sub e
    sbc h
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
    rst RST_30
    sbc h
    sub d
    and c
    inc c
    and l
    and l
    and l
    sbc d
    sub e
    sbc h
    db $e3
    ldh a, [$fff9]
    db $e4
    ld a, a
    push hl
    sub [hl]
    push hl
    sub [hl]
    dec c
    jr c, jr_00d_5263

    rst RST_08
    and h
    push hl
    ld a, a
    sub l
    db $fd
    push hl
    ld h, b
    and c
    rst RST_38
    sbc b
    ei
    sub d
    ld a, a
    cp [hl]
    or [hl]
    db $dd
    ld b, h
    ld c, d
    xor a
    jr c, jr_00d_5302

    and c
    dec c
    sub d
    adc a
    ldh [$ff92], a
    ld a, a
    push hl
    and $16
    ld a, a
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    db $fd
    ld h, b
    adc e
    rst RST_38
    cp e
    ret nz

    ld b, e
    and h
    push bc
    or d
    call nz, $bd7f
    ld a, l
    cp h
    xor h
    reti


    ld h, b
    and c
    inc c
    sbc l
    sbc d
    sbc h
    ld a, a
    sbc d
    ld d, $e0
    jp hl


    ld a, a
    ld e, e
    cp l
    call nz, Call_00d_63d9
    dec c
    inc e
    adc [hl]
    sbc [hl]
    sub d
    ld h, e
    di
    ld a, a
    sub c
    ldh [c], a
    sub [hl]
    sub d
    db $f4
    sbc l
    sub d
    and c
    rst RST_38
    sbc c
    sbc h
    adc [hl]
    sub e
    db $eb
    db $fd
    ld h, b
    and c
    dec c
    sub l
    db $fd
    push hl
    jp hl


    ld a, a
    db $eb
    ldh [c], a
    inc e
    adc l
    db $eb
    db $fd
    ld h, b
    ei
    sub e
    and c
    rst RST_38
    add d
    add b
    ld b, h

jr_00d_5302:
    reti


    sbc e
    ldh [c], a
    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    ld e, e
    cp l
    call nz, Call_00d_60d9
    adc d
    inc c
    sbc d
    jp hl


    sub l
    db $fd
    push hl
    ld [$957f], a
    ld a, [$7fb0]
    sbc d
    ei
    sbc l
    ldh [c], a
    di
    ld hl, sp+$0d
    ld h, b
    adc a
    ldh [$ffe9], a
    sub [hl]
    adc d
    dec c
    sub c
    ld l, h
    push hl
    sub d
    db $e4
    sbc d
    ei
    ld h, b
    adc a
    ldh [rNR34], a
    and l
    and l
    and l
    and c
    rst RST_38
    ld e, e
    cp l
    call nz, Call_00d_63d9
    ld a, a
    sub l
    db $fd
    push hl
    or b
    ld a, a
    sub e
    adc a
    ldh [$ffa1], a
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
    rst RST_38
    sbc b
    ei
    sub d
    ld a, a
    cp [hl]
    or [hl]
    db $dd
    ld b, h
    ld c, d
    xor a
    jr c, jr_00d_53d0

    and c
    rst RST_38
    ld l, l
    db $dd
    jp nz, Jump_00d_7fe9

    sub e
    sbc h
    ei
    and $7f
    rst RST_28
    db $fc
    adc a
    ldh [$ffa1], a
    dec c
    call nz, $ddd7
    cp b
    jp hl


    ld a, a
    rst RST_28
    sub h
    ld h, b
    and c
    rst RST_38
    rst RST_28
    ld sp, hl
    sub d
    ld a, a
    call nz, $ddd7
    cp b
    ld h, b
    and c
    dec c
    di
    jp hl


    ld d, $7f
    ldh [$ff98], a
    sbc e
    db $fd
    ld a, a
    ld [$f892], a
    sbc a
    sub e
    ld h, b
    and c
    rst RST_38
    sbc b
    ei
    sub d
    ld a, a
    jp nc, $bed9

    ld b, e
    cp l
    ld a, a
    ld l, l
    db $dd
    jp nz, $a160

    rst RST_38
    sub l
    adc a
    ld a, a
    sub l
    db $fd
    push hl
    ld h, b
    and l
    and l
    and l
    adc d
    dec c
    push hl
    ld e, $7f
    sbc d
    db $fd
    push hl
    db $e4
    sbc d
    ei
    and $a5

jr_00d_53d0:
    and l
    and l
    adc e
    inc c
    rst RST_28
    sbc e
    sub [hl]
    ld a, a
    sbc h
    db $fd
    ld h, e
    sub d
    ld sp, hl
    jp hl


    sub [hl]
    adc e

jr_00d_53e0:
    inc c
    and l
    and l
    and l
    ld h, h
    sub e
    db $f4
    rst RST_30
    ld a, a
    sub [hl]
    sbc l
    sub [hl]
    and $7f
    sub d
    sbc h
    sub a
    ld [$910d], a
    ld sp, hl
    or $93
    ld h, b
    and c
    inc c
    sbc e
    ld sp, hl
    jr jr_00d_53e0

jr_00d_53fe:
    db $fc
    or b
    ld a, a
    ld [$f7f2], a
    ld a, [$e37f]
    sub c
    sbc h
    ld [$e50d], a
    db $fc
    ld h, e
    ld a, a
    sbc h
    ld l, d
    rst RST_30
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    sbc e
    ld sp, hl
    jr jr_00d_53fe

    db $fc
    ld h, b
    and c
    dec c
    sbc h
    ei
    sub d
    ld a, a
    rst RST_20
    jp hl


    or b
    ld a, a
    ldh [c], a
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ld l, l
    db $dd
    jp nz, Jump_00d_7fe9

    call nz, $ddd7
    cp b
    jp hl


    ld a, a
    rst RST_28
    sub h
    ld h, b
    and c
    rst RST_38
    or a
    and h
    or b
    ld a, a
    ldh [c], a
    sub [hl]
    adc a
    db $e3
    ld a, a
    call nz, $ddd7
    cp b
    or b
    dec c
    sub c
    sbc c
    ldh [$ffa1], a
    rst RST_38
    sub l
    db $fd
    push hl
    and $7f
    ld a, l
    db $dd
    ret nz

    cp a
    and h
    ld b, b
    or b
    dec c
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sbc l
    ld sp, hl
    db $e4
    ld a, a
    sub [hl]
    sbc l
    sub [hl]
    push hl
    ld a, a
    sbc d
    sub h
    ld h, e
    dec c
    sbc h
    adc h
    ld l, l
    ld hl, sp-$16
    inc e
    ldh a, [c]
    ldh [$ffa1], a
    inc c
    sbc $92
    adc a
    and l
    and l
    and l
    sub d
    sub h
    and $a5
    and l
    and l
    sub [hl]
    sub h
    ld hl, sp-$20
    sub d
    adc d
    ld a, a
    or c
    and h
    ld c, d
    db $dd
    db $db
    and h
    ld b, h
    ld a, a
    add [hl]
    add d
    add [hl]
    db $ed
    and c
    dec c
    ld a, a
    sub l
    ld a, a
    sub l
    adc a
    db $e4
    jp hl


    sub d
    ld sp, hl
    ld a, a
    db $e4
    sbc d
    ei
    db $ed
    and c
    rst RST_18
    rst RST_38
    sub l
    db $fd
    push hl
    and $7f
    ld a, l
    db $dd
    ret nz

    cp a
    and h
    ld b, b
    or b

jr_00d_54bb:
    dec c
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sbc h
    or $93
    db $e4
    sbc h
    ldh [$ffa1], a
    dec c
    sbc h
    sub [hl]
    sbc h
    ld a, a
    rst RST_28
    db $e3
    or $a5
    and l
    and l
    and c
    inc c
    sbc e
    ld sp, hl
    jr jr_00d_54bb

    db $fc
    or b
    ld a, a
    sbc h
    ldh [$ffef], a

jr_00d_54df:
    rst RST_28
    ld h, e
    ld [$e57f], a
    and $b0
    dec c
    sub d
    adc a
    db $e3
    sub d
    ld sp, hl
    jp hl


    sub [hl]
    ld a, a
    db $fc
    sub [hl]
    rst RST_30
    push hl
    sub d
    ld h, b
    ei
    sub e
    and c
    rst RST_38
    sbc e
    ld sp, hl
    jr jr_00d_54df

    db $fc
    or b
    ld a, a
    db $e4
    adc a
    ldh [$ffa1], a
    dec c
    sub l
    db $fd
    push hl
    ld [$957f], a
    sub l
    sub a
    push hl
    ld a, a
    sbc b
    pop hl
    or b
    ld a, a
    sub c
    sbc c
    db $e3
    dec c
    sbc d
    sub a
    adc l
    sub e
    sbc h
    ld [$f21c], a
    ldh [$ffa1], a
    rst RST_38
    sub l
    db $fd
    push hl
    ld [$9d7f], a
    sub d
    inc e
    adc h
    sbc b
    ld d, $7f
    db $eb
    ld h, h
    sbc b
    dec c
    ld [$9ce5], a
    or b
    sbc l
    ld sp, hl
    jp hl


    ld [$f17f], a
    ld hl, sp-$09
    sbc h
    sub d
    and c
    inc c
    and l
    and l
    and l
    push hl
    db $fd
    db $e4
    sub [hl]
    ld a, a
    ld [$9ce5], a
    or b
    ld a, a
    sub a
    sub a
    ld h, b
    sbc l
    dec c
    xor $93
    xor $93
    ld [$e57f], a
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
    cp l
    ret nz

    db $dd
    or e
    xor a
    ld b, h
    db $ec
    inc e
    db $fd
    ld h, b
    and c
    dec c
    and l
    and l
    and l
    sub [hl]
    db $fc
    sub d
    sbc a
    sub e
    push hl
    ld a, a
    db $eb
    db $e4
    ld h, b
    push hl
    and c
    rst RST_38
    jp nc, $da44

    inc a
    db $dd
    or b
    ld a, a
    sub l
    db $fd
    push hl
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
    sub e
    adc a
    and l
    and l
    and l
    adc d
    dec c
    sub l
    db $fd
    push hl
    ld [$eb7f], a
    db $e4
    sbc d
    sub h
    ld a, a
    sub e
    ldh a, [c]
    sub d
    db $e3
    dec c
    sub e
    ld a, [de]
    sub [hl]
    push hl
    sbc b
    push hl
    adc a
    ldh [$ffa5], a
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
    sbc h
    db $fd
    ld h, b
    jp hl


    sub [hl]
    adc e
    inc c
    and l
    and l
    and l
    sub d
    db $f4
    ld a, a
    sbc d
    sub a
    adc l
    sub e
    ld [$9c7f], a
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    sub a
    or b
    ld a, a
    sub e
    sbc h
    push hl
    adc a
    ldh [$ff60], a
    sbc c
    jp hl


    or $93
    ld h, b
    and c
    rst RST_38
    ldh [c], a
    or $92
    ld a, a
    ld e, d
    db $dd
    pop bc
    or b
    ld a, a
    sub d
    ld a, [$e4f9]
    ld a, a
    sub l
    db $fd
    push hl
    jp hl


    sbc h
    ld l, [hl]
    sub e
    ld h, b
    rst RST_30
    sbc c
    jp hl


    ld a, a
    sub [hl]
    rst RST_30
    ld h, b
    ld [$e50d], a
    ldh a, [$ff93]
    adc a
    ldh [$ffa1], a
    inc c
    ld h, b
    ld d, $7f
    push hl
    db $fd
    jp hl


    ld a, a
    ld [$e9fd], a
    sub e
    di
    ld a, a
    push hl
    sub d
    and c
    inc c
    ld l, h
    sub c
    ldh [c], a
    sub d
    ld a, a
    ld e, $92
    and $98
    ld d, $0d
    sub c
    rst RST_30
    push af
    ld sp, hl
    ld a, a
    sbc d
    sub e
    add hl, de
    sub a
    or b
    dec c
    sub a
    adc l
    sub e
    sbc h
    adc l
    sub e
    sbc l
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

Call_00d_60d9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00d_63bd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00d_63d9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00d_7f60:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00d_7fb0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00d_7fe4:
    nop
    nop
    nop
    nop
    nop

Jump_00d_7fe9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
