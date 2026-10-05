; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

    nop
    ld b, c
    dec hl
    ld b, c
    ld d, [hl]
    ld b, c
    ld [hl], h
    ld b, c
    and b
    ld b, c
    ldh a, [rSTAT]
    ld a, [$2641]
    ld b, d
    ld d, a
    ld b, d
    ld h, b
    ld b, d
    add e
    ld b, d
    sbc c
    ld b, d
    pop bc
    ld b, d
    call Call_000_0342
    ld b, e
    adc c
    ld b, e
    or a
    ld b, e
    rst RST_08
    ld b, e
    add hl, sp
    ld b, l
    add hl, sp
    ld b, l
    ld d, l
    ld b, l
    xor c
    ld b, l
    call nz, $ed45
    ld b, l
    dec c
    ld b, [hl]
    scf
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld d, [hl]
    ld b, [hl]
    ld h, [hl]
    ld b, [hl]
    db $db
    ld b, [hl]
    push af
    ld b, [hl]
    ld b, l
    ld b, a
    ld d, a
    ld b, a
    ld a, e
    ld b, a
    sbc h
    ld b, a
    ret nz

    ld b, a
    rst RST_30
    ld b, a
    inc d
    ld c, b
    inc h
    ld c, b
    ld c, e
    ld c, b
    ld a, l
    ld c, b
    sbc h
    ld c, b
    or e
    ld c, b
    db $e4
    ld c, b
    rst RST_30
    ld c, b
    dec bc
    ld c, c
    ld c, d
    ld c, c
    ld l, b
    ld c, c
    ld [hl], a
    ld c, c
    push de
    ld c, c
    ld [hl+], a
    ld c, d
    ld b, a
    ld c, d
    adc a
    ld c, d
    sbc [hl]
    ld c, d
    cp a
    ld c, d
    push de
    ld c, d
    jr nz, jr_013_40bd

    ld c, b
    ld c, e
    ld e, h
    ld c, e
    jr jr_013_40c4

    ld d, e
    ld c, h
    add a
    ld c, h
    cp c
    ld c, h
    db $e3
    ld c, h
    ld sp, hl
    ld c, h
    rlca
    ld c, l
    ld [hl], e
    ld c, l
    pop de
    ld c, l
    jr @+$50

    ld d, d
    ld c, [hl]
    add e
    ld c, [hl]
    jp z, Jump_013_4c4e

    ld c, a
    ld e, c
    ld c, a
    ld a, [hl]
    ld c, a
    and b
    ld c, a
    db $eb
    ld c, a
    db $fd
    ld c, a
    dec bc
    ld d, b
    dec h
    ld d, b
    ld d, d
    ld d, b
    ld l, l
    ld d, b
    ld a, l
    ld d, b
    adc d
    ld d, b
    sbc e
    ld d, b
    xor h
    ld d, b
    ld a, [bc]
    ld d, c
    add hl, de
    ld d, c
    ld b, h
    ld d, c
    adc e
    ld d, c
    call Call_013_4451
    ld d, d
    ld a, d
    ld d, d
    call $dd52

jr_013_40bd:
    ld d, d
    ld e, $53
    add [hl]
    ld d, e
    xor b
    ld d, e

jr_013_40c4:
    or c
    ld d, e
    ldh [rHDMA3], a
    db $eb
    ld d, e
    ld [hl+], a
    ld d, h
    ld [hl], $54
    ld e, c
    ld d, h
    ld [hl], e
    ld d, h
    add d
    ld d, h
    xor h
    ld d, h
    jp $e254


    ld d, h
    dec c
    ld d, l
    ld a, $55
    add [hl]
    ld d, l
    db $ec
    ld d, l
    db $fd
    ld d, l
    dec de
    ld d, [hl]
    daa
    ld d, [hl]
    or d
    ld d, [hl]
    jp z, $d956

    ld d, [hl]
    inc c
    ld d, a
    rra
    ld d, a
    ld b, d
    ld d, a
    ld a, h
    ld d, a
    adc l
    ld d, a
    or e
    ld d, a
    ld bc, $6658
    ld e, b
    cp e
    ld e, b
    or [hl]
    or e
    db $dd
    ret nz

    and h
    jp hl


    ld a, a
    push hl
    sub [hl]
    and $7f
    sub a
    db $fd
    ld a, d
    ldh [c], a
    jp hl


    dec c
    sub l
    db $fd
    push hl
    ld d, $7f
    sub d
    ld sp, hl
    and c
    inc c
    res 5, l
    and h
    xor a
    adc d
    dec c
    sub d
    ei
    adc a
    ld a, [hl]
    sub d
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    db $ed
    db $f4
    sub [hl]
    rst RST_30
    ld a, a
    ld h, e
    ldh [$ffe4], a
    ldh [$fffd], a
    ld a, a
    and $fd
    sbc a
    sub e
    jp hl


    dec c
    db $fc
    ld sp, hl
    sub d
    ld a, a
    sub l
    db $e4
    sbc d
    ld d, $7f
    sub l
    ld a, [$7fe9]
    rst RST_28
    sub h
    and $0d
    ldh [$ffe1], a
    ld [$9660], a
    adc a
    ldh [$ff8a], a
    rst RST_38
    sub l
    ld a, [$7fea]
    pop af
    ld hl, sp-$0c
    ld hl, sp+$7f
    db $ed
    db $f4
    jp hl


    ld a, a
    push hl
    sub [hl]
    and $0d
    sub l
    sbc h
    sbc d
    ldh a, [c]
    rst RST_30
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sub l
    ld a, [$7fea]
    or $93
    inc e
    db $fd
    ld l, [hl]
    sub e
    and $7f
    sub h
    ld hl, sp-$68
    ld l, e
    or b
    dec c
    ldh [c], a
    sub [hl]
    rst RST_28
    ld a, [$9f7f]
    db $e4
    db $ed
    ld a, a
    xor $93
    ld hl, sp+$60
    sbc e
    ld a, [$0de3]
    sbc h
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sbc $b6
    inc a
    ret


    ld [$f37f], a
    sub e
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    sub [hl]
    sub d
    adc e
    rst RST_18
    inc c
    sub l
    ld a, [$7fea]
    sub c
    sub d
    sbc a
    or $98
    ld a, a
    sbc d
    sub h
    or b
    ld a, a
    sub [hl]
    sbc c
    ldh [$ffa1], a
    inc c
    ld h, b
    ld d, $7f
    sbc d
    ldh [$ff94], a
    or b
    ld a, a
    sbc h
    ld l, h
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    and l
    and l
    and l
    sbc b
    ld h, b
    rst RST_30
    push hl
    sub d
    ld a, a
    sbc [hl]
    sbc c
    db $fd
    ld l, d
    push hl
    sbc h
    ld [$9c0d], a
    ldh [$ff98], a
    push hl
    sub d
    or $93
    ld h, b
    and c
    rst RST_38
    sub l
    db $fd
    push hl
    ld [$927f], a
    adc a
    ldh [$ffa1], a
    rst RST_38
    ld c, h
    rst RST_10
    xor a
    cp b
    inc a
    xor h
    xor a
    cp b
    jp hl


    ld a, a
    jp Jump_013_4ca4


    reti


    ld h, b
    and c
    dec c
    ld b, e
    xor b
    and h
    rst RST_10
    and h
    ld d, $7f
    sbc e
    sbc a
    sub e
    or $93
    push hl
    ld a, a
    ldh a, [c]
    ldh [c], a
    sub a
    ld h, e
    sub l
    ld a, [$7fe6]
    sub d
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc $97
    adc [hl]
    sub e
    ld [$ef7f], a
    sbc c
    db $e3
    ld l, d
    sub [hl]
    ld hl, sp-$1b
    jp hl


    ld h, e
    sbc l
    and c
    dec c
    ld a, a
    db $fc
    ldh [$ff9c], a
    db $e4
    ld a, a
    sbc h
    adc [hl]
    sub e
    ld l, h
    sbc h
    ldh [$ff92], a
    push hl
    rst RST_30
    dec c
    ld a, a
    sub d
    rst RST_28
    ld d, $7f
    pop bc
    xor h
    db $dd
    cp l
    ld h, e
    sbc l
    or $8a
    rst RST_18
    rst RST_38
    and l
    and l
    and l
    sbc h
    dec e
    sub [hl]
    ld h, b
    and c
    rst RST_38
    ld c, h
    rst RST_10
    xor a
    cp b
    inc a
    xor h
    xor a
    cp b
    jp hl


    ld a, a
    jp Jump_013_4ca4


    reti


    ld h, e
    dec c
    ld b, e
    xor b
    and h
    rst RST_10
    and h
    ld d, $7f
    or [hl]
    and h
    ld b, h
    or b
    ld a, a
    sub a
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    db $d3
    ld b, b
    db $dd
    push hl
    ld a, a
    ld c, h
    rst RST_10
    xor a
    cp b
    inc a
    xor h
    xor a
    cp b
    jp hl


    dec c
    jp Jump_013_4ca4


    reti


    ld h, b
    and c
    rst RST_38
    sub l
    sub l
    pop af
    sub [hl]
    sbc h
    jp hl


    ld a, a
    db $eb
    db $e4
    ld d, $7f
    sbc d
    jp hl


    dec c
    ld a, [$9c8f]
    adc h
    or b
    ld a, a
    ldh a, [$ffe0]
    rst RST_30
    ld a, a
    ld c, e
    xor a
    cp b
    ret c

    sbc l
    ld sp, hl
    dec c
    ld h, b
    ei
    sub e
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    db $eb
    inc e
    adc [hl]
    sub e
    jr @-$1d

    jp hl


    or $93
    ld h, b
    and c
    rst RST_38
    reti


    and h
    ld b, e
    xor b
    and h
    ld [$9c7f], a
    db $fd
    ld l, h
    db $fd
    jp hl


    ld a, a
    sub a
    ld hl, sp-$19
    sub a
    or b
    pop bc
    rst RST_10
    xor a
    db $e4
    ldh a, [$ffe0]
    and c
    inc c
    sbc a
    sbc h
    db $e3
    ld a, a
    sub l
    ld a, [$7fe6]
    or e
    xor b
    db $dd
    cp b
    or b
    sbc l
    ld sp, hl
    db $e4
    dec c
    add $cf
    xor a
    db $e4
    ld a, a
    db $fc
    rst RST_30
    adc a
    ldh [$ffa1], a
    rst RST_38
    sub l
    ld a, [$7f16]
    ld h, b
    ld a, [$e9e5]
    sub [hl]
    ld a, a
    db $fc
    sub [hl]
    adc a
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    reti


    and h
    ld b, e
    xor b
    and h
    ld [$9a7f], a
    sub h
    or b
    ld a, a
    db $eb
    sbc a
    ldh a, [c]
    db $e3
    dec c
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $eb
    sbc e
    sbc h
    ld l, h
    ld hl, sp+$60
    push hl
    and l
    and l
    and l
    or h
    and h
    cp l
    and c
    dec c
    ld a, a
    sub c
    sub d
    sub [hl]
    db $fc
    rst RST_30
    dec e
    ld a, a
    sbc b
    ei
    sub e
    sbc h
    db $e3
    sub d
    ld sp, hl
    dec c
    ld a, a
    or $93
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    inc c
    ld a, a
    and l
    and l
    and l
    db $fc
    sub [hl]
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    dec c
    ld a, a
    sub l
    ld a, [$7fe6]
    rst RST_28
    sub [hl]
    sbc [hl]
    db $e4
    sub a
    push hl
    adc d
    rst RST_18
    inc c
    db $ec
    ld sp, hl
    sbc h
    db $fd
    ld l, h
    db $fd
    ld a, a
    sub d
    pop hl
    rst RST_28
    sub d
    ld h, e
    ld a, a
    sub e
    db $fd
    ld d, $0d
    pop af
    sub d
    db $e3
    sub a
    ldh [$fff6], a
    sub e
    ld h, b
    and c
    rst RST_38
    sbc $91
    jp hl


    sbc d
    ei
    ld [$f67f], a
    sub [hl]
    adc a
    ldh [$ffe5], a
    and l
    and l
    and l
    and c
    rst RST_18
    inc c
    reti


    and h
    ld b, e
    xor b
    and h
    ld [$e47f], a
    sub l
    sbc b
    or b
    ld a, a
    ldh a, [$ffe5]
    ld d, $f7
    dec c
    sbc h
    ldh a, [rNR32]
    ldh a, [$ffe4]
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    rst RST_38
    sbc $9a
    sbc d
    jp hl


    ld a, a
    or l
    and h
    push bc
    and h
    ld [$647f], a
    db $fd
    push hl
    dec c
    ld a, a
    db $eb
    db $e4
    push hl
    db $fd
    ld h, b
    adc e
    rst RST_18
    rst RST_38
    sbc $9f
    ld a, [$ea63]
    ld a, a
    sbc [hl]
    ldh [c], a
    ldh a, [c]
    sub d
    sbc h
    rst RST_28
    sbc l
    and c
    inc c
    ld a, a
    rst RST_28
    dec e
    ld a, a
    or [hl]
    and h
    ld b, h
    or b
    ld a, a
    add d
    rst RST_28
    sub d
    dec e
    ldh [c], a
    dec c
    ld a, a
    sbc b
    ld l, d
    ld hl, sp-$11
    sbc l
    and c
    inc c
    ld a, a
    ldh [c], a
    rla
    and $7f
    sub c
    push hl
    ldh [$ffe9], a
    ld a, a
    or [hl]
    and h
    ld b, h
    or b
    dec c
    ld a, a
    add c
    rst RST_28
    sub d
    ld a, a
    ldh a, [c]
    sbc b
    ld hl, sp-$11
    sbc l
    and c
    inc c
    ld a, a
    sbc a
    sbc d
    ld h, e
    ld a, a
    sub [hl]
    sbc c
    ld sp, hl
    pop bc
    xor a
    ld e, h
    jp hl


    ld a, a
    rst RST_28
    sub d
    sbc l
    sub e
    or b
    ld a, a
    sub a
    ldh a, [c]
    db $e3
    sbc b
    ld h, b
    sbc e
    sub d
    and c
    inc c
    ld a, a
    pop bc
    xor a
    ld e, h
    or b
    ld a, a
    sub [hl]
    sbc c
    sub l
    db $fc
    adc a
    ldh [$fff7], a
    ld a, a
    jp hl


    sbc d
    ld hl, sp-$17
    ld a, a
    add c
    rst RST_28
    sub d
    di
    ld a, a
    ldh a, [c]
    sbc b
    ld hl, sp-$11
    sbc l
    and c
    inc c
    ld a, a
    add d
    rst RST_28
    sub d
    jp hl


    ld a, a

Call_013_4451:
    ld a, [de]
    sub e
    sbc c
    sub d
    ld d, $7f
    add d
    add c
    and $0d
    ld a, a
    pop hl
    sub [hl]
    sub d
    xor $64
    or $92
    jp hl


    ld h, e
    sbc l
    ld d, $7f
    push hl
    adc a
    db $e4
    sbc b
    ld d, $7f
    sub d
    sub [hl]
    push hl
    sbc c
    ld a, [$7f6a]
    ldh [c], a
    ld h, d
    sub d
    db $e3
    ld a, a
    add h
    rst RST_28
    sub d
    rst RST_28
    ld h, e
    ld a, a
    or [hl]
    and h
    ld b, h
    or b
    ld a, a
    db $eb
    sbc c
    rst RST_28
    sbc l
    and c
    inc c
    ld a, a
    add d
    add c
    or b
    ld a, a
    sbc d
    sub h
    ld a, [$7f6a]
    rst RST_28
    sbc c
    ld h, e
    sbc l
    and c
    dec c
    ld a, a
    sbc d
    sub h
    push hl
    sub d
    db $e4
    sub a
    ld [$fc7f], a
    ldh [$ff9c], a
    jp hl


    dec c
    ld a, a
    ld a, [de]
    sub e
    sbc c
    sub d
    db $e4
    ld a, a
    sbc b
    rst RST_30
    ld l, l
    rst RST_28
    sbc l
    and c
    inc c
    ld a, a
    ld a, [de]
    sub e
    sbc c
    sub d
    ld d, $7f
    add d
    add c
    ld h, b

Jump_013_44c1:
    adc a
    ldh [$ffe4], a
    sub a
    db $f4
    dec c
    ld a, a
    db $fc
    ldh [$ff9c], a
    or $f8
    di
    ld a, a
    add d
    add c
    and $7f
    pop hl
    sub [hl]
    sub d
    db $e4
    sub a
    ld [$917f], a
    push hl
    ldh [$ffe9], a
    ld a, a
    sub [hl]
    pop hl
    ld h, e
    sbc l
    and c
    inc c
    ld a, a
    push hl
    sub l
    ld a, a
    and [hl]
    ld [$817f], a
    sub [hl]
    ld a, a
    add c
    add c
    ld h, e
    dec c
    ld a, a
    sub [hl]
    rra
    sub h
    rst RST_28
    sbc l
    and c
    inc c
    ld a, a
    add c
    add b
    or b
    db $ec
    sbc b
    pop af
    ld a, a
    sub h
    db $ec
    ld h, b
    db $e4
    ld a, a
    and [hl]
    jp hl


    dec c
    ld a, a
    sbc b
    ldh a, [$ff91]
    db $fc
    sbc [hl]
    ld [$4c7f], a
    rst RST_10
    xor a
    cp b
    inc a
    xor h
    xor a
    cp b
    db $e4
    dec c
    ld a, a
    or $6b
    ld a, a
    sub [hl]
    sbc c
    ldh [$ff7f], a
    pop bc
    xor a
    ld e, h
    jp hl


    ld a, a
    add e
    ld l, d
    sub d
    or b
    dec c
    ld a, a
    sbc e
    sbc h
    sub c
    add hl, de
    rst RST_28
    sbc l
    and c
    rst RST_18
    rst RST_38
    ld a, [$9c8f]
    adc h
    ld [$ea7f], a
    adc a
    sbc h
    adc h
    or b
    ld a, a
    sbc h
    rst RST_30
    sbc [hl]
    ld sp, hl
    dec c
    sub a
    db $e3
    sub a
    or b
    ld a, a
    push hl
    rst RST_30
    sbc h
    ldh [$ffa1], a
    rst RST_38
    reti


    and h
    ld b, e
    xor b
    and h
    ld d, $7f
    sub d
    ldh [rNR33], a
    rst RST_30
    adc a
    ld a, [hl]
    sbc b
    dec c
    db $fc
    rst RST_30
    sub d
    push hl
    ld d, $f7
    ld a, a
    sbc e
    sbc e
    db $f4
    sub d
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sbc $b4
    and h
    cp l
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    sub l
    rst RST_28
    sub h
    ld [$377f], a

jr_013_4585:
    xor h
    db $dd
    ld c, h
    reti


    di
    dec c
    ld a, a
    ld c, [hl]
    cp b
    cp h
    db $dd
    jr c, jr_013_4585

    ld a, a
    sub [hl]
    ldh [c], a
    ldh [$fff2], a
    and $0d
    ld a, a
    sub e
    rst RST_28
    ld a, [$97e3]
    ldh [$fffd], a
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_18
    rst RST_38
    sbc $d9
    and h
    ld b, e
    xor b
    and h
    and l
    or [hl]
    call c, $bdd9
    or a
    rst RST_18
    db $e4
    dec c
    push hl
    db $ec
    ld h, b
    and $7f
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    and c
    rst RST_38
    sbc d
    jp hl


    ld a, a
    ld b, e
    xor b
    and h
    rst RST_10
    and h
    and l
    and l
    and l
    and c
    dec c
    pop af
    sub [hl]
    sbc h
    ld a, a
    ld h, h
    sbc d
    sub [hl]
    ld h, e
    ld a, a
    ldh a, [$ffe0]
    or $93
    push hl
    ld a, a
    sub a
    ld d, $0d
    sbc l
    ld sp, hl
    db $fd
    ld h, b
    ld d, $a5
    and l
    and l
    and c
    rst RST_38
    reti


    and h
    ld b, e
    xor b
    and h
    ld [$957f], a
    ld a, [$7fe9]
    sub [hl]
    sub l
    or b
    ldh a, [$ffe3]
    dec c
    push hl
    ldh [c], a
    sub [hl]
    sbc h
    sbc a
    sub e
    and $7f
    xor $ee
    sub h
    db $fd
    ld h, b
    and c
    rst RST_38
    db $e4
    sub d
    sub e
    sbc d
    db $e4
    ld [$a5a5], a
    and l
    dec c
    add b
    ld l, d
    db $fd
    ld [$997f], a
    sub d
    sbc e
    ldh [c], a
    and $7f
    db $fc
    ldh [$ff9c], a
    ldh [$ff0d], a
    ldh a, [c]
    sbc d
    ld l, [hl]
    sbc h
    ld hl, sp-$72
    sub e
    push hl
    db $fd
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    sbc $95
    sub [hl]
    add sp, $16
    ld a, a
    ldh [$fff8], a
    rst RST_28
    sbc [hl]
    db $fd
    or $a1
    rst RST_18
    rst RST_38
    sbc $ef
    ldh [$ff7f], a
    or $fb
    sbc h
    sbc b
    ld a, a
    ldh [$ffe9], a
    pop af
    or $8a
    rst RST_18
    rst RST_38
    sbc $96
    add sp, $16
    ld a, a
    ldh [$fff8], a
    add sp, -$6c
    ld e, $a5
    and l
    and l
    and c
    rst RST_18
    rst RST_38
    sub l
    db $e4
    sbc d
    ld [$cb7f], a
    cp a
    res 7, a
    db $e4
    ld a, a
    sub d
    adc a
    ldh [$ffa1], a
    inc c
    sbc $95
    ld a, [$7fea]
    ld c, h
    rst RST_10
    xor a
    cp b
    rst RST_08
    and h
    cp c
    xor a
    call nz, Call_000_0de9
    ld a, a
    ld l, d
    sub d
    and $fd
    ld h, b
    and c
    dec c
    ld a, a
    sub d
    adc a
    db $e4
    sbc b
    ld d, $7f
    sub e
    ld hl, sp-$0d
    jp hl


    jp hl


    ld a, a
    add sp, $60
    db $fd
    ld [$7f0d], a
    db $f4
    sbc l
    sbc b
    push hl
    sub d
    ld e, $a5
    and l
    and l
    adc d
    inc c
    ld a, a
    sub e
    ld hl, sp-$0d
    jp hl


    ld [$7f0d], a
    ld h, e
    db $fd
    pop hl
    ld d, $7f
    add e
    sbc d
    ld h, e
    ld a, a
    add l
    add b
    ld b, h
    reti


    and c
    dec c
    ld a, a
    ld e, e
    cp l
    call nz, $e9d9
    ldh [$ffef], a
    ld d, $7f
    add [hl]
    sbc d
    ld h, e
    dec c
    ld a, a
    add c
    add b
    add b
    ld b, h
    reti


    ld h, b
    and c
    rst RST_18
    rst RST_38
    sbc e
    sub d
    sbc h
    db $fd
    sbc h
    sub a
    jp hl


    ld a, a
    or h
    jp c, $a46d

    ret nz

    ld h, b
    and c
    dec c
    sbc l
    ld a, [de]
    sub d
    push hl
    sub c
    and l
    and l
    and l
    and c
    rst RST_38
    sbc d
    jp hl


    ld a, a
    adc $c3
    reti


    jp hl


    ld a, a
    sbc d
    sub e
    sbc d
    sbc b
    ld h, b
    and c
    inc c
    sbc $eb
    db $e4
    ld l, d
    db $fd
    ld h, e
    ld a, a
    sub c
    push hl
    ldh [$fff3], a
    ld a, a
    ld h, b
    sub d
    db $ec
    ld a, [de]
    sub e
    adc d
    ld a, a
    sbc d
    or $92
    ld a, a
    sbc d
    jp hl


    ld a, a
    adc $c3
    reti


    jp hl


    ld a, a
    or [hl]
    inc a
    ret


    ld h, e
    dec c
    ld a, a
    sub c
    push hl
    ldh [$ffe9], a
    ld a, a
    push af
    ldh a, [c]
    ld d, $7f
    add hl, de
    db $fd
    inc e
    ldh [c], a
    jp hl


    di
    jp hl


    db $e4
    ld a, a
    push hl
    ld sp, hl
    ld h, e
    sbc h
    adc [hl]
    sub e
    adc d
    adc d
    rst RST_18
    rst RST_38
    add e
    ldh [c], a
    jp hl


    ld a, a
    ld c, [hl]
    ret nz

    db $dd
    ld d, $e2
    sub d
    ldh [$ff7f], a
    ld e, d
    ret z

    reti


jr_013_4754:
    ld h, b
    and c
    rst RST_38
    sub l
    db $f4
    and l
    and l
    and l
    adc e
    dec c
    add e
    sub [hl]
    sub d
    jp hl


    ld a, a
    ld c, [hl]
    ret nz

    db $dd
    jp hl


    ld a, a
    sub e
    sub h
    and $7f
    db $fc
    dec e
    sub [hl]
    and $bd
    ld a, l
    and h
    cp l
    ld d, $7f
    sub c
    ld sp, hl
    rra
    adc d
    rst RST_38
    ld e, d
    ret z

    reti


    jp hl


    ld a, a
    sub d
    pop hl
    ld l, d
    db $fd
    ld a, a
    sub e
    sub h
    and $0d
    rst RST_08
    jr c, jr_013_4754

    xor a
    call nz, $c04e
    db $dd
    ld d, $7f
    sub l
    sbc e
    rst RST_28
    adc a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    ld a, [$9c8f]
    adc h
    ld [$f57f], a
    adc a
    sbc b
    ld hl, sp-$1c
    ld a, a
    ld [$9c8f], a
    adc h
    sbc h
    dec c
    sub l
    ld a, [$7fea]
    db $eb
    db $e4
    ld hl, sp+$7f
    jp hl


    sbc d
    sbc e
    ld a, [$a5e0]
    and l
    and l
    and c
    rst RST_38
    ld [$ea8f], a
    sub c
    sub c
    db $fd
    and l
    and l
    and l
    and c
    inc c
    sbc d
    jp hl


    ld a, a
    ld c, [hl]
    ret nz

    db $dd
    ld [$967f], a
    db $fd
    sbc c
    sub d
    sbc h
    adc h
    sub d
    ld d, $92
    ld d, $84
    sub [hl]
    sub d
    db $ed
    ld a, a
    sub d
    sbc c
    push hl
    sub d
    or $93
    and $0d
    ldh [c], a
    sbc b
    rst RST_30
    ld a, [$fde0]
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38

jr_013_47f7:
    push hl
    sub [hl]
    push hl
    sub [hl]
    ld a, a
    cp h
    xor h
    jp c, Jump_013_7fe0

    ld b, h
    or c
    ld h, b
    and c
    dec c
    ld b, e
    dec sp
    or d
    db $dd
    ld d, $7f
    sub d
    sub d
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    or h
    jp c, $a46d

    ret nz

    ld [$937f], a
    ld a, [de]
    sub a
    ld [$f21c], a
    ldh [$ffa1], a
    rst RST_38
    and l
    and l
    and l
    or [hl]
    pop bc
    xor h
    adc d
    inc c
    rst RST_08
    jr c, jr_013_47f7

    xor a
    call nz, $c04e
    db $dd
    ld [$837f], a
    sub [hl]
    sub d
    jp hl


    dec c
    ld c, [hl]
    ret nz

    db $dd
    jp hl


    ld a, a
    sub e
    sub h
    and $7f
    sub l
    sbc e
    rst RST_28
    adc a
    ldh [$ffa1], a
    rst RST_38
    sub a
    di
    pop hl
    jp hl


    sub d
    sub d
    ld a, a
    or l
    call z, $bda8
    ld h, b
    and c
    dec c
    sbc d
    jp hl


    ld a, a
    db $ed
    db $f4
    jp hl


    ld a, a
    di
    pop hl
    rst RST_20
    sbc h
    ld [$9b7f], a
    rra
    sub [hl]
    sbc h
    dec c
    sbc h
    ld a, [de]
    db $e4
    ld d, $7f
    ld [$6496], a
    ld sp, hl
    ld h, b
    ei
    sub e
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    pop hl
    adc h
    sub d
    ei
    jp hl


    ld a, a
    sub [hl]
    db $fc
    ld h, e
    ld a, a
    ldh [c], a
    sbc b
    rst RST_30
    ld a, [$0de0]
    sbc h
    ldh [c], a
    jp hl


    sub d
    sub d
    ld a, a
    sub [hl]
    sub d
    db $e3
    db $fd
    or d
    cp l
    ld h, b
    and c
    rst RST_38
    rst RST_08
    ld b, h
    sub [hl]
    rst RST_30
    ld [$e47f], a
    sub l
    ld hl, sp-$17
    ld a, a
    sbc c
    sbc h
    sub a
    ld d, $0d
    or $98
    ldh a, [$ff94]
    ld sp, hl
    and c
    rst RST_38
    sub e
    db $fc
    and h
    adc a
    and l
    and l
    and l
    and c
    dec c
    push hl
    ld d, $f2
    ld d, $7f
    sub d
    sub d
    push hl
    sub c
    and l
    and l
    and l
    and c
    inc c
    sbc d
    sbc d
    sub [hl]
    rst RST_30
    push hl
    rst RST_30
    ld a, a
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
    ld e, $fd
    ldh [$ff92], a
    ld d, $0d
    ldh a, [$fffc]
    ldh [$ff9e], a
    ld sp, hl
    rra
    adc d
    rst RST_38
    sbc h
    ldh a, [$ffeb]
    db $e4
    ldh [c], a
    push hl
    sub d
    ld a, a
    sub a
    ld a, [$e592]
    ld a, a
    db $eb
    or $99
    ld h, b
    and c
    rst RST_38
    sbc h
    ei
    sub d
    ld a, a
    rst RST_20
    jp hl


    ld h, e
    ld a, a
    ldh [c], a
    sbc b
    rst RST_30
    ld a, [$0de0]
    db $eb
    or $99
    ld h, b
    and c
    rst RST_38
    sbc d
    jp hl


    ldh [c], a
    db $f4
    and l
    and l
    and l
    and c
    dec c
    sbc d
    jp hl


    sub d
    ei
    and l
    and l
    and l
    and c
    inc c
    sub l
    ld a, [$7fe9]
    or l
    call z, $bda8
    and $7f
    sub c
    ld sp, hl
    di
    jp hl


    db $e4
    ld [$980d], a
    rst RST_30
    ld l, l
    di
    jp hl


    and $7f
    push hl
    rst RST_30
    push hl
    sub d
    sbc b
    rst RST_30
    sub d
    dec c
    sbc d
    sub e
    sub a
    adc l
    sub e
    push hl
    ld a, a
    ldh [c], a
    sbc b
    sub h
    ld h, b
    and c
    rst RST_38
    pop hl
    adc h
    sub d
    ei
    jp hl


    ld a, a
    sub [hl]
    ldh a, [$ff6c]
    sbc b
    ei
    ld h, b
    and c
    dec c
    sub c
    ld l, h
    rst RST_30
    jp hl


    ld a, a
    sbc h
    ldh a, [rNR21]
    ld a, a
    ld h, e
    sub a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sbc h
    db $fd
    pop hl
    adc l
    sub e
    jp hl


    ld a, a
    ld l, [hl]
    sub e
    sbc h
    sub [hl]
    sbc c
    ld h, b
    and c
    rst RST_38
    ld h, b
    sub d
    jp hl


    ld a, a
    sub e
    sub h
    and $7f
    db $e4
    ld hl, sp+$16
    ld a, a
    jp hl


    adc a
    db $e3
    sub d
    ld sp, hl
    dec c
    ld a, l
    and h
    ld e, d
    and h
    or e
    or h
    or d
    call nz, $a160
    inc c
    push hl
    ld d, $98
    db $e3
    ld a, a
    sbc l
    ld sp, hl
    ld h, h
    sub d
    ld a, a
    sbc b
    pop hl
    ld l, d
    sbc h
    ld h, b
    and c
    dec c

jr_013_49a5:
    sbc d
    jp hl


jr_013_49a7:
    ld a, a
    db $e4
    ld hl, sp-$16
    ld a, a
    jp z, Jump_013_44c1

    ret c

    or b
    dec c
    sub [hl]
    ldh [$ff64], a
    adc a
    db $e3
    sub d
    ld sp, hl
    jp hl


    ld h, b
    ei
    sub e
    and c
    inc c
    and l
    and l
    and l
    sub l
    db $f4
    adc e
    dec c
    jp z, Jump_013_44c1

    ret c

    ld d, $7f
    jr c, jr_013_49a5

    jr c, jr_013_49a7

    sbc l
    ld sp, hl
    rra
    adc d
    rst RST_38
    db $eb
    and $e1
    ld d, $7f
    add b
    ld l, d
    db $fd
    db $e4
    ld a, a
    sub l
    push hl
    inc e
    and l
    and l
    and l
    and c
    inc c
    db $e4
    sub d
    sub e
    sbc d
    db $e4
    ld [$9a7f], a
    sbc d
    and $7f
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    dec c
    sub a
    db $fd
    ld d, $98
    ld [$cf7f], a
    cp b
    rst RST_08
    and h
    call z, $a4a8
    ld d, $0d
    cp h
    and h
    add hl, sp
    reti


    sub [hl]
    rst RST_30
    ld a, a
    di
    rst RST_30
    adc a
    ldh [$ff0d], a
    xor $93
    sbc h
    adc l
    sub e
    push hl
    jp hl


    ld h, b
    ei
    sub e
    and l
    and l
    and l
    and c
    rst RST_38
    sbc b
    pop hl
    ld l, d
    sbc h
    ld d, $7f
    jp z, $e9d8

    or $93
    and $7f
    sbc l
    ld sp, hl
    ld h, h
    sbc b
    dec c
    db $e4
    ld d, $8f
    ldh [$ff7f], a
    jp z, Jump_013_44c1

    ret c

    jp hl


    ld a, a
    ldh [c], a
    sbc b
    ld hl, sp-$0d
    jp hl


    ld h, b
    and c
    rst RST_38
    sub c
    ld a, [$a5a5]
    and l
    adc e
    dec c
    sbc d
    jp hl


    ld a, a
    xor $9f
    sbc b
    db $e3
    ld a, a
    sbc l
    ld sp, hl
    ld h, h
    sub d
    ld a, a
    sbc b
    pop hl
    ld l, d
    sbc h
    and c
    jp z, $e9c8

    ldh [c], a
    sub d
    ldh [$ff7f], a
    xor $9f
    sub d
    ld a, a
    sub [hl]
    rst RST_30
    ld h, b
    and c
    inc c
    db $f4
    adc a
    ld a, d
    ld hl, sp+$7f
    push hl
    and $96
    and $7f
    and $e3
    sub d
    ld sp, hl
    or $93
    push hl
    dec c
    sub a
    ld d, $7f
    sbc l
    ld sp, hl
    db $fd
    ld h, b

jr_013_4a89:
    ld d, $a5
    and l
    and l
    and c
    rst RST_38
    ld a, l
    and h
    ld e, d
    and h
    or e
    or h
    or d
    call nz, Call_013_7fe9
    ld h, b
    sub d
    ld h, b
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    db $eb
    inc e
    adc [hl]
    sub e
    jr jr_013_4a89

    and $7f
    sub d
    sbc b
    ldh [$fff2], a
    and $0d
    sbc [hl]
    db $fd
    ei
    and $7f
    sub l
    ld hl, sp-$20
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    or d
    scf
    ret c

    cp l
    sbc [hl]
    sub d
    jp hl


    ld a, a
    rla
    db $fd
    jp hl


    dec c
    ld a, l
    and h
    ld e, d
    and h
    push bc
    or d
    call z, $a160
    rst RST_38
    sbc h
    rst RST_28
    adc a
    ldh [$ff8a], a
    dec c
    pop af
    sbc d
    sub e
    sub [hl]
    rst RST_30
    ld a, a
    ld a, [$9c8f]
    adc h
    ld d, $8a
    inc c
    and l
    and l
    and l
    sbc a
    sub e
    ld a, a
    sub a
    ld h, d
    sub d
    ldh [$ffe4], a
    sub a
    and $ea
    dec c
    sub l
    sbc a
    sbc l
    rla
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sub l
    ld a, [$7fea]
    or $99
    ld sp, hl
    rst RST_28
    di
    push hl
    sbc b
    ld a, a
    ld a, [$9c8f]
    adc h
    and $0d
    db $eb
    sub [hl]
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sub e
    adc a
    adc d
    dec c
    push hl
    db $fd
    ld h, b
    ld a, a
    sbc d
    jp hl


    ld a, a
    cp e
    db $dd
    ld b, h
    or e
    or d
    xor a
    pop bc
    ld [$0c8a], a
    sbc b
    sbc e
    adc a
    db $e3
    ld a, a
    sbc l
    sub h
    ldh [$ff7f], a
    and $95
    sub d
    ld d, $7f
    sbc l
    ld sp, hl
    rra
    adc d
    rst RST_38
    sub l
    sub l
    sub a
    push hl
    ld a, a
    sub [hl]
    db $fc
    sbc [hl]
    sub d
    jp hl


    dec c
    sub a
    ei
    sbc b
    pop hl
    adc [hl]
    sub e
    ld h, b
    and c
    rst RST_38
    ld l, l
    db $dd
    jp $a4a8


    add $16
    ld a, a
    sub [hl]
    add sp, -$17
    ld a, a
    ldh [c], a
    sub [hl]
    sub d
    ldh a, [$ffe1]
    or b
    rst RST_08
    db $db
    db $dd
    and $7f
    xor $93
    sbc d
    sbc b
    sbc l
    ld sp, hl
    ld a, a
    ldh [$fff2], a
    jp hl


    dec c
    di
    jp hl


    rst RST_30
    sbc h
    sub d
    and l
    and l
    and l
    and c
    inc c
    sbc $6a
    sbc h
    adc [hl]
    ld a, a
    cp h
    or [hl]
    ld a, [hl-]
    dec c
    ld a, a
    sbc [hl]
    sub a
    and $fd
    sbc h
    adc h
    ld a, a
    inc a
    xor [hl]
    and h
    and l
    cp h
    and h
    add hl, sp
    reti


    inc c
    ld a, a
    add e
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
    dec c
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
    inc c
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
    dec c
    ld a, a
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    rst RST_18
    rst RST_38
    ld h, h
    sub e
    sbc h
    db $e3
    ld a, a
    add b
    ld l, d
    db $fd
    ld d, $7f
    sub c
    ld sp, hl
    di
    jp hl


    db $e4
    dec c
    push hl
    sub d
    di
    jp hl


    ld d, $7f
    sub c
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
    inc c
    sub d
    adc a
    ldh [$ff92], a
    ld a, a
    add b
    ld l, d
    db $fd
    ld [$e57f], a
    and $b0
    dec c
    sub d
    ldh a, [$ff9d]
    ld sp, hl
    jp hl


    ld h, b

Jump_013_4c4e:
    ei
    sub e

jr_013_4c50:
    sub [hl]
    adc e
    rst RST_38
    ret c

    cp l
    call nz, Call_013_7fea
    ldh [c], a
    ld h, d
    sub d
    db $e3
    sub d
    ld sp, hl
    ld d, $7f
    ld l, d
    db $fd
    ld a, [de]
    sub e
    jp hl


    sub d
    ldh a, [rNR21]
    ld a, a
    db $fc
    sub [hl]
    rst RST_30
    push hl
    sub d
    jp hl


    ld h, e
    ld a, a
    sbc d
    ld a, [$1c92]
    adc [hl]
    sub e
    sbc h
    rst RST_30
    ld l, l
    db $e3
    di
    ld a, a
    sub d
    ldh a, [rNR21]
    push hl
    sbc e
    sbc a
    sub e
    ld h, b
    and c
    rst RST_38
    ld a, l
    and h
    ld e, d
    and h
    or e
    or h
    or d
    call nz, Call_013_7fb0
    db $ec
    ldh [$ffe2], a
    and $0d
    db $fc
    sbc c
    ldh [$ffa1], a
    inc c
    and l
    and l
    and l
    sub l
    db $f4
    adc e
    dec c
    sbc d
    jp hl


Jump_013_4ca4:
    ld a, a
    jp z, Jump_013_44c1

    ret c

    ld a, a
    push hl
    and $96
    and $0d
    and $e3
    sub d
    ld sp, hl
    rra
    and l
    and l
    and l
    and c
    rst RST_38
    sub e
    jr jr_013_4c50

    and h
    adc a
    adc d
    dec c
    sbc l
    sub h
    ldh [$ff7f], a
    and $95
    sub d
    db $e4
    db $e4
    di
    and $7f
    sbc l
    adc a
    ld a, d
    sub d
    dec c
    sub h
    sub a
    ld d, $7f
    sbc b
    pop hl
    jp hl


    push hl
    sub [hl]
    and $7f
    db $e4
    ld l, e
    ld h, b
    sbc h
    ldh [$ff8a], a
    rst RST_38
    ld a, [$9c8f]
    adc h
    ld d, $7f
    inc e
    adc h
    rst RST_28
    or b
    sbc h
    db $e3
    sub d
    db $e3
    dec c
    sbc l
    sbc l
    ldh a, [c]
    push hl
    sub d
    adc d
    rst RST_38
    add e
    adc b
    cp l
    ld a, l
    cp h
    xor h
    reti


    jp hl


    ld a, a
    ldh [$ffef], a
    ld h, b
    and c
    rst RST_38
    ld b, b
    add $a4
    and l
    ld l, l
    db $dd
    jp $a4a8


    add $e9
    dec c
    ldh [$fffd], a
    inc e
    adc [hl]
    sub e
    ld e, d
    and h
    jp $a4a8


    ld h, e
    ld a, a
    cp l
    ld e, e
    and h
    pop bc
    or b
    dec c
    sbc h
    db $e3
    sub d
    ld sp, hl
    ld a, a
    rst RST_08
    db $db
    db $dd
    jp hl


    ld a, a
    sbc h
    adc h
    sbc h
    db $fd
    ld h, b
    and c
    inc c
    rst RST_08
    db $db
    db $dd
    jp hl


    ld a, a
    ldh a, [c]
    and $ea
    ld a, a
    push hl
    ldh a, [$ff60]
    ld d, $0d
    and $1c
    db $fd
    ld h, e
    sub d
    ld sp, hl
    or $93
    and $f0
    sub h
    ld sp, hl
    and c
    inc c
    rst RST_08
    db $db
    db $dd
    ld [$6d7f], a
    db $dd
    jp $a4a8


    add $b0
    ld a, a
    pop af
    sbc l
    sbc d
    jp hl


    dec c
    or $93
    and $7f
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
    rst RST_38
    ld h, b
    ld d, $7f
    ld l, l
    db $dd
    jp $a4a8


    add $e9
    xor $93
    ld [$cf7f], a
    db $db
    db $dd
    or b
    sub l
    db $f4
    jp hl


    or $93
    and $7f
    sbc h
    ldh [$ff8f], a
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
    inc c
    sub e
    db $fc
    sbc e
    and $f6
    ld sp, hl
    db $e4
    ld a, a
    ld l, l
    db $dd
    jp $a4a8


    add $e9
    dec c
    sbc [hl]
    sub d
    sub [hl]
    sbc b
    ld [$cf7f], a
    db $db
    db $dd
    or $f8
    di
    ld a, a
    sbc l
    sub e
    ld h, b
    db $fd
    dec c
    ld a, [$9a92]
    sbc b
    ld h, b
    db $e4
    ld a, a
    sub d
    db $fc
    ld a, [$92e3]
    ld sp, hl
    and l
    and l
    and l
    and c
    rst RST_38
    sub e
    and h
    pop af
    and l
    and l
    and l
    and c
    inc c
    or $ee
    ld h, h
    ld a, a
    ld [$978f], a
    ld hl, sp-$64
    ldh [$ff7f], a
    sbc h
    adc [hl]
    sub e
    sbc d
    or b
    dec c
    ldh [c], a
    sub [hl]
    rst RST_28
    push hl
    sbc c
    ld a, [$7f6a]
    ld l, l
    db $dd
    jp $a4a8


    add $16
    dec c
    sub [hl]
    add sp, -$50
    ld a, a
    or $9a
    ld h, h
    ld hl, sp-$64
    ldh [$ffe4], a
    ld a, a
    rst RST_08
    db $db
    db $dd
    ld [$9c0d], a
    db $fd
    inc e
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
    sub e
    and h
    db $fd
    and l
    and l
    and l
    and c
    dec c
    sbc e
    sbc l
    ld d, $ea
    ld a, a
    ld c, [hl]
    cp l
    jp hl


    or l
    call z, $bda8
    and l
    and l
    and l
    and c
    inc c
    db $eb
    ei
    ld l, e
    ei
    db $e4
    sbc h
    db $e3
    sub d
    db $e3
    ld a, a
    sub l
    sub d
    db $e3
    sub c
    ld sp, hl
    di
    jp hl


    dec c
    sbc l
    ld l, l
    db $e3
    ld d, $7f
    sbc d
    sub e
    sub a
    adc l
    sub e
    sbc a
    sub e
    ld h, b
    and c
    rst RST_38
    add sp, $60
    db $fd
    jp hl


    ld a, a
    ldh [$ff96], a
    sbc a
    sub e
    push hl
    ld a, a
    or d
    cp l
    ld h, b
    and c
    dec c
    sub l
    ld a, [$7fe9]
    or l
    call z, $bda8
    and $f3
    ld a, a
    sbc d
    db $fd
    push hl
    ld a, a
    or d
    cp l
    ld d, $91
    ld a, [$7f6a]
    sub d
    sub d
    jp hl


    and $e5
    sub c
    and l
    and l
    and l
    and c
    rst RST_38
    sbc d
    jp hl


    ld a, a
    or d
    cp l
    and $7f
    sbc l
    db $fc
    adc a
    db $e3
    ld a, a
    rst RST_28
    adc a
    db $e3
    sub d
    ld a, [$cf6a]
    db $db
    db $dd
    ld d, $7f
    sub c
    rst RST_30
    db $fc
    ld a, [$e6f9]
    ld a, a
    pop hl
    ld d, $92
    push hl
    sub d
    and c
    inc c
    ld h, b
    ld d, $7f
    sbc d
    jp hl


    db $ed
    db $f4
    and $7f
    or $9f
    di
    jp hl


    ld d, $7f
    ld [$f992], a
    sbc d
    db $e4
    or b
    ld a, a
    sub [hl]
    db $fd
    add hl, de
    sub d
    sbc h
    push hl
    sub d
    ld h, b
    ei
    sub e
    and c
    rst RST_38
    rst RST_08
    db $db
    db $dd
    db $e4
    ld a, a
    ld l, l
    db $dd
    jp $a4a8


    add $16
    ld a, a
    sub l
    sub l
    sub a
    push hl
    dec c
    sbc e
    sub [hl]
    push hl
    or b
    ld a, a
    db $e4
    sbc b
    sub d
    add hl, de
    and $7f
    di
    pop hl
    sub c
    add hl, de
    db $e3
    sub d
    ld sp, hl
    sbc h
    adc h
    sbc h
    db $fd
    ld h, b
    and c
    inc c
    rst RST_08
    db $db
    db $dd
    ld [$cf7f], a
    call z, $b1a8
    jp hl


    ld a, a
    ld c, [hl]
    cp l
    db $e4
    ld [$950d], a
    di
    sub h
    push hl
    sub d
    xor $64
    ld a, a
    sub c
    ldh [$ffe0], a
    sub [hl]
    sub d
    dec c
    xor $ee
    sub h
    ldh a, [$ffb0]
    ld a, a
    sub e
    sub [hl]
    ld l, l
    db $e3
    sub d
    ld sp, hl
    and c
    inc c
    ld l, l
    db $dd
    jp $a4a8


    add $b0
    ld a, a
    or $fb
    sbc d
    ld l, d
    sbc [hl]
    ld sp, hl
    ldh [$fff2], a
    and $0d
    sbc d
    jp hl


    ld a, a
    ldh [c], a
    ld hl, sp-$08
    adc [hl]
    sbc d
    sub e
    and $7f
    ldh [c], a
    ld a, [$92e3]
    adc a
    ldh [$ffe6], a
    pop hl
    ld d, $92
    push hl
    sub d
    and c
    rst RST_38
    sbc h
    ldh [c], a
    jp hl


    sub d
    sub d
    ld a, a
    or [hl]
    and h
    jp Jump_013_60dd


    and c
    rst RST_38
    sbc e
    sbc b
    rst RST_30
    jp hl


    ld a, a
    sub a
    ld h, e
    ld a, a
    ldh [c], a
    sbc b
    rst RST_30
    ld a, [$7fe0]
    sub l
    sub l
    sub a
    push hl
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
    rst RST_08
    db $db
    db $dd
    ld [$9a7f], a
    jp hl


    push hl
    sub [hl]
    and $7f
    ldh [$ff92], a
    sbc [hl]
    ldh [c], a
    push hl
    dec c
    sbc h
    adc [hl]
    ld sp, hl
    sub d
    or b
    ld a, a
    sub d
    ld a, [$95e3]
    sbc b
    jp hl


    ld h, b
    ei
    sub e
    and c
    rst RST_38
    and l
    and l
    and l
    sbc a
    sub e
    ld h, b
    adc d
    inc c
    db $eb
    sub a
    ld h, b
    sbc h
    jp hl


    ld a, a
    push hl
    sub [hl]
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
    sub e
    rst RST_30
    ld h, d
    sbc c
    ld sp, hl
    ld a, a
    sbc h
    adc [hl]
    sub e
    sbc d
    or b
    dec c
    sub d
    ld a, [$95e3]
    sbc c
    ld l, d
    ld a, a
    rst RST_08
    db $db
    db $dd
    ld [$977f], a
    adc a
    db $e4
    dec c
    sbc a
    ld a, [$7fe6]
    sub a
    ld h, d
    sbc b
    and $7f
    pop hl
    ld d, $92
    push hl
    sub d
    adc d
    rst RST_38
    jp c, Jump_000_36dd

    ld h, d
    sbc b
    ld hl, sp-$17
    ld a, a
    adc $c3
    reti


    jp hl


    ld a, a
    rst RST_28
    sub h
    ld h, b
    and c
    rst RST_38
    sub l
    sub l
    sub a
    push hl
    ld a, a
    call nc, $e9bc
    ld a, a
    sub a
    ld h, b
    and c
    rst RST_38
    ld a, a
    call nc, $e9bc
    ld a, a
    sub a
    ld h, b
    and c
    dec c
    and l
    and l
    and l
    sub [hl]
    ldh [$ff9f], a
    sub e
    push hl
    ld a, a
    ldh a, [$ff97]
    ld h, b
    push hl
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
    sub l
    sub l
    sub a
    push hl
    ld a, a
    rla
    db $fd
    jp hl


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
    db $eb
    or $99
    ld h, b
    and c
    rst RST_38
    sbc l
    push hl
    jp hl


    ld a, a
    ld h, b
    sub d
    pop hl
    ld d, $7f
    ld [$9ce3], a
    push hl
    sbc b
    dec c
    db $eb
    ei
    ld d, $8f
    db $e3
    sub d
    ld sp, hl
    and l
    and l
    and l
    and c
    rst RST_38
    sub c
    sbc c

jr_013_506f:
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
    and c
    rst RST_38
    db $e4
    sub l
    ld hl, sp+$16
    ld a, a
    ldh [c], a
    ld h, d
    sub d
    db $e3
    sub d
    ld sp, hl
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
    sub c
    sub [hl]
    push hl
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    or [hl]
    rst RST_10
    or [hl]
    rst RST_10
    and $7f
    sub [hl]
    db $fc
    sub d
    ldh [$ff7f], a
    sbc e
    ld l, d
    sbc b
    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    sbc a
    sub e
    ld h, b
    adc d
    adc d
    inc c
    sbc d
    jp hl


    ld a, a
    cp h
    ld [hl], $a4
    ret c

    db $dd
    jr c, jr_013_506f

    ld a, a
    db $eb
    ldh a, [$ffe2]
    jp hl


    dec c
    or l
    call z, $bda8
    jp hl


    ld a, a
    ldh [c], a
    sbc b
    sub h
    jp hl


    ld a, a
    sub e
    sub h
    and $0d
    sub l
    sub d
    db $e3
    sub l
    sbc c
    ld l, d
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
    inc e
    ld l, h
    db $fd
    jp hl


    ld a, a
    sbc c
    sub d
    sub [hl]
    sbc b
    ld d, $cf
    db $db
    db $dd
    and $7f
    sbc h
    rst RST_30
    ld a, [$e4e0]
    dec c
    sub l
    di
    sub e
    jp hl


    ld h, e
    ld [$92e5], a
    sub [hl]
    and l
    and l
    and l
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
    or $93
    ld h, b
    and c
    rst RST_38
    and l
    and l
    and l
    sbc e
    sbc l
    ld d, $7f
    rst RST_08
    call z, $b1a8
    jp hl


    dec c
    sbc d
    ei
    sbc h
    db $f4
    ld h, b
    adc d
    inc c
    cp l
    call nz, Call_000_3ca4
    and h
    ld [$927f], a
    adc a
    ld a, d
    ldh [c], a
    ld h, e
    ld a, a
    sub l
    ld a, [$0db0]
    sbc h
    db $e4
    ldh a, [c]
    ldh [$ff8a], a
    rst RST_38
    ldh [$ff92], a
    or $93
    ld d, $7f
    inc a
    ret c

    inc a
    ret c

    db $e4
    ld a, a
    or $93
    sbc h
    adc h
    push hl
    sbc b
    db $e3
    ld hl, sp-$1e
    sbc c
    ld sp, hl
    and l
    and l
    and l
    and c
    inc c
    db $eb
    sub [hl]
    add hl, de
    or b
    ld a, a
    sbc e
    ld d, $9c
    ldh [rNR21], a
    ld a, a
    ldh a, [$ffe2]
    sub [hl]
    rst RST_30
    push hl
    sub d
    and c
    and l
    and l
    and l
    sub c
    sbc [hl]
    ld d, $7f
    ldh [$ff97], a
    jp hl


    or $93
    and $0d
    push hl
    ld d, $fa
    sub l
    pop hl
    ld sp, hl
    and l
    and l
    and l
    and c
    rst RST_38
    db $eb
    or $99
    di
    ld a, a
    push hl
    sub d
    and l
    and l
    and l
    and c
    dec c
    ldh a, [rNR33]
    di
    ld a, a
    push hl
    sub d
    and l
    and l
    and l
    and c
    inc c
    sub a
    di
    pop hl
    ld l, d
    sub [hl]
    ld hl, sp+$16
    ld a, a
    sub c
    sbc [hl]
    adc a
    db $e3
    ld a, a
    sub [hl]
    rst RST_30
    ld h, b
    ld [$e20d], a
    sub [hl]
    ld a, [$6af9]
    sub [hl]
    ld hl, sp+$60
    and l
    and l
    and l
    and c
    inc c
    and l
    and l
    and l
    sbc b
    ld sp, hl
    sbc h
    sub d
    and l
    and l
    and l
    and c
    rst RST_38
    pop hl
    sub [hl]
    sbc b
    or b
    ld a, a
    ld e, d
    call nz, $a4db
    reti


    sbc h
    db $e3
    sub d
    ldh [$ff0d], a
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
    inc c
    sbc $95
    sub d
    adc d
    dec c
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
    sub d
    ld sp, hl
    push hl
    db $fd
    db $e3
    dec c
    ld a, a
    sub c
    ldh [$ffef], a
    ld d, $7f
    sub l
    sub [hl]
    sbc h
    sub d
    db $fd
    inc e
    adc h
    push hl
    sub d
    jp hl


    sub [hl]
    adc e
    inc c
    ld a, a
    pop hl
    adc [hl]
    adc a
    db $e4
    ld a, a
    sbc h
    adc [hl]
    rst RST_28
    ld h, e
    ld a, a
    sub d
    adc a
    sbc h
    adc [hl]
    and $0d
    ld a, a
    sub a
    db $e3
    di
    rst RST_30
    sub l
    sub e
    sub [hl]
    and l
    and l
    and l
    and c
    rst RST_18
    inc c
    sub l
    ld a, [$7fea]
    ldh [$ff92], a
    xor $9b
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    and l
    and l
    and l
    di
    sub e
    ld a, a
    ldh [$ff92], a
    ld hl, sp-$72
    sbc b
    di
    dec c
    add hl, de
    db $fd
    sub [hl]
    sub d
    ld h, b
    and l
    and l
    and l
    and c
    inc c
    jp z, $c039

    or [hl]
    jp hl


    ld a, a
    or h
    cp e
    and $e5
    ld sp, hl
    jp hl


    di
    ld a, a
    inc e
    sub [hl]
    db $fd
    jp hl


    di
    db $fd
    ld h, b
    sub d
    jp hl


    or $93
    ld h, b
    and l
    and l
    and l
    and c
    rst RST_38
    push hl
    db $fd
    db $e3
    ld a, a
    sub l
    ld a, [$7fea]
    sub e
    db $fd
    ld d, $7f
    sub d
    sub d
    db $fd
    ld h, b
    adc d
    dec c
    sbc l
    jr jr_013_530e

    sbc a
    sbc d
    and $7f
    ld l, d
    sub d
    db $e3
    db $fd
    ld d, $8a
    inc c
    call z, $ccd7
    rst RST_10
    db $e4
    ld a, a
    sbc l
    sub d
    or $9e
    rst RST_30
    ld a, [$f6f9]
    sub e
    and $0d
    sub c
    ld sp, hl
    sub a
    push hl
    ld d, $f7
    ld a, a
    sub l
    ld a, [$7fea]
    ldh [c], a
    ld l, h
    db $f4
    sub d
    ldh [$ffa1], a
    inc c
    sbc $a5
    and l
    and l
    ldh a, [rNR33]
    or b
    ld a, a
    sbc b
    ld a, [$a5a5]
    and l
    and c
    rst RST_18
    rst RST_38
    sub c
    sub c
    and l
    and l
    and l
    adc a
    adc d
    dec c
    sbc a
    db $fd
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    ld l, d
    sub d
    db $e3
    db $fd
    ld [$957f], a
    ld a, [$7fe9]
    or $98
    ld l, [hl]
    sub e
    ld d, $f0
    sbc [hl]
    ldh [$ffef], a
    ld l, [hl]
    ei
    sbc h
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
    sub c
    db $fd
    push hl
    ld a, a
    rst RST_28
    ld l, [hl]
    ei
    sbc h
    or b
    ld a, a
    ldh a, [$fff9]
    db $e4
    ld [$a5a5], a

jr_013_530e:
    and l
    and c
    sbc h
    ld d, $7f
    pop hl
    sub [hl]
    ld h, d
    sub d
    db $e3
    sub d
    ld sp, hl
    jp hl


    sub [hl]
    adc e
    rst RST_38
    sub c
    sub c
    and l
    and l
    and l
    adc d
    dec c
    di
    sub e
    ld a, a
    sub d
    adc a
    ld a, [hl]
    di
    ld a, a
    sub e
    ld a, [de]
    sbc c
    push hl
    sub d
    and l
    and l
    and l
    and c
    inc c
    sbc d
    sub e
    sbc h
    db $e3
    sub d
    ld sp, hl
    sub c
    sub d
    ld h, b
    di
    ld a, a
    sub l
    ld a, [$0de9]
    ldh [$ff92], a
    push hl
    sub d
    jp hl


    ld a, a
    sbc l
    sub d
    ld l, h
    db $fd
    ld [$647f], a
    db $fd
    ld h, h
    db $fd
    dec c
    inc e
    adc [hl]
    sub e
    ld [$9ce2], a
    db $e3
    sub d
    ld sp, hl
    and l
    and l
    and l
    and c
    inc c
    sbc h
    rst RST_20
    rst RST_28
    sub h
    and $a5
    and l
    and l
    db $eb
    db $e4
    sbc b
    pop hl
    ld h, e
    ld a, a
    sub d
    sub d
    sub [hl]
    rst RST_30
    ldh a, [rNR33]
    ld d, $7f
    jp hl


    ldh a, [$ffe0]
    sub [hl]
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sbc l
    ld sp, hl
    ld h, h
    sub d
    ld a, a
    call nz, $e939
    sub c
    ld sp, hl
    ld a, a
    cp e
    ld c, [hl]
    jp Jump_013_60dd


    and c
    dec c
    sbc e
    db $fc
    ld sp, hl
    db $e4
    ld a, a
    sub d
    ldh [$ff9f], a
    sub e
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    and l
    and l
    and l
    db $e4
    ld a, [$92e5]
    and c
    rst RST_38
    sbc d
    db $fd
    push hl
    and $7f
    sub c
    ldh [c], a
    sbc b
    db $e3
    ld a, a
    sub [hl]
    db $fd
    sbc a
    sub e
    sbc h
    db $e3
    dec c
    sub d
    ld sp, hl
    jp hl


    and $7f
    sbc d
    jp hl


    ld a, a
    sub a
    ld [$f87f], a
    adc a
    ld a, d
    and $0d
    sbc [hl]
    sub d
    pop hl
    adc [hl]
    sub e
    sbc h
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
    db $ed
    db $fd
    inc e
    ld d, $e5
    sub d
    and c
    rst RST_38
    ldh [$ff92], a
    or $93
    jp hl


    ld a, a
    db $eb
    and $7f
    db $f4
    sbc c
    ldh [$ff7f], a
    sub d
    db $fc
    ld h, b
    and c
    dec c
    sbc d
    jp hl


    sub e
    sub h
    and $7f
    push hl
    rst RST_28
    ret nz

    rst RST_08
    ld a, [hl-]
    or b
    ld a, a
    sub l
    db $e4
    sbc l
    db $e4
    dec c
    ldh a, [c]
    ld h, b
    rst RST_28
    db $f4
    sub a
    ld d, $7f
    ldh [c], a
    sbc b
    ld a, [$939f]
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    di
    pop hl
    di
    jp hl


    ld h, e
    ld a, a
    push hl
    sub d
    di
    jp hl


    ld [$9d0d], a
    db $e3
    rst RST_30
    ld a, [$92e5]
    and c
    rst RST_38
    sbc e
    ld l, d
    sbc b
    jp hl


    ld a, a
    inc e
    adc l
    sub e
    and $fd
    and $7f
    sub a
    ld a, [$e692]
    dec c
    ldh [c], a
    sub d
    ld l, d
    rst RST_28
    ld a, [$7fe0]
    ld h, h
    sub e
    ld l, h
    ldh [c], a
    jp hl


    ld a, a
    adc $c8
    ld h, b
    and c
    rst RST_38
    sbc d
    jp hl


    ld a, a
    sbc b
    sbc e
    ld [$e07f], a
    db $fd
    sbc c
    db $fd
    jp hl


    or $93
    push hl
    dec c
    sub [hl]
    ldh [$ffe1], a
    or b
    sbc h
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    sbc [hl]
    db $fd
    ldh [$ff98], a
    di
    jp hl


    sub d
    ld a, [$7fe9]
    db $ec
    ldh [$ff60], a
    and c
    rst RST_38
    sbc d
    db $fd
    push hl
    ld a, a
    ldh a, [rNR33]
    jp hl


    push hl
    sub d
    ld a, a
    ld h, b
    sub d
    pop hl
    and $0d
    add sp, $62
    sbc b
    push hl
    db $fd
    db $e3
    ld a, a
    cp e
    ld c, [hl]
    jp $8fdd


    db $e3
    dec c

jr_013_549f:
    di
    jp hl


    dec e
    sub a
    push hl
    db $fd
    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    rst RST_28
    pop hl
    ld [$fa1d], a
    and $91
    ld sp, hl
    ld a, a

jr_013_54b5:
    cp b
    ret c

    and h
    add $dd
    jr c, jr_013_549f

    db $fd
    jp hl


    rst RST_28
    sub h
    ld h, b
    and c
    rst RST_38
    sbc $d8
    rst RST_10
    or d
    or c
    db $dd
    call nz, $b8a5
    ret c

    and h
    add $dd
    jr c, jr_013_54b5

    db $fd
    rst RST_18
    db $e4
    sub [hl]
    sub d
    db $e3
    sub c
    ld sp, hl
    ld a, a
    sub [hl]

jr_013_54dc:
    db $fd
    ld l, d
    db $fd
    ld h, b
    and c
    rst RST_38
    rst RST_08
    ld b, h
    ld [hl], $d7
    cp l
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
    jr c, jr_013_54dc

    db $fd
    rst RST_18
    db $e4
    ldh a, [$ff9e]
    jp hl


    ld a, a
    push hl
    rst RST_28
    sub h
    ld d, $7f
    ld [$8f92], a
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    add sp, $1d
    ldh a, [$ff92]
    ei
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
    cp b
    ret c

    and h
    add $dd
    jr c, @-$1b

    db $fd
    and $ea
    ld a, a
    sub c
    rst RST_28
    ld hl, sp+$0d
    and $e2
    sub [hl]
    db $fc
    sbc h
    sbc b
    push hl
    sub d
    ld a, a
    sub d
    ei
    ld h, b
    push hl
    sub c
    and l
    and l
    and l
    and c
    rst RST_38
    sbc $93
    adc a
    sbc e
    sub d
    db $fc
    add sp, -$71
    adc d
    rst RST_18
    inc c
    ld c, e
    cp h
    xor a
    adc d
    adc d
    adc d
    adc d
    adc d
    inc c
    sub l
    db $fd
    push hl
    ld [$957f], a
    ld a, [$7fe9]
    xor $8f
    ld a, l
    ldh [$ffb0], a
    dec c
    sub l
    di
    sub d
    adc a
    sub a
    ld hl, sp+$7f
    db $eb
    adc a
    ld a, d
    ldh [$ff92], a
    ldh [$ff8a], a
    inc c
    sbc b
    sub l
    and h
    adc a
    and l
    and l
    and l
    adc d
    dec c
    and l
    and l
    and l
    xor a
    sub d
    adc a
    db $e3
    sub h
    and l
    and l
    and l
    and c
    rst RST_38
    sbc $95
    sub d
    adc d
    dec c
    ld a, a
    pop hl
    adc [hl]
    adc a
    db $e4
    rst RST_28
    db $e3
    adc d
    inc c
    ld a, a
    sub l
    rst RST_28
    sub h
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
    or b
    ld a, a
    sub c
    ld sp, hl
    sub a
    rst RST_28
    db $fc
    ld sp, hl
    ldh [c], a
    di
    ld hl, sp-$6a
    adc e
    inc c
    ld a, a
    sbc d
    jp hl


    ld a, a
    sub l
    ld a, [$7fe9]
    ldh a, [c]
    jp hl


    ld a, a
    sbc b
    ei
    sub d
    sub e
    pop hl
    ld [$7f0d], a
    sbc a
    db $fd
    push hl
    sbc d
    db $e4
    ld [$f57f], a
    ld sp, hl
    sbc e
    db $fd
    adc d
    inc c
    ld a, a
    sub a
    pop hl
    db $fd
    db $e4
    sbc h
    ldh [$ff7f], a
    db $ec
    sbc b
    sbc a
    sub e
    ld h, e
    dec c
    ld a, a
    ld h, e
    push hl
    sub l
    sbc h
    db $e3
    sbc d
    sub d
    adc d
    rst RST_18
    rst RST_38
    db $eb
    ei
    sub d
    ld a, a
    sbc e
    ld l, d
    sbc b
    ld d, $7f
    ldh [c], a
    ld h, d
    sub d
    db $e3
    sub d
    ld sp, hl
    and c
    rst RST_38
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
    sub h
    sub a
    jp hl


    ld a, a
    rst RST_28
    sub h
    ld h, b
    and c
    dec c
    sub l
    sub l
    sub a
    push hl
    ld a, a
    ldh [$ffe3], a
    di
    jp hl


    ld h, b
    push hl
    and l
    and l
    and l
    and c
    rst RST_38
    or c
    and h
    pop bc
    ld d, $e0
    jp hl


    ld a, a
    rst RST_08
    ld b, h

jr_013_5624:
    ld h, b
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
    sub c
    sbc b
    db $e4
    dec c
    sub d
    sub a
    push hl
    ld hl, sp+$7f
    or $93
    inc e
    db $fd
    ld l, [hl]
    sub e
    ld d, $0d
    ld [$8f92], a
    db $e3
    sub a
    ldh [$ffa1], a
    inc c
    sbc $95
    rst RST_28
    sub h
    and l
    and l
    and l
    adc d
    adc d
    dec c
    ld a, a
    sbc d
    jp hl


    ld a, a
    rst RST_08
    jr c, jr_013_5624

    xor a
    call nz, $c04e
    db $dd
    or b
    ld a, a
    ld h, h
    sbc d
    ld h, e
    dec c
    ld a, a
    db $e3
    and $7f
    sub d
    ld a, [$fde0]
    ld h, b
    adc e
    adc d
    inc c
    ld a, a
    add h
    sub [hl]
    sub d
    jp hl


    ld a, a
    db $eb
    ldh a, [$ffe2]
    or b
    ld a, a
    sbc h
    rst RST_30
    ld a, [$0de0]
    ld a, a
    sub [hl]
    rst RST_30
    and $ea
    ld a, a
    sub d
    sub [hl]
    sbc h
    db $e3
    sub l
    sbc b
    db $fc
    sbc c
    and $ea
    dec c
    ld a, a
    sub d
    sub [hl]
    push hl
    sub d
    adc d
    inc c
    ld a, a
    sub l
    rst RST_28
    sub h
    and $ea
    ld a, a
    sbc d
    sbc d
    ld h, e
    ld a, a
    sbc h
    db $fd
    ld h, e
    dec c
    ld a, a
    di
    rst RST_30
    sub e
    ld e, $8a
    rst RST_18
    rst RST_38
    sbc $d7
    cp l
    ld l, l
    ld [hl], $bd
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
    pop bc
    xor a
    ld e, h
    ld [$817f], a
    rst RST_28
    sub d
    ld a, a
    add l
    ld b, h
    reti


    ld h, b
    and c
    rst RST_38
    rst RST_10
    cp l
    ld l, l
    ld [hl], $bd
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
    sub a
    db $e3
    sub a
    db $f4
    ld a, a
    sub d
    sub a
    sub a
    sbc l
    ld sp, hl
    dec c
    db $eb
    db $e4
    ldh [$ffe1], a
    jp hl


    ld a, a
    dec de
    db $fc
    ldh a, [c]
    sub a
    ld h, e
    ld a, a
    sbc e
    db $fc
    ld d, $9c
    sub d
    and c
    rst RST_38
    sub [hl]
    push hl
    ld hl, sp+$7f
    ldh [c], a
    sub [hl]
    sub d
    db $ec
    ld sp, hl
    sbc e
    ld a, [$7fe0]
    ld l, l
    db $dd
    pop bc
    ld h, b
    and c
    rst RST_38
    ldh a, [rNR22]
    pop af
    sub a
    jp hl


    ld a, a
    db $f4
    inc e
    ld sp, hl
    sbc h
    ld d, $91
    ld hl, sp+$0d
    sbc $e6
    di
    ldh [c], a
    sub c
    dec e
    sub [hl]
    ld hl, sp-$64
    adc [hl]
    rst RST_18
    db $e4
    dec c
    sub [hl]
    sub [hl]
    ld a, [$92e3]
    ld sp, hl
    and c
    rst RST_38
    or d
    or a
    push hl
    ld a, a
    sub [hl]
    adc a
    sbc d
    sub e
    or b
    ld a, a
    sbc h
    ldh [$ff7f], a
    sub l
    db $e4
    sbc d
    ld d, $0d
    sbc h
    db $fd
    ld l, h
    db $fd
    or b
    ld a, a
    or $fd
    ld h, e
    sub d
    ld sp, hl
    and c
    inc c
    ld h, h
    sub e
    and $f3
    ld a, a
    push hl
    db $fd
    ld h, b
    sub [hl]
    ld a, a
    sub e
    sbc e
    db $fd
    sbc b
    sbc e
    sub d
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
    sbc d
    adc a
    pop hl
    ld [$e67f], a
    di
    ldh [c], a
    sub c
    dec e
    sub [hl]
    ld hl, sp-$64
    adc [hl]
    ld h, b
    and c
    rst RST_38
    sub a
    rst RST_28
    adc a
    ldh [$ff8a], a
    adc d
    dec c
    sub l
    ld a, [$7fe9]
    db $eb
    ld h, b
    ld hl, sp-$34
    xor a
    cp b
    ld d, $7f
    sub l
    db $e4
    sbc d
    jp hl


    dec c
    ldh a, [rNR22]
    or c
    ld a, [hl-]

jr_013_57a9:
    and $7f
    sbc e
    sbc b
    ld a, [$9ce2]
    ldh [$ff8a], a
    rst RST_38
    ld h, b
    ld d, $7f
    sbc d
    sbc d
    ld [$4e7f], a
    cp b
    cp h
    db $dd
    jr c, jr_013_57a9

    dec c
    ret c

    db $dd
    jr c, jr_013_5828

    ld [$92e5], a
    and l
    and l
    and l
    and c
    inc c
    sbc e
    db $fc
    rla
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
    sub [hl]
    db $fd
    ld d, $0d
    db $f4
    adc a
    db $e3
    sub a
    ldh [$ffa1], a
    inc c
    sbc a
    sbc h
    db $e3
    ld a, a
    sub l
    ld a, [$7fea]
    sbc a
    jp hl


    ld l, d
    ld h, e
    dec c
    ldh [$ff92], a
    xor $9b
    ld a, [$9ce3]
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    db $ec
    sbc d
    sub e
    push hl
    sbc d
    db $e4
    and $7f
    sub l
    ld a, [$7fe6]
    sub c
    ldh [$ff94], a
    rst RST_30
    ld a, [$81e0]
    sbc h
    adc l
    sub e
    sub [hl]
    db $fd
    db $e4
    sub d
    sub e
    ld a, a
    sub a
    add hl, de
    db $fd
    ld [$990d], a
    sub d
    sbc e
    ldh [c], a
    and $7f

jr_013_5828:
    sub d
    ld sp, hl
    sub c
    sub d
    ld h, b
    and $0d
    sbc l
    rla
    db $e3
    sbc h
    rst RST_28
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    cp l
    call nz, Call_000_3ca4
    and h
    ld d, $7f
    xor $9c
    adc h
    sbc b
    sub a
    db $fd
    or b
    dec c
    ldh [c], a
    db $fd
    ld h, e
    sbc b
    ld a, [$95e0]
    sub [hl]
    add hl, de
    ld h, e
    ld a, a
    sub l
    ld a, [$0dea]
    sbc h
    adc h
    sbc b
    xor $93
    sbc e
    ld a, [$a5e0]
    and l
    and l
    and c
    rst RST_38
    cp l
    call nz, Call_000_3ca4
    and h
    ld [$927f], a
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    inc c
    sbc $f6
    sub [hl]
    adc a
    ldh [$ffe5], a
    and l
    and l
    and l
    and c
    dec c
    ld a, a
    sbc d
    ld a, [$7fea]
    sbc h
    adc l
    adc a
    sbc h
    adc [hl]
    sub d
    db $fc
    sub d
    ld h, b
    and c
    dec c
    ld a, a
    sub e
    sbc c
    db $e4
    adc a
    db $e3
    sbc b
    ld a, [$df8a]
    inc c
    sbc a
    sbc h
    db $e3
    ld a, a
    sub l
    ld a, [$7fe9]
    ld h, h
    db $e3
    adc a
    ld a, d
    rst RST_30
    ldh a, [c]
    ld d, $99
    db $e3
    dec c
    ld e, e
    cp l
    call nz, $b0d9
    ld a, a
    sub e
    adc a
    ldh [$ffa5], a
    and l
    and l
    and c
    rst RST_38
    sub l
    ld a, [$7fea]
    sub l
    db $e4
    sbc d
    and $7f
    sub c
    sub d
    sbc e
    ldh [c], a
    sbc h
    ldh [$ffa1], a
    inc c
    sbc l
    ld sp, hl
    db $e4
    ld a, a
    sbc a
    jp hl


    sub l
    db $e4
    sbc d
    ld [$cb7f], a
    cp a
    res 7, a
    db $e4
    dec c
    ld [$9ce5], a
    ld [$f21c], a
    ldh [$ffa1], a
    inc c
    sbc $95
    rst RST_28
    sub h
    sbc e
    db $fd
    ld a, a
    or $9f
    di
    jp hl


    ld h, b
    add sp, -$5b
    and l
    and l
    and c
    dec c
    ld a, a
    sub d
    sub d
    sbc d
    db $e4
    or b
    ld a, a
    sub l
    sbc h
    sub h
    db $e4
    sub d
    db $e3
    db $f4
    ei
    sub e
    and c
    inc c
    ld a, a
    sbc d
    jp hl


    rst RST_28
    pop hl
    ld h, e
    ld a, a
    or c
    db $dd
    cp a
    add $a4
    and l
    rst RST_08
    db $db
    db $dd
    db $e4
    dec c
    ld a, a
    sub [hl]
    ld a, [$7fe9]
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
    ld a, a
    ld b, b
    add $a4
    and l
    ld l, l
    db $dd
    jp $a4a8


    add $e6
    ld a, a
    sbc e
    sub [hl]
    rst RST_30
    sub e
    db $e4
    ld a, a
    db $eb
    ld h, h
    sub d
    ldh a, [c]
    and $91
    sub e
    rra
    adc d
    inc c
    ld a, a
    and l
    and l
    and l
    db $e4
    sbc d
    ei
    ld h, e
    ld a, a
    sub l
    ld a, [$7fea]
    sbc d
    jp hl


    rst RST_28
    pop hl
    ld h, e
    ld a, a
    pop hl
    adc [hl]
    adc a
    db $e4
    sbc h
    ldh [$ff7f], a
    sbc h
    adc [hl]
    sub e
    ld l, d
    sub d
    or b
    dec c
    ld a, a
    sbc h
    db $e3
    sub d
    ld sp, hl
    db $fd
    ld h, b
    and c
    inc c
    ld a, a
    di
    sbc h
    ld a, a
    sbc d
    rst RST_28
    adc a
    ldh [$ff9a], a
    db $e4
    ld d, $7f
    sub c
    adc a
    ldh [$fff7], a
    dec c
    ld a, a
    sub l
    ld a, [$7fe6]
    sbc a
    sub e
    ld h, b
    db $fd
    sbc h
    ei
    or $8a
    inc c
    ld a, a
    pop hl
    sub [hl]
    rst RST_30
    and $7f
    push hl
    ld a, [$e4f9]
    sub l
    di
    sub e
    ld e, $8a
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

Jump_013_60dd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_013_7fb0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_013_7fe0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_013_7fe9:
    nop

Call_013_7fea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
