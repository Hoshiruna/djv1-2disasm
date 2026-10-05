; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    nop
    ld b, c
    jr nz, jr_00e_4045

    ld b, [hl]
    ld b, c
    add $41
    rrca
    ld b, d
    inc l
    ld b, d
    ld b, a
    ld b, d
    ld h, c
    ld b, d
    ld [hl], a
    ld b, d
    sub c
    ld b, d
    jp nc, Jump_000_1242

    ld b, e
    ld d, [hl]
    ld b, e
    inc h
    ld b, h
    inc a
    ld b, h
    ld e, c
    ld b, h
    ld a, d
    ld b, h
    and l
    ld b, h
    ret


    ld b, h
    rst RST_20
    ld b, h
    ld hl, sp+$44
    ld hl, $9945
    ld b, l
    cp b
    ld b, l
    adc $45
    ei
    ld b, l
    ld e, $46
    ld e, e
    ld b, [hl]
    ld a, a
    ld b, [hl]
    and d
    ld b, [hl]
    jp nz, Jump_000_0f46

    ld b, a
    ld [hl+], a
    ld b, a
    ld c, [hl]
    ld b, a
    ld l, d

jr_00e_4045:
    ld b, a
    adc c
    ld b, a
    xor b
    ld b, a
    or h
    ld b, a
    db $db
    ld b, a
    add sp, $47
    cp $47
    dec hl
    ld c, b
    ld b, h
    ld c, b
    ld e, e
    ld c, b
    add [hl]
    ld c, b
    call $ee48
    ld c, b
    inc e
    ld c, c
    sub a
    ld c, c
    call c, $f249
    ld c, c
    db $10
    ld c, d
    ld b, e
    ld c, d
    ld [hl], l
    ld c, d
    sub a
    ld c, d
    di
    ld c, d
    inc de
    ld c, e
    ld l, e
    ld c, e
    sub e
    ld c, e
    or l
    ld c, e
    jr nz, jr_00e_40c6

    ld h, a
    ld c, h
    add [hl]
    ld c, h
    and [hl]
    ld c, h
    ld l, $4d
    ld l, c
    ld c, l
    jp nc, $f44d

    ld c, l
    dec bc
    ld c, [hl]
    ld e, e
    ld c, [hl]
    or d
    ld c, [hl]
    jp c, Jump_000_154e

    ld c, a
    add hl, sp
    ld c, a
    ld e, h
    ld c, a
    sub [hl]
    ld c, a
    cp l
    ld c, a
    bit 1, a
    db $e4
    ld c, a
    dec c
    ld d, b
    scf
    ld d, b
    ld l, h
    ld d, b
    sbc h
    ld d, b
    or [hl]
    ld d, b
    ldh [$ff50], a
    ld a, [$1150]
    ld d, c
    inc l
    ld d, c
    ld c, l
    ld d, c
    ld [hl], c
    ld d, c
    sbc h
    ld d, c
    jp nz, $e051

    ld d, c
    ld e, l
    ld d, d
    add l
    ld d, d
    xor a
    ld d, d
    jp c, $e952

    ld d, d
    ld a, [de]
    ld d, e

jr_00e_40c6:
    ld c, e
    ld d, e
    ld [hl], e
    ld d, e
    adc c
    ld d, e
    ld h, $54
    ld b, h
    ld d, h
    ld l, a
    ld d, h
    and b
    ld d, h
    jp $e154


    ld d, h
    ld b, $55
    ld c, $55
    inc h
    ld d, l
    ld b, a
    ld d, l
    ld d, a
    ld d, l
    add d
    ld d, l
    ld a, d
    ld d, [hl]
    sub l
    ld d, [hl]
    xor h
    ld d, [hl]
    cp a
    ld d, [hl]
    call nc, $f756
    ld d, [hl]
    ld [$3157], sp
    ld d, a
    add c
    ld d, a
    or [hl]
    ld d, a
    jp nc, $1257

    ld e, b
    dec l
    ld e, b
    ld l, d
    ld e, b
    ld l, l
    db $dd
    jp nz, Jump_00e_7fe9

    push hl
    sub [hl]
    ld h, b
    and c
    dec c
    sbc d
    ld a, [$92e4]
    adc a
    db $e3
    ld a, a
    sub [hl]
    db $fc
    adc a
    ldh [$ff9a], a
    db $e4
    ld [$e50d], a
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    or c
    cp b
    cp [hl]
    reti


    ld h, b
    and c
    dec c
    sub l
    di
    sub d
    adc a
    sub a
    ld hl, sp+$7f
    db $ec
    ldh a, [$ff9a]
    db $fd
    ld h, b
    rst RST_30
    dec c
    sub a
    ld l, h
    db $fd
    ld d, $7f
    sub d
    sub d
    ld h, b
    ei
    sub e
    push hl
    sub c
    and l
    and l
    and l
    and c
    rst RST_38
    sbc a
    jp hl


    db $e4
    sub a
    ld a, a
    db $e4
    ldh [c], a
    ld e, $fd
    ld a, a
    ld a, [hl-]
    and h
    xor a
    db $e4
    sub d
    sub e
    dec c
    sub l
    db $e4
    ld d, $9c
    ldh [$ffa1], a
    inc c
    db $ec
    ld hl, sp-$0f
    sbc b
    db $e4
    ld a, a
    sub d
    rst RST_28
    ld a, a
    jp hl


    adc a
    db $e3
    sub a
    ldh [$ff0d], a
    or h
    jp c, $a46d

    ret nz

    ld d, $7f
    sub a
    sub h
    db $e3
    sub d
    ld sp, hl
    adc d
    dec c
    push hl
    and $16
    ld a, a
    sub l
    sbc d
    adc a
    ldh [$fffd], a
    ld h, b
    adc e
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
    ld l, l
    ld d, $7f
    cp l
    rst RST_10
    or d
    ld b, h
    sbc h
    db $e3
    or h
    jp c, $a46d

    ret nz

    or b
    ld a, a
    sub [hl]
    sbc b
    sbc h
    ldh [$fff7], a
    sbc h
    sub d
    and c
    inc c
    sbc d
    jp hl


    db $ed
    db $f4
    jp hl


    ld a, a
    or h
    jp c, $a46d

    ret nz

    ld [$eb7f], a
    ldh a, [$ffe2]
    jp hl


    dec c
    ld h, e
    sub d
    ld hl, sp+$18
    pop hl
    jp hl


    or $93
    ld h, b
    and c
    rst RST_38
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
    and $ea
    dec c
    ld l, [hl]
    sub e
    ld h, b
    db $fd
    ld [hl], $d7
    cp l
    ld d, $7f
    sub c
    ld sp, hl
    jp hl


    ld h, e
    dec c
    pop hl
    adc [hl]
    sbc b
    sbc [hl]
    ldh [c], a
    ld a, a
    db $fc
    ldh [$ff9e], a
    push hl
    sub d
    rst RST_30
    sbc h
    sub d
    and c
    inc c
    sub c
    adc a
    adc d
    dec c
    sbc d
    jp hl


    ld a, a
    ld hl, sp-$72
    sub e
    sub a
    db $fd
    sub d
    ld a, [$7fe6]
    sub d
    ld a, [$6afa]
    dec c
    sub d
    sub d
    db $fd
    ld h, b
    push hl
    adc d
    rst RST_38
    jp z, Jump_00e_44dd

    reti


    ld h, b
    and c
    dec c
    ldh [$ff96], a
    sbc a
    sub e
    push hl
    ld a, a
    sub [hl]
    db $fc
    jp hl


    ld a, a
    or [hl]
    ld c, d
    and h
    ld d, $0d
    ldh [c], a
    sbc c
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    or a
    and h
    or b
    ld a, a
    sbc e
    sbc h
    sbc d
    pop af
    ld a, a
    db $e4
    sbc d
    ei
    ld h, b
    and c
    dec c
    or a
    and h
    ld [$e27f], a
    sub d
    db $e3
    sub d
    push hl
    sub d
    and c
    rst RST_38
    ld b, b
    xor a
    cp h
    xor l
    ld c, [hl]
    and h
    ld b, h
    ld h, b
    and c
    dec c
    or [hl]
    scf
    ld [$967f], a
    sub [hl]
    adc a
    db $e3
    sub d
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    db $fd
    adc e
    dec c
    sub d
    jp hl


    ld a, a
    sub c
    ldh [$fff8], a
    ld d, $7f
    cp l
    and h
    xor a
    db $e4
    ld a, a
    sbc h
    db $e3
    sub a
    ldh [$ff8a], a
    rst RST_38
    ld c, [hl]
    db $dd
    ret z

    xor a
    call nz, Call_00e_7fb0
    sub c
    sbc c
    ld sp, hl
    ldh [$fff2], a
    jp hl


    dec c
    ld c, [hl]
    ret nz

    db $dd
    ld h, b
    ei
    sub e
    sub [hl]
    and l
    and l
    and l
    adc e
    rst RST_38
    sbc d
    jp hl


    ld a, a
    cp b
    reti


    rst RST_08
    jp hl


    ld a, a
    db $e4
    sub e
    ei
    sbc b
    sbc h
    adc [hl]
    sub e
    ld h, b
    and c
    inc c
    di
    pop hl
    rst RST_20
    sbc h
    ld [$a5a5], a
    and l
    inc c
    sbc $3c
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
    or e
    or h
    cp l
    call nz, $ddb4
    ld b, h
    ld h, h
    sub l
    ld hl, sp+$7f
    add c
    add d
    add c
    add d
    rst RST_18
    and l
    and l
    and l
    and l
    and l
    and l
    adc d
    adc d
    adc d
    rst RST_38
    inc e
    adc [hl]
    sbc [hl]
    sub d
    jp hl


    ld a, a
    cp l
    push bc
    xor a
    ld e, h
    sbc h
    adc h
    sbc h
    db $fd
    ld h, b
    and c
    dec c
    sub [hl]
    push hl
    ld hl, sp+$7f
    db $ec
    db $e4
    adc a
    db $e3
    sub d
    ld sp, hl
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
    and l
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    sub [hl]
    sub l
    and $7f
    ldh a, [$ff95]
    ld l, [hl]
    sub h
    ld [$e57f], a
    sub d
    and c
    rst RST_38
    rst RST_28
    pop hl
    jp hl


    ld a, a
    pop hl
    dec e
    ld h, b
    and c
    dec c
    or d
    db $dd
    cp b
    ld h, e
    ld a, a
    inc a
    xor [hl]
    and h
    jp hl


    ld c, d
    and h
    and $7f
    sub d
    sbc b
    or $93
    and $d9
    and h
    call nz, Call_00e_7f16
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    ld c, d
    and h
    jp hl


    ld a, a
    inc e
    adc l
    sub e
    sbc h
    adc [hl]
    ld [$a5a5], a
    and l
    inc c
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
    ld h, b
    and c
    rst RST_38
    sbc d
    sub d
    ldh [c], a
    ld [$a5a5], a
    and l
    adc d
    dec c
    sub [hl]
    sub l
    and $7f
    ldh a, [$ff95]
    ld l, [hl]
    sub h
    ld d, $7f
    sub c
    ld sp, hl
    rra
    and c
    dec c
    ld h, b
    ld d, $7f
    sbc a
    ld a, [$1c92]
    adc [hl]
    sub e
    ld a, a
    sub l
    di
    sub d
    ld h, b
    sbc [hl]
    push hl
    sub d
    and c
    inc c
    sbc [hl]
    push hl
    sub [hl]
    and $7f
    sub [hl]
    db $fd
    ldh [c], a
    sub e
    sbc h
    ldh [$ffe4], a
    sub l
    di
    db $fc
    ld a, [$0df9]
    add e
    ld a, d
    ldh [c], a
    jp hl


    ld a, a
    ld h, b
    db $fd
    sbc d
    db $fd
    adc d
    dec c
    sub l
    sbc a
    rst RST_30
    sbc b
    ld a, a
    sbc a

Jump_00e_43a4:
    sbc b
    sbc h
    ld h, b
    ei
    sub e
    and c
    inc c
    db $eb
    ld h, b
    ld hl, sp-$1d
    and $ea
    ld a, a
    ld h, e
    db $fd
    db $fc
    jp hl


    ld a, a
    inc e
    adc l
    db $fc
    sub a
    or b
    dec c
    and $17
    ld hl, sp-$64
    ldh a, [c]
    ldh [$ff7f], a
    rst RST_28
    rst RST_28
    ld h, b
    and c
    dec c
    ld h, e
    db $fd
    db $fc
    pop hl
    adc l
    sub e
    and $7f
    sub e
    ldh [$fffa], a
    ldh [$ffe9], a
    sub [hl]
    adc e
    inc c
    rst RST_28
    sbc e
    sub [hl]
    and l
    and l
    and l
    sub l
    ld a, [$7f16]
    db $f4
    adc a
    ldh [$ffe9], a
    sub [hl]
    adc e
    inc c
    sbc a
    ld a, [$f3e4]
    ld a, a
    sub l
    ld a, [$7ff3]
    sbc d
    sub d
    ldh [c], a
    db $e4
    ld a, a
    sub l
    push hl
    inc e
    dec c
    sub e
    db $fd
    ldh a, [c]
    sub d
    or b
    ld a, a
    ldh [$ff64], a
    ld sp, hl
    ld [$601d], a
    adc a
    ldh [$ffe9], a
    sub [hl]
    adc e
    inc c
    and l
    and l
    and l
    ld h, b
    ldh a, [c]
    ld h, b
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
    adc d
    rst RST_38
    ld c, [hl]
    db $dd
    ret z

    xor a
    call nz, Call_00e_7fb0
    sub c
    sbc c
    ldh [$ff7f], a
    db $e4
    ldh [$fffd], a
    and $0d
    ld l, d
    sbc b
    ld [$9ce2], a
    ldh [$ffa1], a
    rst RST_38
    ld c, [hl]
    db $dd
    ret z

    xor a
    call nz, Call_00e_7fe9
    push hl
    sub [hl]
    and $7f
    ld l, d
    sbc b
    ld h, b
    db $fd
    ld d, $0d
    sbc h
    sub [hl]
    sbc c
    db $e3
    sub c
    adc a
    ldh [$fff7], a
    sbc h
    sub d
    adc d
    rst RST_38
    or h
    db $dd
    inc a
    db $dd
    or b
    ld a, a
    sub [hl]
    sbc c
    or $93
    db $e4
    sbc h
    ldh [$ff7f], a
    db $e4
    ldh [$fffd], a
    and $4e
    db $dd
    ret z

    xor a
    call nz, Call_00e_7f16
    ld l, d
    sbc b
    ld [$9ce2], a
    ldh [$ffa1], a
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
    dec c
    or [hl]
    or e
    db $dd
    ret nz

    and h
    and $7f
    db $ec
    db $e4
    adc a
    ldh [$ff7f], a
    db $f4
    sbc e
    sbc h
    sbc a
    sub e
    push hl
    sub l
    db $e4
    sbc d
    ld d, $7f
    ldh [$ff8f], a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ld [$e9f7], a
    ld a, a
    ld h, e
    sub [hl]
    sub d
    ld a, a
    sub l
    db $e4
    sbc d
    ld h, b
    and c
    dec c
    ldh a, [$fff9]
    sub [hl]
    rst RST_30
    and $7f
    db $eb
    db $e4
    jp hl


    ld a, a
    or $9b
    sbc a
    sub e
    push hl
    dec c
    sub [hl]
    db $fd
    inc e
    ld h, b
    and c
    rst RST_38
    call nz, $c5a9
    or d
    call nz, $bd7f
    ld a, l
    cp h
    xor h
    reti


    ld h, b
    and c
    dec c
    ld b, h
    or d
    jp nz, $929e

    jp hl


Jump_00e_44dd:
    ld a, a
    ld e, e
    cp l
    call nz, $f7d9
    sbc h
    sub d
    and c
    rst RST_38
    add d
    add d
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
    sbc $c4
    xor c
    push bc
    or d
    call nz, $bda5
    ld a, l
    cp h
    xor h
    reti


    ld a, a
    and e
    add d
    add b
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
    dec c
    ld e, e
    cp l
    call nz, $e9d9
    ld a, a
    add sp, -$14
    ld h, b
    rst RST_30
    sbc h
    sub d
    and c
    rst RST_38
    sub c
    sub c
    adc a
    ld a, a
    sub c
    ldh [$ffef], a
    ld d, $7f
    cp b
    rst RST_10
    cp b
    rst RST_10
    sbc l
    ld sp, hl
    and c
    dec c
    ld [$98f4], a
    ld a, a
    push hl
    db $fd
    db $e4
    sub [hl]
    ld a, a
    sbc h
    push hl
    sbc c
    ld a, [$8a6a]
    inc c
    and l
    and l
    and l
    ld h, b
    ld d, $7f
    sub a
    di
    pop hl
    ld d, $7f
    sub c
    sbc [hl]
    ld sp, hl
    ld l, d
    sub [hl]
    ld hl, sp+$63
    push hl
    and $b0
    sbc l
    ld a, [$7f6a]
    sub d
    sub d
    jp hl


    sub [hl]
    ld a, a
    rst RST_28
    adc a
    ldh [$ff98], a
    dec c
    db $fc
    sub [hl]
    rst RST_30
    push hl
    sub d
    adc d
    adc d
    adc d
    inc c
    rst RST_28
    sbc l
    rst RST_28
    sbc l
    ld a, a
    sub a
    ld l, h
    db $fd
    ld d, $7f
    db $fc
    ld sp, hl
    sbc b
    push hl
    ld sp, hl
    and c
    dec c
    rst RST_28
    ld sp, hl
    ld h, e
    ld a, a
    push hl
    db $fd
    and $e1
    di
    jp hl


    sub c
    sub d
    ld h, b
    dec c
    add sp, -$1d
    sub d
    push hl
    sub d
    sub [hl]
    jp hl


    or $93
    ld h, b
    and c
    rst RST_38
    ld e, e
    cp l
    call nz, $e9d9
    ld a, a
    cp h
    ret c

    db $dd
    ld b, b
    and h
    or b
    ld a, a
    sub c
    sbc c
    ldh [$ffa1], a
    dec c
    ldh [$ffef], a
    ld [$ea7f], a
    sub d
    adc a
    db $e3
    sub d
    push hl
    sub d
    and c
    rst RST_38
    ld e, e
    cp l
    call nz, $e9d9
    ld a, a
    cp h
    ret c

    db $dd
    ld b, b
    and h
    and $7f
    ldh [$ffef], a
    or b
    dec c
    sbc d
    ldh a, [c]
    ldh [$ffa1], a
    rst RST_38
    ld e, e
    cp l
    call nz, $e9d9
    ld a, a
    cp h
    ret c

    db $dd
    ld b, b
    and h
    ld [$f37f], a
    sub e
    dec c
    sub d
    adc a
    ld a, d
    sub d
    ld h, b
    and c
    inc c
    sbc d
    ld a, [$1c92]
    adc [hl]
    sub e
    ld a, a
    ldh [$ffef], a
    or b
    ld a, a
    sbc d
    ldh a, [c]
    ld sp, hl
    jp hl


    ld [$f10d], a
    ld hl, sp+$60
    and c
    rst RST_38
    ldh [$ffef], a
    ld d, $7f
    sub e
    rst RST_28
    sbc b
    ld a, a
    cp h
    ret c

    db $dd
    ld b, b
    and h
    and $0d
    ld [$f792], a
    push hl
    sub d
    and c
    dec c
    cp e
    or d
    dec a
    ld d, $7f
    pop hl
    ld d, $93
    or $93
    ld h, b
    and c
    rst RST_38
    ldh a, [$ff9e]
    jp hl


    sub l
    db $e4
    sbc d
    and $7f
    pop af
    sub [hl]
    adc a
    db $e3
    ld a, a
    ld e, e
    cp l
    call nz, $b0d9
    sub [hl]
    rst RST_28
    sub h
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
    push hl
    db $fd
    db $e4
    ld a, a
    sub l
    ld a, [$f8f6]
    ld a, a
    sbc e
    sub a
    and $7f
    pop af
    sbc d
    sub e
    ld d, $0d
    ld e, e
    cp l
    call nz, $b0d9
    ld a, a
    sub e
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc l
    ld sp, hl
    db $e4
    ld a, a
    ldh a, [$ff9e]
    jp hl


    sub l
    db $e4
    sbc d
    ld d, $0d
    db $f4
    sbc e
    sbc h
    sub d
    sbc d
    sub h
    ld h, e
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $82
    add b
    ld b, h
    reti


    ld h, e
    sbc l
    or $a1
    rst RST_18
    rst RST_38
    ldh a, [$ff9e]
    jp hl


    sub l
    db $e4
    sbc d
    ld [$947f], a
    ld d, $95
    ld h, e
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $81
    ldh [c], a
    ld a, a
    add d
    add l
    cp [hl]
    db $dd
    call nz, $e5e6
    ld hl, sp-$11
    sbc l
    and c

jr_00e_46a0:
    rst RST_18
    rst RST_38
    push hl
    jr jr_00e_46a0

    sub e
    db $e4
    sbc h
    ldh [$ff7f], a
    db $e4
    ldh [$fffd], a
    and $0d
    ldh a, [$ff9e]
    jp hl


    sub l
    db $e4
    sbc d
    ld d, $7f
    ld e, e
    cp l
    call nz, $b0d9
    ld a, a
    sub e
    adc a
    ldh [$ffa1], a
    rst RST_38
    ldh a, [$ff9e]
    jp hl


    sub l
    db $e4
    sbc d
    ld [$197f], a
    db $fd
    sub a
    or $98
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $92
    rst RST_30
    adc a
    sbc h
    adc h
    sub d
    adc d
    dec c
    ld a, a
    push hl
    and $b0
    ld a, a
    sub l
    di
    db $e4
    ldh a, [c]
    ld h, e
    sbc l
    sub [hl]
    adc e
    inc c
    ld a, a
    ld e, e
    cp l
    call nz, $ead9
    ld a, a
    add d
    add b
    ld b, h
    reti


    dec c
    ld a, a
    ldh [$ffef], a
    ld [$827f], a
    add l
    cp [hl]
    db $dd
    call nz, $0d8a
    ld a, a
    sub l
    db $f4
    sbc l
    sub d
    ld h, e
    sbc l
    or $8a
    rst RST_18
    rst RST_38
    and l
    and l
    and l
    sbc h
    sub l
    ld hl, sp+$16
    ld a, a
    ld [$fd9b], a
    ld h, e
    sub c
    ld sp, hl
    or $93
    ld h, b
    and c
    rst RST_38
    add hl, de
    sbc l
    sub d
    ld h, h
    sub e
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
    ldh [$ffe1], a
    sbc d
    ldh a, [c]
    db $e3
    sbc b
    ld sp, hl
    and c
    dec c
    sub a
    ld l, h
    db $fd
    ld d, $7f
    rst RST_28
    sbc l
    rst RST_28
    sbc l
    ld a, a
    db $fc
    ld sp, hl
    sbc b
    push hl
    adc a
    ldh [$ffa1], a
    rst RST_38
    sub e
    sub h
    and $7f
    ldh [c], a
    sub e
    inc e

jr_00e_4755:
    ld sp, hl
    ld a, a
    ld [$1a9c], a
    ld h, b
    and c
    dec c
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
    and c
    rst RST_38
    add hl, de
    sbc l
    sub d
    jp hl


    ld a, a
    push hl
    ld d, $fa
    jr jr_00e_4755

    ld h, b
    and c
    dec c
    db $eb
    db $e4
    ld d, $7f
    inc e
    adc l
    sub e
    ld l, h
    db $fd
    ld a, a
    db $e4
    sub l
    ld a, [$939f]
    ld h, b
    and c
    rst RST_38
    add hl, de
    sbc l
    sub d
    ld d, $7f
    push hl
    ld d, $fa
    ld h, e
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    db $e4
    and $96
    sbc b
    ld a, a
    di
    jp hl


    sbc l
    ld a, [de]
    sub d
    ld a, a
    and $95
    sub d
    ld h, b
    and c
    rst RST_38
    add hl, de
    sbc l
    sub d
    ld h, h
    sub e
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    rst RST_38
    add hl, de
    sbc l
    sub d
    ld h, h
    sub e
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    dec c
    sub c
    sbc h
    jp hl


    ld a, a
    db $ec
    ldh a, [rOCPS]
    and $7f
    pop hl
    adc l
    sub e
    sub d
    or b
    dec c
    ld [$fcf7], a
    push hl
    sbc c
    ld a, [$a56a]
    and l
    and l
    and c
    rst RST_38
    rst RST_28
    adc a
    sbc b
    rst RST_30
    push hl
    ld a, a
    or $9a
    sub c
    push hl
    ld h, b
    and c
    rst RST_38
    or $9a
    sub c
    push hl
    ld h, b
    and c
    dec c
    sbc b
    rst RST_30
    sbc b
    db $e3
    ld a, a
    sbc e
    sub a
    ld [$f07f], a
    sub h
    push hl
    sub d
    and c
    rst RST_38
    add hl, de
    sbc l
    sub d
    ld h, h
    sub e
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    dec c
    sub [hl]
    rst RST_30
    ld h, b
    inc e
    adc l
    sub e
    ld d, $7f
    db $ed
    db $fd
    push hl
    ld a, a
    and $95
    sub d
    and $0d
    sbc a
    rst RST_28
    adc a
    db $e3
    ld a, a
    sbc h
    rst RST_28
    sub d
    sbc a
    sub e
    ld h, b
    and l
    and l
    and l
    and c
    rst RST_38
    sbc h
    ldh [$ffed], a
    ld a, a
    sub l
    ld hl, sp-$07
    ld a, a
    ld [$1a9c], a
    ld h, b
    and c
    dec c
    sbc d
    jp hl


    ld a, a
    sbc h
    ldh [$ffea], a
    and l
    and l
    and l
    adc d
    rst RST_38
    or $9a
    sub c
    push hl
    ld h, b
    and c
    dec c
    ld h, h
    sbc d
    and $7f
    ldh [c], a
    sub e
    inc e
    db $e3
    sub d
    ld sp, hl
    db $fd
    ld h, b
    ei
    sub e
    adc e
    rst RST_38
    add hl, de
    sbc l
    sub d
    ld h, h
    sub e
    jp hl


    ld a, a
    di
    adc a
    db $e4
    di
    ld a, a
    sbc h
    ldh [rNR21], a
    db $fc
    and $0d
    ld h, e
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    dec c
    add hl, de
    sbc l
    sub d
    ld d, $7f
    ld h, h
    db $fd
    ld h, h
    db $fd
    ld a, a
    push hl
    ld d, $fa
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    add hl, de
    sbc l
    sub d
    ld d, $7f
    ld h, h
    db $fd
    ld h, h
    db $fd
    ld a, a
    push hl
    ld d, $fa
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    and l
    and l
    and l
    or d
    call nc, Call_00e_7fe5
    and $95
    sub d
    ld h, b
    and c
    dec c
    sbc a
    sbc d
    ld [$967f], a
    push hl
    ld hl, sp+$7f
    db $ec
    sub [hl]
    sub d
    or $93
    ld h, b
    push hl
    and c
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    adc d
    adc d
    dec c
    sbc d
    sbc d
    ld [$e27f], a
    sub [hl]
    sub h
    sbc a
    sub e
    ld h, b
    rra
    adc d
    adc d
    rst RST_38
    or $9a
    sub c
    push hl
    ld h, b
    and c
    dec c
    db $eb
    db $e4
    ld d, $7f
    db $e4
    sub l
    ld hl, sp-$19
    sbc c
    ld sp, hl
    jp hl


    ld [$e17f], a
    adc [hl]
    adc a
    db $e4
    dec c
    pop de
    ret c

    jp hl


    or $93
    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    and l
    and l
    and l
    sub d
    db $f4
    ld a, a
    rst RST_28
    db $e3
    or $8a
    inc c
    sbc d
    sbc d
    and $7f
    sbc l
    db $e3
    ld sp, hl
    or $f8
    ld a, a
    di
    adc a
    db $e4
    sub d
    sub d
    dec c
    xor $93
    xor $93
    ld d, $7f
    sub c
    ld sp, hl
    jp hl


    ld h, e
    ld [$a5a5], a
    and l
    adc e
    rst RST_38
    and l
    and l
    and l
    and l
    and l
    and l
    adc d
    adc d
    dec c
    ldh [$ff9c], a
    sub [hl]
    ld a, a
    sbc d
    ld h, h
    di
    jp hl


    sbc d
    ei
    ld a, a
    sbc d
    ld a, [$0de4]
    sub l
    push hl
    inc e
    or $93
    push hl
    and l
    and l
    and l
    adc e
    inc c
    sbc a
    sub e
    ld h, b
    adc a
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
    db $ec
    ei
    jp hl


    ld a, a
    sbc [hl]
    db $fd
    or b
    ld a, a
    rst RST_20
    sbc b
    db $e4
    ld a, a
    sub d
    sub a
    sub l
    sub d
    or $98
    ldh a, [rNR33]
    ld d, $7f
    push hl
    ld d, $fa
    db $e3
    and l
    and l
    and l
    sbc a
    sbc h
    db $e3
    dec c
    sbc d
    sbc d
    db $e4
    ld a, a
    sub l
    push hl
    inc e
    or $93
    and $a5
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    ld h, b
    ldh a, [c]
    ld h, b
    adc d
    dec c
    sbc d
    ld a, [$1c92]
    adc [hl]
    sub e
    ld a, a
    sub l
    di
    sub d
    ld h, b
    sbc [hl]
    push hl
    sub d
    adc d
    rst RST_38
    and l
    and l
    and l
    and l
    and l
    and l
    adc d
    adc d
    dec c
    sbc d
    sub d
    ldh [c], a
    ld [$bc7f], a
    and h
    add hl, sp
    reti


    jp hl


    dec c
    db $eb
    adc a
    sbc [hl]
    sub a
    inc e
    adc h
    push hl
    sub d
    adc d
    adc d
    inc c
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
    and c
    dec c
    cp l
    ret nz

    db $dd
    or e
    xor a
    ld b, h
    ldh [$ffe1], a
    ld d, $7f
    rla
    rra
    sub e
    sbc h
    ldh [$ff0d], a
    db $e3
    ld d, $f0
    sub [hl]
    adc d
    adc d
    rst RST_38
    add hl, de
    sbc l
    sub d
    ld h, h
    sub e
    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    dec c
    inc e
    ldh a, [c]
    inc e
    ldh a, [c]
    sbc h
    db $e3
    sub d
    ld sp, hl
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


    sub e
    sub h
    ld [$e47f], a
    sub l
    ld hl, sp+$60
    ei
    sub e
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_38
    scf
    xor h
    and h
    adc d
    adc d
    adc d
    adc d
    adc d
    dec c
    call c, Call_00e_7faf
    call c, Call_00e_7faf
    call c, Call_00e_60c6
    adc d
    adc d
    inc c
    add hl, de
    sbc l
    sub d
    ld h, h
    sub e
    jp hl


    ld a, a
    push hl
    sub [hl]
    and $7f
    db $e4
    ldh [c], a
    ld e, $fd
    dec c
    sub l
    sub l
    sub a
    push hl
    ld a, a
    call c, $16c6
    and l
    and l
    and l
    adc d
    adc d
    rst RST_38
    sbc b
    pop hl
    or b
    ld a, a
    sub l
    sub l
    sub a
    sbc b
    ld a, a
    sub c
    sbc c
    db $e3
    sub d
    ld sp, hl
    adc d
    dec c
    sub [hl]
    push hl
    ld hl, sp+$7f
    ld [$b0f7], a
    ld a, a
    sbc l
    sub [hl]
    sbc [hl]
    db $e3
    sub d
    ld sp, hl
    or $93
    ld h, b
    and c
    ld [$98f4], a
    ld a, a
    push hl
    db $fd
    db $e4
    sub [hl]
    ld a, a
    sbc h
    push hl
    sbc b
    db $e3
    ld [$ff8a], a
    sbc a
    ld a, [$9a64]
    ei
    inc e
    adc h
    push hl
    sub d
    adc d
    dec c
    ld [$98f4], a
    ld a, a
    call c, $b0c6
    ld a, a
    push hl
    db $fd
    db $e4
    sub [hl]
    dec c
    sbc h
    push hl
    sbc b
    db $e3
    ld [$a5a5], a
    and l
    adc d
    rst RST_38
    call c, $b0c6
    ld a, a
    sbc h
    db $e4
    ldh a, [c]
    ldh [$ff1f], a
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
    sub d
    jp hl


    pop hl
    ld [$e00d], a
    sbc l
    sub [hl]
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    and l
    and l
    and l
    and c
    inc c
    sub e
    db $fd
    or $98
    ld a, a
    ld e, e
    cp l
    call nz, $e9d9
    ld a, a
    sub l
    db $e4
    and $ea
    dec c
    ld h, b
    ld a, [$7ff3]
    sub a
    ld h, d
    sub d
    db $e3
    sub d
    push hl
    sub d
    or $93
    ld h, b
    and c
    inc c
    add hl, de
    sbc l
    sub d
    ld d, $7f
    db $ec
    sub [hl]
    sub d
    jp hl


    ld d, $0d
    sbc e
    sub d
    db $fc
    sub d
    sbc h
    ldh [$fff6], a
    sub e
    ld h, b
    push hl
    and c
    rst RST_38
    scf
    xor h
    and h
    xor a
    adc d
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    pop af
    dec de
    db $fd
    and $f3
    ld a, a
    call c, $e6c6
    dec c
    sbc b
    db $fc
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sub a
    sub l
    sbc b
    ld d, $7f
    rst RST_28
    adc a
    ldh [$ff98], a
    ld a, a
    push hl
    sub d
    adc d
    adc d
    dec c
    sbc a
    ld a, [$9a64]
    ei
    sub [hl]
    ld a, a
    ldh [c], a
    sub [hl]
    ld a, [$7f16]
    rst RST_28
    sbc l
    rst RST_28
    sbc l
    dec c
    db $eb
    ld h, h
    sbc b
    push hl
    adc a
    db $e3
    sub a
    ldh [$ffa1], a
    inc c
    ld [$98f4], a
    ld a, a
    push hl
    and $96
    ld a, a
    sbc h
    push hl
    sbc c
    ld a, [$a56a]
    and l
    and l
    and c
    dec c
    inc e
    sub [hl]
    db $fd
    ld d, $7f
    ldh [$fff8], a
    push hl
    sbc b
    push hl
    adc a
    db $e3
    sbc h
    rst RST_28
    sub e
    or $93
    push hl
    sub a
    ld d, $9c
    db $e3
    push hl
    rst RST_30
    push hl
    sub d
    adc d
    rst RST_38
    ld c, h
    reti


    and h
    ret nz

    cp b
    cp h
    and h
    jp hl


    ld a, a
    push hl
    sub [hl]
    and $7f
    ld [$8f92], a
    ldh [$ffa1], a
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$b27f], a
    rst RST_10
    or d
    rst RST_10
    sbc h
    db $e3
    sub d
    ld sp, hl
    dec c
    or $93
    ld h, b
    and c
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld d, $7f
    ld l, h
    adc a
    sub a
    rst RST_30
    ld l, [hl]
    sub e
    and $0d
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $64
    sbc d
    db $ed
    ld a, a
    sub d
    sbc b
    db $fd
    ld h, b
    sub d
    adc e
    rst RST_18
    rst RST_38
    or a
    or a
    and h
    xor a
    adc d
    inc c
    sbc h
    ld l, d
    rst RST_30
    sbc b
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
    ld [$920d], a
    sub a
    push hl
    ld hl, sp+$7f
    ret nz

    cp b
    cp h
    and h
    or b
    db $e4
    ldh a, [c]
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
    ldh [c], a
    sub a
    rst RST_28
    sbc h
    ldh [rNR34], a
    and c
    dec c
    ld a, a
    and l
    and l
    and l
    add a
    add l
    cp [hl]
    db $dd
    call nz, $927f
    ldh [$ff60], a
    sub a
    rst RST_28
    sbc l
    and c
    inc c
    ld a, a
    jp hl


    ld hl, sp-$1a
    add hl, de
    push hl
    db $fd
    db $e3
    ld a, a
    sbc [hl]
    sbc d
    sub d
    sbc d
    db $e4
    dec c
    ld a, a
    sub [hl]
    db $fd
    ld d, $94
    pop hl
    adc h
    ld a, a
    sub d
    sbc c
    rst RST_28
    sbc [hl]
    db $fd
    ld e, $8a
    rst RST_18
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$6c7f], a
    sub c
    sub d
    sbc a
    sub e
    push hl
    dec c
    ldh [$ff92], a
    ld h, h
    jp hl


    rst RST_28
    rst RST_28
    ld a, a
    sub [hl]
    add sp, -$17
    ld a, a
    sub [hl]
    db $fd
    inc e
    adc [hl]
    sub e
    or b
    dec c
    ld [$f21c], a
    ldh [$ffa1], a
    inc c
    sbc $a5
    and l
    and l
    db $eb
    sub d
    ld a, a
    db $ec
    sub e
    ld a, a
    ldh a, [$ff92]
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    ldh [$ff9c], a
    sub [hl]
    and $7f
    sub e
    sbc c
    db $e4
    adc a
    ldh [rNR34], a
    adc d
    rst RST_18
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld h, b
    and c
    dec c
    ld h, h
    sub e
    sbc h
    ldh [$ff9a], a
    db $e4
    sub [hl]
    ld a, a
    db $e4
    db $e3
    di
    dec c
    or d
    rst RST_10
    or d
    rst RST_10
    sbc h
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ld hl, sp-$72
    sub e
    sub a
    db $fd
    sub d
    ld a, [$a160]
    dec c
    sbc d
    sbc d
    and $7f
    sub l
    sub [hl]
    add sp, -$50
    ld a, a
    sub d
    ld a, [$6afa]
    dec c
    or $92
    jp hl


    ld h, b
    ei
    sub e

Jump_00e_4ca4:
    and c
    rst RST_38
    push hl
    db $fd
    jp hl


    ld a, a
    reti


    and h
    call nz, $fb60
    sub e
    and l
    and l
    and l
    adc e
    inc c
    and l
    and l
    and l
    and l
    and l
    and l
    sub c
    adc a
    adc d
    dec c
    sub e
    rst RST_30
    and $7f
    jp nc, Jump_000_16d3

    adc d
    adc d
    inc c
    sbc $b4
    and h
    cp l
    ld a, a
    sbc d
    jp hl


    db $e4
    sub l
    ld hl, sp-$1a
    ld a, a
    ld [$fa9c], a
    and c
    dec c
    ld a, a
    cp l
    ld e, e
    and h
    ld b, h
    sub d
    ld [$e6fd], a
    ld a, a
    sub a
    or b
    ldh [c], a
    sbc c
    ei
    or $a1
    inc c
    ld a, a
    sbc c
    sub d
    sub [hl]
    db $fd
    and $7f
    call nz, $ddd7
    cp b
    jp hl


    ld a, a
    db $eb
    db $e4
    inc e
    pop hl
    or b
    ld a, a
    ldh a, [$ffe2]
    sbc c
    rst RST_30
    ld a, [$98e0]
    push hl
    sub d
    ld h, b
    ei
    sub e
    and c
    rst RST_18
    inc c
    and l
    and l
    and l
    db $eb
    db $e4
    inc e
    pop hl
    adc e
    dec c
    push hl
    db $fd
    jp hl


    sbc d
    db $e4
    ld h, b
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
    and c
    rst RST_38
    pop hl
    adc l
    sub e
    sbc h
    adc h
    sub a
    or b
    ld a, a
    ldh [c], a
    sub [hl]
    sub l
    sub e
    db $e4
    sbc h
    ldh [$ffa1], a
    dec c
    sbc h
    sub [hl]
    sbc h
    ld a, a
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
    and $0d
    sub c
    ld sp, hl
    ld a, a
    ld l, [hl]
    sub e
    ld h, b
    db $fd
    ld [hl], $d7
    cp l
    and $7f
    ld [$ef6a], a
    ld a, [$0de3]
    sub e
    db $e3
    push hl
    sub d
    adc d
    rst RST_38
    sub l
    ld a, [$7fea]
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    and $7f
    add sp, -$09
    sub d
    or b
    ldh [c], a
    sbc c
    ld e, e
    cp l
    call nz, $b0d9
    ld a, a
    sub e
    adc a
    ldh [$ffa1], a
    inc c
    sbc h
    sub [hl]
    sbc h
    ld a, a
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
    jp hl


    dec c
    ld l, [hl]
    sub e
    ld h, b
    db $fd
    ld [hl], $d7
    cp l
    and $7f
    ld [$ef6a], a
    ld a, [$a1e0]
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
    ld e, d
    call nz, $a4b6
    ld d, $f4
    adc a
    db $e3
    sub a
    ldh [$ffa1], a
    dec c
    sub l
    ld a, [$7fea]
    sbc c
    sub d
    sbc e
    ldh [c], a
    and $7f
    ldh [c], a
    sub [hl]
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    or d
    or h
    db $db
    and h
    ret nz

    cp b
    cp h
    and h
    and $7f
    ld [$8f92], a
    ldh [$ffa1], a
    dec c
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$eb7f], a
    db $e4
    ld d, $f6
    sbc e
    sbc a
    sub e
    ld h, b
    and c
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld h, b
    and c
    dec c
    sub h
    rst RST_30
    sbc b
    ld a, a
    sub c
    sub d
    sbc a
    sub e
    ld d, $7f
    sub d
    sub d
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    sub [hl]
    add sp, -$50
    ld a, a
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    and $0d
    db $fc
    ldh [$ff9c], a
    ldh [$ffa1], a
    dec c
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$e67f], a
    sbc d
    db $f4
    sub [hl]
    and $7f
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $ea
    sub d
    and c
    dec c
    ld a, a
    ldh [$ff9c], a
    sub [hl]
    and $7f
    sub e
    sbc c
    db $e4
    ld hl, sp-$11
    sbc h
    ldh [$ffa1], a
    dec c
    ld a, a
    ld h, h
    sub e
    di
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
    sbc $9a
    sbc d
    ld h, e
    sbc l
    add sp, -$5f
    rst RST_18
    inc c
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld [$9f7f], a
    sub e
    sub d
    sub d
    push hl
    ld d, $f7
    dec c
    ret nz

    cp b
    cp h
    and h
    or b
    ld a, a
    db $e4
    ldh a, [c]
    ldh [$ffa1], a
    dec c
    sbc a
    sbc h
    db $e3
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $87
    add l
    cp [hl]
    db $dd
    call nz, $927f
    ldh [$ff60], a
    sub a
    rst RST_28
    sbc l
    and c
    dec c
    ld a, a
    ldh a, [rNR22]
    and $91
    ld sp, hl
    ld a, a
    ld hl, sp-$72
    sub e
    sub a
    db $fd
    sub d
    ld a, [$0de6]
    ld a, a
    sub d
    ld a, [$98e3]
    ld h, b
    sbc e
    sub d
    and c
    rst RST_18
    rst RST_38
    sub e
    db $fd
    db $e3
    db $fd
    sbc h
    adc l
    ld d, $7f
    sub h
    ld d, $95
    ld h, e
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
    dec c
    ld a, a
    ld h, h
    sbc d
    rst RST_28
    ld h, e
    ld a, a
    sub d
    sub a
    rst RST_28
    sbc l
    sub [hl]
    adc e
    rst RST_18
    rst RST_38
    rst RST_08
    db $dd
    cp h
    xor [hl]
    db $dd
    jp hl


    ld a, a
    rst RST_28
    sub h
    ld h, b
    and c
    dec c
    sub [hl]
    push hl
    ld hl, sp+$7f
    sbc d
    sub e
    sub a
    adc l
    sub e
    sbc a
    sub e
    ld h, b
    and c
    inc c
    sbc d
    db $fd
    push hl
    db $e4
    sbc d
    ei
    and $7f
    sbc l
    pop af
    jp hl


    ld [$927f], a
    adc a
    ldh [$ff92], a
    dec c
    ld h, h
    db $fd
    push hl
    call nc, $e5c2
    db $fd
    ld h, b
    ei
    sub e
    and l
    and l
    and l
    and c
    rst RST_38
    sub a
    ld a, [$e592]
    ld a, a
    ld c, e
    reti


    ld h, b
    and c
    dec c
    ldh [$ffe3], a
    rst RST_30
    ld a, [$96e3]
    rst RST_30
    ld a, a
    push hl
    db $fd
    add sp, -$03
    di
    dec c
    ldh [$ff8f], a
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
    rst RST_08
    db $dd
    cp h
    xor [hl]
    db $dd
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
    db $eb
    db $e4
    ld h, h
    sub l
    ld hl, sp-$16
    ld a, a
    sub c
    rst RST_28
    ld hl, sp+$7f
    sub l
    sub l
    sbc b
    push hl
    sub d
    and c
    rst RST_38
    rst RST_08
    db $dd
    cp h
    xor [hl]
    db $dd
    jp hl


    ld a, a
    rst RST_28
    sub h
    and $7f
    sub l
    db $e4
    rst RST_30
    dec e
    dec c
    db $db
    ld c, e
    and h
    di
    ld a, a
    ld hl, sp-$71
    ld a, d
    ld h, b
    and c
    inc c
    sbc h
    ei
    sub d
    ld a, a
    sub h
    db $fd
    pop hl
    adc l
    sub e
    ld d, $7f
    ld a, [de]
    sub e
    sub [hl]
    sbc e
    or b
    dec c
    sub d
    adc a
    sbc a
    sub e
    ld a, a
    db $eb
    sub a
    ldh [$ffe3], a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    or h
    jp c, $a46d

    ret nz

    ld h, b
    and c
    dec c
    sbc h
    sub [hl]
    sbc h
    ld a, a
    db $ec
    ldh [c], a
    sub e
    jp hl


    di
    jp hl


    db $e4
    ld [$9f7f], a
    sub e
    sbc e
    jp hl


    dec c
    sbc h
    sub [hl]
    ldh [rNR21], a
    ld a, a
    pop hl
    ld d, $93
    or $93
    ld h, b
    and c
    rst RST_38
    ldh a, [$ff1f]
    jp hl


    or $93
    push hl
    di
    jp hl


    ld d, $7f
    sub c
    ld sp, hl
    and c
    rst RST_38
    db $db
    ld c, e
    and h
    ld h, b
    and c
    dec c
    sbc h
    adc [hl]
    sub e
    ldh a, [c]
    db $fd
    and $7f
    or h
    jp c, $a46d

    ret nz

    ld d, $7f
    ldh a, [$ff94]
    ld sp, hl
    and c
    rst RST_38
    ld e, d
    cp l
    or [hl]
    and h
    ld b, h
    or b
    ld a, a
    ldh a, [$ff1f]
    and $7f
    sbc e
    sbc h
    sbc d
    db $fd
    ld h, b
    and c
    inc c
    cp l
    and h
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
    ld e, d
    cp l
    or [hl]
    and h
    ld b, h
    or b
    ld a, a
    ldh a, [$ff1f]
    and $7f
    sbc e
    sbc h
    sbc d
    db $fd
    ld h, b
    and c
    inc c
    cp l
    and h
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
    db $db
    ld c, e
    and h
    and $7f
    sub c
    adc a
    ldh [$fff3], a
    jp hl


    db $e4
    ld a, a
    sub l
    push hl
    inc e
    ld h, b
    and c
    dec c
    and l
    and l
    and l
    db $e4
    ld a, a
    sub d
    sub e
    sbc d
    db $e4
    ld [$9b7f], a
    adc a
    sub a
    db $e4
    dec c
    sub l
    push hl
    inc e
    db $f4
    ld hl, sp-$6a
    ldh [$ff63], a
    ld a, a
    sbc l
    ld a, [$7f6a]
    sub d
    sub d
    jp hl


    sub [hl]
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
    inc c
    push hl
    and $b0
    ld a, a
    jr jr_00e_509b

    jr jr_00e_509d

    ld a, a
    sbc h
    db $e3
    sub d
    ld sp, hl
    db $fd
    ld h, b
    adc d
    dec c
    sbc l
    ld sp, hl
    sbc d
    db $e4
    ld [$977f], a
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    inc e
    adc h
    push hl
    sub d
    sub [hl]
    adc d

jr_00e_509b:
    rst RST_38
    ld e, d

jr_00e_509d:
    cp l
    or [hl]
    and h
    ld b, h
    or b
    ld a, a
    ldh a, [$ff1f]
    db $ed
    ld a, a
    sbc e
    sbc h
    sbc d
    db $fd
    ld h, b
    and c
    dec c
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    rst RST_38
    sbc h
    adc h
    ld a, [$ede0]
    db $f4
    ld h, b
    and c
    dec c
    di

jr_00e_50c0:
    pop hl
    rst RST_20
    sbc h
    ld [$967f], a
    push hl
    ld hl, sp-$17
    ld a, a
    db $eb
    db $e4
    ld h, b
    ei
    sub e
    and c
    dec c
    and l
    and l
    and l
    sub [hl]
    jr jr_00e_50c0

    ld a, a
    sbc h
    adc l
    ldh a, [$fff3]
    sub d
    sub d
    and c
    rst RST_38
    sbc d
    jp hl


    db $ed
    db $f4
    and $7f
    sub d
    db $f4
    ldh a, [$ffe5]
    xor $64
    ld a, a
    and $91
    sub e
    dec c
    cp h
    xor h
    db $dd
    ld b, e
    ret c

    or c
    ld h, b
    and c
    rst RST_38
    push hl
    ld d, $b2
    cp l
    ld h, b
    and c
    dec c
    or [hl]
    ld c, d
    and h
    ld [$967f], a
    db $fc
    ld h, e
    ld a, a
    ld h, e
    sub a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    db $eb
    db $e4
    ld hl, sp+$16
    sbc c
    jp hl


    ld a, a
    or d
    cp l
    ld h, b
    and c
    dec c
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
    sub a
    ld a, [$e592]
    ld a, a
    sub d
    ei
    ld h, d
    sub [hl]
    sub d
    jp hl


    ld a, a
    sub h
    ld h, b
    and c
    dec c
    db $e4
    db $e3
    di
    ld a, a
    db $d3
    ld b, b
    db $dd
    push hl
    sub [hl]
    db $fd
    inc e
    ld d, $7f
    sbc l
    ld sp, hl
    and c
    rst RST_38
    ld h, b
    db $fd
    ei
    ld h, b
    and c
    dec c
    sub h
    db $fd
    db $e4
    ldh [c], a
    ld d, $7f
    push hl
    sub d
    db $e4
    sbc d
    ei
    or b
    ld a, a
    ldh a, [$fff9]
    db $e4
    dec c
    ldh [$fffd], a
    push hl
    ld sp, hl
    ld a, a
    sub [hl]
    dec de
    ld hl, sp+$60
    ei
    sub e
    and c
    rst RST_38
    db $eb
    sbc b
    sub d
    ld a, a

jr_00e_5175:
    pop hl
    sub d
    sbc e
    push hl
    ld a, a
    jp Jump_00e_4ca4


    reti


    ld h, b
    and c
    dec c
    cp a
    call z, $a4a7
    push hl
    ld h, h
    db $e4
    ld a, a
    or $98
    sub d
    adc a
    sbc h
    adc [hl]
    and $0d
    sub l
    sub [hl]
    ld a, [$92e3]
    ld sp, hl
    di
    jp hl


    ld h, b
    and c
    rst RST_38
    jr c, jr_00e_5175

    ld c, e
    or c
    dec de
    adc a
    sbc h
    ld h, b
    and c
    dec c
    sbc d
    db $fd
    push hl
    db $e4
    sbc d
    ei
    ld h, e
    ld a, a
    sbc d
    db $fd
    push hl
    di
    jp hl


    or b
    dec c
    or $fd
    ld h, e
    sub d
    ld sp, hl
    ld a, a
    set 1, a
    ld [$92e5], a
    and c
    rst RST_38
    rst RST_28
    ld sp, hl
    sbc b
    db $e3
    ld a, a
    sub l
    sub l
    sub a
    push hl
    ld a, a
    or [hl]
    ld [hl], $d0
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
    sbc h
    adc h
    sbc h
    db $fd
    ld h, b
    and c
    dec c
    sub l
    db $fd
    push hl
    ld d, $7f
    db $eb
    db $e4
    ld hl, sp+$63
    ld a, a
    sub e
    ldh [c], a
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    sub [hl]
    ldh a, [$ffea]
    ld a, a
    sbc b
    ld hl, sp+$19
    sub d
    ei
    ld h, e
    ld a, a
    sub [hl]
    sub l
    di
    dec c
    db $e4
    db $e4
    jp hl


    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    sub [hl]
    push hl
    ld hl, sp+$7f
    sub d
    sub d
    sub l
    db $fd
    push hl
    ld h, b
    and c
    inc c
    and l
    and l
    and l
    db $fd
    adc a
    adc e
    dec c
    sub e
    rst RST_30
    and $7f
    inc e
    adc l
    sub e
    sbc h
    adc [hl]
    ld d, $a5
    and l
    and l
    and c
    inc c
    sbc $b9
    inc a
    and h
    ld h, h
    sub l
    ld hl, sp+$7f
    add l
    add d
    add b
    rst RST_18
    and l
    and l
    and l
    and c
    inc c
    push hl
    rst RST_28
    sub h
    ld [$de7f], a
    rst RST_08
    and h
    cp e
    and l
    ld c, e
    xor a
    or [hl]
    and h
    cp l
    rst RST_18
    and $0d
    push hl
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    xor $fd
    ld h, b
    push hl
    ld h, b
    and c
    dec c
    db $eb
    adc h
    adc a
    sub [hl]
    inc e
    db $e3
    db $fd
    push hl
    ld h, h
    jp hl


    ld a, a
    ld l, h
    sub c
    ldh [c], a
    sub d
    dec c
    xor $fd
    ld d, $7f
    sub d
    adc a
    ld a, d
    sub d
    ld a, a
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    and l
    and l
    and l
    and l
    and l
    and l
    push hl
    db $fd
    ld h, b
    adc e
    dec c
    sbc d
    jp hl


    db $ed
    db $f4
    ld h, e
    ld a, a
    db $f4
    ld hl, sp-$17
    sbc d
    sbc h
    ldh [$ff9a], a
    db $e4
    ld d, $0d
    sub c
    ld sp, hl
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
    rst RST_38
    ld c, d
    db $dd
    ld [hl], $db
    and h
    ld h, b
    and c
    dec c
    and $fc
    ld d, $7f
    sub c
    ld a, [$93ee]
    ld h, b
    sub d
    ld a, a
    sub c
    ld a, [$92e3]
    ld sp, hl
    and c
    dec c
    db $eb
    db $e4
    ld [$9d7f], a
    db $fd
    ld h, e
    sub d
    push hl
    sub d
    jp hl


    ld h, b
    ei
    sub e
    sub [hl]
    adc e
    rst RST_38
    sub c
    sub d
    ldh [$ffef], a
    rst RST_28
    ld h, e
    ld [$e27f], a
    sub [hl]
    sub h
    push hl
    sub d
    and c
    rst RST_38
    ld b, h
    or c
    ld h, b
    and c
    inc c
    ld h, h
    sub e
    di
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
    rst RST_30
    sbc h
    sub d
    and c
    inc c
    sbc d
    sbc d
    jp hl


    ld a, a
    or [hl]
    scf
    rst RST_30
    sbc h
    sub d
    di
    jp hl


    ld [$f30d], a
    adc a
    db $e3
    sub d
    push hl
    sub d
    ld d, $a5
    and l
    and l
    and c
    rst RST_38
    db $ec
    db $ec
    db $ec
    db $fd
    adc d
    dec c
    sbc d
    sub e
    push hl
    adc a
    ldh [$fff7], a
    ld a, a
    pop hl
    sub [hl]
    rst RST_30
    dec e
    sbc b
    ld h, e
    dec c
    sub c
    sbc c
    ld sp, hl
    sbc h
    sub [hl]
    push hl
    sub d
    push hl
    adc d
    inc c
    or [hl]
    scf
    or b
    ld a, a
    sbc d
    db $fc
    sbc l
    jp hl


    push hl
    rst RST_30
    ld a, a
    db $f4
    ld [$a5f8], a
    and l
    and l
    and c
    rst RST_38
    or $8f
    ld a, d
    rst RST_30
    sub d
    ld [$c67f], a
    call nc, $d4c6
    sbc h
    push hl
    ld d, $f7
    dec c
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $82
    add l
    cp [hl]
    db $dd
    call nz, $b2ba
    db $dd
    ld a, a
    add d
    rst RST_28
    sub d
    ld h, b
    or $93
    adc d
    rst RST_18
    rst RST_38
    or [hl]
    pop bc
    xor a
    adc d
    inc c
    and l
    and l
    and l
    ldh [$ffef], a
    ld d, $7f
    push hl
    sbc b
    push hl
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    rst RST_38
    sub e
    rst RST_30
    and $7f
    sbc d
    sub e
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    dec c
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and c
    inc c
    sbc $b4
    and h
    cp l
    ld a, a
    sbc d
    jp hl


    db $e4
    sub l
    ld hl, sp-$1a
    ld a, a
    ld [$fa9c], a
    and c
    dec c
    ld a, a
    cp l
    ld e, e
    and h
    ld b, h
    sub d
    ld [$e6fd], a
    ld a, a
    sub a
    or b
    ldh [c], a
    sbc c
    ei
    or $a1
    inc c
    ld a, a
    sbc c
    sub d
    sub [hl]
    db $fd
    and $7f
    call nz, $ddd7
    cp b
    jp hl


    ld a, a
    db $eb
    db $e4
    inc e
    pop hl
    or b
    ld a, a
    ldh a, [$ffe2]
    sbc c
    rst RST_30
    ld a, [$98e0]
    push hl
    sub d
    ld h, b
    ei
    sub e
    and c
    rst RST_18
    inc c
    sub c
    sub c
    adc a
    ld a, a
    sbc d
    ld a, [$7f16]
    inc e
    sub [hl]
    db $fd
    db $eb
    adc [hl]
    sub e
    and $0d
    sub [hl]
    sub d
    db $e3
    sub c
    adc a
    ldh [$ff7f], a
    pop hl
    dec e
    ld h, b
    push hl
    adc d
    dec c
    db $e4
    ld a, a
    sub d
    sub e
    sbc d
    db $e4
    ld [$a5a5], a
    and l
    adc d
    inc c
    sbc d
    ld a, [$7fea]
    cp l
    ret nz

    db $dd
    or e
    xor a
    ld b, h
    ldh [$ffe1], a
    ld d, $0d
    sub [hl]
    sub d
    ldh [$fff3], a
    jp hl


    ld h, b
    and l
    and l
    and l
    adc d
    rst RST_38
    ldh [$ffe3], a
    di
    jp hl


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
    rst RST_38
    ldh [$ffe3], a
    di
    jp hl


    jp hl


    ld a, a
    push hl
    sub [hl]
    and $7f
    ld [$8f92], a
    ldh [$ffa1], a
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
    and $95
    sub d
    ld d, $0d
    ld [$b0e5], a
    ldh [c], a
    sbc b
    and l
    and l
    and l
    and c
    rst RST_38
    push hl
    db $fd
    jp hl


    ld a, a
    sub [hl]
    dec de
    ld hl, sp-$67
    di
    push hl
    sub d
    ld a, a
    jp Jump_00e_4ca4


    reti


    ld h, b
    and c
    push bc
    or d
    call nz, $a4c3
    ld c, h
    reti


    jp hl


    ld a, a
    sub [hl]
    db $fc
    ld hl, sp-$1b
    jp hl


    ld h, b
    ei
    sub e
    and c
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
    pop hl
    sub d
    sbc e
    push hl
    ld a, a
    sub [hl]
    ldh a, [$ff97]
    ld a, [$a160]
    dec c
    sbc l
    sub e
    inc e
    ld d, $7f
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    sbc $82
    add l
    and h
    add b
    add e
    and h
    add h
    add l
    rst RST_18
    rst RST_38
    sub [hl]
    ldh a, [$ff97]
    ld a, [$a160]
    dec c
    sbc l
    sub e
    inc e
    ld d, $7f
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    inc c
    sbc $83
    add e
    and h
    add d
    add h
    and h
    add e
    add [hl]
    rst RST_18
    rst RST_38
    rst RST_08
    xor a
    call nz, $96e9
    ldh [$ff9f], a
    sub e
    push hl
    ld a, a
    ld l, l
    xor a
    ld b, h
    ld h, b
    and c
    dec c
    sub a
    pop hl
    db $fd
    db $e4
    ld a, a
    ld l, l
    xor a
    ld b, h
    jp nc, $b7b2

    db $dd
    jr c, jr_00e_5515

    dec c
    sbc h
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    or d
    or c
    ret c

    db $dd
    jr c, jr_00e_556c

    and c
    rst RST_38
    rst RST_08
    cp l
    ret nz

    and h
    ld a, a
    or a
    and h

jr_00e_5515:
    ld h, b
    and c
    dec c
    sub [hl]
    push hl
    ld hl, sp+$7f
    or $1a
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    and $8f
    sub a
    pop hl
    adc [hl]
    sub e
    ld h, b
    and c
    dec c
    sbc $cf
    and h
    cp e
    rst RST_18
    db $e4
    ld a, a
    ldh [$ff8f], a
    ld a, e
    ldh [c], a
    ld h, e
    ld a, a
    push hl
    rst RST_28
    sub h
    ld d, $0d
    sub [hl]
    sub [hl]
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    db $eb
    rst RST_30
    db $f4
    jp hl


    ld a, a
    ldh [$ffe3], a
    di
    jp hl


    jp hl


    ld a, a
    push hl
    sub [hl]
    ld h, b
    and c
    rst RST_38
    db $ec
    ldh [c], a
    sub e
    jp hl


    ld a, a
    sub [hl]
    ldh a, [$ff9e]
    sub d
    jp hl


    ld a, a
    sbc h
    sub l
    ld hl, sp+$60
    and c
    inc c
    sub l
    db $f4
    adc e
    dec c

jr_00e_556c:
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
    sbc $81
    add d
    ld d, $e2
    ld a, a
    add l
    and $e1
    dec c
    ld a, a
    rst RST_28
    ldh [$ff7f], a
    cp h
    and h
    add hl, sp
    reti


    sub [hl]
    rst RST_30
    ld a, a
    sbc e
    sbc a
    db $fc
    ld a, [$a1e0]
    dec c
    ld a, a
    sub [hl]
    ld a, [$eae4]
    ld a, a
    db $e4
    adc a
    sbc b
    and $0d
    ld a, a
    db $fc
    sub [hl]
    ld a, [$e9e0]
    and $a5
    and l
    and l
    and c
    inc c
    ld a, a
    sub c
    db $fd
    push hl
    ld a, a
    sbc h
    adc a
    db $e4
    ld l, h
    sub [hl]
    sub d
    ld a, a
    sub l
    db $e4
    sbc d
    db $e4
    dec c
    ld a, a
    ldh [c], a
    sub a
    sub c
    adc a
    db $e3
    sub d
    ldh [$ff8f], a
    db $e3
    ld a, a
    push hl
    db $fd
    jp hl


    dec c
    ld a, a
    db $e4
    sbc b
    and $f3
    ld a, a
    push hl
    ld hl, sp-$16
    sbc h
    push hl
    sub d
    and c
    inc c
    ld a, a
    sbc a
    jp hl


    db $e3
    db $fd
    ld a, a
    sub l
    sbc b
    sbc e
    db $fd
    ld [$927f], a
    ld sp, hl
    sbc c
    ld h, h
    dec c
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
    ld [$7f0d], a
    sbc l
    ld l, d
    rst RST_30
    sbc h
    sub d
    db $eb
    db $e4
    and c
    inc c
    ld a, a
    db $fc
    ldh [$ff9c], a
    jp hl


    ld a, a
    jp hl


    rra
    pop af
    di
    jp hl


    ld [$e57f], a
    db $fd
    ld h, e
    di
    dec c
    ld a, a
    ld e, h
    jp c, $dd3e

    call nz, $e39c
    sbc b
    ld a, [$a1f9]
    inc c
    ld a, a
    sub [hl]
    ld a, [$7fe4]
    sbc c
    adc a
    sbc d
    db $fd
    ld h, e
    sub a
    ldh [$fff7], a
    dec c
    ld a, a
    ld h, h
    db $fd
    push hl
    di
    jp hl


    ld h, e
    di
    ld a, a
    db $e3
    and $7f
    sub d
    ld a, [$9af9]
    db $e4
    ld d, $7f
    ld h, e
    sub a
    ld sp, hl
    jp hl


    and $a5
    and l
    and l
    and c
    rst RST_18
    inc c
    push hl
    db $fd
    db $e3
    ld a, a
    sub l
    db $fd
    push hl
    ld h, b
    adc d
    adc d
    dec c
    sub l
    ld a, [$7fea]
    sbc d
    sub e
    sub d
    sub e
    ld a, a
    sub l
    db $fd
    push hl
    ld d, $0d
    sub d
    pop hl
    ld l, d
    db $fd
    sub a
    rst RST_30
    sub d
    ld h, b
    adc d
    adc d
    rst RST_38
    sub l
    ld a, [$7fea]
    sbc h
    sub l
    ld hl, sp+$16
    ld a, a
    ld [$fd9b], a
    ld h, e
    sub c
    ld sp, hl
    dec c
    ld a, l
    and h
    inc a
    or b
    ld a, a
    db $eb
    rst RST_30
    sub d
    ldh [$ffa1], a
    rst RST_38
    dec e
    sub d
    ld l, h
    db $fd
    db $e4
    ld a, a
    sub a
    ldh [$ffe5], a
    sub d
    ld a, a
    or l
    call z, $bda8
    ld c, e
    reti


    jp hl


    rst RST_28
    sub h
    ld h, b
    and c
    rst RST_38
    ld c, e
    reti


    ld h, b
    and c
    dec c
    ldh [$ff96], a
    sbc e
    ld [$9f7f], a
    db $fd
    push hl
    and $7f
    push hl
    sub d
    and c
    rst RST_38
    db $e4
    sub l
    ld hl, sp+$60
    and c
    dec c
    sub c
    ldh [$fff8], a
    ld [$e47f], a
    db $e3
    di
    ld a, a
    sbc h
    dec e
    sub [hl]
    ld h, b
    and c
    rst RST_38
    db $db
    ld c, e
    and h
    ld h, b
    and c
    dec c
    ldh a, [rNR22]
    ld d, $fc
    and $ea
    ld a, a
    ei
    sub e
    sub [hl]
    ld a, a
    db $eb
    ld h, b
    ld hl, sp+$16
    db $fc
    and $ea
    sub [hl]
    sub d
    ld h, b
    db $fd
    ld d, $7f
    ldh a, [$ff94]
    ld sp, hl
    and c
    rst RST_38
    ei
    sub e
    sub [hl]
    ld h, b
    and c

jr_00e_56fc:
    dec c
    sub [hl]
    push hl
    ld hl, sp+$7f
    sub e
    sbc l
    jr jr_00e_56fc

    sub d
    and c
    rst RST_38
    or l
    call z, $bda8
    jp hl


    ld a, a
    rst RST_28
    sub h
    jp hl


    ld a, a
    or $93
    ld h, b
    and c
    dec c
    sbc $44
    cp b
    ret nz

    and h
    ld a, a
    ld c, h
    db $db
    ld b, e
    xor b
    rst RST_18
    db $e4
    ld a, a
    sub [hl]
    db $fd
    ld l, d
    db $fd
    ld d, $96
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    and l
    and l
    and l
    db $eb
    ldh [$ff92], a
    and $7f
    sub c
    ld l, h
    rst RST_30
    sub c
    sbc [hl]
    or b
    dec c
    and $1c
    rst RST_28
    sbc [hl]
    ld a, a
    sub [hl]
    sub l
    or b
    ld a, a
    push af
    ld d, $f2
    ld [$f21c], a
    ldh [$ffa1], a
    dec c
    sbc b
    ld sp, hl
    sbc h
    sbc a
    sub e
    ld h, b
    adc d
    inc c
    and l
    and l
    and l
    sbc h
    ld l, d
    rst RST_30
    sbc b
    sbc l
    ld sp, hl
    db $e4
    ld a, a
    di
    db $e4
    and $0d
    di
    ld h, h
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    dec c
    sbc h
    rst RST_20
    sbc d
    db $e4
    ld [$e57f], a
    sub [hl]
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    rst RST_38
    sub d
    sbc h
    adc h
    jp hl


    ld a, a
    or l
    call z, $bda8
    rst RST_30
    sbc h
    sbc b
    dec c
    cp b
    cp l
    ret c

    ld c, e
    db $dd
    ld d, $7f
    sub d
    adc a
    ld a, d
    sub d
    push hl
    rst RST_30
    db $fd
    ld h, e
    sub d
    ld sp, hl
    and c
    inc c
    ldh a, [$ffef]
    db $fc
    sbc h
    ldh [$ffe4], a
    sbc d
    ei
    ld a, a
    ld h, b
    ld a, [$0df3]
    sub d
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    di
    sbc b
    sbc [hl]
    sub d
    jp hl


    ld a, a
    cp b
    cp l
    ret c

    ld h, b
    push hl
    ld h, b
    and c
    dec c
    sub [hl]
    push hl
    ld hl, sp+$7f
    db $ec
    ld sp, hl
    sub d
    di
    jp hl


    rst RST_30
    sbc h
    sub d
    and c
    rst RST_38
    ld h, h
    sbc d
    jp hl


    ld a, a
    or l
    call z, $bda8
    and $63
    di
    sub c
    ld sp, hl
    dec c
    or a
    xor h
    ld c, e
    ret z

    xor a
    call nz, $a160
    inc c
    push hl
    sub [hl]
    and $7f
    or [hl]
    reti


    jp $f363


    dec c
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    jp hl


    ld h, b
    ei
    sub e
    and c
    inc c
    sub l
    db $f4
    adc e
    dec c
    or [hl]
    scf
    ld d, $7f
    sub [hl]
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    or $93
    ld h, b
    and c
    rst RST_38
    sbc c
    db $fd
    ld d, $fd
    db $eb
    adc [hl]
    sub e
    ld h, b
    and c
    dec c
    ld l, l
    ldh [c], a
    and $7f
    ldh a, [c]
    ld [$fc7f], a
    ld sp, hl
    sbc b
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    or [hl]
    reti


    jp $e0f0


    sub d
    ld h, b
    and c
    inc c
    sbc $a4
    and h
    ld a, a
    or h
    and h
    cp l
    and l
    jp z, Jump_00e_43a4

    xor b
    db $dd
    jr c, jr_00e_58c4

    and h
    and h
    dec c
    ld a, a
    sbc d
    jp hl


    rst RST_28
    sub h
    jp hl


    ld a, a
    sbc c
    db $fd
    sbc d
    sub e
    sbc h
    db $fd
    ld h, b
    db $fd
    ld h, e
    dec c
    ld a, a
    sub a
    db $fd
    sub h
    db $fd
    or b
    ld a, a
    ldh [c], a
    or $98
    sbc l
    sbc l
    ldh a, [c]
    ldh [$ffa1], a
    rst RST_18
    rst RST_38
    ld hl, sp-$72
    sub e
    sbc h
    adc l
    sub e
    sbc h
    adc [hl]
    jp hl


    ld a, a
    db $eb
    sub [hl]
    sub h
    ld h, b
    and c
    dec c
    db $eb
    db $fd
    ldh a, [c]
    sub d
    db $e4
    ld a, a
    add sp, $60
    db $fd
    ld d, $7f
    sub [hl]
    sub [hl]
    ld a, [$92e3]
    ld sp, hl
    and c
    inc c
    sub l
    db $f4
    adc e
    dec c
    ld b, h
    cp b
    ret nz

    and h
    jp hl


    ld a, a
    ld [$f89c], a
    ld d, $97
    ld d, $a5
    and l
    and l
    and c
    inc c
    sbc $3c
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
    rst RST_28
    sub h
    ld h, e
    dec c
    ld a, a
    db $eb
    sbc h
    adc [hl]
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
    sub [hl]
    rst RST_30
    dec c

jr_00e_58c4:
    ld a, a
    pop hl
    adc l
    sub e
    di
    db $fd
    ld d, $7f
    sub c
    adc a
    ldh [$ffa1], a
    inc c
    ld a, a
    db $e4
    ld h, h
    sbc c
    sbc e
    sub a
    ld [$3c7f], a
    xor [hl]
    and h
    dec a
    and l
    ld c, d
    and h
    and c
    rst RST_18
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

Call_00e_60c6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00e_7f16:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00e_7faf:
    nop

Call_00e_7fb0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00e_7fe5:
    nop
    nop
    nop
    nop

Call_00e_7fe9:
Jump_00e_7fe9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
